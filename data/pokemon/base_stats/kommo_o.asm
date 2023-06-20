 db KOMMO_O

	db  75, 110, 125,  85, 100, 105
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, FIGHTING ; type
	db 45 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/kommo_o/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_DRAGON, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, SUBMISSION, EARTHQUAKE, FIRE_PUNCH, FLAMETHROWER, GIGA_IMPACT, HIDDEN_POWER, HYPER_BEAM, HYPER_VOICE, ICE_PUNCH, IRON_HEAD, POISON_JAB, RETURN, ROCK_SLIDE, SANDSTORM, SLEEP_TALK, SUBSTITUTE, TOXIC
	; end
