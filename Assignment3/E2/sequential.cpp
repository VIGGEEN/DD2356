
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <math.h>
#include <time.h>
#include <chrono>

#define SEED     921
#define NUM_ITER 1000000000

int main(int argc, char* argv[])
{
    const auto start = std::chrono::steady_clock::now();

    int count = 0;
    double x, y, z, pi;

    srand(SEED); // Important: Multiply SEED by "rank" when you introduce MPI!

    // Calculate PI following a Monte Carlo method
    for (int iter = 0; iter < NUM_ITER; iter++)
    {
        // Generate random (X,Y) points
        x = (double)random() / (double)RAND_MAX;
        y = (double)random() / (double)RAND_MAX;
        z = sqrt((x*x) + (y*y));

        // Check if point is in unit circle
        if (z <= 1.0)
        {
            count++;
        }
    }

    // Estimate Pi and display the result
    pi = ((double)count / (double)NUM_ITER) * 4.0;

    const auto end = std::chrono::steady_clock::now();

    printf("The result is %f, computed in %d\n", pi, std::chrono::duration_cast<std::chrono::seconds>(end-start));

    return 0;
}