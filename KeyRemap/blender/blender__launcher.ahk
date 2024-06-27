#Requires AutoHotkey v2.0
#SingleInstance Force

;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 09:55:10  on 12/5/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}
;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 17:56:50  on 10/6/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}
;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 11:37:23  on 11/6/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}


;=======================

if A_Args.Length > 0{
            global blender__EXE___Path :=  "C:\Program Files\Blender Foundation\Blender 3.6\blender-launcher.exe"

}else{
    global blender__EXE___Path := "C:\Program Files\Blender Foundation\Blender 4.1\blender-launcher.exe"

}

;=====================



#Include <maxray\randomPickAndPlay___Folder\randomPickAndPlay___v0_2>



global reMabAHK := unset
global blender__EXE_name := "ahk_exe blender.exe"




global musicPlay := randomPickAndPlay___v0_2()
musicPlay.play(A_ScriptDir . "\Assists\Opening Blender")



Run(blender__EXE___Path)
Run('E_to_WinKEY+F8_AHK_v1(outdated but it works).ahk')

if !WinExist(blender__EXE_name){
    WinWait(blender__EXE_name)
}

SoundBeep
while WinExist(blender__EXE_name){
    sleep 1000
    if !WinExist(blender__EXE_name){
        SoundBeep(1000,500)
        SoundBeep(1000,500)
        ExitApp()
        ; global reMabAHK
        ; ProcessClose(reMabAHK)
    }

}

