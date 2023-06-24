 db MINIOR_METEOR

	db  60,  60, 100,  60,  60, 100
	;   hp  atk  def  spd  sat  sdf

	db ROCK, FLYING ; type
	db 120 ; catch rate
	db 154 ; base exp
	db STAR_PIECE, STARDUST ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/minior_meteor/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm DOUBLE_EDGE, SWIFT, CALM_MIND, EARTHQUAKE, GIGA_IMPACT, HIDDEN_POWER, HYPER_BEAM, PSYCHIC_M, RETURN, ROCK_SLIDE, SANDSTORM, SLEEP_TALK, SUBSTITUTE, TOXIC, DAZZLE_BEAM, SOLARBEAM, SHOCK_WAVE, FLY
	; end
