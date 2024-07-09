#Requires AutoHotkey v2.0

;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 11:50:27  on 27/6/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}


try{
    WinHide("ahk_class Shell_TrayWnd")
}
~f13 & Esc::
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












