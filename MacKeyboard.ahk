; --------------------------------------------------------------
; Mapping Glossary
; --------------------------------------------------------------
; ! = ALT
; ^ = CTRL
; + = SHIFT
; # = WIN

SetTitleMatchMode 2
SendMode Input

#space:: SendInput ^{space}

#LButton::^LButton

; --------------------------------------------------------------
; OS X system shortcuts
; --------------------------------------------------------------

;
; Arrow
;
; command + arrows [Left, Right] - start & end of lines, with shift for selecting text
#Left::SendInput {Home}
#Right::SendInput {End}
#+Left::Send {Shift down}{Home}{Shift Up}
#+Right::Send {Shift down}{End}{Shift Up}
!Left::SendInput ^{Left}
!Right::SendInput ^{Right}
!+Left::SendInput ^+{Left}
!+Right::SendInput ^+{Right}

;command-backspace deletes whole line
#BS::Send {Shift down}{Home}{Shift Up}{Del}

;command-Backspace to Del
#Backspace::Delete

#s::SendInput ^{s}
#a::SendInput ^{a}
#c::SendInput ^{c}
#v::SendInput ^{v}
#x::SendInput ^{x}
#o::SendInput ^{o}
#f::SendInput ^{f}
#z::SendInput ^{z}
#y::SendInput ^{y}
#t::SendInput ^{t}
#w::SendInput ^{w}
#n::SendInput ^{n}


; Close windows (command + q to Alt + F4)
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

; Show Web Developer Tools with command + alt + i
#!i::Send {F12}

; Show source code with command + alt + u
#!u::Send ^u

#IfWinActive
