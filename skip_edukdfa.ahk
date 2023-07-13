1::
2::
3::
4::
5::
6::
7::
8::
9::
    index_one := A_ThisHotkey
    a_fun := "lastPage=" . index_one
    b_fun := "movePage(" . index_one . ")" 
    c_fun := "learningComplete()"

    Clipboard := a_fun
    Send, ^v{Enter}
    Clipboard := b_fun
    Send, ^v{Enter}
    Clipboard := C_fun
    Send, ^v{Enter}
    sleep, 1000
    Send, ^w
    Send, {F5}
	

return

