; these blocks all use COLL_CUT_TREE in one quadrant
CutTreeBlockPointers:
; tileset, block list pointer
	dbw TILESET_CHUMELAGO,                .chumelago
	dbw TILESET_KANTO,                    .kanto
	dbw TILESET_PARK,                     .park
	dbw TILESET_FOREST,                   .forest
	dbw TILESET_LINKS_AWAKENING,          .la
	db -1 ; end

.chumelago:
; facing block, replacement block, animation
	db $03, $02, 1 ; grass
	db $5b, $3c, 0 ; tree
	db $5f, $3d, 0 ; tree
	db $63, $3f, 0 ; tree
	db $67, $3e, 0 ; tree
	db -1 ; end

.kanto:
; facing block, replacement block, animation
	db $0b, $0a, 1 ; grass
	db $32, $6d, 0 ; tree
	db $33, $6c, 0 ; tree
	db $34, $6f, 0 ; tree
	db $35, $4c, 0 ; tree
	db $60, $6e, 0 ; tree
	db -1 ; end

.park:
; facing block, replacement block, animation
	db $13, $03, 1 ; grass
	db $03, $04, 1 ; grass
	db -1 ; end

.forest:
; facing block, replacement block, animation
	db $0f, $17, 0
	db $44, $15, 0
	db -1 ; end

.la:
; facing block, replacement block, animation
	db $34, $30, 1 ; grass
	db $40, $30, 1 ; grass
	db $43, $3e, 1 ; grass
	db $2a, $0a, 1 ; tree
	db $2b, $0a, 1 ; tree
	db $2e, $0a, 1 ; tree
	db $49, $db, 1 ; tree
	db $4f, $de, 1 ; tree
	db $77, $dc, 1 ; tree
	db $88, $30, 1 ; tree
	db $8c, $dd, 1 ; tree
	db $8d, $d9, 1 ; tree
	db $8e, $d8, 1 ; tree
	db $8f, $da, 1 ; tree
	db $93, $df, 1 ; tree
	db $a6, $e0, 1 ; tree
	db -1 ; end

; these blocks all use COLL_WHIRLPOOL in one quadrant
WhirlpoolBlockPointers:
	dbw TILESET_CHUMELAGO, .chumelago
	db -1 ; end

.chumelago:
; facing block, replacement block, animation
	db $07, $36, 0
	db -1 ; end
