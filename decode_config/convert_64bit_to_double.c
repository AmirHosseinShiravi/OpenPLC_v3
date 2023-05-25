#include <stdint.h>
#include <stdio.h>
#include <stdbool.h>

#define print_bits(x)                                            \
  do {                                                           \
    unsigned long long a__ = (x);                                \
    size_t bits__ = sizeof(x) * 8;                               \
    printf(#x ": ");                                             \
    while (bits__--) putchar(a__ &(1ULL << bits__) ? '1' : '0'); \
    putchar('\n');                                               \
  } while (0)



int main() {
    uint64_t myInt = 123456789;
    double myDouble = (double)myInt;
    bool boolean = myDouble;
    printf("myInt: %llu\n", myInt);
    printf("myDouble: %f\n", myDouble);
    printf("Your boolean variable is: %s\n", boolean ? "true" : "false");
    printf("Double: %zu\n", sizeof(double));
    printf("long: %zu\n", sizeof(long));
    printf("long long: %zu\n", sizeof(long long int));
    printf("float: %zu\n", sizeof(float));
    long double amir = 899999999999999999.12;
    double amir2     = 2;
    uint64_t reza    = 8999999999999999999;
    // reza = amir;

    // print_bits(amir);
    // print_bits();
    
    printf("amir: %Lf\n", amir);
    printf("reza: %Lu\n", reza);
    printf("float: %zu\n", sizeof(float));


    uint8_t amir3 = 1;
    // print_bits(amir3);
    uint32_t amir4 = (amir3 << 16) | amir3;
    print_bits(amir4);
    return 0;
}
