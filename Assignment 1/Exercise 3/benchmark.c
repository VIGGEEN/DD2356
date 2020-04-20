#define N 50000
#define REPS 1000
#include <stdio.h>
#include <sys/time.h>

double mysecond();

int main(){
    int i, j;
    double t1, t2; // timers
    double a[N], b[N], c[N]; // arrays

    // init arrays
    for (i = 0; i < N; i++){
        a[i] = 47.0;
        b[i] = 3.1415;
    }

    //Avoid cold-start
    for(i = 0; i < N; i++)
        c[i] = a[i]*b[i];

    // measure performance
    t1 = mysecond();

    //Use many repetitions to avoid clock granualirty
    for(int z = 0; z < REPS; z++)
    {
        for(i = 0; i < N; i++)
            c[i] = a[i]*b[i];
    }

    t2 = mysecond();

    for(i = 0; i < N; i++)
        printf("%f:",c[i]);

    printf("\n");

    printf("Execution time: %11.8f s\n", (t2 - t1)/REPS);
    return 0;
}

// function with timer                                                             
double mysecond(){
    struct timeval tp;
    struct timezone tzp;
    int i;

    i = gettimeofday(&tp,&tzp);
    return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
}