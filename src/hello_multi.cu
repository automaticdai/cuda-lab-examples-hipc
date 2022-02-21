#include <stdio.h>
#include <cuda.h>

__global__ void helloWorld() {
    printf("I am block (%d), thread (%d)\n", blockIdx.x, threadIdx.x);
}

int main() {
    int grid = 3;
    int block = 3;

    helloWorld<<<grid, block>>>();

    cudaDeviceReset();

    return 0;
}
