;-----------------------------------------
; Mac hotkeys to Windows
;=========================================
;
; Before using this script:
; 
; 1) Enable UI access
;		- https://autohotkey.com/board/topic/70449-enable-interaction-with-administrative-programs/
; 1) Disable Narrator shortcut key
; 		- https://superuser.com/questions/473410/disable-narrator-shortcut-key-in-windows-8
; 2) Disable Win key
;		- https://support.microsoft.com/en-us/kb/216893
;
; Make shortcut here for automatic startup:
; 	- C:\Users\[yourusername]\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
;


#NoEnv 							; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn 							; Recommended for catching common errors.
SetWorkingDir %A_ScriptDir%		; Ensures a consistent starting directory.
SendMode Input 					; Recommended for new scripts due to its superior speed and reliability.
#InstallKeybdHook
#SingleInstance force
SetTitleMatchMode 2

^!r::
    reload
Return

; --------------------------------------------------------------
; media/function keys all mapped to the right option key
; --------------------------------------------------------------

RAlt & F7::Send {Media_Prev}
RAlt & F8::Send {Media_Play_Pause}
RAlt & F9::Send {Media_Next}
RAlt & F10::Send {Volume_Mute}
RAlt & F11::Send {Volume_Down}
RAlt & F12::Send {Volume_Up}

; --------------------------------------------------------------
; OS X system shortcuts
; --------------------------------------------------------------

#s::Send ^s ; Save
#a::Send ^a ; Select
#c::Send ^c ; Copy
#v::Send ^v ; Paste
#x::Send ^x ; Cut
#o::Send ^o ; Open
#n::Send ^n ; New
#f::Send ^f ; Finding
#z::Send ^z ; WinMinimizeAllUndo
#y::Send ^y ; Redo
#t::Send ^t ; New tab
#w::Send ^w ; Close tab
#+n::Send ^+n ; Special New
#+t::Send ^+t ; Reopen tab
#+s::Send ^+s ; Save as
#+b::Send ^+b ; Build
#+f::Send ^+f ; Special Find

; Close windows (cmd + q to Alt + F4)
#q::Send !{F4}

; Remap Windows + Tab to Alt + Tab.
LWin & Tab::AltTab
LWin & `::ShiftAltTab

; minimize windows
#m::WinMinimize,a

; Use cmd + Arrows to simulate Home, End
#Up::Send ^{Home}
#Down::Send ^{End}
#Right::Send {End}
#Left::Send {Home}
 
#+Up::Send ^+{Home}
#+Down::Send ^+{End}
#+Right::Send +{End}
#+Left::Send +{Home}

; Open in new Tab
#LButton::Send ^{LButton}

; Ctrl+Enter
#Enter::Send ^{Enter}
#+Enter::Send ^+{Enter}

; Disable Windows key
LWin::
RWin::

; Start apps with Win+Space
#Space::LWin

; Fix Logout issue
#l::Send #l

LWin & WheelUp::Send ^{WheelUp}
LWin & WheelDown::Send ^{WheelDown}

; Wheel over taskbar: increase/decrease volume.
#If MouseIsOver("ahk_class Shell_TrayWnd")
WheelUp::Send {Volume_Up} 
WheelDown::Send {Volume_Down}

MouseIsOver(WinTitle) {
    MouseGetPos,,, Win
    return WinExist(WinTitle . " ahk_id " . Win)
}

; Ctrl + Alt + Delete
^!BackSpace::Send {LCtrl}{LAlt}{Delete}

; Delete
#+BackSpace::Send +{Delete}
#BackSpace::Send {Delete}

#b::^b ; Bold
#i::^i ; Italic
#u::^u ; Underline
#k::^k ; Link from selection

; Sublime
#d::Send ^d
#+p::Send ^+p

; --------------------------------------------------------------
; Application specific
; --------------------------------------------------------------

; Google Chrome
#IfWinActive, ahk_class Chrome_WidgetWin_1

	; Show Web Developer Tools with cmd + alt + i
	#!i::Send {F12}

	; Show source code with cmd + alt + u
	#!u::Send ^u

#IfWinActive

; Outlook
#IfWinActive, ahk_class rctrl_renwnd32

	
	#Enter::Send ^{Enter} ; Send	
	#r::Send ^r           ; Reply
	#+r::Send ^r          ; Reply All
	#f::Send ^f           ; Forward

#IfWinActive
