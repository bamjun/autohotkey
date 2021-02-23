

SetTimer, now,500
;every 0.5 second start noe label

Gui, Add, Text, x10 y10 w180 h20 vguinow
;create guinow variable in text gui

Gui, Show, , CLOCK
;show gui and named clock

return

GuiClose:
ExitApp
;click 'x' and exit

now:
;create now labal

formattime, abc, ,yy년MM월dd일 tt hh시mm분ss초
;formattime and create abc variable

GuiControl, text, guinow , %abc%
;abc store in guinow

return







/*

Gosub,currentDate
Gosub,currentTime
Gosub,guiupdator
SetTimer,currentDate,60000
SetTimer,currentTime,500
prevday:=A_Now
prevday+=-1,days

Gui, Add, Text, x6 y17 w60 h20 , Simple Date

Gui, Add, Text, x6 y47 w60 h20 , Simple time
Gui, Add, Edit, x76 y17 w90 h20 vsimpledate, %cdate%
Gui, Add, Edit, x76 y47 w90 h20 vsimpletime, %ctime%
Gui, Add, DateTime, x126 y117 w120 h20 vdatedrop Choose%prevday%,
Gui, Add, Text, x6 y117 w110 h20 , date for yesterday
Gui, Add, Text, x206 y17 w190 h20 , ahk time string
Gui, Add, Text, x206 y47 w190 h20 vahktimestring, 
Gui, Add, Text, x6 y87 w140 h20 , value used to change this
Gui, Add, Text, x166 y87 w230 h20 vprevday, %prevday%
; Generated using SmartGUI Creator 4.0
Gui, Show, , time demo
Return

GuiClose:
ExitApp

currentDate:
FormatTime,cdate,,yyyy/MM-dd
Return


currentTime:
FormatTime,ctime,,hh:mm:ss
Gosub,guiupdator
Return

guiupdator:
GuiControl, text, simpletime , %ctime%
GuiControl, text, ahktimestring , %A_Now%


prevday+=-1,days
GuiControl, , datedrop , %prevday%
Gui,submit,NoHide
GuiControl, text, prevday , %datedrop%


return

*/
