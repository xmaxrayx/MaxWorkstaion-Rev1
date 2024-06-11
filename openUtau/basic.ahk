#Requires AutoHotkey v2.0
#SingleInstance Force

;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 20:23:33  on 1/6/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}



#HotIf WinActive("ahk_exe OpenUtau.exe")

~F13::{
    SendInput("{Home}")
    Sleep 50
    SendInput("{Space}")
}