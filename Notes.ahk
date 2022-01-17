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
FormatTime, TimeOut, , yyyyMMdd:HHmmss
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
	setdate = %FullDate% 晝 %Day%
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
!1::
if WinActive("Joplin")
{
	SEND !+n
	Sleep, 1000
	Send {tab}
}
return

!2::
if WinActive("Joplin")
{
	SEND !^+n
	Sleep, 300
	Send Idea
	Sleep, 300
	Send {tab}{Enter}
	Sleep, 1200
	Send {tab}
}
return

!4::
if WinActive("Joplin")
{
	SEND !^+n
	Sleep, 300
	Send Lucid Note
	Sleep, 300
	Send {tab}{Enter}
	Sleep, 1500
	Send {tab}
}
Return

!5::
if WinActive("Joplin")
{
	SEND !^+n
	Sleep, 300
	Send Joseph Note
	Sleep, 300
	Send {tab}{Enter}
	Sleep, 1500
	Send {tab}
}
Return


+!w::
if WinActive("Joplin")
{
	SEND ⚒{Space}
}
return

+!a::
if WinActive("Joplin")
{
	SEND 🗲{Space}
}
return

+!b::
if WinActive("Joplin")
{
	SEND ⛱{Space}
}
return

+!i::
if WinActive("Joplin")
{
	SEND 🧠{Space}
}
return

+!m::
if WinActive("Joplin")
{
	SEND 🗫{Space}
}
return



!c::
if WinActive("Joplin")
{
	SEND ^n
	FormatTime, TimeOut, , yyyyMMdd:HHmmss
	Sleep, 300
	SEND %TimeOut%📱{Space}
}
Return

!r::
if WinActive("Joplin")
{
	SEND ^n
	FormatTime, TimeOut, , yyyyMMdd:HHmmss
	Sleep, 300
	SEND %TimeOut%📚{Space}
}
Return

!h::
if WinActive("Joplin")
{
	SEND ^p
	FormatTime, Day, , dddd
	FormatTime, FullDate, , yyyyMMdd
	todate = %FullDate% 晝 %Day%
	Sleep, 300
	send %todate%
	Sleep, 500
	send {Enter}

}
Return

+!x::
if WinActive("Joplin")
{
	SEND >❌{Space}
}
Return

+!s::
if WinActive("Joplin")
{
	SEND ⛔{Space}
}
Return

+!q::
if WinActive("Joplin")
{
	SEND ❓{Space}
}
Return

+!f::
if WinActive("Joplin")
{
	SEND ✖ {Space}
}
Return

+!o::
if WinActive("Joplin")
{
	SEND >💻{Space}
}
Return

+!c::
if WinActive("Joplin")
{
	SEND ✔{Space}
}
Return

+!n::
if WinActive("Joplin")
{
	SEND 📝{Space}
}
Return

::wtf::
if WinActive("Joplin")
{
	SEND 😕{Space}
}
Return


#IfWinActive Joplin
::meta::
(
#### Metadata
Roles:
Descriptors:
)
Return

#IfWinActive Joplin
!d::
SEND ^n
Sleep 500
_date := Date()
day := Day()
setdate = %_date% 晝 %day%
SEND %setDate%
Sleep, 750
if (A_DDDD = "Monday")
{
Gosub, monday
} else if (A_DDDD = "Tuesday") {
Gosub, tuesday
} else if (A_DDDD = "Wednesday") {
Gosub, wednesday
} else if (A_DDDD = "Thursday") {
Gosub, thursday
} else if (A_DDDD = "Friday") {
Gosub, friday
} else if (A_DDDD = "Saturday") {
Gosub, saturday
}
Return

::thursdaytask::
SEND ^n
Sleep 500
_date := Date()
day := Day()
setdate = %_date% 晝 %day%
SEND %setDate%
Sleep, 750
Gosub, thursday
Return

::fridaytask::
SEND ^n
Sleep 500
_date := Date()
day := Day()
setdate = %_date% 晝 %day%
SEND %setDate%
Sleep, 750
Gosub, friday
Return

::startmonth::
SEND ^t
Sleep, %A_YYYY%%A_MM% - Log Health Stats
Sleep, 500
SEND ^t
Sleep, 500
Send, %A_YYYY%%A_MM% - REI Planning and Budget^+b
Sleep, 500
Send, - [ ] Schedule With Lauren
Return

::startweek::
Year := SubStr(A_YWeek, 1, 4)
WeekNumber := SubStr(A_YWeek, -1)
SEND ^t
Sleep, 500
SEND, %Year% Week %WeekNumber% Goal - Writing - 3 Times A Week
Sleep, 500
SEND ^t
Sleep, 500
SEND, %Year% Week %WeekNumber% Goal - STTA - Meet With Steve 3 Times A Week
Sleep, 500
SEND ^t
Sleep, 500
SEND, %Year% Week %WeekNumber% Goal - Lift - 3 Times A Week
Sleep, 500
SEND ^t
Sleep, 500
SEND, %Year% Week %WeekNumber% Goal - Additional Cardio 2-3 Times A Week
Sleep, 500
SEND ^t
Sleep, 500
SEND, %Year% Week %WeekNumber% Goal - Journal - Title
Sleep, 500
SEND ^t
Sleep, 500
SEND, %Year% Week %WeekNumber% Goal - Meditate 70min
Sleep, 500
SEND ^t
Sleep, 500
SEND, %Year% Week %WeekNumber% Goal - Personal Budget Tracking And Relection
Sleep, 500
SEND ^t
Sleep, 500
SEND, %Year% Week %WeekNumber% Goal - REI Budget Tracking And Relection
Sleep, 500
SEND ^t
Sleep, 500
SEND, %Year% Week %WeekNumber% Goal Relection^+b
Sleep, 500
SEND ^t
Sleep, 500
SEND Transform any guilt into curiosity, ask why each task might still be incomplete, Does it matter? Is it vital? What would happen if you didn't do it?
Sleep, 500
SEND, %Year% Week %WeekNumber% Groceries
Sleep, 500
SEND ^t
Sleep, 500
SEND, %Year% Week %WeekNumber% Laundry
Sleep, 500
SEND ^t
Sleep, 500
SEND, %Year% Week %WeekNumber% Clean
Sleep, 500
SEND ^t
SEND, %Year% Week %WeekNumber% Cook Prep
SEND ^t
Sleep, 500
SEND, %Year% Week %WeekNumber% Goal - 5 Hours of Development training {Enter}
SEND, How did we do on our week goals? What got in our way?
Return

tuesday:
Gosub, penmanship
Sleep, 750
Gosub, worldywise
Sleep, 750
Gosub, write
Sleep, 750
Gosub, meditate
Sleep, 750
Gosub, cardio
Sleep, 750
Gosub, lightworkout
Sleep, 750
Gosub, fiction
Sleep, 750
Gosub, nonfiction
Sleep, 750
Gosub, cleanupnotes
Sleep, 750
Gosub, processtags
Sleep, 750
GoSub, STTA
Sleep, 750
GoSub, rei
Sleep, 750
GoSub, pack
Return

monday:
Gosub, penmanship
Sleep, 750
Gosub, meditate
Sleep, 750
Gosub, lift
Sleep, 750
Gosub, lightworkout
Sleep, 750
Gosub, developmentpractice
Sleep, 750
Gosub, fiction
Sleep, 750
Gosub, cleanupnotes
Sleep, 750
Gosub, processtags
Sleep, 750
GoSub, STTA
Sleep, 750
GoSub, rei
Return

wednesday:
Gosub, penmanship
Sleep, 750
Gosub, meditate
Sleep, 750
Gosub, lift
Sleep, 750
Gosub, lightworkout
Sleep, 750
Gosub, developmentpractice
Sleep, 750
Gosub, fiction
Sleep, 750
Gosub, cleanupnotes
Sleep, 750
Gosub, processtags
Sleep, 750
GoSub, rei
Return

thursday:
Gosub, penmanship
Sleep, 750
Gosub, worldywise
Sleep, 750
Gosub, write
Sleep, 750
Gosub, meditate
Sleep, 750
Gosub, cardio
Sleep, 750
Gosub, lightworkout
Sleep, 750
Gosub, fiction
Sleep, 750
Gosub, nonfiction
Sleep, 750
Gosub, cleanupnotes
Sleep, 750
Gosub, processtags
Sleep, 750
GoSub, rei
Return

friday:
Gosub, penmanship
Sleep, 750
Gosub, meditate
Sleep, 750
Gosub, lift
Sleep, 750
Gosub, lightworkout
Sleep, 750
Gosub, developmentpractice
Sleep, 750
Gosub, fiction
Sleep, 750
Gosub, cleanupnotes
Sleep, 750
Gosub, processtags
Return

saturday:
Gosub, penmanship
Sleep, 750
Gosub, worldywise
Sleep, 750
Gosub, write
Sleep, 750
Gosub, meditate
Sleep, 750
Gosub, cardio
Sleep, 750
Gosub, nonfiction
Sleep, 750
Gosub, STTA
Sleep, 750
Gosub, rei
Return


penmanship:
SEND ^t
Sleep, 500
timestamp := Date()
Send %timestamp% 𝔀 Penmanship 10min
Return

pack:
SEND ^t
Sleep, 500
timestamp := Date()
Send %timestamp% - Pack Food and Clothes
Return

rei:
SEND ^t
Sleep, 500
timestamp := Date()
Send %timestamp% 🏘 Work on REI
Return

worldywise:
SEND ^t
Sleep, 500
timestamp := Date()
Send %timestamp% 𝔀 Worldy Wise 10min
Return

write:
SEND ^t
Sleep, 500
timestamp := Date()
Send %timestamp% 🖉 Write 30min
Return

meditate:
SEND ^t
Sleep, 500
timestamp := Date()
Send %timestamp% 🧘 Meditate 10min
Return

lift:
SEND ^t
Sleep, 500
timestamp := Date()
Send %timestamp% 🏋 Lift - title
Return

cardio:
SEND ^t
Sleep, 500
timestamp := Date()
Send %timestamp% 🚶‍♂️ Steady State Cardio and Stretching
Return

lightworkout:
SEND ^t
Sleep, 500
timestamp := Date()
Send %timestamp% 🏋 Additional Exercise
Return

nonfiction:
SEND ^t
Sleep, 500
timestamp := Date()
Send %timestamp% 🕮 Nonfiction Reading 30min
Return

fiction:
SEND ^t
Sleep, 500
timestamp := Date()
Send %timestamp% 📖 Fiction Reading 30min
Return

developmentpractice:
SEND ^t
Sleep, 500
timestamp := Date()
Send %timestamp% 💻 Java Script 60mins
Return

cleanupnotes:
SEND ^t
Sleep, 500
timestamp := Date()
Send %timestamp% 🗄 Process 3 Fleeting Notes and Notes
Return

processtags:
SEND ^t
Sleep, 500
timestamp := Date()
Send %timestamp% 🗄 Process 3 tags
Return

STTA:
SEND ^t
Sleep, 500
timestamp := Date()
Send %timestamp% 🗄 Work on STTA with Steve
Return

Timestamp()
{
FormatTime, TimeOut, , yyyyMMdd:HHmmss
Return %TimeOut%
}

Date()
{
FormatTime, FullDate, %logDate%, yyyyMMdd
Return %FullDate%
}

Day()
{
FormatTime, Day, %logDate% , dddd
Return %Day%
}