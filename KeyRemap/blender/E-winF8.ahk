#Requires AutoHotkey v2.0
#SingleInstance Force

;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 20:03:42  on 11/5/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}

global blender__EXE_name := "ahk_exe blender.exe"

#HotIf WinActive(blender__EXE_name)


$E::{
	if (KeyWait("e", "T0.4")){ 
        ; SendInput("{" A_MenuMaskKey "}")
        ; KeyWait("E", "L")
		; msgbox("short press")
        SendInput("{e}")
    }
    
	else{
        ; SendInput("{" A_MenuMaskKey "}")

        SendInput("{Blind}{LWin Down}{F8 Down}{F8 Up}{LWin Up}")
		; msgbox("long press")
    }
}



F7::
{
	if (KeyWait("F7", "T0.2")) ; Long press
		msgbox(1)
	else ; Single press
		msgbox(2)
}



$E Up::{
    SendInput(SendInput("{" A_MenuMaskKey "}"))
}



if !WinExist(blender__EXE_name){
    WinWait(blender__EXE_name)
}

SoundBeep
while WinExist(blender__EXE_name){
    sleep 50000
    if !WinExist(blender__EXE_name){
        SoundBeep(1000,500)
        SoundBeep(1000,500)
        ExitApp
    }
}


