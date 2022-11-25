; used in data/pokemon/base_stats/*.asm
MACRO tmhm
	; initialize bytes to 0
	for n, (NUM_TM_HM_TUTOR + 7) / 8
		DEF _tm{d:n} = 0
	endr
	; set bits of bytes
	rept _NARG
		if DEF(\1_TMNUM)
		DEF n = (\1_TMNUM - 1) / 8
		DEF i = (\1_TMNUM - 1) % 8
		DEF _tm{d:n} |= 1 << i
		else
			fail "\1 is not a TM, HM, or tutor move"
		endc
		shift
	endr
	; output bytes
	for n, (NUM_TM_HM_TUTOR + 7) / 8
		db _tm{d:n}
	endr
ENDM

BaseData::
	table_width BASE_DATA_SIZE, BaseData
<baseStats>
	assert_table_length NUM_POKEMON
