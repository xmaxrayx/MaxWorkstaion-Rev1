#Requires AutoHotkey v2.0
#SingleInstance Force

;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 09:35:49  on 3/7/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}

InstallMouseHook(1,1)


#HotIf WinActive("ahk_exe OneNote.exe")



~f13 & h::{
    Send("^!h")
}


~f13 & 1::Send("^!1")
~f13 & 2::Send("^!2")
~f13 & 3::Send("^!3")
~f13 & 4::Send("^!4")
~f13 & 5::Send("^!5")
~f13 & 6::Send("^!6")
~f13 & `::
~f13 & 0::Send("^!0")

; XButton2::{

;     A_Clipboard := ""
;     send("^x")
;     ClipWait(0.5,0)
;     if A_Clipboard == ""{
;         MsgBox()
;         Send("{LButton}{LButton}^!h")
;     }else{
;         Send("^v")
;         Sleep(500)
;         Send("^!h")   
;     }





; }


; KeyWait("XButton2", "d")
; KeyWait("XButton2", "l")
; MsgBox()

XButton2::{
    Send("{LButton}{LButton}^!h")

}
