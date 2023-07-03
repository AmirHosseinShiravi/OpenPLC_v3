#include <iostream>
#include <map>


int main() {
    std::map<int, std::string> myMap;

    // Adding elements to the map
    myMap.insert(std::make_pair(4, "Apple"));
    myMap.insert(std::make_pair(2, "Banana"));
    myMap.insert(std::make_pair(1, "Orange"));
    myMap.insert(std::make_pair(3, "Mango"));

    // Displaying the original map
    std::cout << "Original Map:" << std::endl;
    for (const auto& pair : myMap) {
        std::cout << pair.first << ": " << pair.second << std::endl;
    }

    // Sorting the map by key
    std::map<int, std::string> sortedMap(myMap.begin(), myMap.end());

    // Displaying the sorted map
    std::cout << "\nSorted Map (by Key):" << std::endl;
    for (const auto& pair : sortedMap) {
        std::cout << pair.first << ": " << pair.second << std::endl;
    }

    return 0;
}
