	object_const_def
;	const MAPNAME_OBJECTNAME
	const VOLCANO_INTERIOR_6F_HALL_ZOOMER
	const VOLCANO_INTERIOR_6F_HALL_POKE_BALL_1
	const VOLCANO_INTERIOR_6F_HALL_POKE_BALL_2
	const VOLCANO_INTERIOR_6F_HALL_KYLE


VolcanoInterior6FHall_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

VolcanoInterior6FHallMiniorSpot:
	random 75
	ifequal 1, VolcanoInterior6FHallMiniorCoreTrap
	ifequal 2, VolcanoInterior6FHallMiniorMeteorTrap
	end

VolcanoInterior6FHallMiniorCoreTrap:
	special FadeOutPalettes
	cry MINIOR_CORE
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon MINIOR_CORE, 27
	startbattle
	reloadmapafterbattle
	end

VolcanoInterior6FHallMiniorMeteorTrap:
	special FadeOutPalettes
	cry MINIOR_METEOR
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon MINIOR_METEOR, 27
	startbattle
	reloadmapafterbattle
	end

TrainerGlitchLink:
	trainer HEROOFTIME, GLITCH_LINK, EVENT_BEAT_GLITCH_LINK,GlitchLinkSeenText, GlitchLinkBeatenText, 0, .Script

.Script:
	opentext
	writetext GlitchLinkAfterText
	waitbutton
	closetext
	playsound SFX_STRENGTH
	earthquake 250
	waitsfx
	disappear VOLCANO_INTERIOR_6F_HALL_ZOOMER
	end

GlitchLinkSeenText:
	text "You were tossing"
	line "and turning..."

	para "What? Zelda?"

	para "No, my name's"
	line "marin You must still be feeling a little woozy. You are on Koholint Island!"
	done

GlitchLinkBeatenText:
	text "Whoah, boy! Where"
	line "ya off to in such"
	cont "a hurry?"

	para "Sit a spell, I"
	line "got somethin' to"
	cont "tell ya!"
	done

GlitchLinkAfterText:
	text "Here Sleeps The"
	line "Flying Rooster."
	done

VolcanoInterio6FHallDragonScale:
	itemball DRAGON_SCALE

VolcanoInterio6FHallElixer:
	itemball ELIXER

KyleGivesYouEvolveItems:
	opentext
	writetext KyleGivesYouEvolveItemsText
	waitbutton
	checkevent EVENT_GOT_BURGELA_STARTER
	iftrue .Burgela
	checkevent EVENT_GOT_SPIRRIP_STARTER
	iftrue .Spirrip
	checkevent EVENT_GOT_PORYGON_STARTER
	iftrue .Porygon
.Burgela:
	verbosegiveitem TESTOSTERONE
	waitbutton
	verbosegiveitem ESTRADIOL
	waitbutton
	sjump .Conclude
.Spirrip:
	verbosegiveitem DUSK_STONE
	waitbutton
	sjump .Conclude
.Porygon:
	verbosegiveitem UP_GRADE
	waitbutton
	sjump .Conclude
.Conclude:
	writetext KyleGaveYouItemsText
	waitbutton
	setevent EVENT_GOT_EVOLUTION_ITEMS_FROM_KYLE
	disappear VOLCANO_INTERIOR_6F_HALL_KYLE
	end

KyleGaveYouItemsText:
	text "KYLE: Use this to"
	line "evolve the #-"
	cont "-MON I gave you"
	cont "at the start."

	para "With a fully-"
	line "-evolved starter,"
	cont "you can beat any-"
	cont "-thing."

	para "Ish."

	para "Anyway, I must"
	line "go now."

	para "Good luck."
	done
KyleGivesYouEvolveItemsText:
	text "KYLE: Hello, I am"
	line "not actually"
	cont "here in this vol-"
	cont "-cano."

	para "I'm projecting"
	line "myself here."

	para "Like LUKE at the"
	line "end of THE LAST"
	cont "JEDI."

	para "Anyway, like LUKE"
	line "I'm here to save"
	cont "your ass."

	para "Something big is"
	line "ahead, so you're"
	cont "going to need"
	cont "this power boost."
	done

VolcanoInterior6FHall_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  3, 31, VOLCANO_EXTERIOR, 11
	warp_event 13,  1, VOLCANO_EXTERIOR, 12

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 17, 39, BGEVENT_READ, VolcanoInterior6FHallMiniorSpot
	bg_event 17, 38, BGEVENT_READ, VolcanoInterior6FHallMiniorSpot
	bg_event 16, 38, BGEVENT_READ, VolcanoInterior6FHallMiniorSpot
	bg_event 16, 39, BGEVENT_READ, VolcanoInterior6FHallMiniorSpot

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 13, 34, SPRITE_ZOOMER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 2, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 3, TrainerGlitchLink, EVENT_BEAT_GLITCH_LINK
	object_event 10, 14, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_ITEMBALL, 0, VolcanoInterio6FHallDragonScale, EVENT_VOLCANO_INTERIOR_6F_HALL_DRAGON_SCALE
	object_event 13, 22, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_ITEMBALL, 0, VolcanoInterio6FHallElixer, EVENT_VOLCANO_INTERIOR_6F_HALL_ELIXER
	object_event 13,  2, SPRITE_KYLE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, KyleGivesYouEvolveItems, EVENT_GOT_EVOLUTION_ITEMS_FROM_KYLE