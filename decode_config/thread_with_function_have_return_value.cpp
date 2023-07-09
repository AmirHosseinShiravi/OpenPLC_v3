#include <iostream>
#include <thread>
#include <chrono>
// Function that takes an integer as a parameter and returns a string
std::string greet(int number) {
    std::this_thread::sleep_for(std::chrono::seconds(2));
    return "Hello from thread! The number is: " + std::to_string(number);
    
}

int main() {
    int num = 10;

    // Variable to store the return value
    
    for (int i=0; i < 5; i++)
    {
        std::string result;
        // Create a thread and pass the function with its argument
        std::thread t([&result, i]() {
            result = greet(i);
        });

        // Wait for the thread to finish execution
        t.join();
            // Use the return value
        std::cout << "Returned: " << result << std::endl;
    }

    return 0;
}
