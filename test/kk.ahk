Run('"' A_ScriptDir "\QuickConvertorV2.ahk" '"' "1")
Global places := []
CoordMode("Mouse")
CoordMode("Pixel")
image := A_ScriptDir . "\test.png"
SoundBeep(1500)
imgFindAll(image, 500, 500, 800, 800)
SoundBeep(1000)
If !places.Count() {
 MsgBox("Nothing found.", "Nothing found", 48)
 Return
}
For k, v in places {
 MouseClick(, v.1, v.2)
 Sleep(300)
}

imgFindAll(image, x1, y1, x2, y2) {
 ErrorLevel := !ImageSearch(&x, &y, x1, y1, x2, y2, image)
 If ErrorLevel
  Return
 places.Push([x, y]), size := imgSize(image)
 imgFindAll(image, x + size.w, y, x2, y + size.h), imgFindAll(image, 0, y + size.h, x2, y2)
}

imgSize(img) { ; Returns an array indicating the image's width (w) and height (h),
               ; obtained from the file's properties
               ; https://www.autohotkey.com/boards/viewtopic.php?f=76&t=81665
 SplitPath(img, &fn, &dir)
 objShell := ComObject("Shell.Application")
 objFolder := objShell.NameSpace(dir), objFolderItem := objFolder.ParseName(fn)
 scale := StrSplit(RegExReplace(objFolder.GetDetailsOf(objFolderItem, 31), ".(.+).", "$1"), " x ")
 Return {w: scale.1, h: scale.2}
}