;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.2.0 (16-Nov-2022)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_SSAqua:
	channel_count 4
	channel 1, Music_SSAqua_Ch1
	channel 2, Music_SSAqua_Ch2
	channel 3, Music_SSAqua_Ch3
	channel 4, Music_SSAqua_Ch4

Music_SSAqua_Ch1:
	volume 7, 7
	duty_cycle 2
	note_type 12, 10, 7
	tempo 144
;Bar 1
	rest 5
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 5
;Bar 17
	octave 4
	volume_envelope 14, 7
	note C_, 2
	note C_, 2
	volume_envelope 13, 7
	note F_, 4
;Bar 18
	rest 16
	rest 4
;Bar 19
	octave 3
	volume_envelope 14, 7
	note A_, 1 ; WARNING: Auto-Sync says: Rounded down!
	rest 1
	octave 4
	note C_, 1 ; WARNING: Auto-Sync says: Rounded down!
	octave 3
	volume_envelope 13, 7
	note A_, 1
	octave 4
	volume_envelope 14, 7
	note C_, 2
	rest 2
	note C_, 2
;Bar 20
	octave 3
	note G_, 5
	rest 16
	rest 5
;Bar 21
	octave 4
	note C_, 2
	note C_, 2 ; WARNING: Auto-Sync says: Rounded down!
	note C_, 2
;Bar 22
	note G_, 1
	rest 3
	note G_, 4
	note D_, 4
	note D_, 2
	rest 2
;Bar 23
	note E_, 2
	note G_, 2
	rest 2
	note C_, 1
	rest 1
	note C_, 2
	octave 3
	note A_, 2
	octave 4
	note D_, 4
;Bar 24
	note D_, 2
	note C_, 2
	rest 16
	rest 6
;Bar 25
	note C_, 1
	rest 1
	note C_, 2
	note D_, 1
	rest 1
;Bar 26
	note E_, 2
	note D_, 2
	note E_, 2
	note D_, 2
	note D_, 1
	rest 1
	volume_envelope 13, 7
	note D_, 2
	volume_envelope 14, 7
	note E_, 2
	note D_, 2
;Bar 27
	note D_, 2
	note D_, 2
	note E_, 2
	volume_envelope 13, 7
	note D_, 2
	volume_envelope 14, 7
	note E_, 2
	note D_, 2
	note E_, 2
	note D_, 2
;Bar 28
	note D_, 3
	rest 15
;Bar 29
	note D_, 1
	rest 1
	note E_, 2
	note D_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 2
	note D_, 1
	rest 1
	note E_, 2
;Bar 30
	note D_, 4
	rest 14
;Bar 31
	;note D_, 0 | WARNING: Rounded down to 0
	rest 2
	note E_, 2
	volume_envelope 13, 7
	note D_, 1
	rest 1
	volume_envelope 14, 7
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 2
	note G_, 4
;Bar 32
	note G_, 3
	rest 16
	rest 13
;Bar 34
	note C_, 1
	rest 5
	note C_, 2
	note C_, 4
	note D_, 3
;Bar 35
	rest 16
	rest 7
;Bar 36
	note G_, 1
	note E_, 1
	note G_, 6
;Bar 37
	note D_, 2
	note C_, 2
	rest 16
	rest 4
;Bar 38
	note C_, 2
	note C_, 2
	note C_, 2
	note F_, 2
;Bar 39
	rest 16
	rest 8
;Bar 40
	note G_, 1
	note E_, 1
	note G_, 6
;Bar 41
	note E_, 2
	note C_, 2
	rest 16
	rest 8
;Bar 42
	note A#, 3
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 11
;Bar 50
	note C_, 2
	note C_, 2
	volume_envelope 13, 7
	note F_, 4
;Bar 51
	rest 16
	rest 4
;Bar 52
	octave 3
	volume_envelope 14, 7
	note A_, 1
	rest 1
	octave 4
	note C_, 1
	octave 3
	volume_envelope 13, 7
	note A_, 1
	octave 4
	volume_envelope 14, 7
	note C_, 2
	rest 2
	note C_, 2
;Bar 53
	octave 3
	note G_, 5
	rest 16
	rest 5
;Bar 54
	octave 4
	note C_, 2
	note C_, 2
	note C_, 2
;Bar 55
	note G_, 1
	rest 3
	note G_, 4
	note D_, 4
	note D_, 2
	rest 2
;Bar 56
	note E_, 2
	note G_, 2
	rest 2
	note C_, 1
	rest 1
	note C_, 2
	octave 3
	note A_, 2
	octave 4
	note D_, 4
;Bar 57
	note D_, 2
	note C_, 2
	rest 16
	rest 6
;Bar 58
	note C_, 1
	rest 1
	note C_, 2
	note D_, 1
	rest 1
;Bar 59
	note E_, 2
	note D_, 2
	note E_, 2
	note D_, 2
	note D_, 1
	rest 1
	volume_envelope 13, 7
	note D_, 2
	volume_envelope 14, 7
	note E_, 2
	note D_, 2
;Bar 60
	note D_, 2
	note D_, 2
	note E_, 2
	volume_envelope 13, 7
	note D_, 2
	volume_envelope 14, 7
	note E_, 2
	note D_, 2
	note E_, 2
	note D_, 2
;Bar 61
	note D_, 3
	rest 15
;Bar 62
	note D_, 1
	rest 1
	note E_, 2
	note D_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 2
	note D_, 1
	rest 1
	note E_, 2
;Bar 63
	note D_, 4
	rest 14
;Bar 64
	;note D_, 0 | WARNING: Rounded down to 0
	rest 2
	note E_, 2
	volume_envelope 13, 7
	note D_, 1
	rest 1
	volume_envelope 14, 7
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 2
	note G_, 4
;Bar 65
	note G_, 3
	rest 16
	rest 13
;Bar 67
	note C_, 1
	rest 5
	note C_, 2
	note C_, 4
	note D_, 3
;Bar 68
	rest 16
	rest 7
;Bar 69
	note G_, 1
	note E_, 1
	note G_, 6
;Bar 70
	note D_, 2
	note C_, 2
	rest 16
	rest 4
;Bar 71
	note C_, 2
	note C_, 2
	note C_, 2
	note F_, 2
;Bar 72
	rest 16
	rest 8
;Bar 73
	note G_, 1
	note E_, 1
	note G_, 6
;Bar 74
	note E_, 2
	note C_, 2
	rest 16
	rest 8
;Bar 75
	note A#, 6
	sound_ret

; ============================================================================================================

Music_SSAqua_Ch2:
	duty_cycle 1
	note_type 12, 10, 7
;Bar 1
	volume_envelope 14, 7
	rest 5
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 11
;Bar 26
	octave 3
	volume_envelope 8, 7
	note E_, 16
	note E_, 3
;Bar 27
	rest 13
;Bar 28
	octave 2
	volume_envelope 14, 7
	note F_, 2
	volume_envelope 11, 7
	note A_, 2
	octave 3
	volume_envelope 12, 7
	note C_, 2
	octave 2
	note F_, 2
	volume_envelope 13, 7
	note E_, 2
	volume_envelope 12, 7
	note G_, 2
	octave 3
	note C_, 2
	volume_envelope 14, 7
	note D_, 13
;Bar 29
	rest 5
;Bar 30
	octave 2
	volume_envelope 13, 7
	note F_, 2
	volume_envelope 11, 7
	note A_, 2
	octave 3
	volume_envelope 13, 7
	note C_, 2
	octave 2
	volume_envelope 12, 7
	note F_, 2
	volume_envelope 14, 7
	note E_, 2
	volume_envelope 12, 7
	note G_, 2
	octave 3
	volume_envelope 13, 7
	note C_, 1
	rest 1
	volume_envelope 14, 7
	note D_, 13
;Bar 31
	rest 5
;Bar 32
	octave 2
	note F_, 2
	volume_envelope 12, 7
	note A_, 2
	octave 3
	volume_envelope 14, 7
	note C_, 2
	octave 2
	volume_envelope 12, 7
	note F_, 2
	volume_envelope 14, 7
	note E_, 2
	volume_envelope 12, 7
	note G_, 2
	octave 3
	volume_envelope 13, 7
	note C_, 1
	rest 1
	volume_envelope 14, 7
	note G_, 16
	note G_, 14
;Bar 34
	rest 4
;Bar 35
	octave 2
	volume_envelope 9, 7
	note C_, 1
	rest 1
	volume_envelope 8, 7
	note C_, 1
	rest 1
	volume_envelope 10, 7
	note C_, 1
	rest 1
	volume_envelope 8, 7
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	volume_envelope 7, 7
	;note C_, 0 | WARNING: Rounded down to 0
	rest 2
;Bar 36
	volume_envelope 9, 7
	note C_, 1
	rest 1
	volume_envelope 6, 7
	note C_, 1
	rest 1
	volume_envelope 8, 7
	;note C_, 0 | WARNING: Rounded down to 0
	rest 2
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note C_, 1
	rest 1
;Bar 37
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	volume_envelope 9, 7
	note C_, 1
	rest 1
	volume_envelope 8, 7
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	volume_envelope 9, 7
	note C_, 1
	rest 1
	volume_envelope 10, 7
	note C_, 1
	rest 1
	volume_envelope 11, 7
	;note C_, 0 | WARNING: Rounded down to 0
	rest 2
;Bar 38
	volume_envelope 10, 7
	note C_, 2
	octave 1
	volume_envelope 9, 7
	note F_, 4
	note G_, 10
;Bar 39
	octave 2
	volume_envelope 8, 7
	note C_, 1
	rest 1
	volume_envelope 7, 7
	note C_, 1
	rest 1
	volume_envelope 8, 7
	note C_, 1
	rest 1
	volume_envelope 7, 7
	;note C_, 0 | WARNING: Rounded down to 0
	rest 2
	volume_envelope 8, 7
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note C_, 1
	rest 1
;Bar 40
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	volume_envelope 9, 7
	note C_, 1
	rest 1
	;note C_, 0 | WARNING: Rounded down to 0
	rest 2
	note C_, 1
	rest 1
	volume_envelope 8, 7
	note C_, 1
	rest 1
;Bar 41
	note C_, 1
	rest 1
	;note C_, 0 | WARNING: Rounded down to 0
	rest 2
	volume_envelope 9, 7
	note C_, 1
	rest 1
	volume_envelope 8, 7
	;note C_, 0 | WARNING: Rounded down to 0
	rest 2
	volume_envelope 9, 7
	note C_, 1
	rest 1
	volume_envelope 8, 7
	;note C_, 0 | WARNING: Rounded down to 0
	rest 2
	volume_envelope 9, 7
	;note C_, 0 | WARNING: Rounded down to 0
	rest 2
	;note C_, 0 | WARNING: Rounded down to 0
	rest 2
;Bar 42
	volume_envelope 10, 7
	note C_, 2
	octave 1
	volume_envelope 7, 7
	note F_, 4
	volume_envelope 8, 7
	note G_, 9
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 1
;Bar 59
	octave 3
	note E_, 16
	note E_, 3
;Bar 60
	rest 13
;Bar 61
	octave 2
	volume_envelope 14, 7
	note F_, 2
	volume_envelope 11, 7
	note A_, 2
	octave 3
	volume_envelope 12, 7
	note C_, 2
	octave 2
	note F_, 2
	volume_envelope 13, 7
	note E_, 2
	volume_envelope 12, 7
	note G_, 2
	octave 3
	note C_, 2
	volume_envelope 14, 7
	note D_, 13
;Bar 62
	rest 5
;Bar 63
	octave 2
	volume_envelope 13, 7
	note F_, 2
	volume_envelope 11, 7
	note A_, 2
	octave 3
	volume_envelope 13, 7
	note C_, 2
	octave 2
	volume_envelope 12, 7
	note F_, 2
	volume_envelope 14, 7
	note E_, 2
	volume_envelope 12, 7
	note G_, 2
	octave 3
	volume_envelope 13, 7
	note C_, 1
	rest 1
	volume_envelope 14, 7
	note D_, 13
;Bar 64
	rest 5
;Bar 65
	octave 2
	note F_, 2
	volume_envelope 12, 7
	note A_, 2
	octave 3
	volume_envelope 14, 7
	note C_, 2
	octave 2
	volume_envelope 12, 7
	note F_, 2
	volume_envelope 14, 7
	note E_, 2
	volume_envelope 12, 7
	note G_, 2
	octave 3
	volume_envelope 13, 7
	note C_, 1
	rest 1
	volume_envelope 14, 7
	note G_, 16
	note G_, 14
;Bar 67
	rest 4
;Bar 68
	octave 2
	volume_envelope 9, 7
	note C_, 1
	rest 1
	volume_envelope 8, 7
	note C_, 1
	rest 1
	volume_envelope 10, 7
	note C_, 1
	rest 1
	volume_envelope 8, 7
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	volume_envelope 7, 7
	;note C_, 0 | WARNING: Rounded down to 0
	rest 2
;Bar 69
	volume_envelope 9, 7
	note C_, 1
	rest 1
	volume_envelope 6, 7
	note C_, 1
	rest 1
	volume_envelope 8, 7
	;note C_, 0 | WARNING: Rounded down to 0
	rest 2
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note C_, 1
	rest 1
;Bar 70
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	volume_envelope 9, 7
	note C_, 1
	rest 1
	volume_envelope 8, 7
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	volume_envelope 9, 7
	note C_, 1
	rest 1
	volume_envelope 10, 7
	note C_, 1
	rest 1
	volume_envelope 11, 7
	;note C_, 0 | WARNING: Rounded down to 0
	rest 2
;Bar 71
	volume_envelope 10, 7
	note C_, 2
	octave 1
	volume_envelope 9, 7
	note F_, 4
	note G_, 10
;Bar 72
	octave 2
	volume_envelope 8, 7
	note C_, 1
	rest 1
	volume_envelope 7, 7
	note C_, 1
	rest 1
	volume_envelope 8, 7
	note C_, 1
	rest 1
	volume_envelope 7, 7
	;note C_, 0 | WARNING: Rounded down to 0
	rest 2
	volume_envelope 8, 7
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note C_, 1
	rest 1
;Bar 73
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	volume_envelope 9, 7
	note C_, 1
	rest 1
	;note C_, 0 | WARNING: Rounded down to 0
	rest 2
	note C_, 1
	rest 1
	volume_envelope 8, 7
	note C_, 1
	rest 1
;Bar 74
	note C_, 1
	rest 1
	;note C_, 0 | WARNING: Rounded down to 0
	rest 2
	volume_envelope 9, 7
	note C_, 1
	rest 1
	volume_envelope 8, 7
	;note C_, 0 | WARNING: Rounded down to 0
	rest 2
	volume_envelope 9, 7
	note C_, 1
	rest 1
	volume_envelope 8, 7
	;note C_, 0 | WARNING: Rounded down to 0
	rest 2
	volume_envelope 9, 7
	;note C_, 0 | WARNING: Rounded down to 0
	rest 2
	;note C_, 0 | WARNING: Rounded down to 0
	rest 2
;Bar 75
	volume_envelope 10, 7
	note C_, 2
	octave 1
	volume_envelope 7, 7
	note F_, 4
	volume_envelope 8, 7
	note G_, 9
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 1
;Bar 84
	octave 2
	volume_envelope 12, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 3
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	note G_, 16
	note G_, 16
;Bar 86
	octave 3
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	;note G_, 0 | WARNING: Rounded down to 0
	note C_, 16
	note C_, 16
;Bar 88
	;note F_, 0 | WARNING: Rounded down to 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 1
	note F_, 16
	note F_, 16
;Bar 90
	octave 2
	;note G_, 0 | WARNING: Rounded down to 0
	;note D_, 0 | WARNING: Rounded down to 0
	octave 1
	note G_, 16
	note G_, 16
;Bar 92
	octave 2
	;note A#, 0 | WARNING: Rounded down to 0
	;note F_, 0 | WARNING: Rounded down to 0
	octave 1
	note A#, 16
	note A#, 16
;Bar 94
	octave 2
	;note A_, 0 | WARNING: Rounded down to 0
	;note E_, 0 | WARNING: Rounded down to 0
	octave 1
	note A_, 16
	note A_, 16
;Bar 96
	octave 2
	;note G#, 0 | WARNING: Rounded down to 0
	;note D#, 0 | WARNING: Rounded down to 0
	octave 1
	note G#, 16
	note G#, 16
;Bar 98
	octave 2
	;note G_, 0 | WARNING: Rounded down to 0
	;note D_, 0 | WARNING: Rounded down to 0
	octave 1
	note G_, 16
	note G_, 16
	note G_, 2
;Bar 100
	octave 3
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	;note G_, 0 | WARNING: Rounded down to 0
	note C_, 16
	note C_, 16
	note C_, 16
	note C_, 16
	note C_, 16
	note C_, 4
;Bar 105
	rest 16
	rest 16
	rest 16
	rest 16
	rest 14
;Bar 110
	octave 3
	volume_envelope 6, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 11, 7
	note C_, 1
	rest 1
	volume_envelope 7, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 3
	volume_envelope 5, 7
	note C_, 1
	rest 1
	octave 2
	volume_envelope 11, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 3
	volume_envelope 9, 7
	note C_, 1
	rest 1
	octave 2
	volume_envelope 7, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 3
	volume_envelope 5, 7
	note C_, 1
	rest 1
	volume_envelope 6, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 10, 7
	note C_, 1
	rest 1
	octave 3
	volume_envelope 7, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 8, 7
	note C_, 1
	rest 1
;Bar 111
	octave 3
	volume_envelope 7, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 8, 7
	note C_, 1
	rest 1
	octave 3
	volume_envelope 5, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 6, 7
	note C_, 1
	rest 1
	volume_envelope 10, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 3
	volume_envelope 9, 7
	note C_, 1
	rest 1
	octave 2
	volume_envelope 7, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 3
	;note C_, 0 | WARNING: Rounded down to 0
	rest 2
	octave 2
	volume_envelope 9, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 3
	volume_envelope 8, 7
	note C_, 1
	rest 1
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 9, 7
	note C_, 1
	rest 1
	volume_envelope 7, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 3
	note C_, 1
	rest 1
	volume_envelope 8, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	note C_, 1
	rest 1
;Bar 112
	octave 3
	volume_envelope 9, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 7, 7
	note C_, 1
	rest 1
	;note C_, 0 | WARNING: Rounded down to 0
	octave 3
	;note C_, 0 | WARNING: Rounded down to 0
	rest 2
	octave 2
	volume_envelope 8, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 3
	note C_, 1
	rest 1
	octave 2
	volume_envelope 7, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 3
	volume_envelope 8, 7
	note C_, 1
	rest 1
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 7, 7
	note C_, 1
	rest 1
	octave 3
	volume_envelope 8, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	note C_, 1
	rest 1
	octave 3
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	note C_, 1
	rest 1
	octave 3
	volume_envelope 7, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 6, 7
	note C_, 1
	rest 1
;Bar 113
	volume_envelope 8, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 3
	volume_envelope 9, 7
	note C_, 1
	rest 1
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 7, 7
	;note C_, 0 | WARNING: Rounded down to 0
	rest 2
	octave 3
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 8, 7
	note C_, 2
	octave 1
	volume_envelope 7, 7
	;note F_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 8, 7
	note F_, 3
	rest 1
	;note G_, 0 | WARNING: Rounded down to 0
	octave 1
	note G_, 3
	rest 1
	octave 2
	volume_envelope 6, 7
	;note G_, 0 | WARNING: Rounded down to 0
	octave 1
	volume_envelope 8, 7
	note G_, 1
	rest 1
;Bar 114
	octave 2
	volume_envelope 9, 7
	;note G_, 0 | WARNING: Rounded down to 0
	octave 1
	note G_, 1
	rest 1
	volume_envelope 6, 7
	;note G_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 7, 7
	note G_, 1
	rest 1
	octave 3
	volume_envelope 10, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 9, 7
	note C_, 1
	rest 1
	octave 3
	volume_envelope 8, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 6, 7
	note C_, 1
	rest 1
	octave 3
	volume_envelope 12, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 10, 7
	note C_, 2
	octave 3
	volume_envelope 6, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 5, 7
	note C_, 1
	rest 1
	octave 3
	volume_envelope 8, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 7, 7
	note C_, 1
	rest 1
	octave 3
	volume_envelope 9, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 8, 7
	note C_, 1
	rest 1
;Bar 115
	octave 3
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 7, 7
	note C_, 1
	rest 1
	octave 3
	volume_envelope 6, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	;note C_, 0 | WARNING: Rounded down to 0
	rest 2
	octave 3
	volume_envelope 11, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 9, 7
	note C_, 1
	rest 1
	octave 3
	volume_envelope 6, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	note C_, 1
	rest 1
	octave 3
	volume_envelope 8, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	note C_, 1
	rest 1
	octave 3
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 6, 7
	note C_, 1
	rest 1
	octave 3
	volume_envelope 8, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	note C_, 1
	rest 1
	octave 3
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 7, 7
	note C_, 1
	rest 1
;Bar 116
	volume_envelope 8, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 3
	volume_envelope 9, 7
	note C_, 2
	volume_envelope 7, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 5, 7
	;note C_, 0 | WARNING: Rounded down to 0
	rest 2
	octave 3
	volume_envelope 9, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 8, 7
	note C_, 2
	octave 3
	volume_envelope 6, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	note C_, 2
	octave 3
	volume_envelope 8, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	note C_, 1
	rest 1
	octave 3
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 6, 7
	note C_, 2
	octave 3
	volume_envelope 8, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 7, 7
	note C_, 2
	volume_envelope 6, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 3
	volume_envelope 7, 7
	note C_, 1
	rest 1
;Bar 117
	volume_envelope 8, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 7, 7
	note C_, 2
	octave 3
	volume_envelope 8, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 6, 7
	note C_, 2
	octave 3
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	note C_, 2
	octave 1
	volume_envelope 7, 7
	;note F_, 0 | WARNING: Rounded down to 0
	octave 2
	note F_, 4
	octave 1
	volume_envelope 5, 7
	;note G_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 7, 7
	note G_, 4
	;note G_, 0 | WARNING: Rounded down to 0
	octave 1
	volume_envelope 6, 7
	note G_, 2
;Bar 118
	octave 2
	volume_envelope 7, 7
	;note G_, 0 | WARNING: Rounded down to 0
	octave 1
	volume_envelope 6, 7
	note G_, 2
	volume_envelope 4, 7
	;note G_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 6, 7
	note G_, 2
	octave 3
	volume_envelope 8, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 6, 7
	note C_, 2
	octave 3
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 4, 7
	note C_, 2
	octave 3
	volume_envelope 8, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 7, 7
	note C_, 2
	octave 3
	volume_envelope 8, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 5, 7
	note C_, 2
	volume_envelope 8, 7
	;note B_, 0 | WARNING: Rounded down to 0
	volume_envelope 6, 7
	note C_, 2
	volume_envelope 7, 7
	;note B_, 0 | WARNING: Rounded down to 0
	volume_envelope 5, 7
	note C_, 2
;Bar 119
	octave 3
	volume_envelope 8, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 5, 7
	note C_, 2
	volume_envelope 6, 7
	;note A_, 0 | WARNING: Rounded down to 0
	volume_envelope 4, 7
	note C_, 2
	volume_envelope 6, 7
	;note A_, 0 | WARNING: Rounded down to 0
	volume_envelope 4, 7
	note C_, 2
	volume_envelope 6, 7
	;note A_, 0 | WARNING: Rounded down to 0
	volume_envelope 4, 7
	note C_, 2
	octave 3
	volume_envelope 7, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 4, 7
	note C_, 2
	octave 3
	volume_envelope 6, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 4, 7
	note C_, 2
	volume_envelope 7, 7
	;note B_, 0 | WARNING: Rounded down to 0
	volume_envelope 5, 7
	note C_, 2
	volume_envelope 6, 7
	;note B_, 0 | WARNING: Rounded down to 0
	volume_envelope 4, 7
	note C_, 2
;Bar 120
	octave 3
	volume_envelope 6, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 4, 7
	note C_, 2
	volume_envelope 6, 7
	;note G_, 0 | WARNING: Rounded down to 0
	volume_envelope 4, 7
	note C_, 2
	volume_envelope 6, 7
	;note G_, 0 | WARNING: Rounded down to 0
	volume_envelope 4, 7
	note C_, 2
	volume_envelope 5, 7
	;note G_, 0 | WARNING: Rounded down to 0
	volume_envelope 3, 7
	note C_, 2
	octave 3
	volume_envelope 6, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 5, 7
	note C_, 2
	octave 3
	volume_envelope 3, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	note C_, 2
	octave 3
	volume_envelope 5, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 4, 7
	note C_, 2
	octave 3
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 3, 7
	note C_, 2
;Bar 121
	octave 3
	volume_envelope 5, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 4, 7
	note C_, 2
	octave 3
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 3, 7
	note C_, 2
	octave 3
	volume_envelope 4, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 3, 7
	note C_, 2
	volume_envelope 4, 7
	;note F_, 0 | WARNING: Rounded down to 0
	octave 1
	note F_, 4
	octave 2
	;note G_, 0 | WARNING: Rounded down to 0
	octave 1
	volume_envelope 3, 7
	note G_, 2
	rest 2
	octave 2
	;note G_, 0 | WARNING: Rounded down to 0
	octave 1
	volume_envelope 2, 7
	note G_, 1
	rest 1
;Bar 122
	octave 2
	volume_envelope 4, 7
	;note G_, 0 | WARNING: Rounded down to 0
	octave 1
	volume_envelope 3, 7
	note G_, 2
	octave 2
	volume_envelope 2, 7
	;note G_, 0 | WARNING: Rounded down to 0
	octave 1
	note G_, 2
	octave 3
	volume_envelope 3, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 2, 7
	note C_, 1
	rest 1
	octave 3
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 1, 7
	note C_, 2
	octave 3
	volume_envelope 3, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	note C_, 2
	octave 3
	volume_envelope 2, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 1, 7
	note C_, 1
	rest 1
	octave 3
	volume_envelope 2, 7
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	note C_, 2
	octave 3
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	note C_, 2
;Bar 123
	octave 3
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	note C_, 1
	rest 1
	octave 3
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	note C_, 2
	octave 3
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 1, 7
	note C_, 2
	octave 3
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	;note C_, 0 | WARNING: Rounded down to 0
	rest 2
	octave 3
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	note C_, 2
	;note C_, 0 | WARNING: Rounded down to 0
	octave 3
	note C_, 2
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	note C_, 1
	rest 1
	octave 3
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	note C_, 2
;Bar 124
	octave 3
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 10, 7
	note C_, 2
	octave 3
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	;note C_, 0 | WARNING: Rounded down to 0
	rest 2
	octave 3
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	note C_, 2
	octave 3
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	note C_, 2
	octave 3
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	note C_, 1
	rest 1
	octave 3
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	note C_, 2
	;note C_, 0 | WARNING: Rounded down to 0
	octave 3
	note C_, 2
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	note C_, 1
	rest 1
;Bar 125
	;note C_, 0 | WARNING: Rounded down to 0
	octave 3
	note C_, 2
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	note C_, 2
	octave 3
	;note C_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 3, 7
	note C_, 2
	;note F_, 0 | WARNING: Rounded down to 0
	octave 1
	volume_envelope 10, 7
	note F_, 1
	rest 3
	octave 2
	;note G_, 0 | WARNING: Rounded down to 0
	octave 1
	note G_, 4
	octave 2
	;note G_, 0 | WARNING: Rounded down to 0
	octave 1
	note G_, 1
	rest 1
;Bar 126
	octave 2
	;note G_, 0 | WARNING: Rounded down to 0
	octave 1
	note G_, 1
	sound_ret

; ============================================================================================================

Music_SSAqua_Ch3:
	note_type 12, 1, 0
;Bar 1
	volume_envelope 3, 0
	rest 5
	rest 15
;Bar 2
	octave 5
	volume_envelope 2, 0
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 2
	rest 4
	octave 5
	;note E_, 0 | WARNING: Rounded down to 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	note G_, 2
	rest 4
;Bar 3
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 2
	rest 4
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 2
	rest 2
	octave 5
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 2
	rest 2
	octave 5
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 6 ; WARNING: Auto-Sync says: Rounded up!
;Bar 4
	octave 5
	;note E_, 0 | WARNING: Rounded down to 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	note G_, 2
	rest 4
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 2
	rest 2
	volume_envelope 1, 0
	;note A_, 0 | WARNING: Rounded down to 0
	;note F_, 0 | WARNING: Rounded down to 0
	note C_, 4
;Bar 5
	volume_envelope 2, 0
	;note G_, 0 | WARNING: Rounded down to 0
	note E_, 2
	rest 2
	volume_envelope 1, 0
	;note G_, 0 | WARNING: Rounded down to 0
	;note D_, 0 | WARNING: Rounded down to 0
	note C_, 10
;Bar 6
	rest 4
	octave 5
	volume_envelope 2, 0
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 2 ; WARNING: Auto-Sync says: Rounded up!
	rest 4
	octave 5
	;note E_, 0 | WARNING: Rounded down to 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	note G_, 2
	rest 4
;Bar 7
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 2
	rest 4
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 2
	rest 2
	octave 5
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 2
	rest 2
	octave 5
	volume_envelope 1, 0
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	volume_envelope 2, 0
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 4
;Bar 8
	rest 2
	octave 5
	;note E_, 0 | WARNING: Rounded down to 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	note G_, 2
	rest 4
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 2
	rest 2
	volume_envelope 1, 0
	;note A_, 0 | WARNING: Rounded down to 0
	;note F_, 0 | WARNING: Rounded down to 0
	note C_, 4
;Bar 9
	volume_envelope 2, 0
	;note G_, 0 | WARNING: Rounded down to 0
	note E_, 2
	rest 2
	volume_envelope 1, 0
	;note G_, 0 | WARNING: Rounded down to 0
	;note D_, 0 | WARNING: Rounded down to 0
	note C_, 10
;Bar 10
	rest 4
	octave 5
	volume_envelope 2, 0
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 2
	rest 4
	octave 5
	;note E_, 0 | WARNING: Rounded down to 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	note G_, 2
	rest 4
;Bar 11
	octave 5
	volume_envelope 1, 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 2
	rest 4
	octave 5
	volume_envelope 2, 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 1
	rest 3
	octave 5
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 1
	rest 3
	octave 5
	volume_envelope 1, 0
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	volume_envelope 2, 0
	note G_, 3
;Bar 12
	rest 3
	octave 5
	;note E_, 0 | WARNING: Rounded down to 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	note G_, 2 ; WARNING: Auto-Sync says: Rounded up!
	rest 4
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 1
	rest 3
	volume_envelope 1, 0
	;note A_, 0 | WARNING: Rounded down to 0
	;note F_, 0 | WARNING: Rounded down to 0
	volume_envelope 2, 0
	note C_, 4
;Bar 13
	;note G_, 0 | WARNING: Rounded down to 0
	note E_, 2
	rest 2
	volume_envelope 1, 0
	;note G_, 0 | WARNING: Rounded down to 0
	volume_envelope 2, 0
	;note D_, 0 | WARNING: Rounded down to 0
	volume_envelope 1, 0
	note C_, 10
;Bar 14
	rest 4
	octave 6
	volume_envelope 2, 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 5
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 2
	rest 4
	octave 6
	;note C_, 0 | WARNING: Rounded down to 0
	octave 5
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 2
	rest 4
;Bar 15
	octave 6
	;note C_, 0 | WARNING: Rounded down to 0
	octave 5
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 2
	rest 4
	octave 6
	;note C_, 0 | WARNING: Rounded down to 0
	octave 5
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 2 ; WARNING: Auto-Sync says: Rounded down!
	rest 4
	;note G_, 0 | WARNING: Rounded down to 0
	;note E_, 0 | WARNING: Rounded down to 0
	note C_, 3
	rest 5
;Bar 16
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	volume_envelope 1, 0
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 2
	rest 4
	volume_envelope 2, 0
	;note A_, 0 | WARNING: Rounded down to 0
	;note F_, 0 | WARNING: Rounded down to 0
	note C_, 2 ; WARNING: Auto-Sync says: Rounded down!
	rest 2
	volume_envelope 1, 0
	;note A_, 0 | WARNING: Rounded down to 0
	;note F_, 0 | WARNING: Rounded down to 0
	note C_, 4
;Bar 17
	volume_envelope 2, 0
	;note G_, 0 | WARNING: Rounded down to 0
	note E_, 2 ; WARNING: Auto-Sync says: Rounded up!
	rest 2
	volume_envelope 1, 0
	;note G_, 0 | WARNING: Rounded down to 0
	;note D_, 0 | WARNING: Rounded down to 0
	note C_, 7
	rest 7
;Bar 18
	octave 5
	volume_envelope 2, 0
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	volume_envelope 1, 0
	;note B_, 0 | WARNING: Rounded down to 0
	volume_envelope 2, 0
	note G_, 2
	rest 4
	octave 5
	;note E_, 0 | WARNING: Rounded down to 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	note G_, 2 ; WARNING: Auto-Sync says: Rounded down!
	rest 4
;Bar 19
	octave 5
	volume_envelope 1, 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	volume_envelope 2, 0
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 2
	rest 4
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 1
	rest 3
	octave 5
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 1
	rest 3
	octave 5
	volume_envelope 1, 0
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	volume_envelope 2, 0
	;note B_, 0 | WARNING: Rounded down to 0
	volume_envelope 1, 0
	note G_, 1
	rest 5
;Bar 20
	octave 5
	volume_envelope 2, 0
	;note E_, 0 | WARNING: Rounded down to 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	note G_, 2
	rest 4
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 1
	rest 3
	volume_envelope 1, 0
	;note A_, 0 | WARNING: Rounded down to 0
	volume_envelope 2, 0
	;note F_, 0 | WARNING: Rounded down to 0
	volume_envelope 1, 0
	note C_, 4
;Bar 21
	volume_envelope 2, 0
	;note G_, 0 | WARNING: Rounded down to 0
	note E_, 2
	rest 2
	volume_envelope 1, 0
	;note G_, 0 | WARNING: Rounded down to 0
	volume_envelope 2, 0
	;note D_, 0 | WARNING: Rounded down to 0
	volume_envelope 1, 0
	note C_, 6
	rest 8
;Bar 22
	octave 5
	volume_envelope 2, 0
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 2
	rest 4
	octave 5
	;note E_, 0 | WARNING: Rounded down to 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	note G_, 2
	rest 4
;Bar 23
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	volume_envelope 1, 0
	note F_, 2
	rest 4
	octave 5
	volume_envelope 2, 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 1
	rest 3
	octave 5
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 1
	rest 3
	octave 5
	volume_envelope 1, 0
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	volume_envelope 2, 0
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 2
;Bar 24
	rest 4
	octave 5
	;note E_, 0 | WARNING: Rounded down to 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	note G_, 2
	rest 4
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 1
	rest 3
	volume_envelope 1, 0
	;note A_, 0 | WARNING: Rounded down to 0
	;note F_, 0 | WARNING: Rounded down to 0
	note C_, 4
;Bar 25
	volume_envelope 2, 0
	;note G_, 0 | WARNING: Rounded down to 0
	note E_, 2
	rest 2
	volume_envelope 1, 0
	;note G_, 0 | WARNING: Rounded down to 0
	;note D_, 0 | WARNING: Rounded down to 0
	note C_, 7
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 7
;Bar 35
	octave 5
	volume_envelope 2, 0
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 2
	rest 4
	octave 5
	;note E_, 0 | WARNING: Rounded down to 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	note G_, 2
	rest 4
;Bar 36
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 2
	rest 4
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 2
	rest 2
	octave 5
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 2
	rest 2
	octave 5
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 6
;Bar 37
	octave 5
	;note E_, 0 | WARNING: Rounded down to 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	note G_, 2
	rest 4
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 2
	rest 2
	volume_envelope 1, 0
	;note A_, 0 | WARNING: Rounded down to 0
	;note F_, 0 | WARNING: Rounded down to 0
	note C_, 4
;Bar 38
	volume_envelope 2, 0
	;note G_, 0 | WARNING: Rounded down to 0
	note E_, 2
	rest 2
	volume_envelope 1, 0
	;note G_, 0 | WARNING: Rounded down to 0
	;note D_, 0 | WARNING: Rounded down to 0
	note C_, 10
;Bar 39
	rest 4
	octave 5
	volume_envelope 2, 0
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 2
	rest 4
	octave 5
	;note E_, 0 | WARNING: Rounded down to 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	note G_, 2
	rest 4
;Bar 40
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 2
	rest 4
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 2
	rest 2
	octave 5
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 2
	rest 2
	octave 5
	volume_envelope 1, 0
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	volume_envelope 2, 0
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 4
;Bar 41
	rest 2
	octave 5
	;note E_, 0 | WARNING: Rounded down to 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	note G_, 2
	rest 4
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 2
	rest 2
	volume_envelope 1, 0
	;note A_, 0 | WARNING: Rounded down to 0
	;note F_, 0 | WARNING: Rounded down to 0
	note C_, 4
;Bar 42
	volume_envelope 2, 0
	;note G_, 0 | WARNING: Rounded down to 0
	note E_, 2
	rest 2
	volume_envelope 1, 0
	;note G_, 0 | WARNING: Rounded down to 0
	;note D_, 0 | WARNING: Rounded down to 0
	note C_, 10
;Bar 43
	rest 4
	octave 5
	volume_envelope 2, 0
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 2
	rest 4
	octave 5
	;note E_, 0 | WARNING: Rounded down to 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	note G_, 2
	rest 4
;Bar 44
	octave 5
	volume_envelope 1, 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 2
	rest 4
	octave 5
	volume_envelope 2, 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 1
	rest 3
	octave 5
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 1
	rest 3
	octave 5
	volume_envelope 1, 0
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	volume_envelope 2, 0
	note G_, 3
;Bar 45
	rest 3
	octave 5
	;note E_, 0 | WARNING: Rounded down to 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	note G_, 2
	rest 4
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 1
	rest 3
	volume_envelope 1, 0
	;note A_, 0 | WARNING: Rounded down to 0
	;note F_, 0 | WARNING: Rounded down to 0
	volume_envelope 2, 0
	note C_, 4
;Bar 46
	;note G_, 0 | WARNING: Rounded down to 0
	note E_, 2
	rest 2
	volume_envelope 1, 0
	;note G_, 0 | WARNING: Rounded down to 0
	volume_envelope 2, 0
	;note D_, 0 | WARNING: Rounded down to 0
	volume_envelope 1, 0
	note C_, 10
;Bar 47
	rest 4
	octave 6
	volume_envelope 2, 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 5
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 2
	rest 4
	octave 6
	;note C_, 0 | WARNING: Rounded down to 0
	octave 5
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 2
	rest 4
;Bar 48
	octave 6
	;note C_, 0 | WARNING: Rounded down to 0
	octave 5
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 2
	rest 4
	octave 6
	;note C_, 0 | WARNING: Rounded down to 0
	octave 5
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 2
	rest 4
	;note G_, 0 | WARNING: Rounded down to 0
	;note E_, 0 | WARNING: Rounded down to 0
	note C_, 3
	rest 5
;Bar 49
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	volume_envelope 1, 0
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 2
	rest 4
	volume_envelope 2, 0
	;note A_, 0 | WARNING: Rounded down to 0
	;note F_, 0 | WARNING: Rounded down to 0
	note C_, 2
	rest 2
	volume_envelope 1, 0
	;note A_, 0 | WARNING: Rounded down to 0
	;note F_, 0 | WARNING: Rounded down to 0
	note C_, 4
;Bar 50
	volume_envelope 2, 0
	;note G_, 0 | WARNING: Rounded down to 0
	note E_, 2
	rest 2
	volume_envelope 1, 0
	;note G_, 0 | WARNING: Rounded down to 0
	;note D_, 0 | WARNING: Rounded down to 0
	note C_, 7
	rest 7
;Bar 51
	octave 5
	volume_envelope 2, 0
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	volume_envelope 1, 0
	;note B_, 0 | WARNING: Rounded down to 0
	volume_envelope 2, 0
	note G_, 2
	rest 4
	octave 5
	;note E_, 0 | WARNING: Rounded down to 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	note G_, 2
	rest 4
;Bar 52
	octave 5
	volume_envelope 1, 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	volume_envelope 2, 0
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 2
	rest 4
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 1
	rest 3
	octave 5
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 1
	rest 3
	octave 5
	volume_envelope 1, 0
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	volume_envelope 2, 0
	;note B_, 0 | WARNING: Rounded down to 0
	volume_envelope 1, 0
	note G_, 1
	rest 5
;Bar 53
	octave 5
	volume_envelope 2, 0
	;note E_, 0 | WARNING: Rounded down to 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	note G_, 2
	rest 4
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 1
	rest 3
	volume_envelope 1, 0
	;note A_, 0 | WARNING: Rounded down to 0
	volume_envelope 2, 0
	;note F_, 0 | WARNING: Rounded down to 0
	volume_envelope 1, 0
	note C_, 4
;Bar 54
	volume_envelope 2, 0
	;note G_, 0 | WARNING: Rounded down to 0
	note E_, 2
	rest 2
	volume_envelope 1, 0
	;note G_, 0 | WARNING: Rounded down to 0
	volume_envelope 2, 0
	;note D_, 0 | WARNING: Rounded down to 0
	volume_envelope 1, 0
	note C_, 6
	rest 8
;Bar 55
	octave 5
	volume_envelope 2, 0
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 2
	rest 4
	octave 5
	;note E_, 0 | WARNING: Rounded down to 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	note G_, 2
	rest 4
;Bar 56
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	volume_envelope 1, 0
	note F_, 2
	rest 4
	octave 5
	volume_envelope 2, 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 1
	rest 3
	octave 5
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 1
	rest 3
	octave 5
	volume_envelope 1, 0
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	volume_envelope 2, 0
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 2
;Bar 57
	rest 4
	octave 5
	;note E_, 0 | WARNING: Rounded down to 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	note G_, 2
	rest 4
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 1
	rest 3
	volume_envelope 1, 0
	;note A_, 0 | WARNING: Rounded down to 0
	;note F_, 0 | WARNING: Rounded down to 0
	note C_, 4
;Bar 58
	volume_envelope 2, 0
	;note G_, 0 | WARNING: Rounded down to 0
	note E_, 2
	rest 2
	volume_envelope 1, 0
	;note G_, 0 | WARNING: Rounded down to 0
	;note D_, 0 | WARNING: Rounded down to 0
	note C_, 7
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 7
;Bar 68
	octave 5
	volume_envelope 2, 0
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 2
	rest 4
	octave 5
	;note E_, 0 | WARNING: Rounded down to 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	note G_, 2
	rest 4
;Bar 69
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 2
	rest 4
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 2
	rest 2
	octave 5
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 2
	rest 2
	octave 5
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 6
;Bar 70
	octave 5
	;note E_, 0 | WARNING: Rounded down to 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	note G_, 2
	rest 4
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 2
	rest 2
	volume_envelope 1, 0
	;note A_, 0 | WARNING: Rounded down to 0
	;note F_, 0 | WARNING: Rounded down to 0
	note C_, 4
;Bar 71
	volume_envelope 2, 0
	;note G_, 0 | WARNING: Rounded down to 0
	note E_, 2
	rest 2
	volume_envelope 1, 0
	;note G_, 0 | WARNING: Rounded down to 0
	;note D_, 0 | WARNING: Rounded down to 0
	note C_, 10
;Bar 72
	rest 4
	octave 5
	volume_envelope 2, 0
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 2
	rest 4
	octave 5
	;note E_, 0 | WARNING: Rounded down to 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	note G_, 2
	rest 4
;Bar 73
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 2
	rest 4
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 2
	rest 2
	octave 5
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 2
	rest 2
	octave 5
	volume_envelope 1, 0
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	volume_envelope 2, 0
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 4
;Bar 74
	rest 2
	octave 5
	;note E_, 0 | WARNING: Rounded down to 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	note G_, 2
	rest 4
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 2
	rest 2
	volume_envelope 1, 0
	;note A_, 0 | WARNING: Rounded down to 0
	;note F_, 0 | WARNING: Rounded down to 0
	note C_, 4
;Bar 75
	volume_envelope 2, 0
	;note G_, 0 | WARNING: Rounded down to 0
	note E_, 2
	rest 2
	volume_envelope 1, 0
	;note G_, 0 | WARNING: Rounded down to 0
	;note D_, 0 | WARNING: Rounded down to 0
	note C_, 10
;Bar 76
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 8
;Bar 102
	octave 5
	volume_envelope 2, 0
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 2
	rest 4
	octave 5
	;note E_, 0 | WARNING: Rounded down to 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note G_, 0 | WARNING: Rounded down to 0
	rest 6
;Bar 103
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 2
	rest 4
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	;note F_, 0 | WARNING: Rounded down to 0
	rest 4
	octave 5
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 3
;Bar 104
	rest 1
	octave 5
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 1
	rest 5
	octave 5
	;note E_, 0 | WARNING: Rounded down to 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	note G_, 3
	rest 3
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 1
	rest 3
;Bar 105
	volume_envelope 1, 0
	;note A_, 0 | WARNING: Rounded down to 0
	;note F_, 0 | WARNING: Rounded down to 0
	note C_, 4
	volume_envelope 2, 0
	;note G_, 0 | WARNING: Rounded down to 0
	note E_, 3
	rest 1
	volume_envelope 1, 0
	;note G_, 0 | WARNING: Rounded down to 0
	;note D_, 0 | WARNING: Rounded down to 0
	note C_, 3
	rest 11
;Bar 106
	octave 5
	volume_envelope 2, 0
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	;note G_, 0 | WARNING: Rounded down to 0
	rest 6
	octave 5
	;note E_, 0 | WARNING: Rounded down to 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	note G_, 3
;Bar 107
	rest 3
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	;note F_, 0 | WARNING: Rounded down to 0
	rest 6
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 3
	rest 1
	octave 5
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 1
	rest 3
;Bar 108
	octave 5
	volume_envelope 1, 0
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	volume_envelope 2, 0
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 4
	rest 2
	octave 5
	;note E_, 0 | WARNING: Rounded down to 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	note G_, 2
	rest 4
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 3
;Bar 109
	rest 1
	volume_envelope 1, 0
	;note A_, 0 | WARNING: Rounded down to 0
	;note F_, 0 | WARNING: Rounded down to 0
	note C_, 1
	rest 3
	volume_envelope 2, 0
	;note G_, 0 | WARNING: Rounded down to 0
	note E_, 1
	rest 3
	volume_envelope 1, 0
	;note G_, 0 | WARNING: Rounded down to 0
	;note D_, 0 | WARNING: Rounded down to 0
	note C_, 1
	rest 13
;Bar 110
	octave 5
	volume_envelope 2, 0
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 3
	rest 3
	octave 5
	;note E_, 0 | WARNING: Rounded down to 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note G_, 0 | WARNING: Rounded down to 0
	rest 6
;Bar 111
	octave 5
	volume_envelope 1, 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 2
	rest 4
	octave 5
	volume_envelope 2, 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 1
	rest 3
	octave 5
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 3
;Bar 112
	rest 1
	octave 5
	volume_envelope 1, 0
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	volume_envelope 2, 0
	note G_, 4
	rest 2
	octave 5
	;note E_, 0 | WARNING: Rounded down to 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	note G_, 2
	rest 4
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 1
	rest 3
;Bar 113
	volume_envelope 1, 0
	;note A_, 0 | WARNING: Rounded down to 0
	;note F_, 0 | WARNING: Rounded down to 0
	volume_envelope 2, 0
	note C_, 4
	;note G_, 0 | WARNING: Rounded down to 0
	note E_, 3
	rest 1
	volume_envelope 1, 0
	;note G_, 0 | WARNING: Rounded down to 0
	volume_envelope 2, 0
	;note D_, 0 | WARNING: Rounded down to 0
	volume_envelope 1, 0
	note C_, 3
	rest 11
;Bar 114
	octave 5
	volume_envelope 2, 0
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 1
	rest 5
	octave 5
	;note E_, 0 | WARNING: Rounded down to 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	note G_, 3
;Bar 115
	rest 3
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 1
	rest 5
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 3
	rest 1
	octave 5
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 3
;Bar 116
	rest 1
	octave 5
	volume_envelope 1, 0
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	volume_envelope 2, 0
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 3
	rest 3
	octave 5
	;note E_, 0 | WARNING: Rounded down to 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	note G_, 1
	rest 5
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 1
	rest 3
;Bar 117
	;note A_, 0 | WARNING: Rounded down to 0
	;note F_, 0 | WARNING: Rounded down to 0
	note C_, 4
	;note G_, 0 | WARNING: Rounded down to 0
	note E_, 1
	rest 3
	;note G_, 0 | WARNING: Rounded down to 0
	;note D_, 0 | WARNING: Rounded down to 0
	note C_, 1
	rest 13
;Bar 118
	octave 5
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 3
	rest 3
	octave 5
	;note E_, 0 | WARNING: Rounded down to 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	note G_, 3
;Bar 119
	rest 3
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 3
	rest 3
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 3
	rest 1
	octave 5
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 2
;Bar 120
	rest 2
	octave 5
	;note D_, 0 | WARNING: Rounded down to 0
	octave 4
	;note B_, 0 | WARNING: Rounded down to 0
	note G_, 4
	rest 2
	octave 5
	;note E_, 0 | WARNING: Rounded down to 0
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	note G_, 3
	rest 3
	octave 5
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 1
	rest 3
;Bar 121
	;note A_, 0 | WARNING: Rounded down to 0
	;note F_, 0 | WARNING: Rounded down to 0
	note C_, 4
	volume_envelope 3, 0
	;note G_, 0 | WARNING: Rounded down to 0
	note E_, 3
	rest 1
	volume_envelope 2, 0
	;note G_, 0 | WARNING: Rounded down to 0
	;note D_, 0 | WARNING: Rounded down to 0
	volume_envelope 3, 0
	note C_, 1
	rest 13
;Bar 122
	octave 6
	;note C_, 0 | WARNING: Rounded down to 0
	octave 5
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 3
	rest 3
	octave 6
	;note C_, 0 | WARNING: Rounded down to 0
	octave 5
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 1
	rest 5
;Bar 123
	octave 6
	;note C_, 0 | WARNING: Rounded down to 0
	octave 5
	;note A_, 0 | WARNING: Rounded down to 0
	note F_, 1
	rest 5
	octave 6
	;note C_, 0 | WARNING: Rounded down to 0
	octave 5
	;note A_, 0 | WARNING: Rounded down to 0
	;note F_, 0 | WARNING: Rounded down to 0
	rest 6
;Bar 124
	;note G_, 0 | WARNING: Rounded down to 0
	;note E_, 0 | WARNING: Rounded down to 0
	note C_, 4
	rest 4
	;note C_, 0 | WARNING: Rounded down to 0
	octave 4
	;note A_, 0 | WARNING: Rounded down to 0
	volume_envelope 2, 0
	note F_, 1
	rest 5
	;note A_, 0 | WARNING: Rounded down to 0
	;note F_, 0 | WARNING: Rounded down to 0
	note C_, 1
	rest 3
;Bar 125
	;note A_, 0 | WARNING: Rounded down to 0
	;note F_, 0 | WARNING: Rounded down to 0
	note C_, 1
	rest 3
	;note G_, 0 | WARNING: Rounded down to 0
	volume_envelope 1, 0
	note E_, 2
	rest 2
	;note G_, 0 | WARNING: Rounded down to 0
	;note D_, 0 | WARNING: Rounded down to 0
	note C_, 10
	sound_ret

; ============================================================================================================

Music_SSAqua_Ch4:
	toggle_noise 1
	drum_speed 12
;Bar 1
	rest 16
;Bar 2
	drum_note 1, 16
;Bar 3
	rest 16
	rest 16
	rest 2
;Bar 5
	drum_note 6, 4
	drum_note 8, 8
	drum_note 8, 2
;Bar 6
	drum_note 1, 2
	drum_note 8, 2
	drum_note 1, 16
	drum_note 1, 16
	drum_note 1, 14
;Bar 9
	drum_note 6, 6
	drum_note 8, 4
	drum_note 5, 2
	drum_note 8, 2
;Bar 10
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 11
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 12
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 13
	drum_note 1, 2
	drum_note 6, 4
	drum_note 8, 4
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 2
;Bar 14
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 15
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 16
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 17
	drum_note 1, 2
	drum_note 6, 4
	drum_note 8, 4
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 2
;Bar 18
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 19
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 20
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 21
	drum_note 1, 2
	drum_note 6, 4
	drum_note 8, 4
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 2
;Bar 22
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 23
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 24
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 25
	drum_note 1, 2
	drum_note 6, 4
	drum_note 8, 4
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 2
;Bar 26
	drum_note 10, 6
	drum_note 8, 6
	drum_note 10, 6
;Bar 27
	drum_note 8, 6
	drum_note 10, 2
	drum_note 8, 6
;Bar 28
	drum_note 6, 4
	drum_note 6, 4
	drum_note 6, 2
	drum_note 5, 4
	drum_note 3, 4
;Bar 29
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
;Bar 30
	drum_note 6, 4
	drum_note 6, 4
	drum_note 6, 2
	drum_note 5, 4
	drum_note 3, 4
;Bar 31
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
;Bar 32
	drum_note 6, 4
	drum_note 6, 4
	drum_note 6, 2
	drum_note 5, 4
	drum_note 8, 4
;Bar 33
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 3
;Bar 34
	drum_note 8, 1
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 2
	drum_note 5, 2
	drum_note 3, 2
	drum_note 12, 2
	drum_note 8, 2
;Bar 35
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 36
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 37
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 38
	drum_note 1, 2
	drum_note 6, 4
	drum_note 8, 4
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 2
;Bar 39
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 40
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 41
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 42
	drum_note 1, 2
	drum_note 6, 4
	drum_note 8, 4
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 2
;Bar 43
	;note A#, 0 | WARNING: Rounded down to 0
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 44
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 45
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 46
	drum_note 1, 2
	drum_note 6, 4
	drum_note 8, 4
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 2
;Bar 47
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 48
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 49
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 50
	drum_note 1, 2
	drum_note 6, 4
	drum_note 8, 4
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 2
;Bar 51
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 52
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 53
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 54
	drum_note 1, 2
	drum_note 6, 4
	drum_note 8, 4
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 2
;Bar 55
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 56
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 57
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 58
	drum_note 1, 2
	drum_note 6, 4
	drum_note 8, 4
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 2
;Bar 59
	drum_note 10, 6
	drum_note 8, 6
	drum_note 10, 6
;Bar 60
	drum_note 8, 6
	drum_note 10, 2
	drum_note 8, 6
;Bar 61
	drum_note 6, 4
	drum_note 6, 4
	drum_note 6, 2
	drum_note 5, 4
	drum_note 3, 4
;Bar 62
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
;Bar 63
	drum_note 6, 4
	drum_note 6, 4
	drum_note 6, 2
	drum_note 5, 4
	drum_note 3, 4
;Bar 64
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
;Bar 65
	drum_note 6, 4
	drum_note 6, 4
	drum_note 6, 2
	drum_note 5, 4
	drum_note 8, 4
;Bar 66
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 3
;Bar 67
	drum_note 8, 1
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 2
	drum_note 5, 2
	drum_note 3, 2
	drum_note 12, 2
	drum_note 8, 2
;Bar 68
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 69
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 70
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 71
	drum_note 1, 2
	drum_note 6, 4
	drum_note 8, 4
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 2
;Bar 72
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 73
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 74
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 75
	drum_note 1, 2
	drum_note 6, 4
	drum_note 8, 4
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 2
;Bar 76
	drum_note 11, 6
	drum_note 7, 8
	drum_note 9, 8
;Bar 77
	drum_note 2, 10
;Bar 78
	drum_note 11, 6
	drum_note 7, 8
	drum_note 9, 8
;Bar 79
	drum_note 2, 10
;Bar 80
	drum_note 11, 1
	drum_note 11, 5
	drum_note 7, 1
	drum_note 7, 7
	drum_note 9, 8
;Bar 81
	drum_note 2, 10
;Bar 82
	drum_note 11, 6
	drum_note 7, 8
	drum_note 9, 8
;Bar 83
	drum_note 2, 10
;Bar 84
	drum_note 1, 16
	drum_note 1, 16
;Bar 86
	drum_note 1, 16
	drum_note 1, 16
;Bar 88
	;note F_, 0 | WARNING: Rounded down to 0
	rest 16
	rest 16
;Bar 90
	drum_note 8, 16
	drum_note 8, 16
;Bar 92
	drum_note 11, 16
	drum_note 11, 16
;Bar 94
	drum_note 10, 16
	drum_note 10, 16
;Bar 96
	drum_note 9, 16
	drum_note 9, 16
;Bar 98
	drum_note 8, 16
;Bar 99
	drum_note 8, 3
	drum_note 10, 3
	drum_note 8, 3
	drum_note 10, 3
	drum_note 8, 3
	drum_note 5, 3
;Bar 100
	drum_note 1, 16
	drum_note 1, 16
	drum_note 1, 16
	drum_note 1, 16
	drum_note 1, 2
;Bar 104
	rest 16
	rest 14
;Bar 106
	drum_note 8, 2
	drum_note 1, 2
	drum_note 8, 2
	drum_note 1, 16
	drum_note 1, 16
	drum_note 1, 14
;Bar 109
	drum_note 6, 6
	drum_note 8, 4
;Bar 110
	drum_note 5, 2
	drum_note 8, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 111
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 112
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 113
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 6, 4
	drum_note 8, 4
	drum_note 8, 2
;Bar 114
	drum_note 8, 2
	drum_note 8, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 115
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 116
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 117
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 6, 4
	drum_note 8, 4
	drum_note 8, 2
;Bar 118
	drum_note 8, 2
	drum_note 8, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 119
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 120
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 121
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 6, 4
	drum_note 8, 4
	drum_note 8, 2
;Bar 122
	drum_note 8, 2
	drum_note 8, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 123
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 124
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 125
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 6, 4
	drum_note 8, 4
	drum_note 8, 1
	sound_ret

; ============================================================================================================

