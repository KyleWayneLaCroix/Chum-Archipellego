 db KLEAVOR

	db  70, 135,  95,  85,  45,  70
	;   hp  atk  def  spd  sat  sdf

	db BUG, ROCK ; type
	db 25 ; catch rate
	db 175 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/kleavor/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm ROCK_SLIDE, GIGA_IMPACT, HEADBUTT, SWIFT, SUBSTITUTE, HYPER_BEAM, NIGHT_SLASH, SLEEP_TALK, SUBMISSION, SANDSTORM
	; end
