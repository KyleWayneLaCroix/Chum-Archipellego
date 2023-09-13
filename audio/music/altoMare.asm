;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 4.0 (17-Jun-2020)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_AltoMare:
	channel_count 4
	channel 1, Music_AltoMare_Ch1
	channel 2, Music_AltoMare_Ch2
	channel 3, Music_AltoMare_Ch3
	channel 4, Music_AltoMare_Ch4

Music_AltoMare_Ch1:
	volume 7, 7
	duty_cycle $1
	pitch_offset $0002
	note_type 12, 6, 2
	stereo_panning FALSE, TRUE
	tempo 99
;Bar 1
	rest 16
;Bar 2
	octave 3
rept 5
	sound_call Music_AltoMare_Ch1_Intro
endr
;Bar 7
rept 8
	note A_, 1
endr
	volume_envelope 5, 7
	note G_, 2
	note G_, 2
	rest 2
	note E_, 2
Music_AltoMare_Ch1_loop:
	duty_cycle $1
	octave 3
Music_AltoMare_Ch1_loop1:
;Bar 8
	sound_call Music_AltoMare_Ch1_Type1
;Bar 9
	sound_call Music_AltoMare_Ch1_Type2
;Bar 10
	sound_call Music_AltoMare_Ch1_Type3
;Bar 11
	sound_call Music_AltoMare_Ch1_Type4
;Bar 12
	sound_call Music_AltoMare_Ch1_Type1
;Bar 13
	sound_call Music_AltoMare_Ch1_Type2
;Bar 14
	sound_call Music_AltoMare_Ch1_Type5
;Bar 15
	sound_call Music_AltoMare_Ch1_Type6
	sound_loop 2, Music_AltoMare_Ch1_loop1
;Bar 24
	volume_envelope 8, 7
	duty_cycle $2
	sound_call Music_AltoMare_Ch1_Type7
;Bar 25
	sound_call Music_AltoMare_Ch1_Type8
;Bar 26
	sound_call Music_AltoMare_Ch1_Type9
;Bar 27
	sound_call Music_AltoMare_Ch1_Type10
;Bar 28
	volume_envelope 7, 7
	sound_call Music_AltoMare_Ch1_Type7
;Bar 29
	sound_call Music_AltoMare_Ch1_Type11
;Bar 30
	octave 3
	note G#, 2
	rest 2
	note G#, 2
	rest 2
	note G#, 2
	rest 2
	note G#, 2
	rest 2
;Bar 31
	note A_, 2
	note B_, 2
	octave 4
	note C#, 2
	note E_, 2
	note A_, 2
	rest 6
;Bar 32
	sound_call Music_AltoMare_Ch1_Type7
;Bar 33
	sound_call Music_AltoMare_Ch1_Type8
;Bar 34
	sound_call Music_AltoMare_Ch1_Type9
;Bar 35
	sound_call Music_AltoMare_Ch1_Type10
;Bar 36
	sound_call Music_AltoMare_Ch1_Type7
;Bar 37
	sound_call Music_AltoMare_Ch1_Type11
;Bar 38
	octave 3
	note B_, 2
	rest 2
	octave 4
	note D_, 2
	rest 2
	note G_, 2
	rest 2
	note A#, 2
	rest 2
;Bar 39
	note A_, 4
	rest 4
	note E_, 2
	rest 6
;Bar 40
	duty_cycle $1
	octave 3
	sound_call Music_AltoMare_Ch1_Type1
;Bar 41
	sound_call Music_AltoMare_Ch1_Type2
;Bar 42
	sound_call Music_AltoMare_Ch1_Type3
;Bar 43
	sound_call Music_AltoMare_Ch1_Type4
;Bar 44
	sound_call Music_AltoMare_Ch1_Type1
;Bar 45
	sound_call Music_AltoMare_Ch1_Type2
;Bar 46
	sound_call Music_AltoMare_Ch1_Type5
;Bar 47
	sound_call Music_AltoMare_Ch1_Type6
;Bar 48
	duty_cycle $2
	volume_envelope 5, 8
	sound_call Music_AltoMare_Ch1_Bar48_53
;Bar 54
	note A_, 8
	note G_, 8
;Bar 55
	note F_, 8
	note C_, 8
;Bar 56
	sound_call Music_AltoMare_Ch1_Bar48_53
;Bar 62
	volume_envelope 7, 8
	note E_, 8
	note D_, 8
;Bar 63
	note C_, 16
;Bar 64
	sound_loop 0, Music_AltoMare_Ch1_loop

Music_AltoMare_Ch1_Intro:
	note A_, 1
	sound_loop 16, Music_AltoMare_Ch1_Intro
	sound_ret

Music_AltoMare_Ch1_Type1:
	note A_, 2;
	rest 2
	note A_, 2
	note A_, 2
	rest 2
	note A_, 2
	note A_, 2
	rest 2
	sound_ret

Music_AltoMare_Ch1_Type2:
	note G_, 2;
	rest 2
	note G_, 2
	note G_, 2
	rest 2
	note G_, 2
	note G_, 2
	rest 2
	sound_ret

Music_AltoMare_Ch1_Type3:
	note A#, 4;
	note A#, 2
	rest 2
	octave 4
	note C_, 4
	note C_, 2
	rest 2
	sound_ret

Music_AltoMare_Ch1_Type4:
	octave 3;
	note A_, 4
	note A_, 2
	note G_, 4
	note G_, 2
	note G_, 2
	rest 2
	sound_ret

Music_AltoMare_Ch1_Type5:
	note A_, 4;
	note A_, 2
	note E_, 4
	note E_, 2
	rest 4
	sound_ret

Music_AltoMare_Ch1_Type6:
	note F_, 4;
	note F_, 2
	note C_, 4
	note C_, 2
	note C_, 2
	rest 2
	sound_ret

Music_AltoMare_Ch1_Type7:
	octave 4
	note D_, 2;
	rest 2
	note D_, 2
	rest 2
	note D_, 2
	rest 2
	note D_, 2
	rest 2
	sound_ret

Music_AltoMare_Ch1_Type8:
	note F_, 2;
	rest 2
	note F_, 2
	rest 2
	note F_, 2
	rest 2
	note F_, 2
	rest 2
	sound_ret

Music_AltoMare_Ch1_Type9:
	octave 3
	note A#, 2;
	rest 2
	note A#, 2
	rest 2
	note A#, 2
	rest 2
	note A#, 2
	rest 2
	sound_ret

Music_AltoMare_Ch1_Type10:
	note A_, 2;
	rest 2
	note A_, 2
	rest 2
	note A_, 2
	rest 2
	note A_, 2
	rest 2
	sound_ret

Music_AltoMare_Ch1_Type11:
	note C_, 2;
	rest 2
	note C_, 2
	rest 2
	note C_, 2
	rest 2
	note C_, 2
	rest 2
	sound_ret

Music_AltoMare_Ch1_Bar48_53:
	octave 4
	note A#, 16
;Bar 49
	note A#, 16
;Bar 50
	note A_, 16
;Bar 51
	note A_, 16
;Bar 52
	note A#, 16
;Bar 53
	note A#, 12
	rest 4
	sound_ret

; ============================================================================================================

Music_AltoMare_Ch2:
	duty_cycle $2
	note_type 12, 8, 8
	vibrato 0, 1, 11
	stereo_panning TRUE, FALSE
;Bar 1
	rest 16
	rest 16
;Bar 3
	octave 5
	volume_envelope 2, -6
	note D_, 12
	note_type 6, 8, 8
	note C_, 1
	octave 4
	note B_, 1
	note A_, 1
	note G_, 1
	note F#, 1
	note F_, 1
	note E_, 1
	note D#, 1
;Bar 4
	note_type 12, 8, 5
	note D_, 10
	volume_envelope 2, -6
	note A_, 12
	volume_envelope 7, 8
;Bar 5
	rest 16
	rest 8
;Bar 6
	octave 3
	volume_envelope 5, 8
	note A_, 2
;Bar 7
	volume_envelope 2, -6
	octave 4
	note A_, 12
	octave 2
	vibrato 8, 1, 11
	volume_envelope 9, 8
	note A_, 4
Music_AltoMare_Ch2_loop:
;Bar 8
	octave 3
	sound_call Music_AltoMare_Ch2_Bar8
;Bar 9
	sound_call Music_AltoMare_Ch2_Bar9
;Bar 10
	sound_call Music_AltoMare_Ch2_Bar10
;Bar 11
	sound_call Music_AltoMare_Ch2_Bar11
	octave 2
	note A_, 4
;Bar 12
	octave 3
	sound_call Music_AltoMare_Ch2_Bar8
;Bar 13
	sound_call Music_AltoMare_Ch2_Bar9
;Bar 14
	sound_call Music_AltoMare_Ch2_Bar14
;Bar 15
	sound_call Music_AltoMare_Ch2_Bar15
	octave 2
	note A_, 4
;Bar 16
	octave 3
	sound_call Music_AltoMare_Ch2_Bar8
;Bar 17
	sound_call Music_AltoMare_Ch2_Bar9
;Bar 18
	sound_call Music_AltoMare_Ch2_Bar10
;Bar 19
	sound_call Music_AltoMare_Ch2_Bar11
	octave 2
	note A_, 4
;Bar 20
	octave 3
	sound_call Music_AltoMare_Ch2_Bar8
;Bar 21
	sound_call Music_AltoMare_Ch2_Bar9
;Bar 22
	sound_call Music_AltoMare_Ch2_Bar14
;Bar 23
	sound_call Music_AltoMare_Ch2_Bar15
	note A_, 4
;Bar 24
	sound_call Music_AltoMare_Ch2_Bar24
;Bar 25
	note F_, 8
	note C_, 4
	octave 3
	note A_, 4
;Bar 26
	sound_call Music_AltoMare_Ch2_Bar26
;Bar 27
	volume_envelope 4, -5
	note A_, 8
	volume_envelope 9, 8
	rest 4
	note A_, 4
;Bar 28
	sound_call Music_AltoMare_Ch2_Bar24
;Bar 29
	note F_, 8
	note C_, 4
	octave 3
	note A_, 4
;Bar 30
	note G#, 2
	note A_, 2
	note B_, 4
	octave 4
	note E_, 4
	octave 3
	note B_, 2
	octave 4
	note D_, 2
;Bar 31
	volume_envelope 4, -5
	note C#, 8
	volume_envelope 9, 8
	rest 4
	octave 3
	note A_, 2
	note B_, 1
	octave 4
	note C#, 1
;Bar 32
	sound_call Music_AltoMare_Ch2_Bar24
;Bar 33
	note F_, 8
	note C_, 4
	octave 3
	note A_, 4
;Bar 34
	sound_call Music_AltoMare_Ch2_Bar26
;Bar 35
	note A_, 8
	rest 4
	note A_, 4
;Bar 36
	sound_call Music_AltoMare_Ch2_Bar24
;Bar 37
	note F_, 8
	note G_, 4
	note A_, 4
;Bar 38
	note B_, 2
	note A_, 2
	note G_, 2
	note D_, 2
	note G_, 2
	note F_, 2
	note E_, 2
	note D_, 2
;Bar 39
	note C#, 3
	rest 4
	note_type 6, 8, 8
	note E_, 1
	note G_, 1
	note_type 12, 8, 8
	note A_, 2
	rest 6
;Bar 40
	octave 4
	volume_envelope 8, 8
	sound_call Music_AltoMare_Ch2_Bar8
;Bar 41
	sound_call Music_AltoMare_Ch2_Bar9
;Bar 42
	sound_call Music_AltoMare_Ch2_Bar10
;Bar 43
	sound_call Music_AltoMare_Ch2_Bar11
	octave 3
	note A_, 4
;Bar 44
	octave 4
	sound_call Music_AltoMare_Ch2_Bar8
;Bar 45
	sound_call Music_AltoMare_Ch2_Bar9
;Bar 46
	sound_call Music_AltoMare_Ch2_Bar14
;Bar 47
	note D_, 12
	rest 4
;Bar 48
	volume_envelope 10, 7
	duty_cycle $3
	octave 3
	sound_call Music_AltoMare_Ch2_Bar48_49
;Bar 50
	volume_envelope 9, 8
	note A_, 16
	volume_envelope 9, 7
	note A_, 10
;Bar 51
	rest 2
	note A_, 4
;Bar 52
	sound_call Music_AltoMare_Ch2_Bar52_53
;Bar 54
	octave 3
	note A_, 10
	octave 4
	note E_, 2
	note F_, 2
	note G_, 2
;Bar 55
	note A_, 3
	note G_, 1
	note F_, 2
	note G_, 2
	note_type 8, 10, 7
	note A_, 2
	note G_, 2
	note F_, 2
	note E_, 2
	note D_, 2
	note C_, 2
	note_type 12, 10, 7
;Bar 56
	octave 3
	sound_call Music_AltoMare_Ch2_Bar48_49
;Bar 58
	note A_, 8
	octave 4
	note C_, 8
;Bar 59
	note E_, 10
	note D_, 2
	note C_, 2
	octave 3
	note A_, 2
;Bar 60
	sound_call Music_AltoMare_Ch2_Bar52_53
;Bar 62
	volume_envelope 6, 8
	octave 3
	note A_, 16
	note A_, 8
	rest 4
;Bar 64
	duty_cycle $2
	volume_envelope 9, 8
	octave 2
	note A_, 4
	sound_loop 0, Music_AltoMare_Ch2_loop

Music_AltoMare_Ch2_Bar8:
	note D_, 2;
	rest 2
	note D_, 2
	note E_, 2
	note F_, 4
	note E_, 2
	note D_, 2
	sound_ret

Music_AltoMare_Ch2_Bar9:
	note G_, 6;
	note A_, 1
	note G_, 1
	note F_, 4
	note E_, 4
	sound_ret

Music_AltoMare_Ch2_Bar10:
	note F_, 2;
	note E_, 2
	note F_, 4
	note G_, 2
	note F_, 2
	note G_, 4
	sound_ret

Music_AltoMare_Ch2_Bar11:
	volume_envelope 4, -6
	note A_, 10
	note_type 6, 9, 8
	note G_, 1
	note F_, 1
	note D_, 1
	note C_, 1
	note_type 12, 9, 8
	sound_ret

Music_AltoMare_Ch2_Bar14:
	note F_, 2;
	note G_, 2
	note A_, 4
	note E_, 4
	note C_, 2
	note E_, 2
	sound_ret

Music_AltoMare_Ch2_Bar15:
	volume_envelope 4, -5
	note D_, 8
	volume_envelope 9, 8
	rest 4
	sound_ret

Music_AltoMare_Ch2_Bar24:
	octave 4;
	note D_, 2
	rest 2
	note D_, 2
	note C#, 2
	note D_, 4
	note E_, 4
	sound_ret

Music_AltoMare_Ch2_Bar26:
	note A#, 2;
	note A_, 2
	note G_, 4
	octave 4
	note D_, 2
	note C_, 2
	octave 3
	note A#, 4
	sound_ret

Music_AltoMare_Ch2_Bar48_49:
	note A#, 8
	octave 4
	note C_, 4
	note D_, 4
;Bar 49
	note F_, 4
	note D_, 4
	note C_, 4
	octave 3
	note A#, 4
	sound_ret

Music_AltoMare_Ch2_Bar52_53:
	note A#, 8
	octave 4
	note C_, 4
	note D_, 4
;Bar 53
	note F_, 4
	note E_, 4
	note D_, 4
	note F_, 4
	sound_ret

; ============================================================================================================

Music_AltoMare_Ch3:
	note_type 12, 1, 3
	;stereopanning $f
;Bar 1
	rest 16
;Bar 2
	sound_call Music_AltoMare_Ch3_Type1
;Bar 3
	sound_call Music_AltoMare_Ch3_Type2
;Bar 4
	sound_call Music_AltoMare_Ch3_Type1
;Bar 5
	sound_call Music_AltoMare_Ch3_Type2
;Bar 6
	sound_call Music_AltoMare_Ch3_Type1
;Bar 7
	sound_call Music_AltoMare_Ch3_Type2
Music_AltoMare_Ch3_loop:
;Bar 8
	sound_call Music_AltoMare_Ch3_Type1
;Bar 9
	sound_call Music_AltoMare_Ch3_Type2
;Bar 10
	sound_call Music_AltoMare_Ch3_Type3
;Bar 11
	sound_call Music_AltoMare_Ch3_Type4
;Bar 12
	sound_call Music_AltoMare_Ch3_Type1
;Bar 13
	sound_call Music_AltoMare_Ch3_Type2
;Bar 14
	sound_call Music_AltoMare_Ch3_Bar14_15
;Bar 16
	sound_call Music_AltoMare_Ch3_Type1
;Bar 17
	sound_call Music_AltoMare_Ch3_Type2
;Bar 18
	sound_call Music_AltoMare_Ch3_Type3
;Bar 19
	sound_call Music_AltoMare_Ch3_Type4
;Bar 20
	sound_call Music_AltoMare_Ch3_Type1
;Bar 21
	sound_call Music_AltoMare_Ch3_Type2
;Bar 22
	sound_call Music_AltoMare_Ch3_Bar14_15
;Bar 24
	sound_call Music_AltoMare_Ch3_Bar24_25
;Bar 26
	note G_, 6
	rest 2
	note G_, 6
	rest 2
;Bar 27
	note D_, 6
	rest 2
	note D_, 2
	note A_, 2
	note E_, 2
	note C_, 2
;Bar 28
	sound_call Music_AltoMare_Ch3_Bar24_25
;Bar 30
	note G#, 4
	note B_, 2
	octave 3
	note C#, 2
	note E_, 2
	octave 2
	note B_, 2
	octave 3
	note C#, 2
	note D_, 2
;Bar 31
	note C#, 4
	rest 2
	octave 2
	note B_, 2
	note A_, 2
	note B_, 2
	octave 3
	note C#, 2
	octave 2
	note A_, 2
;Bar 32
	sound_call Music_AltoMare_Ch3_Bar24_25
;Bar 34
	note G_, 6
	rest 2
	note G_, 6
	rest 2
;Bar 35
	note D_, 6
	rest 2
	note D_, 2
	note A_, 2
	note E_, 2
	note C_, 2
;Bar 36
	sound_call Music_AltoMare_Ch3_Bar24_25
;Bar 38
	octave 1
	note B_, 2
	rest 2
	octave 2
	note D_, 2
	rest 2
	note G_, 2
	rest 2
	note A#, 2
	rest 2
;Bar 39
	note A_, 2
	rest 6
	note A_, 2
	note E_, 1
	note C_, 1
	octave 1
	note A_, 2
	rest 2
;Bar 40
	sound_call Music_AltoMare_Ch3_Type1
;Bar 41
	sound_call Music_AltoMare_Ch3_Type2
;Bar 42
	sound_call Music_AltoMare_Ch3_Type3
;Bar 43
	sound_call Music_AltoMare_Ch3_Type4
;Bar 44
	sound_call Music_AltoMare_Ch3_Type1
;Bar 45
	sound_call Music_AltoMare_Ch3_Type2
;Bar 46
	sound_call Music_AltoMare_Ch3_Bar14_15
;Bar 48
	sound_call Music_AltoMare_Ch3_Bar48_49
;Bar 50
	sound_call Music_AltoMare_Ch3_Bar50_51
;Bar 52
	sound_call Music_AltoMare_Ch3_Bar48_49
;Bar 54
	sound_call Music_AltoMare_Ch3_Bar54_55
;Bar 56
	sound_call Music_AltoMare_Ch3_Bar48_49
;Bar 58
	sound_call Music_AltoMare_Ch3_Bar50_51
;Bar 60
	sound_call Music_AltoMare_Ch3_Bar48_49
;Bar 62
	sound_call Music_AltoMare_Ch3_Bar54_55
	sound_loop 0, Music_AltoMare_Ch3_loop

Music_AltoMare_Ch3_Type1:
	octave 3;
	note D_, 6
	rest 2
	octave 2
	note A_, 6
	rest 2
	sound_ret

Music_AltoMare_Ch3_Type2:
	note E_, 6;
	rest 2
	note C_, 6
	rest 2
	sound_ret

Music_AltoMare_Ch3_Type3:
	note F_, 6;
	rest 2
	note G_, 6
	rest 2
	sound_ret

Music_AltoMare_Ch3_Type4:
	note A_, 6;
	rest 2
	octave 1
	note A_, 6
	rest 2
	sound_ret

Music_AltoMare_Ch3_Bar14_15:
	note A_, 6
	note C_, 6
	rest 4
;Bar 15
	note F_, 6
	note C_, 6
	rest 4
	sound_ret

Music_AltoMare_Ch3_Bar24_25:
	note A#, 6
	rest 2
	note A#, 6
	rest 2
;Bar 25
	note A_, 6
	rest 2
	note A_, 6
	rest 2
	sound_ret

Music_AltoMare_Ch3_Bar48_49:
	note D_, 6
	rest 2
	note A#, 6
	rest 2
	sound_loop 2, Music_AltoMare_Ch3_Bar48_49
	sound_ret

Music_AltoMare_Ch3_Bar50_51:
	note C_, 6
	rest 2
	note A_, 6
	rest 2
	sound_loop 2, Music_AltoMare_Ch3_Bar50_51
	sound_ret

Music_AltoMare_Ch3_Bar54_55:
	note C_, 6
	rest 2
	note G_, 6
	rest 2
	octave 1
	note A_, 6
	rest 2
	octave 2
	note C_, 6
	rest 2
	sound_ret

; ============================================================================================================

Music_AltoMare_Ch4:
	;stereopanning $f0
	toggle_noise 1
	drum_speed 12
;Bar 1
	drum_note 1, 2
	drum_note 10, 1
	drum_note 1, 1
	drum_note 10, 2
	drum_note 10, 2
	drum_note 6, 2
	drum_note 6, 2
	drum_note 6, 4
;Bar 2
	drum_note 6, 6
	drum_note 5, 6
	drum_note 10, 4
;Bar 3
	sound_call Music_AltoMare_Ch4_Type1
;Bar 4
	sound_call Music_AltoMare_Ch4_Type1
;Bar 5
	sound_call Music_AltoMare_Ch4_Type1
;Bar 6
	sound_call Music_AltoMare_Ch4_Type1
;Bar 7
	drum_note 5, 6
	drum_note 5, 2
	drum_note 5, 4
	drum_note 6, 4
Music_AltoMare_Ch4_loop:
;Bar 8
	sound_call Music_AltoMare_Ch4_Type1
;Bar 9
	sound_call Music_AltoMare_Ch4_Type1
;Bar 10
	sound_call Music_AltoMare_Ch4_Type1
;Bar 11
	sound_call Music_AltoMare_Ch4_Type2
;Bar 12
	sound_call Music_AltoMare_Ch4_Type1
;Bar 13
	sound_call Music_AltoMare_Ch4_Type1
;Bar 14
	sound_call Music_AltoMare_Ch4_Type1
;Bar 15
	sound_call Music_AltoMare_Ch4_Bar15
;Bar 16
	sound_call Music_AltoMare_Ch4_Type1
;Bar 17
	sound_call Music_AltoMare_Ch4_Type1
;Bar 18
	sound_call Music_AltoMare_Ch4_Type1
;Bar 19
	sound_call Music_AltoMare_Ch4_Type2
;Bar 20
	sound_call Music_AltoMare_Ch4_Type1
;Bar 21
	sound_call Music_AltoMare_Ch4_Type1
;Bar 22
	sound_call Music_AltoMare_Ch4_Type1
;Bar 23
	sound_call Music_AltoMare_Ch4_Bar15

Music_AltoMare_Ch4_Bar24_27:
;Bar 24
	drum_note 5, 6;
	drum_note 10, 2
	drum_note 5, 4
	drum_note 10, 4
;Bar 25
	drum_note 5, 6;
	drum_note 10, 2
	drum_note 5, 4
	drum_note 10, 4
;Bar 26
	drum_note 5, 6;
	drum_note 10, 2
	drum_note 5, 4
	drum_note 10, 4
;Bar 27
	drum_note 5, 6
	drum_note 10, 2
	drum_note 5, 2
	drum_note 10, 4
	drum_note 5, 2
	sound_loop 4, Music_AltoMare_Ch4_Bar24_27
;Bar 40
	sound_call Music_AltoMare_Ch4_Type1
;Bar 41
	sound_call Music_AltoMare_Ch4_Type1
;Bar 42
	sound_call Music_AltoMare_Ch4_Type1
;Bar 43
	sound_call Music_AltoMare_Ch4_Type2
;Bar 44
	sound_call Music_AltoMare_Ch4_Type1
;Bar 45
	sound_call Music_AltoMare_Ch4_Type1
;Bar 46
	sound_call Music_AltoMare_Ch4_Type1
;Bar 47
	sound_call Music_AltoMare_Ch4_Bar15
;Bar 48
Music_AltoMare_Ch4_Bar48_49:
	drum_note 5, 4
	drum_note 5, 2
	drum_note 10, 6
	drum_note 5, 2
	drum_note 5, 4
;Bar 49
	drum_note 10, 2
	drum_note 5, 2
	drum_note 5, 2
	drum_note 10, 4
	drum_note 5, 4
	sound_loop 8, Music_AltoMare_Ch4_Bar48_49
	sound_loop 0, Music_AltoMare_Ch4_loop

Music_AltoMare_Ch4_Type1:
	drum_note 5, 6;
	drum_note 5, 6
	drum_note 10, 4
	sound_ret

Music_AltoMare_Ch4_Type2:
	drum_note 5, 6;
	drum_note 5, 2
	drum_note 5, 4
	drum_note 6, 4
	sound_ret

Music_AltoMare_Ch4_Bar15:
	drum_note 5, 2;
	drum_note 5, 4
	drum_note 5, 2
	drum_note 5, 4
	drum_note 6, 4
	sound_ret

; ============================================================================================================

