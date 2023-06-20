 db YANMEGA

	db  86,  76,  86,  95, 116,  56
	;   hp  atk  def  spd  sat  sdf

	db BUG, FLYING ; type
	db 30 ; catch rate
	db 180 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/yanmega/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm FLASH, GIGA_DRAIN, GIGA_IMPACT, HIDDEN_POWER, HYPER_BEAM, HYPER_VOICE, NIGHT_SLASH, PSYCHIC_M, RETURN, SHADOW_BALL, SLEEP_TALK, SUBSTITUTE, SUNNY_DAY, THUNDERPUNCH, TOXIC, FLY
	; end
