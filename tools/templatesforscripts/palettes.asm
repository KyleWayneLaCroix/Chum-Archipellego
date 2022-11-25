PokemonPalettes:
; entries correspond to Pokémon species, two apiece

; Each front.gbcpal is generated from the corresponding .png, and
; only the middle two colors are included, not black or white.
; Shiny palettes are defined directly, not generated.

	; 2 middle palettes, front and shiny, with 2 colors each
	table_width PAL_COLOR_SIZE * 2 * 2, PokemonPalettes

; 000
	RGB 30, 22, 17
	RGB 16, 14, 19
; 000 shiny
	RGB 30, 22, 17
	RGB 16, 14, 19

<PokePalettes>

	assert_table_length NUM_POKEMON + 1


INCBIN "gfx/pokemon/egg/front.gbcpal", middle_colors
INCLUDE "gfx/pokemon/egg/shiny.pal"

	assert_table_length EGG + 1

; 255
	RGB 23, 23, 23
	RGB 17, 17, 17
; 255 shiny
	RGB 23, 23, 23
	RGB 17, 17, 17

	assert_table_length $100
