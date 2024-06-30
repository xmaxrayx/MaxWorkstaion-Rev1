#Requires AutoHotkey v2.0
#SingleInstance Force


; v1 [Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 09:46:55  on 8/5/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}


global oldActiveWindow__browserID:= unset  
;====
global OpenVideoDownloader_EXE__Path := "C:\Users\Max_Laptop\AppData\Local\Programs\youtube-dl-gui\Open Video Downloader.exe"
global OpenVideoDownloader_EXE__Name := "ahk_exe Open Video Downloader.exe"
global OpenVideoDownloader__Title := "Open Video Downloader"
;=====


;========MP3 downlowsd sittings
global ffmpegPath := "C:\Program Files\ffmpeg\bin\ffmpeg.exe" ; --ffmpeg-location
global yt_dlp_exe__Path := A_UserPath() . "\App files\yt-dlp.exe" 
global yt_dlp__BaseCommand := ' "-x --embed-thumbnail --audio-format mp3 --no-playlist" '
global output__Path := A_UserPath() . "\Music" ; -P

;=====''

#HotIf WinActive("ahk_exe msedge.exe") || WinActive("ahk_exe chrome.exe") || WinActive("ahk_exe vivaldi.exe")



; $#F1::
~F13 & 2::{ ;f1

   


}











~F13 & 1::{ 

    global Youtube_Raw__URL := unset
    try{
        global Youtube_Raw__URL := WinGetTitle("A")
    }

    if IsSet(Youtube_Raw__URL){
        YT__URL := youtubeSearch(Youtube_Raw__URL)
    }

    if YT__URL == 0 {
        ytLKink__vervidtior()
    }
    else{
        ; MsgBox YT__URL
        ; Run('cmd /k ""C:\Users\Max_Laptop\App files\yt-dlp.exe" -x --embed-thumbnail --audio-format mp3 --no-playlist -P "C:\Users\Max_Laptop\Music" "' YT__URL '" --ffmpeg-location "C:\Program Files\ffmpeg\bin""')


        
        try{
           global oldBrowserWindow_Before__downloading__ID := WinGetID("A")
        }

        
        Run(A_ComSpec ' /c ""C:\Users\Max_Laptop\App files\yt-dlp.exe" -x --embed-thumbnail --audio-format mp3 --no-playlist -P "C:\Users\Max_Laptop\Music\YT" "' YT__URL '" --ffmpeg-location "C:\Program Files\ffmpeg\bin""')
        Sleep(500)

        global  oldBrowserWindow_Before__downloading__ID
    
        if IsSet(oldBrowserWindow_Before__downloading__ID){
            WinActivate("ahk_id " oldBrowserWindow_Before__downloading__ID)
        
        }
        else{
            SendInput("{ALT Down}{Tab Down}{Tab Up}{Alt up}")
        }

        while (WinActive("C:\Windows\system32\cmd.exe")){
            SendInput("{ALT Down}{Tab Down}{Tab Up}{Alt up}")
        }




    }



    






}




#HotIf WinActive(OpenVideoDownloader_EXE__Name)
$#F1::
~LWin & F1::{
    global oldActiveWindow__browserID

    if IsSet(oldActiveWindow__browserID){
        WinMinimize(OpenVideoDownloader_EXE__Name)
        WinActivate(oldActiveWindow__browserID)
        global oldActiveWindow__browserID := unset
    }else{
        SendInput("{Alt Down}{Tab Down}{Tap UP}{Alt UP}")
    }

}

















A_UserPath(){

    A_UserPath__str := A_MyDocuments
    A_UserPath__str := RegExReplace(A_UserPath__str, "\\Documents" , "")

    return A_UserPath__str
} 



youtubeSearch(URL ,mode:=1 ,debugMode := 0){
    if mode == 1{

        if debugMode == 1{
            MsgBox URL
        }


        Youtube_clean__URL := RegExMatchInfo
        Youtube_clean__value := RegExMatch(URL,"i)youtu\S+\/\S+" ,&Youtube_clean__URL  )

        if Youtube_clean__value == 0 {
            return 0
        }else{
            return Youtube_clean__URL[0]
        }

    }
}



ytLKink__vervidtior(){
    result := MsgBox("couldn't get youtube link!!`nOpen Open Video downloader instead?" , "Error" ,"YN")

    if result == "No"{
        Exit
    }

    global OpenVideoDownloader_EXE__Name
    global OpenVideoDownloader_EXE__Path
    if WinExist(OpenVideoDownloader_EXE__Name){
        WinActivate(OpenVideoDownloader_EXE__Name)
        Exit
    }
    
    else{
        Run("explorer " OpenVideoDownloader_EXE__Path)
        Exit
    }
}















OpenVideoDownloader(Youtube_Raw__URL := "" ){
    try{
        Youtube_Raw__URL := WinGetTitle("A")
    }

    if WinExist(OpenVideoDownloader_EXE__Name){

        try {
            global oldActiveWindow__browserID := WinGetID("A")
            global oldActiveWindow__browserID := ("ahk_id " oldActiveWindow__browserID)
        }catch{
            global oldActiveWindow__browserID:= unset    
        }
        
        if IsSet(Youtube_Raw__URL){
            A_Clipboard := youtubeSearch(Youtube_Raw__URL)
            WinActivate(OpenVideoDownloader_EXE__Name)
            WinWaitActive(OpenVideoDownloader_EXE__Name)
            SendInput "{Ctrl Down}a{Ctrl Up}"
            Sleep(50)
            SendInput "{Delete}"
            Sleep(50)
            SendInput "{Ctrl Down}v{Ctrl up}"
            Sleep(50)
            SendInput "{Enter}"
        }else{ ;!Youtube_Raw__URL
            WinActivate(OpenVideoDownloader_EXE__Name)
        }


    }

    else if WinActive(OpenVideoDownloader_EXE__Name){ ;properly wont work don't bother to work with
        WinMinimize(OpenVideoDownloader_EXE__Name)
        
        if IsSet(oldActiveWindow__browserID){
            WinActivate(oldActiveWindow__browserID)
        }

    }

    else {
        try {
            global oldActiveWindow__browserID := WinGetID("A")
            global oldActiveWindow__browserID := ("ahk_id " oldActiveWindow__browserID)
        }catch{
            global oldActiveWindow__browserID:= unset    
        }


        if IsSet(Youtube_Raw__URL){
            A_Clipboard := youtubeSearch(Youtube_Raw__URL)
        }


        
        Run("explorer " OpenVideoDownloader_EXE__Path)
        WinWait(OpenVideoDownloader_EXE__Name)
        Sleep(500)
        if !WinActive(OpenVideoDownloader_EXE__Name){
            WinActivate(OpenVideoDownloader_EXE__Name)
        }

        SendInput "{Ctrl Down}a{Ctrl Up}"
        Sleep(50)
        SendInput "{Delete}"
        Sleep(50)
        SendInput "{Ctrl Down}v{Ctrl up}"
        Sleep(50)
        SendInput "{Enter}"



    }

}

















;=== only for test::

/*
1::{
    MsgBox KeyWaitCombo()

    MsgBox KeyWaitCombo()

    MsgBox KeyWaitCombo()

    MsgBox KeyWaitCombo()





    KeyWaitCombo(Options:="")
    {
        ih := InputHook(Options)
        if !InStr(Options, "V")
            ih.VisibleNonText := false
        ih.KeyOpt("{All}", "E")  ; End
        ; Exclude the modifiers
        ih.KeyOpt("{LCtrl}{RCtrl}{LAlt}{RAlt}{LShift}{RShift}{LWin}{RWin}", "-E")
        ih.Start()
        ih.Wait()
        return ih.EndMods . ih.EndKey  ; Return a string like <^<+Esc
    }
}







*/


/*

3::{

    ; RunWait( 'cmd \k ipconfig' )
    ; Run(A_ComSpec " /k ipconfig /all")


    YT__URL := "https://www.youtube.com/watch?v=UZXPxdJqPBA&list=RDMM&index=2"


YTCommand := (yt_dlp__BaseCommand . " -P  '" output__Path . '" --ffmpeg-location'  
. ffmpegPath '"'
)
    ;'C:\Users\Max_Laptop\App files\yt-dlp.exe' -x --embed-thumbnail --audio-format mp3 --no-playlist -P"C:\Users\Max_Laptop\Music" --ffmpeg-location "C:\Program Files\ffmpeg\bin\ffmpeg.exe" https://youtu.be/kCWX6yxg-iA

    ; A:= ( A_ComSpec  " /K "  yt_dlp_exe__Path   YTCommand "'" )
    ; Run(A)

    ; Run(A_ComSpec ' /k "' yt_dlp_exe__Path '"'  )


    ; Run( 'CMD /k "' yt_dlp_exe__Path ' "'  " -x --embed-thumbnail --audio-format mp3 --no-playlist "  YT__URL "-P C:\Users\Max_Laptop\Music"   ) ;" -P '"  output__Path  "'" 
    ;



    Run('cmd /k ""C:\Users\Max_Laptop\App files\yt-dlp.exe" -x --embed-thumbnail --audio-format mp3 --no-playlist -P "C:\Users\Max_Laptop\Music" "' YT__URL '" --ffmpeg-location "C:\Program Files\ffmpeg\bin""')



}


*/
; l::{
; MsgBox youtubeSearch("Analogy - YouTube - https://www.youtube.com/watch?v=DPUngxYPb1g&list=RDMM&index=10 - Google Chrome")
; }


/*

YT__URL := "https://www.youtube.com/watch?v=UZXPxdJqPBA&list=RDMM&index=2"


YTCommand := (yt_dlp__BaseCommand . " -P  '" output__Path . "' --ffmpeg-location '" 
. ffmpegPath "'" 
)

global yt_dlp_exe__Path := "'" . yt_dlp_exe__Path . "'"


; Run( A_ComSpec  " /c "  yt_dlp_exe__Path '" ' YTCommand '"'  )

A:= ( A_ComSpec  " /K start'"  yt_dlp_exe__Path   YTCommand "'" )

RunWait( a)


MsgBox a


    if WinExist("ahk_exe Open Video Downloader.exe"){

    }else{
        ; Run("explorer " YTDownlowderPath) 
    }
*/
