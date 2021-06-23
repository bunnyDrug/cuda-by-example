#include <stdio.h>
#include "../../imp/common/book.h"

__global__ void add ( int a, int b, int *c ) {
    *c = a + b;
}

int main( void ) {
    int c;
    int *dev_c;

    HANDLE_ERROR(cudaMalloc( (void**) &dev_c, sizeof(int) ) );
}

