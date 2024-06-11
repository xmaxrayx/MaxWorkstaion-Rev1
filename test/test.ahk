#Requires AutoHotkey v2.0
#SingleInstance Force


F4::MsgBox GetProcessPath(WinExist('Calculator'))

GetProcessPath(hwnd) {
   if !WinExist(hwnd)
      throw ValueError('Window does not exist.', -1, hwnd)
   if WinGetProcessName(hwnd) = 'ApplicationFrameHost.exe' {
      if WinGetMinMax(hwnd) = -1 {
         DetectHiddenWindowsState := A_DetectHiddenWindows
         DetectHiddenWindows true
         hwnd := WinExist(WinGetTitle(hwnd) ' ahk_class Windows.UI.Core.CoreWindow')
         DetectHiddenWindows DetectHiddenWindowsState
      } else {
         hwnd := ControlGetHwnd('Windows.UI.Core.CoreWindow1', hwnd)
      }
   }
   return WinGetProcessPath(hwnd)
}