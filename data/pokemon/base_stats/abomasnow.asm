 db ABOMASNOW

	db  90,  92,  75,  60,  92,  85
	;   hp  atk  def  spd  sat  sdf

	db GRASS, ICE ; type
	db 60 ; catch rate
	db 173 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/abomasnow/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm BLIZZARD, BLIZZARD, EARTHQUAKE, ENERGY_BALL, FLASH, GIGA_DRAIN, GIGA_IMPACT, HAIL, HIDDEN_POWER, HYPER_BEAM, ICE_BEAM, ICE_PUNCH, ICE_PUNCH, RAIN_DANCE, RETURN, ROCK_SLIDE, SHADOW_BALL, SLEEP_TALK, STRENGTH, SUBSTITUTE, TOXIC, WATER_PULSE
	; end
