#include <time.h>

int main() {
    struct timespec tw = {60,125000000 * 5};
    struct timespec tv = {000000000};
    nanosleep(&tw, &tv);
    return 0;
}