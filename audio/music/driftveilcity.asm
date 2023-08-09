;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_DriftveilCity:
	channel_count 4
	channel 1, Music_DriftveilCity_Ch1
	channel 2, Music_DriftveilCity_Ch2
	channel 3, Music_DriftveilCity_Ch3
	channel 4, Music_DriftveilCity_Ch4

Music_DriftveilCity_Ch1:
	volume 7, 7
	duty_cycle $0
	note_type 6, 10, 7
	tempo 141
;Bar 1
	octave 3
	sound_call Music_DriftveilCity_Ch1_Bar1
;Bar 2
Music_DriftveilCity_Ch1_loop:
	volume_envelope 11, 7
	note D#, 1
	volume_envelope 7, 7
	note D#, 1
	rest 2
	volume_envelope 11, 7
	note D#, 1
	volume_envelope 7, 7
	note D#, 1
	rest 2
	volume_envelope 11, 7
	note D#, 2
	volume_envelope 7, 7
	note D#, 3
	rest 16
	rest 11
;Bar 3
	octave 3
	volume_envelope 10, 7
	note G#, 1
	volume_envelope 6, 7
	note G#, 2
	rest 13
	volume_envelope 10, 7
	note G#, 1
	volume_envelope 6, 7
	note G#, 2
	rest 1
	volume_envelope 10, 7
	note G#, 1
	volume_envelope 6, 7
	note G#, 2
	rest 9
;Bar 4
	volume_envelope 10, 7
	note F#, 1
	volume_envelope 6, 7
	note F#, 2
	rest 5
	volume_envelope 10, 7
	note G#, 1
	volume_envelope 6, 7
	note G#, 2
	rest 1
	volume_envelope 10, 7
	note F#, 1
	volume_envelope 6, 7
	note F#, 1
	volume_envelope 10, 7
	note F_, 1
	volume_envelope 6, 7
	note F_, 1
	volume_envelope 10, 7
	note F#, 1
	volume_envelope 6, 7
	note F#, 1
	rest 2
	volume_envelope 10, 7
	note C#, 1
	volume_envelope 6, 7
	note C#, 2
	rest 9
;Bar 5
	volume_envelope 10, 7
	note G#, 1
	volume_envelope 6, 7
	note G#, 2
	rest 13
	volume_envelope 10, 7
	note G#, 1
	volume_envelope 6, 7
	note G#, 2
	rest 11
;Bar 6
	volume_envelope 10, 7
	note F#, 1
	volume_envelope 6, 7
	note F#, 2
	rest 3
	volume_envelope 10, 7
	note F#, 2
	volume_envelope 6, 7
	note F#, 2
	volume_envelope 10, 7
	note F#, 1
	volume_envelope 6, 7
	note F#, 2
	rest 1
	volume_envelope 10, 7
	note F#, 1
	volume_envelope 6, 7
	note F#, 2
	rest 1
	volume_envelope 10, 7
	note F#, 1
	volume_envelope 6, 7
	note F#, 2
	rest 13
;Bar 7
	volume_envelope 10, 7
	note B_, 1
	volume_envelope 6, 7
	note B_, 2
	rest 9
	volume_envelope 10, 7
	note F#, 1
	volume_envelope 6, 7
	note F#, 2
	rest 1
	volume_envelope 10, 7
	note F#, 1
	volume_envelope 6, 7
	note F#, 2
	rest 11
;Bar 8
	volume_envelope 10, 7
	note B_, 1
	volume_envelope 6, 7
	note B_, 1
	volume_envelope 10, 7
	note B_, 1
	volume_envelope 6, 7
	note B_, 2
	rest 9
	volume_envelope 10, 7
	note F#, 1
	volume_envelope 6, 7
	note F#, 2
	rest 1
	volume_envelope 10, 7
	note F#, 1
	volume_envelope 6, 7
	note F#, 2
	rest 5
;Bar 9
	octave 4
	volume_envelope 10, 7
	note D_, 1
	volume_envelope 6, 7
	note D_, 2
	rest 5
	volume_envelope 10, 7
	note D_, 1
	volume_envelope 6, 7
	note D_, 2
	rest 1
	octave 3
	volume_envelope 10, 7
	note A#, 2
	note A#, 2
	note G#, 4
	note F#, 4
	note F_, 4
	octave 2
	note A#, 4
;Bar 10
	octave 2
	sound_call Music_DriftveilCity_Ch1_Bar1
;Bar 11
	volume_envelope 11, 7
	note D#, 1
	volume_envelope 7, 7
	note D#, 2
	rest 1
	volume_envelope 11, 7
	note D#, 1
	volume_envelope 7, 7
	note D#, 2
	rest 1
	volume_envelope 11, 7
	note D#, 1
	volume_envelope 7, 7
	note D#, 2
	rest 16
	rest 5
;Bar 12
	octave 3
	volume_envelope 11, 4
	note D#, 6
	note D#, 2
	rest 16
	rest 8
;Bar 13
	note F#, 6
	note F#, 2
	rest 16
	rest 8
;Bar 14
	note F#, 6
	note F#, 2
	rest 8
	note F#, 6
	note F#, 2
	rest 8
;Bar 15
	note F#, 6
	note F#, 2
	octave 2
	volume_envelope 10, 7
	note A#, 4
	octave 3
	note C#, 2
	octave 2
	note A#, 2
	octave 3
	note C#, 4
	note D#, 8
	octave 2
	note A#, 2
	note A#, 2
;Bar 16
	octave 3
	note C#, 4
	note D#, 8
	note C#, 2
	rest 6
	note D#, 2
	octave 2
	note A#, 2
	octave 3
	note C#, 2
	note C#, 6
;Bar 17
	octave 2
	note A#, 2
	note A#, 2
	octave 3
	note C#, 2
	rest 6
	note C#, 2
	note C#, 2
	octave 2
	note A#, 4
	octave 3
	note C#, 8
	note D#, 2
	note C#, 2
;Bar 18
	octave 2
	note B_, 6
	note A#, 2
	note B_, 4
	octave 3
	note C#, 4
	octave 2
	note A#, 8
	octave 3
	note D#, 12
;Bar 19
	note F_, 4
	note C_, 2
	note F_, 6
	note F_, 2
	note F_, 2
	note D#, 4
	note F_, 2
	note A_, 4
	note F_, 2
;Bar 20
	volume_envelope 11, 7
	note A#, 2
	volume_envelope 7, 7
	note A#, 2
	volume_envelope 11, 7
	note A#, 2
	volume_envelope 7, 7
	note A#, 2
	volume_envelope 11, 7
	note A#, 2
	volume_envelope 7, 7
	note A#, 2
	rest 16
	rest 4
;Bar 21
	sound_call Music_DriftveilCity_Ch1_Bar1
;Bar 22
	volume_envelope 11, 4
	note D#, 2
	note D#, 2
	rest 2
	note D_, 2
	note D_, 2
	rest 2
	note C#, 2
	note C#, 2
	rest 2
	note C_, 2
	note C_, 2
	rest 2
	octave 3
	note B_, 6
	rest 2
;Bar 23
	octave 2
	sound_call Music_DriftveilCity_Ch1_Bar1
	sound_loop 0, Music_DriftveilCity_Ch1_loop

Music_DriftveilCity_Ch1_Bar1:
	volume_envelope 10, 7
	note D#, 4
	note A#, 4
	note A_, 4
	note_type 8, 10, 7
	note G#, 1
	note A_, 1
	note G#, 1
	note_type 6, 10, 7
	note F#, 4
	note C#, 4
	note D#, 2
	note D#, 2
	octave 4
	note C#, 4
	sound_ret

; ============================================================================================================

Music_DriftveilCity_Ch2:
	duty_cycle $1
	note_type 12, 10, 8
	vibrato 16, 2, 4;
;Bar 1
	rest 14
	octave 3
	note G#, 2
;Bar 2
Music_DriftveilCity_Ch2_loop:
	note_type 6, 11, 7
	note A#, 1
	volume_envelope 7, 7
	note A#, 1
	rest 2
	volume_envelope 11, 7
	note A#, 1
	volume_envelope 7, 7
	note A#, 1
	rest 2
	note_type 12, 11, 7
	note A#, 1
	volume_envelope 7, 7
	note A#, 1
	volume_envelope 10, 8
	octave 4
	note C#, 2
	note D#, 1
	note D#, 1
	octave 3
	note A#, 2
	octave 4
	note C#, 2
	octave 3
	note A#, 2
;Bar 3
	octave 4
	note D#, 6
	note F#, 2
	note F_, 2
	note F#, 2
	octave 3
	note A#, 2
	octave 4
	note C#, 2
;Bar 4
	note D#, 3
	rest 1
	note C#, 2
	note D#, 2
	octave 3
	note A#, 3
	note G#, 1
	note A#, 2
	rest 2
;Bar 5
	octave 4
	note D#, 6
	note F#, 2
	note F_, 2
	note F#, 2
	note G#, 2
	note A#, 2
;Bar 6
	note D#, 3
	rest 1
	note C#, 2
	note D#, 2
	note F_, 2
	note F#, 1
	note F_, 1
	note D#, 3
	rest 1
;Bar 7
	note G#, 3
	rest 1
	note G#, 2
	note A#, 2
	note F#, 2
	rest 2
	note D#, 2
	note F#, 2
;Bar 8
	note G#, 3
	note D#, 1
	note G#, 2
	note A#, 2
	note F#, 2
	rest 2
	note D#, 2
	note F#, 2
;Bar 9
	note F_, 2
	rest 2
	note F_, 2
	rest 4
	octave 3
	note A#, 1
	note A#, 1
	octave 4
	note C#, 2
	octave 3
	note A#, 2
;Bar 10
	octave 4
	note C#, 2
	note D#, 12
	octave 3
	duty_cycle $0
	note G#, 2
;Bar 11
	note_type 6, 11, 7
	note A#, 1
	volume_envelope 7, 7
	note A#, 2
	rest 1
	volume_envelope 11, 7
	note A#, 1
	volume_envelope 7, 7
	note A#, 2
	rest 1
	volume_envelope 11, 7
	note A#, 1
	volume_envelope 7, 7
	note A#, 2
	rest 1
	duty_cycle $1
	octave 4
	note_type 12, 10, 8
	rest 4
	note D#, 2
	note C#, 2
	note F#, 2
;Bar 12
	note D#, 2
	rest 2
	octave 3
	note A#, 2
	octave 4
	note C#, 2
	rest 2
	note D#, 2
	octave 3
	note A#, 1
	note A#, 1
	octave 4
	note C#, 2
;Bar 13
	note F#, 4
	octave 3
	note A#, 2
	octave 4
	note C#, 2
	rest 2
	note D#, 1
	note D#, 1
	octave 3
	note A#, 2
	octave 4
	note C#, 2
;Bar 14
	note D#, 4
	octave 3
	note A#, 2
	octave 4
	note C#, 2
	rest 2
	note F#, 2
	octave 3
	note A#, 2
	octave 4
	note C#, 1
	octave 3
	note A#, 1
;Bar 15
	octave 4
	note C#, 2
	note D#, 9
	rest 1
	note C#, 2
	octave 3
	note A#, 2
;Bar 16
	octave 4
	note A#, 4
	note F#, 2
	note D#, 2
	rest 2
	note F#, 2
	note F#, 2
	rest 2
;Bar 17
	note F#, 2
	note D#, 2
	rest 2
	note F#, 1
	note F#, 1
	note F#, 2
	note C#, 2
	note D#, 2
	note C#, 2
;Bar 18
	note G#, 3
	note F#, 1
	note G#, 2
	note A#, 2
	note F#, 2
	note F_, 2
	note D#, 2
	note F#, 2
;Bar 19
	note F_, 16
;Bar 20
	octave 3
	volume_envelope 11, 7
	note D_, 1
	volume_envelope 7, 7
	note D_, 1
	volume_envelope 11, 7
	note D_, 1
	volume_envelope 7, 7
	note D_, 1
	volume_envelope 11, 7
	note D_, 1
	volume_envelope 7, 7
	note D_, 1
	rest 4
	volume_envelope 10, 8
	note A#, 2
	octave 4
	note C#, 2
	octave 3
	note A#, 2
;Bar 21
	octave 4
	note C#, 2
	note D#, 12
	rest 2
;Bar 22
	note D#, 2
	note A#, 2
	note A_, 2
	note G#, 4
	note G_, 2
	note F#, 3
	octave 3
	note A#, 1
;Bar 23
	octave 4
	note C#, 2
	note D#, 12
	octave 3
	note G#, 2
	sound_loop 0, Music_DriftveilCity_Ch2_loop

; ============================================================================================================

Music_DriftveilCity_Ch3:
	note_type 12, 1, 6
;Bar 1
	volume_envelope 1, 6
	rest 16
;Bar 2
Music_DriftveilCity_Ch3_loop:
	octave 2
	note D#, 1
	volume_envelope 2, 6
	note D#, 1
	volume_envelope 1, 6
	note D#, 1
	volume_envelope 2, 6
	note D#, 1
	volume_envelope 1, 6
	note D#, 1
	volume_envelope 2, 6
	note D#, 1
	rest 10
;Bar 3
	octave 1
	volume_envelope 1, 6
	note G#, 2
	volume_envelope 2, 6
	note G#, 1
	rest 3
	volume_envelope 1, 6
	note G#, 2
	note A#, 4
	note A#, 2
	octave 2
	note C#, 2
;Bar 4
	note D#, 4
	volume_envelope 2, 6
	note D#, 1
	rest 1
	volume_envelope 1, 6
	note D#, 2
	octave 1
	note A#, 2
	note A#, 2
	octave 2
	note C#, 2
	volume_envelope 2, 6
	note C#, 1
	rest 1
;Bar 5
	octave 1
	volume_envelope 1, 6
	note G#, 2
	volume_envelope 2, 6
	note G#, 1
	rest 3
	volume_envelope 1, 6
	note G#, 2
	note A#, 4
	note A#, 2
	octave 2
	note C#, 2
;Bar 6
	note D#, 2
	volume_envelope 2, 6
	note D#, 1
	rest 3
	volume_envelope 1, 6
	note D#, 2
	octave 1
	note A#, 2
	volume_envelope 2, 6
	note A#, 1
	rest 3
	octave 2
	volume_envelope 1, 6
	note D#, 2
;Bar 7
	octave 1
	note G#, 2
	volume_envelope 2, 6
	note G#, 1
	rest 3
	volume_envelope 1, 6
	note G#, 2
	octave 2
	note D#, 2
	volume_envelope 2, 6
	note D#, 1
	rest 3
	volume_envelope 1, 6
	note D#, 2
;Bar 8
	octave 1
	note G#, 2
	volume_envelope 2, 6
	note G#, 1
	rest 3
	volume_envelope 1, 6
	note G#, 2
	octave 2
	note D#, 2
	volume_envelope 2, 6
	note D#, 1
	rest 3
	volume_envelope 1, 6
	note D#, 2
;Bar 9
	octave 1
	note A#, 2
	volume_envelope 2, 6
	note A#, 1
	rest 1
	volume_envelope 1, 6
	note A#, 2
	volume_envelope 2, 6
	note A#, 1
	rest 9
;Bar 10
	octave 2
	volume_envelope 1, 6
	note D#, 4
	volume_envelope 2, 6
	note D#, 1
	rest 1
	volume_envelope 1, 6
	note D#, 2
	octave 1
	note A#, 2
	note A#, 2
	octave 2
	note C#, 2
	octave 1
	note A#, 2
;Bar 11
	octave 2
	note D#, 1
	volume_envelope 2, 6
	note D#, 1
	volume_envelope 1, 6
	note D#, 1
	volume_envelope 2, 6
	note D#, 1
	volume_envelope 1, 6
	note D#, 1
	volume_envelope 2, 6
	note D#, 1
	rest 10
;Bar 12
	volume_envelope 1, 6
	note D#, 1
	volume_envelope 2, 6
	note D#, 1
	volume_envelope 1, 6
	note D#, 1
	volume_envelope 2, 6
	note D#, 1
	rest 12
;Bar 13
	volume_envelope 1, 6
	note D#, 1
	volume_envelope 2, 6
	note D#, 1
	volume_envelope 1, 6
	note D#, 1
	volume_envelope 2, 6
	note D#, 1
	rest 12
;Bar 14
	octave 1
	volume_envelope 1, 6
	note G#, 1
	volume_envelope 2, 6
	note G#, 1
	volume_envelope 1, 6
	note G#, 1
	volume_envelope 2, 6
	note G#, 1
	rest 4
	volume_envelope 1, 6
	note A#, 1
	volume_envelope 2, 6
	note A#, 1
	volume_envelope 1, 6
	note A#, 1
	volume_envelope 2, 6
	note A#, 1
	rest 4
;Bar 15
	octave 2
	volume_envelope 1, 6
	note D#, 1
	volume_envelope 2, 6
	note D#, 1
	volume_envelope 1, 6
	note D#, 1
	volume_envelope 2, 6
	note D#, 1
	rest 12
;Bar 16
	volume_envelope 1, 6
	note D#, 1
	volume_envelope 2, 6
	note D#, 1
	volume_envelope 1, 6
	note D#, 1
	volume_envelope 2, 6
	note D#, 1
	rest 12
;Bar 17
	volume_envelope 1, 6
	note C#, 1
	volume_envelope 2, 6
	note C#, 1
	volume_envelope 1, 6
	note C#, 1
	volume_envelope 2, 6
	note C#, 1
	rest 12
;Bar 18
	octave 1
	volume_envelope 1, 6
	note B_, 2
	octave 2
	note B_, 2
	volume_envelope 2, 6
	note B_, 1
	rest 1
	octave 1
	volume_envelope 1, 6
	note B_, 2
	note A#, 2
	octave 2
	note A#, 2
	volume_envelope 2, 6
	note A#, 1
	rest 1
	octave 1
	volume_envelope 1, 6
	note A#, 2
;Bar 19
	note A_, 2
	note A_, 1
	volume_envelope 2, 6
	note A_, 1
	octave 2
	volume_envelope 1, 6
	note C_, 2
	note C_, 1
	volume_envelope 2, 6
	note C_, 1
	volume_envelope 1, 6
	note F_, 1
	note F_, 1
	note C_, 2
	note F_, 1
	note C_, 1
	note A_, 2
;Bar 20
	note A#, 1
	volume_envelope 2, 6
	note A#, 1
	volume_envelope 1, 6
	note A#, 1
	volume_envelope 2, 6
	note A#, 1
	octave 1
	volume_envelope 1, 6
	note A#, 2
	volume_envelope 2, 6
	note A#, 1
	rest 7
	volume_envelope 1, 6
	note A#, 2
;Bar 21
	octave 2
	note D#, 2
	volume_envelope 2, 6
	note D#, 1
	volume_envelope 1, 6
	note D#, 1
	volume_envelope 2, 6
	note D#, 1
	rest 11
;Bar 22
	volume_envelope 1, 6
	note D#, 10
	octave 1
	note C#, 1
	note C#, 1
	note D#, 1
	note G#, 1
	note A#, 1
	note A#, 1
;Bar 23
	octave 2
	note D#, 2
	volume_envelope 2, 6
	note D#, 1
	volume_envelope 1, 6
	note D#, 1
	volume_envelope 2, 6
	note D#, 1
	rest 9
	volume_envelope 1, 6
	note A#, 2
	sound_loop 0, Music_DriftveilCity_Ch3_loop

; ============================================================================================================

Music_DriftveilCity_Ch4:
	toggle_noise 3
	drum_speed 6
;Bar 1
	rest 16
	rest 16
;Bar 2
Music_DriftveilCity_Ch4_loop:
	drum_note 11, 4
	drum_note 11, 4
	noisesampleset 1
	drum_note 7, 12
	noisesampleset 3
	drum_note 11, 4
	noisesampleset 1
	drum_note 7, 4
	noisesampleset 3
	drum_note 11, 4
;Bar 3
	sound_call Music_DriftveilCity_Ch4_Bar3
;Bar 4
	sound_call Music_DriftveilCity_Ch4_Bar4
;Bar 5
	sound_call Music_DriftveilCity_Ch4_Bar3
;Bar 6
	sound_call Music_DriftveilCity_Ch4_Bar4
;Bar 7
	sound_call Music_DriftveilCity_Ch4_Bar3
;Bar 8
	sound_call Music_DriftveilCity_Ch4_Bar4
;Bar 9
	drum_note 1, 4
	drum_note 11, 4
	drum_note 1, 4
	drum_note 11, 8
	drum_note 11, 4
	drum_note 1, 8
;Bar 10
	sound_call Music_DriftveilCity_Ch4_Bar4
;Bar 11
	drum_note 11, 4
	drum_note 11, 4
	drum_note 11, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 3, 2
	drum_note 1, 2
	drum_note 11, 4
	noisesampleset 1
	drum_note 7, 4
	noisesampleset 3
	drum_note 11, 4
;Bar 12
	sound_call Music_DriftveilCity_Ch4_Bar12
;Bar 13
	drum_note 11, 4
	drum_note 11, 4
	drum_note 1, 4
	drum_note 11, 8
	drum_note 11, 4
	drum_note 1, 2
	drum_note 11, 2
	drum_note 1, 4
;Bar 14
	sound_call Music_DriftveilCity_Ch4_Bar12
;Bar 15
	drum_note 11, 4
	drum_note 11, 4
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 3, 2
	drum_note 1, 2
	drum_note 11, 4
	drum_note 1, 4
	drum_note 11, 4
;Bar 16
	sound_call Music_DriftveilCity_Ch4_Bar12
;Bar 17
	drum_note 11, 4
	drum_note 11, 4
	drum_note 1, 4
	drum_note 11, 8
	noisesampleset 1
	drum_note 7, 4
	noisesampleset 3
	drum_note 1, 2
	drum_note 11, 2
	drum_note 1, 4
;Bar 18
	sound_call Music_DriftveilCity_Ch4_Bar12
;Bar 19
	drum_note 11, 4
	drum_note 11, 4
	drum_note 1, 4
	drum_note 11, 8
	drum_note 11, 4
	drum_note 1, 2
	drum_note 11, 2
	drum_note 1, 4
;Bar 20
	drum_note 1, 4
	drum_note 1, 4
	noisesampleset 1
	drum_note 7, 4
	noisesampleset 3
	drum_note 1, 2
	drum_note 1, 2
	drum_note 3, 2
	drum_note 1, 2
	drum_note 11, 4
	noisesampleset 1
	drum_note 7, 4
	noisesampleset 3
	drum_note 11, 4
;Bar 21
	drum_note 7, 8
	drum_note 1, 4
	drum_note 11, 4
	drum_note 11, 4
	drum_note 11, 4
	drum_note 1, 4
	drum_note 3, 2
	drum_note 1, 2
;Bar 22
	drum_note 11, 6
	drum_note 11, 2
	drum_note 1, 4
	drum_note 11, 4
	drum_note 11, 4
	drum_note 11, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 3, 4
;Bar 23
	noisesampleset 1
	drum_note 7, 4
	noisesampleset 3
	drum_note 11, 4
	drum_note 1, 2
	drum_note 11, 2
	drum_note 1, 4
	drum_note 11, 4
	drum_note 11, 4
	drum_note 1, 4
	drum_note 11, 4
	sound_loop 0, Music_DriftveilCity_Ch4_loop

Music_DriftveilCity_Ch4_Bar3:
	drum_note 11, 8;
	drum_note 1, 4
	drum_note 11, 4
	drum_note 11, 8
	drum_note 1, 8
	sound_ret

Music_DriftveilCity_Ch4_Bar4:
	drum_note 11, 8;
	drum_note 1, 4
	drum_note 11, 4
	drum_note 11, 4
	drum_note 11, 4
	drum_note 1, 8
	sound_ret

Music_DriftveilCity_Ch4_Bar12:
	noisesampleset 1
	drum_note 7, 4
	noisesampleset 3
	drum_note 11, 4
	drum_note 1, 4
	drum_note 11, 2
	drum_note 1, 6
	drum_note 11, 4
	drum_note 1, 4
	drum_note 11, 4
	sound_ret