 db CRYPTIID

	db  65, 150, 130,  50,  50,  85
	;   hp  atk  def  spd  sat  sdf

	db GHOST, ROCK ; type
	db 45 ; catch rate
	db 234 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/cryptiid/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm BODY_SLAM, DIG, GIGA_IMPACT, ROCK_SLIDE, SANDSTORM, DOUBLE_EDGE, EARTHQUAKE, HEADBUTT, HIDDEN_POWER, IRON_HEAD, OMINOUS_WIND, RETURN, SHADOW_BALL, SUBMISSION, SUBSTITUTE, SWIFT
	; end
