 db LIEPARD

	db  64,  88,  50, 106,  88,  50
	;   hp  atk  def  spd  sat  sdf

	db DARK, DARK ; type
	db 90 ; catch rate
	db 156 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/liepard/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm CUT, DARK_PULSE, GIGA_IMPACT, HIDDEN_POWER, HYPER_BEAM, HYPER_VOICE, NIGHT_SLASH, PLAY_ROUGH, RAIN_DANCE, RETURN, SHADOW_BALL, SLEEP_TALK, SUBSTITUTE, SUNNY_DAY, SWIFT, TOXIC, ZEN_HEADBUTT
	; end
