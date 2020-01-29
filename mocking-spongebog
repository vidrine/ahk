; --------------------------------------------------------------
; ALTERNATING CASE (mOcKiNg sPoNgEbOb)
; Modifies text formatting to alternating UPPER/lower case similar to mocking Spongebob formatting
;   i.e. this was a waste of time --> ThIs WaS a WaStE oF tImE
; --------------------------------------------------------------
^!M::
	AutoTrim, Off
	ClipBoard    = %ClipBoard%
	ClipBoard    = %ClipBoard%       ; Convert to text
	ClipNew      = 
	Letter       =
	Num          = 0

	Loop, parse, ClipBoard
	{
		If (A_LoopField <> " ")
	 	{
	 		Num++
		}

	;	If (A_LoopField = A_Space)
	;	{
	;		Letter = %A_Space%
	;		ClipNew = %ClipNew%%Letter%
	;	}

		If (Mod(Num,2)=1)
		{
			StringUpper, Letter, A_LoopField
			ClipNew = %ClipNew%%Letter%
		}
		
		Else
		{
			StringLower, Letter, A_LoopField
			ClipNew = %ClipNew%%Letter%
		}
	}

	ClipBoard    = %ClipNew%
	Send ^v                       ; For best compatibility: SendPlay
	Sleep 50                      ; Don't change clipboard while it is pasted! (Sleep > 0)
	Return
