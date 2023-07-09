// #include <iostream>



// int main()
// {
//     struct timespec timer_start;
//     clock_gettime(CLOCK_REALTIME, &timer_start);
//     std::cout << timer_start.tv_sec << std::endl;
//     return 0;
// }



// #include <iostream>
// #include <ctime>
// #include <chrono>

// int main() {
//     // Get the current system time
//     std::time_t currentTime = std::time(nullptr);

//     // Get the local time zone as a string
//     std::tm* localTime = std::localtime(&currentTime);
//     char timeZone[32];
//     std::strftime(timeZone, sizeof(timeZone), "%z", localTime);

//     // Print the local time zone
//     std::cout << "Local Time Zone: " << timeZone << std::endl;

//     // Get the current time point
//     std::chrono::system_clock::time_point now = std::chrono::system_clock::now();

//     // Convert the time point to a time_t object
//     std::time_t timeNow = std::chrono::system_clock::to_time_t(now);

//     // Get the local time based on the current time zone
//     std::tm* localTimeNow = std::localtime(&timeNow);

//     // Format the local time as a string
//     char timeString[64];
//     std::strftime(timeString, sizeof(timeString), "%Y-%m-%d %H:%M:%S", localTimeNow);

//     // Print the current local time
//     std::cout << "Current Local Time: " << timeString << std::endl;

//     return 0;
// }



// #include <iostream>
// #include <chrono>
// #include <ctime>
// #include <iomanip>

// int main() {
//     // Get the current system time
//     std::chrono::system_clock::time_point now = std::chrono::system_clock::now();

//     // Convert the time point to a time_t object
//     std::time_t currentTime = std::chrono::system_clock::to_time_t(now);

//     // Get the struct tm for the current time in UTC
//     std::tm* gmTime = std::gmtime(&currentTime);

//     // Set the desired time zone offset (in seconds)
//     int timeZoneOffset = 12600;  // Example: GMT+1 - adjust according to your desired time zone

//     // Adjust the UTC time by adding the desired time zone offset
//     std::time_t desiredTime = std::mktime(gmTime) + timeZoneOffset;

//     // Get the struct tm for the desired time zone
//     std::tm* localTime = std::localtime(&desiredTime);

//     // Format the local time as a string
//     char timeString[64];
//     std::strftime(timeString, sizeof(timeString), "%Y-%m-%d %H:%M:%S", localTime);

//     // Print the time in the desired time zone
//     std::cout << "Current Time in Desired Time Zone: " << timeString << std::endl;

//     return 0;
// }


// #include <iostream>
// #include <chrono>
// #include <iomanip>
// #include <vector>

// int main() {
//     // Get the current system time
//     std::chrono::system_clock::time_point now = std::chrono::system_clock::now();

//     // Create a list of timezones
//     std::vector<std::string> timeZones = {
//         "GMT", "EST", "EDT", "CST", "CDT", "PST", "PDT"
//         // Add more time zones as per your requirement
//     };

//     // Iterate over each time zone
//     for (const std::string& timeZone : timeZones) {
//         // Convert the time point to a time_t object
//         std::time_t currentTime = std::chrono::system_clock::to_time_t(now);

//         // Get the struct tm for the current time in UTC
//         std::tm* gmTime = std::gmtime(&currentTime);

//         // Set the desired time zone
//         std::getenv(const_cast<char*>(("TZ=" + timeZone).c_str()));
//         tzset();

//         // Get the local time for the desired time zone
//         std::time_t localTime = std::mktime(gmTime);

//         // Calculate the time zone offset from UTC in seconds
//         int timeZoneOffset = static_cast<int>(std::difftime(localTime, currentTime));

//         // Print the time zone and its offset
//         std::cout << "Time Zone: " << timeZone << ", Offset: " << timeZoneOffset << " seconds" << std::endl;
//     }

//     return 0;
// }


// #include <iostream>
// #include <map>
// #include <chrono>

// // Define the map of timezone names and offset in seconds
// std::map<std::string, int> timezoneOffsets = {
//     {"UTC", 0},
//     {"PST", -28800},
//     {"EST", -18000},
//     {"IR", 12600},
//     // Add more timezone entries as needed
// };

// int main() {
//     // Get the current time
//     auto now = std::chrono::system_clock::now();
    
//     // Iterate over the timezone map
//     for (const auto& timezone : timezoneOffsets) {
        
//         // Convert the time point to a time_t object
//         std::time_t currentTime = std::chrono::system_clock::to_time_t(now);

//         // Get the struct tm for the current time in UTC
//         std::tm* gmTime = std::gmtime(&currentTime);
        
//         // Get the local time for the desired time zone
//         std::time_t localTime = std::mktime(gmTime);

//         // Compute the local time for each timezone
//         auto localTime = currentTime + std::chrono::seconds(timezone.second);
        
//         // Convert the local time to a readable string format
//         std::time_t time = std::chrono::system_clock::to_time_t(localTime);
//         char buffer[80];
//         std::strftime(buffer, sizeof(buffer), "%Y-%m-%d %H:%M:%S", std::localtime(&time));
        
//         // Display the timezone name and current local time
//         std::cout << "Time in " << timezone.first << ": " << buffer << std::endl;
//     }
    
//     return 0;
// }





#include <iostream>
#include <map>
#include <chrono>
#include <iomanip>

// Define the map of timezone names and offset in seconds
// std::map<std::string, int> timezoneOffsets = {
//     {"UTC", 0},
//     {"PST", -28800},
//     {"EST", -18000},
//     {"IR", 12600},
//     // Add more timezone entries as needed
// };

enum timezoneOffsets {
    UTC = 0,
    IR = 12600,
};


std::time_t get_current_time_timestamp_of_timezone(timezoneOffsets timezone)
{
    // Get the current time
    auto currentTime = std::chrono::system_clock::now();
    std::time_t utcTime = std::chrono::system_clock::to_time_t(currentTime);
    auto localTime = currentTime + std::chrono::seconds(timezone);

    // Convert the local time to a readable string format
    std::time_t time = std::chrono::system_clock::to_time_t(localTime);

    return time;
}

// int main() {
//     // Get the current time
//     auto currentTime = std::chrono::system_clock::now();
//     std::time_t utcTime = std::chrono::system_clock::to_time_t(currentTime);

//     // Iterate over the timezone map
//     for (const auto& timezone : timezoneOffsets) {
//         // Compute the local time for each timezone
//         auto localTime = currentTime + std::chrono::seconds(timezone.second);

//         // Convert the local time to a readable string format
//         std::time_t time = std::chrono::system_clock::to_time_t(localTime);
//         std::tm* localTimeInfo = std::gmtime(&time); // Get UTC time info
//         // char buffer[80];
//         // std::strftime(buffer, sizeof(buffer), "%Y-%m-%d %H:%M:%S", localTimeInfo);

//         // // Display the timezone name and current local time
//         // std::cout << "Time in " << timezone.first << ": " << buffer << " UTC    " << time << std::endl;
//     }

//     return 0;
// }



int main()
{
    std::time_t time = get_current_time_timestamp_of_timezone(timezoneOffsets::IR);
    std::cout << time << std::endl;
    return 0;
}
