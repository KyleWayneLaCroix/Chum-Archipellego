 db CHOMP

	db 150, 180, 175, 100,  20, 150
	;   hp  atk  def  spd  sat  sdf

	db STEEL, DARK ; type
	db 50 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/chomp/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm BITE, IRON_HEAD, BODY_SLAM, DIG, DOUBLE_EDGE, EARTHQUAKE, GIGA_IMPACT, HEADBUTT, HIDDEN_POWER, PLAY_ROUGH, RETURN, ROCK_SLIDE, SUBMISSION, SWIFT, ZEN_HEADBUTT, STRENGTH
	; end
