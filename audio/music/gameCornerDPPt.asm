;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_GameCornerDPPt:
	channel_count 4
	channel 1, Music_GameCornerDPPt_Ch1
	channel 2, Music_GameCornerDPPt_Ch2
	channel 3, Music_GameCornerDPPt_Ch3
	channel 4, Music_GameCornerDPPt_Ch4

Music_GameCornerDPPt_Ch1:
	volume 7, 7
	duty_cycle $0
	note_type 6, 4, 8
	tempo 124
	stereo_panning FALSE, TRUE
;Bar 1
	sound_call Music_GameCornerDPPt_Ch1_Bar1
;Bar 2
	sound_call Music_GameCornerDPPt_Ch1_Bar2
;Bar 3
	sound_call Music_GameCornerDPPt_Ch1_Bar3
;Bar 4
	sound_call Music_GameCornerDPPt_Ch1_Bar4
	note G#, 4
	note E_, 2
;Bar 5
	duty_cycle $0
	stereo_panning TRUE, TRUE
	sound_call Music_GameCornerDPPt_Ch1_Bar1
	sound_call Music_GameCornerDPPt_Ch1_Bar2
	sound_call Music_GameCornerDPPt_Ch1_Bar3
	note G_, 4
	octave 2
	note D_, 4
	note G_, 4
	note D_, 4
	octave 1
	note G#, 4
	octave 2
	note E_, 2
;Bar 8
	volume_envelope 10, 7
	duty_cycle $1
	octave 3
	note E_, 1
	note F_, 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 4
	note C_, 1
	note D_, 1
	note D#, 1
;Bar 9
	rest 16
Music_GameCornerDPPt_Ch1_loop:
	duty_cycle $3
	note_type 12, 1, -7
	octave 1
	pitch_slide 1, 2, E_;
	note E_, 8
;Bar 10
	octave 2
	volume_envelope 5, 8
	note E_, 8
	octave 3
	volume_envelope 1, -7
	pitch_slide 1, 5, E_
	note E_, 8
;Bar 11
	octave 4
	volume_envelope 5, 8
	note E_, 8
	octave 5
	pitch_slide 1, 6, E_
	volume_envelope 1, -7
	note E_, 8
;Bar 12
	octave 6
	volume_envelope 4, 8
	note E_, 8
	volume_envelope 4, 6
	note E_, 2
	rest 6
;Bar 13
	duty_cycle $0
	note_type 4, 13, 7
Music_GameCornerDPPt_Ch1_Bar13_20:
	sound_call Music_GameCornerDPPt_Ch1_Type2
	octave 3
	volume_envelope 12, 7
	note F#, 1
	volume_envelope 3, 7
	note F#, 1
	rest 1
	volume_envelope 6, 7
	note F#, 1
	volume_envelope 3, 7
	note F#, 1
	rest 1
	sound_call Music_GameCornerDPPt_Ch1_Type3
	sound_call Music_GameCornerDPPt_Ch1_Type3
	sound_call Music_GameCornerDPPt_Ch1_Type2
	octave 3
	sound_call Music_GameCornerDPPt_Ch1_Type4
;Bar 18
	sound_call Music_GameCornerDPPt_Ch1_Type1
	octave 3
	sound_call Music_GameCornerDPPt_Ch1_Type6
	sound_call Music_GameCornerDPPt_Ch1_Type5
	sound_call Music_GameCornerDPPt_Ch1_Type5
	sound_call Music_GameCornerDPPt_Ch1_Type1
	sound_call Music_GameCornerDPPt_Ch1_Type7
;Bar 19
	sound_call Music_GameCornerDPPt_Ch1_Type9
	octave 2
	volume_envelope 12, 7
	note B_, 1
	volume_envelope 3, 7
	note B_, 1
	rest 1
	volume_envelope 6, 7
	note B_, 1
	volume_envelope 3, 7
	note B_, 1
	rest 1
	sound_call Music_GameCornerDPPt_Ch1_Type8
	sound_call Music_GameCornerDPPt_Ch1_Type8
	sound_call Music_GameCornerDPPt_Ch1_Type9
	sound_call Music_GameCornerDPPt_Ch1_Type7
;Bar 20
	sound_call Music_GameCornerDPPt_Ch1_Type1
	octave 3
	sound_call Music_GameCornerDPPt_Ch1_Type6
	sound_call Music_GameCornerDPPt_Ch1_Type5
	sound_call Music_GameCornerDPPt_Ch1_Type5
	sound_call Music_GameCornerDPPt_Ch1_Type1
	octave 3
	sound_call Music_GameCornerDPPt_Ch1_Type4
	sound_loop 2, Music_GameCornerDPPt_Ch1_Bar13_20
	duty_cycle $0
	vibrato 0, 4, 1
;Bar 17
	note_type 12, 13, 7
	rest 16
;Bar 22
	octave 1
	note_type 6, 13, 7
	note D#, 4
	note D#, 4
	octave 2
	note D_, 1
	note D#, 3
	octave 1
	note B_, 1
	note A#, 7
	note D#, 4
	octave 5
	pitch_slide 1, 4, D#
	note_type 12, 11, 5
	note D#, 16
;Bar 23
	rest 8
	note_type 6, 13, 7
;Bar 24
	octave 2
	note C#, 2
	note C#, 1
	rest 1
	note C#, 2
	note C#, 2
	octave 1
	pitch_slide 1, 1, C_
	note_type 12, 11, 7
	note A#, 16
;Bar 25
	rest 8
	note_type 6, 10, 7
;Bar 26
	duty_cycle $2
	vibrato 0, 0, 0
	stereo_panning TRUE, FALSE
	sound_call Music_GameCornerDPPt_Ch1_TypeA1
	sound_call Music_GameCornerDPPt_Ch1_TypeA2
	stereo_panning FALSE, TRUE
	sound_call Music_GameCornerDPPt_Ch1_TypeA3
	sound_call Music_GameCornerDPPt_Ch1_TypeA4
;Bar 27
	stereo_panning TRUE, FALSE
	sound_call Music_GameCornerDPPt_Ch1_TypeA2
	sound_call Music_GameCornerDPPt_Ch1_TypeA3
	stereo_panning FALSE, TRUE
	sound_call Music_GameCornerDPPt_Ch1_TypeA4
	sound_call Music_GameCornerDPPt_Ch1_TypeA1
	stereo_panning TRUE, FALSE
	sound_call Music_GameCornerDPPt_Ch1_TypeA2
	octave 4
	volume_envelope 10, 7
	note F#, 1
	octave 5
	volume_envelope 5, 7
	note F#, 1
	stereo_panning FALSE, TRUE
	octave 4
	volume_envelope 10, 7
	note C#, 1
	octave 5
	volume_envelope 5, 7
	note C#, 1

	octave 3
	volume_envelope 10, 7
	note A#, 1
	octave 4
	volume_envelope 5, 7
	note A#, 1
	stereo_panning TRUE, FALSE
	octave 3
	volume_envelope 10, 7
	note G#, 1
	note F#, 1
	note E_, 1
	note D#, 1
	note C#, 1
	octave 2
	note B_, 1
	note A#, 1
	note G#, 1
;Bar 27
	rest 16
	rest 16
	rest 16
	rest 12
;Bar 28 ;Part 2
	stereo_panning TRUE, TRUE
	duty_cycle $0
	note_type 4, 13, 7
	sound_call Music_GameCornerDPPt_Ch1_Type10
;Bar 29
Music_GameCornerDPPt_Ch1_Bar29:
	octave 2
	sound_call Music_GameCornerDPPt_Ch1_Type11
	octave 3
	sound_call Music_GameCornerDPPt_Ch1_Type10
	sound_call Music_GameCornerDPPt_Ch1_Type12
	sound_call Music_GameCornerDPPt_Ch1_Type12
	octave 2
	sound_call Music_GameCornerDPPt_Ch1_Type11
	octave 3
	sound_call Music_GameCornerDPPt_Ch1_Type10
	sound_loop 2, Music_GameCornerDPPt_Ch1_Bar29
;Bar 31
	octave 1
	sound_call Music_GameCornerDPPt_Ch1_Type13
	sound_call Music_GameCornerDPPt_Ch1_Type14
	sound_call Music_GameCornerDPPt_Ch1_Type15
	sound_call Music_GameCornerDPPt_Ch1_Type15
	octave 1
	sound_call Music_GameCornerDPPt_Ch1_Type13
	sound_call Music_GameCornerDPPt_Ch1_Type14
;Bar 32
	sound_call Music_GameCornerDPPt_Ch1_Type16
	sound_call Music_GameCornerDPPt_Ch1_Type17
	sound_call Music_GameCornerDPPt_Ch1_Type18
	sound_call Music_GameCornerDPPt_Ch1_Type19
	sound_call Music_GameCornerDPPt_Ch1_Type20
	sound_call Music_GameCornerDPPt_Ch1_Type21
;Bar 33
	octave 1
	volume_envelope 12, 7
	note F_, 2
	volume_envelope 3, 7
	note F_, 1
	volume_envelope 6, 7
	note F_, 2
	volume_envelope 3, 7
	note F_, 1
	octave 2
	sound_call Music_GameCornerDPPt_Ch1_Type10
	octave 1
	volume_envelope 12, 7
	note F_, 3
	volume_envelope 3, 7
	note F_, 1
	rest 2
	octave 2
	volume_envelope 12, 7
	note D#, 1
	volume_envelope 3, 7
	note D#, 1
	rest 4
	octave 1
	volume_envelope 12, 7
	note F_, 3
	volume_envelope 3, 7
	note F_, 1
	rest 2
	octave 2
	volume_envelope 12, 7
	note G_, 1
	volume_envelope 3, 7
	note G_, 1
	rest 4
	octave 1
	sound_call Music_GameCornerDPPt_Ch1_Type22
;Bar 34
	octave 1
	sound_call Music_GameCornerDPPt_Ch1_Type11
	octave 2
	sound_call Music_GameCornerDPPt_Ch1_Type10
	sound_call Music_GameCornerDPPt_Ch1_Type23
	octave 1
	volume_envelope 12, 7
	note E_, 3
	volume_envelope 3, 7
	note E_, 1
	rest 2
	octave 2
	volume_envelope 12, 7
	note E_, 1
	volume_envelope 3, 7
	note E_, 1
	rest 4
	octave 1
	volume_envelope 12, 7
	note E_, 2
	volume_envelope 3, 7
	note E_, 1
	volume_envelope 12, 7
	note E_, 2
	volume_envelope 3, 7
	note E_, 1
	octave 2
	sound_call Music_GameCornerDPPt_Ch1_Type4
;Bar 35
	octave 1
	sound_call Music_GameCornerDPPt_Ch1_Type13
	sound_call Music_GameCornerDPPt_Ch1_Type14
	sound_call Music_GameCornerDPPt_Ch1_Type15
	octave 1
	volume_envelope 12, 7
	note D_, 3
	volume_envelope 3, 7
	note D_, 1
	rest 2
	octave 2
	volume_envelope 12, 7
	note D_, 1
	volume_envelope 3, 7
	note D_, 1
	rest 4
	octave 1
	sound_call Music_GameCornerDPPt_Ch1_Type1
	octave 2
	sound_call Music_GameCornerDPPt_Ch1_Type6
;Bar 36
	sound_call Music_GameCornerDPPt_Ch1_Type16
	sound_call Music_GameCornerDPPt_Ch1_Type17
	sound_call Music_GameCornerDPPt_Ch1_Type18
	octave 1
	sound_call Music_GameCornerDPPt_Ch1_Type19
	sound_call Music_GameCornerDPPt_Ch1_Type20
	sound_call Music_GameCornerDPPt_Ch1_Type21
;Bar 37
	volume_envelope 12, 7
	note A#, 2
	volume_envelope 3, 7
	note A#, 1
	volume_envelope 6, 7
	note A#, 2
	volume_envelope 3, 7
	note A#, 1
	octave 2
	sound_call Music_GameCornerDPPt_Ch1_Type20
	octave 1
	volume_envelope 12, 7
	note A#, 3
	volume_envelope 3, 7
	note A#, 1
	rest 2
	octave 2
	volume_envelope 12, 7
	note G#, 1
	volume_envelope 3, 7
	note G#, 1
	rest 4
	octave 1
	volume_envelope 12, 7
	note A#, 3
	volume_envelope 3, 7
	note A#, 1
	rest 2
	octave 2
	volume_envelope 12, 7
	note G_, 1
	volume_envelope 3, 7
	note G_, 1
	rest 4
	octave 1
	sound_call Music_GameCornerDPPt_Ch1_Type22
;Bar 38
	octave 1
	sound_call Music_GameCornerDPPt_Ch1_Type11
	octave 2
	sound_call Music_GameCornerDPPt_Ch1_Type10
	sound_call Music_GameCornerDPPt_Ch1_Type23
	sound_call Music_GameCornerDPPt_Ch1_Type15
	octave 1
	volume_envelope 12, 7
	note G#, 2
	volume_envelope 3, 7
	note G#, 1
	volume_envelope 12, 7
	note G#, 2
	volume_envelope 3, 7
	note G#, 1
	sound_call Music_GameCornerDPPt_Ch1_Type14
;Bar 39
	octave 1
	sound_call Music_GameCornerDPPt_Ch1_Type11
	octave 2
	sound_call Music_GameCornerDPPt_Ch1_Type10
	sound_call Music_GameCornerDPPt_Ch1_Type23
	sound_call Music_GameCornerDPPt_Ch1_Type18
	octave 1
	volume_envelope 12, 7
	note G_, 2
	volume_envelope 3, 7
	note G_, 1
	volume_envelope 12, 7
	note G_, 2
	volume_envelope 3, 7
	note G_, 1
	sound_call Music_GameCornerDPPt_Ch1_Type17
;Bar 40
	duty_cycle $0
	note_type 6, 4, 8
	stereo_panning FALSE, TRUE
	sound_call Music_GameCornerDPPt_Ch1_Bar1
;Bar 41
	sound_call Music_GameCornerDPPt_Ch1_Bar2
;Bar 42
	sound_call Music_GameCornerDPPt_Ch1_Bar3
;Bar 43
	sound_call Music_GameCornerDPPt_Ch1_Bar4
	note G#, 2
	stereo_panning TRUE, TRUE
	note_type 6, 11, 8
	octave 4
	note C_, 2
	note D_, 2
;Bar 44
	note E_, 1
	volume_envelope 3, 8
	note E_, 1
	volume_envelope 11, 8
	note E_, 2
	note D_, 2
	octave 3
	note A_, 2
	octave 4
	note C_, 1
	volume_envelope 3, 8
	note C_, 1
	octave 3
	volume_envelope 11, 8
	note A_, 2
	octave 4
	note E_, 2
	note G_, 2
	note E_, 1
	volume_envelope 3, 8
	note E_, 1
	volume_envelope 11, 8
	note E_, 2
	note D_, 2
	octave 3
	note A_, 2
	octave 4
	note C_, 2
	note E_, 2
	note A_, 2
	note D_, 2
;Bar 45
	note D#, 1
	volume_envelope 10, 8
	note E_, 15
	note D_, 16
;Bar 46
	note C_, 1
	volume_envelope 3, 8
	note C_, 1
	volume_envelope 11, 8
	note C_, 2
	octave 3
	note B_, 2
	octave 4
	note G_, 2
	note C_, 2
	octave 3
	note B_, 2
	note A_, 2
	octave 4
	note G_, 2
	note E_, 2
	note C_, 2
	note D_, 2
	octave 3
	note A_, 2
	octave 4
	note C_, 2
	octave 3
	note B_, 2
	octave 4
	note C_, 2
	note D_, 2
;Bar 47
	note E_, 6
	note G_, 2
	volume_envelope 3, 8
	note G_, 1
	rest 3
	volume_envelope 11, 8
	note E_, 4
	note D_, 2
	note E_, 2
	note G_, 2
	note D_, 2
	note E_, 2
	volume_envelope 3, 8
	note E_, 2
	note_type 12, 10, 7
	note D_, 10
	sound_loop 0, Music_GameCornerDPPt_Ch1_loop

Music_GameCornerDPPt_Ch1_Bar1:
	rest 2
	octave 1
	note A_, 4
	octave 2
	note E_, 4
	note A_, 4
	note E_, 4
	octave 1
	note F_, 4
	octave 2
	note C_, 4
	note F_, 4
	note C_, 4
	sound_ret

Music_GameCornerDPPt_Ch1_Bar2:
	octave 1
	note G_, 4
	octave 2
	note D_, 4
	note G_, 4
	note D_, 4
	octave 1
	note E_, 4
	note B_, 4
	octave 2
	note E_, 4
	octave 1
	note B_, 4
	sound_ret

Music_GameCornerDPPt_Ch1_Bar3:
	note F_, 4
	octave 2
	note C_, 4
	note F_, 4
	note C_, 4
	octave 1
	note D_, 4
	note A_, 4
	octave 2
	note D_, 4
	octave 1
	note A_, 4
	sound_ret

Music_GameCornerDPPt_Ch1_Bar4:
	note G_, 4;
	octave 2
	note D_, 4
	note G_, 4
	note D_, 4
	octave 1
	note G#, 4
	octave 2
	note E_, 4
	sound_ret

Music_GameCornerDPPt_Ch1_Type1:
	octave 2
	volume_envelope 12, 7;
	note D_, 2
	volume_envelope 3, 7
	note D_, 1
	volume_envelope 7, 7
	note D_, 2
	volume_envelope 3, 7
	note D_, 1
	octave 3
	sound_ret

Music_GameCornerDPPt_Ch1_Type2:
	octave 2;
	volume_envelope 12, 7;
	note F#, 2
	volume_envelope 3, 7
	note F#, 1
	volume_envelope 7, 7
	note F#, 2
	volume_envelope 3, 7
	note F#, 1
	sound_ret

Music_GameCornerDPPt_Ch1_Type3:
	octave 2;
	volume_envelope 12, 7
	note F#, 3
	volume_envelope 3, 7
	note F#, 1
	rest 2
	octave 3
	volume_envelope 12, 7
	note F#, 1
	volume_envelope 3, 7
	note F#, 1
	rest 4
	sound_ret

Music_GameCornerDPPt_Ch1_Type4:
	volume_envelope 12, 7
	note E_, 1
	volume_envelope 3, 7
	note E_, 1
	rest 1
	volume_envelope 6, 7
	note E_, 1
	volume_envelope 3, 7
	note E_, 1
	rest 1
	sound_ret

Music_GameCornerDPPt_Ch1_Type5:
	octave 2;
	volume_envelope 12, 7
	note D_, 3
	volume_envelope 3, 7
	note D_, 1
	rest 2
	octave 3
	volume_envelope 12, 7
	note D_, 1
	volume_envelope 3, 7
	note D_, 1
	rest 4
	sound_ret

Music_GameCornerDPPt_Ch1_Type6:
	volume_envelope 12, 7;
	note D_, 1
	volume_envelope 3, 7
	note D_, 1
	rest 1
	volume_envelope 6, 7
	note D_, 1
	volume_envelope 3, 7
	note D_, 1
	rest 1
	sound_ret

Music_GameCornerDPPt_Ch1_Type7:
	octave 3;
	volume_envelope 12, 7
	note C#, 1
	volume_envelope 3, 7
	note C#, 1
	rest 1
	volume_envelope 6, 7
	note C#, 1
	volume_envelope 3, 7
	note C#, 1
	rest 1
	sound_ret

Music_GameCornerDPPt_Ch1_Type8:
	octave 1;
	volume_envelope 12, 7
	note B_, 3
	volume_envelope 3, 7
	note B_, 1
	rest 2
	octave 2
	volume_envelope 12, 7
	note B_, 1
	volume_envelope 3, 7
	note B_, 1
	rest 4
	sound_ret

Music_GameCornerDPPt_Ch1_Type9:
	octave 1;
	volume_envelope 12, 7
	note B_, 2
	volume_envelope 3, 7
	note B_, 1
	volume_envelope 7, 7
	note B_, 2
	volume_envelope 3, 7
	note B_, 1
	sound_ret

Music_GameCornerDPPt_Ch1_Type10:
	volume_envelope 12, 7;
	note D#, 1
	volume_envelope 3, 7
	note D#, 1
	rest 1
	volume_envelope 6, 7
	note D#, 1
	volume_envelope 3, 7
	note D#, 1
	rest 1
 	sound_ret

Music_GameCornerDPPt_Ch1_Type11:
	volume_envelope 12, 7;
	note D#, 2
	volume_envelope 3, 7
	note D#, 1
	volume_envelope 7, 7
	note D#, 2
	volume_envelope 3, 7
	note D#, 1
 	sound_ret

Music_GameCornerDPPt_Ch1_Type12:
	octave 2;
	volume_envelope 12, 7
	note D#, 3
	volume_envelope 3, 7
	note D#, 1
	rest 2
	octave 3
	volume_envelope 12, 7
	note D#, 1
	volume_envelope 3, 7
	note D#, 1
	rest 4
 	sound_ret

Music_GameCornerDPPt_Ch1_Type13:
	volume_envelope 12, 7;
	note G#, 2
	volume_envelope 3, 7
	note G#, 1
	volume_envelope 7, 7
	note G#, 2
	volume_envelope 3, 7
	note G#, 1
 	sound_ret

Music_GameCornerDPPt_Ch1_Type14:
	octave 2;
	volume_envelope 12, 7
	note G#, 1
	volume_envelope 3, 7
	note G#, 1
	rest 1
	volume_envelope 6, 7
	note G#, 1
	volume_envelope 3, 7
	note G#, 1
	rest 1
 	sound_ret

Music_GameCornerDPPt_Ch1_Type15:
	octave 1;
	volume_envelope 12, 7
	note G#, 3
	volume_envelope 3, 7
	note G#, 1
	rest 2
	octave 2
	volume_envelope 12, 7
	note G#, 1
	volume_envelope 3, 7
	note G#, 1
	rest 4
 	sound_ret

Music_GameCornerDPPt_Ch1_Type16:
	octave 1;
	volume_envelope 12, 7
	note G_, 2
	volume_envelope 3, 7
	note G_, 1
	volume_envelope 7, 7
	note G_, 2
	volume_envelope 3, 7
	note G_, 1
 	sound_ret

Music_GameCornerDPPt_Ch1_Type17:
	octave 2;
	volume_envelope 12, 7
	note G_, 1
	volume_envelope 3, 7
	note G_, 1
	rest 1
	volume_envelope 6, 7
	note G_, 1
	volume_envelope 3, 7
	note G_, 1
	rest 1
 	sound_ret

Music_GameCornerDPPt_Ch1_Type18:
	octave 1;
	volume_envelope 12, 7
	note G_, 3
	volume_envelope 3, 7
	note G_, 1
	rest 2
	octave 2
	volume_envelope 12, 7
	note G_, 1
	volume_envelope 3, 7
	note G_, 1
	rest 4
 	sound_ret

Music_GameCornerDPPt_Ch1_Type19:
	volume_envelope 12, 7;
	note C_, 2
	volume_envelope 3, 7
	note C_, 1
	volume_envelope 7, 7
	note C_, 2
	volume_envelope 3, 7
	note C_, 1
 	sound_ret

Music_GameCornerDPPt_Ch1_Type20:
	volume_envelope 12, 7;
	note A#, 1
	volume_envelope 3, 7
	note A#, 1
	rest 1
	volume_envelope 6, 7
	note A#, 1
	volume_envelope 3, 7
	note A#, 1
	rest 1
 	sound_ret

Music_GameCornerDPPt_Ch1_Type21:
	volume_envelope 12, 7;
	note C_, 3
	volume_envelope 3, 7
	note C_, 1
	rest 2
	volume_envelope 12, 7
	note A#, 1
	volume_envelope 3, 7
	note A#, 1
	rest 4
 	sound_ret

Music_GameCornerDPPt_Ch1_Type22:
	volume_envelope 12, 7;
	note F_, 2
	volume_envelope 3, 7
	note F_, 1
	volume_envelope 12, 7
	note F_, 2
	volume_envelope 3, 7
	note F_, 1
	octave 2
	volume_envelope 12, 7
	note F_, 1
	volume_envelope 3, 7
	note F_, 1
	rest 1
	volume_envelope 6, 7
	note F_, 1
	volume_envelope 3, 7
	note F_, 1
	rest 1
 	sound_ret

Music_GameCornerDPPt_Ch1_Type23:
	octave 1;
	volume_envelope 12, 7
	note D#, 3
	volume_envelope 3, 7
	note D#, 1
	rest 2
	octave 2
	volume_envelope 12, 7
	note D#, 1
	volume_envelope 3, 7
	note D#, 1
	rest 4
 	sound_ret

Music_GameCornerDPPt_Ch1_TypeA1:
	octave 5;
	volume_envelope 10, 7
	note C#, 1
	octave 6
	volume_envelope 5, 7
	note C#, 1
	sound_ret

Music_GameCornerDPPt_Ch1_TypeA2:
	octave 4;
	volume_envelope 10, 7
	note A#, 1
	octave 5
	volume_envelope 5, 7
	note A#, 1
	sound_ret

Music_GameCornerDPPt_Ch1_TypeA3:
	octave 5;
	volume_envelope 10, 7;
	note A#, 1
	octave 6
	volume_envelope 5, 7
	note A#, 1
	sound_ret

Music_GameCornerDPPt_Ch1_TypeA4:
	octave 5;
	volume_envelope 10, 7
	note F#, 1
	octave 6
	volume_envelope 5, 7
	note F#, 1
	sound_ret

; ============================================================================================================

Music_GameCornerDPPt_Ch2:
	duty_cycle $0
	note_type 6, 4, 8
	stereo_panning TRUE, FALSE
;Bar 1
	rest 4;
	octave 1
	note A_, 4
	octave 2
	note E_, 4
	note A_, 4
	note E_, 4
	octave 1
	note F_, 4
	octave 2
	note C_, 4
	note F_, 4
;Bar 2
	note C_, 4
	octave 1
	note G_, 4
	octave 2
	note D_, 4
	note G_, 4
	note D_, 4
	octave 1
	note E_, 4
	note B_, 4
	octave 2
	note E_, 4
;Bar 3
	octave 1
	note B_, 4
	note F_, 4
	octave 2
	note C_, 4
	note F_, 4
	note C_, 4
	octave 1
	note D_, 4
	note A_, 4
	octave 2
	note D_, 4
;Bar 4
	octave 1
	note A_, 4
	sound_call Music_GameCornerDPPt_Ch1_Bar4
	note G#, 4
;Bar 5
	duty_cycle $1
	stereo_panning TRUE, TRUE
	octave 4
	sound_call Music_GameCornerDPPt_Ch2_Type1
	sound_call Music_GameCornerDPPt_Ch2_Type1
	octave 3
	sound_call Music_GameCornerDPPt_Ch2_Type2
	sound_call Music_GameCornerDPPt_Ch2_Type2
;Bar 6
	sound_call Music_GameCornerDPPt_Ch2_Type3
	sound_call Music_GameCornerDPPt_Ch2_Type3
	sound_call Music_GameCornerDPPt_Ch2_Type4
	sound_call Music_GameCornerDPPt_Ch2_Type4
;Bar 7
	sound_call Music_GameCornerDPPt_Ch2_Type2
	sound_call Music_GameCornerDPPt_Ch2_Type2
	sound_call Music_GameCornerDPPt_Ch2_Type2
	sound_call Music_GameCornerDPPt_Ch2_Type2
;Bar 8
	sound_call Music_GameCornerDPPt_Ch2_Type3
	sound_call Music_GameCornerDPPt_Ch2_Type3
	sound_call Music_GameCornerDPPt_Ch2_Type3
	note B_, 1
	rest 1
	volume_envelope 7, 7
	note B_, 1
	rest 1
	volume_envelope 10, 7
	note B_, 1
	rest 1
	volume_envelope 7, 7
	note B_, 1
	rest 1
;Bar 9
	octave 4
	volume_envelope 10, 7
	sound_call Music_GameCornerDPPt_Ch2_Type1
	sound_call Music_GameCornerDPPt_Ch2_Type1
	octave 3
	sound_call Music_GameCornerDPPt_Ch2_Type2
	sound_call Music_GameCornerDPPt_Ch2_Type2
;Bar 10
	sound_call Music_GameCornerDPPt_Ch2_Type3
	sound_call Music_GameCornerDPPt_Ch2_Type3
	sound_call Music_GameCornerDPPt_Ch2_Type4
	sound_call Music_GameCornerDPPt_Ch2_Type4
;Bar 11
	sound_call Music_GameCornerDPPt_Ch2_Type2
	sound_call Music_GameCornerDPPt_Ch2_Type2
	sound_call Music_GameCornerDPPt_Ch2_Type2
	sound_call Music_GameCornerDPPt_Ch2_Type2
;Bar 12
	sound_call Music_GameCornerDPPt_Ch2_Type3
	sound_call Music_GameCornerDPPt_Ch2_Type3
	sound_call Music_GameCornerDPPt_Ch2_Type3
	sound_call Music_GameCornerDPPt_Ch2_Type3
;Bar 13
	note A_, 1
	rest 1
	volume_envelope 7, 7
	note A_, 1
	rest 1
	volume_envelope 10, 7
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	sound_call Music_GameCornerDPPt_Ch2_Type2
	sound_call Music_GameCornerDPPt_Ch2_Type2
	note A_, 1
	rest 1
	volume_envelope 7, 7
	note A_, 1
	rest 1
	volume_envelope 10, 7
	note G#, 4
;Bar 14
	sound_call Music_GameCornerDPPt_Ch2_Type5
	sound_call Music_GameCornerDPPt_Ch2_Type5
	sound_call Music_GameCornerDPPt_Ch2_Type5
	note F#, 1
	rest 1
	volume_envelope 7, 7
	note F#, 1
	rest 1
	volume_envelope 10, 7
	note E_, 4
;Bar 15
	sound_call Music_GameCornerDPPt_Ch2_Type6
	sound_call Music_GameCornerDPPt_Ch2_Type6
	sound_call Music_GameCornerDPPt_Ch2_Type6
	note D_, 1
	rest 1
	volume_envelope 7, 7
	note D_, 1
	rest 1
	volume_envelope 10, 7
	note E_, 4
;Bar 16
	sound_call Music_GameCornerDPPt_Ch2_Type5
	sound_call Music_GameCornerDPPt_Ch2_Type5
	sound_call Music_GameCornerDPPt_Ch2_Type5
	note F#, 1
	rest 1
	volume_envelope 7, 7
	note F#, 1
	rest 1
	volume_envelope 10, 7
	note G#, 4
;Bar 17
	sound_call Music_GameCornerDPPt_Ch2_Type2
	sound_call Music_GameCornerDPPt_Ch2_Type2
	sound_call Music_GameCornerDPPt_Ch2_Type2
	note A_, 1
	rest 1
	volume_envelope 7, 7
	note A_, 1
	rest 1
	volume_envelope 10, 7
	note G#, 4
;Bar 18
	sound_call Music_GameCornerDPPt_Ch2_Type5
	sound_call Music_GameCornerDPPt_Ch2_Type5
	sound_call Music_GameCornerDPPt_Ch2_Type5
	note F#, 1
	rest 1
	volume_envelope 7, 7
	note F#, 1
	rest 1
	volume_envelope 10, 7
	note E_, 4
;Bar 19
	sound_call Music_GameCornerDPPt_Ch2_Type6
	sound_call Music_GameCornerDPPt_Ch2_Type6
	sound_call Music_GameCornerDPPt_Ch2_Type6
	note D_, 1
	rest 1
	volume_envelope 7, 7
	note D_, 1
	rest 1
	volume_envelope 10, 7
	note E_, 4
;Bar 20
	sound_call Music_GameCornerDPPt_Ch2_Type5
	sound_call Music_GameCornerDPPt_Ch2_Type5
	note E_, 1
	rest 1
	volume_envelope 7, 7
	note E_, 1
	rest 1
	volume_envelope 10, 7
	note E_, 4
	note F#, 1
	rest 1
	volume_envelope 7, 7
	note F#, 1
	rest 1
	volume_envelope 10, 7
	note G#, 4
;Bar 21
Music_GameCornerDPPt_Ch2_Bar21_28:
	note B_, 1
	rest 3
	volume_envelope 7, 7
	note B_, 1
	rest 3
	volume_envelope 10, 7
	note B_, 1
	rest 3
	note B_, 1
	rest 3
	note G#, 1
	rest 1
	volume_envelope 7, 7
	note G#, 1
	rest 3
	volume_envelope 10, 7
	note G#, 1
	rest 1
	note G#, 1
	rest 1
	volume_envelope 7, 7
	note G#, 1
	rest 1
	volume_envelope 10, 7
	note G#, 1
	rest 1
	volume_envelope 7, 7
	note G#, 1
	rest 1
;Bar 22
	volume_envelope 10, 7
	note A#, 1
	rest 3
	note A#, 1
	rest 3
	note A#, 1
	rest 3
	note A#, 1
	rest 3
	note F#, 1
	rest 1
	volume_envelope 7, 7
	note F#, 1
	rest 3
	volume_envelope 10, 7
	note F#, 1
	rest 1
	sound_call Music_GameCornerDPPt_Ch2_Type5
;Bar 23
	sound_call Music_GameCornerDPPt_Ch2_Type7
	sound_call Music_GameCornerDPPt_Ch2_Type7
	sound_call Music_GameCornerDPPt_Ch2_Type7
	sound_call Music_GameCornerDPPt_Ch2_Type7
;Bar 24
	sound_call Music_GameCornerDPPt_Ch2_Type8
	sound_call Music_GameCornerDPPt_Ch2_Type8
	sound_call Music_GameCornerDPPt_Ch2_Type8
	note A#, 1
	rest 1
	volume_envelope 7, 7
	note A#, 1
	rest 1
	volume_envelope 10, 7
	note A#, 1
	rest 1
	volume_envelope 7, 7
	note A#, 1
	rest 1
	sound_loop 2, Music_GameCornerDPPt_Ch2_Bar21_28
;Bar 29
	octave 4
	duty_cycle $2
	volume_envelope 9, 6
	note A#, 12
	note G#, 2
	rest 2
	note G_, 4
	note F_, 2
	rest 2
	note D#, 4
	note D_, 2
	rest 2
;Bar 30
	note D#, 4
	note A#, 2
	note A_, 2
	note A#, 2
	note A_, 2
	note A#, 2
	note A_, 2
	note A#, 16
;Bar 31
	rest 16
	rest 16
;Bar 32
	octave 3
	note A#, 2
	octave 4
	note D#, 2
	note A#, 2
	note G#, 2
	note G_, 4
	note F_, 4
	note D#, 2
	note D_, 2
	note C_, 4
	note A_, 1
	note A#, 3
	note D_, 4
;Bar 33
	note D#, 4
	rest 16
	rest 12
;Bar 34
	volume_envelope 9, 5
	octave 3
	note D_, 8
	note F_, 8
	octave 4
	note C_, 8
	octave 3
	note A#, 8
;Bar 35
	octave 4
	note D#, 8
	octave 3
	note A#, 8
	octave 4
	note G_, 8
	note F_, 8
;Bar 36
	octave 5
	note C_, 4
	note C#, 1
	note D_, 7
	octave 4
	note A#, 16
	note A#, 4
;Bar 37
	note G#, 4
	note A#, 4
	note G_, 4
	note D#, 4
	note E_, 4
	note F_, 4
	note A_, 1
	note A#, 7
;Bar 38
	volume_envelope 12, 7
	duty_cycle $1
	octave 1
	note D#, 4
	note A#, 4
	octave 2
	note D#, 4
	octave 1
	note A#, 4
	note F_, 4
	octave 2
	note D_, 4
	note F_, 4
	note D_, 4
;Bar 39
	octave 1
	note D#, 4
	note A#, 4
	octave 2
	note D#, 4
	octave 1
	note A#, 4
	note F_, 4
	octave 2
	note D_, 4
	note F_, 4
	note D_, 4
;Bar 40
	sound_loop 0, Music_GameCornerDPPt_Ch2

Music_GameCornerDPPt_Ch2_Type1:
	note C_, 1;
	rest 1
	volume_envelope 7, 7
	note C_, 1
	rest 1
	volume_envelope 10, 7
	note C_, 4
 	sound_ret

Music_GameCornerDPPt_Ch2_Type2:
	note A_, 1;
	rest 1
	volume_envelope 7, 7
	note A_, 1
	rest 1
	volume_envelope 10, 7
	note A_, 4
 	sound_ret

Music_GameCornerDPPt_Ch2_Type3:
	note B_, 1;
	rest 1
	volume_envelope 7, 7
	note B_, 1
	rest 1
	volume_envelope 10, 7
	note B_, 4
 	sound_ret

Music_GameCornerDPPt_Ch2_Type4:
	note G_, 1;
	rest 1
	volume_envelope 7, 7
	note G_, 1
	rest 1
	volume_envelope 10, 7
	note G_, 4
 	sound_ret

Music_GameCornerDPPt_Ch2_Type5:
	note F#, 1;
	rest 1
	volume_envelope 7, 7
	note F#, 1
	rest 1
	volume_envelope 10, 7
	note F#, 4
 	sound_ret

Music_GameCornerDPPt_Ch2_Type6:
	note D_, 1;
	rest 1
	volume_envelope 7, 7
	note D_, 1
	rest 1
	volume_envelope 10, 7
	note D_, 4
 	sound_ret

Music_GameCornerDPPt_Ch2_Type7:
	note G#, 1;
	rest 1
	volume_envelope 7, 7
	note G#, 1
	rest 1
	volume_envelope 10, 7
	note G#, 4
 	sound_ret

Music_GameCornerDPPt_Ch2_Type8:
	note A#, 1;
	rest 1
	volume_envelope 7, 7
	note A#, 1
	rest 1
	volume_envelope 10, 7
	note A#, 4
 	sound_ret

; ============================================================================================================

Music_GameCornerDPPt_Ch3:
	note_type 6, 1, 9
;Bar 1
	octave 2
	sound_call Music_GameCornerDPPt_Ch3_Bar1
;Bar 2
	sound_call Music_GameCornerDPPt_Ch3_Bar2
;Bar 3
	sound_call Music_GameCornerDPPt_Ch3_Bar3
;Bar 4
	sound_call Music_GameCornerDPPt_Ch3_Bar4
;Bar 5
	volume_envelope 2, 8
	octave 2
	sound_call Music_GameCornerDPPt_Ch3_Bar1
;Bar 6
	sound_call Music_GameCornerDPPt_Ch3_Bar2
;Bar 7
	sound_call Music_GameCornerDPPt_Ch3_Bar3
;Bar 8
	sound_call Music_GameCornerDPPt_Ch3_Bar4
;Bar 9
	stereo_panning TRUE, FALSE
	sound_call Music_GameCornerDPPt_Ch3_Set1_E6
	sound_call Music_GameCornerDPPt_Ch3_Set1_A6
	stereo_panning FALSE, TRUE
	sound_call Music_GameCornerDPPt_Ch3_Set1_E7
	sound_call Music_GameCornerDPPt_Ch3_Set1_A6
	stereo_panning TRUE, FALSE
	sound_call Music_GameCornerDPPt_Ch3_Set1_E7
	sound_call Music_GameCornerDPPt_Ch3_Set1_A6
	stereo_panning FALSE, TRUE
	sound_call Music_GameCornerDPPt_Ch3_Set1_E6
	sound_call Music_GameCornerDPPt_Ch3_Set1_E7
	stereo_panning TRUE, FALSE
	sound_call Music_GameCornerDPPt_Ch3_Set1_C6
	sound_call Music_GameCornerDPPt_Ch3_Set1_F6
	stereo_panning FALSE, TRUE
	sound_call Music_GameCornerDPPt_Ch3_Set1_C7
	sound_call Music_GameCornerDPPt_Ch3_Set1_F6
	stereo_panning TRUE, FALSE
	sound_call Music_GameCornerDPPt_Ch3_Set1_C7
	sound_call Music_GameCornerDPPt_Ch3_Set1_F6
	stereo_panning FALSE, TRUE
	sound_call Music_GameCornerDPPt_Ch3_Set1_C6
	sound_call Music_GameCornerDPPt_Ch3_Set1_C7
;Bar 10
	stereo_panning TRUE, FALSE
	sound_call Music_GameCornerDPPt_Ch3_Set1_D6
	sound_call Music_GameCornerDPPt_Ch3_Set1_G6
	stereo_panning FALSE, TRUE
	sound_call Music_GameCornerDPPt_Ch3_Set1_D7
	sound_call Music_GameCornerDPPt_Ch3_Set1_G6
	stereo_panning TRUE, FALSE
	sound_call Music_GameCornerDPPt_Ch3_Set1_D7
	sound_call Music_GameCornerDPPt_Ch3_Set1_G6
	stereo_panning FALSE, TRUE
	sound_call Music_GameCornerDPPt_Ch3_Set1_D6
	sound_call Music_GameCornerDPPt_Ch3_Set1_D7
	stereo_panning TRUE, FALSE
	sound_call Music_GameCornerDPPt_Ch3_Set1_B5
	sound_call Music_GameCornerDPPt_Ch3_Set1_E6
	stereo_panning FALSE, TRUE
	sound_call Music_GameCornerDPPt_Ch3_Set1_B6
	sound_call Music_GameCornerDPPt_Ch3_Set1_E6
	stereo_panning TRUE, FALSE
	sound_call Music_GameCornerDPPt_Ch3_Set1_B6
	sound_call Music_GameCornerDPPt_Ch3_Set1_E6
	stereo_panning FALSE, TRUE
	sound_call Music_GameCornerDPPt_Ch3_Set1_B5
	sound_call Music_GameCornerDPPt_Ch3_Set1_B6
;Bar 11
	stereo_panning TRUE, FALSE
	sound_call Music_GameCornerDPPt_Ch3_Set1_C6
	sound_call Music_GameCornerDPPt_Ch3_Set1_F6
	stereo_panning FALSE, TRUE
	sound_call Music_GameCornerDPPt_Ch3_Set1_C7
	sound_call Music_GameCornerDPPt_Ch3_Set1_F6
	stereo_panning TRUE, FALSE
	sound_call Music_GameCornerDPPt_Ch3_Set1_C7
	sound_call Music_GameCornerDPPt_Ch3_Set1_F6
	stereo_panning FALSE, TRUE
	sound_call Music_GameCornerDPPt_Ch3_Set1_C6
	sound_call Music_GameCornerDPPt_Ch3_Set1_C7
	stereo_panning TRUE, FALSE
	sound_call Music_GameCornerDPPt_Ch3_Set1_D6
	sound_call Music_GameCornerDPPt_Ch3_Set1_Fs6
	stereo_panning FALSE, TRUE
	sound_call Music_GameCornerDPPt_Ch3_Set1_D7
	sound_call Music_GameCornerDPPt_Ch3_Set1_Fs6
	stereo_panning TRUE, FALSE
	sound_call Music_GameCornerDPPt_Ch3_Set1_D7
	sound_call Music_GameCornerDPPt_Ch3_Set1_Fs6
	stereo_panning FALSE, TRUE
	sound_call Music_GameCornerDPPt_Ch3_Set1_D6
	sound_call Music_GameCornerDPPt_Ch3_Set1_D7
;Bar 12
	stereo_panning TRUE, FALSE
	sound_call Music_GameCornerDPPt_Ch3_Set1_D6
	sound_call Music_GameCornerDPPt_Ch3_Set1_G6
	stereo_panning FALSE, TRUE
	sound_call Music_GameCornerDPPt_Ch3_Set1_D7
	sound_call Music_GameCornerDPPt_Ch3_Set1_G6
	stereo_panning TRUE, FALSE
	sound_call Music_GameCornerDPPt_Ch3_Set1_D7
	sound_call Music_GameCornerDPPt_Ch3_Set1_G6
	stereo_panning FALSE, TRUE
	sound_call Music_GameCornerDPPt_Ch3_Set1_D6
	sound_call Music_GameCornerDPPt_Ch3_Set1_D7
	stereo_panning TRUE, FALSE
	sound_call Music_GameCornerDPPt_Ch3_Set1_E6
	sound_call Music_GameCornerDPPt_Ch3_Set1_Gs6
	stereo_panning FALSE, TRUE
	sound_call Music_GameCornerDPPt_Ch3_Set1_E7
	sound_call Music_GameCornerDPPt_Ch3_Set1_Gs6
	stereo_panning TRUE, FALSE
	sound_call Music_GameCornerDPPt_Ch3_Set1_E7
	sound_call Music_GameCornerDPPt_Ch3_Set1_Gs6
	stereo_panning FALSE, TRUE
	sound_call Music_GameCornerDPPt_Ch3_Set1_E6
	sound_call Music_GameCornerDPPt_Ch3_Set1_E7
;Bar 13
	stereo_panning TRUE, TRUE
	octave 3
	volume_envelope 1, 4
	note F#, 1
	volume_envelope 2, 4
	note F#, 2
	rest 1
	volume_envelope 1, 4
	note F#, 2
	volume_envelope 2, 4
	note F#, 2
	octave 4
	volume_envelope 1, 4
	note C#, 2
	volume_envelope 2, 4
	note C#, 2
	octave 3
	volume_envelope 1, 4
	note F#, 1
	volume_envelope 2, 4
	note F#, 2
	rest 1
	volume_envelope 1, 4
	note F#, 2
	volume_envelope 2, 4
	note F#, 2
	octave 4
	volume_envelope 1, 4
	note C#, 4
	note D_, 2
	volume_envelope 2, 4
	note D_, 2
	volume_envelope 1, 4
	note E_, 8
;Bar 14
	note D_, 8
	note C#, 8
	octave 3
	note B_, 8
	note A_, 4
;Bar 15
	note D_, 2
	volume_envelope 2, 4
	note D_, 2
	volume_envelope 1, 4
	note D_, 2
	volume_envelope 2, 4
	note D_, 2
	volume_envelope 1, 4
	note B_, 3
	volume_envelope 2, 4
	note B_, 1
	volume_envelope 1, 4
	note D_, 1
	volume_envelope 2, 4
	note D_, 2
	rest 1
	volume_envelope 1, 4
	note B_, 2
	note E_, 2
	note A#, 2
	note B_, 2
	note A_, 2
	note F#, 2
	note B_, 4
;Bar 16
	volume_envelope 2, 4
	note B_, 2
	rest 2
	volume_envelope 1, 4
	note A_, 8
	note B_, 8
	octave 4
	note D_, 8
	note C#, 4
;Bar 17
	volume_envelope 2, 4
	note C#, 2
	rest 2
	octave 3
	volume_envelope 1, 4
	note F#, 2
	volume_envelope 2, 4
	note F#, 2
	octave 4
	volume_envelope 1, 4
	note C#, 3
	volume_envelope 2, 4
	note C#, 1
	octave 3
	volume_envelope 1, 4
	note F#, 1
	volume_envelope 2, 4
	note F#, 2
	rest 1
	octave 4
	volume_envelope 1, 4
	note C#, 2
	octave 3
	note F#, 2
	volume_envelope 2, 4
	note F#, 2
	volume_envelope 1, 4
	note F#, 2
	note B_, 2
	octave 4
	note C_, 2
	note D_, 4
;Bar 18
	note E_, 6
	note D_, 6
	note C#, 4
	octave 3
	note B_, 6
	note A_, 6
	octave 4
	note C#, 4
;Bar 19
	volume_envelope 2, 4
	note C#, 2
	rest 2
	octave 3
	volume_envelope 1, 4
	note F#, 2
	volume_envelope 2, 4
	note F#, 2
	volume_envelope 1, 4
	note B_, 2
	volume_envelope 2, 4
	note B_, 2
	volume_envelope 1, 4
	note F#, 2
	volume_envelope 2, 4
	note F#, 2
	volume_envelope 1, 4
	note B_, 2
	note E_, 2
	note A#, 2
	note B_, 2
	note A_, 2
	note F#, 2
	octave 4
	note C#, 4
;Bar 20
	note D_, 6
	octave 3
	note A_, 6
	octave 4
	note D_, 4
	volume_envelope 2, 4
	note D_, 2
	rest 2
	volume_envelope 1, 4
	note E_, 4
	note F#, 8
;Bar 21
	volume_envelope 2, 4
	note F#, 2
	rest 2
	volume_envelope 1, 4
	note D#, 4
	note E_, 2
	volume_envelope 2, 4
	note E_, 2
	volume_envelope 1, 4
	note D#, 4
	note C#, 2
	volume_envelope 2, 4
	note C#, 2
	octave 3
	volume_envelope 1, 4
	note B_, 4
	octave 4
	note D#, 2
	volume_envelope 2, 4
	note D#, 2
	octave 3
	volume_envelope 1, 4
	note A#, 7
;Bar 22
	rest 16
	rest 16
	rest 1
;Bar 23
	note E_, 4
	note F#, 4
	note G#, 5
	volume_envelope 2, 4
	note G#, 2
	rest 1
	volume_envelope 1, 4
	note G#, 4
	note A#, 4
	note B_, 4
;Bar 24
	octave 4
	note D#, 4
	note C#, 4
	volume_envelope 2, 4
	note C#, 2
	rest 2
	octave 3
	volume_envelope 1, 4
	note A#, 4
	volume_envelope 2, 4
	note A#, 2
	rest 16
	rest 2
;Bar 25
	octave 4
	volume_envelope 1, 4
	note D#, 4
	note E_, 2
	volume_envelope 2, 4
	note E_, 2
	volume_envelope 1, 4
	note D#, 4
	note C#, 2
	volume_envelope 2, 4
	note C#, 2
	octave 3
	volume_envelope 1, 4
	note B_, 4
	octave 4
	note E_, 2
	volume_envelope 2, 4
	note E_, 2
	volume_envelope 1, 4
	note F#, 7
;Bar 26
	volume_envelope 2, 4
	note F#, 2
	rest 16
	rest 15
;Bar 27
	octave 3
	volume_envelope 1, 4
	note G#, 4
	note A#, 4
	note B_, 4
	volume_envelope 2, 4
	note B_, 2
	rest 2
	volume_envelope 1, 4
	note B_, 4
	octave 4
	note C#, 4
	note D#, 4
;Bar 28
	note F#, 8
	note E_, 8
	note D#, 8
	note E_, 4
	note_type 12, 1, 4
	note D#, 16
;Bar 29
	volume_envelope 2, 4
	note D#, 2
	rest 12
;Bar 30
	note_type 6, 1, 4
	note C_, 2
	note D_, 1
	volume_envelope 2, 4
	note D_, 1
	volume_envelope 1, 4
	note D#, 2
	note D_, 1
	volume_envelope 2, 4
	note D_, 1
;Bar 31
	volume_envelope 1, 4
	note D_, 1
	note D#, 7
	octave 3
	note A#, 8
	octave 4
	note F#, 1
	note G_, 7
	note D#, 8
;Bar 32
	octave 5
	note C_, 4
	octave 4
	note_type 12, 1, 4
	note A#, 10
	note_type 6, 2, 4
	note A#, 2
	rest 6
;Bar 33
	octave 5
	volume_envelope 1, 4
	note D#, 12
	note D_, 4
	note C_, 4
	octave 4
	note A#, 4
	note G#, 4
	note G_, 4
;Bar 34
	note_type 12, 1, 4
	note A#, 12
	note_type 6, 1, 4
	note C_, 4
	note D_, 4
;Bar 35
	note D#, 8
	octave 3
	note A#, 8
	octave 4
	note G_, 8
	note F_, 8
;Bar 36
	octave 5
	note C_, 4
	note C#, 1
	note D_, 3
	volume_envelope 2, 4
	note D_, 2
	rest 2
	octave 4
	note_type 12, 1, 4
	note A#, 10
	note_type 6, 1, 4
;Bar 37
	note G#, 4
	note A#, 4
	note G_, 4
	note D#, 4
	note E_, 4
	note F_, 4
	note A_, 1
	note A#, 3
	volume_envelope 2, 4
	note A#, 2
	rest 2
;Bar 38
	note_type 12, 1, 4
	note D#, 16
	note D#, 14
	volume_envelope 2, 4
	note D#, 2
	note_type 6, 1, 4
	sound_loop 0, Music_GameCornerDPPt_Ch3

Music_GameCornerDPPt_Ch3_Bar1:
	note A_, 4;
	octave 3
	note E_, 4
	note A_, 4
	note E_, 4
	octave 2
	note F_, 4
	octave 3
	note C_, 4
	note F_, 4
	note C_, 4
	sound_ret

Music_GameCornerDPPt_Ch3_Bar2:
	octave 2;
	note G_, 4
	octave 3
	note D_, 4
	note G_, 4
	note D_, 4
	octave 2
	note E_, 4
	note B_, 4
	octave 3
	note E_, 4
	octave 2
	note B_, 4
	sound_ret

Music_GameCornerDPPt_Ch3_Bar3:
	note F_, 4;
	octave 3
	note C_, 4
	note F_, 4
	note C_, 4
	octave 2
	note D_, 4
	note A_, 4
	octave 3
	note D_, 4
	octave 2
	note A_, 4
	sound_ret

Music_GameCornerDPPt_Ch3_Bar4:
	note G_, 4
	octave 3
	note D_, 4
	note G_, 4
	note D_, 4
	octave 2
	note G#, 4
	octave 3
	note E_, 4
	note G#, 4
	note E_, 4
	sound_ret

Music_GameCornerDPPt_Ch3_Set1_E6:
	volume_envelope 1, 15
	octave 5
	note E_, 1
	volume_envelope 2, 15
	octave 6
	note E_, 1
	sound_ret

Music_GameCornerDPPt_Ch3_Set1_A6:
	volume_envelope 1, 15
	octave 5
	note A_, 1
	volume_envelope 2, 15
	octave 6
	note A_, 1
	sound_ret

Music_GameCornerDPPt_Ch3_Set1_E7:
	volume_envelope 1, 15
	octave 6
	note E_, 1
	volume_envelope 2, 15
	octave 7
	note E_, 1
	sound_ret

Music_GameCornerDPPt_Ch3_Set1_C6:
	volume_envelope 1, 15
	octave 5
	note C_, 1
	volume_envelope 2, 15
	octave 6
	note C_, 1
	sound_ret

Music_GameCornerDPPt_Ch3_Set1_F6:
	volume_envelope 1, 15
	octave 5
	note F_, 1
	volume_envelope 2, 15
	octave 6
	note F_, 1
	sound_ret

Music_GameCornerDPPt_Ch3_Set1_C7:
	volume_envelope 1, 15
	octave 6
	note C_, 1
	volume_envelope 2, 15
	octave 7
	note C_, 1
	sound_ret

Music_GameCornerDPPt_Ch3_Set1_D6:
	volume_envelope 1, 15
	octave 5
	note D_, 1
	volume_envelope 2, 15
	octave 6
	note D_, 1
	sound_ret

Music_GameCornerDPPt_Ch3_Set1_D7:
	volume_envelope 1, 15
	octave 6
	note D_, 1
	volume_envelope 2, 15
	octave 7
	note D_, 1
	sound_ret

Music_GameCornerDPPt_Ch3_Set1_G6:
	volume_envelope 1, 15
	octave 5
	note G_, 1
	volume_envelope 2, 15
	octave 6
	note G_, 1
	sound_ret

Music_GameCornerDPPt_Ch3_Set1_B6:
	volume_envelope 1, 15
	octave 5
	note B_, 1
	volume_envelope 2, 15
	octave 6
	note B_, 1
	sound_ret

Music_GameCornerDPPt_Ch3_Set1_Fs6:
	volume_envelope 1, 15
	octave 5
	note F#, 1
	volume_envelope 2, 15
	octave 6
	note F#, 1
	sound_ret

Music_GameCornerDPPt_Ch3_Set1_Gs6:
	volume_envelope 1, 15
	octave 5
	note G#, 1
	volume_envelope 2, 15
	octave 6
	note G#, 1
	sound_ret

Music_GameCornerDPPt_Ch3_Set1_B5:
	volume_envelope 1, 15
	octave 4
	note B_, 1
	volume_envelope 2, 15
	octave 5
	note B_, 1
	sound_ret
; ============================================================================================================
; ============================================================================================================

Music_GameCornerDPPt_Ch4:
	toggle_noise 5
	drum_speed 6
;Bar 1
	rest 16
	rest 16
Music_GameCornerDPPt_Ch4_loop:
	rest 16
	rest 16
;Bar 3
	stereo_panning TRUE, FALSE
	drum_note 9, 16
	stereo_panning FALSE, TRUE
	drum_note 9, 16
;Bar 4
	stereo_panning TRUE, FALSE
	drum_note 9, 8
	stereo_panning FALSE, TRUE
	drum_note 9, 8
	stereo_panning TRUE, FALSE
	drum_note 9, 6
	stereo_panning TRUE, TRUE
	drum_note 12, 2
Music_GameCornerDPPt_Ch4_miniloop1:
	drum_note 12, 4
	drum_note 12, 4
	drum_note 12, 8
	drum_note 12, 8
	drum_note 12, 8
	drum_note 12, 8
	drum_note 12, 8
	drum_note 12, 8
	drum_note 12, 8
	sound_loop 2, Music_GameCornerDPPt_Ch4_miniloop1
	stereo_panning TRUE, FALSE
	drum_note 9, 4
	drum_note 9, 16
	rest 16
	rest 4
;Bar 10
	stereo_panning FALSE, TRUE
	drum_note 9, 16
	rest 12
	stereo_panning TRUE, FALSE
	drum_note 9, 4
;Bar 11
	drum_note 9, 8
	stereo_panning TRUE, TRUE
	drum_note 6, 4
	drum_note 4, 4
	stereo_panning FALSE, TRUE
	drum_note 9, 8
	stereo_panning TRUE, TRUE
	drum_note 6, 4
	drum_note 4, 4
	stereo_panning TRUE, FALSE
;Bar 12
	drum_note 9, 8
	stereo_panning FALSE, TRUE
	drum_note 9, 8
	stereo_panning TRUE, FALSE
	drum_note 9, 8
	
	stereo_panning TRUE, TRUE
	drum_note 6, 4
	drum_note 4, 4
;Bar 13
	drum_note 9, 8
Music_GameCornerDPPt_Ch4_Bar14_20_loop:
	drum_note 3, 4 ; maybe be F_
	drum_note 4, 4
	sound_loop 30, Music_GameCornerDPPt_Ch4_Bar14_20_loop
	sound_call Music_GameCornerDPPt_Ch4_Snare_riff_high
	sound_call Music_GameCornerDPPt_Ch4_Snare_riff_high
;Bar 21
	sound_call Music_GameCornerDPPt_Ch4_Bar21_22
;Bar 24 ;special!
Music_GameCornerDPPt_Ch4_Snare_riff_low:
	drum_note 3, 2
	sound_loop 6, Music_GameCornerDPPt_Ch4_Snare_riff_low

Music_GameCornerDPPt_Ch4_Snare_riff_mid:
	drum_note 2, 2
	sound_loop 6, Music_GameCornerDPPt_Ch4_Snare_riff_mid

	sound_call Music_GameCornerDPPt_Ch4_Snare_riff_high
	sound_call Music_GameCornerDPPt_Ch4_Snare_riff_high
;Bar 25
	sound_call Music_GameCornerDPPt_Ch4_Bar21_22
;Bar 28
	rest 16
	rest 12
	drum_note 12, 2
	drum_note 12, 2
;Bar 29
	drum_note 9, 12
	drum_note 12, 2
	drum_note 12, 2
	drum_note 9, 16
;Bar 30
	drum_note 12, 8
	drum_note 12, 8
	;high snare
	drum_note 1, 2
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	sound_call Music_GameCornerDPPt_Ch4_Snare_riff_high
;Bar 31
	drum_note 9, 16
	drum_note 12, 8
	drum_note 12, 8
;Bar 32
	drum_note 12, 8
	drum_note 12, 8
	drum_note 12, 2
	drum_note 12, 4
	drum_note 12, 2
	drum_note 12, 4
	drum_note 12, 4
;Bar 33
	drum_note 12, 8
	drum_note 12, 8
	drum_note 12, 8
	drum_note 12, 8
;Bar 34
	drum_note 12, 8
	drum_note 12, 8
	drum_note 12, 8
	drum_note 12, 4
	drum_note 12, 4
;Bar 35
	drum_note 12, 8
	drum_note 12, 8
	drum_note 12, 8
	drum_note 12, 8
;Bar 36
	drum_note 12, 8
	drum_note 12, 8
	drum_note 12, 2
	drum_note 12, 4
	drum_note 12, 2
	drum_note 12, 4
	drum_note 12, 4
;Bar 37
	drum_note 12, 8
	drum_note 12, 8
	drum_note 12, 8
	drum_note 12, 8
;Bar 38
	drum_note 12, 8
	drum_note 12, 8
	drum_note 12, 8
	drum_note 12, 4
	drum_note 12, 4
;Bar 39
	drum_note 12, 8
	drum_note 12, 8
	drum_note 12, 8
	drum_note 12, 4
	drum_note 12, 4
;Bar 40
	drum_note 9, 16
	rest 16
	sound_loop 0, Music_GameCornerDPPt_Ch4_loop

Music_GameCornerDPPt_Ch4_Bar21_22:
	drum_speed 12
	drum_note 9, 16
	rest 8
	drum_speed 6
;Bar 22
	drum_note 12, 2
	drum_note 12, 4
	drum_note 12, 2
	drum_note 12, 4
	drum_note 9, 4
;Bar 23
	drum_note 9, 16
	rest 16
	sound_ret

Music_GameCornerDPPt_Ch4_Snare_riff_high:
	drum_note 1, 1
	sound_loop 4, Music_GameCornerDPPt_Ch4_Snare_riff_high
	sound_ret