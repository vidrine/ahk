; --------------------------------------------------
; Designed for use with D3. Keys can be toggled.
; Pressing F1 will constantly activate skill 1, F2 will activate skill 2, F3 for 3, and F4 for 4
; --------------------------------------------------

Thread, interrupt, 0

togF1 := 0
$F1::
togF1 := !togF1
if (togF1) {
	SetTimer, RepeatOne
	}
	else {
	SetTimer, RepeatOne, Off
	}
return

RepeatOne:
	Send {q}
return


togF2 := 0
$F2::
togF2 := !togF2
if (togF2) {
	SetTimer, RepeatTwo
	}
	else {
	SetTimer, RepeatTwo, Off
	}
return

RepeatTwo:
	Send {w}
return


togF3 := 0
$F3::
togF3 := !togF3
if (togF3) {
	SetTimer, RepeatThree
	}
	else {
	SetTimer, RepeatThree, Off
	}
return

RepeatThree:
	Send {e}
return


togF4 := 0
$F4::
togF4 := !togF4
if (togF4) {
	SetTimer, RepeatFour
	}
	else {
	SetTimer, RepeatFour, Off
	}
return

RepeatFour:
	Send {r}
return
