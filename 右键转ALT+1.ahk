#NoEnv
#SingleInstance Force
SetBatchLines, -1
SetKeyDelay, 50

global scriptEnabled := true

RButton::
if (scriptEnabled) {
    Send, {Alt Down}{1}{Alt Up}
} else {
    Send, {RButton}
}
return

$5::
scriptEnabled := !scriptEnabled
if (scriptEnabled) {
    TrayTip, Script Status, Script is now enabled, 1, 1
} else {
    TrayTip, Script Status, Script is now disabled, 1, 1
}
return
