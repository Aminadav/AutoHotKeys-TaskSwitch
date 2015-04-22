SetTitleMatchMode, 2

;********command line
#c::
IfWinExist ,cmd.exe
{
ifWinActive
WinActivatebottom ,cmd.exe
else
WinActivate
return
}
#+c::
run cmd.exe /k cd\
return
#^+c::
loop 5 
winClose cmd.exe
return

;******************Chrome
#h::
IfWinExist ,Chrome
	{
	ifWinActive
		{
		WinActivatebottom ,Chrome
	}
	else
	{
		WinActivate
	}
	return
}

#+h::
run "chrome"
return
#^+h::
loop 5 
winClose Chrome
return

;**********Sublime Text
#s::
IfWinExist ,Sublime
	{
	ifWinActive
		{
		WinActivatebottom ,Sublime
	}
	else
	{
		WinActivate
	}
	return
}
#+s::
run "C:\Program Files\Sublime Text 2\sublime_text.exe" -n
return
#^+s::
loop 5
winClose Sublime
return

;**************Notepad
#n::
IfWinExist ,Notepad
	{
	ifWinActive
		{
		WinActivatebottom ,Notepad
	}
	else
	{
		WinActivate
	}
	return
}

#+n::
run "notepad"
return
#^+n::
loop 5
winClose Notepad
return


;**********Explorer
#Space::
IfWinExist ,ahk_class CabinetWClass
	{

	ifWinActive, ahk_class CabinetWClass
		{
		WinActivatebottom ,ahk_class CabinetWClass
	}
	else
	{
		WinActivate
	}
	return
}

#+Space::
run "Explorer" d:\
return
#^+Space::
loop 5 
winClose ahk_class CabinetWClass
return

// Press Win+Enter to press the left click button where the mouse is
#Enter::
sendevent {LButton down}
keywait #
sendevent {LButton up}
return

// Press Win+AppsKey (right click on keyboard) to press the right click button where the mouse is
#AppsKey::
sendevent {RButton down}
keywait #
sendevent {RButton up}
return