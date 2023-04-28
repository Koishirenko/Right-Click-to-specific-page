#NoEnv
#SingleInstance Force
SetBatchLines, -1
SetKeyDelay, 50

RButton::
Send, {Alt Down}{1}{Alt Up}
return

RButton Up::return

$5::ExitApp
