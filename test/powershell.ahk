#Requires AutoHotkey >=2.1- <3.0
#SingleInstance Off
#Include  <maxray\AHKPlusPlus___Folder\AHKPlusPlus___0_2__v>



; run("powershell -c \"[System.Console]::WriteLine('Hello World!')\"")


; run "powershell ipconfig | clip" , ,"hide" 

; MsgBox(A_Clipboard)



; A_Clipboard := ""
; RunWait 'powershell  "(Get-ItemProperty -Path "HKCU:\Software\Microsoft\OneDrive" -Name "UserFolder").UserFolder | clip"',,"hide"
; ClipWait()
; MsgBox(A_Clipboard)





; A_Clipboard := ""
; RunWait 'powershell  $env:OneDrive | clip',,"hide"
; ClipWait()
; MsgBox(A_Clipboard)

; A_Clipboard := ""
; RunWait 'powershell  $env:OneDriveCommercial | clip',,"hide"
; ClipWait()
; MsgBox(A_Clipboard)



; A_Clipboard := ""
; RunWait "powershell [Environment]::GetFolderPath('mymusic') | clip",,"hide"
; ClipWait()
; MsgBox(A_Clipboard)

A_Clipboard := ""
RunWait("powershell   (Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion') | Select-Object -Property ProductName | clip",,"Hide" )
ClipWait()

winVerRegistry := A_Clipboard 


cleanWordList := ["i)ProductName", "i)DisplayVersion" ,"-" , "\s\s+"]
for word in cleanWordList{
    winVerRegistry := RegExReplace(winVerRegistry,word,"")
}


MsgBox(winVerRegistry)

