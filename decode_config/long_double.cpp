#include <iostream>
#include <iomanip>
#include <stdint.h>
// g++ -std=gnu++11 long_double.cpp -o long_double -lstdc++

using namespace std;

#define print_bits(x)                                            \
  do {                                                           \
    unsigned long long a__ = (x);                                \
    size_t bits__ = sizeof(x) * 8;                               \
    printf(#x ": ");                                             \
    while (bits__--) putchar(a__ &(1ULL << bits__) ? '1' : '0'); \
    putchar('\n');                                               \
  } while (0)



int main()
{

    // initialize a variable of long double type

    uint64_t var1 = 0b01001001010110111011100111111110;
    long double var2 = var1;
    float var3 = var2;

    // print the size of the long double variable

    cout << "The long double takes " << sizeof(var1) << " bytes in the memory.\n\n";

    // print the value of the long double variable
    cout << setprecision(10) << "set precision                      : " << fixed << var1;

    cout << "\nThe value stored in the variable is: " << fixed << var1;
    cout << "\nThe value stored in the variable is: " << fixed << var2;
    cout << "\nThe value stored in the variable is: " << fixed << var3;


    cout << "\n\n";

    print_bits(var1);
    print_bits(var2);
    print_bits(var3);


    return 0;

}
