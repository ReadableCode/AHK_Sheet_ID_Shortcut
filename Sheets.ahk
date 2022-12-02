#NoEnv
#Warn
SendMode Input
SetWorkingDir %A_ScriptDir%

; ^ for Ctrl
; ! for Alt
; # for Win
; + for Shift

;----------Go To Selected Sheet ID----------

^+c::
{
 Send, ^c
 Sleep 50
 Run, https://docs.google.com/spreadsheets/d/%clipboard%
 Return
}

^+f::
{
 Send, ^c
 Sleep 50
 Run, https://drive.google.com/drive/folders/%clipboard%
 Return
}

;----------Variables----------




;----------Functions----------

Date()
{
	FormatTime, CurrentDate,, MM/dd/yyyy
	SendInput %CurrentDate%
}

DateStamp()
{
	FormatTime, CurrentDate,, yyyy.MM.dd
	SendInput %CurrentDate%
}

Time12()
{
	FormatTime, CurrentTime,, hh:mm:ss tt
	SendInput %CurrentTime%
}

Time24()
{
	FormatTime, CurrentTime,, HH:mm:ss
	SendInput %CurrentTime%
}

DateTime()
{
	Date()
	SendInput {Space}
	Time24()
}