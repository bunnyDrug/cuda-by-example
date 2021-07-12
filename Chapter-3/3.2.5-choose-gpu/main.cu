#include "../../imp/common/book.h"

// I am not sure how this works.
// for example, you can ask for a device with a compute capability higher
// than the system is capable of and still get back an inappropriate device.
int main() {
    cudaDeviceProp prop{};

    int dev;

    HANDLE_ERROR(cudaGetDevice(&dev));

    printf("The ID of the current cuda device: %d\n", dev);

    memset(&prop, 0, sizeof(cudaDeviceProp));
//    prop.major = 3;
//    prop.minor = 1;
    prop.multiProcessorCount = 8;

    printf("%d\n", prop.multiProcessorCount);
    cudaChooseDevice(&dev, &prop );
//    printf("ID of CUDA device closest to revision %d.%d: %d\n",
//           prop.major,
//           prop.minor,
//           dev);

    printf("Looking for GPU with TextureAlignment of 1024\n");
    printf("Selected GPU: %d\n", dev);
    cudaGetDeviceProperties(&prop, dev);
    printf("Selected GPU name: %s\n", prop.name);

    HANDLE_ERROR(cudaSetDevice(dev));
    return 0;
}

