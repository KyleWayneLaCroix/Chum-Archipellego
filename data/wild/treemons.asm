TreeMons:
; entries correspond to TREEMON_SET_* constants
	table_width 2, TreeMons
	dw TreeMonSet_City
	dw TreeMonSet_Canyon
	dw TreeMonSet_Town
	dw TreeMonSet_Route
	dw TreeMonSet_Kanto
	dw TreeMonSet_Lake
	dw TreeMonSet_Forest
	dw TreeMonSet_Rock
	assert_table_length NUM_TREEMON_SETS
	dw TreeMonSet_City ; unused

; Two tables each (common, rare).
; Structure:
;	db  %, species, level

TreeMonSet_City:
; common
	db 50, ROOKIDEE, 10
	db 15, ROOKIDEE, 10
	db 15, GRUBBIN, 10
	db 10, EMOLGA, 10
	db 5, SCIZOR, 10
	db 4, CHATOT, 10
	db -1
; rare
	db 50, CHATOT, 10
	db 15, GRUBBIN, 10
	db 15, GRUBBIN, 10
	db 10, EMOLGA, 10
	db 5, ROOKIDEE, 10
	db 4, SCIZOR, 10
	db -1

TreeMonSet_Canyon:
; common
	db 50, WOOBAT, 10
	db 15, TEDDIURSA, 10
	db 15, TEDDIURSA, 10
	db 10, SIZZLIPEDE, 10
	db 5, NOIBAT, 10
	db 4, KLEAVOR, 10
	db -1
; rare
	db 50, NOIBAT, 10
	db 15, SIZZLIPEDE, 10
	db 15, SIZZLIPEDE, 10
	db 10, TEDDIURSA, 10
	db 5, WOOBAT, 10
	db 4, KLEAVOR, 10
	db -1

TreeMonSet_Town:
; common
	db 50, PIKIPEK, 10
	db 15, PIKIPEK, 10
	db 15, BLIPBUG, 10
	db 10, YUNGOOS, 10
	db 5, PIKIPEK, 10
	db 5, YANMA, 10
	db -1
; rare
	db 50, YANMA, 10
	db 15, BLIPBUG, 10
	db 15, BLIPBUG, 10
	db 10, YUNGOOS, 10
	db 5, PIKIPEK, 10
	db 5, YANMA, 10
	db -1

TreeMonSet_Route:
; common
	db 50, ROOKIDEE, 10
	db 15, YUNGOOS, 10
	db 15, PIKIPEK, 10
	db 10, STUFFUL, 10
	db 5, FARFETCHD, 10
	db 5, ORANGURU, 10
	db -1
; rare
	db 50, PIKIPEK, 10
	db 15, FARFETCHD, 10
	db 15, STUFFUL, 10
	db 10, STUFFUL, 10
	db 5, FARFETCHD, 10
	db 5, ORANGURU, 10
	db -1

TreeMonSet_Kanto:
; common
	db 50, SNOM, 10
	db 15, EMOLGA, 10
	db 15, WOOBAT, 10
	db 10, SIZZLIPEDE, 10
	db 5, SIZZLIPEDE, 10
	db 5, LITWICK, 10
	db -1
; rare
	db 50, SIZZLIPEDE, 10
	db 15, EMOLGA, 10
	db 15, NOIBAT, 10
	db 10, SNOM, 10
	db 5, SNOM, 10
	db 5, LITWICK, 10
	db -1

TreeMonSet_Lake:
; common
	db 50, ORICORIO_POM, 10
	db 15, EXEGGCUTE, 10
	db 15, DEWPIDER, 10
	db 10, YANMA, 10
	db 5, SCYTHER, 10
	db 5, FARFETCHD, 10
	db -1
; rare
	db 50, FARFETCHD, 10
	db 15, DEWPIDER, 10
	db 15, SCYTHER, 10
	db 10, YANMA, 10
	db 5, EXEGGCUTE, 10
	db 5, ORICORIO_POM, 10
	db -1

TreeMonSet_Forest:
; common
	db 50, CHERUBI, 10
	db 15, MORELULL, 10
	db 15, BOUNSWEET, 10
	db 10, FOMANTIS, 10
	db 5, FOMANTIS, 10
	db 5, SCYTHER, 10
	db -1
; rare
	db 50, BOUNSWEET, 10
	db 15, CHERUBI, 10
	db 15, MORELULL, 10
	db 10, FOMANTIS, 10
	db 5, FOMANTIS, 10
	db 5, SCYTHER, 10
	db -1

TreeMonSet_Rock:
	db 90, DWEBBLE, 15
	db 10, TIRTOUGA, 15
	db -1
