TYPE
DataType1 : BOOL;
END_TYPE
PROGRAM POU_1
VAR
	V_R_TRIG2 : R_TRIG;
	V_SR2 : SR;
	V_TON2 : TON;
	V_R_TRIG3 : R_TRIG;
	V_SR3 : SR;
	V_TON3 : TON;
	V_R_TRIG4 : R_TRIG;
	V_SR4 : SR;
	V_TON4 : TON;
	V_CTU_DINT1 : CTU_DINT;
	V_CTU_DINT3 : CTU_DINT;
	V_TON1 : TON;
	V_SR1 : SR;
	V_TON5 : TON;
	V_SR5 : SR;
	V_R_TRIG1 : R_TRIG;
	V_TON6 : TON;
	V_SR6 : SR;
	V_TON7 : TON;
	V_SR7 : SR;
	V_R_TRIG5 : R_TRIG;
	V_TON8 : TON;
	V_SR8 : SR;
	V_R_TRIG6 : R_TRIG;
	V_TON9 : TON;
	V_SR9 : SR;
	V_R_TRIG7 : R_TRIG;
	V_R_TRIG8 : R_TRIG;
	V_R_TRIG9 : R_TRIG;
END_VAR

VAR_TEMP
	MOVE_ENO_8 : BOOL;
	MOVE_OUT_8 : BOOL;
	MOVE_ENO_19 : BOOL;
	MOVE_OUT_19 : BOOL;
	MOVE_ENO_30 : BOOL;
	MOVE_OUT_30 : BOOL;
	MOVE_ENO_843 : BOOL;
	MOVE_OUT_843 : BOOL;
	MOVE_ENO_854 : BOOL;
	MOVE_OUT_854 : BOOL;
	MOVE_ENO_879 : BOOL;
	MOVE_OUT_879 : BOOL;
	MOVE_ENO_890 : BOOL;
	MOVE_OUT_890 : BOOL;
	NOT_OUT_3388 : BOOL;
	MOVE_ENO_4205 : BOOL;
	MOVE_OUT_4205 : BOOL;
	MOVE_ENO_5354 : BOOL;
	MOVE_OUT_5354 : BOOL;
	MOVE_ENO_5365 : BOOL;
	MOVE_OUT_5365 : BOOL;
	MOVE_ENO_5376 : BOOL;
	MOVE_OUT_5376 : BOOL;
	MOVE_ENO_5387 : BOOL;
	MOVE_OUT_5387 : BOOL;
	MOVE_ENO_5398 : BOOL;
	MOVE_OUT_5398 : BOOL;
	MOVE_ENO_5409 : BOOL;
	MOVE_OUT_5409 : BOOL;
	MOVE_ENO_5420 : BOOL;
	MOVE_OUT_5420 : BOOL;
	MOVE_ENO_5431 : BOOL;
	MOVE_OUT_5431 : BOOL;
	MOVE_ENO_5442 : BOOL;
	MOVE_OUT_5442 : BOOL;
	MOVE_ENO_5453 : BOOL;
	MOVE_OUT_5453 : BOOL;
	AND_ENO_3343 : BOOL;
	AND_OUT_3343 : BOOL;
	NOT_OUT_3444 : BOOL;
	AND_ENO_4160 : BOOL;
	AND_OUT_4160 : BOOL;
	NOT_OUT_4175 : BOOL;
	NOT_OUT_4178 : BOOL;
	NOT_OUT_4181 : BOOL;
	NOT_OUT_4196 : BOOL;
	NOT_OUT_12870 : BOOL;
	AND_ENO_12874 : BOOL;
	AND_OUT_12874 : BOOL;
	AND_ENO_12883 : BOOL;
	AND_OUT_12883 : BOOL;
	AND_ENO_12916 : BOOL;
	AND_OUT_12916 : BOOL;
	NOT_OUT_12924 : BOOL;
	AND_ENO_12927 : BOOL;
	AND_OUT_12927 : BOOL;
	NOT_OUT_12941 : BOOL;
	NOT_OUT_12944 : BOOL;
	NOT_OUT_12947 : BOOL;
	NOT_OUT_12956 : BOOL;
	NOT_OUT_13005 : BOOL;
	AND_ENO_13008 : BOOL;
	AND_OUT_13008 : BOOL;
	AND_ENO_13014 : BOOL;
	AND_OUT_13014 : BOOL;
	NOT_OUT_13055 : BOOL;
	AND_ENO_13058 : BOOL;
	AND_OUT_13058 : BOOL;
	AND_ENO_13064 : BOOL;
	AND_OUT_13064 : BOOL;
	AND_ENO_13094 : BOOL;
	AND_OUT_13094 : BOOL;
	NOT_OUT_13102 : BOOL;
	AND_ENO_13105 : BOOL;
	AND_OUT_13105 : BOOL;
	NOT_OUT_13119 : BOOL;
	NOT_OUT_13122 : BOOL;
	NOT_OUT_13125 : BOOL;
	NOT_OUT_13134 : BOOL;
	OR_ENO_14465 : BOOL;
	OR_OUT_14465 : BOOL;
	OR_ENO_14476 : BOOL;
	OR_OUT_14476 : BOOL;
	OR_ENO_14487 : BOOL;
	OR_OUT_14487 : BOOL;
	OR_ENO_14498 : BOOL;
	OR_OUT_14498 : BOOL;
	OR_ENO_14509 : BOOL;
	OR_OUT_14509 : BOOL;
	OR_ENO_14520 : BOOL;
	OR_OUT_14520 : BOOL;
	UINT_TO_UDINT_ENO_550 : BOOL;
	UINT_TO_UDINT_OUT_550 : UDINT;
	INT_TO_UDINT_ENO_555 : BOOL;
	INT_TO_UDINT_OUT_555 : UDINT;
	INT_TO_UDINT_ENO_564 : BOOL;
	INT_TO_UDINT_OUT_564 : UDINT;
	SCALE_ENO_571 : BOOL;
	SCALE_OUTPUT_571 : REAL;
	SCALE_H_ALM_571 : BOOL;
	SCALE_L_ALM_571 : BOOL;
	INT_TO_REAL_ENO_602 : BOOL;
	INT_TO_REAL_OUT_602 : REAL;
	INT_TO_REAL_ENO_822 : BOOL;
	INT_TO_REAL_OUT_822 : REAL;
	GE_ENO_3555 : BOOL;
	GE_OUT_3555 : BOOL;
	LE_ENO_3569 : BOOL;
	LE_OUT_3569 : BOOL;
	UINT_TO_UDINT_ENO_5890 : BOOL;
	UINT_TO_UDINT_OUT_5890 : UDINT;
	INT_TO_UDINT_ENO_5895 : BOOL;
	INT_TO_UDINT_OUT_5895 : UDINT;
	INT_TO_UDINT_ENO_5904 : BOOL;
	INT_TO_UDINT_OUT_5904 : UDINT;
	SCALE_ENO_5911 : BOOL;
	SCALE_OUTPUT_5911 : REAL;
	SCALE_H_ALM_5911 : BOOL;
	SCALE_L_ALM_5911 : BOOL;
	INT_TO_REAL_ENO_5922 : BOOL;
	INT_TO_REAL_OUT_5922 : REAL;
	INT_TO_REAL_ENO_5938 : BOOL;
	INT_TO_REAL_OUT_5938 : REAL;
	GE_ENO_5943 : BOOL;
	GE_OUT_5943 : BOOL;
	LE_ENO_5957 : BOOL;
	LE_OUT_5957 : BOOL;
	UINT_TO_UDINT_ENO_5997 : BOOL;
	UINT_TO_UDINT_OUT_5997 : UDINT;
	INT_TO_UDINT_ENO_6002 : BOOL;
	INT_TO_UDINT_OUT_6002 : UDINT;
	INT_TO_UDINT_ENO_6011 : BOOL;
	INT_TO_UDINT_OUT_6011 : UDINT;
	SCALE_ENO_6018 : BOOL;
	SCALE_OUTPUT_6018 : REAL;
	SCALE_H_ALM_6018 : BOOL;
	SCALE_L_ALM_6018 : BOOL;
	INT_TO_REAL_ENO_6029 : BOOL;
	INT_TO_REAL_OUT_6029 : REAL;
	INT_TO_REAL_ENO_6045 : BOOL;
	INT_TO_REAL_OUT_6045 : REAL;
	GE_ENO_6050 : BOOL;
	GE_OUT_6050 : BOOL;
	LE_ENO_6064 : BOOL;
	LE_OUT_6064 : BOOL;
	UINT_TO_UDINT_ENO_6104 : BOOL;
	UINT_TO_UDINT_OUT_6104 : UDINT;
	INT_TO_UDINT_ENO_6109 : BOOL;
	INT_TO_UDINT_OUT_6109 : UDINT;
	INT_TO_UDINT_ENO_6118 : BOOL;
	INT_TO_UDINT_OUT_6118 : UDINT;
	SCALE_ENO_6125 : BOOL;
	SCALE_OUTPUT_6125 : REAL;
	SCALE_H_ALM_6125 : BOOL;
	SCALE_L_ALM_6125 : BOOL;
	INT_TO_REAL_ENO_6136 : BOOL;
	INT_TO_REAL_OUT_6136 : REAL;
	INT_TO_REAL_ENO_6152 : BOOL;
	INT_TO_REAL_OUT_6152 : REAL;
	GE_ENO_6157 : BOOL;
	GE_OUT_6157 : BOOL;
	LE_ENO_6171 : BOOL;
	LE_OUT_6171 : BOOL;
	INT_TO_UDINT_ENO_6323 : BOOL;
	INT_TO_UDINT_OUT_6323 : UDINT;
	INT_TO_UDINT_ENO_6332 : BOOL;
	INT_TO_UDINT_OUT_6332 : UDINT;
	SCALE_ENO_6339 : BOOL;
	SCALE_OUTPUT_6339 : REAL;
	SCALE_H_ALM_6339 : BOOL;
	SCALE_L_ALM_6339 : BOOL;
	INT_TO_REAL_ENO_6350 : BOOL;
	INT_TO_REAL_OUT_6350 : REAL;
	INT_TO_REAL_ENO_6366 : BOOL;
	INT_TO_REAL_OUT_6366 : REAL;
	INT_TO_UDINT_ENO_6428 : BOOL;
	INT_TO_UDINT_OUT_6428 : UDINT;
	INT_TO_UDINT_ENO_6437 : BOOL;
	INT_TO_UDINT_OUT_6437 : UDINT;
	SCALE_ENO_6444 : BOOL;
	SCALE_OUTPUT_6444 : REAL;
	SCALE_H_ALM_6444 : BOOL;
	SCALE_L_ALM_6444 : BOOL;
	INT_TO_REAL_ENO_6455 : BOOL;
	INT_TO_REAL_OUT_6455 : REAL;
	INT_TO_REAL_ENO_6471 : BOOL;
	INT_TO_REAL_OUT_6471 : REAL;
	INT_TO_UDINT_ENO_6642 : BOOL;
	INT_TO_UDINT_OUT_6642 : UDINT;
	INT_TO_UDINT_ENO_6651 : BOOL;
	INT_TO_UDINT_OUT_6651 : UDINT;
	SCALE_ENO_6658 : BOOL;
	SCALE_OUTPUT_6658 : REAL;
	SCALE_H_ALM_6658 : BOOL;
	SCALE_L_ALM_6658 : BOOL;
	INT_TO_REAL_ENO_6669 : BOOL;
	INT_TO_REAL_OUT_6669 : REAL;
	REAL_TO_DINT_ENO_6678 : BOOL;
	REAL_TO_DINT_OUT_6678 : DINT;
	INT_TO_REAL_ENO_6685 : BOOL;
	INT_TO_REAL_OUT_6685 : REAL;
	GE_ENO_6690 : BOOL;
	GE_OUT_6690 : BOOL;
	LE_ENO_6704 : BOOL;
	LE_OUT_6704 : BOOL;
	MUL_ENO_6712 : BOOL;
	MUL_OUT_6712 : REAL;
	DINT_TO_REAL_ENO_6718 : BOOL;
	DINT_TO_REAL_OUT_6718 : REAL;
	INT_TO_UDINT_ENO_6758 : BOOL;
	INT_TO_UDINT_OUT_6758 : UDINT;
	INT_TO_UDINT_ENO_6765 : BOOL;
	INT_TO_UDINT_OUT_6765 : UDINT;
	INT_TO_UDINT_ENO_6772 : BOOL;
	INT_TO_UDINT_OUT_6772 : UDINT;
	INT_TO_UDINT_ENO_12725 : BOOL;
	INT_TO_UDINT_OUT_12725 : UDINT;
	INT_TO_UDINT_ENO_12734 : BOOL;
	INT_TO_UDINT_OUT_12734 : UDINT;
	SCALE_ENO_12741 : BOOL;
	SCALE_OUTPUT_12741 : REAL;
	SCALE_H_ALM_12741 : BOOL;
	SCALE_L_ALM_12741 : BOOL;
	INT_TO_REAL_ENO_12752 : BOOL;
	INT_TO_REAL_OUT_12752 : REAL;
	REAL_TO_DINT_ENO_12761 : BOOL;
	REAL_TO_DINT_OUT_12761 : DINT;
	INT_TO_REAL_ENO_12768 : BOOL;
	INT_TO_REAL_OUT_12768 : REAL;
	GE_ENO_12773 : BOOL;
	GE_OUT_12773 : BOOL;
	LE_ENO_12787 : BOOL;
	LE_OUT_12787 : BOOL;
	MUL_ENO_12795 : BOOL;
	MUL_OUT_12795 : REAL;
	DINT_TO_REAL_ENO_12801 : BOOL;
	DINT_TO_REAL_OUT_12801 : REAL;
	INT_TO_UDINT_ENO_12808 : BOOL;
	INT_TO_UDINT_OUT_12808 : UDINT;
	SUB_ENO_12813 : BOOL;
	SUB_OUT_12813 : REAL;
	GE_ENO_14177 : BOOL;
	GE_OUT_14177 : BOOL;
	BOOL_TO_UDINT_ENO_14190 : BOOL;
	BOOL_TO_UDINT_OUT_14190 : UDINT;
	GE_ENO_14203 : BOOL;
	GE_OUT_14203 : BOOL;
	BOOL_TO_UDINT_ENO_14213 : BOOL;
	BOOL_TO_UDINT_OUT_14213 : UDINT;
	GE_ENO_14225 : BOOL;
	GE_OUT_14225 : BOOL;
	BOOL_TO_UDINT_ENO_14235 : BOOL;
	BOOL_TO_UDINT_OUT_14235 : UDINT;
	GE_ENO_14247 : BOOL;
	GE_OUT_14247 : BOOL;
	BOOL_TO_UDINT_ENO_14257 : BOOL;
	BOOL_TO_UDINT_OUT_14257 : UDINT;
	GE_ENO_14269 : BOOL;
	GE_OUT_14269 : BOOL;
	BOOL_TO_UDINT_ENO_14279 : BOOL;
	BOOL_TO_UDINT_OUT_14279 : UDINT;
	GE_ENO_14291 : BOOL;
	GE_OUT_14291 : BOOL;
	BOOL_TO_UDINT_ENO_14301 : BOOL;
	BOOL_TO_UDINT_OUT_14301 : UDINT;
	GE_ENO_14313 : BOOL;
	GE_OUT_14313 : BOOL;
	BOOL_TO_UDINT_ENO_14321 : BOOL;
	BOOL_TO_UDINT_OUT_14321 : UDINT;
	GE_ENO_14337 : BOOL;
	GE_OUT_14337 : BOOL;
	BOOL_TO_UDINT_ENO_14345 : BOOL;
	BOOL_TO_UDINT_OUT_14345 : UDINT;
	REAL_TO_REAL_ENO_14422 : BOOL;
	REAL_TO_REAL_OUT_14422 : REAL;
	DIV_ENO_14928 : BOOL;
	DIV_OUT_14928 : REAL;
	REAL_TO_DINT_ENO_2702 : BOOL;
	REAL_TO_DINT_OUT_2702 : DINT;
	REAL_TO_DINT_ENO_2724 : BOOL;
	REAL_TO_DINT_OUT_2724 : DINT;
	REAL_TO_DINT_ENO_2757 : BOOL;
	REAL_TO_DINT_OUT_2757 : DINT;
	REAL_TO_DINT_ENO_2768 : BOOL;
	REAL_TO_DINT_OUT_2768 : DINT;
	REAL_TO_DINT_ENO_3464 : BOOL;
	REAL_TO_DINT_OUT_3464 : DINT;
	LE_ENO_3624 : BOOL;
	LE_OUT_3624 : BOOL;
	REAL_TO_DINT_ENO_3642 : BOOL;
	REAL_TO_DINT_OUT_3642 : DINT;
	LE_ENO_3649 : BOOL;
	LE_OUT_3649 : BOOL;
	REAL_TO_DINT_ENO_3663 : BOOL;
	REAL_TO_DINT_OUT_3663 : DINT;
	LE_ENO_3670 : BOOL;
	LE_OUT_3670 : BOOL;
	REAL_TO_DINT_ENO_3682 : BOOL;
	REAL_TO_DINT_OUT_3682 : DINT;
	REAL_TO_DINT_ENO_3693 : BOOL;
	REAL_TO_DINT_OUT_3693 : DINT;
	REAL_TO_DINT_ENO_3836 : BOOL;
	REAL_TO_DINT_OUT_3836 : DINT;
	REAL_TO_DINT_ENO_3847 : BOOL;
	REAL_TO_DINT_OUT_3847 : DINT;
	REAL_TO_DINT_ENO_3858 : BOOL;
	REAL_TO_DINT_OUT_3858 : DINT;
	REAL_TO_DINT_ENO_3869 : BOOL;
	REAL_TO_DINT_OUT_3869 : DINT;
	REAL_TO_DINT_ENO_3891 : BOOL;
	REAL_TO_DINT_OUT_3891 : DINT;
	REAL_TO_DINT_ENO_3902 : BOOL;
	REAL_TO_DINT_OUT_3902 : DINT;
	REAL_TO_DINT_ENO_3913 : BOOL;
	REAL_TO_DINT_OUT_3913 : DINT;
	REAL_TO_DINT_ENO_3924 : BOOL;
	REAL_TO_DINT_OUT_3924 : DINT;
	REAL_TO_DINT_ENO_3935 : BOOL;
	REAL_TO_DINT_OUT_3935 : DINT;
	REAL_TO_DINT_ENO_3946 : BOOL;
	REAL_TO_DINT_OUT_3946 : DINT;
	REAL_TO_DINT_ENO_3957 : BOOL;
	REAL_TO_DINT_OUT_3957 : DINT;
	REAL_TO_DINT_ENO_4049 : BOOL;
	REAL_TO_DINT_OUT_4049 : DINT;
	LE_ENO_4054 : BOOL;
	LE_OUT_4054 : BOOL;
	AND_ENO_4060 : BOOL;
	AND_OUT_4060 : BOOL;
	REAL_TO_DINT_ENO_4077 : BOOL;
	REAL_TO_DINT_OUT_4077 : DINT;
	LE_ENO_4082 : BOOL;
	LE_OUT_4082 : BOOL;
	AND_ENO_4091 : BOOL;
	AND_OUT_4091 : BOOL;
	REAL_TO_DINT_ENO_4105 : BOOL;
	REAL_TO_DINT_OUT_4105 : DINT;
	LE_ENO_4110 : BOOL;
	LE_OUT_4110 : BOOL;
	AND_ENO_4118 : BOOL;
	AND_OUT_4118 : BOOL;
	REAL_TO_DINT_ENO_4618 : BOOL;
	REAL_TO_DINT_OUT_4618 : DINT;
	MUL_ENO_4968 : BOOL;
	MUL_OUT_4968 : REAL;
	DINT_TO_REAL_ENO_4974 : BOOL;
	DINT_TO_REAL_OUT_4974 : REAL;
	MUL_ENO_4986 : BOOL;
	MUL_OUT_4986 : REAL;
	DINT_TO_REAL_ENO_4992 : BOOL;
	DINT_TO_REAL_OUT_4992 : REAL;
	MUL_ENO_5004 : BOOL;
	MUL_OUT_5004 : REAL;
	DINT_TO_REAL_ENO_5010 : BOOL;
	DINT_TO_REAL_OUT_5010 : REAL;
	MUL_ENO_5023 : BOOL;
	MUL_OUT_5023 : REAL;
	DINT_TO_REAL_ENO_5029 : BOOL;
	DINT_TO_REAL_OUT_5029 : REAL;
	REAL_TO_DINT_ENO_5185 : BOOL;
	REAL_TO_DINT_OUT_5185 : DINT;
	MUL_ENO_5190 : BOOL;
	MUL_OUT_5190 : REAL;
	DINT_TO_REAL_ENO_5196 : BOOL;
	DINT_TO_REAL_OUT_5196 : REAL;
	REAL_TO_DINT_ENO_5212 : BOOL;
	REAL_TO_DINT_OUT_5212 : DINT;
	MUL_ENO_5217 : BOOL;
	MUL_OUT_5217 : REAL;
	DINT_TO_REAL_ENO_5223 : BOOL;
	DINT_TO_REAL_OUT_5223 : REAL;
	REAL_TO_DINT_ENO_6729 : BOOL;
	REAL_TO_DINT_OUT_6729 : DINT;
	REAL_TO_DINT_ENO_6740 : BOOL;
	REAL_TO_DINT_OUT_6740 : DINT;
	REAL_TO_DINT_ENO_6751 : BOOL;
	REAL_TO_DINT_OUT_6751 : DINT;
	MUL_ENO_13960 : BOOL;
	MUL_OUT_13960 : REAL;
	DINT_TO_REAL_ENO_13966 : BOOL;
	DINT_TO_REAL_OUT_13966 : REAL;
	SUB_ENO_13973 : BOOL;
	SUB_OUT_13973 : REAL;
	SEL_ENO_13981 : BOOL;
	SEL_OUT_13981 : REAL;
	GE_ENO_13990 : BOOL;
	GE_OUT_13990 : BOOL;
	REAL_TO_DINT_ENO_14000 : BOOL;
	REAL_TO_DINT_OUT_14000 : DINT;
	MUL_ENO_14010 : BOOL;
	MUL_OUT_14010 : REAL;
	DINT_TO_REAL_ENO_14016 : BOOL;
	DINT_TO_REAL_OUT_14016 : REAL;
	MUL_ENO_14037 : BOOL;
	MUL_OUT_14037 : REAL;
	DINT_TO_REAL_ENO_14043 : BOOL;
	DINT_TO_REAL_OUT_14043 : REAL;
	SUB_ENO_14050 : BOOL;
	SUB_OUT_14050 : REAL;
	SEL_ENO_14058 : BOOL;
	SEL_OUT_14058 : REAL;
	GE_ENO_14067 : BOOL;
	GE_OUT_14067 : BOOL;
	REAL_TO_DINT_ENO_14077 : BOOL;
	REAL_TO_DINT_OUT_14077 : DINT;
	MUL_ENO_14087 : BOOL;
	MUL_OUT_14087 : REAL;
	DINT_TO_REAL_ENO_14093 : BOOL;
	DINT_TO_REAL_OUT_14093 : REAL;
	MUL_ENO_14114 : BOOL;
	MUL_OUT_14114 : REAL;
	DINT_TO_REAL_ENO_14120 : BOOL;
	DINT_TO_REAL_OUT_14120 : REAL;
	SUB_ENO_14127 : BOOL;
	SUB_OUT_14127 : REAL;
	SEL_ENO_14135 : BOOL;
	SEL_OUT_14135 : REAL;
	GE_ENO_14144 : BOOL;
	GE_OUT_14144 : BOOL;
	REAL_TO_DINT_ENO_14154 : BOOL;
	REAL_TO_DINT_OUT_14154 : DINT;
	MUL_ENO_14164 : BOOL;
	MUL_OUT_14164 : REAL;
	DINT_TO_REAL_ENO_14170 : BOOL;
	DINT_TO_REAL_OUT_14170 : REAL;
	REAL_TO_DINT_ENO_13293 : BOOL;
	REAL_TO_DINT_OUT_13293 : DINT;
	REAL_TO_DINT_ENO_13304 : BOOL;
	REAL_TO_DINT_OUT_13304 : DINT;
	REAL_TO_DINT_ENO_13315 : BOOL;
	REAL_TO_DINT_OUT_13315 : DINT;
	REAL_TO_DINT_ENO_13322 : BOOL;
	REAL_TO_DINT_OUT_13322 : DINT;
	REAL_TO_DINT_ENO_13331 : BOOL;
	REAL_TO_DINT_OUT_13331 : DINT;
	REAL_TO_DINT_ENO_13342 : BOOL;
	REAL_TO_DINT_OUT_13342 : DINT;
	REAL_TO_DINT_ENO_13353 : BOOL;
	REAL_TO_DINT_OUT_13353 : DINT;
	REAL_TO_DINT_ENO_13364 : BOOL;
	REAL_TO_DINT_OUT_13364 : DINT;
	REAL_TO_DINT_ENO_13375 : BOOL;
	REAL_TO_DINT_OUT_13375 : DINT;
	REAL_TO_DINT_ENO_13386 : BOOL;
	REAL_TO_DINT_OUT_13386 : DINT;
	REAL_TO_DINT_ENO_13399 : BOOL;
	REAL_TO_DINT_OUT_13399 : DINT;
	REAL_TO_DINT_ENO_13409 : BOOL;
	REAL_TO_DINT_OUT_13409 : DINT;
	MUL_ENO_13418 : BOOL;
	MUL_OUT_13418 : REAL;
	DINT_TO_REAL_ENO_13424 : BOOL;
	DINT_TO_REAL_OUT_13424 : REAL;
	REAL_TO_DINT_ENO_13435 : BOOL;
	REAL_TO_DINT_OUT_13435 : DINT;
	REAL_TO_DINT_ENO_13447 : BOOL;
	REAL_TO_DINT_OUT_13447 : DINT;
	MUL_ENO_13456 : BOOL;
	MUL_OUT_13456 : REAL;
	DINT_TO_REAL_ENO_13462 : BOOL;
	DINT_TO_REAL_OUT_13462 : REAL;
	REAL_TO_DINT_ENO_13474 : BOOL;
	REAL_TO_DINT_OUT_13474 : DINT;
	REAL_TO_DINT_ENO_13485 : BOOL;
	REAL_TO_DINT_OUT_13485 : DINT;
	MUL_ENO_13494 : BOOL;
	MUL_OUT_13494 : REAL;
	DINT_TO_REAL_ENO_13500 : BOOL;
	DINT_TO_REAL_OUT_13500 : REAL;
	REAL_TO_DINT_ENO_13511 : BOOL;
	REAL_TO_DINT_OUT_13511 : DINT;
	REAL_TO_DINT_ENO_13522 : BOOL;
	REAL_TO_DINT_OUT_13522 : DINT;
	REAL_TO_DINT_ENO_13538 : BOOL;
	REAL_TO_DINT_OUT_13538 : DINT;
	MUL_ENO_13543 : BOOL;
	MUL_OUT_13543 : REAL;
	DINT_TO_REAL_ENO_13549 : BOOL;
	DINT_TO_REAL_OUT_13549 : REAL;
	REAL_TO_DINT_ENO_13569 : BOOL;
	REAL_TO_DINT_OUT_13569 : DINT;
	REAL_TO_DINT_ENO_13579 : BOOL;
	REAL_TO_DINT_OUT_13579 : DINT;
	REAL_TO_DINT_ENO_13590 : BOOL;
	REAL_TO_DINT_OUT_13590 : DINT;
	REAL_TO_DINT_ENO_13599 : BOOL;
	REAL_TO_DINT_OUT_13599 : DINT;
	MUL_ENO_13604 : BOOL;
	MUL_OUT_13604 : REAL;
	DINT_TO_REAL_ENO_13610 : BOOL;
	DINT_TO_REAL_OUT_13610 : REAL;
	REAL_TO_DINT_ENO_13626 : BOOL;
	REAL_TO_DINT_OUT_13626 : DINT;
	MUL_ENO_13631 : BOOL;
	MUL_OUT_13631 : REAL;
	DINT_TO_REAL_ENO_13637 : BOOL;
	DINT_TO_REAL_OUT_13637 : REAL;
	MUL_ENO_13646 : BOOL;
	MUL_OUT_13646 : REAL;
	DINT_TO_REAL_ENO_13652 : BOOL;
	DINT_TO_REAL_OUT_13652 : REAL;
	REAL_TO_DINT_ENO_13668 : BOOL;
	REAL_TO_DINT_OUT_13668 : DINT;
	MUL_ENO_13673 : BOOL;
	MUL_OUT_13673 : REAL;
	DINT_TO_REAL_ENO_13679 : BOOL;
	DINT_TO_REAL_OUT_13679 : REAL;
	REAL_TO_DINT_ENO_13695 : BOOL;
	REAL_TO_DINT_OUT_13695 : DINT;
	MUL_ENO_13700 : BOOL;
	MUL_OUT_13700 : REAL;
	DINT_TO_REAL_ENO_13706 : BOOL;
	DINT_TO_REAL_OUT_13706 : REAL;
	REAL_TO_DINT_ENO_13724 : BOOL;
	REAL_TO_DINT_OUT_13724 : DINT;
	LE_ENO_13731 : BOOL;
	LE_OUT_13731 : BOOL;
	REAL_TO_DINT_ENO_13743 : BOOL;
	REAL_TO_DINT_OUT_13743 : DINT;
	LE_ENO_13748 : BOOL;
	LE_OUT_13748 : BOOL;
	AND_ENO_13754 : BOOL;
	AND_OUT_13754 : BOOL;
	REAL_TO_DINT_ENO_13769 : BOOL;
	REAL_TO_DINT_OUT_13769 : DINT;
	LE_ENO_13776 : BOOL;
	LE_OUT_13776 : BOOL;
	REAL_TO_DINT_ENO_13788 : BOOL;
	REAL_TO_DINT_OUT_13788 : DINT;
	LE_ENO_13793 : BOOL;
	LE_OUT_13793 : BOOL;
	AND_ENO_13801 : BOOL;
	AND_OUT_13801 : BOOL;
	REAL_TO_DINT_ENO_13815 : BOOL;
	REAL_TO_DINT_OUT_13815 : DINT;
	LE_ENO_13822 : BOOL;
	LE_OUT_13822 : BOOL;
	REAL_TO_DINT_ENO_13835 : BOOL;
	REAL_TO_DINT_OUT_13835 : DINT;
	LE_ENO_13840 : BOOL;
	LE_OUT_13840 : BOOL;
	AND_ENO_13848 : BOOL;
	AND_OUT_13848 : BOOL;
	REAL_TO_DINT_ENO_8574 : BOOL;
	REAL_TO_DINT_OUT_8574 : DINT;
	REAL_TO_DINT_ENO_8585 : BOOL;
	REAL_TO_DINT_OUT_8585 : DINT;
	REAL_TO_DINT_ENO_8596 : BOOL;
	REAL_TO_DINT_OUT_8596 : DINT;
	REAL_TO_DINT_ENO_8606 : BOOL;
	REAL_TO_DINT_OUT_8606 : DINT;
	REAL_TO_DINT_ENO_8617 : BOOL;
	REAL_TO_DINT_OUT_8617 : DINT;
	LE_ENO_8626 : BOOL;
	LE_OUT_8626 : BOOL;
	REAL_TO_DINT_ENO_8639 : BOOL;
	REAL_TO_DINT_OUT_8639 : DINT;
	LE_ENO_8646 : BOOL;
	LE_OUT_8646 : BOOL;
	REAL_TO_DINT_ENO_8659 : BOOL;
	REAL_TO_DINT_OUT_8659 : DINT;
	LE_ENO_8666 : BOOL;
	LE_OUT_8666 : BOOL;
	REAL_TO_DINT_ENO_8678 : BOOL;
	REAL_TO_DINT_OUT_8678 : DINT;
	REAL_TO_DINT_ENO_8689 : BOOL;
	REAL_TO_DINT_OUT_8689 : DINT;
	REAL_TO_DINT_ENO_8700 : BOOL;
	REAL_TO_DINT_OUT_8700 : DINT;
	REAL_TO_DINT_ENO_8711 : BOOL;
	REAL_TO_DINT_OUT_8711 : DINT;
	REAL_TO_DINT_ENO_8722 : BOOL;
	REAL_TO_DINT_OUT_8722 : DINT;
	REAL_TO_DINT_ENO_8733 : BOOL;
	REAL_TO_DINT_OUT_8733 : DINT;
	REAL_TO_DINT_ENO_8744 : BOOL;
	REAL_TO_DINT_OUT_8744 : DINT;
	REAL_TO_DINT_ENO_8754 : BOOL;
	REAL_TO_DINT_OUT_8754 : DINT;
	REAL_TO_DINT_ENO_8764 : BOOL;
	REAL_TO_DINT_OUT_8764 : DINT;
	REAL_TO_DINT_ENO_8774 : BOOL;
	REAL_TO_DINT_OUT_8774 : DINT;
	REAL_TO_DINT_ENO_8785 : BOOL;
	REAL_TO_DINT_OUT_8785 : DINT;
	REAL_TO_DINT_ENO_8796 : BOOL;
	REAL_TO_DINT_OUT_8796 : DINT;
	REAL_TO_DINT_ENO_8807 : BOOL;
	REAL_TO_DINT_OUT_8807 : DINT;
	REAL_TO_DINT_ENO_8818 : BOOL;
	REAL_TO_DINT_OUT_8818 : DINT;
	LE_ENO_8823 : BOOL;
	LE_OUT_8823 : BOOL;
	AND_ENO_8829 : BOOL;
	AND_OUT_8829 : BOOL;
	REAL_TO_DINT_ENO_8839 : BOOL;
	REAL_TO_DINT_OUT_8839 : DINT;
	LE_ENO_8844 : BOOL;
	LE_OUT_8844 : BOOL;
	AND_ENO_8852 : BOOL;
	AND_OUT_8852 : BOOL;
	REAL_TO_DINT_ENO_8863 : BOOL;
	REAL_TO_DINT_OUT_8863 : DINT;
	LE_ENO_8868 : BOOL;
	LE_OUT_8868 : BOOL;
	AND_ENO_8876 : BOOL;
	AND_OUT_8876 : BOOL;
	REAL_TO_DINT_ENO_8886 : BOOL;
	REAL_TO_DINT_OUT_8886 : DINT;
	REAL_TO_DINT_ENO_8891 : BOOL;
	REAL_TO_DINT_OUT_8891 : DINT;
	MUL_ENO_8896 : BOOL;
	MUL_OUT_8896 : REAL;
	DINT_TO_REAL_ENO_8902 : BOOL;
	DINT_TO_REAL_OUT_8902 : REAL;
	REAL_TO_DINT_ENO_8918 : BOOL;
	REAL_TO_DINT_OUT_8918 : DINT;
	MUL_ENO_8923 : BOOL;
	MUL_OUT_8923 : REAL;
	DINT_TO_REAL_ENO_8929 : BOOL;
	DINT_TO_REAL_OUT_8929 : REAL;
	REAL_TO_DINT_ENO_8945 : BOOL;
	REAL_TO_DINT_OUT_8945 : DINT;
	MUL_ENO_8950 : BOOL;
	MUL_OUT_8950 : REAL;
	DINT_TO_REAL_ENO_8956 : BOOL;
	DINT_TO_REAL_OUT_8956 : REAL;
	MUL_ENO_8965 : BOOL;
	MUL_OUT_8965 : REAL;
	DINT_TO_REAL_ENO_8971 : BOOL;
	DINT_TO_REAL_OUT_8971 : REAL;
	MUL_ENO_8980 : BOOL;
	MUL_OUT_8980 : REAL;
	DINT_TO_REAL_ENO_8986 : BOOL;
	DINT_TO_REAL_OUT_8986 : REAL;
	MUL_ENO_8995 : BOOL;
	MUL_OUT_8995 : REAL;
	DINT_TO_REAL_ENO_9001 : BOOL;
	DINT_TO_REAL_OUT_9001 : REAL;
	MUL_ENO_9010 : BOOL;
	MUL_OUT_9010 : REAL;
	DINT_TO_REAL_ENO_9016 : BOOL;
	DINT_TO_REAL_OUT_9016 : REAL;
	REAL_TO_DINT_ENO_9058 : BOOL;
	REAL_TO_DINT_OUT_9058 : DINT;
	MUL_ENO_9063 : BOOL;
	MUL_OUT_9063 : REAL;
	DINT_TO_REAL_ENO_9069 : BOOL;
	DINT_TO_REAL_OUT_9069 : REAL;
	REAL_TO_DINT_ENO_9085 : BOOL;
	REAL_TO_DINT_OUT_9085 : DINT;
	MUL_ENO_9090 : BOOL;
	MUL_OUT_9090 : REAL;
	DINT_TO_REAL_ENO_9096 : BOOL;
	DINT_TO_REAL_OUT_9096 : REAL;
	REAL_TO_DINT_ENO_9107 : BOOL;
	REAL_TO_DINT_OUT_9107 : DINT;
	REAL_TO_DINT_ENO_9118 : BOOL;
	REAL_TO_DINT_OUT_9118 : DINT;
	REAL_TO_DINT_ENO_9129 : BOOL;
	REAL_TO_DINT_OUT_9129 : DINT;
	SUB_ENO_13174 : BOOL;
	SUB_OUT_13174 : REAL;
	INT_TO_REAL_ENO_14357 : BOOL;
	INT_TO_REAL_OUT_14357 : REAL;
	INT_TO_REAL_ENO_14370 : BOOL;
	INT_TO_REAL_OUT_14370 : REAL;
	INT_TO_REAL_ENO_14381 : BOOL;
	INT_TO_REAL_OUT_14381 : REAL;
	DIV_ENO_14388 : BOOL;
	DIV_OUT_14388 : REAL;
	DIV_ENO_14401 : BOOL;
	DIV_OUT_14401 : REAL;
	DIV_ENO_14412 : BOOL;
	DIV_OUT_14412 : REAL;
	DIV_ENO_14940 : BOOL;
	DIV_OUT_14940 : REAL;
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
	sql_BOOLTag0_2 : BOOL;
	sql_BOOLTag0_3 : BOOL;
	sql_BOOLTag1 : BOOL;
	sql_SINTTag0 : SINT;
	sql_LREALTag0 : LREAL;
	sql_UINTTag0 : UINT;
	sql_REALTag0 : REAL;
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
MOVE_OUT_8 := MOVE( 
	 EN := True ,
	 IN := LIO_DITag1 ,
	 ENO => MOVE_ENO_8  );
dnp_alarmAC := MOVE_OUT_8 ;
MOVE_OUT_19 := MOVE( 
	 EN := True ,
	 IN := LIO_DITag0 ,
	 ENO => MOVE_ENO_19  );
dnp_opendoor := MOVE_OUT_19 ;
MOVE_OUT_30 := MOVE( 
	 EN := True ,
	 IN := LIO_DITag2 ,
	 ENO => MOVE_ENO_30  );
dnp_SUBSCADApumpag1 := MOVE_OUT_30 ;
MOVE_OUT_854 := MOVE( 
	 EN := True ,
	 IN := LIO_DITag4 ,
	 ENO => MOVE_ENO_854  );
dnp_FaultPumpag1 := MOVE_OUT_854 ;
MOVE_OUT_879 := MOVE( 
	 EN := True ,
	 IN := LIO_DITag5 ,
	 ENO => MOVE_ENO_879  );
dnp_OnPumpag1 := MOVE_OUT_879 ;
MOVE_OUT_890 := MOVE( 
	 EN := True ,
	 IN := LIO_DITag6 ,
	 ENO => MOVE_ENO_890  );
dnp_AutoPumpag1 := MOVE_OUT_890 ;
NOT_OUT_3388 := NOT( LIO_DITag3 );
MOVE_OUT_843 := MOVE( 
	 EN := True ,
	 IN := NOT_OUT_3388 ,
	 ENO => MOVE_ENO_843  );
dnp_DC24V := MOVE_OUT_843 ;
MOVE_OUT_4205 := MOVE( 
	 EN := True ,
	 IN := LIO_DITag7 ,
	 ENO => MOVE_ENO_4205  );
dnp_FaultPumpag2 := MOVE_OUT_4205 ;
MOVE_OUT_5354 := MOVE( 
	 EN := True ,
	 IN := rio_DI9_Tag0 ,
	 ENO => MOVE_ENO_5354  );
dnp_OnPumpag2 := MOVE_OUT_5354 ;
MOVE_OUT_5365 := MOVE( 
	 EN := True ,
	 IN := rio_DI9_Tag1 ,
	 ENO => MOVE_ENO_5365  );
dnp_AutoPumpag2 := MOVE_OUT_5365 ;
MOVE_OUT_5376 := MOVE( 
	 EN := True ,
	 IN := rio_DI9_Tag2 ,
	 ENO => MOVE_ENO_5376  );
dnp_subscadapumpag2 := MOVE_OUT_5376 ;
MOVE_OUT_5387 := MOVE( 
	 EN := True ,
	 IN := rio_DI9_Tag3 ,
	 ENO => MOVE_ENO_5387  );
dnp_faultPumpag3 := MOVE_OUT_5387 ;
MOVE_OUT_5398 := MOVE( 
	 EN := True ,
	 IN := rio_DI9_Tag4 ,
	 ENO => MOVE_ENO_5398  );
dnp_onPumpag3 := MOVE_OUT_5398 ;
MOVE_OUT_5409 := MOVE( 
	 EN := True ,
	 IN := rio_DI9_Tag5 ,
	 ENO => MOVE_ENO_5409  );
dnp_autopumpag3 := MOVE_OUT_5409 ;
MOVE_OUT_5420 := MOVE( 
	 EN := True ,
	 IN := rio_DI9_Tag6 ,
	 ENO => MOVE_ENO_5420  );
dnp_subscadapumpag3 := MOVE_OUT_5420 ;
MOVE_OUT_5431 := MOVE( 
	 EN := True ,
	 IN := rio_DI9_Tag7 ,
	 ENO => MOVE_ENO_5431  );
dnp_roomwateralarm := MOVE_OUT_5431 ;
MOVE_OUT_5442 := MOVE( 
	 EN := True ,
	 IN := rio_DI17_Tag0 ,
	 ENO => MOVE_ENO_5442  );
dnp_TankHIalarm := MOVE_OUT_5442 ;
MOVE_OUT_5453 := MOVE( 
	 EN := True ,
	 IN := rio_DI17_Tag1 ,
	 ENO => MOVE_ENO_5453  );
dnp_TankLOWalarm := MOVE_OUT_5453 ;
dnp2_opendoor := MOVE_OUT_19 ;
dnp2_alarmAC := MOVE_OUT_8 ;
dnp2_SUBSCADApumpag1 := MOVE_OUT_30 ;
dnp2_DC24V := MOVE_OUT_843 ;
dnp2_OnPumpag2 := MOVE_OUT_5354 ;
dnp2_AutoPumpag2 := MOVE_OUT_5365 ;
dnp2_subscadapumpag2 := MOVE_OUT_5376 ;
dnp2_faultPumpag3 := MOVE_OUT_5387 ;
dnp2_onPumpag3 := MOVE_OUT_5398 ;
dnp2_autopumpag3 := MOVE_OUT_5409 ;
dnp2_subscadapumpag3 := MOVE_OUT_5420 ;
dnp2_roomwateralarm := MOVE_OUT_5431 ;
dnp2_FaultPumpag1 := MOVE_OUT_854 ;
dnp2_OnPumpag1 := MOVE_OUT_879 ;
dnp2_AutoPumpag1 := MOVE_OUT_890 ;
dnp2_FaultPumpag2 := MOVE_OUT_4205 ;
dnp2_TankHIalarm := MOVE_OUT_5442 ;
dnp2_TankLOWalarm := MOVE_OUT_5453 ;
OR_OUT_14465 := OR( 
	 EN := True ,
	 IN1 := dnp2_STARTpumpag1 ,
	 IN2 := dnp_STARTpumpag1 ,
	 ENO => OR_ENO_14465  );
OR_OUT_14498 := OR( 
	 EN := True ,
	 IN1 := dnp2_STOPpumpag2 ,
	 IN2 := dnp_STOPpumpag2 ,
	 ENO => OR_ENO_14498  );
OR_OUT_14509 := OR( 
	 EN := True ,
	 IN1 := dnp2_STARTpumpag3 ,
	 IN2 := dnp_STARTpumpag3 ,
	 ENO => OR_ENO_14509  );
OR_OUT_14487 := OR( 
	 EN := True ,
	 IN1 := dnp2_STARTpumpag2 ,
	 IN2 := dnp_STARTpumpag2 ,
	 ENO => OR_ENO_14487  );
OR_OUT_14520 := OR( 
	 EN := True ,
	 IN1 := dnp2_STOPpumpag3 ,
	 IN2 := dnp_STOPpumpag3 ,
	 ENO => OR_ENO_14520  );
NOT_OUT_3444 := NOT( LIO_DITag6 );
OR_OUT_14476 := OR( 
	 EN := True ,
	 IN1 := dnp2_STOPpumpag1 ,
	 IN2 := dnp_STOPpumpag1 ,
	 ENO => OR_ENO_14476  );
NOT_OUT_12924 := NOT( LIO_DITag6 );
NOT_OUT_13102 := NOT( LIO_DITag6 );
NOT_OUT_4178 := NOT( dnp_phase2pumpag1 );
NOT_OUT_4175 := NOT( dnp_phase1pumpag1 );
NOT_OUT_4181 := NOT( dnp_phase3pumpag1 );
NOT_OUT_12944 := NOT( dnp_phase2pumpag2 );
NOT_OUT_13122 := NOT( dnp_phase2pumpag3 );
NOT_OUT_12941 := NOT( dnp_phase1pumpag2 );
NOT_OUT_13119 := NOT( dnp_phase1pumpag3 );
NOT_OUT_12947 := NOT( dnp_phase3pumpag2 );
NOT_OUT_13125 := NOT( dnp_phase3pumpag3 );
NOT_OUT_13005 := NOT( LIO_DITag6 );
NOT_OUT_4196 := NOT( dnp_FaultPumpag1 );
NOT_OUT_12870 := NOT( LIO_DITag6 );
NOT_OUT_13055 := NOT( LIO_DITag6 );
NOT_OUT_12956 := NOT( dnp_FaultPumpag2 );
NOT_OUT_13134 := NOT( dnp_FaultPumpag3 );
V_R_TRIG1( CLK := OR_OUT_14465  );
V_R_TRIG4( CLK := OR_OUT_14498  );
V_R_TRIG5( CLK := OR_OUT_14509  );
V_R_TRIG6( CLK := OR_OUT_14520  );
V_R_TRIG3( CLK := OR_OUT_14487  );
V_R_TRIG2( CLK := OR_OUT_14476  );
AND_OUT_4160 := AND( 
	 EN := True ,
	 IN1 := V_R_TRIG1.Q ,
	 IN2 := NOT_OUT_3444 ,
	 IN3 := NOT_OUT_4175 ,
	 IN4 := NOT_OUT_4178 ,
	 IN5 := NOT_OUT_4181 ,
	 IN6 := NOT_OUT_4196 ,
	 ENO => AND_ENO_4160  );
AND_OUT_12927 := AND( 
	 EN := True ,
	 IN1 := V_R_TRIG3.Q ,
	 IN2 := NOT_OUT_12924 ,
	 IN3 := NOT_OUT_12941 ,
	 IN4 := NOT_OUT_12944 ,
	 IN5 := NOT_OUT_12947 ,
	 IN6 := NOT_OUT_12956 ,
	 ENO => AND_ENO_12927  );
AND_OUT_13105 := AND( 
	 EN := True ,
	 IN1 := V_R_TRIG5.Q ,
	 IN2 := NOT_OUT_13102 ,
	 IN3 := NOT_OUT_13119 ,
	 IN4 := NOT_OUT_13122 ,
	 IN5 := NOT_OUT_13125 ,
	 IN6 := NOT_OUT_13134 ,
	 ENO => AND_ENO_13105  );
AND_OUT_13008 := AND( 
	 EN := True ,
	 IN1 := V_R_TRIG4.Q ,
	 IN2 := NOT_OUT_13005 ,
	 ENO => AND_ENO_13008  );
AND_OUT_12874 := AND( 
	 EN := True ,
	 IN1 := V_R_TRIG2.Q ,
	 IN2 := NOT_OUT_12870 ,
	 ENO => AND_ENO_12874  );
AND_OUT_13058 := AND( 
	 EN := True ,
	 IN1 := V_R_TRIG6.Q ,
	 IN2 := NOT_OUT_13055 ,
	 ENO => AND_ENO_13058  );
V_TON4( IN := LIO_DOTag2 ,
	 PT := t#2s  );
V_TON2( IN := LIO_DOTag0 ,
	 PT := t#2s  );
AND_OUT_3343 := AND( 
	 EN := True ,
	 IN1 := AND_OUT_4160 ,
	 IN2 := LIO_DITag2 ,
	 ENO => AND_ENO_3343  );
V_TON6( IN := rio_DO5_Tag0 ,
	 PT := t#2s  );
AND_OUT_12916 := AND( 
	 EN := True ,
	 IN1 := AND_OUT_12927 ,
	 IN2 := LIO_DITag2 ,
	 ENO => AND_ENO_12916  );
AND_OUT_13094 := AND( 
	 EN := True ,
	 IN1 := AND_OUT_13105 ,
	 IN2 := LIO_DITag2 ,
	 ENO => AND_ENO_13094  );
AND_OUT_13014 := AND( 
	 EN := True ,
	 IN1 := AND_OUT_13008 ,
	 IN2 := LIO_DITag2 ,
	 ENO => AND_ENO_13014  );
AND_OUT_12883 := AND( 
	 EN := True ,
	 IN1 := AND_OUT_12874 ,
	 IN2 := LIO_DITag2 ,
	 ENO => AND_ENO_12883  );
V_TON1( IN := LIO_DOTag1 ,
	 PT := t#2s  );
AND_OUT_13064 := AND( 
	 EN := True ,
	 IN1 := AND_OUT_13058 ,
	 IN2 := LIO_DITag2 ,
	 ENO => AND_ENO_13064  );
V_TON3( IN := LIO_DOTag3 ,
	 PT := t#2s  );
V_TON5( IN := rio_DO5_Tag1 ,
	 PT := t#2s  );
V_SR4( S1 := AND_OUT_13014 ,
	 R := V_TON4.Q  );
V_SR1( S1 := AND_OUT_3343 ,
	 R := V_TON1.Q  );
V_SR2( S1 := AND_OUT_12883 ,
	 R := V_TON2.Q  );
V_SR6( S1 := AND_OUT_13064 ,
	 R := V_TON6.Q  );
V_SR3( S1 := AND_OUT_12916 ,
	 R := V_TON3.Q  );
V_SR5( S1 := AND_OUT_13094 ,
	 R := V_TON5.Q  );
LIO_DOTag2 := V_SR4.Q1 ;
LIO_DOTag0 := V_SR2.Q1 ;
rio_DO5_Tag0 := V_SR6.Q1 ;
LIO_DOTag1 := V_SR1.Q1 ;
rio_DO5_Tag1 := V_SR5.Q1 ;
LIO_DOTag3 := V_SR3.Q1 ;
UINT_TO_UDINT_OUT_550 := UINT_TO_UDINT( 
	 EN := True ,
	 IN := LIO_AITag0 ,
	 ENO => UINT_TO_UDINT_ENO_550  );
INT_TO_UDINT_OUT_555 := INT_TO_UDINT( 
	 EN := True ,
	 IN := 6553 ,
	 ENO => INT_TO_UDINT_ENO_555  );
INT_TO_UDINT_OUT_564 := INT_TO_UDINT( 
	 EN := True ,
	 IN := 32718 ,
	 ENO => INT_TO_UDINT_ENO_564  );
INT_TO_REAL_OUT_602 := INT_TO_REAL( 
	 EN := True ,
	 IN := 16 ,
	 ENO => INT_TO_REAL_ENO_602  );
INT_TO_REAL_OUT_822 := INT_TO_REAL( 
	 EN := True ,
	 IN := 0 ,
	 ENO => INT_TO_REAL_ENO_822  );
SCALE( 
	 EN := True ,
	 INPUT := UINT_TO_UDINT_OUT_550 ,
	 IN_MIN := INT_TO_UDINT_OUT_555 ,
	 IN_MAX := INT_TO_UDINT_OUT_564 ,
	 OUT_MIN := INT_TO_REAL_OUT_822 ,
	 OUT_MAX := INT_TO_REAL_OUT_602 ,
	 ENO => SCALE_ENO_571 ,
	 OUTPUT => SCALE_OUTPUT_571 ,
	 H_ALM => SCALE_H_ALM_571 ,
	 L_ALM => SCALE_L_ALM_571  );
dnp_ptpumpag1 := SCALE_OUTPUT_571 ;
GE_OUT_3555 := GE( 
	 EN := True ,
	 IN1 := SCALE_OUTPUT_571 ,
	 IN2 := 16.0 ,
	 ENO => GE_ENO_3555  );
dnp_PHIpumpag1 := GE_OUT_3555 ;
LE_OUT_3569 := LE( 
	 EN := True ,
	 IN1 := SCALE_OUTPUT_571 ,
	 IN2 := 0.0 ,
	 ENO => LE_ENO_3569  );
dnp_PLOWpumpag1 := LE_OUT_3569 ;
UINT_TO_UDINT_OUT_5890 := UINT_TO_UDINT( 
	 EN := True ,
	 IN := LIO_AITag1 ,
	 ENO => UINT_TO_UDINT_ENO_5890  );
INT_TO_UDINT_OUT_5895 := INT_TO_UDINT( 
	 EN := True ,
	 IN := 6553 ,
	 ENO => INT_TO_UDINT_ENO_5895  );
INT_TO_UDINT_OUT_5904 := INT_TO_UDINT( 
	 EN := True ,
	 IN := 32718 ,
	 ENO => INT_TO_UDINT_ENO_5904  );
INT_TO_REAL_OUT_5922 := INT_TO_REAL( 
	 EN := True ,
	 IN := 16 ,
	 ENO => INT_TO_REAL_ENO_5922  );
INT_TO_REAL_OUT_5938 := INT_TO_REAL( 
	 EN := True ,
	 IN := 0 ,
	 ENO => INT_TO_REAL_ENO_5938  );
SCALE( 
	 EN := True ,
	 INPUT := UINT_TO_UDINT_OUT_5890 ,
	 IN_MIN := INT_TO_UDINT_OUT_5895 ,
	 IN_MAX := INT_TO_UDINT_OUT_5904 ,
	 OUT_MIN := INT_TO_REAL_OUT_5938 ,
	 OUT_MAX := INT_TO_REAL_OUT_5922 ,
	 ENO => SCALE_ENO_5911 ,
	 OUTPUT => SCALE_OUTPUT_5911 ,
	 H_ALM => SCALE_H_ALM_5911 ,
	 L_ALM => SCALE_L_ALM_5911  );
dnp_ptpumpag2 := SCALE_OUTPUT_5911 ;
GE_OUT_5943 := GE( 
	 EN := True ,
	 IN1 := SCALE_OUTPUT_5911 ,
	 IN2 := 16.0 ,
	 ENO => GE_ENO_5943  );
dnp_PHIpumpag2 := GE_OUT_5943 ;
LE_OUT_5957 := LE( 
	 EN := True ,
	 IN1 := SCALE_OUTPUT_5911 ,
	 IN2 := 0.0 ,
	 ENO => LE_ENO_5957  );
dnp_PLOWpumpag2 := LE_OUT_5957 ;
UINT_TO_UDINT_OUT_5997 := UINT_TO_UDINT( 
	 EN := True ,
	 IN := LIO_AITag2 ,
	 ENO => UINT_TO_UDINT_ENO_5997  );
INT_TO_UDINT_OUT_6002 := INT_TO_UDINT( 
	 EN := True ,
	 IN := 6553 ,
	 ENO => INT_TO_UDINT_ENO_6002  );
INT_TO_UDINT_OUT_6011 := INT_TO_UDINT( 
	 EN := True ,
	 IN := 32718 ,
	 ENO => INT_TO_UDINT_ENO_6011  );
INT_TO_REAL_OUT_6029 := INT_TO_REAL( 
	 EN := True ,
	 IN := 16 ,
	 ENO => INT_TO_REAL_ENO_6029  );
INT_TO_REAL_OUT_6045 := INT_TO_REAL( 
	 EN := True ,
	 IN := 0 ,
	 ENO => INT_TO_REAL_ENO_6045  );
SCALE( 
	 EN := True ,
	 INPUT := UINT_TO_UDINT_OUT_5997 ,
	 IN_MIN := INT_TO_UDINT_OUT_6002 ,
	 IN_MAX := INT_TO_UDINT_OUT_6011 ,
	 OUT_MIN := INT_TO_REAL_OUT_6045 ,
	 OUT_MAX := INT_TO_REAL_OUT_6029 ,
	 ENO => SCALE_ENO_6018 ,
	 OUTPUT => SCALE_OUTPUT_6018 ,
	 H_ALM => SCALE_H_ALM_6018 ,
	 L_ALM => SCALE_L_ALM_6018  );
dnp_ptpumpag3 := SCALE_OUTPUT_6018 ;
GE_OUT_6050 := GE( 
	 EN := True ,
	 IN1 := SCALE_OUTPUT_6018 ,
	 IN2 := 16.0 ,
	 ENO => GE_ENO_6050  );
dnp_PHIpumpag3 := GE_OUT_6050 ;
LE_OUT_6064 := LE( 
	 EN := True ,
	 IN1 := SCALE_OUTPUT_6018 ,
	 IN2 := 0.0 ,
	 ENO => LE_ENO_6064  );
dnp_PLOWpumpag3 := LE_OUT_6064 ;
UINT_TO_UDINT_OUT_6104 := UINT_TO_UDINT( 
	 EN := True ,
	 IN := LIO_AITag3 ,
	 ENO => UINT_TO_UDINT_ENO_6104  );
INT_TO_UDINT_OUT_6109 := INT_TO_UDINT( 
	 EN := True ,
	 IN := 6553 ,
	 ENO => INT_TO_UDINT_ENO_6109  );
INT_TO_UDINT_OUT_6118 := INT_TO_UDINT( 
	 EN := True ,
	 IN := 32718 ,
	 ENO => INT_TO_UDINT_ENO_6118  );
INT_TO_REAL_OUT_6136 := INT_TO_REAL( 
	 EN := True ,
	 IN := 16 ,
	 ENO => INT_TO_REAL_ENO_6136  );
INT_TO_REAL_OUT_6152 := INT_TO_REAL( 
	 EN := True ,
	 IN := 0 ,
	 ENO => INT_TO_REAL_ENO_6152  );
SCALE( 
	 EN := True ,
	 INPUT := UINT_TO_UDINT_OUT_6104 ,
	 IN_MIN := INT_TO_UDINT_OUT_6109 ,
	 IN_MAX := INT_TO_UDINT_OUT_6118 ,
	 OUT_MIN := INT_TO_REAL_OUT_6152 ,
	 OUT_MAX := INT_TO_REAL_OUT_6136 ,
	 ENO => SCALE_ENO_6125 ,
	 OUTPUT => SCALE_OUTPUT_6125 ,
	 H_ALM => SCALE_H_ALM_6125 ,
	 L_ALM => SCALE_L_ALM_6125  );
dnp_ptCollector := SCALE_OUTPUT_6125 ;
GE_OUT_6157 := GE( 
	 EN := True ,
	 IN1 := SCALE_OUTPUT_6125 ,
	 IN2 := 16.0 ,
	 ENO => GE_ENO_6157  );
dnp_PHITotal := GE_OUT_6157 ;
LE_OUT_6171 := LE( 
	 EN := True ,
	 IN1 := SCALE_OUTPUT_6125 ,
	 IN2 := 0.0 ,
	 ENO => LE_ENO_6171  );
dnp_PLOWTotal := LE_OUT_6171 ;
INT_TO_UDINT_OUT_6323 := INT_TO_UDINT( 
	 EN := True ,
	 IN := 819 ,
	 ENO => INT_TO_UDINT_ENO_6323  );
INT_TO_UDINT_OUT_6332 := INT_TO_UDINT( 
	 EN := True ,
	 IN := 4096 ,
	 ENO => INT_TO_UDINT_ENO_6332  );
INT_TO_REAL_OUT_6350 := INT_TO_REAL( 
	 EN := True ,
	 IN := 0 ,
	 ENO => INT_TO_REAL_ENO_6350  );
INT_TO_REAL_OUT_6366 := INT_TO_REAL( 
	 EN := True ,
	 IN := 7000 ,
	 ENO => INT_TO_REAL_ENO_6366  );
INT_TO_UDINT_OUT_6428 := INT_TO_UDINT( 
	 EN := True ,
	 IN := 819 ,
	 ENO => INT_TO_UDINT_ENO_6428  );
INT_TO_UDINT_OUT_6437 := INT_TO_UDINT( 
	 EN := True ,
	 IN := 4096 ,
	 ENO => INT_TO_UDINT_ENO_6437  );
INT_TO_REAL_OUT_6455 := INT_TO_REAL( 
	 EN := True ,
	 IN := 1125 ,
	 ENO => INT_TO_REAL_ENO_6455  );
INT_TO_REAL_OUT_6471 := INT_TO_REAL( 
	 EN := True ,
	 IN := 0 ,
	 ENO => INT_TO_REAL_ENO_6471  );
INT_TO_UDINT_OUT_6642 := INT_TO_UDINT( 
	 EN := True ,
	 IN := 819 ,
	 ENO => INT_TO_UDINT_ENO_6642  );
INT_TO_UDINT_OUT_6651 := INT_TO_UDINT( 
	 EN := True ,
	 IN := 4096 ,
	 ENO => INT_TO_UDINT_ENO_6651  );
INT_TO_REAL_OUT_6669 := INT_TO_REAL( 
	 EN := True ,
	 IN := 330 ,
	 ENO => INT_TO_REAL_ENO_6669  );
INT_TO_REAL_OUT_6685 := INT_TO_REAL( 
	 EN := True ,
	 IN := 0 ,
	 ENO => INT_TO_REAL_ENO_6685  );
DINT_TO_REAL_OUT_6718 := DINT_TO_REAL( 
	 EN := True ,
	 IN := 100 ,
	 ENO => DINT_TO_REAL_ENO_6718  );
INT_TO_UDINT_OUT_6758 := INT_TO_UDINT( 
	 EN := True ,
	 IN := rio_AI5_Tag0 ,
	 ENO => INT_TO_UDINT_ENO_6758  );
SCALE( 
	 EN := True ,
	 INPUT := INT_TO_UDINT_OUT_6758 ,
	 IN_MIN := INT_TO_UDINT_OUT_6323 ,
	 IN_MAX := INT_TO_UDINT_OUT_6332 ,
	 OUT_MIN := INT_TO_REAL_OUT_6366 ,
	 OUT_MAX := INT_TO_REAL_OUT_6350 ,
	 ENO => SCALE_ENO_6339 ,
	 OUTPUT => SCALE_OUTPUT_6339 ,
	 H_ALM => SCALE_H_ALM_6339 ,
	 L_ALM => SCALE_L_ALM_6339  );
INT_TO_UDINT_OUT_6765 := INT_TO_UDINT( 
	 EN := True ,
	 IN := rio_AI5_Tag1 ,
	 ENO => INT_TO_UDINT_ENO_6765  );
SCALE( 
	 EN := True ,
	 INPUT := INT_TO_UDINT_OUT_6765 ,
	 IN_MIN := INT_TO_UDINT_OUT_6428 ,
	 IN_MAX := INT_TO_UDINT_OUT_6437 ,
	 OUT_MIN := INT_TO_REAL_OUT_6471 ,
	 OUT_MAX := INT_TO_REAL_OUT_6455 ,
	 ENO => SCALE_ENO_6444 ,
	 OUTPUT => SCALE_OUTPUT_6444 ,
	 H_ALM => SCALE_H_ALM_6444 ,
	 L_ALM => SCALE_L_ALM_6444  );
INT_TO_UDINT_OUT_6772 := INT_TO_UDINT( 
	 EN := True ,
	 IN := rio_AI5_Tag2 ,
	 ENO => INT_TO_UDINT_ENO_6772  );
SCALE( 
	 EN := True ,
	 INPUT := INT_TO_UDINT_OUT_6772 ,
	 IN_MIN := INT_TO_UDINT_OUT_6642 ,
	 IN_MAX := INT_TO_UDINT_OUT_6651 ,
	 OUT_MIN := INT_TO_REAL_OUT_6685 ,
	 OUT_MAX := INT_TO_REAL_OUT_6669 ,
	 ENO => SCALE_ENO_6658 ,
	 OUTPUT => SCALE_OUTPUT_6658 ,
	 H_ALM => SCALE_H_ALM_6658 ,
	 L_ALM => SCALE_L_ALM_6658  );
MUL_OUT_6712 := MUL( 
	 EN := True ,
	 IN1 := SCALE_OUTPUT_6658 ,
	 IN2 := DINT_TO_REAL_OUT_6718 ,
	 ENO => MUL_ENO_6712  );
REAL_TO_DINT_OUT_6678 := REAL_TO_DINT( 
	 EN := True ,
	 IN := MUL_OUT_6712 ,
	 ENO => REAL_TO_DINT_ENO_6678  );
dnp_mAWF1 := REAL_TO_DINT_OUT_6678 ;
GE_OUT_6690 := GE( 
	 EN := True ,
	 IN1 := REAL_TO_DINT_OUT_6678 ,
	 IN2 := 1600 ,
	 ENO => GE_ENO_6690  );
dnp_FHItotal1 := GE_OUT_6690 ;
LE_OUT_6704 := LE( 
	 EN := True ,
	 IN1 := REAL_TO_DINT_OUT_6678 ,
	 IN2 := 0 ,
	 ENO => LE_ENO_6704  );
dnp_FLOWtotal1 := LE_OUT_6704 ;
INT_TO_UDINT_OUT_12725 := INT_TO_UDINT( 
	 EN := True ,
	 IN := 819 ,
	 ENO => INT_TO_UDINT_ENO_12725  );
INT_TO_UDINT_OUT_12734 := INT_TO_UDINT( 
	 EN := True ,
	 IN := 4096 ,
	 ENO => INT_TO_UDINT_ENO_12734  );
INT_TO_REAL_OUT_12752 := INT_TO_REAL( 
	 EN := True ,
	 IN := 330 ,
	 ENO => INT_TO_REAL_ENO_12752  );
INT_TO_REAL_OUT_12768 := INT_TO_REAL( 
	 EN := True ,
	 IN := 0 ,
	 ENO => INT_TO_REAL_ENO_12768  );
DINT_TO_REAL_OUT_12801 := DINT_TO_REAL( 
	 EN := True ,
	 IN := 100 ,
	 ENO => DINT_TO_REAL_ENO_12801  );
INT_TO_UDINT_OUT_12808 := INT_TO_UDINT( 
	 EN := True ,
	 IN := rio_AI5_Tag3 ,
	 ENO => INT_TO_UDINT_ENO_12808  );
SCALE( 
	 EN := True ,
	 INPUT := INT_TO_UDINT_OUT_12808 ,
	 IN_MIN := INT_TO_UDINT_OUT_12725 ,
	 IN_MAX := INT_TO_UDINT_OUT_12734 ,
	 OUT_MIN := INT_TO_REAL_OUT_12768 ,
	 OUT_MAX := INT_TO_REAL_OUT_12752 ,
	 ENO => SCALE_ENO_12741 ,
	 OUTPUT => SCALE_OUTPUT_12741 ,
	 H_ALM => SCALE_H_ALM_12741 ,
	 L_ALM => SCALE_L_ALM_12741  );
MUL_OUT_12795 := MUL( 
	 EN := True ,
	 IN1 := SCALE_OUTPUT_12741 ,
	 IN2 := DINT_TO_REAL_OUT_12801 ,
	 ENO => MUL_ENO_12795  );
REAL_TO_DINT_OUT_12761 := REAL_TO_DINT( 
	 EN := True ,
	 IN := MUL_OUT_12795 ,
	 ENO => REAL_TO_DINT_ENO_12761  );
dnp_mAWF2 := REAL_TO_DINT_OUT_12761 ;
GE_OUT_12773 := GE( 
	 EN := True ,
	 IN1 := REAL_TO_DINT_OUT_12761 ,
	 IN2 := 1600 ,
	 ENO => GE_ENO_12773  );
dnp_FHItotal2 := GE_OUT_12773 ;
LE_OUT_12787 := LE( 
	 EN := True ,
	 IN1 := REAL_TO_DINT_OUT_12761 ,
	 IN2 := 0 ,
	 ENO => LE_ENO_12787  );
dnp_FLOWtotal2 := LE_OUT_12787 ;
SUB_OUT_12813 := SUB( 
	 EN := True ,
	 IN1 := 5100.0 ,
	 IN2 := SCALE_OUTPUT_6339 ,
	 ENO => SUB_ENO_12813  );
GE_OUT_14177 := GE( 
	 EN := 1 ,
	 IN1 := 1000 ,
	 IN2 := 5000 ,
	 ENO => GE_ENO_14177  );
BOOL_TO_UDINT_OUT_14190 := BOOL_TO_UDINT( 
	 EN := True ,
	 IN := GE_OUT_14177 ,
	 ENO => BOOL_TO_UDINT_ENO_14190  );
dnp_ptpumpag1_STATUS := BOOL_TO_UDINT_OUT_14190 ;
GE_OUT_14203 := GE( 
	 EN := 1 ,
	 IN1 := UINT_TO_UDINT_OUT_5890 ,
	 IN2 := 5000 ,
	 ENO => GE_ENO_14203  );
BOOL_TO_UDINT_OUT_14213 := BOOL_TO_UDINT( 
	 EN := True ,
	 IN := GE_OUT_14203 ,
	 ENO => BOOL_TO_UDINT_ENO_14213  );
dnp_ptpumpag2_STATUS := BOOL_TO_UDINT_OUT_14213 ;
GE_OUT_14225 := GE( 
	 EN := 1 ,
	 IN1 := UINT_TO_UDINT_OUT_5997 ,
	 IN2 := 5000 ,
	 ENO => GE_ENO_14225  );
BOOL_TO_UDINT_OUT_14235 := BOOL_TO_UDINT( 
	 EN := True ,
	 IN := GE_OUT_14225 ,
	 ENO => BOOL_TO_UDINT_ENO_14235  );
dnp_ptpumpag3_STATUS := BOOL_TO_UDINT_OUT_14235 ;
GE_OUT_14247 := GE( 
	 EN := 1 ,
	 IN1 := UINT_TO_UDINT_OUT_6104 ,
	 IN2 := 5000 ,
	 ENO => GE_ENO_14247  );
BOOL_TO_UDINT_OUT_14257 := BOOL_TO_UDINT( 
	 EN := True ,
	 IN := GE_OUT_14247 ,
	 ENO => BOOL_TO_UDINT_ENO_14257  );
dnp_ptCollector_STATUS := BOOL_TO_UDINT_OUT_14257 ;
GE_OUT_14269 := GE( 
	 EN := 1 ,
	 IN1 := INT_TO_UDINT_OUT_6758 ,
	 IN2 := 750 ,
	 ENO => GE_ENO_14269  );
BOOL_TO_UDINT_OUT_14279 := BOOL_TO_UDINT( 
	 EN := True ,
	 IN := GE_OUT_14269 ,
	 ENO => BOOL_TO_UDINT_ENO_14279  );
dnp_mAlevelmaintank_STATUS := BOOL_TO_UDINT_OUT_14279 ;
GE_OUT_14291 := GE( 
	 EN := 1 ,
	 IN1 := INT_TO_UDINT_OUT_6765 ,
	 IN2 := 750 ,
	 ENO => GE_ENO_14291  );
BOOL_TO_UDINT_OUT_14301 := BOOL_TO_UDINT( 
	 EN := True ,
	 IN := GE_OUT_14291 ,
	 ENO => BOOL_TO_UDINT_ENO_14301  );
dnp_mACHL_STATUS := BOOL_TO_UDINT_OUT_14301 ;
GE_OUT_14313 := GE( 
	 EN := 1 ,
	 IN1 := INT_TO_UDINT_OUT_6772 ,
	 IN2 := 700 ,
	 ENO => GE_ENO_14313  );
BOOL_TO_UDINT_OUT_14321 := BOOL_TO_UDINT( 
	 EN := True ,
	 IN := GE_OUT_14313 ,
	 ENO => BOOL_TO_UDINT_ENO_14321  );
dnp_mAWF1_STATUS := BOOL_TO_UDINT_OUT_14321 ;
GE_OUT_14337 := GE( 
	 EN := 1 ,
	 IN1 := INT_TO_UDINT_OUT_12808 ,
	 IN2 := 700 ,
	 ENO => GE_ENO_14337  );
BOOL_TO_UDINT_OUT_14345 := BOOL_TO_UDINT( 
	 EN := True ,
	 IN := GE_OUT_14337 ,
	 ENO => BOOL_TO_UDINT_ENO_14345  );
dnp_mAWF2_STATUS := BOOL_TO_UDINT_OUT_14345 ;
REAL_TO_REAL_OUT_14422 := REAL_TO_REAL( 
	 EN := True ,
	 IN := SCALE_OUTPUT_6444 ,
	 ENO => REAL_TO_REAL_ENO_14422  );
dnp_ec := REAL_TO_REAL_OUT_14422 ;
dnp2_ptpumpag1_STATUS := BOOL_TO_UDINT_OUT_14190 ;
dnp2_ptpumpag1 := SCALE_OUTPUT_571 ;
dnp2_PLOWpumpag1 := LE_OUT_3569 ;
dnp2_PHIpumpag1 := GE_OUT_3555 ;
dnp2_ptpumpag2_STATUS := BOOL_TO_UDINT_OUT_14213 ;
dnp2_ptpumpag2 := SCALE_OUTPUT_5911 ;
dnp2_PLOWpumpag2 := LE_OUT_5957 ;
dnp2_PHIpumpag2 := GE_OUT_5943 ;
dnp2_ptpumpag3_STATUS := BOOL_TO_UDINT_OUT_14235 ;
dnp2_ptpumpag3 := SCALE_OUTPUT_6018 ;
dnp2_PLOWpumpag3 := LE_OUT_6064 ;
dnp2_PHIpumpag3 := GE_OUT_6050 ;
dnp2_ptCollector_STATUS := BOOL_TO_UDINT_OUT_14257 ;
dnp2_ptCollector := SCALE_OUTPUT_6125 ;
dnp2_PLOWTotal := LE_OUT_6171 ;
dnp2_PHITotal := GE_OUT_6157 ;
dnp2_mAlevelmaintank_STATUS := BOOL_TO_UDINT_OUT_14279 ;
dnp2_mACHL_STATUS := BOOL_TO_UDINT_OUT_14301 ;
dnp2_ec := REAL_TO_REAL_OUT_14422 ;
dnp2_mAWF1_STATUS := BOOL_TO_UDINT_OUT_14321 ;
dnp2_mAWF1 := REAL_TO_DINT_OUT_6678 ;
dnp2_FLOWtotal1 := LE_OUT_6704 ;
dnp2_FHItotal1 := GE_OUT_6690 ;
dnp2_mAWF2_STATUS := BOOL_TO_UDINT_OUT_14345 ;
dnp2_mAWF2 := REAL_TO_DINT_OUT_12761 ;
dnp2_FLOWtotal2 := LE_OUT_12787 ;
dnp2_FHItotal2 := GE_OUT_12773 ;
DIV_OUT_14928 := DIV( 
	 EN := True ,
	 IN1 := SUB_OUT_12813 ,
	 IN2 := 1000.0 ,
	 ENO => DIV_ENO_14928  );
dnp_mAlevelmaintank := DIV_OUT_14928 ;
dnp2_mAlevelmaintank := DIV_OUT_14928 ;
REAL_TO_DINT_OUT_2702 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p1var1_Tag3027 ,
	 ENO => REAL_TO_DINT_ENO_2702  );
REAL_TO_DINT_OUT_2724 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p1var1_Tag3001 ,
	 ENO => REAL_TO_DINT_ENO_2724  );
dnp_I2pumpag1 := REAL_TO_DINT_OUT_2724 ;
REAL_TO_DINT_OUT_2757 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p1var2_Tag3059 ,
	 ENO => REAL_TO_DINT_ENO_2757  );
dnp_Pavpumpag1 := REAL_TO_DINT_OUT_2757 ;
REAL_TO_DINT_OUT_3464 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p1var2_Tag3075 ,
	 ENO => REAL_TO_DINT_ENO_3464  );
dnp_Savpumpag1 := REAL_TO_DINT_OUT_3464 ;
LE_OUT_3624 := LE( 
	 EN := True ,
	 IN1 := REAL_TO_DINT_OUT_2702 ,
	 IN2 := 150 ,
	 ENO => LE_ENO_3624  );
REAL_TO_DINT_OUT_3642 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p1var1_Tag3029 ,
	 ENO => REAL_TO_DINT_ENO_3642  );
LE_OUT_3649 := LE( 
	 EN := True ,
	 IN1 := REAL_TO_DINT_OUT_3642 ,
	 IN2 := 150 ,
	 ENO => LE_ENO_3649  );
REAL_TO_DINT_OUT_3663 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p1var1_Tag3031 ,
	 ENO => REAL_TO_DINT_ENO_3663  );
LE_OUT_3670 := LE( 
	 EN := True ,
	 IN1 := REAL_TO_DINT_OUT_3663 ,
	 IN2 := 150 ,
	 ENO => LE_ENO_3670  );
REAL_TO_DINT_OUT_3682 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p1var1_Tag2999 ,
	 ENO => REAL_TO_DINT_ENO_3682  );
dnp_I1pumpag1 := REAL_TO_DINT_OUT_3682 ;
REAL_TO_DINT_OUT_3693 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p1var1_Tag3027 ,
	 ENO => REAL_TO_DINT_ENO_3693  );
dnp_V1pumpag1 := REAL_TO_DINT_OUT_3693 ;
REAL_TO_DINT_OUT_3836 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p1var1_Tag3021 ,
	 ENO => REAL_TO_DINT_ENO_3836  );
dnp_V23pumpag1 := REAL_TO_DINT_OUT_3836 ;
REAL_TO_DINT_OUT_3847 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p1var1_Tag3023 ,
	 ENO => REAL_TO_DINT_ENO_3847  );
dnp_V31pumpag1 := REAL_TO_DINT_OUT_3847 ;
REAL_TO_DINT_OUT_3858 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p1var1_Tag3019 ,
	 ENO => REAL_TO_DINT_ENO_3858  );
dnp_V12pumpag1 := REAL_TO_DINT_OUT_3858 ;
REAL_TO_DINT_OUT_3869 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p1var2_Tag3055 ,
	 ENO => REAL_TO_DINT_ENO_3869  );
dnp_p2pumpag1 := REAL_TO_DINT_OUT_3869 ;
REAL_TO_DINT_OUT_3891 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p1var2_Tag3053 ,
	 ENO => REAL_TO_DINT_ENO_3891  );
dnp_p1pumpag1 := REAL_TO_DINT_OUT_3891 ;
REAL_TO_DINT_OUT_3935 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p1var2_Tag3071 ,
	 ENO => REAL_TO_DINT_ENO_3935  );
dnp_s2pumpag1 := REAL_TO_DINT_OUT_3935 ;
REAL_TO_DINT_OUT_3946 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p1var2_Tag3073 ,
	 ENO => REAL_TO_DINT_ENO_3946  );
dnp_s3pumpag1 := REAL_TO_DINT_OUT_3946 ;
REAL_TO_DINT_OUT_3957 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p1var2_Tag3069 ,
	 ENO => REAL_TO_DINT_ENO_3957  );
dnp_s1pumpag1 := REAL_TO_DINT_OUT_3957 ;
REAL_TO_DINT_OUT_4049 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p1var1_Tag2999 ,
	 ENO => REAL_TO_DINT_ENO_4049  );
LE_OUT_4054 := LE( 
	 EN := True ,
	 IN1 := REAL_TO_DINT_OUT_4049 ,
	 IN2 := 1 ,
	 ENO => LE_ENO_4054  );
AND_OUT_4060 := AND( 
	 EN := True ,
	 IN1 := LE_OUT_3624 ,
	 IN2 := LE_OUT_4054 ,
	 ENO => AND_ENO_4060  );
dnp_phase1pumpag1 := AND_OUT_4060 ;
REAL_TO_DINT_OUT_4077 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p1var1_Tag3001 ,
	 ENO => REAL_TO_DINT_ENO_4077  );
LE_OUT_4082 := LE( 
	 EN := True ,
	 IN1 := REAL_TO_DINT_OUT_4077 ,
	 IN2 := 1 ,
	 ENO => LE_ENO_4082  );
AND_OUT_4091 := AND( 
	 EN := True ,
	 IN1 := LE_OUT_3649 ,
	 IN2 := LE_OUT_4082 ,
	 ENO => AND_ENO_4091  );
dnp_phase2pumpag1 := AND_OUT_4091 ;
REAL_TO_DINT_OUT_4105 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p1var1_Tag3003 ,
	 ENO => REAL_TO_DINT_ENO_4105  );
LE_OUT_4110 := LE( 
	 EN := True ,
	 IN1 := REAL_TO_DINT_OUT_4105 ,
	 IN2 := 1 ,
	 ENO => LE_ENO_4110  );
AND_OUT_4118 := AND( 
	 EN := True ,
	 IN1 := LE_OUT_3670 ,
	 IN2 := LE_OUT_4110 ,
	 ENO => AND_ENO_4118  );
dnp_phase3pumpag1 := AND_OUT_4118 ;
REAL_TO_DINT_OUT_4618 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p1var1_Tag3003 ,
	 ENO => REAL_TO_DINT_ENO_4618  );
dnp_I3pumpag1 := REAL_TO_DINT_OUT_4618 ;
DINT_TO_REAL_OUT_4974 := DINT_TO_REAL( 
	 EN := True ,
	 IN := 1 ,
	 ENO => DINT_TO_REAL_ENO_4974  );
MUL_OUT_4968 := MUL( 
	 EN := True ,
	 IN1 := rio_p1var2_Tag3065 ,
	 IN2 := DINT_TO_REAL_OUT_4974 ,
	 ENO => MUL_ENO_4968  );
REAL_TO_DINT_OUT_3913 := REAL_TO_DINT( 
	 EN := True ,
	 IN := MUL_OUT_4968 ,
	 ENO => REAL_TO_DINT_ENO_3913  );
dnp_q3pumpag1 := REAL_TO_DINT_OUT_3913 ;
DINT_TO_REAL_OUT_4992 := DINT_TO_REAL( 
	 EN := True ,
	 IN := 1 ,
	 ENO => DINT_TO_REAL_ENO_4992  );
MUL_OUT_4986 := MUL( 
	 EN := True ,
	 IN1 := rio_p1var2_Tag3063 ,
	 IN2 := DINT_TO_REAL_OUT_4992 ,
	 ENO => MUL_ENO_4986  );
REAL_TO_DINT_OUT_3902 := REAL_TO_DINT( 
	 EN := True ,
	 IN := MUL_OUT_4986 ,
	 ENO => REAL_TO_DINT_ENO_3902  );
dnp_q2pumpag1 := REAL_TO_DINT_OUT_3902 ;
DINT_TO_REAL_OUT_5010 := DINT_TO_REAL( 
	 EN := True ,
	 IN := 1 ,
	 ENO => DINT_TO_REAL_ENO_5010  );
MUL_OUT_5004 := MUL( 
	 EN := True ,
	 IN1 := rio_p1var2_Tag3061 ,
	 IN2 := DINT_TO_REAL_OUT_5010 ,
	 ENO => MUL_ENO_5004  );
REAL_TO_DINT_OUT_3924 := REAL_TO_DINT( 
	 EN := True ,
	 IN := MUL_OUT_5004 ,
	 ENO => REAL_TO_DINT_ENO_3924  );
dnp_q1pumpag1 := REAL_TO_DINT_OUT_3924 ;
DINT_TO_REAL_OUT_5029 := DINT_TO_REAL( 
	 EN := True ,
	 IN := 1 ,
	 ENO => DINT_TO_REAL_ENO_5029  );
MUL_OUT_5023 := MUL( 
	 EN := True ,
	 IN1 := rio_p1var2_Tag3067 ,
	 IN2 := DINT_TO_REAL_OUT_5029 ,
	 ENO => MUL_ENO_5023  );
REAL_TO_DINT_OUT_2768 := REAL_TO_DINT( 
	 EN := True ,
	 IN := MUL_OUT_5023 ,
	 ENO => REAL_TO_DINT_ENO_2768  );
dnp_Qavpumpag1 := REAL_TO_DINT_OUT_2768 ;
DINT_TO_REAL_OUT_5196 := DINT_TO_REAL( 
	 EN := True ,
	 IN := 100 ,
	 ENO => DINT_TO_REAL_ENO_5196  );
MUL_OUT_5190 := MUL( 
	 EN := True ,
	 IN1 := rio_p1var3_Tag3109 ,
	 IN2 := DINT_TO_REAL_OUT_5196 ,
	 ENO => MUL_ENO_5190  );
REAL_TO_DINT_OUT_5185 := REAL_TO_DINT( 
	 EN := True ,
	 IN := MUL_OUT_5190 ,
	 ENO => REAL_TO_DINT_ENO_5185  );
dnp_FREQpumpag1 := REAL_TO_DINT_OUT_5185 ;
DINT_TO_REAL_OUT_5223 := DINT_TO_REAL( 
	 EN := True ,
	 IN := 100 ,
	 ENO => DINT_TO_REAL_ENO_5223  );
MUL_OUT_5217 := MUL( 
	 EN := True ,
	 IN1 := rio_p1var2_Tag3083 ,
	 IN2 := DINT_TO_REAL_OUT_5223 ,
	 ENO => MUL_ENO_5217  );
REAL_TO_DINT_OUT_5212 := REAL_TO_DINT( 
	 EN := True ,
	 IN := MUL_OUT_5217 ,
	 ENO => REAL_TO_DINT_ENO_5212  );
dnp_PFavpumpag1 := REAL_TO_DINT_OUT_5212 ;
REAL_TO_DINT_OUT_6729 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p1var1_Tag3029 ,
	 ENO => REAL_TO_DINT_ENO_6729  );
dnp_V2pumpag1 := REAL_TO_DINT_OUT_6729 ;
REAL_TO_DINT_OUT_6740 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p1var1_Tag3031 ,
	 ENO => REAL_TO_DINT_ENO_6740  );
dnp_V3pumpag1 := REAL_TO_DINT_OUT_6740 ;
REAL_TO_DINT_OUT_6751 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p1var2_Tag3057 ,
	 ENO => REAL_TO_DINT_ENO_6751  );
dnp_p3pumpag1 := REAL_TO_DINT_OUT_6751 ;
DINT_TO_REAL_OUT_13966 := DINT_TO_REAL( 
	 EN := True ,
	 IN := 1000 ,
	 ENO => DINT_TO_REAL_ENO_13966  );
MUL_OUT_13960 := MUL( 
	 EN := True ,
	 IN1 := rio_p1var2_Tag3077 ,
	 IN2 := DINT_TO_REAL_OUT_13966 ,
	 ENO => MUL_ENO_13960  );
SUB_OUT_13973 := SUB( 
	 EN := True ,
	 IN1 := 2000.0 ,
	 IN2 := MUL_OUT_13960 ,
	 ENO => SUB_ENO_13973  );
GE_OUT_13990 := GE( 
	 EN := True ,
	 IN1 := rio_p1var2_Tag3061 ,
	 IN2 := 0.0 ,
	 ENO => GE_ENO_13990  );
DINT_TO_REAL_OUT_14016 := DINT_TO_REAL( 
	 EN := True ,
	 IN := 1000 ,
	 ENO => DINT_TO_REAL_ENO_14016  );
MUL_OUT_14010 := MUL( 
	 EN := True ,
	 IN1 := rio_p1var2_Tag3077 ,
	 IN2 := DINT_TO_REAL_OUT_14016 ,
	 ENO => MUL_ENO_14010  );
SEL_OUT_13981 := SEL( 
	 EN := True ,
	 G := GE_OUT_13990 ,
	 IN0 := SUB_OUT_13973 ,
	 IN1 := MUL_OUT_14010 ,
	 ENO => SEL_ENO_13981  );
REAL_TO_DINT_OUT_14000 := REAL_TO_DINT( 
	 EN := True ,
	 IN := SEL_OUT_13981 ,
	 ENO => REAL_TO_DINT_ENO_14000  );
dnp_PF1pumpag1 := REAL_TO_DINT_OUT_14000 ;
DINT_TO_REAL_OUT_14043 := DINT_TO_REAL( 
	 EN := True ,
	 IN := 1000 ,
	 ENO => DINT_TO_REAL_ENO_14043  );
MUL_OUT_14037 := MUL( 
	 EN := True ,
	 IN1 := rio_p1var2_Tag3079 ,
	 IN2 := DINT_TO_REAL_OUT_14043 ,
	 ENO => MUL_ENO_14037  );
SUB_OUT_14050 := SUB( 
	 EN := True ,
	 IN1 := 2000.0 ,
	 IN2 := MUL_OUT_14037 ,
	 ENO => SUB_ENO_14050  );
GE_OUT_14067 := GE( 
	 EN := True ,
	 IN1 := rio_p1var2_Tag3063 ,
	 IN2 := 0.0 ,
	 ENO => GE_ENO_14067  );
DINT_TO_REAL_OUT_14093 := DINT_TO_REAL( 
	 EN := True ,
	 IN := 1000 ,
	 ENO => DINT_TO_REAL_ENO_14093  );
MUL_OUT_14087 := MUL( 
	 EN := True ,
	 IN1 := rio_p1var2_Tag3079 ,
	 IN2 := DINT_TO_REAL_OUT_14093 ,
	 ENO => MUL_ENO_14087  );
SEL_OUT_14058 := SEL( 
	 EN := True ,
	 G := GE_OUT_14067 ,
	 IN0 := SUB_OUT_14050 ,
	 IN1 := MUL_OUT_14087 ,
	 ENO => SEL_ENO_14058  );
REAL_TO_DINT_OUT_14077 := REAL_TO_DINT( 
	 EN := True ,
	 IN := SEL_OUT_14058 ,
	 ENO => REAL_TO_DINT_ENO_14077  );
dnp_PF2pumpag1 := REAL_TO_DINT_OUT_14077 ;
DINT_TO_REAL_OUT_14120 := DINT_TO_REAL( 
	 EN := True ,
	 IN := 1000 ,
	 ENO => DINT_TO_REAL_ENO_14120  );
MUL_OUT_14114 := MUL( 
	 EN := True ,
	 IN1 := rio_p1var2_Tag3081 ,
	 IN2 := DINT_TO_REAL_OUT_14120 ,
	 ENO => MUL_ENO_14114  );
SUB_OUT_14127 := SUB( 
	 EN := True ,
	 IN1 := 2000.0 ,
	 IN2 := MUL_OUT_14114 ,
	 ENO => SUB_ENO_14127  );
GE_OUT_14144 := GE( 
	 EN := True ,
	 IN1 := rio_p1var2_Tag3065 ,
	 IN2 := 0.0 ,
	 ENO => GE_ENO_14144  );
DINT_TO_REAL_OUT_14170 := DINT_TO_REAL( 
	 EN := True ,
	 IN := 1000 ,
	 ENO => DINT_TO_REAL_ENO_14170  );
MUL_OUT_14164 := MUL( 
	 EN := True ,
	 IN1 := rio_p1var2_Tag3081 ,
	 IN2 := DINT_TO_REAL_OUT_14170 ,
	 ENO => MUL_ENO_14164  );
SEL_OUT_14135 := SEL( 
	 EN := True ,
	 G := GE_OUT_14144 ,
	 IN0 := SUB_OUT_14127 ,
	 IN1 := MUL_OUT_14164 ,
	 ENO => SEL_ENO_14135  );
REAL_TO_DINT_OUT_14154 := REAL_TO_DINT( 
	 EN := True ,
	 IN := SEL_OUT_14135 ,
	 ENO => REAL_TO_DINT_ENO_14154  );
dnp_PF3pumpag1 := REAL_TO_DINT_OUT_14154 ;
dnp2_I1pumpag1 := REAL_TO_DINT_OUT_3682 ;
dnp2_I2pumpag1 := REAL_TO_DINT_OUT_2724 ;
dnp2_I3pumpag1 := REAL_TO_DINT_OUT_4618 ;
dnp2_V1pumpag1 := REAL_TO_DINT_OUT_3693 ;
dnp2_V2pumpag1 := REAL_TO_DINT_OUT_6729 ;
dnp2_V3pumpag1 := REAL_TO_DINT_OUT_6740 ;
dnp2_V12pumpag1 := REAL_TO_DINT_OUT_3858 ;
dnp2_V23pumpag1 := REAL_TO_DINT_OUT_3836 ;
dnp2_V31pumpag1 := REAL_TO_DINT_OUT_3847 ;
dnp2_p1pumpag1 := REAL_TO_DINT_OUT_3891 ;
dnp2_p2pumpag1 := REAL_TO_DINT_OUT_3869 ;
dnp2_p3pumpag1 := REAL_TO_DINT_OUT_6751 ;
dnp2_q1pumpag1 := REAL_TO_DINT_OUT_3924 ;
dnp2_q2pumpag1 := REAL_TO_DINT_OUT_3902 ;
dnp2_q3pumpag1 := REAL_TO_DINT_OUT_3913 ;
dnp2_s1pumpag1 := REAL_TO_DINT_OUT_3957 ;
dnp2_s2pumpag1 := REAL_TO_DINT_OUT_3935 ;
dnp2_s3pumpag1 := REAL_TO_DINT_OUT_3946 ;
dnp2_Pavpumpag1 := REAL_TO_DINT_OUT_2757 ;
dnp2_Qavpumpag1 := REAL_TO_DINT_OUT_2768 ;
dnp2_Savpumpag1 := REAL_TO_DINT_OUT_3464 ;
dnp2_PFavpumpag1 := REAL_TO_DINT_OUT_5212 ;
dnp2_FREQpumpag1 := REAL_TO_DINT_OUT_5185 ;
dnp2_phase1pumpag1 := AND_OUT_4060 ;
dnp2_phase2pumpag1 := AND_OUT_4091 ;
dnp2_phase3pumpag1 := AND_OUT_4118 ;
dnp2_PF1pumpag1 := REAL_TO_DINT_OUT_14000 ;
dnp2_PF2pumpag1 := REAL_TO_DINT_OUT_14077 ;
dnp2_PF3pumpag1 := REAL_TO_DINT_OUT_14154 ;
REAL_TO_DINT_OUT_13293 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p2var1_Tag3001 ,
	 ENO => REAL_TO_DINT_ENO_13293  );
dnp_i2pumpag2 := REAL_TO_DINT_OUT_13293 ;
REAL_TO_DINT_OUT_13304 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p2var1_Tag2999 ,
	 ENO => REAL_TO_DINT_ENO_13304  );
dnp_i1pumpag2 := REAL_TO_DINT_OUT_13304 ;
REAL_TO_DINT_OUT_13315 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p2var1_Tag3027 ,
	 ENO => REAL_TO_DINT_ENO_13315  );
dnp_v1pumpag2 := REAL_TO_DINT_OUT_13315 ;
REAL_TO_DINT_OUT_13322 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p2var1_Tag3003 ,
	 ENO => REAL_TO_DINT_ENO_13322  );
dnp_i3pumpag2 := REAL_TO_DINT_OUT_13322 ;
REAL_TO_DINT_OUT_13331 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p2var1_Tag3029 ,
	 ENO => REAL_TO_DINT_ENO_13331  );
dnp_v2pumpag2 := REAL_TO_DINT_OUT_13331 ;
REAL_TO_DINT_OUT_13342 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p2var1_Tag3031 ,
	 ENO => REAL_TO_DINT_ENO_13342  );
dnp_v3pumpag2 := REAL_TO_DINT_OUT_13342 ;
REAL_TO_DINT_OUT_13353 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p2var1_Tag3021 ,
	 ENO => REAL_TO_DINT_ENO_13353  );
dnp_V23pumpag2 := REAL_TO_DINT_OUT_13353 ;
REAL_TO_DINT_OUT_13364 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p2var1_Tag3019 ,
	 ENO => REAL_TO_DINT_ENO_13364  );
dnp_V12pumpag2 := REAL_TO_DINT_OUT_13364 ;
REAL_TO_DINT_OUT_13375 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p2var1_Tag3023 ,
	 ENO => REAL_TO_DINT_ENO_13375  );
dnp_V31pumpag2 := REAL_TO_DINT_OUT_13375 ;
REAL_TO_DINT_OUT_13386 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p2var2_Tag3053 ,
	 ENO => REAL_TO_DINT_ENO_13386  );
dnp_p1pumpag2 := REAL_TO_DINT_OUT_13386 ;
REAL_TO_DINT_OUT_13399 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p2var2_Tag3055 ,
	 ENO => REAL_TO_DINT_ENO_13399  );
dnp_p2pumpag2 := REAL_TO_DINT_OUT_13399 ;
DINT_TO_REAL_OUT_13424 := DINT_TO_REAL( 
	 EN := True ,
	 IN := 100 ,
	 ENO => DINT_TO_REAL_ENO_13424  );
MUL_OUT_13418 := MUL( 
	 EN := True ,
	 IN1 := rio_p2var2_Tag3061 ,
	 IN2 := DINT_TO_REAL_OUT_13424 ,
	 ENO => MUL_ENO_13418  );
REAL_TO_DINT_OUT_13409 := REAL_TO_DINT( 
	 EN := True ,
	 IN := MUL_OUT_13418 ,
	 ENO => REAL_TO_DINT_ENO_13409  );
dnp_q1pumpag2 := REAL_TO_DINT_OUT_13409 ;
REAL_TO_DINT_OUT_13435 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p2var2_Tag3057 ,
	 ENO => REAL_TO_DINT_ENO_13435  );
dnp_p3pumpag2 := REAL_TO_DINT_OUT_13435 ;
DINT_TO_REAL_OUT_13462 := DINT_TO_REAL( 
	 EN := True ,
	 IN := 100 ,
	 ENO => DINT_TO_REAL_ENO_13462  );
MUL_OUT_13456 := MUL( 
	 EN := True ,
	 IN1 := rio_p2var2_Tag3063 ,
	 IN2 := DINT_TO_REAL_OUT_13462 ,
	 ENO => MUL_ENO_13456  );
REAL_TO_DINT_OUT_13447 := REAL_TO_DINT( 
	 EN := True ,
	 IN := MUL_OUT_13456 ,
	 ENO => REAL_TO_DINT_ENO_13447  );
dnp_q2pumpag2 := REAL_TO_DINT_OUT_13447 ;
REAL_TO_DINT_OUT_13485 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p2var2_Tag3069 ,
	 ENO => REAL_TO_DINT_ENO_13485  );
dnp_s1pumpag2 := REAL_TO_DINT_OUT_13485 ;
DINT_TO_REAL_OUT_13500 := DINT_TO_REAL( 
	 EN := True ,
	 IN := 100 ,
	 ENO => DINT_TO_REAL_ENO_13500  );
MUL_OUT_13494 := MUL( 
	 EN := True ,
	 IN1 := rio_p2var2_Tag3065 ,
	 IN2 := DINT_TO_REAL_OUT_13500 ,
	 ENO => MUL_ENO_13494  );
REAL_TO_DINT_OUT_13474 := REAL_TO_DINT( 
	 EN := True ,
	 IN := MUL_OUT_13494 ,
	 ENO => REAL_TO_DINT_ENO_13474  );
dnp_q3pumpag2 := REAL_TO_DINT_OUT_13474 ;
REAL_TO_DINT_OUT_13511 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p2var2_Tag3071 ,
	 ENO => REAL_TO_DINT_ENO_13511  );
dnp_s2pumpag2 := REAL_TO_DINT_OUT_13511 ;
REAL_TO_DINT_OUT_13522 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p2var2_Tag3073 ,
	 ENO => REAL_TO_DINT_ENO_13522  );
dnp_s3pumpag2 := REAL_TO_DINT_OUT_13522 ;
DINT_TO_REAL_OUT_13549 := DINT_TO_REAL( 
	 EN := True ,
	 IN := 100 ,
	 ENO => DINT_TO_REAL_ENO_13549  );
MUL_OUT_13543 := MUL( 
	 EN := True ,
	 IN1 := rio_p2var2_Tag3077 ,
	 IN2 := DINT_TO_REAL_OUT_13549 ,
	 ENO => MUL_ENO_13543  );
REAL_TO_DINT_OUT_13538 := REAL_TO_DINT( 
	 EN := True ,
	 IN := MUL_OUT_13543 ,
	 ENO => REAL_TO_DINT_ENO_13538  );
dnp_PF1pumpag2 := REAL_TO_DINT_OUT_13538 ;
REAL_TO_DINT_OUT_13569 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p2var2_Tag3059 ,
	 ENO => REAL_TO_DINT_ENO_13569  );
dnp_Pavpumpag2 := REAL_TO_DINT_OUT_13569 ;
REAL_TO_DINT_OUT_13590 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p2var2_Tag3075 ,
	 ENO => REAL_TO_DINT_ENO_13590  );
dnp_Savpumpag2 := REAL_TO_DINT_OUT_13590 ;
DINT_TO_REAL_OUT_13610 := DINT_TO_REAL( 
	 EN := True ,
	 IN := 100 ,
	 ENO => DINT_TO_REAL_ENO_13610  );
MUL_OUT_13604 := MUL( 
	 EN := True ,
	 IN1 := rio_p2var2_Tag3081 ,
	 IN2 := DINT_TO_REAL_OUT_13610 ,
	 ENO => MUL_ENO_13604  );
REAL_TO_DINT_OUT_13599 := REAL_TO_DINT( 
	 EN := True ,
	 IN := MUL_OUT_13604 ,
	 ENO => REAL_TO_DINT_ENO_13599  );
dnp_PF3pumpag2 := REAL_TO_DINT_OUT_13599 ;
DINT_TO_REAL_OUT_13637 := DINT_TO_REAL( 
	 EN := True ,
	 IN := 100 ,
	 ENO => DINT_TO_REAL_ENO_13637  );
MUL_OUT_13631 := MUL( 
	 EN := True ,
	 IN1 := rio_p2var2_Tag3079 ,
	 IN2 := DINT_TO_REAL_OUT_13637 ,
	 ENO => MUL_ENO_13631  );
REAL_TO_DINT_OUT_13626 := REAL_TO_DINT( 
	 EN := True ,
	 IN := MUL_OUT_13631 ,
	 ENO => REAL_TO_DINT_ENO_13626  );
dnp_PF2pumpag2 := REAL_TO_DINT_OUT_13626 ;
DINT_TO_REAL_OUT_13652 := DINT_TO_REAL( 
	 EN := True ,
	 IN := 1 ,
	 ENO => DINT_TO_REAL_ENO_13652  );
MUL_OUT_13646 := MUL( 
	 EN := True ,
	 IN1 := rio_p2var2_Tag3067 ,
	 IN2 := DINT_TO_REAL_OUT_13652 ,
	 ENO => MUL_ENO_13646  );
REAL_TO_DINT_OUT_13579 := REAL_TO_DINT( 
	 EN := True ,
	 IN := MUL_OUT_13646 ,
	 ENO => REAL_TO_DINT_ENO_13579  );
dnp_Qavpumpag2 := REAL_TO_DINT_OUT_13579 ;
DINT_TO_REAL_OUT_13679 := DINT_TO_REAL( 
	 EN := True ,
	 IN := 100 ,
	 ENO => DINT_TO_REAL_ENO_13679  );
MUL_OUT_13673 := MUL( 
	 EN := True ,
	 IN1 := rio_p2var3_Tag3109 ,
	 IN2 := DINT_TO_REAL_OUT_13679 ,
	 ENO => MUL_ENO_13673  );
REAL_TO_DINT_OUT_13668 := REAL_TO_DINT( 
	 EN := True ,
	 IN := MUL_OUT_13673 ,
	 ENO => REAL_TO_DINT_ENO_13668  );
dnp_FREQpumpag2 := REAL_TO_DINT_OUT_13668 ;
DINT_TO_REAL_OUT_13706 := DINT_TO_REAL( 
	 EN := True ,
	 IN := 100 ,
	 ENO => DINT_TO_REAL_ENO_13706  );
MUL_OUT_13700 := MUL( 
	 EN := True ,
	 IN1 := rio_p2var2_Tag3083 ,
	 IN2 := DINT_TO_REAL_OUT_13706 ,
	 ENO => MUL_ENO_13700  );
REAL_TO_DINT_OUT_13695 := REAL_TO_DINT( 
	 EN := True ,
	 IN := MUL_OUT_13700 ,
	 ENO => REAL_TO_DINT_ENO_13695  );
dnp_PFavpumpag2 := REAL_TO_DINT_OUT_13695 ;
REAL_TO_DINT_OUT_13724 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p2var1_Tag3027 ,
	 ENO => REAL_TO_DINT_ENO_13724  );
LE_OUT_13731 := LE( 
	 EN := True ,
	 IN1 := REAL_TO_DINT_OUT_13724 ,
	 IN2 := 150 ,
	 ENO => LE_ENO_13731  );
REAL_TO_DINT_OUT_13743 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p2var1_Tag2999 ,
	 ENO => REAL_TO_DINT_ENO_13743  );
LE_OUT_13748 := LE( 
	 EN := True ,
	 IN1 := REAL_TO_DINT_OUT_13743 ,
	 IN2 := 1 ,
	 ENO => LE_ENO_13748  );
AND_OUT_13754 := AND( 
	 EN := True ,
	 IN1 := LE_OUT_13731 ,
	 IN2 := LE_OUT_13748 ,
	 ENO => AND_ENO_13754  );
dnp_phase1pumpag2 := AND_OUT_13754 ;
REAL_TO_DINT_OUT_13769 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p2var1_Tag3029 ,
	 ENO => REAL_TO_DINT_ENO_13769  );
LE_OUT_13776 := LE( 
	 EN := True ,
	 IN1 := REAL_TO_DINT_OUT_13769 ,
	 IN2 := 150 ,
	 ENO => LE_ENO_13776  );
REAL_TO_DINT_OUT_13788 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p2var1_Tag3001 ,
	 ENO => REAL_TO_DINT_ENO_13788  );
LE_OUT_13793 := LE( 
	 EN := True ,
	 IN1 := REAL_TO_DINT_OUT_13788 ,
	 IN2 := 1 ,
	 ENO => LE_ENO_13793  );
AND_OUT_13801 := AND( 
	 EN := True ,
	 IN1 := LE_OUT_13776 ,
	 IN2 := LE_OUT_13793 ,
	 ENO => AND_ENO_13801  );
dnp_phase2pumpag2 := AND_OUT_13801 ;
REAL_TO_DINT_OUT_13815 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p2var1_Tag3031 ,
	 ENO => REAL_TO_DINT_ENO_13815  );
LE_OUT_13822 := LE( 
	 EN := True ,
	 IN1 := REAL_TO_DINT_OUT_13815 ,
	 IN2 := 150 ,
	 ENO => LE_ENO_13822  );
REAL_TO_DINT_OUT_13835 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p2var1_Tag3003 ,
	 ENO => REAL_TO_DINT_ENO_13835  );
LE_OUT_13840 := LE( 
	 EN := True ,
	 IN1 := REAL_TO_DINT_OUT_13835 ,
	 IN2 := 1 ,
	 ENO => LE_ENO_13840  );
AND_OUT_13848 := AND( 
	 EN := True ,
	 IN1 := LE_OUT_13822 ,
	 IN2 := LE_OUT_13840 ,
	 ENO => AND_ENO_13848  );
dnp_phase3pumpag3 := AND_OUT_13848 ;
dnp2_i1pumpag2 := REAL_TO_DINT_OUT_13304 ;
dnp2_i2pumpag2 := REAL_TO_DINT_OUT_13293 ;
dnp2_i3pumpag2 := REAL_TO_DINT_OUT_13322 ;
dnp2_v1pumpag2 := REAL_TO_DINT_OUT_13315 ;
dnp2_v2pumpag2 := REAL_TO_DINT_OUT_13331 ;
dnp2_v3pumpag2 := REAL_TO_DINT_OUT_13342 ;
dnp2_V12pumpag2 := REAL_TO_DINT_OUT_13364 ;
dnp2_V23pumpag2 := REAL_TO_DINT_OUT_13353 ;
dnp2_V31pumpag2 := REAL_TO_DINT_OUT_13375 ;
dnp2_p1pumpag2 := REAL_TO_DINT_OUT_13386 ;
dnp2_p2pumpag2 := REAL_TO_DINT_OUT_13399 ;
dnp2_p3pumpag2 := REAL_TO_DINT_OUT_13435 ;
dnp2_q1pumpag2 := REAL_TO_DINT_OUT_13409 ;
dnp2_q2pumpag2 := REAL_TO_DINT_OUT_13447 ;
dnp2_q3pumpag2 := REAL_TO_DINT_OUT_13474 ;
dnp2_s1pumpag2 := REAL_TO_DINT_OUT_13485 ;
dnp2_s2pumpag2 := REAL_TO_DINT_OUT_13511 ;
dnp2_s3pumpag2 := REAL_TO_DINT_OUT_13522 ;
dnp2_PF1pumpag2 := REAL_TO_DINT_OUT_13538 ;
dnp2_PF2pumpag2 := REAL_TO_DINT_OUT_13626 ;
dnp2_PF3pumpag2 := REAL_TO_DINT_OUT_13599 ;
dnp2_Pavpumpag2 := REAL_TO_DINT_OUT_13569 ;
dnp2_Qavpumpag2 := REAL_TO_DINT_OUT_13579 ;
dnp2_Savpumpag2 := REAL_TO_DINT_OUT_13590 ;
dnp2_PFavpumpag2 := REAL_TO_DINT_OUT_13695 ;
dnp2_FREQpumpag2 := REAL_TO_DINT_OUT_13668 ;
dnp2_phase1pumpag2 := AND_OUT_13754 ;
dnp2_phase2pumpag2 := AND_OUT_13801 ;
dnp2_phase3pumpag3 := AND_OUT_13848 ;
REAL_TO_DINT_OUT_8574 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p3var1_Tag3027 ,
	 ENO => REAL_TO_DINT_ENO_8574  );
REAL_TO_DINT_OUT_8585 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p3var1_Tag3001 ,
	 ENO => REAL_TO_DINT_ENO_8585  );
dnp_i2pumpag3 := REAL_TO_DINT_OUT_8585 ;
REAL_TO_DINT_OUT_8596 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p3var2_Tag3059 ,
	 ENO => REAL_TO_DINT_ENO_8596  );
dnp_Pavpumpag3 := REAL_TO_DINT_OUT_8596 ;
REAL_TO_DINT_OUT_8617 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p3var2_Tag3075 ,
	 ENO => REAL_TO_DINT_ENO_8617  );
dnp_Savpumpag3 := REAL_TO_DINT_OUT_8617 ;
LE_OUT_8626 := LE( 
	 EN := True ,
	 IN1 := REAL_TO_DINT_OUT_8574 ,
	 IN2 := 150 ,
	 ENO => LE_ENO_8626  );
REAL_TO_DINT_OUT_8639 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p3var1_Tag3029 ,
	 ENO => REAL_TO_DINT_ENO_8639  );
LE_OUT_8646 := LE( 
	 EN := True ,
	 IN1 := REAL_TO_DINT_OUT_8639 ,
	 IN2 := 150 ,
	 ENO => LE_ENO_8646  );
REAL_TO_DINT_OUT_8659 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p3var1_Tag3031 ,
	 ENO => REAL_TO_DINT_ENO_8659  );
LE_OUT_8666 := LE( 
	 EN := True ,
	 IN1 := REAL_TO_DINT_OUT_8659 ,
	 IN2 := 150 ,
	 ENO => LE_ENO_8666  );
REAL_TO_DINT_OUT_8678 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p3var1_Tag2999 ,
	 ENO => REAL_TO_DINT_ENO_8678  );
dnp_i1pumpag3 := REAL_TO_DINT_OUT_8678 ;
REAL_TO_DINT_OUT_8689 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p3var1_Tag3027 ,
	 ENO => REAL_TO_DINT_ENO_8689  );
dnp_v1pumpag3 := REAL_TO_DINT_OUT_8689 ;
REAL_TO_DINT_OUT_8700 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p3var1_Tag3021 ,
	 ENO => REAL_TO_DINT_ENO_8700  );
dnp_V23pumpag3 := REAL_TO_DINT_OUT_8700 ;
REAL_TO_DINT_OUT_8711 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p3var1_Tag3023 ,
	 ENO => REAL_TO_DINT_ENO_8711  );
dnp_V31pumpag3 := REAL_TO_DINT_OUT_8711 ;
REAL_TO_DINT_OUT_8722 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p3var1_Tag3019 ,
	 ENO => REAL_TO_DINT_ENO_8722  );
dnp_V12pumpag3 := REAL_TO_DINT_OUT_8722 ;
REAL_TO_DINT_OUT_8733 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p3var2_Tag3055 ,
	 ENO => REAL_TO_DINT_ENO_8733  );
dnp_p2pumpag3 := REAL_TO_DINT_OUT_8733 ;
REAL_TO_DINT_OUT_8744 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p3var2_Tag3053 ,
	 ENO => REAL_TO_DINT_ENO_8744  );
dnp_p1pumpag3 := REAL_TO_DINT_OUT_8744 ;
REAL_TO_DINT_OUT_8785 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p3var2_Tag3071 ,
	 ENO => REAL_TO_DINT_ENO_8785  );
dnp_s2pumpag3 := REAL_TO_DINT_OUT_8785 ;
REAL_TO_DINT_OUT_8796 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p3var2_Tag3073 ,
	 ENO => REAL_TO_DINT_ENO_8796  );
dnp_s3pumpag3 := REAL_TO_DINT_OUT_8796 ;
REAL_TO_DINT_OUT_8807 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p3var2_Tag3069 ,
	 ENO => REAL_TO_DINT_ENO_8807  );
dnp_s1pumpag3 := REAL_TO_DINT_OUT_8807 ;
REAL_TO_DINT_OUT_8818 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p3var1_Tag2999 ,
	 ENO => REAL_TO_DINT_ENO_8818  );
LE_OUT_8823 := LE( 
	 EN := True ,
	 IN1 := REAL_TO_DINT_OUT_8818 ,
	 IN2 := 1 ,
	 ENO => LE_ENO_8823  );
AND_OUT_8829 := AND( 
	 EN := True ,
	 IN1 := LE_OUT_8626 ,
	 IN2 := LE_OUT_8823 ,
	 ENO => AND_ENO_8829  );
dnp_phase1pumpag3 := AND_OUT_8829 ;
REAL_TO_DINT_OUT_8839 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p3var1_Tag3001 ,
	 ENO => REAL_TO_DINT_ENO_8839  );
LE_OUT_8844 := LE( 
	 EN := True ,
	 IN1 := REAL_TO_DINT_OUT_8839 ,
	 IN2 := 1 ,
	 ENO => LE_ENO_8844  );
AND_OUT_8852 := AND( 
	 EN := True ,
	 IN1 := LE_OUT_8646 ,
	 IN2 := LE_OUT_8844 ,
	 ENO => AND_ENO_8852  );
dnp_phase2pumpag3 := AND_OUT_8852 ;
REAL_TO_DINT_OUT_8863 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p3var1_Tag3003 ,
	 ENO => REAL_TO_DINT_ENO_8863  );
LE_OUT_8868 := LE( 
	 EN := True ,
	 IN1 := REAL_TO_DINT_OUT_8863 ,
	 IN2 := 1 ,
	 ENO => LE_ENO_8868  );
AND_OUT_8876 := AND( 
	 EN := True ,
	 IN1 := LE_OUT_8666 ,
	 IN2 := LE_OUT_8868 ,
	 ENO => AND_ENO_8876  );
dnp_phase3pumpag3 := AND_OUT_8876 ;
REAL_TO_DINT_OUT_8886 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p3var1_Tag3003 ,
	 ENO => REAL_TO_DINT_ENO_8886  );
dnp_I3pumpag3 := REAL_TO_DINT_OUT_8886 ;
DINT_TO_REAL_OUT_8902 := DINT_TO_REAL( 
	 EN := True ,
	 IN := 100 ,
	 ENO => DINT_TO_REAL_ENO_8902  );
MUL_OUT_8896 := MUL( 
	 EN := True ,
	 IN1 := rio_p3var2_Tag3081 ,
	 IN2 := DINT_TO_REAL_OUT_8902 ,
	 ENO => MUL_ENO_8896  );
REAL_TO_DINT_OUT_8891 := REAL_TO_DINT( 
	 EN := True ,
	 IN := MUL_OUT_8896 ,
	 ENO => REAL_TO_DINT_ENO_8891  );
dnp_PF3pumpag3 := REAL_TO_DINT_OUT_8891 ;
DINT_TO_REAL_OUT_8929 := DINT_TO_REAL( 
	 EN := True ,
	 IN := 100 ,
	 ENO => DINT_TO_REAL_ENO_8929  );
MUL_OUT_8923 := MUL( 
	 EN := True ,
	 IN1 := rio_p3var2_Tag3079 ,
	 IN2 := DINT_TO_REAL_OUT_8929 ,
	 ENO => MUL_ENO_8923  );
REAL_TO_DINT_OUT_8918 := REAL_TO_DINT( 
	 EN := True ,
	 IN := MUL_OUT_8923 ,
	 ENO => REAL_TO_DINT_ENO_8918  );
dnp_PF2pumpag3 := REAL_TO_DINT_OUT_8918 ;
DINT_TO_REAL_OUT_8956 := DINT_TO_REAL( 
	 EN := True ,
	 IN := 100 ,
	 ENO => DINT_TO_REAL_ENO_8956  );
MUL_OUT_8950 := MUL( 
	 EN := True ,
	 IN1 := rio_p3var2_Tag3077 ,
	 IN2 := DINT_TO_REAL_OUT_8956 ,
	 ENO => MUL_ENO_8950  );
REAL_TO_DINT_OUT_8945 := REAL_TO_DINT( 
	 EN := True ,
	 IN := MUL_OUT_8950 ,
	 ENO => REAL_TO_DINT_ENO_8945  );
dnp_PF1pumpag3 := REAL_TO_DINT_OUT_8945 ;
DINT_TO_REAL_OUT_8971 := DINT_TO_REAL( 
	 EN := True ,
	 IN := 1 ,
	 ENO => DINT_TO_REAL_ENO_8971  );
MUL_OUT_8965 := MUL( 
	 EN := True ,
	 IN1 := rio_p3var2_Tag3065 ,
	 IN2 := DINT_TO_REAL_OUT_8971 ,
	 ENO => MUL_ENO_8965  );
REAL_TO_DINT_OUT_8764 := REAL_TO_DINT( 
	 EN := True ,
	 IN := MUL_OUT_8965 ,
	 ENO => REAL_TO_DINT_ENO_8764  );
dnp_q3pumpag3 := REAL_TO_DINT_OUT_8764 ;
DINT_TO_REAL_OUT_8986 := DINT_TO_REAL( 
	 EN := True ,
	 IN := 1 ,
	 ENO => DINT_TO_REAL_ENO_8986  );
MUL_OUT_8980 := MUL( 
	 EN := True ,
	 IN1 := rio_p3var2_Tag3063 ,
	 IN2 := DINT_TO_REAL_OUT_8986 ,
	 ENO => MUL_ENO_8980  );
REAL_TO_DINT_OUT_8754 := REAL_TO_DINT( 
	 EN := True ,
	 IN := MUL_OUT_8980 ,
	 ENO => REAL_TO_DINT_ENO_8754  );
dnp_q2pumpag3 := REAL_TO_DINT_OUT_8754 ;
DINT_TO_REAL_OUT_9001 := DINT_TO_REAL( 
	 EN := True ,
	 IN := 1 ,
	 ENO => DINT_TO_REAL_ENO_9001  );
MUL_OUT_8995 := MUL( 
	 EN := True ,
	 IN1 := rio_p3var2_Tag3061 ,
	 IN2 := DINT_TO_REAL_OUT_9001 ,
	 ENO => MUL_ENO_8995  );
REAL_TO_DINT_OUT_8774 := REAL_TO_DINT( 
	 EN := True ,
	 IN := MUL_OUT_8995 ,
	 ENO => REAL_TO_DINT_ENO_8774  );
dnp_q1pumpag3 := REAL_TO_DINT_OUT_8774 ;
DINT_TO_REAL_OUT_9016 := DINT_TO_REAL( 
	 EN := True ,
	 IN := 1 ,
	 ENO => DINT_TO_REAL_ENO_9016  );
MUL_OUT_9010 := MUL( 
	 EN := True ,
	 IN1 := rio_p3var2_Tag3067 ,
	 IN2 := DINT_TO_REAL_OUT_9016 ,
	 ENO => MUL_ENO_9010  );
REAL_TO_DINT_OUT_8606 := REAL_TO_DINT( 
	 EN := True ,
	 IN := MUL_OUT_9010 ,
	 ENO => REAL_TO_DINT_ENO_8606  );
dnp_Qavpumpag3 := REAL_TO_DINT_OUT_8606 ;
DINT_TO_REAL_OUT_9069 := DINT_TO_REAL( 
	 EN := True ,
	 IN := 100 ,
	 ENO => DINT_TO_REAL_ENO_9069  );
MUL_OUT_9063 := MUL( 
	 EN := True ,
	 IN1 := rio_p3var3_Tag3109 ,
	 IN2 := DINT_TO_REAL_OUT_9069 ,
	 ENO => MUL_ENO_9063  );
REAL_TO_DINT_OUT_9058 := REAL_TO_DINT( 
	 EN := True ,
	 IN := MUL_OUT_9063 ,
	 ENO => REAL_TO_DINT_ENO_9058  );
dnp_FREQpumpag3 := REAL_TO_DINT_OUT_9058 ;
DINT_TO_REAL_OUT_9096 := DINT_TO_REAL( 
	 EN := True ,
	 IN := 100 ,
	 ENO => DINT_TO_REAL_ENO_9096  );
MUL_OUT_9090 := MUL( 
	 EN := True ,
	 IN1 := rio_p3var2_Tag3083 ,
	 IN2 := DINT_TO_REAL_OUT_9096 ,
	 ENO => MUL_ENO_9090  );
REAL_TO_DINT_OUT_9085 := REAL_TO_DINT( 
	 EN := True ,
	 IN := MUL_OUT_9090 ,
	 ENO => REAL_TO_DINT_ENO_9085  );
dnp_PFavpumpag3 := REAL_TO_DINT_OUT_9085 ;
REAL_TO_DINT_OUT_9107 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p3var1_Tag3029 ,
	 ENO => REAL_TO_DINT_ENO_9107  );
dnp_v2pumpag3 := REAL_TO_DINT_OUT_9107 ;
REAL_TO_DINT_OUT_9118 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p3var1_Tag3031 ,
	 ENO => REAL_TO_DINT_ENO_9118  );
dnp_v3pumpag3 := REAL_TO_DINT_OUT_9118 ;
REAL_TO_DINT_OUT_9129 := REAL_TO_DINT( 
	 EN := True ,
	 IN := rio_p3var2_Tag3057 ,
	 ENO => REAL_TO_DINT_ENO_9129  );
dnp_p3pumpag3 := REAL_TO_DINT_OUT_9129 ;
dnp2_i1pumpag3 := REAL_TO_DINT_OUT_8678 ;
dnp2_i2pumpag3 := REAL_TO_DINT_OUT_8585 ;
dnp2_i3pumpag3 := REAL_TO_DINT_OUT_8886 ;
dnp2_v1pumpag3 := REAL_TO_DINT_OUT_8689 ;
dnp2_v2pumpag3 := REAL_TO_DINT_OUT_9107 ;
dnp2_v3pumpag3 := REAL_TO_DINT_OUT_9118 ;
dnp2_V12pumpag3 := REAL_TO_DINT_OUT_8722 ;
dnp2_V23pumpag3 := REAL_TO_DINT_OUT_8700 ;
dnp2_V31pumpag3 := REAL_TO_DINT_OUT_8711 ;
dnp2_p1pumpag3 := REAL_TO_DINT_OUT_8744 ;
dnp2_p2pumpag3 := REAL_TO_DINT_OUT_8733 ;
dnp2_p3pumpag3 := REAL_TO_DINT_OUT_9129 ;
dnp2_q1pumpag3 := REAL_TO_DINT_OUT_8774 ;
dnp2_q2pumpag3 := REAL_TO_DINT_OUT_8754 ;
dnp2_q3pumpag3 := REAL_TO_DINT_OUT_8764 ;
dnp2_s1pumpag3 := REAL_TO_DINT_OUT_8807 ;
dnp2_s2pumpag3 := REAL_TO_DINT_OUT_8785 ;
dnp2_s3pumpag3 := REAL_TO_DINT_OUT_8796 ;
dnp2_PF1pumpag3 := REAL_TO_DINT_OUT_8945 ;
dnp2_PF2pumpag3 := REAL_TO_DINT_OUT_8918 ;
dnp_PF3pumpag3 := REAL_TO_DINT_OUT_8891 ;
dnp2_Pavpumpag3 := REAL_TO_DINT_OUT_8596 ;
dnp2_Qavpumpag3 := REAL_TO_DINT_OUT_8606 ;
dnp2_Savpumpag3 := REAL_TO_DINT_OUT_8617 ;
dnp2_PFavpumpag3 := REAL_TO_DINT_OUT_9085 ;
dnp2_FREQpumpag3 := REAL_TO_DINT_OUT_9058 ;
dnp2_phase1pumpag3 := AND_OUT_8829 ;
dnp2_phase2pumpag3 := AND_OUT_8852 ;
dnp2_phase3pumpag3 := AND_OUT_8876 ;
SUB_OUT_13174 := SUB( 
	 EN := True ,
	 IN1 := 5100.0 ,
	 IN2 := rio_levelTank485_Tag30032 ,
	 ENO => SUB_ENO_13174  );
INT_TO_REAL_OUT_14357 := INT_TO_REAL( 
	 EN := True ,
	 IN := rio_cl_Tag4007 ,
	 ENO => INT_TO_REAL_ENO_14357  );
INT_TO_REAL_OUT_14370 := INT_TO_REAL( 
	 EN := True ,
	 IN := rio_cl_Tag4013 ,
	 ENO => INT_TO_REAL_ENO_14370  );
INT_TO_REAL_OUT_14381 := INT_TO_REAL( 
	 EN := True ,
	 IN := rio_cl_Tag4011 ,
	 ENO => INT_TO_REAL_ENO_14381  );
DIV_OUT_14388 := DIV( 
	 EN := True ,
	 IN1 := INT_TO_REAL_OUT_14357 ,
	 IN2 := 1000.0 ,
	 ENO => DIV_ENO_14388  );
dnp_cl := DIV_OUT_14388 ;
DIV_OUT_14401 := DIV( 
	 EN := True ,
	 IN1 := INT_TO_REAL_OUT_14370 ,
	 IN2 := 1000.0 ,
	 ENO => DIV_ENO_14401  );
dnp_tu := DIV_OUT_14401 ;
DIV_OUT_14412 := DIV( 
	 EN := True ,
	 IN1 := INT_TO_REAL_OUT_14381 ,
	 IN2 := 1000.0 ,
	 ENO => DIV_ENO_14412  );
dnp_th := DIV_OUT_14412 ;
dnp2_cl := DIV_OUT_14388 ;
dnp2_tu := DIV_OUT_14401 ;
dnp2_th := DIV_OUT_14412 ;
DIV_OUT_14940 := DIV( 
	 EN := True ,
	 IN1 := SUB_OUT_13174 ,
	 IN2 := 1000.0 ,
	 ENO => DIV_ENO_14940  );
dnp_rs485levelmeter := DIV_OUT_14940 ;
dnp2_rs485levelmeter := DIV_OUT_14940 ;

END_PROGRAM

CONFIGURATION Config0
RESOURCE Res0 ON PLC

VAR_GLOBAL
	I : ARRAY [0..255] OF LWORD;
	Q : ARRAY [0..255] OF LWORD;
	M : ARRAY [0..255] OF LWORD;
	rio_p1var1_Tag2999 : REAL;(*Input*)
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
	sql_BOOLTag0_2 : BOOL;(*Output*)
	sql_BOOLTag0_3 : BOOL;(*Output*)
	sql_BOOLTag1 : BOOL;(*Output*)
	sql_SINTTag0 : SINT;(*Output*)
	sql_LREALTag0 : LREAL;(*Output*)
	sql_UINTTag0 : UINT;(*Output*)
	sql_REALTag0 : REAL;(*Output*)
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
PROGRAM INSTANCE_1 WITH Task1 : POU_1;
END_RESOURCE
END_CONFIGURATION
