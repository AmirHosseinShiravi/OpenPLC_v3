#include <iostream>
#include <algorithm> 
#include <functional> 

using namespace std;

int main(){

    int amir[]={1,2,3,4,5};
    uint16_t** tags_address_array = (uint16_t**)malloc(150 * sizeof(uint16_t*));

    tags_address_array[0] = (uint16_t*) malloc(150 * sizeof(uint16_t));
    
    for (int m= 0; m < 150; m++)
    {
        tags_address_array[0][m] = m;
    }

    int size = sizeof(tags_address_array[0]) / sizeof(tags_address_array[0][0]);
    std::sort(tags_address_array[0], tags_address_array[0] + size);

    cout << size << endl;
    cout << tags_address_array[0][100] << endl;
    cout << sizeof(amir) << endl;


    return 0;
}


