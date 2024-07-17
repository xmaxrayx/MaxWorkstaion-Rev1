#Requires AutoHotkey >=2.1- <3.0
#SingleInstance Force

#HotIf GetKeyState("vkff", "P")
; sc178::MsgBox() ;ssss
s::MsgBox("this hotkey: [" ThisHotkey . "]`n[vkff] status: "  GetKeyState("vkff") )
^S::MsgBox("this hotkey: [" ThisHotkey . "]`n[vkff] status: "  GetKeyState("vkff") )






; sc178::MsgBox("AHK will always pick me regard to the hotkeys above :3") 

#HotIf
s::MsgBox("normal hotif`n`n" "this hotkey: [" ThisHotkey . "]`n[vkff] status: "  GetKeyState("vkff") )



#HotIf !GetKeyState("vkff" ,"P")

sc178::MsgBox("Oh I cannot be picked :(") 
s:: MsgBox("this hotkey: [" ThisHotkey . "]`n[vkff] status: "  GetKeyState("vkff") )









; InstallKeybdHook(1,1)
; KeyHistory(200)
; Sleep(500)
; ListHotkeys()



; sc178::{
;     vk_code := GetKeyVK("sc178")
;     MsgBox Format("vk{:X}", vk_code)
;     msgbox()
; }


; #HotIf GetKeySC("sc178")


; MsgBox( GetKeyVK("vkff"))