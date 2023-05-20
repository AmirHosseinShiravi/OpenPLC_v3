from lxml import etree
import os
from test_csv_reader import generate_extern_variables
# set False to false
# set True to true
# change empty range in LIO from "" to "-1"
# change empty deadband in LIO from "" to "0"

def concatenate_strings(destination_str ,string):

    destination_str[0] += string + '\n'


def decode_config_file(file_path):


    DRVTags_string = [str()]
    GlueVars_functions_string = [str()]
    setDRVTagsFromVars_string = [str()] # inputs
    setVarsFromDRVTags_string = [str()] # outputs


    concatenate_strings(GlueVars_functions_string, '#include "accessor.h"\n#include "iec_types.h"\n#include "iec_types_all.h"\n#include "DRVTags.h"')
    extern_variables = generate_extern_variables('/home/amir/Water_RTU/OpenPLC_runtime/OpenPLC_v3/decode_config/VARIABLES.csv')
    concatenate_strings(GlueVars_functions_string, extern_variables)

    concatenate_strings(setDRVTagsFromVars_string, 'void setDRVTagsFromVars(){')
    concatenate_strings(setVarsFromDRVTags_string, 'void setVarsFromDRVTags(){')


    predefines= '''#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include "iec_types.h"
#include "iec_types_all.h"
#include "accessor.h"

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
    char Parity[10];
    char WakeUpString[20];
    int DelayBetweenPolls;
    int ContPoll;
    int ByteFormat;
    int WriteByChange;
    int DiagMode;
    char PhysicalLayer[20];
}Modbus_driver_options;

typedef struct ModbusBlock{
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
}ModbusBlock;

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
    double Deadband;
    char BlockName[128];
    int Class;
    int Group;
    int Retain;
    int TagIndex;
} DriverTag;

typedef struct Driver_properties{
    char DriverInstanceName[100];
    char DriverInstanceType[100];
    int InstanceIndex;
    int number_of_tags;
    int number_of_modbus_blocks;
    union
    {
        struct LIO_driver_options LIO_Options;
        struct DNP_driver_options DNP_Options;
        struct Modbus_driver_options Modbus_Options;
        struct ModbusBlock* Modbus_Block_config;
        struct Database_driver_options Database_Options;
    }driverOptions;
    DriverTag *Tags;
}Driver_properties;'''
    # str_temp = predefines.split('\n')
    # str_temp = [_.strip() for _ in str_temp]
    # predefines = '\n'.join(str_temp)
    concatenate_strings(DRVTags_string ,predefines)

    with open(file_path, 'r') as file_handler:
        tree = etree.parse(source= file_handler)
        DRVTags = []
        # tree = tree.find('Options')
        drivers = tree.findall('Drv')
        driver_list = []
        instance_index = 0
        for driver in drivers:
            driver_name = driver.attrib.get('name','')
            driver_type = driver.attrib.get('type','')
            driver_list.append((driver_name, driver_type, instance_index))
            instance_index += 1
        
        # define DRVTags
        concatenate_strings(DRVTags_string ,f'\nint number_of_driver_instances = {len(driver_list)};')
        concatenate_strings(DRVTags_string ,f'\nDriver_properties DRVTags[{len(driver_list)}];')

        # declare declare_and_init_drvtags function
        concatenate_strings(DRVTags_string ,'\nvoid declare_and_init_drvtags(Driver_properties* DRVTags){\n')
        concatenate_strings(DRVTags_string ,f'\tIEC_DT time_temp;\n\ttime_temp.tv_sec = 0;\n\ttime_temp.tv_nsec = 0;\n')

        

        for driver_instance_name, driver_instance_type, instance_index in driver_list:
            
            if driver_instance_type == "LOCAL_IO":

                concatenate_strings(DRVTags_string ,f'\tstrcpy(DRVTags[{instance_index}].DriverInstanceName, "{driver_instance_name}");')
                concatenate_strings(DRVTags_string ,f'\tstrcpy(DRVTags[{instance_index}].DriverInstanceType, "{driver_instance_type}");')
                concatenate_strings(DRVTags_string ,f'\tDRVTags[{instance_index}].InstanceIndex = {instance_index};')


                driver_instance_node = tree.find(driver_instance_name)
                # get LIO's Option
                options = driver_instance_node.find('options')

                LIO_options_prefix = f"DRVTags[{instance_index}].driverOptions.LIO_Options"
                string= f'\t{LIO_options_prefix}.ChatterFilterCount = {options.attrib.get("ChatterFilterCount", None)};\n' + \
                        f'\t{LIO_options_prefix}.ChatterFilterBaseTimeMs = {options.attrib.get("ChatterFilterBaseTimeMs", None)};\n' + \
                        f'\t{LIO_options_prefix}.ChatterFilterFreezeTimeMs =  {options.attrib.get("ChatterFilterFreezeTimeMs", None)};\n' + \
                        f'\t{LIO_options_prefix}.IOScan = {options.attrib.get("IOScan", None)};\n' + \
                        f'\tstrcpy({LIO_options_prefix}.TagConfiguration, "{options.attrib.get("TagConfiguration", None)}");\n'
                
                concatenate_strings(DRVTags_string ,string)

                tagConfiguration = options.attrib.get("TagConfiguration", None)

                # Get and generate LIO's tag buffer
                tags = driver_instance_node.find('Tags').findall('Tag')
                number_of_tags = len(tags)
                concatenate_strings(DRVTags_string ,f'\tDRVTags[{instance_index}].number_of_tags = {number_of_tags};')
                concatenate_strings(DRVTags_string ,f'\tDRVTags[{instance_index}].Tags = malloc({number_of_tags} * sizeof(*DRVTags[{instance_index}].Tags));')
                # we don't need to initialize other variables because of we don't use them for tihs
                # driver.
                for tag in tags:
                    tag_index = tag.attrib.get("TagIndex", None)
                    if tag_index:
                        LIO_tag_prefix = f"DRVTags[{instance_index}].Tags[{tag_index}]"
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
                        concatenate_strings(DRVTags_string ,string)
                        
                        tag_type = tag.attrib.get("Type", "")

                        if tag_type in ["1","2","3","4","200"]:
                            # setVarsFromDRVTags
                            match tagConfiguration:
                                case "Value":
                                    # TODO: HardCoded RES0. fixit later.
                                    concatenate_strings(setDRVTagsFromVars_string, f'\tDRVTags[{instance_index}].Tags[{tag_index}].TagValue = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},);')
                                case "Value-Status":
                                    concatenate_strings(setDRVTagsFromVars_string, f'\tDRVTags[{instance_index}].Tags[{tag_index}].TagValue = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},);')
                                    concatenate_strings(setDRVTagsFromVars_string, f'\tDRVTags[{instance_index}].Tags[{tag_index}].TagStatus = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_STATUS,);')
                                case "Value-DT":
                                    concatenate_strings(setDRVTagsFromVars_string, f'\tDRVTags[{instance_index}].Tags[{tag_index}].TagValue = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},);')
                                    concatenate_strings(setDRVTagsFromVars_string, f'\tDRVTags[{instance_index}].Tags[{tag_index}].TagValueDT = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_DT,);')
                                case "Value-Status-DT":
                                    concatenate_strings(setDRVTagsFromVars_string, f'\tDRVTags[{instance_index}].Tags[{tag_index}].TagValue = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},);')
                                    concatenate_strings(setDRVTagsFromVars_string, f'\tDRVTags[{instance_index}].Tags[{tag_index}].TagStatus = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_STATUS,);')
                                    concatenate_strings(setDRVTagsFromVars_string, f'\tDRVTags[{instance_index}].Tags[{tag_index}].TagValueDT = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_DT,);')
                        
                        elif tag_type in ["10","11","201"]:
                            match tagConfiguration:
                                case "Value":
                                    # TODO: HardCoded RES0. fixit later.
                                    concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},,DRVTags[{instance_index}].Tags[{tag_index}].TagValue);')
                                case "Value-Status":
                                    concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},,DRVTags[{instance_index}].Tags[{tag_index}].TagValue);')
                                    concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_STATUS,,DRVTags[{instance_index}].Tags[{tag_index}].TagStatus);')
                                case "Value-DT":
                                    concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},,DRVTags[{instance_index}].Tags[{tag_index}].TagValue);')
                                    concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_DT,,DRVTags[{instance_index}].Tags[{tag_index}].TagValueDT);')
                                case "Value-Status-DT":
                                    concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},,DRVTags[{instance_index}].Tags[{tag_index}].TagValue);')
                                    concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_STATUS,,DRVTags[{instance_index}].Tags[{tag_index}].TagStatus);')
                                    concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_DT,,DRVTags[{instance_index}].Tags[{tag_index}].TagValueDT);')
                
            elif driver_instance_type == "DNP3Slave":

                concatenate_strings(DRVTags_string ,f'\tstrcpy(DRVTags[{instance_index}].DriverInstanceName, "{driver_instance_name}");')
                concatenate_strings(DRVTags_string ,f'\tstrcpy(DRVTags[{instance_index}].DriverInstanceType, "{driver_instance_type}");')
                concatenate_strings(DRVTags_string ,f'\tDRVTags[{instance_index}].InstanceIndex = {instance_index};')

                driver_instance_node = tree.find(driver_instance_name)
                # get LIO's Option
                options = driver_instance_node.find('options')

                DNP_options_prefix = f"DRVTags[{instance_index}].driverOptions.DNP_Options"
                string= f'\t{DNP_options_prefix}.Disable = {options.attrib.get("Disable", None)};\n' + \
                        f'\t{DNP_options_prefix}.COMPort = {options.attrib.get("COMPort", None)};\n' + \
                        f'\t{DNP_options_prefix}.BaudRate = {options.attrib.get("BaudRate", None)};\n' + \
                        f'\t{DNP_options_prefix}.DataBits = {options.attrib.get("DataBits", None)};\n' + \
                        f'\t{DNP_options_prefix}.StopBits = {options.attrib.get("StopBits", None)};\n' + \
                        f'\t{DNP_options_prefix}.Parity = {options.attrib.get("Parity", None)};\n' + \
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
                
                concatenate_strings(DRVTags_string ,string)

                tagConfiguration = options.attrib.get("TagConfiguration", None)

                # Get and generate LIO's tag buffer
                tags = driver_instance_node.find('Tags').findall('Tag')
                number_of_tags = len(tags)
                concatenate_strings(DRVTags_string ,f'\tDRVTags[{instance_index}].number_of_tags = {number_of_tags};')
                concatenate_strings(DRVTags_string ,f'\tDRVTags[{instance_index}].Tags = malloc({number_of_tags} * sizeof(*DRVTags[{instance_index}].Tags));')
                for tag in tags:
                    tag_index = tag.attrib.get("TagIndex", None)
                    if tag_index:
                        DNP_tag_prefix = f"DRVTags[{instance_index}].Tags[{tag_index}]"
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
                        
                        concatenate_strings(DRVTags_string ,string)

                        tag_type = tag.attrib.get("Type", "")

                        if tag_type in ["50","51"]:
                            match tagConfiguration:
                                case "Value":
                                    # TODO: HardCoded RES0. fixit later.
                                    concatenate_strings(setDRVTagsFromVars_string, f'\tDRVTags[{instance_index}].Tags[{tag_index}].TagValue = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},);')
                                case "Value-Status":
                                    concatenate_strings(setDRVTagsFromVars_string, f'\tDRVTags[{instance_index}].Tags[{tag_index}].TagValue = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},);')
                                    concatenate_strings(setDRVTagsFromVars_string, f'\tDRVTags[{instance_index}].Tags[{tag_index}].TagStatus = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_STATUS,);')
                                case "Value-DT":
                                    concatenate_strings(setDRVTagsFromVars_string, f'\tDRVTags[{instance_index}].Tags[{tag_index}].TagValue = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},);')
                                    concatenate_strings(setDRVTagsFromVars_string, f'\tDRVTags[{instance_index}].Tags[{tag_index}].TagValueDT = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_DT,);')
                                case "Value-Status-DT":
                                    concatenate_strings(setDRVTagsFromVars_string, f'\tDRVTags[{instance_index}].Tags[{tag_index}].TagValue = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},);')
                                    concatenate_strings(setDRVTagsFromVars_string, f'\tDRVTags[{instance_index}].Tags[{tag_index}].TagStatus = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_STATUS,);')
                                    concatenate_strings(setDRVTagsFromVars_string, f'\tDRVTags[{instance_index}].Tags[{tag_index}].TagValueDT = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_DT,);')
                            
                        elif tag_type in ["1","4"]:
                            match tagConfiguration:
                                case "Value":
                                    # TODO: HardCoded RES0. fixit later.
                                    concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},,DRVTags[{instance_index}].Tags[{tag_index}].TagValue);')
                                case "Value-Status":
                                    concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},,DRVTags[{instance_index}].Tags[{tag_index}].TagValue);')
                                    concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_STATUS,,DRVTags[{instance_index}].Tags[{tag_index}].TagStatus);')
                                case "Value-DT":
                                    concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},,DRVTags[{instance_index}].Tags[{tag_index}].TagValue);')
                                    concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_DT,,DRVTags[{instance_index}].Tags[{tag_index}].TagValueDT);')
                                case "Value-Status-DT":
                                    concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},,DRVTags[{instance_index}].Tags[{tag_index}].TagValue);')
                                    concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_STATUS,,DRVTags[{instance_index}].Tags[{tag_index}].TagStatus);')
                                    concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_DT,,DRVTags[{instance_index}].Tags[{tag_index}].TagValueDT);')
                
            elif driver_instance_type == "DNP3Master":
                pass

            elif driver_instance_type == "ModbusMaster":
                
                concatenate_strings(DRVTags_string ,f'\tstrcpy(DRVTags[{instance_index}].DriverInstanceName, "{driver_instance_name}");')
                concatenate_strings(DRVTags_string ,f'\tstrcpy(DRVTags[{instance_index}].DriverInstanceType, "{driver_instance_type}");')
                concatenate_strings(DRVTags_string ,f'\tDRVTags[{instance_index}].InstanceIndex =  {instance_index};')


                driver_instance_node = tree.find(driver_instance_name)
                # get LIO's Option
                options = driver_instance_node.find('options')

                Modbus_options_prefix = f"DRVTags[{instance_index}].driverOptions.Modbus_Options"

                string= f'\t{Modbus_options_prefix}.Disable = {options.attrib.get("Disable", None)};\n' + \
                        f'\t{Modbus_options_prefix}.COMPort = {options.attrib.get("COMPort", None)};\n' + \
                        f'\t{Modbus_options_prefix}.BaudRate = {options.attrib.get("BaudRate", None)};\n' + \
                        f'\t{Modbus_options_prefix}.DataBit = {options.attrib.get("DataBit", None)};\n' + \
                        f'\t{Modbus_options_prefix}.Instance = {options.attrib.get("Instance", None)};\n' + \
                        f'\t{Modbus_options_prefix}.StopBit = {options.attrib.get("StopBit", None)};\n' + \
                        f'\tstrcpy({Modbus_options_prefix}.Parity, "{options.attrib.get("Parity", None)}");\n' + \
                        f'\tstrcpy({Modbus_options_prefix}.WakeUpString, "{options.attrib.get("WakeUpString", None)}");\n' + \
                        f'\t{Modbus_options_prefix}.DelayBetweenPolls = {options.attrib.get("DelayBetweenPolls", None)};\n' + \
                        f'\t{Modbus_options_prefix}.ContPoll = {options.attrib.get("ContPoll", None)};\n' + \
                        f'\t{Modbus_options_prefix}.ByteFormat = {options.attrib.get("ByteFormat", None)};\n' + \
                        f'\t{Modbus_options_prefix}.WriteByChange = {options.attrib.get("WriteByChange", None)};\n' + \
                        f'\t{Modbus_options_prefix}.DiagMode = {options.attrib.get("DiagMode", None)};\n' + \
                        f'\tstrcpy({Modbus_options_prefix}.PhysicalLayer, "{options.attrib.get("PhysicalLayer", None)}");\n'
                
                concatenate_strings(DRVTags_string ,string)

                tagConfiguration = options.attrib.get("TagConfiguration", None)

                # modbus blocks
                blocks = driver_instance_node.find('Blocks').findall('Block')
                number_of_blocks = len(blocks)
                concatenate_strings(DRVTags_string ,f'\tDRVTags[{instance_index}].number_of_tags = {number_of_tags};')
                concatenate_strings(DRVTags_string ,f'\tDRVTags[{instance_index}].number_of_modbus_blocks = {number_of_blocks};')
                concatenate_strings(DRVTags_string ,f'\tDRVTags[{instance_index}].driverOptions.Modbus_Block_config = malloc({number_of_blocks} * sizeof(*DRVTags[{instance_index}].driverOptions.Modbus_Block_config));')
                for i, block in enumerate(blocks):
                    Modbus_blocks_prefix = f"DRVTags[{instance_index}].driverOptions.Modbus_Block_config[{i}]"

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
                    concatenate_strings(DRVTags_string ,string)

                # Get and generate LIO's tag buffer
                tags = driver_instance_node.find('Tags').findall('Tag')
                number_of_tags = len(tags)
                concatenate_strings(DRVTags_string ,f'\tDRVTags[{instance_index}].Tags = malloc({number_of_tags} * sizeof(*DRVTags[{instance_index}].Tags));')
                # we don't need to initialize other variables because of we don't use them for tihs
                # driver.
                for tag in tags:
                    tag_index = tag.attrib.get("TagIndex", None)
                    if tag_index:
                        Modebus_tag_prefix = f"DRVTags[{instance_index}].Tags[{tag_index}]"
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
                        concatenate_strings(DRVTags_string ,string)


                        tag_type = tag.attrib.get("Type", "")

                        if tag_type in [str(_) for _ in range(1,11+1)] + ['201']: # types 1 to 11 and 201
                            # match tagConfiguration:
                            #     case "Value":
                                    # TODO: HardCoded RES0. fixit later.
                            concatenate_strings(setDRVTagsFromVars_string, f'\tDRVTags[{instance_index}].Tags[{tag_index}].TagValue = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("BlockName", "").upper()}_{tag.attrib.get("Name", "").upper()},);')
                                # case "Value-Status":
                                #     concatenate_strings(setDRVTagsFromVars_string, f'\tDRVTags[{instance_index}].Tags[{tag_index}].TagValue = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},);')
                                #     concatenate_strings(setDRVTagsFromVars_string, f'\tDRVTags[{instance_index}].Tags[{tag_index}].TagStatus = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_STATUS,);')
                                # case "Value-DT":
                                #     concatenate_strings(setDRVTagsFromVars_string, f'\tDRVTags[{instance_index}].Tags[{tag_index}].TagValue = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},);')
                                #     concatenate_strings(setDRVTagsFromVars_string, f'\tDRVTags[{instance_index}].Tags[{tag_index}].TagValueDT = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_DT,);')
                                # case "Value-Status-DT":
                                #     concatenate_strings(setDRVTagsFromVars_string, f'\tDRVTags[{instance_index}].Tags[{tag_index}].TagValue = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},);')
                                #     concatenate_strings(setDRVTagsFromVars_string, f'\tDRVTags[{instance_index}].Tags[{tag_index}].TagStatus = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_STATUS,);')
                                #     concatenate_strings(setDRVTagsFromVars_string, f'\tDRVTags[{instance_index}].Tags[{tag_index}].TagValueDT = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_DT,);')
                            
                        elif tag_type in [str(_) for _ in range(51,56+1)] + ['202']: # types 51 to 56 and 202
                            # match tagConfiguration:
                            #     case "Value":
                                    # TODO: HardCoded RES0. fixit later.
                            concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("BlockName", "").upper()}_{tag.attrib.get("Name", "").upper()},,DRVTags[{instance_index}].Tags[{tag_index}].TagValue);')
                                # case "Value-Status":
                                #     concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},,DRVTags[{instance_index}].Tags[{tag_index}].TagValue);')
                                #     concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_STATUS,,DRVTags[{instance_index}].Tags[{tag_index}].TagStatus);')
                                # case "Value-DT":
                                #     concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},,DRVTags[{instance_index}].Tags[{tag_index}].TagValue);')
                                #     concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_DT,,DRVTags[{instance_index}].Tags[{tag_index}].TagValueDT);')
                                # case "Value-Status-DT":
                                #     concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},,DRVTags[{instance_index}].Tags[{tag_index}].TagValue);')
                                #     concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_STATUS,,DRVTags[{instance_index}].Tags[{tag_index}].TagStatus);')
                                #     concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_DT,,DRVTags[{instance_index}].Tags[{tag_index}].TagValueDT);')
                
            elif driver_instance_type == "ModbusSlave":
                pass

            elif driver_instance_type == "SQLite":
                
                concatenate_strings(DRVTags_string ,f'\tstrcpy(DRVTags[{instance_index}].DriverInstanceName, "{driver_instance_name}");')
                concatenate_strings(DRVTags_string ,f'\tstrcpy(DRVTags[{instance_index}].DriverInstanceType, "{driver_instance_type}");')
                concatenate_strings(DRVTags_string ,f'\tDRVTags[{instance_index}].InstanceIndex = {instance_index};')


                driver_instance_node = tree.find(driver_instance_name)
                # get LIO's Option
                options = driver_instance_node.find('options')

                database_options_prefix = f"DRVTags[{instance_index}].driverOptions.Database_Options"

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
                
                concatenate_strings(DRVTags_string ,string)

                tagConfiguration = options.attrib.get("TagConfiguration", None)


                # Get and generate LIO's tag buffer
                tags = driver_instance_node.find('Tags').findall('Tag')
                number_of_tags = len(tags)
                concatenate_strings(DRVTags_string ,f'\tDRVTags[{instance_index}].number_of_tags = {number_of_tags};')
                concatenate_strings(DRVTags_string ,f'\tDRVTags[{instance_index}].Tags = malloc({number_of_tags} * sizeof(*DRVTags[{instance_index}].Tags));')
                # we don't need to initialize other variables because of we don't use them for tihs
                # driver.
                for tag in tags:
                    tag_index = tag.attrib.get("TagIndex", None)
                    if tag_index:
                        database_tag_prefix = f"DRVTags[{instance_index}].Tags[{tag_index}]"
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
                        concatenate_strings(DRVTags_string ,string)

                        tag_type = tag.attrib.get("Type", "")

                        if tag_type != "202":
                            match tagConfiguration:
                                case "Value":
                                    # TODO: HardCoded RES0. fixit later.
                                    concatenate_strings(setDRVTagsFromVars_string, f'\tDRVTags[{instance_index}].Tags[{tag_index}].TagValue = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},);')
                                case "Value-Status":
                                    concatenate_strings(setDRVTagsFromVars_string, f'\tDRVTags[{instance_index}].Tags[{tag_index}].TagValue = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},);')
                                    concatenate_strings(setDRVTagsFromVars_string, f'\tDRVTags[{instance_index}].Tags[{tag_index}].TagStatus = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_STATUS,);')
                                case "Value-DT":
                                    concatenate_strings(setDRVTagsFromVars_string, f'\tDRVTags[{instance_index}].Tags[{tag_index}].TagValue = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},);')
                                    concatenate_strings(setDRVTagsFromVars_string, f'\tDRVTags[{instance_index}].Tags[{tag_index}].TagValueDT = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_DT,);')
                                case "Value-Status-DT":
                                    concatenate_strings(setDRVTagsFromVars_string, f'\tDRVTags[{instance_index}].Tags[{tag_index}].TagValue = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},);')
                                    concatenate_strings(setDRVTagsFromVars_string, f'\tDRVTags[{instance_index}].Tags[{tag_index}].TagStatus = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_STATUS,);')
                                    concatenate_strings(setDRVTagsFromVars_string, f'\tDRVTags[{instance_index}].Tags[{tag_index}].TagValueDT = __GET_VAR(RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_DT,);')
                            
                        elif tag_type == "202":
                            match tagConfiguration:
                                case "Value":
                                    # TODO: HardCoded RES0. fixit later.
                                    concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},,DRVTags[{instance_index}].Tags[{tag_index}].TagValue);')
                                case "Value-Status":
                                    concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},,DRVTags[{instance_index}].Tags[{tag_index}].TagValue);')
                                    concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_STATUS,,DRVTags[{instance_index}].Tags[{tag_index}].TagStatus);')
                                case "Value-DT":
                                    concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},,DRVTags[{instance_index}].Tags[{tag_index}].TagValue);')
                                    concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_DT,,DRVTags[{instance_index}].Tags[{tag_index}].TagValueDT);')
                                case "Value-Status-DT":
                                    concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()},,DRVTags[{instance_index}].Tags[{tag_index}].TagValue);')
                                    concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_STATUS,,DRVTags[{instance_index}].Tags[{tag_index}].TagStatus);')
                                    concatenate_strings(setVarsFromDRVTags_string, f'\t__SET_VAR(,RES0__{driver_instance_name.upper()}_{tag.attrib.get("Name", "").upper()}_DT,,DRVTags[{instance_index}].Tags[{tag_index}].TagValueDT);')
                
                
                
        concatenate_strings(setDRVTagsFromVars_string, '}')
        concatenate_strings(setVarsFromDRVTags_string, '}')
        concatenate_strings(DRVTags_string ,'}')
        # concatenate_strings(DRVTags_string ,'\nint main(){\n')
        # concatenate_strings(DRVTags_string ,'\tdeclare_and_init_drvtags(DRVTags);\n')
        # concatenate_strings(DRVTags_string ,'\tprintf("%s\\n", DRVTags[4].driverOptions.Database_Options.DatabasePath);')
        # concatenate_strings(DRVTags_string ,'\tprintf("%f\\n", DRVTags[4].Tags[0].Deadband);')
        # concatenate_strings(DRVTags_string ,'\n\tfor(int i=0; i < sizeof(DRVTags) / sizeof(Driver_properties); i++){\n\t\tfree(DRVTags[i].Tags);\n\t};')
        # concatenate_strings(DRVTags_string ,'}')

    with open('/home/amir/Water_RTU/OpenPLC_runtime/OpenPLC_v3/webserver/core/DRVTags.h', 'w') as output_file_handler:
        output_file_handler.write(DRVTags_string[0])
    
    GlueVars_functions_string[0] += setDRVTagsFromVars_string[0] + setVarsFromDRVTags_string [0]
    with open('/home/amir/Water_RTU/OpenPLC_runtime/OpenPLC_v3/webserver/core/GlueVars_functions.h', 'w') as output_file_handler:
        output_file_handler.write(GlueVars_functions_string[0])

decode_config_file('/home/amir/Water_RTU/OpenPLC_runtime/OpenPLC_v3/decode_config/aa.cfg')
    