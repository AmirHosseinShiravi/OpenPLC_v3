
#include "ladder.h"

// g++ -std=gnu++11 long_double.cpp -o long_double -lstdc++
TIME __CURRENT_TIME;
unsigned char log_buffer[1000000];
int log_index = 0;
int log_counter = 0;
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
    unsigned char log_msg[1000];
    sprintf((char *)log_msg, "LIO_DOTAG0 -> value=  %Lf \n",LIO_Driver_Instance.Tags[8].TagValue);
    log(log_msg);

	sprintf((char *)log_msg, "RES0__DNP_OPENDOOR.flags:  %d \n",RES0__DNP_OPENDOOR.flags);
    log(log_msg);
    return 0;
}