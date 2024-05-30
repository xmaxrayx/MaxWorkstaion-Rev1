#Requires AutoHotkey v2.0
#SingleInstance Force

;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 11:53:04  on 28/5/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}


#Include <maxray\AppOpenerMangerV1>
#Include <maxray\iniMangerV1>

global Todo := iniv1("Todo","C:\Program Files\WindowsApps\Microsoft.Todos_2.114.7122.0_x64__8wekyb3d8bbwe\Todo.exe", "software")
global Todo__exe := iniV1("Todo Title", "Microsoft To Do", "software")

global notepadplusplus := iniV1("Notepad++", "C:\Program Files (x86)\Notepad++\notepad++.exe", "software") 
global notepadplusplus__exe := iniV1("Notepad++ Title", "ahk_exe notepad++.exe", "software")



#HotIf

~F13 & F1::{
    global Todo__title
    global Todo
    AppOpenerMangerV1(Todo__exe,Todo , 0)
}


~F13 & N::{
    global notepadplusplus__exe
    global notepadplusplu
    AppOpenerMangerV1(notepadplusplus__exe,  notepadplusplus , 0)
}


#HotIf
