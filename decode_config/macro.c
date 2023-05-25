#include <stdio.h>
#include <stdint.h>

#define ASSIGN_VALUE(src_var) \
    (double)(src_var);

typedef double IEC_LREAL;
typedef uint8_t IEC_BYTE;
typedef int8_t IEC_SINT;

typedef struct __IEC_LREAL_t {
    IEC_LREAL value;
    IEC_BYTE flags;
} __IEC_LREAL_t;

typedef struct __IEC_SINT_t {
    IEC_SINT value;
    IEC_BYTE flags;
} __IEC_SINT_t;

typedef struct IEC_TIMESPEC{
    long int tv_sec;            /* Seconds.  */
    long int tv_nsec;           /* Nanoseconds.  */
}IEC_TIMESPEC;

typedef IEC_TIMESPEC IEC_DT;

int main()
{
    struct __IEC_SINT_t s1;
    struct __IEC_LREAL_t s2;
    s1.value = 129;
    s2.value = ASSIGN_VALUE(s1.value);

    printf("s1.value = %d\n", s1.value);
    printf("s2.value = %f\n", s2.value);

    
    IEC_DT dt1;
    IEC_DT dt2;
    dt1.tv_sec = 5;
    dt1.tv_nsec = 10;
    dt2 = dt1;

    printf("dt2.tv_sec = %ld\n", dt2.tv_sec);
    printf("dt2.tv_nsec = %ld\n", dt2.tv_nsec);



    return 0;
}
