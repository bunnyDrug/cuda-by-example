#include "../../imp/common/book.h"
#define N 10000

// lets look at this in detail:
// typically you would write something a lot simpler here but the code is a
// suggestion at a way to parallelize the code on a system with multiple CPUs
// or CPU cores.
__global__ void add (int *a, int *b, int *c) {
    int tid = blockIdx.x;   // handle the data at this index
    if (tid < N) { // Thread ID < kernel launch.
        c[tid] = a[tid] + b[tid];
    }
}
// You could have threads execute adds on odd and even values in the array
// but this would require more code and infrastructure.

int main() {
    int a[N], b[N], c[N];
    int *dev_a, *dev_b, *dev_c;

    // fill the arrays 'a' and 'b' on the CPU
    for (int i=0; i<N; i++){
        a[i] = -i;
        b[i] = i * i;
    }

    cudaMalloc(&dev_a, N * sizeof(int));
    cudaMalloc(&dev_b, N * sizeof(int));
    cudaMalloc(&dev_c, N * sizeof(int));

    cudaMemcpy(dev_a, a, N * sizeof(int), cudaMemcpyHostToDevice);
    cudaMemcpy(dev_b, b, N * sizeof(int), cudaMemcpyHostToDevice);

    // N blocks running on the GPU
    add<<<N, 1>>>(dev_a, dev_b, dev_c);

    // copy device c back to host
    cudaMemcpy(c, dev_c, N * sizeof(int), cudaMemcpyDeviceToHost);

    // display the results.
    for (int i=0; i<N; i++) {
        printf("%d + %d = %d\n", a[i], b[i], c[i]);
    }

    cudaFree(dev_a);
    cudaFree(dev_b);
    cudaFree(dev_c);

    return 0;
}
