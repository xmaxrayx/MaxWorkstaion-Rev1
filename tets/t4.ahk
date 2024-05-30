#Requires AutoHotkey v2.0
#SingleInstance Force


; WinSet(Style, -0xC00000, A)

F::{
    WinSetStyle("^0xC00000", "A")
}

L::{
    MsgBox (WinGetStyle("A"))
}