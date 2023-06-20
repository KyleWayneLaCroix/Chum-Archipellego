 db AMAURA

	db  77,  59,  50,  46,  67,  63
	;   hp  atk  def  spd  sat  sdf

	db ROCK, ICE ; type
	db 65 ; catch rate
	db 72 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 30 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/amaura/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm BLIZZARD, BODY_SLAM, CALM_MIND, DARK_PULSE, FLASH, HAIL, HIDDEN_POWER, HYPER_BEAM, HYPER_VOICE, ICE_BEAM, IRON_HEAD, RAIN_DANCE, RETURN, ROCK_SLIDE, SANDSTORM, SLEEP_TALK, SUBSTITUTE, THUNDERBOLT, TOXIC, ZEN_HEADBUTT
	; end
