#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


::inote::
Send, 
(
{#} Concept/Idea
Description in actual sentences
Additional thoughts
***
**Intellectus Links**
[No Link](Evernote link) - Relationship Description (Contradiction, Rel)
***
**Reperio Links**
[No Link](http://weblink.com)
)
return

::rnote::
Send, 
(
{#} Title/Concept/Idea
*Full Bibilography Citation*
p. {#} Your words, literature questions answered, book description in 2 -3 sentences, etc.
> Quote To Back It Up, if you want.


***
**Hard Copy Links**
[If Exist](http://weblink.com)
)
return

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
setDate = "%Timeout% - %Month%"
Send,
(
# %setDate%
## Objective
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
