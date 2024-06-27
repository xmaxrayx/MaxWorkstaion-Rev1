#Requires AutoHotkey v2.0
#SingleInstance Force
#Include <maxray\iniMangerV1.1>


ini := iniMangerV1_1()


MasterHotkey := ini.do(,"1","Hotkeys")
Hotkey(MasterHotkey,hideTaskbar)











; MsgBox(WinGetStyle("ahk_class Shell_TrayWnd"))