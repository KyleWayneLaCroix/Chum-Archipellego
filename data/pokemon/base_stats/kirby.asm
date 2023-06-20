 db KIRBY

	db  95,  70,  73,  60,  95,  90
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 50 ; catch rate
	db 158 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/kirby/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm BODY_SLAM, PLAY_ROUGH, DOUBLE_EDGE, FIRE_PUNCH, GIGA_DRAIN, GIGA_IMPACT, ICE_BEAM, ICE_PUNCH, MOONBLAST, NIGHT_SLASH, OMINOUS_WIND, POISON_JAB, SLEEP_TALK, PSYBEAM, RETURN, ROCK_SLIDE, SANDSTORM, SHADOW_BALL, SHOCK_WAVE, SIGNAL_BEAM, SOLARBEAM, SUBMISSION, SUBSTITUTE, SWIFT, THUNDERBOLT, THUNDERPUNCH, TOXIC, ZEN_HEADBUTT, FLY
	; end
