#Requires AutoHotkey v2.0
#SingleInstance Force


H := ""



str(Number){
if number == 0
    return ""
}


MsgBox(num(" 12  "))

Num(String){
    string := RegExReplace(String, "\s", "")

    if string == ""
        return 0
    else    
        return Number(String)
}

MsgBox(1 + Number(" 1.5"))



[DllImport("c:/Program Files/AutoHotkey/v2/AutoHotkey64.dll")]
public static extern int Host(ref IntPtr obj);

public void Test() {
    Type ahk2;  
    object ahk2Object;
    IntPtr ptr = IntPtr.Zero;
    Host(ref ptr);
    ahk2Object = Marshal.GetObjectForIUnknown(ptr);
    ahk2 = ahk2Object.GetType();

    //ahk2 = Type.GetTypeFromProgID("AutoHotkey2.Script");
    //ahk2Object = Activator.CreateInstance(ahk2);
    object [] args = new object [] {"Persistent\nMsgBox(s:='hello')\n"};  
    object thread = ahk2.InvokeMember("NewThread", System.Reflection.BindingFlags.InvokeMethod, null, ahk2Object, args);
    object script = thread.GetType().InvokeMember("Script", System.Reflection.BindingFlags.GetProperty, null, thread, null);
    object s = script.GetType().InvokeMember("s", System.Reflection.BindingFlags.GetProperty, null, script, null);
    MessageBox.Show(s.ToString(), "var s=");
    object msgbox = script.GetType().InvokeMember("msgbox", System.Reflection.BindingFlags.GetProperty, null, script, null);
    
    args = new object [] {"hello ahk","call by c#"};
    msgbox.GetType().InvokeMember("call", System.Reflection.BindingFlags.InvokeMethod, null, msgbox, args);
}