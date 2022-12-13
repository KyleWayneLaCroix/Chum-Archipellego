 db LINOONE

	db  78,  70,  61, 100,  50,  61
	;   hp  atk  def  spd  sat  sdf

	db DARK, NORMAL ; type
	db 90 ; catch rate
	db 147 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/linoone/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm BLIZZARD, BODY_SLAM, CUT, DIG, DOUBLE_EDGE, GIGA_IMPACT, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, HYPER_VOICE, ICE_BEAM, PLAY_ROUGH, RAIN_DANCE, RETURN, SHADOW_BALL, SHOCK_WAVE, SLEEP_TALK, STRENGTH, SUBSTITUTE, SUNNY_DAY, SURF, SWIFT, THUNDER, THUNDERBOLT, TOXIC, WATER_PULSE, WHIRLPOOL
	; end
