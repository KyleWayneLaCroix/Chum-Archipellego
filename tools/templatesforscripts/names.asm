PokemonNames::
	table_width NAME_LENGTH - 1, PokemonNames
<PokemonNames>
	assert_table_length NUM_POKEMON
	db "EGG@@@@@@@"
	assert_table_length EGG
	db "?????@@@@@"
	db "?????@@@@@"
	assert_table_length $100
