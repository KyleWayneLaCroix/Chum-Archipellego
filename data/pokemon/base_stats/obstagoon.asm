 db OBSTAGOON

	db  93,  90, 101,  95,  60,  81
	;   hp  atk  def  spd  sat  sdf

	db DARK, NORMAL ; type
	db 45 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/obstagoon/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm BLIZZARD, BODY_SLAM, DIG, DOUBLE_EDGE, FIRE_PUNCH, GIGA_IMPACT, HEADBUTT, HYPER_BEAM, HYPER_VOICE, ICE_BEAM, ICE_PUNCH, NIGHT_SLASH, RAIN_DANCE, SHADOW_BALL, SLEEP_TALK, SUBMISSION, SUBSTITUTE, SUNNY_DAY, SURF, SWIFT, THUNDER, THUNDERBOLT, WHIRLPOOL
	; end
