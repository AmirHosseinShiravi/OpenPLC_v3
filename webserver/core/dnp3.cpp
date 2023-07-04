//2017 Trevor Aron
//
//File contains code for DNP3
//
#include <asiodnp3/DNP3Manager.h>
#include <asiodnp3/PrintingSOEHandler.h>
#include <asiodnp3/PrintingChannelListener.h>
#include <asiodnp3/ConsoleLogger.h>
#include <asiodnp3/UpdateBuilder.h>

#include <asiopal/UTCTimeSource.h>
#include <opendnp3/outstation/SimpleCommandHandler.h>

#include <opendnp3/LogLevels.h>
//#include <opendnp3/outstation/Database.h>

// #include <opendnp3/gen/BinaryQuality.h>

#include <string>
#include <cstring>
#include <thread>
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <signal.h>
#include <algorithm> 
#include <functional> 
#include <cctype>
#include <locale>
#include <fstream>
#include <unordered_map>
#include <unordered_set>

#include "ladder.h"



// #include <opendnp3/gen/BinaryQuality.h>
// #include <opendnp3/gen/AnalogQuality.h>
// #include <opendnp3/gen/BinaryOutputStatusQuality.h>
// #include <opendnp3/gen/AnalogOutputStatusQuality.h>



//some modbus defines
#define MAX_DISCRETE_INPUT      8192
#define MAX_COILS               8192
#define MAX_HOLD_REGS 			8192
#define MAX_INP_REGS			1024

#define MIN_16B_RANGE			1024
#define MAX_16B_RANGE			2047
#define MIN_32B_RANGE			2048
#define MAX_32B_RANGE			4095
#define MIN_64B_RANGE			4096
#define MAX_64B_RANGE			8191

#define OPLC_CYCLE              500000000

// Initial offset parameters (yurgen1975)
int offset_di = 0;
int offset_do = 0;
int offset_ai = 0;
int offset_ao = 0;

using namespace std;
using namespace opendnp3;
using namespace openpal;
using namespace asiopal;
using namespace asiodnp3;


unsigned char log_msg[1000];

IEC_BOOL dnp3_discrete_input[MAX_DISCRETE_INPUT];
IEC_BOOL dnp3_coils[MAX_COILS];
IEC_UINT dnp3_input_regs[MAX_INP_REGS];
IEC_UINT dnp3_holding_regs[MAX_HOLD_REGS];


struct number_of_points_of_each_type_struct{
    int number_of_binary_point;
    int number_of_analog_point;
    int number_of_binary_status_point;
    int number_of_analog_status_point;
};

struct number_of_points_of_each_type_struct number_of_points_of_each_type[number_of_DNP_Slave_Driver_Instances];


uint16_t** tags_address_array = malloc(number_of_DNP_Slave_Driver_Instances * sizeof(uint16_t*));


unordered_map<uint16_t, uint16_t> dnp_address_to_buffer_index_map[number_of_DNP_Slave_Driver_Instances];


// trim string from left
static inline std::string &ltrim(std::string &s) {
    s.erase(s.begin(), std::find_if(s.begin(), s.end(),
            std::not1(std::ptr_fun<int, int>(std::isspace))));
    return s;
}

// trim string from right
static inline std::string &rtrim(std::string &s) {
    s.erase(std::find_if(s.rbegin(), s.rend(),
            std::not1(std::ptr_fun<int, int>(std::isspace))).base(), s.end());
    return s;
}

// trim string from left and right
static inline std::string &trim(std::string &s) {
    return ltrim(rtrim(s));
}


PointClass getPointClassEnumFromValue(uint8_t value)
{
    switch (value)
    {
        case 0:
            return PointClass::Class0;
        case 1:
            return PointClass::Class1;
        case 2:
            return PointClass::Class2;
        case 4:
            return PointClass::Class3;
        default:
            return static_cast<PointClass>(value);
    }
}

uint8_t getStaticGroupVariationEnumFromValue(uint8_t static_group, int type)
{
    try
    {
        switch (type)
        {
            case 1:
                switch (static_group)
                {
                    case 1:
                        return static_cast<uint8_t>(StaticBinaryVariation::Group1Var1);
                    case 2:
                        return static_cast<uint8_t>(StaticBinaryVariation::Group1Var2);
                    default:
                        return static_cast<uint8_t>(BinaryInfo::DefaultStaticVariation);
                }

            case 4:
                switch(static_group)
                {
                    case 1:
                        return static_cast<uint8_t>(StaticAnalogVariation::Group30Var1);
                    case 2:
                        return static_cast<uint8_t>(StaticAnalogVariation::Group30Var2);
                    case 3:
                        return static_cast<uint8_t>(StaticAnalogVariation::Group30Var3);
                    case 4:
                        return static_cast<uint8_t>(StaticAnalogVariation::Group30Var4);
                    case 5:
                        return static_cast<uint8_t>(StaticAnalogVariation::Group30Var5);
                    case 6:
                        return static_cast<uint8_t>(StaticAnalogVariation::Group30Var6);
                    default:
                        return static_cast<uint8_t>(AnalogInfo::DefaultStaticVariation);
                }
            case 50:
                switch(static_group)
                {
                    case 2:
                        return static_cast<uint8_t>(StaticBinaryOutputStatusVariation::Group10Var2);
                    default:
                        return static_cast<uint8_t>(BinaryOutputStatusInfo::DefaultStaticVariation);
                }
            case 51:
                switch(static_group)
                {
                    case 1:
                        return static_cast<uint8_t>(StaticAnalogOutputStatusVariation::Group40Var1);
                    case 2:
                        return static_cast<uint8_t>(StaticAnalogOutputStatusVariation::Group40Var2);
                    case 3:
                        return static_cast<uint8_t>(StaticAnalogOutputStatusVariation::Group40Var3);
                    case 4:
                        return static_cast<uint8_t>(StaticAnalogOutputStatusVariation::Group40Var4);
                    default:
                        return static_cast<uint8_t>(AnalogOutputStatusInfo::DefaultStaticVariation);
                }
        }
    }
    catch (const std::exception &e)
    {
            std::cerr << e.what() << '\n';
    }
}

uint8_t getEventGroupVariationEnumFromValue(uint8_t event_group, int type)
{
    try
    {
        switch (type)
        {
            case 1:
                switch (event_group)
                {
                    case 1:
                        return static_cast<uint8_t>(EventBinaryVariation::Group2Var1);
                    case 2:
                        return static_cast<uint8_t>(EventBinaryVariation::Group2Var2);
                    case 3:
                        return static_cast<uint8_t>(EventBinaryVariation::Group2Var3);
                    default:
                        return static_cast<uint8_t>(BinaryInfo::DefaultEventVariation);
                }
                break;
            case 4:
                switch(event_group)
                {
                    case 1:
                        return static_cast<uint8_t>(EventAnalogVariation::Group32Var1);
                    case 2:
                        return static_cast<uint8_t>(EventAnalogVariation::Group32Var2);
                    case 3:
                        return static_cast<uint8_t>(EventAnalogVariation::Group32Var3);
                    case 4:
                        return static_cast<uint8_t>(EventAnalogVariation::Group32Var4);
                    case 5:
                        return static_cast<uint8_t>(EventAnalogVariation::Group32Var5);
                    case 6:
                        return static_cast<uint8_t>(EventAnalogVariation::Group32Var6);
                    case 7:
                        return static_cast<uint8_t>(EventAnalogVariation::Group32Var7);
                    case 8:
                        return static_cast<uint8_t>(EventAnalogVariation::Group32Var8);
                    default:
                        return static_cast<uint8_t>(AnalogInfo::DefaultEventVariation);
                }
                
            case 50:
                switch(event_group)
                {
                    case(1):
                        return static_cast<uint8_t>(EventBinaryOutputStatusVariation::Group11Var1);
                    case(2):
                        return static_cast<uint8_t>(EventBinaryOutputStatusVariation::Group11Var2);
                    default:
                        return static_cast<uint8_t>(BinaryOutputStatusInfo::DefaultEventVariation);
                }
               
            case 51:
                switch(event_group)
                {
                    case 1:
                        return static_cast<uint8_t>(EventAnalogOutputStatusVariation::Group42Var1);
                    case 2:
                        return static_cast<uint8_t>(EventAnalogOutputStatusVariation::Group42Var2);
                    case 3:
                        return static_cast<uint8_t>(EventAnalogOutputStatusVariation::Group42Var3);
                    case 4:
                        return static_cast<uint8_t>(EventAnalogOutputStatusVariation::Group42Var4);
                    case 5:
                        return static_cast<uint8_t>(EventAnalogOutputStatusVariation::Group42Var5);
                    case 6:
                        return static_cast<uint8_t>(EventAnalogOutputStatusVariation::Group42Var6);
                    case 7:
                        return static_cast<uint8_t>(EventAnalogOutputStatusVariation::Group42Var7);
                    case 8:
                        return static_cast<uint8_t>(EventAnalogOutputStatusVariation::Group42Var8);

                    default:
                        return static_cast<uint8_t>(AnalogOutputStatusInfo::DefaultEventVariation);
                }
        }
    }
    catch (const std::exception &e)
    {
            std::cerr << e.what() << '\n';
    }
}


// void config_datapoints(OutstationStackConfig& config, int instance_number)
// {
//     int binary_counter = 0;
//     int analog_counter = 0;
//     int boStatus_counter = 0;
//     int aoStatus_counter = 0;

//     // uint16_t tags_address_array[DNP_Slave_Driver_Instances[instance_number].number_of_tags];

//     // for (int m= 0; m < DNP_Slave_Driver_Instances[instance_number].number_of_tags; m++)
//     // {
//     //     tags_address_array[m] = DNP_Slave_Driver_Instances[instance_number].Tags[m].Address;
//     // }

//     uint16_t arr_size = sizeof(tags_address_array[instance_number]) / sizeof(tags_address_array[instance_number][0]);
    
//     sprintf((char *)log_msg, "*** instance: %d :: size of tags_address_array : %d ::  ***\n", instance_number,  arr_size);
//     log(log_msg);

//     for (int i= 0; i < DNP_Slave_Driver_Instances[instance_number].number_of_tags; i++ )
//     {
//         try
//         {

//             pthread_mutex_lock(&bufferLock); //lock mutex
//             int type = DNP_Slave_Driver_Instances[instance_number].Tags[i].Type;
//             uint8_t tag_class = DNP_Slave_Driver_Instances[instance_number].Tags[i].Class & 0x0F;
//             uint8_t svariation = ((DNP_Slave_Driver_Instances[instance_number].Tags[i].Group & 0xF0) >> 4) ;
//             uint8_t evariation = (DNP_Slave_Driver_Instances[instance_number].Tags[i].Group & 0x0F);
//             pthread_mutex_unlock(&bufferLock); //unlock mutex  

//             switch (type)
//             {
//                 case 1:
//                     sprintf((char *)log_msg, "Instance: %d :: Binary Tag: %d :: Address: %d\n", instance_number, binary_counter, DNP_Slave_Driver_Instances[instance_number].Tags[i].Address);
//                     log(log_msg);
//                     config.dbConfig.binary[binary_counter].clazz = getPointClassEnumFromValue(tag_class);
//                     config.dbConfig.binary[binary_counter].evariation = static_cast<EventBinaryVariation>(getEventGroupVariationEnumFromValue(evariation, type));
//                     config.dbConfig.binary[binary_counter].svariation = static_cast<StaticBinaryVariation>(getStaticGroupVariationEnumFromValue(svariation, type));
//                     config.dbConfig.binary[binary_counter].vIndex = DNP_Slave_Driver_Instances[instance_number].Tags[i].Address;
//                     binary_counter++;
//                     break;

//                 case 4:
//                     sprintf((char *)log_msg, "Instance: %d :: Analog Tag: %d\n", instance_number, analog_counter);
//                     log(log_msg);
//                     config.dbConfig.analog[analog_counter].clazz = getPointClassEnumFromValue(tag_class);
//                     config.dbConfig.analog[analog_counter].evariation = static_cast<EventAnalogVariation>(getEventGroupVariationEnumFromValue(evariation, type));
//                     config.dbConfig.analog[analog_counter].svariation = static_cast<StaticAnalogVariation>(getStaticGroupVariationEnumFromValue(svariation, type));
//                     config.dbConfig.analog[analog_counter].deadband = DNP_Slave_Driver_Instances[instance_number].Tags[i].Deadband;
//                     config.dbConfig.analog[analog_counter].vIndex = DNP_Slave_Driver_Instances[instance_number].Tags[i].Address;
//                     analog_counter++;
//                     break;

//                 case 50:
//                     sprintf((char *)log_msg, "Instance: %d :: BinaryOutputStatus Tag: %d\n", instance_number, boStatus_counter);
//                     log(log_msg);
//                     config.dbConfig.boStatus[boStatus_counter].clazz = getPointClassEnumFromValue(tag_class);
//                     config.dbConfig.boStatus[boStatus_counter].evariation = static_cast<EventBinaryOutputStatusVariation>(getEventGroupVariationEnumFromValue(evariation, type));
//                     config.dbConfig.boStatus[boStatus_counter].svariation = static_cast<StaticBinaryOutputStatusVariation>(getStaticGroupVariationEnumFromValue(svariation, type));
//                     config.dbConfig.boStatus[boStatus_counter].vIndex = DNP_Slave_Driver_Instances[instance_number].Tags[i].Address;
//                     boStatus_counter++;
//                     break;

//                 case 51:
//                     sprintf((char *)log_msg, "Instance: %d :: AnalogOutputStatus Tag: %d\n", instance_number, aoStatus_counter);
//                     log(log_msg);                
//                     config.dbConfig.aoStatus[aoStatus_counter].clazz = getPointClassEnumFromValue(tag_class);
//                     config.dbConfig.aoStatus[aoStatus_counter].evariation = static_cast<EventAnalogOutputStatusVariation>(getEventGroupVariationEnumFromValue(evariation, type));
//                     config.dbConfig.aoStatus[aoStatus_counter].svariation = static_cast<StaticAnalogOutputStatusVariation>(getStaticGroupVariationEnumFromValue(svariation, type));
//                     config.dbConfig.aoStatus[aoStatus_counter].deadband = DNP_Slave_Driver_Instances[instance_number].Tags[i].Deadband;
//                     config.dbConfig.aoStatus[aoStatus_counter].vIndex = DNP_Slave_Driver_Instances[instance_number].Tags[i].Address;
//                     aoStatus_counter++;
//                     break;
//             }
            
        
            
//         }
//         catch(const std::exception& e)
//         {
//             std::cerr << e.what() << '\n';
//         }
//     }
// }


void config_datapoints(OutstationStackConfig& config, int instance_number)
{
    int binary_counter = 0;
    int analog_counter = 0;
    int boStatus_counter = 0;
    int aoStatus_counter = 0;
    
    uint16_t last_address = 0;

    // uint16_t tags_address_array[DNP_Slave_Driver_Instances[instance_number].number_of_tags];

    // for (int m= 0; m < DNP_Slave_Driver_Instances[instance_number].number_of_tags; m++)
    // {
    //     tags_address_array[m] = DNP_Slave_Driver_Instances[instance_number].Tags[m].Address;
    // }



    ////////////// TODO: Write with One For, because now we have 


    for (int k= 0; k < DNP_Slave_Driver_Instances[instance_number].number_of_tags; k++ )
    {
        try
        {
            // pthread_mutex_lock(&bufferLock); //lock mutex
            // int type = DNP_Slave_Driver_Instances[instance_number].Tags[i].Type;
            // uint8_t tag_class = DNP_Slave_Driver_Instances[instance_number].Tags[i].Class & 0x0F;
            // uint8_t svariation = ((DNP_Slave_Driver_Instances[instance_number].Tags[i].Group & 0xF0) >> 4) ;
            // uint8_t evariation = (DNP_Slave_Driver_Instances[instance_number].Tags[i].Group & 0x0F);
            // pthread_mutex_unlock(&bufferLock); //unlock mutex   

            // sprintf((char *)log_msg, "********************************************\n", type);
            // log(log_msg);            
            // sprintf((char *)log_msg, "%d\n", type);
            // log(log_msg);
            // sprintf((char *)log_msg, "%d\n", tag_class);
            // log(log_msg);
            // sprintf((char *)log_msg, "%d\n", svariation);
            // log(log_msg);
            // sprintf((char *)log_msg, "%d\n", evariation);
            // log(log_msg);
            // sprintf((char *)log_msg, "********************************************\n", type);
            // log(log_msg);

            
            for (int i= 0; i < DNP_Slave_Driver_Instances[instance_number].number_of_tags; i++ )
            {
                if(DNP_Slave_Driver_Instances[instance_number].Tags[i].Address == tags_address_array[instance_number][k])
                {

                    pthread_mutex_lock(&bufferLock); //lock mutex
                    int type = DNP_Slave_Driver_Instances[instance_number].Tags[i].Type;
                    uint8_t tag_class = DNP_Slave_Driver_Instances[instance_number].Tags[i].Class & 0x0F;
                    uint8_t svariation = ((DNP_Slave_Driver_Instances[instance_number].Tags[i].Group & 0xF0) >> 4) ;
                    uint8_t evariation = (DNP_Slave_Driver_Instances[instance_number].Tags[i].Group & 0x0F);
                    pthread_mutex_unlock(&bufferLock); //unlock mutex  

                    switch (type)
                    {
                        case 1:
                            sprintf((char *)log_msg, "Instance: %d :: Binary Tag: %d :: Address: %d\n", instance_number, binary_counter, DNP_Slave_Driver_Instances[instance_number].Tags[i].Address);
                            log(log_msg);
                            config.dbConfig.binary[binary_counter].clazz = getPointClassEnumFromValue(tag_class);
                            config.dbConfig.binary[binary_counter].evariation = static_cast<EventBinaryVariation>(getEventGroupVariationEnumFromValue(evariation, type));
                            config.dbConfig.binary[binary_counter].svariation = static_cast<StaticBinaryVariation>(getStaticGroupVariationEnumFromValue(svariation, type));
                            config.dbConfig.binary[binary_counter].vIndex = DNP_Slave_Driver_Instances[instance_number].Tags[i].Address;
                            binary_counter++;
                            break;

                        case 4:
                            sprintf((char *)log_msg, "Instance: %d :: Analog Tag: %d\n", instance_number, analog_counter);
                            log(log_msg);
                            config.dbConfig.analog[analog_counter].clazz = getPointClassEnumFromValue(tag_class);
                            config.dbConfig.analog[analog_counter].evariation = static_cast<EventAnalogVariation>(getEventGroupVariationEnumFromValue(evariation, type));
                            config.dbConfig.analog[analog_counter].svariation = static_cast<StaticAnalogVariation>(getStaticGroupVariationEnumFromValue(svariation, type));
                            config.dbConfig.analog[analog_counter].deadband = DNP_Slave_Driver_Instances[instance_number].Tags[i].Deadband;
                            config.dbConfig.analog[analog_counter].vIndex = DNP_Slave_Driver_Instances[instance_number].Tags[i].Address;
                            analog_counter++;
                            break;

                        case 50:
                            sprintf((char *)log_msg, "Instance: %d :: BinaryOutputStatus Tag: %d\n", instance_number, boStatus_counter);
                            log(log_msg);
                            config.dbConfig.boStatus[boStatus_counter].clazz = getPointClassEnumFromValue(tag_class);
                            config.dbConfig.boStatus[boStatus_counter].evariation = static_cast<EventBinaryOutputStatusVariation>(getEventGroupVariationEnumFromValue(evariation, type));
                            config.dbConfig.boStatus[boStatus_counter].svariation = static_cast<StaticBinaryOutputStatusVariation>(getStaticGroupVariationEnumFromValue(svariation, type));
                            config.dbConfig.boStatus[boStatus_counter].vIndex = DNP_Slave_Driver_Instances[instance_number].Tags[i].Address;
                            boStatus_counter++;
                            break;

                        case 51:
                            sprintf((char *)log_msg, "Instance: %d :: AnalogOutputStatus Tag: %d\n", instance_number, aoStatus_counter);
                            log(log_msg);                
                            config.dbConfig.aoStatus[aoStatus_counter].clazz = getPointClassEnumFromValue(tag_class);
                            config.dbConfig.aoStatus[aoStatus_counter].evariation = static_cast<EventAnalogOutputStatusVariation>(getEventGroupVariationEnumFromValue(evariation, type));
                            config.dbConfig.aoStatus[aoStatus_counter].svariation = static_cast<StaticAnalogOutputStatusVariation>(getStaticGroupVariationEnumFromValue(svariation, type));
                            config.dbConfig.aoStatus[aoStatus_counter].deadband = DNP_Slave_Driver_Instances[instance_number].Tags[i].Deadband;
                            config.dbConfig.aoStatus[aoStatus_counter].vIndex = DNP_Slave_Driver_Instances[instance_number].Tags[i].Address;
                            aoStatus_counter++;
                            break;
                    }
                    break;
                }
            }
        }
        catch(const std::exception& e)
        {
            std::cerr << e.what() << '\n';
        }
        last_address++;
        
    }
}


template<typename T>
bool isElementInArray(const T* arr, size_t size, const T& target) {
    std::unordered_set<T> hashSet(arr, arr + size);
    return hashSet.find(target) != hashSet.end();
}


bool index_existance_check(uint16_t index, int instance_number)
{   
    uint16_t* arr = tags_address_array[instance_number];
    size_t size = sizeof(arr) / sizeof(arr[0]);

    if (isElementInArray(arr, DNP_Slave_Driver_Instances[instance_number].number_of_tags, index)) {
        return true;
    } else {
        return false;
    }

}

void map_address_to_index(int instance_number)
{
    dnp_address_to_buffer_index_map[instance_number].reserve(DNP_Slave_Driver_Instances[instance_number].number_of_tags);

    for (int i = 0; i < DNP_Slave_Driver_Instances[instance_number].number_of_tags; i++)
    {
        uint16_t address = DNP_Slave_Driver_Instances[instance_number].Tags[i].Address;
        dnp_address_to_buffer_index_map[instance_number][address] = i;
    }
}

// IMPORTANT: when we execute an command, the commandstatus maybe set to "SUCCESS" but according to document, it's means : "command was accepted, initiated, or queued".
// but some time maybe return "DOWNSTREAM_FAIL" and according to document, it's means : "command not accepted because the outstation is forwarding the request to another downstream device which cannot be reached or is otherwise incapable of performing the request"
// it can be true for us because must of execution is processed in another devices like extensions and ... .
// so we need to implement it in the code. but in another devices like ALBORZ RTU it not implemented yet.
//-----------------------------------------------------------------------------
// Class to handle commands from the master
//-----------------------------------------------------------------------------
class CommandCallback: public ICommandHandler {

private:
    int instance_number;

public:

    // CommandCallback(int num);

    CommandCallback::CommandCallback(int num){
        instance_number = num;
    }
   
    // Important: check index address to exist in out tags array

    //CROB - changed to support offsets (yurgen1975)
    virtual CommandStatus Select(const ControlRelayOutputBlock& command, uint16_t index) {
        // if index was out of range, return CommandStatus::OUT_OF_RANGE
        sprintf((char *)log_msg, "*** :: In Select CommandStatus :: index : %d  ***\n", index);
        log(log_msg);
        bool index_existance = index_existance_check(index, instance_number);
        if (!index_existance){
            // find better choice for return CommandStatus
            return CommandStatus::UNDEFINED;
        }
        else
        {   
            uint16_t buffer_index = dnp_address_to_buffer_index_map[instance_number][index];
            DNP_Slave_Driver_Instances[instance_number].Tags[buffer_index].selectedBeforeOperate = true;
            sprintf((char *)log_msg, "*** :: In Select CommandStatus ::  ***\n");
            log(log_msg);
            return CommandStatus::SUCCESS;
        }

        
    }
    virtual CommandStatus Operate(const ControlRelayOutputBlock& command, uint16_t index, OperateType opType) {
        sprintf((char *)log_msg, "*** :: In Operate :: First Impression ::  ***\n");
        log(log_msg);
        auto code = command.functionCode;
        CommandStatus return_val;

        bool index_existance = index_existance_check(index, instance_number);
        if (!index_existance){
            // find better choice for return CommandStatus
            return CommandStatus::UNDEFINED;
        }
        else
        {
            uint16_t buffer_index = dnp_address_to_buffer_index_map[instance_number][index];

            if (opType == OperateType::SelectBeforeOperate)
            {
                if(DNP_Slave_Driver_Instances[instance_number].Tags[buffer_index].selectedBeforeOperate == false)
                {
                    sprintf((char *)log_msg, "*** :: In Operate :: No Select ::  ***\n");
                    log(log_msg);
                    return_val = CommandStatus::NO_SELECT;
                    return return_val;
                }
                else{
                    if(code == ControlCode::LATCH_ON || code == ControlCode::LATCH_OFF) {
                        // return_val = CommandStatus::SUCCESS;
                        IEC_BOOL crob_val = (code == ControlCode::LATCH_ON);
                        pthread_mutex_lock(&bufferLock);
                        DNP_Slave_Driver_Instances[instance_number].Tags[buffer_index].TagValue = crob_val;
                        pthread_mutex_unlock(&bufferLock);
                        return_val = CommandStatus::SUCCESS;
                        
                        sprintf((char *)log_msg, "*** :: In Operate :: Operational Mode ::  ***\n");
                        log(log_msg);
                    }
                    else {
                        return_val = CommandStatus::NOT_SUPPORTED;
                    }
                    return return_val;
                }
            }
            else if(opType == OperateType::DirectOperate)
            {
                sprintf((char *)log_msg, "*** :: In Operate :: DIrectOperate Mode ::  ***\n");
                log(log_msg);
                if(code == ControlCode::LATCH_ON || code == ControlCode::LATCH_OFF) {
                    // return_val = CommandStatus::SUCCESS;
                    IEC_BOOL crob_val = (code == ControlCode::LATCH_ON);
                    pthread_mutex_lock(&bufferLock);
                    DNP_Slave_Driver_Instances[instance_number].Tags[buffer_index].TagValue = crob_val;
                    pthread_mutex_unlock(&bufferLock);
                    return_val = CommandStatus::SUCCESS;
                    
                    // sprintf((char *)log_msg, "*** :: In Operate :: Operational Mode ::  ***\n");
                    // log(log_msg);
                }
                else {
                    return_val = CommandStatus::NOT_SUPPORTED;
                }
                return return_val;
            }
            else if(opType == OperateType::DirectOperateNoAck)
            {
                sprintf((char *)log_msg, "*** :: In Operate :: DirectOperateNoAck Mode ::  ***\n");
                        log(log_msg);
                if(code == ControlCode::LATCH_ON || code == ControlCode::LATCH_OFF) {
                    // return_val = CommandStatus::SUCCESS;
                    IEC_BOOL crob_val = (code == ControlCode::LATCH_ON);
                    pthread_mutex_lock(&bufferLock);
                    DNP_Slave_Driver_Instances[instance_number].Tags[buffer_index].TagValue = crob_val;
                    pthread_mutex_unlock(&bufferLock);
                    return_val = CommandStatus::SUCCESS;
                    
                    // sprintf((char *)log_msg, "*** :: In Operate :: Operational Mode ::  ***\n");
                    // log(log_msg);
                }
                else {
                    return_val = CommandStatus::NOT_SUPPORTED;
                }
                return;
            }
        }
    }

    //Analog Out - changed to support offsets (yurgen1975)
    virtual CommandStatus Select(const AnalogOutputInt16& command, uint16_t index) {
        index = index + offset_ao;
        return CommandStatus::SUCCESS;
    }
    virtual CommandStatus Operate(const AnalogOutputInt16& command, uint16_t index, OperateType opType) {
        index = index + offset_ao;
        auto ao_val = command.value;
        pthread_mutex_lock(&bufferLock);
        if(index < MIN_16B_RANGE && int_output[index] != NULL) {
            *int_output[index] = ao_val;
        }
        else if(index < MAX_16B_RANGE && 
                int_memory[index - MIN_16B_RANGE] != NULL) {
            *int_memory[index - MIN_16B_RANGE] = ao_val;
        }
        else if(index > MAX_16B_RANGE) {
            return CommandStatus::OUT_OF_RANGE;
        }
        pthread_mutex_unlock(&bufferLock);
        return CommandStatus::SUCCESS;
    }

    //AnalogOut 32 (Int)
    virtual CommandStatus Select(const AnalogOutputInt32& command, uint16_t index) {
        return CommandStatus::SUCCESS;
    }
    virtual CommandStatus Operate(const AnalogOutputInt32& command, uint16_t index, OperateType opType) {
        auto ao_val = command.value;

        if(index < MIN_32B_RANGE || index >= MAX_32B_RANGE)
            return CommandStatus::OUT_OF_RANGE;
        
        pthread_mutex_lock(&bufferLock);
        if(dint_memory[index - MIN_32B_RANGE] != NULL) {
            *dint_memory[index - MIN_32B_RANGE] = ao_val;
        }
        pthread_mutex_unlock(&bufferLock);

        return CommandStatus::SUCCESS;
    }

    //AnalogOut 32 (Float)
    virtual CommandStatus Select(const AnalogOutputFloat32& command, uint16_t index) {

        return CommandStatus::SUCCESS;
    }
    virtual CommandStatus Operate(const AnalogOutputFloat32& command, uint16_t index, OperateType opType) {
        auto ao_val = command.value;

        if(index < MIN_32B_RANGE || index >= MAX_32B_RANGE)
            return CommandStatus::OUT_OF_RANGE;
        
        pthread_mutex_lock(&bufferLock);
        if(dint_memory[index - MIN_32B_RANGE] != NULL) {
            *dint_memory[index - MIN_32B_RANGE] = ao_val;
        }
        pthread_mutex_unlock(&bufferLock);

        return CommandStatus::SUCCESS;
    }

    //AnalogOut 64
    virtual CommandStatus Select(const AnalogOutputDouble64& command, uint16_t index) {
        return CommandStatus::SUCCESS;
    }
    virtual CommandStatus Operate(const AnalogOutputDouble64& command, uint16_t index, OperateType opType) {
        auto ao_val = command.value;

        if(index < MIN_64B_RANGE || index >= MAX_64B_RANGE)
            return CommandStatus::OUT_OF_RANGE;
        
        pthread_mutex_lock(&bufferLock);
        if(lint_memory[index - MIN_64B_RANGE] != NULL) {
            *lint_memory[index - MIN_64B_RANGE] = ao_val;
        }
        pthread_mutex_unlock(&bufferLock);

        return CommandStatus::SUCCESS;
    }
protected:
    void Start() final {}
    void End() final {}
};

//------------------------------------------------------------------
// Function to update DNP3 values every time they may have changed
// Updated by Yurgen1975 to support slave devices: DI/DO address 800 and AI/AO address 100
//------------------------------------------------------------------
void update_vals(std::shared_ptr<IOutstation> outstation, int instance_number){
    UpdateBuilder builder;
    // unsigned char log_msg[1000];
    // sprintf((char *)log_msg, "*** In update_vals ***\n");
    // log(log_msg);
    
        if(strncmp(DNP_Slave_Driver_Instances[instance_number].Options.TagConfiguration, "Value", 20) == 0)
        {
            sprintf((char *)log_msg, "*** In Value Mode Update values ***\n");
            log(log_msg);

            for (int i=0; i < DNP_Slave_Driver_Instances[instance_number].number_of_tags; i++)
            {
                switch (DNP_Slave_Driver_Instances[instance_number].Tags[i].Type)
                {
                    case 1:
                        builder.Update(Binary((bool)(DNP_Slave_Driver_Instances[instance_number].Tags[i].TagValue)),
                                                            DNP_Slave_Driver_Instances[instance_number].Tags[i].Address);
                        break;
                    case 4:
                        builder.Update(Analog((double)(DNP_Slave_Driver_Instances[instance_number].Tags[i].TagValue)), 
                                                            DNP_Slave_Driver_Instances[instance_number].Tags[i].Address);
                        break;
                    case 50:
                        builder.Update(BinaryOutputStatus((bool)(DNP_Slave_Driver_Instances[instance_number].Tags[i].TagValue)), 
                                                                    DNP_Slave_Driver_Instances[instance_number].Tags[i].Address);
                        break;
                    case 51:
                        builder.Update(AnalogOutputStatus((double)(DNP_Slave_Driver_Instances[instance_number].Tags[i].TagValue)), 
                                                                    DNP_Slave_Driver_Instances[instance_number].Tags[i].Address);
                        break;
                }
            }
        }
        else if(strncmp(DNP_Slave_Driver_Instances[instance_number].Options.TagConfiguration, "Value-Status", 20) == 0)
        {
            
            // sprintf((char *)log_msg, "*** In Value-Status Mode Update values ***\n");
            // log(log_msg);
            /*
                "TagStatus" must be on of : 1,2,4,8,16,32,64,128
                or 1 or 2 (based on QualityFlags.h file)
            */
            for (int i=0; i < DNP_Slave_Driver_Instances[instance_number].number_of_tags; i++)
            {
                switch (DNP_Slave_Driver_Instances[instance_number].Tags[i].Type)
                {
                    case 1:
                        builder.Update(Binary((bool)(DNP_Slave_Driver_Instances[instance_number].Tags[i].TagValue), 
                                                        (uint8_t)DNP_Slave_Driver_Instances[instance_number].Tags[i].TagStatus),
                                                        DNP_Slave_Driver_Instances[instance_number].Tags[i].Address);
                        break;
                    case 4:
                        builder.Update(Analog((double)(DNP_Slave_Driver_Instances[instance_number].Tags[i].TagValue),
                                                        (uint8_t)DNP_Slave_Driver_Instances[instance_number].Tags[i].TagStatus), 
                                                        DNP_Slave_Driver_Instances[instance_number].Tags[i].Address);
                        break;
                    case 50:
                        builder.Update(BinaryOutputStatus((bool)(DNP_Slave_Driver_Instances[instance_number].Tags[i].TagValue),
                                                                    (uint8_t)DNP_Slave_Driver_Instances[instance_number].Tags[i].TagStatus), 
                                                                    DNP_Slave_Driver_Instances[instance_number].Tags[i].Address);
                        break;
                    case 51:
                        builder.Update(AnalogOutputStatus((double)(DNP_Slave_Driver_Instances[instance_number].Tags[i].TagValue),
                                                                    (uint8_t)DNP_Slave_Driver_Instances[instance_number].Tags[i].TagStatus), 
                                                                    DNP_Slave_Driver_Instances[instance_number].Tags[i].Address);
                        break;
                }
            }
        }
        else if(strncmp(DNP_Slave_Driver_Instances[instance_number].Options.TagConfiguration, "Value-Status-DT", 20) == 0)
        {
            // sprintf((char *)log_msg, "*** In Value-Status-DT Mode Update values ***\n");
            // log(log_msg);

            for (int i=0; i < DNP_Slave_Driver_Instances[instance_number].number_of_tags; i++)
            {
                long long t_sec= (long long)DNP_Slave_Driver_Instances[instance_number].Tags[i].TagValueDT.tv_sec;
                long long t_nsec= (long long)DNP_Slave_Driver_Instances[instance_number].Tags[i].TagValueDT.tv_nsec;
                long long total_nsec = (long long)(t_sec * 1000000000LL  + t_nsec);
                int64_t TagValueDT = (int64_t)(total_nsec / 1000000LL);
                DNPTime Tag_Time = DNPTime(TagValueDT);
                switch (DNP_Slave_Driver_Instances[instance_number].Tags[i].Type)
                {
                    case 1:
                        builder.Update(Binary((bool)(DNP_Slave_Driver_Instances[instance_number].Tags[i].TagValue), 
                                                        (uint8_t)DNP_Slave_Driver_Instances[instance_number].Tags[i].TagStatus,
                                                        Tag_Time),
                                                        DNP_Slave_Driver_Instances[instance_number].Tags[i].Address);
                        break;
                    case 4:
                        builder.Update(Analog((double)(DNP_Slave_Driver_Instances[instance_number].Tags[i].TagValue),
                                                        (uint8_t)DNP_Slave_Driver_Instances[instance_number].Tags[i].TagStatus, Tag_Time), 
                                                        DNP_Slave_Driver_Instances[instance_number].Tags[i].Address);
                        break;
                    case 50:
                        builder.Update(BinaryOutputStatus((bool)(DNP_Slave_Driver_Instances[instance_number].Tags[i].TagValue),
                                                                    (uint8_t)DNP_Slave_Driver_Instances[instance_number].Tags[i].TagStatus, Tag_Time), 
                                                                    DNP_Slave_Driver_Instances[instance_number].Tags[i].Address);
                        break;
                    case 51:
                        builder.Update(AnalogOutputStatus((double)(DNP_Slave_Driver_Instances[instance_number].Tags[i].TagValue),
                                                                    (uint8_t)DNP_Slave_Driver_Instances[instance_number].Tags[i].TagStatus, Tag_Time), 
                                                                    DNP_Slave_Driver_Instances[instance_number].Tags[i].Address);
                        break;
                }
            }
        }

    outstation->Apply(builder.Build());
}






void initialize_DNP3_slaves(vector<thread> *workerThreads)
{
    #ifdef have_DNP_Slave_Driver_Instances

    // unsigned char log_msg[1000];

    for (int i = 0; i < number_of_DNP_Slave_Driver_Instances; i++)
    {
        if(!(DNP_Slave_Driver_Instances[i].Options.Disable))
        {
            workerThreads->emplace_back(dnp3StartServer, i);
        }
    }

    #endif
}


void determine_number_of_points_of_each_types(int instance_number)
{
    for (int k= 0; k < DNP_Slave_Driver_Instances[instance_number].number_of_tags; k++)
    {
        switch (DNP_Slave_Driver_Instances[instance_number].Tags[k].Type)
        {
            case(1):
                number_of_points_of_each_type[instance_number].number_of_binary_point++;
                break;
            case(4):
                number_of_points_of_each_type[instance_number].number_of_analog_point++;
                break;
            case(50):
                number_of_points_of_each_type[instance_number].number_of_binary_status_point++;
                break;
            case(51):
                number_of_points_of_each_type[instance_number].number_of_analog_status_point++;
                break;
        }

    }
}


void parseDNP3Config(OutstationStackConfig& config, int instance_number)
{
    ///////////// Data Link Layer Configurations ///////////////
    config.link.LocalAddr        = (uint16_t)DNP_Slave_Driver_Instances[instance_number].Options.MasterAddress;
    config.link.RemoteAddr       = (uint16_t) DNP_Slave_Driver_Instances[instance_number].Options.SlaveAddress;
    config.link.Timeout          = openpal::TimeDuration::Seconds(DNP_Slave_Driver_Instances[instance_number].Options.DLLAckConfirmationTimeout);
    config.link.KeepAliveTimeout = openpal::TimeDuration::Seconds((int64_t)DNP_Slave_Driver_Instances[instance_number].Options.LinkStatusPeriod);
    config.link.UseConfirms      = true;//(bool)DNP_Slave_Driver_Instances[instance_number].Options.DLLAckConfirmation;
    config.link.NumRetry         = (uint32_t) DNP_Slave_Driver_Instances[instance_number].Options.DLLNumRetry;

    
    /////////////// OutStation configurations //////////////////
    // *config.outstation.params.solConfirmTimeout = openpal::TimeDuration::Milliseconds();
    // *config.outstation.params.unsolConfirmTimeout =

    // rename "UnsolicitedRetryDelay -> unsolRetryTimeout" in .cfg file
    config.outstation.params.unsolRetryTimeout = openpal::TimeDuration::Milliseconds(DNP_Slave_Driver_Instances[instance_number].Options.UnsolicitedRetryDelay);
    config.outstation.params.allowUnsolicited = (bool)DNP_Slave_Driver_Instances[instance_number].Options.EnableUnsolicited;
    config.outstation.params.selectTimeout = openpal::TimeDuration::Seconds((int64_t)DNP_Slave_Driver_Instances[instance_number].Options.SBOTimeOut);
    config.outstation.params.indexMode = IndexMode::Discontiguous;
    // *config.outstation.params.maxControlsPerRequest = 
    // *config.outstation.params.maxRxFragSize = 
    // *config.outstation.params.maxTxFragSize = 

    // get and sum number of datapoint and set event buffer for each of them
    sprintf((char *)log_msg, "$$$$$$$$$$$$$$$$$$$$$$$  Number of points:: %d :: %d :: %d :: %d ::\n", number_of_points_of_each_type[instance_number].number_of_binary_point,
                                                                                                        number_of_points_of_each_type[instance_number].number_of_analog_point, 
                                                                                                        number_of_points_of_each_type[instance_number].number_of_binary_status_point, 
                                                                                                        number_of_points_of_each_type[instance_number].number_of_analog_status_point);
    log(log_msg);
    config.outstation.eventBufferConfig.maxBinaryEvents = (uint16_t)number_of_points_of_each_type[instance_number].number_of_binary_point;
    config.outstation.eventBufferConfig.maxAnalogEvents = (uint16_t)number_of_points_of_each_type[instance_number].number_of_analog_point;
    config.outstation.eventBufferConfig.maxBinaryOutputStatusEvents = (uint16_t)number_of_points_of_each_type[instance_number].number_of_binary_status_point;
    config.outstation.eventBufferConfig.maxAnalogOutputStatusEvents = (uint16_t)number_of_points_of_each_type[instance_number].number_of_analog_status_point;
    // config.outstation.eventBufferConfig = EventBufferConfig::AllTypes((uint16_t)DNP_Slave_Driver_Instances[instance_number].Options.MaxEventNum);

}

 

/*class ILogHandler
{
    public:
        virtual void Log( const LogEntry& entry )
        {
            printf("I have logged something\n");
        }
};
*/


void ConsoleLogger::Log(const openpal::LogEntry& entry)
{
    unsigned char log_msg[1000];
    sprintf((char*)log_msg, "DNP3 ID %s: %s\n", entry.loggerid, entry.message);
    log(log_msg);
}


int PhysicalLayerStringToInt(char* input)
{
    static const std::unordered_map<string, int> map = {
        {"TCP", 1},
        {"TCP-TLS", 2},
        {"RS232", 3},
        {"RS485", 4}
    };
    auto iter = map.find(input);
    return (iter != map.end()) ? iter->second : -1;
}


//------------------------------------------------------------------
//Function to begin DNP3 server functions
//------------------------------------------------------------------
void dnp3StartServer(int instance_number) {


    tags_address_array[instance_number] = (uint16_t*) malloc(DNP_Slave_Driver_Instances[instance_number].number_of_tags * sizeof(uint16_t));
    

    for (int m= 0; m < DNP_Slave_Driver_Instances[instance_number].number_of_tags; m++)
    {
        tags_address_array[instance_number][m] = DNP_Slave_Driver_Instances[instance_number].Tags[m].Address;

    }
    // because use of pointer to pointer to create 2-D array, sizeof not work properly
    // int size = DNP_Slave_Driver_Instances[instance_number].number_of_tags;
    int size = DNP_Slave_Driver_Instances[instance_number].number_of_tags;
    std::sort(tags_address_array[instance_number], tags_address_array[instance_number] + size);



    map_address_to_index(instance_number);

    const uint32_t FILTERS = levels::NORMAL;

    // Allocate a single thread to the pool since this is a single outstation
    // Log messages to the console
    DNP3Manager manager(1, ConsoleLogger::Create());


    char dnp_id[100];
    uint16_t port;
    string endpoint;
    string caCertificate;
    string certificateChain;
    string privateKey;
    std::error_code ec;
    SerialSettings serialsettings;
    auto channel = std::shared_ptr<asiodnp3::IChannel>();


    switch(PhysicalLayerStringToInt(DNP_Slave_Driver_Instances[instance_number].Options.PhysicalLayer))
    {
        case (1):

            snprintf(dnp_id, sizeof(dnp_id) , "instance %d :: DNP3_Server(TCP)", instance_number);

            port = DNP_Slave_Driver_Instances[instance_number].Options.SocketPort;
            endpoint.assign(DNP_Slave_Driver_Instances[instance_number].Options.LocalIPAddress);
            sprintf((char *)log_msg, "*** %s :: endpoint: %s :: ipaddress: %s :: port: %d ***\n",dnp_id, endpoint.c_str(), DNP_Slave_Driver_Instances[instance_number].Options.LocalIPAddress, port);
            log(log_msg);
            // Create a listener server
            channel = manager.AddTCPServer(dnp_id, FILTERS, ChannelRetry::Default(), "0.0.0.0", port, PrintingChannelListener::Create());
            break;

        case (2):

            snprintf(dnp_id, sizeof(dnp_id) , "instance %d :: DNP3_Server(TCP-TLS)", instance_number);

            port = DNP_Slave_Driver_Instances[instance_number].Options.SocketPort;
            endpoint.assign(DNP_Slave_Driver_Instances[instance_number].Options.LocalIPAddress);
            caCertificate = "";
            certificateChain = "";
            privateKey = "";
            
            // Create a TCP server (listener)
            channel = manager.AddTLSServer(
                            dnp_id,
                            FILTERS,
                            ChannelRetry::Default(),
                            DNP_Slave_Driver_Instances[instance_number].Options.LocalIPAddress,
                            port,
                            TLSConfig(
                                caCertificate,
                                certificateChain,
                                privateKey,
                                2
                            ),
                            PrintingChannelListener::Create(),
                            ec
                        );

            if (ec)
            {
                std::cout << "Unable to create tls server: " << ec.message() << std::endl;
                return ec.value();
            }
            break;

        case(3):
            snprintf(dnp_id, sizeof(dnp_id) , "instance %d :: DNP3_Server(Serial:RS232)", instance_number);

            
            serialsettings.deviceName = (string)COM_Port_Map[DNP_Slave_Driver_Instances[instance_number].Options.COMPort];
            serialsettings.baud = DNP_Slave_Driver_Instances[instance_number].Options.BaudRate;
            serialsettings.dataBits = DNP_Slave_Driver_Instances[instance_number].Options.DataBits;
            /*
            **** define "Parity" value in .cfg file based on below enum **** 
            enum class Parity : uint8_t
                {
                Even = 1,
                Odd = 2,
                None = 0
                };
            */
            serialsettings.parity = ParityFromType((uint8_t)DNP_Slave_Driver_Instances[instance_number].Options.Parity);
            /*
             **** define "StopBits" value in .cfg file based on below enum ****
            enum class StopBits : uint8_t
                {
                One = 1,
                OnePointFive = 2,
                Two = 3,
                None = 0
                };
            */
            serialsettings.stopBits = StopBitsFromType((uint8_t)DNP_Slave_Driver_Instances[instance_number].Options.StopBits);
            /*
            **** define "FlowControl" value in .cfg file based on below enum ****
            enum class FlowControl : uint8_t
                {
                Hardware = 1,
                XONXOFF = 2,
                None = 0
                };
            */
            serialsettings.flowType = FlowControlFromType((uint8_t)DNP_Slave_Driver_Instances[instance_number].Options.FlowControl);

            serialsettings.asyncOpenDelay = openpal::TimeDuration::Milliseconds(500);

            // Create a TCP server (listener)
            channel = manager.AddSerial(
                            dnp_id,
                            FILTERS,
                            ChannelRetry::Default(),
                            serialsettings,
                            PrintingChannelListener::Create()
                        );
            break;

        case (4):

            snprintf(dnp_id, sizeof(dnp_id) , "instance %d :: DNP3_Server(Serial:RS485)", instance_number);

            
            serialsettings.deviceName = (string)COM_Port_Map[DNP_Slave_Driver_Instances[instance_number].Options.COMPort];
            serialsettings.baud = DNP_Slave_Driver_Instances[instance_number].Options.BaudRate;
            serialsettings.dataBits = DNP_Slave_Driver_Instances[instance_number].Options.DataBits;
            /*
            **** define "Parity" value in .cfg file based on below enum **** 
            enum class Parity : uint8_t
                {
                Even = 1,
                Odd = 2,
                None = 0
                };
            */
            serialsettings.parity = ParityFromType((uint8_t)DNP_Slave_Driver_Instances[instance_number].Options.Parity);
            /*
             **** define "StopBits" value in .cfg file based on below enum ****
            enum class StopBits : uint8_t
                {
                One = 1,
                OnePointFive = 2,
                Two = 3,
                None = 0
                };
            */
            serialsettings.stopBits = StopBitsFromType((uint8_t)DNP_Slave_Driver_Instances[instance_number].Options.StopBits);
            /*
            **** define "FlowControl" value in .cfg file based on below enum ****
            enum class FlowControl : uint8_t
                {
                Hardware = 1,
                XONXOFF = 2,
                None = 0
                };
            */
            serialsettings.flowType = FlowControlFromType((uint8_t)DNP_Slave_Driver_Instances[instance_number].Options.FlowControl);
            // TODO: add this parameter to .cfg file and change below line
            serialsettings.asyncOpenDelay = openpal::TimeDuration::Milliseconds(500);

            // Create a TCP server (listener)
            channel = manager.AddSerial(
                            dnp_id,
                            FILTERS,
                            ChannelRetry::Default(),
                            serialsettings,
                            PrintingChannelListener::Create()
                        );
        break;
    }
    

	// The main object for a outstation. The defaults are useable,
	// but understanding the options are important.
    int number_of_tags= DNP_Slave_Driver_Instances[instance_number].number_of_tags;


    determine_number_of_points_of_each_types(instance_number);


    // sprintf((char *)log_msg, "$$$$$$$$$$$$$$$$$$$$$$$ instance: %d :: Number of points:: %d :: %d :: %d :: %d ::\n", instance_number, 
    //                                                                                                                     number_of_points_of_each_type[instance_number].number_of_binary_point,
    //                                                                                                                     number_of_points_of_each_type[instance_number].number_of_analog_point, 
    //                                                                                                                     number_of_points_of_each_type[instance_number].number_of_binary_status_point, 
    //                                                                                                                     number_of_points_of_each_type[instance_number].number_of_analog_status_point);
    // log(log_msg);

    DatabaseSizes size_of_points_database = DatabaseSizes((uint16_t) number_of_points_of_each_type[instance_number].number_of_binary_point,
                                                            (uint16_t) 0,
                                                            (uint16_t) number_of_points_of_each_type[instance_number].number_of_analog_point,
                                                            (uint16_t) 0,
                                                            (uint16_t) 0,
                                                            (uint16_t) number_of_points_of_each_type[instance_number].number_of_binary_status_point,
                                                            (uint16_t) number_of_points_of_each_type[instance_number].number_of_analog_status_point,
                                                            (uint16_t) 0);

	// OutstationStackConfig config(DatabaseSizes::AllTypes(number_of_tags));

    // int count = 20;
	// OutstationStackConfig config(DatabaseSizes(count, count, count, count, count, count, count, count));

	OutstationStackConfig config(size_of_points_database);

	// OutstationStackConfig config(DatabaseSizes::AllTypes(300));



    sprintf((char *)log_msg, "*** Before configs ***\n");
    log(log_msg);

    parseDNP3Config(config, instance_number);

    config_datapoints(config, instance_number);

    sprintf((char *)log_msg, "*** After configs ***\n");
    log(log_msg);

    // Create a new outstation with a log level, command handler, and
    // config info this returns a thread-safe interface used for
    // updating the outstation's database.
    std::shared_ptr<ICommandHandler> cc = std::make_shared<CommandCallback>(instance_number);
    auto outstation = channel->AddOutstation(
            "outstation",
            cc, 
            DefaultOutstationApplication::Create(), 
            config
    );


    sprintf((char *)log_msg, "*** After Make Outstation & Before Enable outstation ***\n");
    log(log_msg);

    // Enable the outstation and start communications
    outstation->Enable();
    printf("DNP3 Enabled \n");


    sprintf((char *)log_msg, "*** After Enable Outstation ***\n");
    log(log_msg);



    sprintf((char *)log_msg, "*** After Delay ***\n");
    log(log_msg);
    // mapUnusedIO();

    // Continuously update
    struct timespec timer_start;
    clock_gettime(CLOCK_MONOTONIC, &timer_start);
    
    // long long DNP_Cycle = (long long)DNP_Slave_Driver_Instances[instance_number].Options.PhysicalLayerScanTime * 1000000LL;
    
    while(1) 
    {
        // sprintf((char *)log_msg, "*** in loop ***\n");
        // log(log_msg);
        pthread_mutex_lock(&bufferLock);
        update_vals(outstation, instance_number);
        pthread_mutex_unlock(&bufferLock);
        sleep_until(&timer_start, OPLC_CYCLE);
    }
    
    printf("Shutting down DNP3 server\n");
    channel->Shutdown();
    printf("DNP3 Server deactivated\n");
}
