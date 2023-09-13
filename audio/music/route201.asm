Music_Route201:
	channel_count 4
	channel 1, Music_Route201_Ch1
	channel 2, Music_Route201_Ch2
	channel 3, Music_Route201_Ch3
	channel 4, Music_Route201_Ch4

Music_Route201_Ch1:
	duty_cycle $3
	volume 7, 7
	tempo 159
	note_type 12, 10, 7
	pitch_offset $0002
	stereo_panning FALSE, TRUE
;Bar 1
	rest 4
Music_Route201_Ch1_master:
	sound_call Music_Route201_Ch1_type1
	sound_call Music_Route201_Ch1_type2
;Bar 2
	rest 3
	octave 3
	sound_call Music_Route201_Ch1_typeG
	volume_envelope 9, 7
	octave 2
	note B_, 1
	volume_envelope 6, 7
	note B_, 2
	rest 3
	sound_call Music_Route201_Ch1_type2
;Bar 3
	rest 3
	sound_call Music_Route201_Ch1_type1
	sound_call Music_Route201_Ch1_type1
;Bar 4
	sound_call Music_Route201_Ch1_type2
	rest 3
	sound_call Music_Route201_Ch1_type3
;Bar 5
	rest 1
	sound_call Music_Route201_Ch1_typeA
	sound_call Music_Route201_Ch1_type2
	rest 1
	sound_call Music_Route201_Ch1_typeG
	sound_call Music_Route201_Ch1_type3
;Bar 6
	rest 1
	sound_call Music_Route201_Ch1_typeA
	volume_envelope 9, 7
	octave 3
	note F_, 1
	volume_envelope 6, 7
	note F_, 1
	volume_envelope 9, 7
	note F#, 1
	volume_envelope 6, 7
	note F#, 2
	rest 1
	octave 2
	sound_call Music_Route201_Ch1_typeG
	octave 3
	sound_call Music_Route201_Ch1_typeA
	sound_call Music_Route201_Ch1_typeG
;Bar 7
	sound_call Music_Route201_Ch1_Bar7_1
	sound_call Music_Route201_Ch1_Bar7_2
;Bar 8
	sound_call Music_Route201_Ch1_typeG
	octave 2
	sound_call Music_Route201_Ch1_type4
	octave 2
	sound_call Music_Route201_Ch1_typeG
	volume_envelope 9, 7
	octave 3
	note E_, 1
	volume_envelope 6, 7
	note E_, 1
	volume_envelope 9, 7
	note C_, 1
	volume_envelope 6, 7
	note C_, 1
;Bar 9
	sound_call Music_Route201_Ch1_Bar7_1
	sound_call Music_Route201_Ch1_Bar7_2
;Bar 10
	volume_envelope 9, 7
	octave 2
	note B_, 1
	volume_envelope 6, 7
	note B_, 1
	sound_call Music_Route201_Ch1_type4
	volume_envelope 9, 7
	note C_, 1
	note G_, 1
	octave 4
	note C_, 1
	note D_, 1
	note E_, 1
	note F_, 1
;Bar 11
	octave 3
	sound_call Music_Route201_Ch1_Bar11
;Bar 12
	volume_envelope 11, 6
	note C_, 2
	note D_, 2
	note C_, 2
	octave 2
	note G_, 2
	octave 3
	note C_, 2
	octave 2
	note E_, 4
	octave 3
	note C_, 2
;Bar 13
	sound_call Music_Route201_Ch1_Bar11
;Bar 14
	volume_envelope 12, 5
	note C_, 2
	octave 2
	note C_, 2
	octave 3
	note C_, 2
	octave 2
	note F_, 2
	note C_, 2
	note F_, 2
	note G_, 2
	note B_, 2
;Bar 15
	octave 3
	note C_, 1
	volume_envelope 8, 7
	note C_, 2
	rest 1
	sound_loop 0, Music_Route201_Ch1_master

Music_Route201_Ch1_type1:
	volume_envelope 9, 7
	octave 3
	note E_, 1
	volume_envelope 6, 7
	note E_, 1
	volume_envelope 9, 7
	octave 2
	note G_, 1
	volume_envelope 6, 7
	note G_, 2
	rest 3
	sound_ret

Music_Route201_Ch1_type2:
	volume_envelope 9, 7
	octave 3
	note F_, 1
	volume_envelope 6, 7
	note F_, 1
	volume_envelope 9, 7
	octave 2
	note A_, 1
	volume_envelope 6, 7
	note A_, 2
	sound_ret

Music_Route201_Ch1_type3:
	volume_envelope 9, 7
	octave 3
	note E_, 1
	volume_envelope 6, 7
	note E_, 1
	volume_envelope 9, 7
	octave 2
	note G_, 1
	volume_envelope 6, 7
	note G_, 2
	sound_ret

Music_Route201_Ch1_typeA:
	volume_envelope 9, 7
	note A_, 1
	volume_envelope 6, 7
	note A_, 1
	sound_ret

Music_Route201_Ch1_typeG:
	volume_envelope 9, 7
	note G_, 1
	volume_envelope 6, 7
	note G_, 1
	sound_ret

Music_Route201_Ch1_Bar7_1:
	volume_envelope 9, 7
	note F_, 1
	volume_envelope 6, 7
	note F_, 1
	volume_envelope 9, 7
	note C_, 1
	volume_envelope 6, 7
	note C_, 1
	sound_loop 2, Music_Route201_Ch1_Bar7_1
	sound_ret

Music_Route201_Ch1_Bar7_2:
	volume_envelope 9, 7
	note E_, 1
	volume_envelope 6, 7
	note E_, 1
	volume_envelope 9, 7
	note C_, 1
	volume_envelope 6, 7
	note C_, 1
	sound_loop 2, Music_Route201_Ch1_Bar7_2
	sound_ret

Music_Route201_Ch1_type4:
	volume_envelope 9, 7
	note G_, 1
	volume_envelope 6, 7
	note G_, 1
	volume_envelope 9, 7
	note A_, 1
	volume_envelope 6, 7
	note A_, 1
	volume_envelope 9, 7
	note B_, 1
	volume_envelope 6, 7
	note B_, 1
	volume_envelope 9, 7
	octave 3
	note C_, 1
	volume_envelope 6, 7
	note C_, 1
	sound_ret

Music_Route201_Ch1_Bar11:
	volume_envelope 11, 7
	note C_, 6
	note E_, 6
	note D_, 4
	sound_ret
	
; ============================================================================================================

Music_Route201_Ch2:
	note_type 12, 7, 7
	vibrato 18, 1, 10
	stereo_panning TRUE, TRUE
;Bar 1
	rest 4
Music_Route201_Ch2_master:
	duty_cycle $1
	volume_envelope 7, 7
	octave 3
	sound_call Music_Route201_Ch2_type1
	rest 6
	sound_call Music_Route201_Ch2_type1
	rest 2
;Bar 2
	octave 3
	rest 4
	volume_envelope 7, 7
	note D_, 1
	volume_envelope 3, 7
	note D_, 1
	rest 6
	sound_call Music_Route201_Ch2_type1
	rest 1
	sound_call Music_Route201_Ch2_Main
	volume_envelope 8, 6
	note C_, 4
	sound_loop 0, Music_Route201_Ch2_master

Music_Route201_Ch2_type1:
	volume_envelope 7, 7
	note C_, 1
	volume_envelope 3, 7
	note C_, 1
	sound_ret

Music_Route201_Ch2_Main:
	duty_cycle $2
	note_type 6, 7, 7
	octave 4
	note E_, 1
	note F_, 1
	note_type 12, 9, 7
	note G_, 1
;Bar 3
	volume_envelope 4, 7
	note G_, 1
	volume_envelope 9, 7
	note F_, 1
	volume_envelope 4, 7
	note F_, 1
	volume_envelope 9, 7
	note E_, 1
	volume_envelope 4, 7
	note E_, 1
	volume_envelope 9, 7
	note F_, 1
	volume_envelope 4, 7
	note F_, 1
	volume_envelope 9, 7
	note E_, 1
	volume_envelope 4, 7
	note E_, 1
	volume_envelope 9, 7
	note C_, 1
	volume_envelope 4, 7
	note C_, 1
	volume_envelope 9, 7
	octave 3
	note G_, 1
	volume_envelope 4, 7
	note G_, 3
	volume_envelope 9, 7
	note A_, 1
;Bar 4
	volume_envelope 4, 7
	note A_, 1
	volume_envelope 9, 7
	note G_, 1
	volume_envelope 4, 7
	note G_, 1
	volume_envelope 9, 7
	note A_, 1
	volume_envelope 4, 7
	note A_, 1
	volume_envelope 9, 7
	note B_, 1
	volume_envelope 4, 7
	note B_, 1
	volume_envelope 9, 7
	octave 4
	note C_, 1
	volume_envelope 4, 7
	note C_, 1
	volume_envelope 9, 7
	note G_, 1
	volume_envelope 4, 7
	note G_, 3
	rest 1
	note_type 6, 7, 7
	note F_, 1
	note G_, 1 
	note_type 12, 9, 7
	note A_, 1
	volume_envelope 4, 7
	note A_, 1
;Bar 5
	volume_envelope 9, 7
	note G_, 1
	volume_envelope 4, 7
	note G_, 1
	volume_envelope 9, 7
	note A_, 1
	volume_envelope 4, 7
	note A_, 1
	volume_envelope 8, 7
	note B_, 1
	volume_envelope 3, 7
	note B_, 1
	volume_envelope 8, 7
	octave 5
	note C_, 1
	volume_envelope 3, 7
	note C_, 1
	volume_envelope 9, 7
	octave 4
	note G_, 1
	volume_envelope 4, 7
	note G_, 3
	rest 2
	volume_envelope 9, 7
	note F_, 1
	volume_envelope 4, 7
	note F_, 1
;Bar 6
	volume_envelope 9, 7
	note E_, 1
	volume_envelope 4, 7
	note E_, 1
	volume_envelope 9, 7
	note D_, 1
	volume_envelope 4, 7
	note D_, 1
	volume_envelope 9, 7
	note C_, 1
	volume_envelope 4, 7
	note C_, 1
	volume_envelope 9, 7
	note A_, 1
	volume_envelope 4, 7
	note A_, 2
	rest 1
	volume_envelope 14, 7
	note G_, 1
	volume_envelope 9, 7
	octave 4
	note F_, 1
	note E_, 1
	volume_envelope 8, 7
	note D_, 1
	volume_envelope 10, 7
	note C_, 1
	volume_envelope 6, 7
	note C_, 3
;Bar 7
	volume_envelope 10, 7
	note C_, 1
	volume_envelope 6, 7
	note C_, 3
	volume_envelope 10, 7
	note C_, 1
	volume_envelope 6, 7
	note C_, 3
	volume_envelope 10, 7
	note C_, 1
	volume_envelope 6, 7
	note C_, 3
	volume_envelope 10, 7
	note G_, 1
	volume_envelope 6, 7
	note G_, 1
;Bar 8
	volume_envelope 10, 7
	note F_, 1
	volume_envelope 6, 7
	note F_, 1
	volume_envelope 10, 7
	note E_, 1
	volume_envelope 6, 7
	note E_, 1
	volume_envelope 10, 7
	note D_, 1
	volume_envelope 6, 7
	note D_, 1
	volume_envelope 10, 7
	note E_, 1
	volume_envelope 6, 7
	note E_, 1
	volume_envelope 10, 7
	note C_, 1
	volume_envelope 6, 7
	note C_, 1
	volume_envelope 10, 7
	octave 3
	note G_, 1
	volume_envelope 6, 7
	note G_, 1
	volume_envelope 10, 7
	octave 4
	note D_, 1
	volume_envelope 6, 7
	note D_, 1
	volume_envelope 10, 7
	note C_, 1
	volume_envelope 6, 7
	note C_, 3
;Bar 9
	volume_envelope 10, 7
	note C_, 1
	volume_envelope 6, 7
	note C_, 3
	volume_envelope 10, 7
	note C_, 1
	volume_envelope 6, 7
	note C_, 3
	volume_envelope 10, 7
	note C_, 1
	volume_envelope 6, 7
	note C_, 3
	volume_envelope 10, 7
	octave 3
	note G_, 1
	volume_envelope 6, 7
	note G_, 1
;Bar 10
	volume_envelope 10, 7
	octave 4
	note D_, 1
	volume_envelope 6, 7
	note D_, 1
	volume_envelope 10, 7
	note E_, 1
	volume_envelope 6, 7
	note E_, 1
	volume_envelope 10, 7
	note D_, 1
	volume_envelope 6, 7
	note D_, 3
	volume_envelope 10, 7
	note C_, 1
	volume_envelope 6, 7
	note C_, 3 
	rest 1 
	note_type 6, 9, 7
	octave 4
	note E_, 1 
	volume_envelope 6, 7
	note F_, 1 
	note_type 12, 11, 7
	note G_, 6
;Bar 11
	octave 5
	note C_, 6
	octave 4
	note B_, 4
	note A_, 2
	note G_, 2
;Bar 12
	note E_, 2
;Bar 12
	note D_, 2
	note E_, 2
	note C_, 4
	note A_, 2
	note G_, 6
;Bar 13
	octave 5
	note C_, 6
	octave 4
	note B_, 4
	note A_, 2
	note G_, 2
;Bar 12
	note E_, 2
;Bar 14
	note C_, 4
	octave 3
	note G_, 2
	octave 4
	note D_, 2
	note C_, 2
	sound_ret

; ============================================================================================================

Music_Route201_Ch3:
	note_type 12, 1, 6
	vibrato 8, 2, 6
	pitch_offset $0001
;Bar 1
	octave 3
	sound_call Music_Route201_Ch3_C_
	sound_call Music_Route201_Ch3_C_
;Bar 2
	sound_call Music_Route201_Ch3_C_
	sound_call Music_Route201_Ch3_C_
;Bar 3
	transpose 1, 0
	sound_call Music_Route201_Ch3_C_
	transpose 1, 4
	sound_call Music_Route201_Ch3_C_
;Bar 4
	transpose 1, 5
	sound_call Music_Route201_Ch3_C_
	transpose 1, 0
	sound_call Music_Route201_Ch3_C_
;Bar 5
	transpose 1, 5
	sound_call Music_Route201_Ch3_C_
	transpose 1, 0
	sound_call Music_Route201_Ch3_C_
;Bar 6
	transpose 1, 5
	sound_call Music_Route201_Ch3_C_
	transpose 1, 7
	sound_call Music_Route201_Ch3_C_
	transpose 0, 0
;Bar 7
	sound_call Music_Route201_Ch3_Bar7
;Bar 8
	sound_call Music_Route201_Ch3_Bar8
;Bar 9
	sound_call Music_Route201_Ch3_Bar7
;Bar 10
	sound_call Music_Route201_Ch3_Bar8
;Bar 11
	volume_envelope 1, 6
	volume 5, 5
	note F_, 6
	note F_, 2
	note G_, 2
	note G_, 4
	note G_, 2
;Bar 12
	note E_, 6
	note E_, 2
	note C_, 2
	note C_, 4
	note E_, 2
;Bar 13
	note F_, 6
	note F_, 2
	note C_, 2
	note C_, 4
	note C_, 2
;Bar 14
	note F_, 6
	note F_, 2
	note G_, 2
	note G_, 1
	volume_envelope 2, 6
	note G_, 1
	volume_envelope 1, 6
	note A_, 1
	volume_envelope 2, 6
	note A_, 1
	volume_envelope 1, 6
	note B_, 1
	volume_envelope 2, 6
	note B_, 1
;Bar 15
	volume 7, 7
	sound_loop 0, Music_Route201_Ch3

Music_Route201_Ch3_C_:
	volume_envelope 1, 6
	note C_, 1
	volume_envelope 2, 6
	note C_, 1
	volume_envelope 1, 6
	note C_, 1
	volume_envelope 2, 6
	note C_, 4
	rest 1
	sound_ret

Music_Route201_Ch3_Bar7:
	octave 3
	volume_envelope 1, 6
	note F_, 1
	volume_envelope 2, 6
	note F_, 3
	volume_envelope 1, 6
	note F_, 1
	volume_envelope 2, 6
	note F_, 3
	volume_envelope 1, 6
	note C_, 1
	volume_envelope 2, 6
	note C_, 3
	volume_envelope 1, 6
	note C_, 1
	volume_envelope 2, 6
	note C_, 3
	sound_ret

Music_Route201_Ch3_Bar8:
	volume_envelope 1, 6
	note G_, 1
	volume_envelope 2, 6
	note G_, 3
	rest 2
	volume_envelope 1, 6
	note G_, 1
	volume_envelope 2, 6
	note G_, 1
	volume_envelope 1, 6
	note C_, 1
	volume_envelope 2, 6
	note C_, 3
	rest 2
	volume_envelope 1, 6
	note C_, 1
	volume_envelope 2, 6
	note C_, 1
	sound_ret

; ============================================================================================================

Music_Route201_Ch4:
	toggle_noise 3
	stereo_panning TRUE, FALSE
	drum_speed 12
Music_Route201_Ch4_master:
;Bar 1
	rest 4
	drum_note 5, 8
	drum_note 5, 8
;Bar 2
	drum_note 5, 8
	drum_note 5, 4
;Bar 3
	drum_note 9, 4
	drum_note 3, 4
	drum_note 9, 2
	drum_note 9, 2
	drum_note 3, 4
;Bar 4
	sound_call Music_Route201_Ch4_Type1
	drum_note 9, 2
	drum_note 3, 6
;Bar 5
	sound_call Music_Route201_Ch4_Type1
	sound_call Music_Route201_Ch4_Type1
;Bar 6
	sound_call Music_Route201_Ch4_Type1
	drum_note 9, 2
	drum_note 3, 2
	drum_note 3, 4
;Bar 7
Music_Route201_Ch4_loop:
	drum_note 5, 4
	sound_loop 16, Music_Route201_Ch4_loop
;Bar 11
	drum_speed 8
Music_Route201_Ch4_loop2:
	drum_note 3, 4
	drum_note 3, 2
	drum_note 9, 4
	drum_note 9, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 9, 4
	drum_note 9, 2
	sound_loop 3, Music_Route201_Ch4_loop2
;Bar 14
Music_Route201_Ch4_loop3:
	drum_note 9, 2
	sound_loop 6, Music_Route201_Ch4_loop3

	drum_speed 12
	sound_call Music_Route201_Ch4_Type1
	sound_loop 0, Music_Route201_Ch4_master

Music_Route201_Ch4_Type1:
	drum_note 9, 2
	drum_note 9, 2
	drum_note 3, 2
	drum_note 3, 2
	sound_ret

; ============================================================================================================
; ============================================================================================================

Music_Route201Night:
	channel_count 3
	channel 1, Music_Route201Night_Ch1
	channel 2, Music_Route201Night_Ch2
	channel 3, Music_Route201_Ch3

Music_Route201Night_Ch1:
	volume 7, 7
	tempo 160
	duty_cycle $3
	note_type 12, 10, 7
	pitch_offset $0002
	stereo_panning TRUE, TRUE
;Bar 1
	rest 4
Music_Route201Night_Ch1_master:
	sound_call Music_Route201_Ch1_type1
	sound_call Music_Route201_Ch1_type2
;Bar 2
	rest 3
	octave 3
	sound_call Music_Route201_Ch1_typeG
	volume_envelope 9, 7
	octave 2
	note B_, 1
	volume_envelope 6, 7
	note B_, 2
	rest 3
	volume_envelope 9, 7
	octave 3
	note F_, 1
	volume_envelope 6, 7
	note F_, 1
	volume_envelope 9, 7
	octave 2
	note A_, 1
	volume_envelope 6, 7
	note A_, 1
;Bar 3
	duty_cycle $2
	volume_envelope 6, 7
	octave 4
	note C_, 6
	note D_, 2
	note C_, 2
	octave 3
	note G_, 2
	note E_, 4
;Bar 4
	note F_, 4
	note A_, 2
	note F_, 2
	note G_, 2
	note C_, 6
;Bar 5
	note F_, 6
	note C_, 2
	note E_, 2
	note C_, 4
	note G_, 2
;Bar 6
	note F_, 4
	note A_, 2
	note F#, 2
	note A_, 4
	note G_, 4
;Bar 7
	duty_cycle $3
	sound_call Music_Route201_Ch1_Bar7_1
	sound_call Music_Route201_Ch1_Bar7_2
;Bar 8
	sound_call Music_Route201_Ch1_typeG
	octave 2
	sound_call Music_Route201_Ch1_type4
	octave 2
	sound_call Music_Route201_Ch1_typeG
	volume_envelope 9, 7
	octave 3
	note E_, 1
	volume_envelope 6, 7
	note E_, 1
	volume_envelope 9, 7
	note C_, 1
	volume_envelope 6, 7
	note C_, 1
;Bar 9
	sound_call Music_Route201_Ch1_Bar7_1
	sound_call Music_Route201_Ch1_Bar7_2
;Bar 10
	volume_envelope 9, 7
	octave 2
	note B_, 1
	volume_envelope 6, 7
	note B_, 1
	sound_call Music_Route201_Ch1_type4
	volume_envelope 9, 7
	note C_, 1
	note G_, 1
	octave 4
	note C_, 1
	note D_, 1
	note E_, 1
	note F_, 1
;Bar 11
	duty_cycle $2
	volume_envelope 6, 7
	note F_, 2
	note C_, 2
	note F_, 2
	note A_, 2
	note G_, 2
	note D_, 2
	note G_, 2
	note B_, 2
;Bar 12
	note A_, 2
	note G_, 2
	octave 4
	note C_, 2
	octave 3
	note B_, 2
	note A_, 2
	note G_, 2
	note E_, 2
	note C_, 2
;Bar 13
	note A_, 2
	note F_, 2
	note C_, 2
	octave 4
	note C_, 2
	octave 3
	note A_, 2
	note G_, 2
	note C_, 2
	note A_, 2
;Bar 14
	octave 4
	note C_, 2
	octave 3
	note F_, 2
	note C_, 2
	note G#, 2
	octave 4
	note C_, 4
	note D_, 4
;Bar 15
	duty_cycle $1
	octave 3
	note C_, 1
	volume_envelope 8, 7
	note C_, 2
	rest 1
	sound_loop 0, Music_Route201Night_Ch1_master

Music_Route201Night_Ch2:
	duty_cycle $2
	note_type 12, 7, 7
	vibrato 18, 1, 10
	pitch_offset $0001
	stereo_panning TRUE, TRUE
;Bar 1
	octave 2
	note G_, 4
Music_Route201Night_Ch2_master:
	octave 3
	note E_, 4
	octave 2
	note A_, 4
	octave 3
	note F_, 4
;Bar 2
	octave 2
	note B_, 4
	octave 3
	note G_, 4
	octave 2
	note A_, 4
	note_type 6, 7, 7
	octave 3
	note F_, 6
	sound_call Music_Route201_Ch2_Main
	volume_envelope 8, 6
	note C_, 4
	volume_envelope 7, 7
	sound_loop 0, Music_Route201Night_Ch2_master