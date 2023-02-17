	object_const_def
;	const MAPNAME_OBJECTNAME
	const ROUTE_G_ANTHONY
	const ROUTE_G_BENJAMIN
	const ROUTE_G_ERIK
	const ROUTE_G_BRYAN
	const ROUTE_G_OTIS
	const ROUTE_G_DICK
	const ROUTE_G_IRWIN
	const ROUTE_G_POKEBALL1
	const ROUTE_G_POKEBALL2
	const ROUTE_G_POKEBALL3


RouteG_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

TrainerHikerAnthony:
	trainer HIKER, ANTHONY1, EVENT_BEAT_HIKER_ANTHONY, HikerAnthonySeenText, HikerAnthonyBeatenText, 0, .Script

.Script:
	opentext
	writetext HikerAnthonyAfterText
	waitbutton
	closetext
	end

TrainerHikerBenjamin:
	trainer HIKER, BENJAMIN, EVENT_BEAT_HIKER_BENJAMIN, HikerBenjaminSeenText, HikerBenjaminBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerBenjaminAfterText
	waitbutton
	closetext
	end

TrainerHikerErik:
	trainer HIKER, ERIK, EVENT_BEAT_HIKER_ERIK, HikerErikSeenText, HikerErikBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerErikAfterText
	waitbutton
	closetext
	end

TrainerBirdKeeperBryan:
	trainer BIRD_KEEPER, BRYAN, EVENT_BEAT_BIRD_KEEPER_BRYAN, BirdKeeperBryanSeenText, BirdKeeperBryanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperBryanAfterText
	waitbutton
	closetext
	end

TrainerFirebreatherOtis:
	trainer FIREBREATHER, OTIS, EVENT_BEAT_FIREBREATHER_OTIS, FirebreatherOtisSeenText, FirebreatherOtisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FirebreatherOtisAfterText
	waitbutton
	closetext
	end

TrainerFirebreatherDick:
	trainer FIREBREATHER, DICK, EVENT_BEAT_FIREBREATHER_DICK, FirebreatherDickSeenText, FirebreatherDickBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FirebreatherDickAfterText
	waitbutton
	closetext
	end

TrainerJugglerIrwin:
	trainer JUGGLER, IRWIN1, EVENT_BEAT_JUGGLER_IRWIN, JugglerIrwinSeenText, JugglerIrwinBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext JugglerIrwinAfterText
	waitbutton
	closetext
	end

RouteGSuperPotion:
	itemball SUPER_POTION, 3

RouteGHyperPotion:
	itemball HYPER_POTION

RouteGNugget:
	itemball NUGGET

HikerAnthonySeenText:
	text "Only the MANLIEST"
	line "of MANLY MEN can"
	cont "hike the path of"
	cont "ROUTE G!"
	done

HikerAnthonyBeatenText:
	text "You did it."

	para "You proved you're"
	line "a real man."
	done

HikerAnthonyAfterText:
	text "Nothing's manlier"
	line "than gender"
	cont "essentialism!"
	done

HikerBenjaminSeenText:
	text "I trained under"
	line "RYAN so that my"
	cont "#MON are now"
	cont "dedicated to the"
	cont "act of pushing"
	cont "big rocks around!"
	done

HikerBenjaminBeatenText:
	text "How could I lose?"
	
	para "My #MON are so"
	line "good at pushing"
	cont "big rocks!"
	done

HikerBenjaminAfterText:
	text "Maybe I should've"
	line "let my #MON"
	cont "learn more than 1"
	cont "move each."
	done

HikerErikSeenText:
	text "I'm visiting all"
	line "the landmarks in"
	cont "the ARCHIPELAGO!"
	done

HikerErikBeatenText:
	text "You're ready to"
	line "visit them all"
	cont "too!"
	done

HikerErikAfterText:
	text "MT. 1994 is still"
	line "my favorite place"
	cont "to hike."
	done

BirdKeeperBryanSeenText:
	text "You can find cool"
	line "birds in jungles!"
	done

BirdKeeperBryanBeatenText:
	text "Oh no, my birds!"
	done

BirdKeeperBryanAfterText:
	text "There should be"
	line "more chicken"
	cont "#MON."
	done

FirebreatherOtisSeenText:
	text "I'm on my way to"
	line "the BROCANO for"
	cont "temperature accl-"
	cont "-imation training"
	done

FirebreatherOtisBeatenText:
	text "Looks like I'm"
	line "not ready to face"
	cont "full heat yet!"
	done

FirebreatherOtisAfterText:
	text "The BROCANO is"
	line "the hottest place"
	cont "in the whole"
	cont "ARCHIPELAGO."

	para "The lava inside's"
	line "so hot it can"
	cont "destroy anything."
	done

FirebreatherDickSeenText:
	text "I became a fire-"
	line "-breather to"
	cont "fight those who"
	cont "mocked my name."
	done

FirebreatherDickBeatenText:
	text "Go ahead. Laugh"
	line "at me."

	para "Just like all the"
	line "others."
	done

FirebreatherDickAfterText:
	text "If someone else"
	line "makes fun of me"
	cont "for being named"
	cont "DICK, I'm going"
	cont "to become the"
	cont "JOKER."
	done

JugglerIrwinSeenText:
	text "Juggling #-"
	line "BALLS doesn't"
	cont "bother the #-"
	cont "MON inside!"
	done

JugglerIrwinBeatenText:
	text "Okay, maybe all"
	line "the juggling is"
	cont "getting them"
	cont "mixed up..."
	done

JugglerIrwinAfterText:
	text "I love juggling"
	line "too much to stop"
	cont "now."

	para "My #MON are"
	line "just going to get"
	cont "used to getting"
	cont "juggled in their"
	cont "BALLS."
	done


RouteG_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 5, 1, ROUTE_G_METROID_CAVE, 1

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  7,  9, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerHikerAnthony, 0
	object_event 19,  3, SPRITE_FISHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerHikerBenjamin, 1
	object_event 40, 12, SPRITE_FISHER, SPRITEMOVEDATA_WALK_UP_DOWN, 3, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerHikerErik, 0
	object_event 33, 12, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperBryan, 0
	object_event 55, 12, SPRITE_FISHER, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerFirebreatherOtis, 0
	object_event 55,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerFirebreatherDick, 0
	object_event 35,  2, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerJugglerIrwin, 0
	object_event 16, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RouteGSuperPotion, EVENT_ROUTE_G_SUPER_POTION
	object_event 55,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RouteGHyperPotion, EVENT_ROUTE_G_HYPER_POTION
	object_event 43, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RouteGNugget, EVENT_ROUTE_G_NUGGET
