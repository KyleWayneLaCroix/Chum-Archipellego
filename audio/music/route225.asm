Music_Route225Day:
	channel_count 4
	channel 1, Music_Route225Day_Ch1
	channel 2, Music_Route225Day_Ch2
	channel 3, Music_Route225Day_Ch3
	channel 4, Music_Route225Day_Ch4

Music_Route225Day_Ch1:
	tempo 136
	volume 7, 7
	duty_cycle $3
	stereo_panning TRUE, TRUE
	note_type 6, 3, 8
Music_Route225Day_Ch1_loop:
;Bar 1
	octave 1
	rest 16 ;A
	volume_envelope 3, 7
	rest 12 ;A
	octave 2
	stereo_panning TRUE, FALSE
	volume_envelope 13, 7
	note E_, 1
	volume_envelope 4, 7
	note E_, 1
	volume_envelope 13, 7
	note E_, 1
	volume_envelope 4, 7
	note E_, 1
;Bar 2
	volume_envelope 13, 7
	note E_, 16
	note E_, 3
	volume_envelope 4, 7
	note E_, 1
	volume_envelope 13, 7
	note E_, 1
	volume_envelope 4, 7
	note E_, 2
	rest 1
	volume_envelope 13, 7
	note E_, 8
;Bar 3
	note G_, 4
	octave 3
	note C_, 4
	note D_, 4
	sound_call Music_Route225Day_Ch1_Pow_pow_pow
;Bar 4
	octave 1
	volume_envelope 13, 7
	note G#, 2
	volume_envelope 4, 7
	note G#, 2
	volume_envelope 13, 7
	note G#, 1
	volume_envelope 4, 7
	note G#, 2
	rest 1
	volume_envelope 8, 7
	note G#, 1
	volume_envelope 4, 7
	note G#, 2
	rest 1
	volume_envelope 13, 7
	note G_, 4
	note G#, 2
	volume_envelope 4, 7
	note G#, 2
	volume_envelope 13, 7
	note G#, 4
	note A#, 7
;Bar 5
	volume_envelope 4, 7
	note A#, 1
	volume_envelope 13, 7
	note A#, 2
	volume_envelope 4, 7
	note A#, 2
	volume_envelope 13, 7
	note A#, 1
	volume_envelope 4, 7
	note A#, 2
	rest 1
	volume_envelope 13, 7
	note A#, 1
	volume_envelope 4, 7
	note A#, 2
	rest 1
	volume_envelope 13, 7
	note A#, 4
	note B_, 2
	volume_envelope 4, 7
	note B_, 2
	volume_envelope 13, 7
	note B_, 1
	volume_envelope 4, 7
	note B_, 2
	rest 1
	volume_envelope 13, 7
	note B_, 1
	volume_envelope 4, 7
	note B_, 1
	octave 2
	volume_envelope 13, 7
	note C_, 1
	volume_envelope 4, 7
	note C_, 1
;Bar 6
	volume_envelope 13, 7
	note E_, 16
	note E_, 2
	volume_envelope 4, 7
	note E_, 2
	volume_envelope 13, 7
	note E_, 1
	volume_envelope 4, 7
	note E_, 2
	rest 1
	volume_envelope 13, 7
	note E_, 8
;Bar 7
	octave 3
	note E_, 4
	note F_, 4
	note F#, 4
	note G_, 8
	sound_call Music_Route225Day_Ch1_Pow_pow_pow
;Bar 8
	rest 4
	octave 1
	volume_envelope 13, 7
	note G_, 4
	note G#, 2
	volume_envelope 4, 7
	note G#, 2
	volume_envelope 13, 7
	note G#, 4
	note A#, 7
;Bar 9
	volume_envelope 4, 7
	note A#, 1
	volume_envelope 13, 7
	note A#, 2
	volume_envelope 4, 7
	note A#, 2
	volume_envelope 13, 7
	note A#, 1
	volume_envelope 4, 7
	note A#, 2
	rest 1
	volume_envelope 13, 7
	note A#, 1
	volume_envelope 4, 7
	note A#, 2
	rest 1
	octave 2
	volume_envelope 13, 7
	note C#, 4
	note D_, 2
	volume_envelope 4, 7
	note D_, 2
	volume_envelope 13, 7
	note D_, 1
	volume_envelope 4, 7
	note D_, 2
	rest 1
	octave 1
	volume_envelope 13, 7
	note G_, 1
	volume_envelope 4, 7
	note G_, 1
	volume_envelope 13, 7
	note G_, 1
	volume_envelope 4, 7
	note G_, 1
;Bar 10
	note_type 12, 10, 8
	note A_, 8
	volume_envelope 10, 7
	note A_, 8
	volume_envelope 4, 8
	note A_, 10
;Bar 11
	volume_envelope 11, 7
	note A_, 2
	note G_, 2
	volume_envelope 10, 8
	note F#, 8
	volume_envelope 10, 7
	note F#, 8
	volume_envelope 4, 8
	note F#, 12
;Bar 13
	volume_envelope 11, 7
	note F#, 2
	note E_, 2
	volume_envelope 10, 8
	note D_, 8
	volume_envelope 10, 7
	note D_, 8
	volume_envelope 4, 8
	note D_, 12
;Bar 15
	volume_envelope 11, 7
	note D_, 2
	note E_, 2
	note F_, 12
;Bar 16
	note F_, 2
	note F#, 2
	note G_, 8
;Bar 17
	stereo_panning TRUE, TRUE
	note_type 6, 6, 6
	pitch_slide 1, 3, G# ;5
	octave 5
	note G#, 12
	octave 1
	volume_envelope 8, 8
	note G#, 8
	stereo_panning TRUE, FALSE
;Bar 18
	volume_envelope 13, 7
	octave 2
	note E_, 4
	note E_, 2
	volume_envelope 4, 7
	note E_, 2
	volume_envelope 13, 7
	note E_, 1
	volume_envelope 4, 7
	note E_, 2
	rest 1
	volume_envelope 9, 7
	note E_, 1
	volume_envelope 4, 7
	note E_, 2
	rest 1
	volume_envelope 13, 7
	note E_, 4
	note E_, 2
	volume_envelope 4, 7
	note E_, 2
	volume_envelope 13, 7
	note E_, 8
;Bar 19
	note E_, 4
	note E_, 2
	volume_envelope 4, 7
	note E_, 2
	volume_envelope 13, 7
	note E_, 1
	volume_envelope 4, 7
	note E_, 2
	rest 1
	volume_envelope 13, 7
	note E_, 6
	volume_envelope 4, 7
	note E_, 2
	volume_envelope 13, 7
	note E_, 4
	note D_, 4
	note C_, 8
;Bar 20
	note C_, 1
	volume_envelope 4, 7
	note C_, 2
	rest 1
	volume_envelope 9, 7
	note C_, 1
	volume_envelope 4, 7
	note C_, 2
	rest 1
	volume_envelope 9, 7
	note C_, 1
	volume_envelope 4, 7
	note C_, 2
	rest 1
	volume_envelope 13, 7
	note F#, 4
	note A_, 4
	octave 3
	note C_, 4
	note E_, 12
;Bar 21
	note A_, 4
	note F#, 8
	octave 2
	note C_, 4
	octave 1
	note B_, 4
	note A_, 8
;Bar 22
	note A_, 1
	volume_envelope 4, 7
	note A_, 2
	rest 1
	volume_envelope 9, 7
	note A_, 1
	volume_envelope 4, 7
	note A_, 2
	rest 1
	volume_envelope 9, 7
	note A_, 1
	volume_envelope 4, 7
	note A_, 2
	rest 1
	volume_envelope 13, 7
	note A_, 4
	note A_, 2
	volume_envelope 4, 7
	note A_, 2
	volume_envelope 13, 7
	note A_, 8
;Bar 23
	note A_, 4
	note A_, 2
	volume_envelope 4, 7
	note A_, 2
	volume_envelope 13, 7
	note A_, 1
	volume_envelope 4, 7
	note A_, 2
	rest 1
	volume_envelope 13, 7
	note A_, 6
	volume_envelope 4, 7
	note A_, 2
	volume_envelope 13, 7
	note A_, 4
	note B_, 4
	octave 2
	note C_, 8
;Bar 24
	note C_, 1
	volume_envelope 4, 7
	note C_, 2
	rest 1
	volume_envelope 13, 7
	note C_, 1
	volume_envelope 4, 7
	note C_, 2
	rest 1
	volume_envelope 9, 7
	note C_, 1
	volume_envelope 4, 7
	note C_, 2
	rest 1
	volume_envelope 13, 7
	note C_, 4
	note C_, 2
	volume_envelope 4, 7
	note C_, 2
	volume_envelope 13, 7
	note C#, 8
;Bar 25
	note D_, 4
	note D_, 2
	volume_envelope 4, 7
	note D_, 2
	volume_envelope 13, 7
	note D_, 1
	volume_envelope 4, 7
	note D_, 2
	rest 1
	volume_envelope 13, 7
	duty_cycle $0
	note F_, 4
	note B_, 4
	octave 3
	note D#, 4
	octave 4
	stereo_panning FALSE, TRUE
	volume_envelope 13, 8
	note G_, 5
	pitch_slide 1, 4, D#;
	volume_envelope 13, 2
	note G_, 3
;Bar 26
	stereo_panning TRUE, FALSE
	volume_envelope 7, 8
	note G_, 5
	pitch_slide 1, 4, D#;
	volume_envelope 7, 3
	note G_, 3
	duty_cycle $3
	octave 2
	volume_envelope 13, 7
	note G_, 2
	volume_envelope 4, 7
	note G_, 2
	rest 4
	volume_envelope 13, 7
	note G_, 2
	volume_envelope 4, 7
	note G_, 2
	rest 8
	volume_envelope 13, 7
	note G_, 8
;Bar 27
	note G_, 2
	volume_envelope 4, 7
	note G_, 2
	volume_envelope 13, 7
	note F_, 2
	volume_envelope 4, 7
	note F_, 2
	rest 4
	volume_envelope 13, 7
	note F_, 8
	note F_, 2
	volume_envelope 4, 7
	note F_, 2
	volume_envelope 13, 7
	note F_, 12
;Bar 28
	volume_envelope 4, 7
	note F_, 2
	rest 2
	volume_envelope 13, 7
	note F_, 2
	volume_envelope 4, 7
	note F_, 2
	octave 1
	volume_envelope 13, 7
	note G_, 2
	volume_envelope 4, 7
	note G_, 2
	octave 2
	volume_envelope 13, 7
	note C_, 4
	note E_, 4
	note G_, 4
;Bar 29
	octave 3
	note C_, 8
	octave 2
	note G#, 2
	volume_envelope 4, 7
	note G#, 2
	volume_envelope 13, 7
	note F_, 8
	note F_, 12
;Bar 30
	note A_, 16
	note G#, 12
	octave 3
	note C_, 2
	volume_envelope 4, 7
	note C_, 2
;Bar 31
	volume_envelope 13, 7
	note C_, 8
	volume_envelope 4, 7
	note C_, 2
	rest 2
	volume_envelope 13, 7
	note C_, 8
	note E_, 8
	octave 2
	note F_, 12
;Bar 32
	volume_envelope 4, 7
	note F_, 2
	rest 2
	volume_envelope 13, 7
	note F_, 2
	volume_envelope 4, 7
	note F_, 2
	rest 4
	volume_envelope 13, 7
	note F_, 8
	note A_, 4
;Bar 33
	note A_, 2
	volume_envelope 4, 7
	note A_, 2
	volume_envelope 13, 7
	note A_, 2
	volume_envelope 4, 7
	note A_, 2
	rest 4
	volume_envelope 13, 7
	note A_, 2
	volume_envelope 4, 7
	note A_, 2
	rest 4
	volume_envelope 13, 7
	note B_, 8
	note B_, 2
	volume_envelope 4, 7
	note B_, 2
;Bar 34
	octave 1
	volume_envelope 13, 7
	note C_, 2
	volume_envelope 4, 7
	note C_, 2
	octave 2
	volume_envelope 13, 7
	note C_, 2
	volume_envelope 4, 7
	note C_, 2
	volume_envelope 13, 7
	note G_, 2
	volume_envelope 4, 7
	note G_, 2
	volume_envelope 14, 7
	note G_, 2
	volume_envelope 4, 7
	note G_, 2
	volume_envelope 13, 7
	note G_, 2
	volume_envelope 4, 7
	note G_, 2
	volume_envelope 14, 7
	note G_, 2
	volume_envelope 4, 7
	note G_, 2
	volume_envelope 14, 7
	note G_, 2
	volume_envelope 4, 7
	note G_, 2
	volume_envelope 13, 7
	note G_, 8
;Bar 35
	note G_, 2
	volume_envelope 4, 7
	note G_, 2
	volume_envelope 13, 7
	note F_, 2
	volume_envelope 4, 7
	note F_, 2
	rest 4
	volume_envelope 13, 7
	note F_, 8
	note F_, 2
	volume_envelope 4, 7
	note F_, 2
	volume_envelope 13, 7
	note F_, 12
;Bar 36
	volume_envelope 4, 7
	note F_, 2
	rest 2
	volume_envelope 13, 7
	note F_, 2
	volume_envelope 4, 7
	note F_, 2
	octave 1
	volume_envelope 13, 7
	note G_, 2
	volume_envelope 4, 7
	note G_, 2
	octave 2
	volume_envelope 13, 7
	note C_, 4
	note E_, 4
	note G_, 4
;Bar 37
	octave 3
	note C_, 8
	octave 2
	note G#, 2
	volume_envelope 4, 7
	note G#, 2
	volume_envelope 13, 7
	note F_, 8
	note F_, 12
;Bar 38
	note A_, 16
	note G#, 12
	octave 3
	note C_, 2
	volume_envelope 4, 7
	note C_, 2
;Bar 39
	volume_envelope 13, 7
	note C_, 8
	volume_envelope 4, 7
	note C_, 2
	rest 2
	volume_envelope 13, 7
	note C_, 8
	volume_envelope 10, 7
	note E_, 8
	octave 2
	volume_envelope 13, 7
	note F_, 12
;Bar 40
	volume_envelope 4, 7
	note F_, 2
	rest 2
	volume_envelope 13, 7
	note F_, 2
	volume_envelope 4, 7
	note F_, 2
	rest 4
	volume_envelope 13, 7
	note F_, 8
	note A_, 4
;Bar 41
	note G_, 2
	volume_envelope 4, 7
	note G_, 2
	volume_envelope 13, 7
	note G_, 2
	volume_envelope 4, 7
	note G_, 2
	rest 4
	volume_envelope 13, 7
	note A_, 2
	volume_envelope 4, 7
	note A_, 2
	rest 4
	volume_envelope 13, 7
	note G_, 4
	note G_, 2
	volume_envelope 4, 7
	note G_, 2
	volume_envelope 13, 7
	note F_, 12
;Bar 42
	volume_envelope 4, 7
	note F_, 2
	rest 2
	volume_envelope 13, 7
	note F_, 12
	volume_envelope 4, 7
	note F_, 2
	rest 2
	volume_envelope 13, 7
	note F_, 12
;Bar 43
	volume_envelope 4, 7
	note F_, 2
	rest 2
	volume_envelope 13, 7
	note F_, 12
	volume_envelope 4, 7
	note F_, 2
	rest 6
;Bar 44
	volume_envelope 13, 7
	note E_, 4
	note C_, 2
	volume_envelope 4, 7
	note C_, 2
	volume_envelope 13, 7
	note C_, 2
	volume_envelope 4, 7
	note C_, 2
	volume_envelope 13, 7
	note E_, 2
	volume_envelope 4, 7
	note E_, 2
	volume_envelope 13, 7
	note C_, 2
	volume_envelope 4, 7
	note C_, 2
	volume_envelope 13, 7
	note E_, 2
	volume_envelope 4, 7
	note E_, 2
	volume_envelope 13, 7
	note C_, 2
	volume_envelope 4, 7
	note C_, 2
	volume_envelope 13, 7
	note G_, 4
	sound_loop 0, Music_Route225Day_Ch1_loop

Music_Route225Day_Ch1_Pow_pow_pow:
	octave 5
	duty_cycle $0
	volume_envelope 9, 8
	stereo_panning TRUE, FALSE
	note C_, 5
	volume_envelope 9, 2
	pitch_slide 2, 4, A_
	note C_, 3
	stereo_panning TRUE, TRUE
	volume_envelope 9, 8
	note C_, 5
	volume_envelope 9, 2
	pitch_slide 2, 4, A_
	note C_, 3
	stereo_panning FALSE, TRUE
	volume_envelope 9, 8
	note C_, 5
	volume_envelope 9, 2
	pitch_slide 2, 4, A_
	note C_, 3
	stereo_panning TRUE, FALSE
	duty_cycle $1
	sound_ret

; ============================================================================================================

Music_Route225Day_Ch2:
	duty_cycle $0
	note_type 6, 9, 8
	vibrato 8, 2, 2
Music_Route225Day_Ch2_loop:
;Bar 1
	rest 16
	rest 16
	rest 4
	volume_envelope 9, 8
;Bar 2
	octave 3
	note G_, 1
	octave 4
	note C_, 1
	note D_, 1
	note D#, 1
	note E_, 3
	volume_envelope 4, 8
	note E_, 9
	volume_envelope 9, 8
	note D_, 3
	volume_envelope 4, 8
	note D_, 5
	volume_envelope 9, 8
	note F_, 7
;Bar 3
	volume_envelope 4, 8
	note F_, 1
	volume_envelope 9, 8
	note F_, 2
	volume_envelope 4, 8
	note F_, 2
	volume_envelope 9, 8
	note E_, 8
	note D_, 8
	note E_, 4
	note C_, 16
	note C_, 4
;Bar 4
	octave 3
	note G#, 2
	volume_envelope 4, 8
	note G#, 2
	octave 4
	volume_envelope 9, 8
	note C_, 2
	volume_envelope 4, 8
	note C_, 2
	volume_envelope 9, 8
	note G#, 4
	note G_, 7
;Bar 5
	volume_envelope 4, 8
	note G_, 1
	volume_envelope 9, 8
	note G_, 2
	volume_envelope 4, 8
	note G_, 2
	note_type 3, 9, 8
	note F_, 7
	volume_envelope 4, 8
	note F_, 4
	octave 3
	volume_envelope 9, 8
	note F_, 1
	note G_, 1
	note A_, 1
	octave 4
	note C_, 1
	note D_, 1
	note_type 6, 9, 8
	note E_, 3
	volume_envelope 4, 8
	note E_, 5
	volume_envelope 9, 8
	note F_, 8
;Bar 6
	volume_envelope 4, 8
	note F_, 4
	octave 3
	volume_envelope 9, 8
	note G_, 1
	octave 4
	note C_, 1
	note D_, 1
	note D#, 1
	note E_, 3
	volume_envelope 4, 8
	note E_, 5
	volume_envelope 9, 8
	note D_, 3
	volume_envelope 4, 8
	note D_, 9
	volume_envelope 9, 8
	note F_, 7
;Bar 7
	volume_envelope 4, 8
	note F_, 1
	volume_envelope 9, 8
	note F_, 2
	volume_envelope 4, 8
	note F_, 2
	volume_envelope 9, 8
	note E_, 8
	note D_, 8
	note E_, 4
	note C_, 16
	note C_, 4
;Bar 8
	octave 3
	note G#, 4
	octave 4
	note F_, 2
	volume_envelope 4, 8
	note F_, 2
	volume_envelope 9, 8
	note G#, 4
	note A#, 8
;Bar 9
	note D_, 2
	volume_envelope 4, 8
	note D_, 2
	volume_envelope 9, 8
	note G#, 4
	note D_, 2
	volume_envelope 4, 8
	note D_, 2
	volume_envelope 9, 8
	note G_, 4
	volume_envelope 4, 8
	note G_, 4
	volume_envelope 11, 8
	note F_, 8
;Bar 10
	octave 3
	note B_, 2
	octave 4
	note C_, 1
	volume_envelope 5, 8
	note C_, 1
	volume_envelope 11, 8
	note C_, 2
	volume_envelope 5, 8
	note C_, 6
	octave 3
	volume_envelope 11, 8
	note B_, 1
	octave 4
	note C_, 7
	octave 3
	note B_, 3
	volume_envelope 5, 8
	note B_, 5
	volume_envelope 11, 8
	note B_, 8
;Bar 11
	note A_, 2
	volume_envelope 5, 8
	note A_, 2
	volume_envelope 11, 8
	note A_, 4
	volume_envelope 5, 8
	note A_, 12
	rest 8
;Bar 12
	volume_envelope 11, 8
	note B_, 2
	octave 4
	note C_, 1
	volume_envelope 5, 8
	note C_, 1
	volume_envelope 11, 8
	note C_, 2
	volume_envelope 5, 8
	note C_, 5
	rest 1
	octave 3
	volume_envelope 11, 8
	note B_, 1
	octave 4
	note C_, 7
	note D_, 3
	volume_envelope 5, 8
	note D_, 4
	rest 1
	octave 3
	volume_envelope 11, 8
	note B_, 8
;Bar 13
	octave 4
	note C_, 2
	octave 3
	note B_, 2
	note A_, 4
	volume_envelope 5, 8
	note A_, 12
	rest 8
;Bar 14
	octave 4
	volume_envelope 11, 8
	note E_, 2
	note F_, 1
	volume_envelope 5, 8
	note F_, 1
	volume_envelope 11, 8
	note F_, 2
	volume_envelope 5, 8
	note F_, 6
	volume_envelope 11, 8
	note E_, 1
	note F_, 7
	note E_, 3
	volume_envelope 5, 8
	note E_, 5
	volume_envelope 11, 8
	note E_, 8
;Bar 15
	note D_, 2
	volume_envelope 5, 8
	note D_, 2
	volume_envelope 11, 8
	note D_, 4
	volume_envelope 5, 8
	note D_, 12
	rest 8
;Bar 16
	volume_envelope 11, 8
	note E_, 2
	note F_, 1
	volume_envelope 5, 8
	note F_, 1
	volume_envelope 11, 8
	note F_, 2
	volume_envelope 5, 8
	note F_, 6
	volume_envelope 11, 8
	note E_, 1
	note F_, 7
	note G_, 2
	volume_envelope 5, 8
	note G_, 6
	volume_envelope 11, 8
	note E_, 8
;Bar 17
	note F_, 2
	note E_, 2
	note D_, 4

	;transplant
	octave 1
	note_type 12, 13, 7
	note G#, 10
	note_type 6, 11, 8
	
;Bar 18
	pitch_offset $0001
	octave 3
	note B_, 2
	octave 4
	note C_, 1
	volume_envelope 5, 8
	note C_, 1
	volume_envelope 12, 8
	note C_, 2
	volume_envelope 5, 8
	note C_, 6
	octave 3
	volume_envelope 12, 8
	note B_, 1
	octave 4
	note C_, 7
	octave 3
	note B_, 3
	volume_envelope 5, 8
	note B_, 5
	volume_envelope 12, 8
	note B_, 8
;Bar 19
	note A_, 2
	volume_envelope 5, 8
	note A_, 2
	volume_envelope 12, 8
	note A_, 4
	volume_envelope 5, 8
	note A_, 12
	rest 8
;Bar 20
	volume_envelope 12, 8
	note B_, 2
	octave 4
	note C_, 1
	volume_envelope 5, 8
	note C_, 1
	volume_envelope 12, 8
	note C_, 2
	volume_envelope 5, 8
	note C_, 6
	octave 3
	volume_envelope 12, 8
	note B_, 1
	octave 4
	note C_, 7
	note D_, 3
	volume_envelope 5, 8
	note D_, 5
	octave 3
	volume_envelope 12, 8
	note B_, 8
;Bar 21
	octave 4
	note C_, 2
	octave 3
	note B_, 2
	note A_, 4
	volume_envelope 5, 8
	note A_, 12
	rest 8
;Bar 22
	pitch_offset $0002
	octave 4
	volume_envelope 12, 8
	note E_, 2
	note F_, 1
	volume_envelope 5, 8
	note F_, 1
	volume_envelope 12, 8
	note F_, 2
	volume_envelope 5, 8
	note F_, 6
	volume_envelope 12, 8
	note E_, 1
	note F_, 7
	note E_, 3
	volume_envelope 5, 8
	note E_, 5
	volume_envelope 12, 8
	note D#, 1
	note E_, 7
;Bar 23
	note D_, 2
	volume_envelope 5, 8
	note D_, 2
	volume_envelope 12, 8
	note D_, 4
	volume_envelope 5, 8
	note D_, 12
	rest 8
;Bar 24
	volume_envelope 12, 8
	note E_, 2
	note F_, 1
	volume_envelope 5, 8
	note F_, 1
	volume_envelope 12, 8
	note F_, 2
	volume_envelope 5, 8
	note F_, 6
	volume_envelope 12, 8
	note E_, 1
	note F_, 7
	note G_, 3
	volume_envelope 5, 8
	note G_, 5
	volume_envelope 12, 8
	note E_, 8
;Bar 25
	note F_, 2
	note E_, 2
	note D_, 4
	volume_envelope 5, 8
	note D_, 12
	rest 8
;Bar 26
	pitch_offset $0000
	duty_cycle $1
	vibrato 8, 0, 0
	octave 1
	volume_envelope 11, 8
	note C_, 2
	volume_envelope 5, 8
	note C_, 2	
	duty_cycle $2
	octave 2
	volume_envelope 11, 8
	note C_, 2
	volume_envelope 5, 8
	note C_, 2
	octave 4
	volume_envelope 11, 8
	note E_, 2
	volume_envelope 5, 8
	note E_, 2
	octave 2
	volume_envelope 11, 8
	note G_, 1
	volume_envelope 5, 8
	note G_, 2
	rest 1
	octave 4
	volume_envelope 11, 8
	note D_, 2
	volume_envelope 5, 8
	note D_, 2
	octave 2
	volume_envelope 11, 8
	note G_, 1
	volume_envelope 5, 8
	note G_, 2
	rest 1
	volume_envelope 11, 8
	note G_, 1
	volume_envelope 5, 8
	note G_, 2
	rest 1
	octave 4
	volume_envelope 11, 8
	note E_, 1
	note F_, 5
;Bar 27
	volume_envelope 5, 8
	note F_, 2
	volume_envelope 11, 8
	note F_, 2
	volume_envelope 5, 8
	note F_, 2
	volume_envelope 11, 8
	note E_, 2
	volume_envelope 5, 8
	note E_, 6
	volume_envelope 11, 8
	note C_, 8
	note D_, 2
	volume_envelope 5, 8
	note D_, 2
	octave 3
	volume_envelope 11, 8
	note B_, 1
	octave 4
	note C_, 11
;Bar 28
	volume_envelope 5, 8
	note C_, 4
	octave 3
	volume_envelope 11, 8
	note G_, 2
	volume_envelope 5, 8
	note G_, 2
	volume_envelope 11, 8
	note F#, 1
	note G_, 6
	volume_envelope 5, 8
	note G_, 1
	octave 4
	volume_envelope 11, 8
	note C_, 4
	note D#, 4
;Bar 29
	note F#, 2
	note G_, 6
	note F_, 2
	volume_envelope 5, 8
	note F_, 2
	volume_envelope 11, 8
	note C_, 2
	volume_envelope 5, 8
	note C_, 6
	volume_envelope 11, 8
	note D_, 12
;Bar 30
	sound_call Music_Route225Day_Ch2_Bar30
;Bar 31
	volume_envelope 11, 8
	note A#, 1
	note B_, 7
	note A_, 2
	volume_envelope 5, 8
	note A_, 2
	volume_envelope 11, 8
	note B_, 2
	volume_envelope 5, 8
	note B_, 6
	volume_envelope 11, 8
	note A_, 1
	octave 5
	note C_, 7
	octave 4
	note C_, 12
;Bar 32
	volume_envelope 5, 8
	note C_, 4
	volume_envelope 11, 8
	note C_, 2
	volume_envelope 5, 8
	note C_, 6
	volume_envelope 11, 8
	note C_, 8
	note F_, 4
;Bar 33
	note G_, 4
	volume_envelope 5, 8
	note G_, 4
	volume_envelope 11, 8
	note C_, 4
	octave 3
	note F_, 2
	volume_envelope 5, 8
	note F_, 2
	volume_envelope 11, 8
	note C_, 4
	octave 4
	note D_, 4
	volume_envelope 5, 8
	note D_, 4
	volume_envelope 11, 8
	note F_, 2
	volume_envelope 4, 8
	note F_, 6
;Bar 34
	rest 2
	duty_cycle $0
	vibrato 8, 2, 2
	volume_envelope 8, 8
	note C_, 1
	volume_envelope 9, 8
	note D_, 1
	volume_envelope 11, 8
	note E_, 2
	volume_envelope 4, 8
	note E_, 6
	volume_envelope 11, 8
	note D_, 2
	volume_envelope 4, 8
	note D_, 10
	volume_envelope 11, 8
	note E_, 1
	note F_, 5
;Bar 35
	volume_envelope 4, 8
	note F_, 2
	volume_envelope 11, 8
	note F_, 2
	volume_envelope 4, 8
	note F_, 2
	volume_envelope 11, 8
	note E_, 2
	volume_envelope 4, 8
	note E_, 6
	volume_envelope 11, 8
	note C_, 8
	note D_, 2
	volume_envelope 4, 8
	note D_, 2
	octave 3
	volume_envelope 11, 8
	note B_, 1
	octave 4
	note C_, 11
;Bar 36
	volume_envelope 4, 8
	note C_, 4
	octave 3
	volume_envelope 11, 8
	note G_, 2
	volume_envelope 4, 8
	note G_, 2
	volume_envelope 11, 8
	note G_, 8
	octave 4
	note C_, 4
	note D#, 4
;Bar 37
	note F#, 2
	note G_, 6
	note F_, 2
	volume_envelope 4, 8
	note F_, 2
	volume_envelope 11, 8
	note C_, 4
	volume_envelope 4, 8
	note C_, 4
	volume_envelope 11, 8
	note D_, 12
;Bar 38
	sound_call Music_Route225Day_Ch2_Bar30
;Bar 39
	volume_envelope 12, 8
	note A#, 1
	note B_, 7
	note A_, 2
	volume_envelope 4, 8
	note A_, 2
	volume_envelope 12, 8
	note B_, 2
	volume_envelope 4, 8
	note B_, 6
	volume_envelope 12, 8
	note B_, 1
	octave 5
	note C_, 7
	octave 4
	note C_, 12
;Bar 40
	volume_envelope 4, 8
	note C_, 4
	volume_envelope 12, 8
	note C_, 2
	volume_envelope 4, 8
	note C_, 6
	volume_envelope 12, 8
	note C_, 8
	note F_, 4
;Bar 41
	note F#, 1
	note G_, 2
	rest 1
	octave 3
	note G_, 2
	volume_envelope 4, 8
	note G_, 2
	octave 4
	volume_envelope 12, 8
	note F_, 2
	volume_envelope 4, 8
	note F_, 2
	octave 3
	volume_envelope 12, 8
	note F_, 2
	volume_envelope 4, 8
	note F_, 2
	volume_envelope 12, 8
	note G_, 2
	volume_envelope 4, 8
	note G_, 2
	octave 4
	volume_envelope 12, 8
	note C_, 1
	note E_, 3
	note D_, 2
	volume_envelope 4, 8
	note D_, 2
	volume_envelope 12, 8
	note C_, 12
;Bar 42
	volume_envelope 4, 8
	note C_, 4
	volume_envelope 12, 8
	note C_, 8
	note C#, 1
	note D_, 3
	volume_envelope 4, 8
	note D_, 4
	volume_envelope 12, 8
	note C_, 12
;Bar 43
	rest 1
	volume_envelope 4, 8
	note C_, 2
	rest 1
	volume_envelope 12, 8
	note C_, 8
	note D_, 2
	volume_envelope 4, 8
	note D_, 2
	volume_envelope 12, 8
	note C_, 2
	volume_envelope 4, 8
	note C_, 2
	volume_envelope 12, 8
	note D_, 2
	volume_envelope 4, 8
	note D_, 2
;Bar 44
	volume_envelope 12, 8
	note C#, 1
	note D_, 3
	note_type 12, 12, 8
	note C_, 12
	note_type 6, 4, 8
	note C_, 4
	sound_loop 0, Music_Route225Day_Ch2_loop

Music_Route225Day_Ch2_Bar30:
	note D#, 2
	volume_envelope 11, 3
	note E_, 4
	vibrato 0, 2, 2
	volume_envelope 7, 8
	note E_, 8
	volume_envelope 7, -5
	note E_, 6
	volume_envelope 11, 8
	note E_, 3
	volume_envelope 5, 8
	note E_, 5
	vibrato 8, 2, 2
	volume_envelope 11, 8
	note A_, 2
	volume_envelope 5, 8
	note A_, 2
	sound_ret

; ============================================================================================================

Music_Route225Day_Ch3:
	note_type 6, 1, 6
	stereo_panning FALSE, TRUE
Music_Route225Day_Ch3_loop:
;Bar 1
	octave 1
	volume_envelope 1, 6
	rest 16
	rest 16
;Bar 2
	octave 2
	note C_, 8
	octave 3
	note C_, 2
	volume_envelope 2, 6
	note C_, 2
	rest 4
	octave 2
	volume_envelope 1, 6
	note C_, 2
	volume_envelope 2, 6
	note C_, 2
	volume_envelope 1, 6
	note C_, 2
	rest 2
	octave 3
	note C_, 2
	volume_envelope 2, 6
	note C_, 2
	octave 2
	volume_envelope 1, 6
	note C_, 2
	volume_envelope 2, 6
	note C_, 2
;Bar 3
	rest 4
	volume_envelope 1, 6
	note C_, 4
	octave 3
	note C_, 2
	volume_envelope 2, 6
	note C_, 2
	octave 2
	volume_envelope 1, 6
	note C_, 2
	volume_envelope 2, 6
	note C_, 2
	rest 4
	volume_envelope 1, 6
	note C_, 4
	octave 1
	note A#, 4
	note G#, 4
;Bar 4
	sound_call Music_Route225Day_Ch3_Bar8
;Bar 5
	sound_call Music_Route225Day_Ch3_Bar5
	volume_envelope 1, 6
	note G_, 2
	volume_envelope 2, 6
	note G_, 2
;Bar 6
	octave 2
	volume_envelope 1, 6
	note F#, 2
	note G_, 2
	note D#, 2
	note E_, 2
	note C_, 8
	note C_, 2
	volume_envelope 2, 6
	note C_, 2
	volume_envelope 1, 6
	note C_, 2
	volume_envelope 2, 6
	note C_, 2
	octave 3
	volume_envelope 1, 6
	note C_, 2
	volume_envelope 2, 6
	note C_, 2
	octave 2
	volume_envelope 1, 6
	note C_, 2
	volume_envelope 2, 6
	note C_, 2
;Bar 7
	rest 4
	volume_envelope 1, 6
	note C_, 4
	octave 3
	note C_, 2
	volume_envelope 2, 6
	note C_, 2
	octave 2
	volume_envelope 1, 6
	note C_, 2
	volume_envelope 2, 6
	note C_, 2
	rest 4
	volume_envelope 1, 6
	note C_, 4
	octave 1
	note A#, 4
	note G#, 4
;Bar 8
	sound_call Music_Route225Day_Ch3_Bar8
;Bar 9
	sound_call Music_Route225Day_Ch3_Bar5
	volume_envelope 1, 6
	note G_, 1
	volume_envelope 2, 6
	note G_, 1
	volume_envelope 1, 6
	note G_, 1
	volume_envelope 2, 6
	note G_, 1
;Bar 10
	note_type 12, 1, 6
	note A_, 16
	volume_envelope 2, 6
	note A_, 6
	volume_envelope 3, 6
	note A_, 4
;Bar 11
	volume_envelope 1, 6
	note A_, 2
	note G_, 2
	note F#, 16
	volume_envelope 2, 6
	note F#, 6
	volume_envelope 3, 6
	note F#, 6
;Bar 13
	volume_envelope 1, 6
	note F#, 2
	note E_, 2
	note D_, 16
	volume_envelope 2, 6
	note D_, 6
	volume_envelope 3, 6
	note D_, 6
;Bar 15
	volume_envelope 1, 6
	note D_, 2
	note E_, 2
	note F_, 12
;Bar 16
	note F_, 2
	note F#, 2
	note G_, 8
;Bar 17
	note G#, 10
;Bar 18
	note_type 6, 1, 6
	note A_, 4
	note A_, 1
	volume_envelope 2, 6
	note A_, 2
	rest 9
	volume_envelope 1, 6
	note A_, 4
	note A_, 1
	volume_envelope 2, 6
	note A_, 2
	rest 1
	volume_envelope 1, 6
	note A_, 1
	volume_envelope 2, 6
	note A_, 2
	rest 1
	volume_envelope 1, 6
	note A_, 7
;Bar 19
	volume_envelope 2, 6
	note A_, 1
	volume_envelope 1, 6
	note A_, 1
	volume_envelope 2, 6
	note A_, 2
	rest 1
	volume_envelope 1, 6
	note A_, 4
	note A_, 1
	volume_envelope 2, 6
	note A_, 2
	rest 1
	volume_envelope 1, 6
	note A_, 3
	volume_envelope 2, 6
	note A_, 1
	volume_envelope 1, 6
	note A_, 4
	note G_, 4
	note F#, 4
;Bar 20
	note F#, 4
	note F#, 1
	volume_envelope 2, 6
	note F#, 2
	rest 9
	volume_envelope 1, 6
	note F#, 4
	note F#, 1
	volume_envelope 2, 6
	note F#, 2
	rest 1
	volume_envelope 1, 6
	note F#, 1
	volume_envelope 2, 6
	note F#, 2
	rest 1
	volume_envelope 1, 6
	note F#, 7
;Bar 21
	volume_envelope 2, 6
	note F#, 1
	volume_envelope 1, 6
	note F#, 1
	volume_envelope 2, 6
	note F#, 2
	rest 1
	volume_envelope 1, 6
	note F#, 4
	note F#, 1
	volume_envelope 2, 6
	note F#, 2
	rest 1
	volume_envelope 1, 6
	note F#, 3
	volume_envelope 2, 6
	note F#, 1
	volume_envelope 1, 6
	note F#, 1
	volume_envelope 2, 6
	note F#, 2
	rest 1
	volume_envelope 1, 6
	note E_, 4
	note D_, 4
;Bar 22
	note D_, 4
	note D_, 1
	volume_envelope 2, 6
	note D_, 2
	rest 9
	volume_envelope 1, 6
	note D_, 4
	note D_, 1
	volume_envelope 2, 6
	note D_, 2
	rest 2
	volume_envelope 1, 6
	note E_, 1
	volume_envelope 2, 6
	note E_, 2
	rest 1
	volume_envelope 1, 6
	note E_, 7
;Bar 23
	note D_, 1
	volume_envelope 2, 6
	note D_, 2
	rest 1
	volume_envelope 1, 6
	note D_, 4
	note D_, 1
	volume_envelope 2, 6
	note D_, 2
	rest 1
	volume_envelope 1, 6
	note D_, 3
	volume_envelope 2, 6
	note D_, 1
	volume_envelope 1, 6
	note D_, 4
	note E_, 4
	note F_, 8
;Bar 24
	note F_, 1
	volume_envelope 2, 6
	note F_, 2
	rest 9
	volume_envelope 1, 6
	note F_, 4
	note F_, 1
	volume_envelope 2, 6
	note F_, 2
	rest 1
	volume_envelope 1, 6
	note F#, 8
;Bar 25
	note G_, 4
	note G_, 1
	volume_envelope 2, 6
	note G_, 2
	rest 1
	volume_envelope 1, 6
	note G_, 4
	note G_, 1
	volume_envelope 2, 6
	note G_, 2
	rest 1
	volume_envelope 1, 6
	note G_, 3
	volume_envelope 2, 6
	note G_, 1
	volume_envelope 1, 6
	note G_, 1
	volume_envelope 2, 6
	note G_, 2
	rest 1
	volume_envelope 1, 6
	note G_, 4
	note G_, 4
;Bar 26
	octave 2
	note C_, 4
	volume_envelope 2, 6
	note C_, 2
	rest 2
	octave 3
	volume_envelope 1, 6
	note C_, 2
	volume_envelope 2, 6
	note C_, 2
	rest 4
	octave 1
	volume_envelope 1, 6
	note B_, 2
	volume_envelope 2, 6
	note B_, 2
	volume_envelope 1, 6
	note B_, 2
	volume_envelope 2, 6
	note B_, 2
	octave 2
	volume_envelope 1, 6
	note B_, 2
	volume_envelope 2, 6
	note B_, 2
	octave 1
	volume_envelope 1, 6
	note A#, 2
	volume_envelope 2, 6
	note A#, 2
;Bar 27
	volume_envelope 1, 6
	note A#, 4
	note A#, 1
	volume_envelope 2, 6
	note A#, 2
	rest 1
	octave 2
	volume_envelope 1, 6
	note A#, 2
	volume_envelope 2, 6
	note A#, 2
	octave 1
	volume_envelope 1, 6
	note A_, 2
	volume_envelope 2, 6
	note A_, 2
	volume_envelope 1, 6
	note A_, 4
	note A_, 2
	volume_envelope 2, 6
	note A_, 2
	octave 2
	volume_envelope 1, 6
	note A_, 2
	volume_envelope 2, 6
	note A_, 2
	octave 1
	volume_envelope 1, 6
	note G#, 2
	volume_envelope 2, 6
	note G#, 2
;Bar 28
	sound_call Music_Route225Day_Ch3_Type1
	octave 1
	volume_envelope 1, 6
	note G_, 2
	volume_envelope 2, 6
	note G_, 2
	volume_envelope 1, 6
	note G_, 4
	note G_, 1
	volume_envelope 2, 6
	note G_, 2
	rest 1
	octave 2
	volume_envelope 1, 6
	note G_, 2
	volume_envelope 2, 6
	note G_, 2
	octave 1
	volume_envelope 1, 6
	note G#, 2
	volume_envelope 2, 6
	note G#, 2
;Bar 29
	sound_call Music_Route225Day_Ch3_Type1
	octave 1
	volume_envelope 1, 6
	note G#, 2
	volume_envelope 2, 6
	note G#, 2
	octave 2
	volume_envelope 1, 6
	note G#, 2
	volume_envelope 2, 6
	note G#, 2
	octave 1
	volume_envelope 1, 6
	note A#, 2
	volume_envelope 2, 6
	note A#, 2
	octave 2
	volume_envelope 1, 6
	note G_, 2
	volume_envelope 2, 6
	note G_, 2
	octave 1
	volume_envelope 1, 6
	note G_, 2
	volume_envelope 2, 6
	note G_, 2
;Bar 30
	sound_call Music_Route225Day_Ch3_Type2
	octave 1
	volume_envelope 1, 6
	note A_, 2
	volume_envelope 2, 6
	note A_, 2
	sound_call Music_Route225Day_Ch3_Type1
	octave 1
	volume_envelope 1, 6
	note G#, 4
;Bar 31
	note G_, 4
	note G_, 1
	volume_envelope 2, 6
	note G_, 2
	rest 1
	octave 2
	volume_envelope 1, 6
	note G_, 2
	volume_envelope 2, 6
	note G_, 2
	octave 1
	volume_envelope 1, 6
	note F#, 2
	volume_envelope 2, 6
	note F#, 2
	volume_envelope 1, 6
	note F#, 4
	note F#, 1
	volume_envelope 2, 6
	note F#, 2
	rest 1
	octave 2
	volume_envelope 1, 6
	note F#, 4
	note F_, 3
	volume_envelope 2, 6
	note F_, 1
;Bar 32
	volume_envelope 1, 6
	note F_, 2
	volume_envelope 2, 6
	note F_, 2
	rest 4
	octave 3
	volume_envelope 1, 6
	note F_, 2
	volume_envelope 2, 6
	note F_, 2
	octave 2
	volume_envelope 1, 6
	note D_, 2
	volume_envelope 2, 6
	note D_, 2
	volume_envelope 1, 6
	note D_, 4
	note D_, 1
	volume_envelope 2, 6
	note D_, 2
	rest 1
	octave 3
	volume_envelope 1, 6
	note D_, 2
	volume_envelope 2, 6
	note D_, 2
	octave 2
	volume_envelope 1, 6
	note D_, 2
	volume_envelope 2, 6
	note D_, 2
;Bar 33
	volume_envelope 1, 6
	note G_, 4
	note G_, 1
	volume_envelope 2, 6
	note G_, 2
	rest 5
	volume_envelope 1, 6
	note G_, 2
	volume_envelope 2, 6
	note G_, 2
	volume_envelope 1, 6
	note D_, 2
	volume_envelope 2, 6
	note D_, 2
	volume_envelope 1, 6
	note G_, 8
	volume_envelope 2, 6
	note G_, 2
	rest 2
;Bar 34
	volume_envelope 1, 6
	note C_, 4
	volume_envelope 2, 6
	note C_, 2
	rest 2
	octave 3
	volume_envelope 1, 6
	note C_, 2
	volume_envelope 2, 6
	note C_, 2
	rest 4
	octave 1
	volume_envelope 1, 6
	note B_, 2
	volume_envelope 2, 6
	note B_, 2
	volume_envelope 1, 6
	note B_, 2
	volume_envelope 2, 6
	note B_, 2
	octave 2
	volume_envelope 1, 6
	note B_, 2
	volume_envelope 2, 6
	note B_, 2
	octave 1
	volume_envelope 1, 6
	note A#, 2
	volume_envelope 2, 6
	note A#, 2
;Bar 35
	volume_envelope 1, 6
	note A#, 4
	note A#, 1
	volume_envelope 2, 6
	note A#, 2
	rest 1
	octave 2
	volume_envelope 1, 6
	note A#, 2
	volume_envelope 2, 6
	note A#, 2
	octave 1
	volume_envelope 1, 6
	note A_, 2
	volume_envelope 2, 6
	note A_, 2
	volume_envelope 1, 6
	note A_, 4
	note A_, 2
	volume_envelope 2, 6
	note A_, 2
	octave 2
	volume_envelope 1, 6
	note A_, 2
	volume_envelope 2, 6
	note A_, 2
	octave 1
	volume_envelope 1, 6
	note G#, 2
	volume_envelope 2, 6
	note G#, 2
;Bar 36
	sound_call Music_Route225Day_Ch3_Type1
	octave 1
	volume_envelope 1, 6
	note G_, 2
	volume_envelope 2, 6
	note G_, 2
	volume_envelope 1, 6
	note G_, 4
	note G_, 1
	volume_envelope 2, 6
	note G_, 2
	rest 1
	octave 2
	volume_envelope 1, 6
	note G_, 2
	volume_envelope 2, 6
	note G_, 2
	octave 1
	volume_envelope 1, 6
	note G#, 2
	volume_envelope 2, 6
	note G#, 2
;Bar 37
	sound_call Music_Route225Day_Ch3_Type1
	octave 1
	volume_envelope 1, 6
	note G#, 2
	volume_envelope 2, 6
	note G#, 2
	octave 2
	volume_envelope 1, 6
	note G#, 4
	octave 1
	note A#, 2
	volume_envelope 2, 6
	note A#, 2
	octave 2
	volume_envelope 1, 6
	note G_, 4
	octave 1
	note G_, 2
	volume_envelope 2, 6
	note G_, 2
;Bar 38
	sound_call Music_Route225Day_Ch3_Type2
	octave 1
	volume_envelope 1, 6
	note A_, 2
	volume_envelope 2, 6
	note A_, 2
	sound_call Music_Route225Day_Ch3_Type1
	octave 1
	volume_envelope 1, 6
	note G#, 4
;Bar 39
	note G_, 4
	note G_, 1
	volume_envelope 2, 6
	note G_, 2
	rest 1
	octave 2
	volume_envelope 1, 6
	note G_, 2
	volume_envelope 2, 6
	note G_, 2
	octave 1
	volume_envelope 1, 6
	note F#, 2
	volume_envelope 2, 6
	note F#, 2
	volume_envelope 1, 6
	note F#, 4
	volume_envelope 2, 6
	note F#, 1
	note F#, 2
	rest 1
	octave 2
	volume_envelope 1, 6
	note F#, 4
	note F_, 3
	volume_envelope 2, 6
	note F_, 1
;Bar 40
	volume_envelope 1, 6
	note F_, 8
	octave 3
	note F_, 2
	volume_envelope 2, 6
	note F_, 2
	octave 2
	volume_envelope 1, 6
	note D_, 2
	volume_envelope 2, 6
	note D_, 2
	volume_envelope 1, 6
	note D_, 4
	note D_, 1
	volume_envelope 2, 6
	note D_, 2
	rest 1
	octave 3
	volume_envelope 1, 6
	note D_, 2
	volume_envelope 2, 6
	note D_, 2
	octave 2
	volume_envelope 1, 6
	note D_, 2
	volume_envelope 2, 6
	note D_, 2
;Bar 41
	volume_envelope 1, 6
	note G_, 4
	note G_, 1
	volume_envelope 2, 6
	note G_, 2
	rest 5
	volume_envelope 1, 6
	note G_, 2
	volume_envelope 2, 6
	note G_, 2
	volume_envelope 1, 6
	note D_, 2
	volume_envelope 2, 6
	note D_, 2
	volume_envelope 1, 6
	note G_, 8
	note D_, 4
;Bar 42
	note D_, 2
	volume_envelope 2, 6
	note D_, 2
	rest 4
	octave 3
	volume_envelope 1, 6
	note D_, 3
	volume_envelope 2, 6
	note D_, 2
	rest 3
	octave 2
	volume_envelope 1, 6
	note D_, 4
	note D_, 1
	volume_envelope 2, 6
	note D_, 2
	rest 1
	octave 3
	volume_envelope 1, 6
	note D_, 3
	volume_envelope 2, 6
	note C#, 1
	octave 2
	volume_envelope 1, 6
	note D_, 4
;Bar 43
	note D_, 2
	volume_envelope 2, 6
	note D_, 2
	rest 4
	octave 3
	volume_envelope 1, 6
	note D_, 3
	volume_envelope 2, 6
	note D_, 2
	rest 3
	octave 2
	volume_envelope 1, 6
	note D_, 4
	note D_, 1
	volume_envelope 2, 6
	note D_, 2
	rest 1
	octave 3
	volume_envelope 1, 6
	note D_, 3
	volume_envelope 2, 6
	note D_, 1
	octave 2
	volume_envelope 1, 6
	note C_, 4
;Bar 44
	note C_, 4
	volume_envelope 2, 6
	note C_, 2
	rest 6
	octave 3
	volume_envelope 1, 6
	note C_, 2
	volume_envelope 2, 6
	note C_, 2
	octave 2
	volume_envelope 1, 6
	note C_, 2
	volume_envelope 2, 6
	note C_, 2
	octave 3
	volume_envelope 1, 6
	note C_, 2
	volume_envelope 2, 6
	note C_, 2
	rest 4
	volume_envelope 1, 6
	note C_, 4
	sound_loop 0, Music_Route225Day_Ch3_loop

Music_Route225Day_Ch3_Bar5:
	volume_envelope 2, 6;
	note A#, 1
	volume_envelope 1, 6
	note A#, 2
	volume_envelope 2, 6
	note A#, 2
	octave 2
	volume_envelope 1, 6
	note A#, 2
	volume_envelope 2, 6
	note A#, 2
	octave 1
	volume_envelope 1, 6
	note A#, 2
	volume_envelope 2, 6
	note A#, 2
	volume_envelope 1, 6
	note G_, 4
	note G_, 2
	volume_envelope 2, 6
	note G_, 2
	rest 4
	sound_ret

Music_Route225Day_Ch3_Bar8:
	note G#, 8;
	octave 2
	note G#, 2
	volume_envelope 2, 6
	note G#, 2
	rest 4
	octave 1
	volume_envelope 1, 6
	note G_, 3
	volume_envelope 2, 6
	note G_, 1
	volume_envelope 1, 6
	note G#, 2
	volume_envelope 2, 6
	note G#, 2
	octave 2
	volume_envelope 1, 6
	note G#, 2
	volume_envelope 2, 6
	note G#, 2
	octave 1
	volume_envelope 1, 6
	note A#, 7
	sound_ret

Music_Route225Day_Ch3_Type1:
	volume_envelope 1, 6;
	note G#, 4
	note G#, 1
	volume_envelope 2, 6
	note G#, 2
	rest 1
	octave 2
	volume_envelope 1, 6
	note G#, 2
	volume_envelope 2, 6
	note G#, 2
	sound_ret

Music_Route225Day_Ch3_Type2:
	volume_envelope 1, 6;
	note A_, 4
	note A_, 1
	volume_envelope 2, 6
	note A_, 2
	rest 1
	octave 2
	volume_envelope 1, 6
	note A_, 2
	volume_envelope 2, 6
	note A_, 2
	sound_ret

; ============================================================================================================
; ============================================================================================================
Music_Route225Day_Ch4:
	toggle_noise 3
	drum_speed 6
Music_Route225Day_Ch4_loop:
;Bar 1
	drum_note 1, 2 
	drum_note 1, 2
    drum_speed 4
	stereo_panning FALSE, TRUE
	drum_note 11, 2 ;was C#
	drum_note 11, 2 ;was C#
	stereo_panning TRUE, TRUE
	drum_note 4, 2
    drum_speed 6
	drum_note 1, 2 
	drum_note 1, 2
    drum_speed 4
	drum_note 2, 2
	drum_note 2, 2
	drum_note 4, 2
    drum_speed 6
	drum_note 1, 2 
	drum_note 1, 2
    drum_speed 4
	stereo_panning TRUE, FALSE
	drum_note 11, 2
	drum_note 11, 2
	stereo_panning TRUE, TRUE
	drum_note 4, 2
    drum_speed 6
	drum_note 3, 2
	drum_note 3, 2
	drum_note 4, 2
	drum_note 4, 2
;Bar 2
	drum_note 12, 8
	drum_note 1, 8
	drum_note 4, 4
	drum_note 4, 4
	drum_note 1, 4
	drum_note 4, 4
;Bar 3
	sound_call Music_Route225Day_Ch4_Bar3
;Bar 4
	sound_call Music_Route225Day_Ch4_Bar4
;Bar 5
	drum_note 8, 4
	drum_note 4, 4
	drum_note 1, 4
	drum_note 4, 4
	drum_note 8, 4
	drum_note 4, 4
	drum_note 1, 1
	drum_note 1, 3
	drum_note 1, 4
;Bar 6
	drum_note 1, 4
	drum_speed 4
	stereo_panning TRUE, FALSE
	drum_note 11, 2
	drum_note 11, 2
	stereo_panning TRUE, TRUE
	drum_note 4, 2
	drum_speed 6
	drum_note 1, 4
	drum_note 4, 4
	drum_note 12, 8
	drum_note 1, 4
	drum_note 4, 4
;Bar 7
	sound_call Music_Route225Day_Ch4_Bar3
;Bar 8
	drum_note 4, 8
	drum_note 1, 8
	drum_note 4, 4
	drum_note 4, 4
	drum_note 1, 4
	drum_note 4, 4
;Bar 9
	stereo_panning TRUE, FALSE
	drum_note 9, 2
	drum_note 9, 2
	stereo_panning FALSE, TRUE
	drum_note 9, 2
	stereo_panning TRUE, TRUE
	drum_note 4, 2
	stereo_panning FALSE, TRUE
	drum_note 9, 2
	drum_note 9, 2
	stereo_panning TRUE, FALSE
	drum_note 11, 2
	stereo_panning TRUE, TRUE
	drum_note 4, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 9, 2
	drum_note 4, 2
	drum_note 1, 2
	drum_note 1, 6
;Bar 10
	drum_note 12, 8
	drum_note 8, 8
Music_Route225Day_Ch4_Bar10:
	drum_note 7, 8
	drum_note 8, 8
	sound_loop 13, Music_Route225Day_Ch4_Bar10
;Bar 17
	stereo_panning FALSE, TRUE
	drum_note 9, 4
	stereo_panning TRUE, FALSE
	drum_note 9, 2
	stereo_panning TRUE, TRUE
	drum_note 4, 2
	stereo_panning TRUE, FALSE
	drum_note 11, 4
	stereo_panning TRUE, TRUE
	drum_note 1, 2
	drum_note 1, 2
	drum_note 7, 2
	drum_note 4, 2
	drum_note 1, 2
	drum_note 4, 2
	drum_note 12, 8
;Bar 18
	drum_note 12, 8
	drum_note 1, 8
	drum_note 4, 4
	drum_note 4, 4
	drum_note 1, 4
	drum_note 4, 4
;Bar 19
	sound_call Music_Route225Day_Ch4_Bar19
;Bar 20
	sound_call Music_Route225Day_Ch4_Bar4
;Bar 21
	sound_call Music_Route225Day_Ch4_Bar19
;Bar 22
	sound_call Music_Route225Day_Ch4_Bar4
;Bar 23
	sound_call Music_Route225Day_Ch4_Bar19
;Bar 24
	sound_call Music_Route225Day_Ch4_Bar4
;Bar 25
	drum_note 12, 8
	drum_note 4, 4
	drum_note 12, 8
	drum_note 4, 4
	drum_note 12, 8
;Bar 26
	drum_note 12, 8
	drum_note 1, 8
	drum_note 4, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 4, 4
;Bar 27
	sound_call Music_Route225Day_Ch4_Bar27
;Bar 28
	sound_call Music_Route225Day_Ch4_Bar4
;Bar 29
	drum_note 8, 4
	drum_note 4, 4
	drum_note 1, 4
	drum_note 4, 4
	drum_note 4, 4
	drum_note 1, 4
	drum_note 1, 1
	drum_note 1, 3
	drum_note 8, 4
;Bar 30
	sound_call Music_Route225Day_Ch4_Bar4
;Bar 31
	sound_call Music_Route225Day_Ch4_Bar27
;Bar 32
	sound_call Music_Route225Day_Ch4_Bar4
;Bar 33
	drum_note 1, 1
	drum_note 1, 3
	drum_note 4, 4
	drum_note 8, 1
	drum_note 9, 3
	drum_note 4, 4
	drum_note 8, 1
	drum_note 9, 3
	drum_note 4, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 8, 4
;Bar 34
	drum_note 4, 4
	drum_note 8, 4
	drum_note 1, 4
	drum_note 8, 4
	drum_note 4, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 4, 4
;Bar 35
	sound_call Music_Route225Day_Ch4_Bar27
;Bar 36
	sound_call Music_Route225Day_Ch4_Bar4
;Bar 37
	sound_call Music_Route225Day_Ch4_Bar27
;Bar 38
	sound_call Music_Route225Day_Ch4_Bar4
;Bar 39
	sound_call Music_Route225Day_Ch4_Bar27
;Bar 40
	sound_call Music_Route225Day_Ch4_Bar4
;Bar 41
	sound_call Music_Route225Day_Ch4_Bar27
;Bar 42
	sound_call Music_Route225Day_Ch4_Bar4
;Bar 43
	drum_note 8, 4
	drum_note 4, 4
	drum_note 1, 4
	drum_note 4, 4
	drum_note 8, 4
	drum_note 4, 4
	drum_note 1, 4
	drum_note 8, 4
;Bar 44
	rest 16
	rest 16
	sound_loop 0, Music_Route225Day_Ch4_loop

Music_Route225Day_Ch4_Bar3:
	drum_note 8, 4;
	drum_note 4, 4
	drum_note 1, 4
	drum_note 4, 4
	drum_note 8, 4
	drum_note 4, 4
	drum_note 1, 4
	drum_note 4, 4
	sound_ret

Music_Route225Day_Ch4_Bar4:
	drum_note 4, 4;
	drum_note 8, 4
	drum_note 1, 4
	drum_note 8, 4
	drum_note 4, 4
	drum_note 4, 4
	drum_note 1, 4
	drum_note 4, 4
	sound_ret

Music_Route225Day_Ch4_Bar19:
	drum_note 7, 4;
	drum_note 4, 4
	drum_note 1, 4
	drum_note 4, 4
	drum_note 8, 4
	drum_note 4, 4
	drum_note 1, 4
	drum_note 8, 4
	sound_ret

Music_Route225Day_Ch4_Bar27:
	drum_note 8, 4;
	drum_note 4, 4
	drum_note 1, 4
	drum_note 4, 4
	drum_note 8, 4
	drum_note 4, 4
	drum_note 1, 4
	drum_note 8, 4
	sound_ret

; ============================================================================================================
; ============================================================================================================
; ============================================================================================================

Music_Route225Night:
	channel_count 4
	channel 1, Music_Route225Night_Ch1
	channel 2, Music_Route225Night_Ch2
	channel 3, Music_Route225Night_Ch3
	channel 4, Music_Route225Day_Ch4

Music_Route225Night_Ch1:
	transpose 0, 2
	tempo 140
	sound_call Music_Route225Day_Ch1

Music_Route225Night_Ch2:
	transpose 0, 2
	sound_call Music_Route225Day_Ch2

Music_Route225Night_Ch3:
	transpose 0, 2
	sound_call Music_Route225Day_Ch3