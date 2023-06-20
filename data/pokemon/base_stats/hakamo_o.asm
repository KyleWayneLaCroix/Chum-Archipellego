 db HAKAMO_O

	db  55,  75,  90,  65,  65,  70
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, FIGHTING ; type
	db 45 ; catch rate
	db 147 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/hakamo_o/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_DRAGON, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, SUBMISSION, EARTHQUAKE, HIDDEN_POWER, IRON_HEAD, RETURN, ROCK_SLIDE, SANDSTORM, SLEEP_TALK, SUBSTITUTE, TOXIC
	; end
