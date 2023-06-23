 db BAD_EGG

	db  85,  50, 100,  85, 130, 120
	;   hp  atk  def  spd  sat  sdf

	db POISON, GLITCH ; type
	db 30 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/bad_egg/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm ZEN_HEADBUTT, PSYCHIC_M, SUBSTITUTE, SIGNAL_BEAM, BODY_SLAM, DOUBLE_EDGE, EARTHQUAKE, ENERGY_BALL, GIGA_IMPACT, GIGA_DRAIN, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, IRON_HEAD, MOONBLAST, SLEEP_TALK, RETURN, ROCK_SLIDE, TOXIC, POISON_JAB
	; end
