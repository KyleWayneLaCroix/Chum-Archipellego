; Pokémon traded from RBY do not have held items, so GSC usually interprets the
; catch rate as an item. However, if the catch rate appears in this table, the
; item associated with the table entry is used instead.

TimeCapsule_CatchRateItems:
	db ITEM_A6, LEFTOVERS
	db ITEM_A7, BITTER_BERRY
	db ITEM_A8, GOLD_BERRY
	db ITEM_A9, BERRY
	db ITEM_AA, BERRY
	db ITEM_AB, BERRY
	db ITEM_AC, BERRY
	db ITEM_AD, BERRY
	db ITEM_AE, BERRY
	db ITEM_AF, BERRY
	db ITEM_B0, BERRY
	db -1,      BERRY
	db 0 ; end
