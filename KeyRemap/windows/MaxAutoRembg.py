from PIL import Image, ImageGrab
from rembg import remove, new_session
from tkinter import messagebox
import ctypes
import win32clipboard
import sys


#[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 11:01:46  on 11/5/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}



ctypes.windll.shcore.SetProcessDpiAwareness(1)








#part 1
#see if the image from clipbored is a file type or image type.


clipboard_image = ImageGrab.grabclipboard()



if isinstance(clipboard_image, Image.Image):
    
    try:
        if int(sys.argv[2]) == 1:
            messagebox.showinfo("info","image type : clipboard")
    except:
        pass
    
    rawImage = clipboard_image
    
    
    
elif isinstance(clipboard_image, list):
    for filename in clipboard_image:
        image = Image.open(filename)
        rawImage = image
        try:
            if int(sys.argv[2]) == 1:
                messagebox.showinfo("info","image type : list")
        except:
            pass
else:
        rawImage = 0

        
    
    # print("No image found in clipboard")
#part 2
#use rembbg

if rawImage == 0:
    try:
        if int(sys.argv[2]) == 1 :
            messagebox.showwarning("error" , "no image found good bye")
            exit()
            
    except:
        exit()
    exit()



# rembg_output = remove(rawImage)



try:
    model_name = sys.argv[3]
except:
    model_name = "isnet-anime"


mask = 0

try:
    if int(sys.argv[4]) == 1:
        mask = 1
except :
    mask = 0
    

session = new_session(model_name)


rembg_output = remove(rawImage, session=session , only_mask=bool(mask))



session = 0


# 3$ work but it output black

# from io import BytesIO
# import win32clipboard
# from PIL import Image

# def send_to_clipboard(clip_type, data):
#     win32clipboard.OpenClipboard()
#     win32clipboard.EmptyClipboard()
#     win32clipboard.SetClipboardData(clip_type, data)
#     win32clipboard.CloseClipboard()

# filepath = 'Ico2.png'
# image = (rembg_output)

# rembg_output = BytesIO()
# # image.convert("RGB").save(rembg_output, "BMP")
# data = rembg_output.getvalue()[14:]
# rembg_output.close()

# send_to_clipboard(win32clipboard.CF_DIB, data)

#4
# https://stackoverflow.com/questions/7050448/write-image-to-windows-clipboard-in-python-with-pil-and-win32clipboard

from io import BytesIO
import io

img_out = rembg_output

buffer = io.BytesIO()
img_out.save(fp=buffer, format='PNG')

# clipboard_format = win32clipboard.RegisterClipboardFormat('PNG')  CF_DIB
clipboard_format = win32clipboard.RegisterClipboardFormat('PNG')  


win32clipboard.OpenClipboard()
win32clipboard.EmptyClipboard()
win32clipboard.SetClipboardData(clipboard_format, buffer.getvalue())
win32clipboard.CloseClipboard()

buffer.close()





