 db MAWILE

	db  50,  85,  85,  50,  55,  55
	;   hp  atk  def  spd  sat  sdf

	db STEEL, FAIRY ; type
	db 45 ; catch rate
	db 133 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/mawile/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm BITE, BODY_SLAM, DARK_PULSE, FIRE_BLAST, FLAMETHROWER, GIGA_IMPACT, HIDDEN_POWER, HYPER_BEAM, ICE_BEAM, ICE_PUNCH, IRON_HEAD, PLAY_ROUGH, RAIN_DANCE, RETURN, ROCK_SLIDE, SANDSTORM, SHADOW_BALL, SLEEP_TALK, STRENGTH, SUBSTITUTE, SUNNY_DAY, TOXIC
	; end
