#include <iostream>
#include <omp.h>

int main() {
    #pragma omp parallel default(none)
    {
        printf("Hello World from Thread %d!\n", omp_get_thread_num());
    }
    return 0;
}