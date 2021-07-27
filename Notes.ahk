#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

::newnote::
FormatTime, TimeOut, , yyyyMMddHHmmss
Title = `"%TimeOut% - Title`"
Send mknote %Title%{Enter}
return

!`::
FormatTime, TimeOut, , yyyyMMddHHmmss
Send %TimeOut%
return

::mlog::
FormatTime, TimeOut, , yyyyMM
FormatTime, Month, , MMMM
setDate = %Timeout% - %Month%
Send,
(
{#} %setDate%
{#}{#} Objective
* Objective 1

| Date | Day  | Event |
| `:---- | `:---- | `:----- |
| 1    | M    | Event Description and link |
| 2    |      | Link Bullet Joplin Note.   |
| 3    |      |                            |
| 4    |      |                            |
| 5    |      |                            |
| 6    |      |                            |
| 7    |      |                            |
| 8    |      |                            |
| 9    |      |                            |
| 10   |      |                            |
| 11   |      |                            |
| 12   |      |                            |
| 13   |      |                            |
| 14   |      |                            |
| 15   |      |                            |
| 16   |      |                            |
| 17   |      |                            |
| 18   |      |                            |
| 19   |      |                            |
| 20   |      |                            |
| 21   |      |                            |
| 22   |      |                            |
| 23   |      |                            |
| 24   |      |                            |
| 25   |      |                            |
| 26   |      |                            |
| 27   |      |                            |
| 28   |      |                            |
| 29   |      |                            |
| 30   |      |                            |
)
return

::mainmethod::
var =
(
``````csharp
class Program
{{}
	static void Main(string[] args)
	{{}
	{{}
{}}
);
Send, `{ ;
return

::createlog::
Sleep, 900
InputBox, logDate, LogDate, "Enter the date in yyyyMM01 you would like to create logs for."
FormatTime, OriginalMonth, %logDate%, MM
FirstTime := True
loop {
	FormatTime, Day, %logDate% , dddd
	FormatTime, FullDate, %logDate%, yyyyMMdd
	setdate = %FullDate% - %Day%
	if(FirstTime) {
		Send, %setDate%{Enter}
		FirstTime := false
		Sleep, 750
 	} else {
	Send, ^n
 	Sleep, 750
 	Send, %setDate%{Enter}
	Sleep, 750
    }
	EnvAdd, logDate, 1, days
	FormatTime, CheckMonth, %logDate%, MM
}until OriginalMonth != CheckMonth

return