; These lists determine the battle music and victory music, and whether to
; award HAPPINESS_GYMBATTLE for winning.

; Note: CHAMPION and RED are unused for battle music checks, since they are
; accounted for prior to the list check.

GymLeaders:
	db JORDAN
	db KYLE
	db CASEY
	db LEE
	db RYAN
	db SANHA
	db LOAFER
; fallthrough
KantoGymLeaders:
	db -1
