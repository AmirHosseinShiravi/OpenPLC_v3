// Drivers Structures
typedef struct LIO_driver_options{
    int ChatterFilterCount;
    int ChatterFilterBaseTimeMs;
    int ChatterFilterFreezeTimeMs;
    int IOScan;
    int SensorType;
    char TagConfiguration[128];
};

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
};

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
};

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
};

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
};

// Tags Structures
typedef struct LIO_Tag{
    char name[255];
    int type;
    float init;
    int address;
    int range;
    float deadband;
    int tagIndex;
};

typedef struct DNP_Tag{
    char name[255];
    int type;
    int controlOperation;
    int classVersion;
    float init;
    int address;
    int DefaultStaticVariation;
    int DefaultEventVariation;
    float deadband;
    bool retain;
    int tagIndex;
};

typedef struct Modbus_Tag{
    char BlockName[100];
    int Type;
    int Address;
    char Name[100];
    int TagIndex;
};

typedef struct Database_Tag{
    char Name[100];
    int Type;
    int Address;
    int TagIndex;
};


typedef struct LIO_struct{
    LIO_driver_options Options;
    LIO_Tag *Tags;
};

typedef struct DNP_struct{
    DNP_driver_options Options;
    DNP_Tag Tags;
};

typedef struct Modbus_struct{
    Modbus_driver_options Options;
    ModbusBlocks Blocks;
    Modbus_Tag Tags;
};

typedef struct Database_struct{
    Database_driver_options Options;
    Database_Tag Tags;
};


typedef struct {
    __IEC_LREAL_t TagValue;
    __IEC_LREAL_t OldTagValue;
    __IEC_UDINT_t TagStatus;
    __IEC_UDINT_t OldTagStatus;
    __IEC_DT_t    TagDT;
    char* Name;
    int Type;
    int Init;
    int Address;
    char* Range;
    float Deadband;
    char* Desc;
    char* BlockName;
    int Class;
    int Group;
    int Retain;
    int TagIndex;
} DriverTag;


typedef struct Driver_properties{
    union driverOptions
    {
        LIO_driver_options LIO_Options;
        DNP_driver_options DNP_Options;
        Modbus_driver_options Modbus_Options;
        ModbusBlocks Modbus_Blocks_Options;
        Database_driver_options Database_Options;
    };
    DriverTag *Tags;
};