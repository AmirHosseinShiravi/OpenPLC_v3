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
	rio_p1var1_Tag0 : REAL;
	rio_p1var1_Tag2 : REAL;
	rio_p1var1_Tag4 : REAL;
	rio_p1var1_Tag6 : REAL;
	rio_p1var1_Tag8 : REAL;
	rio_p1var1_Tag10 : REAL;
	rio_p1var1_Tag12 : REAL;
	rio_p1var1_Tag14 : REAL;
	rio_p1var1_Tag16 : REAL;
	rio_p1var1_Tag18 : REAL;
	rio_p1var1_OnLine : UINT;
	rio_p1var1_SendNum : UINT;
	rio_p1var1_RecNum : UINT;
	rio_p1var1_Error : UINT;
	rio_p1var1_Poll : UINT;
	dnp_opendoor : BOOL;
	dnp_opendoor_STATUS : UDINT;
	dnp_opendoor_DT : DT;
	dnp_alarmAC : BOOL;
	dnp_alarmAC_STATUS : UDINT;
	dnp_alarmAC_DT : DT;
	dnp_SUBSCADApumpag1 : BOOL;
	dnp_SUBSCADApumpag1_STATUS : UDINT;
	dnp_SUBSCADApumpag1_DT : DT;
	dnp_DC24V : BOOL;
	dnp_DC24V_STATUS : UDINT;
	dnp_DC24V_DT : DT;
	dnp_FaultPumpag1 : BOOL;
	dnp_FaultPumpag1_STATUS : UDINT;
	dnp_FaultPumpag1_DT : DT;
	dnp_OnPumpag1 : BOOL;
	dnp_OnPumpag1_STATUS : UDINT;
	dnp_OnPumpag1_DT : DT;
	dnp_AutoPumpag1 : BOOL;
	dnp_AutoPumpag1_STATUS : UDINT;
	dnp_AutoPumpag1_DT : DT;
	dnp_FaultPumpag2 : BOOL;
	dnp_FaultPumpag2_STATUS : UDINT;
	dnp_FaultPumpag2_DT : DT;
	dnp_OnPumpag2 : BOOL;
	dnp_OnPumpag2_STATUS : UDINT;
	dnp_OnPumpag2_DT : DT;
	dnp_AutoPumpag2 : BOOL;
	dnp_AutoPumpag2_STATUS : UDINT;
	dnp_AutoPumpag2_DT : DT;
	dnp_subscadapumpag2 : BOOL;
	dnp_subscadapumpag2_STATUS : UDINT;
	dnp_subscadapumpag2_DT : DT;
	dnp_faultPumpag3 : BOOL;
	dnp_faultPumpag3_STATUS : UDINT;
	dnp_faultPumpag3_DT : DT;
	dnp_onPumpag3 : BOOL;
	dnp_onPumpag3_STATUS : UDINT;
	dnp_onPumpag3_DT : DT;
	dnp_autopumpag3 : BOOL;
	dnp_autopumpag3_STATUS : UDINT;
	dnp_autopumpag3_DT : DT;
	dnp_subscadapumpag3 : BOOL;
	dnp_subscadapumpag3_STATUS : UDINT;
	dnp_subscadapumpag3_DT : DT;
	dnp_roomwateralarm : BOOL;
	dnp_roomwateralarm_STATUS : UDINT;
	dnp_roomwateralarm_DT : DT;
	dnp_TankHIalarm : BOOL;
	dnp_TankHIalarm_STATUS : UDINT;
	dnp_TankHIalarm_DT : DT;
	dnp_TankLOWalarm : BOOL;
	dnp_TankLOWalarm_STATUS : UDINT;
	dnp_TankLOWalarm_DT : DT;
	dnp_PHIpumpag1 : BOOL;
	dnp_PHIpumpag1_STATUS : UDINT;
	dnp_PHIpumpag1_DT : DT;
	dnp_PLOWpumpag1 : BOOL;
	dnp_PLOWpumpag1_STATUS : UDINT;
	dnp_PLOWpumpag1_DT : DT;
	dnp_phase1pumpag1 : BOOL;
	dnp_phase1pumpag1_STATUS : UDINT;
	dnp_phase1pumpag1_DT : DT;
	dnp_phase2pumpag1 : BOOL;
	dnp_phase2pumpag1_STATUS : UDINT;
	dnp_phase2pumpag1_DT : DT;
	dnp_phase3pumpag1 : BOOL;
	dnp_phase3pumpag1_STATUS : UDINT;
	dnp_phase3pumpag1_DT : DT;
	dnp_PHIpumpag2 : BOOL;
	dnp_PHIpumpag2_STATUS : UDINT;
	dnp_PHIpumpag2_DT : DT;
	dnp_PLOWpumpag2 : BOOL;
	dnp_PLOWpumpag2_STATUS : UDINT;
	dnp_PLOWpumpag2_DT : DT;
	dnp_phase1pumpag2 : BOOL;
	dnp_phase1pumpag2_STATUS : UDINT;
	dnp_phase1pumpag2_DT : DT;
	dnp_phase2pumpag2 : BOOL;
	dnp_phase2pumpag2_STATUS : UDINT;
	dnp_phase2pumpag2_DT : DT;
	dnp_phase3pumpag2 : BOOL;
	dnp_phase3pumpag2_STATUS : UDINT;
	dnp_phase3pumpag2_DT : DT;
	dnp_PHIpumpag3 : BOOL;
	dnp_PHIpumpag3_STATUS : UDINT;
	dnp_PHIpumpag3_DT : DT;
	dnp_PLOWpumpag3 : BOOL;
	dnp_PLOWpumpag3_STATUS : UDINT;
	dnp_PLOWpumpag3_DT : DT;
	dnp_phase1pumpag3 : BOOL;
	dnp_phase1pumpag3_STATUS : UDINT;
	dnp_phase1pumpag3_DT : DT;
	dnp_phase2pumpag3 : BOOL;
	dnp_phase2pumpag3_STATUS : UDINT;
	dnp_phase2pumpag3_DT : DT;
	dnp_phase3pumpag3 : BOOL;
	dnp_phase3pumpag3_STATUS : UDINT;
	dnp_phase3pumpag3_DT : DT;
	dnp_PHITotal : BOOL;
	dnp_PHITotal_STATUS : UDINT;
	dnp_PHITotal_DT : DT;
	dnp_PLOWTotal : BOOL;
	dnp_PLOWTotal_STATUS : UDINT;
	dnp_PLOWTotal_DT : DT;
	dnp_FHItotal1 : BOOL;
	dnp_FHItotal1_STATUS : UDINT;
	dnp_FHItotal1_DT : DT;
	dnp_FLOWtotal1 : BOOL;
	dnp_FLOWtotal1_STATUS : UDINT;
	dnp_FLOWtotal1_DT : DT;
	dnp_FHItotal2 : BOOL;
	dnp_FHItotal2_STATUS : UDINT;
	dnp_FHItotal2_DT : DT;
	dnp_FLOWtotal2 : BOOL;
	dnp_FLOWtotal2_STATUS : UDINT;
	dnp_FLOWtotal2_DT : DT;
	dnp_ptpumpag1 : REAL;
	dnp_ptpumpag1_STATUS : UDINT;
	dnp_ptpumpag1_DT : DT;
	dnp_ptpumpag2 : REAL;
	dnp_ptpumpag2_STATUS : UDINT;
	dnp_ptpumpag2_DT : DT;
	dnp_ptpumpag3 : REAL;
	dnp_ptpumpag3_STATUS : UDINT;
	dnp_ptpumpag3_DT : DT;
	dnp_ptCollector : REAL;
	dnp_ptCollector_STATUS : UDINT;
	dnp_ptCollector_DT : DT;
	dnp_mAlevelmaintank : REAL;
	dnp_mAlevelmaintank_STATUS : UDINT;
	dnp_mAlevelmaintank_DT : DT;
	dnp_mACHL : DINT;
	dnp_mACHL_STATUS : UDINT;
	dnp_mACHL_DT : DT;
	dnp_mAWF1 : DINT;
	dnp_mAWF1_STATUS : UDINT;
	dnp_mAWF1_DT : DT;
	dnp_mAWF2 : DINT;
	dnp_mAWF2_STATUS : UDINT;
	dnp_mAWF2_DT : DT;
	dnp_I1pumpag1 : DINT;
	dnp_I1pumpag1_STATUS : UDINT;
	dnp_I1pumpag1_DT : DT;
	dnp_I2pumpag1 : DINT;
	dnp_I2pumpag1_STATUS : UDINT;
	dnp_I2pumpag1_DT : DT;
	dnp_I3pumpag1 : DINT;
	dnp_I3pumpag1_STATUS : UDINT;
	dnp_I3pumpag1_DT : DT;
	dnp_V1pumpag1 : DINT;
	dnp_V1pumpag1_STATUS : UDINT;
	dnp_V1pumpag1_DT : DT;
	dnp_V2pumpag1 : DINT;
	dnp_V2pumpag1_STATUS : UDINT;
	dnp_V2pumpag1_DT : DT;
	dnp_V3pumpag1 : DINT;
	dnp_V3pumpag1_STATUS : UDINT;
	dnp_V3pumpag1_DT : DT;
	dnp_V12pumpag1 : DINT;
	dnp_V12pumpag1_STATUS : UDINT;
	dnp_V12pumpag1_DT : DT;
	dnp_V23pumpag1 : DINT;
	dnp_V23pumpag1_STATUS : UDINT;
	dnp_V23pumpag1_DT : DT;
	dnp_V31pumpag1 : DINT;
	dnp_V31pumpag1_STATUS : UDINT;
	dnp_V31pumpag1_DT : DT;
	dnp_p1pumpag1 : DINT;
	dnp_p1pumpag1_STATUS : UDINT;
	dnp_p1pumpag1_DT : DT;
	dnp_p2pumpag1 : DINT;
	dnp_p2pumpag1_STATUS : UDINT;
	dnp_p2pumpag1_DT : DT;
	dnp_p3pumpag1 : DINT;
	dnp_p3pumpag1_STATUS : UDINT;
	dnp_p3pumpag1_DT : DT;
	dnp_q1pumpag1 : DINT;
	dnp_q1pumpag1_STATUS : UDINT;
	dnp_q1pumpag1_DT : DT;
	dnp_q2pumpag1 : DINT;
	dnp_q2pumpag1_STATUS : UDINT;
	dnp_q2pumpag1_DT : DT;
	dnp_q3pumpag1 : DINT;
	dnp_q3pumpag1_STATUS : UDINT;
	dnp_q3pumpag1_DT : DT;
	dnp_s1pumpag1 : DINT;
	dnp_s1pumpag1_STATUS : UDINT;
	dnp_s1pumpag1_DT : DT;
	dnp_s2pumpag1 : DINT;
	dnp_s2pumpag1_STATUS : UDINT;
	dnp_s2pumpag1_DT : DT;
	dnp_s3pumpag1 : DINT;
	dnp_s3pumpag1_STATUS : UDINT;
	dnp_s3pumpag1_DT : DT;
	dnp_PF1pumpag1 : DINT;
	dnp_PF1pumpag1_STATUS : UDINT;
	dnp_PF1pumpag1_DT : DT;
	dnp_PF2pumpag1 : DINT;
	dnp_PF2pumpag1_STATUS : UDINT;
	dnp_PF2pumpag1_DT : DT;
	dnp_PF3pumpag1 : DINT;
	dnp_PF3pumpag1_STATUS : UDINT;
	dnp_PF3pumpag1_DT : DT;
	dnp_Pavpumpag1 : DINT;
	dnp_Pavpumpag1_STATUS : UDINT;
	dnp_Pavpumpag1_DT : DT;
	dnp_Qavpumpag1 : DINT;
	dnp_Qavpumpag1_STATUS : UDINT;
	dnp_Qavpumpag1_DT : DT;
	dnp_Savpumpag1 : DINT;
	dnp_Savpumpag1_STATUS : UDINT;
	dnp_Savpumpag1_DT : DT;
	dnp_PFavpumpag1 : DINT;
	dnp_PFavpumpag1_STATUS : UDINT;
	dnp_PFavpumpag1_DT : DT;
	dnp_FREQpumpag1 : DINT;
	dnp_FREQpumpag1_STATUS : UDINT;
	dnp_FREQpumpag1_DT : DT;
	dnp_i1pumpag2 : DINT;
	dnp_i1pumpag2_STATUS : UDINT;
	dnp_i1pumpag2_DT : DT;
	dnp_i2pumpag2 : DINT;
	dnp_i2pumpag2_STATUS : UDINT;
	dnp_i2pumpag2_DT : DT;
	dnp_i3pumpag2 : DINT;
	dnp_i3pumpag2_STATUS : UDINT;
	dnp_i3pumpag2_DT : DT;
	dnp_v1pumpag2 : DINT;
	dnp_v1pumpag2_STATUS : UDINT;
	dnp_v1pumpag2_DT : DT;
	dnp_v2pumpag2 : DINT;
	dnp_v2pumpag2_STATUS : UDINT;
	dnp_v2pumpag2_DT : DT;
	dnp_v3pumpag2 : DINT;
	dnp_v3pumpag2_STATUS : UDINT;
	dnp_v3pumpag2_DT : DT;
	dnp_V12pumpag2 : DINT;
	dnp_V12pumpag2_STATUS : UDINT;
	dnp_V12pumpag2_DT : DT;
	dnp_V23pumpag2 : DINT;
	dnp_V23pumpag2_STATUS : UDINT;
	dnp_V23pumpag2_DT : DT;
	dnp_V31pumpag2 : DINT;
	dnp_V31pumpag2_STATUS : UDINT;
	dnp_V31pumpag2_DT : DT;
	dnp_p1pumpag2 : DINT;
	dnp_p1pumpag2_STATUS : UDINT;
	dnp_p1pumpag2_DT : DT;
	dnp_p2pumpag2 : DINT;
	dnp_p2pumpag2_STATUS : UDINT;
	dnp_p2pumpag2_DT : DT;
	dnp_p3pumpag2 : DINT;
	dnp_p3pumpag2_STATUS : UDINT;
	dnp_p3pumpag2_DT : DT;
	dnp_q1pumpag2 : DINT;
	dnp_q1pumpag2_STATUS : UDINT;
	dnp_q1pumpag2_DT : DT;
	dnp_q2pumpag2 : DINT;
	dnp_q2pumpag2_STATUS : UDINT;
	dnp_q2pumpag2_DT : DT;
	dnp_q3pumpag2 : DINT;
	dnp_q3pumpag2_STATUS : UDINT;
	dnp_q3pumpag2_DT : DT;
	dnp_s1pumpag2 : DINT;
	dnp_s1pumpag2_STATUS : UDINT;
	dnp_s1pumpag2_DT : DT;
	dnp_s2pumpag2 : DINT;
	dnp_s2pumpag2_STATUS : UDINT;
	dnp_s2pumpag2_DT : DT;
	dnp_s3pumpag2 : DINT;
	dnp_s3pumpag2_STATUS : UDINT;
	dnp_s3pumpag2_DT : DT;
	dnp_PF1pumpag2 : DINT;
	dnp_PF1pumpag2_STATUS : UDINT;
	dnp_PF1pumpag2_DT : DT;
	dnp_PF2pumpag2 : DINT;
	dnp_PF2pumpag2_STATUS : UDINT;
	dnp_PF2pumpag2_DT : DT;
	dnp_PF3pumpag2 : DINT;
	dnp_PF3pumpag2_STATUS : UDINT;
	dnp_PF3pumpag2_DT : DT;
	dnp_Pavpumpag2 : DINT;
	dnp_Pavpumpag2_STATUS : UDINT;
	dnp_Pavpumpag2_DT : DT;
	dnp_Qavpumpag2 : DINT;
	dnp_Qavpumpag2_STATUS : UDINT;
	dnp_Qavpumpag2_DT : DT;
	dnp_Savpumpag2 : DINT;
	dnp_Savpumpag2_STATUS : UDINT;
	dnp_Savpumpag2_DT : DT;
	dnp_PFavpumpag2 : DINT;
	dnp_PFavpumpag2_STATUS : UDINT;
	dnp_PFavpumpag2_DT : DT;
	dnp_FREQpumpag2 : DINT;
	dnp_FREQpumpag2_STATUS : UDINT;
	dnp_FREQpumpag2_DT : DT;
	dnp_i1pumpag3 : DINT;
	dnp_i1pumpag3_STATUS : UDINT;
	dnp_i1pumpag3_DT : DT;
	dnp_i2pumpag3 : DINT;
	dnp_i2pumpag3_STATUS : UDINT;
	dnp_i2pumpag3_DT : DT;
	dnp_i3pumpag3 : DINT;
	dnp_i3pumpag3_STATUS : UDINT;
	dnp_i3pumpag3_DT : DT;
	dnp_v1pumpag3 : DINT;
	dnp_v1pumpag3_STATUS : UDINT;
	dnp_v1pumpag3_DT : DT;
	dnp_v2pumpag3 : DINT;
	dnp_v2pumpag3_STATUS : UDINT;
	dnp_v2pumpag3_DT : DT;
	dnp_v3pumpag3 : DINT;
	dnp_v3pumpag3_STATUS : UDINT;
	dnp_v3pumpag3_DT : DT;
	dnp_V12pumpag3 : DINT;
	dnp_V12pumpag3_STATUS : UDINT;
	dnp_V12pumpag3_DT : DT;
	dnp_V23pumpag3 : DINT;
	dnp_V23pumpag3_STATUS : UDINT;
	dnp_V23pumpag3_DT : DT;
	dnp_V31pumpag3 : DINT;
	dnp_V31pumpag3_STATUS : UDINT;
	dnp_V31pumpag3_DT : DT;
	dnp_p1pumpag3 : DINT;
	dnp_p1pumpag3_STATUS : UDINT;
	dnp_p1pumpag3_DT : DT;
	dnp_p2pumpag3 : DINT;
	dnp_p2pumpag3_STATUS : UDINT;
	dnp_p2pumpag3_DT : DT;
	dnp_p3pumpag3 : DINT;
	dnp_p3pumpag3_STATUS : UDINT;
	dnp_p3pumpag3_DT : DT;
	dnp_q1pumpag3 : DINT;
	dnp_q1pumpag3_STATUS : UDINT;
	dnp_q1pumpag3_DT : DT;
	dnp_q2pumpag3 : DINT;
	dnp_q2pumpag3_STATUS : UDINT;
	dnp_q2pumpag3_DT : DT;
	dnp_q3pumpag3 : DINT;
	dnp_q3pumpag3_STATUS : UDINT;
	dnp_q3pumpag3_DT : DT;
	dnp_s1pumpag3 : DINT;
	dnp_s1pumpag3_STATUS : UDINT;
	dnp_s1pumpag3_DT : DT;
	dnp_s2pumpag3 : DINT;
	dnp_s2pumpag3_STATUS : UDINT;
	dnp_s2pumpag3_DT : DT;
	dnp_s3pumpag3 : DINT;
	dnp_s3pumpag3_STATUS : UDINT;
	dnp_s3pumpag3_DT : DT;
	dnp_PF1pumpag3 : DINT;
	dnp_PF1pumpag3_STATUS : UDINT;
	dnp_PF1pumpag3_DT : DT;
	dnp_PF2pumpag3 : DINT;
	dnp_PF2pumpag3_STATUS : UDINT;
	dnp_PF2pumpag3_DT : DT;
	dnp_PF3pumpag3 : DINT;
	dnp_PF3pumpag3_STATUS : UDINT;
	dnp_PF3pumpag3_DT : DT;
	dnp_Pavpumpag3 : DINT;
	dnp_Pavpumpag3_STATUS : UDINT;
	dnp_Pavpumpag3_DT : DT;
	dnp_Qavpumpag3 : DINT;
	dnp_Qavpumpag3_STATUS : UDINT;
	dnp_Qavpumpag3_DT : DT;
	dnp_Savpumpag3 : DINT;
	dnp_Savpumpag3_STATUS : UDINT;
	dnp_Savpumpag3_DT : DT;
	dnp_PFavpumpag3 : DINT;
	dnp_PFavpumpag3_STATUS : UDINT;
	dnp_PFavpumpag3_DT : DT;
	dnp_FREQpumpag3 : DINT;
	dnp_FREQpumpag3_STATUS : UDINT;
	dnp_FREQpumpag3_DT : DT;
	dnp_STOPpumpag1 : BOOL;
	dnp_STOPpumpag1_STATUS : UDINT;
	dnp_STOPpumpag1_DT : DT;
	dnp_STOPpumpag2 : BOOL;
	dnp_STOPpumpag2_STATUS : UDINT;
	dnp_STOPpumpag2_DT : DT;
	dnp_STOPpumpag3 : BOOL;
	dnp_STOPpumpag3_STATUS : UDINT;
	dnp_STOPpumpag3_DT : DT;
	dnp_STARTpumpag1 : BOOL;
	dnp_STARTpumpag1_STATUS : UDINT;
	dnp_STARTpumpag1_DT : DT;
	dnp_STARTpumpag2 : BOOL;
	dnp_STARTpumpag2_STATUS : UDINT;
	dnp_STARTpumpag2_DT : DT;
	dnp_STARTpumpag3 : BOOL;
	dnp_STARTpumpag3_STATUS : UDINT;
	dnp_STARTpumpag3_DT : DT;
	dnp_rs485wf1 : DINT;
	dnp_rs485wf1_STATUS : UDINT;
	dnp_rs485wf1_DT : DT;
	dnp_rs485wf2 : DINT;
	dnp_rs485wf2_STATUS : UDINT;
	dnp_rs485wf2_DT : DT;
	dnp_rs485levelmeter : REAL;
	dnp_rs485levelmeter_STATUS : UDINT;
	dnp_rs485levelmeter_DT : DT;
	dnp_cl : REAL;
	dnp_cl_STATUS : UDINT;
	dnp_cl_DT : DT;
	dnp_tu : REAL;
	dnp_tu_STATUS : UDINT;
	dnp_tu_DT : DT;
	dnp_th : REAL;
	dnp_th_STATUS : UDINT;
	dnp_th_DT : DT;
	dnp_ec : REAL;
	dnp_ec_STATUS : UDINT;
	dnp_ec_DT : DT;
	dnp_DITag1000 : BOOL;
	dnp_DITag1000_STATUS : UDINT;
	dnp_DITag1000_DT : DT;
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
	rio_p1var1_Tag0 : REAL;(*Output*)
	rio_p1var1_Tag2 : REAL;(*Output*)
	rio_p1var1_Tag4 : REAL;(*Output*)
	rio_p1var1_Tag6 : REAL;(*Output*)
	rio_p1var1_Tag8 : REAL;(*Output*)
	rio_p1var1_Tag10 : REAL;(*Output*)
	rio_p1var1_Tag12 : REAL;(*Output*)
	rio_p1var1_Tag14 : REAL;(*Output*)
	rio_p1var1_Tag16 : REAL;(*Output*)
	rio_p1var1_Tag18 : REAL;(*Output*)
	rio_p1var1_OnLine : UINT;(*Input*)
	rio_p1var1_SendNum : UINT;(*Input*)
	rio_p1var1_RecNum : UINT;(*Input*)
	rio_p1var1_Error : UINT;(*Input*)
	rio_p1var1_Poll : UINT;(*Output*)
	dnp_opendoor_STATUS : UDINT := 1;(*Output*)
	dnp_opendoor_DT : DT;(*Output*)
	dnp_alarmAC_STATUS : UDINT := 1;(*Output*)
	dnp_alarmAC_DT : DT;(*Output*)
	dnp_SUBSCADApumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_SUBSCADApumpag1_DT : DT;(*Output*)
	dnp_DC24V_STATUS : UDINT := 1;(*Output*)
	dnp_DC24V_DT : DT;(*Output*)
	dnp_FaultPumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_FaultPumpag1_DT : DT;(*Output*)
	dnp_OnPumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_OnPumpag1_DT : DT;(*Output*)
	dnp_AutoPumpag1 : BOOL := 0;(*Output*)
	dnp_AutoPumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_AutoPumpag1_DT : DT;(*Output*)
	dnp_FaultPumpag2 : BOOL := 0;(*Output*)
	dnp_FaultPumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_FaultPumpag2_DT : DT;(*Output*)
	dnp_OnPumpag2 : BOOL := 0;(*Output*)
	dnp_OnPumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_OnPumpag2_DT : DT;(*Output*)
	dnp_AutoPumpag2 : BOOL := 0;(*Output*)
	dnp_AutoPumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_AutoPumpag2_DT : DT;(*Output*)
	dnp_subscadapumpag2 : BOOL := 0;(*Output*)
	dnp_subscadapumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_subscadapumpag2_DT : DT;(*Output*)
	dnp_faultPumpag3 : BOOL := 0;(*Output*)
	dnp_faultPumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_faultPumpag3_DT : DT;(*Output*)
	dnp_onPumpag3 : BOOL := 0;(*Output*)
	dnp_onPumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_onPumpag3_DT : DT;(*Output*)
	dnp_autopumpag3 : BOOL := 0;(*Output*)
	dnp_autopumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_autopumpag3_DT : DT;(*Output*)
	dnp_subscadapumpag3 : BOOL := 0;(*Output*)
	dnp_subscadapumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_subscadapumpag3_DT : DT;(*Output*)
	dnp_roomwateralarm : BOOL := 0;(*Output*)
	dnp_roomwateralarm_STATUS : UDINT := 1;(*Output*)
	dnp_roomwateralarm_DT : DT;(*Output*)
	dnp_TankHIalarm : BOOL := 0;(*Output*)
	dnp_TankHIalarm_STATUS : UDINT := 1;(*Output*)
	dnp_TankHIalarm_DT : DT;(*Output*)
	dnp_TankLOWalarm : BOOL := 0;(*Output*)
	dnp_TankLOWalarm_STATUS : UDINT := 1;(*Output*)
	dnp_TankLOWalarm_DT : DT;(*Output*)
	dnp_PHIpumpag1 : BOOL := 0;(*Output*)
	dnp_PHIpumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_PHIpumpag1_DT : DT;(*Output*)
	dnp_PLOWpumpag1 : BOOL := 0;(*Output*)
	dnp_PLOWpumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_PLOWpumpag1_DT : DT;(*Output*)
	dnp_phase1pumpag1 : BOOL := 0;(*Output*)
	dnp_phase1pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_phase1pumpag1_DT : DT;(*Output*)
	dnp_phase2pumpag1 : BOOL := 0;(*Output*)
	dnp_phase2pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_phase2pumpag1_DT : DT;(*Output*)
	dnp_phase3pumpag1 : BOOL := 0;(*Output*)
	dnp_phase3pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_phase3pumpag1_DT : DT;(*Output*)
	dnp_PHIpumpag2 : BOOL := 0;(*Output*)
	dnp_PHIpumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_PHIpumpag2_DT : DT;(*Output*)
	dnp_PLOWpumpag2 : BOOL := 0;(*Output*)
	dnp_PLOWpumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_PLOWpumpag2_DT : DT;(*Output*)
	dnp_phase1pumpag2 : BOOL := 0;(*Output*)
	dnp_phase1pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_phase1pumpag2_DT : DT;(*Output*)
	dnp_phase2pumpag2 : BOOL := 0;(*Output*)
	dnp_phase2pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_phase2pumpag2_DT : DT;(*Output*)
	dnp_phase3pumpag2 : BOOL := 0;(*Output*)
	dnp_phase3pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_phase3pumpag2_DT : DT;(*Output*)
	dnp_PHIpumpag3 : BOOL := 0;(*Output*)
	dnp_PHIpumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_PHIpumpag3_DT : DT;(*Output*)
	dnp_PLOWpumpag3 : BOOL := 0;(*Output*)
	dnp_PLOWpumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_PLOWpumpag3_DT : DT;(*Output*)
	dnp_phase1pumpag3 : BOOL := 0;(*Output*)
	dnp_phase1pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_phase1pumpag3_DT : DT;(*Output*)
	dnp_phase2pumpag3 : BOOL := 0;(*Output*)
	dnp_phase2pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_phase2pumpag3_DT : DT;(*Output*)
	dnp_phase3pumpag3 : BOOL := 0;(*Output*)
	dnp_phase3pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_phase3pumpag3_DT : DT;(*Output*)
	dnp_PHITotal : BOOL := 0;(*Output*)
	dnp_PHITotal_STATUS : UDINT := 1;(*Output*)
	dnp_PHITotal_DT : DT;(*Output*)
	dnp_PLOWTotal : BOOL := 0;(*Output*)
	dnp_PLOWTotal_STATUS : UDINT := 1;(*Output*)
	dnp_PLOWTotal_DT : DT;(*Output*)
	dnp_FHItotal1 : BOOL := 0;(*Output*)
	dnp_FHItotal1_STATUS : UDINT := 1;(*Output*)
	dnp_FHItotal1_DT : DT;(*Output*)
	dnp_FLOWtotal1 : BOOL := 0;(*Output*)
	dnp_FLOWtotal1_STATUS : UDINT := 1;(*Output*)
	dnp_FLOWtotal1_DT : DT;(*Output*)
	dnp_FHItotal2 : BOOL := 0;(*Output*)
	dnp_FHItotal2_STATUS : UDINT := 1;(*Output*)
	dnp_FHItotal2_DT : DT;(*Output*)
	dnp_FLOWtotal2 : BOOL := 0;(*Output*)
	dnp_FLOWtotal2_STATUS : UDINT := 1;(*Output*)
	dnp_FLOWtotal2_DT : DT;(*Output*)
	dnp_ptpumpag1 : REAL := 0;(*Output*)
	dnp_ptpumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_ptpumpag1_DT : DT;(*Output*)
	dnp_ptpumpag2 : REAL := 0;(*Output*)
	dnp_ptpumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_ptpumpag2_DT : DT;(*Output*)
	dnp_ptpumpag3 : REAL := 0;(*Output*)
	dnp_ptpumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_ptpumpag3_DT : DT;(*Output*)
	dnp_ptCollector : REAL := 0;(*Output*)
	dnp_ptCollector_STATUS : UDINT := 1;(*Output*)
	dnp_ptCollector_DT : DT;(*Output*)
	dnp_mAlevelmaintank : REAL := 0;(*Output*)
	dnp_mAlevelmaintank_STATUS : UDINT := 1;(*Output*)
	dnp_mAlevelmaintank_DT : DT;(*Output*)
	dnp_mACHL : DINT := 0;(*Output*)
	dnp_mACHL_STATUS : UDINT := 1;(*Output*)
	dnp_mACHL_DT : DT;(*Output*)
	dnp_mAWF1 : DINT := 0;(*Output*)
	dnp_mAWF1_STATUS : UDINT := 1;(*Output*)
	dnp_mAWF1_DT : DT;(*Output*)
	dnp_mAWF2 : DINT := 0;(*Output*)
	dnp_mAWF2_STATUS : UDINT := 1;(*Output*)
	dnp_mAWF2_DT : DT;(*Output*)
	dnp_I1pumpag1 : DINT := 0;(*Output*)
	dnp_I1pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_I1pumpag1_DT : DT;(*Output*)
	dnp_I2pumpag1 : DINT := 0;(*Output*)
	dnp_I2pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_I2pumpag1_DT : DT;(*Output*)
	dnp_I3pumpag1 : DINT := 0;(*Output*)
	dnp_I3pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_I3pumpag1_DT : DT;(*Output*)
	dnp_V1pumpag1 : DINT := 0;(*Output*)
	dnp_V1pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_V1pumpag1_DT : DT;(*Output*)
	dnp_V2pumpag1 : DINT := 0;(*Output*)
	dnp_V2pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_V2pumpag1_DT : DT;(*Output*)
	dnp_V3pumpag1 : DINT := 0;(*Output*)
	dnp_V3pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_V3pumpag1_DT : DT;(*Output*)
	dnp_V12pumpag1 : DINT := 0;(*Output*)
	dnp_V12pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_V12pumpag1_DT : DT;(*Output*)
	dnp_V23pumpag1 : DINT := 0;(*Output*)
	dnp_V23pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_V23pumpag1_DT : DT;(*Output*)
	dnp_V31pumpag1 : DINT := 0;(*Output*)
	dnp_V31pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_V31pumpag1_DT : DT;(*Output*)
	dnp_p1pumpag1 : DINT := 0;(*Output*)
	dnp_p1pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_p1pumpag1_DT : DT;(*Output*)
	dnp_p2pumpag1 : DINT := 0;(*Output*)
	dnp_p2pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_p2pumpag1_DT : DT;(*Output*)
	dnp_p3pumpag1 : DINT := 0;(*Output*)
	dnp_p3pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_p3pumpag1_DT : DT;(*Output*)
	dnp_q1pumpag1 : DINT := 0;(*Output*)
	dnp_q1pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_q1pumpag1_DT : DT;(*Output*)
	dnp_q2pumpag1 : DINT := 0;(*Output*)
	dnp_q2pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_q2pumpag1_DT : DT;(*Output*)
	dnp_q3pumpag1 : DINT := 0;(*Output*)
	dnp_q3pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_q3pumpag1_DT : DT;(*Output*)
	dnp_s1pumpag1 : DINT := 0;(*Output*)
	dnp_s1pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_s1pumpag1_DT : DT;(*Output*)
	dnp_s2pumpag1 : DINT := 0;(*Output*)
	dnp_s2pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_s2pumpag1_DT : DT;(*Output*)
	dnp_s3pumpag1 : DINT := 0;(*Output*)
	dnp_s3pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_s3pumpag1_DT : DT;(*Output*)
	dnp_PF1pumpag1 : DINT := 0;(*Output*)
	dnp_PF1pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_PF1pumpag1_DT : DT;(*Output*)
	dnp_PF2pumpag1 : DINT := 0;(*Output*)
	dnp_PF2pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_PF2pumpag1_DT : DT;(*Output*)
	dnp_PF3pumpag1 : DINT := 0;(*Output*)
	dnp_PF3pumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_PF3pumpag1_DT : DT;(*Output*)
	dnp_Pavpumpag1 : DINT := 0;(*Output*)
	dnp_Pavpumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_Pavpumpag1_DT : DT;(*Output*)
	dnp_Qavpumpag1 : DINT := 0;(*Output*)
	dnp_Qavpumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_Qavpumpag1_DT : DT;(*Output*)
	dnp_Savpumpag1 : DINT := 0;(*Output*)
	dnp_Savpumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_Savpumpag1_DT : DT;(*Output*)
	dnp_PFavpumpag1 : DINT := 0;(*Output*)
	dnp_PFavpumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_PFavpumpag1_DT : DT;(*Output*)
	dnp_FREQpumpag1 : DINT := 0;(*Output*)
	dnp_FREQpumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_FREQpumpag1_DT : DT;(*Output*)
	dnp_i1pumpag2 : DINT := 0;(*Output*)
	dnp_i1pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_i1pumpag2_DT : DT;(*Output*)
	dnp_i2pumpag2 : DINT := 0;(*Output*)
	dnp_i2pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_i2pumpag2_DT : DT;(*Output*)
	dnp_i3pumpag2 : DINT := 0;(*Output*)
	dnp_i3pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_i3pumpag2_DT : DT;(*Output*)
	dnp_v1pumpag2 : DINT := 0;(*Output*)
	dnp_v1pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_v1pumpag2_DT : DT;(*Output*)
	dnp_v2pumpag2 : DINT := 0;(*Output*)
	dnp_v2pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_v2pumpag2_DT : DT;(*Output*)
	dnp_v3pumpag2 : DINT := 0;(*Output*)
	dnp_v3pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_v3pumpag2_DT : DT;(*Output*)
	dnp_V12pumpag2 : DINT := 0;(*Output*)
	dnp_V12pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_V12pumpag2_DT : DT;(*Output*)
	dnp_V23pumpag2 : DINT := 0;(*Output*)
	dnp_V23pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_V23pumpag2_DT : DT;(*Output*)
	dnp_V31pumpag2 : DINT := 0;(*Output*)
	dnp_V31pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_V31pumpag2_DT : DT;(*Output*)
	dnp_p1pumpag2 : DINT := 0;(*Output*)
	dnp_p1pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_p1pumpag2_DT : DT;(*Output*)
	dnp_p2pumpag2 : DINT := 0;(*Output*)
	dnp_p2pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_p2pumpag2_DT : DT;(*Output*)
	dnp_p3pumpag2 : DINT := 0;(*Output*)
	dnp_p3pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_p3pumpag2_DT : DT;(*Output*)
	dnp_q1pumpag2 : DINT := 0;(*Output*)
	dnp_q1pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_q1pumpag2_DT : DT;(*Output*)
	dnp_q2pumpag2 : DINT := 0;(*Output*)
	dnp_q2pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_q2pumpag2_DT : DT;(*Output*)
	dnp_q3pumpag2 : DINT := 0;(*Output*)
	dnp_q3pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_q3pumpag2_DT : DT;(*Output*)
	dnp_s1pumpag2 : DINT := 0;(*Output*)
	dnp_s1pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_s1pumpag2_DT : DT;(*Output*)
	dnp_s2pumpag2 : DINT := 0;(*Output*)
	dnp_s2pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_s2pumpag2_DT : DT;(*Output*)
	dnp_s3pumpag2 : DINT := 0;(*Output*)
	dnp_s3pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_s3pumpag2_DT : DT;(*Output*)
	dnp_PF1pumpag2 : DINT := 0;(*Output*)
	dnp_PF1pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_PF1pumpag2_DT : DT;(*Output*)
	dnp_PF2pumpag2 : DINT := 0;(*Output*)
	dnp_PF2pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_PF2pumpag2_DT : DT;(*Output*)
	dnp_PF3pumpag2 : DINT := 0;(*Output*)
	dnp_PF3pumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_PF3pumpag2_DT : DT;(*Output*)
	dnp_Pavpumpag2 : DINT := 0;(*Output*)
	dnp_Pavpumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_Pavpumpag2_DT : DT;(*Output*)
	dnp_Qavpumpag2 : DINT := 0;(*Output*)
	dnp_Qavpumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_Qavpumpag2_DT : DT;(*Output*)
	dnp_Savpumpag2 : DINT := 0;(*Output*)
	dnp_Savpumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_Savpumpag2_DT : DT;(*Output*)
	dnp_PFavpumpag2 : DINT := 0;(*Output*)
	dnp_PFavpumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_PFavpumpag2_DT : DT;(*Output*)
	dnp_FREQpumpag2 : DINT := 0;(*Output*)
	dnp_FREQpumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_FREQpumpag2_DT : DT;(*Output*)
	dnp_i1pumpag3 : DINT := 0;(*Output*)
	dnp_i1pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_i1pumpag3_DT : DT;(*Output*)
	dnp_i2pumpag3 : DINT := 0;(*Output*)
	dnp_i2pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_i2pumpag3_DT : DT;(*Output*)
	dnp_i3pumpag3 : DINT := 0;(*Output*)
	dnp_i3pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_i3pumpag3_DT : DT;(*Output*)
	dnp_v1pumpag3 : DINT := 0;(*Output*)
	dnp_v1pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_v1pumpag3_DT : DT;(*Output*)
	dnp_v2pumpag3 : DINT := 0;(*Output*)
	dnp_v2pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_v2pumpag3_DT : DT;(*Output*)
	dnp_v3pumpag3 : DINT := 0;(*Output*)
	dnp_v3pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_v3pumpag3_DT : DT;(*Output*)
	dnp_V12pumpag3 : DINT := 0;(*Output*)
	dnp_V12pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_V12pumpag3_DT : DT;(*Output*)
	dnp_V23pumpag3 : DINT := 0;(*Output*)
	dnp_V23pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_V23pumpag3_DT : DT;(*Output*)
	dnp_V31pumpag3 : DINT := 0;(*Output*)
	dnp_V31pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_V31pumpag3_DT : DT;(*Output*)
	dnp_p1pumpag3 : DINT := 0;(*Output*)
	dnp_p1pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_p1pumpag3_DT : DT;(*Output*)
	dnp_p2pumpag3 : DINT := 0;(*Output*)
	dnp_p2pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_p2pumpag3_DT : DT;(*Output*)
	dnp_p3pumpag3 : DINT := 0;(*Output*)
	dnp_p3pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_p3pumpag3_DT : DT;(*Output*)
	dnp_q1pumpag3 : DINT := 0;(*Output*)
	dnp_q1pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_q1pumpag3_DT : DT;(*Output*)
	dnp_q2pumpag3 : DINT := 0;(*Output*)
	dnp_q2pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_q2pumpag3_DT : DT;(*Output*)
	dnp_q3pumpag3 : DINT := 0;(*Output*)
	dnp_q3pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_q3pumpag3_DT : DT;(*Output*)
	dnp_s1pumpag3 : DINT := 0;(*Output*)
	dnp_s1pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_s1pumpag3_DT : DT;(*Output*)
	dnp_s2pumpag3 : DINT := 0;(*Output*)
	dnp_s2pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_s2pumpag3_DT : DT;(*Output*)
	dnp_s3pumpag3 : DINT := 0;(*Output*)
	dnp_s3pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_s3pumpag3_DT : DT;(*Output*)
	dnp_PF1pumpag3 : DINT := 0;(*Output*)
	dnp_PF1pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_PF1pumpag3_DT : DT;(*Output*)
	dnp_PF2pumpag3 : DINT := 0;(*Output*)
	dnp_PF2pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_PF2pumpag3_DT : DT;(*Output*)
	dnp_PF3pumpag3 : DINT := 0;(*Output*)
	dnp_PF3pumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_PF3pumpag3_DT : DT;(*Output*)
	dnp_Pavpumpag3 : DINT := 0;(*Output*)
	dnp_Pavpumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_Pavpumpag3_DT : DT;(*Output*)
	dnp_Qavpumpag3 : DINT := 0;(*Output*)
	dnp_Qavpumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_Qavpumpag3_DT : DT;(*Output*)
	dnp_Savpumpag3 : DINT := 0;(*Output*)
	dnp_Savpumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_Savpumpag3_DT : DT;(*Output*)
	dnp_PFavpumpag3 : DINT := 0;(*Output*)
	dnp_PFavpumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_PFavpumpag3_DT : DT;(*Output*)
	dnp_FREQpumpag3 : DINT := 0;(*Output*)
	dnp_FREQpumpag3_STATUS : UDINT := 1;(*Output*)
	dnp_FREQpumpag3_DT : DT;(*Output*)
	dnp_STOPpumpag1 : BOOL := 0;(*Input*)
	dnp_STOPpumpag1_STATUS : UDINT := 1;(*Input*)
	dnp_STOPpumpag1_DT : DT;(*Input*)
	dnp_STOPpumpag2 : BOOL := 0;(*Input*)
	dnp_STOPpumpag2_STATUS : UDINT := 1;(*Input*)
	dnp_STOPpumpag2_DT : DT;(*Input*)
	dnp_STOPpumpag3 : BOOL := 0;(*Input*)
	dnp_STOPpumpag3_STATUS : UDINT := 1;(*Input*)
	dnp_STOPpumpag3_DT : DT;(*Input*)
	dnp_STARTpumpag1 : BOOL := 0;(*Input*)
	dnp_STARTpumpag1_STATUS : UDINT := 1;(*Input*)
	dnp_STARTpumpag1_DT : DT;(*Input*)
	dnp_STARTpumpag2 : BOOL := 0;(*Input*)
	dnp_STARTpumpag2_STATUS : UDINT := 1;(*Input*)
	dnp_STARTpumpag2_DT : DT;(*Input*)
	dnp_STARTpumpag3 : BOOL := 0;(*Input*)
	dnp_STARTpumpag3_STATUS : UDINT := 1;(*Input*)
	dnp_STARTpumpag3_DT : DT;(*Input*)
	dnp_rs485wf1 : DINT := 0;(*Output*)
	dnp_rs485wf1_STATUS : UDINT := 1;(*Output*)
	dnp_rs485wf1_DT : DT;(*Output*)
	dnp_rs485wf2 : DINT := 0;(*Output*)
	dnp_rs485wf2_STATUS : UDINT := 1;(*Output*)
	dnp_rs485wf2_DT : DT;(*Output*)
	dnp_rs485levelmeter : REAL := 0;(*Output*)
	dnp_rs485levelmeter_STATUS : UDINT := 1;(*Output*)
	dnp_rs485levelmeter_DT : DT;(*Output*)
	dnp_cl : REAL := 0;(*Output*)
	dnp_cl_STATUS : UDINT := 1;(*Output*)
	dnp_cl_DT : DT;(*Output*)
	dnp_tu : REAL := 0;(*Output*)
	dnp_tu_STATUS : UDINT := 1;(*Output*)
	dnp_tu_DT : DT;(*Output*)
	dnp_th : REAL := 0;(*Output*)
	dnp_th_STATUS : UDINT := 1;(*Output*)
	dnp_th_DT : DT;(*Output*)
	dnp_ec : REAL := 0;(*Output*)
	dnp_ec_STATUS : UDINT := 1;(*Output*)
	dnp_ec_DT : DT;(*Output*)
	dnp_DITag1000 : BOOL := 0;(*Output*)
	dnp_DITag1000_STATUS : UDINT := 1;(*Output*)
	dnp_DITag1000_DT : DT;(*Output*)
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

VAR_GLOBAL RETAIN
	dnp_opendoor : BOOL := 0;(*Output*)
	dnp_alarmAC : BOOL := 0;(*Output*)
	dnp_SUBSCADApumpag1 : BOOL := 0;(*Output*)
	dnp_DC24V : BOOL := 0;(*Output*)
	dnp_FaultPumpag1 : BOOL := 0;(*Output*)
	dnp_OnPumpag1 : BOOL := 0;(*Output*)
END_VAR
TASK Task1(INTERVAL:= T#100ms, PRIORITY := 1);
PROGRAM INSTANCE_2 WITH Task1 : POU_2;
END_RESOURCE
END_CONFIGURATION
