; --------------------------------------------------
; DATE ONLY - 2020/10/31
; --------------------------------------------------
::]d::
FormatTime, CurrentDate,, yyyy/MM/dd
SendInput %CurrentDate%
return

; --------------------------------------------------
; DATE ONLY - 31 October 2020
; --------------------------------------------------
::]dd::
FormatTime, CurrentDate,, dd MMMM yyyy
SendInput %CurrentDate%
return

; --------------------------------------------------
; DATE + TIME (24-hr) - 2020/10/31 23:59:30
; --------------------------------------------------
::]dt::
FormatTime, CurrentDateTime,, yyyy/MM/dd HH:mm:ss
SendInput %CurrentDateTime%
return

; --------------------------------------------------
; TIME ONLY (24-hr) - 23:59:30
; --------------------------------------------------
::]t::
FormatTime, Time,, HH:mm:ss
sendinput %Time%
return
