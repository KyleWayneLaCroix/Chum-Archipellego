 db ORICORIO_SENSU

	db  75,  70,  70,  93,  98,  70
	;   hp  atk  def  spd  sat  sdf

	db GHOST, FLYING ; type
	db 120 ; catch rate
	db 167 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F75 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/oricorio_sensu/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm SHADOW_BALL, CALM_MIND, FLY, HIDDEN_POWER, RETURN, SANDSTORM, SLEEP_TALK, SUBSTITUTE, TOXIC
	; end
