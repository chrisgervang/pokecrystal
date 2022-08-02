byte_out: MACRO ; label, data
    ld a, \1
	ldh [rSB], a
	ld a, $81 ; or $83 for GBC fast transfers)
	ldh [rSC], a
    wait_sc
	ld a, [\2]
	ldh [rSB], a
	ld a, $81 ; or $83 for GBC fast transfers)
	ldh [rSC], a
    wait_sc
ENDM

; Wait for transfer done (not very efficient, just burning up CPU cycles)
wait_sc: MACRO
.wait\@
  ldh a, [rSC]
  add a
  jr c, .wait\@
ENDM