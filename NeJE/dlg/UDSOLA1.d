REPLACE_ACTION_TEXT  ~UDSOLA01~
~SetInterrupt(FALSE)[^!]*
DialogueInterrupt(FALSE)[^!]*
SetGlobal("SolNoTalk1","GLOBAL",1)[^!]*
Wait(5)[^!]*
ForceSpell(Myself,DO_NOTHING)[^!]*
Wait(5)[^!]*
ForceSpell(Myself,DO_NOTHING)[^!]*
Wait(5)[^!]*
ForceSpell(Myself,DO_NOTHING)[^!]*
Wait(1)[^!]*
ScreenShake(\[4707.3105\],5)[^!]*
Wait(1)[^!]*
DialogueInterrupt(TRUE)[^!]*
SetInterrupt(TRUE)[^!]*
StartCutSceneMode()[^!]*
StartCutScene("Cut44v")~

~SetInterrupt(FALSE)
StartCutSceneMode()
SetGlobal("SolNoTalk1","GLOBAL",1)
Wait(4)
ForceSpell(Myself,DO_NOTHING)
Wait(5)
ForceSpell(Myself,DO_NOTHING)
Wait(4)
ForceSpell(Myself,DO_NOTHING)
Wait(1)
ScreenShake([4707.3105],5)
Wait(1)
Wait(1)
SetInterrupt(TRUE)
Wait(1)
StartCutScene("Cut44v")~

