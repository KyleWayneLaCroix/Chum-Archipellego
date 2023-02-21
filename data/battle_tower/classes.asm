BattleTowerTrainers:
; The trainer class is not used in Crystal 1.0 due to a bug.
; Instead, the sixth character in the trainer's name is used.
; See BattleTowerText in engine/events/battle_tower/trainer_text.asm.
	table_width (NAME_LENGTH - 1) + 1, BattleTowerTrainers
	; name, class
	db "HANSON@@@@", FISHER
	db "SAWYER@@@@", WEIRDO
	db "MASUDA@@@@", GUITARIST
	db "NICKEL@@@@", IT_GUY
	db "OLSON@@@@@", GRAMPS
	db "ZABOROWSKI", LASS
	db "WRIGHT@@@@", YOUNGSTER
	db "ALEXANDER@", HIKER
	db "KAWAKAMI@@", TEACHER
	db "BICKETT@@@", GRAMPS
	db "SAITO@@@@@", KIMONO_GIRL
	db "CRAWFORD@@", BOARDER
	db "DIAZ@@@@@@", PICNICKER
	db "ERICKSON@@", BIKER
	db "FAIRFIELD@", JUGGLER
	db "HUNTER@@@@", GRANNY
	db "HILL@@@@@@", FIREBREATHER
	db "JAVIER@@@@", SWIMMER_F
	db "KAUFMAN@@@", SWIMMER_M
	db "LANCASTER@", SKIER
	db "McMAHILL@@", CAMPER
	assert_table_length BATTLETOWER_NUM_UNIQUE_MON
; The following can only be sampled in Crystal 1.1.
	db "OBRIEN@@@@", FEDORA_MAN
	db "FROST@@@@@", WHITE_GIRL
	db "MORSE@@@@@", MAD_SCIENTIST
	db "YUFUNE@@@@", BLACKBELT_T
	db "RAJAN@@@@@", COOLTRAINERF
	db "RODRIGUEZ@", OFFICER
	db "SANTIAGO@@", PSYCHIC_T
	db "STOCK@@@@@", GRAMPS
	db "THURMAN@@@", IT_GUY
	db "VALENTINO@", WHITE_GIRL
	db "WAGNER@@@@", CAMPER
	db "YATES@@@@@", BIRD_KEEPER
	db "ANDREWS@@@", PICNICKER
	db "BAHN@@@@@@", WEIRDO
	db "MORI@@@@@@", IT_GUY
	db "BUCKMAN@@@", PHOTOGRAPHER
	db "COBB@@@@@@", WORKER
	db "HUGHES@@@@", FISHER
	db "ARITA@@@@@", KIMONO_GIRL
	db "EASTON@@@@", PSYCHIC_T
	db "FREEMAN@@@", CAMPER
	db "GIESE@@@@@", LASS
	db "HATCHER@@@", FEDORA_MAN
	db "JACKSON@@@", GRANNY
	db "KAHN@@@@@@", WEIRDO
	db "LEONG@@@@@", YOUNGSTER
	db "MARINO@@@@", TEACHER
	db "NEWMAN@@@@", SAILOR
	db "NGUYEN@@@@", BLACKBELT_T
	db "OGDEN@@@@@", MAD_SCIENTIST
	db "PARK@@@@@@", COOLTRAINERF
	db "RAINE@@@@@", SWIMMER_M
	db "SELLS@@@@@", BIRD_KEEPER
	db "ROCKWELL@@", BOARDER
	db "THORNTON@@", LASS
	db "TURNER@@@@", OFFICER
	db "VAN DYKE@@", SKIER
	db "WALKER@@@@", WORKER
	db "MEYER@@@@@", SWIMMER_F
	db "JOHNSON@@@", YOUNGSTER
	db "ADAMS@@@@@", GUITARIST
	db "SMITH@@@@@", BUG_CATCHER
	db "TAJIRI@@@@", BUG_CATCHER
	db "BAKER@@@@@", WEIRDO
	db "COLLINS@@@", IT_GUY
	db "SMART@@@@@", MAD_SCIENTIST
	db "DYKSTRA@@@", SWIMMER_F
	db "EATON@@@@@", BIKER
	db "WONG@@@@@@", FIREBREATHER
	assert_table_length BATTLETOWER_NUM_UNIQUE_TRAINERS
