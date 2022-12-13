 db GRIMER

	db  80,  80,  50,  25,  40,  50
	;   hp  atk  def  spd  sat  sdf

	db POISON, DARK ; type
	db 190 ; catch rate
	db 65 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/grimer/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm BODY_SLAM, DIG, FIRE_BLAST, FIRE_PUNCH, FLAMETHROWER, GIGA_DRAIN, HEADBUTT, HIDDEN_POWER, ICE_PUNCH, POISON_JAB, RAIN_DANCE, RETURN, ROCK_SLIDE, SHADOW_BALL, SHOCK_WAVE, SLEEP_TALK, STRENGTH, SUBSTITUTE, SUNNY_DAY, THUNDER, THUNDERBOLT, TOXIC
	; end
