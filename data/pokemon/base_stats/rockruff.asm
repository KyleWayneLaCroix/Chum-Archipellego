 db ROCKRUFF

	db  45,  65,  40,  60,  30,  40
	;   hp  atk  def  spd  sat  sdf

	db ROCK, ROCK ; type
	db 190 ; catch rate
	db 56 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/rockruff/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm BITE, HIDDEN_POWER, HYPER_VOICE, IRON_HEAD, PLAY_ROUGH, RETURN, ROCK_SLIDE, ROCK_SLIDE, SLEEP_TALK, SUBSTITUTE, TOXIC, ZEN_HEADBUTT
	; end
