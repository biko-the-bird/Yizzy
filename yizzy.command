#!/usr/local/bin/python3
from tkinter import *
from tkinter import ttk
import os

def dl_audio(*args):
	youtube_link = link.get()
	command = (audio_flags + youtube_link)
	meters.set(command)
	os.system(command)

def dl_video(*args):
	youtube_link = link.get()
	command = ("Youtube-dl -f mp4 " + youtube_link)
	meters.set(command)
	os.system(command)

root = Tk()
root.title("Yizzy - Graphical Youtube-dl")

mainframe = ttk.Frame(root, padding="3 3 12 12")
mainframe.grid(column=0, row=0, sticky=(N, W, E, S))
mainframe.columnconfigure(0, weight=1)
mainframe.rowconfigure(0, weight=1)

link = StringVar()
meters = StringVar()
audio_flags = "Youtube-dl -x --audio-format mp3 " 

link_entry = ttk.Entry(mainframe, width=48, textvariable=link)
link_entry.grid(column=2, row=1, sticky=(W, E))

ttk.Label(mainframe, textvariable=meters).grid(column=2, row=2, sticky=(W, E))
ttk.Button(mainframe, text="Download Audio", command=dl_audio).grid(column=2, row=3, sticky=W)
ttk.Button(mainframe, text="Download Video", command=dl_video).grid(column=1, row=3, sticky=W)

ttk.Label(mainframe, text="Paste link here:").grid(column=1, row=1, sticky=W)
#ttk.Label(mainframe, text="must have Youtube-dl and libav installed").grid(column=3, row=1, sticky=E)
ttk.Label(mainframe, text="command executed:").grid(column=1, row=2, sticky=W)

for child in mainframe.winfo_children(): child.grid_configure(padx=5, pady=5)

link_entry.focus()
root.bind('<Return>', dl_audio)

root.mainloop()

#Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

#The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

#THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
