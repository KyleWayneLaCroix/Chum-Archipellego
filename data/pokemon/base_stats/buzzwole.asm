 db BUZZWOLE

	db 107, 139, 139,  79,  53,  53
	;   hp  atk  def  spd  sat  sdf

	db BUG, FIGHTING ; type
	db 45 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F0 ; gender ratio
	db 100 ; unknown 1
	db 120 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/buzzwole/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm BODY_SLAM, EARTHQUAKE, GIGA_IMPACT, HIDDEN_POWER, ICE_PUNCH, ICE_PUNCH, IRON_HEAD, POISON_JAB, RETURN, ROCK_SLIDE, SLEEP_TALK, SUBSTITUTE, THUNDERPUNCH, TOXIC
	; end
