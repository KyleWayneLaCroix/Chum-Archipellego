;Coverted using MIDI2ASM
;Code by TriteHexagon

; ============================================================================================================

Music_Route3FRLG:
	channel_count 4
	channel 1, Music_Route3FRLG_Ch1
	channel 2, Music_Route3FRLG_Ch2
	channel 3, Music_Route3FRLG_Ch3
	channel 4, Music_Route3FRLG_Ch4

Music_Route3FRLG_Ch1:
	stereo_panning FALSE, TRUE
	volume 7, 7
	duty_cycle $3
	vibrato 8, 2, 4
	note_type 6, 13, 6
	tempo 150
;Bar 1
	octave 3
	note E_, 2
	note F#, 2
	note G_, 12
	note F_, 2
	note G_, 2
	note E_, 2
;Bar 2
	rest 16
	rest 16
	rest 14
;Bar 3
	octave 1
	volume_envelope 10, 6
	note B_, 1
	octave 2
	note C_, 1
	note D_, 1
	note E_, 1
	note F_, 1
	note G_, 1
	note A_, 1
	note B_, 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 3
	note C_, 1
	note D_, 1
	note E_, 1
	note F_, 1
	note G_, 1
Music_Route3FRLG_Ch1_loop:
	octave 3
	volume_envelope 12, 6
	note E_, 12
;Bar 4
	sound_call Music_Route3FRLG_Ch1_Type1
	note C_, 8
;Bar 5
	note D_, 2
	note E_, 2
	note F_, 4
	note G_, 4
	note A_, 2
	note G_, 2
	note A_, 4
	note B_, 1
	note A#, 11
;Bar 6
	note A_, 2
	note A#, 2
	note F_, 16
	octave 4
	note D_, 16
;Bar 7
	note F_, 12
	octave 3
	volume_envelope 10, 6
	note C_, 1
	note D_, 1
	note E_, 1
	note F_, 1
	volume_envelope 12, 6
	note E_, 12
;Bar 8
	sound_call Music_Route3FRLG_Ch1_Type1
	note C_, 4
	note G_, 4
;Bar 9
	note D_, 2
	note E_, 2
	note F_, 2
	note E_, 2
	note G_, 4
	note G_, 2
	note F_, 2
	note G_, 2
	note A_, 2
	note A#, 12
;Bar 10
	note A_, 2
	note A#, 1
	rest 1
	octave 4
	note D_, 16
	note D_, 12
;Bar 11
	note C_, 2
	note D_, 1
	rest 1
	note F_, 4
	octave 3
	note A#, 8
	note C_, 2
	note D_, 2
	note E_, 4
	note D#, 4
	note E_, 4
;Bar 12
	note F_, 4
	note G_, 8
	note F_, 4
	note E_, 4
	note B_, 4
	octave 2
	note B_, 8
;Bar 13
	octave 3
	note B_, 12
	note B_, 2
	rest 2
	note B_, 2
	note A#, 2
	note A_, 6
	note F_, 4
	note C_, 6
;Bar 14
	note A_, 8
	note B_, 4
	octave 4
	note C_, 4
	note F_, 12
;Bar 15
	note E_, 2
	note F_, 1
	rest 1
	note D_, 4
	octave 3
	note B_, 4
	octave 4
	note G_, 4
	octave 3
	note F#, 4
	note A_, 4
	note G_, 4
	note A_, 4
;Bar 16
	note E_, 8
	note B_, 8
	octave 4
	note C_, 4
	note D_, 4
	octave 3
	note B_, 8
;Bar 17
	octave 4
	volume_envelope 11, 6
	note B_, 16
	note A_, 2
	note G_, 2
	note A_, 5
	note G_, 5
	note F_, 5
	volume_envelope 12, 6
;Bar 18
	rest 1
	octave 3
	note A_, 8
	note B_, 4
	note A_, 4
	note F_, 12
;Bar 19
	note D_, 2
	note F_, 1
	rest 1
	note G_, 4
	note B_, 8
	volume_envelope 9, 6
	note G_, 1
	note F_, 1
	note D_, 1
	octave 2
	note B_, 1
	sound_loop 0, Music_Route3FRLG_Ch1_loop
	sound_ret

Music_Route3FRLG_Ch1_Type1:
	note D_, 2;
	note E_, 2
	note C_, 8
	note E_, 8
	note G_, 2
	rest 2
	sound_ret

; ============================================================================================================

Music_Route3FRLG_Ch2:
	duty_cycle $2
	vibrato 8, 2, 2
	stereo_panning TRUE, FALSE
	note_type 6, 15, 6
;Bar 1
	octave 3
	note G_, 2
	note A#, 2
	note B_, 12
	note A_, 2
	note B_, 2
	octave 4
	note C_, 2
	rest 16
	rest 16
	rest 14
;Bar 3
	octave 2
	volume_envelope 10, 6
	note G_, 1
	note A_, 1
	note B_, 1
	octave 3
	note C_, 1
	note D_, 1
	note E_, 1
	note F_, 1
	note G_, 1
	note D_, 1
	note E_, 1
	note F_, 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 4
	note C_, 1
	note D_, 1
	duty_cycle $2
	stereo_panning TRUE, FALSE
	octave 4
	note C#, 1
Music_Route3FRLG_Ch2_loop:
	octave 4
	volume_envelope 9, -6
	note C_, 6
	volume_envelope 13, 8
	note C_, 5
;Bar 4
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	volume_envelope 9, -6
	note E_, 6
	volume_envelope 13, 8
	note E_, 10
	rest 4
	volume_envelope 14, 6
	octave 3
	note G_, 4
	octave 4
	note C_, 4
;Bar 5
	note G_, 4
	note F_, 4
	note E_, 4
	note D_, 4
	note C_, 4
	note D#, 1
	volume_envelope 13, 8
	note D_, 15
;Bar 6
	note F_, 16
	octave 3
	duty_cycle $1
	note A#, 16
;Bar 7
	note A_, 12
	duty_cycle $2
	volume_envelope 9, 6
	note G_, 1
	note A#, 1
	octave 4
	note C_, 1
	note D_, 1
	volume_envelope 9, -6
	note C_, 6
	volume_envelope 13, 8
	note C_, 6
;Bar 8
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	volume_envelope 9, -6
	note E_, 6
	volume_envelope 13, 8
	note E_, 10
	volume_envelope 14, 6
	rest 4
	octave 3
	note G_, 4
	octave 4
	note C_, 4
;Bar 9
	note G_, 4
	note F_, 4
	note E_, 1
	note F_, 1
	note E_, 2
	note D_, 4
	note C_, 4
	note D_, 12
;Bar 10
	octave 3
	note A#, 2
	octave 4
	note D_, 1
	rest 1 ;maybe collapse
	note F_, 16
	octave 3
	volume_envelope 13, 8
	duty_cycle $1
	note A#, 12
;Bar 11
	note A_, 2
	note A#, 1
	rest 1 ;maybe collapse
	octave 4
	note D_, 4
	note F_, 8
	volume_envelope 14, 6
	duty_cycle $2
	note C_, 2
	note D_, 2
	note E_, 4
	note D_, 4
	note E_, 4
;Bar 12
	volume_envelope 9, -6
	note C_, 6
	volume_envelope 13, 8
	note C_, 10
	volume_envelope 14, 6
	octave 3
	note B_, 2
	octave 4
	note C_, 2
	note D_, 4
	octave 3
	note G_, 8
;Bar 13
	octave 4
	volume_envelope 9, -6
	note G_, 6
	volume_envelope 13, 8
	note G_, 10
	volume_envelope 11, 6
	note F#, 2
	note F_, 1
	note E_, 1
	volume_envelope 14, 6
	note F_, 6
	note E_, 4
	note C_, 6
;Bar 14
	volume_envelope 9, -6
	note C_, 6
	volume_envelope 13, 8
	note C_, 10
	octave 3
	duty_cycle $1
	note A_, 12
;Bar 15
	note G_, 2
	note A_, 1
	rest 1 ;maybe collapse
	note B_, 4
	octave 4
	note D_, 8
	volume_envelope 14, 6
	duty_cycle $2
	note C_, 2
	note D_, 2
	note E_, 4
	note D_, 4
	note E_, 4
;Bar 16
	volume_envelope 9, -6
	note C_, 6
	volume_envelope 13, 8
	note C_, 10
	volume_envelope 14, 6
	octave 3
	note B_, 2
	octave 4
	note C_, 2
	note D_, 4
	octave 3
	note G_, 8
;Bar 17
	octave 4
	volume_envelope 9, -6
	note G_, 6
	volume_envelope 13, 8
	note G_, 10
	volume_envelope 14, 6
	note F_, 2
	note E_, 2
	note F_, 6
	note E_, 4
	note C_, 6
;Bar 18
	volume_envelope 9, -6
	note C_, 6
	volume_envelope 13, 8
	note C_, 8
	volume_envelope 13, 2
	note C_, 2
	volume_envelope 14, 6
	note C_, 12
;Bar 19
	octave 3
	note B_, 2
	octave 4
	note C_, 1
	rest 1 ;maybe collapse
	note D_, 4
	note G_, 8
	volume_envelope 10, 6
	note F_, 1
	note D_, 1
	octave 3
	note B_, 1
	note G_, 1
	rest 1
	sound_loop 0, Music_Route3FRLG_Ch2_loop

; ============================================================================================================

Music_Route3FRLG_Ch3:
	note_type 6, 2, 4
	stereo_panning TRUE, TRUE
;Bar 1
	octave 3
	note G_, 2
	note A#, 2
	note B_, 8
	note A_, 8
	note G_, 1
	rest 3
	volume_envelope 2, 4
	note G_, 7
	rest 1
;Bar 2
	sound_call Music_Route3FRLG_Ch3_TypeG_
	note G_, 8
	note E_, 2
	rest 2
	note G_, 7
	rest 1
;Bar 3
	sound_call Music_Route3FRLG_Ch3_TypeG_
	note G_, 8
Music_Route3FRLG_Ch3_loop:
	note E_, 2
	rest 2
	note G_, 8
;Bar 4
	sound_call Music_Route3FRLG_Ch3_TypeE_
	note G_, 8
	note E_, 1
	rest 3
	note G_, 8
;Bar 5
	sound_call Music_Route3FRLG_Ch3_TypeE_
	sound_call Music_Route3FRLG_Ch3_Type1
;Bar 6
	sound_call Music_Route3FRLG_Ch3_TypeF_
	sound_call Music_Route3FRLG_Ch3_Type2
;Bar 7
	sound_call Music_Route3FRLG_Ch3_TypeF_
	note A#, 4
	note F_, 4
	note E_, 2
	rest 2
	note G_, 8
;Bar 8
	sound_call Music_Route3FRLG_Ch3_TypeE_
	note G_, 8
	note E_, 2
	rest 2
	note G_, 8
;Bar 9
	sound_call Music_Route3FRLG_Ch3_TypeE_
	sound_call Music_Route3FRLG_Ch3_Type1
;Bar 10
	sound_call Music_Route3FRLG_Ch3_TypeF_
	sound_call Music_Route3FRLG_Ch3_Type2
;Bar 11
	sound_call Music_Route3FRLG_Ch3_TypeF_
	note A#, 4
	note A_, 4
	note G_, 2
	rest 2
	octave 4
	note C_, 8
;Bar 12
	octave 3
	sound_call Music_Route3FRLG_Ch3_TypeG_
	octave 4
	note C_, 8
	octave 3
	note G_, 2
	rest 2
	octave 4
	note D_, 8
;Bar 13
	octave 3
	sound_call Music_Route3FRLG_Ch3_TypeG_
	octave 4
	note D_, 4
	note C#, 4
	octave 3
	note F_, 2
	rest 2
	octave 4
	note C_, 8
;Bar 14
	octave 3
	sound_call Music_Route3FRLG_Ch3_TypeF_
	octave 4
	note C_, 8
	octave 3
	note F_, 2
	rest 2
	note A_, 8
;Bar 15
	sound_call Music_Route3FRLG_Ch3_TypeF_
	note A_, 4
	note B_, 4
	note A_, 2
	rest 2
	octave 4
	note E_, 8
;Bar 16
	octave 3
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	note A_, 1
	rest 3
	note A_, 2
	rest 2
	octave 4
	note E_, 4
	note D#, 4
	octave 3
	note G_, 2
	rest 2
	octave 4
	note D_, 8
;Bar 17
	octave 3
	sound_call Music_Route3FRLG_Ch3_TypeG_
	octave 4
	note C_, 4
	octave 3
	note G_, 2
	note F#, 2
	note F_, 2
	rest 2
	octave 4
	note C_, 8
;Bar 18
	octave 3
	sound_call Music_Route3FRLG_Ch3_TypeF_
	octave 4
	note D_, 4
	octave 3
	note G_, 4
	note D_, 2
	rest 2
	note F_, 6
	rest 2
;Bar 19
	note D_, 1
	rest 1
	note F_, 1
	rest 1
	note G_, 1
	rest 3
	note G_, 2
	rest 2
	octave 4
	note G_, 2
	note F_, 2
	octave 3
	note G_, 4
	sound_loop 0, Music_Route3FRLG_Ch3_loop

Music_Route3FRLG_Ch3_TypeE_:
	note E_, 1
	rest 1
	sound_loop 2, Music_Route3FRLG_Ch3_TypeE_
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	sound_ret

Music_Route3FRLG_Ch3_TypeF_:
	note F_, 1
	rest 1
	sound_loop 2, Music_Route3FRLG_Ch3_TypeF_
	note F_, 2
	rest 2
	note F_, 2
	rest 2
	sound_ret

Music_Route3FRLG_Ch3_TypeG_:
	;octave 3
	note G_, 1
	rest 1
	sound_loop 2, Music_Route3FRLG_Ch3_TypeG_
	note G_, 2
	rest 2
	note G_, 2
	rest 2
	sound_ret

Music_Route3FRLG_Ch3_Type1:
	note G_, 4;
	note A_, 4
	note F_, 2
	rest 2
	note A#, 8
	sound_ret

Music_Route3FRLG_Ch3_Type2:
	note A#, 8;
	note F_, 2
	rest 2
	note A#, 8
	sound_ret

; ============================================================================================================

Music_Route3FRLG_Ch4:
	toggle_noise 1
	stereo_panning TRUE, TRUE
	drum_speed 6
;Bar 1
	sound_call Music_Route3FRLG_Ch4_4xA_
	drum_note 11, 8
	sound_call Music_Route3FRLG_Ch4_4xA_
	sound_call Music_Route3FRLG_Ch4_4xA_
	drum_note 11, 4
	drum_note 5, 2
	drum_note 5, 2
	drum_note 5, 4
;Bar 2
	drum_note 10, 2;
	drum_note 10, 2
	drum_note 10, 4
	drum_note 10, 4
Music_Route3FRLG_Ch4_Intro:
	drum_note 10, 1
	sound_loop 8, Music_Route3FRLG_Ch4_Intro
Music_Route3FRLG_Ch4_loop:
	drum_note 10, 4
	drum_note 5, 2
	drum_note 5, 2
	drum_note 5, 4
;Bar 3
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 4
	drum_note 11, 4
	drum_note 11, 4
	sound_call Music_Route3FRLG_Ch4_4xA_
	drum_note 11, 4
	drum_note 5, 2
	drum_note 5, 2
	drum_note 5, 4
;Bar 4
	sound_call Music_Route3FRLG_Ch4_Bar4
;Bar 5
	sound_call Music_Route3FRLG_Ch4_Bar5
;Bar 6
	sound_call Music_Route3FRLG_Ch4_Bar6
;Bar 7
	sound_call Music_Route3FRLG_Ch4_Bar4
;Bar 8
	sound_call Music_Route3FRLG_Ch4_Bar5
;Bar 9
	sound_call Music_Route3FRLG_Ch4_Bar6
;Bar 10
	sound_call Music_Route3FRLG_Ch4_Bar5
;Bar 11
	sound_call Music_Route3FRLG_Ch4_Bar4
;Bar 12
	sound_call Music_Route3FRLG_Ch4_Bar6
;Bar 13
	sound_call Music_Route3FRLG_Ch4_Bar5
;Bar 14
	sound_call Music_Route3FRLG_Ch4_Bar5
;Bar 15
	sound_call Music_Route3FRLG_Ch4_Bar4
;Bar 16
	sound_call Music_Route3FRLG_Ch4_Bar6
;Bar 17
	sound_call Music_Route3FRLG_Ch4_Bar5
;Bar 18
	sound_call Music_Route3FRLG_Ch4_Bar5
;Bar 19
	drum_note 11, 2;
	drum_note 11, 2
	drum_note 11, 4
	drum_note 11, 4
	sound_call Music_Route3FRLG_Ch4_4xA_
	sound_call Music_Route3FRLG_Ch4_4xA_
	sound_loop 0, Music_Route3FRLG_Ch4_loop

Music_Route3FRLG_Ch4_Bar4:
	drum_note 11, 2;
	drum_note 11, 2
	drum_note 11, 4
	drum_note 11, 4
	drum_note 11, 1;
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1;
	drum_note 11, 1;
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 4
	drum_note 5, 2
	drum_note 5, 2
	drum_note 5, 4
	sound_ret

Music_Route3FRLG_Ch4_Bar5:
	drum_note 11, 2;
	drum_note 11, 2
	drum_note 11, 4
	drum_note 11, 8
	drum_note 11, 1;
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 4
	drum_note 5, 2
	drum_note 5, 2
	drum_note 5, 4
	sound_ret

Music_Route3FRLG_Ch4_Bar6:
	drum_note 11, 2;
	drum_note 11, 2
	drum_note 11, 4
	drum_note 11, 10
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 4
	drum_note 5, 2
	drum_note 5, 2
	drum_note 5, 4
	sound_ret

Music_Route3FRLG_Ch4_4xA_:
	drum_note 11, 1
	sound_loop 4, Music_Route3FRLG_Ch4_4xA_
	sound_ret

; ============================================================================================================

