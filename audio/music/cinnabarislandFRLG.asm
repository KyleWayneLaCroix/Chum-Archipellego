; Cinnabar Island (FRLG)
; Demixed by TriteHexagon
Music_CinnabarIslandFRLG:
	channel_count 4
	channel 1, Music_CinnabarIslandFRLG_Ch1
	channel 2, Music_CinnabarIslandFRLG_Ch2
	channel 3, Music_CinnabarIslandFRLG_Ch3
	channel 4, Music_CinnabarIslandFRLG_Ch4

; ============================================================================================================
Music_CinnabarIslandFRLG_Ch1:
	tempo 160
	volume 7, 7
	stereo_panning FALSE, TRUE
	vibrato 4, 2, 5
	
Music_CinnabarIslandFRLG_Ch1_master:
	duty_cycle $1
;Bar1:C
	octave 2
	note_type 6, 9, 8
	note B_, 1
	rest 3
	note_type 12, 9, 8
	note B_, 4
	octave 3
	note D_, 1
	rest 1
	note D_, 2
	note C_, 1
	rest 1
	octave 2
	note E_, 1
	rest 1
	note D_, 2
;Bar2:C
	volume_envelope 9, 8 
	sound_call Music_CinnabarIslandFRLG_Ch1_Bar2
;Bar3:C
	note G_, 1
	note_type 3, 9, 8  
	octave 4
	note D_, 1
	rest 7
	note D_, 1
	rest 3
	octave 3
	note B_, 8
	note G_, 4
	note G_, 2
	rest 2
	note_type 12, 9, 8  
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	octave 4
	note C_, 2
	octave 3
	note F#, 1
	note_type 3, 9, 8  
	octave 4
	note D_, 1
	rest 3
	note_type 12, 9, 8  
;Bar4:C
	sound_call Music_CinnabarIslandFRLG_Ch1_Bar4
;Bar5:C
	note G_, 1
	note_type 3, 9, 8  
	octave 4
	rest 8
	note G_, 1
	rest 1
	note A_, 1
	rest 1
	octave 3
	note B_, 8
	note G_, 4
	note G_, 2
	rest 2
	note A_, 2
	octave 4
	rest 2
	note F#, 1
	rest 7
	note F#, 1
	rest 3
	note C_, 8
	octave 3
	note A_, 4
	octave 4
	note G#, 2
	rest 2
	note_type 12, 9, 8  
;Bar6:C
	sound_call Music_CinnabarIslandFRLG_Ch1_Bar2
;Bar7:C
	note G_, 1
	note_type 3, 9, 8  
	octave 4
	note D_, 1
	rest 7
	note D_, 1
	rest 3
	octave 3
	note B_, 8
	note G_, 4
	note G_, 2
	rest 2
	note_type 12, 9, 8  
	note A_, 1
	rest 1
	note A_, 1

	note_type 3, 9, 8  
	note G_, 1
	rest 1
	note A_, 1
	rest 1
	note_type 12, 9, 8  

	octave 4
	note C_, 2
	octave 3
	note F#, 1
	note_type 3, 9, 8  
	octave 4
	note D_, 1
	rest 3
	note_type 12, 9, 8  
;Bar8:
	sound_call Music_CinnabarIslandFRLG_Ch1_Bar4
;Bar9:
	note G_, 1
	note_type 3, 9, 8  
	octave 4
	note D_, 1
	rest 7
	octave 3
	note G_, 1
	rest 3
	note_type 12, 9, 8 

	note B_, 4
	
	note_type 3, 9, 8 
	note A_, 2
	rest 6
	note_type 12, 9, 8  

	note A_, 2
	octave 4

	note_type 3, 9, 8  
	note E_, 2
	rest 2
	note E_, 1
	rest 3
	note E_, 2
	rest 2
	note E_, 1
	rest 3
	note_type 12, 9, 8 
;Bar10:C
	octave 3
	note B_, 1
	rest 3
	octave 4
	note D_, 2
	octave 3
	note B_, 1
	note_type 6, 9, 8 
	note B_, 1
	rest 1
	note_type 12, 9, 8 
	note B_, 1
	rest 1
	note B_, 2
	octave 4
	note C_, 2
	octave 3
	note B_, 1
	rest 1
;Bar11:
	octave 3
	note G_, 1
	rest 3
	octave 4
	note E_, 2
	note C_, 1
	note_type 3, 9, 8 
	note C_, 1
	rest 3
	note_type 12, 9, 8 
	note C_, 1
	rest 1
	note C_, 2
	note E_, 2
	note C_, 1
	rest 1
;Bar12:
	octave 3
	note A_, 1
	rest 3
	octave 4
	note A_, 2
	note F#, 1
	note_type 6, 9, 8 
	note F#, 1
	rest 1
	note D_, 2
	rest 2
	note D_, 3
	rest 1
	note_type 12, 9, 8 
	note D_, 2
	note C_, 1
	rest 1
;Bar13:C
	octave 3
	note B_, 1
	rest 1
	note G_, 1
	octave 4
	note_type 6, 9, 8 
	note A_, 1
	note B_, 1
	note_type 12, 9, 8 
	note D_, 2
	note C_, 1
	note_type 3, 9, 8 
	note C_, 1
	rest 3
	note_type 12, 9, 8 
	octave 3
	note B_, 1
	rest 1
	note B_, 2
	note A_, 1
	rest 1
	note A#, 2
;Bar14:C
	octave 3
	note B_, 1
	rest 2
	note_type 6, 9, 8
	note B_, 1
	octave 4
	note C_, 1
	note_type 12, 9, 8 
	note D_, 2
	octave 3
	note B_, 1
	note_type 6, 9, 8 
	note B_, 1
	rest 1
	note_type 12, 9, 8 
	note B_, 1
	rest 1
	note B_, 2
	note B_, 1
	note_type 3, 9, 8
	octave 4
	note G_, 1
	rest 3
	octave 3
	note B_, 2
	rest 2
	note A_, 1
	rest 3
	note_type 12, 9, 8 
;Bar15:C
	octave 3
	note G_, 1
	rest 2
	octave 4
	note_type 6, 9, 8 
	note C_, 1
	note D_, 1
	note_type 12, 9, 8 

	note E_, 2
	note C_, 1

	note_type 3, 9, 8 
	note C_, 1
	rest 3
	note C_, 4
	note E_, 1
	rest 3
	note_type 12, 9, 8 
	note C_, 2
	note E_, 2
	note C_, 1
	rest 1
;Bar16:
	octave 3
	note A_, 1
	rest 2
	octave 4

	note_type 6, 9, 8 
	note F#, 1
	note G_, 1
	note_type 12, 9, 8 

	note A_, 2
	note F#, 1

	note_type 3, 9, 8 
	note F#, 1
	rest 3
	note_type 12, 9, 8 

	note D_, 1
	rest 1

	note_type 6, 9, 8 
	note D_, 3
	rest 1
	note_type 12, 9, 8 

	note D_, 2
	note C_, 1
	rest 1
;Bar17:
	octave 3
	note B_, 1
	rest 1
	note G_, 1

	note_type 6, 9, 8 
	note A_, 1
	note A#, 1
	note_type 12, 9, 8 

	octave 4
	note D_, 2
	note C_, 1

	note_type 3, 9, 8 
	note C_, 1
	rest 3
	note_type 12, 9, 8 

	octave 3
	note B_, 1
	rest 1
	note B_, 2
	
	note A_, 1
	rest 1
	note A#, 2
	sound_loop 0, Music_CinnabarIslandFRLG_Ch1_master
	sound_ret

Music_CinnabarIslandFRLG_Ch1_Bar2:
	octave 3
	note G_, 1
	rest 1

	note_type 3, 9, 8 
	rest 3
	note G_, 1
	rest 2
	note A_, 1
	rest 1
	note_type 12, 9, 8 

	note B_, 2
	note G_, 1

	note_type 3, 9, 8  
	octave 4
	note G_, 1
	rest 3
	octave 3
	note_type 12, 9, 8 

	note A_, 2

	note_type 3, 9, 8  
	note G#, 2
	rest 2
	note A_, 2
	note A_, 1
	rest 1
	note_type 12, 9, 8  

	octave 4
	note C_, 2
	octave 3
	note F#, 1
	rest 1
	sound_ret

Music_CinnabarIslandFRLG_Ch1_Bar4:
	octave 3
	note G_, 1
	rest 1

	note_type 3, 9, 8  
	rest 3
	note G_, 1
	rest 2
	note A_, 1
	rest 1
	note_type 12, 9, 8 

	note B_, 2
	note G_, 1

	note_type 3, 9, 8  
	octave 4
	note G_, 1
	rest 3
	octave 3
	note_type 12, 9, 8 

	note A_, 2

	note_type 3, 9, 8  
	note G#, 2
	rest 2
	note A_, 2
	note A_, 1
	rest 1
	note_type 12, 9, 8  

	octave 4
	note C_, 2
	octave 3
	note F#, 1
	note_type 3, 9, 8  
	note D_, 1
	rest 3
	note_type 12, 9, 8  
	sound_ret

; ============================================================================================================
Music_CinnabarIslandFRLG_Ch2:
	stereo_panning TRUE, TRUE
	;vibrato $12, $14
	
Music_CinnabarIslandFRLG_Ch2_master:
	duty_cycle $2
	vibrato 4, 2, 5
	note_type 6, 12, 6
;Bar1:C
	octave 3
	note G_, 1
	rest 3
	note_type 12, 12, 6
	note G_, 4
	note B_, 1
	rest 1
	note B_, 2
	note A_, 1
	note_type 6, 12, 6
	note B_, 1
	note A_, 1
	note_type 12, 12, 6
	note D_, 1
	rest 1
	note F#, 2
;Bar2:C
	volume_envelope 12, 8
	note G_, 4
	volume_envelope 12, 4
	note G_, 2
	volume_envelope 12, 8
	note A_, 1
	note B_, 1
	octave 4
	note C_, 4
	volume_envelope 12, 4
	note C_, 2
	volume_envelope 12, 8
	note D_, 1
	note E_, 1
;Bar3-4:C
	sound_call Music_CinnabarIslandFRLG_Ch2_Bar3
;Bar5:C
	note D_, 4
	octave 3
	note B_, 6
	volume_envelope 12, 4
	note B_, 2
	volume_envelope 12, 8
	note A_, 4
;Bar6:C
	note G_, 4
	volume_envelope 12, 4
	note G_, 2
	volume_envelope 12, 8
	note A_, 1
	note B_, 1
	octave 4
	note C_, 3
	octave 3
	note B_, 1
	octave 4
	note C_, 2
	note D_, 1
	note E_, 1
;Bar7-8:C
	sound_call Music_CinnabarIslandFRLG_Ch2_Bar3
;Bar9:C
	note D_, 4
	note C_, 4
	octave 3
	note B_, 4
	note A_, 4
;Bar10:C
	duty_cycle $3
	note_type 12, 12, 8
	note D_, 6
	octave 2
	note B_, 2
	note G_, 8
;Bar11:C
	octave 3
	note E_, 6
	note C_, 2
	octave 2
	note A_, 8
;Bar12:C
	octave 3
	note A_, 6
	note F#, 2
	note D_, 2
	note C_, 2
	octave 2
	note B_, 2
	note A_, 2
;Bar13:C
	note B_, 4
	octave 3
	note D_, 4
	octave 2
	note B_, 2
	note A_, 4
	octave 3
	duty_cycle $0
	note_type 12, 12, 7
	note B_, 1
	octave 4
	note C_, 1
;Bar14:C
	note D_, 6
	octave 3
	note B_, 2
	note G_, 3
	note_type 6, 12, 7
	note A_, 1
	note G_, 1
	note_type 12, 12, 7
	note F#, 2
	note G_, 2
;Bar15:C
	octave 4
	note E_, 6
	note C_, 2
	octave 3
	note A_, 2
	note G#, 2
	note B_, 2
	note A_, 2
;Bar16:C
	octave 4
	note A_, 6
	note F#, 2
	note D_, 2
	note C_, 2
	note F#, 2
	note E_, 2
;Bar17:C
	octave 3
	note B_, 4
	octave 4
	note D_, 3
	note F#, 1
	note E_, 2
	note D_, 2
	octave 3
	note E_, 2
	note F#, 2
	sound_loop 0, Music_CinnabarIslandFRLG_Ch2_master
	sound_ret

Music_CinnabarIslandFRLG_Ch2_Bar3:
;Bar3:C
	note D_, 4
	note G_, 4
	note A_, 4
	volume_envelope 12, 4
	note A_, 2
	volume_envelope 12, 8
	note G_, 1
	note F#, 1
;Bar4:C
	note E_, 4
	note D_, 4
	note C_, 3
	octave 3
	note B_, 1
	octave 4
	note C_, 2
	note D_, 1
	note E_, 1
	sound_ret

; ============================================================================================================
Music_CinnabarIslandFRLG_Ch3:
	stereo_panning TRUE, TRUE
	;vibrato $16, $14

Music_CinnabarIslandFRLG_Ch3_master:
;Bar1:C
	note_type 12, 2, 4
	octave 2
	note G_, 1
	rest 1
	note G_, 4
	note A_, 1
	note B_, 1
	octave 3
	note D_, 1
	rest 3
	octave 2
	note A_, 4
;Bar2:C
	octave 3
	note D_, 4
	octave 2
	note B_, 4
	octave 3
	note C_, 2
	octave 2
	note_type 6, 2, 4
	note B_, 1
	rest 3
	note_type 12, 2, 4
	note A_, 4
;Bar3:
	octave 2
	note B_, 1
	rest 3
	octave 3
	note D_, 4
	octave 2
	note F#, 1
	rest 1
	note F#, 2
	octave 3
	note D_, 1
	note E_, 1
	note C_, 2
;Bar4:
	octave 2
	note B_, 4
	octave 3
	note D_, 4
	octave 2
	note F#, 1
	rest 1
	note F#, 4
	note A_, 2
;Bar5:C
	octave 2
	note B_, 4
	octave 3
	note D_, 4
	octave 2
	note F#, 1
	rest 1
	note F#, 2
	octave 3
	note C_, 2
	octave 2
	note A_, 2
;Bar6:C
	octave 3
	note D_, 4
	octave 2
	note B_, 4
	note F#, 1
	rest 1
	note F#, 2
	octave 3
	note C_, 1
	note D_, 1
	note C_, 1
	octave 2
	note A_, 1
;Bar7:C
	note B_, 4
	note G_, 4
	note D_, 1
	rest 1
	note D_, 2
	octave 3
	note C_, 1
	octave 2
	note A_, 1
	note F#, 2
;Bar8:C
	note B_, 4
	octave 3
	note D_, 4
	octave 2
	note F#, 1
	rest 1
	note D_, 4
	octave 3
	note D_, 1
	note C_, 1
;Bar9:
	octave 2
	note B_, 2
	note D_, 2
	octave 5
	volume_envelope 1, 3
	stereo_panning TRUE, FALSE
	note D_, 1
	note E_, 1
	note D_, 4
	stereo_panning FALSE, TRUE
	note D_, 1
	note E_, 1
	note D_, 4
	volume_envelope 2, 4
	stereo_panning TRUE, TRUE
;Bar10:C
	octave 2
	note G_, 2
	rest 2
	note G_, 2
	rest 2
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	octave 3
	note D_, 2
	octave 2
	note B_, 2
;Bar11:C
	octave 2
	note G_, 2
	rest 2
	note G_, 2
	rest 2
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	octave 3
	note E_, 2
	note C_, 2
;Bar12:C
	octave 2
	note G_, 2
	rest 2
	note G_, 2
	rest 2
	note G_, 2
	rest 2
	octave 3
	note F#, 2
	note D_, 2
;Bar13:C
	octave 2
	note G_, 2
	rest 2
	note G_, 2
	rest 2
	note D_, 2
	note A_, 2
	note F#, 2
	octave 3
	note C_, 2
;Bar14:
	octave 2
	note G_, 2
	rest 2
	note G_, 2
	rest 2
	note G_, 1
	rest 1
	note G_, 2
	note B_, 4
;Bar15:
	note G_, 2
	rest 2
	note G_, 2
	rest 2
	note G_, 2
	rest 2
	octave 3
	note C_, 2
	octave 2
	note A_, 2
;Bar16:
	note G_, 2
	rest 2
	note G_, 2
	rest 2
	note G_, 2
	rest 2
	octave 3
	note F#, 2
	note E_, 2
;Bar17:
	octave 2
	note G_, 2
	rest 2
	note G_, 2
	rest 2
	note D_, 1
	octave 3
	note D_, 1
	octave 2
	note A_, 2
	note D_, 1
	rest 1
	note A_, 2
	sound_loop 0, Music_CinnabarIslandFRLG_Ch3_master
	sound_ret

; ============================================================================================================
Music_CinnabarIslandFRLG_Ch4:
	drum_speed 6
	stereo_panning TRUE, FALSE
	toggle_noise $1

Music_CinnabarIslandFRLG_Ch4_master:
;Bar1:C
	drum_note 7, 4
	drum_note 5, 2
	drum_note 5, 2
	drum_note 2, 4
	drum_note 2, 4
	drum_note 1, 4
	drum_note 6, 4
	drum_note 2, 2
	drum_note 2, 2
	drum_note 6, 4
;Bar2-4:C
	sound_call Music_CinnabarIslandFRLG_Ch4_Bar2
;Bar5:C
	drum_note 1, 2
	drum_note 1, 2
	drum_note 5, 1
	drum_note 5, 1
	drum_note 5, 1
	drum_note 5, 1
	drum_note 2, 4
	drum_note 1, 2
	drum_note 2, 2
	drum_note 10, 2 
	drum_note 10, 2 
	drum_note 1, 2
	drum_note 10, 2 
	drum_note 10, 4 
	drum_note 2, 2
	drum_note 2, 2
;Bar6-8:
	sound_call Music_CinnabarIslandFRLG_Ch4_Bar2
;Bar9:
	drum_note 1, 4
	drum_note 2, 4
	sound_call Music_CinnabarIslandFRLG_Ch4_Bar9 
	drum_note 2, 2
	drum_note 2, 2
;Bar10-13:C
	sound_call Music_CinnabarIslandFRLG_Ch4_Bar10
	drum_note 6, 1
	drum_note 6, 1
	drum_note 6, 1
	drum_note 6, 1
	drum_note 8, 4
	drum_note 6, 1
	drum_note 2, 3
	drum_note 8, 4
;Bar14:C
	drum_note 1, 8
	drum_note 2, 4
	drum_note 1, 4
	drum_note 1, 4
	drum_note 1, 4
	drum_note 2, 4
	drum_note 1, 4
;Bar15:C
	drum_note 1, 8
	drum_note 2, 8
	drum_note 1, 2
	drum_note 5, 2
	drum_note 1, 4
	drum_note 2, 4
	drum_note 1, 4
;Bar16:C
	drum_note 1, 4
	drum_note 1, 4
	drum_note 2, 6
	drum_note 2, 2
	drum_note 1, 2
	drum_note 5, 2
	drum_note 1, 2
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 4
	drum_note 1, 4
;Bar17:C
	drum_note 1, 4
	drum_note 10, 2 
	drum_note 10, 2 
	drum_note 1, 2
	drum_note 10, 2 
	drum_note 10, 2 
	drum_note 1, 2
	drum_note 10, 2
	drum_note 10, 2 
	drum_note 10, 2 
	drum_note 10, 2 
	drum_note 2, 4
	drum_note 2, 2
	drum_note 1, 2
	sound_loop 0, Music_CinnabarIslandFRLG_Ch4_master
	sound_ret

Music_CinnabarIslandFRLG_Ch4_Bar2:
;Bar2:C
	drum_note 1, 4
	drum_note 1, 2
	drum_note 5, 1
	drum_note 5, 1
	drum_note 2, 4
	drum_note 1, 2
	drum_note 2, 2
	drum_note 1, 2
	drum_note 5, 2
	drum_note 1, 2
	drum_note 5, 1
	drum_note 5, 1
	drum_note 2, 6
	drum_note 1, 2
;Bar3:C
	drum_note 1, 4
	drum_note 1, 2
	drum_note 5, 1
	drum_note 5, 1
	drum_note 2, 4
	drum_note 1, 2
	drum_note 2, 2
	drum_note 1, 4
	drum_note 1, 2
	drum_note 5, 1
	drum_note 5, 1
	drum_note 2, 6
	drum_note 1, 2
;Bar4:C
	drum_note 1, 2
	drum_note 2, 2
	drum_note 1, 2
	drum_note 5, 1
	drum_note 5, 1
	drum_note 2, 4
	drum_note 1, 2
	drum_note 2, 2
	drum_note 1, 2
	drum_note 5, 2
	drum_note 1, 2
	drum_note 5, 1
	drum_note 5, 1
	drum_note 2, 2
	drum_note 1, 4
	drum_note 5, 2
	sound_ret

Music_CinnabarIslandFRLG_Ch4_Bar9:
	drum_note 10, 2
	sound_loop 10, Music_CinnabarIslandFRLG_Ch4_Bar9
	sound_ret

Music_CinnabarIslandFRLG_Ch4_Bar10:
	drum_note 6, 1
	drum_note 1, 3
	drum_note 8, 4
	sound_loop 14, Music_CinnabarIslandFRLG_Ch4_Bar10
	sound_ret