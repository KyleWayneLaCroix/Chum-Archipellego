 db BOUFFALANT

	db  95, 110,  95,  55,  40,  95
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 172 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/bouffalant/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm BODY_SLAM, CUT, EARTHQUAKE, GIGA_IMPACT, HIDDEN_POWER, IRON_HEAD, POISON_JAB, RAIN_DANCE, RETURN, ROCK_SLIDE, SLEEP_TALK, STRENGTH, SUBMISSION, SUBSTITUTE, SUNNY_DAY, SURF, TOXIC, ZEN_HEADBUTT
	; end
