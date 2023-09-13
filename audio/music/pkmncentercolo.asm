Music_PKMNCenterColo:
	channel_count 4
	channel 1, Music_PKMNCenterColo_Ch1
	channel 2, Music_PKMNCenterColo_Ch2
	channel 3, Music_PKMNCenterColo_Ch3
	channel 4, Music_PKMNCenterColo_Ch4

Music_PKMNCenterColo_Ch1:
	volume 7, 7
	duty_cycle $1
	note_type 12, 10, 7
	stereo_panning FALSE, TRUE
	tempo 170
;Bar 1
	octave 4
	note E_, 1
	rest 1
	note A_, 1
	rest 1
	note C#, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	note A_, 1
	rest 1
	note B_, 1
	rest 1
;Bar 2
	octave 4
	note C#, 1
	rest 1
	note D_, 1
	rest 1
	note C#, 1
	stereo_panning TRUE, TRUE
	volume_envelope 8, 7
Music_PKMNCenterColo_Ch1_loop:
	rest 16
	rest 1
;Bar 3
	octave 3
	note B_, 1
	rest 1
	note G#, 1
	rest 1
	note E_, 1
	rest 1
	note D_, 1
	rest 1
	octave 2
	note B_, 1
	rest 16
	rest 7
;Bar 5
	octave 3
	note A_, 1
	rest 1
	octave 4
	note C#, 1
	rest 1
	octave 3
	note E_, 1
	rest 1
	note F#, 1
	rest 1
	note G#, 1
	rest 1
;Bar 6
	note A_, 1
	rest 1
	note B_, 1
	rest 1
	octave 4
	note C#, 1
	rest 16
	rest 1
;Bar 7
	octave 3
	note B_, 1
	rest 1
	note G#, 1
	rest 1
	note E_, 1
	rest 1
	note D_, 1
	rest 1
	octave 2
	note B_, 1
	rest 16
	rest 5
;Bar 9
	octave 3
	duty_cycle $2
	note_type 6, 6, 7
	note A_, 1
	note E_, 1
	note F#, 1
	note G#, 1
	note A_, 1
	note B_, 1
	octave 4
	note C#, 1
	note D_, 1
	note E_, 1
	octave 3
	note A_, 1
	note B_, 1
	octave 4
	note C#, 1
	note D_, 1
	note E_, 1
	note F#, 1
	note G#, 1
	note A_, 1
	note E_, 1
	note F#, 1
	note G#, 1
	note A_, 1
	note B_, 1
	octave 5
	note C#, 1
	note D_, 1
;Bar 10
	note E_, 1
	octave 4
	note A_, 1
	note B_, 1
	octave 5
	note C#, 1
	note D_, 1
	note E_, 1
	note F#, 1
	note G#, 1
	volume_envelope 7, 7
	duty_cycle $1
	octave 3
	note A_, 2
	note E_, 2
	note G#, 2
	note A_, 2
	octave 4
	note C#, 2
	rest 1
	note D#, 1
	note E_, 6
	rest 1
	note D#, 1
	note E_, 4
;Bar 11
	rest 4
	note E_, 2
	rest 2
	note D_, 2
	rest 1
	note D#, 1
	note E_, 4
	rest 4
	note C#, 4
	octave 3
	note B_, 4
	note E_, 2
;Bar 12
	octave 4
	note C#, 2
	note D_, 2 ;was 1
	note C#, 2
	octave 3
	note B_, 2
	note A_, 2
	note E_, 1
	note A#, 1
	note B_, 3
	rest 3
	note A#, 1
	note B_, 3 
	note E_, 2
	rest 3
	note A#, 1
	note B_, 2
	rest 2
	note E_, 1
	rest 1
	note_type 12, 7, 7
;Bar 13
	octave 4
	note D_, 2
	rest 2
	note C#, 2
	note D_, 2
	note C#, 2
	octave 3
	note B_, 2
	note A_, 2
	rest 1
;Bar 14
	octave 4
	note E_, 1
	note F#, 1
	note E_, 1
	note C#, 1
	octave 3
	note B_, 1
	note A_, 1
	note E_, 1
	note G#, 1
	note A_, 1
	octave 4
	note C#, 1
	note_type 6, 7, 7
	rest 1
	note D#, 1
	note E_, 6
	rest 1
	note D#, 1
	note E_, 4
	note_type 12, 7, 7
;Bar 15
	rest 2
	note E_, 1
	rest 1
	note D_, 1
	rest 1
	note C#, 2
	note D_, 1
	rest 1
	note E_, 1
	rest 1
	note F#, 2
	rest 2
;Bar 16
	note D_, 1
	rest 1
	note_type 6, 7, 7
	note F_, 1
	note F#, 1
	rest 1
	note D#, 1
	note_type 12, 7, 7
	note E_, 4
	note D_, 2
	note C#, 2
	note D_, 8
;Bar 17
	note_type 6, 7, 7
	note C_, 1
	note C#, 3
	note_type 12, 7, 7
	note D_, 2
	note C#, 2
	octave 3
	note B_, 2
	note A_, 2
	rest 7
	sound_loop 0, Music_PKMNCenterColo_Ch1_loop

; ============================================================================================================

Music_PKMNCenterColo_Ch2:
	duty_cycle $0
	stereo_panning TRUE, FALSE
	note_type 12, 10, 7
;Bar 1
	octave 5
	note C#, 1
	rest 1
	note E_, 1
	rest 1
	octave 4
	note A_, 1
	rest 1
	note G#, 1
	rest 1
	note F#, 1
	rest 1
	note G#, 1
	rest 1
;Bar 2
	note A_, 1
	rest 1
	note B_, 1
	rest 1
	volume_envelope 13, 7
Music_PKMNCenterColo_Ch2_loop:
	duty_cycle $1
	note A_, 1
	note E_, 1
	note G#, 1
	note A_, 1
	octave 5
	note C#, 1
	note_type 6, 13, 7
	rest 1
	note D#, 1
	note_type 12, 13, 7
	note E_, 1
	rest 3
	note E_, 1
	rest 1
;Bar 3
	note_type 6, 13, 7
	note D_, 1
	note E_, 1
	note_type 12, 13, 7
	note D_, 1
	note C#, 1
	octave 4
	note A_, 1
	note B_, 1
	rest 1
	octave 5
	note D_, 1
	rest 3
	octave 4
	note B_, 1
	rest 1
	note G#, 1
	rest 1
	note E_, 1
	octave 3
	note B_, 1
;Bar 4
	octave 4
	note F#, 1
	rest 1
	note G_, 1
	rest 1
	note G#, 1
	octave 3
	note B_, 1
	octave 4
	note E_, 1
	note F#, 1
	note G#, 1
	octave 5
	note_type 6, 13, 7
	rest 1
	note C_, 1
	note_type 12, 13, 7
	note C#, 1
	rest 3
	octave 4
	note B_, 1
	rest 3
;Bar 5
	note G#, 1
	rest 1
	note A_, 1
	rest 1
	octave 5
	note C#, 1
	rest 3
	octave 4
	note E_, 1
	rest 1
	note F#, 1
	rest 1
	note G#, 1
	note_type 6, 13, 7
	rest 1
	note B_, 1
	note_type 12, 13, 7
;Bar 6
	note A_, 1
	note G#, 1
	note F#, 1
	note G#, 1
	note A_, 1
	note E_, 1
	note G#, 1
	note A_, 1
	octave 5
	note C#, 1
	note_type 6, 13, 7
	rest 1
	note D#, 1
	note_type 12, 13, 7
	note E_, 1
	rest 3
	note E_, 1
	rest 1
;Bar 7
	note D_, 1
	rest 1
	note C#, 1
	rest 1
	octave 4
	note B_, 1
	rest 1
	octave 5
	note D_, 1
	rest 3
	octave 4
	note B_, 1
	rest 1
	note G#, 1
	rest 3
	note_type 6, 13, 7
	note B_, 1
	octave 5
	note C#, 1
	note_type 12, 13, 7
;Bar 8
	octave 4
	note B_, 1
	note A#, 1
	note B_, 1
	note G#, 1
	octave 3
	note B_, 1
	octave 4
	note E_, 1
	note F#, 1
	note G#, 1
	note_type 6, 13, 7
	rest 1
	octave 5
	note C_, 1
	note_type 12, 13, 7
	note C#, 1
	rest 3
	octave 4
	note B_, 1
	rest 3
;Bar 9
	note G#, 1
	rest 1
	note A_, 1
	rest 1
	note G#, 1
	rest 1
	note F#, 1
	rest 1
	note G#, 1
	rest 1
	note A_, 1
	rest 7
;Bar 10
	octave 5
	duty_cycle $2
	note C#, 8
	note E_, 6
;Bar 11
	note C_, 1
	note C#, 1
	note D_, 2
	note E_, 2
	note D_, 2
	note C#, 2
	octave 4
	note B_, 2
	note G#, 1
	octave 5
	note C#, 1
;Bar 12
	note D_, 1
	note C#, 1
	octave 4
	note B_, 1
	note A_, 1
	note B_, 1
	note E_, 1
	rest 1
	note E_, 1
	note B_, 1
	note E_, 1
	rest 1
	note E_, 1
	octave 5
	note D_, 1
	octave 4
	note A_, 1
	rest 1
	note A_, 1
;Bar 13
	octave 5
	note D_, 2
	octave 4
	note_type 6, 13, 7
	note G#, 3
	octave 5
	note C_, 1
	note_type 12, 13, 7
	note C#, 2
	note D_, 2
	note C#, 2
	octave 4
	note B_, 2
	note A_, 1
	note G#, 1
	note F#, 1
	note G#, 1
;Bar 14
	octave 5
	note_type 6, 13, 7
	note E_, 1
	note F#, 1
	note E_, 1
	note C#, 1
	note_type 12, 13, 7
	octave 4
	note B_, 2
	octave 5
	note C#, 8
	note E_, 8
;Bar 15
	note D_, 2
	note C#, 2
	note D_, 2
	note E_, 2
	note F#, 4
;Bar 16
	note D_, 2
	note F#, 2
	note E_, 4
	note D_, 2
	note C#, 2
	note D_, 8
;Bar 17
	note C#, 2
	note D_, 2
	note C#, 2
	octave 4
	note B_, 2
	note A_, 2
	rest 1
	note G#, 1
;Bar 18
	note A_, 1
	note G#, 1
	note F#, 1
	note G#, 1
	sound_loop 0, Music_PKMNCenterColo_Ch2_loop

; ============================================================================================================

Music_PKMNCenterColo_Ch3:
	note_type 12, 1, 4
	stereo_panning TRUE, TRUE
;Bar 1
	octave 4
	note E_, 12
;Bar 2
	note A_, 1
	note G#, 1
	note F#, 1
	note G#, 1
	stereo_panning FALSE, TRUE
Music_PKMNCenterColo_Ch3_loop:
	volume_envelope 1, 5
	octave 2
	note A_, 1
	rest 3
	note E_, 1
	rest 1
	note A_, 1
	note E_, 1
	rest 2
	octave 3
	note E_, 1
	rest 3
;Bar 3
	octave 2
	note A_, 1
	rest 1
	note B_, 1
	rest 5
	note B_, 1
	note E_, 1
	rest 2
	octave 3
	note D_, 1
	rest 3
;Bar 4
	octave 2
	note E_, 1
	note F#, 1
	note B_, 1
	rest 5
	note B_, 1
	note G#, 1
	rest 2
	octave 3
	note D_, 1
	rest 3
;Bar 5
	octave 2
	note G#, 1
	rest 1
	note A_, 1
	rest 5
	note A_, 1
	note E_, 1
	note A_, 1
	note E_, 1
	octave 3
	note C#, 1
	rest 3
;Bar 6
	note C#, 1
	rest 1
	octave 2
	note A_, 1
	rest 5
	note A_, 1
	note E_, 1
	rest 2
	octave 3
	note E_, 1
	rest 3
;Bar 7
	octave 2
	note A_, 1
	rest 1
	note B_, 1
	rest 5
	note B_, 1
	note E_, 1
	rest 2
	octave 3
	note D_, 1
	rest 3
;Bar 8
	octave 2
	note E_, 1
	note F#, 1
	note B_, 1
	rest 5
	note B_, 1
	note G#, 1
	rest 2
	octave 3
	note D_, 1
	rest 3
;Bar 9
	note D_, 1
	rest 1
	octave 2
	note A_, 1
	rest 5
	note A_, 1
	note A_, 1
	note A_, 1
	note E_, 1
	octave 3
	note E_, 1
	rest 3
;Bar 10
	note E_, 1
	octave 2
	note G#, 1
	note A_, 1
	rest 5
	note E_, 1
	note E_, 1
	octave 3
	note C#, 1
	rest 5
;Bar 11
	octave 2
	note A_, 1
	rest 1
	octave 3
	note D_, 1
	rest 5
	octave 2
	note A_, 1
	octave 3
	note D_, 1
	octave 2
	note E_, 1
	octave 3
	note E_, 1
	rest 1
	octave 2
	note E_, 1
;Bar 12
	note F#, 2
	note G_, 2
	note G#, 2
	rest 4
	note E_, 1
	note E_, 1
	note B_, 3
	rest 1
;Bar 13
	note G#, 3
	rest 1
	note A_, 1
	rest 5
	note A_, 1
	note A_, 1
	octave 3
	note C#, 1
	note E_, 2
	octave 2
	note E_, 1
;Bar 14
	note F#, 2
	note G#, 2
	note A_, 1
	rest 5
	note E_, 1
	note E_, 1
	octave 3
	note C#, 2
	rest 4
;Bar 15
	octave 2
	note A_, 1
	note A_, 1
	octave 3
	note D_, 1
	rest 5
	octave 2
	note B_, 1
	rest 1
	note G#, 1
	octave 3
	note D_, 1
	rest 1
	octave 2
	note E_, 1
;Bar 16
	octave 3
	note D_, 2
	octave 2
	note G#, 2
	note E_, 2
	rest 4
	note G#, 1
	octave 3
	note E_, 1
	octave 2
	note E_, 2
	rest 2
;Bar 17
	note G#, 2
	rest 2
	note A_, 2
	rest 4
	note A_, 1
	note E_, 1
	octave 3
	note C#, 1
	note E_, 1
	rest 1
	octave 2
	note E_, 1
;Bar 18
	note F#, 2
	note G#, 2
	sound_loop 0, Music_PKMNCenterColo_Ch3_loop

; ============================================================================================================

Music_PKMNCenterColo_Ch4:
	toggle_noise 3
	drum_speed 6
;Bar 1
	rest 16
	rest 16
;Bar 2
Music_PKMNCenterColo_Ch4_loop:
	drum_note 11, 4
	drum_note 9, 4
	drum_note 7, 4
	drum_note 11, 8
	drum_note 11, 4
;Bar 3
Music_PKMNCenterColo_Ch4_Bar3:
	drum_note 1, 4
	drum_note 12, 4
	drum_note 11, 4
	drum_note 9, 4
	drum_note 1, 4
	drum_note 11, 8
	drum_note 11, 4
	sound_loop 6, Music_PKMNCenterColo_Ch4_Bar3
;Bar 9
	drum_note 1, 4
	drum_note 12, 2
	drum_note 1, 2
	drum_note 12, 6
	drum_note 1, 2
	drum_note 11, 4
	drum_note 7, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 7, 2
	drum_note 11, 2
;Bar 10
	drum_note 12, 6
	drum_note 1, 2
	drum_note 11, 4
	drum_note 5, 4
	drum_note 1, 4
	drum_note 5, 2
	drum_note 11, 2
	drum_note 9, 2
	drum_note 11, 2
	drum_note 5, 4
;Bar 11
Music_PKMNCenterColo_Ch4_Bar11:
	drum_note 1, 4
	drum_note 5, 4
	drum_note 11, 4
	drum_note 5, 4
	drum_note 1, 4
	drum_note 5, 2
	drum_note 11, 2
	drum_note 9, 2
	drum_note 11, 2
	drum_note 5, 4
	sound_loop 7, Music_PKMNCenterColo_Ch4_Bar11
;Bar 18
	drum_note 1, 4
	drum_note 5, 4
	sound_loop 0, Music_PKMNCenterColo_Ch4_loop