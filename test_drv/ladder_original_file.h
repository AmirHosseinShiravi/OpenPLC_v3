#include <stdint.h>

#include <vector>
#include <thread>

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

//Booleans
extern IEC_BOOL *bool_input[BUFFER_SIZE][8];
extern IEC_BOOL *bool_output[BUFFER_SIZE][8];

//Bytes
extern IEC_BYTE *byte_input[BUFFER_SIZE];
extern IEC_BYTE *byte_output[BUFFER_SIZE];

//Analog I/O
extern IEC_UINT *int_input[BUFFER_SIZE];
extern IEC_UINT *int_output[BUFFER_SIZE];

//Memory
extern IEC_UINT *int_memory[BUFFER_SIZE];
extern IEC_DINT *dint_memory[BUFFER_SIZE];
extern IEC_LINT *lint_memory[BUFFER_SIZE];

//Special Functions
extern IEC_LINT *special_functions[BUFFER_SIZE];

//lock for the buffer
extern pthread_mutex_t bufferLock;

//Common task timer
extern unsigned long long common_ticktime__;

//----------------------------------------------------------------------
//FUNCTION PROTOTYPES
//----------------------------------------------------------------------

//MatIEC Compiler
void config_run__(unsigned long tick);
void config_init__(void);

//glueVars.cpp
void glueVars();
void updateTime();

//hardware_layer.cpp
void initializeHardware();
void finalizeHardware();
void updateBuffersIn();
void updateBuffersOut();

//custom_layer.h
void initCustomLayer();
void updateCustomIn();
void updateCustomOut();
extern int ignored_bool_inputs[];
extern int ignored_bool_outputs[];
extern int ignored_int_inputs[];
extern int ignored_int_outputs[];

//main.cpp
void sleep_until(struct timespec *ts, long long delay);
void sleepms(int milliseconds);
void log(unsigned char *logmsg);
bool pinNotPresent(int *ignored_vector, int vector_size, int pinNumber);
extern uint8_t run_openplc;
extern unsigned char log_buffer[1000000];
extern int log_index;
void handleSpecialFunctions();

//server.cpp
void startServer(uint16_t port, int protocol_type);
int getSO_ERROR(int fd);
void closeSocket(int fd);
bool SetSocketBlockingEnabled(int fd, bool blocking);

//interactive_server.cpp
void startInteractiveServer(int port);
extern bool run_modbus;
extern bool run_dnp3;
extern bool run_enip;
extern bool run_pstorage;
extern uint16_t pstorage_polling;
extern time_t start_time;
extern time_t end_time;

//modbus.cpp
int processModbusMessage(unsigned char *buffer, int bufferSize);
void mapUnusedIO();

//enip.cpp
int processEnipMessage(unsigned char *buffer, int buffer_size);

//pccc.cpp ADDED Ulmer
uint16_t processPCCCMessage(unsigned char *buffer, int buffer_size);


//modbus_master.cpp
void initializeMB(std::vector<std::thread> *workerThreads, int numThreads);
void querySlaveDevices(int arg);
void updateBuffersIn_MB();
void updateBuffersOut_MB();

//dnp3.cpp
void dnp3StartServer(int port);

//persistent_storage.cpp
void startPstorage();
int readPersistentStorage();


// Driver Instances buffers defenitions
extern LIO_Driver_Struct           LIO_Driver_Instance;
extern DNP_Slave_Driver_Struct     DNP_Slave_Driver_Instances[2];
extern Modbus_Master_Driver_Struct Modbus_Master_Driver_Instances[1];

// Gluvar_functions
void setDRVTagsFromVars();
void setVarsFromDRVTags();

// DRVTags_init_function
void declare_and_init_drvtags();
