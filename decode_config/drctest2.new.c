#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
typedef struct {
    long int tv_sec;            /* Seconds.  */
    long int tv_nsec;           /* Nanoseconds.  */
}IEC_TIMESPEC;
typedef IEC_TIMESPEC IEC_DT;

// Drivers Structures
typedef struct LIO_driver_options{
    int ChatterFilterCount;
    int ChatterFilterBaseTimeMs;
    int ChatterFilterFreezeTimeMs;
    int IOScan;
    int SensorType;
    char TagConfiguration[128];
}LIO_driver_options;

typedef struct DNP_driver_options{
    bool Disable;
    int COMPort;
    int BaudRate;
    int DataBits;
    int StopBits;
    int Parity;
    int FlowControl;
    int SlaveAddress;
    int MasterAddress;
    int Instance;
    int SocketPort;
    int PhysicalLayerScanTime;
    int SBOTimeOut;
    int LinkStatusPeriod;
    int AppConfirmationTimeout;
    int MaxEventNum;
    int ClockValidPeriod;
    int DLLAckConfirmationTimeout;
    char TagConfiguration[20];
    int UnsolicitedRetryDelay;
    int UnsolicitedSendRetries;
    char MasterIPAddress[20];
    char LocalIPAddress[20];
    int EnableUnsolicited;
    int SendUnsolicitedWhenOnline;
    int UseLocalTime;
    int DiagMode;
    int DLLAckConfirmation;
    char PhysicalLayer[20];
    int DIHighSpeedEventScan;
    int DeleteOldestEvent;
}DNP_driver_options;

typedef struct Modbus_driver_options{
bool Disable;
int COMPort;
int BaudRate;
int DataBit;
int Instance;
int StopBit;
int Parity;
char WakeUpString[20];
int DelayBetweenPolls;
int ContPoll;
int ByteFormat;
int WriteByChange;
int DiagMode;
char PhysicalLayer[20];
}Modbus_driver_options;

typedef struct ModbusBlocks{
    char DeviceName[100];
    int SlaveID;
    char IP[100];
    int SocketPort;
    char Name[100];
    int Type;
    int StartAdd;
    int Count;
    int Timeout;
    bool Enable;
    int FirstTagIndex;
    int LastTagIndex;
}ModbusBlocks;

typedef struct Database_driver_options{
    bool Disable;
    char PhysicalLayer[10];
    int CyclicInterval;
    int MaxDatabaseSize;
    char DatabasePath[100];
    int PhysicalLayerScanTime;
    int DatabaseLocation;
    int RecordMode;
    char TagConfiguration[20];
    int Instance;
    int DiagMode;
}Database_driver_options;

typedef struct DriverTag{
    double TagValue;
    double OldTagValue;
    uint32_t TagStatus;
    uint32_t OldTagStatus;
    IEC_DT TagValueDT;
    char Name[128];
    int Type;
    int Init;
    int Address;
    int Range;
    float Deadband;
    char BlockName[128];
    int Class;
    int Group;
    int Retain;
    int TagIndex;
} DriverTag;

typedef struct Driver_properties{
    union
    {
        struct LIO_driver_options LIO_Options;
        struct DNP_driver_options DNP_Options;
        struct Modbus_driver_options Modbus_Options;
        struct ModbusBlocks Modbus_Blocks_Options;
        struct Database_driver_options Database_Options;
    }driverOptions;
    DriverTag *Tags;
}Driver_properties;

int main() {
    int number_of_driver_instances = 5;
    Driver_properties DRVTags[number_of_driver_instances];

    // Allocate memory for Tags pointer in each Driver_properties struct
    for (int i = 0; i < number_of_driver_instances; i++) {
        DRVTags[i].Tags = malloc(sizeof(DriverTag));
        if (DRVTags[i].Tags == NULL) {
            // Handle allocation failure
            exit(1);
        }

        // Initialize the variables in the DriverTag struct
        DRVTags[i].Tags->TagValue = 0.0;
        DRVTags[i].Tags->OldTagValue = 0.0;
        DRVTags[i].Tags->TagStatus = 0;
        DRVTags[i].Tags->OldTagStatus = 0;
        // Initialize other variables in DriverTag as needed
        memset(DRVTags[i].Tags->Name, 0, sizeof(DRVTags[i].Tags->Name));
        DRVTags[i].Tags->Type = 10;
        DRVTags[i].Tags->Init = 0;
        DRVTags[i].Tags->Address = 0;
        DRVTags[i].Tags->Range = 0;
        DRVTags[i].Tags->Deadband = 0.0f;
        memset(DRVTags[i].Tags->BlockName, 0, sizeof(DRVTags[i].Tags->BlockName));
        DRVTags[i].Tags->Class = 0;
        DRVTags[i].Tags->Group = 0;
        DRVTags[i].Tags->Retain = 0;
        DRVTags[i].Tags->TagIndex = 0;
    }
    printf("%d\n",DRVTags[0].Tags->Type);

    // Use the allocated and initialized Tags pointers as needed

    // Free memory for Tags pointer in each Driver_properties struct
    for (int i = 0; i < number_of_driver_instances; i++) {
        free(DRVTags[i].Tags);
    }

    return 0;
}