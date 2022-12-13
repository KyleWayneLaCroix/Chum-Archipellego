 db MORELULL

	db  40,  35,  55,  15,  65,  75
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FAIRY ; type
	db 190 ; catch rate
	db 57 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/morelull/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm DAZZLE_BEAM, ENERGY_BALL, FLASH, GIGA_DRAIN, HIDDEN_POWER, MOONBLAST, RETURN, SLEEP_TALK, SUBSTITUTE, SUNNY_DAY, TOXIC
	; end
