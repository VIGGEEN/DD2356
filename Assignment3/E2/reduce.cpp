#include <iostream>
#include <mpi.h>
#include <cmath>
#include <random>

static constexpr size_t NUM_ITER = 1000000000;

int main(int argc, char **argv) {

    const auto start = MPI_Wtime();

    MPI_Init(&argc, &argv);

    int world_size;
    MPI_Comm_size(MPI_COMM_WORLD, &world_size);

    int world_rank;
    MPI_Comm_rank(MPI_COMM_WORLD, &world_rank);

    const size_t seed = 921 * world_rank;

    int count = 0;

    std::default_random_engine generator(seed);
    std::uniform_real_distribution<double> distribution(0.0, 1.0);

    // Calculate PI following a Monte Carlo method
    for (size_t iter = 0; iter < (NUM_ITER / world_size); iter++) {
        // Generate random (X,Y) points
        const auto x = distribution(generator);
        const auto y = distribution(generator);
        // Check if point is in unit circle
        if ((x * x) + (y * y) <= 1.0) count++;
    }

    int reducebuffer;
    MPI_Reduce(&count, &reducebuffer, 1, MPI_INT, MPI_SUM, 0, MPI_COMM_WORLD);
    if (world_rank == 0) {
        count = reducebuffer;
        // Estimate Pi and display the result
        const auto pi = ((double) count / (double) NUM_ITER) * 4.0;
        printf("The result is %f, computed in %f\n", pi, MPI_Wtime() - start);
    }

    MPI_Finalize();

    return 0;
}
