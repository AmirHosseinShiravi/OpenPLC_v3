#include "ladder.h"

// g++ -std=gnu++11 long_double.cpp -o long_double -lstdc++

// g++ -std=gnu++11 -I ./lib -c Config0.c -w
// g++ -std=gnu++11 -I ./lib -c Res0.c -w
// g++ -std=gnu++11 *.cpp *.o -o openplc -I ./lib -pthread -fpermissive `pkg-config --cflags --libs libmodbus` -w

using namespace std;

TIME __CURRENT_TIME;
unsigned char log_buffer[1000000];
int log_index = 0;
int log_counter = 0;
uint8_t run_openplc = 1; //Variable to control OpenPLC Runtime execution

pthread_mutex_t bufferLock; //mutex for the internal buffers
pthread_mutex_t logLock; //mutex for the internal log
//Variable to control OpenPLC Runtime execution


//-----------------------------------------------------------------------------
// Helper function - Makes the running thread sleep for the ammount of time
// in milliseconds
//-----------------------------------------------------------------------------
void sleep_until(struct timespec *ts, long long delay)
{
    ts->tv_sec  += delay / (1000*1000*1000);
    ts->tv_nsec += delay % (1000*1000*1000);
    if(ts->tv_nsec >= 1000*1000*1000)
    {
        ts->tv_nsec -= 1000*1000*1000;
        ts->tv_sec++;
    }
    clock_nanosleep(CLOCK_MONOTONIC, TIMER_ABSTIME, ts,  NULL);
}

//-----------------------------------------------------------------------------
// Helper function - Makes the running thread sleep for the ammount of time
// in milliseconds
//-----------------------------------------------------------------------------
void sleepms(int milliseconds)
{
	struct timespec ts;
	ts.tv_sec = milliseconds / 1000;
	ts.tv_nsec = (milliseconds % 1000) * 1000000;
	nanosleep(&ts, NULL);
}


void log(unsigned char *logmsg)
{

    printf("%s", logmsg);
    for (int i = 0; logmsg[i] != '\0'; i++)
    {
        log_buffer[log_index] = logmsg[i];
        log_index++;
        log_buffer[log_index] = '\0';
    }
    
    log_counter++;
    if (log_counter >= 1000)
    {
        /*Store current log on a file*/
        log_counter = 0;
        log_index = 0;
    }

}

int main(){

    declare_and_init_drvtags();
    
    setVarsFromDRVTags();
    setDRVTagsFromVars();

    int amir = 1;
    unsigned char log_msg[1000];
    sprintf((char *)log_msg, "LIO_DOTAG0 -> value=  %Lf \n",LIO_Driver_Instance.Tags[8].TagValue);
    log(log_msg);

	sprintf((char *)log_msg, "RES0__DNP_OPENDOOR.flags:  %d \n",RES0__DNP_OPENDOOR.flags);
    log(log_msg);

    
    vector<thread> workerThreads;

    int numThreads = 3;

    initializeMB(&workerThreads, numThreads);


    sprintf((char *)log_msg, "************************************************************************* \n");
    log(log_msg);

    // Join all threads before exiting the program
    for (auto& thread : workerThreads) {
        thread.join();
    }

    return 0;
}