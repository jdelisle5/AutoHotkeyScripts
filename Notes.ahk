#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

::knote::

FormatTime, TimeOut, , yyyyMMddHHmmss
Send, 
(
@(Book of Knowledge)[No Tags, No Existing Notes Link, No Reference Links]
{#}{#}{#} %TimeOut% - Data Note Taken - Concept/Idea

Concept/Idea: description in actual sentences
Additional thoughts

{#}{#}{#}{#} Links To Existing Notes
[No Link](Evernote link)

{#}{#}{#}{#} References
[No Web Link](http://weblink.com)
[No Reference](http://evernotelink)
(Bullet Journal Note Book, Page Number)
)
return

::ref::
Send, 
(
@(References)[No Tags]
{#}{#}{#} Title

{#}{#}{#}{#} Citation:

)
return

::wnote::
FormatTime, TimeOut, , yyyyMMddHHmmss
Send, 
(
@(Book of Well-being)[No Tags, No Existing Notes Link]
{#}{#}{#} %TimeOut% - Date Note Taken - Thought/Feeling/Side-Effect
Note
Additional thoughts

{#}{#}{#}{#} Links To Existing Notes
[No Link](Evernote link)
)
return