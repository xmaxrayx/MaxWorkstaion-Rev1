#Requires AutoHotkey >=2.1- <3.0
#SingleInstance Off
#Include  <maxray\AHKPlusPlus___Folder\AHKPlusPlus___0_2__v>



;/add exe path after @

AppList__Array := [

    "ClipStudio@C:\Program Files\CELSYS\CLIP STUDIO 1.5\CLIP STUDIO\CLIPStudio.exe"
    ,"Krita@C:\Program Files\Krita (x64)\bin\krita.exe"
    ,

]

MainSmallGUi()







MainSmallGUi(){
    m := Gui()
    AppList__String  := ""


    i := 1
    loop AppList__Array.Length {
        nameAndPath__Array__oneAppOnly := StrSplit(AppList__Array[i],"@")
        AppList__String .= AppList__Array[i] . "`n"
        m.Add("Button", ,nameAndPath__Array__oneAppOnly[1]).OnEvent("Click" , SearchWithTextInTextList )

        i++
    }

    MsgBox(AppList__String)





    SearchWithTextInTextList(btn, *){
        
        RegExMatch( AppList__String ,"\Q" btn.Text "\E.+", &SearchResult__ref)
        SearchResult__str := SearchResult__ref[]
        SearchResult__str := RegExReplace( SearchResult__str ,"\Q" btn.Text "\E@")
        MsgBox(SearchResult__str)

    }

    m.Show()




}

