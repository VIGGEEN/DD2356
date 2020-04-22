#include <iostream>
#include <cstdlib> // rand for instance.
#include <vector>
#include <cassert>
#include <omp.h>
#include <algorithm>
#include <chrono>

#define MAX_THREADS 32

typedef std::chrono::microseconds TIME_UNIT;
typedef std::chrono::steady_clock CLOCK;

int serial(const std::vector<double> &x) {
    auto start = CLOCK::now();
    double maxval = 0.0;
    int maxloc = 0;
    for (int i = 0; i < x.size(); i++) {
        if (x[i] > maxval) {
            maxval = x[i];
            maxloc = i;
        }
    }
    auto dur = CLOCK::now() - start;
    auto ms = std::chrono::duration_cast<TIME_UNIT>(dur).count();
    std::cout << '\t' << ms;
    return maxloc;
}

int parallel_race(const std::vector<double> &x) {
    auto start = CLOCK::now();

    double maxval = 0.0;
    int maxloc = 0;

    #pragma omp parallel for default(none) shared(x, maxval, maxloc)
    for (int i = 0; i < x.size(); i++) {
        if (x[i] > maxval) {
            maxval = x[i];
            maxloc = i;
        }
    }

    auto dur = CLOCK::now() - start;
    auto ms = std::chrono::duration_cast<TIME_UNIT>(dur).count();
    std::cout << '\t' << ms;

    return maxloc;
}

int parallel_naive(const std::vector<double> &x) {
    auto start = CLOCK::now();

    double maxval = 0.0;
    int maxloc = 0;

    #pragma omp parallel for default(none) shared(x, maxval, maxloc)
    for (int i = 0; i < x.size(); i++) {
        #pragma omp critical
        {
            if (x[i] > maxval) {
                maxval = x[i];
                maxloc = i;
            }
        }
    }

    auto dur = CLOCK::now() - start;
    auto ms = std::chrono::duration_cast<TIME_UNIT>(dur).count();
    std::cout << '\t' << ms;

    return maxloc;
}

int parallel_falseshare(const std::vector<double> &x) {
    auto start = CLOCK::now();

    static std::vector<int> maxloc(MAX_THREADS);
    static std::vector<double> maxval(MAX_THREADS);

    #pragma omp parallel default(none) shared(x, maxloc, maxval)
    {
        #pragma omp for
        for (int i = 0; i < x.size(); i++) {
            if (x[i] > maxval[omp_get_thread_num()]) {
                maxval[omp_get_thread_num()] = x[i];
                maxloc[omp_get_thread_num()] = i;
            }
        }
    }

    auto dur = CLOCK::now() - start;
    auto ms = std::chrono::duration_cast<TIME_UNIT>(dur).count();
    std::cout << '\t' << ms;

    return maxloc[std::max_element(maxval.begin(), maxval.end()) - maxval.begin()];
}

int parallel(const std::vector<double> &x) {

    auto start = CLOCK::now();

    static std::vector<int> maxloc(MAX_THREADS);
    static std::vector<double> maxval(MAX_THREADS);

    #pragma omp parallel default(none) shared(x, maxloc, maxval)
    {
        double lmaxval = 0.0;
        int lmaxloc = 0;

        #pragma omp for
        for (int i = 0; i < x.size(); i++) {
            if (x[i] > lmaxval) {
                lmaxval = x[i];
                lmaxloc = i;
            }
        }

        maxval[omp_get_thread_num()] = lmaxval;
        maxloc[omp_get_thread_num()] = lmaxloc;
    }

    auto dur = CLOCK::now() - start;
    auto ms = std::chrono::duration_cast<TIME_UNIT>(dur).count();
    std::cout << '\t' << ms;

    return maxloc[std::max_element(maxval.begin(), maxval.end()) - maxval.begin()];
}

int main(int argc, char *argv[]) {

    omp_set_num_threads(std::stoi(std::string(argv[1])));
    std::cout << std::stoi(std::string(argv[1])) << std::endl;
	std::vector<double> x(1E6);

    srand(time(0)); // seed
    for (int i = 0; i < x.size(); i++) {
        // Generate random number between 0 and 1
        x[i] = ((double) (rand()) / RAND_MAX) * ((double) (rand()) / RAND_MAX) * ((double) (rand()) / RAND_MAX) * 1000;
    }

    std::cout << "result" << '\t' << std::stoi(std::string(argv[1]));
    int serialIndex = serial(x);
    int raceIndex = parallel_race(x);
    int naiveIndex = parallel_naive(x);
    int shareIndex = parallel_falseshare(x);
    int parallelIndex = parallel(x);
    std::cout << std::endl;

    if (*std::max_element(x.begin(), x.end()) != x[serialIndex] ||
        *std::max_element(x.begin(), x.end()) != x[naiveIndex] ||
        *std::max_element(x.begin(), x.end()) != x[shareIndex] ||
        *std::max_element(x.begin(), x.end()) != x[parallelIndex]) {
        throw std::runtime_error("Wrong answer");
    }

    return 0;
}
