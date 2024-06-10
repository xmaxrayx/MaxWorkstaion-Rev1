#Requires AutoHotkey v2.0
;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 19:42:47  on 9/5/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}


#Include <maxray\GUI\warningLabel_v1_>
#Include <maxray\musicplayerV1>
#Include <maxray\randomFilefromFolder_v1_>
#Include <maxray\randomFileFromFolder_uniqe____Folder\randomFileFromFolder_uniqe__v{1.0}>



play := musicPlayer()








#HotIf GetKeyState("Ctrl", "P")
~F13 & P::{
    play.start("C:\Users\Max_Laptop\Documents\Audacity\waiting for a window.wav")
    Warning_label_v1("lounching blender" , ,,,110,"0x63107b" ,,"s20 Bold ceae9e9" )
    Run('cmd /c rembg "s"' , , "Min")
}













#HotIf
~F13 & p::{
    ; SoundBeep
    ; Sleep(500)
    ; Warning_label_v1("removing the background", ,,,160,"0x63107b" ,,"s20 Bold ceae9e9" )
    ; RunWait('"MaxAutoRembg.py" "1" "0" "isnet-anime" "0"' , , "Hide")
    ; SoundBeep
    
    ; static avoidName_ref := VarRef
    static avoidName_str := ""
    static randomFile := ""

    static toggle := 0



    toggle := toggle + 1

    if toggle == 1{
        ;first time
        
        randomFile := randomFileFromFolder_v1_(A_ScriptDir "/Assists/rembg/done the rembg") 
        RegExMatch(randomFile, "{(.)+}",&avoidName_ref)
        ; avoidName_str :=  avoidName_ref[0] ;trash code tbh 
        try {
            avoidName_str :=  (avoidName_ref[0])
        } catch  {
            avoidName_ref := randomFile
        }
        
    }
    else{
        
        if IsSet(avoidName_str){
            randomFile := randomFileFromFolder_unique__v1_0((A_ScriptDir "/Assists/rembg/done the rembg"), "wav" , "i)" . avoidName_str)
        }else{
            randomFile := randomFileFromFolder_v1_(A_ScriptDir "/Assists/rembg/done the rembg")
        }

        
        RegExMatch(randomFile, "{(.)+}",&avoidName_ref)

        ;/fix if there isn't any avoid name deu to not have "{}"
        try {
            avoidName_str :=  (avoidName_ref[0])
        } catch  {
            avoidName_str := randomFile
        }
        play.start(randomFile)
        
        }
        









   
    
    ; MsgBox randomFile
    



    ; RegExMatch(randomFile, "{(.)+}",&avoidName_ref)
    ; static avoidName_str :=  avoidName_ref[0] ;trash code tbh 
    ; MsgBox avoidName_str
    
    ; MsgBox randomFileFromFolder_unique__v1_0((A_ScriptDir "/Assists/rembg/done the rembg"), "wav" , "i)" . avoidName_str)



    
    ; play.start(randomFile)
    ; randomFile := ""
}







