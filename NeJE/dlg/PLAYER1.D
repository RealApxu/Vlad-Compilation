//AR1512 - Interject in PLAYER1.DLG

ALTER_TRANS PLAYER1 // file name
BEGIN 0 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "EPILOGUE" ~GOTO N3~
END

APPEND ~PLAYER1~

IF ~~ THEN BEGIN N3
  SAY #49596 /* ~The feeling passes, but far too slowly for your liking.~ */
  IF ~True ()~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXIT
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
Global("VP_KeldornMatch","GLOBAL",1)
OR(2)
Global("VP_KrRomanceActive","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~  InParty("Edwin")
!Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~  InParty("Valygar")
!Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
OR(3)
!Global("VP_KeldornMatch","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",0)
Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~  InParty("Korgan")
!Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~  InParty("Jan")
!Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~  InParty("Nalia")
!Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
  IF ~  InParty("Mazzy")
!Dead("Mazzy")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MAZZYJ~ 190
  IF ~  InParty("HaerDalis")
!Dead("HaerDalis")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~HAERDAJ~ 137 /* Fix to the original link to state 140, which is incorrect */
  IF ~  InParty("Cernd")
!Dead("Cernd")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~CERNDJ~ 126
  IF ~  InParty("Minsc")
!Dead("Minsc")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MINSCJ~ 196
  IF ~  InParty("Anomen")
!Dead("Anomen")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~ANOMENJ~ 233
  IF ~  InParty("Aerie")
!Dead("Aerie")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~AERIEJ~ 102
  IF ~  InParty("Viconia")
!Dead("Viconia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VICONIJ~ 67
  IF ~  InParty("Jaheira")
!Dead("Jaheira")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JAHEIRAJ~ 421
  IF ~  InParty("Imoen2")
!Dead("Imoen2")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~IMOEN2J~ 0
END

IF ~~ THEN BEGIN N5
  SAY #49604 /* ~A fate, as they say, worse than death, and one that has not gone unnoticed by your comrades. ~ */
  IF ~True()~ THEN DO ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~ EXIT
  IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ 203
  IF ~InParty("Cernd")
!Dead("Cernd")~ THEN EXTERN ~CERNDJ~ 130
  IF ~InParty("HaerDalis")
!Dead("HaerDalis")~ THEN EXTERN ~HAERDAJ~ 141
  IF ~InParty("Mazzy")
!Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ 194
  IF ~InParty("Nalia")
!Dead("Nalia")~ THEN EXTERN ~NALIAJ~ 308
  IF ~InParty("Jan")
!Dead("Jan")~ THEN EXTERN ~JANJ~ 178
  IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~KORGANJ~ 177
  IF ~InParty("Keldorn")
!Dead("Keldorn")
!Global("VP_KrRomanceActive","GLOBAL",1)
!Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN ~KELDORJ~ 243
  IF ~InParty("Valygar")
!Dead("Valygar")
!Global("ValygarRomanceActive","GLOBAL",1)
!Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYGARJ~ 103
  IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~EDWINJ~ 149
  IF ~InParty("Anomen")
!Dead("Anomen")~ THEN EXTERN ~ANOMENJ~ 250
  IF ~InParty("Aerie")
!Dead("Aerie")~ THEN EXTERN ~AERIEJ~ 116
  IF ~InParty("Viconia")
!Dead("Viconia")~ THEN EXTERN ~VICONIJ~ 87
  IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ 432
  IF ~InParty("Imoen2")
!Dead("Imoen2")~ THEN EXTERN ~IMOEN2J~ 1
  IF ~InParty("Leina")
!Dead("Leina")~ THEN EXTERN ~LEINAJ~ slayerba
  IF ~InParty("Sime")
!Dead("Sime")
!Global("SimeRomanceActive","GLOBAL",1)
!Global("SimeRomanceActive","GLOBAL",2)~ THEN EXTERN ~SIMEJ~ slayerba
  IF ~InParty("Sime")
!Dead("Sime")
OR(2)
Global("SimeRomanceActive","GLOBAL",1)
Global("SimeRomanceActive","GLOBAL",2)~ THEN EXTERN ~SIMEJ~ 68
  IF ~InParty("Valygar")
!Dead("Valygar")
OR(2)
Global("ValygarRomanceActive","GLOBAL",1)
Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYGARJ~ slayerba
  IF ~InParty("Keldorn")
!Dead("Keldorn")
OR(2)
Global("VP_KrRomanceActive","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN ~KELDORJ~ slayerba
END

IF ~~ THEN BEGIN TS55yosh
	SAY ~Yoshimo... the man whom you helped to rescue his family from a bitter vendetta and to find his true love. Yet he is also a man who was once hired by Irenicus to facilitate your demise.~
	IF ~~ THEN REPLY ~Yoshimo... Your life just started anew. If you do not want to face Irenicus again, you do not have to. ~ EXTERN ~YOSHJ~ TS221
	IF ~~ THEN REPLY ~Listen, Yoshimo. I trust you and everything, but I need to hear that you are on my side in the upcoming battle.~ EXTERN ~YOSHJ~ TS222
	IF ~~ THEN REPLY ~Irenicus is a mighty foe, Yoshimo. I do not know if all of us shall survive this battle. I would understand if you do not want to come with me.~ EXTERN ~YOSHJ~ TS221
END

IF ~~ THEN BEGIN TS55
  SAY ~Kachiko. A warrior from a distant land, she insisted to join you to be close to Yoshimo whom she hated. She stayed with you through thick and thin to be close to Yoshimo she loved...~
  IF ~~ THEN REPLY ~Kachiko... You had fought valiantly by my side, but if you wish to go back to your life now, I would understand...~ EXTERN ~KACHIJ~ N37
  IF ~~ THEN REPLY ~Irenicus is a terrible creature, Kachiko. Please, let me know that you are prepared to face such a challenge.~ EXTERN ~KACHIJ~ N38
  IF ~~ THEN REPLY ~Behind these doors is death... May be it awaits Irenicus, may be it awaits all of us... You have seen death closer than I. Would you go through this door?~ EXTERN ~KACHIJ~ N39
END

IF ~~ THEN BEGIN TS56
  SAY ~Sime is before you, the woman you had not come to know very well, though she was a loyal companion.~
  IF ~~ THEN REPLY ~Sime, I know little of you, but Irenicus is no enemy of yours. You do not have to fight my battle...~ EXTERN ~SIMEJ~ TOL21
  IF ~~ THEN REPLY ~You know how powerful Irenicus is, Sime. The fight is going to be deadly. If you wish, you may take your leave now~ EXTERN ~SIMEJ~ TOL22
  IF ~~ THEN REPLY ~Sime, that's not the best time to chat, but I need to know that you readily and willingly partaking in the fight with Irenicus.~ EXTERN ~SIMEJ~ TOL23
END

//IF ~~ THEN BEGIN TS57
//  SAY ~Coran... You feel that you don't need to ask him... But...~
//  IF ~~ THEN REPLY ~Coran, my old friend...~ EXTERN ~CORANJ~ TS5
//END

IF ~~ THEN BEGIN TS58
  SAY ~There is something else too... He looks at you sometimes... strangely... just like now...~
  IF ~OR(2)
Dead("lavok02")
Dead("lavok01")~ THEN REPLY ~Valygar... Lavok is dead. You could return to your life now, if you wish. This is my fight.~ EXTERN ~VALYGARJ~ TS127
  IF ~!Dead("lavok01")
!Dead("lavok02")~ THEN REPLY ~Valygar... Lavok is still alive. Your own quest is unfinished, but mine ends here. This is my fight.~ EXTERN ~VALYGARJ~ TS127
  IF ~~ THEN REPLY ~Irenicus is a powerful wizard, Valygar. I know how you hate magic users; you do not have to endanger yourself for me.~ EXTERN ~VALYGARJ~ TS127
  IF ~~ THEN REPLY ~This is it, Valygar. I need to know that you are ready, that you are willing to commit yourself to the battle ahead.~ EXTERN ~VALYGARJ~ TS127
END

//IF ~~ THEN BEGIN TS59
//  SAY ~Dynaheir is before you, the woman who has been your loyal companion for a long time.~
//  IF ~~ THEN REPLY ~Dynaheir, Irenicus had already crushed Minsc. Those are painful memories. If you did not want to face   him again, I would understand.~ EXTERN ~DYNAJ~ TS00
//  IF ~~ THEN REPLY ~You know how powerful Irenicus is, Dynaheir. There is a chance that we will not survive. If you wish, you may go now.~ EXTERN ~DYNAJ~ TS01
//  IF ~~ THEN REPLY ~Dynaheir, please tell me if you have any reservations about fighting this maniac, Irenicus.~ EXTERN ~DYNAJ~ TS02
//END

IF ~~ THEN BEGIN TS60
  SAY ~Sime... You look at the maiden's eyes and you see what you have hoped and scared to see: the determination to follow you to the end of the world and beyond it. It is obvious that you might keep Sime out of this battle, if you, say, tied her up and gagged her. Still, you want to give her a chance to reconsider.~
  IF ~~ THEN REPLY ~Sime, Irenicus is no enemy of yours. You do not have to fight my battles.~ EXTERN ~SIMEJ~ TOL1
  IF ~~ THEN REPLY ~You know how powerful Irenicus is, Sime. The fight is going to be deadly. I am afraid that you might get hurt or die... I would rather... Do you think you might wait here?~ EXTERN ~SIMEJ~ TOL2
  IF ~~ THEN REPLY ~Sime, that's not the best time to chat, but I need to know that you readily and willingly partaking in the fight with Irenicus.~ EXTERN ~SIMEJ~ TOL3
END

IF ~~ THEN BEGIN KR_TL0
	SAY ~Keldorn... (You look into each other's eyes and you have no need for words.)~
		IF ~OR(2)
Global("VP_KrRomanceActive","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN ~KELDORJ~ TL1
		IF ~OR(2)
Global("VP_KrRomanceActive","GLOBAL",3)
Global("VP_KrRomanceActive","GLOBAL",0)~ THEN EXTERN ~KELDORJ~ TL2
END

IF WEIGHT #0 ~!Global("VP_BackTo_Kuldahar","GLOBAL",0)
Global("VP_NewEnd_Of_Part1","GLOBAL",1)
GlobalGT("VP_Who_Is_Hrothgar","GLOBAL",1)
Global("TrBack0602","GLOBAL",2)
Global("VP_PlayerDialogFix","GLOBAL",0)~ THEN BEGIN NEJ62 // from:
  SAY ~So, once again we are destined to take the unknown road. Let us ready ourselves for what lies ahead.~ [mute]
  IF ~True()~ THEN GOTO NEJ63
  IF ~InParty("Dar")~ THEN GOTO NEJ64
//  IF ~InParty("Accalia")~ THEN EXTERN ~ACCALIJ~ 1
  IF ~InParty("Erevain")~ THEN EXTERN ~EREVAINJ~ 3
  IF ~InParty("Imoen")~ THEN EXTERN ~IMOENJ~ Back0602
  IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN2J~ Back0602
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ Back0602
  IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ Back0602
END

IF ~~ THEN BEGIN NEJ63
  SAY ~Then let us enter the portal together. It has been a strange road to our freedom, but we are all safe and that is what matters.~
  IF ~!InParty("Sharteel")~ THEN DO ~SetGlobal("VP_NewEnd_Of_Part1","GLOBAL",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutNJ2")~ EXIT
  IF ~InParty("Sharteel")~ THEN EXTERN ~SHARTJ~ nearpor1
END

IF ~~ THEN BEGIN NEJ64
  SAY ~What of you Dar? Will you take the portal with us?~
  IF ~~ THEN EXTERN ~DARJ~ 1
END

IF WEIGHT #-1 ~Global("VP_SoW_Portal_Talk","GLOBAL",3)~ THEN BEGIN NEJ65
  SAY ~Just a nightmare... (*you mutter to yourself*)~ [mute]
  IF ~~ THEN DO ~SetGlobal("VP_SoW_Portal_Talk","GLOBAL",4)
SetGlobal("VP_PlayerDialogFix","GLOBAL",1)
EraseJournalEntry(%Dragon's Eye.

We met the "Lizard King" of Dragon's Eye.  He informed us that the upper caves of the volcano belonged to him.  He also indicated that he was brought to the caves by someone named Yxunomei.  Apparently, the lizard men do the bidding of Yxunomei to feed his people.  They abduct the villagers for food and for Yxunomei.%)
EraseJournalEntry(%Dragon's Eye.

We encountered an undead creation today that was used as the "eyes and mouth" of a necromancer.  It attacked us after it had addressed us.%)
EraseJournalEntry(%Dragon's Eye.

We ventured down to the fourth level of the Dragon's Eye volcano.  We found a priest of Eldath, the goddess of peace, there.  He told us that he and his students are part of an Eldathyn retreat in Dragon's Eye.  He offered us healing and a place to rest.%)
EraseJournalEntry(%Kuldahar Pass.

We met a goblin marshal in Kuldahar Pass who was going mad with pain.  He told us that his head hurt, that something was whispering things to him.  He didn't understand what was wrong with him, but he felt some instinctive urge to "answer" the voice in his head.%)~ GOTO NEJ66
END

IF ~~ THEN BEGIN NEJ66
  SAY ~(*But for some reason you still feel a pressing need to see for yourself that the world outside your room hasn't changed.*)~
  IF ~~ THEN EXIT
END

IF WEIGHT #-2 ~Global("VP_Hrothgar_Interjects","GLOBAL",1)
~ THEN BEGIN NEJ67
  SAY ~(*You look around and are relieved to see that all of your companions are safe.*)~ [mute]
  IF ~True()~ THEN GOTO NEJ68
	IF ~InParty("Sharteel")~ THEN EXTERN ~SHARTJ~ comebck1
  IF ~InParty("Dar")~ THEN EXTERN ~DARJ~ 5
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ246
  IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ534
  IF ~InParty("Imoen")~ THEN GOTO NEJ69
  IF ~InParty("Imoen2")~ THEN GOTO NEJ69
  IF ~InParty("Hrothgar")~ THEN EXTERN ~HROTHJ~ 19
END

IF ~~ THEN BEGIN NEJ68
  SAY ~Then let us continue, and make our way through this damned place.~
  IF ~~ THEN DO ~SetGlobal("VP_Hrothgar_Interjects","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN NEJ69
  SAY ~(*Your eyes fall on Imoen.*) Imoen are you alright? You look distressed.~
  IF ~InParty("Imoen")~ THEN EXTERN ~IMOENJ~ NEJ74
  IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN2J~ VP_FIX4
END

IF WEIGHT #-3 ~Global("VP_Hrothgar_Tilorn","GLOBAL",1)~ THEN BEGIN NEJ70
  SAY ~(*As you start to walk away from the destruction that is in front of you, still reeling from the unexpected loss of Imoen, Hrothgar stops and looks about, a look of anxious bewilderment on his face.*)~ [mute]
  IF ~~ THEN EXTERN ~HROTHJ~ 22
END

IF ~~ THEN BEGIN NEJ71
  SAY ~(*You look at Hrothgar with a look of total disbelief on your face that he has no idea of what is to be done now.*)~
  IF ~~ THEN EXTERN ~HROTHJ~ 25
END

IF ~~ THEN BEGIN NEJ73
  SAY ~Farewell, Dar. It has been a strange road to our freedom, but we are all safe and that is what matters.~
  IF ~!InParty("Sharteel")~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutNJ4")~ EXIT
  IF ~InParty("Sharteel")~ THEN EXTERN ~SHARTJ~ nearpor2
END

IF ~~ THEN BEGIN NEJ74
  SAY ~(*You look into the face or Tilorn as Hrothgar makes the introduction and a memory stirs in your mind but you are unable to grasp it before it slips away.*)~
  IF ~~ THEN REPLY ~So, you are Tilorn, the one whom Arundel spoke of briefly. Hrothgar did not say that you and he were friends, but then he is being annoyingly evasive on many things. I do not believe that we have met so how is it that you know my name? Although, strangely for a second there, I thought that your face was known to me.~ EXTERN ~TILORN~ 3
  IF ~~ THEN REPLY ~Tilorn is it. The same Tilorn that visited Arundel in Kuldahar and now, also a friend of Hrothgar's. Tell me Tilorn, 'friend of Hrothgar', how did you come to be in Kuldahar ahead of us and now here before us also? You seem to know my name before Hrothgar made mention of it and yet, I do not know you that I am sure. Although, for a moment your face was familiar to me but now it is gone. Why should that be?~  EXTERN ~TILORN~ 3	
  IF ~~ THEN REPLY ~Ah, Tilorn! The mystery visitor to the old druid. Hrothgar omitted to say that you and he were friends, but then Hrothgar has omitted to tell me many things! Are you going to say how it is that you know my name Tilorn? You look somewhat familiar to me but for the moment I cannot place you, but I will, you can be assured of that!~ EXTERN ~TILORN~ 3
  IF ~~ THEN REPLY ~So, you are a friend of Hrothgar, Tilorn. Strange that he did not admit to it when first I asked him of you. What reason has he to hide this from me do you think? Even stranger, Tilorn, why do I feel that I should know you?~ EXTERN ~TILORN~ 3
END

IF ~~ THEN BEGIN NEJ75
  SAY ~(*You look at Tilorn and the look he gives you back makes you forget what it was that you were about to say.*)~
  IF ~~ THEN EXTERN ~TILORN~ 7
END

IF WEIGHT #-5 ~Global("VP_Touch_Statue","GLOBAL",0)
Global("VP_InfoSwitch","GLOBAL",0)
Global("VP_InHalruaa","GLOBAL",1)~ THEN BEGIN NEJ76
  SAY ~(*The hundreds of chips of translucent green glass which make up this stained-glass window don't appear to be held together by anything, but rather remain free-floating and mysteriously suspended within the iron frame's boundaries. The shards ripple and move in slow waves, causing bizarre patterns to fluctuate across the window's surface as various portions of it refract the galleria's light in different directions. A small placard beside the window reads 'Arcadian Stained-Glass Window.'*)~ [mute]
  IF ~~ THEN GOTO NEJ85
END

IF ~Global("VP_Touch_Statue","GLOBAL",1)
Global("VP_InfoSwitch","GLOBAL",0)~ THEN BEGIN NEJ77
  SAY ~(*You reach out to touch the glass shards once again, but succeed only in bruising your knuckles; the glass may as well be sheet-iron.*)~ [mute]
  IF ~~ THEN DO ~SetGlobal("VP_Touch_Statue","GLOBAL",2)~ EXIT
END

IF ~Global("VP_Touch_Statue","GLOBAL",2)
Global("VP_InfoSwitch","GLOBAL",0)~ THEN BEGIN NEJ78
  SAY ~(*You try to touch the glass shards for the third time, and... you smear the foul-smelling ointment in the air. You turn and see behind you there is a strange shimmering around the statue, and you watch as the statue takes an intake of breath and its eyes fill with a blasing, vengeful madness.*)~ [mute]
  IF ~~ THEN REPLY ~Greetings...~ GOTO NEJ79
  IF ~~ THEN REPLY ~*Cover your ears.*~ GOTO NEJ79
  IF ~~ THEN REPLY ~*Run like mad.*~ GOTO NEJ79
END

IF ~~ THEN BEGIN NEJ79
  SAY ~(*Before you can do a thing, a blasing torrent of words flies from the sorcerer's lips. As he speaks, you feel a agonising sensation, like a sudden wave of raging heat, pour over you and settle into your skin like a blistering wound.*)~
  IF ~~ THEN GOTO NEJ80
END

IF ~~ THEN BEGIN NEJ80
  SAY ~(*Blindness strikes you as your eyes burst, running from their sockets like shattered eggs... you hear someone screaming, and realise it is you...*)~
  IF ~~ THEN REPLY ~*Wait for the horror to end.*~ GOTO NEJ81
  IF ~~ THEN REPLY ~*Drop to your knees in shock.*~ DO ~SetGlobal("VP_Touch_Statue","GLOBAL",4)
CloseDoor("STATUE")
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutT01")~ EXIT
END

IF ~~ THEN BEGIN NEJ81
  SAY ~Die horribly, a victim of Gangroighydon's Awful Curse.~
  IF ~~ THEN DO ~CloseDoor("STATUE")
Kill(Player1)
Kill(Player2)
Kill(Player3)
Kill(Player4)
Kill(Player5)
Kill(Player6)~ EXIT
END

IF WEIGHT #-6 ~Global("VP_Touch_Statue","GLOBAL",4)
Global("VP_InfoSwitch","GLOBAL",0)~ THEN BEGIN NEJ82
  SAY ~(*You don't know how long you have been unconscious, but after you recover from that terrible shock you notice that the 'statue' is simply gone, presumably having walked off without leaving so much as a note of apology.*)~ [mute]
  IF ~~ THEN DO ~SetGlobal("VP_Touch_Statue","GLOBAL",5)
~ EXIT
END

IF ~Global("VP_Touch_Statue","GLOBAL",5)
Global("VP_InfoSwitch","GLOBAL",0)
!Global("VP_InHalruaa","GLOBAL",0)~ THEN BEGIN NEJ83
  SAY ~The portal is activated.~ [mute]
  IF ~~ THEN REPLY ~*Go through the portal.*~ GOTO NEJ84
  IF ~~ THEN REPLY ~*Leave.*~ EXIT
END

IF ~~ THEN BEGIN NEJ84
  SAY ~(*You are violently teleport to somewhere outside this room.*)~
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutT02")~ EXIT
END

IF ~~ THEN BEGIN NEJ85
  SAY ~(*You reach out to touch the undulating glass shards, but find you cannot do so... your hand stops just short of the surface of the glass.*)~
  IF ~~ THEN DO ~SetGlobal("VP_Touch_Statue","GLOBAL",1)~ EXIT
END

IF WEIGHT #-7 ~GlobalLT("VP_Touch_Statue","GLOBAL",4)
Global("VP_InfoSwitch","GLOBAL",1)~ THEN BEGIN NEJ86
  SAY ~(*The statue looks like it is about to make some angry proclamation. The sculptor has captured the essence of fury magnificently; the chiseled tension lines around the neck and forehead alone must have taken many long months to get correct. Fine cracks run over the entire statue, and there is a plaque attached to its base.*)~ [mute]
  IF ~~ THEN GOTO NEJ87
END

IF ~~ THEN BEGIN NEJ87
  SAY ~(*The plaque reads: 'This statue is believed to be the final fate of the Etherserian sorcerer Gangroighydon. Attacked by a conclave of rival sorcerers at the height of his dream madness, he was imprisoned with a spell that turned his flesh into stone. Gangroighydon is said to have been frozen with a final, awful curse still upon his lips, a curse so terrible that it was *never* meant to be spoken by the lips of a living man.'*)~
  IF ~~ THEN EXIT
END

IF WEIGHT #-8 ~GlobalGT("VP_Touch_Statue","GLOBAL",3)
Global("VP_InfoSwitch","GLOBAL",1)~ THEN BEGIN NEJ88
  SAY ~(*The 'statue' - in truth the once-petrified sorcerer Gangroighydon - has gone leaving behind only the plaque beneath its pedestal.*)~ [mute]
  IF ~~ THEN EXIT
END

IF WEIGHT #-9 ~Global("VP_Hrothgar_Lavallin","GLOBAL",3)~ THEN BEGIN NEJ89
  SAY ~(*A short time elapses and a portal opens behind you. The portal closes. Although you see nothing you sense that someone is moving around in the room as if looking for something. Suddenly an item is taken from one of the shelves and the portal opens again. It remains open briefly and then closes... A few moments later Lavallin returns.*)~ [mute]
  IF ~~ THEN DO ~SetGlobal("VP_Hrothgar_Lavallin","GLOBAL",4)
SetGlobal("VP_Lavallins_Plot","GLOBAL",4)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutT04")~ EXIT
END


IF WEIGHT #-10 ~Global("VP_Lavallins_Plot","GLOBAL",7)~ THEN BEGIN NEJ90
  SAY ~(*The portal opens after a short wait. You immediately go through the portal and find yourself in sewers. You try to catch you breath but... the sewers suddenly disappear and a moment later you find yourself in an underground warren made up of freshly dug tunnels lit by light gems embedded along the walls, and the air is surprisingly fresh.*)~ [mute]
  IF ~~ THEN DO ~SetGlobal("VP_Lavallins_Plot","GLOBAL",8)~ EXIT
END

//IF WEIGHT #-11 ~Global("StartIWD","GLOBAL",2)~ THEN BEGIN NEJ91
//  SAY ~~
//  IF ~~ THEN DO ~SetGlobal("StartIWD","GLOBAL",3)~ EXTERN ~HROTHJ~ 112
//END

IF WEIGHT #-11 ~Global("VP_Severed_Hand","GLOBAL",1)~ THEN BEGIN NEJ92
	SAY ~What the hell is going on here?!~ [mute]
  IF ~True()~ THEN DO ~SetGlobal("VP_Severed_Hand","GLOBAL",2)~ EXIT
  IF ~InParty("Hrothgar")~ THEN EXTERN ~HROTHJ~ 194
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ313
END

IF WEIGHT #-12 ~Global("VP_Astrolabe_Talks","GLOBAL",3)~ THEN BEGIN NEJ93
  SAY ~(*As Larrel turns away to speak with Geralith, Hrothgar walks over and takes a look at the astrolabe. He stands running his hands over the machine but with his back to the group. When you look towards him, it is as if he feels your eyes turn in his direction and he drops his hands deliberately...*)~ [mute]
  IF ~~ THEN GOTO NEJ94
END

IF ~~ THEN BEGIN NEJ94
	SAY ~(*He  continues to peer closer at the machine but without touching it further. Then, amid the chatter of the group he walks back and stands quietly.*)~
  IF ~True()~ THEN DO ~SetGlobal("VP_Astrolabe_Talks","GLOBAL",4)
ClearAllActions()
StartCutSceneMode()
StartCutscene("VPCutH07")~ EXIT
	IF ~InParty("Accalia")~ THEN EXTERN ~ACCALIJ~ 42
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ317
  IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ615
  IF ~InParty("Imoen")~ THEN EXTERN ~IMOENJ~ NEJ176
  IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN2J~ VP_FIX92
END

//Accalia is not in Party --> VP_Mov01 --> Back to the Future!
IF ~~ THEN BEGIN NEJ95
	SAY ~(*Once again Hrothgar removes the black box from his pocket and pointing it at the Astrolabe...*)~
//	IF ~~ THEN REPLY ~Wait, Hrothgar, don't do this! On the second thought, I've decided to go to Dorn's Deep right now. Larrel, could you take us to Dorn's Deep?~ EXTERN ~DLARREL~ 53
	IF ~~ THEN REPLY ~(*You close your eyes, and ...*)~ DO ~SetGlobal("VP_In_IWD_Part1","GLOBAL",0)
SetGlobal("TrBack0602","GLOBAL",2)~ EXTERN ~HROTHJ~ 245	
END

//Accalia is in Party, and she leaves --> VPCutNJ5
IF ~~ THEN BEGIN NEJ96
	SAY ~(*Once again Hrothgar removes the black box from his pocket and pointing it at the Astrolabe...*)~
//	IF ~~ THEN REPLY ~Wait, Hrothgar, don't do this! On the second thought, I've decided to go to Dorn's Deep right now. Larrel, could you take us to Dorn's Deep?~ EXTERN ~DLARREL~ 53
	IF ~~ THEN REPLY ~(*You close your eyes, and ...*)~ DO ~SetGlobal("VP_In_IWD_Part1","GLOBAL",0)
SetGlobal("TrBack0602","GLOBAL",2)~ EXTERN ~HROTHJ~ 268	
END

//Accalia is in Party, and both she and Dar leaves --> VPCutNJ6
IF ~~ THEN BEGIN NEJ98
	SAY ~(*Once again Hrothgar removes the black box from his pocket and pointing it at the Astrolabe...*)~
	IF ~~ THEN REPLY ~(*You close your eyes, and ...*)~ DO ~SetGlobal("VP_In_IWD_Part1","GLOBAL",0)
SetGlobal("TrBack0602","GLOBAL",2)~ EXTERN ~HROTHJ~ 269	
END

//Accalia is not in Party, and Dar leaves --> VPCutNJ7
IF ~~ THEN BEGIN NEJ99
	SAY ~(*Once again Hrothgar removes the black box from his pocket and pointing it at the Astrolabe...*)~
	IF ~~ THEN REPLY ~(*You close your eyes, and ...*)~ DO ~SetGlobal("VP_In_IWD_Part1","GLOBAL",0)
SetGlobal("TrBack0602","GLOBAL",2)~ EXTERN ~HROTHJ~ 270	
END

//States NeJ100-104 are omitted

IF WEIGHT #-16 ~Global("VP_Know_Tilorn","GLOBAL",1)~ THEN BEGIN NEJ105
  SAY ~(*You see a man watching you from a distance... Tilorn?*)~ [mute]
  IF ~~ THEN DO ~SetGlobal("VP_Know_Tilorn","GLOBAL",2)~ EXTERN ~TILORN~ 0
END

IF WEIGHT #-17 ~Global("VP_Rt_Mine_Visited","GLOBAL",1)~ THEN BEGIN NEJ106
  SAY ~(*As you enter the area you cannot help but notice a noxious taint to the air. You suspect that these vapours are the cause of the pools taint.*)~ [mute]
  IF ~~ THEN DO ~SetGlobal("VP_Rt_Mine_Visited","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN ToTLF
  SAY ~Leina is before you, the bard you had not come to know very well, though she was a loyal companion.~
  IF ~~ THEN REPLY ~Leina, I know little of you, but Irenicus is no enemy of yours. You do not have to fight my battle...~ EXTERN ~LEINAJ~ TOL21
  IF ~~ THEN REPLY ~You know how powerful Irenicus is, Leina. The fight is going to be deadly. If you wish, you may take your leave now~ EXTERN ~LEINAJ~ TOL22
  IF ~~ THEN REPLY ~Leina, that's not the best time to chat, but I need to know that you readily and willingly partaking in the fight with Irenicus.~ EXTERN ~LEINAJ~ TOL23
END

IF ~~ THEN BEGIN ToTLM
  SAY ~Leina... You look at the maiden's eyes and you see what you have hoped and scared to see: the determination to follow you to the end of the world and beyond it. It is obvious that you might keep Leina out of this battle, if you, say, tied her up and gagged her. Still, you want to give her a chance to reconsider.~
  IF ~~ THEN REPLY ~Leina, Irenicus is no enemy of yours. You do not have to fight my battles.~ EXTERN ~LEINAJ~ TOL1
  IF ~~ THEN REPLY ~You know how powerful Irenicus is, Leina. The fight is going to be deadly. I am afraid that you might get hurt or die... I would rather... Do you think you might wait here?~ EXTERN ~LEINAJ~ TOL2
  IF ~~ THEN REPLY ~Leina, that's not the best time to chat, but I need to know that you readily and willingly partaking in the fight with Irenicus.~ EXTERN ~LEINAJ~ TOL3
END
END

APPEND ~KELDORJ~

IF ~~ THEN BEGIN N239
	SAY ~Again you sacrificed yourself, this time for the sake of your sister. My friend, I beg you, please rest. Lay down a little even if you don't want to sleep. You appear unsteady on your legs, <CHARNAME>, that mage has exhausted you.~ [theme5]
		IF ~~ THEN REPLY ~(With a weak smile) I told you it was but a moments failing, I am fine now, I feel all right. It is not necessary for us to be wasting  anymore time.~ GOTO LT24_st1
		IF ~~ THEN REPLY ~All right I'll have a rest but only if you talk with me and not just curt phrases either.~ GOTO LT24_st2
		IF ~~ THEN REPLY ~That is nonsense Keldorn! I am full of energy!~ GOTO LT24_st3
END

IF ~~ THEN BEGIN slayerba
  SAY ~(You come to your senses and discover Keldorn holding you tightly. He has several new wounds, and a terrible suspicion is creeping into your soul.) <CHARNAME>! Torm be praised, you are yourself again!~
  IF ~~ THEN REPLY ~Yes. Keldorn! What happened... what was that?~ GOTO slayer2
END

IF ~~ THEN BEGIN slayer2
  SAY ~(Sternly) Slayer... Bhaal's Avatar!~
  	IF ~~ THEN REPLY ~Oh... but why? I... I won't endure such an abomination! Save me, save me!~ GOTO slayer3
  	IF ~~ THEN REPLY ~(Twitching) What an abomination... and yet what strength, you can't begin to imagine the half of it!~ GOTO slayer3
END

IF ~~ THEN BEGIN slayer3
  SAY ~Calm down my dear. Nothing bad has happened.~
  	IF ~~ THEN REPLY ~(Pointing at the wound) And what is that then? Did I... do that?~ GOTO slayer4
  	IF ~~ THEN REPLY ~You tried to hold me and I wounded you, is that not sot? I must be abhorrent to you.~ GOTO slayer5
END

IF ~~ THEN BEGIN slayer4
  SAY ~(Reluctantly he answers you) Yes.~
  	IF ~~ THEN REPLY ~Yea gods... I must be abhorrent to you.~ GOTO slayer5
END

IF ~~ THEN BEGIN slayer5
  SAY ~(Tenderly) There, there. Stop talking nonsense. Everything will be all right, calm down, my sweet girl, calm down.~
  IF ~True()~ THEN DO ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~ EXIT
  IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ 203
  IF ~InParty("Cernd")
!Dead("Cernd")~ THEN EXTERN ~CERNDJ~ 130
  IF ~InParty("HaerDalis")
!Dead("HaerDalis")~ THEN EXTERN ~HAERDAJ~ 141
  IF ~InParty("Mazzy")
!Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ 194
  IF ~InParty("Nalia")
!Dead("Nalia")~ THEN EXTERN ~NALIAJ~ 308
  IF ~InParty("Jan")
!Dead("Jan")~ THEN EXTERN ~JANJ~ 178
  IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~KORGANJ~ 177
  IF ~InParty("Valygar")
!Dead("Valygar")
!Global("ValygarRomanceActive","GLOBAL",1)
!Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYGARJ~ 103
  IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~EDWINJ~ 149
  IF ~InParty("Anomen")
!Dead("Anomen")~ THEN EXTERN ~ANOMENJ~ 250
  IF ~InParty("Aerie")
!Dead("Aerie")~ THEN EXTERN ~AERIEJ~ 116
  IF ~InParty("Viconia")
!Dead("Viconia")~ THEN EXTERN ~VICONIJ~ 87
  IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ 432
  IF ~InParty("Imoen2")
!Dead("Imoen2")~ THEN EXTERN ~IMOEN2J~ 1
  IF ~InParty("Leina")
!Dead("Leina")~ THEN EXTERN ~LEINAJ~ slayerba
  IF ~InParty("Sime")
!Dead("Sime")~ THEN EXTERN ~SIMEJ~ slayerba
END

IF ~~ THEN BEGIN TL1
	SAY ~This is it, my love. Soon it will be over, your suffering will come to an end.~
=
~We will return your soul and you will be happy and at peace my dearest, darling girl. Everything will be all right... we have our whole lives ahead of us.~
  IF ~True()~ THEN EXTERN ~PLAYER1~ 53
  IF ~InParty("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 52
  IF ~InParty("Aerie")
Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 51
  IF ~InParty("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 50
  IF ~InParty("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 49
  IF ~InParty("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 48
  IF ~InParty("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 47
  IF ~InParty("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 46
  IF ~InParty("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 45
  IF ~InParty("Cernd")~ THEN EXTERN ~PLAYER1~ 44
  IF ~InParty("Nalia")~ THEN EXTERN ~PLAYER1~ 43
  IF ~InParty("Korgan")~ THEN EXTERN ~PLAYER1~ 42
  IF ~InParty("HaerDalis")~ THEN EXTERN ~PLAYER1~ 40
  IF ~InParty("Edwin")~ THEN EXTERN ~PLAYER1~ 39
  IF ~InParty("Jan")~ THEN EXTERN ~PLAYER1~ 38
  IF ~InParty("Mazzy")~ THEN EXTERN ~PLAYER1~ 37
  IF ~InParty("Valygar")~ THEN EXTERN ~PLAYER1~ 36
  IF ~InParty("Minsc")~ THEN EXTERN ~PLAYER1~ 35
  IF ~InParty("Imoen2")~ THEN EXTERN ~PLAYER1~ 34
  IF ~InParty("Sime")
OR(2)
Global("SimeRomanceActive","GLOBAL",1)
Global("SimeRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ TS60
  IF ~InParty("Sime")
OR(2)
Global("SimeRomanceActive","GLOBAL",0)
Global("SimeRomanceActive","GLOBAL",3)~ THEN EXTERN ~PLAYER1~ TS56
  IF ~InParty("Kachiko")~ THEN EXTERN ~PLAYER1~ TS55
  IF ~InParty("Yoshimo")~ THEN EXTERN ~PLAYER1~ TS55yosh
END

IF ~~ THEN BEGIN TL2
	SAY ~This is it, <CHARNAME>. Soon it will be over, your suffering will come to an end. We will return your soul and you will be at peace.~
		IF ~~ THEN REPLY ~Keldorn, you don't have to continue... this isn't your fight.~ GOTO TL3
		IF ~~ THEN REPLY ~Keldorn, you know what comes. Don't let your vow bind you, there's no need to endanger yourself.~ GOTO TL3
  	IF ~~ THEN REPLY ~Are you ready, Keldorn? I need you committed and ready to die, if necessary. This is important.~ GOTO TL3
END

IF ~~ THEN BEGIN TL3
  SAY ~The path of honor dictates that I see this through to the end, my friend... no matter what.  I would not be able to lift my eyes were I to abandon you while such an evil remains unchecked.  I could serve good no greater than by what I do now.~
  IF ~True()~ THEN EXTERN ~PLAYER1~ 53
  IF ~InParty("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 52
  IF ~InParty("Aerie")
Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 51
  IF ~InParty("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 50
  IF ~InParty("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 49
  IF ~InParty("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 48
  IF ~InParty("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 47
  IF ~InParty("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 46
  IF ~InParty("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 45
  IF ~InParty("Cernd")~ THEN EXTERN ~PLAYER1~ 44
  IF ~InParty("Nalia")~ THEN EXTERN ~PLAYER1~ 43
  IF ~InParty("Korgan")~ THEN EXTERN ~PLAYER1~ 42
  IF ~InParty("HaerDalis")~ THEN EXTERN ~PLAYER1~ 40
  IF ~InParty("Edwin")~ THEN EXTERN ~PLAYER1~ 39
  IF ~InParty("Jan")~ THEN EXTERN ~PLAYER1~ 38
  IF ~InParty("Mazzy")~ THEN EXTERN ~PLAYER1~ 37
  IF ~InParty("Valygar")~ THEN EXTERN ~PLAYER1~ 36
  IF ~InParty("Minsc")~ THEN EXTERN ~PLAYER1~ 35
  IF ~InParty("Imoen2")~ THEN EXTERN ~PLAYER1~ 34
  IF ~InParty("Sime")
OR(2)
Global("SimeRomanceActive","GLOBAL",1)
Global("SimeRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ TS60
  IF ~InParty("Sime")
OR(2)
Global("SimeRomanceActive","GLOBAL",0)
Global("SimeRomanceActive","GLOBAL",3)~ THEN EXTERN ~PLAYER1~ TS56
  IF ~InParty("Kachiko")~ THEN EXTERN ~PLAYER1~ TS55
  IF ~InParty("Yoshimo")~ THEN EXTERN ~PLAYER1~ TS55yosh
END
END

ADD_TRANS_TRIGGER IMOEN2J 3 ~True()~ DO 0
ADD_TRANS_TRIGGER IMOEN2J 4 ~True()~ DO 0

EXTEND_BOTTOM IMOEN2J 3
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
Global("VP_KeldornMatch","GLOBAL",1)
OR(2)
Global("VP_KrRomanceActive","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~  InParty("Edwin")
!Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~  InParty("Valygar")
!Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
OR(3)
!Global("VP_KeldornMatch","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",0)
Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~  InParty("Korgan")
!Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~  InParty("Jan")
!Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~  InParty("Nalia")
!Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
  IF ~  InParty("Mazzy")
!Dead("Mazzy")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MAZZYJ~ 190
  IF ~  InParty("HaerDalis")
!Dead("HaerDalis")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~HAERDAJ~ 137
  IF ~  InParty("Cernd")
!Dead("Cernd")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~CERNDJ~ 126
  IF ~  InParty("Minsc")
!Dead("Minsc")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MINSCJ~ 196
  IF ~  InParty("Anomen")
!Dead("Anomen")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~ANOMENJ~ 233
  IF ~  InParty("Aerie")
!Dead("Aerie")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~AERIEJ~ 102
  IF ~  InParty("Viconia")
!Dead("Viconia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VICONIJ~ 67
  IF ~  InParty("Jaheira")
!Dead("Jaheira")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JAHEIRAJ~ 421
END

EXTEND_BOTTOM IMOEN2J 4
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
Global("VP_KeldornMatch","GLOBAL",1)
OR(2)
Global("VP_KrRomanceActive","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~  InParty("Edwin")
!Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~  InParty("Valygar")
!Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
OR(3)
!Global("VP_KeldornMatch","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",0)
Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~  InParty("Korgan")
!Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~  InParty("Jan")
!Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~  InParty("Nalia")
!Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
  IF ~  InParty("Mazzy")
!Dead("Mazzy")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MAZZYJ~ 190
  IF ~  InParty("HaerDalis")
!Dead("HaerDalis")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~HAERDAJ~ 137
  IF ~  InParty("Cernd")
!Dead("Cernd")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~CERNDJ~ 126
  IF ~  InParty("Minsc")
!Dead("Minsc")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MINSCJ~ 196
  IF ~  InParty("Anomen")
!Dead("Anomen")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~ANOMENJ~ 233
  IF ~  InParty("Aerie")
!Dead("Aerie")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~AERIEJ~ 102
  IF ~  InParty("Viconia")
!Dead("Viconia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VICONIJ~ 67
  IF ~  InParty("Jaheira")
!Dead("Jaheira")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JAHEIRAJ~ 421
END

ADD_TRANS_TRIGGER JAHEIRAJ 422 ~True()~ DO 0
ADD_TRANS_TRIGGER JAHEIRAJ 423 ~True()~ DO 0

EXTEND_BOTTOM JAHEIRAJ 422
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
Global("VP_KeldornMatch","GLOBAL",1)
OR(2)
Global("VP_KrRomanceActive","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~  InParty("Edwin")
!Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~  InParty("Valygar")
!Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
OR(3)
!Global("VP_KeldornMatch","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",0)
Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~  InParty("Korgan")
!Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~  InParty("Jan")
!Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~  InParty("Nalia")
!Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
  IF ~  InParty("Mazzy")
!Dead("Mazzy")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MAZZYJ~ 190
  IF ~  InParty("HaerDalis")
!Dead("HaerDalis")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~HAERDAJ~ 137
  IF ~  InParty("Cernd")
!Dead("Cernd")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~CERNDJ~ 126
  IF ~  InParty("Minsc")
!Dead("Minsc")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MINSCJ~ 196
  IF ~  InParty("Anomen")
!Dead("Anomen")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~ANOMENJ~ 233
  IF ~  InParty("Aerie")
!Dead("Aerie")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~AERIEJ~ 102
  IF ~  InParty("Viconia")
!Dead("Viconia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VICONIJ~ 67
END

EXTEND_BOTTOM JAHEIRAJ 423
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
Global("VP_KeldornMatch","GLOBAL",1)
OR(2)
Global("VP_KrRomanceActive","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~  InParty("Edwin")
!Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~  InParty("Valygar")
!Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
OR(3)
!Global("VP_KeldornMatch","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",0)
Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~  InParty("Korgan")
!Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~  InParty("Jan")
!Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~  InParty("Nalia")
!Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
  IF ~  InParty("Mazzy")
!Dead("Mazzy")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MAZZYJ~ 190
  IF ~  InParty("HaerDalis")
!Dead("HaerDalis")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~HAERDAJ~ 137
  IF ~  InParty("Cernd")
!Dead("Cernd")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~CERNDJ~ 126
  IF ~  InParty("Minsc")
!Dead("Minsc")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MINSCJ~ 196
  IF ~  InParty("Anomen")
!Dead("Anomen")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~ANOMENJ~ 233
  IF ~  InParty("Aerie")
!Dead("Aerie")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~AERIEJ~ 102
  IF ~  InParty("Viconia")
!Dead("Viconia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VICONIJ~ 67
END

ADD_TRANS_TRIGGER VICONIJ 69 ~True()~ DO 0
ADD_TRANS_TRIGGER VICONIJ 70 ~True()~ DO 0

EXTEND_BOTTOM VICONIJ 69
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
Global("VP_KeldornMatch","GLOBAL",1)
OR(2)
Global("VP_KrRomanceActive","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~  InParty("Edwin")
!Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~  InParty("Valygar")
!Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
OR(3)
!Global("VP_KeldornMatch","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",0)
Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~  InParty("Korgan")
!Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~  InParty("Jan")
!Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~  InParty("Nalia")
!Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
  IF ~  InParty("Mazzy")
!Dead("Mazzy")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MAZZYJ~ 190
  IF ~  InParty("HaerDalis")
!Dead("HaerDalis")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~HAERDAJ~ 137
  IF ~  InParty("Cernd")
!Dead("Cernd")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~CERNDJ~ 126
  IF ~  InParty("Minsc")
!Dead("Minsc")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MINSCJ~ 196
  IF ~  InParty("Anomen")
!Dead("Anomen")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~ANOMENJ~ 233
  IF ~  InParty("Aerie")
!Dead("Aerie")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~AERIEJ~ 102
END

EXTEND_BOTTOM VICONIJ 70
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
Global("VP_KeldornMatch","GLOBAL",1)
OR(2)
Global("VP_KrRomanceActive","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~  InParty("Edwin")
!Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~  InParty("Valygar")
!Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
OR(3)
!Global("VP_KeldornMatch","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",0)
Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~  InParty("Korgan")
!Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~  InParty("Jan")
!Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~  InParty("Nalia")
!Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
  IF ~  InParty("Mazzy")
!Dead("Mazzy")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MAZZYJ~ 190
  IF ~  InParty("HaerDalis")
!Dead("HaerDalis")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~HAERDAJ~ 137
  IF ~  InParty("Cernd")
!Dead("Cernd")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~CERNDJ~ 126
  IF ~  InParty("Minsc")
!Dead("Minsc")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MINSCJ~ 196
  IF ~  InParty("Anomen")
!Dead("Anomen")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~ANOMENJ~ 233
  IF ~  InParty("Aerie")
!Dead("Aerie")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~AERIEJ~ 102
END

ADD_TRANS_TRIGGER AERIEJ 103 ~True()~ DO 0

EXTEND_BOTTOM AERIEJ 103
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
Global("VP_KeldornMatch","GLOBAL",1)
OR(2)
Global("VP_KrRomanceActive","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~  InParty("Edwin")
!Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~  InParty("Valygar")
!Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
OR(3)
!Global("VP_KeldornMatch","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",0)
Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~  InParty("Korgan")
!Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~  InParty("Jan")
!Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~  InParty("Nalia")
!Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
  IF ~  InParty("Mazzy")
!Dead("Mazzy")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MAZZYJ~ 190
  IF ~  InParty("HaerDalis")
!Dead("HaerDalis")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~HAERDAJ~ 137
  IF ~  InParty("Cernd")
!Dead("Cernd")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~CERNDJ~ 126
  IF ~  InParty("Minsc")
!Dead("Minsc")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MINSCJ~ 196
  IF ~  InParty("Anomen")
!Dead("Anomen")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~ANOMENJ~ 233
END

ALTER_TRANS ANOMENJ // file name
BEGIN 233 END // state number (can be more than one)
BEGIN 0 1 2 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "EPILOGUE" ~GOTO 233A~
END

APPEND ~ANOMENJ~

IF ~~ THEN BEGIN 233A
  SAY ~As you wish.~
  IF ~True()~ THEN EXIT
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
Global("VP_KeldornMatch","GLOBAL",1)
OR(2)
Global("VP_KrRomanceActive","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~  InParty("Edwin")
!Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~  InParty("Valygar")
!Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
OR(3)
!Global("VP_KeldornMatch","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",0)
Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~  InParty("Korgan")
!Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~  InParty("Jan")
!Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~  InParty("Nalia")
!Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
  IF ~  InParty("Mazzy")
!Dead("Mazzy")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MAZZYJ~ 190
  IF ~  InParty("HaerDalis")
!Dead("HaerDalis")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~HAERDAJ~ 137
  IF ~  InParty("Cernd")
!Dead("Cernd")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~CERNDJ~ 126
  IF ~  InParty("Minsc")
!Dead("Minsc")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MINSCJ~ 196
END
END

ADD_TRANS_TRIGGER MINSCJ 197 ~True()~ DO 0
ADD_TRANS_TRIGGER MINSCJ 199 ~True()~ DO 0
ADD_TRANS_TRIGGER MINSCJ 233 ~True()~ DO 0

EXTEND_BOTTOM MINSCJ 197
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
Global("VP_KeldornMatch","GLOBAL",1)
OR(2)
Global("VP_KrRomanceActive","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~  InParty("Edwin")
!Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~  InParty("Valygar")
!Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
OR(3)
!Global("VP_KeldornMatch","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",0)
Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~  InParty("Korgan")
!Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~  InParty("Jan")
!Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~  InParty("Nalia")
!Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
  IF ~  InParty("Mazzy")
!Dead("Mazzy")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MAZZYJ~ 190
  IF ~  InParty("HaerDalis")
!Dead("HaerDalis")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~HAERDAJ~ 137
  IF ~  InParty("Cernd")
!Dead("Cernd")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~CERNDJ~ 126
END

EXTEND_BOTTOM MINSCJ 199
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
Global("VP_KeldornMatch","GLOBAL",1)
OR(2)
Global("VP_KrRomanceActive","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~  InParty("Edwin")
!Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~  InParty("Valygar")
!Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
OR(3)
!Global("VP_KeldornMatch","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",0)
Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~  InParty("Korgan")
!Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~  InParty("Jan")
!Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~  InParty("Nalia")
!Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
  IF ~  InParty("Mazzy")
!Dead("Mazzy")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MAZZYJ~ 190
  IF ~  InParty("HaerDalis")
!Dead("HaerDalis")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~HAERDAJ~ 137
  IF ~  InParty("Cernd")
!Dead("Cernd")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~CERNDJ~ 126
END

EXTEND_BOTTOM MINSCJ 233
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
Global("VP_KeldornMatch","GLOBAL",1)
OR(2)
Global("VP_KrRomanceActive","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~  InParty("Edwin")
!Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~  InParty("Valygar")
!Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
OR(3)
!Global("VP_KeldornMatch","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",0)
Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~  InParty("Korgan")
!Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~  InParty("Jan")
!Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~  InParty("Nalia")
!Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
  IF ~  InParty("Mazzy")
!Dead("Mazzy")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MAZZYJ~ 190
  IF ~  InParty("HaerDalis")
!Dead("HaerDalis")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~HAERDAJ~ 137
  IF ~  InParty("Cernd")
!Dead("Cernd")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~CERNDJ~ 126
END

ADD_TRANS_TRIGGER CERNDJ 127 ~True()~ DO 0
ADD_TRANS_TRIGGER CERNDJ 128 ~True()~ DO 0
ADD_TRANS_TRIGGER CERNDJ 129 ~True()~ DO 0

EXTEND_BOTTOM CERNDJ 127
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
Global("VP_KeldornMatch","GLOBAL",1)
OR(2)
Global("VP_KrRomanceActive","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~  InParty("Edwin")
!Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~  InParty("Valygar")
!Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
OR(3)
!Global("VP_KeldornMatch","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",0)
Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~  InParty("Korgan")
!Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~  InParty("Jan")
!Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~  InParty("Nalia")
!Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
  IF ~  InParty("Mazzy")
!Dead("Mazzy")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MAZZYJ~ 190
  IF ~  InParty("HaerDalis")
!Dead("HaerDalis")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~HAERDAJ~ 137
END

EXTEND_BOTTOM CERNDJ 128
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
Global("VP_KeldornMatch","GLOBAL",1)
OR(2)
Global("VP_KrRomanceActive","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~  InParty("Edwin")
!Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~  InParty("Valygar")
!Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
OR(3)
!Global("VP_KeldornMatch","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",0)
Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~  InParty("Korgan")
!Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~  InParty("Jan")
!Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~  InParty("Nalia")
!Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
  IF ~  InParty("Mazzy")
!Dead("Mazzy")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MAZZYJ~ 190
  IF ~  InParty("HaerDalis")
!Dead("HaerDalis")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~HAERDAJ~ 137
END

EXTEND_BOTTOM CERNDJ 129
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
Global("VP_KeldornMatch","GLOBAL",1)
OR(2)
Global("VP_KrRomanceActive","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~  InParty("Edwin")
!Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~  InParty("Valygar")
!Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
OR(3)
!Global("VP_KeldornMatch","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",0)
Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~  InParty("Korgan")
!Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~  InParty("Jan")
!Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~  InParty("Nalia")
!Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
  IF ~  InParty("Mazzy")
!Dead("Mazzy")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MAZZYJ~ 190
  IF ~  InParty("HaerDalis")
!Dead("HaerDalis")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~HAERDAJ~ 137
END

ADD_TRANS_TRIGGER HAERDAJ 138 ~True()~ DO 0
ADD_TRANS_TRIGGER HAERDAJ 139 ~True()~ DO 0
ADD_TRANS_TRIGGER HAERDAJ 140 ~True()~ DO 0

EXTEND_BOTTOM HAERDAJ 138
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
Global("VP_KeldornMatch","GLOBAL",1)
OR(2)
Global("VP_KrRomanceActive","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~  InParty("Edwin")
!Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~  InParty("Valygar")
!Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
OR(3)
!Global("VP_KeldornMatch","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",0)
Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~  InParty("Korgan")
!Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~  InParty("Jan")
!Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~  InParty("Nalia")
!Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
  IF ~  InParty("Mazzy")
!Dead("Mazzy")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MAZZYJ~ 190
END

EXTEND_BOTTOM HAERDAJ 139
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
Global("VP_KeldornMatch","GLOBAL",1)
OR(2)
Global("VP_KrRomanceActive","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~  InParty("Edwin")
!Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~  InParty("Valygar")
!Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
OR(3)
!Global("VP_KeldornMatch","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",0)
Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~  InParty("Korgan")
!Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~  InParty("Jan")
!Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~  InParty("Nalia")
!Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
  IF ~  InParty("Mazzy")
!Dead("Mazzy")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MAZZYJ~ 190
END

EXTEND_BOTTOM HAERDAJ 140
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
Global("VP_KeldornMatch","GLOBAL",1)
OR(2)
Global("VP_KrRomanceActive","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~  InParty("Edwin")
!Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~  InParty("Valygar")
!Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
OR(3)
!Global("VP_KeldornMatch","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",0)
Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~  InParty("Korgan")
!Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~  InParty("Jan")
!Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~  InParty("Nalia")
!Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
  IF ~  InParty("Mazzy")
!Dead("Mazzy")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MAZZYJ~ 190
END

ADD_TRANS_TRIGGER MAZZYJ 191 ~True()~ DO 0
ADD_TRANS_TRIGGER MAZZYJ 192 ~True()~ DO 0
ADD_TRANS_TRIGGER MAZZYJ 193 ~True()~ DO 0

EXTEND_BOTTOM MAZZYJ 191
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
Global("VP_KeldornMatch","GLOBAL",1)
OR(2)
Global("VP_KrRomanceActive","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~  InParty("Edwin")
!Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~  InParty("Valygar")
!Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
OR(3)
!Global("VP_KeldornMatch","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",0)
Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~  InParty("Korgan")
!Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~  InParty("Jan")
!Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~  InParty("Nalia")
!Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
END

EXTEND_BOTTOM MAZZYJ 192
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
Global("VP_KeldornMatch","GLOBAL",1)
OR(2)
Global("VP_KrRomanceActive","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~  InParty("Edwin")
!Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~  InParty("Valygar")
!Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
OR(3)
!Global("VP_KeldornMatch","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",0)
Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~  InParty("Korgan")
!Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~  InParty("Jan")
!Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~  InParty("Nalia")
!Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
END

EXTEND_BOTTOM MAZZYJ 193
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
Global("VP_KeldornMatch","GLOBAL",1)
OR(2)
Global("VP_KrRomanceActive","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~  InParty("Edwin")
!Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~  InParty("Valygar")
!Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
OR(3)
!Global("VP_KeldornMatch","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",0)
Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~  InParty("Korgan")
!Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~  InParty("Jan")
!Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~  InParty("Nalia")
!Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
END

ADD_TRANS_TRIGGER NALIAJ 305 ~True()~ DO 0
ADD_TRANS_TRIGGER NALIAJ 306 ~True()~ DO 0
ADD_TRANS_TRIGGER NALIAJ 307 ~True()~ DO 0

EXTEND_BOTTOM NALIAJ 305
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
Global("VP_KeldornMatch","GLOBAL",1)
OR(2)
Global("VP_KrRomanceActive","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~  InParty("Edwin")
!Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~  InParty("Valygar")
!Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
OR(3)
!Global("VP_KeldornMatch","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",0)
Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~  InParty("Korgan")
!Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~  InParty("Jan")
!Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
END

EXTEND_BOTTOM NALIAJ 306
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
Global("VP_KeldornMatch","GLOBAL",1)
OR(2)
Global("VP_KrRomanceActive","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~  InParty("Edwin")
!Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~  InParty("Valygar")
!Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
OR(3)
!Global("VP_KeldornMatch","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",0)
Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~  InParty("Korgan")
!Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~  InParty("Jan")
!Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
END

EXTEND_BOTTOM NALIAJ 307
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
Global("VP_KeldornMatch","GLOBAL",1)
OR(2)
Global("VP_KrRomanceActive","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~  InParty("Edwin")
!Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~  InParty("Valygar")
!Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
OR(3)
!Global("VP_KeldornMatch","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",0)
Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~  InParty("Korgan")
!Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~  InParty("Jan")
!Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
END

ADD_TRANS_TRIGGER JANJ 177 ~True()~ DO 0

EXTEND_BOTTOM JANJ 177
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
Global("VP_KeldornMatch","GLOBAL",1)
OR(2)
Global("VP_KrRomanceActive","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~  InParty("Edwin")
!Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~  InParty("Valygar")
!Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
OR(3)
!Global("VP_KeldornMatch","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",0)
Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~  InParty("Korgan")
!Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
END

ADD_TRANS_TRIGGER KORGANJ 174 ~True()~ DO 0
ADD_TRANS_TRIGGER KORGANJ 175 ~True()~ DO 0
ADD_TRANS_TRIGGER KORGANJ 176 ~True()~ DO 0

EXTEND_BOTTOM KORGANJ 174
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
Global("VP_KeldornMatch","GLOBAL",1)
OR(2)
Global("VP_KrRomanceActive","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~  InParty("Edwin")
!Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~  InParty("Valygar")
!Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
OR(3)
!Global("VP_KeldornMatch","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",0)
Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
END

EXTEND_BOTTOM KORGANJ 175
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
Global("VP_KeldornMatch","GLOBAL",1)
OR(2)
Global("VP_KrRomanceActive","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~  InParty("Edwin")
!Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~  InParty("Valygar")
!Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
OR(3)
!Global("VP_KeldornMatch","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",0)
Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
END

EXTEND_BOTTOM KORGANJ 176
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
Global("VP_KeldornMatch","GLOBAL",1)
OR(2)
Global("VP_KrRomanceActive","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~  InParty("Edwin")
!Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~  InParty("Valygar")
!Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
OR(3)
!Global("VP_KeldornMatch","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",0)
Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
END

ADD_TRANS_TRIGGER KELDORJ 240 ~True()~ DO 0
ADD_TRANS_TRIGGER KELDORJ 241 ~True()~ DO 0
ADD_TRANS_TRIGGER KELDORJ 242 ~True()~ DO 0

EXTEND_BOTTOM KELDORJ 240
  IF ~  InParty("Edwin")
!Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~  InParty("Valygar")
!Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
END

EXTEND_BOTTOM KELDORJ 241
  IF ~  InParty("Edwin")
!Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~  InParty("Valygar")
!Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
END

EXTEND_BOTTOM KELDORJ 242
  IF ~  InParty("Edwin")
!Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~  InParty("Valygar")
!Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
END

ADD_TRANS_TRIGGER VALYGARJ 100 ~True()~ DO 0
ADD_TRANS_TRIGGER VALYGARJ 101 ~True()~ DO 0
ADD_TRANS_TRIGGER VALYGARJ 102 ~True()~ DO 0

EXTEND_BOTTOM VALYGARJ 100
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
Global("VP_KeldornMatch","GLOBAL",1)
OR(2)
Global("VP_KrRomanceActive","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~  InParty("Edwin")
!Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
END

EXTEND_BOTTOM VALYGARJ 101
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
Global("VP_KeldornMatch","GLOBAL",1)
OR(2)
Global("VP_KrRomanceActive","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~  InParty("Edwin")
!Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
END

EXTEND_BOTTOM VALYGARJ 102
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
Global("VP_KeldornMatch","GLOBAL",1)
OR(2)
Global("VP_KrRomanceActive","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~  InParty("Edwin")
!Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
END

ADD_TRANS_TRIGGER EDWINJ 146 ~True()~ DO 0
ADD_TRANS_TRIGGER EDWINJ 147 ~True()~ DO 0
ADD_TRANS_TRIGGER EDWINJ 148 ~True()~ DO 0

EXTEND_BOTTOM EDWINJ 146
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
Global("VP_KeldornMatch","GLOBAL",1)
OR(2)
Global("VP_KrRomanceActive","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
END

EXTEND_BOTTOM EDWINJ 147
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
Global("VP_KeldornMatch","GLOBAL",1)
OR(2)
Global("VP_KrRomanceActive","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
END

EXTEND_BOTTOM EDWINJ 148
  IF ~  InParty("Keldorn")
!Dead("Keldorn")
Global("VP_KeldornMatch","GLOBAL",1)
OR(2)
Global("VP_KrRomanceActive","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
END

//AR1514 - Interject in PLAYER1.DLG
// First Transformation into Slayer
ALTER_TRANS PLAYER1 // file name
BEGIN 4 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "EPILOGUE" ~GOTO N5~
END

APPEND ~VALYGARJ~

IF ~~ THEN BEGIN slayerba
  SAY ~(*You come to your senses and discover Valygar holding you tightly. He has several new wounds, and a terrible suspicion is creeping into your soul.*) <CHARNAME>! Gods be praised, you are yourself again!~
  IF ~~ THEN REPLY ~Yes. Valygar! What happened... what was that?~ GOTO slayer2
END

IF ~~ THEN BEGIN slayer2
  SAY ~(*Sternly*) Slayer... Bhaal's Avatar!~
  	IF ~~ THEN REPLY ~Oh... but why? I... I won't endure such an abomination! Save me, save me!~ GOTO slayer3
  	IF ~~ THEN REPLY ~(*Twitching*) What an abomination... and yet what strength, you can't begin to imagine the half of it!~ GOTO slayer3
END

IF ~~ THEN BEGIN slayer3
  SAY ~Calm down <CHARNAME>. Nothing bad has happened.~
  	IF ~~ THEN REPLY ~(*Pointing at the wound*) And what is that then? Did I... do that?~ GOTO slayer4
  	IF ~~ THEN REPLY ~You tried to hold me and I wounded you, is that not sot? I must be abhorrent to you.~ GOTO slayer5
END

IF ~~ THEN BEGIN slayer4
  SAY ~(*Reluctantly he answers you*) Yes.~
  	IF ~~ THEN REPLY ~Yea gods... I must be abhorrent to you.~ GOTO slayer5
END

IF ~~ THEN BEGIN slayer5
  SAY ~(*Tenderly*) There, there. Stop talking nonsense. Everything will be all right, calm down, my sweet girl, calm down.~
  IF ~True()~ THEN DO ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~ EXIT
  IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ 203
  IF ~InParty("Cernd")
!Dead("Cernd")~ THEN EXTERN ~CERNDJ~ 130
  IF ~InParty("HaerDalis")
!Dead("HaerDalis")~ THEN EXTERN ~HAERDAJ~ 141
  IF ~InParty("Mazzy")
!Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ 194
  IF ~InParty("Nalia")
!Dead("Nalia")~ THEN EXTERN ~NALIAJ~ 308
  IF ~InParty("Jan")
!Dead("Jan")~ THEN EXTERN ~JANJ~ 178
  IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~KORGANJ~ 177
  IF ~InParty("Keldorn")
!Dead("Keldorn")
!Global("VP_KrRomanceActive","GLOBAL",1)
!Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN ~KELDORJ~ 243
  IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~EDWINJ~ 149
  IF ~InParty("Anomen")
!Dead("Anomen")~ THEN EXTERN ~ANOMENJ~ 250
  IF ~InParty("Aerie")
!Dead("Aerie")~ THEN EXTERN ~AERIEJ~ 116
  IF ~InParty("Viconia")
!Dead("Viconia")~ THEN EXTERN ~VICONIJ~ 87
  IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ 432
  IF ~InParty("Imoen2")
!Dead("Imoen2")~ THEN EXTERN ~IMOEN2J~ 1
  IF ~InParty("Leina")
!Dead("Leina")~ THEN EXTERN ~LEINAJ~ slayerba
  IF ~InParty("Sime")
!Dead("Sime")~ THEN EXTERN ~SIMEJ~ slayerba
END
END

ADD_TRANS_TRIGGER IMOEN2J 6 ~True()~ DO 0
ALTER_TRANS IMOEN2J // file name
BEGIN 6 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~
END

EXTEND_BOTTOM IMOEN2J 6
  IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ 203
  IF ~InParty("Cernd")
!Dead("Cernd")~ THEN EXTERN ~CERNDJ~ 130
  IF ~InParty("HaerDalis")
!Dead("HaerDalis")~ THEN EXTERN ~HAERDAJ~ 141
  IF ~InParty("Mazzy")
!Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ 194
  IF ~InParty("Nalia")
!Dead("Nalia")~ THEN EXTERN ~NALIAJ~ 308
  IF ~InParty("Jan")
!Dead("Jan")~ THEN EXTERN ~JANJ~ 178
  IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~KORGANJ~ 177
  IF ~InParty("Keldorn")
!Dead("Keldorn")
!Global("VP_KrRomanceActive","GLOBAL",1)
!Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN ~KELDORJ~ 243
  IF ~InParty("Valygar")
!Dead("Valygar")
!Global("ValygarRomanceActive","GLOBAL",1)
!Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYGARJ~ 103
  IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~EDWINJ~ 149
  IF ~InParty("Anomen")
!Dead("Anomen")~ THEN EXTERN ~ANOMENJ~ 250
  IF ~InParty("Aerie")
!Dead("Aerie")~ THEN EXTERN ~AERIEJ~ 116
  IF ~InParty("Viconia")
!Dead("Viconia")~ THEN EXTERN ~VICONIJ~ 87
  IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ 432
END

ADD_TRANS_TRIGGER JAHEIRAJ 433 ~True()~ DO 0
ALTER_TRANS JAHEIRAJ // file name
BEGIN 433 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~
END

EXTEND_BOTTOM JAHEIRAJ 433
  IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ 203
  IF ~InParty("Cernd")
!Dead("Cernd")~ THEN EXTERN ~CERNDJ~ 130
  IF ~InParty("HaerDalis")
!Dead("HaerDalis")~ THEN EXTERN ~HAERDAJ~ 141
  IF ~InParty("Mazzy")
!Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ 194
  IF ~InParty("Nalia")
!Dead("Nalia")~ THEN EXTERN ~NALIAJ~ 308
  IF ~InParty("Jan")
!Dead("Jan")~ THEN EXTERN ~JANJ~ 178
  IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~KORGANJ~ 177
  IF ~InParty("Keldorn")
!Dead("Keldorn")
!Global("VP_KrRomanceActive","GLOBAL",1)
!Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN ~KELDORJ~ 243
  IF ~InParty("Valygar")
!Dead("Valygar")
!Global("ValygarRomanceActive","GLOBAL",1)
!Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYGARJ~ 103
  IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~EDWINJ~ 149
  IF ~InParty("Anomen")
!Dead("Anomen")~ THEN EXTERN ~ANOMENJ~ 250
  IF ~InParty("Aerie")
!Dead("Aerie")~ THEN EXTERN ~AERIEJ~ 116
  IF ~InParty("Viconia")
!Dead("Viconia")~ THEN EXTERN ~VICONIJ~ 87
END

ADD_TRANS_TRIGGER VICONIJ 88 ~True()~ DO 0
ALTER_TRANS VICONIJ // file name
BEGIN 88 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~
END

EXTEND_BOTTOM VICONIJ 88
  IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ 203
  IF ~InParty("Cernd")
!Dead("Cernd")~ THEN EXTERN ~CERNDJ~ 130
  IF ~InParty("HaerDalis")
!Dead("HaerDalis")~ THEN EXTERN ~HAERDAJ~ 141
  IF ~InParty("Mazzy")
!Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ 194
  IF ~InParty("Nalia")
!Dead("Nalia")~ THEN EXTERN ~NALIAJ~ 308
  IF ~InParty("Jan")
!Dead("Jan")~ THEN EXTERN ~JANJ~ 178
  IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~KORGANJ~ 177
  IF ~InParty("Keldorn")
!Dead("Keldorn")
!Global("VP_KrRomanceActive","GLOBAL",1)
!Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN ~KELDORJ~ 243
  IF ~InParty("Valygar")
!Dead("Valygar")
!Global("ValygarRomanceActive","GLOBAL",1)
!Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYGARJ~ 103
  IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~EDWINJ~ 149
  IF ~InParty("Anomen")
!Dead("Anomen")~ THEN EXTERN ~ANOMENJ~ 250
  IF ~InParty("Aerie")
!Dead("Aerie")~ THEN EXTERN ~AERIEJ~ 116
END

ADD_TRANS_TRIGGER AERIEJ 117 ~True()~ DO 0
ALTER_TRANS AERIEJ // file name
BEGIN 117 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~
END

EXTEND_BOTTOM AERIEJ 117
  IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ 203
  IF ~InParty("Cernd")
!Dead("Cernd")~ THEN EXTERN ~CERNDJ~ 130
  IF ~InParty("HaerDalis")
!Dead("HaerDalis")~ THEN EXTERN ~HAERDAJ~ 141
  IF ~InParty("Mazzy")
!Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ 194
  IF ~InParty("Nalia")
!Dead("Nalia")~ THEN EXTERN ~NALIAJ~ 308
  IF ~InParty("Jan")
!Dead("Jan")~ THEN EXTERN ~JANJ~ 178
  IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~KORGANJ~ 177
  IF ~InParty("Keldorn")
!Dead("Keldorn")
!Global("VP_KrRomanceActive","GLOBAL",1)
!Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN ~KELDORJ~ 243
  IF ~InParty("Valygar")
!Dead("Valygar")
!Global("ValygarRomanceActive","GLOBAL",1)
!Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYGARJ~ 103
  IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~EDWINJ~ 149
  IF ~InParty("Anomen")
!Dead("Anomen")~ THEN EXTERN ~ANOMENJ~ 250
END

ADD_TRANS_TRIGGER ANOMENJ 251 ~True()~ DO 0
ALTER_TRANS ANOMENJ // file name
BEGIN 251 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~
END

EXTEND_BOTTOM ANOMENJ 251
  IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ 203
  IF ~InParty("Cernd")
!Dead("Cernd")~ THEN EXTERN ~CERNDJ~ 130
  IF ~InParty("HaerDalis")
!Dead("HaerDalis")~ THEN EXTERN ~HAERDAJ~ 141
  IF ~InParty("Mazzy")
!Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ 194
  IF ~InParty("Nalia")
!Dead("Nalia")~ THEN EXTERN ~NALIAJ~ 308
  IF ~InParty("Jan")
!Dead("Jan")~ THEN EXTERN ~JANJ~ 178
  IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~KORGANJ~ 177
  IF ~InParty("Keldorn")
!Dead("Keldorn")
!Global("VP_KrRomanceActive","GLOBAL",1)
!Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN ~KELDORJ~ 243
  IF ~InParty("Valygar")
!Dead("Valygar")
!Global("ValygarRomanceActive","GLOBAL",1)
!Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYGARJ~ 103
  IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~EDWINJ~ 149
END

ADD_TRANS_TRIGGER EDWINJ 152 ~True()~ DO 0
ALTER_TRANS EDWINJ // file name
BEGIN 152 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~
END

EXTEND_BOTTOM EDWINJ 152
  IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ 203
  IF ~InParty("Cernd")
!Dead("Cernd")~ THEN EXTERN ~CERNDJ~ 130
  IF ~InParty("HaerDalis")
!Dead("HaerDalis")~ THEN EXTERN ~HAERDAJ~ 141
  IF ~InParty("Mazzy")
!Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ 194
  IF ~InParty("Nalia")
!Dead("Nalia")~ THEN EXTERN ~NALIAJ~ 308
  IF ~InParty("Jan")
!Dead("Jan")~ THEN EXTERN ~JANJ~ 178
  IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~KORGANJ~ 177
  IF ~InParty("Keldorn")
!Dead("Keldorn")
!Global("VP_KrRomanceActive","GLOBAL",1)
!Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN ~KELDORJ~ 243
  IF ~InParty("Valygar")
!Dead("Valygar")
!Global("ValygarRomanceActive","GLOBAL",1)
!Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYGARJ~ 103
END

ADD_TRANS_TRIGGER VALYGARJ 104 ~True()~ DO 0
ALTER_TRANS VALYGARJ // file name
BEGIN 104 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~
END

EXTEND_BOTTOM VALYGARJ 104
  IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ 203
  IF ~InParty("Cernd")
!Dead("Cernd")~ THEN EXTERN ~CERNDJ~ 130
  IF ~InParty("HaerDalis")
!Dead("HaerDalis")~ THEN EXTERN ~HAERDAJ~ 141
  IF ~InParty("Mazzy")
!Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ 194
  IF ~InParty("Nalia")
!Dead("Nalia")~ THEN EXTERN ~NALIAJ~ 308
  IF ~InParty("Jan")
!Dead("Jan")~ THEN EXTERN ~JANJ~ 178
  IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~KORGANJ~ 177
  IF ~InParty("Keldorn")
!Dead("Keldorn")
!Global("VP_KrRomanceActive","GLOBAL",1)
!Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN ~KELDORJ~ 243
END

ADD_TRANS_TRIGGER KELDORJ 245 ~True()~ DO 0
ALTER_TRANS KELDORJ // file name
BEGIN 245 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~
END

EXTEND_BOTTOM KELDORJ 245
  IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ 203
  IF ~InParty("Cernd")
!Dead("Cernd")~ THEN EXTERN ~CERNDJ~ 130
  IF ~InParty("HaerDalis")
!Dead("HaerDalis")~ THEN EXTERN ~HAERDAJ~ 141
  IF ~InParty("Mazzy")
!Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ 194
  IF ~InParty("Nalia")
!Dead("Nalia")~ THEN EXTERN ~NALIAJ~ 308
  IF ~InParty("Jan")
!Dead("Jan")~ THEN EXTERN ~JANJ~ 178
  IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~KORGANJ~ 177
END

ADD_TRANS_TRIGGER KORGANJ 179 ~True()~ DO 0
ALTER_TRANS KORGANJ // file name
BEGIN 179 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~
END

EXTEND_BOTTOM KORGANJ 179
  IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ 203
  IF ~InParty("Cernd")
!Dead("Cernd")~ THEN EXTERN ~CERNDJ~ 130
  IF ~InParty("HaerDalis")
!Dead("HaerDalis")~ THEN EXTERN ~HAERDAJ~ 141
  IF ~InParty("Mazzy")
!Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ 194
  IF ~InParty("Nalia")
!Dead("Nalia")~ THEN EXTERN ~NALIAJ~ 308
  IF ~InParty("Jan")
!Dead("Jan")~ THEN EXTERN ~JANJ~ 178
END

ADD_TRANS_TRIGGER JANJ 180 ~True()~ DO 0
ALTER_TRANS JANJ // file name
BEGIN 180 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~
END

EXTEND_BOTTOM JANJ 180
  IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ 203
  IF ~InParty("Cernd")
!Dead("Cernd")~ THEN EXTERN ~CERNDJ~ 130
  IF ~InParty("HaerDalis")
!Dead("HaerDalis")~ THEN EXTERN ~HAERDAJ~ 141
  IF ~InParty("Mazzy")
!Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ 194
  IF ~InParty("Nalia")
!Dead("Nalia")~ THEN EXTERN ~NALIAJ~ 308
END

ADD_TRANS_TRIGGER NALIAJ 310 ~True()~ DO 0
ALTER_TRANS NALIAJ // file name
BEGIN 310 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~
END

EXTEND_BOTTOM NALIAJ 310
  IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ 203
  IF ~InParty("Cernd")
!Dead("Cernd")~ THEN EXTERN ~CERNDJ~ 130
  IF ~InParty("HaerDalis")
!Dead("HaerDalis")~ THEN EXTERN ~HAERDAJ~ 141
  IF ~InParty("Mazzy")
!Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ 194
END

ADD_TRANS_TRIGGER MAZZYJ 196 ~True()~ DO 0
ALTER_TRANS MAZZYJ // file name
BEGIN 196 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~
END

EXTEND_BOTTOM MAZZYJ 196
  IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ 203
  IF ~InParty("Cernd")
!Dead("Cernd")~ THEN EXTERN ~CERNDJ~ 130
  IF ~InParty("HaerDalis")
!Dead("HaerDalis")~ THEN EXTERN ~HAERDAJ~ 141
END

ADD_TRANS_TRIGGER HAERDAJ 145 ~True()~ DO 0
ALTER_TRANS HAERDAJ // file name
BEGIN 145 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~
END

EXTEND_BOTTOM HAERDAJ 145
  IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ 203
  IF ~InParty("Cernd")
!Dead("Cernd")~ THEN EXTERN ~CERNDJ~ 130
END

ADD_TRANS_TRIGGER CERNDJ 132 ~True()~ DO 0
ALTER_TRANS CERNDJ // file name
BEGIN 132 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~
END

EXTEND_BOTTOM CERNDJ 132
  IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ 203
END

ALTER_TRANS MINSCJ // file name
BEGIN 203 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~
END

// Slayer Attacks Lover at Rest

ALTER_TRANS PLAYER1 // file name
BEGIN 7 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~!Global("JaheiraRomanceActive","GLOBAL",1)
!Global("JaheiraRomanceActive","GLOBAL",2)
!Global("AerieRomanceActive","GLOBAL",1)
!Global("AerieRomanceActive","GLOBAL",2)
!Global("ViconiaRomanceActive","GLOBAL",1)
!Global("ViconiaRomanceActive","GLOBAL",2)
!Global("AnomenRomanceActive","GLOBAL",1)
!Global("AnomenRomanceActive","GLOBAL",2)
!Global("ValygarRomanceActive","GLOBAL",1)
!Global("ValygarRomanceActive","GLOBAL",2)
!Global("SimeRomanceActive","GLOBAL",1)
!Global("SimeRomanceActive","GLOBAL",2)
!Global("VP_KrRomanceActive","GLOBAL",1)
!Global("VP_KrRomanceActive","GLOBAL",2)
NumInPartyGT(1)~
END

ALTER_TRANS PLAYER1 // file name
BEGIN 7 END // state number (can be more than one)
BEGIN 1 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~!NumInPartyGT(1)~
END

ALTER_TRANS PLAYER1 // file name
BEGIN 7 END // state number (can be more than one)
BEGIN 2 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~OR(14)
Global("JaheiraRomanceActive","GLOBAL",1)
Global("JaheiraRomanceActive","GLOBAL",2)
Global("AerieRomanceActive","GLOBAL",1)
Global("AerieRomanceActive","GLOBAL",2)
Global("ViconiaRomanceActive","GLOBAL",1)
Global("ViconiaRomanceActive","GLOBAL",2)
Global("AnomenRomanceActive","GLOBAL",1)
Global("AnomenRomanceActive","GLOBAL",2)
Global("ValygarRomanceActive","GLOBAL",1)
Global("ValygarRomanceActive","GLOBAL",2)
Global("SimeRomanceActive","GLOBAL",1)
Global("SimeRomanceActive","GLOBAL",2)
Global("VP_KrRomanceActive","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",2)~
END

ALTER_TRANS PLAYER1 // file name
BEGIN 7 END // state number (can be more than one)
BEGIN 3 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~InParty("Jaheira")
!Dead("Jaheira")
OR(2)
Global("JaheiraRomanceActive","GLOBAL",1)
Global("JaheiraRomanceActive","GLOBAL",2)~
END

ALTER_TRANS PLAYER1 // file name
BEGIN 7 END // state number (can be more than one)
BEGIN 4 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~InParty("Aerie")
!Dead("Aerie")
OR(2)
Global("AerieRomanceActive","GLOBAL",1)
Global("AerieRomanceActive","GLOBAL",2)~
END

ALTER_TRANS PLAYER1 // file name
BEGIN 7 END // state number (can be more than one)
BEGIN 5 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~InParty("Viconia")
!Dead("Viconia")
OR(2)
Global("ViconiaRomanceActive","GLOBAL",1)
Global("ViconiaRomanceActive","GLOBAL",2)~
END

ALTER_TRANS PLAYER1 // file name
BEGIN 7 END // state number (can be more than one)
BEGIN 6 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~InParty("Anomen")
!Dead("Anomen")
OR(2)
Global("AnomenRomanceActive","GLOBAL",1)
Global("AnomenRomanceActive","GLOBAL",2)~
END

EXTEND_BOTTOM PLAYER1 7
  IF ~InParty("Sime")
!Dead("Sime")
Gender(Player1,MALE)
OR(2)
Global("SimeRomanceActive","GLOBAL",1)
Global("SimeRomanceActive","GLOBAL",2)~ THEN EXTERN ~SIMEJ~ slayerat
  IF ~  InParty("Valygar")
!Dead("Valygar")
OR(2)
Global("ValygarRomanceActive","GLOBAL",1)
Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYGARJ~ slayerat
  IF ~InParty("Keldorn")
!Dead("Keldorn")
OR(2)
Global("VP_KrRomanceActive","GLOBAL",1)
Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN ~KELDORJ~ slayerat
END

ALTER_TRANS PLAYER1 // file name
BEGIN 10 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~NumInPartyGT(1)~
END

ALTER_TRANS PLAYER1 // file name
BEGIN 10 END // state number (can be more than one)
BEGIN 1 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~!NumInPartyGT(1)~
END

ALTER_TRANS PLAYER1 // file name
BEGIN 10 END // state number (can be more than one)
BEGIN 2 3 4 5 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~False()~
END


ALTER_TRANS PLAYER1 // file name
BEGIN 10 END // state number (can be more than one)
BEGIN 6 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~!Global("VP_DoNotRepeat","GLOBAL",1)
Global("EndangerLovedOne","GLOBAL",1)
InParty("Jaheira")
!Dead("Jaheira")~
END

ALTER_TRANS PLAYER1 // file name
BEGIN 10 END // state number (can be more than one)
BEGIN 7 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~Global("EndangerLovedOne","GLOBAL",2)
InParty("Aerie")
!Dead("Aerie")~
END

ALTER_TRANS PLAYER1 // file name
BEGIN 10 END // state number (can be more than one)
BEGIN 8 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~Global("EndangerLovedOne","GLOBAL",3)
InParty("Viconia")
!Dead("Viconia")~
END

ALTER_TRANS PLAYER1 // file name
BEGIN 10 END // state number (can be more than one)
BEGIN 9 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~Global("EndangerLovedOne","GLOBAL",4)
InParty("Anomen")
!Dead("Anomen")~
END

ALTER_TRANS PLAYER1 // file name
BEGIN 11 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "EPILOGUE" ~GOTO 12~
END

EXTEND_BOTTOM PLAYER1 25 // Finding Irenicus in Hell
  IF ~InParty("Kachiko")
See("Kachiko")~ THEN UNSOLVED_JOURNAL ~Finding Irenicus in Hell

Irenicus' death did not have the same effect as Bodhi's did, and my soul has not returned to me.  Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and myself inexorably behind.  And such was the power that my party members that had fallen or were near death were drawn with us as well!  Together we are in Hell, and I am certain Irenicus is somewhere near.  Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ EXTERN ~KACHIJ~ N55
//  IF ~InParty("Dynaheir")
//See("Dynaheir")~ THEN UNSOLVED_JOURNAL ~Finding Irenicus in Hell
//
//Irenicus' death did not have the same effect as Bodhi's did, and my soul has not returned to me.  Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and myself inexorably behind.  And such was the power that my party members that had fallen or were near death were drawn with us as well!  Together we are in Hell, and I am certain Irenicus is somewhere near.  Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ EXTERN ~DYNAJ~ TS03
//  IF ~InParty("Coran")
//See("Coran")~ THEN UNSOLVED_JOURNAL ~Finding Irenicus in Hell
//
//Irenicus' death did not have the same effect as Bodhi's did, and my soul has not returned to me.  Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and myself inexorably behind.  And such was the power that my party members that had fallen or were near death were drawn with us as well!  Together we are in Hell, and I am certain Irenicus is somewhere near.  Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ EXTERN ~CORANJ~ TS6
IF ~InParty("Sime")
See("Sime")~ THEN UNSOLVED_JOURNAL ~Finding Irenicus in Hell

Irenicus' death did not have the same effect as Bodhi's did, and my soul has not returned to me.  Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and myself inexorably behind.  And such was the power that my party members that had fallen or were near death were drawn with us as well!  Together we are in Hell, and I am certain Irenicus is somewhere near.  Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ EXTERN ~SIMEJ~ 116
	IF ~InParty("Leina")
See("Leina")~ THEN UNSOLVED_JOURNAL ~Finding Irenicus in Hell

Irenicus' death did not have the same effect as Bodhi's did, and my soul has not returned to me.  Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and myself inexorably behind.  And such was the power that my party members that had fallen or were near death were drawn with us as well!  Together we are in Hell, and I am certain Irenicus is somewhere near.  Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ EXTERN ~LEINAJ~ inhell
END

EXTEND_BOTTOM PLAYER1 33 // Tree of Life Talk
  IF ~InParty("Sime")
OR(2)
Global("SimeRomanceActive","GLOBAL",1)
Global("SimeRomanceActive","GLOBAL",2)~ THEN GOTO TS60
//	IF ~InParty("Dynaheir")~ THEN GOTO TS59
//  IF ~InParty("Coran")~ THEN GOTO TS57
  IF ~InParty("Sime")
OR(2)
Global("SimeRomanceActive","GLOBAL",0)
Global("SimeRomanceActive","GLOBAL",3)~ THEN GOTO TS56
  IF ~InParty("Kachiko")~ THEN GOTO TS55
  IF ~InParty("Yoshimo")~ THEN GOTO TS55yosh
  IF ~InParty("Keldorn")
!Global("VP_KrRomanceActive","GLOBAL",0)~ THEN GOTO KR_TL0
  IF ~InParty("Leina")
!Dead("Leina")
Gender(Player1,MALE)~ THEN GOTO ToTLM
  IF ~InParty("Leina")
!Dead("Leina")
Gender(Player1,FEMALE)~ THEN GOTO ToTLF
END

ALTER_TRANS PLAYER1 // file name
BEGIN 36 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~Gender(Player1,MALE)
OR(2)
Dead("lavok02")
Dead("lavok01")~
END

ALTER_TRANS PLAYER1 // file name
BEGIN 36 END // state number (can be more than one)
BEGIN 1 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~Gender(Player1,MALE)
!Dead("lavok01")
!Dead("lavok02")~
END

ADD_TRANS_TRIGGER ~PLAYER1~ 36 ~Gender(Player1,MALE)~ DO 2 3

EXTEND_BOTTOM PLAYER1 36
  IF ~Gender(Player1,FEMALE)~ THEN GOTO TS58
END

ADD_TRANS_TRIGGER ~IMOEN2J~ 38 ~Global("VP_KrRomanceActive","GLOBAL",0)~ DO 12
ADD_TRANS_TRIGGER ~MINSCJ~ 209 ~Global("VP_KrRomanceActive","GLOBAL",0)~ DO 12
ADD_TRANS_TRIGGER ~VALYGARJ~ 106 ~Global("VP_KrRomanceActive","GLOBAL",0)~ DO 12
ADD_TRANS_TRIGGER ~MAZZYJ~ 199 ~Global("VP_KrRomanceActive","GLOBAL",0)~ DO 12
ADD_TRANS_TRIGGER ~JANJ~ 181 ~Global("VP_KrRomanceActive","GLOBAL",0)~ DO 12
ADD_TRANS_TRIGGER ~EDWINJ~ 160 ~Global("VP_KrRomanceActive","GLOBAL",0)~ DO 12
ADD_TRANS_TRIGGER ~HAERDAJ~ 149 ~Global("VP_KrRomanceActive","GLOBAL",0)~ DO 12

APPEND ~PLAYER1~

IF WEIGHT #-1 ~Global("VP_ResqueLeina","GLOBAL",4)
Global("VP_NPC_LeinaRoom","GLOBAL",0)
PartyHasItem("GovanLet")~ THEN BEGIN LQT1
 SAY ~(*After reading the letter, you think it may be worse to speak to the barkeep again. Maybe he can tell you where this Govan Duvaine can be found.*)~
 IF ~True()~ THEN DO ~SetGlobal("VP_NPC_LeinaRoom","GLOBAL",1)~ EXIT
 IF ~InParty("Valygar")~ THEN DO ~SetGlobal("VP_NPC_LeinaRoom","GLOBAL",1)~ EXTERN ~VALYGARJ~ NEJ157
 IF ~InParty("Minsc")~ THEN DO ~SetGlobal("VP_NPC_LeinaRoom","GLOBAL",1)~ EXTERN ~MINSCJ~ NEJ259
 IF ~InParty("Dar")~ THEN DO ~SetGlobal("VP_NPC_LeinaRoom","GLOBAL",1)~ EXTERN ~DARJ~ 7
 IF ~InParty("Viconia")~ THEN DO ~SetGlobal("VP_NPC_LeinaRoom","GLOBAL",1)~ EXTERN ~VICONIJ~ NEJ185
 IF ~InParty("Mazzy")~ THEN DO ~SetGlobal("VP_NPC_LeinaRoom","GLOBAL",1)~ EXTERN ~MAZZYJ~ NEJ205
 IF ~InParty("Aerie")~ THEN DO ~SetGlobal("VP_NPC_LeinaRoom","GLOBAL",1)~ EXTERN ~AERIEJ~ NEJ221
 IF ~InParty("Jaheira")~ THEN DO ~SetGlobal("VP_NPC_LeinaRoom","GLOBAL",1)~ EXTERN ~JAHEIRAJ~ NEJ544
 IF ~InParty("Kachiko")~ THEN DO ~SetGlobal("VP_NPC_LeinaRoom","GLOBAL",1)~ EXTERN ~KACHIJ~ NEJ56
 IF ~InParty("Nalia")~ THEN DO ~SetGlobal("VP_NPC_LeinaRoom","GLOBAL",1)~ EXTERN ~NALIAJ~ NEJ320
 IF ~InParty("Melora")~ THEN DO ~SetGlobal("VP_NPC_LeinaRoom","GLOBAL",1)~ EXTERN ~MELORAJ~ 0
END

IF WEIGHT #-2 ~Global("VP_ResqueLeina","GLOBAL",4)
Global("VP_NPC_LeinaRoom","GLOBAL",0)
!PartyHasItem("GovanLet")~ THEN BEGIN LQT2
 SAY ~(*You think it would be a good idea to pick up the letter and to speak to the barkeep again. Maybe he can tell you where this Govan Duvaine can be found.*)~
 IF ~True()~ THEN DO ~SetGlobal("VP_NPC_LeinaRoom","GLOBAL",1)~ EXIT
 IF ~InParty("Valygar")~ THEN DO ~SetGlobal("VP_NPC_LeinaRoom","GLOBAL",1)~ EXTERN ~VALYGARJ~ NEJ157
 IF ~InParty("Minsc")~ THEN DO ~SetGlobal("VP_NPC_LeinaRoom","GLOBAL",1)~ EXTERN ~MINSCJ~ NEJ259
 IF ~InParty("Dar")~ THEN DO ~SetGlobal("VP_NPC_LeinaRoom","GLOBAL",1)~ EXTERN ~DARJ~ 7
 IF ~InParty("Viconia")~ THEN DO ~SetGlobal("VP_NPC_LeinaRoom","GLOBAL",1)~ EXTERN ~VICONIJ~ NEJ185
 IF ~InParty("Mazzy")~ THEN DO ~SetGlobal("VP_NPC_LeinaRoom","GLOBAL",1)~ EXTERN ~MAZZYJ~ NEJ205
 IF ~InParty("Aerie")~ THEN DO ~SetGlobal("VP_NPC_LeinaRoom","GLOBAL",1)~ EXTERN ~AERIEJ~ NEJ221
 IF ~InParty("Jaheira")~ THEN DO ~SetGlobal("VP_NPC_LeinaRoom","GLOBAL",1)~ EXTERN ~JAHEIRAJ~ NEJ544
 IF ~InParty("Kachiko")~ THEN DO ~SetGlobal("VP_NPC_LeinaRoom","GLOBAL",1)~ EXTERN ~KACHIJ~ NEJ56
 IF ~InParty("Nalia")~ THEN DO ~SetGlobal("VP_NPC_LeinaRoom","GLOBAL",1)~ EXTERN ~NALIAJ~ NEJ320
 IF ~InParty("Melora")~ THEN DO ~SetGlobal("VP_NPC_LeinaRoom","GLOBAL",1)~ EXTERN ~MELORAJ~ 0
END
END