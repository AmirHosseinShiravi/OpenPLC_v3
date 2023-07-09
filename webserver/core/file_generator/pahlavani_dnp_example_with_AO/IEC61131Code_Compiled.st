PROGRAM POU_pou
VAR_TEMP
	MOVE_ENO_9 : BOOL;
	MOVE_OUT_9 : BOOL;
END_VAR

VAR_EXTERNAL
	I : ARRAY [0..255] OF LWORD;
	Q : ARRAY [0..255] OF LWORD;
	M : ARRAY [0..255] OF LWORD;
	rio_h1var1_Tag772 : INT;
	rio_h1var1_Tag773 : INT;
	rio_h1var1_OnLine : UINT;
	rio_h1var1_SendNum : UINT;
	rio_h1var1_RecNum : UINT;
	rio_h1var1_Error : UINT;
	rio_h1var1_Poll : UINT;
	rio_h1var2_Tag783 : INT;
	rio_h1var2_Tag784 : INT;
	rio_h1var2_Tag785 : INT;
	rio_h1var2_Tag786 : INT;
	rio_h1var2_Tag787 : INT;
	rio_h1var2_Tag788 : INT;
	rio_h1var2_Tag789 : INT;
	rio_h1var2_Tag790 : INT;
	rio_h1var2_OnLine : UINT;
	rio_h1var2_SendNum : UINT;
	rio_h1var2_RecNum : UINT;
	rio_h1var2_Error : UINT;
	rio_h1var2_Poll : UINT;
	rio_h1var3_Tag897 : INT;
	rio_h1var3_Tag898 : INT;
	rio_h1var3_OnLine : UINT;
	rio_h1var3_SendNum : UINT;
	rio_h1var3_RecNum : UINT;
	rio_h1var3_Error : UINT;
	rio_h1var3_Poll : UINT;
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
	rio_AI9_Tag1 : INT;
	rio_AI9_Tag2 : INT;
	rio_AI9_Tag3 : INT;
	rio_AI9_OnLine : UINT;
	rio_AI9_SendNum : UINT;
	rio_AI9_RecNum : UINT;
	rio_AI9_Error : UINT;
	rio_AI9_Poll : UINT;
	rio_level485_Tag30032 : REAL;
	rio_level485_OnLine : UINT;
	rio_level485_SendNum : UINT;
	rio_level485_RecNum : UINT;
	rio_level485_Error : UINT;
	rio_level485_Poll : UINT;
	rio_w1var1_Tag2999 : REAL;
	rio_w1var1_Tag3001 : REAL;
	rio_w1var1_Tag3003 : REAL;
	rio_w1var1_Tag3005 : REAL;
	rio_w1var1_Tag3007 : REAL;
	rio_w1var1_Tag3009 : REAL;
	rio_w1var1_Tag3011 : REAL;
	rio_w1var1_Tag3013 : REAL;
	rio_w1var1_Tag3015 : REAL;
	rio_w1var1_Tag3017 : REAL;
	rio_w1var1_Tag3019 : REAL;
	rio_w1var1_Tag3021 : REAL;
	rio_w1var1_Tag3023 : REAL;
	rio_w1var1_Tag3025 : REAL;
	rio_w1var1_Tag3027 : REAL;
	rio_w1var1_Tag3029 : REAL;
	rio_w1var1_Tag3031 : REAL;
	rio_w1var1_OnLine : UINT;
	rio_w1var1_SendNum : UINT;
	rio_w1var1_RecNum : UINT;
	rio_w1var1_Error : UINT;
	rio_w1var1_Poll : UINT;
	rio_w1var2_Tag3109 : REAL;
	rio_w1var2_OnLine : UINT;
	rio_w1var2_SendNum : UINT;
	rio_w1var2_RecNum : UINT;
	rio_w1var2_Error : UINT;
	rio_w1var2_Poll : UINT;
	rio_w1var3_Tag3053 : REAL;
	rio_w1var3_Tag3055 : REAL;
	rio_w1var3_Tag3057 : REAL;
	rio_w1var3_Tag3059 : REAL;
	rio_w1var3_Tag3061 : REAL;
	rio_w1var3_Tag3063 : REAL;
	rio_w1var3_Tag3065 : REAL;
	rio_w1var3_Tag3067 : REAL;
	rio_w1var3_Tag3069 : REAL;
	rio_w1var3_Tag3071 : REAL;
	rio_w1var3_Tag3073 : REAL;
	rio_w1var3_OnLine : UINT;
	rio_w1var3_SendNum : UINT;
	rio_w1var3_RecNum : UINT;
	rio_w1var3_Error : UINT;
	rio_w1var3_Poll : UINT;
	rio_w1var4_Tag3077 : REAL;
	rio_w1var4_Tag3079 : REAL;
	rio_w1var4_Tag3081 : REAL;
	rio_w1var4_OnLine : UINT;
	rio_w1var4_SendNum : UINT;
	rio_w1var4_RecNum : UINT;
	rio_w1var4_Error : UINT;
	rio_w1var4_Poll : UINT;
	rio_w2var1_Tag2999 : REAL;
	rio_w2var1_Tag3001 : REAL;
	rio_w2var1_Tag3003 : REAL;
	rio_w2var1_Tag3005 : REAL;
	rio_w2var1_Tag3007 : REAL;
	rio_w2var1_Tag3009 : REAL;
	rio_w2var1_Tag3011 : REAL;
	rio_w2var1_Tag3013 : REAL;
	rio_w2var1_Tag3015 : REAL;
	rio_w2var1_Tag3017 : REAL;
	rio_w2var1_Tag3019 : REAL;
	rio_w2var1_Tag3021 : REAL;
	rio_w2var1_Tag3023 : REAL;
	rio_w2var1_Tag3025 : REAL;
	rio_w2var1_Tag3027 : REAL;
	rio_w2var1_Tag3029 : REAL;
	rio_w2var1_Tag3031 : REAL;
	rio_w2var1_OnLine : UINT;
	rio_w2var1_SendNum : UINT;
	rio_w2var1_RecNum : UINT;
	rio_w2var1_Error : UINT;
	rio_w2var1_Poll : UINT;
	rio_w2var2_Tag3109 : REAL;
	rio_w2var2_OnLine : UINT;
	rio_w2var2_SendNum : UINT;
	rio_w2var2_RecNum : UINT;
	rio_w2var2_Error : UINT;
	rio_w2var2_Poll : UINT;
	rio_w2var3_Tag3053 : REAL;
	rio_w2var3_Tag3055 : REAL;
	rio_w2var3_Tag3057 : REAL;
	rio_w2var3_Tag3059 : REAL;
	rio_w2var3_Tag3061 : REAL;
	rio_w2var3_Tag3063 : REAL;
	rio_w2var3_Tag3065 : REAL;
	rio_w2var3_Tag3067 : REAL;
	rio_w2var3_Tag3069 : REAL;
	rio_w2var3_Tag3071 : REAL;
	rio_w2var3_Tag3073 : REAL;
	rio_w2var3_OnLine : UINT;
	rio_w2var3_SendNum : UINT;
	rio_w2var3_RecNum : UINT;
	rio_w2var3_Error : UINT;
	rio_w2var3_Poll : UINT;
	rio_w2var4_Tag3077 : REAL;
	rio_w2var4_Tag3079 : REAL;
	rio_w2var4_Tag3081 : REAL;
	rio_w2var4_OnLine : UINT;
	rio_w2var4_SendNum : UINT;
	rio_w2var4_RecNum : UINT;
	rio_w2var4_Error : UINT;
	rio_w2var4_Poll : UINT;
	rio_w3var1_Tag2999 : REAL;
	rio_w3var1_Tag3001 : REAL;
	rio_w3var1_Tag3003 : REAL;
	rio_w3var1_Tag3005 : REAL;
	rio_w3var1_Tag3007 : REAL;
	rio_w3var1_Tag3009 : REAL;
	rio_w3var1_Tag3011 : REAL;
	rio_w3var1_Tag3013 : REAL;
	rio_w3var1_Tag3015 : REAL;
	rio_w3var1_Tag3017 : REAL;
	rio_w3var1_Tag3019 : REAL;
	rio_w3var1_Tag3021 : REAL;
	rio_w3var1_Tag3023 : REAL;
	rio_w3var1_Tag3025 : REAL;
	rio_w3var1_Tag3027 : REAL;
	rio_w3var1_Tag3029 : REAL;
	rio_w3var1_Tag3031 : REAL;
	rio_w3var1_OnLine : UINT;
	rio_w3var1_SendNum : UINT;
	rio_w3var1_RecNum : UINT;
	rio_w3var1_Error : UINT;
	rio_w3var1_Poll : UINT;
	rio_w3var2_Tag3109 : REAL;
	rio_w3var2_OnLine : UINT;
	rio_w3var2_SendNum : UINT;
	rio_w3var2_RecNum : UINT;
	rio_w3var2_Error : UINT;
	rio_w3var2_Poll : UINT;
	rio_w3var3_Tag3053 : REAL;
	rio_w3var3_Tag3055 : REAL;
	rio_w3var3_Tag3057 : REAL;
	rio_w3var3_Tag3059 : REAL;
	rio_w3var3_Tag3061 : REAL;
	rio_w3var3_Tag3063 : REAL;
	rio_w3var3_Tag3065 : REAL;
	rio_w3var3_Tag3067 : REAL;
	rio_w3var3_Tag3069 : REAL;
	rio_w3var3_Tag3071 : REAL;
	rio_w3var3_Tag3073 : REAL;
	rio_w3var3_OnLine : UINT;
	rio_w3var3_SendNum : UINT;
	rio_w3var3_RecNum : UINT;
	rio_w3var3_Error : UINT;
	rio_w3var3_Poll : UINT;
	rio_w3var4_Tag3077 : REAL;
	rio_w3var4_Tag3079 : REAL;
	rio_w3var4_Tag3081 : REAL;
	rio_w3var4_OnLine : UINT;
	rio_w3var4_SendNum : UINT;
	rio_w3var4_RecNum : UINT;
	rio_w3var4_Error : UINT;
	rio_w3var4_Poll : UINT;
	rio_h2var1_Tag772 : INT;
	rio_h2var1_Tag773 : INT;
	rio_h2var1_OnLine : UINT;
	rio_h2var1_SendNum : UINT;
	rio_h2var1_RecNum : UINT;
	rio_h2var1_Error : UINT;
	rio_h2var1_Poll : UINT;
	rio_h2var2_Tag783 : INT;
	rio_h2var2_Tag784 : INT;
	rio_h2var2_Tag785 : INT;
	rio_h2var2_Tag786 : INT;
	rio_h2var2_Tag787 : INT;
	rio_h2var2_Tag788 : INT;
	rio_h2var2_Tag789 : INT;
	rio_h2var2_Tag790 : INT;
	rio_h2var2_OnLine : UINT;
	rio_h2var2_SendNum : UINT;
	rio_h2var2_RecNum : UINT;
	rio_h2var2_Error : UINT;
	rio_h2var2_Poll : UINT;
	rio_h2var3_Tag897 : INT;
	rio_h2var3_Tag898 : INT;
	rio_h2var3_OnLine : UINT;
	rio_h2var3_SendNum : UINT;
	rio_h2var3_RecNum : UINT;
	rio_h2var3_Error : UINT;
	rio_h2var3_Poll : UINT;
	rio_h4var1_Tag772 : INT;
	rio_h4var1_Tag773 : INT;
	rio_h4var1_OnLine : UINT;
	rio_h4var1_SendNum : UINT;
	rio_h4var1_RecNum : UINT;
	rio_h4var1_Error : UINT;
	rio_h4var1_Poll : UINT;
	rio_h4var2_Tag783 : INT;
	rio_h4var2_Tag784 : INT;
	rio_h4var2_Tag785 : INT;
	rio_h4var2_Tag786 : INT;
	rio_h4var2_Tag787 : INT;
	rio_h4var2_Tag788 : INT;
	rio_h4var2_Tag789 : INT;
	rio_h4var2_Tag790 : INT;
	rio_h4var2_OnLine : UINT;
	rio_h4var2_SendNum : UINT;
	rio_h4var2_RecNum : UINT;
	rio_h4var2_Error : UINT;
	rio_h4var2_Poll : UINT;
	rio_h4var3_Tag897 : INT;
	rio_h4var3_Tag898 : INT;
	rio_h4var3_OnLine : UINT;
	rio_h4var3_SendNum : UINT;
	rio_h4var3_RecNum : UINT;
	rio_h4var3_Error : UINT;
	rio_h4var3_Poll : UINT;
	rio_h5var1_Tag772 : INT;
	rio_h5var1_Tag773 : INT;
	rio_h5var1_OnLine : UINT;
	rio_h5var1_SendNum : UINT;
	rio_h5var1_RecNum : UINT;
	rio_h5var1_Error : UINT;
	rio_h5var1_Poll : UINT;
	rio_h5var2_Tag783 : INT;
	rio_h5var2_Tag784 : INT;
	rio_h5var2_Tag785 : INT;
	rio_h5var2_Tag786 : INT;
	rio_h5var2_Tag787 : INT;
	rio_h5var2_Tag788 : INT;
	rio_h5var2_Tag789 : INT;
	rio_h5var2_Tag790 : INT;
	rio_h5var2_OnLine : UINT;
	rio_h5var2_SendNum : UINT;
	rio_h5var2_RecNum : UINT;
	rio_h5var2_Error : UINT;
	rio_h5var2_Poll : UINT;
	rio_h5var3_Tag897 : INT;
	rio_h5var3_Tag898 : INT;
	rio_h5var3_OnLine : UINT;
	rio_h5var3_SendNum : UINT;
	rio_h5var3_RecNum : UINT;
	rio_h5var3_Error : UINT;
	rio_h5var3_Poll : UINT;
	dnp_opendoor : BOOL;
	dnp_opendoor_STATUS : UDINT;
	dnp_opendoor_DT : DT;
	dnp_alarmAC : BOOL;
	dnp_alarmAC_STATUS : UDINT;
	dnp_alarmAC_DT : DT;
	dnp_SUBSCADAWell1 : BOOL;
	dnp_SUBSCADAWell1_STATUS : UDINT;
	dnp_SUBSCADAWell1_DT : DT;
	dnp_DC24V : BOOL;
	dnp_DC24V_STATUS : UDINT;
	dnp_DC24V_DT : DT;
	dnp_FaultWell1 : BOOL;
	dnp_FaultWell1_STATUS : UDINT;
	dnp_FaultWell1_DT : DT;
	dnp_ONWell1 : BOOL;
	dnp_ONWell1_STATUS : UDINT;
	dnp_ONWell1_DT : DT;
	dnp_AutoWell1 : BOOL;
	dnp_AutoWell1_STATUS : UDINT;
	dnp_AutoWell1_DT : DT;
	dnp_FaultWell2 : BOOL;
	dnp_FaultWell2_STATUS : UDINT;
	dnp_FaultWell2_DT : DT;
	dnp_ONWell2 : BOOL;
	dnp_ONWell2_STATUS : UDINT;
	dnp_ONWell2_DT : DT;
	dnp_AutoWell2 : BOOL;
	dnp_AutoWell2_STATUS : UDINT;
	dnp_AutoWell2_DT : DT;
	dnp_SubScadaWell2 : BOOL;
	dnp_SubScadaWell2_STATUS : UDINT;
	dnp_SubScadaWell2_DT : DT;
	dnp_FaultWell3 : BOOL;
	dnp_FaultWell3_STATUS : UDINT;
	dnp_FaultWell3_DT : DT;
	dnp_ONWell3 : BOOL;
	dnp_ONWell3_STATUS : UDINT;
	dnp_ONWell3_DT : DT;
	dnp_AutoWell3 : BOOL;
	dnp_AutoWell3_STATUS : UDINT;
	dnp_AutoWell3_DT : DT;
	dnp_SubScadaWell3 : BOOL;
	dnp_SubScadaWell3_STATUS : UDINT;
	dnp_SubScadaWell3_DT : DT;
	dnp_roomwaterAlarm : BOOL;
	dnp_roomwaterAlarm_STATUS : UDINT;
	dnp_roomwaterAlarm_DT : DT;
	dnp_chamberWaterAlarm : BOOL;
	dnp_chamberWaterAlarm_STATUS : UDINT;
	dnp_chamberWaterAlarm_DT : DT;
	dnp_TankAlarmHI : BOOL;
	dnp_TankAlarmHI_STATUS : UDINT;
	dnp_TankAlarmHI_DT : DT;
	dnp_TankAlarmLOW : BOOL;
	dnp_TankAlarmLOW_STATUS : UDINT;
	dnp_TankAlarmLOW_DT : DT;
	dnp_Faultpumpag1 : BOOL;
	dnp_Faultpumpag1_STATUS : UDINT;
	dnp_Faultpumpag1_DT : DT;
	dnp_ONpumpag1 : BOOL;
	dnp_ONpumpag1_STATUS : UDINT;
	dnp_ONpumpag1_DT : DT;
	dnp_Faultpumpag4 : BOOL;
	dnp_Faultpumpag4_STATUS : UDINT;
	dnp_Faultpumpag4_DT : DT;
	dnp_ONpumpag4 : BOOL;
	dnp_ONpumpag4_STATUS : UDINT;
	dnp_ONpumpag4_DT : DT;
	dnp_Faultpumpag5 : BOOL;
	dnp_Faultpumpag5_STATUS : UDINT;
	dnp_Faultpumpag5_DT : DT;
	dnp_ONpumpag5 : BOOL;
	dnp_ONpumpag5_STATUS : UDINT;
	dnp_ONpumpag5_DT : DT;
	dnp_Faultpumpag6 : BOOL;
	dnp_Faultpumpag6_STATUS : UDINT;
	dnp_Faultpumpag6_DT : DT;
	dnp_ONpumpag6 : BOOL;
	dnp_ONpumpag6_STATUS : UDINT;
	dnp_ONpumpag6_DT : DT;
	dnp_pressureWell1HI : BOOL;
	dnp_pressureWell1HI_STATUS : UDINT;
	dnp_pressureWell1HI_DT : DT;
	dnp_pressureWell1LOW : BOOL;
	dnp_pressureWell1LOW_STATUS : UDINT;
	dnp_pressureWell1LOW_DT : DT;
	dnp_phase1Well1 : BOOL;
	dnp_phase1Well1_STATUS : UDINT;
	dnp_phase1Well1_DT : DT;
	dnp_phase2Well1 : BOOL;
	dnp_phase2Well1_STATUS : UDINT;
	dnp_phase2Well1_DT : DT;
	dnp_phase3Well1 : BOOL;
	dnp_phase3Well1_STATUS : UDINT;
	dnp_phase3Well1_DT : DT;
	dnp_pressureWell2HI : BOOL;
	dnp_pressureWell2HI_STATUS : UDINT;
	dnp_pressureWell2HI_DT : DT;
	dnp_pressureWell2LOW : BOOL;
	dnp_pressureWell2LOW_STATUS : UDINT;
	dnp_pressureWell2LOW_DT : DT;
	dnp_phase1Well2 : BOOL;
	dnp_phase1Well2_STATUS : UDINT;
	dnp_phase1Well2_DT : DT;
	dnp_phase2Well2 : BOOL;
	dnp_phase2Well2_STATUS : UDINT;
	dnp_phase2Well2_DT : DT;
	dnp_phase3Well2 : BOOL;
	dnp_phase3Well2_STATUS : UDINT;
	dnp_phase3Well2_DT : DT;
	dnp_pressureWell3HI : BOOL;
	dnp_pressureWell3HI_STATUS : UDINT;
	dnp_pressureWell3HI_DT : DT;
	dnp_pressureWell3LOW : BOOL;
	dnp_pressureWell3LOW_STATUS : UDINT;
	dnp_pressureWell3LOW_DT : DT;
	dnp_phase1Well3 : BOOL;
	dnp_phase1Well3_STATUS : UDINT;
	dnp_phase1Well3_DT : DT;
	dnp_phase2Well3 : BOOL;
	dnp_phase2Well3_STATUS : UDINT;
	dnp_phase2Well3_DT : DT;
	dnp_phase3Well3 : BOOL;
	dnp_phase3Well3_STATUS : UDINT;
	dnp_phase3Well3_DT : DT;
	dnp_pressureWell1 : REAL;
	dnp_pressureWell1_STATUS : UDINT;
	dnp_pressureWell1_DT : DT;
	dnp_pressureWell2 : REAL;
	dnp_pressureWell2_STATUS : UDINT;
	dnp_pressureWell2_DT : DT;
	dnp_pressureWell3 : REAL;
	dnp_pressureWell3_STATUS : UDINT;
	dnp_pressureWell3_DT : DT;
	dnp_pressurepumpag123 : REAL;
	dnp_pressurepumpag123_STATUS : UDINT;
	dnp_pressurepumpag123_DT : DT;
	dnp_pressurepumpag456 : REAL;
	dnp_pressurepumpag456_STATUS : UDINT;
	dnp_pressurepumpag456_DT : DT;
	dnp_levelmeterTank : REAL;
	dnp_levelmeterTank_STATUS : UDINT;
	dnp_levelmeterTank_DT : DT;
	dnp_CHLmeter : REAL;
	dnp_CHLmeter_STATUS : UDINT;
	dnp_CHLmeter_DT : DT;
	dnp_I1well1 : DINT;
	dnp_I1well1_STATUS : UDINT;
	dnp_I1well1_DT : DT;
	dnp_I2well1 : DINT;
	dnp_I2well1_STATUS : UDINT;
	dnp_I2well1_DT : DT;
	dnp_I3well1 : DINT;
	dnp_I3well1_STATUS : UDINT;
	dnp_I3well1_DT : DT;
	dnp_V1well1 : DINT;
	dnp_V1well1_STATUS : UDINT;
	dnp_V1well1_DT : DT;
	dnp_V2well1 : DINT;
	dnp_V2well1_STATUS : UDINT;
	dnp_V2well1_DT : DT;
	dnp_V3well1 : DINT;
	dnp_V3well1_STATUS : UDINT;
	dnp_V3well1_DT : DT;
	dnp_V12Well1 : DINT;
	dnp_V12Well1_STATUS : UDINT;
	dnp_V12Well1_DT : DT;
	dnp_V23Well1 : DINT;
	dnp_V23Well1_STATUS : UDINT;
	dnp_V23Well1_DT : DT;
	dnp_V31Well1 : DINT;
	dnp_V31Well1_STATUS : UDINT;
	dnp_V31Well1_DT : DT;
	dnp_P1Well1 : DINT;
	dnp_P1Well1_STATUS : UDINT;
	dnp_P1Well1_DT : DT;
	dnp_P2Well1 : DINT;
	dnp_P2Well1_STATUS : UDINT;
	dnp_P2Well1_DT : DT;
	dnp_P3Well1 : DINT;
	dnp_P3Well1_STATUS : UDINT;
	dnp_P3Well1_DT : DT;
	dnp_q1well1 : DINT;
	dnp_q1well1_STATUS : UDINT;
	dnp_q1well1_DT : DT;
	dnp_q2well1 : DINT;
	dnp_q2well1_STATUS : UDINT;
	dnp_q2well1_DT : DT;
	dnp_q3well1 : DINT;
	dnp_q3well1_STATUS : UDINT;
	dnp_q3well1_DT : DT;
	dnp_s1well1 : DINT;
	dnp_s1well1_STATUS : UDINT;
	dnp_s1well1_DT : DT;
	dnp_s2well1 : DINT;
	dnp_s2well1_STATUS : UDINT;
	dnp_s2well1_DT : DT;
	dnp_s3well1 : DINT;
	dnp_s3well1_STATUS : UDINT;
	dnp_s3well1_DT : DT;
	dnp_pf1well1 : DINT;
	dnp_pf1well1_STATUS : UDINT;
	dnp_pf1well1_DT : DT;
	dnp_pf2well1 : DINT;
	dnp_pf2well1_STATUS : UDINT;
	dnp_pf2well1_DT : DT;
	dnp_pf3well1 : DINT;
	dnp_pf3well1_STATUS : UDINT;
	dnp_pf3well1_DT : DT;
	dnp_FreqWell1 : DINT;
	dnp_FreqWell1_STATUS : UDINT;
	dnp_FreqWell1_DT : DT;
	dnp_I1Well2 : DINT;
	dnp_I1Well2_STATUS : UDINT;
	dnp_I1Well2_DT : DT;
	dnp_I2Well2 : DINT;
	dnp_I2Well2_STATUS : UDINT;
	dnp_I2Well2_DT : DT;
	dnp_I3Well2 : DINT;
	dnp_I3Well2_STATUS : UDINT;
	dnp_I3Well2_DT : DT;
	dnp_V1Well2 : DINT;
	dnp_V1Well2_STATUS : UDINT;
	dnp_V1Well2_DT : DT;
	dnp_V2Well2 : DINT;
	dnp_V2Well2_STATUS : UDINT;
	dnp_V2Well2_DT : DT;
	dnp_V12Well2 : DINT;
	dnp_V12Well2_STATUS : UDINT;
	dnp_V12Well2_DT : DT;
	dnp_V23Well2 : DINT;
	dnp_V23Well2_STATUS : UDINT;
	dnp_V23Well2_DT : DT;
	dnp_V31well2 : DINT;
	dnp_V31well2_STATUS : UDINT;
	dnp_V31well2_DT : DT;
	dnp_p1Well2 : DINT;
	dnp_p1Well2_STATUS : UDINT;
	dnp_p1Well2_DT : DT;
	dnp_p2Well2 : DINT;
	dnp_p2Well2_STATUS : UDINT;
	dnp_p2Well2_DT : DT;
	dnp_p3Well2 : DINT;
	dnp_p3Well2_STATUS : UDINT;
	dnp_p3Well2_DT : DT;
	dnp_q1Well2 : DINT;
	dnp_q1Well2_STATUS : UDINT;
	dnp_q1Well2_DT : DT;
	dnp_q2Well2 : DINT;
	dnp_q2Well2_STATUS : UDINT;
	dnp_q2Well2_DT : DT;
	dnp_q3Well2 : DINT;
	dnp_q3Well2_STATUS : UDINT;
	dnp_q3Well2_DT : DT;
	dnp_s1well2 : DINT;
	dnp_s1well2_STATUS : UDINT;
	dnp_s1well2_DT : DT;
	dnp_s2Well2 : DINT;
	dnp_s2Well2_STATUS : UDINT;
	dnp_s2Well2_DT : DT;
	dnp_s3Well2 : DINT;
	dnp_s3Well2_STATUS : UDINT;
	dnp_s3Well2_DT : DT;
	dnp_PF1Well2 : DINT;
	dnp_PF1Well2_STATUS : UDINT;
	dnp_PF1Well2_DT : DT;
	dnp_PF2Well2 : DINT;
	dnp_PF2Well2_STATUS : UDINT;
	dnp_PF2Well2_DT : DT;
	dnp_PF3Well2 : DINT;
	dnp_PF3Well2_STATUS : UDINT;
	dnp_PF3Well2_DT : DT;
	dnp_FreqWell2 : DINT;
	dnp_FreqWell2_STATUS : UDINT;
	dnp_FreqWell2_DT : DT;
	dnp_I1Well3 : DINT;
	dnp_I1Well3_STATUS : UDINT;
	dnp_I1Well3_DT : DT;
	dnp_I2Well3 : DINT;
	dnp_I2Well3_STATUS : UDINT;
	dnp_I2Well3_DT : DT;
	dnp_I3Well3 : DINT;
	dnp_I3Well3_STATUS : UDINT;
	dnp_I3Well3_DT : DT;
	dnp_V1Well3 : DINT;
	dnp_V1Well3_STATUS : UDINT;
	dnp_V1Well3_DT : DT;
	dnp_V2Well3 : DINT;
	dnp_V2Well3_STATUS : UDINT;
	dnp_V2Well3_DT : DT;
	dnp_V3Well3 : DINT;
	dnp_V3Well3_STATUS : UDINT;
	dnp_V3Well3_DT : DT;
	dnp_V12Well3 : DINT;
	dnp_V12Well3_STATUS : UDINT;
	dnp_V12Well3_DT : DT;
	dnp_V23Well3 : DINT;
	dnp_V23Well3_STATUS : UDINT;
	dnp_V23Well3_DT : DT;
	dnp_V31Well3 : DINT;
	dnp_V31Well3_STATUS : UDINT;
	dnp_V31Well3_DT : DT;
	dnp_P1Well3 : DINT;
	dnp_P1Well3_STATUS : UDINT;
	dnp_P1Well3_DT : DT;
	dnp_P2Well3 : DINT;
	dnp_P2Well3_STATUS : UDINT;
	dnp_P2Well3_DT : DT;
	dnp_P3Well3 : DINT;
	dnp_P3Well3_STATUS : UDINT;
	dnp_P3Well3_DT : DT;
	dnp_Q1Well3 : DINT;
	dnp_Q1Well3_STATUS : UDINT;
	dnp_Q1Well3_DT : DT;
	dnp_Q2Well3 : DINT;
	dnp_Q2Well3_STATUS : UDINT;
	dnp_Q2Well3_DT : DT;
	dnp_Q3Well3 : DINT;
	dnp_Q3Well3_STATUS : UDINT;
	dnp_Q3Well3_DT : DT;
	dnp_S1Well3 : DINT;
	dnp_S1Well3_STATUS : UDINT;
	dnp_S1Well3_DT : DT;
	dnp_S2Well3 : DINT;
	dnp_S2Well3_STATUS : UDINT;
	dnp_S2Well3_DT : DT;
	dnp_S3Well3 : DINT;
	dnp_S3Well3_STATUS : UDINT;
	dnp_S3Well3_DT : DT;
	dnp_PF1Well3 : DINT;
	dnp_PF1Well3_STATUS : UDINT;
	dnp_PF1Well3_DT : DT;
	dnp_PF2Well3 : DINT;
	dnp_PF2Well3_STATUS : UDINT;
	dnp_PF2Well3_DT : DT;
	dnp_PF3Well3 : DINT;
	dnp_PF3Well3_STATUS : UDINT;
	dnp_PF3Well3_DT : DT;
	dnp_FreqWell3 : DINT;
	dnp_FreqWell3_STATUS : UDINT;
	dnp_FreqWell3_DT : DT;
	dnp_Iavpumpag1 : DINT;
	dnp_Iavpumpag1_STATUS : UDINT;
	dnp_Iavpumpag1_DT : DT;
	dnp_Vavpumpag1 : DINT;
	dnp_Vavpumpag1_STATUS : UDINT;
	dnp_Vavpumpag1_DT : DT;
	dnp_Pavpumpag1 : DINT;
	dnp_Pavpumpag1_STATUS : UDINT;
	dnp_Pavpumpag1_DT : DT;
	dnp_Freqpumpag1 : DINT;
	dnp_Freqpumpag1_STATUS : UDINT;
	dnp_Freqpumpag1_DT : DT;
	dnp_rpmpumpag1 : DINT;
	dnp_rpmpumpag1_STATUS : UDINT;
	dnp_rpmpumpag1_DT : DT;
	dnp_Iavpumpag2 : DINT;
	dnp_Iavpumpag2_STATUS : UDINT;
	dnp_Iavpumpag2_DT : DT;
	dnp_Vavpumpag2 : DINT;
	dnp_Vavpumpag2_STATUS : UDINT;
	dnp_Vavpumpag2_DT : DT;
	dnp_Pavpumpag2 : DINT;
	dnp_Pavpumpag2_STATUS : UDINT;
	dnp_Pavpumpag2_DT : DT;
	dnp_Freqpumpag2 : DINT;
	dnp_Freqpumpag2_STATUS : UDINT;
	dnp_Freqpumpag2_DT : DT;
	dnp_rpmpumpag2 : DINT;
	dnp_rpmpumpag2_STATUS : UDINT;
	dnp_rpmpumpag2_DT : DT;
	dnp_Iavpumpag4 : DINT;
	dnp_Iavpumpag4_STATUS : UDINT;
	dnp_Iavpumpag4_DT : DT;
	dnp_Vavpumpag4 : DINT;
	dnp_Vavpumpag4_STATUS : UDINT;
	dnp_Vavpumpag4_DT : DT;
	dnp_Pavpumpag4 : DINT;
	dnp_Pavpumpag4_STATUS : UDINT;
	dnp_Pavpumpag4_DT : DT;
	dnp_Freqpumpag4 : DINT;
	dnp_Freqpumpag4_STATUS : UDINT;
	dnp_Freqpumpag4_DT : DT;
	dnp_rpmpumpag4 : DINT;
	dnp_rpmpumpag4_STATUS : UDINT;
	dnp_rpmpumpag4_DT : DT;
	dnp_Iavpumpag5 : DINT;
	dnp_Iavpumpag5_STATUS : UDINT;
	dnp_Iavpumpag5_DT : DT;
	dnp_Vavpumpag5 : DINT;
	dnp_Vavpumpag5_STATUS : UDINT;
	dnp_Vavpumpag5_DT : DT;
	dnp_Pavpumpag5 : DINT;
	dnp_Pavpumpag5_STATUS : UDINT;
	dnp_Pavpumpag5_DT : DT;
	dnp_Freqpumpag5 : DINT;
	dnp_Freqpumpag5_STATUS : UDINT;
	dnp_Freqpumpag5_DT : DT;
	dnp_rpmpumpag5 : DINT;
	dnp_rpmpumpag5_STATUS : UDINT;
	dnp_rpmpumpag5_DT : DT;
	dnp_Iavpumpag6 : DINT;
	dnp_Iavpumpag6_STATUS : UDINT;
	dnp_Iavpumpag6_DT : DT;
	dnp_Vavpumpag6 : DINT;
	dnp_Vavpumpag6_STATUS : UDINT;
	dnp_Vavpumpag6_DT : DT;
	dnp_Pavpumpag6 : DINT;
	dnp_Pavpumpag6_STATUS : UDINT;
	dnp_Pavpumpag6_DT : DT;
	dnp_Freqpumpag6 : DINT;
	dnp_Freqpumpag6_STATUS : UDINT;
	dnp_Freqpumpag6_DT : DT;
	dnp_rpmpumpag6 : DINT;
	dnp_rpmpumpag6_STATUS : UDINT;
	dnp_rpmpumpag6_DT : DT;
	dnp_CHLmeter485 : DINT;
	dnp_CHLmeter485_STATUS : UDINT;
	dnp_CHLmeter485_DT : DT;
	dnp_Well1Stop : BOOL;
	dnp_Well1Stop_STATUS : UDINT;
	dnp_Well1Stop_DT : DT;
	dnp_Well1Start : BOOL;
	dnp_Well1Start_STATUS : UDINT;
	dnp_Well1Start_DT : DT;
	dnp_Well2Stop : BOOL;
	dnp_Well2Stop_STATUS : UDINT;
	dnp_Well2Stop_DT : DT;
	dnp_Well2Start : BOOL;
	dnp_Well2Start_STATUS : UDINT;
	dnp_Well2Start_DT : DT;
	dnp_Well3Stop : BOOL;
	dnp_Well3Stop_STATUS : UDINT;
	dnp_Well3Stop_DT : DT;
	dnp_Well3Start : BOOL;
	dnp_Well3Start_STATUS : UDINT;
	dnp_Well3Start_DT : DT;
	dnp_pumpag1StopStart : BOOL;
	dnp_pumpag1StopStart_STATUS : UDINT;
	dnp_pumpag1StopStart_DT : DT;
	dnp_Pumpag2StopStart : BOOL;
	dnp_Pumpag2StopStart_STATUS : UDINT;
	dnp_Pumpag2StopStart_DT : DT;
	dnp_Pumpag4StopStart : BOOL;
	dnp_Pumpag4StopStart_STATUS : UDINT;
	dnp_Pumpag4StopStart_DT : DT;
	dnp_Pumpag5StopStart : BOOL;
	dnp_Pumpag5StopStart_STATUS : UDINT;
	dnp_Pumpag5StopStart_DT : DT;
	dnp_Pumpag6StopStart : BOOL;
	dnp_Pumpag6StopStart_STATUS : UDINT;
	dnp_Pumpag6StopStart_DT : DT;
	dnp_V3Well2 : DINT;
	dnp_V3Well2_STATUS : UDINT;
	dnp_V3Well2_DT : DT;
	dnp_FaultPumpag2 : BOOL;
	dnp_FaultPumpag2_STATUS : UDINT;
	dnp_FaultPumpag2_DT : DT;
	dnp_ONpumpag2 : BOOL;
	dnp_ONpumpag2_STATUS : UDINT;
	dnp_ONpumpag2_DT : DT;
	dnp_OnStarwell2 : BOOL;
	dnp_OnStarwell2_STATUS : UDINT;
	dnp_OnStarwell2_DT : DT;
	dnp_OnStarwell3 : BOOL;
	dnp_OnStarwell3_STATUS : UDINT;
	dnp_OnStarwell3_DT : DT;
	dnp_leveltankspare : REAL;
	dnp_leveltankspare_STATUS : UDINT;
	dnp_leveltankspare_DT : DT;
	dnp_AOTag1000 : DINT;
	dnp_AOTag1000_STATUS : UDINT;
	dnp_AOTag1000_DT : DT;
	dnp_AOTag1001 : INT;
	dnp_AOTag1001_STATUS : UDINT;
	dnp_AOTag1001_DT : DT;
	dnp_AOTag1002 : REAL;
	dnp_AOTag1002_STATUS : UDINT;
	dnp_AOTag1002_DT : DT;
	dnp_AOTag1003 : LREAL;
	dnp_AOTag1003_STATUS : UDINT;
	dnp_AOTag1003_DT : DT;
	dnp2_opendoor : BOOL;
	dnp2_opendoor_STATUS : UDINT;
	dnp2_opendoor_DT : DT;
	dnp2_alarmAC : BOOL;
	dnp2_alarmAC_STATUS : UDINT;
	dnp2_alarmAC_DT : DT;
	dnp2_SUBSCADAWell1 : BOOL;
	dnp2_SUBSCADAWell1_STATUS : UDINT;
	dnp2_SUBSCADAWell1_DT : DT;
	dnp2_DC24V : BOOL;
	dnp2_DC24V_STATUS : UDINT;
	dnp2_DC24V_DT : DT;
	dnp2_FaultWell1 : BOOL;
	dnp2_FaultWell1_STATUS : UDINT;
	dnp2_FaultWell1_DT : DT;
	dnp2_ONWell1 : BOOL;
	dnp2_ONWell1_STATUS : UDINT;
	dnp2_ONWell1_DT : DT;
	dnp2_AutoWell1 : BOOL;
	dnp2_AutoWell1_STATUS : UDINT;
	dnp2_AutoWell1_DT : DT;
	dnp2_FaultWell2 : BOOL;
	dnp2_FaultWell2_STATUS : UDINT;
	dnp2_FaultWell2_DT : DT;
	dnp2_ONWell2 : BOOL;
	dnp2_ONWell2_STATUS : UDINT;
	dnp2_ONWell2_DT : DT;
	dnp2_AutoWell2 : BOOL;
	dnp2_AutoWell2_STATUS : UDINT;
	dnp2_AutoWell2_DT : DT;
	dnp2_SubScadaWell2 : BOOL;
	dnp2_SubScadaWell2_STATUS : UDINT;
	dnp2_SubScadaWell2_DT : DT;
	dnp2_FaultWell3 : BOOL;
	dnp2_FaultWell3_STATUS : UDINT;
	dnp2_FaultWell3_DT : DT;
	dnp2_ONWell3 : BOOL;
	dnp2_ONWell3_STATUS : UDINT;
	dnp2_ONWell3_DT : DT;
	dnp2_AutoWell3 : BOOL;
	dnp2_AutoWell3_STATUS : UDINT;
	dnp2_AutoWell3_DT : DT;
	dnp2_SubScadaWell3 : BOOL;
	dnp2_SubScadaWell3_STATUS : UDINT;
	dnp2_SubScadaWell3_DT : DT;
	dnp2_roomwaterAlarm : BOOL;
	dnp2_roomwaterAlarm_STATUS : UDINT;
	dnp2_roomwaterAlarm_DT : DT;
	dnp2_chamberWaterAlarm : BOOL;
	dnp2_chamberWaterAlarm_STATUS : UDINT;
	dnp2_chamberWaterAlarm_DT : DT;
	dnp2_TankAlarmHI : BOOL;
	dnp2_TankAlarmHI_STATUS : UDINT;
	dnp2_TankAlarmHI_DT : DT;
	dnp2_TankAlarmLOW : BOOL;
	dnp2_TankAlarmLOW_STATUS : UDINT;
	dnp2_TankAlarmLOW_DT : DT;
	dnp2_Faultpumpag1 : BOOL;
	dnp2_Faultpumpag1_STATUS : UDINT;
	dnp2_Faultpumpag1_DT : DT;
	dnp2_ONpumpag1 : BOOL;
	dnp2_ONpumpag1_STATUS : UDINT;
	dnp2_ONpumpag1_DT : DT;
	dnp2_Faultpumpag4 : BOOL;
	dnp2_Faultpumpag4_STATUS : UDINT;
	dnp2_Faultpumpag4_DT : DT;
	dnp2_ONpumpag4 : BOOL;
	dnp2_ONpumpag4_STATUS : UDINT;
	dnp2_ONpumpag4_DT : DT;
	dnp2_Faultpumpag5 : BOOL;
	dnp2_Faultpumpag5_STATUS : UDINT;
	dnp2_Faultpumpag5_DT : DT;
	dnp2_ONpumpag5 : BOOL;
	dnp2_ONpumpag5_STATUS : UDINT;
	dnp2_ONpumpag5_DT : DT;
	dnp2_Faultpumpag6 : BOOL;
	dnp2_Faultpumpag6_STATUS : UDINT;
	dnp2_Faultpumpag6_DT : DT;
	dnp2_ONpumpag6 : BOOL;
	dnp2_ONpumpag6_STATUS : UDINT;
	dnp2_ONpumpag6_DT : DT;
	dnp2_pressureWell1HI : BOOL;
	dnp2_pressureWell1HI_STATUS : UDINT;
	dnp2_pressureWell1HI_DT : DT;
	dnp2_pressureWell1LOW : BOOL;
	dnp2_pressureWell1LOW_STATUS : UDINT;
	dnp2_pressureWell1LOW_DT : DT;
	dnp2_phase1Well1 : BOOL;
	dnp2_phase1Well1_STATUS : UDINT;
	dnp2_phase1Well1_DT : DT;
	dnp2_phase2Well1 : BOOL;
	dnp2_phase2Well1_STATUS : UDINT;
	dnp2_phase2Well1_DT : DT;
	dnp2_phase3Well1 : BOOL;
	dnp2_phase3Well1_STATUS : UDINT;
	dnp2_phase3Well1_DT : DT;
	dnp2_pressureWell2HI : BOOL;
	dnp2_pressureWell2HI_STATUS : UDINT;
	dnp2_pressureWell2HI_DT : DT;
	dnp2_pressureWell2LOW : BOOL;
	dnp2_pressureWell2LOW_STATUS : UDINT;
	dnp2_pressureWell2LOW_DT : DT;
	dnp2_phase1Well2 : BOOL;
	dnp2_phase1Well2_STATUS : UDINT;
	dnp2_phase1Well2_DT : DT;
	dnp2_phase2Well2 : BOOL;
	dnp2_phase2Well2_STATUS : UDINT;
	dnp2_phase2Well2_DT : DT;
	dnp2_phase3Well2 : BOOL;
	dnp2_phase3Well2_STATUS : UDINT;
	dnp2_phase3Well2_DT : DT;
	dnp2_pressureWell3HI : BOOL;
	dnp2_pressureWell3HI_STATUS : UDINT;
	dnp2_pressureWell3HI_DT : DT;
	dnp2_pressureWell3LOW : BOOL;
	dnp2_pressureWell3LOW_STATUS : UDINT;
	dnp2_pressureWell3LOW_DT : DT;
	dnp2_phase1Well3 : BOOL;
	dnp2_phase1Well3_STATUS : UDINT;
	dnp2_phase1Well3_DT : DT;
	dnp2_phase2Well3 : BOOL;
	dnp2_phase2Well3_STATUS : UDINT;
	dnp2_phase2Well3_DT : DT;
	dnp2_phase3Well3 : BOOL;
	dnp2_phase3Well3_STATUS : UDINT;
	dnp2_phase3Well3_DT : DT;
	dnp2_pressureWell1 : REAL;
	dnp2_pressureWell1_STATUS : UDINT;
	dnp2_pressureWell1_DT : DT;
	dnp2_pressureWell2 : REAL;
	dnp2_pressureWell2_STATUS : UDINT;
	dnp2_pressureWell2_DT : DT;
	dnp2_pressureWell3 : REAL;
	dnp2_pressureWell3_STATUS : UDINT;
	dnp2_pressureWell3_DT : DT;
	dnp2_pressurepumpag123 : REAL;
	dnp2_pressurepumpag123_STATUS : UDINT;
	dnp2_pressurepumpag123_DT : DT;
	dnp2_pressurepumpag456 : REAL;
	dnp2_pressurepumpag456_STATUS : UDINT;
	dnp2_pressurepumpag456_DT : DT;
	dnp2_levelmeterTank : REAL;
	dnp2_levelmeterTank_STATUS : UDINT;
	dnp2_levelmeterTank_DT : DT;
	dnp2_CHLmeter : REAL;
	dnp2_CHLmeter_STATUS : UDINT;
	dnp2_CHLmeter_DT : DT;
	dnp2_I1well1 : DINT;
	dnp2_I1well1_STATUS : UDINT;
	dnp2_I1well1_DT : DT;
	dnp2_I2well1 : DINT;
	dnp2_I2well1_STATUS : UDINT;
	dnp2_I2well1_DT : DT;
	dnp2_I3well1 : DINT;
	dnp2_I3well1_STATUS : UDINT;
	dnp2_I3well1_DT : DT;
	dnp2_V1well1 : DINT;
	dnp2_V1well1_STATUS : UDINT;
	dnp2_V1well1_DT : DT;
	dnp2_V2well1 : DINT;
	dnp2_V2well1_STATUS : UDINT;
	dnp2_V2well1_DT : DT;
	dnp2_V3well1 : DINT;
	dnp2_V3well1_STATUS : UDINT;
	dnp2_V3well1_DT : DT;
	dnp2_V12Well1 : DINT;
	dnp2_V12Well1_STATUS : UDINT;
	dnp2_V12Well1_DT : DT;
	dnp2_V23Well1 : DINT;
	dnp2_V23Well1_STATUS : UDINT;
	dnp2_V23Well1_DT : DT;
	dnp2_V31Well1 : DINT;
	dnp2_V31Well1_STATUS : UDINT;
	dnp2_V31Well1_DT : DT;
	dnp2_P1Well1 : DINT;
	dnp2_P1Well1_STATUS : UDINT;
	dnp2_P1Well1_DT : DT;
	dnp2_P2Well1 : DINT;
	dnp2_P2Well1_STATUS : UDINT;
	dnp2_P2Well1_DT : DT;
	dnp2_P3Well1 : DINT;
	dnp2_P3Well1_STATUS : UDINT;
	dnp2_P3Well1_DT : DT;
	dnp2_q1well1 : DINT;
	dnp2_q1well1_STATUS : UDINT;
	dnp2_q1well1_DT : DT;
	dnp2_q2well1 : DINT;
	dnp2_q2well1_STATUS : UDINT;
	dnp2_q2well1_DT : DT;
	dnp2_q3well1 : DINT;
	dnp2_q3well1_STATUS : UDINT;
	dnp2_q3well1_DT : DT;
	dnp2_s1well1 : DINT;
	dnp2_s1well1_STATUS : UDINT;
	dnp2_s1well1_DT : DT;
	dnp2_s2well1 : DINT;
	dnp2_s2well1_STATUS : UDINT;
	dnp2_s2well1_DT : DT;
	dnp2_s3well1 : DINT;
	dnp2_s3well1_STATUS : UDINT;
	dnp2_s3well1_DT : DT;
	dnp2_pf1well1 : DINT;
	dnp2_pf1well1_STATUS : UDINT;
	dnp2_pf1well1_DT : DT;
	dnp2_pf2well1 : DINT;
	dnp2_pf2well1_STATUS : UDINT;
	dnp2_pf2well1_DT : DT;
	dnp2_pf3well1 : DINT;
	dnp2_pf3well1_STATUS : UDINT;
	dnp2_pf3well1_DT : DT;
	dnp2_FreqWell1 : DINT;
	dnp2_FreqWell1_STATUS : UDINT;
	dnp2_FreqWell1_DT : DT;
	dnp2_I1Well2 : DINT;
	dnp2_I1Well2_STATUS : UDINT;
	dnp2_I1Well2_DT : DT;
	dnp2_I2Well2 : DINT;
	dnp2_I2Well2_STATUS : UDINT;
	dnp2_I2Well2_DT : DT;
	dnp2_I3Well2 : DINT;
	dnp2_I3Well2_STATUS : UDINT;
	dnp2_I3Well2_DT : DT;
	dnp2_V1Well2 : DINT;
	dnp2_V1Well2_STATUS : UDINT;
	dnp2_V1Well2_DT : DT;
	dnp2_V2Well2 : DINT;
	dnp2_V2Well2_STATUS : UDINT;
	dnp2_V2Well2_DT : DT;
	dnp2_V12Well2 : DINT;
	dnp2_V12Well2_STATUS : UDINT;
	dnp2_V12Well2_DT : DT;
	dnp2_V23Well2 : DINT;
	dnp2_V23Well2_STATUS : UDINT;
	dnp2_V23Well2_DT : DT;
	dnp2_V31well2 : DINT;
	dnp2_V31well2_STATUS : UDINT;
	dnp2_V31well2_DT : DT;
	dnp2_p1Well2 : DINT;
	dnp2_p1Well2_STATUS : UDINT;
	dnp2_p1Well2_DT : DT;
	dnp2_p2Well2 : DINT;
	dnp2_p2Well2_STATUS : UDINT;
	dnp2_p2Well2_DT : DT;
	dnp2_p3Well2 : DINT;
	dnp2_p3Well2_STATUS : UDINT;
	dnp2_p3Well2_DT : DT;
	dnp2_q1Well2 : DINT;
	dnp2_q1Well2_STATUS : UDINT;
	dnp2_q1Well2_DT : DT;
	dnp2_q2Well2 : DINT;
	dnp2_q2Well2_STATUS : UDINT;
	dnp2_q2Well2_DT : DT;
	dnp2_q3Well2 : DINT;
	dnp2_q3Well2_STATUS : UDINT;
	dnp2_q3Well2_DT : DT;
	dnp2_s1well2 : DINT;
	dnp2_s1well2_STATUS : UDINT;
	dnp2_s1well2_DT : DT;
	dnp2_s2Well2 : DINT;
	dnp2_s2Well2_STATUS : UDINT;
	dnp2_s2Well2_DT : DT;
	dnp2_s3Well2 : DINT;
	dnp2_s3Well2_STATUS : UDINT;
	dnp2_s3Well2_DT : DT;
	dnp2_PF1Well2 : DINT;
	dnp2_PF1Well2_STATUS : UDINT;
	dnp2_PF1Well2_DT : DT;
	dnp2_PF2Well2 : DINT;
	dnp2_PF2Well2_STATUS : UDINT;
	dnp2_PF2Well2_DT : DT;
	dnp2_PF3Well2 : DINT;
	dnp2_PF3Well2_STATUS : UDINT;
	dnp2_PF3Well2_DT : DT;
	dnp2_FreqWell2 : DINT;
	dnp2_FreqWell2_STATUS : UDINT;
	dnp2_FreqWell2_DT : DT;
	dnp2_I1Well3 : DINT;
	dnp2_I1Well3_STATUS : UDINT;
	dnp2_I1Well3_DT : DT;
	dnp2_I2Well3 : DINT;
	dnp2_I2Well3_STATUS : UDINT;
	dnp2_I2Well3_DT : DT;
	dnp2_I3Well3 : DINT;
	dnp2_I3Well3_STATUS : UDINT;
	dnp2_I3Well3_DT : DT;
	dnp2_V1Well3 : DINT;
	dnp2_V1Well3_STATUS : UDINT;
	dnp2_V1Well3_DT : DT;
	dnp2_V2Well3 : DINT;
	dnp2_V2Well3_STATUS : UDINT;
	dnp2_V2Well3_DT : DT;
	dnp2_V3Well3 : DINT;
	dnp2_V3Well3_STATUS : UDINT;
	dnp2_V3Well3_DT : DT;
	dnp2_V12Well3 : DINT;
	dnp2_V12Well3_STATUS : UDINT;
	dnp2_V12Well3_DT : DT;
	dnp2_V23Well3 : DINT;
	dnp2_V23Well3_STATUS : UDINT;
	dnp2_V23Well3_DT : DT;
	dnp2_V31Well3 : DINT;
	dnp2_V31Well3_STATUS : UDINT;
	dnp2_V31Well3_DT : DT;
	dnp2_P1Well3 : DINT;
	dnp2_P1Well3_STATUS : UDINT;
	dnp2_P1Well3_DT : DT;
	dnp2_P2Well3 : DINT;
	dnp2_P2Well3_STATUS : UDINT;
	dnp2_P2Well3_DT : DT;
	dnp2_P3Well3 : DINT;
	dnp2_P3Well3_STATUS : UDINT;
	dnp2_P3Well3_DT : DT;
	dnp2_Q1Well3 : DINT;
	dnp2_Q1Well3_STATUS : UDINT;
	dnp2_Q1Well3_DT : DT;
	dnp2_Q2Well3 : DINT;
	dnp2_Q2Well3_STATUS : UDINT;
	dnp2_Q2Well3_DT : DT;
	dnp2_Q3Well3 : DINT;
	dnp2_Q3Well3_STATUS : UDINT;
	dnp2_Q3Well3_DT : DT;
	dnp2_S1Well3 : DINT;
	dnp2_S1Well3_STATUS : UDINT;
	dnp2_S1Well3_DT : DT;
	dnp2_S2Well3 : DINT;
	dnp2_S2Well3_STATUS : UDINT;
	dnp2_S2Well3_DT : DT;
	dnp2_S3Well3 : DINT;
	dnp2_S3Well3_STATUS : UDINT;
	dnp2_S3Well3_DT : DT;
	dnp2_PF1Well3 : DINT;
	dnp2_PF1Well3_STATUS : UDINT;
	dnp2_PF1Well3_DT : DT;
	dnp2_PF2Well3 : DINT;
	dnp2_PF2Well3_STATUS : UDINT;
	dnp2_PF2Well3_DT : DT;
	dnp2_PF3Well3 : DINT;
	dnp2_PF3Well3_STATUS : UDINT;
	dnp2_PF3Well3_DT : DT;
	dnp2_FreqWell3 : DINT;
	dnp2_FreqWell3_STATUS : UDINT;
	dnp2_FreqWell3_DT : DT;
	dnp2_Iavpumpag1 : DINT;
	dnp2_Iavpumpag1_STATUS : UDINT;
	dnp2_Iavpumpag1_DT : DT;
	dnp2_Vavpumpag1 : DINT;
	dnp2_Vavpumpag1_STATUS : UDINT;
	dnp2_Vavpumpag1_DT : DT;
	dnp2_Pavpumpag1 : DINT;
	dnp2_Pavpumpag1_STATUS : UDINT;
	dnp2_Pavpumpag1_DT : DT;
	dnp2_Freqpumpag1 : DINT;
	dnp2_Freqpumpag1_STATUS : UDINT;
	dnp2_Freqpumpag1_DT : DT;
	dnp2_rpmpumpag1 : DINT;
	dnp2_rpmpumpag1_STATUS : UDINT;
	dnp2_rpmpumpag1_DT : DT;
	dnp2_Iavpumpag2 : DINT;
	dnp2_Iavpumpag2_STATUS : UDINT;
	dnp2_Iavpumpag2_DT : DT;
	dnp2_Vavpumpag2 : DINT;
	dnp2_Vavpumpag2_STATUS : UDINT;
	dnp2_Vavpumpag2_DT : DT;
	dnp2_Pavpumpag2 : DINT;
	dnp2_Pavpumpag2_STATUS : UDINT;
	dnp2_Pavpumpag2_DT : DT;
	dnp2_Freqpumpag2 : DINT;
	dnp2_Freqpumpag2_STATUS : UDINT;
	dnp2_Freqpumpag2_DT : DT;
	dnp2_rpmpumpag2 : DINT;
	dnp2_rpmpumpag2_STATUS : UDINT;
	dnp2_rpmpumpag2_DT : DT;
	dnp2_Iavpumpag4 : DINT;
	dnp2_Iavpumpag4_STATUS : UDINT;
	dnp2_Iavpumpag4_DT : DT;
	dnp2_Vavpumpag4 : DINT;
	dnp2_Vavpumpag4_STATUS : UDINT;
	dnp2_Vavpumpag4_DT : DT;
	dnp2_Pavpumpag4 : DINT;
	dnp2_Pavpumpag4_STATUS : UDINT;
	dnp2_Pavpumpag4_DT : DT;
	dnp2_Freqpumpag4 : DINT;
	dnp2_Freqpumpag4_STATUS : UDINT;
	dnp2_Freqpumpag4_DT : DT;
	dnp2_rpmpumpag4 : DINT;
	dnp2_rpmpumpag4_STATUS : UDINT;
	dnp2_rpmpumpag4_DT : DT;
	dnp2_Iavpumpag5 : DINT;
	dnp2_Iavpumpag5_STATUS : UDINT;
	dnp2_Iavpumpag5_DT : DT;
	dnp2_Vavpumpag5 : DINT;
	dnp2_Vavpumpag5_STATUS : UDINT;
	dnp2_Vavpumpag5_DT : DT;
	dnp2_Pavpumpag5 : DINT;
	dnp2_Pavpumpag5_STATUS : UDINT;
	dnp2_Pavpumpag5_DT : DT;
	dnp2_Freqpumpag5 : DINT;
	dnp2_Freqpumpag5_STATUS : UDINT;
	dnp2_Freqpumpag5_DT : DT;
	dnp2_rpmpumpag5 : DINT;
	dnp2_rpmpumpag5_STATUS : UDINT;
	dnp2_rpmpumpag5_DT : DT;
	dnp2_Iavpumpag6 : DINT;
	dnp2_Iavpumpag6_STATUS : UDINT;
	dnp2_Iavpumpag6_DT : DT;
	dnp2_Vavpumpag6 : DINT;
	dnp2_Vavpumpag6_STATUS : UDINT;
	dnp2_Vavpumpag6_DT : DT;
	dnp2_Pavpumpag6 : DINT;
	dnp2_Pavpumpag6_STATUS : UDINT;
	dnp2_Pavpumpag6_DT : DT;
	dnp2_Freqpumpag6 : DINT;
	dnp2_Freqpumpag6_STATUS : UDINT;
	dnp2_Freqpumpag6_DT : DT;
	dnp2_rpmpumpag6 : DINT;
	dnp2_rpmpumpag6_STATUS : UDINT;
	dnp2_rpmpumpag6_DT : DT;
	dnp2_CHLmeter485 : DINT;
	dnp2_CHLmeter485_STATUS : UDINT;
	dnp2_CHLmeter485_DT : DT;
	dnp2_Well1Stop : BOOL;
	dnp2_Well1Stop_STATUS : UDINT;
	dnp2_Well1Stop_DT : DT;
	dnp2_Well1Start : BOOL;
	dnp2_Well1Start_STATUS : UDINT;
	dnp2_Well1Start_DT : DT;
	dnp2_Well2Stop : BOOL;
	dnp2_Well2Stop_STATUS : UDINT;
	dnp2_Well2Stop_DT : DT;
	dnp2_Well2Start : BOOL;
	dnp2_Well2Start_STATUS : UDINT;
	dnp2_Well2Start_DT : DT;
	dnp2_Well3Stop : BOOL;
	dnp2_Well3Stop_STATUS : UDINT;
	dnp2_Well3Stop_DT : DT;
	dnp2_Well3Start : BOOL;
	dnp2_Well3Start_STATUS : UDINT;
	dnp2_Well3Start_DT : DT;
	dnp2_pumpag1StopStart : BOOL;
	dnp2_pumpag1StopStart_STATUS : UDINT;
	dnp2_pumpag1StopStart_DT : DT;
	dnp2_Pumpag2StopStart : BOOL;
	dnp2_Pumpag2StopStart_STATUS : UDINT;
	dnp2_Pumpag2StopStart_DT : DT;
	dnp2_Pumpag4StopStart : BOOL;
	dnp2_Pumpag4StopStart_STATUS : UDINT;
	dnp2_Pumpag4StopStart_DT : DT;
	dnp2_Pumpag5StopStart : BOOL;
	dnp2_Pumpag5StopStart_STATUS : UDINT;
	dnp2_Pumpag5StopStart_DT : DT;
	dnp2_Pumpag6StopStart : BOOL;
	dnp2_Pumpag6StopStart_STATUS : UDINT;
	dnp2_Pumpag6StopStart_DT : DT;
	dnp2_V3Well2 : DINT;
	dnp2_V3Well2_STATUS : UDINT;
	dnp2_V3Well2_DT : DT;
	dnp2_FaultPumpag2 : BOOL;
	dnp2_FaultPumpag2_STATUS : UDINT;
	dnp2_FaultPumpag2_DT : DT;
	dnp2_ONpumpag2 : BOOL;
	dnp2_ONpumpag2_STATUS : UDINT;
	dnp2_ONpumpag2_DT : DT;
	dnp2_OnStarwell2 : BOOL;
	dnp2_OnStarwell2_STATUS : UDINT;
	dnp2_OnStarwell2_DT : DT;
	dnp2_OnStarwell3 : BOOL;
	dnp2_OnStarwell3_STATUS : UDINT;
	dnp2_OnStarwell3_DT : DT;
	dnp2_leveltankspare : REAL;
	dnp2_leveltankspare_STATUS : UDINT;
	dnp2_leveltankspare_DT : DT;
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
MOVE_OUT_9 := MOVE( 
	 EN := True ,
	 IN := LIO_DITag0 ,
	 ENO => MOVE_ENO_9  );
dnp_opendoor := MOVE_OUT_9 ;

END_PROGRAM

CONFIGURATION Config0
RESOURCE Res0 ON PLC

VAR_GLOBAL
	I : ARRAY [0..255] OF LWORD;
	Q : ARRAY [0..255] OF LWORD;
	M : ARRAY [0..255] OF LWORD;
	rio_h1var1_Tag772 : INT;(*Input*)
	rio_h1var1_Tag773 : INT;(*Input*)
	rio_h1var1_OnLine : UINT;(*Input*)
	rio_h1var1_SendNum : UINT;(*Input*)
	rio_h1var1_RecNum : UINT;(*Input*)
	rio_h1var1_Error : UINT;(*Input*)
	rio_h1var1_Poll : UINT;(*Output*)
	rio_h1var2_Tag783 : INT;(*Input*)
	rio_h1var2_Tag784 : INT;(*Input*)
	rio_h1var2_Tag785 : INT;(*Input*)
	rio_h1var2_Tag786 : INT;(*Input*)
	rio_h1var2_Tag787 : INT;(*Input*)
	rio_h1var2_Tag788 : INT;(*Input*)
	rio_h1var2_Tag789 : INT;(*Input*)
	rio_h1var2_Tag790 : INT;(*Input*)
	rio_h1var2_OnLine : UINT;(*Input*)
	rio_h1var2_SendNum : UINT;(*Input*)
	rio_h1var2_RecNum : UINT;(*Input*)
	rio_h1var2_Error : UINT;(*Input*)
	rio_h1var2_Poll : UINT;(*Output*)
	rio_h1var3_Tag897 : INT;(*Output*)
	rio_h1var3_Tag898 : INT;(*Output*)
	rio_h1var3_OnLine : UINT;(*Input*)
	rio_h1var3_SendNum : UINT;(*Input*)
	rio_h1var3_RecNum : UINT;(*Input*)
	rio_h1var3_Error : UINT;(*Input*)
	rio_h1var3_Poll : UINT;(*Output*)
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
	rio_AI9_Tag1 : INT;(*Input*)
	rio_AI9_Tag2 : INT;(*Input*)
	rio_AI9_Tag3 : INT;(*Input*)
	rio_AI9_OnLine : UINT;(*Input*)
	rio_AI9_SendNum : UINT;(*Input*)
	rio_AI9_RecNum : UINT;(*Input*)
	rio_AI9_Error : UINT;(*Input*)
	rio_AI9_Poll : UINT;(*Output*)
	rio_level485_Tag30032 : REAL;(*Input*)
	rio_level485_OnLine : UINT;(*Input*)
	rio_level485_SendNum : UINT;(*Input*)
	rio_level485_RecNum : UINT;(*Input*)
	rio_level485_Error : UINT;(*Input*)
	rio_level485_Poll : UINT;(*Output*)
	rio_w1var1_Tag2999 : REAL;(*Input*)
	rio_w1var1_Tag3001 : REAL;(*Input*)
	rio_w1var1_Tag3003 : REAL;(*Input*)
	rio_w1var1_Tag3005 : REAL;(*Input*)
	rio_w1var1_Tag3007 : REAL;(*Input*)
	rio_w1var1_Tag3009 : REAL;(*Input*)
	rio_w1var1_Tag3011 : REAL;(*Input*)
	rio_w1var1_Tag3013 : REAL;(*Input*)
	rio_w1var1_Tag3015 : REAL;(*Input*)
	rio_w1var1_Tag3017 : REAL;(*Input*)
	rio_w1var1_Tag3019 : REAL;(*Input*)
	rio_w1var1_Tag3021 : REAL;(*Input*)
	rio_w1var1_Tag3023 : REAL;(*Input*)
	rio_w1var1_Tag3025 : REAL;(*Input*)
	rio_w1var1_Tag3027 : REAL;(*Input*)
	rio_w1var1_Tag3029 : REAL;(*Input*)
	rio_w1var1_Tag3031 : REAL;(*Input*)
	rio_w1var1_OnLine : UINT;(*Input*)
	rio_w1var1_SendNum : UINT;(*Input*)
	rio_w1var1_RecNum : UINT;(*Input*)
	rio_w1var1_Error : UINT;(*Input*)
	rio_w1var1_Poll : UINT;(*Output*)
	rio_w1var2_Tag3109 : REAL;(*Input*)
	rio_w1var2_OnLine : UINT;(*Input*)
	rio_w1var2_SendNum : UINT;(*Input*)
	rio_w1var2_RecNum : UINT;(*Input*)
	rio_w1var2_Error : UINT;(*Input*)
	rio_w1var2_Poll : UINT;(*Output*)
	rio_w1var3_Tag3053 : REAL;(*Input*)
	rio_w1var3_Tag3055 : REAL;(*Input*)
	rio_w1var3_Tag3057 : REAL;(*Input*)
	rio_w1var3_Tag3059 : REAL;(*Input*)
	rio_w1var3_Tag3061 : REAL;(*Input*)
	rio_w1var3_Tag3063 : REAL;(*Input*)
	rio_w1var3_Tag3065 : REAL;(*Input*)
	rio_w1var3_Tag3067 : REAL;(*Input*)
	rio_w1var3_Tag3069 : REAL;(*Input*)
	rio_w1var3_Tag3071 : REAL;(*Input*)
	rio_w1var3_Tag3073 : REAL;(*Input*)
	rio_w1var3_OnLine : UINT;(*Input*)
	rio_w1var3_SendNum : UINT;(*Input*)
	rio_w1var3_RecNum : UINT;(*Input*)
	rio_w1var3_Error : UINT;(*Input*)
	rio_w1var3_Poll : UINT;(*Output*)
	rio_w1var4_Tag3077 : REAL;(*Input*)
	rio_w1var4_Tag3079 : REAL;(*Input*)
	rio_w1var4_Tag3081 : REAL;(*Input*)
	rio_w1var4_OnLine : UINT;(*Input*)
	rio_w1var4_SendNum : UINT;(*Input*)
	rio_w1var4_RecNum : UINT;(*Input*)
	rio_w1var4_Error : UINT;(*Input*)
	rio_w1var4_Poll : UINT;(*Output*)
	rio_w2var1_Tag2999 : REAL;(*Input*)
	rio_w2var1_Tag3001 : REAL;(*Input*)
	rio_w2var1_Tag3003 : REAL;(*Input*)
	rio_w2var1_Tag3005 : REAL;(*Input*)
	rio_w2var1_Tag3007 : REAL;(*Input*)
	rio_w2var1_Tag3009 : REAL;(*Input*)
	rio_w2var1_Tag3011 : REAL;(*Input*)
	rio_w2var1_Tag3013 : REAL;(*Input*)
	rio_w2var1_Tag3015 : REAL;(*Input*)
	rio_w2var1_Tag3017 : REAL;(*Input*)
	rio_w2var1_Tag3019 : REAL;(*Input*)
	rio_w2var1_Tag3021 : REAL;(*Input*)
	rio_w2var1_Tag3023 : REAL;(*Input*)
	rio_w2var1_Tag3025 : REAL;(*Input*)
	rio_w2var1_Tag3027 : REAL;(*Input*)
	rio_w2var1_Tag3029 : REAL;(*Input*)
	rio_w2var1_Tag3031 : REAL;(*Input*)
	rio_w2var1_OnLine : UINT;(*Input*)
	rio_w2var1_SendNum : UINT;(*Input*)
	rio_w2var1_RecNum : UINT;(*Input*)
	rio_w2var1_Error : UINT;(*Input*)
	rio_w2var1_Poll : UINT;(*Output*)
	rio_w2var2_Tag3109 : REAL;(*Input*)
	rio_w2var2_OnLine : UINT;(*Input*)
	rio_w2var2_SendNum : UINT;(*Input*)
	rio_w2var2_RecNum : UINT;(*Input*)
	rio_w2var2_Error : UINT;(*Input*)
	rio_w2var2_Poll : UINT;(*Output*)
	rio_w2var3_Tag3053 : REAL;(*Input*)
	rio_w2var3_Tag3055 : REAL;(*Input*)
	rio_w2var3_Tag3057 : REAL;(*Input*)
	rio_w2var3_Tag3059 : REAL;(*Input*)
	rio_w2var3_Tag3061 : REAL;(*Input*)
	rio_w2var3_Tag3063 : REAL;(*Input*)
	rio_w2var3_Tag3065 : REAL;(*Input*)
	rio_w2var3_Tag3067 : REAL;(*Input*)
	rio_w2var3_Tag3069 : REAL;(*Input*)
	rio_w2var3_Tag3071 : REAL;(*Input*)
	rio_w2var3_Tag3073 : REAL;(*Input*)
	rio_w2var3_OnLine : UINT;(*Input*)
	rio_w2var3_SendNum : UINT;(*Input*)
	rio_w2var3_RecNum : UINT;(*Input*)
	rio_w2var3_Error : UINT;(*Input*)
	rio_w2var3_Poll : UINT;(*Output*)
	rio_w2var4_Tag3077 : REAL;(*Input*)
	rio_w2var4_Tag3079 : REAL;(*Input*)
	rio_w2var4_Tag3081 : REAL;(*Input*)
	rio_w2var4_OnLine : UINT;(*Input*)
	rio_w2var4_SendNum : UINT;(*Input*)
	rio_w2var4_RecNum : UINT;(*Input*)
	rio_w2var4_Error : UINT;(*Input*)
	rio_w2var4_Poll : UINT;(*Output*)
	rio_w3var1_Tag2999 : REAL;(*Input*)
	rio_w3var1_Tag3001 : REAL;(*Input*)
	rio_w3var1_Tag3003 : REAL;(*Input*)
	rio_w3var1_Tag3005 : REAL;(*Input*)
	rio_w3var1_Tag3007 : REAL;(*Input*)
	rio_w3var1_Tag3009 : REAL;(*Input*)
	rio_w3var1_Tag3011 : REAL;(*Input*)
	rio_w3var1_Tag3013 : REAL;(*Input*)
	rio_w3var1_Tag3015 : REAL;(*Input*)
	rio_w3var1_Tag3017 : REAL;(*Input*)
	rio_w3var1_Tag3019 : REAL;(*Input*)
	rio_w3var1_Tag3021 : REAL;(*Input*)
	rio_w3var1_Tag3023 : REAL;(*Input*)
	rio_w3var1_Tag3025 : REAL;(*Input*)
	rio_w3var1_Tag3027 : REAL;(*Input*)
	rio_w3var1_Tag3029 : REAL;(*Input*)
	rio_w3var1_Tag3031 : REAL;(*Input*)
	rio_w3var1_OnLine : UINT;(*Input*)
	rio_w3var1_SendNum : UINT;(*Input*)
	rio_w3var1_RecNum : UINT;(*Input*)
	rio_w3var1_Error : UINT;(*Input*)
	rio_w3var1_Poll : UINT;(*Output*)
	rio_w3var2_Tag3109 : REAL;(*Input*)
	rio_w3var2_OnLine : UINT;(*Input*)
	rio_w3var2_SendNum : UINT;(*Input*)
	rio_w3var2_RecNum : UINT;(*Input*)
	rio_w3var2_Error : UINT;(*Input*)
	rio_w3var2_Poll : UINT;(*Output*)
	rio_w3var3_Tag3053 : REAL;(*Input*)
	rio_w3var3_Tag3055 : REAL;(*Input*)
	rio_w3var3_Tag3057 : REAL;(*Input*)
	rio_w3var3_Tag3059 : REAL;(*Input*)
	rio_w3var3_Tag3061 : REAL;(*Input*)
	rio_w3var3_Tag3063 : REAL;(*Input*)
	rio_w3var3_Tag3065 : REAL;(*Input*)
	rio_w3var3_Tag3067 : REAL;(*Input*)
	rio_w3var3_Tag3069 : REAL;(*Input*)
	rio_w3var3_Tag3071 : REAL;(*Input*)
	rio_w3var3_Tag3073 : REAL;(*Input*)
	rio_w3var3_OnLine : UINT;(*Input*)
	rio_w3var3_SendNum : UINT;(*Input*)
	rio_w3var3_RecNum : UINT;(*Input*)
	rio_w3var3_Error : UINT;(*Input*)
	rio_w3var3_Poll : UINT;(*Output*)
	rio_w3var4_Tag3077 : REAL;(*Input*)
	rio_w3var4_Tag3079 : REAL;(*Input*)
	rio_w3var4_Tag3081 : REAL;(*Input*)
	rio_w3var4_OnLine : UINT;(*Input*)
	rio_w3var4_SendNum : UINT;(*Input*)
	rio_w3var4_RecNum : UINT;(*Input*)
	rio_w3var4_Error : UINT;(*Input*)
	rio_w3var4_Poll : UINT;(*Output*)
	rio_h2var1_Tag772 : INT;(*Input*)
	rio_h2var1_Tag773 : INT;(*Input*)
	rio_h2var1_OnLine : UINT;(*Input*)
	rio_h2var1_SendNum : UINT;(*Input*)
	rio_h2var1_RecNum : UINT;(*Input*)
	rio_h2var1_Error : UINT;(*Input*)
	rio_h2var1_Poll : UINT;(*Output*)
	rio_h2var2_Tag783 : INT;(*Input*)
	rio_h2var2_Tag784 : INT;(*Input*)
	rio_h2var2_Tag785 : INT;(*Input*)
	rio_h2var2_Tag786 : INT;(*Input*)
	rio_h2var2_Tag787 : INT;(*Input*)
	rio_h2var2_Tag788 : INT;(*Input*)
	rio_h2var2_Tag789 : INT;(*Input*)
	rio_h2var2_Tag790 : INT;(*Input*)
	rio_h2var2_OnLine : UINT;(*Input*)
	rio_h2var2_SendNum : UINT;(*Input*)
	rio_h2var2_RecNum : UINT;(*Input*)
	rio_h2var2_Error : UINT;(*Input*)
	rio_h2var2_Poll : UINT;(*Output*)
	rio_h2var3_Tag897 : INT;(*Output*)
	rio_h2var3_Tag898 : INT;(*Output*)
	rio_h2var3_OnLine : UINT;(*Input*)
	rio_h2var3_SendNum : UINT;(*Input*)
	rio_h2var3_RecNum : UINT;(*Input*)
	rio_h2var3_Error : UINT;(*Input*)
	rio_h2var3_Poll : UINT;(*Output*)
	rio_h4var1_Tag772 : INT;(*Input*)
	rio_h4var1_Tag773 : INT;(*Input*)
	rio_h4var1_OnLine : UINT;(*Input*)
	rio_h4var1_SendNum : UINT;(*Input*)
	rio_h4var1_RecNum : UINT;(*Input*)
	rio_h4var1_Error : UINT;(*Input*)
	rio_h4var1_Poll : UINT;(*Output*)
	rio_h4var2_Tag783 : INT;(*Input*)
	rio_h4var2_Tag784 : INT;(*Input*)
	rio_h4var2_Tag785 : INT;(*Input*)
	rio_h4var2_Tag786 : INT;(*Input*)
	rio_h4var2_Tag787 : INT;(*Input*)
	rio_h4var2_Tag788 : INT;(*Input*)
	rio_h4var2_Tag789 : INT;(*Input*)
	rio_h4var2_Tag790 : INT;(*Input*)
	rio_h4var2_OnLine : UINT;(*Input*)
	rio_h4var2_SendNum : UINT;(*Input*)
	rio_h4var2_RecNum : UINT;(*Input*)
	rio_h4var2_Error : UINT;(*Input*)
	rio_h4var2_Poll : UINT;(*Output*)
	rio_h4var3_Tag897 : INT;(*Output*)
	rio_h4var3_Tag898 : INT;(*Output*)
	rio_h4var3_OnLine : UINT;(*Input*)
	rio_h4var3_SendNum : UINT;(*Input*)
	rio_h4var3_RecNum : UINT;(*Input*)
	rio_h4var3_Error : UINT;(*Input*)
	rio_h4var3_Poll : UINT;(*Output*)
	rio_h5var1_Tag772 : INT;(*Input*)
	rio_h5var1_Tag773 : INT;(*Input*)
	rio_h5var1_OnLine : UINT;(*Input*)
	rio_h5var1_SendNum : UINT;(*Input*)
	rio_h5var1_RecNum : UINT;(*Input*)
	rio_h5var1_Error : UINT;(*Input*)
	rio_h5var1_Poll : UINT;(*Output*)
	rio_h5var2_Tag783 : INT;(*Input*)
	rio_h5var2_Tag784 : INT;(*Input*)
	rio_h5var2_Tag785 : INT;(*Input*)
	rio_h5var2_Tag786 : INT;(*Input*)
	rio_h5var2_Tag787 : INT;(*Input*)
	rio_h5var2_Tag788 : INT;(*Input*)
	rio_h5var2_Tag789 : INT;(*Input*)
	rio_h5var2_Tag790 : INT;(*Input*)
	rio_h5var2_OnLine : UINT;(*Input*)
	rio_h5var2_SendNum : UINT;(*Input*)
	rio_h5var2_RecNum : UINT;(*Input*)
	rio_h5var2_Error : UINT;(*Input*)
	rio_h5var2_Poll : UINT;(*Output*)
	rio_h5var3_Tag897 : INT;(*Output*)
	rio_h5var3_Tag898 : INT;(*Output*)
	rio_h5var3_OnLine : UINT;(*Input*)
	rio_h5var3_SendNum : UINT;(*Input*)
	rio_h5var3_RecNum : UINT;(*Input*)
	rio_h5var3_Error : UINT;(*Input*)
	rio_h5var3_Poll : UINT;(*Output*)
	dnp_opendoor : BOOL := 0;(*Output*)
	dnp_opendoor_STATUS : UDINT := 1;(*Output*)
	dnp_opendoor_DT : DT;(*Output*)
	dnp_alarmAC : BOOL := 0;(*Output*)
	dnp_alarmAC_STATUS : UDINT := 1;(*Output*)
	dnp_alarmAC_DT : DT;(*Output*)
	dnp_SUBSCADAWell1 : BOOL := 0;(*Output*)
	dnp_SUBSCADAWell1_STATUS : UDINT := 1;(*Output*)
	dnp_SUBSCADAWell1_DT : DT;(*Output*)
	dnp_DC24V : BOOL := 0;(*Output*)
	dnp_DC24V_STATUS : UDINT := 1;(*Output*)
	dnp_DC24V_DT : DT;(*Output*)
	dnp_FaultWell1 : BOOL := 0;(*Output*)
	dnp_FaultWell1_STATUS : UDINT := 1;(*Output*)
	dnp_FaultWell1_DT : DT;(*Output*)
	dnp_ONWell1 : BOOL := 0;(*Output*)
	dnp_ONWell1_STATUS : UDINT := 1;(*Output*)
	dnp_ONWell1_DT : DT;(*Output*)
	dnp_AutoWell1 : BOOL := 0;(*Output*)
	dnp_AutoWell1_STATUS : UDINT := 1;(*Output*)
	dnp_AutoWell1_DT : DT;(*Output*)
	dnp_FaultWell2 : BOOL := 0;(*Output*)
	dnp_FaultWell2_STATUS : UDINT := 1;(*Output*)
	dnp_FaultWell2_DT : DT;(*Output*)
	dnp_ONWell2 : BOOL := 0;(*Output*)
	dnp_ONWell2_STATUS : UDINT := 1;(*Output*)
	dnp_ONWell2_DT : DT;(*Output*)
	dnp_AutoWell2 : BOOL := 0;(*Output*)
	dnp_AutoWell2_STATUS : UDINT := 1;(*Output*)
	dnp_AutoWell2_DT : DT;(*Output*)
	dnp_SubScadaWell2 : BOOL := 0;(*Output*)
	dnp_SubScadaWell2_STATUS : UDINT := 1;(*Output*)
	dnp_SubScadaWell2_DT : DT;(*Output*)
	dnp_FaultWell3 : BOOL := 0;(*Output*)
	dnp_FaultWell3_STATUS : UDINT := 1;(*Output*)
	dnp_FaultWell3_DT : DT;(*Output*)
	dnp_ONWell3 : BOOL := 0;(*Output*)
	dnp_ONWell3_STATUS : UDINT := 1;(*Output*)
	dnp_ONWell3_DT : DT;(*Output*)
	dnp_AutoWell3 : BOOL := 0;(*Output*)
	dnp_AutoWell3_STATUS : UDINT := 1;(*Output*)
	dnp_AutoWell3_DT : DT;(*Output*)
	dnp_SubScadaWell3 : BOOL := 0;(*Output*)
	dnp_SubScadaWell3_STATUS : UDINT := 1;(*Output*)
	dnp_SubScadaWell3_DT : DT;(*Output*)
	dnp_roomwaterAlarm : BOOL := 0;(*Output*)
	dnp_roomwaterAlarm_STATUS : UDINT := 1;(*Output*)
	dnp_roomwaterAlarm_DT : DT;(*Output*)
	dnp_chamberWaterAlarm : BOOL := 0;(*Output*)
	dnp_chamberWaterAlarm_STATUS : UDINT := 1;(*Output*)
	dnp_chamberWaterAlarm_DT : DT;(*Output*)
	dnp_TankAlarmHI : BOOL := 0;(*Output*)
	dnp_TankAlarmHI_STATUS : UDINT := 1;(*Output*)
	dnp_TankAlarmHI_DT : DT;(*Output*)
	dnp_TankAlarmLOW : BOOL := 0;(*Output*)
	dnp_TankAlarmLOW_STATUS : UDINT := 1;(*Output*)
	dnp_TankAlarmLOW_DT : DT;(*Output*)
	dnp_Faultpumpag1 : BOOL := 0;(*Output*)
	dnp_Faultpumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_Faultpumpag1_DT : DT;(*Output*)
	dnp_ONpumpag1 : BOOL := 0;(*Output*)
	dnp_ONpumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_ONpumpag1_DT : DT;(*Output*)
	dnp_Faultpumpag4 : BOOL := 0;(*Output*)
	dnp_Faultpumpag4_STATUS : UDINT := 1;(*Output*)
	dnp_Faultpumpag4_DT : DT;(*Output*)
	dnp_ONpumpag4 : BOOL := 0;(*Output*)
	dnp_ONpumpag4_STATUS : UDINT := 1;(*Output*)
	dnp_ONpumpag4_DT : DT;(*Output*)
	dnp_Faultpumpag5 : BOOL := 0;(*Output*)
	dnp_Faultpumpag5_STATUS : UDINT := 1;(*Output*)
	dnp_Faultpumpag5_DT : DT;(*Output*)
	dnp_ONpumpag5 : BOOL := 0;(*Output*)
	dnp_ONpumpag5_STATUS : UDINT := 1;(*Output*)
	dnp_ONpumpag5_DT : DT;(*Output*)
	dnp_Faultpumpag6 : BOOL := 0;(*Output*)
	dnp_Faultpumpag6_STATUS : UDINT := 1;(*Output*)
	dnp_Faultpumpag6_DT : DT;(*Output*)
	dnp_ONpumpag6 : BOOL := 0;(*Output*)
	dnp_ONpumpag6_STATUS : UDINT := 1;(*Output*)
	dnp_ONpumpag6_DT : DT;(*Output*)
	dnp_pressureWell1HI : BOOL := 0;(*Output*)
	dnp_pressureWell1HI_STATUS : UDINT := 1;(*Output*)
	dnp_pressureWell1HI_DT : DT;(*Output*)
	dnp_pressureWell1LOW : BOOL := 0;(*Output*)
	dnp_pressureWell1LOW_STATUS : UDINT := 1;(*Output*)
	dnp_pressureWell1LOW_DT : DT;(*Output*)
	dnp_phase1Well1 : BOOL := 0;(*Output*)
	dnp_phase1Well1_STATUS : UDINT := 1;(*Output*)
	dnp_phase1Well1_DT : DT;(*Output*)
	dnp_phase2Well1 : BOOL := 0;(*Output*)
	dnp_phase2Well1_STATUS : UDINT := 1;(*Output*)
	dnp_phase2Well1_DT : DT;(*Output*)
	dnp_phase3Well1 : BOOL := 0;(*Output*)
	dnp_phase3Well1_STATUS : UDINT := 1;(*Output*)
	dnp_phase3Well1_DT : DT;(*Output*)
	dnp_pressureWell2HI : BOOL := 0;(*Output*)
	dnp_pressureWell2HI_STATUS : UDINT := 1;(*Output*)
	dnp_pressureWell2HI_DT : DT;(*Output*)
	dnp_pressureWell2LOW : BOOL := 0;(*Output*)
	dnp_pressureWell2LOW_STATUS : UDINT := 1;(*Output*)
	dnp_pressureWell2LOW_DT : DT;(*Output*)
	dnp_phase1Well2 : BOOL := 0;(*Output*)
	dnp_phase1Well2_STATUS : UDINT := 1;(*Output*)
	dnp_phase1Well2_DT : DT;(*Output*)
	dnp_phase2Well2 : BOOL := 0;(*Output*)
	dnp_phase2Well2_STATUS : UDINT := 1;(*Output*)
	dnp_phase2Well2_DT : DT;(*Output*)
	dnp_phase3Well2 : BOOL := 0;(*Output*)
	dnp_phase3Well2_STATUS : UDINT := 1;(*Output*)
	dnp_phase3Well2_DT : DT;(*Output*)
	dnp_pressureWell3HI : BOOL := 0;(*Output*)
	dnp_pressureWell3HI_STATUS : UDINT := 1;(*Output*)
	dnp_pressureWell3HI_DT : DT;(*Output*)
	dnp_pressureWell3LOW : BOOL := 0;(*Output*)
	dnp_pressureWell3LOW_STATUS : UDINT := 1;(*Output*)
	dnp_pressureWell3LOW_DT : DT;(*Output*)
	dnp_phase1Well3 : BOOL := 0;(*Output*)
	dnp_phase1Well3_STATUS : UDINT := 1;(*Output*)
	dnp_phase1Well3_DT : DT;(*Output*)
	dnp_phase2Well3 : BOOL := 0;(*Output*)
	dnp_phase2Well3_STATUS : UDINT := 1;(*Output*)
	dnp_phase2Well3_DT : DT;(*Output*)
	dnp_phase3Well3 : BOOL := 0;(*Output*)
	dnp_phase3Well3_STATUS : UDINT := 1;(*Output*)
	dnp_phase3Well3_DT : DT;(*Output*)
	dnp_pressureWell1 : REAL := 0;(*Output*)
	dnp_pressureWell1_STATUS : UDINT := 1;(*Output*)
	dnp_pressureWell1_DT : DT;(*Output*)
	dnp_pressureWell2 : REAL := 0;(*Output*)
	dnp_pressureWell2_STATUS : UDINT := 1;(*Output*)
	dnp_pressureWell2_DT : DT;(*Output*)
	dnp_pressureWell3 : REAL := 0;(*Output*)
	dnp_pressureWell3_STATUS : UDINT := 1;(*Output*)
	dnp_pressureWell3_DT : DT;(*Output*)
	dnp_pressurepumpag123 : REAL := 0;(*Output*)
	dnp_pressurepumpag123_STATUS : UDINT := 1;(*Output*)
	dnp_pressurepumpag123_DT : DT;(*Output*)
	dnp_pressurepumpag456 : REAL := 0;(*Output*)
	dnp_pressurepumpag456_STATUS : UDINT := 1;(*Output*)
	dnp_pressurepumpag456_DT : DT;(*Output*)
	dnp_levelmeterTank : REAL := 0;(*Output*)
	dnp_levelmeterTank_STATUS : UDINT := 1;(*Output*)
	dnp_levelmeterTank_DT : DT;(*Output*)
	dnp_CHLmeter : REAL := 0;(*Output*)
	dnp_CHLmeter_STATUS : UDINT := 1;(*Output*)
	dnp_CHLmeter_DT : DT;(*Output*)
	dnp_I1well1 : DINT := 0;(*Output*)
	dnp_I1well1_STATUS : UDINT := 1;(*Output*)
	dnp_I1well1_DT : DT;(*Output*)
	dnp_I2well1 : DINT := 0;(*Output*)
	dnp_I2well1_STATUS : UDINT := 1;(*Output*)
	dnp_I2well1_DT : DT;(*Output*)
	dnp_I3well1 : DINT := 0;(*Output*)
	dnp_I3well1_STATUS : UDINT := 1;(*Output*)
	dnp_I3well1_DT : DT;(*Output*)
	dnp_V1well1 : DINT := 0;(*Output*)
	dnp_V1well1_STATUS : UDINT := 1;(*Output*)
	dnp_V1well1_DT : DT;(*Output*)
	dnp_V2well1 : DINT := 0;(*Output*)
	dnp_V2well1_STATUS : UDINT := 1;(*Output*)
	dnp_V2well1_DT : DT;(*Output*)
	dnp_V3well1 : DINT := 0;(*Output*)
	dnp_V3well1_STATUS : UDINT := 1;(*Output*)
	dnp_V3well1_DT : DT;(*Output*)
	dnp_V12Well1 : DINT := 0;(*Output*)
	dnp_V12Well1_STATUS : UDINT := 1;(*Output*)
	dnp_V12Well1_DT : DT;(*Output*)
	dnp_V23Well1 : DINT := 0;(*Output*)
	dnp_V23Well1_STATUS : UDINT := 1;(*Output*)
	dnp_V23Well1_DT : DT;(*Output*)
	dnp_V31Well1 : DINT := 0;(*Output*)
	dnp_V31Well1_STATUS : UDINT := 1;(*Output*)
	dnp_V31Well1_DT : DT;(*Output*)
	dnp_P1Well1 : DINT := 0;(*Output*)
	dnp_P1Well1_STATUS : UDINT := 1;(*Output*)
	dnp_P1Well1_DT : DT;(*Output*)
	dnp_P2Well1 : DINT := 0;(*Output*)
	dnp_P2Well1_STATUS : UDINT := 1;(*Output*)
	dnp_P2Well1_DT : DT;(*Output*)
	dnp_P3Well1 : DINT := 0;(*Output*)
	dnp_P3Well1_STATUS : UDINT := 1;(*Output*)
	dnp_P3Well1_DT : DT;(*Output*)
	dnp_q1well1 : DINT := 0;(*Output*)
	dnp_q1well1_STATUS : UDINT := 1;(*Output*)
	dnp_q1well1_DT : DT;(*Output*)
	dnp_q2well1 : DINT := 0;(*Output*)
	dnp_q2well1_STATUS : UDINT := 1;(*Output*)
	dnp_q2well1_DT : DT;(*Output*)
	dnp_q3well1 : DINT := 0;(*Output*)
	dnp_q3well1_STATUS : UDINT := 1;(*Output*)
	dnp_q3well1_DT : DT;(*Output*)
	dnp_s1well1 : DINT := 0;(*Output*)
	dnp_s1well1_STATUS : UDINT := 1;(*Output*)
	dnp_s1well1_DT : DT;(*Output*)
	dnp_s2well1 : DINT := 0;(*Output*)
	dnp_s2well1_STATUS : UDINT := 1;(*Output*)
	dnp_s2well1_DT : DT;(*Output*)
	dnp_s3well1 : DINT := 0;(*Output*)
	dnp_s3well1_STATUS : UDINT := 1;(*Output*)
	dnp_s3well1_DT : DT;(*Output*)
	dnp_pf1well1 : DINT := 0;(*Output*)
	dnp_pf1well1_STATUS : UDINT := 1;(*Output*)
	dnp_pf1well1_DT : DT;(*Output*)
	dnp_pf2well1 : DINT := 0;(*Output*)
	dnp_pf2well1_STATUS : UDINT := 1;(*Output*)
	dnp_pf2well1_DT : DT;(*Output*)
	dnp_pf3well1 : DINT := 0;(*Output*)
	dnp_pf3well1_STATUS : UDINT := 1;(*Output*)
	dnp_pf3well1_DT : DT;(*Output*)
	dnp_FreqWell1 : DINT := 0;(*Output*)
	dnp_FreqWell1_STATUS : UDINT := 1;(*Output*)
	dnp_FreqWell1_DT : DT;(*Output*)
	dnp_I1Well2 : DINT := 0;(*Output*)
	dnp_I1Well2_STATUS : UDINT := 1;(*Output*)
	dnp_I1Well2_DT : DT;(*Output*)
	dnp_I2Well2 : DINT := 0;(*Output*)
	dnp_I2Well2_STATUS : UDINT := 1;(*Output*)
	dnp_I2Well2_DT : DT;(*Output*)
	dnp_I3Well2 : DINT := 0;(*Output*)
	dnp_I3Well2_STATUS : UDINT := 1;(*Output*)
	dnp_I3Well2_DT : DT;(*Output*)
	dnp_V1Well2 : DINT := 0;(*Output*)
	dnp_V1Well2_STATUS : UDINT := 1;(*Output*)
	dnp_V1Well2_DT : DT;(*Output*)
	dnp_V2Well2 : DINT := 0;(*Output*)
	dnp_V2Well2_STATUS : UDINT := 1;(*Output*)
	dnp_V2Well2_DT : DT;(*Output*)
	dnp_V12Well2 : DINT := 0;(*Output*)
	dnp_V12Well2_STATUS : UDINT := 1;(*Output*)
	dnp_V12Well2_DT : DT;(*Output*)
	dnp_V23Well2 : DINT := 0;(*Output*)
	dnp_V23Well2_STATUS : UDINT := 1;(*Output*)
	dnp_V23Well2_DT : DT;(*Output*)
	dnp_V31well2 : DINT := 0;(*Output*)
	dnp_V31well2_STATUS : UDINT := 1;(*Output*)
	dnp_V31well2_DT : DT;(*Output*)
	dnp_p1Well2 : DINT := 0;(*Output*)
	dnp_p1Well2_STATUS : UDINT := 1;(*Output*)
	dnp_p1Well2_DT : DT;(*Output*)
	dnp_p2Well2 : DINT := 0;(*Output*)
	dnp_p2Well2_STATUS : UDINT := 1;(*Output*)
	dnp_p2Well2_DT : DT;(*Output*)
	dnp_p3Well2 : DINT := 0;(*Output*)
	dnp_p3Well2_STATUS : UDINT := 1;(*Output*)
	dnp_p3Well2_DT : DT;(*Output*)
	dnp_q1Well2 : DINT := 0;(*Output*)
	dnp_q1Well2_STATUS : UDINT := 1;(*Output*)
	dnp_q1Well2_DT : DT;(*Output*)
	dnp_q2Well2 : DINT := 0;(*Output*)
	dnp_q2Well2_STATUS : UDINT := 1;(*Output*)
	dnp_q2Well2_DT : DT;(*Output*)
	dnp_q3Well2 : DINT := 0;(*Output*)
	dnp_q3Well2_STATUS : UDINT := 1;(*Output*)
	dnp_q3Well2_DT : DT;(*Output*)
	dnp_s1well2 : DINT := 0;(*Output*)
	dnp_s1well2_STATUS : UDINT := 1;(*Output*)
	dnp_s1well2_DT : DT;(*Output*)
	dnp_s2Well2 : DINT := 0;(*Output*)
	dnp_s2Well2_STATUS : UDINT := 1;(*Output*)
	dnp_s2Well2_DT : DT;(*Output*)
	dnp_s3Well2 : DINT := 0;(*Output*)
	dnp_s3Well2_STATUS : UDINT := 1;(*Output*)
	dnp_s3Well2_DT : DT;(*Output*)
	dnp_PF1Well2 : DINT := 0;(*Output*)
	dnp_PF1Well2_STATUS : UDINT := 1;(*Output*)
	dnp_PF1Well2_DT : DT;(*Output*)
	dnp_PF2Well2 : DINT := 0;(*Output*)
	dnp_PF2Well2_STATUS : UDINT := 1;(*Output*)
	dnp_PF2Well2_DT : DT;(*Output*)
	dnp_PF3Well2 : DINT := 0;(*Output*)
	dnp_PF3Well2_STATUS : UDINT := 1;(*Output*)
	dnp_PF3Well2_DT : DT;(*Output*)
	dnp_FreqWell2 : DINT := 0;(*Output*)
	dnp_FreqWell2_STATUS : UDINT := 1;(*Output*)
	dnp_FreqWell2_DT : DT;(*Output*)
	dnp_I1Well3 : DINT := 0;(*Output*)
	dnp_I1Well3_STATUS : UDINT := 1;(*Output*)
	dnp_I1Well3_DT : DT;(*Output*)
	dnp_I2Well3 : DINT := 0;(*Output*)
	dnp_I2Well3_STATUS : UDINT := 1;(*Output*)
	dnp_I2Well3_DT : DT;(*Output*)
	dnp_I3Well3 : DINT := 0;(*Output*)
	dnp_I3Well3_STATUS : UDINT := 1;(*Output*)
	dnp_I3Well3_DT : DT;(*Output*)
	dnp_V1Well3 : DINT := 0;(*Output*)
	dnp_V1Well3_STATUS : UDINT := 1;(*Output*)
	dnp_V1Well3_DT : DT;(*Output*)
	dnp_V2Well3 : DINT := 0;(*Output*)
	dnp_V2Well3_STATUS : UDINT := 1;(*Output*)
	dnp_V2Well3_DT : DT;(*Output*)
	dnp_V3Well3 : DINT := 0;(*Output*)
	dnp_V3Well3_STATUS : UDINT := 1;(*Output*)
	dnp_V3Well3_DT : DT;(*Output*)
	dnp_V12Well3 : DINT := 0;(*Output*)
	dnp_V12Well3_STATUS : UDINT := 1;(*Output*)
	dnp_V12Well3_DT : DT;(*Output*)
	dnp_V23Well3 : DINT := 0;(*Output*)
	dnp_V23Well3_STATUS : UDINT := 1;(*Output*)
	dnp_V23Well3_DT : DT;(*Output*)
	dnp_V31Well3 : DINT := 0;(*Output*)
	dnp_V31Well3_STATUS : UDINT := 1;(*Output*)
	dnp_V31Well3_DT : DT;(*Output*)
	dnp_P1Well3 : DINT := 0;(*Output*)
	dnp_P1Well3_STATUS : UDINT := 1;(*Output*)
	dnp_P1Well3_DT : DT;(*Output*)
	dnp_P2Well3 : DINT := 0;(*Output*)
	dnp_P2Well3_STATUS : UDINT := 1;(*Output*)
	dnp_P2Well3_DT : DT;(*Output*)
	dnp_P3Well3 : DINT := 0;(*Output*)
	dnp_P3Well3_STATUS : UDINT := 1;(*Output*)
	dnp_P3Well3_DT : DT;(*Output*)
	dnp_Q1Well3 : DINT := 0;(*Output*)
	dnp_Q1Well3_STATUS : UDINT := 1;(*Output*)
	dnp_Q1Well3_DT : DT;(*Output*)
	dnp_Q2Well3 : DINT := 0;(*Output*)
	dnp_Q2Well3_STATUS : UDINT := 1;(*Output*)
	dnp_Q2Well3_DT : DT;(*Output*)
	dnp_Q3Well3 : DINT := 0;(*Output*)
	dnp_Q3Well3_STATUS : UDINT := 1;(*Output*)
	dnp_Q3Well3_DT : DT;(*Output*)
	dnp_S1Well3 : DINT := 0;(*Output*)
	dnp_S1Well3_STATUS : UDINT := 1;(*Output*)
	dnp_S1Well3_DT : DT;(*Output*)
	dnp_S2Well3 : DINT := 0;(*Output*)
	dnp_S2Well3_STATUS : UDINT := 1;(*Output*)
	dnp_S2Well3_DT : DT;(*Output*)
	dnp_S3Well3 : DINT := 0;(*Output*)
	dnp_S3Well3_STATUS : UDINT := 1;(*Output*)
	dnp_S3Well3_DT : DT;(*Output*)
	dnp_PF1Well3 : DINT := 0;(*Output*)
	dnp_PF1Well3_STATUS : UDINT := 1;(*Output*)
	dnp_PF1Well3_DT : DT;(*Output*)
	dnp_PF2Well3 : DINT := 0;(*Output*)
	dnp_PF2Well3_STATUS : UDINT := 1;(*Output*)
	dnp_PF2Well3_DT : DT;(*Output*)
	dnp_PF3Well3 : DINT := 0;(*Output*)
	dnp_PF3Well3_STATUS : UDINT := 1;(*Output*)
	dnp_PF3Well3_DT : DT;(*Output*)
	dnp_FreqWell3 : DINT := 0;(*Output*)
	dnp_FreqWell3_STATUS : UDINT := 1;(*Output*)
	dnp_FreqWell3_DT : DT;(*Output*)
	dnp_Iavpumpag1 : DINT := 0;(*Output*)
	dnp_Iavpumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_Iavpumpag1_DT : DT;(*Output*)
	dnp_Vavpumpag1 : DINT := 0;(*Output*)
	dnp_Vavpumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_Vavpumpag1_DT : DT;(*Output*)
	dnp_Pavpumpag1 : DINT := 0;(*Output*)
	dnp_Pavpumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_Pavpumpag1_DT : DT;(*Output*)
	dnp_Freqpumpag1 : DINT := 0;(*Output*)
	dnp_Freqpumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_Freqpumpag1_DT : DT;(*Output*)
	dnp_rpmpumpag1 : DINT := 0;(*Output*)
	dnp_rpmpumpag1_STATUS : UDINT := 1;(*Output*)
	dnp_rpmpumpag1_DT : DT;(*Output*)
	dnp_Iavpumpag2 : DINT := 0;(*Output*)
	dnp_Iavpumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_Iavpumpag2_DT : DT;(*Output*)
	dnp_Vavpumpag2 : DINT := 0;(*Output*)
	dnp_Vavpumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_Vavpumpag2_DT : DT;(*Output*)
	dnp_Pavpumpag2 : DINT := 0;(*Output*)
	dnp_Pavpumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_Pavpumpag2_DT : DT;(*Output*)
	dnp_Freqpumpag2 : DINT := 0;(*Output*)
	dnp_Freqpumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_Freqpumpag2_DT : DT;(*Output*)
	dnp_rpmpumpag2 : DINT := 0;(*Output*)
	dnp_rpmpumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_rpmpumpag2_DT : DT;(*Output*)
	dnp_Iavpumpag4 : DINT := 0;(*Output*)
	dnp_Iavpumpag4_STATUS : UDINT := 1;(*Output*)
	dnp_Iavpumpag4_DT : DT;(*Output*)
	dnp_Vavpumpag4 : DINT := 0;(*Output*)
	dnp_Vavpumpag4_STATUS : UDINT := 1;(*Output*)
	dnp_Vavpumpag4_DT : DT;(*Output*)
	dnp_Pavpumpag4 : DINT := 0;(*Output*)
	dnp_Pavpumpag4_STATUS : UDINT := 1;(*Output*)
	dnp_Pavpumpag4_DT : DT;(*Output*)
	dnp_Freqpumpag4 : DINT := 0;(*Output*)
	dnp_Freqpumpag4_STATUS : UDINT := 1;(*Output*)
	dnp_Freqpumpag4_DT : DT;(*Output*)
	dnp_rpmpumpag4 : DINT := 0;(*Output*)
	dnp_rpmpumpag4_STATUS : UDINT := 1;(*Output*)
	dnp_rpmpumpag4_DT : DT;(*Output*)
	dnp_Iavpumpag5 : DINT := 0;(*Output*)
	dnp_Iavpumpag5_STATUS : UDINT := 1;(*Output*)
	dnp_Iavpumpag5_DT : DT;(*Output*)
	dnp_Vavpumpag5 : DINT := 0;(*Output*)
	dnp_Vavpumpag5_STATUS : UDINT := 1;(*Output*)
	dnp_Vavpumpag5_DT : DT;(*Output*)
	dnp_Pavpumpag5 : DINT := 0;(*Output*)
	dnp_Pavpumpag5_STATUS : UDINT := 1;(*Output*)
	dnp_Pavpumpag5_DT : DT;(*Output*)
	dnp_Freqpumpag5 : DINT := 0;(*Output*)
	dnp_Freqpumpag5_STATUS : UDINT := 1;(*Output*)
	dnp_Freqpumpag5_DT : DT;(*Output*)
	dnp_rpmpumpag5 : DINT := 0;(*Output*)
	dnp_rpmpumpag5_STATUS : UDINT := 1;(*Output*)
	dnp_rpmpumpag5_DT : DT;(*Output*)
	dnp_Iavpumpag6 : DINT := 0;(*Output*)
	dnp_Iavpumpag6_STATUS : UDINT := 1;(*Output*)
	dnp_Iavpumpag6_DT : DT;(*Output*)
	dnp_Vavpumpag6 : DINT := 0;(*Output*)
	dnp_Vavpumpag6_STATUS : UDINT := 1;(*Output*)
	dnp_Vavpumpag6_DT : DT;(*Output*)
	dnp_Pavpumpag6 : DINT := 0;(*Output*)
	dnp_Pavpumpag6_STATUS : UDINT := 1;(*Output*)
	dnp_Pavpumpag6_DT : DT;(*Output*)
	dnp_Freqpumpag6 : DINT := 0;(*Output*)
	dnp_Freqpumpag6_STATUS : UDINT := 1;(*Output*)
	dnp_Freqpumpag6_DT : DT;(*Output*)
	dnp_rpmpumpag6 : DINT := 0;(*Output*)
	dnp_rpmpumpag6_STATUS : UDINT := 1;(*Output*)
	dnp_rpmpumpag6_DT : DT;(*Output*)
	dnp_CHLmeter485 : DINT := 0;(*Output*)
	dnp_CHLmeter485_STATUS : UDINT := 1;(*Output*)
	dnp_CHLmeter485_DT : DT;(*Output*)
	dnp_Well1Stop : BOOL := 0;(*Input*)
	dnp_Well1Stop_STATUS : UDINT := 1;(*Input*)
	dnp_Well1Stop_DT : DT;(*Input*)
	dnp_Well1Start : BOOL := 0;(*Input*)
	dnp_Well1Start_STATUS : UDINT := 1;(*Input*)
	dnp_Well1Start_DT : DT;(*Input*)
	dnp_Well2Stop : BOOL := 0;(*Input*)
	dnp_Well2Stop_STATUS : UDINT := 1;(*Input*)
	dnp_Well2Stop_DT : DT;(*Input*)
	dnp_Well2Start : BOOL := 0;(*Input*)
	dnp_Well2Start_STATUS : UDINT := 1;(*Input*)
	dnp_Well2Start_DT : DT;(*Input*)
	dnp_Well3Stop : BOOL := 0;(*Input*)
	dnp_Well3Stop_STATUS : UDINT := 1;(*Input*)
	dnp_Well3Stop_DT : DT;(*Input*)
	dnp_Well3Start : BOOL := 0;(*Input*)
	dnp_Well3Start_STATUS : UDINT := 1;(*Input*)
	dnp_Well3Start_DT : DT;(*Input*)
	dnp_pumpag1StopStart : BOOL := 0;(*Input*)
	dnp_pumpag1StopStart_STATUS : UDINT := 1;(*Input*)
	dnp_pumpag1StopStart_DT : DT;(*Input*)
	dnp_Pumpag2StopStart : BOOL := 0;(*Input*)
	dnp_Pumpag2StopStart_STATUS : UDINT := 1;(*Input*)
	dnp_Pumpag2StopStart_DT : DT;(*Input*)
	dnp_Pumpag4StopStart : BOOL := 0;(*Input*)
	dnp_Pumpag4StopStart_STATUS : UDINT := 1;(*Input*)
	dnp_Pumpag4StopStart_DT : DT;(*Input*)
	dnp_Pumpag5StopStart : BOOL := 0;(*Input*)
	dnp_Pumpag5StopStart_STATUS : UDINT := 1;(*Input*)
	dnp_Pumpag5StopStart_DT : DT;(*Input*)
	dnp_Pumpag6StopStart : BOOL := 0;(*Input*)
	dnp_Pumpag6StopStart_STATUS : UDINT := 1;(*Input*)
	dnp_Pumpag6StopStart_DT : DT;(*Input*)
	dnp_V3Well2 : DINT := 0;(*Output*)
	dnp_V3Well2_STATUS : UDINT := 1;(*Output*)
	dnp_V3Well2_DT : DT;(*Output*)
	dnp_FaultPumpag2 : BOOL := 0;(*Output*)
	dnp_FaultPumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_FaultPumpag2_DT : DT;(*Output*)
	dnp_ONpumpag2 : BOOL := 0;(*Output*)
	dnp_ONpumpag2_STATUS : UDINT := 1;(*Output*)
	dnp_ONpumpag2_DT : DT;(*Output*)
	dnp_OnStarwell2 : BOOL := 0;(*Output*)
	dnp_OnStarwell2_STATUS : UDINT := 1;(*Output*)
	dnp_OnStarwell2_DT : DT;(*Output*)
	dnp_OnStarwell3 : BOOL := 0;(*Output*)
	dnp_OnStarwell3_STATUS : UDINT := 1;(*Output*)
	dnp_OnStarwell3_DT : DT;(*Output*)
	dnp_leveltankspare : REAL := 0;(*Output*)
	dnp_leveltankspare_STATUS : UDINT := 1;(*Output*)
	dnp_leveltankspare_DT : DT;(*Output*)
	dnp_AOTag1000 : DINT := 0;(*Input*)
	dnp_AOTag1000_STATUS : UDINT := 1;(*Input*)
	dnp_AOTag1000_DT : DT;(*Input*)
	dnp_AOTag1001 : INT := 0;(*Input*)
	dnp_AOTag1001_STATUS : UDINT := 1;(*Input*)
	dnp_AOTag1001_DT : DT;(*Input*)
	dnp_AOTag1002 : REAL := 0;(*Input*)
	dnp_AOTag1002_STATUS : UDINT := 1;(*Input*)
	dnp_AOTag1002_DT : DT;(*Input*)
	dnp_AOTag1003 : LREAL := 0;(*Input*)
	dnp_AOTag1003_STATUS : UDINT := 1;(*Input*)
	dnp_AOTag1003_DT : DT;(*Input*)
	dnp2_opendoor : BOOL := 0;(*Output*)
	dnp2_opendoor_STATUS : UDINT := 1;(*Output*)
	dnp2_opendoor_DT : DT;(*Output*)
	dnp2_alarmAC : BOOL := 0;(*Output*)
	dnp2_alarmAC_STATUS : UDINT := 1;(*Output*)
	dnp2_alarmAC_DT : DT;(*Output*)
	dnp2_SUBSCADAWell1 : BOOL := 0;(*Output*)
	dnp2_SUBSCADAWell1_STATUS : UDINT := 1;(*Output*)
	dnp2_SUBSCADAWell1_DT : DT;(*Output*)
	dnp2_DC24V : BOOL := 0;(*Output*)
	dnp2_DC24V_STATUS : UDINT := 1;(*Output*)
	dnp2_DC24V_DT : DT;(*Output*)
	dnp2_FaultWell1 : BOOL := 0;(*Output*)
	dnp2_FaultWell1_STATUS : UDINT := 1;(*Output*)
	dnp2_FaultWell1_DT : DT;(*Output*)
	dnp2_ONWell1 : BOOL := 0;(*Output*)
	dnp2_ONWell1_STATUS : UDINT := 1;(*Output*)
	dnp2_ONWell1_DT : DT;(*Output*)
	dnp2_AutoWell1 : BOOL := 0;(*Output*)
	dnp2_AutoWell1_STATUS : UDINT := 1;(*Output*)
	dnp2_AutoWell1_DT : DT;(*Output*)
	dnp2_FaultWell2 : BOOL := 0;(*Output*)
	dnp2_FaultWell2_STATUS : UDINT := 1;(*Output*)
	dnp2_FaultWell2_DT : DT;(*Output*)
	dnp2_ONWell2 : BOOL := 0;(*Output*)
	dnp2_ONWell2_STATUS : UDINT := 1;(*Output*)
	dnp2_ONWell2_DT : DT;(*Output*)
	dnp2_AutoWell2 : BOOL := 0;(*Output*)
	dnp2_AutoWell2_STATUS : UDINT := 1;(*Output*)
	dnp2_AutoWell2_DT : DT;(*Output*)
	dnp2_SubScadaWell2 : BOOL := 0;(*Output*)
	dnp2_SubScadaWell2_STATUS : UDINT := 1;(*Output*)
	dnp2_SubScadaWell2_DT : DT;(*Output*)
	dnp2_FaultWell3 : BOOL := 0;(*Output*)
	dnp2_FaultWell3_STATUS : UDINT := 1;(*Output*)
	dnp2_FaultWell3_DT : DT;(*Output*)
	dnp2_ONWell3 : BOOL := 0;(*Output*)
	dnp2_ONWell3_STATUS : UDINT := 1;(*Output*)
	dnp2_ONWell3_DT : DT;(*Output*)
	dnp2_AutoWell3 : BOOL := 0;(*Output*)
	dnp2_AutoWell3_STATUS : UDINT := 1;(*Output*)
	dnp2_AutoWell3_DT : DT;(*Output*)
	dnp2_SubScadaWell3 : BOOL := 0;(*Output*)
	dnp2_SubScadaWell3_STATUS : UDINT := 1;(*Output*)
	dnp2_SubScadaWell3_DT : DT;(*Output*)
	dnp2_roomwaterAlarm : BOOL := 0;(*Output*)
	dnp2_roomwaterAlarm_STATUS : UDINT := 1;(*Output*)
	dnp2_roomwaterAlarm_DT : DT;(*Output*)
	dnp2_chamberWaterAlarm : BOOL := 0;(*Output*)
	dnp2_chamberWaterAlarm_STATUS : UDINT := 1;(*Output*)
	dnp2_chamberWaterAlarm_DT : DT;(*Output*)
	dnp2_TankAlarmHI : BOOL := 0;(*Output*)
	dnp2_TankAlarmHI_STATUS : UDINT := 1;(*Output*)
	dnp2_TankAlarmHI_DT : DT;(*Output*)
	dnp2_TankAlarmLOW : BOOL := 0;(*Output*)
	dnp2_TankAlarmLOW_STATUS : UDINT := 1;(*Output*)
	dnp2_TankAlarmLOW_DT : DT;(*Output*)
	dnp2_Faultpumpag1 : BOOL := 0;(*Output*)
	dnp2_Faultpumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_Faultpumpag1_DT : DT;(*Output*)
	dnp2_ONpumpag1 : BOOL := 0;(*Output*)
	dnp2_ONpumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_ONpumpag1_DT : DT;(*Output*)
	dnp2_Faultpumpag4 : BOOL := 0;(*Output*)
	dnp2_Faultpumpag4_STATUS : UDINT := 1;(*Output*)
	dnp2_Faultpumpag4_DT : DT;(*Output*)
	dnp2_ONpumpag4 : BOOL := 0;(*Output*)
	dnp2_ONpumpag4_STATUS : UDINT := 1;(*Output*)
	dnp2_ONpumpag4_DT : DT;(*Output*)
	dnp2_Faultpumpag5 : BOOL := 0;(*Output*)
	dnp2_Faultpumpag5_STATUS : UDINT := 1;(*Output*)
	dnp2_Faultpumpag5_DT : DT;(*Output*)
	dnp2_ONpumpag5 : BOOL := 0;(*Output*)
	dnp2_ONpumpag5_STATUS : UDINT := 1;(*Output*)
	dnp2_ONpumpag5_DT : DT;(*Output*)
	dnp2_Faultpumpag6 : BOOL := 0;(*Output*)
	dnp2_Faultpumpag6_STATUS : UDINT := 1;(*Output*)
	dnp2_Faultpumpag6_DT : DT;(*Output*)
	dnp2_ONpumpag6 : BOOL := 0;(*Output*)
	dnp2_ONpumpag6_STATUS : UDINT := 1;(*Output*)
	dnp2_ONpumpag6_DT : DT;(*Output*)
	dnp2_pressureWell1HI : BOOL := 0;(*Output*)
	dnp2_pressureWell1HI_STATUS : UDINT := 1;(*Output*)
	dnp2_pressureWell1HI_DT : DT;(*Output*)
	dnp2_pressureWell1LOW : BOOL := 0;(*Output*)
	dnp2_pressureWell1LOW_STATUS : UDINT := 1;(*Output*)
	dnp2_pressureWell1LOW_DT : DT;(*Output*)
	dnp2_phase1Well1 : BOOL := 0;(*Output*)
	dnp2_phase1Well1_STATUS : UDINT := 1;(*Output*)
	dnp2_phase1Well1_DT : DT;(*Output*)
	dnp2_phase2Well1 : BOOL := 0;(*Output*)
	dnp2_phase2Well1_STATUS : UDINT := 1;(*Output*)
	dnp2_phase2Well1_DT : DT;(*Output*)
	dnp2_phase3Well1 : BOOL := 0;(*Output*)
	dnp2_phase3Well1_STATUS : UDINT := 1;(*Output*)
	dnp2_phase3Well1_DT : DT;(*Output*)
	dnp2_pressureWell2HI : BOOL := 0;(*Output*)
	dnp2_pressureWell2HI_STATUS : UDINT := 1;(*Output*)
	dnp2_pressureWell2HI_DT : DT;(*Output*)
	dnp2_pressureWell2LOW : BOOL := 0;(*Output*)
	dnp2_pressureWell2LOW_STATUS : UDINT := 1;(*Output*)
	dnp2_pressureWell2LOW_DT : DT;(*Output*)
	dnp2_phase1Well2 : BOOL := 0;(*Output*)
	dnp2_phase1Well2_STATUS : UDINT := 1;(*Output*)
	dnp2_phase1Well2_DT : DT;(*Output*)
	dnp2_phase2Well2 : BOOL := 0;(*Output*)
	dnp2_phase2Well2_STATUS : UDINT := 1;(*Output*)
	dnp2_phase2Well2_DT : DT;(*Output*)
	dnp2_phase3Well2 : BOOL := 0;(*Output*)
	dnp2_phase3Well2_STATUS : UDINT := 1;(*Output*)
	dnp2_phase3Well2_DT : DT;(*Output*)
	dnp2_pressureWell3HI : BOOL := 0;(*Output*)
	dnp2_pressureWell3HI_STATUS : UDINT := 1;(*Output*)
	dnp2_pressureWell3HI_DT : DT;(*Output*)
	dnp2_pressureWell3LOW : BOOL := 0;(*Output*)
	dnp2_pressureWell3LOW_STATUS : UDINT := 1;(*Output*)
	dnp2_pressureWell3LOW_DT : DT;(*Output*)
	dnp2_phase1Well3 : BOOL := 0;(*Output*)
	dnp2_phase1Well3_STATUS : UDINT := 1;(*Output*)
	dnp2_phase1Well3_DT : DT;(*Output*)
	dnp2_phase2Well3 : BOOL := 0;(*Output*)
	dnp2_phase2Well3_STATUS : UDINT := 1;(*Output*)
	dnp2_phase2Well3_DT : DT;(*Output*)
	dnp2_phase3Well3 : BOOL := 0;(*Output*)
	dnp2_phase3Well3_STATUS : UDINT := 1;(*Output*)
	dnp2_phase3Well3_DT : DT;(*Output*)
	dnp2_pressureWell1 : REAL := 0;(*Output*)
	dnp2_pressureWell1_STATUS : UDINT := 1;(*Output*)
	dnp2_pressureWell1_DT : DT;(*Output*)
	dnp2_pressureWell2 : REAL := 0;(*Output*)
	dnp2_pressureWell2_STATUS : UDINT := 1;(*Output*)
	dnp2_pressureWell2_DT : DT;(*Output*)
	dnp2_pressureWell3 : REAL := 0;(*Output*)
	dnp2_pressureWell3_STATUS : UDINT := 1;(*Output*)
	dnp2_pressureWell3_DT : DT;(*Output*)
	dnp2_pressurepumpag123 : REAL := 0;(*Output*)
	dnp2_pressurepumpag123_STATUS : UDINT := 1;(*Output*)
	dnp2_pressurepumpag123_DT : DT;(*Output*)
	dnp2_pressurepumpag456 : REAL := 0;(*Output*)
	dnp2_pressurepumpag456_STATUS : UDINT := 1;(*Output*)
	dnp2_pressurepumpag456_DT : DT;(*Output*)
	dnp2_levelmeterTank : REAL := 0;(*Output*)
	dnp2_levelmeterTank_STATUS : UDINT := 1;(*Output*)
	dnp2_levelmeterTank_DT : DT;(*Output*)
	dnp2_CHLmeter : REAL := 0;(*Output*)
	dnp2_CHLmeter_STATUS : UDINT := 1;(*Output*)
	dnp2_CHLmeter_DT : DT;(*Output*)
	dnp2_I1well1 : DINT := 0;(*Output*)
	dnp2_I1well1_STATUS : UDINT := 1;(*Output*)
	dnp2_I1well1_DT : DT;(*Output*)
	dnp2_I2well1 : DINT := 0;(*Output*)
	dnp2_I2well1_STATUS : UDINT := 1;(*Output*)
	dnp2_I2well1_DT : DT;(*Output*)
	dnp2_I3well1 : DINT := 0;(*Output*)
	dnp2_I3well1_STATUS : UDINT := 1;(*Output*)
	dnp2_I3well1_DT : DT;(*Output*)
	dnp2_V1well1 : DINT := 0;(*Output*)
	dnp2_V1well1_STATUS : UDINT := 1;(*Output*)
	dnp2_V1well1_DT : DT;(*Output*)
	dnp2_V2well1 : DINT := 0;(*Output*)
	dnp2_V2well1_STATUS : UDINT := 1;(*Output*)
	dnp2_V2well1_DT : DT;(*Output*)
	dnp2_V3well1 : DINT := 0;(*Output*)
	dnp2_V3well1_STATUS : UDINT := 1;(*Output*)
	dnp2_V3well1_DT : DT;(*Output*)
	dnp2_V12Well1 : DINT := 0;(*Output*)
	dnp2_V12Well1_STATUS : UDINT := 1;(*Output*)
	dnp2_V12Well1_DT : DT;(*Output*)
	dnp2_V23Well1 : DINT := 0;(*Output*)
	dnp2_V23Well1_STATUS : UDINT := 1;(*Output*)
	dnp2_V23Well1_DT : DT;(*Output*)
	dnp2_V31Well1 : DINT := 0;(*Output*)
	dnp2_V31Well1_STATUS : UDINT := 1;(*Output*)
	dnp2_V31Well1_DT : DT;(*Output*)
	dnp2_P1Well1 : DINT := 0;(*Output*)
	dnp2_P1Well1_STATUS : UDINT := 1;(*Output*)
	dnp2_P1Well1_DT : DT;(*Output*)
	dnp2_P2Well1 : DINT := 0;(*Output*)
	dnp2_P2Well1_STATUS : UDINT := 1;(*Output*)
	dnp2_P2Well1_DT : DT;(*Output*)
	dnp2_P3Well1 : DINT := 0;(*Output*)
	dnp2_P3Well1_STATUS : UDINT := 1;(*Output*)
	dnp2_P3Well1_DT : DT;(*Output*)
	dnp2_q1well1 : DINT := 0;(*Output*)
	dnp2_q1well1_STATUS : UDINT := 1;(*Output*)
	dnp2_q1well1_DT : DT;(*Output*)
	dnp2_q2well1 : DINT := 0;(*Output*)
	dnp2_q2well1_STATUS : UDINT := 1;(*Output*)
	dnp2_q2well1_DT : DT;(*Output*)
	dnp2_q3well1 : DINT := 0;(*Output*)
	dnp2_q3well1_STATUS : UDINT := 1;(*Output*)
	dnp2_q3well1_DT : DT;(*Output*)
	dnp2_s1well1 : DINT := 0;(*Output*)
	dnp2_s1well1_STATUS : UDINT := 1;(*Output*)
	dnp2_s1well1_DT : DT;(*Output*)
	dnp2_s2well1 : DINT := 0;(*Output*)
	dnp2_s2well1_STATUS : UDINT := 1;(*Output*)
	dnp2_s2well1_DT : DT;(*Output*)
	dnp2_s3well1 : DINT := 0;(*Output*)
	dnp2_s3well1_STATUS : UDINT := 1;(*Output*)
	dnp2_s3well1_DT : DT;(*Output*)
	dnp2_pf1well1 : DINT := 0;(*Output*)
	dnp2_pf1well1_STATUS : UDINT := 1;(*Output*)
	dnp2_pf1well1_DT : DT;(*Output*)
	dnp2_pf2well1 : DINT := 0;(*Output*)
	dnp2_pf2well1_STATUS : UDINT := 1;(*Output*)
	dnp2_pf2well1_DT : DT;(*Output*)
	dnp2_pf3well1 : DINT := 0;(*Output*)
	dnp2_pf3well1_STATUS : UDINT := 1;(*Output*)
	dnp2_pf3well1_DT : DT;(*Output*)
	dnp2_FreqWell1 : DINT := 0;(*Output*)
	dnp2_FreqWell1_STATUS : UDINT := 1;(*Output*)
	dnp2_FreqWell1_DT : DT;(*Output*)
	dnp2_I1Well2 : DINT := 0;(*Output*)
	dnp2_I1Well2_STATUS : UDINT := 1;(*Output*)
	dnp2_I1Well2_DT : DT;(*Output*)
	dnp2_I2Well2 : DINT := 0;(*Output*)
	dnp2_I2Well2_STATUS : UDINT := 1;(*Output*)
	dnp2_I2Well2_DT : DT;(*Output*)
	dnp2_I3Well2 : DINT := 0;(*Output*)
	dnp2_I3Well2_STATUS : UDINT := 1;(*Output*)
	dnp2_I3Well2_DT : DT;(*Output*)
	dnp2_V1Well2 : DINT := 0;(*Output*)
	dnp2_V1Well2_STATUS : UDINT := 1;(*Output*)
	dnp2_V1Well2_DT : DT;(*Output*)
	dnp2_V2Well2 : DINT := 0;(*Output*)
	dnp2_V2Well2_STATUS : UDINT := 1;(*Output*)
	dnp2_V2Well2_DT : DT;(*Output*)
	dnp2_V12Well2 : DINT := 0;(*Output*)
	dnp2_V12Well2_STATUS : UDINT := 1;(*Output*)
	dnp2_V12Well2_DT : DT;(*Output*)
	dnp2_V23Well2 : DINT := 0;(*Output*)
	dnp2_V23Well2_STATUS : UDINT := 1;(*Output*)
	dnp2_V23Well2_DT : DT;(*Output*)
	dnp2_V31well2 : DINT := 0;(*Output*)
	dnp2_V31well2_STATUS : UDINT := 1;(*Output*)
	dnp2_V31well2_DT : DT;(*Output*)
	dnp2_p1Well2 : DINT := 0;(*Output*)
	dnp2_p1Well2_STATUS : UDINT := 1;(*Output*)
	dnp2_p1Well2_DT : DT;(*Output*)
	dnp2_p2Well2 : DINT := 0;(*Output*)
	dnp2_p2Well2_STATUS : UDINT := 1;(*Output*)
	dnp2_p2Well2_DT : DT;(*Output*)
	dnp2_p3Well2 : DINT := 0;(*Output*)
	dnp2_p3Well2_STATUS : UDINT := 1;(*Output*)
	dnp2_p3Well2_DT : DT;(*Output*)
	dnp2_q1Well2 : DINT := 0;(*Output*)
	dnp2_q1Well2_STATUS : UDINT := 1;(*Output*)
	dnp2_q1Well2_DT : DT;(*Output*)
	dnp2_q2Well2 : DINT := 0;(*Output*)
	dnp2_q2Well2_STATUS : UDINT := 1;(*Output*)
	dnp2_q2Well2_DT : DT;(*Output*)
	dnp2_q3Well2 : DINT := 0;(*Output*)
	dnp2_q3Well2_STATUS : UDINT := 1;(*Output*)
	dnp2_q3Well2_DT : DT;(*Output*)
	dnp2_s1well2 : DINT := 0;(*Output*)
	dnp2_s1well2_STATUS : UDINT := 1;(*Output*)
	dnp2_s1well2_DT : DT;(*Output*)
	dnp2_s2Well2 : DINT := 0;(*Output*)
	dnp2_s2Well2_STATUS : UDINT := 1;(*Output*)
	dnp2_s2Well2_DT : DT;(*Output*)
	dnp2_s3Well2 : DINT := 0;(*Output*)
	dnp2_s3Well2_STATUS : UDINT := 1;(*Output*)
	dnp2_s3Well2_DT : DT;(*Output*)
	dnp2_PF1Well2 : DINT := 0;(*Output*)
	dnp2_PF1Well2_STATUS : UDINT := 1;(*Output*)
	dnp2_PF1Well2_DT : DT;(*Output*)
	dnp2_PF2Well2 : DINT := 0;(*Output*)
	dnp2_PF2Well2_STATUS : UDINT := 1;(*Output*)
	dnp2_PF2Well2_DT : DT;(*Output*)
	dnp2_PF3Well2 : DINT := 0;(*Output*)
	dnp2_PF3Well2_STATUS : UDINT := 1;(*Output*)
	dnp2_PF3Well2_DT : DT;(*Output*)
	dnp2_FreqWell2 : DINT := 0;(*Output*)
	dnp2_FreqWell2_STATUS : UDINT := 1;(*Output*)
	dnp2_FreqWell2_DT : DT;(*Output*)
	dnp2_I1Well3 : DINT := 0;(*Output*)
	dnp2_I1Well3_STATUS : UDINT := 1;(*Output*)
	dnp2_I1Well3_DT : DT;(*Output*)
	dnp2_I2Well3 : DINT := 0;(*Output*)
	dnp2_I2Well3_STATUS : UDINT := 1;(*Output*)
	dnp2_I2Well3_DT : DT;(*Output*)
	dnp2_I3Well3 : DINT := 0;(*Output*)
	dnp2_I3Well3_STATUS : UDINT := 1;(*Output*)
	dnp2_I3Well3_DT : DT;(*Output*)
	dnp2_V1Well3 : DINT := 0;(*Output*)
	dnp2_V1Well3_STATUS : UDINT := 1;(*Output*)
	dnp2_V1Well3_DT : DT;(*Output*)
	dnp2_V2Well3 : DINT := 0;(*Output*)
	dnp2_V2Well3_STATUS : UDINT := 1;(*Output*)
	dnp2_V2Well3_DT : DT;(*Output*)
	dnp2_V3Well3 : DINT := 0;(*Output*)
	dnp2_V3Well3_STATUS : UDINT := 1;(*Output*)
	dnp2_V3Well3_DT : DT;(*Output*)
	dnp2_V12Well3 : DINT := 0;(*Output*)
	dnp2_V12Well3_STATUS : UDINT := 1;(*Output*)
	dnp2_V12Well3_DT : DT;(*Output*)
	dnp2_V23Well3 : DINT := 0;(*Output*)
	dnp2_V23Well3_STATUS : UDINT := 1;(*Output*)
	dnp2_V23Well3_DT : DT;(*Output*)
	dnp2_V31Well3 : DINT := 0;(*Output*)
	dnp2_V31Well3_STATUS : UDINT := 1;(*Output*)
	dnp2_V31Well3_DT : DT;(*Output*)
	dnp2_P1Well3 : DINT := 0;(*Output*)
	dnp2_P1Well3_STATUS : UDINT := 1;(*Output*)
	dnp2_P1Well3_DT : DT;(*Output*)
	dnp2_P2Well3 : DINT := 0;(*Output*)
	dnp2_P2Well3_STATUS : UDINT := 1;(*Output*)
	dnp2_P2Well3_DT : DT;(*Output*)
	dnp2_P3Well3 : DINT := 0;(*Output*)
	dnp2_P3Well3_STATUS : UDINT := 1;(*Output*)
	dnp2_P3Well3_DT : DT;(*Output*)
	dnp2_Q1Well3 : DINT := 0;(*Output*)
	dnp2_Q1Well3_STATUS : UDINT := 1;(*Output*)
	dnp2_Q1Well3_DT : DT;(*Output*)
	dnp2_Q2Well3 : DINT := 0;(*Output*)
	dnp2_Q2Well3_STATUS : UDINT := 1;(*Output*)
	dnp2_Q2Well3_DT : DT;(*Output*)
	dnp2_Q3Well3 : DINT := 0;(*Output*)
	dnp2_Q3Well3_STATUS : UDINT := 1;(*Output*)
	dnp2_Q3Well3_DT : DT;(*Output*)
	dnp2_S1Well3 : DINT := 0;(*Output*)
	dnp2_S1Well3_STATUS : UDINT := 1;(*Output*)
	dnp2_S1Well3_DT : DT;(*Output*)
	dnp2_S2Well3 : DINT := 0;(*Output*)
	dnp2_S2Well3_STATUS : UDINT := 1;(*Output*)
	dnp2_S2Well3_DT : DT;(*Output*)
	dnp2_S3Well3 : DINT := 0;(*Output*)
	dnp2_S3Well3_STATUS : UDINT := 1;(*Output*)
	dnp2_S3Well3_DT : DT;(*Output*)
	dnp2_PF1Well3 : DINT := 0;(*Output*)
	dnp2_PF1Well3_STATUS : UDINT := 1;(*Output*)
	dnp2_PF1Well3_DT : DT;(*Output*)
	dnp2_PF2Well3 : DINT := 0;(*Output*)
	dnp2_PF2Well3_STATUS : UDINT := 1;(*Output*)
	dnp2_PF2Well3_DT : DT;(*Output*)
	dnp2_PF3Well3 : DINT := 0;(*Output*)
	dnp2_PF3Well3_STATUS : UDINT := 1;(*Output*)
	dnp2_PF3Well3_DT : DT;(*Output*)
	dnp2_FreqWell3 : DINT := 0;(*Output*)
	dnp2_FreqWell3_STATUS : UDINT := 1;(*Output*)
	dnp2_FreqWell3_DT : DT;(*Output*)
	dnp2_Iavpumpag1 : DINT := 0;(*Output*)
	dnp2_Iavpumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_Iavpumpag1_DT : DT;(*Output*)
	dnp2_Vavpumpag1 : DINT := 0;(*Output*)
	dnp2_Vavpumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_Vavpumpag1_DT : DT;(*Output*)
	dnp2_Pavpumpag1 : DINT := 0;(*Output*)
	dnp2_Pavpumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_Pavpumpag1_DT : DT;(*Output*)
	dnp2_Freqpumpag1 : DINT := 0;(*Output*)
	dnp2_Freqpumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_Freqpumpag1_DT : DT;(*Output*)
	dnp2_rpmpumpag1 : DINT := 0;(*Output*)
	dnp2_rpmpumpag1_STATUS : UDINT := 1;(*Output*)
	dnp2_rpmpumpag1_DT : DT;(*Output*)
	dnp2_Iavpumpag2 : DINT := 0;(*Output*)
	dnp2_Iavpumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_Iavpumpag2_DT : DT;(*Output*)
	dnp2_Vavpumpag2 : DINT := 0;(*Output*)
	dnp2_Vavpumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_Vavpumpag2_DT : DT;(*Output*)
	dnp2_Pavpumpag2 : DINT := 0;(*Output*)
	dnp2_Pavpumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_Pavpumpag2_DT : DT;(*Output*)
	dnp2_Freqpumpag2 : DINT := 0;(*Output*)
	dnp2_Freqpumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_Freqpumpag2_DT : DT;(*Output*)
	dnp2_rpmpumpag2 : DINT := 0;(*Output*)
	dnp2_rpmpumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_rpmpumpag2_DT : DT;(*Output*)
	dnp2_Iavpumpag4 : DINT := 0;(*Output*)
	dnp2_Iavpumpag4_STATUS : UDINT := 1;(*Output*)
	dnp2_Iavpumpag4_DT : DT;(*Output*)
	dnp2_Vavpumpag4 : DINT := 0;(*Output*)
	dnp2_Vavpumpag4_STATUS : UDINT := 1;(*Output*)
	dnp2_Vavpumpag4_DT : DT;(*Output*)
	dnp2_Pavpumpag4 : DINT := 0;(*Output*)
	dnp2_Pavpumpag4_STATUS : UDINT := 1;(*Output*)
	dnp2_Pavpumpag4_DT : DT;(*Output*)
	dnp2_Freqpumpag4 : DINT := 0;(*Output*)
	dnp2_Freqpumpag4_STATUS : UDINT := 1;(*Output*)
	dnp2_Freqpumpag4_DT : DT;(*Output*)
	dnp2_rpmpumpag4 : DINT := 0;(*Output*)
	dnp2_rpmpumpag4_STATUS : UDINT := 1;(*Output*)
	dnp2_rpmpumpag4_DT : DT;(*Output*)
	dnp2_Iavpumpag5 : DINT := 0;(*Output*)
	dnp2_Iavpumpag5_STATUS : UDINT := 1;(*Output*)
	dnp2_Iavpumpag5_DT : DT;(*Output*)
	dnp2_Vavpumpag5 : DINT := 0;(*Output*)
	dnp2_Vavpumpag5_STATUS : UDINT := 1;(*Output*)
	dnp2_Vavpumpag5_DT : DT;(*Output*)
	dnp2_Pavpumpag5 : DINT := 0;(*Output*)
	dnp2_Pavpumpag5_STATUS : UDINT := 1;(*Output*)
	dnp2_Pavpumpag5_DT : DT;(*Output*)
	dnp2_Freqpumpag5 : DINT := 0;(*Output*)
	dnp2_Freqpumpag5_STATUS : UDINT := 1;(*Output*)
	dnp2_Freqpumpag5_DT : DT;(*Output*)
	dnp2_rpmpumpag5 : DINT := 0;(*Output*)
	dnp2_rpmpumpag5_STATUS : UDINT := 1;(*Output*)
	dnp2_rpmpumpag5_DT : DT;(*Output*)
	dnp2_Iavpumpag6 : DINT := 0;(*Output*)
	dnp2_Iavpumpag6_STATUS : UDINT := 1;(*Output*)
	dnp2_Iavpumpag6_DT : DT;(*Output*)
	dnp2_Vavpumpag6 : DINT := 0;(*Output*)
	dnp2_Vavpumpag6_STATUS : UDINT := 1;(*Output*)
	dnp2_Vavpumpag6_DT : DT;(*Output*)
	dnp2_Pavpumpag6 : DINT := 0;(*Output*)
	dnp2_Pavpumpag6_STATUS : UDINT := 1;(*Output*)
	dnp2_Pavpumpag6_DT : DT;(*Output*)
	dnp2_Freqpumpag6 : DINT := 0;(*Output*)
	dnp2_Freqpumpag6_STATUS : UDINT := 1;(*Output*)
	dnp2_Freqpumpag6_DT : DT;(*Output*)
	dnp2_rpmpumpag6 : DINT := 0;(*Output*)
	dnp2_rpmpumpag6_STATUS : UDINT := 1;(*Output*)
	dnp2_rpmpumpag6_DT : DT;(*Output*)
	dnp2_CHLmeter485 : DINT := 0;(*Output*)
	dnp2_CHLmeter485_STATUS : UDINT := 1;(*Output*)
	dnp2_CHLmeter485_DT : DT;(*Output*)
	dnp2_Well1Stop : BOOL := 0;(*Input*)
	dnp2_Well1Stop_STATUS : UDINT := 1;(*Input*)
	dnp2_Well1Stop_DT : DT;(*Input*)
	dnp2_Well1Start : BOOL := 0;(*Input*)
	dnp2_Well1Start_STATUS : UDINT := 1;(*Input*)
	dnp2_Well1Start_DT : DT;(*Input*)
	dnp2_Well2Stop : BOOL := 0;(*Input*)
	dnp2_Well2Stop_STATUS : UDINT := 1;(*Input*)
	dnp2_Well2Stop_DT : DT;(*Input*)
	dnp2_Well2Start : BOOL := 0;(*Input*)
	dnp2_Well2Start_STATUS : UDINT := 1;(*Input*)
	dnp2_Well2Start_DT : DT;(*Input*)
	dnp2_Well3Stop : BOOL := 0;(*Input*)
	dnp2_Well3Stop_STATUS : UDINT := 1;(*Input*)
	dnp2_Well3Stop_DT : DT;(*Input*)
	dnp2_Well3Start : BOOL := 0;(*Input*)
	dnp2_Well3Start_STATUS : UDINT := 1;(*Input*)
	dnp2_Well3Start_DT : DT;(*Input*)
	dnp2_pumpag1StopStart : BOOL := 0;(*Input*)
	dnp2_pumpag1StopStart_STATUS : UDINT := 1;(*Input*)
	dnp2_pumpag1StopStart_DT : DT;(*Input*)
	dnp2_Pumpag2StopStart : BOOL := 0;(*Input*)
	dnp2_Pumpag2StopStart_STATUS : UDINT := 1;(*Input*)
	dnp2_Pumpag2StopStart_DT : DT;(*Input*)
	dnp2_Pumpag4StopStart : BOOL := 0;(*Input*)
	dnp2_Pumpag4StopStart_STATUS : UDINT := 1;(*Input*)
	dnp2_Pumpag4StopStart_DT : DT;(*Input*)
	dnp2_Pumpag5StopStart : BOOL := 0;(*Input*)
	dnp2_Pumpag5StopStart_STATUS : UDINT := 1;(*Input*)
	dnp2_Pumpag5StopStart_DT : DT;(*Input*)
	dnp2_Pumpag6StopStart : BOOL := 0;(*Input*)
	dnp2_Pumpag6StopStart_STATUS : UDINT := 1;(*Input*)
	dnp2_Pumpag6StopStart_DT : DT;(*Input*)
	dnp2_V3Well2 : DINT := 0;(*Output*)
	dnp2_V3Well2_STATUS : UDINT := 1;(*Output*)
	dnp2_V3Well2_DT : DT;(*Output*)
	dnp2_FaultPumpag2 : BOOL := 0;(*Output*)
	dnp2_FaultPumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_FaultPumpag2_DT : DT;(*Output*)
	dnp2_ONpumpag2 : BOOL := 0;(*Output*)
	dnp2_ONpumpag2_STATUS : UDINT := 1;(*Output*)
	dnp2_ONpumpag2_DT : DT;(*Output*)
	dnp2_OnStarwell2 : BOOL := 0;(*Output*)
	dnp2_OnStarwell2_STATUS : UDINT := 1;(*Output*)
	dnp2_OnStarwell2_DT : DT;(*Output*)
	dnp2_OnStarwell3 : BOOL := 0;(*Output*)
	dnp2_OnStarwell3_STATUS : UDINT := 1;(*Output*)
	dnp2_OnStarwell3_DT : DT;(*Output*)
	dnp2_leveltankspare : REAL := 0;(*Output*)
	dnp2_leveltankspare_STATUS : UDINT := 1;(*Output*)
	dnp2_leveltankspare_DT : DT;(*Output*)
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
PROGRAM INSTANCE_pou WITH Task1 : POU_pou;
END_RESOURCE
END_CONFIGURATION
