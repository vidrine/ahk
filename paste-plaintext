; --------------------------------------------------------------
; PASTE PLAINTEXT
; Paste clipboard as plaintext, and then restore the original values
; --------------------------------------------------------------

#Insert::                           ; Text–only paste from ClipBoard
    ClipOriginal = %ClipBoardAll%
    ClipBoard = %ClipBoard%         ; Convert to text
    Send ^v                         ; For best compatibility: SendPlay
    Sleep 50                        ; Don't change clipboard while it is pasted! (Sleep > 0)
    ClipBoard := ClipOriginal       ; Restore original ClipBoard
    ClipOriginal =                  ; Free memory
    Return
