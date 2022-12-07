 db GLACEON

	db  65,  60, 110,  65, 130,  95
	;   hp  atk  def  spd  sat  sdf

	db ICE, ICE ; type
	db 45 ; catch rate
	db 184 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 35 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/glaceon/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm BITE, BLIZZARD, BLIZZARD, BODY_SLAM, DIG, DOUBLE_EDGE, GIGA_IMPACT, HAIL, HAIL, HIDDEN_POWER, HYPER_BEAM, HYPER_VOICE, ICE_BEAM, RAIN_DANCE, RETURN, SHADOW_BALL, SLEEP_TALK, STRENGTH, SUBSTITUTE, SUNNY_DAY, SWIFT, SWIFT, TOXIC, WATER_PULSE
	; end
