#Requires AutoHotkey v2.0
#SingleInstance Force


; WinSet(Style, -0xC00000, A)

F::{
    WinSetStyle("^0xC00000", "A")
}

L::{
    MsgBox (WinGetStyle("A"))
}

; r::{ ;0x800000
;     WinSetStyle("^0x800000", "A")
; }



r::{ ;0x800000
    WinSetStyle("^0x80000", "A")
}


