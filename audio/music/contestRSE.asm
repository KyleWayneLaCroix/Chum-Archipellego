Music_ContestRSE:
	channel_count 4
	channel 1, Music_ContestRSE_Ch1
	channel 2, Music_ContestRSE_Ch2
	channel 3, Music_ContestRSE_Ch3
	channel 4, Music_ContestRSE_Ch4

Music_ContestRSE_Ch1:
	volume 7, 7
	duty_cycle $0
	note_type 6, 9, 7
	tempo 149
	stereo_panning FALSE, TRUE
;Bar 1
	octave 3
	note A_, 2
	rest 2
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	note A_, 2
	rest 2
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	note A_, 1
	note B_, 1
	note A_, 1
	note B_, 1
	note A_, 1
	note B_, 1
	note A_, 1
	note B_, 1
	note A_, 2
	note G_, 2
	note F_, 2
	note D#, 2
;Bar 2
	note A_, 2
	note F_, 2
	note A_, 2
	octave 3
	note C_, 2
	note D#, 2
	note C_, 2
	note D#, 2
	note F_, 2
	note A_, 8
	note G_, 1
	note F_, 1
	note D#, 1
	note D_, 1
	note C_, 1
	octave 2
	note A#, 1
	note A_, 1
	note G_, 1
;Bar 3
	note D_, 2
	rest 2
	note D_, 6
	rest 2
	note D_, 2
	note D#, 2
	note F_, 6
	rest 2
	note A#, 6
	rest 2
;Bar 4
	note G#, 2
	note G_, 2
	note G#, 6
	rest 6
	note G#, 2
	rest 2
	note D#, 6
	rest 2
	note G#, 2
	rest 2
;Bar 5
	note A#, 2
	octave 3
	note C_, 2
	note D_, 12
	note G_, 2
	note A_, 2
	note A#, 12
;Bar 6
	note_type 8, 9, 7
	octave 2
	note A#, 1
	rest 1
	octave 3
	note C#, 1
	rest 1
	note F#, 1
	rest 1
	note A#, 1
	rest 1
	note F#, 1
	rest 1
	note C#, 1
	rest 1
	octave 2
	note D#, 1
	note G#, 1
	octave 3
	note C_, 1
	note D#, 1
	note G#, 1
	octave 4
	note C_, 1
	note_type 6, 9, 7
	note D#, 1
	note C_, 1
	octave 3
	note G#, 1
	note D#, 1
	note C_, 1
	octave 2
	note G#, 1
	note D#, 1
	note C_, 1
;Bar 7
	octave 3
	sound_call Music_ContestRSE_Ch1_Bar7
	note A#, 2
	rest 2
;Bar 8
	sound_call Music_ContestRSE_Ch1_Bar7
	note G#, 2
	rest 2
;Bar 9
	note G_, 1
	rest 3
	note G_, 7
	rest 1
	octave 2
	note A#, 1
	rest 1
	octave 3
	note D#, 1
	rest 1
	volume_envelope 11, 7
	duty_cycle $3
	note A#, 2
	octave 4
	note C_, 2
	note D_, 12
;Bar 10
	octave 3
	note F#, 2
	rest 2
	note C#, 2
	note F#, 2
	note A#, 2
	note F#, 2
	note A#, 2
	octave 4
	note C#, 2
	note F_, 8
	note D#, 8
;Bar 11
	volume_envelope 8, 7
	duty_cycle $0
	octave 3
	sound_call Music_ContestRSE_Ch1_Type1
	sound_call Music_ContestRSE_Ch1_Type1
	sound_call Music_ContestRSE_Ch1_Type1
	sound_call Music_ContestRSE_Ch1_Type1
;Bar 12
	sound_call Music_ContestRSE_Ch1_Type1
	sound_call Music_ContestRSE_Ch1_Type1
	sound_call Music_ContestRSE_Ch1_Bar12
;Bar 13
	sound_call Music_ContestRSE_Ch1_Type2
	sound_call Music_ContestRSE_Ch1_Type2
	sound_call Music_ContestRSE_Ch1_Type2
	sound_call Music_ContestRSE_Ch1_Type2
;Bar 14
	sound_call Music_ContestRSE_Ch1_Type3
	sound_call Music_ContestRSE_Ch1_Type3
	note A#, 2
	note A_, 1
	rest 3
	note G_, 1
	rest 3
	note G_, 1
	rest 3
	note A_, 2
;Bar 15
	sound_call Music_ContestRSE_Ch1_Type1
	sound_call Music_ContestRSE_Ch1_Type1
	sound_call Music_ContestRSE_Ch1_Type1
	sound_call Music_ContestRSE_Ch1_Type1
;Bar 16
	sound_call Music_ContestRSE_Ch1_Type1
	sound_call Music_ContestRSE_Ch1_Type1
	sound_call Music_ContestRSE_Ch1_Bar12
;Bar 17
	sound_call Music_ContestRSE_Ch1_Type2
	sound_call Music_ContestRSE_Ch1_Type2
	sound_call Music_ContestRSE_Ch1_Type2
	sound_call Music_ContestRSE_Ch1_Type2
;Bar 18
	sound_call Music_ContestRSE_Ch1_Type3
	sound_call Music_ContestRSE_Ch1_Type3
	note A#, 2
	note A_, 1
	rest 3
	note G_, 1
	rest 1
	note F_, 2
	note G_, 1
	rest 3
	note A_, 2
;Bar 19
	octave 4
	note D_, 1
	rest 1
	octave 3
	note A#, 1
	rest 1
	note F_, 1
	rest 1
	note D_, 1
	rest 1
	octave 2
	note A#, 1
	rest 1
	octave 3
	note D_, 1
	rest 1
	note F_, 1
	rest 1
	note A#, 1
	rest 1
	octave 4
	note D_, 1
	rest 1
	octave 3
	note G#, 1
	rest 1
	note F_, 1
	rest 1
	note D_, 1
	rest 1
	octave 2
	note G#, 1
	rest 1
	octave 3
	note D_, 1
	rest 1
	note F_, 1
	rest 1
	note G#, 1
	rest 1
;Bar 20
	note A#, 1
	rest 1
	note G_, 1
	rest 1
	note D#, 1
	rest 1
	octave 2
	note A#, 1
	rest 1
	note G_, 1
	rest 1
	note A#, 1
	rest 1
	octave 3
	note D#, 1
	rest 1
	note G_, 1
	rest 1
	note A#, 1
	rest 1
	note F#, 1
	rest 1
	note D#, 1
	rest 1
	octave 2
	note A#, 1
	rest 1
	note F#, 1
	rest 1
	note A#, 1
	rest 1
	octave 3
	note D#, 1
	rest 1
	note F#, 1
	rest 1
;Bar 21
	octave 4
	note D_, 1
	octave 3
	note A#, 1
	note F_, 1
	note D_, 1
	octave 2
	note A#, 1
	note F_, 1
	note D_, 1
	octave 1
	note A#, 1
	octave 2
	note D_, 1
	note D#, 1
	note F_, 1
	note A#, 1
	octave 3
	note D_, 1
	note D#, 1
	note F_, 1
	note A#, 1
	octave 4
	note D_, 1
	octave 3
	note G#, 1
	note F_, 1
	note D_, 1
	octave 2
	note G#, 1
	note F_, 1
	note D_, 1
	octave 1
	note G#, 1
	octave 2
	note D_, 1
	note D#, 1
	note F_, 1
	note G#, 1
	octave 3
	note D_, 1
	note D#, 1
	note F_, 1
	note G#, 1
;Bar 22
	note A#, 1
	note G_, 1
	note D#, 1
	octave 2
	note A#, 1
	note G_, 1
	note D#, 1
	octave 1
	note A#, 1
	note G_, 1
	note A#, 1
	octave 2
	note D#, 1
	note F_, 1
	note G_, 1
	note A#, 1
	octave 3
	note D#, 1
	note F_, 1
	note G_, 1
	note A#, 1
	note F#, 1
	note D#, 1
	octave 2
	note A#, 1
	note F#, 1
	note D#, 1
	octave 1
	note A#, 1
	note F#, 1
	note A#, 1
	octave 2
	note D#, 1
	note F#, 1
	note A#, 1
	octave 3
	note D#, 1
	note F#, 1
	note A#, 1
	octave 4
	note D#, 1
	sound_loop 0, Music_ContestRSE_Ch1

Music_ContestRSE_Ch1_Bar7:
	note F_, 1;
	rest 3
	note F_, 7
	rest 1
	octave 2
	note A#, 1
	rest 1
	octave 3
	note D_, 1
	rest 1
	note F_, 1
	rest 3
	note F_, 2
	rest 6
	sound_ret

Music_ContestRSE_Ch1_Type1:
	note G_, 2;
	note G_, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	sound_ret

Music_ContestRSE_Ch1_Type2:
	note A_, 2;
	note A_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	sound_ret

Music_ContestRSE_Ch1_Type3:
	note A#, 2;
	note A#, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	sound_ret

Music_ContestRSE_Ch1_Bar12:
	note G_, 2;
	note F_, 1
	rest 3
	note D#, 1
	rest 1
	note G_, 2
	note G#, 1
	rest 1
	note D#, 1
	rest 1
	note A#, 1
	rest 1
	sound_ret

; ============================================================================================================

Music_ContestRSE_Ch2:
	duty_cycle $1
	note_type 6, 12, 7
	stereo_panning TRUE, FALSE
	vibrato 16, 2, 4
;Bar 1
	octave 4
	note F_, 2
	rest 2
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 2
	rest 2
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	note G_, 1
	note F_, 1
	note G_, 1
	note F_, 1
	note G_, 1
	note F_, 1
	note G_, 1
	note F_, 2
	note D#, 2
	note D_, 2
	note C_, 2
;Bar 2
	octave 3
	note F_, 2
	note C_, 2
	note F_, 2
	note A_, 2
	octave 4
	note C_, 2
	octave 3
	note A_, 2
	octave 4
	note C_, 2
	note D#, 2
	note F_, 8
	note D#, 1
	note D_, 1
	note C_, 1
	octave 3
	note A#, 1
	note A_, 1
	note G_, 1
	note F_, 1
	note D#, 1
;Bar 3
	note_type 12, 12, 7
	note D_, 1
	rest 1
	note D_, 3
	rest 1
	note D_, 1
	note D#, 1
	note F_, 3
	rest 1
	note A#, 3
	rest 1
;Bar 4
	octave 4
	note C_, 1
	octave 3
	note B_, 1
	octave 4
	note C_, 6
	note C_, 1
	rest 1
	octave 3
	note G#, 3
	rest 1
	octave 4
	note D#, 1
	rest 1
;Bar 5
	note D_, 1
	note D#, 1
	note D_, 13
	rest 1
;Bar 6
	octave 3
	note_type 8, 12, 7
	note F#, 1
	rest 1
	note A#, 1
	rest 1
	octave 4
	note C#, 1
	rest 1
	note F#, 1
	rest 1
	note C#, 1
	rest 1
	octave 3
	note A#, 1
	rest 1
	note G#, 1
	rest 1
	octave 4
	note C_, 1
	rest 1
	note D#, 1
	rest 1
	note_type 6, 12, 7
	note G#, 6
	note G_, 1
	note F#, 1
;Bar 7
	note F_, 2
	rest 2
	octave 3
	note D#, 1
	note D_, 1
	note_type 12, 12, 7
	note C#, 1
	note D_, 1
	rest 1
	note D_, 1
	note D#, 1
	note F_, 3
	rest 1
	note A#, 3
	rest 1
;Bar 8
	note G#, 1
	rest 1
	octave 4
	note C_, 4
	octave 3
	note B_, 1
	rest 1
	octave 4
	note C_, 1
	note C_, 1
	octave 3
	note G#, 3
	rest 1
	octave 4
	note D#, 1
	rest 1
;Bar 9
	note D_, 1
	note D#, 1
	note F_, 13
	note_type 6, 12, 7
	note D#, 1
	note E_, 1
;Bar 10
	note F_, 12
	note_type 4, 12, 7
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note_type 12, 12, 7
	note F_, 4
	note D#, 4
;Bar 11
	duty_cycle $3
	vibrato 0, 1, 4
	note_type 8, 12, 8
	note D_, 1
	rest 1
	note D#, 1
	rest 1
	note E_, 1
	rest 1
	note F_, 11
	rest 1
	note F_, 1
	rest 1
	note G_, 1
	rest 1
	note F_, 1
	rest 1
;Bar 12
	note_type 12, 12, 8
	note C_, 6
	octave 3
	note A_, 1
	octave 4
	note C_, 1
	note A_, 1
	rest 1
	note A_, 1
	note G_, 1
	rest 1
	note G_, 1
	note F#, 2
;Bar 13
	note F_, 6
	note D_, 1
	note D#, 1
	note F_, 2
	note D#, 4
	note D_, 2
;Bar 14
	note C_, 2
	octave 3
	note B_, 2
	octave 4
	note C_, 2
	note C#, 2
	note D_, 1
	note C_, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	octave 4
	note D_, 1
	note F_, 2
;Bar 15
	note F_, 1
	note D#, 1
	note D_, 1
	note D#, 1
	note G_, 16
	note G_, 4
;Bar 16
	note F_, 1
	note D#, 1
	rest 1
	note D_, 1
	note D#, 1
	note F_, 1
	rest 1
	note G_, 1
;Bar 17
	note A#, 1
	rest 1
	note A#, 1
	note A_, 1
	rest 1
	note A_, 1
	note G_, 1
	rest 1
	note G_, 1
	note F_, 1
	rest 1
	note F_, 1
	note E_, 1
	note D_, 1
	note D#, 1
	note E_, 1
;Bar 18
	note F_, 1
	rest 1
	note F_, 1
	note G_, 1
	rest 1
	note G_, 1
	note A_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	octave 5
	note C_, 1
	rest 1
	note C_, 1
;Bar 19
	duty_cycle $2
	volume_envelope 12, 6
	rest 2
	octave 4
	note D_, 1
	note D_, 1
	note D#, 1
	note D_, 1
	rest 2
	note D_, 1
	rest 1
	note D#, 1
	note D_, 1
	rest 6
;Bar 20
	note D_, 1
	note D_, 1
	note D#, 1
	note D_, 1
	rest 2
	note F_, 1
	note D#, 1
	rest 1
	octave 3
	note A#, 1
	rest 2
	octave 4
	note C_, 1
	rest 3
;Bar 21
	note D_, 1
	rest 1
	note D#, 1
	note D_, 1
	rest 2
	note D_, 1
	note D_, 1
	note D#, 1
	note D_, 1
	rest 4
;Bar 22
	note D#, 1
	octave 3
	note A#, 1
	octave 4
	note C_, 1
	note D_, 1
	note D#, 2
	note F_, 2
	note F#, 4
	note G#, 3
	note_type 6, 12, 6
	note G_, 1
	note F#, 1
	note_type 12, 12, 6
;Bar 23
	sound_loop 0, Music_ContestRSE_Ch2

; ============================================================================================================

Music_ContestRSE_Ch3:
	note_type 6, 1, 4
;Bar 1
	octave 2
	note F_, 2
	rest 2
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note D#, 2
	rest 2
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note D_, 2
	rest 2
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note C_, 2
	rest 2
	note C_, 1
	rest 1
	note C_, 1
	rest 1
;Bar 2
	octave 3
	note C_, 2
	octave 2
	note A_, 2
	octave 3
	note C_, 2
	note D#, 2
	note F_, 2
	note D#, 2
	note F_, 2
	note A_, 2
	octave 4
	note C_, 8
	octave 2
	note F_, 4
	note A_, 4
;Bar 3
	note A#, 2
	rest 2
	note A#, 2
	rest 6
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	note D_, 2
	rest 2
	note A#, 8
	note F_, 2
	rest 2
;Bar 4
	note G#, 2
	note G_, 2
	note G#, 2
	rest 6
	note G#, 1
	rest 1
	note G#, 1
	rest 1
	note G#, 2
	rest 2
	note G#, 8
	note D#, 2
	rest 2
;Bar 5
	note G_, 2
	rest 10
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	note G_, 2
	rest 2
	note G_, 4
	octave 3
	note G_, 2
	rest 2
	octave 2
	note G_, 4
;Bar 6
	note F#, 2
	rest 10
	note F#, 1
	rest 1
	note F#, 1
	rest 1
	note G#, 2
	rest 2
	note G#, 4
	octave 3
	note D#, 4
	note C_, 4
;Bar 7
	octave 2
	note A#, 2
	rest 10
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	note A#, 2
	rest 2
	note A#, 8
	note F_, 2
	rest 2
;Bar 8
	note G#, 2
	rest 10
	note G#, 1
	rest 1
	note G#, 1
	rest 1
	note G#, 2
	rest 2
	note G#, 8
	note D#, 2
	rest 2
;Bar 9
	note G_, 2
	rest 2
	octave 3
	note G_, 7
	rest 1
	octave 2
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	note G_, 2
	rest 2
	note G_, 4
	octave 3
	note G_, 2
	rest 2
	octave 2
	note G_, 4
;Bar 10
	note F#, 2
	rest 10
	note F#, 1
	rest 1
	note F#, 1
	rest 1
	note G#, 2
	rest 2
	octave 3
	note G#, 4
	note D#, 4
	octave 2
	note D_, 4
;Bar 11
	volume_envelope 1, 5
	sound_call Music_ContestRSE_Ch3_Bar11
	octave 3
	note D#, 2
	octave 2
	note D#, 6
;Bar 12
	sound_call Music_ContestRSE_Ch3_Bar11
	octave 3
	note D#, 2
	octave 2
	note D#, 2
	rest 2
	octave 3
	note D#, 1
	rest 1
;Bar 13
	octave 2
	note D_, 2
	rest 2
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	octave 3
	note D_, 8
	octave 2
	note D_, 2
	octave 3
	note D_, 1
	rest 1
	octave 2
	note A_, 2
	rest 2
	octave 3
	note D_, 2
	octave 2
	note D_, 6
;Bar 14
	note G_, 2
	rest 2
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	octave 3
	note G_, 8
	octave 2
	note G_, 1
	rest 1
	octave 3
	note G_, 1
	rest 3
	note D_, 2
	rest 2
	note G_, 2
	rest 2
	octave 2
	note G_, 2
;Bar 15
	sound_call Music_ContestRSE_Ch3_Bar15
	octave 3
	note C_, 2
	octave 2
	note C_, 6
;Bar 16
	sound_call Music_ContestRSE_Ch3_Bar15
	octave 3
	note C_, 2
	octave 2
	note C_, 2
	octave 3
	note C_, 1
	rest 1
	note C_, 1
	rest 1
;Bar 17
	octave 2
	note F_, 2
	rest 2
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	octave 3
	note F_, 8
	octave 2
	note F_, 2
	octave 3
	note F_, 1
	rest 1
	note C_, 2
	rest 2
	note F_, 2
	octave 2
	note F_, 2
	rest 2
	octave 3
	note F_, 1
	rest 1
;Bar 18
	octave 2
	note F_, 2
	rest 2
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	octave 3
	note F_, 8
	octave 2
	note F_, 2
	octave 3
	note F_, 1
	rest 3
	note C_, 2
	rest 2
	octave 2
	note A#, 2
	rest 2
	note A_, 2
;Bar 19
	note A#, 2
	rest 6
	note A#, 2
	rest 6
	note G#, 2
	rest 6
	note G#, 2
	rest 6
;Bar 20
	note G_, 2
	rest 6
	note G_, 2
	rest 6
	note F#, 2
	rest 10
	note G#, 2
	rest 2
;Bar 21
	note A#, 2
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	octave 3
	note A#, 2
	octave 2
	note A#, 2
	octave 3
	note A#, 1
	rest 1
	octave 2
	note A#, 2
	note A_, 2
	note G#, 2
	note G#, 1
	rest 1
	note G#, 1
	rest 1
	octave 3
	note G#, 2
	octave 2
	note G#, 2
	octave 3
	note G#, 1
	rest 1
	octave 2
	note A_, 2
	note G#, 2
;Bar 22
	note G_, 2
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	octave 3
	note G_, 2
	octave 2
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	octave 3
	note D#, 2
	note G_, 1
	rest 1
	octave 2
	note F#, 2
	octave 3
	note F#, 1
	rest 3
	octave 2
	note F#, 2
	note G#, 2
	rest 2
	note G_, 2
	note F#, 2
	sound_loop 0, Music_ContestRSE_Ch3

Music_ContestRSE_Ch3_Bar11:
	note D#, 2;
	rest 2
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	octave 3
	note D#, 8
	octave 2
	note D#, 2
	octave 3
	note D#, 1
	rest 1
	octave 2
	note A#, 2
	rest 2
	sound_ret

Music_ContestRSE_Ch3_Bar15:
	note C_, 2;
	rest 2
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	octave 3
	note C_, 8
	octave 2
	note C_, 2
	octave 3
	note C_, 1
	rest 1
	octave 2
	note G_, 2
	rest 2
	sound_ret

; ============================================================================================================

Music_ContestRSE_Ch4:
	toggle_noise 3
	drum_speed 6
Music_ContestRSE_Ch4_loop:
;Bar 1
	drum_note 3, 2
	sound_call Music_ContestRSE_Ch4_Bar1
;Bar 2
Music_ContestRSE_Ch2_loop:
	drum_note 3, 2
	sound_loop 8, Music_ContestRSE_Ch2_loop
	drum_note 12, 16
;Bar 3
	sound_call Music_ContestRSE_Ch4_Bar3
;Bar 4
	drum_note 3, 4
	drum_note 3, 8
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 4
	drum_note 3, 4
	drum_note 12, 8
;Bar 5
	sound_call Music_ContestRSE_Ch4_Bar5
;Bar 6
	drum_note 3, 2
	sound_call Music_ContestRSE_Ch4_Bar1
;Bar 7
	sound_call Music_ContestRSE_Ch4_Bar3
;Bar 8
	drum_note 3, 12
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 4
	drum_note 3, 4
	drum_note 12, 8
;Bar 9
	sound_call Music_ContestRSE_Ch4_Bar5
;Bar 10
Music_ContestRSE_Ch1_Bar10:
	drum_note 3, 1
	sound_loop 16, Music_ContestRSE_Ch1_Bar10
	drum_note 3, 4
	drum_note 11, 4
	drum_note 3, 2
	drum_note 3, 2
	drum_note 11, 4
;Bar 11
	sound_call Music_ContestRSE_Ch4_Bar11
;Bar 12
	sound_call Music_ContestRSE_Ch4_Bar12
;Bar 13
	sound_call Music_ContestRSE_Ch4_Bar11
;Bar 14
	sound_call Music_ContestRSE_Ch4_Bar14
;Bar 15
	sound_call Music_ContestRSE_Ch4_Bar11
;Bar 16
	sound_call Music_ContestRSE_Ch4_Bar12
;Bar 17
	sound_call Music_ContestRSE_Ch4_Bar11
;Bar 18
	sound_call Music_ContestRSE_Ch4_Bar14
;Bar 19
Music_ContestRSE_Ch4_Bar19:
	drum_note 11, 6
	drum_note 11, 2
	drum_note 3, 4
	drum_note 11, 4
	drum_note 11, 4
	drum_note 11, 2
	drum_note 11, 2
	drum_note 3, 4
	drum_note 1, 2
	drum_note 11, 2
	sound_loop 3, Music_ContestRSE_Ch4_Bar19
;Bar 22
	drum_note 3, 2
	drum_note 3, 4
	drum_note 3, 2
	drum_note 11, 2
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 4
	drum_note 11, 2
	drum_note 11, 2
	drum_note 3, 4
	drum_note 1, 2
	drum_note 11, 2
	sound_loop 0, Music_ContestRSE_Ch4_loop

Music_ContestRSE_Ch4_Bar1:
	drum_note 3, 1
	sound_loop 30, Music_ContestRSE_Ch4_Bar1
	sound_ret

Music_ContestRSE_Ch4_Bar11:
	drum_note 11, 4;
	drum_note 11, 2
	drum_note 11, 2
	drum_note 3, 6
	drum_note 11, 2
	drum_note 11, 2
	drum_note 3, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 3, 4
	drum_note 11, 4
	sound_ret

Music_ContestRSE_Ch4_Bar3:
	drum_note 3, 4
	drum_note 3, 8;
	drum_note 3, 2
	drum_note 3, 2
	drum_note 12, 16
	sound_ret

Music_ContestRSE_Ch4_Bar5:
	drum_note 12, 12
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	sound_ret

Music_ContestRSE_Ch4_Bar12:
	drum_note 11, 4;
	drum_note 11, 2
	drum_note 11, 2
	drum_note 3, 6
	drum_note 11, 2
	drum_note 11, 2
	drum_note 3, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 3, 2
	drum_note 11, 2
	drum_note 3, 2
	drum_note 3, 2
	sound_ret

Music_ContestRSE_Ch4_Bar14:
	drum_note 11, 4;
	drum_note 11, 2
	drum_note 11, 2
	drum_note 3, 6
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 2
	sound_ret

; ============================================================================================================

Music_ContestRSE_GB1:
	channel_count 2
	channel 1, Music_ContestRSE_Ch1
	channel 2, Music_ContestRSE_Ch2

Music_ContestRSE_GB2:
	channel_count 2
	channel 3, Music_ContestRSE_Ch3_GB2
	channel 4, Music_ContestRSE_Ch4

Music_ContestRSE_Ch3_GB2:
	volume 7, 7
	tempo 149
	sound_call Music_ContestRSE_Ch3

