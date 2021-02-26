
CLIPBOARD := ""

Loop
{

mousegetpos, x, y
   liveMessage= %x%, %y%
ToolTip, %liveMessage%
sleep, 300
}

LButton::
mousegetpos, x, y
liveMessage= %x%, %y%
CLIPBOARD .= liveMessage . "`n"
send, {LButton}
RETURN


Esc:: ExitApp


