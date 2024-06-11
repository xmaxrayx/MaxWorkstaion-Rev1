;AHK 1v
;thanks Rohwedder from AHK fourms <3
;https://www.autohotkey.com/boards/viewtopic.php?p=514742#p514742


;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 17:03:43  on 21/1/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}




#IfWinActive,ahk_exe blender.exe ;ahk will work only for blender


$e::
KeyWait, e, T.4 ; 0.4 second
IF ErrorLevel ;long press
	Send, #{F8}                     ;change here the shortcut
Else Send, {e}
KeyWait, e
Return


;@xmaxrayx