#include <iostream>
#include <unordered_set>

// template<typename T>
// bool isElementInArray(const T* arr, size_t size, const T& target) {
//     std::unordered_set<T> hashSet(arr, arr + size);
//     return hashSet.find(target) != hashSet.end();
// }

// int main() {
//     int arr[] = {1, 2, 3, 4, 5};
//     size_t size = sizeof(arr) / sizeof(arr[0]);
//     int target = 1;

//     if (isElementInArray(arr, size, target)) {
//         std::cout << "Element found in the array." << std::endl;
//     } else {
//         std::cout << "Element not found in the array." << std::endl;
//     }

//     return 0;
// }



template<typename T>
bool isElementInArray(const T* arr, size_t size, const T& target) {
    std::unordered_set<T> hashSet(arr, arr + size);
    return hashSet.find(target) != hashSet.end();
}

bool index_existance_check(uint16_t index, int instance_number)
{   
    uint16_t arr[] = {1, 2, 3, 4, 5};
    size_t size = sizeof(arr) / sizeof(arr[0]);

    if (isElementInArray(arr, size, index)) 
    {
        std::cout << "Element found in the array." << std::endl;
    } 
    else
    {
        std::cout << "Element not found in the array." << std::endl;
    }
    return 0;
}


int main(){
    index_existance_check(10, 1);
    return 0;
}
