 db LARVITAR

	db  50,  64,  50,  41,  45,  50
	;   hp  atk  def  spd  sat  sdf

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 60 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/larvitar/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm BITE, BODY_SLAM, DARK_PULSE, DIG, EARTHQUAKE, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, IRON_HEAD, RAIN_DANCE, RETURN, ROCK_SLIDE, SANDSTORM, SLEEP_TALK, SUBSTITUTE, SUNNY_DAY, TOXIC
	; end
