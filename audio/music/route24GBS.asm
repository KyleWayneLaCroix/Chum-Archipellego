;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 4.0 (17-Jun-2020)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_Route24GBS:
	channel_count 4
	channel 1, Music_Route24GBS_Ch1
	channel 2, Music_Route24GBS_Ch2
	channel 3, Music_Route24GBS_Ch3
	channel 4, Music_Route24GBS_Ch4

Music_Route24GBS_Ch1:
	volume 7, 7
	duty_cycle $3
	note_type 12, 9, 7
	pitch_offset $0001
	stereo_panning FALSE, TRUE
	tempo 175
	vibrato 4, 2, 2
;Bar 1
	octave 2
	note G#, 4
Music_Route24GBS_Ch1_loop:
	duty_cycle $3
	sound_call Music_Route24GBS_Ch1_Bar1
;Bar 2
	note A_, 6
	volume_envelope 8, 7
	note A_, 1
	note G#, 1
	note F#, 4
;Bar 3
	volume_envelope 9, 7
	note G#, 4
	sound_call Music_Route24GBS_Ch1_Bar1
    sound_call Music_Route24GBS_Ch1_Part1
;Bar 9
	sound_call Music_Route24GBS_Ch1_Bar9
	note E_, 1
	note F#, 1
	note G#, 1
	rest 1
	note F#, 1
	note E_, 1
;Bar 11
	duty_cycle $0
	sound_call Music_Route24GBS_Ch1_Bar9
	note G#, 1
	note A_, 1
	note B_, 1
	rest 1
	note A_, 1
	note G#, 1
    duty_cycle $3
	volume_envelope 9, 7
    sound_call Music_Route24GBS_Ch1_Part2
	sound_loop 0, Music_Route24GBS_Ch1_loop

Music_Route24GBS_Ch1_Bar1:
	octave 2;
	rest 2
	note G#, 1
	note B_, 1
	note A_, 4
	note F#, 2
	octave 3
	note C#, 2
;Bar 2
	octave 2
	volume_envelope 9, 5
	note B_, 2
	rest 1
	volume_envelope 9, 7
	note G#, 1
	sound_ret

Music_Route24GBS_Ch1_Bar9:
	volume_envelope 9, 7
	note B_, 2
	note B_, 1
	octave 3
	note C#, 1
	note D_, 2
	note D_, 1
	note E_, 1
	note F#, 2
	note D_, 1
	rest 1
	note A_, 4
;Bar 12
	volume_envelope 9, 5
	note G#, 2
	rest 1
	volume_envelope 9, 7
	note F#, 1
	note E_, 6
	octave 2
	sound_ret

Music_Route24GBS_Ch1_Part1:
;Bar 4
	octave 3
	note E_, 6
	volume_envelope 8, 7
	octave 2
	note B_, 1
	octave 3
	note C#, 1
	note D_, 4
;Bar 5
	volume_envelope 7, 7
	note A_, 2
	note E_, 2
	octave 2
	note A_, 4
	octave 3
	note G#, 2
	note E_, 2
	octave 2
	note G#, 4
;Bar 6
	octave 3
	note F#, 2
	note C#, 2
	octave 2
	note F#, 4
	octave 3
	note E_, 2
	note C#, 2
	note D#, 2
	note C#, 2
;Bar 7
	volume_envelope 9, 7
	octave 2
	note F#, 2
	note F#, 1
	note G#, 1
	note A_, 6
	volume_envelope 8, 7
	note F#, 1
	rest 1
	volume_envelope 9, 7
	octave 3
	note D_, 4
;Bar 8
	volume_envelope 9, 5
	note E_, 2
	rest 1
	volume_envelope 9, 7
	octave 2
	note A_, 1
	note G#, 6
	volume_envelope 8, 7
	note E_, 1
	rest 1
	note A_, 2
	note G#, 2
    sound_ret

Music_Route24GBS_Ch1_Part2:
;Bar 13
	note B_, 2
	note B_, 1
	octave 3
	note C#, 1
	note D_, 2
	note D_, 1
	note E_, 1
	note F#, 2
	note F#, 1
	note G#, 1
	note A_, 2
	rest 2
;Bar 14
	octave 2
	note B_, 2
	note B_, 1
	octave 3
	note C#, 1
	note D#, 2
	note D#, 1
	note E_, 1
	note F#, 2
	note F#, 1
	note G#, 1
	note A_, 4
	note G#, 4
    sound_ret

; ============================================================================================================

Music_Route24GBS_Ch2:
	duty_cycle $1
	note_type 12, 12, 7
	stereo_panning TRUE, FALSE
	vibrato 4, 2, 2
;Bar 1
	octave 3
	note E_, 6
Music_Route24GBS_Ch2_loop:
	duty_cycle $1
	sound_call Music_Route24GBS_Ch2_Bar1_2
	note F#, 9
	rest 3
;Bar 3
	note E_, 6
	sound_call Music_Route24GBS_Ch2_Bar1_2
	note B_, 9
	rest 3
    duty_cycle $0
    sound_call Music_Route24GBS_Ch2_Part1
    duty_cycle $1
	volume_envelope 12, 7
	note F#, 2
	note E_, 2
;Bar 9
	sound_call Music_Route24GBS_Ch2_Bar9
;Bar 11
	sound_call Music_Route24GBS_Ch2_Bar9
    sound_call Music_Route24GBS_Ch2_Part2
	sound_loop 0, Music_Route24GBS_Ch2_loop

Music_Route24GBS_Ch2_Bar9:
	note D_, 2;
	note D_, 1
	note E_, 1
	note F#, 2
	note F#, 1
	note G#, 1
	note A_, 2
	rest 2
	octave 4
	note C#, 4
;Bar 10
	octave 3
	volume_envelope 12, 5
	note B_, 2
	rest 1
	volume_envelope 12, 7
	note A_, 1
	note G#, 9
	rest 3
	sound_ret

Music_Route24GBS_Ch2_Bar1_2:
	octave 2
	note B_, 1
	octave 3
	note E_, 1
	note F#, 6
	note A_, 2
	volume_envelope 12, 5
	note G#, 2
	rest 1
	volume_envelope 12, 7
	note E_, 1
	sound_ret

Music_Route24GBS_Ch2_Part1:
;Bar 5
	volume_envelope 11, 7
	octave 4
	note C#, 6
	volume_envelope 12, 7
	octave 3
	note B_, 1
	note A_, 1
	volume_envelope 11, 7
	note B_, 6
	volume_envelope 12, 7
	note A_, 1
	note G#, 1
;Bar 6
	volume_envelope 11, 7
	note A_, 6
	volume_envelope 12, 7
	note G#, 1
	note F#, 1
	volume_envelope 11, 7
	note G#, 4
	duty_cycle $2
	volume_envelope 10, 7
	note F#, 2
	note E_, 2
;Bar 7
	volume_envelope 11, 7
	note D_, 2
	note D_, 1
	note E_, 1
	note F#, 8
	note A_, 4
;Bar 8
	volume_envelope 11, 5
	note G#, 2
	rest 1
	volume_envelope 11, 7
	note F#, 1
	note E_, 8
    sound_ret

Music_Route24GBS_Ch2_Part2:
;Bar 13
	duty_cycle $2
	note D_, 2
	note D_, 1
	note E_, 1
	note F#, 2
	note F#, 1
	note G#, 1
	note A_, 2
	note A_, 1
	note B_, 1
	octave 4
	note C#, 2
	rest 2
;Bar 14
	octave 3
	note D#, 2
	note D#, 1
	note E_, 1
	note F#, 2
	note F#, 1
	note G#, 1
	note A_, 2
	note B_, 1
	octave 4
	note C#, 1
	note D#, 2
	note_type 6, 9, 7
	octave 3
	note B_, 1
	octave 4
	note C_, 1
	note C#, 1
;Bar 15
	note D#, 1
	note_type 12, 12, 7
	note E_, 6
    sound_ret

; ============================================================================================================

Music_Route24GBS_Ch3:
	note_type 6, 1, 3
Music_Route24GBS_Ch3_loop:
;Bar 1
	sound_call Music_Route24GBS_Ch3_Bar1
	octave 1
	note B_, 8
;Bar 3
	sound_call Music_Route24GBS_Ch3_Bar1
	note G#, 8
    volume_envelope 2, 4
;Bar 5
	sound_call Music_Route24GBS_Ch3_Bar5_6
;Bar 7
rept 4
	volume_envelope 1, 3
	octave 2
	note D_, 2
	rest 2
	volume_envelope 2, 5
	octave 5
	note A_, 1
	rest 1
	octave 4
	note D_, 1
	rest 1
endr
;Bar 8
rept 4
	volume_envelope 1, 3
	octave 2
	note E_, 2
	rest 2
	octave 5
	volume_envelope 2, 5
	note B_, 1
	rest 1
	octave 4
	note E_, 1
	rest 1
endr
;Bar 9
rept 4
	volume_envelope 1, 3
	octave 1
	note B_, 2
	rest 2
	octave 6
	volume_envelope 2, 5
	note D_, 1
	rest 1
	octave 4
	note F#, 1
	rest 1
endr
;Bar 10
rept 4
	volume_envelope 1, 3
	octave 2
	note E_, 2
	rest 2
	volume_envelope 2, 5
	octave 6
	note E_, 1
	rest 1
	octave 4
	note B_, 1
	rest 1
endr
;Bar 11
rept 4
	volume_envelope 1, 3
	octave 1
	note B_, 2
	volume_envelope 2, 5
	octave 4
	note A_, 1
	rest 1
	octave 6
	note F#, 1
	rest 1
	octave 5
	note D_, 1
	rest 1
endr
;Bar 12
rept 4
	volume_envelope 1, 3
	octave 2
	note E_, 2
	volume_envelope 2, 5
	octave 4
	note B_, 1
	rest 1
	octave 6
	note G#, 1
	rest 1
	octave 5
	note E_, 1
	rest 1
endr
;Bar 13
	volume_envelope 1, 3
	sound_call Music_Route24GBS_Ch3_Bar13
	sound_loop 0, Music_Route24GBS_Ch3_loop

Music_Route24GBS_Ch3_Bar1:
	octave 2
	note E_, 8
	rest 16
	note D_, 8
;Bar 2
	note E_, 2
	rest 16
	rest 6
	sound_ret

Music_Route24GBS_Ch3_Bar5_6:
    octave 3
	note A_, 1
	octave 5
	note C#, 2
	note E_, 1
	note A_, 1
	octave 6
	note C#, 2
	note E_, 1
	note A_, 1
	note E_, 2
	note C#, 1
	octave 5
	note A_, 1
	note E_, 2
	note C#, 1
	octave 3
	note G#, 1
	octave 4
	note B_, 2
	octave 5
	note E_, 1
	note G#, 1
	note B_, 2
	octave 6
	note E_, 1
	note G#, 1
	note E_, 2
	octave 5
	note B_, 1
	note G#, 1
	note E_, 2
	octave 4
	note B_, 1
;Bar 6
	octave 3
	note F#, 1
	octave 4
	note A_, 2
	octave 5
	note C#, 1
	note F#, 1
	note A_, 2
	octave 6
	note C#, 1
	note F#, 1
	note C#, 2
	octave 5
	note A_, 1
	note F#, 1
	note C#, 2
	octave 4
	note A_, 1
	octave 3
	note C#, 1
	octave 4
	note E_, 2
	note G#, 1
	octave 5
	note C#, 1
	note E_, 2
	note G#, 1
	octave 6
	note C#, 2
	rest 6
    sound_ret

Music_Route24GBS_Ch3_Bar13:
    octave 1
	note B_, 2
	rest 16
	rest 2
	note B_, 2
	note B_, 2
	note B_, 6
	rest 2
;Bar 14
	note B_, 2
	rest 16
	rest 2
	note B_, 2
	note B_, 2
	note B_, 6
	rest 2
    sound_ret

; ============================================================================================================

Music_Route24GBS_Ch4:
	toggle_noise 0
	drum_speed 6
;Bar 1
	sound_call Music_Route24GBS_Ch4_Type6
Music_Route24GBS_Ch4_loop:
	sound_call Music_Route24GBS_Ch4_Type1
;Bar 2
	sound_call Music_Route24GBS_Ch4_Type3
	sound_call Music_Route24GBS_Ch4_Type5
;Bar 3
	sound_call Music_Route24GBS_Ch4_Type3
	sound_call Music_Route24GBS_Ch4_Type1
;Bar 4
	sound_call Music_Route24GBS_Ch4_Type3
	sound_call Music_Route24GBS_Ch4_Type5
;Bar 5
	drum_note 9, 2
	rest 16
	rest 16
	rest 16
	rest 14
;Bar 7
rept 2
	sound_call Music_Route24GBS_Ch4_Type4
;Bar 8
	drum_note 4, 8
	drum_note 4, 8
	drum_note 4, 8
	drum_note 4, 4
	sound_call Music_Route24GBS_Ch4_Type2
endr
;Bar 11
	sound_call Music_Route24GBS_Ch4_Type4
;Bar 12
	drum_note 4, 8
	drum_note 4, 8
	drum_note 4, 4
	sound_call Music_Route24GBS_Ch4_Type2
	sound_call Music_Route24GBS_Ch4_Type5
;Bar 13
	drum_note 4, 16
	rest 4
	drum_note 4, 2
	drum_note 4, 2
	drum_note 10, 4
	sound_call Music_Route24GBS_Ch4_Type2
;Bar 14
	drum_note 4, 16
	rest 4
	sound_call Music_Route24GBS_Ch4_Type2
	sound_call Music_Route24GBS_Ch4_Type5
;Bar 15
	sound_call Music_Route24GBS_Ch4_Type6
	sound_loop 0, Music_Route24GBS_Ch4_loop

Music_Route24GBS_Ch4_Type1:
	drum_speed 8
rept 6
	drum_note 4, 1
endr
	drum_speed 6
	sound_ret

Music_Route24GBS_Ch4_Type2:
	drum_speed 8
	drum_note 4, 1
	drum_note 4, 1
	drum_note 4, 1
	drum_speed 6
	sound_ret

Music_Route24GBS_Ch4_Type3:
	drum_note 4, 12;
	drum_note 4, 2
	drum_note 4, 2
	drum_note 4, 8
	sound_ret

Music_Route24GBS_Ch4_Type4:
	drum_note 4, 8;
	drum_note 4, 8
	drum_note 4, 8
	drum_note 4, 4
	drum_note 4, 2
	drum_note 4, 2
	sound_ret

Music_Route24GBS_Ch4_Type5:
rept 4
	drum_note 4, 2
endr
	sound_ret

Music_Route24GBS_Ch4_Type6:
	drum_note 9, 12;
	drum_note 4, 2
	drum_note 4, 2
	drum_note 4, 8
	sound_ret

; ============================================================================================================
; ============================================================================================================

Music_Route24GBSNight:
	channel_count 4
	channel 1, Music_Route24GBSNight_Ch1
	channel 2, Music_Route24GBSNight_Ch2
	channel 3, Music_Route24GBSNight_Ch3
	channel 4, Music_Route24GBSNight_Ch4

Music_Route24GBSNight_Ch1:
	volume 7, 7
	duty_cycle $2
	note_type 12, 9, 7
	pitch_offset $0001
	stereo_panning FALSE, TRUE
	tempo 183
	vibrato 4, 1, 2
;Bar 1
	octave 2
	note G#, 4
Music_Route24GBSNight_Ch1_loop:
	duty_cycle $2
	sound_call Music_Route24GBS_Ch1_Bar1
;Bar 2
	note A_, 6
	volume_envelope 8, 7
	note A_, 1
	note G#, 1
	note F#, 4
;Bar 3
	volume_envelope 9, 7
	note G#, 4
	sound_call Music_Route24GBS_Ch1_Bar1
    sound_call Music_Route24GBS_Ch1_Part1
;Bar 9
	sound_call Music_Route24GBS_Ch1_Bar9
	note E_, 1
	note F#, 1
	note G#, 1
	rest 1
	note F#, 1
	note E_, 1
;Bar 11
	duty_cycle $1
	sound_call Music_Route24GBS_Ch1_Bar9
	note G#, 1
	note A_, 1
	note B_, 1
	rest 1
	note A_, 1
	note G#, 1
    duty_cycle $2
	volume_envelope 9, 7
    sound_call Music_Route24GBS_Ch1_Part2
	sound_loop 0, Music_Route24GBSNight_Ch1_loop

Music_Route24GBSNight_Ch2:
	duty_cycle $2
	note_type 12, 12, 7
	stereo_panning TRUE, FALSE
	vibrato 4, 1, 2
;Bar 1
	octave 3
	note E_, 6
Music_Route24GBSNight_Ch2_loop:
	duty_cycle $2
	sound_call Music_Route24GBS_Ch2_Bar1_2
	note F#, 9
	rest 3
;Bar 3
	note E_, 6
	sound_call Music_Route24GBS_Ch2_Bar1_2
	note B_, 9
	rest 3
    duty_cycle $1
    sound_call Music_Route24GBS_Ch2_Part1
    duty_cycle $2
	volume_envelope 12, 7
	note F#, 2
	note E_, 2
;Bar 9
	sound_call Music_Route24GBS_Ch2_Bar9
;Bar 11
	sound_call Music_Route24GBS_Ch2_Bar9
    sound_call Music_Route24GBS_Ch2_Part2
	sound_loop 0, Music_Route24GBSNight_Ch2_loop

Music_Route24GBSNight_Ch3:
	note_type 6, 1, 3
Music_Route24GBSNight_Ch3_loop:
;Bar 1
	sound_call Music_Route24GBS_Ch3_Bar1
	octave 1
	note B_, 8
;Bar 3
	sound_call Music_Route24GBS_Ch3_Bar1
	note G#, 8
    volume_envelope 3, 4
;Bar 5
	sound_call Music_Route24GBS_Ch3_Bar5_6
;Bar 7
rept 4
	volume_envelope 1, 2
	octave 2
	note D_, 2
	rest 2
	volume_envelope 2, 4
	octave 5
	note A_, 1
	rest 1
	octave 4
	note D_, 1
	rest 1
endr
;Bar 8
rept 4
	volume_envelope 1, 2
	octave 2
	note E_, 2
	rest 2
	octave 5
	volume_envelope 2, 4
	note B_, 1
	rest 1
	octave 4
	note E_, 1
	rest 1
endr
;Bar 9
rept 4
	volume_envelope 1, 2
	octave 1
	note B_, 2
	rest 2
	octave 6
	volume_envelope 2, 4
	note D_, 1
	rest 1
	octave 4
	note F#, 1
	rest 1
endr
;Bar 10
rept 4
	volume_envelope 1, 2
	octave 2
	note E_, 2
	rest 2
	volume_envelope 2, 4
	octave 6
	note E_, 1
	rest 1
	octave 4
	note B_, 1
	rest 1
endr
;Bar 11
rept 4
	volume_envelope 1, 2
	octave 1
	note B_, 2
	volume_envelope 2, 4
	octave 4
	note A_, 1
	rest 1
	octave 6
	note F#, 1
	rest 1
	octave 5
	note D_, 1
	rest 1
endr
;Bar 12
rept 4
	volume_envelope 1, 2
	octave 2
	note E_, 2
	volume_envelope 2, 4
	octave 4
	note B_, 1
	rest 1
	octave 6
	note G#, 1
	rest 1
	octave 5
	note E_, 1
	rest 1
endr
;Bar 13
	volume_envelope 1, 2
	sound_call Music_Route24GBS_Ch3_Bar13
	sound_loop 0, Music_Route24GBSNight_Ch3_loop

Music_Route24GBSNight_Ch4:
	toggle_noise $6
	drum_speed 6
;Bar 1
	sound_call Music_Route24GBS_Ch4_Type6
    sound_call Music_Route24GBS_Ch4_loop
    sound_ret