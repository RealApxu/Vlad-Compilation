ADD_TRANS_TRIGGER SENDAI 14 ~False()~ DO 0

EXTEND_BOTTOM SENDAI 14
 ++ ~Wait, Sendai! You are my sister... We can kill each other later, let us speak now.~ GOTO N1
 ++ ~Sendai! Are you so impatient to meet with Lolth? Do you want to know, what kind of tortures she has prepared?~ GOTO N2
 ++ ~You said yourself that your army appeared to be powerless! Do you still have the hope to stop us alone?~ GOTO N3
END

CHAIN SENDAI N1
~Speak? What can we possibly speak about? About my sins? Or yours?~
END
 ++ ~I am in no position to judge you for your sins, Sendai. I do not want to kill you and that is it. I have killed too many already.~ EXTERN SENDAI N4
 ++ ~Lolth would not have approved of a pointless death, Sendai.~ EXTERN SENDAI N2
 ++ ~You have no chance to win and you know it!~ EXTERN SENDAI N3

CHAIN SENDAI N2
~What do you care about my fate in the afterlife? My soul is doomed, as is yours! Lloth will have her revenge, despite of what I could've possibly done!~
END
 ++ ~I do not want to kill you. Lower your weapon, Sendai. Give me your legacy voluntarily! You will have the power to rise again. Make the right decision, Sendai!~ EXTERN SENDAI N5
 ++ ~Then prepare to die!~ EXTERN SENDAI N3

CHAIN SENDAI N3
~As I already said, I have a surprise for you! Defend yourself!~
DO ~ClearAllActions() StartCutSceneMode() DialogueInterrupt(FALSE) Wait(1) StartCutScene("cut239a")~
FLAGS 128
EXIT

CHAIN SENDAI N4
~But I am the daughter of Bhaal! My legacy... I must decline it? Part with it?~
END
 ++ ~Yes, Sendai. But you'll live... Probably, find new allies and create a new enclave. You may even bring yourself back in Lolth's favor. I have nothing to fight with you for and I do not feel any hatred towards you.~ EXTERN SENDAI N5

CHAIN SENDAI N5
~Well, so be it. We both may regret our choice, but so be it.~
 IF ~!Dead("Abazigal")~ THEN DO ~SetGlobal("OpenPortal","AR6108",1)
ClearAllActions()
StartCutSceneMode()
EraseJournalEntry(67464)
EraseJournalEntry(67465)
SetGlobal("Enclave","GLOBAL",1)
Wait(1)
AddXP2DA("SENDAI")
SetGlobal("SPRITE_IS_DEADsendai2","GLOBAL",1)
SetGlobal("SPRITE_IS_DEADsendai3","GLOBAL",1)
SetGlobal("SPRITE_IS_DEADsendai4","GLOBAL",1)
SetGlobal("SPRITE_IS_DEADsendai5","GLOBAL",1)
SetGlobal("SPRITE_IS_DEADsendai6","GLOBAL",1)
SetGlobal("SPRITE_IS_DEADsendai7","GLOBAL",1)
SetGlobal("SPRITE_IS_DEADsendai8","GLOBAL",1)
SetGlobal("SPRITE_IS_DEADsendai","GLOBAL",1)
SetGlobal("SendaiFinalBattle","GLOBAL",1)
EndCutSceneMode()
EscapeArea()~ SOLVED_JOURNAL ~Sendai's Lair

Another of the Five has gone. I am drawing ever closer to the end of these events... and whatever destiny awaits me.~ EXIT
 IF ~Dead("Abazigal")~ THEN DO ~SetGlobal("OpenPortal","AR6108",1)
ClearAllActions()
StartCutSceneMode()
SetGlobal("Enclave","GLOBAL",2)
Wait(1)
AddXP2DA("SENDAI")
EraseJournalEntry(67718)
EraseJournalEntry(72245)
EraseJournalEntry(67464)
EraseJournalEntry(67465)
SetGlobal("SPRITE_IS_DEADsendai2","GLOBAL",1)
SetGlobal("SPRITE_IS_DEADsendai3","GLOBAL",1)
SetGlobal("SPRITE_IS_DEADsendai4","GLOBAL",1)
SetGlobal("SPRITE_IS_DEADsendai5","GLOBAL",1)
SetGlobal("SPRITE_IS_DEADsendai6","GLOBAL",1)
SetGlobal("SPRITE_IS_DEADsendai7","GLOBAL",1)
SetGlobal("SPRITE_IS_DEADsendai8","GLOBAL",1)
SetGlobal("SPRITE_IS_DEADsendai","GLOBAL",1)
SetGlobal("SendaiFinalBattle","GLOBAL",1)
TriggerActivation("Tran6100",TRUE)
TriggerActivation("Tran6107",TRUE)
AmbientActivate("SPDIMNDR",TRUE)
AddMapNote([646.641],48431)
SetGlobal("DeactivatePortal","AR6108",2)
Wait(1)
StaticSequence("SPDIMNDR",1)
StartCutScene("cut240a")
EscapeArea()~ UNSOLVED_JOURNAL ~Assault on the Enclaves

I have been shown a disturbing vision: Balthazar and Melissan locked in fierce combat. The disappearance of Lady Melissan is suddenly not so strange, and I cannot help but wonder at the depths of Balthazar's involvement with the Five.
To find answers I must somehow find a way into the monastery and confront Balthazar... though I suspect one of us will not survive the encounter.~ EXIT