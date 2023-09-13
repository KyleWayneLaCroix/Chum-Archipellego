;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_FortreeCity:
	channel_count 4
	channel 1, Music_FortreeCity_Ch1
	channel 2, Music_FortreeCity_Ch2
	channel 3, Music_FortreeCity_Ch3
	channel 4, Music_FortreeCity_Ch4

Music_FortreeCity_Ch1:
	volume 7, 7
	duty_cycle $1
	note_type 8, 10, 7
	tempo 149
	;stereopanning $f0
;Bar 1
	rest 16
	rest 16
	rest 8
;Bar 2
	octave 2
	volume_envelope 9, 7
	note C_, 2
	note D_, 4
	note E_, 2
Music_FortreeCity_Ch1_loop:
;Bar 3
	note F_, 4
	note F_, 1
	rest 5
	note F_, 1
	rest 5
	note F_, 1
	rest 5
	note F_, 1
	rest 1
;Bar 4
	note A#, 1
	rest 1
	note A#, 1
	rest 3
	note A#, 1
	rest 3
	note A#, 1
	rest 5
	note A#, 1
	rest 5
	note A#, 1
	rest 1
;Bar 5
	note A#, 4
	note A#, 1
	rest 5
	note A#, 1
	rest 5
	note A#, 1
	rest 1
	octave 3
	note C_, 4
	octave 2
	note A#, 2
;Bar 6
	note A_, 4
	note F_, 1
	rest 5
	note F_, 1
	rest 5
	note F_, 1
	rest 1
	note G_, 4
	note A_, 1
	rest 1
;Bar 7
	note A#, 2
	rest 2
	note A_, 2
	note A#, 2
	rest 2
	note G_, 6
	octave 3
	note D_, 2
	note C_, 4
	octave 2
	note A#, 2
;Bar 8
	octave 3
	note C_, 2
	rest 2
	note C_, 2
	octave 2
	note A_, 2
	rest 2
	octave 3
	note C_, 6
	octave 2
	note A#, 2
	note A_, 4
	note G_, 2
;Bar 9
	note F_, 2
	rest 2
	note G_, 2
	note A#, 2
	rest 2
	octave 3
	note D_, 4
	rest 2
	note D_, 2
	note E_, 2
	rest 2
	note D_, 2
;Bar 10
	note C_, 3
	rest 1
	note C_, 2
	rest 4
	note C_, 2
	note A#, 2
	note A_, 2
	note G_, 2
	note E_, 2
	note D_, 2
	note C_, 2
;Bar 11
	octave 2
	note F_, 4
	note F_, 1
	rest 5
	note F_, 1
	rest 5
	note F_, 1
	rest 5
	note F_, 1
	rest 1
;Bar 12
	note A#, 1
	rest 1
	note A#, 1
	rest 3
	note A#, 1
	rest 3
	note A#, 1
	rest 5
	note A#, 1
	rest 5
	note A#, 1
	rest 1
;Bar 13
	note A#, 4
	note A#, 1
	rest 5
	note A#, 1
	rest 5
	note A#, 2
	octave 3
	note C_, 4
	octave 2
	note A#, 2
;Bar 14
	note A_, 4
	note F_, 1
	rest 5
	note F_, 1
	rest 5
	note F_, 1
	rest 1
	note G_, 4
	note A_, 1
	rest 1
;Bar 15
	note A#, 2
	rest 2
	note A_, 2
	note A#, 2
	rest 2
	octave 3
	note D_, 4
	rest 2
	octave 2
	note G_, 2
	note A_, 4
	note A#, 2
;Bar 16
	note A_, 2
	rest 2
	note A#, 2
	octave 3
	note C_, 2
	rest 2
	note E_, 2
	note D_, 4
	rest 8
;Bar 17
	octave 4
	volume_envelope 7, 7
	note F_, 1
	rest 1
	note C_, 1
	rest 1
	octave 3
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	note C_, 1
	rest 1
	note G_, 1
	rest 1
	octave 4
	note C_, 6
	rest 6
;Bar 18
	note E_, 1
	rest 1
	note C_, 1
	rest 1
	octave 3
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	note C_, 1
	rest 1
	note G_, 1
	rest 1
	octave 4
	note C_, 4
	octave 2
	volume_envelope 9, 7
	note C_, 1
	rest 1
	note D_, 1
	rest 3
	note E_, 2
	sound_loop 0, Music_FortreeCity_Ch1_loop

; ============================================================================================================

Music_FortreeCity_Ch2:
	duty_cycle $2
	note_type 8, 10, 7
	;stereopanning $f
;Bar 1
	octave 1
	note F_, 1
	rest 1
	note F_, 1
	rest 3
	octave 2
	note C_, 1
	rest 3
	octave 1
	note F_, 1
	rest 1
	note F_, 4
	rest 6
	note F_, 1
	rest 1
;Bar 2
	note F_, 9
	rest 1
	note F_, 1
	rest 1
	note C_, 2
	rest 2
	note C_, 2
	note D_, 4
	note E_, 2
Music_FortreeCity_Ch2_loop:
;Bar 3
	note F_, 9
	rest 1
	note F_, 2
	rest 10
	note F_, 1
	rest 1
;Bar 4
	note A#, 1
	rest 1
	note A#, 1
	rest 3
	octave 2
	note D_, 1
	rest 3
	octave 1
	note A#, 1
	rest 1
	note A#, 4
	rest 6
	note F_, 1
	rest 1
;Bar 5
	note A#, 9
	rest 1
	note A#, 2
	rest 10
	note A#, 1
	rest 1
;Bar 6
	note F_, 1
	rest 1
	note F_, 1
	rest 3
	octave 2
	note F_, 2
	rest 2
	octave 1
	note F_, 1
	rest 1
	note F_, 4
	rest 6
	note A_, 1
	rest 1
;Bar 7
	note G_, 2
	rest 4
	note G_, 2
	note D_, 2
	note F_, 2
	note G_, 2
	rest 4
	note G_, 1
	rest 3
	note G_, 1
	rest 1
;Bar 8
	note A_, 2
	rest 4
	note A_, 2
	note E_, 2
	note G_, 2
	note A_, 2
	rest 4
	note A_, 1
	rest 3
	note A_, 1
	rest 1
;Bar 9
	note A#, 2
	rest 4
	note A#, 2
	note F_, 2
	note G_, 2
	note A#, 2
	rest 2
	octave 2
	note D_, 2
	note C_, 4
	octave 1
	note A#, 2
;Bar 10
	octave 2
	note C_, 3
	rest 1
	note C_, 2
	rest 4
	note C_, 2
	octave 1
	note C_, 2
	note D_, 2
	note E_, 2
	note G_, 2
	note A_, 2
	note A#, 2
;Bar 11
	note F_, 9
	rest 1
	note F_, 2
	rest 10
	note F_, 2
;Bar 12
	note A#, 1
	rest 1
	note A#, 1
	rest 3
	octave 2
	note D_, 1
	rest 3
	octave 1
	note A#, 1
	rest 1
	note A#, 2
	rest 2
	note A#, 2
	note A_, 4
	note F_, 2
;Bar 13
	note A#, 9
	rest 1
	note A#, 2
	rest 4
	note A#, 1
	rest 1
	note A_, 4
	note G_, 1
	rest 1
;Bar 14
	note F_, 1
	rest 1
	note F_, 1
	rest 3
	octave 2
	note F_, 2
	rest 2
	octave 1
	note F_, 1
	rest 1
	note F_, 2
	rest 2
	note F_, 1
	rest 1
	note G_, 4
	note A_, 2
;Bar 15
	note G_, 2
	rest 2
	note G_, 2
	octave 2
	note G_, 4
	octave 1
	note G_, 4
	rest 2
	note G_, 1
	rest 1
	octave 2
	note D_, 4
	octave 1
	note A#, 2
;Bar 16
	octave 2
	note D_, 6
	note E_, 6
	note F_, 6
	note F_, 1
	rest 3
	octave 1
	note F_, 1
	rest 1
;Bar 17
	octave 2
	note C_, 9
	rest 1
	note C_, 2
	rest 4
	note C_, 2
	rest 4
	note C_, 1
	rest 1
;Bar 18
	note C_, 9
	rest 1
	note C_, 2
	rest 4
	octave 1
	note C_, 2
	note D_, 4
	note E_, 2
	sound_loop 0, Music_FortreeCity_Ch2_loop

; ============================================================================================================

Music_FortreeCity_Ch3:
	note_type 8, 1, 2
;Bar 1
	octave 5
	note F_, 2
	rest 2
	note E_, 2
	note C_, 2
	rest 2
	octave 4
	note A#, 2
	note A_, 2
	rest 2
	note G_, 2
	note A_, 2
	rest 2
	note A#, 2
;Bar 2
	octave 5
	note C_, 16
	rest 8
;Bar 3
Music_FortreeCity_Ch3_loop:
	octave 4
	note F_, 2
	rest 2
	note A_, 2
	note A#, 2
	rest 2
	octave 5
	note C_, 2
	rest 4
	note D_, 2
	note E_, 2
	rest 2
	note F_, 2
;Bar 4
	note G_, 8
	rest 2
	note F_, 12
	rest 2
;Bar 5
	note G_, 8
	rest 2
	note F_, 6
	note C#, 2
	note D#, 2
	rest 2
	note C#, 2
;Bar 6
	note C_, 16
	note C_, 4
	rest 4
;Bar 7
	octave 4
	note A#, 2
	rest 2
	note A_, 2
	note A#, 2
	rest 2
	note G_, 2
	rest 4
	note G_, 2
	note A_, 2
	rest 2
	note A#, 2
;Bar 8
	octave 5
	note C_, 2
	rest 2
	note C_, 2
	octave 4
	note A_, 2
	rest 2
	octave 5
	note C_, 12
	rest 2
;Bar 9
	note D_, 2
	rest 2
	note C_, 2
	note D_, 2
	rest 2
	octave 4
	note A#, 2
	rest 4
	octave 5
	note F_, 2
	note G_, 2
	rest 2
	note F_, 2
;Bar 10
	note E_, 16
	note E_, 4
	rest 4
;Bar 11
	octave 4
	note F_, 2
	rest 2
	note A_, 2
	note A#, 2
	rest 2
	octave 5
	note C_, 2
	rest 4
	note D_, 2
	note E_, 2
	rest 2
	note F_, 2
;Bar 12
	note G_, 8
	rest 2
	note F_, 12
	rest 2
;Bar 13
	note G_, 8
	rest 2
	note F_, 4
	rest 2
	note E_, 2
	note F_, 2
	rest 2
	note G_, 2
;Bar 14
	note A_, 16
	note A_, 4
	rest 4
;Bar 15
	note A#, 2
	rest 2
	note A_, 2
	note A#, 2
	rest 2
	note D_, 2
	rest 4
	note G_, 2
	note A_, 2
	rest 2
	note A#, 2
;Bar 16
	note A_, 2
	rest 4
	note G_, 2
	rest 4
	note F_, 2
	rest 4
	octave 4
	note A_, 2
	rest 2
	note A#, 2
;Bar 17
	octave 5
	note C_, 16
	rest 2
	note C_, 2
	rest 2
	note D_, 2
;Bar 18
	note E_, 16
	note E_, 8
	sound_loop 0, Music_FortreeCity_Ch3_loop

; ============================================================================================================

Music_FortreeCity_Ch4:
	toggle_noise 3
	drum_speed 8
;Bar 1
	drum_note 11, 2
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 4
	drum_note 11, 2
	drum_note 1, 2
	drum_note 3, 2
	drum_note 3, 2
;Bar 2
	drum_note 11, 2
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 4
	drum_note 11, 2
	drum_note 1, 2
	drum_note 3, 2
	drum_note 1, 2

Music_FortreeCity_Ch4_loop:
;Bar 3
	sound_call Music_FortreeCity_Ch4_Bar3
;Bar 4
	sound_call Music_FortreeCity_Ch4_Bar4
;Bar 5
	sound_call Music_FortreeCity_Ch4_Bar3
;Bar 6
	sound_call Music_FortreeCity_Ch4_Bar4
;Bar 7
Music_FortreeCity_Ch4_Bar7:
	drum_note 11, 2
	rest 2
	drum_note 3, 2
	drum_note 3, 2
	rest 2
	drum_note 11, 2
	drum_note 11, 2
	rest 2
	drum_note 3, 2
	drum_note 1, 2
	drum_note 3, 2
	drum_note 3, 2
	sound_loop 4, Music_FortreeCity_Ch4_Bar7
;Bar 11
	sound_call Music_FortreeCity_Ch4_Bar11
;Bar 12
	sound_call Music_FortreeCity_Ch4_Bar12
;Bar 13
	sound_call Music_FortreeCity_Ch4_Bar11
;Bar 14
	sound_call Music_FortreeCity_Ch4_Bar12
;Bar 15
	drum_note 1, 2
	rest 2
	drum_note 1, 2
	drum_note 11, 4
	drum_note 1, 2
	rest 4
	drum_note 11, 2
	drum_note 1, 4
	drum_note 11, 2
;Bar 16
	drum_note 11, 4
	rest 2
	drum_note 1, 4
	drum_note 11, 2
	drum_note 11, 4
	rest 2
	drum_note 1, 4
	rest 2
;Bar 17
	sound_call Music_FortreeCity_Ch4_Bar11
;Bar 18
	sound_call Music_FortreeCity_Ch4_Bar12
	sound_loop 0, Music_FortreeCity_Ch4_loop

Music_FortreeCity_Ch4_Bar3:
	drum_note 11, 2;
	drum_note 3, 2
	rest 2
	drum_note 3, 2
	rest 2
	drum_note 3, 2
	drum_note 3, 2
	rest 2
	drum_note 11, 2
	drum_note 1, 2
	drum_note 3, 2
	drum_note 3, 2
	sound_ret

Music_FortreeCity_Ch4_Bar4:
	drum_note 11, 2;
	drum_note 3, 2
	rest 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	rest 2
	drum_note 11, 2
	drum_note 1, 2
	drum_note 3, 2
	drum_note 3, 2
	sound_ret

Music_FortreeCity_Ch4_Bar11:
	drum_note 11, 4;
	drum_note 3, 2
	drum_note 1, 2
	drum_note 3, 2
	drum_note 11, 2
	drum_note 11, 4
	drum_note 3, 2
	drum_note 1, 4
	drum_note 3, 1
	drum_note 3, 1
	sound_ret

Music_FortreeCity_Ch4_Bar12:
	drum_note 11, 2;
	rest 2
	drum_note 3, 2
	drum_note 1, 2
	drum_note 3, 2
	drum_note 11, 2
	drum_note 11, 4
	drum_note 3, 2
	drum_note 1, 4
	drum_note 11, 2
	sound_ret

; ============================================================================================================

