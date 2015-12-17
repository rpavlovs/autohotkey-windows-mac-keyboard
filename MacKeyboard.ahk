;-----------------------------------------
; Mac keyboard to Windows Key Mappings
;=========================================

; --------------------------------------------------------------
; NOTES
; --------------------------------------------------------------
; ! = ALT
; ^ = CTRL
; + = SHIFT
; # = WIN
;

#NoEnv
; #Warn
SetWorkingDir %A_ScriptDir%
#InstallKeybdHook
#SingleInstance force
SetTitleMatchMode 2
SendMode Input


; --------------------------------------------------------------
; media/function keys all mapped to the right option key
; --------------------------------------------------------------

RAlt & F7::Send {Media_Prev}
RAlt & F8::Send {Media_Play_Pause}
RAlt & F9::Send {Media_Next}
F10::Send {Volume_Mute}
F11::Send {Volume_Down}
F12::Send {Volume_Up}

; swap left command/windows key with left alt
;LWin::LAlt
;LAlt::LWin ; add a semicolon in front of this line if you want to disable the windows key

; Eject Key
F20::Send {Insert}

; F13-15, standard windows mapping
F13::Send {PrintScreen}
F14::Send {ScrollLock}
F15::Send {Pause}

;F16-19 custom app launchers, see http://www.autohotkey.com/docs/Tutorial.htm for usage info
F16::Run http://twitter.com
F17::Run http://tumblr.com
F18::Run http://www.reddit.com
F19::Run https://facebook.com

; --------------------------------------------------------------
; OS X system shortcuts
; --------------------------------------------------------------

; Make Ctrl + S work with cmd (windows) key
#s::Send ^s

; Selecting
#a::Send ^a

; Copying
#c::Send ^c

; Pasting
#v::Send ^v

; Cutting
#x::Send ^x

; Opening
#o::Send ^o

; Finding
#f::Send ^f

; Undo
#z::Send ^z

; Redo
#y::Send ^y

; New tab
#t::Send ^t

; close tab
#w::Send ^w

; Close windows (cmd + q to Alt + F4)
#q::Send !{F4}

; Remap Windows + Tab to Alt + Tab.
Lwin & Tab::AltTab

; minimize windows
#m::WinMinimize,a


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

