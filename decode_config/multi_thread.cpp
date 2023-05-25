#include <iostream>
#include <thread>
#include <vector>

using namespace std;

void myFunction(int arg) {
    while (true) {
        // Do some work here...
        cout << "Thread " << this_thread::get_id() << " is running with argument " << arg << endl;
    }
}

int main() {
    vector<thread> workerThreads;
    int numThreads = 3;
    
    // Create multiple threads to run myFunction in the background
    for (int i = 0; i < numThreads; i++) {
        int myArg = i + 1;
        workerThreads.emplace_back(myFunction, myArg);
    }
    
    // Keep running the main program while the worker threads run in the background
    while (true) {
        // Do some other work here...
    }
    
    // Join all threads before exiting the program
    for (auto& thread : workerThreads) {
        thread.join();
    }
    
    return 0;
}
