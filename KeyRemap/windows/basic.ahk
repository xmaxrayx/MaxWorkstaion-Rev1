#Requires AutoHotkey v2.0
#SingleInstance Force


#Include <maxray\AppOpenerMangerV1>

;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 18:32:51  on 26/5/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}


f13 & space::
#space::{
    
    SendInput('^{Launch_App2}')
}


global Terminal__Name := "ahk_exe WindowsTerminal.exe"
global Terminal__Path := "C:\Program Files\WindowsApps\Microsoft.WindowsTerminal_1.19.11213.0_x64__8wekyb3d8bbwe\WindowsTerminal.exe"






F13::F13



; 
~Pause & L:: {
    SendInput("{vkE9999p}")
    Run('cmd /c "c:\Windows\System32\rundll32.exe user32.dll,LockWorkStation"' , ,"Hide")

}

$^CtrlBreak::
$^RWin::{
    SendInput("{Ctrl up}{RWin Down}{RWin up}")
    ; Run("shell:::{2559a1f8-21d7-11d4-bdaf-00c04f60b9f0}")
    try{
        WinShow("ahk_class Shell_TrayWnd")
    }
    SetTimer(AutoHideTaskbar, -5000)

}



hideTaskbar(*){

    if WinExist("ahk_class Shell_TrayWnd"){
        
        try{
            WinHide("ahk_class Shell_TrayWnd")
        }
    }

    else{

        try{
            WinShow("ahk_class Shell_TrayWnd")
        }
        ; SoundBeep()
    }
}




AutoHideTaskbar(*){
        Sleep(500)
        try{
            WinHide("ahk_class Shell_TrayWnd")
        }
        SoundBeep()
    
}





~F13 & Left::{
    SendInput("{RWin Down}{Left Down}{Left up}{RWin up}")
}

~F13 & right::{
    SendInput("{RWin Down}{right Down}{right up}{RWin up}")
}
~F13 & up::{
    SendInput("{RWin Down}{up Down}{up up}{RWin up}")
}
~F13 & down::{
    SendInput("{RWin Down}{down Down}{down up}{RWin up}")
}



; ~F13 & 


^+~::{
    AppOpenerMangerV1(Terminal__Name,Terminal__Path)
}




; ~F13 & Space::{
;     SendInput("{vkE89}")
; }



~F13 & v::{
    
    SendInput("{RWin Down}v{RWin up}")
    
}





~F13 & Tab::{

    SendInput("{RWin Down}{Tab}{RWin up}")

}



#HotIf GetKeyState("LCtrl", "P")

F13 & Right::{
    SendInput("{LCtrl Down}{RWin Down}{Right}{RWin up}{LCtrl up}")
    
}



F13 & Left::{
    SendInput("{LCtrl Down}{RWin Down}{Left}{RWin up}{LCtrl up}")
    
}



#HotIf



