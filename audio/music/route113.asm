; Route 113 (Pokémon RSE)
; Demixed by TriteHexagon

Music_Route113:
	channel_count 4
	channel 1, Music_Route113_Ch1
	channel 2, Music_Route113_Ch2
	channel 3, Music_Route113_Ch3
	channel 4, Music_Route113_Ch4

; ============================================================================================================
Music_Route113_Ch1:
	tempo 150
	volume 6, 6
	vibrato 8, 1, 4

Music_Route113_Ch1_master:
	
	note_type 12, 7, 7
	rest 2
Music_Route113_Ch1_Bar1_6:
;Bar1-4:
	duty_cycle $1
	sound_call Music_Route113_Ch1_Bar1
	sound_call Music_Route113_Ch1_Bar1
	sound_call Music_Route113_Ch1_Bar4
;Bar5-6
	volume_envelope 9, 8
	stereo_panning TRUE, TRUE
	duty_cycle $2
	octave 3
	note D_, 1
	rest 1
	note A_, 12
;Bar6:c
	volume_envelope 9, 7
	note A_, 8
	rest 4
	sound_loop 2, Music_Route113_Ch1_Bar1_6
;Bar13:
	note_type 6, 9, 7
	sound_call Music_Route113_Ch1_Bar13_16
	rest 1
	note F#, 2
	note D_, 1
	rest 1
	octave 1
	note G_, 2
	note B_, 1
	rest 1
	octave 2
	note D_, 2
	note G_, 1
	rest 1
	note B_, 2
	note G_, 1
	rest 1
	note D_, 2
	octave 1
	note B_, 1
	rest 1
	note G_, 2
	note B_, 1
	rest 1
	octave 2
	note D_, 2
	note G_, 1
	rest 1
;Bar19:
	note A_, 2
	note E_, 1
	rest 1
	note C#, 2
	
	octave 1
	note A_, 1
	rest 1
	note E_, 2
	note A_, 1
	rest 1
	octave 2
	note C#, 2
	note E_, 1
	rest 1
	note A_, 2
	note E_, 1
	rest 1
	note C#, 2
	
	octave 1
	note A_, 1
	rest 1
	note F#, 2
	note A#, 1
	rest 1
	octave 2
	note C#, 2
	note E_, 1
	rest 1
;Bar20:
	note F#, 2
	note E_, 1
	rest 1
	note C#, 2
	
	octave 1
	note A#, 1
	rest 1
	note F#, 2
	note A#, 1
	rest 1
	octave 2
	note C#, 2
	note E_, 1
	rest 1
	note A#, 2
	note F#, 1
	rest 1
	note E_, 2
	note C#, 1
	rest 1
	
	octave 1
	note A#, 2
	octave 2
	note C#, 1
	rest 1
	note E_, 2
	note F#, 1
	rest 1
;Bar21:
	note A#, 2
	note F#, 1
	rest 1
	note E_, 2
	note C#, 1
	rest 1
	
	octave 1
	volume_envelope 9, 7
	sound_call Music_Route113_Ch1_Bar13_16

	rest 1
	note F#, 2
	note D_, 1
	rest 1
	octave 1
	note G_, 2
	octave 2
	note D_, 1
	rest 1
	note F#, 2
	note B_, 1
	rest 1
	octave 3
	note D_, 2
	octave 2
	note B_, 1
	rest 1
	note F#, 2
	note D_, 1
	rest 1
	octave 1
	note G_, 2
	octave 2
	note D_, 1
	rest 1
	note F#, 2
	note B_, 1
	rest 1
;Bar25:
	octave 3
	note D_, 2
	octave 2
	note G#, 1
	rest 1
	note F#, 2
	note D_, 1
	rest 1
	octave 1
	note G#, 2
	octave 2
	note D_, 1
	rest 1
	note F#, 2
	note G#, 1
	rest 1
	note B_, 2
	note G#, 1
	rest 1
	note F#, 2
	note D_, 1
	rest 1
	octave 1
	note A_, 2
	octave 2
	note E_, 1
	rest 1
	note A_, 2
	octave 3
	note C#, 1
	rest 1
;Bar26:
	note E_, 2
	note C#, 1
	rest 1
	octave 2
	note A_, 2
	note E_, 1
	rest 1
	octave 1
	note A_, 2
	octave 2
	note E_, 1
	rest 1
	note A_, 2
	octave 3
	note C#, 1
	rest 1
	octave 1
	note A_, 2
	octave 2
	note E_, 1
	rest 1
	note A_, 2
	octave 3
	note C#, 1
	rest 1
	note E_, 2
	note C#, 1
	rest 1
	octave 2
	note A_, 2
	note E_, 1
	rest 1
;Bar27:
	octave 1
	note A_, 2
	octave 2
	note E_, 1
	rest 1
;Bar25+
	note A_, 2
	octave 3
	note C#, 1
	rest 1

	sound_call Music_Route113_Ch1_Bar1soft
	sound_call Music_Route113_Ch1_Bar1soft
	sound_call Music_Route113_Ch1_Bar4soft
	volume_envelope 9, 8
	stereo_panning TRUE, TRUE
	duty_cycle $2
	octave 3
	note D_, 1
	rest 1
	note A_, 2
	note D_, 1
	rest 1
	note A_, 8
	volume_envelope 9, 7
	note A_, 8
	duty_cycle $1

	rest 4

	sound_call Music_Route113_Ch1_Bar1soft
	sound_call Music_Route113_Ch1_Bar1soft
	sound_call Music_Route113_Ch1_Bar4soft

	volume_envelope 9, 8
	duty_cycle $2
	stereo_panning TRUE, TRUE
	octave 3
	note D_, 1
	rest 1
	note A_, 2
	volume_envelope 9, 7
	note A_, 8
	volume_envelope 9, 8
	note D_, 1
	rest 1
	volume_envelope 9, 7
	note A_, 8
	rest 2
	sound_loop 0, Music_Route113_Ch1_master
	sound_ret

Music_Route113_Ch1_Bar1:
;Bar1:
	stereo_panning TRUE, TRUE
	note_type 12, 9, 7
	octave 1
	note G_, 1
	volume_envelope 7, 7
	note G_, 1
	volume_envelope 9, 7
	note B_, 1
	volume_envelope 7, 7
	note B_, 1
	octave 2
	volume_envelope 9, 7
	note F#, 1
	volume_envelope 7, 7
	note F#, 1
	volume_envelope 9, 7
	note G_, 1
	volume_envelope 7, 7
	note G_, 1
	volume_envelope 9, 7
	note B_, 1
	volume_envelope 7, 7
	note B_, 1
	octave 3
	volume_envelope 9, 7
	note F#, 1
	volume_envelope 7, 7
	note F#, 1
	stereo_panning FALSE, TRUE
	note_type 8, 9, 6
	note A_, 1
	note B_, 1
	note G_, 1
;Bar2:
	note F#, 1
	note G_, 1
	note D_, 1
	note C#, 1
	note D_, 1
	octave 2
	note B_, 1
	stereo_panning TRUE, FALSE
	note A_, 1
	volume_envelope 7, 6
	note B_, 1
	note G_, 1
	note F#, 1
	note G_, 1
	note D_, 1
	note C#, 1
	note D_, 1
	octave 1
	note B_, 1
	note_type 12, 9, 7
	sound_ret

Music_Route113_Ch1_Bar4:
;Bar4:
	note_type 12, 9, 7
	stereo_panning TRUE, TRUE
	note D_, 1
	volume_envelope 7, 7
	note D_, 1
	volume_envelope 9, 7
	note F#, 1
	volume_envelope 7, 7
	note F#, 1
	octave 2
	volume_envelope 9, 7
	note C#, 1
	volume_envelope 7, 7
	note C#, 1
	volume_envelope 9, 7
	note D_, 1
	volume_envelope 7, 7
	note D_, 1
	volume_envelope 9, 7
	note F#, 1
	volume_envelope 7, 7
	note F#, 1
	octave 3
	volume_envelope 9, 7
	note C#, 1
	volume_envelope 7, 7
	note C#, 1
	stereo_panning FALSE, TRUE
	note_type 8, 9, 6
	note E_, 1
	note F#, 1
	note D_, 1
	note C#, 1
	note D_, 1
	octave 2
	note A_, 1
	note G#, 1
	note A_, 1
	note F#, 1
	stereo_panning TRUE, FALSE
	note E_, 1
	volume_envelope 7, 6
	note F#, 1
	note D_, 1
	note C#, 1
	note D_, 1
	octave 1
	note A_, 1
	note_type 12, 9, 7
	sound_ret

Music_Route113_Ch1_Bar1soft:
;Bar1:
	stereo_panning TRUE, TRUE
	note_type 12, 8, 7
	octave 1
	note G_, 1
	volume_envelope 6, 7
	note G_, 1
	volume_envelope 8, 7
	note B_, 1
	volume_envelope 6, 7
	note B_, 1
	octave 2
	volume_envelope 8, 7
	note F#, 1
	volume_envelope 6, 7
	note F#, 1
	volume_envelope 8, 7
	note G_, 1
	volume_envelope 6, 7
	note G_, 1
	volume_envelope 8, 7
	note B_, 1
	volume_envelope 6, 7
	note B_, 1
	octave 3
	volume_envelope 8, 7
	note F#, 1
	volume_envelope 6, 7
	note F#, 1
	stereo_panning FALSE, TRUE
	note_type 8, 8, 6
	note A_, 1
	note B_, 1
	note G_, 1
;Bar2:
	note F#, 1
	note G_, 1
	note D_, 1
	note C#, 1
	note D_, 1
	octave 2
	note B_, 1
	stereo_panning TRUE, FALSE
	note A_, 1
	volume_envelope 6, 6
	note B_, 1
	note G_, 1
	note F#, 1
	note G_, 1
	note D_, 1
	note C#, 1
	note D_, 1
	octave 1
	note B_, 1
	note_type 12, 8, 7
	sound_ret

Music_Route113_Ch1_Bar4soft:
;Bar4:
	note_type 12, 8, 7
	stereo_panning TRUE, TRUE
	note D_, 1
	volume_envelope 6, 7
	note D_, 1
	volume_envelope 8, 7
	note F#, 1
	volume_envelope 6, 7
	note F#, 1
	octave 2
	volume_envelope 8, 7
	note C#, 1
	volume_envelope 6, 7
	note C#, 1
	volume_envelope 8, 7
	note D_, 1
	volume_envelope 6, 7
	note D_, 1
	volume_envelope 8, 7
	note F#, 1
	volume_envelope 6, 7
	note F#, 1
	octave 3
	volume_envelope 8, 7
	note C#, 1
	volume_envelope 6, 7
	note C#, 1
	stereo_panning FALSE, TRUE
	note_type 8, 8, 6
	note E_, 1
	note F#, 1
	note D_, 1
	note C#, 1
	note D_, 1
	octave 2
	note A_, 1
	note G#, 1
	note A_, 1
	note F#, 1
	stereo_panning TRUE, FALSE
	note E_, 1
	volume_envelope 6, 6
	note F#, 1
	note D_, 1
	note C#, 1
	note D_, 1
	octave 1
	note A_, 1
	note_type 12, 8, 7
	sound_ret

Music_Route113_Ch1_Bar13_16:
	duty_cycle $1
	octave 1
	note B_, 2
	octave 2
	note D_, 1
	rest 1
	note F#, 2
	note B_, 1
	rest 1
	octave 3
	note D_, 2
	octave 2
	note B_, 1
	rest 1
	note F#, 2
	note D_, 1
	rest 1
	octave 1
	note B_, 2
	octave 2
	note D_, 1
	rest 1
	note F#, 2
	note B_, 1
	rest 1
;Bar16:
	octave 3
	note D_, 2
	octave 2
	note A#, 1
	rest 1
	note F#, 2
	note D_, 1
	rest 1
	octave 1
	note A#, 2
	octave 2
	note D_, 1
	rest 1
	note F#, 2
	note A#, 1
	rest 1
	octave 3
	note D_, 2
	octave 2
	note A#, 1
	rest 1
	note F#, 2
	note D_, 1
	rest 1
	octave 1
	note A_, 2
	octave 2
	note D_, 1
	rest 1
	note F#, 2
	note A_, 1
	rest 1
;Bar17:
	octave 3
	note D_, 2
	octave 2
	note A_, 1
	rest 1
	note F#, 2
	note D_, 1
	rest 1
	
	octave 1
	note A_, 2
	octave 2
	note D_, 1
	rest 1
	note F#, 2
	note A_, 1
	rest 1
	octave 3
	note D_, 2
	octave 2
	note G#, 1
	rest 1
	note F#, 2
	note D_, 1
	rest 1
	
	octave 1
	note G#, 2
	octave 2
	note D_, 1
	rest 1
	note F#, 2
	note G#, 1
	rest 1
;Bar18:
	octave 3
	note D_, 2
	octave 2
	note G#, 1
	sound_ret

; ============================================================================================================
Music_Route113_Ch2:
	stereo_panning FALSE, TRUE
	note_type 6, 6, 8
	duty_cycle $1
	pitch_offset $0001
	octave 3

	rest 4
Music_Route113_Ch2_master:

Music_Route113_Ch2_BF#:
;Bar1-3:
	transpose 2, 11
	sound_call Music_Route113_Ch2_base1
	sound_call Music_Route113_Ch2_base2
	sound_call Music_Route113_Ch2_base3
	sound_call Music_Route113_Ch2_base1
	sound_call Music_Route113_Ch2_base2
	sound_call Music_Route113_Ch2_base3
;Bar4-6:
	transpose 2, 6
	sound_call Music_Route113_Ch2_base1
	sound_call Music_Route113_Ch2_base2
	sound_call Music_Route113_Ch2_base3
	sound_call Music_Route113_Ch2_base1
	sound_call Music_Route113_Ch2_base2
	sound_call Music_Route113_Ch2_base3
	sound_loop 2, Music_Route113_Ch2_BF#

;Bar13
	transpose 2, 9
	sound_call Music_Route113_Ch2_base1
;Bar14
	transpose 2, 10
	sound_call Music_Route113_Ch2_base2
	sound_call Music_Route113_Ch2_base3
	transpose 2, 11
	sound_call Music_Route113_Ch2_base1
	transpose 2, 0
;Bar15
	transpose 1, 1
	sound_call Music_Route113_Ch2_base2
	transpose 1, 2
	sound_call Music_Route113_Ch2_base3
;Bar16
	transpose 1, 6
	sound_call Music_Route113_Ch2_base1
;Bar17
	transpose 1, 7
	sound_call Music_Route113_Ch2_base2
	sound_call Music_Route113_Ch2_base3

	transpose 1, 4
	sound_call Music_Route113_Ch2_base1
;Bar18
	transpose 1, 1
	sound_call Music_Route113_Ch2_base2
	transpose 1, 6
	sound_call Music_Route113_Ch2_base3
;Bar19:
	volume_envelope 6, 8
	transpose 1, 9
	sound_call Music_Route113_Ch2_base1
;Bar20:
	transpose 1, 10
	sound_call Music_Route113_Ch2_base2
	sound_call Music_Route113_Ch2_base3

	transpose 1, 11
	sound_call Music_Route113_Ch2_base1
;Bar21
	transpose 0, 1
	sound_call Music_Route113_Ch2_base2
	transpose 1, 11
	sound_call Music_Route113_Ch2_base2
;Bar22
	transpose 1, 6
	sound_call Music_Route113_Ch2_base1
;Bar23
	transpose 1, 2
	sound_call Music_Route113_Ch2_base2
	sound_call Music_Route113_Ch2_base3
;Bar24
	transpose 1, 1
	sound_call Music_Route113_Ch2_base1

	transpose 1, 4
	sound_call Music_Route113_Ch2_base2

	transpose 1, 7
	sound_call Music_Route113_Ch2_base3
;Bar25-27

Music_Route113_Ch2_BF#_alt:
;Bar28-30:
	volume_envelope 5, 8
	transpose 2, 11
	sound_call Music_Route113_Ch2_base1
	sound_call Music_Route113_Ch2_base2
	sound_call Music_Route113_Ch2_base3
	sound_call Music_Route113_Ch2_base1
	sound_call Music_Route113_Ch2_base2
	sound_call Music_Route113_Ch2_base3
;Bar34-36:
	volume_envelope 6, 8
	transpose 2, 6
	sound_call Music_Route113_Ch2_base1
	sound_call Music_Route113_Ch2_base2
	sound_call Music_Route113_Ch2_base3
	sound_call Music_Route113_Ch2_base1
	sound_call Music_Route113_Ch2_base2
	sound_call Music_Route113_Ch2_base3
	sound_loop 2, Music_Route113_Ch2_BF#_alt

	sound_loop 0, Music_Route113_Ch2_master

Music_Route113_Ch2_base1:
	octave 5
	note C_, 4
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note C_, 4
	note C_, 3
	rest 1
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note C_, 4
	sound_ret

Music_Route113_Ch2_base2:
	octave 5
	note C_, 4
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	sound_ret

Music_Route113_Ch2_base3:
	octave 5
	note C_, 3
	rest 1
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note C_, 4
	sound_ret

; ============================================================================================================
Music_Route113_Ch3:
	tempo 150
	stereo_panning TRUE, TRUE

Music_Route113_Ch3_master:
	note_type 12, 1, 4
	vibrato 0, 0, 0
	octave 4
	note F#, 1
	note B_, 1
;Bar1:c
	octave 5
	note D_, 6
	note C#, 4
	octave 4
	note A_, 2
	note B_, 4
;Bar2:c
	note D_, 2
	note G_, 6
	octave 5
	note D_, 2
	note C#, 1
	rest 1
	octave 4
	note A_, 2
;Bar3:c
	note B_, 4
	note D_, 2
	note G_, 9
	volume_envelope 2, 4
	note G_, 1
	volume_envelope 1, 4
;Bar4:c
	note B_, 1
	octave 5
	note C#, 1
	octave 4
	note A_, 9
	volume_envelope 2, 4
	note A_, 3
	rest 2
;Bar5:
	rest 8
	volume_envelope 1, 6
	vibrato 8, 4, 6
	octave 3
	note G_, 1
	rest 1
	octave 4
	note E_, 8
	volume_envelope 2, 6
	note E_, 6
	volume_envelope 3, 6
	note E_, 6
	rest 2
;Bar7:c
	volume_envelope 1, 4
	vibrato 0, 0, 0
	octave 5
	note E_, 1
	note D#, 1
	note D_, 6
	note C#, 4
	octave 4
	note A_, 2
	octave 5
	note G_, 4 
;Bar8:c
	octave 4
	note D_, 2
	note G_, 4
	octave 5
	note G_, 1
	note F#, 1
	note D_, 2
	note C#, 1
	rest 1
	octave 4
	note A_, 2
;Bar9:c
	octave 5
	note C#, 4
	octave 4
	note D_, 2
	octave 5
	note G_, 2
	note D_, 2
	octave 4
	note G_, 2
	note B_, 2
	note D_, 2
;Bar10:c
	note B_, 1
	octave 5
	note C#, 1
	octave 4
	note A_, 9
	volume_envelope 2, 4
	note A_, 3
	volume_envelope 1, 4
	rest 2
;Bar11:c
	rest 8
	volume_envelope 1, 6
	vibrato 8, 4, 6
	octave 3
	note G_, 1
	rest 1
	octave 4
	note E_, 8
;Bar12:c
	volume_envelope 2, 6
	note E_, 6
	volume_envelope 3, 6
	note E_, 6
	rest 2
;Bar13:c
	volume_envelope 1, 4
	vibrato 0, 0, 0
	octave 4
	note A_, 1
	note A#, 1
	note B_, 4
	octave 5
	note C#, 1
	rest 1
	note D_, 4
	octave 4
	note B_, 1
	rest 1
	octave 5
	note C#, 4 
;Bar14:c
	note D_, 1
	rest 1
	note E_, 4
	note C#, 1
	rest 1
	note D_, 1
	rest 1
	note E_, 1
	rest 1
	note F#, 1
	rest 1
;Bar15:c
	note_type 6, 1, 4
	note G_, 1
	note F#, 3
	note_type 12, 1, 4
	note F_, 1
	rest 1
	note F#, 1
	rest 1
	note B_, 2
	note F#, 1
	rest 1
	note E_, 1
	rest 1
	note D_, 4
;Bar16:c
	note C#, 1
	rest 1
	note D_, 4
	octave 4
	note B_, 1
	rest 1
	octave 5
	note C#, 4
	note D_, 1
	rest 1
	note_type 6, 1, 4
	note F_, 1
	note E_, 7
	note_type 12, 1, 4 
;Bar17:
	note C#, 1
	rest 1
	note D_, 4
	note E_, 1
	rest 1
	note F#, 1
	rest 1
	note_type 6, 1, 4
	note G_, 1
	note F#, 3
	note_type 12, 1, 4
	note F_, 2
;Bar18:c
	note F#, 1
	rest 1
	note F_, 1
	rest 1
	note F#, 1
	rest 1
	note A#, 2
	note F#, 1
	rest 1
	note E_, 2
	note F#, 2
	volume 5, 5
	volume_envelope 1, 5 
	note D_, 2
;Bar19:c
	note C#, 1
	note C_, 1
	octave 4
	note B_, 4
	octave 5
	note C#, 1
	note_type 6, 1, 5
	rest 1
	note D#, 1
	note_type 12, 1, 5
	note D_, 4
	octave 4
	note B_, 1
	rest 1
	octave 5
	note C#, 4 
;Bar20:c
	note D_, 1
	rest 1
	note E_, 4
	note C#, 1
	rest 1
	note D_, 1
	rest 1
	note E_, 1
	rest 1
	note F#, 1
	rest 1
;Bar21:c
	note_type 6, 1, 5
	note G_, 1
	note F#, 3
	note_type 12, 1, 5
	note F_, 1
	rest 1
	note F#, 1
	note_type 6, 1, 5
	rest 1
	note A_, 1
	note_type 12, 1, 5
	note G#, 2
	note F#, 1
	rest 1
	note E_, 2
	octave 4
	note B_, 3
	octave 5
	note C#, 1
;Bar22:c
	note D_, 1
	note E_, 1
	note G_, 4
	note A_, 1
	rest 1
	note G_, 4
	note F#, 1
	rest 1
	note E_, 4 
;Bar23:c
	octave 4
	note B_, 1
	rest 1
	octave 5
	note C#, 4
	note D_, 1
	note_type 6, 1, 5
	rest 2
	note F_, 1
	note E_, 2
	rest 1
	note_type 12, 1, 5
	note E_, 2
	note D#, 1
	rest 1
;Bar24:c
	note E_, 1
	rest 1
	note D#, 1
	rest 1
	note E_, 1
	rest 1
	note_type 6, 1, 5
	note F#, 1
	note G_, 7
	note_type 12, 1, 5
	note F#, 1
	rest 1
	note E_, 4
;Bar25:c
	octave 4
	volume 7, 7
	volume_envelope 1, 3
	vibrato 0, 3, 3
	note F#, 1
	note B_, 1
	octave 5
	note_type 6, 1, 3
	note E_, 1
	note D_, 11
	note_type 12, 1, 3
	note C#, 4
	octave 4
	note A_, 2
	note B_, 4
;Bar26:c
	note D_, 2
	note G_, 6
	octave 5
	note_type 6, 1, 3
	note D#, 1
	note D_, 3
	note_type 12, 1, 3
	note C#, 1
	rest 1
	octave 4
	note A_, 2
;Bar27:c
	note B_, 4
	note D_, 2
	note G_, 10
;Bar28:c
	note B_, 1
	octave 5
	note C#, 1
	octave 4
	note A_, 12
	rest 2
;Bar29:c
	rest 8
	volume 6, 6
	volume_envelope 1, 6
	vibrato 8, 4, 6
	octave 3
	note G_, 1
	rest 1
	octave 4
	note E_, 2
	octave 3
	note G_, 1
	rest 1
	octave 4
	note E_, 8
	volume_envelope 2, 6
	note E_, 6
	volume_envelope 3, 6
	note E_, 2
	rest 2
;Bar31:c
	octave 5
	volume 7, 7
	volume_envelope 1, 3
	vibrato 0, 3, 3
	note E_, 1
	note D#, 1
	note_type 6, 1, 3
	note C#, 1
	note D_, 11
	note_type 12, 1, 3
	note C#, 4
	octave 4
	note A_, 2
	octave 5
	note_type 6, 1, 3
	note G#, 1
	note G_, 7
	note_type 12, 1, 3
;Bar32:c
	octave 4
	note D_, 2
	note G_, 4
	octave 5
	note G_, 1
	note F#, 1
	note_type 6, 1, 3
	note C#, 1
	note D_, 3
	note_type 12, 1, 3
	note C#, 1
	rest 1
	octave 4
	note A_, 2
;Bar33:c
	octave 5
	note C#, 4
	octave 4
	note D_, 2
	octave 5
	note_type 6, 1, 3
	note G#, 1
	note G_, 3
	note_type 12, 1, 3
	note D_, 2
	octave 4
	note G_, 2
	note B_, 2
	note D_, 2
;Bar34:c
	note B_, 1
	octave 5
	note C#, 1
	octave 4
	note_type 6, 1, 3
	note A#, 1
	note A_, 1
	note_type 12, 1, 3
	note A_, 11
	rest 2
;Bar35+:c
	rest 8
	volume 6, 6
	volume_envelope 1, 6
	vibrato 8, 4, 6
	octave 3
	note G_, 1
	rest 1
	octave 4
	note E_, 8
	volume_envelope 2, 6
	note E_, 2
	octave 3
	volume_envelope 1, 6
	note G_, 1
	rest 1
	octave 4
	note E_, 8
	volume_envelope 2, 6
	note E_, 2

	sound_loop 0, Music_Route113_Ch3_master
	sound_ret
; ============================================================================================================
Music_Route113_Ch4:
	drum_speed 12
	stereo_panning TRUE, FALSE
	toggle_noise $5

	rest 2
Music_Route113_Ch4_master:
;Bar1:
	sound_call Music_Route113_Ch4_base1
;Bar2:
	sound_call Music_Route113_Ch4_base2
	sound_call Music_Route113_Ch4_base3
	drum_note 6, 3
	drum_note 6, 1
	drum_note 6, 2
;Bar3:
	drum_note 2, 1
	drum_note 2, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 6, 2
	sound_call Music_Route113_Ch4_base1
;Bar4:
	drum_note 2, 1
	drum_note 2, 1
	sound_call Music_Route113_Ch4_base1
;Bar5:
	sound_call Music_Route113_Ch4_base4
	sound_call Music_Route113_Ch4_base3
;Bar6:
	sound_call Music_Route113_Ch4_base1
	sound_call Music_Route113_Ch4_base4
	sound_call Music_Route113_Ch4_base3
;Bar7:
	sound_call Music_Route113_Ch4_base1
;Bar8:
	sound_call Music_Route113_Ch4_base4
	sound_call Music_Route113_Ch4_base3
;Bar9:
	sound_call Music_Route113_Ch4_base1
	sound_call Music_Route113_Ch4_base4
	sound_call Music_Route113_Ch4_base3
;Bar10:
	sound_call Music_Route113_Ch4_base1
;Bar11:
	sound_call Music_Route113_Ch4_base2
	sound_call Music_Route113_Ch4_base3
;Bar12:
	sound_call Music_Route113_Ch4_base1
	drum_note 6, 2
	drum_note 6, 3
	drum_note 6, 1
	drum_note 6, 2
	drum_note 2, 1
	drum_note 2, 1
	drum_note 6, 2
;Bar13:
	drum_note 2, 1
	drum_note 2, 1
	sound_call Music_Route113_Ch4_base1
;Bar14:
	sound_call Music_Route113_Ch4_base4
	sound_call Music_Route113_Ch4_base3
;Bar15:
	sound_call Music_Route113_Ch4_base1
	sound_call Music_Route113_Ch4_base4
	sound_call Music_Route113_Ch4_base3
;Bar16:
	sound_call Music_Route113_Ch4_base1
;Bar17:
	sound_call Music_Route113_Ch4_base4
	sound_call Music_Route113_Ch4_base3
;Bar18:
	sound_call Music_Route113_Ch4_base1
	sound_call Music_Route113_Ch4_base4
	sound_call Music_Route113_Ch4_base3
;Bar19:
	sound_call Music_Route113_Ch4_base1
;Bar20:
	sound_call Music_Route113_Ch4_base4
	sound_call Music_Route113_Ch4_base3

Music_Route113_Ch4_loop1:
	drum_note 6, 3
	drum_note 6, 1
	drum_note 6, 2
;Bar21:
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	sound_loop 3, Music_Route113_Ch4_loop1
;Bar23:
	sound_call Music_Route113_Ch4_base1
;Bar24:
	sound_call Music_Route113_Ch4_base4
	sound_call Music_Route113_Ch4_base3
	sound_call Music_Route113_Ch4_base1

;Bar25:
	sound_call Music_Route113_Ch4_soft1
	sound_call Music_Route113_Ch4_soft2
	drum_note 6, 2
;Bar26:
	drum_note 3, 1
	drum_note 3, 1
	drum_note 6, 2
	sound_call Music_Route113_Ch4_soft2
	drum_note 6, 3
	drum_note 6, 1
	drum_note 6, 2
;Bar27:
	sound_call Music_Route113_Ch4_soft2
	drum_note 6, 4
	drum_note 6, 2
	sound_call Music_Route113_Ch4_soft3
;Bar28:
	drum_note 3, 1
	drum_note 3, 1
	drum_note 6, 4
	drum_note 6, 2
	sound_call Music_Route113_Ch4_soft3
	drum_note 6, 2
	drum_note 6, 3
;Bar29:
	drum_note 6, 1
	drum_note 6, 1
	sound_call Music_Route113_Ch4_soft2
	drum_note 3, 1
	drum_note 6, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 6, 2
;Bar30:
	sound_call Music_Route113_Ch4_soft2
	drum_note 6, 3
	drum_note 3, 1
	drum_note 6, 2
	sound_call Music_Route113_Ch4_soft3
;Bar31:
	drum_note 3, 1
	drum_note 3, 1
	drum_note 6, 4
	drum_note 6, 2
	sound_call Music_Route113_Ch4_soft3
;Bar32:
	sound_call Music_Route113_Ch4_soft1
	sound_call Music_Route113_Ch4_soft2
	drum_note 6, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 6, 2
;Bar33:
	sound_call Music_Route113_Ch4_soft3
	drum_note 6, 2
	drum_note 6, 3
	drum_note 6, 1
	drum_note 6, 2
	sound_call Music_Route113_Ch4_soft3
;Bar34:
	drum_note 6, 1
	drum_note 6, 1
	drum_note 6, 4
	drum_note 6, 2
	sound_call Music_Route113_Ch4_soft3
	drum_note 6, 2
	drum_note 6, 2
;Bar35:
	drum_note 3, 1
	drum_note 3, 1
	drum_note 6, 2
	sound_call Music_Route113_Ch4_soft2
	drum_note 6, 4
	drum_note 6, 2
;Bar36:
	sound_call Music_Route113_Ch4_soft3
	sound_call Music_Route113_Ch4_soft1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 6, 1
;Bar37:
	drum_note 3, 1
	drum_note 3, 1
	sound_loop 0, Music_Route113_Ch4_master
	sound_ret

Music_Route113_Ch4_base1:
	drum_note 6, 4
	drum_note 6, 2
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 3, 1
	sound_ret

Music_Route113_Ch4_base4:
	drum_note 6, 2
	drum_note 6, 3
	drum_note 6, 1
	drum_note 6, 2
	sound_ret

Music_Route113_Ch4_base2:
	drum_note 6, 2
	drum_note 6, 4
	drum_note 6, 2
	sound_ret

Music_Route113_Ch4_base3:
	drum_note 2, 1
	sound_loop 6, Music_Route113_Ch4_base3
	sound_ret

Music_Route113_Ch4_soft1:
	drum_note 6, 2
	drum_note 6, 3
	drum_note 6, 1
	drum_note 6, 2
	sound_ret

Music_Route113_Ch4_soft2:
	drum_note 3, 1
	sound_loop 6, Music_Route113_Ch4_soft2
	sound_ret

Music_Route113_Ch4_soft3:
	drum_note 3, 1
	sound_loop 4, Music_Route113_Ch4_soft3
	sound_ret