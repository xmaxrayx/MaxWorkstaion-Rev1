#Requires AutoHotkey v2.0
#SingleInstance Force



;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 11:07:52  on 28/5/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}







AppsKey::{
    SendInput("{AppsKey}")
    Sleep 50
    SendInput("{Home}")
}

^!Left::{
    
    SendInput("{Ctrl Down}{PgUp}{Ctrl Up}")
}
^!Right::{
    
    SendInput("{Ctrl Down}{PgDn}{Ctrl Up}")
}









