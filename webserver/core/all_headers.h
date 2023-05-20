#include "DRVTags.h"
#include "GlueVars_functions.h"


extern LIO_Driver_Struct           LIO_Driver_Instance;
extern DNP_Slave_Driver_Struct     DNP_Slave_Driver_Instances[2];
extern Modbus_Master_Driver_Struct Modbus_Master_Driver_Instances[2];
extern Database_Driver_Struct      Database_Driver_Instances[1];


void declare_and_init_drvtags();
void setDRVTagsFromVars();
void setVarsFromDRVTags();