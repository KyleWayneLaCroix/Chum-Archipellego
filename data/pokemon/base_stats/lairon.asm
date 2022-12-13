 db LAIRON

	db  60,  90, 140,  40,  50,  50
	;   hp  atk  def  spd  sat  sdf

	db STEEL, ROCK ; type
	db 90 ; catch rate
	db 151 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 35 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/lairon/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm BODY_SLAM, CUT, DIG, DOUBLE_EDGE, EARTHQUAKE, HEADBUTT, HIDDEN_POWER, IRON_HEAD, RAIN_DANCE, RETURN, ROCK_SLIDE, SANDSTORM, SHOCK_WAVE, SLEEP_TALK, STRENGTH, SUBSTITUTE, SUNNY_DAY, TOXIC, WATER_PULSE
	; end
