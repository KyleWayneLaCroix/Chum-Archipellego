; Pics are defined in gfx/pics.asm

PokemonPicPointers::
; entries correspond to Pokémon species, two apiece
	table_width 3 * 2, PokemonPicPointers
<pic pointers>

	assert_table_length NUM_POKEMON
	dba EggPic
	dbw -1, -1 ; unused
	assert_table_length EGG
