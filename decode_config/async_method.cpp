// #include <iostream>
// #include <thread>
// #include <future>

// class MyClass {
// public:
//     void PerformAsyncTask() {

//         // Create a future object to store the result of the async task
//         std::future<void> future = std::async(std::launch::async, &MyClass::AsyncTask, this);
        
//         // Do other work while the async task is running
        
//         // Wait for the async task to complete and retrieve the result
//         future.get();
        
//         // Continue with other operations after the async task completes
//         std::cout << "Async task completed." << std::endl;
        
//     }

// private:
//     void AsyncTask() {
//         // Simulate a time-consuming task
//         std::this_thread::sleep_for(std::chrono::seconds(3));
        
//         // Perform the actual task here
//         std::cout << "Async task execution." << std::endl;
//     }
// };

// int main() {
//     MyClass obj;
//     for (int i=0; i < 5;i++)
//     {
//         // Call the method multiple times
//         obj.PerformAsyncTask();
//         // obj.PerformAsyncTask();
//     }
//     return 0;
// }



#include <iostream>
#include <thread>

class MyClass {
public:
    void parallelTask() {
        std::cout << "Parallel task started in thread: " << std::this_thread::get_id() << std::endl;
        
        // Perform your time-consuming task here
        // Simulate a time-consuming task
        std::this_thread::sleep_for(std::chrono::seconds(1));
        
        std::cout << "Parallel task completed in thread: " << std::this_thread::get_id() << std::endl;
    }
};

int main() {
    MyClass obj;

    // Call the method in a new thread each time
    std::thread t1(&MyClass::parallelTask, &obj);
    std::thread t2(&MyClass::parallelTask, &obj);

    // Wait for both threads to finish
    t1.join();
    t2.join();

    return 0;
}
