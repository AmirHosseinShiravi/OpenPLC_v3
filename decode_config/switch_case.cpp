// #include <stdio.h>
// #include <string.h>

// int main() {
//     char weekday[10];
//     printf("Enter a day of the week: ");
//     scanf("%s", weekday);

//     switch (weekday) {
//         case 'm':
//             printf("Monday\n");
//             break;
//         case 't':
//             if (strcmp(weekday, "tuesday") == 0 || strcmp(weekday, "thursday") == 0) {
//                 printf("Tuesday or Thursday\n");
//             } else {
//                 printf("Invalid input\n");
//             }
//             break;
//         case 'w':
//             printf("Wednesday\n");
//             break;
//         case 'f':
//             printf("Friday\n");
//             break;
//         case 's':
//             if (strcmp(weekday, "saturday") == 0 || strcmp(weekday, "sunday") == 0) {
//                 printf("Weekend\n");
//             } else {
//                 printf("Invalid input\n");
//             }
//             break;
//         default:
//             printf("Invalid input\n");
//             break;
//     }

//     return 0;
// }


// #include <iostream>
// #include <string>

// using namespace std;

// int main() {
//     string fruit = "apple";
    
//     switch (fruit) {
//         case "orange":
//             cout << "This is an orange" << endl;
//             break;
//         case "banana":
//             cout << "This is a banana" << endl;
//             break;
//         case "apple":
//             cout << "This is an apple" << endl;
//             break;
//         default:
//             cout << "Unknown fruit" << endl;
//             break;
//     }
    
//     return 0;
// }


// #include <iostream>
// #include <map>
// #include <string>

// using namespace std;

// int main() {
//     string fruit = "apple";
    
//     map<string, string> fruitMap = {
//         {"orange", "This is an orange"},
//         {"banana", "This is a banana"},
//         {"apple", "This is an apple"}
//     };
    
//     if (fruitMap.find(fruit) != fruitMap.end()) {
//         cout << fruitMap[fruit] << endl;
//     } else {
//         cout << "Unknown fruit" << endl;
//     }
    
//     return 0;
// }


// #include <iostream>
// #include <string>

// int main() {
//     std::string input;
//     std::cout << "Enter a color: ";
//     std::cin >> input;
 
//     switch(input) {
//         case "red":
//             std::cout << "You chose red." << std::endl;
//             break;
//         case "green":
//             std::cout << "You chose green." << std::endl;
//             break;
//         case "blue":
//             std::cout << "You chose blue." << std::endl;
//             break;
//         default:
//             std::cout << "Invalid input." << std::endl;
//             break;
//     }
 
//     return 0;
// }




#include <iostream>
#include <string>
#include <unordered_map>

int PhysicalLayerStringToInt(char* input)
{
    static const std::unordered_map<std::string, int> map = {
        {"red", 1},
        {"green", 2},
        {"blue", 3}
    };
    auto iter = map.find(input);
    return (iter != map.end()) ? iter->second : -1;
}


int main()
{
    char input[20];
    std::cout << "Enter a color: ";
    std::cin >> input;

    switch (PhysicalLayerStringToInt(input))
    {
        case 1:
            std::cout << "You chose red." << std::endl;
            break;
        case 2:
            std::cout << "You chose green." << std::endl;
            break;
        case 3:
            std::cout << "You chose blue." << std::endl;
            break;
        default:
            std::cout << "Invalid input." << std::endl;
            break;
    }

    return 0;
}