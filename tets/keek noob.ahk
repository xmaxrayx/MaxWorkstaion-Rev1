#Requires AutoHotkey v2.0
#SingleInstance Force



























class iniMangerV1_old{
    
    ini__fileName := "\settings.ini"	; changed - added backslash by default
    Ini__path := A_ScriptDir
    
;	; this is not doing anything for you. needs to be changed to getter/setter below...
;    SetIniFileName(name){
;        this.ini__fileName				; does nothing
;        name := "/" . name . ".ini"	; does nothing... and why forward slash?
;        this.ini__fileName				; does nothing
;    }

	; Property that gets and sets this.ini__fileName
	; getter/setter
	IniFileName {
		get {
			return this.ini__fileName
		}
		set {
			fn := trim(value, "\")	; value acts like a hidden parameter that is passed
			this.ini__fileName := "\" . fn . "ini"
		}
	}
	
    
	; this is a method/function acting like a setter. Why? 
	; try changing it to getter/setter property style shown above
	; or just allow the property to be set directly (publicly)  ;?
    
    SetIniPath(path){
        this.Ini__path := path
    }

    do(masterKey,defaultValue,section){
		; changed to iniV1 to match outside function name
        return iniV1(masterKey, defaultValue ,section, this.Ini__path , this.IniFileName)	; the variables are not needed
		; or make the arguments consistent
       ; return iniV1(masterKey, defaultValue ,section, this.Ini__path , this.ini__fileName)
    }
}

iniV1(masterKey, defaultValue ,section := "", path := A_ScriptDir , defaultFilename := "\settings.ini" ){ ; added backslash here
 ;   defaultFilename := "\"  . defaultFilename	; remove this... its not needed
    admincounter(){
        MsgBox "the script has no permission to read the file (higher privliiges needed)"
    }

; continued but not included here ...
}