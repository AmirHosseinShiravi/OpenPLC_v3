#include "DRVTags.h"
#include "GlueVars_functions.h"
#include <pthread.h>
#include <stdint.h>

#define MODBUS_PROTOCOL     0
#define DNP3_PROTOCOL       1
#define ENIP_PROTOCOL       2

//Internal buffers for I/O and memory. These buffers are defined in the
//auto-generated glueVars.cpp file
#define BUFFER_SIZE		1024
/*********************/
/*  IEC Types defs   */
/*********************/

typedef uint8_t  IEC_BOOL;

typedef int8_t    IEC_SINT;
typedef int16_t   IEC_INT;
typedef int32_t   IEC_DINT;
typedef int64_t   IEC_LINT;

typedef uint8_t    IEC_USINT;
typedef uint16_t   IEC_UINT;
typedef uint32_t   IEC_UDINT;
typedef uint64_t   IEC_ULINT;

typedef uint8_t    IEC_BYTE;
typedef uint16_t   IEC_WORD;
typedef uint32_t   IEC_DWORD;
typedef uint64_t   IEC_LWORD;

typedef float    IEC_REAL;
typedef double   IEC_LREAL;




//lock for the buffer
extern pthread_mutex_t bufferLock;


//----------------------------------------------------------------------
//FUNCTION PROTOTYPES
//----------------------------------------------------------------------

//MatIEC Compiler
void config_run__(unsigned long tick);
void config_init__(void);



//main.cpp
void sleep_until(struct timespec *ts, long long delay);
void sleepms(int milliseconds);
void log(unsigned char *logmsg);

extern uint8_t run_openplc;
extern unsigned char log_buffer[1000000];
extern int log_index;


//server.cpp
void startServer(uint16_t port, int protocol_type);
int getSO_ERROR(int fd);
void closeSocket(int fd);
bool SetSocketBlockingEnabled(int fd, bool blocking);

//interactive_server.cpp





//modbus_master.cpp
void initializeMB();
void *querySlaveDevices(void *arg);
// void updateBuffersIn_MB();
// void updateBuffersOut_MB();




// Driver Instances buffers defenitions
extern LIO_Driver_Struct           LIO_Driver_Instance;
extern DNP_Slave_Driver_Struct     DNP_Slave_Driver_Instances[2];
extern Modbus_Master_Driver_Struct Modbus_Master_Driver_Instances[3];

// Gluvar_functions
void setDRVTagsFromVars();
void setVarsFromDRVTags();

// DRVTags_init_function
void declare_and_init_drvtags();
