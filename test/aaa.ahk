#Requires AutoHotkey v2.0
#SingleInstance Force

; clrs := Map()
; clrs["Red"] := "ff0000"
; clrs["Green"] := "00ff00"
; clrs["Blue"] := "0000ff"
; for clr in Array("Blue", "Green")
;     MsgBox clrs[clr]


m := map()
m["key 1"] :="value 1", "sub-key 2" ,"value 2" , "sub-key3" ,"value 3"
m["aaa"] :="1 lol ", ["kkkk"] ,"lll"
m[2] := "2 lol"
m[3] := "3 lol"
; m := (1, "lol")

MsgBox(m.Get("aaa","kkkk"))