;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 4.0 (17-Jun-2020)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_EncounterArtist:
	channel_count 3
	channel 1, Music_EncounterArtist_Ch1
	channel 2, Music_EncounterArtist_Ch2
	channel 3, Music_EncounterArtist_Ch3

Music_EncounterArtist_Ch1:
	volume 7, 7
	duty_cycle $2
	note_type 6, 11, 5
	vibrato 18, 1, 2
	tempo 159
	stereo_panning TRUE, FALSE
;Bar 1
	rest 4
Music_EncounterArtist_Ch1_loop:
	note_type 6, 11, 5
	octave 3
	note A_, 16
	note G#, 1
	volume_envelope 5, 5
	note G#, 1
	note_type 12, 11, 5
	sound_call Music_EncounterArtist_Ch1_2_Gs
	volume_envelope 11, 5
	note G#, 2
	note G_, 1
;Bar 2
	note G#, 2
	note A_, 1
	note G#, 1
	note A_, 2
	note B_, 1
	octave 4
	note C_, 1
	volume_envelope 5, 5
	note C_, 1
	rest 1
	volume_envelope 11, 5
	octave 3
	note A_, 4
	octave 4
	note F_, 4
;Bar 3
	rest 2
	octave 3
	sound_call Music_EncounterArtist_Ch1_Fs_2R
	sound_call Music_EncounterArtist_Ch1_Fs
	rest 3
	sound_call Music_EncounterArtist_Ch1_2_G_
	rest 1
;Bar 4
	volume_envelope 11, 5
	note G_, 2
	volume_envelope 5, 5
	note G_, 1
	rest 1
	sound_call Music_EncounterArtist_Ch1_Fs_2R
	sound_call Music_EncounterArtist_Ch1_Fs
	rest 3
	sound_call Music_EncounterArtist_Ch1_2_G_
	rest 1
;Bar 5
	sound_call Music_EncounterArtist_Ch1_G_2R
	sound_call Music_EncounterArtist_Ch1_Fs_2R
	sound_call Music_EncounterArtist_Ch1_Fs
	rest 3
	sound_call Music_EncounterArtist_Ch1_2_G_
	rest 1
;Bar 6
	volume_envelope 11, 5
	note G#, 2
	sound_call Music_EncounterArtist_Ch1_2_A_
	sound_call Music_EncounterArtist_Ch1_2_A_
	sound_call Music_EncounterArtist_Ch1_2_Gs
	sound_call Music_EncounterArtist_Ch1_2_Gs
	volume_envelope 11, 5
	note G_, 1
	note F#, 1
	sound_call Music_EncounterArtist_Ch1_2_G_
	rest 1
	volume_envelope 11, 5
	note C#, 3
;Bar 7
	volume_envelope 5, 5
	note C#, 1
	rest 1
	sound_call Music_EncounterArtist_Ch1_Fs_2R
	sound_call Music_EncounterArtist_Ch1_Fs
	rest 1
	sound_call Music_EncounterArtist_Ch1_G_2R
	volume_envelope 11, 5
	note G_, 1
;Bar 8
	volume_envelope 5, 5
	note G_, 1
	rest 3
	sound_call Music_EncounterArtist_Ch1_Fs_2R
	sound_call Music_EncounterArtist_Ch1_Fs_2R
	sound_call Music_EncounterArtist_Ch1_2_G_
	rest 1
	volume_envelope 11, 5
	note A_, 3
;Bar 9
	volume_envelope 5, 5
	note A_, 1
	rest 1
	sound_call Music_EncounterArtist_Ch1_Fs_2R
	sound_call Music_EncounterArtist_Ch1_Fs
	rest 3
	sound_call Music_EncounterArtist_Ch1_2_G_
	rest 1
;Bar 10
	volume_envelope 11, 5
	note G#, 2
	sound_call Music_EncounterArtist_Ch1_2_A_
	sound_call Music_EncounterArtist_Ch1_2_A_
	sound_call Music_EncounterArtist_Ch1_2_Gs
	sound_call Music_EncounterArtist_Ch1_2_Gs
	volume_envelope 11, 5
	note G_, 1
	note F#, 1
	note G_, 1
	sound_call Music_EncounterArtist_Ch1_2_Gs
	volume_envelope 11, 5
	note C#, 3
;Bar 11
	volume_envelope 5, 5
	note C#, 1
	rest 1
	sound_call Music_EncounterArtist_Ch1_G_2R
	sound_call Music_EncounterArtist_Ch1_G_2R
	sound_call Music_EncounterArtist_Ch1_G_2R
;Bar 12
	sound_call Music_EncounterArtist_Ch1_G_2R
	sound_call Music_EncounterArtist_Ch1_G_2R
	sound_call Music_EncounterArtist_Ch1_G_2R
	sound_call Music_EncounterArtist_Ch1_G_2R
;Bar 13
	sound_call Music_EncounterArtist_Ch1_G_2R
	sound_call Music_EncounterArtist_Ch1_Fs_2R
	sound_call Music_EncounterArtist_Ch1_Fs_2R
	sound_call Music_EncounterArtist_Ch1_Fs_2R
;Bar 14
	sound_call Music_EncounterArtist_Ch1_Fs_2R
	sound_call Music_EncounterArtist_Ch1_Fs_2R
	sound_call Music_EncounterArtist_Ch1_Fs_2R
	sound_call Music_EncounterArtist_Ch1_Fs_2R
;Bar 15
	sound_call Music_EncounterArtist_Ch1_Fs
	volume_envelope 11, 5
	octave 5
	note D_, 1
	volume_envelope 5, 5
	note D_, 1
	sound_call Music_EncounterArtist_Ch1_2_D_
	sound_call Music_EncounterArtist_Ch1_2_D_
	sound_call Music_EncounterArtist_Ch1_2_D_
	volume_envelope 11, 5
	note C#, 1
	volume_envelope 5, 5
	note C#, 1
	sound_call Music_EncounterArtist_Ch1_2_D_
	sound_call Music_EncounterArtist_Ch1_2_D_
;Bar 16
	sound_call Music_EncounterArtist_Ch1_2_D_
	note_type 8, 9, 5
	note C#, 2
	note D_, 2
	note D_, 2
	note C#, 2
	note D_, 2
	note D_, 2
Music_EncounterArtist_Ch1_Bar16:
	note C#, 1
	note D_, 1
	note D_, 1
	sound_loop 4, Music_EncounterArtist_Ch1_Bar16
	sound_loop 0, Music_EncounterArtist_Ch1_loop

Music_EncounterArtist_Ch1_Fs:
	volume_envelope 11, 5;
	note F#, 1;
	volume_envelope 5, 5
	note F#, 1
	sound_ret

Music_EncounterArtist_Ch1_Fs_2R:
	volume_envelope 11, 5;
	note F#, 1;
	volume_envelope 5, 5
	note F#, 1
	rest 2
	sound_ret

Music_EncounterArtist_Ch1_G_2R:
	volume_envelope 11, 5;
	note G_, 1;
	volume_envelope 5, 5
	note G_, 1
	rest 2
	sound_ret

; ============================================================================================================

Music_EncounterArtist_Ch2:
	duty_cycle $2
	note_type 6, 11, 5
	vibrato 18, 1, 2
;Bar 1
	octave 5
	note E_, 1
	note D_, 1
	note C#, 1
	octave 4
	note B_, 1
Music_EncounterArtist_Ch2_loop:
	note_type 6, 11, 5
	note A_, 2
	note G#, 2
	note A_, 12
	sound_call Music_EncounterArtist_Ch1_2_Gs
	note_type 12, 11, 5
	sound_call Music_EncounterArtist_Ch1_2_Gs
	volume_envelope 11, 5
	note G#, 2
	note G_, 1
;Bar 2
	note G#, 2
	note A_, 1
	note G#, 1
	note A_, 2
	note B_, 1
	octave 5
	sound_call Music_EncounterArtist_Ch2_C_
	rest 1
	volume_envelope 11, 5
	note C#, 4
	note A_, 4
;Bar 3
	octave 3
	sound_call Music_EncounterArtist_Ch1_2_A_
	note_type 6, 11, 5
	octave 4
	note G#, 1
	note A_, 3
	note_type 12, 11, 5
	note G_, 1
	note F#, 1
	note D_, 1
	note E_, 1
	note F#, 3
	sound_call Music_EncounterArtist_Ch1_2_G_
	rest 3
;Bar 4
	volume_envelope 11, 5
	sound_call Music_EncounterArtist_Ch2_Type2
	octave 3
	note A_, 1
	sound_call Music_EncounterArtist_Ch1_2_Gs
	note_type 6, 11, 5
	note A_, 6
;Bar 5
	octave 4
	note C_, 1
	note C#, 3
	octave 3
	note A#, 2
	note A_, 2
	volume_envelope 5, 5
	note A_, 2
	volume_envelope 11, 5
	sound_call Music_EncounterArtist_Ch2_Type1
	sound_call Music_EncounterArtist_Ch2_Type3
	sound_call Music_EncounterArtist_Ch1_2_A_
	sound_call Music_EncounterArtist_Ch1_2_A_
	volume_envelope 11, 5
	note G#, 1
	note G_, 1
	sound_call Music_EncounterArtist_Ch1_2_Gs
	volume_envelope 11, 5
	note G_, 1
	note F#, 1
	note G_, 1
	note C#, 1
	volume_envelope 5, 5
	note C#, 1
	volume_envelope 11, 5
	note A_, 3
;Bar 7
	octave 3
	note A#, 1
	sound_call Music_EncounterArtist_Ch1_2_A_
	sound_call Music_EncounterArtist_Ch2_Type1
	note G_, 1
	note F#, 1
	sound_call Music_EncounterArtist_Ch1_2_G_
	volume_envelope 11, 5
	octave 5
	note C_, 1
	octave 4
	note B_, 1
	volume_envelope 5, 5
	note B_, 1
	volume_envelope 11, 5
	note A#, 1
;Bar 8
	note A_, 1
	note G_, 1
	sound_call Music_EncounterArtist_Ch2_Type2
	note_type 6, 11, 5
	note G#, 1
	note A_, 1
	note_type 12, 11, 5
	note C#, 3
	octave 3
	note A_, 1
	octave 4
	note C_, 3
;Bar 9
	note D_, 1
	octave 3
	sound_call Music_EncounterArtist_Ch1_2_A_
	sound_call Music_EncounterArtist_Ch2_Type1
	sound_call Music_EncounterArtist_Ch2_Type3
	sound_call Music_EncounterArtist_Ch1_2_A_
	sound_call Music_EncounterArtist_Ch1_2_A_
	volume_envelope 11, 5
	note G#, 1
	note G_, 1
	sound_call Music_EncounterArtist_Ch1_2_Gs
	volume_envelope 11, 5
	note G_, 1
	note F#, 1
	note G_, 1
	sound_call Music_EncounterArtist_Ch1_2_Gs
	volume_envelope 11, 5
	note A_, 3
;Bar 11
	volume_envelope 5, 5
	note A_, 1
	rest 1
	volume_envelope 11, 5
	note A_, 1
	octave 5
	note C_, 1
	note D_, 1
	note F_, 1
	note C_, 1
	note D_, 1
	note G_, 1
	note F_, 2
	note C_, 1
	note C#, 1
	volume_envelope 5, 5
	note C#, 1
;Bar 12
	volume_envelope 11, 5
	note D_, 4
	note D_, 4
	note F_, 2
	note E_, 1
	sound_call Music_EncounterArtist_Ch2_C_
	volume_envelope 11, 5
	note C#, 1
	note D_, 1
	note F_, 3
;Bar 13
	volume_envelope 5, 5
	note F_, 1
	rest 1
	volume_envelope 11, 5
	octave 4
	note D_, 1
	note F_, 1
	note G_, 1
	note A_, 1
	note C_, 1
	note C#, 1
	octave 5
	note D_, 1
	note C_, 2
	octave 4
	note G#, 1
	sound_call Music_EncounterArtist_Ch1_2_A_
;Bar 14
	volume_envelope 11, 5
	octave 5
	note C_, 1
	note D_, 2
	octave 4
	note G#, 1
	note A_, 2
	note E_, 1
	note F_, 2
	note C_, 1
	note D_, 1
	note G_, 1
	note A_, 1
	octave 5
	note_type 6, 11, 5
	note C_, 1
	note D_, 2
	note D_, 2
;Bar 15
	note D_, 2
	note D_, 2
	note D_, 1
	octave 4
	note G_, 1
	note G#, 2
	rest 1
	note_type 12, 11, 5
	sound_call Music_EncounterArtist_Ch1_2_G_
	sound_call Music_EncounterArtist_Ch2_F_
	sound_call Music_EncounterArtist_Ch1_2_D_
	sound_call Music_EncounterArtist_Ch2_C_
	octave 3
	sound_call Music_EncounterArtist_Ch1_2_A_
	octave 4
	sound_call Music_EncounterArtist_Ch2_C_
;Bar 16
	sound_call Music_EncounterArtist_Ch1_2_D_
	sound_call Music_EncounterArtist_Ch2_F_
	sound_call Music_EncounterArtist_Ch2_F_
	sound_call Music_EncounterArtist_Ch1_2_G_
	sound_call Music_EncounterArtist_Ch1_2_G_
	sound_call Music_EncounterArtist_Ch1_2_Gs
	sound_call Music_EncounterArtist_Ch1_2_Gs
	sound_call Music_EncounterArtist_Ch1_2_G_
;Bar 17
	sound_call Music_EncounterArtist_Ch1_2_G_
	sound_loop 0, Music_EncounterArtist_Ch2_loop

Music_EncounterArtist_Ch2_Type1:
	note_type 6, 11, 5
	octave 4;
	note G#, 1
	note A_, 5
	note_type 12, 11, 5
	sound_ret

Music_EncounterArtist_Ch1_2_G_:
	volume_envelope 11, 5
	note G_, 1;
	volume_envelope 5, 5
	note G_, 1
	sound_ret

Music_EncounterArtist_Ch2_F_:
	volume_envelope 11, 5
	note F_, 1
	volume_envelope 5, 5
	note F_, 1
	sound_ret

Music_EncounterArtist_Ch1_2_D_:
	volume_envelope 11, 5;
	note D_, 1
	volume_envelope 5, 5
	note D_, 1
	sound_ret

Music_EncounterArtist_Ch1_2_A_:
	volume_envelope 11, 5
	note A_, 1;
	volume_envelope 5, 5
	note A_, 1
	sound_ret

Music_EncounterArtist_Ch2_C_:
	volume_envelope 11, 5
	note C_, 1;
	volume_envelope 5, 5
	note C_, 1
	sound_ret

Music_EncounterArtist_Ch1_2_Gs:
	volume_envelope 11, 5
	note G#, 1;
	volume_envelope 5, 5
	note G#, 1
	sound_ret

Music_EncounterArtist_Ch2_Type2:
	note F_, 2;
	note F#, 1
	note F_, 2
	note F#, 1
	note F_, 1
	note F#, 1
	sound_ret

Music_EncounterArtist_Ch2_Type3:
	note G_, 1;
	note F#, 1
	note D_, 1
	note E_, 1
	note F#, 1
	note G_, 2
	note G#, 1
	note G_, 1
	note G#, 1
	sound_ret

; ============================================================================================================

Music_EncounterArtist_Ch3:
	note_type 6, 1, 5
	stereo_panning FALSE, TRUE
	vibrato 18, 1, 2
;Bar 1
	rest 4
Music_EncounterArtist_Ch3_loop:
	note_type 6, 2, 5
	octave 1
	note A_, 16
	volume_envelope 1, 5
	note A#, 1
	volume_envelope 2, 5
	note A#, 1
	note_type 12, 1, 5
	note A#, 1
	volume_envelope 2, 5
	note A#, 1
	volume_envelope 1, 5
	note A#, 2
	volume_envelope 2, 5
	note A#, 1
;Bar 2
	volume_envelope 1, 5
	note A#, 1
	volume_envelope 2, 5
	note A#, 1
	sound_call Music_EncounterArtist_Ch3_A_
	volume_envelope 1, 5
	note A_, 2
	note B_, 1
	octave 2
	note C_, 1
	volume_envelope 2, 5
	note C_, 1
	rest 1
	note C#, 4
	octave 1
	note A_, 4
;Bar 3
	sound_call Music_EncounterArtist_Ch3_D_O2
	sound_call Music_EncounterArtist_Ch3_D_O4
	octave 2
	sound_call Music_EncounterArtist_Ch3_Fs
	sound_call Music_EncounterArtist_Ch3_D_O4
	octave 2
	volume_envelope 1, 5
	note E_, 1
	note C#, 1
	octave 1
	note A_, 2
	volume_envelope 2, 5
	note A_, 1
	volume_envelope 1, 5
	note A_, 1
;Bar 4
	octave 4
	note C#, 2
	sound_call Music_EncounterArtist_Ch3_D_O2
	sound_call Music_EncounterArtist_Ch3_D_O4
	octave 2
	sound_call Music_EncounterArtist_Ch3_Fs
	sound_call Music_EncounterArtist_Ch3_D_O4
	octave 2
	sound_call Music_EncounterArtist_Ch3_3E_
	octave 4
	volume_envelope 1, 5
	note C#, 1
	octave 1
	note A_, 2
;Bar 5
	octave 4
	note C#, 1
	rest 1
	sound_call Music_EncounterArtist_Ch3_D_O2
	sound_call Music_EncounterArtist_Ch3_D_O4
	octave 2
	sound_call Music_EncounterArtist_Ch3_Ds
	octave 4
	sound_call Music_EncounterArtist_Ch3_C_
	octave 2
	volume_envelope 1, 5
	note E_, 1
	octave 1
	note B_, 1
	sound_call Music_EncounterArtist_Ch3_G_
	rest 1
	octave 2
	volume_envelope 1, 5
	note F_, 1
;Bar 6
	volume_envelope 2, 5
	note F_, 1
	rest 1
	sound_call Music_EncounterArtist_Ch3_Fs
	sound_call Music_EncounterArtist_Ch3_Fs
	sound_call Music_EncounterArtist_Ch3_F_
	sound_call Music_EncounterArtist_Ch3_F_
	sound_call Music_EncounterArtist_Ch3_3E_
	sound_call Music_EncounterArtist_Ch3_A_
	volume_envelope 1, 5
	octave 1
	note A_, 3
;Bar 7
	sound_call Music_EncounterArtist_Ch3_D_O2
	sound_call Music_EncounterArtist_Ch3_D_O4
	octave 2
	sound_call Music_EncounterArtist_Ch3_Fs
	sound_call Music_EncounterArtist_Ch3_D_O4
	octave 2
	sound_call Music_EncounterArtist_Ch3_E_
	volume_envelope 1, 5
	note C#, 2
	sound_call Music_EncounterArtist_Ch3_E_
;Bar 8
	volume_envelope 1, 5
	octave 1
	note A_, 2
	sound_call Music_EncounterArtist_Ch3_D_O2
	sound_call Music_EncounterArtist_Ch3_D_O4
	octave 2
	sound_call Music_EncounterArtist_Ch3_Fs
	sound_call Music_EncounterArtist_Ch3_D_O4
	octave 2
	sound_call Music_EncounterArtist_Ch3_3E_
	volume_envelope 1, 5
	note C#, 1
	octave 1
	note A_, 4
;Bar 9
	sound_call Music_EncounterArtist_Ch3_D_O2
	sound_call Music_EncounterArtist_Ch3_D_O4
	octave 2
	sound_call Music_EncounterArtist_Ch3_Ds
	octave 4
	sound_call Music_EncounterArtist_Ch3_C_
	octave 2
	volume_envelope 1, 5
	note E_, 1
	note D_, 1
	octave 1
	sound_call Music_EncounterArtist_Ch3_G_
	rest 1
	octave 2
	volume_envelope 1, 5
	note F_, 1
;Bar 10
	volume_envelope 2, 5
	note F_, 1
	rest 1
	sound_call Music_EncounterArtist_Ch3_Fs
	sound_call Music_EncounterArtist_Ch3_Fs
	sound_call Music_EncounterArtist_Ch3_F_
	sound_call Music_EncounterArtist_Ch3_F_
	sound_call Music_EncounterArtist_Ch3_3E_
	sound_call Music_EncounterArtist_Ch3_A_
	volume_envelope 1, 5
	octave 1
	note A_, 3
;Bar 11
	sound_call Music_EncounterArtist_Ch3_G_
	sound_call Music_EncounterArtist_Ch3_D_O4
	sound_call Music_EncounterArtist_Ch3_B_
	sound_call Music_EncounterArtist_Ch3_D_O4
	sound_call Music_EncounterArtist_Ch3_D_O2
	sound_call Music_EncounterArtist_Ch3_D_O4
	octave 2
	sound_call Music_EncounterArtist_Ch3_E_
;Bar 12
	sound_call Music_EncounterArtist_Ch3_D_O4
	octave 2
	sound_call Music_EncounterArtist_Ch3_F_
	sound_call Music_EncounterArtist_Ch3_D_O4
	octave 2
	sound_call Music_EncounterArtist_Ch3_E_
	sound_call Music_EncounterArtist_Ch3_D_O4
	sound_call Music_EncounterArtist_Ch3_D_O2
	sound_call Music_EncounterArtist_Ch3_D_O4
	sound_call Music_EncounterArtist_Ch3_B_
;Bar 13
	octave 2
	volume_envelope 1, 5
	note C#, 2
	sound_call Music_EncounterArtist_Ch3_D_O2
	sound_call Music_EncounterArtist_Ch3_D_O4
	octave 1
	sound_call Music_EncounterArtist_Ch3_Fs
	sound_call Music_EncounterArtist_Ch3_D_O4
	octave 1
	sound_call Music_EncounterArtist_Ch3_A_
	sound_call Music_EncounterArtist_Ch3_D_O4
	sound_call Music_EncounterArtist_Ch3_B_
;Bar 14
	sound_call Music_EncounterArtist_Ch3_D_O4
	octave 2
	sound_call Music_EncounterArtist_Ch3_C_
	sound_call Music_EncounterArtist_Ch3_D_O4
	sound_call Music_EncounterArtist_Ch3_B_
	sound_call Music_EncounterArtist_Ch3_D_O4
	octave 1
	sound_call Music_EncounterArtist_Ch3_A_
	sound_call Music_EncounterArtist_Ch3_D_O4
	octave 1
	sound_call Music_EncounterArtist_Ch3_Fs
;Bar 15
	volume_envelope 1, 5
	note F_, 2
	sound_call Music_EncounterArtist_Ch3_G_
	octave 2
	sound_call Music_EncounterArtist_Ch3_G_
	volume_envelope 1, 5
	note F_, 2
	note E_, 2
	note D_, 2
	note C#, 2
	note C_, 2
;Bar 16
	octave 1
	note B_, 2
	octave 2
	sound_call Music_EncounterArtist_Ch3_F_
	volume_envelope 1, 5
	note F_, 2
	sound_call Music_EncounterArtist_Ch3_E_
	volume_envelope 1, 5
	note E_, 2
	sound_call Music_EncounterArtist_Ch3_D_O2
	volume_envelope 1, 5
	note D_, 2
	sound_call Music_EncounterArtist_Ch3_B_
	volume_envelope 1, 5
	note B_, 2
	sound_loop 0, Music_EncounterArtist_Ch3_loop

Music_EncounterArtist_Ch3_A_:
	volume_envelope 1, 5;
	note A_, 1
	volume_envelope 2, 5
	note A_, 1
	sound_ret

Music_EncounterArtist_Ch3_D_O4:
	octave 4;
	volume_envelope 1, 5;
	note D_, 1;
	volume_envelope 2, 5
	note D_, 1
	sound_ret

Music_EncounterArtist_Ch3_Fs:
	volume_envelope 1, 5;
	note F#, 1
	volume_envelope 2, 5
	note F#, 1
	sound_ret

Music_EncounterArtist_Ch3_F_:
	volume_envelope 1, 5;
	note F_, 1
	volume_envelope 2, 5
	note F_, 1
	sound_ret

Music_EncounterArtist_Ch3_3E_:
	volume_envelope 1, 5;
	note E_, 1
	note E_, 1
	volume_envelope 2, 5
	note E_, 1
	sound_ret

Music_EncounterArtist_Ch3_C_:
	volume_envelope 1, 5;
	note C_, 1
	volume_envelope 2, 5
	note C_, 1
	sound_ret

Music_EncounterArtist_Ch3_D_O2:
	octave 2
	volume_envelope 1, 5
	note D_, 1;
	volume_envelope 2, 5
	note D_, 1
	sound_ret

Music_EncounterArtist_Ch3_E_:
	volume_envelope 1, 5;
	note E_, 1
	volume_envelope 2, 5
	note E_, 1
	sound_ret

Music_EncounterArtist_Ch3_B_:
	volume_envelope 1, 5;
	octave 1
	note B_, 1
	volume_envelope 2, 5
	note B_, 1
	sound_ret

Music_EncounterArtist_Ch3_G_:
	volume_envelope 1, 5
	note G_, 1
	volume_envelope 2, 5
	note G_, 1
	sound_ret

Music_EncounterArtist_Ch3_Ds:
	volume_envelope 1, 5;
	note D#, 1
	volume_envelope 2, 5
	note D#, 1
	sound_ret

; ============================================================================================================
