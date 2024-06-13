; #Requires AutoHotkey v2.0
; #SingleInstance Force
;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 11:53:40  on 11/6/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}

#Include <maxray\GUI___Master\TexBoxMsgBox___folder\TexBoxMsgBox___v1_0>
#Include <maxray\listOfFolder___folder\listOfFolder___v0.1>
#Include <maxray\RegexGlobalExMatch___Folder\RegexGlobalExMatch___1_0>
    #Include <maxray\RegexGlobalExMatch___Folder\RegexGlobalExMatch___1_1>


systemVariable := FileRead(A_ScriptDir . "/Assists/run/variable.txt")
systemVariable := StrSplit(systemVariable, "`n")

f13 & r::{
    SendInput("{RWin Down}r{rwin up}")
    runGUIvariableHelper(systemVariable)
}


pythonManger()


pythonManger(){
a := listOfFolder___v0_1("C:\Users\Max_Laptop\AppData\Local\Programs\Python")




TexBoxMsgBox___v1_0(a)

    Python_AllFolder_perVersion := (RegexGlobalExMatch___1_0(a, "\/|\\Python[0-9]+"))

    a := Gui()

    i := 1

    
    


    a.add("DropDownList","Choose1", Python_AllFolder_perVersion)
    


    Python_AllFolder_perVersion____number := RegexGlobalExMatch___1_1(Python_AllFolder_perVersion, "[0-9]+")
    l := (Max(Python_AllFolder_perVersion____number*))
    i:=1
    n := 111
        loop Python_AllFolder_perVersion.Length{
        if RegExMatch(Python_AllFolder_perVersion[i],".+" l ".+" ,&n)
            {
                
                break
                
            }
        i++
        
    }
    MsgBox(n)
}






runGUIvariableHelper(arrayObject, title:=A_ScriptName){
    
    q := Gui("+LastFound" , title??A_ScriptName )
    arrayIndex := 1
    
    loop arrayObject.Length{
        q.Add("Button" , , arrayObject[arrayIndex]).OnEvent("Click", clickButtonAction)
        arrayIndex++
    }   
    clickButtonAction(button,*){
	; MsgBox button.text
    ;  A_Clipboard:= button.text
    WinActivate("Run","Type the name of")
    SendText(button.text)
    q.Destroy()
	}

    WinGetPos(, , , &TrayHeight, "ahk_class Shell_TrayWnd")
    height := A_ScreenHeight-485-TrayHeight
    q.Show()
    ; WinSetTransparent(0)
    WinGetPos(&X, &Y, &Width, &Height, )
    MaxX := A_ScreenWidth - Width - 5 ; This will put the Gui to the right of the monitor...adjust the "10" value as needed.
    MaxY := A_ScreenHeight - Height - TrayHeight ; This will put the Gui above the taskbar...adjust the "45" value as needed.

    WinMove(MaxX, MaxY, , , title)


}


