TrainerPalettes:
; entries correspond to trainer classes

; Each .gbcpal is generated from the corresponding .png, and
; only the middle two colors are included, not black or white.

	table_width PAL_COLOR_SIZE * 2, TrainerPalettes

PlayerPalette: ; Chris uses the same colors as Cal
INCBIN "gfx/trainers/cal.gbcpal", middle_colors
KrisPalette: ; Kris shares Falkner's palette
INCBIN "gfx/trainers/falkner.gbcpal", middle_colors
INCBIN "gfx/trainers/jordan.gbcpal", middle_colors
INCBIN "gfx/trainers/victoria.gbcpal", middle_colors
INCBIN "gfx/trainers/loafer.gbcpal", middle_colors
INCBIN "gfx/trainers/pryce.gbcpal", middle_colors
INCBIN "gfx/trainers/jasmine.gbcpal", middle_colors
INCBIN "gfx/trainers/chuck.gbcpal", middle_colors
INCBIN "gfx/trainers/clair.gbcpal", middle_colors
INCBIN "gfx/trainers/rival1.gbcpal", middle_colors
INCBIN "gfx/trainers/oak.gbcpal", middle_colors
INCBIN "gfx/trainers/will.gbcpal", middle_colors
INCBIN "gfx/trainers/cal.gbcpal", middle_colors
INCBIN "gfx/trainers/bruno.gbcpal", middle_colors
INCBIN "gfx/trainers/karen.gbcpal", middle_colors
INCBIN "gfx/trainers/koga.gbcpal", middle_colors
INCBIN "gfx/trainers/champion.gbcpal", middle_colors
INCBIN "gfx/trainers/brock.gbcpal", middle_colors
INCBIN "gfx/trainers/misty.gbcpal", middle_colors
INCBIN "gfx/trainers/lt_surge.gbcpal", middle_colors
INCBIN "gfx/trainers/scientist.gbcpal", middle_colors
INCBIN "gfx/trainers/erika.gbcpal", middle_colors
INCBIN "gfx/trainers/youngster.gbcpal", middle_colors
INCBIN "gfx/trainers/worker.gbcpal", middle_colors
INCBIN "gfx/trainers/bird_keeper.gbcpal", middle_colors
INCBIN "gfx/trainers/lass.gbcpal", middle_colors
INCBIN "gfx/trainers/janine.gbcpal", middle_colors
INCBIN "gfx/trainers/cooltrainer_m.gbcpal", middle_colors
INCBIN "gfx/trainers/cooltrainer_f.gbcpal", middle_colors
INCBIN "gfx/trainers/white_girl.gbcpal", middle_colors
INCBIN "gfx/trainers/pokemaniac.gbcpal", middle_colors
INCBIN "gfx/trainers/grunt_m.gbcpal", middle_colors
INCBIN "gfx/trainers/gentleman.gbcpal", middle_colors
INCBIN "gfx/trainers/skier.gbcpal", middle_colors
INCBIN "gfx/trainers/teacher.gbcpal", middle_colors
INCBIN "gfx/trainers/sabrina.gbcpal", middle_colors
INCBIN "gfx/trainers/bug_catcher.gbcpal", middle_colors
INCBIN "gfx/trainers/fisher.gbcpal", middle_colors
INCBIN "gfx/trainers/swimmer_m.gbcpal", middle_colors
INCBIN "gfx/trainers/swimmer_f.gbcpal", middle_colors
INCBIN "gfx/trainers/sailor.gbcpal", middle_colors
INCBIN "gfx/trainers/super_nerd.gbcpal", middle_colors
INCBIN "gfx/trainers/rival2.gbcpal", middle_colors
INCBIN "gfx/trainers/guitarist.gbcpal", middle_colors
INCBIN "gfx/trainers/hiker.gbcpal", middle_colors
INCBIN "gfx/trainers/biker.gbcpal", middle_colors
INCBIN "gfx/trainers/blaine.gbcpal", middle_colors
INCBIN "gfx/trainers/burglar.gbcpal", middle_colors
INCBIN "gfx/trainers/firebreather.gbcpal", middle_colors
INCBIN "gfx/trainers/juggler.gbcpal", middle_colors
INCBIN "gfx/trainers/blackbelt_t.gbcpal", middle_colors
INCBIN "gfx/trainers/ceo.gbcpal", middle_colors
INCBIN "gfx/trainers/psychic_t.gbcpal", middle_colors
INCBIN "gfx/trainers/picnicker.gbcpal", middle_colors
INCBIN "gfx/trainers/camper.gbcpal", middle_colors
INCBIN "gfx/trainers/executive_f.gbcpal", middle_colors
INCBIN "gfx/trainers/photographer.gbcpal", middle_colors
INCBIN "gfx/trainers/medium.gbcpal", middle_colors
INCBIN "gfx/trainers/boarder.gbcpal", middle_colors
INCBIN "gfx/trainers/pokefan_m.gbcpal", middle_colors
INCBIN "gfx/trainers/kimono_girl.gbcpal", middle_colors
INCBIN "gfx/trainers/twins.gbcpal", middle_colors
INCBIN "gfx/trainers/pokefan_f.gbcpal", middle_colors
INCBIN "gfx/trainers/red.gbcpal", middle_colors
INCBIN "gfx/trainers/blue.gbcpal", middle_colors
INCBIN "gfx/trainers/officer.gbcpal", middle_colors
INCBIN "gfx/trainers/grunt_f.gbcpal", middle_colors
INCBIN "gfx/trainers/mysticalman.gbcpal", middle_colors
INCBIN "gfx/trainers/link.gbcpal", middle_colors
INCBIN "gfx/trainers/sora.gbcpal", middle_colors
INCBIN "gfx/trainers/ball_brian.gbcpal", middle_colors
INCBIN "gfx/trainers/tree_brian.gbcpal", middle_colors
INCBIN "gfx/trainers/rock_brian.gbcpal", middle_colors
INCBIN "gfx/trainers/brian.gbcpal", middle_colors
INCBIN "gfx/trainers/ghost.gbcpal", middle_colors
INCBIN "gfx/trainers/undead.gbcpal", middle_colors
INCBIN "gfx/trainers/brian64.gbcpal", middle_colors
INCBIN "gfx/trainers/bug_brian.gbcpal", middle_colors

	assert_table_length NUM_TRAINER_CLASSES + 1
