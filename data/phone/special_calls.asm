MACRO specialcall
; condition, contact, script
	dw \1
	db \2
	dba \3
ENDM

SpecialPhoneCallList:
; entries correspond to SPECIALCALL_* constants
	table_width SPECIALCALL_SIZE, SpecialPhoneCallList
	specialcall SpecialCallOnlyWhenOutside, PHONE_00,      PhoneScript_AnswerPhone_Male
	specialcall SpecialCallOnlyWhenOutside, PHONE_00,      PhoneScript_AnswerPhone_Male
	specialcall SpecialCallOnlyWhenOutside, PHONE_00,      PhoneScript_AnswerPhone_Male
	specialcall SpecialCallOnlyWhenOutside, PHONE_00,      PhoneScript_AnswerPhone_Male
	specialcall SpecialCallWhereverYouAre,  PHONE_00,      PhoneScript_AnswerPhone_Male
	specialcall SpecialCallWhereverYouAre,  PHONE_00, PhoneScript_AnswerPhone_Male
	specialcall SpecialCallWhereverYouAre,  PHONE_00,      PhoneScript_AnswerPhone_Male
	specialcall SpecialCallOnlyWhenOutside, PHONE_00,      PhoneScript_AnswerPhone_Male
	assert_table_length NUM_SPECIALCALLS
