#include "../../imp/common/book.h"
#define N 10

// lets look at this in detail:
// typically you would write something a lot simpler here but the code is a
// suggestion at a way to parallelize the code on a system with multiple CPUs
// or CPU cores.
void add (int *a, int *b, int *c) {
    int tid = 0; // this is CPU Zero, so we start at zero.
    while (tid < N) {
        c[tid] = a[tid] + b[tid];
        tid += 1; // we have one CPU, so we increment by one.
    }
}
// You could have threads execute adds on odd and even values in the array
// but this would require more code and infrastructure.

int main() {
    int a[N], b[N], c[N];

    // fill the arrys 'a' and 'b' on the CPU
    for (int i=0; i<N; i++){
        a[i] = -i;
        b[i] = i * i;
    }

    add(a, b, c);

    // display the results.
    for (int i=0; i<N; i++) {
        printf("%d + %d = %d\n", a[i], b[i], c[i]);
    }

    return 0;
}
