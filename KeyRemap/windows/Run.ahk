; #Requires AutoHotkey v2.0
; #SingleInstance Force
;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 11:53:40  on 11/6/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}

#Include <maxray\GUI___Master\TexBoxMsgBox___folder\TexBoxMsgBox___v1_0>
#Include <maxray\listOfFolder___folder\listOfFolder___v0.1>
#Include <maxray\RegexGlobalExMatch___Folder\RegexGlobalExMatch___1_0>
#Include <maxray\RegexGlobalExMatch___Folder\RegexGlobalExMatch___1_1>
#Include <maxray\RegexGlobalMultiLineExMatch___Folder\RegexGlobalMultiLineExMatch___0_1>
#Include <maxray\GUI__Control___Master\GUI_Move___Folder\GuiMove___0_1>
#Include <maxray\GUI___Master\splash_screen___Folder.AHK\Splash_screen___0_2>
#Include <maxray\randomPickAndPlay___Folder\randomPickAndPlay___v0_2>



systemVariable := FileRead(A_ScriptDir . "/Assists/run/variable.txt")
systemVariable := StrSplit(systemVariable, "`n")
guiDarkSplash_image:= (A_ScriptDir . "/Assists/run/images/pythonGirl23.jpg")






f13 & r::{

    if WinExist("Run","Type the name of"){
        WinKill("Run","Type the name of")    
    }

    else{
        ; SendInput("{RWin}r")
        run("explorer.exe Shell:::{2559a1f3-21d7-11d4-bdaf-00c04f60b9f0}") , sleep(1)
        
        runGUIvariableHelper__Win__ID := runGUIvariableHelper(systemVariable)
        ; MsgBox(runGUIvariableHelper__Win__ID)
        
        /*
        WinGetPos(,&y,,&H,runGUIvariableHelper__Win__ID)
        nextHight := A_ScreenHeight -(y+H+5)
        */


        
        pythonManger("C:\Users\Max_Laptop\Programming\Github\xMaxrayx_Github\MaxWorkstaion-Rev1\KeyRemap\windows\Assists\run\images\pythonGirl24.jpg"
        ,"h90 w150")

        ;============
        userFolder_DDL__Win__ID := userFolder_DDL("User Folder:"
        ,"C:\Users\Max_Laptop",1,2)
        ;==
        WinGetPos(,&y,,&H,userFolder_DDL__Win__ID)
        nextHight := (y+H+5)
        ;============


        favoriteFolder_FileToGUI(
            A_ScriptDir . "/Assists/run/userfavfolder.txt"
            ,1,nextHight
        )


        ; runGUIvariableHelper__FileToGUI()

        WinGetPos(&X, &Y
            ,&Width,&Height
            ,"Run"
            ,"Type the name of")

        WinMove(A_ScreenWidth/2 - Width/2 ,
            A_ScreenHeight/2 - Height/2 ,,
            ,"Run"
            ,"Type the name of")
        WinActive("Run"
        ,"Type the name of")

        ; WinWaitActive()
        global darkMagic__Splash__Gui := mini_splash___0_2__v()
        
        

        WinGetPos(&x,&y,&w,&h
        ,"Run"
        ,"Type the name of")
        
        
        ; MsgBox(x "`n" y)
        darkMagic__Splash__Gui(guiDarkSplash_image, w,400
            ,
            ,
            ,
            ,
            "x" ((A_ScreenWidth/2))-450 " y" 1
        ) ;(y - h - 200)

        darkMagic__Splash__Gui.show()

        play := randomPickAndPlay___v0_2()
        play.play("C:\Users\Max_Laptop\Programming\Github\xMaxrayx_Github\MaxWorkstaion-Rev1\KeyRemap\windows\Assists\run\VoiceLines")

        SetTimer( AutoClose__WindowsApp_Run , 500)

        


            }


            ;/////////


}





userFolder_DDL(title, Dir, x ,y ){
    listFolder := listOfFolder___v0_1(Dir)
        ; TexBoxMsgBox___v1_0(listFolder)
    
        CustomDir_AllFolder_perVersion := (RegexGlobalMultiLineExMatch___0_1(listFolder,"[^\\]+$"))
        ; TexBoxMsgBox___v1_0(CustomDir_AllFolder_perVersion)
 

        


        folderGUI := Gui("+LastFound","Chose python folder")

        folderGUI.AddText(, title)
    
    
        Folder_DropDownList:= folderGUI.add("DropDownList","Choose1", CustomDir_AllFolder_perVersion)
        folderGUI.Add("Button", , "Go There!").OnEvent("Click", clickButtonAction)
    
       
    
        clickButtonAction(*){
            FolderRegexExpression_nameToFile := (Folder_DropDownList.Text)
            FolderRegexExpression_nameToFile := StrReplace(FolderRegexExpression_nameToFile, "/", "\/")
            FolderRegexExpression_nameToFile := StrReplace(FolderRegexExpression_nameToFile, "\", "\\")
            FolderRegexExpression_nameToFile := StrReplace(FolderRegexExpression_nameToFile, ".", "\.")
    
            ; MsgBox(FolderRegexExpression_nameToFile)
    
            ; FolderRegexExpression_nameToFile :=     ".+" FolderRegexExpression_nameToFile  "(.+)?"       ;    .+Python37(.+)?
            
            FolderRegexExpression_nameToFile :=     ".+" FolderRegexExpression_nameToFile


            FolderRegexExpression_nameToFile__result := RegExMatch(listFolder,FolderRegexExpression_nameToFile, &s )
            FolderRegexExpression_nameToFile__result  := s
            ; MsgBox(FolderRegexExpression_nameToFile__result[])
    
    
            run("explorer " FolderRegexExpression_nameToFile__result[])
    
            WinClose("Run","Type the name of")
    
        }
    
    
    
    
        folderGUI.Show("NoActivate")
    
        /*
        WinGetPos(, , , &TrayHeight, "ahk_class Shell_TrayWnd")
        height := A_ScreenHeight-485-TrayHeight
        
        ; WinSetTransparent(0)
        WinGetPos(&X, &Y, &Width, &Height, )
        MaxX := A_ScreenWidth - Width - 5 ; This will put the Gui to the right of the monitor...adjust the "10" value as needed.
        MaxY := A_ScreenHeight - Height - TrayHeight ; This will put the Gui above the taskbar...adjust the "45" value as needed.
        */


        WinMove(x, y, , , "Chose python folder")
    
    
        AutoCloseGUI(folderGUI)
        return(WinGetID(folderGUI))    
    
    }
    






;==============================================python gui
pythonManger(picture?, picture_H_W?){
listPythonFolder := listOfFolder___v0_1("C:\Users\Max_Laptop\AppData\Local\Programs\Python")
; TexBoxMsgBox___v1_0(listPythonFolder)

    Python_AllFolder_perVersion := (RegexGlobalExMatch___1_0(listPythonFolder, "\/|\\Python[0-9]+"))

    pythonGui := Gui("+LastFound","Chose python folder")

    pythonGui.AddText(, "Choose Python Version:")


    Python_DropDownList:= pythonGui.add("DropDownList","Choose1", Python_AllFolder_perVersion)
    pythonGui.Add("Button", , "Go There!").OnEvent("Click", clickButtonAction)
    
    if IsSet(picture){
        pythonGui.Add("Pic", picture_H_W , picture)
    }
   

    clickButtonAction(*){
        PythonRegexExpression_nameToFile := (Python_DropDownList.Text)
        PythonRegexExpression_nameToFile := StrReplace(PythonRegexExpression_nameToFile, "/", "")
        PythonRegexExpression_nameToFile := StrReplace(PythonRegexExpression_nameToFile, "\", "")
        PythonRegexExpression_nameToFile := StrReplace(PythonRegexExpression_nameToFile, ".", "/.")



        PythonRegexExpression_nameToFile :=     ".+" PythonRegexExpression_nameToFile  "(.+)?"       ;    .+Python37(.+)?

        PythonRegexExpression_nameToFile__result := RegExMatch(listPythonFolder,PythonRegexExpression_nameToFile, &s )
        PythonRegexExpression_nameToFile__result  := s
        ; MsgBox(PythonRegexExpression_nameToFile__result[])
 

        run("explorer " PythonRegexExpression_nameToFile__result[])

        WinClose("Run","Type the name of")

    }




    pythonGui.Show("NoActivate")

    
    WinGetPos(, , , &TrayHeight, "ahk_class Shell_TrayWnd")
    height := A_ScreenHeight-485-TrayHeight
    
    ; WinSetTransparent(0)
    WinGetPos(&X, &Y, &Width, &Height, )
    MaxX := A_ScreenWidth - Width - 5 ; This will put the Gui to the right of the monitor...adjust the "10" value as needed.
    MaxY := A_ScreenHeight - Height - TrayHeight ; This will put the Gui above the taskbar...adjust the "45" value as needed.

    WinMove(MaxX, 1, , , "Chose python folder")


    AutoCloseGUI(pythonGui)


}










runGUIvariableHelper__FileToGUI(file, x , y , title:=A_ScriptName ){
    
    file := FileRead(A_ScriptDir . "/Assists/run/variable.txt")
    file := StrSplit(file, "`n")




    SystemVarFolderGUI := Gui("+LastFound" , title??A_ScriptName )
    arrayIndex := 1
    
    loop file.Length{
        SystemVarFolderGUI.Add("Button" , , file[arrayIndex]).OnEvent("Click", clickButtonAction)
        arrayIndex++
    }





    clickButtonAction(button,*){
	; MsgBox button.text
    ;  A_Clipboard:= button.text
    WinActivate("Run","Type the name of")
    SendText(button.text)
    SystemVarFolderGUI.Destroy()
	}

    WinGetPos(, , , &TrayHeight, "ahk_class Shell_TrayWnd")
    height := A_ScreenHeight-485-TrayHeight
    SystemVarFolderGUI.Show()
    ; WinSetTransparent(0)
    WinGetPos(&X, &Y, &Width, &Height, )
    MaxX := A_ScreenWidth - Width - 5 ; This will put the Gui to the right of the monitor...adjust the "10" value as needed.
    MaxY := A_ScreenHeight - Height - TrayHeight ; This will put the Gui above the taskbar...adjust the "45" value as needed.

    WinMove(MaxX, MaxY, , , title)

    AutoCloseGUI(SystemVarFolderGUI)
}

favoriteFolder_FileToGUI(file, x , y , title:=A_ScriptName ){
    
    fileContent := FileRead(file)
    fileContent := StrSplit(fileContent, "`n")



    SystemVarFolderGUI := Gui("+LastFound" , title??A_ScriptName )
    i := 1
    
    loop fileContent.Length{
        if RegExMatch(fileContent[i],"\?")
            {
                
                name := StrSplit(fileContent[i],"?")
                name := name[2]
                SystemVarFolderGUI.Add("Button" , , name[2]).OnEvent("Click", clickButtonAction)
            }else{
                SystemVarFolderGUI.Add("Button" ,   
                                        ,fileContent[i]).OnEvent("Click", clickButtonAction)
              
            }
        i++
    }

    



    clickButtonAction(button,*){
	; MsgBox button.text
    ;  A_Clipboard:= button.text
    WinActivate("Run","Type the name of")
    SendText(button.text)
    SystemVarFolderGUI.Destroy()
	}
    
    SystemVarFolderGUI.Show("x" x " y" y " NoActivate" )
    /*
    WinGetPos(, , , &TrayHeight, "ahk_class Shell_TrayWnd")
    height := A_ScreenHeight-485-TrayHeight
    ; WinSetTransparent(0)
    WinGetPos(&X, &Y, &Width, &Height, )
    MaxX := A_ScreenWidth - Width - 5 ; This will put the Gui to the right of the monitor...adjust the "10" value as needed.
    MaxY := A_ScreenHeight - Height - TrayHeight ; This will put the Gui above the taskbar...adjust the "45" value as needed.

    WinMove(MaxX, MaxY, , , title)

    */
    AutoCloseGUI(SystemVarFolderGUI)
}












runGUIvariableHelper(arrayObject, title:=A_ScriptName){
    
    SystemVarFolderGUI := Gui("+LastFound" , title??A_ScriptName )
    arrayIndex := 1
    
    loop arrayObject.Length{
        SystemVarFolderGUI.Add("Button" , , arrayObject[arrayIndex]).OnEvent("Click", clickButtonAction)
        arrayIndex++
    }





    clickButtonAction(button,*){
	; MsgBox button.text
    ;  A_Clipboard:= button.text
    WinActivate("Run","Type the name of")
    SendText(button.text)
    SystemVarFolderGUI.Destroy()
	}

    WinGetPos(, , , &TrayHeight, "ahk_class Shell_TrayWnd")
    height := A_ScreenHeight-485-TrayHeight
    SystemVarFolderGUI.Show()
    ; WinSetTransparent(0)
    WinGetPos(&X, &Y, &Width, &Height, )
    MaxX := A_ScreenWidth - Width - 5 ; This will put the Gui to the right of the monitor...adjust the "10" value as needed.
    MaxY := A_ScreenHeight - Height - TrayHeight ; This will put the Gui above the taskbar...adjust the "45" value as needed.

    WinMove(MaxX, MaxY, , , title)

    AutoCloseGUI(SystemVarFolderGUI)
    return WinGetID(SystemVarFolderGUI)
}


AutoCloseGUI(Gui, *){
SetTimer(L , -1000)

L(*) {
    WinWaitClose("Run","Type the name of")
; MsgBox( Gui.ID)
gui.Destroy()
}


}




; AutoCloseRun(*){
;     SetTimer(closeThis , -1000)
    

;     ; MsgBox( Gui.ID)
;     ; gui.Destroy()
;     }
    
    
;     }


AutoClose__WindowsApp_Run(*){

    if WinActive("Run", "Type the name of"){
        return
    }

    if WinActive("ahk_class AutoHotkeyGUI")&& WinExist("Run","Type the name of"){
        return
    }
    
   
    SetTimer( , 0)
    try{ ;if the use kill the window 
        WinKill("Run","Type the name of")
    }
    darkMagic__Splash__Gui.Hide()
}