 db REGIMAGMA

	db  80,  50, 100, 100, 200,  50
	;   hp  atk  def  spd  sat  sdf

	db ROCK, FIRE ; type
	db 20 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/regimagma/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm BODY_SLAM, CALM_MIND, DIG, DOUBLE_EDGE, EARTHQUAKE, FIRE_BLAST, FIRE_PUNCH, FLAMETHROWER, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, IRON_HEAD, PLAY_ROUGH, RETURN, ROCK_SLIDE, SANDSTORM, SUBSTITUTE, SUNNY_DAY, SWIFT, TOXIC, SINGE, STRENGTH, FLASH
	; end
