#Requires AutoHotkey v2.0
;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 20:02:12  on 8/5/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}
;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 12:24:28  on 29/5/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}
;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 12:35:14  on 29/5/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}
;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 11:45:06  on 30/5/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}

SetCapsLockState("AlwaysOff")
global capsStatus := GetKeyState("CapsLock", "T")


{   ;gui initialization
    AHK_capsIndicatorGUI := Gui("+E0x20 -Caption +LastFound +ToolWindow +AlwaysOnTop","AHK_capsstatus")
    WinSetTransparent(250)
    AHK_capsIndicatorGUI.BackColor := "2fff00"
    capsStatus := AHK_capsIndicatorGUI.Add("Text", , inspectCapsStatus_for_AHK_capsIndicatorGUI())
    AHK_capsIndicatorGUI.Show("y" A_ScreenHeight/3.5 " x" 10 ,)
    if !GetKeyState("CapsLock", "T"){
        AHK_capsIndicatorGUI.Hide()
    }
}



inspectCapsStatus_for_AHK_capsIndicatorGUI(){
    if GetKeyState("CapsLock", "T") {
        AHK_capsIndicatorGUI.BackColor := "22ff00"
        SoundBeep
        return "Capslock  On"
    }else{
        AHK_capsIndicatorGUI.BackColor := "fc0000"
        AHK_capsIndicatorGUI.Hide()
        return "Capslock OFF"
    }
}











#HotIf GetKeyState("Ctrl", "P")
~F13 & Del::{
    SetCapsLockState !GetKeyState("CapsLock", "T")
    capsStatus.Text := inspectCapsStatus_for_AHK_capsIndicatorGUI()
    If GetKeyState("CapsLock", "T")
        AHK_capsIndicatorGUI.Show("NoActivate")
    else
        AHK_capsIndicatorGUI.Hide()
}


#HotIf
~CapsLock::F13
CapsLock::F13

global QQQ := 0

~LAlt & CapsLock::{
    global QQQ
    switch [QQQ] {
        case 0 :
            global QQQ := 1
            SendInput("{Media_Play_Pause}")
            SendInput("{LAlt Down}{Tab Down}{Tab Up}{LAlt Up}")
        default:
            SendInput("{LAlt Down}{Tab Down}{Tab Up}{LAlt Up}")
            Sleep(500)
            SendInput("{Media_Play_Pause}")
            global QQQ := 0

    }


}









































