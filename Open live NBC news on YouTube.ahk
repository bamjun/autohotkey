#NoEnv
SetBatchLines, -1

#Include Chrome.ahk


; --- Create a new Chrome instance ---

; Instead of providing a URL here, let's try
; navigating later for demonstration purposes
FileCreateDir, ChromeProfile
ChromeInst := new Chrome("ChromeProfile")


; --- Connect to the page ---

if !(PageInst := ChromeInst.GetPage())
{
	MsgBox, Could not retrieve page!
	ChromeInst.Kill()
}
else
{
	; --- Navigate to the desired URL ---
	
	PageInst.Call("Page.navigate", {"url": "https://www.youtube.com/@NBCNews"})
	PageInst.WaitForLoad()

	PageInst.Evaluate("document.getElementsByClassName('yt-simple-endpoint style-scope ytd-video-renderer')[0].click();")

	PageInst.Disconnect()
}

ExitApp
return