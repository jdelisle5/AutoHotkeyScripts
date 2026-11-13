#Requires AutoHotkey v2.0
#SingleInstance Force

:O:jdate::
{
    SendText FormatTime(, "yyyyMMdd") " "
}

:O:jnote::
{
    SendText "📝"
    Sleep 50
    Send "+{Left}"
    Sleep 50
    Send "^!m"
    Sleep 300
    SendText FormatTime(, "yyyyMMdd:HHmmss") " 📝"
    Send "+{Enter 2}"
}
