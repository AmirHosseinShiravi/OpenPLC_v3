#include <iostream>
#include <iomanip>
#include <bitset>


using namespace std;

float bintofloat(unsigned int x) {
    union {
        unsigned int  x;
        float  f;
    } temp;
    temp.x = x;
    return temp.f;
}

#define print_bits(x)                                            \
  do {                                                           \
    unsigned long long a__ = (x);                                \
    size_t bits__ = sizeof(x) * 8;                               \
    printf(#x ": ");                                             \
    while (bits__--) putchar(a__ &(1ULL << bits__) ? '1' : '0'); \
    putchar('\n');                                               \
  } while (0)


int main(){
    uint64_t n=0b01000010111101110010001011010001;

    cout <<*(float *)(&n) << endl;
    float f = bintofloat(0b01000010111101110010001011010001);
    // printf ("\nf = %Lf ", f);   
    cout << "\nThe value stored in the variable is: " << fixed << f << endl;

    uint16_t tempBuff = 0b0010001011010001;
    uint16_t tempBuff1 = 0b0100001011110111;
    uint32_t temp = (tempBuff1 << 16) | tempBuff ;
    print_bits(temp);
    long double amir = *(float*)(&temp);
    long double amir2 = *(double*)(&temp);


    // long  double amir_temp = 12345.123456;
    // float amir3 = (float) amir_temp;
    // cout << "temp:" << temp << "\n" << "amir:" << amir <<  "\ncasted:" << *(float*)(&temp) << endl;
    // cout << "wrong cast value:" << amir2 << endl;
    // cout << "amir3:" << amir3 << endl;
    // cout << "float to bin:" << *(uint32_t *)(&amir3) << endl;
    
    // uint32_t aa = *(uint32_t *)(&amir3);
    // uint16_t low = (uint16_t)(aa & 0xFFFF);
    // uint16_t high = (uint16_t)((aa >> 16) & 0xFFFF);
    // cout << "highbit = " << bitset<16>(high)  << endl;
    // cout << "lowbit  = " << bitset<16>(low)  << endl;

    // cout << "c = " << bitset<32>(aa)  << endl;
 


    long  double amir_temp = 8589934591;
    long amir3 = (long) amir_temp;
    uint32_t aa = *(uint32_t *)(&amir3);
    uint16_t low = (uint16_t)(aa & 0xFFFF);
    uint16_t high = (uint16_t)((aa >> 16) & 0xFFFF);
    cout << "highbit = " << bitset<16>(high)  << endl;
    cout << "lowbit  = " << bitset<16>(low)  << endl;

    cout << "c = " << bitset<32>(aa)  << endl;

    return 0;

}