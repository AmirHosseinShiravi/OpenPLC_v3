#include <stdint.h>
#include <stdio.h>
#include <stdbool.h>

int main() {
    uint64_t myInt = 123456789;
    double myDouble = (double)myInt;
    bool boolean = myDouble;
    printf("myInt: %llu\n", myInt);
    printf("myDouble: %f\n", myDouble);
    printf("Your boolean variable is: %s", boolean ? "true" : "false");
    return 0;
}