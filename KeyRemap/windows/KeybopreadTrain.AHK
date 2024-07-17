; #Requires AutoHotkey v2.0
; #SingleInstance Force



~f13 & Launch_App2::{

    if WinExist("ahk_exe tipp10.exe")
        WinActivate("ahk_exe tipp10.exe")
    else if WinActive("ahk_exe tipp10.exe")
        WinClose("ahk_exe tipp10.exe")
    else
        run( "explorer C:\Program Files (x86)\Tipp10\tipp10.exe")
}


