 db MAMOSWINE

	db 110, 130,  80,  80,  70,  60
	;   hp  atk  def  spd  sat  sdf

	db ICE, GROUND ; type
	db 50 ; catch rate
	db 239 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/mamoswine/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm BLIZZARD, BLIZZARD, BODY_SLAM, DIG, EARTHQUAKE, EARTHQUAKE, GIGA_IMPACT, HAIL, HAIL, HIDDEN_POWER, HYPER_BEAM, ICE_BEAM, IRON_HEAD, RAIN_DANCE, RETURN, ROCK_SLIDE, SANDSTORM, SLEEP_TALK, STRENGTH, SUBSTITUTE, TOXIC
	; end
