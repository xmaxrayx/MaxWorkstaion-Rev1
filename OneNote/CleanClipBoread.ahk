#Requires AutoHotkey v2.0
#SingleInstance Force

#Include "Lib\WinClipAPI.ahk"
#Include "Lib\WinClip.ahk"





#HotIf WinActive("ahk_exe ONENOTE.EXE")

Clip := WinClip()


^v::{
    html := clip.GetHTML()
    
    CleanList := ["SourceURL:.+","Version:.+" 
    ,"StartHTML:.+" ,"EndHTML:.+"
    ,"StartFragment:.+" ,"EndFragment:.+"]
    
    loop CleanList.Length
        {
            html := RegExReplace(html,CleanList[A_Index],"")
           
        }
    ; MsgBox(html)
    clip.SetHTML(html)
    send('^v')
}



~f13 & c::{
    Send("!1")
    Sleep(50)
    Send("{Enter}")
    Sleep(50)
    Send("!2")
    Sleep(50)
    Send("{Down 2}")
    Send("{Enter}")

}