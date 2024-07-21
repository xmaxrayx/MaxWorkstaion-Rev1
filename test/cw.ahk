#Requires AutoHotkey >=2.1- <3.0
#SingleInstance Off
#Include  <maxray\AHKPlusPlus___Folder\AHKPlusPlus___0_2__v>



;/run % comspec " /c dir c:\windows\*.txt | clip“,, hide

; Cmd_output("Ipconfig")

; Cmd_output1( 'cmd /K cd /d "C:\Users\Max_Laptop\source\repos\ConsoleApp1\bin\Release\net8.0" & ConsoleApp1.exe')






; Cmd_output('cmd /c "cd /d "C:\Users\Max_Laptop\source\repos\ConsoleApp1\bin\Release\net8.0" && ConsoleApp1.exe |clip "')
;"C:\Users\Max_Laptop\source\repos\ConsoleApp2\bin\Release\ConsoleApp2.exe"
; MsgBox(A_Clipboard)

; MsgBox( 
;     RegExReplace(A_MyDocuments,"Documents" ,"Music")
;         )

; Cmd_output("echo %USERPROFILE%\Music")




; Cmd_output("systeminfo")
; MsgBox(A_Clipboard)


; MsgBox(ComObject("WScript.Shell").Exec('cmd.exe /c systeminfo | findstr /b /c:"OS Name"').StdOut.ReadAll())
; winVer := Cmd_output('systeminfo | findstr /b /c:"OS Name"')
; winVer := RegExReplace(winVer,"OS Name:\s+" ,"")
; MsgBox(winVer)



winVerCS := Cmd_output('cmd /c "cd /d "C:\Users\Max_Laptop\source\repos\ConsoleApp2\bin\Release" & ConsoleApp2.exe |clip "')
MsgBox(winVerCS)

Cmd_output(command){
    A_Clipboard := ""
    run 'cmd /c ' '"' command '"' ' | clip' ,,"hide"
    ClipWait()
    result := A_Clipboard 
    A_Clipboard := ""
    return result
}










; cmd /c "cd /d "C:\Users\Max_Laptop\source\repos\ConsoleApp1\bin\Release\net8.0" && ConsoleApp1.exe |clip "

; Cmd_output1(command){
;     A_Clipboard := ""
;     run 'cmd /k ' '"' command '"' ' | clip' , , "Maximize"
  
;     ; MsgBox(A_Clipboard)
; }






; run A_ComSpec (  " 'c:\Users\Max_Laptop\source\repos\ConsoleApp1\bin\Release\net8.0\'   ConsoleApp1.exe'")
; run("c:\Users\Max_Laptop\source\repos\ConsoleApp1\bin\Release\net8.0\ConsoleApp1.exe")