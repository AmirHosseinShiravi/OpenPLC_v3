from lxml import etree
import os
from test_csv_reader import generate_extern_variables

############# change .cfg file by this routines ################
# set False to false
# set True to true
# change empty range in LIO from "" to "-1"
# change empty deadband in LIO from "" to "0"
################################################################

################################################################
################################################################
# TODO: add function to Stote and retrieve tags with retain flag
################################################################
################################################################

def concatenate_strings(destination_str ,string):

    destination_str[0] += string + '\n'


def decode_config_file(file_path):


    DRVTags_string = [str()]
    DRVTags_string_body = [str()]
    DRVTags_string_type_init = [str()]
    GlueVars_functions_string = [str()]
    setDRVTagsFromVars_string = [str()] # inputs
    setVarsFromDRVTags_string = [str()] # outputs
    DRVTags_string_type_definitions = [str()]
    extra_headers_string = [str()]

    concatenate_strings(GlueVars_functions_string, '#include "accessor.h"\n#include "iec_types.h"\n#include "iec_types_all.h"\n')
    extern_variables = generate_extern_variables('/home/amir/Water_RTU/OpenPLC_runtime/OpenPLC_v3/webserver/core/file_generator/VARIABLES.csv')
    concatenate_strings(GlueVars_functions_string, extern_variables)


    concatenate_strings(setDRVTagsFromVars_string, 'void setDRVTagsFromVars(){')
    concatenate_strings(setVarsFromDRVTags_string, 'void setVarsFromDRVTags(){')

    DRVTags_string_headers = '''#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include "iec_types.h"
#include "iec_types_all.h"
#include "accessor.h"
#include <modbus.h>


'''

    DRVTags_string_type_definitions[0]= '''
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


'''
   
    # str_temp = predefines.split('\n')
    # str_temp = [_.strip() for _ in str_temp]
    # predefines = '\n'.join(str_temp)
    # concatenate_strings(DRVTags_string ,DRVTags_string_headers)
    # concatenate_strings(DRVTags_string ,DRVTags_string_type_definitions)

    
    # DRVTags_string[0]  = DRVTags_string_headers + DRVTags_string_type_definitions + DRVTags_string_body[0]
    

# struct LIO_Driver_Struct           LIO_Driver_Instance;
# struct DNP_Master_Driver_Struct    DNP_Master_Driver_Instances[5];
# struct DNP_Slave_Driver_Struct     DNP_Slave_Driver_Instances[5];
# struct Modbus_Master_Driver_Struct Modbus_Master_Driver_Instances[5];
# struct Modbus_Slave_Driver_Struct  Modbus_Slave_Driver_Instances[5];
# struct Database_Driver_Struct      Database_Driver_Instances[5];


    # declare declare_and_init_drvtags function
    concatenate_strings(DRVTags_string_body ,'\nvoid declare_and_init_drvtags(){\n')
    concatenate_strings(DRVTags_string_body ,f'\tIEC_DT time_temp;\n\ttime_temp.tv_sec = 0;\n\ttime_temp.tv_nsec = 0;\n')

    with open(file_path, 'r') as file_handler:
        tree = etree.parse(source= file_handler)
        DRVTags = []
        # tree = tree.find('Options')
        drivers = tree.findall('Drv')
        driver_list = []
        instance_index = 0

        number_of_DNP_Master_Driver_Instances = 0
        number_of_DNP_Slave_Driver_Instances = 0
        number_of_Modbus_Master_Driver_Instances = 0
        number_of_Modbus_Slave_Driver_Instances = 0
        number_of_Database_Driver_Instances = 0

        for driver_instance in drivers:
            driver_instance_name = driver_instance.attrib.get('name','')
            driver_instance_type = driver_instance.attrib.get('type','')
            match driver_instance_type:
                
                case "LOCAL_IO":

                    driver_instance_node = tree.find(driver_instance_name)
                    # get LIO's Option
                    options = driver_instance_node.find('options')

                    LIO_options_prefix = f"LIO_Driver_Instance.Options"
                    string= f'\t{LIO_options_prefix}.ChatterFilterCount = {options.attrib.get("ChatterFilterCount", None)};\n' + \
                            f'\t{LIO_options_prefix}.ChatterFilterBaseTimeMs = {options.attrib.get("ChatterFilterBaseTimeMs", None)};\n' + \
                            f'\t{LIO_options_prefix}.ChatterFilterFreezeTimeMs =  {options.attrib.get("ChatterFilterFreezeTimeMs", None)};\n' + \
                            f'\t{LIO_options_prefix}.IOScan = {options.attrib.get("IOScan", None)};\n' + \
                            f'\tstrcpy({LIO_options_prefix}.TagConfiguration, "{options.attrib.get("TagConfiguration", None)}");\n'
                    
                    concatenate_strings(DRVTags_string_body ,string)

                    tagConfiguration = options.attrib.get("TagConfiguration", None)

                    # Get and generate LIO's tag buffer
                    tags = driver_instance_node.find('Tags').findall('Tag')
                    number_of_tags = len(tags)
                    concatenate_strings(DRVTags_string_body ,f'\tLIO_Driver_Instance.number_of_tags = {number_of_tags};')
                    concatenate_strings(DRVTags_string_body ,f'\tLIO_Driver_Instance.Tags = (LIO_driverTag*) malloc({number_of_tags} * sizeof(*LIO_Driver_Instance.Tags));')
                    # we don't need to initialize other variables because of we don't use them for tihs
                    # driver.
                    for tag in tags:
                        tag_index = tag.attrib.get("TagIndex", None)
                        if tag_index:
                            LIO_tag_prefix = f"LIO_Driver_Instance.Tags[{tag_index}]"
                            string= f'\tstrcpy({LIO_tag_prefix}.Name, "{tag.attrib.get("Name", "")}" );\n' + \
                                    f'\t{LIO_tag_prefix}.Type = {tag.attrib.get("Type", "")};\n' + \
                                    f'\t{LIO_tag_prefix}.Init =  {tag.attrib.get("Init", 0)};\n' + \
                                    f'\t{LIO_tag_prefix}.Address = {tag.attrib.get("Address", "")};\n' + \
                                    f'\t{LIO_tag_prefix}.Range = {tag.attrib.get("Range", 0)};\n' + \
                                    f'\t{LIO_tag_prefix}.Deadband = {tag.attrib.get("Deadband", 0)};\n' + \
                                    f'\t{LIO_tag_prefix}.TagIndex = {tag_index};\n' + \
                                    f'\t{LIO_tag_prefix}.TagValue = 0;\n' + \
                                    f'\t{LIO_tag_prefix}.OldTagValue = 0;\n' + \
                                    f'\t{LIO_tag_prefix}.TagStatus = 1;\n' + \
                                    f'\t{LIO_tag_prefix}.OldTagStatus = 1;\n' + \
                                    f'\t{LIO_tag_prefix}.TagValueDT = time_temp;\n'
                            concatenate_strings(DRVTags_string_body ,string)
                            
                            tag_type = tag.attrib.get("Type", "")

                            if tag_type in ["10","11","201"]:
                                # setVarsFromDRVTags
                                match tagConfiguration:
                                    case "Value":
                                        # TODO: HardCoded RES0. fixit later.
                                        concatenate_strings(setDRVTagsFromVars_string, f'\tLIO_Driver_Instance.Tags[{tag_index}].TagValue = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},);')
                                    case "Value-Status":
                                        concatenate_strings(setDRVTagsFromVars_string, f'\tLIO_Driver_Instance.Tags[{tag_index}].TagValue = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},);')
                                        concatenate_strings(setDRVTagsFromVars_string, f'\tLIO_Driver_Instance.Tags[{tag_index}].TagStatus = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_STATUS,);')
                                    case "Value-DT":
                                        concatenate_strings(setDRVTagsFromVars_string, f'\tLIO_Driver_Instance.Tags[{tag_index}].TagValue = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},);')
                                        concatenate_strings(setDRVTagsFromVars_string, f'\tLIO_Driver_Instance.Tags[{tag_index}].TagValueDT = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_DT,);')
                                    case "Value-Status-DT":
                                        concatenate_strings(setDRVTagsFromVars_string, f'\tLIO_Driver_Instance.Tags[{tag_index}].TagValue = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},);')
                                        concatenate_strings(setDRVTagsFromVars_string, f'\tLIO_Driver_Instance.Tags[{tag_index}].TagStatus = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_STATUS,);')
                                        concatenate_strings(setDRVTagsFromVars_string, f'\tLIO_Driver_Instance.Tags[{tag_index}].TagValueDT = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_DT,);')
                            
                            elif tag_type in ["1","2","3","4","200"]:
                                match tagConfiguration:
                                    case "Value":
                                        # TODO: HardCoded RES0. fixit later.
                                        concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},,LIO_Driver_Instance.Tags[{tag_index}].TagValue);')
                                    case "Value-Status":
                                        concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},,LIO_Driver_Instance.Tags[{tag_index}].TagValue);')
                                        concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_STATUS,,LIO_Driver_Instance.Tags[{tag_index}].TagStatus);')
                                    case "Value-DT":
                                        concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},,LIO_Driver_Instance.Tags[{tag_index}].TagValue);')
                                        concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_DT,,LIO_Driver_Instance.Tags[{tag_index}].TagValueDT);')
                                    case "Value-Status-DT":
                                        concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},,LIO_Driver_Instance.Tags[{tag_index}].TagValue);')
                                        concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_STATUS,,LIO_Driver_Instance.Tags[{tag_index}].TagStatus);')
                                        concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_DT,,LIO_Driver_Instance.Tags[{tag_index}].TagValueDT);')
                    
                case "DNP3Master":
                    pass
                case "DNP3Slave":
                    driver_instance_node = tree.find(driver_instance_name)
                    # get LIO's Option
                    options = driver_instance_node.find('options')
                    if options.attrib.get("Disable", None) == "true":
                        continue
                    else:
                        DNP_options_prefix = f"DNP_Slave_Driver_Instances[{number_of_DNP_Slave_Driver_Instances}].Options"
                        string= f'\t{DNP_options_prefix}.Disable = {options.attrib.get("Disable", None)};\n' + \
                                f'\t{DNP_options_prefix}.COMPort = {options.attrib.get("COMPort", None)};\n' + \
                                f'\t{DNP_options_prefix}.BaudRate = {options.attrib.get("BaudRate", None)};\n' + \
                                f'\t{DNP_options_prefix}.DataBits = {options.attrib.get("DataBits", None)};\n' + \
                                f'\t{DNP_options_prefix}.StopBits = {options.attrib.get("StopBits", None)};\n' + \
                                f'\t{DNP_options_prefix}.Parity = \'{options.attrib.get("Parity", None)}\';\n' + \
                                f'\t{DNP_options_prefix}.FlowControl = {options.attrib.get("FlowControl", None)};\n' + \
                                f'\t{DNP_options_prefix}.SlaveAddress = {options.attrib.get("SlaveAddress", None)};\n' + \
                                f'\t{DNP_options_prefix}.MasterAddress = {options.attrib.get("MasterAddress", None)};\n' + \
                                f'\t{DNP_options_prefix}.Instance = {options.attrib.get("Instance", None)};\n' + \
                                f'\t{DNP_options_prefix}.SocketPort = {options.attrib.get("SocketPort", None)};\n' + \
                                f'\t{DNP_options_prefix}.PhysicalLayerScanTime = {options.attrib.get("PhysicalLayerScanTime", None)};\n' + \
                                f'\t{DNP_options_prefix}.SBOTimeOut = {options.attrib.get("SBOTimeOut", None)};\n' + \
                                f'\t{DNP_options_prefix}.LinkStatusPeriod = {options.attrib.get("LinkStatusPeriod", None)};\n' + \
                                f'\t{DNP_options_prefix}.AppConfirmationTimeout = {options.attrib.get("AppConfirmationTimeout", None)};\n' + \
                                f'\t{DNP_options_prefix}.MaxEventNum = {options.attrib.get("MaxEventNum", None)};\n' + \
                                f'\t{DNP_options_prefix}.ClockValidPeriod = {options.attrib.get("ClockValidPeriod", None)};\n' + \
                                f'\t{DNP_options_prefix}.DLLAckConfirmationTimeout = {options.attrib.get("DLLAckConfirmationTimeout", None)};\n' + \
                                f'\tstrcpy({DNP_options_prefix}.TagConfiguration , "{options.attrib.get("TagConfiguration", None)}");\n' + \
                                f'\t{DNP_options_prefix}.UnsolicitedRetryDelay = {options.attrib.get("UnsolicitedRetryDelay", None)};\n' + \
                                f'\t{DNP_options_prefix}.UnsolicitedSendRetries = {options.attrib.get("UnsolicitedSendRetries", None)};\n' + \
                                f'\tstrcpy({DNP_options_prefix}.MasterIPAddress, "{options.attrib.get("MasterIPAddress", None)}");\n' + \
                                f'\tstrcpy({DNP_options_prefix}.LocalIPAddress, "{options.attrib.get("LocalIPAddress", None)}");\n' + \
                                f'\t{DNP_options_prefix}.EnableUnsolicited = {options.attrib.get("EnableUnsolicited", None)};\n' + \
                                f'\t{DNP_options_prefix}.SendUnsolicitedWhenOnline = {options.attrib.get("SendUnsolicitedWhenOnline", None)};\n' + \
                                f'\t{DNP_options_prefix}.UseLocalTime = {options.attrib.get("UseLocalTime", None)};\n' + \
                                f'\t{DNP_options_prefix}.DiagMode = {options.attrib.get("DiagMode", None)};\n' + \
                                f'\t{DNP_options_prefix}.DLLAckConfirmation = {options.attrib.get("DLLAckConfirmation", None)};\n' + \
                                f'\tstrcpy({DNP_options_prefix}.PhysicalLayer, "{options.attrib.get("PhysicalLayer", None)}");\n' + \
                                f'\t{DNP_options_prefix}.DIHighSpeedEventScan = {options.attrib.get("DIHighSpeedEventScan", None)};\n' + \
                                f'\t{DNP_options_prefix}.DeleteOldestEvent = {options.attrib.get("DeleteOldestEvent", None)};\n'
                        
                        concatenate_strings(DRVTags_string_body ,string)

                        tagConfiguration = options.attrib.get("TagConfiguration", None)

                        # Get and generate LIO's tag buffer
                        tags = driver_instance_node.find('Tags').findall('Tag')
                        number_of_tags = len(tags)
                        concatenate_strings(DRVTags_string_body ,f'\tDNP_Slave_Driver_Instances[{number_of_DNP_Slave_Driver_Instances}].number_of_tags = {number_of_tags};')
                        concatenate_strings(DRVTags_string_body ,f'\tDNP_Slave_Driver_Instances[{number_of_DNP_Slave_Driver_Instances}].Tags = (DNP_slave_driverTag*)malloc({number_of_tags} * sizeof(*DNP_Slave_Driver_Instances[{number_of_DNP_Slave_Driver_Instances}].Tags));')
                        for tag in tags:
                            tag_index = tag.attrib.get("TagIndex", None)
                            if tag_index:
                                DNP_tag_prefix = f"DNP_Slave_Driver_Instances[{number_of_DNP_Slave_Driver_Instances}].Tags[{tag_index}]"
                                string= f'\tstrcpy({DNP_tag_prefix}.Name, "{tag.attrib.get("Name", "")}");\n' + \
                                        f'\t{DNP_tag_prefix}.Type = {tag.attrib.get("Type", "")};\n' + \
                                        f'\t{DNP_tag_prefix}.Class = {tag.attrib.get("Class", "")};\n' + \
                                        f'\t{DNP_tag_prefix}.Init =  {tag.attrib.get("Init", 0)};\n' + \
                                        f'\t{DNP_tag_prefix}.Address = {tag.attrib.get("Address", "")};\n' + \
                                        f'\t{DNP_tag_prefix}.Group = {tag.attrib.get("Group", "")};\n' + \
                                        f'\t{DNP_tag_prefix}.Deadband = {tag.attrib.get("Deadband", 0)};\n' + \
                                        f'\t{DNP_tag_prefix}.Retain = {tag.attrib.get("Retain", 0)};\n' + \
                                        f'\t{DNP_tag_prefix}.TagIndex = {tag_index};\n' + \
                                        f'\t{DNP_tag_prefix}.TagValue = 0;\n' + \
                                        f'\t{DNP_tag_prefix}.OldTagValue = 0;\n' + \
                                        f'\t{DNP_tag_prefix}.TagStatus = 1;\n' + \
                                        f'\t{DNP_tag_prefix}.OldTagStatus = 1;\n' + \
                                        f'\t{DNP_tag_prefix}.TagValueDT = time_temp;\n'
                                
                                concatenate_strings(DRVTags_string_body ,string)

                                tag_type = tag.attrib.get("Type", "")

                                if tag_type in ["1","4"]:
                                    match tagConfiguration:
                                        case "Value":
                                            # TODO: HardCoded RES0. fixit later.
                                            concatenate_strings(setDRVTagsFromVars_string, f'\tDNP_Slave_Driver_Instances[{number_of_DNP_Slave_Driver_Instances}].Tags[{tag_index}].TagValue = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},);')
                                        case "Value-Status":
                                            concatenate_strings(setDRVTagsFromVars_string, f'\tDNP_Slave_Driver_Instances[{number_of_DNP_Slave_Driver_Instances}].Tags[{tag_index}].TagValue = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},);')
                                            concatenate_strings(setDRVTagsFromVars_string, f'\tDNP_Slave_Driver_Instances[{number_of_DNP_Slave_Driver_Instances}].Tags[{tag_index}].TagStatus = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_STATUS,);')
                                        case "Value-DT":
                                            concatenate_strings(setDRVTagsFromVars_string, f'\tDNP_Slave_Driver_Instances[{number_of_DNP_Slave_Driver_Instances}].Tags[{tag_index}].TagValue = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},);')
                                            concatenate_strings(setDRVTagsFromVars_string, f'\tDNP_Slave_Driver_Instances[{number_of_DNP_Slave_Driver_Instances}].Tags[{tag_index}].TagValueDT = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_DT,);')
                                        case "Value-Status-DT":
                                            concatenate_strings(setDRVTagsFromVars_string, f'\tDNP_Slave_Driver_Instances[{number_of_DNP_Slave_Driver_Instances}].Tags[{tag_index}].TagValue = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},);')
                                            concatenate_strings(setDRVTagsFromVars_string, f'\tDNP_Slave_Driver_Instances[{number_of_DNP_Slave_Driver_Instances}].Tags[{tag_index}].TagStatus = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_STATUS,);')
                                            concatenate_strings(setDRVTagsFromVars_string, f'\tDNP_Slave_Driver_Instances[{number_of_DNP_Slave_Driver_Instances}].Tags[{tag_index}].TagValueDT = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_DT,);')
                                    
                                elif tag_type in ["50","51"]:
                                    match tagConfiguration:
                                        case "Value":
                                            # TODO: HardCoded RES0. fixit later.
                                            concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},,DNP_Slave_Driver_Instances[{number_of_DNP_Slave_Driver_Instances}].Tags[{tag_index}].TagValue);')
                                        case "Value-Status":
                                            concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},,DNP_Slave_Driver_Instances[{number_of_DNP_Slave_Driver_Instances}].Tags[{tag_index}].TagValue);')
                                            concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_STATUS,,DNP_Slave_Driver_Instances[{number_of_DNP_Slave_Driver_Instances}].Tags[{tag_index}].TagStatus);')
                                        case "Value-DT":
                                            concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},,DNP_Slave_Driver_Instances[{number_of_DNP_Slave_Driver_Instances}].Tags[{tag_index}].TagValue);')
                                            concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_DT,,DNP_Slave_Driver_Instances[{number_of_DNP_Slave_Driver_Instances}].Tags[{tag_index}].TagValueDT);')
                                        case "Value-Status-DT":
                                            concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},,DNP_Slave_Driver_Instances[{number_of_DNP_Slave_Driver_Instances}].Tags[{tag_index}].TagValue);')
                                            concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_STATUS,,DNP_Slave_Driver_Instances[{number_of_DNP_Slave_Driver_Instances}].Tags[{tag_index}].TagStatus);')
                                            concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_DT,,DNP_Slave_Driver_Instances[{number_of_DNP_Slave_Driver_Instances}].Tags[{tag_index}].TagValueDT);')
                        
                        number_of_DNP_Slave_Driver_Instances += 1

                case "ModbusMaster":
                    driver_instance_node = tree.find(driver_instance_name)
                    # get LIO's Option
                    options = driver_instance_node.find('options')
                    if options.attrib.get("Disable", None) == "true":
                        continue
                    else:


                        Modbus_options_prefix = f"Modbus_Master_Driver_Instances[{number_of_Modbus_Master_Driver_Instances}].Options"
                        match options.attrib.get("Parity", None):
                            case "Even":
                                parity = 'E'
                            case "Odd":
                                parity = 'O'
                            case "None":
                                parity = 'N'
                    
                        string= f'\t{Modbus_options_prefix}.Disable = {options.attrib.get("Disable", None)};\n' + \
                                f'\tstrcpy({Modbus_options_prefix}.COMPort, \"{options.attrib.get("COMPort", None)}\");\n' + \
                                f'\t{Modbus_options_prefix}.BaudRate = {options.attrib.get("BaudRate", None)};\n' + \
                                f'\t{Modbus_options_prefix}.DataBit = {options.attrib.get("DataBit", None)};\n' + \
                                f'\t{Modbus_options_prefix}.Instance = {options.attrib.get("Instance", None)};\n' + \
                                f'\t{Modbus_options_prefix}.StopBit = {options.attrib.get("StopBit", None)};\n' + \
                                f'\t{Modbus_options_prefix}.Parity = \'{parity}\';\n' + \
                                f'\tstrcpy({Modbus_options_prefix}.WakeUpString, "{options.attrib.get("WakeUpString", None)}");\n' + \
                                f'\t{Modbus_options_prefix}.DelayBetweenPolls = {options.attrib.get("DelayBetweenPolls", None)};\n' + \
                                f'\t{Modbus_options_prefix}.ContPoll = {options.attrib.get("ContPoll", None)};\n' + \
                                f'\t{Modbus_options_prefix}.ByteFormat = {options.attrib.get("ByteFormat", None)};\n' + \
                                f'\t{Modbus_options_prefix}.WriteByChange = {options.attrib.get("WriteByChange", None)};\n' + \
                                f'\t{Modbus_options_prefix}.DiagMode = {options.attrib.get("DiagMode", None)};\n' + \
                                f'\tstrcpy({Modbus_options_prefix}.PhysicalLayer, "{options.attrib.get("PhysicalLayer", None)}");\n'
                        
                        concatenate_strings(DRVTags_string_body ,string)

                        tagConfiguration = options.attrib.get("TagConfiguration", None)

                        # modbus blocks
                        blocks = driver_instance_node.find('Blocks').findall('Block')
                        number_of_blocks = len(blocks)
                        
                        concatenate_strings(DRVTags_string_body ,f'\tModbus_Master_Driver_Instances[{number_of_Modbus_Master_Driver_Instances}].number_of_modbus_blocks = {number_of_blocks};')
                        concatenate_strings(DRVTags_string_body ,f'\tModbus_Master_Driver_Instances[{number_of_Modbus_Master_Driver_Instances}].Blocks = (ModbusBlocks*)malloc({number_of_blocks} * sizeof(*Modbus_Master_Driver_Instances[{number_of_Modbus_Master_Driver_Instances}].Blocks));')
                        for i, block in enumerate(blocks):
                            Modbus_blocks_prefix = f"Modbus_Master_Driver_Instances[{number_of_Modbus_Master_Driver_Instances}].Blocks[{i}]"

                            string= f'\tstrcpy({Modbus_blocks_prefix}.DeviceName, "{block.attrib.get("DeviceName", "")}");\n' + \
                                    f'\t{Modbus_blocks_prefix}.SlaveID = {block.attrib.get("SlaveID", None)};\n' + \
                                    f'\tstrcpy({Modbus_blocks_prefix}.IP, "{block.attrib.get("IP", "")}");\n' + \
                                    f'\t{Modbus_blocks_prefix}.SocketPort = {block.attrib.get("SocketPort", None)};\n' + \
                                    f'\tstrcpy({Modbus_blocks_prefix}.Name, "{block.attrib.get("Name", "")}");\n' + \
                                    f'\t{Modbus_blocks_prefix}.Type = {block.attrib.get("Type", None)};\n' + \
                                    f'\t{Modbus_blocks_prefix}.StartAdd = {block.attrib.get("StartAdd", None)};\n' + \
                                    f'\t{Modbus_blocks_prefix}.Count = {block.attrib.get("Count", None)};\n' + \
                                    f'\t{Modbus_blocks_prefix}.Timeout = {block.attrib.get("Timeout", None)};\n' + \
                                    f'\t{Modbus_blocks_prefix}.Enable = {block.attrib.get("Enable", None)};\n' + \
                                    f'\t{Modbus_blocks_prefix}.FirstTagIndex = {block.attrib.get("FirstTagIndex", None)};\n' + \
                                    f'\t{Modbus_blocks_prefix}.LastTagIndex = {block.attrib.get("LastTagIndex", None)};\n'
                            concatenate_strings(DRVTags_string_body ,string)

                        # Get and generate LIO's tag buffer
                        tags = driver_instance_node.find('Tags').findall('Tag')
                        number_of_tags = len(tags)
                        concatenate_strings(DRVTags_string_body ,f'\tModbus_Master_Driver_Instances[{number_of_Modbus_Master_Driver_Instances}].number_of_tags = {number_of_tags};')
                        concatenate_strings(DRVTags_string_body ,f'\tModbus_Master_Driver_Instances[{number_of_Modbus_Master_Driver_Instances}].Tags = (Modbus_master_driverTag*) malloc({number_of_tags} * sizeof(*Modbus_Master_Driver_Instances[{number_of_Modbus_Master_Driver_Instances}].Tags));')
                        # we don't need to initialize other variables because of we don't use them for tihs
                        # driver.
                        for tag in tags:
                            tag_index = tag.attrib.get("TagIndex", None)
                            if tag_index:
                                Modebus_tag_prefix = f"Modbus_Master_Driver_Instances[{number_of_Modbus_Master_Driver_Instances}].Tags[{tag_index}]"
                                string= f'\tstrcpy({Modebus_tag_prefix}.Name, "{tag.attrib.get("Name", "")}");\n' + \
                                        f'\tstrcpy({Modebus_tag_prefix}.BlockName, "{tag.attrib.get("BlockName", "")}");\n' + \
                                        f'\t{Modebus_tag_prefix}.Type = {tag.attrib.get("Type", "")};\n' + \
                                        f'\t{Modebus_tag_prefix}.Init =  {tag.attrib.get("Init", 0)};\n' + \
                                        f'\t{Modebus_tag_prefix}.Address = {tag.attrib.get("Address", "")};\n' + \
                                        f'\t{Modebus_tag_prefix}.TagIndex = {tag_index};\n' + \
                                        f'\t{Modebus_tag_prefix}.TagValue = 0;\n' + \
                                        f'\t{Modebus_tag_prefix}.OldTagValue = 0;\n' + \
                                        f'\t{Modebus_tag_prefix}.TagStatus = 1;\n' + \
                                        f'\t{Modebus_tag_prefix}.OldTagStatus = 1;\n' + \
                                        f'\t{Modebus_tag_prefix}.TagValueDT = time_temp;\n'
                                concatenate_strings(DRVTags_string_body ,string)


                                tag_type = tag.attrib.get("Type", "")

                                if tag_type in [str(_) for _ in range(51,56+1)] + ['202']:  # types 51 to 56 and 202

                                            # TODO: HardCoded RES0. fixit later.
                                    concatenate_strings(setDRVTagsFromVars_string, f'\tModbus_Master_Driver_Instances[{number_of_Modbus_Master_Driver_Instances}].Tags[{tag_index}].TagValue = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("BlockName", "").upper()}_{tag.attrib.get("Name", "").upper()},);')
                                    
                                elif tag_type in [str(_) for _ in range(1,11+1)] + ['201']: # types 1 to 11 and 201 

                                            # TODO: HardCoded RES0. fixit later.
                                    concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("BlockName", "").upper()}_{tag.attrib.get("Name", "").upper()},,Modbus_Master_Driver_Instances[{number_of_Modbus_Master_Driver_Instances}].Tags[{tag_index}].TagValue);')
                                    
                        number_of_Modbus_Master_Driver_Instances += 1

                case "ModbusSlave":
                    pass
                case "SQLite":
                    driver_instance_node = tree.find(driver_instance_name)
                    # get LIO's Option
                    options = driver_instance_node.find('options')
                    if options.attrib.get("Disable", None) == "true":
                        continue
                    else:                    


                        database_options_prefix = f"Database_Driver_Instances[{number_of_Database_Driver_Instances}].Options"

                        string= f'\t{database_options_prefix}.Disable = {options.attrib.get("Disable", None)};\n' + \
                                f'\tstrcpy({database_options_prefix}.PhysicalLayer, "{options.attrib.get("PhysicalLayer", None)}");\n' + \
                                f'\t{database_options_prefix}.CyclicInterval = {options.attrib.get("CyclicInterval", None)};\n' + \
                                f'\t{database_options_prefix}.MaxDatabaseSize = {options.attrib.get("MaxDatabaseSize", None)};\n' + \
                                f'\tstrcpy({database_options_prefix}.DatabasePath, "{options.attrib.get("DatabasePath", None)}");\n' + \
                                f'\t{database_options_prefix}.PhysicalLayerScanTime = {options.attrib.get("PhysicalLayerScanTime", None)};\n' + \
                                f'\t{database_options_prefix}.DatabaseLocation = {options.attrib.get("DatabaseLocation", None)};\n' + \
                                f'\t{database_options_prefix}.RecordMode = {options.attrib.get("RecordMode", None)};\n' + \
                                f'\tstrcpy({database_options_prefix}.TagConfiguration, "{options.attrib.get("TagConfiguration", None)}");\n' + \
                                f'\t{database_options_prefix}.Instance = {options.attrib.get("Instance", None)};\n' + \
                                f'\t{database_options_prefix}.DiagMode = {options.attrib.get("DiagMode", None)};\n'        
                        
                        concatenate_strings(DRVTags_string_body ,string)

                        tagConfiguration = options.attrib.get("TagConfiguration", None)


                        # Get and generate LIO's tag buffer
                        tags = driver_instance_node.find('Tags').findall('Tag')
                        number_of_tags = len(tags)
                        concatenate_strings(DRVTags_string_body ,f'\tDatabase_Driver_Instances[{number_of_Database_Driver_Instances}].number_of_tags = {number_of_tags};')
                        concatenate_strings(DRVTags_string_body ,f'\tDatabase_Driver_Instances[{number_of_Database_Driver_Instances}].Tags = (Modbus_master_driverTag*) malloc({number_of_tags} * sizeof(*Database_Driver_Instances[{number_of_Database_Driver_Instances}].Tags));')
                        # we don't need to initialize other variables because of we don't use them for tihs
                        # driver.
                        for tag in tags:
                            tag_index = tag.attrib.get("TagIndex", None)
                            if tag_index:
                                database_tag_prefix = f"Database_Driver_Instances[{number_of_Database_Driver_Instances}].Tags[{tag_index}]"
                                string= f'\tstrcpy({database_tag_prefix}.Name, "{tag.attrib.get("Name", "")}");\n' + \
                                        f'\t{database_tag_prefix}.Type = {tag.attrib.get("Type", "")};\n' + \
                                        f'\t{database_tag_prefix}.Init =  {tag.attrib.get("Init", 0)};\n' + \
                                        f'\t{database_tag_prefix}.Address = {tag.attrib.get("Address", "")};\n' + \
                                        f'\t{database_tag_prefix}.Range = {tag.attrib.get("Range", -1)};\n' + \
                                        f'\t{database_tag_prefix}.Deadband = {tag.attrib.get("Deadband", -1)};\n' + \
                                        f'\t{database_tag_prefix}.TagIndex = {tag_index};\n' + \
                                        f'\t{database_tag_prefix}.TagValue = 0;\n' + \
                                        f'\t{database_tag_prefix}.OldTagValue = 0;\n' + \
                                        f'\t{database_tag_prefix}.TagStatus = 1;\n' + \
                                        f'\t{database_tag_prefix}.OldTagStatus = 1;\n' + \
                                        f'\t{database_tag_prefix}.TagValueDT = time_temp;\n'
                                concatenate_strings(DRVTags_string_body ,string)

                                tag_type = tag.attrib.get("Type", "")

                                if tag_type == "202":
                                    match tagConfiguration:
                                        case "Value":
                                            # TODO: HardCoded RES0. fixit later.
                                            concatenate_strings(setDRVTagsFromVars_string, f'\tDatabase_Driver_Instances[{number_of_Database_Driver_Instances}].Tags[{tag_index}].TagValue = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},);')
                                        case "Value-Status":
                                            concatenate_strings(setDRVTagsFromVars_string, f'\tDatabase_Driver_Instances[{number_of_Database_Driver_Instances}].Tags[{tag_index}].TagValue = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},);')
                                            concatenate_strings(setDRVTagsFromVars_string, f'\tDatabase_Driver_Instances[{number_of_Database_Driver_Instances}].Tags[{tag_index}].TagStatus = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_STATUS,);')
                                        case "Value-DT":
                                            concatenate_strings(setDRVTagsFromVars_string, f'\tDatabase_Driver_Instances[{number_of_Database_Driver_Instances}].Tags[{tag_index}].TagValue = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},);')
                                            concatenate_strings(setDRVTagsFromVars_string, f'\tDatabase_Driver_Instances[{number_of_Database_Driver_Instances}].Tags[{tag_index}].TagValueDT = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_DT,);')
                                        case "Value-Status-DT":
                                            concatenate_strings(setDRVTagsFromVars_string, f'\tDatabase_Driver_Instances[{number_of_Database_Driver_Instances}].Tags[{tag_index}].TagValue = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},);')
                                            concatenate_strings(setDRVTagsFromVars_string, f'\tDatabase_Driver_Instances[{number_of_Database_Driver_Instances}].Tags[{tag_index}].TagStatus = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_STATUS,);')
                                            concatenate_strings(setDRVTagsFromVars_string, f'\tDatabase_Driver_Instances[{number_of_Database_Driver_Instances}].Tags[{tag_index}].TagValueDT = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_DT,);')
                                    
                                elif tag_type != "202":
                                    match tagConfiguration:
                                        case "Value":
                                            # TODO: HardCoded RES0. fixit later.
                                            concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},,Database_Driver_Instances[{number_of_Database_Driver_Instances}].Tags[{tag_index}].TagValue);')
                                        case "Value-Status":
                                            concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},,Database_Driver_Instances[{number_of_Database_Driver_Instances}].Tags[{tag_index}].TagValue);')
                                            concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_STATUS,,Database_Driver_Instances[{number_of_Database_Driver_Instances}].Tags[{tag_index}].TagStatus);')
                                        case "Value-DT":
                                            concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},,Database_Driver_Instances[{number_of_Database_Driver_Instances}].Tags[{tag_index}].TagValue);')
                                            concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_DT,,Database_Driver_Instances[{number_of_Database_Driver_Instances}].Tags[{tag_index}].TagValueDT);')
                                        case "Value-Status-DT":
                                            concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},,Database_Driver_Instances[{number_of_Database_Driver_Instances}].Tags[{tag_index}].TagValue);')
                                            concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_STATUS,,Database_Driver_Instances[{number_of_Database_Driver_Instances}].Tags[{tag_index}].TagStatus);')
                                            concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_DT,,Database_Driver_Instances[{number_of_Database_Driver_Instances}].Tags[{tag_index}].TagValueDT);')
                        
                        number_of_Database_Driver_Instances += 1

        # define DRVTags
        concatenate_strings(DRVTags_string_type_definitions ,f'\n#define number_of_DNP_Master_Driver_Instances {number_of_DNP_Master_Driver_Instances}')
        concatenate_strings(DRVTags_string_type_definitions ,f'\n#define number_of_DNP_Slave_Driver_Instances {number_of_DNP_Slave_Driver_Instances}')
        concatenate_strings(DRVTags_string_type_definitions ,f'\n#define number_of_Modbus_Master_Driver_Instances {number_of_Modbus_Master_Driver_Instances}')
        concatenate_strings(DRVTags_string_type_definitions ,f'\n#define number_of_Modbus_Slave_Driver_Instances {number_of_Modbus_Slave_Driver_Instances}')
        concatenate_strings(DRVTags_string_type_definitions ,f'\n#define number_of_Database_Driver_Instances {number_of_Database_Driver_Instances}\n')


        concatenate_strings(DRVTags_string_type_init ,'#include "DRVTags.h"\n')

        concatenate_strings(DRVTags_string_type_init ,f'LIO_Driver_Struct           LIO_Driver_Instance;')
        if number_of_DNP_Master_Driver_Instances > 0:
            concatenate_strings(DRVTags_string_type_init ,f'DNP_Master_Driver_Struct    DNP_Master_Driver_Instances[{number_of_DNP_Master_Driver_Instances}];')
        if number_of_DNP_Slave_Driver_Instances > 0:
            concatenate_strings(DRVTags_string_type_init ,f'DNP_Slave_Driver_Struct     DNP_Slave_Driver_Instances[{number_of_DNP_Slave_Driver_Instances}];')
        if number_of_Modbus_Master_Driver_Instances > 0:
            concatenate_strings(DRVTags_string_type_init ,f'Modbus_Master_Driver_Struct Modbus_Master_Driver_Instances[{number_of_Modbus_Master_Driver_Instances}];')
        if number_of_Modbus_Slave_Driver_Instances > 0 :
            concatenate_strings(DRVTags_string_type_init ,f'Modbus_Slave_Driver_Struct  Modbus_Slave_Driver_Instances[{number_of_Modbus_Slave_Driver_Instances}];')
        if number_of_Database_Driver_Instances > 0 :
            concatenate_strings(DRVTags_string_type_init ,f'Database_Driver_Struct      Database_Driver_Instances[{number_of_Database_Driver_Instances}];')



        
                
        concatenate_strings(setDRVTagsFromVars_string, '}')
        concatenate_strings(setVarsFromDRVTags_string, '}')
        concatenate_strings(DRVTags_string_body ,'}')
        # concatenate_strings(DRVTags_string_body ,'\nint main(){\n')
        # concatenate_strings(DRVTags_string_body ,'\tdeclare_and_init_drvtags(DRVTags);\n')
        # concatenate_strings(DRVTags_string_body ,'\tprintf("%s\\n", DRVTags[4].driverOptions.Database_Options.DatabasePath);')
        # concatenate_strings(DRVTags_string_body ,'\tprintf("%f\\n", DRVTags[4].Tags[0].Deadband);')
        # concatenate_strings(DRVTags_string_body ,'\n\tfor(int i=0; i < sizeof(DRVTags) / sizeof(Driver_properties); i++){\n\t\tfree(DRVTags[i].Tags);\n\t};')
        # concatenate_strings(DRVTags_string_body ,'}')
    
    ###########  DRVTags .h file  #############
    DRVTags_headers_file_string = ""
    DRVTags_headers_file_string  = DRVTags_string_headers + DRVTags_string_type_definitions[0]
    with open('/home/amir/Water_RTU/OpenPLC_runtime/OpenPLC_v3/webserver/core/DRVTags.h', 'w') as output_file_handler:
        output_file_handler.write(DRVTags_headers_file_string)

    ########### DRVTags .cpp file  ###############

    DRVTags_cpp_file_string =  DRVTags_string_type_init[0] + DRVTags_string_body[0]
    with open('/home/amir/Water_RTU/OpenPLC_runtime/OpenPLC_v3/webserver/core/DRVTags.cpp', 'w') as output_file_handler:
        output_file_handler.write(DRVTags_cpp_file_string)

    ########## GlueVars_functions.cpp file  ################
    GlueVars_functions_cpp_string = '#include "ladder.h"\n\n\n' + setDRVTagsFromVars_string[0] + setVarsFromDRVTags_string [0]
    with open('/home/amir/Water_RTU/OpenPLC_runtime/OpenPLC_v3/webserver/core/GlueVars_functions.cpp', 'w') as output_file_handler:
        output_file_handler.write(GlueVars_functions_cpp_string)

    ########### GlueVars_functions.h file  ################
    with open('/home/amir/Water_RTU/OpenPLC_runtime/OpenPLC_v3/webserver/core/GlueVars_functions.h', 'w') as output_file_handler:
        output_file_handler.write(GlueVars_functions_string[0])
    
    ################  add to ladder.h file  ##################
    with open('/home/amir/Water_RTU/OpenPLC_runtime/OpenPLC_v3/webserver/core/file_generator/ladder_original_file.h', 'r') as file_handler:
        ladder_file_string = file_handler.read()
        # concatenate_strings(extra_headers_string, '#include "DRVTags.h"\n#include "GlueVars_functions.h"\n')
        new_ladder_file_string = '#include "DRVTags.h"\n#include "GlueVars_functions.h"\n' + ladder_file_string

        concatenate_strings(extra_headers_string ,f'\n\n// Driver Instances buffers defenitions')
        concatenate_strings(extra_headers_string ,f'extern LIO_Driver_Struct           LIO_Driver_Instance;')
        if number_of_DNP_Master_Driver_Instances > 0:
            concatenate_strings(extra_headers_string ,f'extern DNP_Master_Driver_Struct    DNP_Master_Driver_Instances[{number_of_DNP_Master_Driver_Instances}];')
        if number_of_DNP_Slave_Driver_Instances > 0:
            concatenate_strings(extra_headers_string ,f'extern DNP_Slave_Driver_Struct     DNP_Slave_Driver_Instances[{number_of_DNP_Slave_Driver_Instances}];')
        if number_of_Modbus_Master_Driver_Instances > 0:
            concatenate_strings(extra_headers_string ,f'extern Modbus_Master_Driver_Struct Modbus_Master_Driver_Instances[{number_of_Modbus_Master_Driver_Instances}];')
        if number_of_Modbus_Slave_Driver_Instances > 0 :
            concatenate_strings(extra_headers_string ,f'extern Modbus_Slave_Driver_Struct  Modbus_Slave_Driver_Instances[{number_of_Modbus_Slave_Driver_Instances}];')
        if number_of_Database_Driver_Instances > 0 :
            concatenate_strings(extra_headers_string ,f'extern Database_Driver_Struct      Database_Driver_Instances[{number_of_Database_Driver_Instances}];')
        
        concatenate_strings(extra_headers_string ,f'\n// Gluvar_functions')
        concatenate_strings(extra_headers_string, 'void setDRVTagsFromVars();')
        concatenate_strings(extra_headers_string, 'void setVarsFromDRVTags();')

        concatenate_strings(extra_headers_string ,f'\n// DRVTags_init_function')
        concatenate_strings(extra_headers_string, 'void declare_and_init_drvtags();')
        new_ladder_file_string = new_ladder_file_string + extra_headers_string[0] 

    with open('/home/amir/Water_RTU/OpenPLC_runtime/OpenPLC_v3/webserver/core/ladder.h', 'w') as output_file_handler:    
        output_file_handler.write(new_ladder_file_string)

decode_config_file('/home/amir/Water_RTU/OpenPLC_runtime/OpenPLC_v3/webserver/core/file_generator/aa.cfg')
    