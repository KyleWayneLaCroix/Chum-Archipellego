 db LUDICOLO

	db  80,  70,  70,  70,  90, 100
	;   hp  atk  def  spd  sat  sdf

	db WATER, GRASS ; type
	db 45 ; catch rate
	db 216 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/ludicolo/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_WATER_1, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm BLIZZARD, BODY_SLAM, ENERGY_BALL, FIRE_PUNCH, FLASH, GIGA_DRAIN, GIGA_IMPACT, HAIL, HIDDEN_POWER, HYDRO_PUMP, HYPER_BEAM, HYPER_VOICE, ICE_BEAM, ICE_PUNCH, RAIN_DANCE, RETURN, SLEEP_TALK, STRENGTH, SUBSTITUTE, SUNNY_DAY, SURF, TOXIC, WATER_PULSE, WATERFALL, WHIRLPOOL, ZEN_HEADBUTT
	; end
