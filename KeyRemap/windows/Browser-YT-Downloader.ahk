; #Requires AutoHotkey v2.0
; #SingleInstance Force


#Include <maxray\GUI\warningLabel_v1_>
#Include <maxray\randomPickAndPlay___Folder\randomPickAndPlay___v0_2>

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



; $#F1::ss
~F13 & 2::{ ;f1

    OpenVideoDownloader()


}











~F13 & 1::{ 




    
    Process_ytDLP__ID := mp3YTdownloader()
    B_ProcessWait(Process_ytDLP__ID)


}








    B_ProcessWait(watchProcess, message?){
        SetTimer( ___watchProcess ,500)
            ___watchProcess(){

                if ProcessExist(watchProcess)
                    return
                
                SetTimer , 0
                ___ytAnimeGirl()
            }

    }










___ytAnimeGirl(){
    Warning_label_v1("done the download")
    play := randomPickAndPlay___v0_2()
    play.play("C:\Users\Max_Laptop\Programming\Github\xMaxrayx_Github\MaxWorkstaion-Rev1\KeyRemap\windows\Assists\YT\Finished the download")
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

    else if WinActive(OpenVideoDownloader_EXE__Name){  ;!exit ;active ;else       ;properly wont work don't bother to work with becouse there is #hotif with hotkey
        WinMinimize(OpenVideoDownloader_EXE__Name)
        
        if IsSet(oldActiveWindow__browserID){
            WinActivate(oldActiveWindow__browserID)
        }

    }

    else { ;!exit && !active 
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



mp3YTdownloader(){
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

        ytDLP := unset
        Run(A_ComSpec ' /c ""C:\Users\Max_Laptop\App files\yt-dlp.exe" -x --embed-thumbnail --audio-format mp3 --no-playlist -P "C:\Users\Max_Laptop\Music\YT" "' YT__URL '" --ffmpeg-location "C:\Program Files\ffmpeg\bin""',,"Minimize" ,&ytDLP )
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

    return ytDLP

}



#HotIf