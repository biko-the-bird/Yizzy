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