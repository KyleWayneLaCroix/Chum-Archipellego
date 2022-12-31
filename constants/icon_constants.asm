; IconPointers indexes (see data/icon_pointers.asm)
	const_def
	const ICON_NULL
	const ICON_EGG
	const ICON_GHOST
	const ICON_BIRD
	const ICON_FOX
	const ICON_DOG
	const ICON_BAT
	const ICON_CATERPILLAR
	const ICON_MOTH
	const ICON_BUG
	const ICON_SERPENT
	const ICON_EQUINE
	const ICON_HUMANSHAPE
	const ICON_FIGHTER
	const ICON_FISH
	const ICON_SEAL
	const ICON_BALL
	const ICON_MONSTER
	const ICON_BLOB
	const ICON_CAT
	const ICON_BEAR
	const ICON_BIGMON
	const ICON_ODDISH
	const ICON_PORYGON
	const ICON_TANGELA
	const ICON_SPIRRIP
	const ICON_UNOWN
	const ICON_LOTAD
	const ICON_MAREANIE
	const ICON_LAPRAS
	const ICON_EEVEE
	const ICON_VAPOREON
	const ICON_JOLTEON
	const ICON_FLAREON
	const ICON_ESPEON
	const ICON_UMBREON
	const ICON_GLACEON
	const ICON_LEAFEON
	const ICON_SYLVEON
	const ICON_BUZZEON
	const ICON_SNORLAX
DEF NUM_ICONS EQU const_value - 1

; LoadMenuMonIcon.Jumptable indexes (see engine/gfx/mon_icons.asm)
	const_def
	const MONICON_PARTYMENU
	const MONICON_NAMINGSCREEN
	const MONICON_MOVES
	const MONICON_TRADE
	const MONICON_MOBILE1
	const MONICON_MOBILE2
	const MONICON_UNUSED
