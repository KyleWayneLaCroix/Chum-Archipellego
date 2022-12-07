 db DELCATTY

	db  70,  65,  65,  90,  55,  55
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 60 ; catch rate
	db 140 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F75 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/delcatty/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm BLIZZARD, CALM_MIND, DIG, FLASH, GIGA_IMPACT, HIDDEN_POWER, HYPER_BEAM, ICE_BEAM, RAIN_DANCE, RETURN, SHADOW_BALL, SHOCK_WAVE, SLEEP_TALK, STRENGTH, SUBSTITUTE, SUNNY_DAY, THUNDER, THUNDERBOLT, TOXIC, WATER_PULSE
	; end
