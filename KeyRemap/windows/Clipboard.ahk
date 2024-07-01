; #Requires AutoHotkey v2.0
; #SingleInstance Force

;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 12:12:54  on 30/6/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}



#HotIf 


~F13 & `::
~F13 & v::Run("C:\Program Files\Ditto\Ditto.exe /Open")



; #HotIf GetKeyState("Ctrl", "P")



#HotIf WinActive("ahk_exe Ditto.exe")


~F13 & `::
~F13 & v:: ;seems not working
~Esc::{
    SendInput("{Esc}{Esc}")
}





windowsClipboard(*){
    SendInput("{RWin Down}v{RWin up}")
    KeyWait("Enter" , "D")
    SendInput('^v')
}
