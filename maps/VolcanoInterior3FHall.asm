	object_const_def
;	const MAPNAME_OBJECTNAME
	const VOLCANO_INTERIOR_3F_HALL_KARATE_KING
	const VOLCANO_INTERIOR_3F_HALL_POKE_BALL
	const VOLCANO_INTERIOR_3F_BALL_BRIAN


VolcanoInterior3FHall_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

VolcanoInterior3FHallHiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_VOLCANO_INTERIOR_3F_HALL_HIDDEN_MAX_POTION

VolcanoInterior3FHallItemballBrian:
	trainer BALL_BRIAN, BALLBRIAN_3, EVENT_BEAT_BALL_BRIAN_3, BallBrian3SeenText, BallBrian3BeatenText, 0, .Script

.Script:
	opentext
	writetext BallBrian3AfterText
	waitbutton
	verbosegiveitem ULTRA_BALL, 5
	closetext
	disappear VOLCANO_INTERIOR_3F_BALL_BRIAN
	end

BallBrian3SeenText:
	text "BRIAN: I'm conv-"
	line "-inced you could"
	cont "do a case study"
	cont "on DRAGON BALL Z"
	cont "as like...."

	para "the media version"
	line "of stockholm"
	cont "syndrome."

	para "I absolutely"
	line "hated that show"
	cont "when it came on"
	cont "as a kid, I just"
	cont "wanted to watch"
	cont "dexter's lab."

	para "But, it was on"
	line "every day for"
	cont "years, and then"
	cont "I was just like"

	para "I just gotta"
	line "know what happens"
	cont "to Goku."

	para "Anyway. It's time"
	line "to 'Rock the"
	cont "Dragon'"

	para "If you know what"
	line "I mean."

	done

BallBrian3BeatenText:
	text "This is like that"
	line "time Yamcha died."
	done

BallBrian3AfterText:
	text "BRIAN: Maaan this"
	line "volcano sucks ass"

	para "You should be"
	line "careful, I've"
	cont "seen some shit in"
	cont "here."

	para "Like, four or five"
	line "of me have been"
	cont "through here."

	para "Not sure why this"
	line "volcano is so"
	cont "popular with me's."

	para "I thought I had"
	line "better taste."

	para "Anyway, I'm gonna"
	line "bounce."

	para "Good luck, I feel"
	line "like we're gonna"
	cont "reach some sort"
	cont "of conculsion"
	cont "soon."

	done
TrainerKarateKingJet:
	trainer KARATE_KING, JET, EVENT_BEAT_KARATE_KING_JET, KarateKingJetSeenText, KarateKingJetBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KarateKingJetAfterText
	waitbutton
	closetext
	end

VolcanoInterior3FHallSoftSand:
	itemball SOFT_SAND

KarateKingJetSeenText:
	text "HIIIIIYAHHHH!"

	para "I am training to"
	line "be the new GYM"
	cont "LEADER."

	para "My fighting"
	line "spirit is almost"
	cont "as hot as the"
	cont "lava in this"
	cont "volcano!"
	done

KarateKingJetBeatenText:
	text "Your passion was"
	line "even HOTTER than"
	cont "mine."
	done

KarateKingJetAfterText:
	text "My body is on"
	line "fire with passion"

	para "Passion"

	para "for battle."

	para "I will become the"
	line "second GYM leader"
	cont "of the archi-"
	cont "-pelago!"
	done


VolcanoInterior3FHall_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 17,  5, VOLCANO_INTERIOR_3F, 5
	warp_event  3,  5, VOLCANO_INTERIOR_3F, 6

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 17,  2, BGEVENT_ITEM, VolcanoInterior3FHallHiddenMaxPotion

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  5,  5, SPRITE_BRUNO, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerKarateKingJet, -1
	object_event 10,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VolcanoInterior3FHallSoftSand, EVENT_VOLCANO_INTERIOR_3F_HALL_SOFT_SAND
	object_event 19,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, VolcanoInterior3FHallItemballBrian, EVENT_BEAT_BALL_BRIAN_3
