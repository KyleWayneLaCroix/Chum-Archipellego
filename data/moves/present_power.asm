PresentPower:
	; chance, power
	db 40 percent,     65 ; 40% chance
	db 70 percent + 1, 80 ; 30% chance
	db 85 percent,     95 ; 15% chance
	db 95 percent,    120 ; 10%
	db -1                 ; 5% chance to heal instead
