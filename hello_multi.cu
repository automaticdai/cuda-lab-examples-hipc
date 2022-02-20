#include <stdio.h>
#include <cuda.h>

__global__ void helloWorld() {
    printf("I am block (%d, %d, %d), thread (%d, %d, %d)\n", blockIdx.x, blockIdx.y, blockIdx.z, threadIdx.x, threadIdx.y, threadIdx.z);
}

int main() {
    dim3 grid(3, 3, 3);
    dim3 block(3, 3, 3);

    helloWorld<<<grid, block>>>();

    cudaDeviceReset();

    return 0;
}
