#Requires AutoHotkey v2.0
#SingleInstance Force
;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 20:16:15  on 9/6/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}

InstallMouseHook

; #HotIf WinActive("Affinity")
SetKeyDelay(1200,800)

^WheelUp::{
    SendInput("[")
    Sleep 20    
}

^WheelDown::{
    SendInput("]")
    Sleep 20
}