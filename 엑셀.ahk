
1::

x1 := comobjactive("excel.application")
x1.Selection.HorizontalAlignment := -4108
return


2::exitapp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
1::


x1:= comobjavtive("excel.application")


EAE = 2



loop
{
a := x1.range("C"EAE).Value
b = 한국중국
IfInString, a, %b%
{
x1.range("D"EAE).Value := "찾음!!!"
}
else
{
x1.range("D"EAE).Value := ""
}
EAE++
}until EAE = 200

msgbox, 끝이얏!
return


2::exitapp
