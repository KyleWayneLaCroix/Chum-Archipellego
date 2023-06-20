 db DEERLING

	db  60,  60,  50,  75,  40,  50
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, GRASS ; type
	db 200 ; catch rate
	db 67 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/deerling/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm DOUBLE_EDGE, ENERGY_BALL, FLASH, HIDDEN_POWER, RAIN_DANCE, RETURN, SHADOW_BALL, SLEEP_TALK, SOLARBEAM, SUBSTITUTE, SUNNY_DAY, TOXIC
	; end
