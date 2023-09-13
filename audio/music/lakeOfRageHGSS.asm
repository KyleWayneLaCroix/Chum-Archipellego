;Coverted using MIDI2ASM
;Version 2.0. (23-Sep-2019)
;Code by TriteHexagon
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_LakeOfRageHGSS:
	channel_count 4
	channel 1, Music_LakeOfRageHGSS_Ch1
	channel 2, Music_LakeOfRageHGSS_Ch2
	channel 3, Music_LakeOfRageHGSS_Ch3
	channel 4, Music_LakeOfRageHGSS_Ch4

Music_LakeOfRageHGSS_Ch1:
	volume 5, 5
	duty_cycle $3
	pitch_offset $0002
	vibrato 8, 1, 2
	note_type 12, 10, 7
	tempo 144
;Bar 1
	octave 3
	volume_envelope 11, 7
	note D_, 6
	volume_envelope 10, 7
	note D_, 4
	volume_envelope 11, 7
	octave 2
	note B_, 2
	octave 3
	note D_, 2
	note G_, 2
;Bar 2
	volume_envelope 11, 7
	note F#, 6
	volume_envelope 10, 7
	note F#, 4
	rest 2
	volume_envelope 11, 7
	note E_, 4
;Bar 3
	sound_call Music_LakeOfRageHGSS_Ch1_Intro
;Bar 7
Music_LakeOfRageHGSS_Ch1_loop:
	duty_cycle $3
	octave 3
	sound_call Music_LakeOfRageHGSS_Ch1_Intro
;Bar 11
	note D_, 6
	note F#, 6
	note D_, 4
;Bar 12
	note C_, 3
	octave 2
	note B_, 3
	note A_, 2
	note G_, 8
;Bar 13
	octave 3
	note C_, 12
	note E_, 4
;Bar 14
	note D_, 3
	volume_envelope 6, 7
	octave 2
	note A_, 1
	volume_envelope 10, 7
	note A_, 8
	octave 3
	note E_, 4
;Bar 15
	octave 3
	note D_, 3
	note E_, 3
	note F#, 6
	note D_, 4
;Bar 16
	duty_cycle $0
	note_type 6, 11, 7
	note G_, 1
	rest 3
	note_type 12, 10, 7
	note C_, 1
	volume_envelope 11, 7
	note E_, 1
	volume_envelope 10, 7
	note C_, 6
	note E_, 6
;Bar 17
	note_type 6, 11, 7
	note E_, 1
	rest 3
	note_type 12, 9, 7
	note C_, 1
	volume_envelope 11, 7
	note G_, 1
	volume_envelope 10, 7
	note E_, 8
	note G_, 4
;Bar 18
	note_type 6, 11, 7
	note F#, 1
	rest 3
	note_type 12, 10, 7
	note F#, 1
	volume_envelope 11, 7
	note G_, 1
	volume_envelope 10, 7
	note A_, 10
	rest 2
;Bar 19
	note_type 6, 12, 7
	note A_, 1
	rest 3
	note_type 12, 10, 7
	note A_, 1
	volume_envelope 11, 7
	octave 4
	note C_, 1
	note D_, 12
	sound_loop 0, Music_LakeOfRageHGSS_Ch1_loop

Music_LakeOfRageHGSS_Ch1_Intro:
;Bar 4
	note F#, 6
	note E_, 6
	note D_, 4
;Bar 8
	note F_, 6
	note C_, 4
	note E_, 2
	note F_, 4
;Bar 9
	note G_, 6
	note D_, 2
	octave 2
	note B_, 3
	octave 3
	note D_, 3
	note G_, 2
;Bar 10
	note F#, 12
	note E_, 4
	sound_ret

; ============================================================================================================

Music_LakeOfRageHGSS_Ch2:
	duty_cycle $1
	vibrato 32, 2, 4
	note_type 12, 14, 7
;Bar 1
	octave 3
	note G_, 10
	volume_envelope 13, 7
	note D_, 2
	volume_envelope 12, 7
	note G_, 1
	rest 1
	note B_, 1
	rest 1
;Bar 2
	volume_envelope 14, 7
	note A_, 12
	volume_envelope 13, 7
	note G_, 4
;Bar 3
	volume_envelope 14, 7
	octave 4
	note D_, 10
	volume_envelope 13, 7
	octave 3
	note A_, 3
	volume_envelope 14, 7
	octave 4
	note D_, 3
;Bar 4
	sound_call Music_LakeOfRageHGSS_Ch2_Bar4
;Bar 5
	note G_, 12
	note B_, 4
;Bar 6
	note A_, 3
	note G_, 1
	note F#, 8
	note F#, 1
	note E_, 1
	note D_, 1
	note E_, 1
;Bar 7
	volume_envelope 15, 7
	note F#, 10
	octave 3
	note A_, 3
	octave 4
	note D_, 3
;Bar 8
	sound_call Music_LakeOfRageHGSS_Ch2_Bar4
;Bar 9
	note G_, 12
	note B_, 4
;Bar 10
	note A_, 3
	note G_, 1
	note F#, 12
;Bar 11
	note A_, 1
	rest 2
	octave 5
	note C#, 1
	volume_envelope 13, 7
	note D_, 12
Music_LakeOfRageHGSS_Ch2_loop:
;Bar 12
	volume_envelope 14, 7
	octave 4
	note G_, 3
	note F#, 3
	note E_, 2
	note C_, 8
	rest 2
;Bar 13
	duty_cycle $0
	note C_, 1
	volume_envelope 13, 7
	note E_, 1
	volume_envelope 14, 7
	note G_, 1
	rest 1
	volume_envelope 13, 7
	note E_, 1
	note G_, 1
	volume_envelope 14, 7
	octave 5
	note C_, 8
;Bar 14	
	duty_cycle $1
	octave 4
	note_type 6, 14, 7
	rest 3
	note G_, 1
	note_type 12, 14, 7
	note A_, 4
	note G_, 4
	note F#, 4
	note E_, 2
	note D_, 3
;Bar 15
	note E_, 3
	note F#, 2
	note A_, 8
	octave 3
	note G_, 3
;Bar 16
	note F#, 3
	note E_, 2
	octave 4
	note C_, 3
	octave 3
	note B_, 3
	note A_, 2
	octave 4
	note E_, 3
;Bar 17
	note D_, 3
	note C_, 2
	note G_, 3
	note F#, 3
	note E_, 2
;Bar 18
	volume_envelope 15, 7
	note F#, 10
	volume_envelope 14, 7
	note D_, 3
	note F#, 3
	note A_, 10
;Bar 19
	note_type 3, 12, 7
	octave 3
	note D_, 2
	note E_, 2
	note D_, 2
	note C#, 2
	note D_, 3
	note E_, 2
	note F#, 2
	note G_, 2
	note A_, 2
;Bar 20
	note B_, 2
	octave 4
	note C#, 3
	note_type 12, 15, 7
	duty_cycle $0
	note F#, 10
	octave 3
	note A_, 3
	octave 4
	note D_, 3
;Bar 21
	sound_call Music_LakeOfRageHGSS_Ch2_Bar4
;Bar 22
	note G_, 12
	note B_, 4
;Bar 23
	note A_, 3
	note G_, 1
	note F#, 8
	volume_envelope 13, 7
	duty_cycle $1
	octave 3
	note F#, 4
	note A_, 3
	octave 4
	note C#, 1
	note D_, 12
;Bar 24
	sound_loop 0, Music_LakeOfRageHGSS_Ch2_loop

Music_LakeOfRageHGSS_Ch2_Bar4:
	note A_, 10
	octave 5
	note C_, 3
	octave 4
	note B_, 3
	sound_ret

; ============================================================================================================

Music_LakeOfRageHGSS_Ch3:
	note_type 12, 1, 5
	stereo_panning FALSE, TRUE
;Bar 1
	octave 3
	note G_, 4
	rest 2
	note G_, 5
	rest 5
	note F#, 4
	rest 2
	note F#, 5
	rest 1
;Bar 2
	octave 2
	note E_, 4
;Bar 3
	note D_, 5
	rest 1
	octave 1
	note A_, 6
	octave 2
	note D_, 4
;Bar 4
	note F_, 6
	note C_, 6
	note F_, 2
	note F#, 2
;Bar 5
	note G_, 5
	rest 1
	note D_, 6
	note G_, 4
;Bar 6
	note F#, 5
	rest 1
	note F#, 5
	rest 1
	note E_, 4
Music_LakeOfRageHGSS_Ch3_loop:
;Bar 7
	note D_, 5
	rest 1
	octave 1
	note A_, 6
	octave 2
	note D_, 4
;Bar 8
	note F_, 6
	note C_, 6
	note F_, 2
	note F#, 2
;Bar 9
	note G_, 5
	rest 1
	note D_, 6
	note G_, 4
;Bar 10
	note F#, 5
	rest 1
	note F#, 6
	note E_, 4
;Bar 11
	note D_, 6
	octave 1
	note A_, 6
	octave 2
	note D_, 4
;Bar 12
	note C_, 5
	rest 1
	note C_, 6
	note G_, 4
;Bar 13
	note C_, 5
	rest 1
	note C_, 6
	note G_, 4
;Bar 14
	note D_, 5
	rest 1
	note D_, 6
	note A_, 4
;Bar 15
	note D_, 6
	note A_, 6
	octave 3
	note D_, 4
;Bar 16
	note C_, 5
	rest 1
	octave 2
	note G_, 6
	note C_, 4
;Bar 17
	note C_, 6
	note G_, 6
	octave 3
	note C_, 4
;Bar 18
	octave 2
	note D_, 6
	note A_, 6
	octave 3
	note D_, 4
;Bar 19
	note D_, 6
	octave 2
	note A_, 6
	note D_, 4
	sound_loop 0, Music_LakeOfRageHGSS_Ch3_loop

; ============================================================================================================

Music_LakeOfRageHGSS_Ch4:
	toggle_noise 4
	drum_speed 12
	stereo_panning TRUE, FALSE
;Bar 1
	rest 16
;Bar 2
	rest 12
	drum_speed 6
	sound_call Music_LakeOfRageHGSS_Ch4_Riff
	drum_speed 12
;Bar 3
	drum_note 12, 12
	rest 16
;Bar 4
	drum_note 12, 4
;Bar 5
	drum_note 12, 16
;Bar 6
	drum_note 12, 12
	drum_speed 6
	sound_call Music_LakeOfRageHGSS_Ch4_Riff
	drum_speed 12
;Bar 7
Music_LakeOfRageHGSS_Ch4_loopy:
	drum_note 12, 12
	drum_note 12, 4
	sound_loop 4, Music_LakeOfRageHGSS_Ch4_loopy
;Bar 11
	drum_note 12, 6
	drum_note 12, 6
	drum_speed 6
	sound_call Music_LakeOfRageHGSS_Ch4_Riff3
	drum_speed 12
;Bar 12
Music_LakeOfRageHGSS_Ch4_loop:
	drum_note 12, 2
	sound_call Music_LakeOfRageHGSS_Ch4_Type1
	sound_call Music_LakeOfRageHGSS_Ch4_Type3
;Bar 13
	drum_note 5, 2
	sound_call Music_LakeOfRageHGSS_Ch4_Type1
	sound_call Music_LakeOfRageHGSS_Ch4_Type2
	drum_note 5, 3
;Bar 14
	sound_call Music_LakeOfRageHGSS_Ch4_Type1
	sound_call Music_LakeOfRageHGSS_Ch4_Type3
;Bar 15
	drum_note 5, 2
	sound_call Music_LakeOfRageHGSS_Ch4_Type1
	sound_call Music_LakeOfRageHGSS_Ch4_Type2
	drum_note 5, 1
;Bar 16
	drum_note 12, 4
	drum_note 5, 2
	drum_note 5, 4
	sound_call Music_LakeOfRageHGSS_Ch4_Type3
;Bar 17
	drum_note 5, 2
	sound_call Music_LakeOfRageHGSS_Ch4_Type1
	sound_call Music_LakeOfRageHGSS_Ch4_Type2
	drum_note 5, 3
;Bar 18
	sound_call Music_LakeOfRageHGSS_Ch4_Type1
	sound_call Music_LakeOfRageHGSS_Ch4_Type3
;Bar 19
	drum_note 5, 2
	sound_call Music_LakeOfRageHGSS_Ch4_Type1
	sound_call Music_LakeOfRageHGSS_Ch4_Type2
	drum_note 5, 1
;Bar 20
	drum_note 12, 4
	drum_note 5, 2
	drum_speed 6
	sound_call Music_LakeOfRageHGSS_Ch4_Riff2
	sound_call Music_LakeOfRageHGSS_Ch4_Type4
;Bar21
	sound_call Music_LakeOfRageHGSS_Ch4_Riff2
	sound_call Music_LakeOfRageHGSS_Ch4_Type4
;Bar 22
	sound_call Music_LakeOfRageHGSS_Ch4_Riff2
	sound_call Music_LakeOfRageHGSS_Ch4_Type4
;Bar 23
	sound_call Music_LakeOfRageHGSS_Ch4_Riff2
	sound_call Music_LakeOfRageHGSS_Ch4_Type4
;Bar 24
	sound_call Music_LakeOfRageHGSS_Ch4_Riff2
	drum_speed 12
	drum_note 5, 1
	drum_note 5, 1
	drum_note 5, 1
	drum_note 5, 1
	sound_loop 0, Music_LakeOfRageHGSS_Ch4_loop

Music_LakeOfRageHGSS_Ch4_Riff:
	drum_note 10, 1
	sound_loop 8, Music_LakeOfRageHGSS_Ch4_Riff
	sound_ret

Music_LakeOfRageHGSS_Ch4_Riff3:
	drum_note 5, 1
	sound_loop 8, Music_LakeOfRageHGSS_Ch4_Riff
	sound_ret

Music_LakeOfRageHGSS_Ch4_Type1:
	drum_speed 6
	drum_note 5, 1
	drum_note 5, 1
	drum_note 5, 1
	drum_note 5, 1
	drum_speed 12
	drum_note 5, 2
	drum_note 5, 4
	sound_ret

Music_LakeOfRageHGSS_Ch4_Type2:
	drum_note 5, 1
	drum_note 5, 1
	drum_speed 6
	drum_note 5, 1
	drum_note 5, 1
	drum_speed 12
	drum_note 5, 1
	drum_note 5, 1
	sound_ret

Music_LakeOfRageHGSS_Ch4_Type3:
	drum_note 5, 2
	drum_note 5, 1
	drum_note 5, 1
	drum_note 5, 1
	drum_note 5, 1
	sound_ret

Music_LakeOfRageHGSS_Ch4_Riff2:
	drum_note 5, 1
	sound_loop 12, Music_LakeOfRageHGSS_Ch4_Riff2
	sound_ret

Music_LakeOfRageHGSS_Ch4_Type4:
	drum_note 5, 2
	drum_note 5, 2
	drum_note 5, 2
	drum_note 5, 2
	drum_note 5, 4
	drum_note 5, 2
	drum_note 5, 2
	drum_note 5, 4
	sound_ret

; ============================================================================================================

