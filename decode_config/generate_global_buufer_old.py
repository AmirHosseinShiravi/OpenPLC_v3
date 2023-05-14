from lxml import etree
import os
from bs4 import BeautifulSoup


# DRVTags = [
#    {
#    "options" : ... , 
#    "Tags": [{
#              "tag_name" : ... ,
#              "tage_type": ... ,
#              " ... "    : ... , 
#           }]
#    },
#    { 
#     ... 
#    },
#    {
#     ...
#    }
# ]




def decode_config_file(file_path):

    DRVTags_string = str()
    def add_to_DRVTags(string):
        DRVTags_string += string + '\n'

    predefine_variables= '''#include <stdio.h>
                            #include <stdint.h>
                            #include <stdlib.h>
                            #include <stdbool.h>

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
                            }Driver_properties;'''
    

    with open(file_path, 'r') as file_handler:
        tree = etree.parse(source= file_handler)
        DRVTags = []
        root_tree = tree.find('Options')
        drivers = root_tree.findall('Drv')
        driver_list = []
        instance_index = 0
        for driver in drivers:
            driver_name = driver.attrib.get('name','')
            driver_type = driver.attrib.get('type','')
            driver_list.append((driver_name, driver_type, instance_index))
            instance_index += 1
        
        # define DRVTags pointer
        add_to_DRVTags(f'Driver_properties DRVTags[{len(driver_list)}];')

        # init DRVTags
        # DRVTags = [{} for _ in range(instance_index + 1)]

        for driver_instance_name, driver_instance_type, instance_index in driver_list:
            
            if driver_instance_type == "LOCAL_IO":

                driver_instance = root_tree.find(driver_instance_name)
                # get LIO's Option
                options = driver_instance.find('options')

                # DRVTags[instance_index]['options'] = {
                #                             'ChatterFilterCount' : options.attrib.get('ChatterFilterCount', None),
                #                             'ChatterFilterBaseTimeMs' : options.attrib.get('ChatterFilterBaseTimeMs', None),
                #                             'ChatterFilterFreezeTimeMs' : options.attrib.get('ChatterFilterFtreezeTimeMs', None),
                #                             'IOScan' : options.attrib.get('IOScan', None),
                #                             'TagConfiguration' : options.attrib.get('TagConfiguration', None),
                #                         }

                # Get and generate LIO's tag buffer
                tags = driver_instance.find('Tags').findall('Tag')
                # tags_list = []
                # for tag in tags:
                #     tags_list.append({ 
                #                       "Name"      : tag.attrib.get('Name', None),
                #                       "Type"      : tag.attrib.get('Type', None),
                #                       "Init"      : tag.attrib.get('Init', None),
                #                       "Address"   : tag.attrib.get('Address', None),
                #                       "Range"     : tag.attrib.get('Range', None),
                #                       "Deadband"  : tag.attrib.get('Deadband', None),
                #                       "TagIndex" : tag.attrib.get('TagIndex', None)
                #                      })
                # DRVTags[instance_index]['Tags'] = tags_list

                LIO_options_prefix = f"DRVTags[{instance_index}].driverOptions.LIO_Options"
                string= f'{LIO_options_prefix}.ChatterFilterCount = {options.attrib.get("ChatterFilterCount", None)};\n' + \
                        f'{LIO_options_prefix}.ChatterFilterBaseTimeMs = {options.attrib.get("ChatterFilterBaseTimeMs", None)};\n' + \
                        f'{LIO_options_prefix}.ChatterFilterFreezeTimeMs =  {options.attrib.get("ChatterFilterFtreezeTimeMs", None)};\n' + \
                        f'{LIO_options_prefix}.IOScan = {options.attrib.get("IOScan", None)};\n' + \
                        f'{LIO_options_prefix}.TagConfiguration = {options.attrib.get("TagConfiguration", None)};\n'
                
                add_to_DRVTags(string)

                number_of_tags = len(tags)
                add_to_DRVTags(f'LIO_struct LIO_{instance_index}_struct')
                add_to_DRVTags(f'DRVTags[{instance_index}] = ')
                


            elif driver_instance_type == "DNP3Slave":

                driver_instance = root_tree.find(driver_instance_name)
                # get LIO's Option
                options = driver_instance.find('options')
                DRVTags[instance_index]['options'] = {
                                                        'Disable' : options.attrib.get('Disable', None),
                                                        'COMPort' : options.attrib.get('COMPort', None),
                                                        'BaudRate' : options.attrib.get('BaudRate', None),
                                                        'DataBits' : options.attrib.get('DataBits', None),
                                                        'StopBits' : options.attrib.get('StopBits', None),
                                                        'Parity' : options.attrib.get('Parity', None),
                                                        'FlowControl' : options.attrib.get('FlowControl', None),
                                                        'SlaveAddress' : options.attrib.get('SlaveAddress', None),
                                                        'MasterAddress' : options.attrib.get('MasterAddress', None),
                                                        'Instance' : options.attrib.get('Instance', None),
                                                        'SocketPort' : options.attrib.get('SocketPort', None),
                                                        'PhysicalLayerScanTime' : options.attrib.get('PhysicalLayerScanTime', None),
                                                        'SBOTimeOut' : options.attrib.get('SBOTimeOut', None),
                                                        'LinkStatusPeriod' : options.attrib.get('LinkStatusPeriod', None),
                                                        'AppConfirmationTimeout' : options.attrib.get('AppConfirmationTimeout', None),
                                                        'MaxEventNum' : options.attrib.get('MaxEventNum', None),
                                                        'ClockValidPeriod' : options.attrib.get('ClockValidPeriod', None),
                                                        'DLLAckConfirmationTimeout' : options.attrib.get('DLLAckConfirmationTimeout', None),
                                                        'TagConfiguration' : options.attrib.get('TagConfiguration', None),
                                                        'UnsolicitedRetryDelay' : options.attrib.get('UnsolicitedRetryDelay', None),
                                                        'UnsolicitedSendRetries' : options.attrib.get('UnsolicitedSendRetries', None),
                                                        'MasterIPAddress' : options.attrib.get('MasterIPAddress', None),
                                                        'LocalIPAddress' : options.attrib.get('LocalIPAddress', None),
                                                        'EnableUnsolicited' : options.attrib.get('EnableUnsolicited', None),
                                                        'SendUnsolicitedWhenOnline' : options.attrib.get('SendUnsolicitedWhenOnline', None),
                                                        'UseLocalTime' : options.attrib.get('UseLocalTime', None),
                                                        'DiagMode' : options.attrib.get('DiagMode', None),
                                                        'DLLAckConfirmation' : options.attrib.get('DLLAckConfirmation', None),
                                                        'PhysicalLayer' : options.attrib.get('PhysicalLayer', None),
                                                        'DIHighSpeedEventScan' : options.attrib.get('DIHighSpeedEventScan', None),
                                                        'DeleteOldestEvent' : options.attrib.get('DeleteOldestEvent', None)
                                                    }
                # Get and generate LIO's tag buffer
                tags = driver_instance.find('Tags').findall('Tag')
                tags_list = []
                for tag in tags:
                    tag_group = int(options.attrib.get('Group', None))
                    tag_class = int(options.attrib.get('Class', None))
                    # decode group value
                    eightBitTagGroupProperties = bin(tag_group)[2:].zfill(8) # 8 bit 
                    defaultStaticVariation = int(eightBitTagGroupProperties[:len(eightBitTagGroupProperties)/2])
                    defaultEventVariation  = int(eightBitTagGroupProperties[len(eightBitTagGroupProperties)/2:])
                    # decode class value
                    eightBitTagClassProperties = bin(tag_class)[2:].zfill(8) # 8 bit 
                    controlOperation = int(eightBitTagClassProperties[:len(eightBitTagClassProperties)/2])
                    tagClassNumber  = int(eightBitTagClassProperties[len(eightBitTagClassProperties)/2:])

                    tags_list.append({
                                    'Name' : options.attrib.get('Name', None),
                                    'Type' : options.attrib.get('Type', None),
                                    'Class' : tag_class,
                                    'ControlOperation' : controlOperation,
                                    'TagClassNumber' : tagClassNumber,                       
                                    'Init' : options.attrib.get('Init', None),
                                    'Address' : options.attrib.get('Address', None),
                                    'Deadband' : options.attrib.get('Deadband', None),
                                    'Retain' : options.attrib.get('Retain', None),
                                    'Group' : tag_group,
                                    'DefaultStaticVariation' : defaultStaticVariation,
                                    'DefaultEventVariation'  : defaultEventVariation,
                                    'TagIndex' : options.attrib.get('TagIndex', None)
                                    })
                
                DRVTags[instance_index]['Tags'] = tags_list


            elif driver_instance_type == "DNP3Master":
                pass
            elif driver_instance_type == "ModbusMaster":
                pass
            elif driver_instance_type == "ModbusSlave":
                pass
            elif driver_instance_type == "SQLite":
                pass