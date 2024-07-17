#Requires AutoHotkey >=2.1- <3.0
#SingleInstance Force
#Include  <maxray\AHKPlusPlus___Folder\AHKPlusPlus___0_2__v>
#Include  <maxray\GUI\indicator_GUI___Folder\indicator_GUI__0_2_v>


SetScrollLockState("AlwaysOff")



#HotIf GetKeyState("vkff", "P")
sc178 & PrintScreen::{
    SetScrollLockState(!GetKeyState("ScrollLock", "T"))
    static ScrollLockState__indicator__Obj := indicator_GUI()
    if GetKeyState("ScrollLock", "t"){
        ScrollLockState__indicator__Obj := 0
        ScrollLockState__indicator__Obj := indicator_GUI()
        ScrollLockState__indicator__Obj.show(("Scroll Lock Status: " convertToWord(GetKeyState("ScrollLock", "T")) ), "5bb597",, A_ScreenHeight / 4)
    }
    else{
        ScrollLockState__indicator__Obj.tryKill()
        
    

}

convertToWord(bool){
    if bool == 1{
        return "ON"
    }
    else if bool == 0{
        return "OFF"
    }
    else{
        return "ERROR"
    }
}

}


#HotIf

