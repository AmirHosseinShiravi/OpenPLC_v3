#include <stdint.h>
#include <stdio.h>


typedef struct {
    long int tv_sec;            /* Seconds.  */
    long int tv_nsec;           /* Nanoseconds.  */
} IEC_TIMESPEC; 



int main(){
    IEC_TIMESPEC x1, x2;

    x1.tv_sec = 30;
    x1.tv_nsec = 20;
    printf("%d    %d\n", x1.tv_sec, x1.tv_nsec);
    x2 = x1;
    printf("%d     %d\n", x2.tv_sec, x2.tv_nsec);
    return 1;
}

