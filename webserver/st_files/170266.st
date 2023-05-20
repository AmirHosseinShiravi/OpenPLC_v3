TYPE
DataType1 : BOOL;
END_TYPE
PROGRAM POU_2
VAR_TEMP
	MOVE_ENO_6 : BOOL;
	MOVE_OUT_6 : BOOL;
END_VAR

VAR_EXTERNAL
	I : ARRAY [0..255] OF LWORD;
	Q : ARRAY [0..255] OF LWORD;
	M : ARRAY [0..255] OF LWORD;
	rio_p1var1_Tag2999 : REAL;
	rio_p1var1_Tag3001 : REAL;
	rio_p1var1_Tag3003 : REAL;
	rio_p1var1_Tag3005 : REAL;
	rio_p1var1_Tag3007 : REAL;
	rio_p1var1_Tag3009 : REAL;
	rio_p1var1_Tag3011 : REAL;
	rio_p1var1_Tag3013 : REAL;
	rio_p1var1_Tag3015 : REAL;
	rio_p1var1_Tag3017 : REAL;
	rio_p1var1_Tag3019 : REAL;
	rio_p1var1_Tag3021 : REAL;
	rio_p1var1_Tag3023 : REAL;
	rio_p1var1_Tag3025 : REAL;
	rio_p1var1_Tag3027 : REAL;
	rio_p1var1_Tag3029 : REAL;
	rio_p1var1_Tag3031 : REAL;
	rio_p1var1_OnLine : UINT;
	rio_p1var1_SendNum : UINT;
	rio_p1var1_RecNum : UINT;
	rio_p1var1_Error : UINT;
	rio_p1var1_Poll : UINT;
	rio_p1var2_Tag3053 : REAL;
	rio_p1var2_Tag3055 : REAL;
	rio_p1var2_Tag3057 : REAL;
	rio_p1var2_Tag3059 : REAL;
	rio_p1var2_Tag3061 : REAL;
	rio_p1var2_Tag3063 : REAL;
	rio_p1var2_Tag3065 : REAL;
	rio_p1var2_Tag3067 : REAL;
	rio_p1var2_Tag3069 : REAL;
	rio_p1var2_Tag3071 : REAL;
	rio_p1var2_Tag3073 : REAL;
	rio_p1var2_Tag3075 : REAL;
	rio_p1var2_Tag3077 : REAL;
	rio_p1var2_Tag3079 : REAL;
	rio_p1var2_Tag3081 : REAL;
	rio_p1var2_Tag3083 : REAL;
	rio_p1var2_OnLine : UINT;
	rio_p1var2_SendNum : UINT;
	rio_p1var2_RecNum : UINT;
	rio_p1var2_Error : UINT;
	rio_p1var2_Poll : UINT;
	rio_p1var3_Tag3109 : REAL;
	rio_p1var3_OnLine : UINT;
	rio_p1var3_SendNum : UINT;
	rio_p1var3_RecNum : UINT;
	rio_p1var3_Error : UINT;
	rio_p1var3_Poll : UINT;
	rio_p2var1_Tag2999 : REAL;
	rio_p2var1_Tag3001 : REAL;
	rio_p2var1_Tag3003 : REAL;
	rio_p2var1_Tag3005 : REAL;
	rio_p2var1_Tag3007 : REAL;
	rio_p2var1_Tag3009 : REAL;
	rio_p2var1_Tag3011 : REAL;
	rio_p2var1_Tag3013 : REAL;
	rio_p2var1_Tag3015 : REAL;
	rio_p2var1_Tag3017 : REAL;
	rio_p2var1_Tag3019 : REAL;
	rio_p2var1_Tag3021 : REAL;
	rio_p2var1_Tag3023 : REAL;
	rio_p2var1_Tag3025 : REAL;
	rio_p2var1_Tag3027 : REAL;
	rio_p2var1_Tag3029 : REAL;
	rio_p2var1_Tag3031 : REAL;
	rio_p2var1_OnLine : UINT;
	rio_p2var1_SendNum : UINT;
	rio_p2var1_RecNum : UINT;
	rio_p2var1_Error : UINT;
	rio_p2var1_Poll : UINT;
	rio_p2var2_Tag3053 : REAL;
	rio_p2var2_Tag3055 : REAL;
	rio_p2var2_Tag3057 : REAL;
	rio_p2var2_Tag3059 : REAL;
	rio_p2var2_Tag3061 : REAL;
	rio_p2var2_Tag3063 : REAL;
	rio_p2var2_Tag3065 : REAL;
	rio_p2var2_Tag3067 : REAL;
	rio_p2var2_Tag3069 : REAL;
	rio_p2var2_Tag3071 : REAL;
	rio_p2var2_Tag3073 : REAL;
	rio_p2var2_Tag3075 : REAL;
	rio_p2var2_Tag3077 : REAL;
	rio_p2var2_Tag3079 : REAL;
	rio_p2var2_Tag3081 : REAL;
	rio_p2var2_Tag3083 : REAL;
	rio_p2var2_OnLine : UINT;
	rio_p2var2_SendNum : UINT;
	rio_p2var2_RecNum : UINT;
	rio_p2var2_Error : UINT;
	rio_p2var2_Poll : UINT;
	rio_p2var3_Tag3109 : REAL;
	rio_p2var3_OnLine : UINT;
	rio_p2var3_SendNum : UINT;
	rio_p2var3_RecNum : UINT;
	rio_p2var3_Error : UINT;
	rio_p2var3_Poll : UINT;
	rio_p3var1_Tag2999 : REAL;
	rio_p3var1_Tag3001 : REAL;
	rio_p3var1_Tag3003 : REAL;
	rio_p3var1_Tag3005 : REAL;
	rio_p3var1_Tag3007 : REAL;
	rio_p3var1_Tag3009 : REAL;
	rio_p3var1_Tag3011 : REAL;
	rio_p3var1_Tag3013 : REAL;
	rio_p3var1_Tag3015 : REAL;
	rio_p3var1_Tag3017 : REAL;
	rio_p3var1_Tag3019 : REAL;
	rio_p3var1_Tag3021 : REAL;
	rio_p3var1_Tag3023 : REAL;
	rio_p3var1_Tag3025 : REAL;
	rio_p3var1_Tag3027 : REAL;
	rio_p3var1_Tag3029 : REAL;
	rio_p3var1_Tag3031 : REAL;
	rio_p3var1_OnLine : UINT;
	rio_p3var1_SendNum : UINT;
	rio_p3var1_RecNum : UINT;
	rio_p3var1_Error : UINT;
	rio_p3var1_Poll : UINT;
	rio_p3var2_Tag3053 : REAL;
	rio_p3var2_Tag3055 : REAL;
	rio_p3var2_Tag3057 : REAL;
	rio_p3var2_Tag3059 : REAL;
	rio_p3var2_Tag3061 : REAL;
	rio_p3var2_Tag3063 : REAL;
	rio_p3var2_Tag3065 : REAL;
	rio_p3var2_Tag3067 : REAL;
	rio_p3var2_Tag3069 : REAL;
	rio_p3var2_Tag3071 : REAL;
	rio_p3var2_Tag3073 : REAL;
	rio_p3var2_Tag3075 : REAL;
	rio_p3var2_Tag3077 : REAL;
	rio_p3var2_Tag3079 : REAL;
	rio_p3var2_Tag3081 : REAL;
	rio_p3var2_Tag3083 : REAL;
	rio_p3var2_OnLine : UINT;
	rio_p3var2_SendNum : UINT;
	rio_p3var2_RecNum : UINT;
	rio_p3var2_Error : UINT;
	rio_p3var2_Poll : UINT;
	rio_p3var3_Tag3109 : REAL;
	rio_p3var3_OnLine : UINT;
	rio_p3var3_SendNum : UINT;
	rio_p3var3_RecNum : UINT;
	rio_p3var3_Error : UINT;
	rio_p3var3_Poll : UINT;
	rio_DI9_Tag0 : BOOL;
	rio_DI9_Tag1 : BOOL;
	rio_DI9_Tag2 : BOOL;
	rio_DI9_Tag3 : BOOL;
	rio_DI9_Tag4 : BOOL;
	rio_DI9_Tag5 : BOOL;
	rio_DI9_Tag6 : BOOL;
	rio_DI9_Tag7 : BOOL;
	rio_DI9_OnLine : UINT;
	rio_DI9_SendNum : UINT;
	rio_DI9_RecNum : UINT;
	rio_DI9_Error : UINT;
	rio_DI9_Poll : UINT;
	rio_AI5_Tag0 : INT;
	rio_AI5_Tag1 : INT;
	rio_AI5_Tag2 : INT;
	rio_AI5_Tag3 : INT;
	rio_AI5_OnLine : UINT;
	rio_AI5_SendNum : UINT;
	rio_AI5_RecNum : UINT;
	rio_AI5_Error : UINT;
	rio_AI5_Poll : UINT;
	rio_DO5_Tag0 : BOOL;
	rio_DO5_Tag1 : BOOL;
	rio_DO5_Tag2 : BOOL;
	rio_DO5_Tag3 : BOOL;
	rio_DO5_OnLine : UINT;
	rio_DO5_SendNum : UINT;
	rio_DO5_RecNum : UINT;
	rio_DO5_Error : UINT;
	rio_DO5_Poll : UINT;
	rio_DI17_Tag0 : BOOL;
	rio_DI17_Tag1 : BOOL;
	rio_DI17_Tag2 : BOOL;
	rio_DI17_Tag3 : BOOL;
	rio_DI17_Tag4 : BOOL;
	rio_DI17_Tag5 : BOOL;
	rio_DI17_Tag6 : BOOL;
	rio_DI17_Tag7 : BOOL;
	rio_DI17_OnLine : UINT;
	rio_DI17_SendNum : UINT;
	rio_DI17_RecNum : UINT;
	rio_DI17_Error : UINT;
	rio_DI17_Poll : UINT;
	rio_AI9_Tag0 : INT;
	rio_AI9_OnLine : UINT;
	rio_AI9_SendNum : UINT;
	rio_AI9_RecNum : UINT;
	rio_AI9_Error : UINT;
	rio_AI9_Poll : UINT;
	rio_levelTank485_Tag30032 : REAL;
	rio_levelTank485_OnLine : UINT;
	rio_levelTank485_SendNum : UINT;
	rio_levelTank485_RecNum : UINT;
	rio_levelTank485_Error : UINT;
	rio_levelTank485_Poll : UINT;
	rio_flow_Tag4113 : REAL;
	rio_flow_OnLine : UINT;
	rio_flow_SendNum : UINT;
	rio_flow_RecNum : UINT;
	rio_flow_Error : UINT;
	rio_flow_Poll : UINT;
	rio_cl_Tag4000 : INT;
	rio_cl_Tag4001 : INT;
	rio_cl_Tag4002 : INT;
	rio_cl_Tag4003 : INT;
	rio_cl_Tag4004 : INT;
	rio_cl_Tag4005 : INT;
	rio_cl_Tag4006 : INT;
	rio_cl_Tag4007 : INT;
	rio_cl_Tag4008 : INT;
	rio_cl_Tag4009 : INT;
	rio_cl_Tag4010 : INT;
	rio_cl_Tag4011 : INT;
	rio_cl_Tag4012 : INT;
	rio_cl_Tag4013 : INT;
	rio_cl_Tag4014 : INT;
	rio_cl_Tag4015 : INT;
	rio_cl_OnLine : UINT;
	rio_cl_SendNum : UINT;
	rio_cl_RecNum : UINT;
	rio_cl_Error : UINT;
	rio_cl_Poll : UINT;
	dnp_opendoor : BOOL;
	dnp_opendoor_STATUS : UDINT;
	dnp_alarmAC : BOOL;
	dnp_alarmAC_STATUS : UDINT;
	dnp_SUBSCADApumpag1 : BOOL;
	dnp_SUBSCADApumpag1_STATUS : UDINT;
	dnp_DC24V : BOOL;
	dnp_DC24V_STATUS : UDINT;
	dnp_FaultPumpag1 : BOOL;
	dnp_FaultPumpag1_STATUS : UDINT;
	dnp_OnPumpag1 : BOOL;
	dnp_OnPumpag1_STATUS : UDINT;
	dnp_AutoPumpag1 : BOOL;
	dnp_AutoPumpag1_STATUS : UDINT;
	dnp_FaultPumpag2 : BOOL;
	dnp_FaultPumpag2_STATUS : UDINT;
	dnp_OnPumpag2 : BOOL;
	dnp_OnPumpag2_STATUS : UDINT;
	dnp_AutoPumpag2 : BOOL;
	dnp_AutoPumpag2_STATUS : UDINT;
	dnp_subscadapumpag2 : BOOL;
	dnp_subscadapumpag2_STATUS : UDINT;
	dnp_faultPumpag3 : BOOL;
	dnp_faultPumpag3_STATUS : UDINT;
	dnp_onPumpag3 : BOOL;
	dnp_onPumpag3_STATUS : UDINT;
	dnp_autopumpag3 : BOOL;
	dnp_autopumpag3_STATUS : UDINT;
	dnp_subscadapumpag3 : BOOL;
	dnp_subscadapumpag3_STATUS : UDINT;
	dnp_roomwateralarm : BOOL;
	dnp_roomwateralarm_STATUS : UDINT;
	dnp_TankHIalarm : BOOL;
	dnp_TankHIalarm_STATUS : UDINT;
	dnp_TankLOWalarm : BOOL;
	dnp_TankLOWalarm_STATUS : UDINT;
	dnp_PHIpumpag1 : BOOL;
	dnp_PHIpumpag1_STATUS : UDINT;
	dnp_PLOWpumpag1 : BOOL;
	dnp_PLOWpumpag1_STATUS : UDINT;
	dnp_phase1pumpag1 : BOOL;
	dnp_phase1pumpag1_STATUS : UDINT;
	dnp_phase2pumpag1 : BOOL;
	dnp_phase2pumpag1_STATUS : UDINT;
	dnp_phase3pumpag1 : BOOL;
	dnp_phase3pumpag1_STATUS : UDINT;
	dnp_PHIpumpag2 : BOOL;
	dnp_PHIpumpag2_STATUS : UDINT;
	dnp_PLOWpumpag2 : BOOL;
	dnp_PLOWpumpag2_STATUS : UDINT;
	dnp_phase1pumpag2 : BOOL;
	dnp_phase1pumpag2_STATUS : UDINT;
	dnp_phase2pumpag2 : BOOL;
	dnp_phase2pumpag2_STATUS : UDINT;
	dnp_phase3pumpag2 : BOOL;
	dnp_phase3pumpag2_STATUS : UDINT;
	dnp_PHIpumpag3 : BOOL;
	dnp_PHIpumpag3_STATUS : UDINT;
	dnp_PLOWpumpag3 : BOOL;
	dnp_PLOWpumpag3_STATUS : UDINT;
	dnp_phase1pumpag3 : BOOL;
	dnp_phase1pumpag3_STATUS : UDINT;
	dnp_phase2pumpag3 : BOOL;
	dnp_phase2pumpag3_STATUS : UDINT;
	dnp_phase3pumpag3 : BOOL;
	dnp_phase3pumpag3_STATUS : UDINT;
	dnp_PHITotal : BOOL;
	dnp_PHITotal_STATUS : UDINT;
	dnp_PLOWTotal : BOOL;
	dnp_PLOWTotal_STATUS : UDINT;
	dnp_FHItotal1 : BOOL;
	dnp_FHItotal1_STATUS : UDINT;
	dnp_FLOWtotal1 : BOOL;
	dnp_FLOWtotal1_STATUS : UDINT;
	dnp_FHItotal2 : BOOL;
	dnp_FHItotal2_STATUS : UDINT;
	dnp_FLOWtotal2 : BOOL;
	dnp_FLOWtotal2_STATUS : UDINT;
	dnp_ptpumpag1 : REAL;
	dnp_ptpumpag1_STATUS : UDINT;
	dnp_ptpumpag2 : REAL;
	dnp_ptpumpag2_STATUS : UDINT;
	dnp_ptpumpag3 : REAL;
	dnp_ptpumpag3_STATUS : UDINT;
	dnp_ptCollector : REAL;
	dnp_ptCollector_STATUS : UDINT;
	dnp_mAlevelmaintank : REAL;
	dnp_mAlevelmaintank_STATUS : UDINT;
	dnp_mACHL : DINT;
	dnp_mACHL_STATUS : UDINT;
	dnp_mAWF1 : DINT;
	dnp_mAWF1_STATUS : UDINT;
	dnp_mAWF2 : DINT;
	dnp_mAWF2_STATUS : UDINT;
	dnp_I1pumpag1 : DINT;
	dnp_I1pumpag1_STATUS : UDINT;
	dnp_I2pumpag1 : DINT;
	dnp_I2pumpag1_STATUS : UDINT;
	dnp_I3pumpag1 : DINT;
	dnp_I3pumpag1_STATUS : UDINT;
	dnp_V1pumpag1 : DINT;
	dnp_V1pumpag1_STATUS : UDINT;
	dnp_V2pumpag1 : DINT;
	dnp_V2pumpag1_STATUS : UDINT;
	dnp_V3pumpag1 : DINT;
	dnp_V3pumpag1_STATUS : UDINT;
	dnp_V12pumpag1 : DINT;
	dnp_V12pumpag1_STATUS : UDINT;
	dnp_V23pumpag1 : DINT;
	dnp_V23pumpag1_STATUS : UDINT;
	dnp_V31pumpag1 : DINT;
	dnp_V31pumpag1_STATUS : UDINT;
	dnp_p1pumpag1 : DINT;
	dnp_p1pumpag1_STATUS : UDINT;
	dnp_p2pumpag1 : DINT;
	dnp_p2pumpag1_STATUS : UDINT;
	dnp_p3pumpag1 : DINT;
	dnp_p3pumpag1_STATUS : UDINT;
	dnp_q1pumpag1 : DINT;
	dnp_q1pumpag1_STATUS : UDINT;
	dnp_q2pumpag1 : DINT;
	dnp_q2pumpag1_STATUS : UDINT;
	dnp_q3pumpag1 : DINT;
	dnp_q3pumpag1_STATUS : UDINT;
	dnp_s1pumpag1 : DINT;
	dnp_s1pumpag1_STATUS : UDINT;
	dnp_s2pumpag1 : DINT;
	dnp_s2pumpag1_STATUS : UDINT;
	dnp_s3pumpag1 : DINT;
	dnp_s3pumpag1_STATUS : UDINT;
	dnp_PF1pumpag1 : DINT;
	dnp_PF1pumpag1_STATUS : UDINT;
	dnp_PF2pumpag1 : DINT;
	dnp_PF2pumpag1_STATUS : UDINT;
	dnp_PF3pumpag1 : DINT;
	dnp_PF3pumpag1_STATUS : UDINT;
	dnp_Pavpumpag1 : DINT;
	dnp_Pavpumpag1_STATUS : UDINT;
	dnp_Qavpumpag1 : DINT;
	dnp_Qavpumpag1_STATUS : UDINT;
	dnp_Savpumpag1 : DINT;
	dnp_Savpumpag1_STATUS : UDINT;
	dnp_PFavpumpag1 : DINT;
	dnp_PFavpumpag1_STATUS : UDINT;
	dnp_FREQpumpag1 : DINT;
	dnp_FREQpumpag1_STATUS : UDINT;
	dnp_i1pumpag2 : DINT;
	dnp_i1pumpag2_STATUS : UDINT;
	dnp_i2pumpag2 : DINT;
	dnp_i2pumpag2_STATUS : UDINT;
	dnp_i3pumpag2 : DINT;
	dnp_i3pumpag2_STATUS : UDINT;
	dnp_v1pumpag2 : DINT;
	dnp_v1pumpag2_STATUS : UDINT;
	dnp_v2pumpag2 : DINT;
	dnp_v2pumpag2_STATUS : UDINT;
	dnp_v3pumpag2 : DINT;
	dnp_v3pumpag2_STATUS : UDINT;
	dnp_V12pumpag2 : DINT;
	dnp_V12pumpag2_STATUS : UDINT;
	dnp_V23pumpag2 : DINT;
	dnp_V23pumpag2_STATUS : UDINT;
	dnp_V31pumpag2 : DINT;
	dnp_V31pumpag2_STATUS : UDINT;
	dnp_p1pumpag2 : DINT;
	dnp_p1pumpag2_STATUS : UDINT;
	dnp_p2pumpag2 : DINT;
	dnp_p2pumpag2_STATUS : UDINT;
	dnp_p3pumpag2 : DINT;
	dnp_p3pumpag2_STATUS : UDINT;
	dnp_q1pumpag2 : DINT;
	dnp_q1pumpag2_STATUS : UDINT;
	dnp_q2pumpag2 : DINT;
	dnp_q2pumpag2_STATUS : UDINT;
	dnp_q3pumpag2 : DINT;
	dnp_q3pumpag2_STATUS : UDINT;
	dnp_s1pumpag2 : DINT;
	dnp_s1pumpag2_STATUS : UDINT;
	dnp_s2pumpag2 : DINT;
	dnp_s2pumpag2_STATUS : UDINT;
	dnp_s3pumpag2 : DINT;
	dnp_s3pumpag2_STATUS : UDINT;
	dnp_PF1pumpag2 : DINT;
	dnp_PF1pumpag2_STATUS : UDINT;
	dnp_PF2pumpag2 : DINT;
	dnp_PF2pumpag2_STATUS : UDINT;
	dnp_PF3pumpag2 : DINT;
	dnp_PF3pumpag2_STATUS : UDINT;
	dnp_Pavpumpag2 : DINT;
	dnp_Pavpumpag2_STATUS : UDINT;
	dnp_Qavpumpag2 : DINT;
	dnp_Qavpumpag2_STATUS : UDINT;
	dnp_Savpumpag2 : DINT;
	dnp_Savpumpag2_STATUS : UDINT;
	dnp_PFavpumpag2 : DINT;
	dnp_PFavpumpag2_STATUS : UDINT;
	dnp_FREQpumpag2 : DINT;
	dnp_FREQpumpag2_STATUS : UDINT;
	dnp_i1pumpag3 : DINT;
	dnp_i1pumpag3_STATUS : UDINT;
	dnp_i2pumpag3 : DINT;
	dnp_i2pumpag3_STATUS : UDINT;
	dnp_i3pumpag3 : DINT;
	dnp_i3pumpag3_STATUS : UDINT;
	dnp_v1pumpag3 : DINT;
	dnp_v1pumpag3_STATUS : UDINT;
	dnp_v2pumpag3 : DINT;
	dnp_v2pumpag3_STATUS : UDINT;
	dnp_v3pumpag3 : DINT;
	dnp_v3pumpag3_STATUS : UDINT;
	dnp_V12pumpag3 : DINT;
	dnp_V12pumpag3_STATUS : UDINT;
	dnp_V23pumpag3 : DINT;
	dnp_V23pumpag3_STATUS : UDINT;
	dnp_V31pumpag3 : DINT;
	dnp_V31pumpag3_STATUS : UDINT;
	dnp_p1pumpag3 : DINT;
	dnp_p1pumpag3_STATUS : UDINT;
	dnp_p2pumpag3 : DINT;
	dnp_p2pumpag3_STATUS : UDINT;
	dnp_p3pumpag3 : DINT;
	dnp_p3pumpag3_STATUS : UDINT;
	dnp_q1pumpag3 : DINT;
	dnp_q1pumpag3_STATUS : UDINT;
	dnp_q2pumpag3 : DINT;
	dnp_q2pumpag3_STATUS : UDINT;
	dnp_q3pumpag3 : DINT;
	dnp_q3pumpag3_STATUS : UDINT;
	dnp_s1pumpag3 : DINT;
	dnp_s1pumpag3_STATUS : UDINT;
	dnp_s2pumpag3 : DINT;
	dnp_s2pumpag3_STATUS : UDINT;
	dnp_s3pumpag3 : DINT;
	dnp_s3pumpag3_STATUS : UDINT;
	dnp_PF1pumpag3 : DINT;
	dnp_PF1pumpag3_STATUS : UDINT;
	dnp_PF2pumpag3 : DINT;
	dnp_PF2pumpag3_STATUS : UDINT;
	dnp_PF3pumpag3 : DINT;
	dnp_PF3pumpag3_STATUS : UDINT;
	dnp_Pavpumpag3 : DINT;
	dnp_Pavpumpag3_STATUS : UDINT;
	dnp_Qavpumpag3 : DINT;
	dnp_Qavpumpag3_STATUS : UDINT;
	dnp_Savpumpag3 : DINT;
	dnp_Savpumpag3_STATUS : UDINT;
	dnp_PFavpumpag3 : DINT;
	dnp_PFavpumpag3_STATUS : UDINT;
	dnp_FREQpumpag3 : DINT;
	dnp_FREQpumpag3_STATUS : UDINT;
	dnp_STOPpumpag1 : BOOL;
	dnp_STOPpumpag1_STATUS : UDINT;
	dnp_STOPpumpag2 : BOOL;
	dnp_STOPpumpag2_STATUS : UDINT;
	dnp_STOPpumpag3 : BOOL;
	dnp_STOPpumpag3_STATUS : UDINT;
	dnp_STARTpumpag1 : BOOL;
	dnp_STARTpumpag1_STATUS : UDINT;
	dnp_STARTpumpag2 : BOOL;
	dnp_STARTpumpag2_STATUS : UDINT;
	dnp_STARTpumpag3 : BOOL;
	dnp_STARTpumpag3_STATUS : UDINT;
	dnp_rs485wf1 : DINT;
	dnp_rs485wf1_STATUS : UDINT;
	dnp_rs485wf2 : DINT;
	dnp_rs485wf2_STATUS : UDINT;
	dnp_rs485levelmeter : REAL;
	dnp_rs485levelmeter_STATUS : UDINT;
	dnp_cl : REAL;
	dnp_cl_STATUS : UDINT;
	dnp_tu : REAL;
	dnp_tu_STATUS : UDINT;
	dnp_th : REAL;
	dnp_th_STATUS : UDINT;
	dnp_ec : REAL;
	dnp_ec_STATUS : UDINT;
	dnp_DITag1000 : BOOL;
	dnp_DITag1000_STATUS : UDINT;
	dnp2_opendoor : BOOL;
	dnp2_opendoor_STATUS : UDINT;
	dnp2_alarmAC : BOOL;
	dnp2_alarmAC_STATUS : UDINT;
	dnp2_SUBSCADApumpag1 : BOOL;
	dnp2_SUBSCADApumpag1_STATUS : UDINT;
	dnp2_DC24V : BOOL;
	dnp2_DC24V_STATUS : UDINT;
	dnp2_FaultPumpag1 : BOOL;
	dnp2_FaultPumpag1_STATUS : UDINT;
	dnp2_OnPumpag1 : BOOL;
	dnp2_OnPumpag1_STATUS : UDINT;
	dnp2_AutoPumpag1 : BOOL;
	dnp2_AutoPumpag1_STATUS : UDINT;
	dnp2_FaultPumpag2 : BOOL;
	dnp2_FaultPumpag2_STATUS : UDINT;
	dnp2_OnPumpag2 : BOOL;
	dnp2_OnPumpag2_STATUS : UDINT;
	dnp2_AutoPumpag2 : BOOL;
	dnp2_AutoPumpag2_STATUS : UDINT;
	dnp2_subscadapumpag2 : BOOL;
	dnp2_subscadapumpag2_STATUS : UDINT;
	dnp2_faultPumpag3 : BOOL;
	dnp2_faultPumpag3_STATUS : UDINT;
	dnp2_onPumpag3 : BOOL;
	dnp2_onPumpag3_STATUS : UDINT;
	dnp2_autopumpag3 : BOOL;
	dnp2_autopumpag3_STATUS : UDINT;
	dnp2_subscadapumpag3 : BOOL;
	dnp2_subscadapumpag3_STATUS : UDINT;
	dnp2_roomwateralarm : BOOL;
	dnp2_roomwateralarm_STATUS : UDINT;
	dnp2_TankHIalarm : BOOL;
	dnp2_TankHIalarm_STATUS : UDINT;
	dnp2_TankLOWalarm : BOOL;
	dnp2_TankLOWalarm_STATUS : UDINT;
	dnp2_PHIpumpag1 : BOOL;
	dnp2_PHIpumpag1_STATUS : UDINT;
	dnp2_PLOWpumpag1 : BOOL;
	dnp2_PLOWpumpag1_STATUS : UDINT;
	dnp2_phase1pumpag1 : BOOL;
	dnp2_phase1pumpag1_STATUS : UDINT;
	dnp2_phase2pumpag1 : BOOL;
	dnp2_phase2pumpag1_STATUS : UDINT;
	dnp2_phase3pumpag1 : BOOL;
	dnp2_phase3pumpag1_STATUS : UDINT;
	dnp2_PHIpumpag2 : BOOL;
	dnp2_PHIpumpag2_STATUS : UDINT;
	dnp2_PLOWpumpag2 : BOOL;
	dnp2_PLOWpumpag2_STATUS : UDINT;
	dnp2_phase1pumpag2 : BOOL;
	dnp2_phase1pumpag2_STATUS : UDINT;
	dnp2_phase2pumpag2 : BOOL;
	dnp2_phase2pumpag2_STATUS : UDINT;
	dnp2_phase3pumpag2 : BOOL;
	dnp2_phase3pumpag2_STATUS : UDINT;
	dnp2_PHIpumpag3 : BOOL;
	dnp2_PHIpumpag3_STATUS : UDINT;
	dnp2_PLOWpumpag3 : BOOL;
	dnp2_PLOWpumpag3_STATUS : UDINT;
	dnp2_phase1pumpag3 : BOOL;
	dnp2_phase1pumpag3_STATUS : UDINT;
	dnp2_phase2pumpag3 : BOOL;
	dnp2_phase2pumpag3_STATUS : UDINT;
	dnp2_phase3pumpag3 : BOOL;
	dnp2_phase3pumpag3_STATUS : UDINT;
	dnp2_PHITotal : BOOL;
	dnp2_PHITotal_STATUS : UDINT;
	dnp2_PLOWTotal : BOOL;
	dnp2_PLOWTotal_STATUS : UDINT;
	dnp2_FHItotal1 : BOOL;
	dnp2_FHItotal1_STATUS : UDINT;
	dnp2_FLOWtotal1 : BOOL;
	dnp2_FLOWtotal1_STATUS : UDINT;
	dnp2_FHItotal2 : BOOL;
	dnp2_FHItotal2_STATUS : UDINT;
	dnp2_FLOWtotal2 : BOOL;
	dnp2_FLOWtotal2_STATUS : UDINT;
	dnp2_ptpumpag1 : REAL;
	dnp2_ptpumpag1_STATUS : UDINT;
	dnp2_ptpumpag2 : REAL;
	dnp2_ptpumpag2_STATUS : UDINT;
	dnp2_ptpumpag3 : REAL;
	dnp2_ptpumpag3_STATUS : UDINT;
	dnp2_ptCollector : REAL;
	dnp2_ptCollector_STATUS : UDINT;
	dnp2_mAlevelmaintank : REAL;
	dnp2_mAlevelmaintank_STATUS : UDINT;
	dnp2_mACHL : DINT;
	dnp2_mACHL_STATUS : UDINT;
	dnp2_mAWF1 : DINT;
	dnp2_mAWF1_STATUS : UDINT;
	dnp2_mAWF2 : DINT;
	dnp2_mAWF2_STATUS : UDINT;
	dnp2_I1pumpag1 : DINT;
	dnp2_I1pumpag1_STATUS : UDINT;
	dnp2_I2pumpag1 : DINT;
	dnp2_I2pumpag1_STATUS : UDINT;
	dnp2_I3pumpag1 : DINT;
	dnp2_I3pumpag1_STATUS : UDINT;
	dnp2_V1pumpag1 : DINT;
	dnp2_V1pumpag1_STATUS : UDINT;
	dnp2_V2pumpag1 : DINT;
	dnp2_V2pumpag1_STATUS : UDINT;
	dnp2_V3pumpag1 : DINT;
	dnp2_V3pumpag1_STATUS : UDINT;
	dnp2_V12pumpag1 : DINT;
	dnp2_V12pumpag1_STATUS : UDINT;
	dnp2_V23pumpag1 : DINT;
	dnp2_V23pumpag1_STATUS : UDINT;
	dnp2_V31pumpag1 : DINT;
	dnp2_V31pumpag1_STATUS : UDINT;
	dnp2_p1pumpag1 : DINT;
	dnp2_p1pumpag1_STATUS : UDINT;
	dnp2_p2pumpag1 : DINT;
	dnp2_p2pumpag1_STATUS : UDINT;
	dnp2_p3pumpag1 : DINT;
	dnp2_p3pumpag1_STATUS : UDINT;
	dnp2_q1pumpag1 : DINT;
	dnp2_q1pumpag1_STATUS : UDINT;
	dnp2_q2pumpag1 : DINT;
	dnp2_q2pumpag1_STATUS : UDINT;
	dnp2_q3pumpag1 : DINT;
	dnp2_q3pumpag1_STATUS : UDINT;
	dnp2_s1pumpag1 : DINT;
	dnp2_s1pumpag1_STATUS : UDINT;
	dnp2_s2pumpag1 : DINT;
	dnp2_s2pumpag1_STATUS : UDINT;
	dnp2_s3pumpag1 : DINT;
	dnp2_s3pumpag1_STATUS : UDINT;
	dnp2_PF1pumpag1 : DINT;
	dnp2_PF1pumpag1_STATUS : UDINT;
	dnp2_PF2pumpag1 : DINT;
	dnp2_PF2pumpag1_STATUS : UDINT;
	dnp2_PF3pumpag1 : DINT;
	dnp2_PF3pumpag1_STATUS : UDINT;
	dnp2_Pavpumpag1 : DINT;
	dnp2_Pavpumpag1_STATUS : UDINT;
	dnp2_Qavpumpag1 : DINT;
	dnp2_Qavpumpag1_STATUS : UDINT;
	dnp2_Savpumpag1 : DINT;
	dnp2_Savpumpag1_STATUS : UDINT;
	dnp2_PFavpumpag1 : DINT;
	dnp2_PFavpumpag1_STATUS : UDINT;
	dnp2_FREQpumpag1 : DINT;
	dnp2_FREQpumpag1_STATUS : UDINT;
	dnp2_i1pumpag2 : DINT;
	dnp2_i1pumpag2_STATUS : UDINT;
	dnp2_i2pumpag2 : DINT;
	dnp2_i2pumpag2_STATUS : UDINT;
	dnp2_i3pumpag2 : DINT;
	dnp2_i3pumpag2_STATUS : UDINT;
	dnp2_v1pumpag2 : DINT;
	dnp2_v1pumpag2_STATUS : UDINT;
	dnp2_v2pumpag2 : DINT;
	dnp2_v2pumpag2_STATUS : UDINT;
	dnp2_v3pumpag2 : DINT;
	dnp2_v3pumpag2_STATUS : UDINT;
	dnp2_V12pumpag2 : DINT;
	dnp2_V12pumpag2_STATUS : UDINT;
	dnp2_V23pumpag2 : DINT;
	dnp2_V23pumpag2_STATUS : UDINT;
	dnp2_V31pumpag2 : DINT;
	dnp2_V31pumpag2_STATUS : UDINT;
	dnp2_p1pumpag2 : DINT;
	dnp2_p1pumpag2_STATUS : UDINT;
	dnp2_p2pumpag2 : DINT;
	dnp2_p2pumpag2_STATUS : UDINT;
	dnp2_p3pumpag2 : DINT;
	dnp2_p3pumpag2_STATUS : UDINT;
	dnp2_q1pumpag2 : DINT;
	dnp2_q1pumpag2_STATUS : UDINT;
	dnp2_q2pumpag2 : DINT;
	dnp2_q2pumpag2_STATUS : UDINT;
	dnp2_q3pumpag2 : DINT;
	dnp2_q3pumpag2_STATUS : UDINT;
	dnp2_s1pumpag2 : DINT;
	dnp2_s1pumpag2_STATUS : UDINT;
	dnp2_s2pumpag2 : DINT;
	dnp2_s2pumpag2_STATUS : UDINT;
	dnp2_s3pumpag2 : DINT;
	dnp2_s3pumpag2_STATUS : UDINT;
	dnp2_PF1pumpag2 : DINT;
	dnp2_PF1pumpag2_STATUS : UDINT;
	dnp2_PF2pumpag2 : DINT;
	dnp2_PF2pumpag2_STATUS : UDINT;
	dnp2_PF3pumpag2 : DINT;
	dnp2_PF3pumpag2_STATUS : UDINT;
	dnp2_Pavpumpag2 : DINT;
	dnp2_Pavpumpag2_STATUS : UDINT;
	dnp2_Qavpumpag2 : DINT;
	dnp2_Qavpumpag2_STATUS : UDINT;
	dnp2_Savpumpag2 : DINT;
	dnp2_Savpumpag2_STATUS : UDINT;
	dnp2_PFavpumpag2 : DINT;
	dnp2_PFavpumpag2_STATUS : UDINT;
	dnp2_FREQpumpag2 : DINT;
	dnp2_FREQpumpag2_STATUS : UDINT;
	dnp2_i1pumpag3 : DINT;
	dnp2_i1pumpag3_STATUS : UDINT;
	dnp2_i2pumpag3 : DINT;
	dnp2_i2pumpag3_STATUS : UDINT;
	dnp2_i3pumpag3 : DINT;
	dnp2_i3pumpag3_STATUS : UDINT;
	dnp2_v1pumpag3 : DINT;
	dnp2_v1pumpag3_STATUS : UDINT;
	dnp2_v2pumpag3 : DINT;
	dnp2_v2pumpag3_STATUS : UDINT;
	dnp2_v3pumpag3 : DINT;
	dnp2_v3pumpag3_STATUS : UDINT;
	dnp2_V12pumpag3 : DINT;
	dnp2_V12pumpag3_STATUS : UDINT;
	dnp2_V23pumpag3 : DINT;
	dnp2_V23pumpag3_STATUS : UDINT;
	dnp2_V31pumpag3 : DINT;
	dnp2_V31pumpag3_STATUS : UDINT;
	dnp2_p1pumpag3 : DINT;
	dnp2_p1pumpag3_STATUS : UDINT;
	dnp2_p2pumpag3 : DINT;
	dnp2_p2pumpag3_STATUS : UDINT;
	dnp2_p3pumpag3 : DINT;
	dnp2_p3pumpag3_STATUS : UDINT;
	dnp2_q1pumpag3 : DINT;
	dnp2_q1pumpag3_STATUS : UDINT;
	dnp2_q2pumpag3 : DINT;
	dnp2_q2pumpag3_STATUS : UDINT;
	dnp2_q3pumpag3 : DINT;
	dnp2_q3pumpag3_STATUS : UDINT;
	dnp2_s1pumpag3 : DINT;
	dnp2_s1pumpag3_STATUS : UDINT;
	dnp2_s2pumpag3 : DINT;
	dnp2_s2pumpag3_STATUS : UDINT;
	dnp2_s3pumpag3 : DINT;
	dnp2_s3pumpag3_STATUS : UDINT;
	dnp2_PF1pumpag3 : DINT;
	dnp2_PF1pumpag3_STATUS : UDINT;
	dnp2_PF2pumpag3 : DINT;
	dnp2_PF2pumpag3_STATUS : UDINT;
	dnp2_PF3pumpag3 : DINT;
	dnp2_PF3pumpag3_STATUS : UDINT;
	dnp2_Pavpumpag3 : DINT;
	dnp2_Pavpumpag3_STATUS : UDINT;
	dnp2_Qavpumpag3 : DINT;
	dnp2_Qavpumpag3_STATUS : UDINT;
	dnp2_Savpumpag3 : DINT;
	dnp2_Savpumpag3_STATUS : UDINT;
	dnp2_PFavpumpag3 : DINT;
	dnp2_PFavpumpag3_STATUS : UDINT;
	dnp2_FREQpumpag3 : DINT;
	dnp2_FREQpumpag3_STATUS : UDINT;
	dnp2_STOPpumpag1 : BOOL;
	dnp2_STOPpumpag1_STATUS : UDINT;
	dnp2_STOPpumpag2 : BOOL;
	dnp2_STOPpumpag2_STATUS : UDINT;
	dnp2_STOPpumpag3 : BOOL;
	dnp2_STOPpumpag3_STATUS : UDINT;
	dnp2_STARTpumpag1 : BOOL;
	dnp2_STARTpumpag1_STATUS : UDINT;
	dnp2_STARTpumpag2 : BOOL;
	dnp2_STARTpumpag2_STATUS : UDINT;
	dnp2_STARTpumpag3 : BOOL;
	dnp2_STARTpumpag3_STATUS : UDINT;
	dnp2_rs485wf1 : DINT;
	dnp2_rs485wf1_STATUS : UDINT;
	dnp2_rs485wf2 : DINT;
	dnp2_rs485wf2_STATUS : UDINT;
	dnp2_rs485levelmeter : REAL;
	dnp2_rs485levelmeter_STATUS : UDINT;
	dnp2_cl : REAL;
	dnp2_cl_STATUS : UDINT;
	dnp2_tu : REAL;
	dnp2_tu_STATUS : UDINT;
	dnp2_th : REAL;
	dnp2_th_STATUS : UDINT;
	dnp2_ec : REAL;
	dnp2_ec_STATUS : UDINT;
	sql_BOOLTag0 : BOOL;
	LIO_DITag0 : BOOL;
	LIO_DITag1 : BOOL;
	LIO_DITag2 : BOOL;
	LIO_DITag3 : BOOL;
	LIO_DITag4 : BOOL;
	LIO_DITag5 : BOOL;
	LIO_DITag6 : BOOL;
	LIO_DITag7 : BOOL;
	LIO_DOTag0 : BOOL;
	LIO_DOTag1 : BOOL;
	LIO_DOTag2 : BOOL;
	LIO_DOTag3 : BOOL;
	LIO_AITag0 : UINT;
	LIO_AITag1 : UINT;
	LIO_AITag2 : UINT;
	LIO_AITag3 : UINT;
	LIO_AOTag0 : UINT;
	LIO_CNTTag0 : UDINT;
	LIO_CNTTag0_CONTROL : LINT;
	LIO_CNTTag1 : UDINT;
	LIO_CNTTag1_CONTROL : LINT;
	LIO_CNTTag2 : UDINT;
	LIO_CNTTag2_CONTROL : LINT;
	LIO_CNTTag3 : UDINT;
	LIO_CNTTag3_CONTROL : LINT;
	LIO_SENTag0 : REAL;
	LIO_SENTag1 : REAL;
	LIO_Reset : USINT;
	LIO_CPU_Usage : REAL;
	LIO_Total_RAM : REAL;
	LIO_FreeSpace_RAM : REAL;
	LIO_Used_RAM : REAL;
	LIO_Total_Flash : REAL;
	LIO_FreeSpace_Flash : REAL;
	LIO_Used_Flash : REAL;
	LIO_Total_SDCard : REAL;
	LIO_FreeSpace_SDCard : REAL;
	LIO_Used_SDCard : REAL;
	LIO_Total_NVRAM : REAL;
	LIO_FreeSpace_NVRAM : REAL;
	LIO_Used_NVRAM : REAL;
	LIO_CANBUS_Status : USINT;
	LIO_Buzzer : USINT;
	LIO_3GModemON : USINT;
	LIO_3GModemSignallevel : USINT;
	LIO_3GConnected : BOOL;
	LIO_3GModemSecIP1 : USINT;
	LIO_3GModemSecIP2 : USINT;
	LIO_3GModemSecIP3 : USINT;
	LIO_3GModemSecIP4 : USINT;
	LIO_Logic_Processing_Time : REAL;
	LIO_First_Scan : BOOL;
END_VAR
MOVE_OUT_6 := MOVE( 
	 EN := True ,
	 IN := LIO_DITag0 ,
	 ENO => MOVE_ENO_6  );
sql_BOOLTag0 := MOVE_OUT_6 ;

END_PROGRAM

CONFIGURATION Config0
RESOURCE Res0 ON PLC

VAR_GLOBAL
	I : ARRAY [0..255] OF LWORD;
	Q : ARRAY [0..255] OF LWORD;
	M : ARRAY [0..255] OF LWORD;
	rio_p1var1_Tag2999 : REAL := 13;(*Input*)
	rio_p1var1_Tag3001 : REAL;(*Input*)
	rio_p1var1_Tag3003 : REAL;(*Input*)
	rio_p1var1_Tag3005 : REAL;(*Input*)
	rio_p1var1_Tag3007 : REAL;(*Input*)
	rio_p1var1_Tag3009 : REAL;(*Input*)
	rio_p1var1_Tag3011 : REAL;(*Input*)
	rio_p1var1_Tag3013 : REAL;(*Input*)
	rio_p1var1_Tag3015 : REAL;(*Input*)
	rio_p1var1_Tag3017 : REAL;(*Input*)
	rio_p1var1_Tag3019 : REAL;(*Input*)
	rio_p1var1_Tag3021 : REAL;(*Input*)
	rio_p1var1_Tag3023 : REAL;(*Input*)
	rio_p1var1_Tag3025 : REAL;(*Input*)
	rio_p1var1_Tag3027 : REAL;(*Input*)
	rio_p1var1_Tag3029 : REAL;(*Input*)
	rio_p1var1_Tag3031 : REAL;(*Input*)
	rio_p1var1_OnLine : UINT;(*Input*)
	rio_p1var1_SendNum : UINT;(*Input*)
	rio_p1var1_RecNum : UINT;(*Input*)
	rio_p1var1_Error : UINT;(*Input*)
	rio_p1var1_Poll : UINT;(*Output*)
	rio_p1var2_Tag3053 : REAL;(*Input*)
	rio_p1var2_Tag3055 : REAL;(*Input*)
	rio_p1var2_Tag3057 : REAL;(*Input*)
	rio_p1var2_Tag3059 : REAL;(*Input*)
	rio_p1var2_Tag3061 : REAL;(*Input*)
	rio_p1var2_Tag3063 : REAL;(*Input*)
	rio_p1var2_Tag3065 : REAL;(*Input*)
	rio_p1var2_Tag3067 : REAL;(*Input*)
	rio_p1var2_Tag3069 : REAL;(*Input*)
	rio_p1var2_Tag3071 : REAL;(*Input*)
	rio_p1var2_Tag3073 : REAL;(*Input*)
	rio_p1var2_Tag3075 : REAL;(*Input*)
	rio_p1var2_Tag3077 : REAL;(*Input*)
	rio_p1var2_Tag3079 : REAL;(*Input*)
	rio_p1var2_Tag3081 : REAL;(*Input*)
	rio_p1var2_Tag3083 : REAL;(*Input*)
	rio_p1var2_OnLine : UINT;(*Input*)
	rio_p1var2_SendNum : UINT;(*Input*)
	rio_p1var2_RecNum : UINT;(*Input*)
	rio_p1var2_Error : UINT;(*Input*)
	rio_p1var2_Poll : UINT;(*Output*)
	rio_p1var3_Tag3109 : REAL;(*Input*)
	rio_p1var3_OnLine : UINT;(*Input*)
	rio_p1var3_SendNum : UINT;(*Input*)
	rio_p1var3_RecNum : UINT;(*Input*)
	rio_p1var3_Error : UINT;(*Input*)
	rio_p1var3_Poll : UINT;(*Output*)
	rio_p2var1_Tag2999 : REAL;(*Input*)
	rio_p2var1_Tag3001 : REAL;(*Input*)
	rio_p2var1_Tag3003 : REAL;(*Input*)
	rio_p2var1_Tag3005 : REAL;(*Input*)
	rio_p2var1_Tag3007 : REAL;(*Input*)
	rio_p2var1_Tag3009 : REAL;(*Input*)
	rio_p2var1_Tag3011 : REAL;(*Input*)
	rio_p2var1_Tag3013 : REAL;(*Input*)
	rio_p2var1_Tag3015 : REAL;(*Input*)
	rio_p2var1_Tag3017 : REAL;(*Input*)
	rio_p2var1_Tag3019 : REAL;(*Input*)
	rio_p2var1_Tag3021 : REAL;(*Input*)
	rio_p2var1_Tag3023 : REAL;(*Input*)
	rio_p2var1_Tag3025 : REAL;(*Input*)
	rio_p2var1_Tag3027 : REAL;(*Input*)
	rio_p2var1_Tag3029 : REAL;(*Input*)
	rio_p2var1_Tag3031 : REAL;(*Input*)
	rio_p2var1_OnLine : UINT;(*Input*)
	rio_p2var1_SendNum : UINT;(*Input*)
	rio_p2var1_RecNum : UINT;(*Input*)
	rio_p2var1_Error : UINT;(*Input*)
	rio_p2var1_Poll : UINT;(*Output*)
	rio_p2var2_Tag3053 : REAL;(*Input*)
	rio_p2var2_Tag3055 : REAL;(*Input*)
	rio_p2var2_Tag3057 : REAL;(*Input*)
	rio_p2var2_Tag3059 : REAL;(*Input*)
	rio_p2var2_Tag3061 : REAL;(*Input*)
	rio_p2var2_Tag3063 : REAL;(*Input*)
	rio_p2var2_Tag3065 : REAL;(*Input*)
	rio_p2var2_Tag3067 : REAL;(*Input*)
	rio_p2var2_Tag3069 : REAL;(*Input*)
	rio_p2var2_Tag3071 : REAL;(*Input*)
	rio_p2var2_Tag3073 : REAL;(*Input*)
	rio_p2var2_Tag3075 : REAL;(*Input*)
	rio_p2var2_Tag3077 : REAL;(*Input*)
	rio_p2var2_Tag3079 : REAL;(*Input*)
	rio_p2var2_Tag3081 : REAL;(*Input*)
	rio_p2var2_Tag3083 : REAL;(*Input*)
	rio_p2var2_OnLine : UINT;(*Input*)
	rio_p2var2_SendNum : UINT;(*Input*)
	rio_p2var2_RecNum : UINT;(*Input*)
	rio_p2var2_Error : UINT;(*Input*)
	rio_p2var2_Poll : UINT;(*Output*)
	rio_p2var3_Tag3109 : REAL;(*Input*)
	rio_p2var3_OnLine : UINT;(*Input*)
	rio_p2var3_SendNum : UINT;(*Input*)
	rio_p2var3_RecNum : UINT;(*Input*)
	rio_p2var3_Error : UINT;(*Input*)
	rio_p2var3_Poll : UINT;(*Output*)
	rio_p3var1_Tag2999 : REAL;(*Input*)
	rio_p3var1_Tag3001 : REAL;(*Input*)
	rio_p3var1_Tag3003 : REAL;(*Input*)
	rio_p3var1_Tag3005 : REAL;(*Input*)
	rio_p3var1_Tag3007 : REAL;(*Input*)
	rio_p3var1_Tag3009 : REAL;(*Input*)
	rio_p3var1_Tag3011 : REAL;(*Input*)
	rio_p3var1_Tag3013 : REAL;(*Input*)
	rio_p3var1_Tag3015 : REAL;(*Input*)
	rio_p3var1_Tag3017 : REAL;(*Input*)
	rio_p3var1_Tag3019 : REAL;(*Input*)
	rio_p3var1_Tag3021 : REAL;(*Input*)
	rio_p3var1_Tag3023 : REAL;(*Input*)
	rio_p3var1_Tag3025 : REAL;(*Input*)
	rio_p3var1_Tag3027 : REAL;(*Input*)
	rio_p3var1_Tag3029 : REAL;(*Input*)
	rio_p3var1_Tag3031 : REAL;(*Input*)
	rio_p3var1_OnLine : UINT;(*Input*)
	rio_p3var1_SendNum : UINT;(*Input*)
	rio_p3var1_RecNum : UINT;(*Input*)
	rio_p3var1_Error : UINT;(*Input*)
	rio_p3var1_Poll : UINT;(*Output*)
	rio_p3var2_Tag3053 : REAL;(*Input*)
	rio_p3var2_Tag3055 : REAL;(*Input*)
	rio_p3var2_Tag3057 : REAL;(*Input*)
	rio_p3var2_Tag3059 : REAL;(*Input*)
	rio_p3var2_Tag3061 : REAL;(*Input*)
	rio_p3var2_Tag3063 : REAL;(*Input*)
	rio_p3var2_Tag3065 : REAL;(*Input*)
	rio_p3var2_Tag3067 : REAL;(*Input*)
	rio_p3var2_Tag3069 : REAL;(*Input*)
	rio_p3var2_Tag3071 : REAL;(*Input*)
	rio_p3var2_Tag3073 : REAL;(*Input*)
	rio_p3var2_Tag3075 : REAL;(*Input*)
	rio_p3var2_Tag3077 : REAL;(*Input*)
	rio_p3var2_Tag3079 : REAL;(*Input*)
	rio_p3var2_Tag3081 : REAL;(*Input*)
	rio_p3var2_Tag3083 : REAL;(*Input*)
	rio_p3var2_OnLine : UINT;(*Input*)
	rio_p3var2_SendNum : UINT;(*Input*)
	rio_p3var2_RecNum : UINT;(*Input*)
	rio_p3var2_Error : UINT;(*Input*)
	rio_p3var2_Poll : UINT;(*Output*)
	rio_p3var3_Tag3109 : REAL;(*Input*)
	rio_p3var3_OnLine : UINT;(*Input*)
	rio_p3var3_SendNum : UINT;(*Input*)
	rio_p3var3_RecNum : UINT;(*Input*)
	rio_p3var3_Error : UINT;(*Input*)
	rio_p3var3_Poll : UINT;(*Output*)
	rio_DI9_Tag0 : BOOL;(*Input*)
	rio_DI9_Tag1 : BOOL;(*Input*)
	rio_DI9_Tag2 : BOOL;(*Input*)
	rio_DI9_Tag3 : BOOL;(*Input*)
	rio_DI9_Tag4 : BOOL;(*Input*)
	rio_DI9_Tag5 : BOOL;(*Input*)
	rio_DI9_Tag6 : BOOL;(*Input*)
	rio_DI9_Tag7 : BOOL;(*Input*)
	rio_DI9_OnLine : UINT;(*Input*)
	rio_DI9_SendNum : UINT;(*Input*)
	rio_DI9_RecNum : UINT;(*Input*)
	rio_DI9_Error : UINT;(*Input*)
	rio_DI9_Poll : UINT;(*Output*)
	rio_AI5_Tag0 : INT;(*Input*)
	rio_AI5_Tag1 : INT;(*Input*)
	rio_AI5_Tag2 : INT;(*Input*)
	rio_AI5_Tag3 : INT;(*Input*)
	rio_AI5_OnLine : UINT;(*Input*)
	rio_AI5_SendNum : UINT;(*Input*)
	rio_AI5_RecNum : UINT;(*Input*)
	rio_AI5_Error : UINT;(*Input*)
	rio_AI5_Poll : UINT;(*Output*)
	rio_DO5_Tag0 : BOOL;(*Output*)
	rio_DO5_Tag1 : BOOL;(*Output*)
	rio_DO5_Tag2 : BOOL;(*Output*)
	rio_DO5_Tag3 : BOOL;(*Output*)
	rio_DO5_OnLine : UINT;(*Input*)
	rio_DO5_SendNum : UINT;(*Input*)
	rio_DO5_RecNum : UINT;(*Input*)
	rio_DO5_Error : UINT;(*Input*)
	rio_DO5_Poll : UINT;(*Output*)
	rio_DI17_Tag0 : BOOL;(*Input*)
	rio_DI17_Tag1 : BOOL;(*Input*)
	rio_DI17_Tag2 : BOOL;(*Input*)
	rio_DI17_Tag3 : BOOL;(*Input*)
	rio_DI17_Tag4 : BOOL;(*Input*)
	rio_DI17_Tag5 : BOOL;(*Input*)
	rio_DI17_Tag6 : BOOL;(*Input*)
	rio_DI17_Tag7 : BOOL;(*Input*)
	rio_DI17_OnLine : UINT;(*Input*)
	rio_DI17_SendNum : UINT;(*Input*)
	rio_DI17_RecNum : UINT;(*Input*)
	rio_DI17_Error : UINT;(*Input*)
	rio_DI17_Poll : UINT;(*Output*)
	rio_AI9_Tag0 : INT;(*Input*)
	rio_AI9_OnLine : UINT;(*Input*)
	rio_AI9_SendNum : UINT;(*Input*)
	rio_AI9_RecNum : UINT;(*Input*)
	rio_AI9_Error : UINT;(*Input*)
	rio_AI9_Poll : UINT;(*Output*)
	rio_levelTank485_Tag30032 : REAL;(*Input*)
	rio_levelTank485_OnLine : UINT;(*Input*)
	rio_levelTank485_SendNum : UINT;(*Input*)
	rio_levelTank485_RecNum : UINT;(*Input*)
	rio_levelTank485_Error : UINT;(*Input*)
	rio_levelTank485_Poll : UINT;(*Output*)
	rio_flow_Tag4113 : REAL;(*Input*)
	rio_flow_OnLine : UINT;(*Input*)
	rio_flow_SendNum : UINT;(*Input*)
	rio_flow_RecNum : UINT;(*Input*)
	rio_flow_Error : UINT;(*Input*)
	rio_flow_Poll : UINT;(*Output*)
	rio_cl_Tag4000 : INT;(*Input*)
	rio_cl_Tag4001 : INT;(*Input*)
	rio_cl_Tag4002 : INT;(*Input*)
	rio_cl_Tag4003 : INT;(*Input*)
	rio_cl_Tag4004 : INT;(*Input*)
	rio_cl_Tag4005 : INT;(*Input*)
	rio_cl_Tag4006 : INT;(*Input*)
	rio_cl_Tag4007 : INT;(*Input*)
	rio_cl_Tag4008 : INT;(*Input*)
	rio_cl_Tag4009 : INT;(*Input*)
	rio_cl_Tag4010 : INT;(*Input*)
	rio_cl_Tag4011 : INT;(*Input*)
	rio_cl_Tag4012 : INT;(*Input*)
	rio_cl_Tag4013 : INT;(*Input*)
	rio_cl_Tag4014 : INT;(*Input*)
	rio_cl_Tag4015 : INT;(*Input*)
	rio_cl_OnLine : UINT;(*Input*)
	rio_cl_SendNum : UINT;(*Input*)
	rio_cl_RecNum : UINT;(*Input*)
	rio_cl_Error : UINT;(*Input*)
	rio_cl_Poll : UINT;(*Output*)
	dnp_opendoor : BOOL := 0;(*Output*)
	dnp_opendoor_STATUS : UDINT := 1;(*Output*)
	dnp_alarmAC : BOOL := 0;(*Output*)
	dnp_alarmAC_STATUS : UDINT := 1;(*Output*)
	dnp_SUBSCADApumpag1 : BOOL := 0;(*Output*)
	dnp_SUBSCADApumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_DC24V : BOOL := 0;(*Output*)
	dnp_DC24V_STATUS : UDINT := 1;(*Output*)
	dnp_FaultPumpag1 : BOOL := 0;(*Output*)
	dnp_FaultPumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_OnPumpag1 : BOOL := 0;(*Output*)
	dnp_OnPumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_AutoPumpag1 : BOOL := 0;(*Output*)
	dnp_AutoPumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_FaultPumpag2 : BOOL := 0;(*Output*)
	dnp_FaultPumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_OnPumpag2 : BOOL := 0;(*Output*)
	dnp_OnPumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_AutoPumpag2 : BOOL := 0;(*Output*)
	dnp_AutoPumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_subscadapumpag2 : BOOL := 0;(*Output*)
	dnp_subscadapumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_faultPumpag3 : BOOL := 0;(*Output*)
	dnp_faultPumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_onPumpag3 : BOOL := 0;(*Output*)
	dnp_onPumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_autopumpag3 : BOOL := 0;(*Output*)
	dnp_autopumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_subscadapumpag3 : BOOL := 0;(*Output*)
	dnp_subscadapumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_roomwateralarm : BOOL := 0;(*Output*)
	dnp_roomwateralarm_STATUS : UDINT := 1;(*Output*)
	dnp_TankHIalarm : BOOL := 0;(*Output*)
	dnp_TankHIalarm_STATUS : UDINT := 1;(*Output*)
	dnp_TankLOWalarm : BOOL := 0;(*Output*)
	dnp_TankLOWalarm_STATUS : UDINT := 1;(*Output*)
	dnp_PHIpumpag1 : BOOL := 0;(*Output*)
	dnp_PHIpumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_PLOWpumpag1 : BOOL := 0;(*Output*)
	dnp_PLOWpumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_phase1pumpag1 : BOOL := 0;(*Output*)
	dnp_phase1pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_phase2pumpag1 : BOOL := 0;(*Output*)
	dnp_phase2pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_phase3pumpag1 : BOOL := 0;(*Output*)
	dnp_phase3pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_PHIpumpag2 : BOOL := 0;(*Output*)
	dnp_PHIpumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_PLOWpumpag2 : BOOL := 0;(*Output*)
	dnp_PLOWpumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_phase1pumpag2 : BOOL := 0;(*Output*)
	dnp_phase1pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_phase2pumpag2 : BOOL := 0;(*Output*)
	dnp_phase2pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_phase3pumpag2 : BOOL := 0;(*Output*)
	dnp_phase3pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_PHIpumpag3 : BOOL := 0;(*Output*)
	dnp_PHIpumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_PLOWpumpag3 : BOOL := 0;(*Output*)
	dnp_PLOWpumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_phase1pumpag3 : BOOL := 0;(*Output*)
	dnp_phase1pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_phase2pumpag3 : BOOL := 0;(*Output*)
	dnp_phase2pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_phase3pumpag3 : BOOL := 0;(*Output*)
	dnp_phase3pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_PHITotal : BOOL := 0;(*Output*)
	dnp_PHITotal_STATUS : UDINT := 1;(*Output*)
	dnp_PLOWTotal : BOOL := 0;(*Output*)
	dnp_PLOWTotal_STATUS : UDINT := 1;(*Output*)
	dnp_FHItotal1 : BOOL := 0;(*Output*)
	dnp_FHItotal1_STATUS : UDINT := 1;(*Output*)
	dnp_FLOWtotal1 : BOOL := 0;(*Output*)
	dnp_FLOWtotal1_STATUS : UDINT := 1;(*Output*)
	dnp_FHItotal2 : BOOL := 0;(*Output*)
	dnp_FHItotal2_STATUS : UDINT := 1;(*Output*)
	dnp_FLOWtotal2 : BOOL := 0;(*Output*)
	dnp_FLOWtotal2_STATUS : UDINT := 1;(*Output*)
	dnp_ptpumpag1 : REAL := 0;(*Output*)
	dnp_ptpumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_ptpumpag2 : REAL := 0;(*Output*)
	dnp_ptpumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_ptpumpag3 : REAL := 0;(*Output*)
	dnp_ptpumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_ptCollector : REAL := 0;(*Output*)
	dnp_ptCollector_STATUS : UDINT := 1;(*Output*)
	dnp_mAlevelmaintank : REAL := 0;(*Output*)
	dnp_mAlevelmaintank_STATUS : UDINT := 1;(*Output*)
	dnp_mACHL : DINT := 0;(*Output*)
	dnp_mACHL_STATUS : UDINT := 1;(*Output*)
	dnp_mAWF1 : DINT := 0;(*Output*)
	dnp_mAWF1_STATUS : UDINT := 1;(*Output*)
	dnp_mAWF2 : DINT := 0;(*Output*)
	dnp_mAWF2_STATUS : UDINT := 1;(*Output*)
	dnp_I1pumpag1 : DINT := 0;(*Output*)
	dnp_I1pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_I2pumpag1 : DINT := 0;(*Output*)
	dnp_I2pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_I3pumpag1 : DINT := 0;(*Output*)
	dnp_I3pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_V1pumpag1 : DINT := 0;(*Output*)
	dnp_V1pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_V2pumpag1 : DINT := 0;(*Output*)
	dnp_V2pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_V3pumpag1 : DINT := 0;(*Output*)
	dnp_V3pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_V12pumpag1 : DINT := 0;(*Output*)
	dnp_V12pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_V23pumpag1 : DINT := 0;(*Output*)
	dnp_V23pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_V31pumpag1 : DINT := 0;(*Output*)
	dnp_V31pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_p1pumpag1 : DINT := 0;(*Output*)
	dnp_p1pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_p2pumpag1 : DINT := 0;(*Output*)
	dnp_p2pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_p3pumpag1 : DINT := 0;(*Output*)
	dnp_p3pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_q1pumpag1 : DINT := 0;(*Output*)
	dnp_q1pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_q2pumpag1 : DINT := 0;(*Output*)
	dnp_q2pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_q3pumpag1 : DINT := 0;(*Output*)
	dnp_q3pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_s1pumpag1 : DINT := 0;(*Output*)
	dnp_s1pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_s2pumpag1 : DINT := 0;(*Output*)
	dnp_s2pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_s3pumpag1 : DINT := 0;(*Output*)
	dnp_s3pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_PF1pumpag1 : DINT := 0;(*Output*)
	dnp_PF1pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_PF2pumpag1 : DINT := 0;(*Output*)
	dnp_PF2pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_PF3pumpag1 : DINT := 0;(*Output*)
	dnp_PF3pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_Pavpumpag1 : DINT := 0;(*Output*)
	dnp_Pavpumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_Qavpumpag1 : DINT := 0;(*Output*)
	dnp_Qavpumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_Savpumpag1 : DINT := 0;(*Output*)
	dnp_Savpumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_PFavpumpag1 : DINT := 0;(*Output*)
	dnp_PFavpumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_FREQpumpag1 : DINT := 0;(*Output*)
	dnp_FREQpumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_i1pumpag2 : DINT := 0;(*Output*)
	dnp_i1pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_i2pumpag2 : DINT := 0;(*Output*)
	dnp_i2pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_i3pumpag2 : DINT := 0;(*Output*)
	dnp_i3pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_v1pumpag2 : DINT := 0;(*Output*)
	dnp_v1pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_v2pumpag2 : DINT := 0;(*Output*)
	dnp_v2pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_v3pumpag2 : DINT := 0;(*Output*)
	dnp_v3pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_V12pumpag2 : DINT := 0;(*Output*)
	dnp_V12pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_V23pumpag2 : DINT := 0;(*Output*)
	dnp_V23pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_V31pumpag2 : DINT := 0;(*Output*)
	dnp_V31pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_p1pumpag2 : DINT := 0;(*Output*)
	dnp_p1pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_p2pumpag2 : DINT := 0;(*Output*)
	dnp_p2pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_p3pumpag2 : DINT := 0;(*Output*)
	dnp_p3pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_q1pumpag2 : DINT := 0;(*Output*)
	dnp_q1pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_q2pumpag2 : DINT := 0;(*Output*)
	dnp_q2pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_q3pumpag2 : DINT := 0;(*Output*)
	dnp_q3pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_s1pumpag2 : DINT := 0;(*Output*)
	dnp_s1pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_s2pumpag2 : DINT := 0;(*Output*)
	dnp_s2pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_s3pumpag2 : DINT := 0;(*Output*)
	dnp_s3pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_PF1pumpag2 : DINT := 0;(*Output*)
	dnp_PF1pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_PF2pumpag2 : DINT := 0;(*Output*)
	dnp_PF2pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_PF3pumpag2 : DINT := 0;(*Output*)
	dnp_PF3pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_Pavpumpag2 : DINT := 0;(*Output*)
	dnp_Pavpumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_Qavpumpag2 : DINT := 0;(*Output*)
	dnp_Qavpumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_Savpumpag2 : DINT := 0;(*Output*)
	dnp_Savpumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_PFavpumpag2 : DINT := 0;(*Output*)
	dnp_PFavpumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_FREQpumpag2 : DINT := 0;(*Output*)
	dnp_FREQpumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_i1pumpag3 : DINT := 0;(*Output*)
	dnp_i1pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_i2pumpag3 : DINT := 0;(*Output*)
	dnp_i2pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_i3pumpag3 : DINT := 0;(*Output*)
	dnp_i3pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_v1pumpag3 : DINT := 0;(*Output*)
	dnp_v1pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_v2pumpag3 : DINT := 0;(*Output*)
	dnp_v2pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_v3pumpag3 : DINT := 0;(*Output*)
	dnp_v3pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_V12pumpag3 : DINT := 0;(*Output*)
	dnp_V12pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_V23pumpag3 : DINT := 0;(*Output*)
	dnp_V23pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_V31pumpag3 : DINT := 0;(*Output*)
	dnp_V31pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_p1pumpag3 : DINT := 0;(*Output*)
	dnp_p1pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_p2pumpag3 : DINT := 0;(*Output*)
	dnp_p2pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_p3pumpag3 : DINT := 0;(*Output*)
	dnp_p3pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_q1pumpag3 : DINT := 0;(*Output*)
	dnp_q1pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_q2pumpag3 : DINT := 0;(*Output*)
	dnp_q2pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_q3pumpag3 : DINT := 0;(*Output*)
	dnp_q3pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_s1pumpag3 : DINT := 0;(*Output*)
	dnp_s1pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_s2pumpag3 : DINT := 0;(*Output*)
	dnp_s2pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_s3pumpag3 : DINT := 0;(*Output*)
	dnp_s3pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_PF1pumpag3 : DINT := 0;(*Output*)
	dnp_PF1pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_PF2pumpag3 : DINT := 0;(*Output*)
	dnp_PF2pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_PF3pumpag3 : DINT := 0;(*Output*)
	dnp_PF3pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_Pavpumpag3 : DINT := 0;(*Output*)
	dnp_Pavpumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_Qavpumpag3 : DINT := 0;(*Output*)
	dnp_Qavpumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_Savpumpag3 : DINT := 0;(*Output*)
	dnp_Savpumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_PFavpumpag3 : DINT := 0;(*Output*)
	dnp_PFavpumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_FREQpumpag3 : DINT := 0;(*Output*)
	dnp_FREQpumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_STOPpumpag1 : BOOL := 0;(*Input*)
	dnp_STOPpumpag1_STATUS : UDINT := 1;(*Input*)
	dnp_STOPpumpag2 : BOOL := 0;(*Input*)
	dnp_STOPpumpag2_STATUS : UDINT := 1;(*Input*)
	dnp_STOPpumpag3 : BOOL := 0;(*Input*)
	dnp_STOPpumpag3_STATUS : UDINT := 1;(*Input*)
	dnp_STARTpumpag1 : BOOL := 0;(*Input*)
	dnp_STARTpumpag1_STATUS : UDINT := 1;(*Input*)
	dnp_STARTpumpag2 : BOOL := 0;(*Input*)
	dnp_STARTpumpag2_STATUS : UDINT := 1;(*Input*)
	dnp_STARTpumpag3 : BOOL := 0;(*Input*)
	dnp_STARTpumpag3_STATUS : UDINT := 1;(*Input*)
	dnp_rs485wf1 : DINT := 0;(*Output*)
	dnp_rs485wf1_STATUS : UDINT := 1;(*Output*)
	dnp_rs485wf2 : DINT := 0;(*Output*)
	dnp_rs485wf2_STATUS : UDINT := 1;(*Output*)
	dnp_rs485levelmeter : REAL := 0;(*Output*)
	dnp_rs485levelmeter_STATUS : UDINT := 1;(*Output*)
	dnp_cl : REAL := 0;(*Output*)
	dnp_cl_STATUS : UDINT := 1;(*Output*)
	dnp_tu : REAL := 0;(*Output*)
	dnp_tu_STATUS : UDINT := 1;(*Output*)
	dnp_th : REAL := 0;(*Output*)
	dnp_th_STATUS : UDINT := 1;(*Output*)
	dnp_ec : REAL := 0;(*Output*)
	dnp_ec_STATUS : UDINT := 1;(*Output*)
	dnp_DITag1000 : BOOL := 0;(*Output*)
	dnp_DITag1000_STATUS : UDINT := 1;(*Output*)
	dnp2_opendoor : BOOL := 0;(*Output*)
	dnp2_opendoor_STATUS : UDINT := 1;(*Output*)
	dnp2_alarmAC : BOOL := 0;(*Output*)
	dnp2_alarmAC_STATUS : UDINT := 1;(*Output*)
	dnp2_SUBSCADApumpag1 : BOOL := 0;(*Output*)
	dnp2_SUBSCADApumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_DC24V : BOOL := 0;(*Output*)
	dnp2_DC24V_STATUS : UDINT := 1;(*Output*)
	dnp2_FaultPumpag1 : BOOL := 0;(*Output*)
	dnp2_FaultPumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_OnPumpag1 : BOOL := 0;(*Output*)
	dnp2_OnPumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_AutoPumpag1 : BOOL := 0;(*Output*)
	dnp2_AutoPumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_FaultPumpag2 : BOOL := 0;(*Output*)
	dnp2_FaultPumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_OnPumpag2 : BOOL := 0;(*Output*)
	dnp2_OnPumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_AutoPumpag2 : BOOL := 0;(*Output*)
	dnp2_AutoPumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_subscadapumpag2 : BOOL := 0;(*Output*)
	dnp2_subscadapumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_faultPumpag3 : BOOL := 0;(*Output*)
	dnp2_faultPumpag3_STATUS : UDINT := 1;(*Output*)
	dnp2_onPumpag3 : BOOL := 0;(*Output*)
	dnp2_onPumpag3_STATUS : UDINT := 1;(*Output*)
	dnp2_autopumpag3 : BOOL := 0;(*Output*)
	dnp2_autopumpag3_STATUS : UDINT := 1;(*Output*)
	dnp2_subscadapumpag3 : BOOL := 0;(*Output*)
	dnp2_subscadapumpag3_STATUS : UDINT := 1;(*Output*)
	dnp2_roomwateralarm : BOOL := 0;(*Output*)
	dnp2_roomwateralarm_STATUS : UDINT := 1;(*Output*)
	dnp2_TankHIalarm : BOOL := 0;(*Output*)
	dnp2_TankHIalarm_STATUS : UDINT := 1;(*Output*)
	dnp2_TankLOWalarm : BOOL := 0;(*Output*)
	dnp2_TankLOWalarm_STATUS : UDINT := 1;(*Output*)
	dnp2_PHIpumpag1 : BOOL := 0;(*Output*)
	dnp2_PHIpumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_PLOWpumpag1 : BOOL := 0;(*Output*)
	dnp2_PLOWpumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_phase1pumpag1 : BOOL := 0;(*Output*)
	dnp2_phase1pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_phase2pumpag1 : BOOL := 0;(*Output*)
	dnp2_phase2pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_phase3pumpag1 : BOOL := 0;(*Output*)
	dnp2_phase3pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_PHIpumpag2 : BOOL := 0;(*Output*)
	dnp2_PHIpumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_PLOWpumpag2 : BOOL := 0;(*Output*)
	dnp2_PLOWpumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_phase1pumpag2 : BOOL := 0;(*Output*)
	dnp2_phase1pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_phase2pumpag2 : BOOL := 0;(*Output*)
	dnp2_phase2pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_phase3pumpag2 : BOOL := 0;(*Output*)
	dnp2_phase3pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_PHIpumpag3 : BOOL := 0;(*Output*)
	dnp2_PHIpumpag3_STATUS : UDINT := 1;(*Output*)
	dnp2_PLOWpumpag3 : BOOL := 0;(*Output*)
	dnp2_PLOWpumpag3_STATUS : UDINT := 1;(*Output*)
	dnp2_phase1pumpag3 : BOOL := 0;(*Output*)
	dnp2_phase1pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp2_phase2pumpag3 : BOOL := 0;(*Output*)
	dnp2_phase2pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp2_phase3pumpag3 : BOOL := 0;(*Output*)
	dnp2_phase3pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp2_PHITotal : BOOL := 0;(*Output*)
	dnp2_PHITotal_STATUS : UDINT := 1;(*Output*)
	dnp2_PLOWTotal : BOOL := 0;(*Output*)
	dnp2_PLOWTotal_STATUS : UDINT := 1;(*Output*)
	dnp2_FHItotal1 : BOOL := 0;(*Output*)
	dnp2_FHItotal1_STATUS : UDINT := 1;(*Output*)
	dnp2_FLOWtotal1 : BOOL := 0;(*Output*)
	dnp2_FLOWtotal1_STATUS : UDINT := 1;(*Output*)
	dnp2_FHItotal2 : BOOL := 0;(*Output*)
	dnp2_FHItotal2_STATUS : UDINT := 1;(*Output*)
	dnp2_FLOWtotal2 : BOOL := 0;(*Output*)
	dnp2_FLOWtotal2_STATUS : UDINT := 1;(*Output*)
	dnp2_ptpumpag1 : REAL := 0;(*Output*)
	dnp2_ptpumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_ptpumpag2 : REAL := 0;(*Output*)
	dnp2_ptpumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_ptpumpag3 : REAL := 0;(*Output*)
	dnp2_ptpumpag3_STATUS : UDINT := 1;(*Output*)
	dnp2_ptCollector : REAL := 0;(*Output*)
	dnp2_ptCollector_STATUS : UDINT := 1;(*Output*)
	dnp2_mAlevelmaintank : REAL := 0;(*Output*)
	dnp2_mAlevelmaintank_STATUS : UDINT := 1;(*Output*)
	dnp2_mACHL : DINT := 0;(*Output*)
	dnp2_mACHL_STATUS : UDINT := 1;(*Output*)
	dnp2_mAWF1 : DINT := 0;(*Output*)
	dnp2_mAWF1_STATUS : UDINT := 1;(*Output*)
	dnp2_mAWF2 : DINT := 0;(*Output*)
	dnp2_mAWF2_STATUS : UDINT := 1;(*Output*)
	dnp2_I1pumpag1 : DINT := 0;(*Output*)
	dnp2_I1pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_I2pumpag1 : DINT := 0;(*Output*)
	dnp2_I2pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_I3pumpag1 : DINT := 0;(*Output*)
	dnp2_I3pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_V1pumpag1 : DINT := 0;(*Output*)
	dnp2_V1pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_V2pumpag1 : DINT := 0;(*Output*)
	dnp2_V2pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_V3pumpag1 : DINT := 0;(*Output*)
	dnp2_V3pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_V12pumpag1 : DINT := 0;(*Output*)
	dnp2_V12pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_V23pumpag1 : DINT := 0;(*Output*)
	dnp2_V23pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_V31pumpag1 : DINT := 0;(*Output*)
	dnp2_V31pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_p1pumpag1 : DINT := 0;(*Output*)
	dnp2_p1pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_p2pumpag1 : DINT := 0;(*Output*)
	dnp2_p2pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_p3pumpag1 : DINT := 0;(*Output*)
	dnp2_p3pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_q1pumpag1 : DINT := 0;(*Output*)
	dnp2_q1pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_q2pumpag1 : DINT := 0;(*Output*)
	dnp2_q2pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_q3pumpag1 : DINT := 0;(*Output*)
	dnp2_q3pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_s1pumpag1 : DINT := 0;(*Output*)
	dnp2_s1pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_s2pumpag1 : DINT := 0;(*Output*)
	dnp2_s2pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_s3pumpag1 : DINT := 0;(*Output*)
	dnp2_s3pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_PF1pumpag1 : DINT := 0;(*Output*)
	dnp2_PF1pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_PF2pumpag1 : DINT := 0;(*Output*)
	dnp2_PF2pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_PF3pumpag1 : DINT := 0;(*Output*)
	dnp2_PF3pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_Pavpumpag1 : DINT := 0;(*Output*)
	dnp2_Pavpumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_Qavpumpag1 : DINT := 0;(*Output*)
	dnp2_Qavpumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_Savpumpag1 : DINT := 0;(*Output*)
	dnp2_Savpumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_PFavpumpag1 : DINT := 0;(*Output*)
	dnp2_PFavpumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_FREQpumpag1 : DINT := 0;(*Output*)
	dnp2_FREQpumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_i1pumpag2 : DINT := 0;(*Output*)
	dnp2_i1pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_i2pumpag2 : DINT := 0;(*Output*)
	dnp2_i2pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_i3pumpag2 : DINT := 0;(*Output*)
	dnp2_i3pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_v1pumpag2 : DINT := 0;(*Output*)
	dnp2_v1pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_v2pumpag2 : DINT := 0;(*Output*)
	dnp2_v2pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_v3pumpag2 : DINT := 0;(*Output*)
	dnp2_v3pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_V12pumpag2 : DINT := 0;(*Output*)
	dnp2_V12pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_V23pumpag2 : DINT := 0;(*Output*)
	dnp2_V23pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_V31pumpag2 : DINT := 0;(*Output*)
	dnp2_V31pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_p1pumpag2 : DINT := 0;(*Output*)
	dnp2_p1pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_p2pumpag2 : DINT := 0;(*Output*)
	dnp2_p2pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_p3pumpag2 : DINT := 0;(*Output*)
	dnp2_p3pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_q1pumpag2 : DINT := 0;(*Output*)
	dnp2_q1pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_q2pumpag2 : DINT := 0;(*Output*)
	dnp2_q2pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_q3pumpag2 : DINT := 0;(*Output*)
	dnp2_q3pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_s1pumpag2 : DINT := 0;(*Output*)
	dnp2_s1pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_s2pumpag2 : DINT := 0;(*Output*)
	dnp2_s2pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_s3pumpag2 : DINT := 0;(*Output*)
	dnp2_s3pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_PF1pumpag2 : DINT := 0;(*Output*)
	dnp2_PF1pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_PF2pumpag2 : DINT := 0;(*Output*)
	dnp2_PF2pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_PF3pumpag2 : DINT := 0;(*Output*)
	dnp2_PF3pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_Pavpumpag2 : DINT := 0;(*Output*)
	dnp2_Pavpumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_Qavpumpag2 : DINT := 0;(*Output*)
	dnp2_Qavpumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_Savpumpag2 : DINT := 0;(*Output*)
	dnp2_Savpumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_PFavpumpag2 : DINT := 0;(*Output*)
	dnp2_PFavpumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_FREQpumpag2 : DINT := 0;(*Output*)
	dnp2_FREQpumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_i1pumpag3 : DINT := 0;(*Output*)
	dnp2_i1pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp2_i2pumpag3 : DINT := 0;(*Output*)
	dnp2_i2pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp2_i3pumpag3 : DINT := 0;(*Output*)
	dnp2_i3pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp2_v1pumpag3 : DINT := 0;(*Output*)
	dnp2_v1pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp2_v2pumpag3 : DINT := 0;(*Output*)
	dnp2_v2pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp2_v3pumpag3 : DINT := 0;(*Output*)
	dnp2_v3pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp2_V12pumpag3 : DINT := 0;(*Output*)
	dnp2_V12pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp2_V23pumpag3 : DINT := 0;(*Output*)
	dnp2_V23pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp2_V31pumpag3 : DINT := 0;(*Output*)
	dnp2_V31pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp2_p1pumpag3 : DINT := 0;(*Output*)
	dnp2_p1pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp2_p2pumpag3 : DINT := 0;(*Output*)
	dnp2_p2pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp2_p3pumpag3 : DINT := 0;(*Output*)
	dnp2_p3pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp2_q1pumpag3 : DINT := 0;(*Output*)
	dnp2_q1pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp2_q2pumpag3 : DINT := 0;(*Output*)
	dnp2_q2pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp2_q3pumpag3 : DINT := 0;(*Output*)
	dnp2_q3pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp2_s1pumpag3 : DINT := 0;(*Output*)
	dnp2_s1pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp2_s2pumpag3 : DINT := 0;(*Output*)
	dnp2_s2pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp2_s3pumpag3 : DINT := 0;(*Output*)
	dnp2_s3pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp2_PF1pumpag3 : DINT := 0;(*Output*)
	dnp2_PF1pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp2_PF2pumpag3 : DINT := 0;(*Output*)
	dnp2_PF2pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp2_PF3pumpag3 : DINT := 0;(*Output*)
	dnp2_PF3pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp2_Pavpumpag3 : DINT := 0;(*Output*)
	dnp2_Pavpumpag3_STATUS : UDINT := 1;(*Output*)
	dnp2_Qavpumpag3 : DINT := 0;(*Output*)
	dnp2_Qavpumpag3_STATUS : UDINT := 1;(*Output*)
	dnp2_Savpumpag3 : DINT := 0;(*Output*)
	dnp2_Savpumpag3_STATUS : UDINT := 1;(*Output*)
	dnp2_PFavpumpag3 : DINT := 0;(*Output*)
	dnp2_PFavpumpag3_STATUS : UDINT := 1;(*Output*)
	dnp2_FREQpumpag3 : DINT := 0;(*Output*)
	dnp2_FREQpumpag3_STATUS : UDINT := 1;(*Output*)
	dnp2_STOPpumpag1 : BOOL := 0;(*Input*)
	dnp2_STOPpumpag1_STATUS : UDINT := 1;(*Input*)
	dnp2_STOPpumpag2 : BOOL := 0;(*Input*)
	dnp2_STOPpumpag2_STATUS : UDINT := 1;(*Input*)
	dnp2_STOPpumpag3 : BOOL := 0;(*Input*)
	dnp2_STOPpumpag3_STATUS : UDINT := 1;(*Input*)
	dnp2_STARTpumpag1 : BOOL := 0;(*Input*)
	dnp2_STARTpumpag1_STATUS : UDINT := 1;(*Input*)
	dnp2_STARTpumpag2 : BOOL := 0;(*Input*)
	dnp2_STARTpumpag2_STATUS : UDINT := 1;(*Input*)
	dnp2_STARTpumpag3 : BOOL := 0;(*Input*)
	dnp2_STARTpumpag3_STATUS : UDINT := 1;(*Input*)
	dnp2_rs485wf1 : DINT := 0;(*Output*)
	dnp2_rs485wf1_STATUS : UDINT := 1;(*Output*)
	dnp2_rs485wf2 : DINT := 0;(*Output*)
	dnp2_rs485wf2_STATUS : UDINT := 1;(*Output*)
	dnp2_rs485levelmeter : REAL := 0;(*Output*)
	dnp2_rs485levelmeter_STATUS : UDINT := 1;(*Output*)
	dnp2_cl : REAL := 0;(*Output*)
	dnp2_cl_STATUS : UDINT := 1;(*Output*)
	dnp2_tu : REAL := 0;(*Output*)
	dnp2_tu_STATUS : UDINT := 1;(*Output*)
	dnp2_th : REAL := 0;(*Output*)
	dnp2_th_STATUS : UDINT := 1;(*Output*)
	dnp2_ec : REAL := 0;(*Output*)
	dnp2_ec_STATUS : UDINT := 1;(*Output*)
	sql_BOOLTag0 : BOOL;(*Output*)
	LIO_DITag0 : BOOL := 0;(*Input*)
	LIO_DITag1 : BOOL := 0;(*Input*)
	LIO_DITag2 : BOOL := 0;(*Input*)
	LIO_DITag3 : BOOL := 0;(*Input*)
	LIO_DITag4 : BOOL := 0;(*Input*)
	LIO_DITag5 : BOOL := 0;(*Input*)
	LIO_DITag6 : BOOL := 0;(*Input*)
	LIO_DITag7 : BOOL := 0;(*Input*)
	LIO_DOTag0 : BOOL := 0;(*Output*)
	LIO_DOTag1 : BOOL := 0;(*Output*)
	LIO_DOTag2 : BOOL := 0;(*Output*)
	LIO_DOTag3 : BOOL := 0;(*Output*)
	LIO_AITag0 : UINT := 0;(*Input*)
	LIO_AITag1 : UINT := 0;(*Input*)
	LIO_AITag2 : UINT := 0;(*Input*)
	LIO_AITag3 : UINT := 0;(*Input*)
	LIO_AOTag0 : UINT := 0;(*Output*)
	LIO_CNTTag0 : UDINT := 0;(*Input*)
	LIO_CNTTag0_CONTROL : LINT;(*Output*)
	LIO_CNTTag1 : UDINT := 0;(*Input*)
	LIO_CNTTag1_CONTROL : LINT;(*Output*)
	LIO_CNTTag2 : UDINT := 0;(*Input*)
	LIO_CNTTag2_CONTROL : LINT;(*Output*)
	LIO_CNTTag3 : UDINT := 0;(*Input*)
	LIO_CNTTag3_CONTROL : LINT;(*Output*)
	LIO_SENTag0 : REAL := 0;(*Input*)
	LIO_SENTag1 : REAL := 0;(*Input*)
	LIO_Reset : USINT := 0;(*Output*)
	LIO_CPU_Usage : REAL := 0;(*Input*)
	LIO_Total_RAM : REAL := 0;(*Input*)
	LIO_FreeSpace_RAM : REAL := 0;(*Input*)
	LIO_Used_RAM : REAL := 0;(*Input*)
	LIO_Total_Flash : REAL := 0;(*Input*)
	LIO_FreeSpace_Flash : REAL := 0;(*Input*)
	LIO_Used_Flash : REAL := 0;(*Input*)
	LIO_Total_SDCard : REAL := 0;(*Input*)
	LIO_FreeSpace_SDCard : REAL := 0;(*Input*)
	LIO_Used_SDCard : REAL := 0;(*Input*)
	LIO_Total_NVRAM : REAL := 0;(*Input*)
	LIO_FreeSpace_NVRAM : REAL := 0;(*Input*)
	LIO_Used_NVRAM : REAL := 0;(*Input*)
	LIO_CANBUS_Status : USINT := 0;(*Input*)
	LIO_Buzzer : USINT := 0;(*Output*)
	LIO_3GModemON : USINT := 0;(*Output*)
	LIO_3GModemSignallevel : USINT := 0;(*Input*)
	LIO_3GConnected : BOOL := 0;(*Input*)
	LIO_3GModemSecIP1 : USINT := 0;(*Input*)
	LIO_3GModemSecIP2 : USINT := 0;(*Input*)
	LIO_3GModemSecIP3 : USINT := 0;(*Input*)
	LIO_3GModemSecIP4 : USINT := 0;(*Input*)
	LIO_Logic_Processing_Time : REAL := 0;(*Input*)
	LIO_First_Scan : BOOL := 0;(*Input*)
END_VAR
TASK Task1(INTERVAL:= T#100ms, PRIORITY := 1);
PROGRAM INSTANCE_2 WITH Task1 : POU_2;
END_RESOURCE
END_CONFIGURATION
