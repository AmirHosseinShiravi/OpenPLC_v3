#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include "iec_types.h"
#include "iec_types_all.h"
#include "accessor.h"
#include <modbus.h>



// Modbus Definitions
typedef struct Modbus_master_driver_options{
bool Disable;
char COMPort[20];
int BaudRate;
int DataBit;
int Instance;
int StopBit;
char Parity;
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
char COMPort[20];
int BaudRate;
int DataBit;
int Instance;
int StopBit;
char Parity;
char WakeUpString[20];
int DelayBetweenPolls;
int ContPoll;
int ByteFormat;
int WriteByChange;
int DiagMode;
char PhysicalLayer[20];
}Modbus_slave_driver_options;

typedef struct ModbusBlocks{
    modbus_t *mb_ctx;
    bool isConnected;
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

// modbus tags have not status and date. so we need to delete them from driverTag structure. 
typedef struct Modbus_master_driverTag{
    long double TagValue;
    long double OldTagValue;
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
    long double TagValue;
    long double OldTagValue;
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
    long double TagValue;
    long double OldTagValue;
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
    long double TagValue;
    long double OldTagValue;
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
    long double TagValue;
    long double OldTagValue;
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
    long double TagValue;
    long double OldTagValue;
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




typedef struct LIO_Driver_Struct{
    int number_of_tags;
    LIO_driver_options Options;
    LIO_driverTag* Tags;
}LIO_Driver_Struct;

typedef struct DNP_Master_Driver_Struct{
    int number_of_tags;
    DNP_master_driver_options Options;
    DNP_master_driverTag* Tags;
}DNP_Master_Driver_Struct;

typedef struct DNP_Slave_Driver_Struct{
    int number_of_tags;
    DNP_slave_driver_options Options;
    DNP_slave_driverTag* Tags;
}DNP_Slave_Driver_Struct;

typedef struct Modbus_Master_Driver_Struct{
    int number_of_tags;
    int number_of_modbus_blocks;
    Modbus_master_driver_options Options;
    ModbusBlocks* Blocks;
    Modbus_master_driverTag* Tags;
}Modbus_Master_Driver_Struct;

typedef struct Modbus_Slave_Driver_Struct{
    int number_of_tags;
    int number_of_modbus_blocks;
    Modbus_slave_driver_options Options;
    ModbusBlocks* Blocks;
    Modbus_slave_driverTag* Tags;
}Modbus_Slave_Driver_Struct;

typedef struct Database_Driver_Struct{
    int number_of_tags;
    Database_driver_options Options;
    Database_driverTag* Tags;
}Database_Driver_Struct;



#define number_of_DNP_Master_Driver_Instances 0

#define number_of_DNP_Slave_Driver_Instances 0

#define number_of_Modbus_Master_Driver_Instances 1

#define have_Modbus_Master_Driver_Instances


#define number_of_Modbus_Slave_Driver_Instances 0

#define number_of_Database_Driver_Instances 0

