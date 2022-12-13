 db LOTAD

	db  40,  30,  30,  30,  40,  50
	;   hp  atk  def  spd  sat  sdf

	db WATER, GRASS ; type
	db 255 ; catch rate
	db 44 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/lotad/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_WATER_1, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm BLIZZARD, BODY_SLAM, ENERGY_BALL, FLASH, GIGA_DRAIN, HAIL, HIDDEN_POWER, ICE_BEAM, RAIN_DANCE, RETURN, SLEEP_TALK, SUBSTITUTE, SUNNY_DAY, SURF, TOXIC, WATER_PULSE, WHIRLPOOL, ZEN_HEADBUTT
	; end
