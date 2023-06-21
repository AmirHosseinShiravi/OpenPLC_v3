#include <iostream>
#include <thread>
#include <vector>
#include <chrono>
#include <cstring>

using namespace std;


int main() {

    int *amir[2];
    cout << sizeof(*amir[0]) << endl; 
    memset(amir, 0, sizeof(amir));
    int a = 1;
    amir[0] = &a;
    // amir[1] = &a;
    int *reza = amir[0];
    uint16_t fati = *reza;
    
    int i = 0;
    int b = 0;
    
    while (true) {
        b = (i + 1);
        *amir[0] = b;
        cout <<" reza is " << *reza << endl;
        i++;
    }

    return 0;
}
