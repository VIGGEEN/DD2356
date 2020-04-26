#include <string>
#include <iostream>
#include <vector>
#include "omp.h"
#include <tuple>
#include <cmath>

static constexpr double G = 6.67408 * 10E-11;

typedef std::tuple<double, double> Vector2;

std::vector<double> mass;
std::vector<Vector2> pos;
std::vector<Vector2> old_pos;
std::vector<Vector2> vel;
std::vector<Vector2> vel_qk;

void initialize(size_t count) {

    srand(0);

    mass.resize(count);
    pos.resize(count);
    old_pos.resize(count);
    vel.resize(count);
    vel_qk.resize(count);

    for (size_t q = 0; q < count; q++) {
        std::get<0>(pos[q]) = (rand() / (double) (RAND_MAX)) * 2 - 1;
        std::get<1>(pos[q]) = (rand() / (double) (RAND_MAX)) * 2 - 1;

        std::get<0>(old_pos[q]) = std::get<0>(pos[q]);
        std::get<1>(old_pos[q]) = std::get<1>(pos[q]);

        std::get<0>(vel[q]) = (rand() / (double) (RAND_MAX)) * 2 - 1;
        std::get<1>(vel[q]) = (rand() / (double) (RAND_MAX)) * 2 - 1;

        mass[q] = std::fabs((rand() / (double) (RAND_MAX)) * 2 - 1);
    }
}

void simple() {
    #pragma omp parallel for schedule(static)
    for (size_t q = 0; q < mass.size(); q++) {
        for (size_t k = 0; k < mass.size(); k++) {
            if (q == k) continue;
            auto x_diff = std::get<0>(pos[q]) - std::get<0>(pos[k]);
            auto y_diff = std::get<1>(pos[q]) - std::get<1>(pos[k]);
            auto dist = std::sqrt(x_diff * x_diff + y_diff * y_diff);
            auto dist_cubed = dist * dist * dist;
            std::get<0>(vel[q]) -= G * mass[q] * mass[k] / dist_cubed * x_diff;
            std::get<1>(vel[q]) -= G * mass[q] * mass[k] / dist_cubed * y_diff;
        }
    }
}

void reduced() {
    #pragma omp parallel for schedule(static)
    for (size_t q = 0; q < mass.size(); q++) {
        for (size_t k = q + 1; k < mass.size(); k++) {
            auto x_diff = std::get<0>(pos[q]) - std::get<0>(pos[k]);
            auto y_diff = std::get<1>(pos[q]) - std::get<1>(pos[k]);
            auto dist = std::sqrt(x_diff * x_diff + y_diff * y_diff);
            auto dist_cubed = dist * dist * dist;

            auto fq = std::make_tuple(
                    G * mass[q] * mass[k] / dist_cubed * x_diff,
                    G * mass[q] * mass[k] / dist_cubed * y_diff
            );

            std::get<0>(vel[q]) += std::get<0>(fq);
            std::get<1>(vel[q]) += std::get<1>(fq);

            std::get<0>(vel[k]) -= std::get<0>(fq);
            std::get<1>(vel[k]) -= std::get<1>(fq);
        }
    }
}

void reset() {
    //TODO: parallelize this also
    vel.assign(vel.size(), std::make_tuple(0, 0));
}

void move(double dt) {
    #pragma omp parallel for schedule(static)
    for (size_t q = 0; q < mass.size(); q++) {
        std::get<0>(pos[q]) += dt * std::get<0>(vel[q]);
        std::get<1>(pos[q]) += dt * std::get<1>(vel[q]);
        std::get<0>(vel[q]) += dt / (mass[q] * std::get<0>(vel[q]));
        std::get<1>(vel[q]) += dt / (mass[q] * std::get<1>(vel[q]));
    }
}

void print() {
    for (auto position : pos) {
        std::cout << std::get<0>(position) << ' ' << std::get<1>(position) << '\n';
    }
    std::flush(std::cout);
}

int main(int argc, char *argv[]) {

    const size_t NPARTICLES = std::stoull(std::string(argv[1]));

    initialize(NPARTICLES);

    const size_t CYCLES = 1000;

    auto start = omp_get_wtime();

    for (size_t step = 0; step < CYCLES; step++) {
        reset();
        //simple();
        reduced();
        move(0.05);
    }

    //print();

    std::cout << "Time: " << (omp_get_wtime() - start) << std::endl;
}