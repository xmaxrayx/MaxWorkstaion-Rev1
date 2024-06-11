#Requires AutoHotkey v2.0
;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 19:42:47  on 9/5/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}


#Include <maxray\GUI\warningLabel_v1_>
#Include <maxray\musicplayerV1>
#Include <maxray\randomFilefromFolder_v1_>
#Include <maxray\randomFileFromFolder_uniqe____Folder\randomFileFromFolder_uniqe__v{1.0}>
#Include <maxray\GUI\indicator_GUI___Folder\indicator_GUI__v{0.1}>



play := musicPlayer()




#HotIf GetKeyState("Ctrl", "P")
~F13 & P::{
    play.start("C:\Users\Max_Laptop\Documents\Audacity\waiting for a window.wav")
    Warning_label_v1("Launching RemBG" , ,,,110,"0x63107b" ,,"s20 Bold ceae9e9" )
    Run('cmd /c rembg "s"' , , , &pid)
    global Rembg__PID_Console := pid
    global Rembg_indicator := indicator_GUI__v0_1() 

    Rembg_indicator.show("RemBg is Running in the Background`n`n`n`nPress Super + Q to stop", "0xd5ff00" , ,A_ScreenHeight - 200 ,150 )

}

 #HotIf IsSet(Rembg__PID_Console)
 ~F13 & Q::{
    global Rembg__PID_Console
    ; ProcessClose(Rembg__PID_Console) ;dosn't work
    WinKill("ahk_pid " Rembg__PID_Console)
    WinKill("C:\Windows\SYSTEM32\cmd.exe") ;!? need make  global var for global window
    global Rembg__PID_Console := unset
    global Rembg_indicator
    Rembg_indicator.close()
    global Rembg_indicator := unset
    Warning_label_v1("Stopped RemBG" , ,,,110,"0x63107b" ,,"s20 Bold ceae9e9" )
 }











#HotIf
~F13 & p::{
    SoundBeep
    Warning_label_v1("Removing the background", ,,,160,"0x63107b" ,,"s20 Bold ceae9e9" )
    ; RunWait('"MaxAutoRembg.py" "1" "0" "isnet-anime" "0"' , , "Hide")
    SoundBeep
    static avoidName_str := ""
    static randomFile := ""

    static toggle := 0



    toggle := toggle + 1

    if toggle == 1{
        ;first time
        
        randomFile := randomFileFromFolder_v1_(A_ScriptDir "/Assists/rembg/done the rembg")
        if RegExMatch(randomFile, "{(.)+}",&avoidName_ref) {
            avoidName_str :=  (avoidName_ref[0])
        }else{
            avoidName_ref := randomFile
        }
        play.start(randomFile)

    }
    else{

        if IsSet(avoidName_str){
            randomFile := randomFileFromFolder_unique__v1_0((A_ScriptDir "/Assists/rembg/done the rembg"), "wav" , "i)" . avoidName_str)
        }else{
            randomFile := randomFileFromFolder_v1_(A_ScriptDir "/Assists/rembg/done the rembg")
        }


        if RegExMatch(randomFile, "{(.)+}",&avoidName_ref){
        avoidName_str :=  (avoidName_ref[0])
        }else{
            avoidName_ref := randomFile
        }


        play.start(randomFile)

        }

}







