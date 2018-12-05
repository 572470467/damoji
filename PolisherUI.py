import tkinter
from tkinter import *
from tkinter import ttk
import tkinter.messagebox
root = Tk()
root.title("打磨机控制面板")
v = IntVar()
var=DoubleVar()
t0=StringVar()
t1=StringVar()
root.geometry('800x480')
list=[('100mm',1),('125mm',2),('150mm',3),('180mm',4)]
class PolisherUI(object):
    def __init__(self):
        self.label=Label(root,text="选择砂轮直径:")
        self.label.grid(row =0,column =0,ipadx = 50)
        self.label=Label(root,text="选择磨削压力:")
        self.label.grid(row =0,column =1,ipadx = 5)
        self.label=Label(root,text="选择磨削时间:")
        self.label.grid(row =3,column =1,ipadx = 5)
        self.label=Label(root,text="N")
        self.label.grid(row =1,column =4,ipadx = 5)
        self.label=Label(root,text="(min)")
        self.label.grid(row =3,column =3,ipadx = 5)
        for lan,num in list:
            self.radiobutton=Radiobutton(root,text=lan,variable=v,value=num).grid(row=num,column=0)
        self.scale=Scale(root,from_=1,to=10,orient=HORIZONTAL,variable = var).grid(row=3,column=2)
        self.button=Button(root,text="启动",command=self.start,width = 5)
        self.button.grid(row =5,column =1,ipadx = 5)
        s0=Spinbox(root,width=4,from_=0,to=10,textvariable=t0).grid(row=1,column=2)
        s1=Spinbox(root,width=4,from_=0,to=10,textvariable=t1).grid(row=1,column=3)
    def start(self):
        if (t0.get() =='0'):
            root0=Tk()
            root0.title("错误提示")
            Label(root0,text='压力不能少于10牛!',fg='red',width=50,height=6).pack()
        elif (v.get()==0):
            root0=Tk()
            root0.title("错误提示")
            Label(root0,text='请选择砂轮直径!',fg='red',width=50,height=6).pack()
        else:
            for i in range(4):
                if (v.get()==i):
                    root1=Tk()
                    root1.title("提示")
                    Label(root1,text='选择的砂轮直径为:'+list[i-1][0]+','+'磨削压力为:'+(t0.get())+(t1.get())+'牛'+','+'磨削时间为:'+(str(var.get()))+'秒'+'!',fg='red',width=50,height=6).pack()
                    self.button['text']='停止'
                    self.button['state']='disable'
        
if __name__=='__main__':
    p=PolisherUI()
    mainloop() 
