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

// typedef struct DNP_driver_options{
//     bool Disable;
//     int COMPort;
//     int BaudRate;
//     int DataBits;
//     int StopBits;
//     int Parity;
//     int FlowControl;
//     int SlaveAddress;
//     int MasterAddress;
//     int Instance;
//     int SocketPort;
//     int PhysicalLayerScanTime;
//     int SBOTimeOut;
//     int LinkStatusPeriod;
//     int AppConfirmationTimeout;
//     int MaxEventNum;
//     int ClockValidPeriod;
//     int DLLAckConfirmationTimeout;
//     char TagConfiguration[20];
//     int UnsolicitedRetryDelay;
//     int UnsolicitedSendRetries;
//     char MasterIPAddress[20];
//     char LocalIPAddress[20];
//     int EnableUnsolicited;
//     int SendUnsolicitedWhenOnline;
//     int UseLocalTime;
//     int DiagMode;
//     int DLLAckConfirmation;
//     char PhysicalLayer[20];
//     int DIHighSpeedEventScan;
//     int DeleteOldestEvent;
// }DNP_driver_options;

// typedef struct Modbus_driver_options{
// bool Disable;
// int COMPort;
// int BaudRate;
// int DataBit;
// int Instance;
// int StopBit;
// int Parity;
// char WakeUpString[20];
// int DelayBetweenPolls;
// int ContPoll;
// int ByteFormat;
// int WriteByChange;
// int DiagMode;
// char PhysicalLayer[20];
// }Modbus_driver_options;

// typedef struct DriverTag{
//     double TagValue;
//     double OldTagValue;
//     uint32_t TagStatus;
//     uint32_t OldTagStatus;
//     IEC_DT TagValueDT;
//     char Name[128];
//     int Type;
//     int Init;
//     int Address;
//     int Range;
//     double Deadband;
//     char BlockName[128];
//     int Class;
//     int Group;
//     int Retain;
//     int TagIndex;
// } DriverTag;

// typedef struct Driver_properties{
//     char DriverInstanceName[100];
//     char DriverInstanceType[100];
//     int InstanceIndex;
//     union
//     {
//         struct LIO_driver_options LIO_Options;
//         struct DNP_driver_options DNP_Options;
//         struct Modbus_driver_options Modbus_Options;
//         struct ModbusBlocks* Modbus_Blocks_Options;
//         struct Database_driver_options Database_Options;
//     }driverOptions;
//     DriverTag *Tags;
// }Driver_properties;


////////////////////////////////////////////////////////////////////////////
// Modbus Definitions
typedef struct Modbus_master_driver_options{
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
}Modbus_master_driver_options;

typedef struct Modbus_slave_driver_options{
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
}Modbus_slave_driver_options;

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

typedef struct Modbus_master_driverTag{
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
    double Deadband;
    char BlockName[128];
    int Class;
    int Group;
    int Retain;
    int TagIndex;
} Modbus_master_driverTag;

typedef struct Modbus_slave_driverTag{
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
    double Deadband;
    char BlockName[128];
    int Class;
    int Group;
    int Retain;
    int TagIndex;
} Modbus_slave_driverTag;



// Database Definitions
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

typedef struct Database_driverTag{
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
    double Deadband;
    char BlockName[128];
    int Class;
    int Group;
    int Retain;
    int TagIndex;
} Database_driverTag;


// LIO Definitions
typedef struct LIO_driver_options{
    int ChatterFilterCount;
    int ChatterFilterBaseTimeMs;
    int ChatterFilterFreezeTimeMs;
    int IOScan;
    int SensorType;
    char TagConfiguration[128];
}LIO_driver_options;

typedef struct LIO_driverTag{
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
    double Deadband;
    char BlockName[128];
    int Class;
    int Group;
    int Retain;
    int TagIndex;
}LIO_driverTag;




// DNP Definitions
typedef struct DNP_master_driver_options{
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
}DNP_master_driver_options;

typedef struct DNP_slave_driver_options{
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
}DNP_slave_driver_options;

typedef struct DNP_master_driverTag{
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
    double Deadband;
    char BlockName[128];
    int Class;
    int Group;
    int Retain;
    int TagIndex;
} DNP_master_driverTag;

typedef struct DNP_slave_driverTag{
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
    double Deadband;
    char BlockName[128];
    int Class;
    int Group;
    int Retain;
    int TagIndex;
} DNP_slave_driverTag;




struct LIO_Driver_Struct{
    int number_of_tags;
    LIO_driver_options Options;
    LIO_driverTag* Tags;
};
struct DNP_Master_Driver_Struct{
    int number_of_tags;
    DNP_master_driver_options Options;
    DNP_master_driverTag* Tags;
};
struct DNP_Slave_Driver_Struct{
    int number_of_tags;
    DNP_slave_driver_options Options;
    DNP_slave_driverTag* Tags;
};
struct Modbus_Master_Driver_Struct{
    int number_of_tags;
    int number_of_modbus_blocks;
    Modbus_master_driver_options Options;
    ModbusBlocks* Blocks;
    Modbus_master_driverTag* Tags;
};
struct Modbus_Slave_Driver_Struct{
    int number_of_tags;
    int number_of_modbus_blocks;
    Modbus_slave_driver_options Options;
    ModbusBlocks* Blocks;
    Modbus_slave_driverTag* Tags;
};
struct Database_Driver_Struct{
    int number_of_tags;
    Database_driver_options Options;
    Database_driverTag* Tags;
};




int main(){


    struct DNP_Master_Driver_Struct DNP_Masters[3];
    DNP_Masters[0].Options.BaudRate = 100;
    printf("Driver Baud rate is : %d\n",DNP_Masters[0].Options.BaudRate);



    // int number_of_driver_instances = 5;
    // Driver_properties DRVTags[number_of_driver_instances];

    // // get driver instance number of tags(in example 400 point)
    // DRVTags[0].Tags = malloc(200 * sizeof(*DRVTags[0].Tags));
    // LIO_driver_options LIO_Options_instance1;
    // DRVTags[0].driverOptions.LIO_Options.ChatterFilterCount = 1500;
    // DRVTags[0].Tags[199].Type = 144;
    // strcpy(DRVTags[0].Tags[199].Name, "Amir");
    // printf("%d\n",DRVTags[0].Tags[199].Type);
    // printf("%s\n",DRVTags[0].Tags[199].Name);
    // printf("%d\n",DRVTags[0].driverOptions.LIO_Options.ChatterFilterCount);


    // DRVTags[2].Tags = malloc(400 * sizeof(*DRVTags[0].Tags));
    // DRVTags[2].Tags[399].Type = 12;
    // printf("%d\n",DRVTags[2].Tags[399].Type);


    // free(DRVTags[2].Tags);
    // free(DRVTags[0].Tags);

    return 0;
};