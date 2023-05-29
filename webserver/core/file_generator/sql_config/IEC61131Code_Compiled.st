TYPE
DataType1 : BOOL;
END_TYPE
PROGRAM POU_2
VAR
	V_TON1 : TON;
END_VAR

VAR_EXTERNAL
	I : ARRAY [0..255] OF LWORD;
	Q : ARRAY [0..255] OF LWORD;
	M : ARRAY [0..255] OF LWORD;
	sqlite_tag1 : BOOL;
	sqlite_tag1_STATUS : UDINT;
	sqlite_tag1_DT : DT;
	sqlite_tag2 : SINT;
	sqlite_tag2_STATUS : UDINT;
	sqlite_tag2_DT : DT;
	sqlite_tag3 : INT;
	sqlite_tag3_STATUS : UDINT;
	sqlite_tag3_DT : DT;
	sqlite_tag4 : DINT;
	sqlite_tag4_STATUS : UDINT;
	sqlite_tag4_DT : DT;
	sqlite_tag5 : LINT;
	sqlite_tag5_STATUS : UDINT;
	sqlite_tag5_DT : DT;
	sqlite_tag6 : USINT;
	sqlite_tag6_STATUS : UDINT;
	sqlite_tag6_DT : DT;
	sqlite_tag7 : UINT;
	sqlite_tag7_STATUS : UDINT;
	sqlite_tag7_DT : DT;
	sqlite_tag8 : UDINT;
	sqlite_tag8_STATUS : UDINT;
	sqlite_tag8_DT : DT;
	sqlite_tag9 : ULINT;
	sqlite_tag9_STATUS : UDINT;
	sqlite_tag9_DT : DT;
	sqlite_tag10 : REAL;
	sqlite_tag10_STATUS : UDINT;
	sqlite_tag10_DT : DT;
	sqlite_tag11 : LREAL;
	sqlite_tag11_STATUS : UDINT;
	sqlite_tag11_DT : DT;
	sqlite_tag12 : UINT;
	sqlite_tag12_STATUS : UDINT;
	sqlite_tag12_DT : DT;
	sqlite_tag13 : UINT;
	sqlite_tag13_STATUS : UDINT;
	sqlite_tag13_DT : DT;
	LIO_DITag0 : BOOL;
	LIO_DITag0_STATUS : UDINT;
	LIO_DITag0_DT : DT;
	LIO_DITag1 : BOOL;
	LIO_DITag1_STATUS : UDINT;
	LIO_DITag1_DT : DT;
	LIO_DITag2 : BOOL;
	LIO_DITag2_STATUS : UDINT;
	LIO_DITag2_DT : DT;
	LIO_DITag3 : BOOL;
	LIO_DITag3_STATUS : UDINT;
	LIO_DITag3_DT : DT;
	LIO_DITag4 : BOOL;
	LIO_DITag4_STATUS : UDINT;
	LIO_DITag4_DT : DT;
	LIO_DITag5 : BOOL;
	LIO_DITag5_STATUS : UDINT;
	LIO_DITag5_DT : DT;
	LIO_DITag6 : BOOL;
	LIO_DITag6_STATUS : UDINT;
	LIO_DITag6_DT : DT;
	LIO_DITag7 : BOOL;
	LIO_DITag7_STATUS : UDINT;
	LIO_DITag7_DT : DT;
	LIO_DOTag0 : BOOL;
	LIO_DOTag0_STATUS : UDINT;
	LIO_DOTag0_DT : DT;
	LIO_DOTag1 : BOOL;
	LIO_DOTag1_STATUS : UDINT;
	LIO_DOTag1_DT : DT;
	LIO_DOTag2 : BOOL;
	LIO_DOTag2_STATUS : UDINT;
	LIO_DOTag2_DT : DT;
	LIO_DOTag3 : BOOL;
	LIO_DOTag3_STATUS : UDINT;
	LIO_DOTag3_DT : DT;
	LIO_AITag0 : UINT;
	LIO_AITag0_STATUS : UDINT;
	LIO_AITag0_DT : DT;
	LIO_AITag1 : UINT;
	LIO_AITag1_STATUS : UDINT;
	LIO_AITag1_DT : DT;
	LIO_AITag2 : UINT;
	LIO_AITag2_STATUS : UDINT;
	LIO_AITag2_DT : DT;
	LIO_AITag3 : UINT;
	LIO_AITag3_STATUS : UDINT;
	LIO_AITag3_DT : DT;
	LIO_AOTag0 : UINT;
	LIO_AOTag0_STATUS : UDINT;
	LIO_AOTag0_DT : DT;
	LIO_CNTTag0 : UDINT;
	LIO_CNTTag0_STATUS : UDINT;
	LIO_CNTTag0_DT : DT;
	LIO_CNTTag0_CONTROL : LINT;
	LIO_CNTTag1 : UDINT;
	LIO_CNTTag1_STATUS : UDINT;
	LIO_CNTTag1_DT : DT;
	LIO_CNTTag1_CONTROL : LINT;
	LIO_CNTTag2 : UDINT;
	LIO_CNTTag2_STATUS : UDINT;
	LIO_CNTTag2_DT : DT;
	LIO_CNTTag2_CONTROL : LINT;
	LIO_CNTTag3 : UDINT;
	LIO_CNTTag3_STATUS : UDINT;
	LIO_CNTTag3_DT : DT;
	LIO_CNTTag3_CONTROL : LINT;
	LIO_SENTag0 : REAL;
	LIO_SENTag0_STATUS : UDINT;
	LIO_SENTag0_DT : DT;
	LIO_SENTag1 : REAL;
	LIO_SENTag1_STATUS : UDINT;
	LIO_SENTag1_DT : DT;
	LIO_Reset : USINT;
	LIO_Reset_STATUS : UDINT;
	LIO_Reset_DT : DT;
	LIO_CPU_Usage : REAL;
	LIO_CPU_Usage_STATUS : UDINT;
	LIO_CPU_Usage_DT : DT;
	LIO_Total_RAM : REAL;
	LIO_Total_RAM_STATUS : UDINT;
	LIO_Total_RAM_DT : DT;
	LIO_FreeSpace_RAM : REAL;
	LIO_FreeSpace_RAM_STATUS : UDINT;
	LIO_FreeSpace_RAM_DT : DT;
	LIO_Used_RAM : REAL;
	LIO_Used_RAM_STATUS : UDINT;
	LIO_Used_RAM_DT : DT;
	LIO_Total_Flash : REAL;
	LIO_Total_Flash_STATUS : UDINT;
	LIO_Total_Flash_DT : DT;
	LIO_FreeSpace_Flash : REAL;
	LIO_FreeSpace_Flash_STATUS : UDINT;
	LIO_FreeSpace_Flash_DT : DT;
	LIO_Used_Flash : REAL;
	LIO_Used_Flash_STATUS : UDINT;
	LIO_Used_Flash_DT : DT;
	LIO_Total_SDCard : REAL;
	LIO_Total_SDCard_STATUS : UDINT;
	LIO_Total_SDCard_DT : DT;
	LIO_FreeSpace_SDCard : REAL;
	LIO_FreeSpace_SDCard_STATUS : UDINT;
	LIO_FreeSpace_SDCard_DT : DT;
	LIO_Used_SDCard : REAL;
	LIO_Used_SDCard_STATUS : UDINT;
	LIO_Used_SDCard_DT : DT;
	LIO_Total_NVRAM : REAL;
	LIO_Total_NVRAM_STATUS : UDINT;
	LIO_Total_NVRAM_DT : DT;
	LIO_FreeSpace_NVRAM : REAL;
	LIO_FreeSpace_NVRAM_STATUS : UDINT;
	LIO_FreeSpace_NVRAM_DT : DT;
	LIO_Used_NVRAM : REAL;
	LIO_Used_NVRAM_STATUS : UDINT;
	LIO_Used_NVRAM_DT : DT;
	LIO_CANBUS_Status : USINT;
	LIO_CANBUS_Status_STATUS : UDINT;
	LIO_CANBUS_Status_DT : DT;
	LIO_Buzzer : USINT;
	LIO_Buzzer_STATUS : UDINT;
	LIO_Buzzer_DT : DT;
	LIO_3GModemON : USINT;
	LIO_3GModemON_STATUS : UDINT;
	LIO_3GModemON_DT : DT;
	LIO_3GModemSignallevel : USINT;
	LIO_3GModemSignallevel_STATUS : UDINT;
	LIO_3GModemSignallevel_DT : DT;
	LIO_3GConnected : BOOL;
	LIO_3GConnected_STATUS : UDINT;
	LIO_3GConnected_DT : DT;
	LIO_3GModemSecIP1 : USINT;
	LIO_3GModemSecIP1_STATUS : UDINT;
	LIO_3GModemSecIP1_DT : DT;
	LIO_3GModemSecIP2 : USINT;
	LIO_3GModemSecIP2_STATUS : UDINT;
	LIO_3GModemSecIP2_DT : DT;
	LIO_3GModemSecIP3 : USINT;
	LIO_3GModemSecIP3_STATUS : UDINT;
	LIO_3GModemSecIP3_DT : DT;
	LIO_3GModemSecIP4 : USINT;
	LIO_3GModemSecIP4_STATUS : UDINT;
	LIO_3GModemSecIP4_DT : DT;
	LIO_Logic_Processing_Time : REAL;
	LIO_Logic_Processing_Time_STATUS : UDINT;
	LIO_Logic_Processing_Time_DT : DT;
	LIO_First_Scan : BOOL;
	LIO_First_Scan_STATUS : UDINT;
	LIO_First_Scan_DT : DT;
END_VAR
V_TON1( IN := 1 ,
	 PT := T#5s  );
LIO_DOTag0 := V_TON1.Q ;

END_PROGRAM

CONFIGURATION Config0
RESOURCE Res0 ON PLC

VAR_GLOBAL
	I : ARRAY [0..255] OF LWORD;
	Q : ARRAY [0..255] OF LWORD;
	M : ARRAY [0..255] OF LWORD;
	sqlite_tag1 : BOOL;(*Output*)
	sqlite_tag1_STATUS : UDINT;(*Output*)
	sqlite_tag1_DT : DT;(*Output*)
	sqlite_tag2 : SINT;(*Output*)
	sqlite_tag2_STATUS : UDINT;(*Output*)
	sqlite_tag2_DT : DT;(*Output*)
	sqlite_tag3 : INT;(*Output*)
	sqlite_tag3_STATUS : UDINT;(*Output*)
	sqlite_tag3_DT : DT;(*Output*)
	sqlite_tag4 : DINT;(*Output*)
	sqlite_tag4_STATUS : UDINT;(*Output*)
	sqlite_tag4_DT : DT;(*Output*)
	sqlite_tag5 : LINT;(*Output*)
	sqlite_tag5_STATUS : UDINT;(*Output*)
	sqlite_tag5_DT : DT;(*Output*)
	sqlite_tag6 : USINT;(*Output*)
	sqlite_tag6_STATUS : UDINT;(*Output*)
	sqlite_tag6_DT : DT;(*Output*)
	sqlite_tag7 : UINT;(*Output*)
	sqlite_tag7_STATUS : UDINT;(*Output*)
	sqlite_tag7_DT : DT;(*Output*)
	sqlite_tag8 : UDINT;(*Output*)
	sqlite_tag8_STATUS : UDINT;(*Output*)
	sqlite_tag8_DT : DT;(*Output*)
	sqlite_tag9 : ULINT;(*Output*)
	sqlite_tag9_STATUS : UDINT;(*Output*)
	sqlite_tag9_DT : DT;(*Output*)
	sqlite_tag10 : REAL;(*Output*)
	sqlite_tag10_STATUS : UDINT;(*Output*)
	sqlite_tag10_DT : DT;(*Output*)
	sqlite_tag11 : LREAL;(*Output*)
	sqlite_tag11_STATUS : UDINT;(*Output*)
	sqlite_tag11_DT : DT;(*Output*)
	sqlite_tag12 : UINT;(*Input*)
	sqlite_tag12_STATUS : UDINT;(*Input*)
	sqlite_tag12_DT : DT;(*Input*)
	sqlite_tag13 : UINT;(*Output*)
	sqlite_tag13_STATUS : UDINT;(*Output*)
	sqlite_tag13_DT : DT;(*Output*)
	LIO_DITag0 : BOOL := 0;(*Input*)
	LIO_DITag0_STATUS : UDINT;(*Input*)
	LIO_DITag0_DT : DT;(*Input*)
	LIO_DITag1 : BOOL := 0;(*Input*)
	LIO_DITag1_STATUS : UDINT;(*Input*)
	LIO_DITag1_DT : DT;(*Input*)
	LIO_DITag2 : BOOL := 0;(*Input*)
	LIO_DITag2_STATUS : UDINT;(*Input*)
	LIO_DITag2_DT : DT;(*Input*)
	LIO_DITag3 : BOOL := 0;(*Input*)
	LIO_DITag3_STATUS : UDINT;(*Input*)
	LIO_DITag3_DT : DT;(*Input*)
	LIO_DITag4 : BOOL := 0;(*Input*)
	LIO_DITag4_STATUS : UDINT;(*Input*)
	LIO_DITag4_DT : DT;(*Input*)
	LIO_DITag5 : BOOL := 0;(*Input*)
	LIO_DITag5_STATUS : UDINT;(*Input*)
	LIO_DITag5_DT : DT;(*Input*)
	LIO_DITag6 : BOOL := 0;(*Input*)
	LIO_DITag6_STATUS : UDINT;(*Input*)
	LIO_DITag6_DT : DT;(*Input*)
	LIO_DITag7 : BOOL := 0;(*Input*)
	LIO_DITag7_STATUS : UDINT;(*Input*)
	LIO_DITag7_DT : DT;(*Input*)
	LIO_DOTag0 : BOOL := 0;(*Output*)
	LIO_DOTag0_STATUS : UDINT;(*Output*)
	LIO_DOTag0_DT : DT;(*Output*)
	LIO_DOTag1 : BOOL := 0;(*Output*)
	LIO_DOTag1_STATUS : UDINT;(*Output*)
	LIO_DOTag1_DT : DT;(*Output*)
	LIO_DOTag2 : BOOL := 0;(*Output*)
	LIO_DOTag2_STATUS : UDINT;(*Output*)
	LIO_DOTag2_DT : DT;(*Output*)
	LIO_DOTag3 : BOOL := 0;(*Output*)
	LIO_DOTag3_STATUS : UDINT;(*Output*)
	LIO_DOTag3_DT : DT;(*Output*)
	LIO_AITag0 : UINT := 0;(*Input*)
	LIO_AITag0_STATUS : UDINT;(*Input*)
	LIO_AITag0_DT : DT;(*Input*)
	LIO_AITag1 : UINT := 0;(*Input*)
	LIO_AITag1_STATUS : UDINT;(*Input*)
	LIO_AITag1_DT : DT;(*Input*)
	LIO_AITag2 : UINT := 0;(*Input*)
	LIO_AITag2_STATUS : UDINT;(*Input*)
	LIO_AITag2_DT : DT;(*Input*)
	LIO_AITag3 : UINT := 0;(*Input*)
	LIO_AITag3_STATUS : UDINT;(*Input*)
	LIO_AITag3_DT : DT;(*Input*)
	LIO_AOTag0 : UINT := 0;(*Output*)
	LIO_AOTag0_STATUS : UDINT;(*Output*)
	LIO_AOTag0_DT : DT;(*Output*)
	LIO_CNTTag0 : UDINT := 0;(*Input*)
	LIO_CNTTag0_STATUS : UDINT;(*Input*)
	LIO_CNTTag0_DT : DT;(*Input*)
	LIO_CNTTag0_CONTROL : LINT;(*Output*)
	LIO_CNTTag1 : UDINT := 0;(*Input*)
	LIO_CNTTag1_STATUS : UDINT;(*Input*)
	LIO_CNTTag1_DT : DT;(*Input*)
	LIO_CNTTag1_CONTROL : LINT;(*Output*)
	LIO_CNTTag2 : UDINT := 0;(*Input*)
	LIO_CNTTag2_STATUS : UDINT;(*Input*)
	LIO_CNTTag2_DT : DT;(*Input*)
	LIO_CNTTag2_CONTROL : LINT;(*Output*)
	LIO_CNTTag3 : UDINT := 0;(*Input*)
	LIO_CNTTag3_STATUS : UDINT;(*Input*)
	LIO_CNTTag3_DT : DT;(*Input*)
	LIO_CNTTag3_CONTROL : LINT;(*Output*)
	LIO_SENTag0 : REAL := 0;(*Input*)
	LIO_SENTag0_STATUS : UDINT;(*Input*)
	LIO_SENTag0_DT : DT;(*Input*)
	LIO_SENTag1 : REAL := 0;(*Input*)
	LIO_SENTag1_STATUS : UDINT;(*Input*)
	LIO_SENTag1_DT : DT;(*Input*)
	LIO_Reset : USINT := 0;(*Output*)
	LIO_Reset_STATUS : UDINT;(*Output*)
	LIO_Reset_DT : DT;(*Output*)
	LIO_CPU_Usage : REAL := 0;(*Input*)
	LIO_CPU_Usage_STATUS : UDINT;(*Input*)
	LIO_CPU_Usage_DT : DT;(*Input*)
	LIO_Total_RAM : REAL := 0;(*Input*)
	LIO_Total_RAM_STATUS : UDINT;(*Input*)
	LIO_Total_RAM_DT : DT;(*Input*)
	LIO_FreeSpace_RAM : REAL := 0;(*Input*)
	LIO_FreeSpace_RAM_STATUS : UDINT;(*Input*)
	LIO_FreeSpace_RAM_DT : DT;(*Input*)
	LIO_Used_RAM : REAL := 0;(*Input*)
	LIO_Used_RAM_STATUS : UDINT;(*Input*)
	LIO_Used_RAM_DT : DT;(*Input*)
	LIO_Total_Flash : REAL := 0;(*Input*)
	LIO_Total_Flash_STATUS : UDINT;(*Input*)
	LIO_Total_Flash_DT : DT;(*Input*)
	LIO_FreeSpace_Flash : REAL := 0;(*Input*)
	LIO_FreeSpace_Flash_STATUS : UDINT;(*Input*)
	LIO_FreeSpace_Flash_DT : DT;(*Input*)
	LIO_Used_Flash : REAL := 0;(*Input*)
	LIO_Used_Flash_STATUS : UDINT;(*Input*)
	LIO_Used_Flash_DT : DT;(*Input*)
	LIO_Total_SDCard : REAL := 0;(*Input*)
	LIO_Total_SDCard_STATUS : UDINT;(*Input*)
	LIO_Total_SDCard_DT : DT;(*Input*)
	LIO_FreeSpace_SDCard : REAL := 0;(*Input*)
	LIO_FreeSpace_SDCard_STATUS : UDINT;(*Input*)
	LIO_FreeSpace_SDCard_DT : DT;(*Input*)
	LIO_Used_SDCard : REAL := 0;(*Input*)
	LIO_Used_SDCard_STATUS : UDINT;(*Input*)
	LIO_Used_SDCard_DT : DT;(*Input*)
	LIO_Total_NVRAM : REAL := 0;(*Input*)
	LIO_Total_NVRAM_STATUS : UDINT;(*Input*)
	LIO_Total_NVRAM_DT : DT;(*Input*)
	LIO_FreeSpace_NVRAM : REAL := 0;(*Input*)
	LIO_FreeSpace_NVRAM_STATUS : UDINT;(*Input*)
	LIO_FreeSpace_NVRAM_DT : DT;(*Input*)
	LIO_Used_NVRAM : REAL := 0;(*Input*)
	LIO_Used_NVRAM_STATUS : UDINT;(*Input*)
	LIO_Used_NVRAM_DT : DT;(*Input*)
	LIO_CANBUS_Status : USINT := 0;(*Input*)
	LIO_CANBUS_Status_STATUS : UDINT;(*Input*)
	LIO_CANBUS_Status_DT : DT;(*Input*)
	LIO_Buzzer : USINT := 0;(*Output*)
	LIO_Buzzer_STATUS : UDINT;(*Output*)
	LIO_Buzzer_DT : DT;(*Output*)
	LIO_3GModemON : USINT := 0;(*Output*)
	LIO_3GModemON_STATUS : UDINT;(*Output*)
	LIO_3GModemON_DT : DT;(*Output*)
	LIO_3GModemSignallevel : USINT := 0;(*Input*)
	LIO_3GModemSignallevel_STATUS : UDINT;(*Input*)
	LIO_3GModemSignallevel_DT : DT;(*Input*)
	LIO_3GConnected : BOOL := 0;(*Input*)
	LIO_3GConnected_STATUS : UDINT;(*Input*)
	LIO_3GConnected_DT : DT;(*Input*)
	LIO_3GModemSecIP1 : USINT := 0;(*Input*)
	LIO_3GModemSecIP1_STATUS : UDINT;(*Input*)
	LIO_3GModemSecIP1_DT : DT;(*Input*)
	LIO_3GModemSecIP2 : USINT := 0;(*Input*)
	LIO_3GModemSecIP2_STATUS : UDINT;(*Input*)
	LIO_3GModemSecIP2_DT : DT;(*Input*)
	LIO_3GModemSecIP3 : USINT := 0;(*Input*)
	LIO_3GModemSecIP3_STATUS : UDINT;(*Input*)
	LIO_3GModemSecIP3_DT : DT;(*Input*)
	LIO_3GModemSecIP4 : USINT := 0;(*Input*)
	LIO_3GModemSecIP4_STATUS : UDINT;(*Input*)
	LIO_3GModemSecIP4_DT : DT;(*Input*)
	LIO_Logic_Processing_Time : REAL := 0;(*Input*)
	LIO_Logic_Processing_Time_STATUS : UDINT;(*Input*)
	LIO_Logic_Processing_Time_DT : DT;(*Input*)
	LIO_First_Scan : BOOL := 0;(*Input*)
	LIO_First_Scan_STATUS : UDINT;(*Input*)
	LIO_First_Scan_DT : DT;(*Input*)
END_VAR
TASK Task1(INTERVAL:= T#100ms, PRIORITY := 1);
PROGRAM INSTANCE_2 WITH Task1 : POU_2;
END_RESOURCE
END_CONFIGURATION
