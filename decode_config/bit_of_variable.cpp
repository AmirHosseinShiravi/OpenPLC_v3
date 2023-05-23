#include <iostream>
#include <bitset>
#include <iomanip>
#include <stdint.h>
using namespace std;
int main() {
    double var1 = 899999.878;
    uint64_t var2 = var1;
    double var3 = (double) var2;
    // cout << "a = " << bitset<64>(var1)  << endl;
    // cout << "b = " << bitset<64>(var2)  << endl;
    // cout << "c = " << bitset<64>(var3)  << endl;
    const char* temp = "01000010111101110010001011010001";
    // bitset<33> n (temp);
    // unsigned long result = n.to_ulong();
    // float ff = (float) result;
    float ss= stof(temp);
    // cout << setprecision(10) << "c = " << ff << fixed << std::endl;
    // cout << setprecision(10) << "ss = " << ss << fixed << std::endl;


}


// // file test.cc
// #include <iostream>
// #include <iomanip>
// #include <cstdlib> // for atof(3)
// #include <cassert>
// #include <string>
// #include <inttypes.h> // for uint32_t
// using namespace std;

// void floatToBinary(float f, string& str)
// {
//     union { float f; uint32_t i; } u;
//     u.f = f;
//     str.clear();

//     for (int i = 0; i < 32; i++)
//     {
//         // cout << "i: " << u.f << endl;
//         if (u.i % 2)  str.push_back('1');
//         else str.push_back('0');
//         u.i >>= 1;
//     }

//     // Reverse the string since now it's backwards
//     string temp(str.rbegin(), str.rend());
//     str = temp;
// }




// int main(int argc, const char* argv[])
// {
//     string str;
//     float f = 123;

//     float var1 = 1.1;
//     uint64_t var2 = var1;
//     float var3 = (float) var2;

//     floatToBinary(var1, str);
//     cout << str << endl;

//     floatToBinary(var3, str);
//     cout << str << endl;

//     //////////////////////////////////////////
//     // int a = 10;
//     // cout << "variable re assign in each loop"<< endl;
//     // for (int j = 0; j< 20;j++){        
//     //     int a = 20 + j;
//     //     cout <<("%d",a) << endl;
//     // }
//     // cout << "variable a reset to it's previous value(10) in each loop"<< endl;
//     // for (int j = 0; j< 20;j++){        
//     //     cout <<("%d",a) << endl;
//     //     int a = 20 + j;
//     // }
//     /////////////////////////////////////////





//     std::string temp = "00111111100011001100110011001101";
//     assert(temp.length() == 32);
//     int n = 0;
//     for(int i = 0; i < temp.length(); ++i)
//     {
//         n |= (temp[i] - 48) << i;
       
//     }
//     float fff = *(float *)&n;
//     cout << "fff:" << fff << fixed << endl;

// }