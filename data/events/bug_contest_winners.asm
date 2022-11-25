BugContestantPointers:
	table_width 2, BugContestantPointers
	dw BugContestant_BugCatcherDon ; this reverts back to the player
	dw BugContestant_BugCatcherDon
	dw BugContestant_BugCatcherEd
	dw BugContestant_CooltrainerMNick
	dw BugContestant_PokefanMWilliam
	dw BugContestant_BugCatcherBenny
	dw BugContestant_CamperBarry
	dw BugContestant_PicnickerCindy
	dw BugContestant_BugCatcherJosh
	dw BugContestant_YoungsterSamuel
	dw BugContestant_SchoolboyKipp
	assert_table_length NUM_BUG_CONTESTANTS + 1

; contestant format:
;   db class, id
;   dbw 1st-place mon, score
;   dbw 2nd-place mon, score
;   dbw 3rd-place mon, score

BugContestant_BugCatcherDon:
	db BUG_CATCHER, DON
	dbw DOTTLER,     300
	dbw CHARJABUG,    285
	dbw GRUBBIN,   226

BugContestant_BugCatcherEd:
	db BUG_CATCHER, ED
	dbw VIKAVOLT, 286
	dbw VIKAVOLT, 251
	dbw GRUBBIN,   237

BugContestant_CooltrainerMNick:
	db COOLTRAINERM, NICK
	dbw SCYTHER,    357
	dbw VIKAVOLT, 349
	dbw HERACROSS,     368

BugContestant_PokefanMWilliam:
	db POKEFANM, WILLIAM
	dbw HERACROSS,     332
	dbw VIKAVOLT, 324
	dbw SIZZLIPEDE,    321

BugContestant_BugCatcherBenny:
	db BUG_CATCHER, BUG_CATCHER_BENNY
	dbw VIKAVOLT, 318
	dbw BLIPBUG,     295
	dbw GRUBBIN,   285

BugContestant_CamperBarry:
	db CAMPER, BARRY
	dbw HERACROSS,     366
	dbw SIZZLIPEDE,    329
	dbw DOTTLER,     314

BugContestant_PicnickerCindy:
	db PICNICKER, CINDY
	dbw VIKAVOLT, 341
	dbw CHARJABUG,    301
	dbw GRUBBIN,   264

BugContestant_BugCatcherJosh:
	db BUG_CATCHER, JOSH
	dbw SCYTHER,    326
	dbw VIKAVOLT, 292
	dbw CHARJABUG,    282

BugContestant_YoungsterSamuel:
	db YOUNGSTER, SAMUEL
	dbw BLIPBUG,     270
	dbw HERACROSS,     282
	dbw GRUBBIN,   251

BugContestant_SchoolboyKipp:
	db SCHOOLBOY, KIPP
	dbw SIZZLIPEDE,    267
	dbw JOLTIK,      254
	dbw DOTTLER,     259
