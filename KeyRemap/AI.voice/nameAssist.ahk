#Requires AutoHotkey v2.0
#SingleInstance Force

#Include <maxray\GUI___inlineHotkey___Master\inlineBoxSuggestion___Folder\inlineBoxSuggestion___2_1_0>

SingerList__Array := [
    "{Gumi}"
    ,"{Rei Yumesaki}"
    ,"{Kotonoha Akane}"
    ,"{RIA}"
]
SingerList := inlineBox()



::/::{
    SingerList(SingerList__Array)
}









#HotIf WinActive(SingerList._inlineBox__GUI)



BackSpace::
Esc::{
    SingerList.Destroy()
}

#HotIf

while WinActive("Save As")
    {
        MsgBox()
    }





