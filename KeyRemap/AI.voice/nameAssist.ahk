#Requires AutoHotkey v2.0
#SingleInstance Force

#Include <maxray\GUI___inlineHotkey___Master\inlineBoxSuggestion___Folder\inlineBoxSuggestion___2_2_0>
#Include <maxray\GUI___Master\splash_screen___Folder.AHK\Splash_screen___0_2>







SingerList__Array := [
    "{Gumi}"
    ,"{Rei Yumesaki}"
    ,"{Kotonoha Akane}"
    ,"{RIA}"
]
SingerList := inlineBox()




global splashScreen := mini_splash___0_2__v()
splashScreen("C:\Users\Max_Laptop\Pictures\0a6591d7d1c959aaf1f0fead9fdd1e235981c5cf_full.jpg")





#HotIf WinActive(SingerList._inlineBox__GUI)

/::{
    SingerList(SingerList__Array,,,,,"saveAs")
}


BackSpace::
Esc::{
    SingerList.Destroy()
}

#HotIf

global splashScreen
splashScreen("C:\Users\Max_Laptop\Pictures\0a6591d7d1c959aaf1f0fead9fdd1e235981c5cf_full.jpg",,,,,," x0 y0")
;


while d??1==1{
    while WinActive("Save As") 
        if WinActive("ahk_exe AIVoiceEditor.exe") && WinActive("Save As") 
        {   
           
            splashScreen.show()
            ; splashScreen.hide()
            AutoPictureClose__Timer()
    
        }


}


AutoPictureClose__Timer(*){
    SetTimer(AutoPictureClose__Call,500)
}


AutoPictureClose__Call(*){
    if WinExist("ahk_exe AIVoiceEditor.exe")&& WinExist("Save As"){
        return
    }

    SetTimer(,0)
    global splashScreen
    ; MsgBox()
    splashScreen.hide()
    splashScreen("C:\Users\Max_Laptop\Pictures\0a6591d7d1c959aaf1f0fead9fdd1e235981c5cf_full.jpg",,,,,," x0 y0")
    Sleep(50)


}