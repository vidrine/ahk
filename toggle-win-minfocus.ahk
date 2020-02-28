; --------------------------------------------------------------
; TOGGLE WINDOW + MINIMIZE
; Places focus on the specified application when the shortcut is pressed.
; If pressed a second time, the specified application will be minimized and focus resets to the original app.
; --------------------------------------------------------------

ToggleWinMinimize(TheWindowTitle)
{
	SetTitleMatchMode,2
	DetectHiddenWindows, Off
	IfWinActive, %TheWindowTitle%
	{
		WinMinimize, %TheWindowTitle%
	}
	Else
	{
		IfWinExist, %TheWindowTitle%
		{
			WinGet, winid, ID, %TheWindowTitle%
			DllCall("SwitchToThisWindow", "UInt", winid, "UInt", 1)
		}
	}
	Return
}

;^4::ToggleWinMinimize("Windows PowerShell")
^4::ToggleWinMinimize("Microsoft Teams")
