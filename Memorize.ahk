domo := array()
loop, read, daan.txt
{
stringsplit, OOloop, A_LoopReadLine, %A_Tab%

domo.insert(A_Index . "@" . OOloop2)

}

loop, read, daan.txt
{
stringsplit, OOloop, A_LoopReadLine, %A_Tab%
domo.insert(A_Index . "@" . OOloop3)
}


xinkaishi:
OOsleep = 0
OOstop = 0
gui, destroy

if domo[1] = ""
{
	msgbox, 마지막입니다.
	goto, GuiClose
}

For key, value in domo
	jo := key
random, ro11, 1, %jo%
gj := domo[ro11]
StringGetPos, InputVar, gj, @

doline1 := substr(gj, InputVar+2)
dolineMain := strlen(doline1) * 40
lelineMain := 1
if dolineMain > 1300
{
dolineMain := 1300
lelineMain := strlen(doline1) / 40
	if lelineMain < 2
	{
	lelineMain := 2
	}
}

if dolineMain < 200
{
dolineMain := 300
}

gui, font, s30, SimSun
Gui, Add, Text,x100 w%dolineMain% r%lelineMain% 0x1, % substr(gj, InputVar+2)
gui, Add, button,h40 w70 x1 y0 gOObreak default , 정답
gui, Add, button,h40 w70 x1 y40 gOOfuse , 정지
Gui, Add, Progress, w70 h15 cBlue x2 y80 vMyProgress, 0
Gui, Show, y0

judlo := substr(gj, 1, InputVar)
domo.removeat(ro11)

OOcon := 0
loop, 250
{
if OOsleep = 1
	break

if OOcon = 2
{
GuiControl,, MyProgress, +2
OOcon := 0
}
OOcon += +0.4

sleep, 100
}


loop
{
if OOsleep = 0
	break


if OOstop = 1
	break


sleep, 100
}


goto, xiono

Return


xiono:
OOsleep = 0
OOstop = 0
 
gui, destroy
    FileReadLine, line, daan.txt, %judlo%

dolineMain := strlen(line) * 40
lelineMain := 1
if dolineMain > 1300
{
dolineMain := 1300
lelineMain := strlen(line) / 40
	if lelineMain < 2
	{
	lelineMain := 2
	}



}

if dolineMain < 200
{
dolineMain := 300
}



gui, font, s30, SimSun
Gui, Add, Text,x100 w%dolineMain% R%lelineMain% 0x1, %line%
gui, Add, button,h40 w70 x1 y0 gOObreak default , 다음
gui, Add, button,h40 w70 x1 y40 gOOfuse , 정지
Gui, Add, Progress, w70 h15 cBlue x2 y80 vMyProgress, 0
Gui, Show, y0

OOcon := 0
loop, 500
{
if OOsleep = 1
	break

if OOcon = 1
{
GuiControl,, MyProgress, +1
OOcon := 0
}
OOcon += +0.2

sleep, 100
}

loop
{
if OOsleep = 0
	break


if OOstop = 1
	break


sleep, 100
}

goto, xinkaishi

return

OObreak:
OOstop = 1
OOsleep = 1
return

OOfuse:
OOsleep = 1
return


GuiClose:
exitapp
