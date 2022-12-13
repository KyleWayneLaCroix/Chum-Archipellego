 db WINGULL

	db  40,  30,  30,  85,  55,  30
	;   hp  atk  def  spd  sat  sdf

	db WATER, FLYING ; type
	db 190 ; catch rate
	db 54 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/wingull/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm BLIZZARD, FLY, HAIL, HIDDEN_POWER, ICE_BEAM, RAIN_DANCE, RETURN, SHOCK_WAVE, SLEEP_TALK, SUBSTITUTE, SWIFT, TOXIC, WATER_PULSE
	; end
