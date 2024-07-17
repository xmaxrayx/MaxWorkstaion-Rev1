#Requires AutoHotkey v2.0
#SingleInstance Force

#Include  <maxray\others\Lexikos\winrt.ahk\winrt>

appId := "Hello"
TNM := WinRT("Windows.UI.Notifications.ToastNotificationManager")  ; Get the class itself.
TNM.History.Clear appId  ; History is a static property.
toastXml := TNM.getTemplateContent(1)  ; Enum not supported yet, so pass an integer.
textEls := toastXml.getElementsByTagName("text")
textEls.GetAt(0).InnerText := "Hello, world!"  ; GetAt is a member of IVectorView<IXmlNode>, implemented by XmlNodeList.
toastXml.getElementsByTagName("image").Item(0)  ; Item is equivalent to GetAt, for XmlNodeList.
        .setAttribute("src", "C:\Data\Scripts\Drafts\ActiveScript\sample.png")
toastNotifier := TNM.createToastNotifier(appId)  ; Call a static method.
notification := WinRT("Windows.UI.Notifications.ToastNotification")(toastXml)  ; Instantiate a class.
toastNotifier.show(notification) ; Call an instance method.