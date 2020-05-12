#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

::knote::
InputBox, Concept, Concept, {Enter}

FormatTime, TimeOut, , yyyyMMddHHmmss
FormatTime, DateNoteTaken, , yyyyMMdd
Send, 
(
@(Book of Knowledge)[No Tags, No Existing Notes Link, No Reference Links]
{#}{#}{#} %TimeOut% - %DateNoteTaken% - %Concept%

%Concept%: description in actual sentences
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
InputBox, Title, Title, {Enter}
Send, 
(
@(References)[No Tags]
{#}{#}{#} %Title%

{#}{#}{#}{#} Citation:

)
return

::wnote::

InputBox, thought, Thought/Feeling/Side-Effect, {Enter}
FormatTime, TimeOut, , yyyyMMddHHmmss
FormatTime, DateNoteTaken, , yyyyMMdd
Send, 
(
@(Book of Well-being)[No Tags, No Existing Notes Link]
{#}{#}{#} %TimeOut% - %DateNoteTaken% - %thought%
Note
Additional thoughts

{#}{#}{#}{#} Links To Existing Notes
[No Link](Evernote link)
)
return

::inote::

InputBox, Title, Idea , {Enter}

FormatTime, TimeOut, , yyyyMMddHHmmss
FormatTime, DateNoteTaken, , yyyyMMdd
Send, 
(
@(SomedayMaybeNever)[idea, No Tags, No Existing Notes Link, No Reference Links]
{#}{#}{#} %TimeOut% - %DateNoteTaken% - %Title%

%Title%: description in actual sentences
Additional thoughts

{#}{#}{#}{#} Links To Existing Notes
[No Link](Evernote link)

{#}{#}{#}{#} References
[No Web Link](http://weblink.com)
[No Reference](http://evernotelink)
(Bullet Journal Note Book, Page Number)
)
return