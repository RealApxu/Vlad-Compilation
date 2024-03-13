//AR1512 - Interject in PLAYER1.DLG

ALTER_TRANS PLAYER1 // file name
BEGIN 0 END // state number (can be more than one) BEGIN 0 END // transition number (can be more than one) BEGIN // list of changes, see below for flags
"EPILOGUE" ~GOTO N3~
END

APPEND ~PLAYER1~

IF ~~ THEN BEGIN N3
  SAY #49596 /* ~The feeling passes, but far too slowly for your liking.~ */
  IF ~True ()~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXIT
  IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1) OR(2) Global("VP_KrRomanceActive","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~InParty("Keldorn") !Dead("Keldorn") OR(3) !Global("VP_KeldornMatch","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",0) Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~InParty("Jan") !Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MAZZYJ~ 190
  IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~HAERDAJ~ 137 /* Fix to the original link to state 140, which is incorrect */
  IF ~InParty("Cernd") !Dead("Cernd")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~CERNDJ~ 126
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MINSCJ~ 196
  IF ~InParty("Anomen") !Dead("Anomen")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~ANOMENJ~ 233
  IF ~InParty("Aerie") !Dead("Aerie")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~AERIEJ~ 102
  IF ~InParty("Viconia") !Dead("Viconia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VICONIJ~ 67
  IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JAHEIRAJ~ 421
  IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~IMOEN2J~ 0
END

IF ~~ THEN BEGIN N5
  SAY #49604 /* ~A fate, as they  SAY, worse than death, and one that has not gone unnoticed by your comrades. ~ */
  IF ~True()~ THEN DO ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~ EXIT
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ 203
  IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN ~CERNDJ~ 130
  IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN ~HAERDAJ~ 141
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ 194
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN ~NALIAJ~ 308
  IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN ~JANJ~ 178
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~KORGANJ~ 177
  IF ~InParty("Keldorn") !Dead("Keldorn") !Global("VP_KrRomanceActive","GLOBAL",1) !Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN ~KELDORJ~ 243
  IF ~InParty("Valygar") !Dead("Valygar") !Global("ValygarRomanceActive","GLOBAL",1) !Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYGARJ~ 103
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN ~EDWINJ~ 149
  IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ~ANOMENJ~ 250
  IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN ~AERIEJ~ 116
  IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN ~VICONIJ~ 87
  IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ 432
  IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN ~IMOEN2J~ 1
  IF ~InParty("Leina") !Dead("Leina")~ THEN EXTERN ~LEINAJ~ slayerba
  IF ~InParty("Sime") !Dead("Sime") !Global("SimeRomanceActive","GLOBAL",1) !Global("SimeRomanceActive","GLOBAL",2)~ THEN EXTERN ~SIMEJ~ slayerba
  IF ~InParty("Sime") !Dead("Sime") OR(2) Global("SimeRomanceActive","GLOBAL",1) Global("SimeRomanceActive","GLOBAL",2)~ THEN EXTERN ~SIMEJ~ 68
  IF ~InParty("Valygar") !Dead("Valygar") OR(2) Global("ValygarRomanceActive","GLOBAL",1) Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYGARJ~ slayerba
  IF ~InParty("Keldorn") !Dead("Keldorn") OR(2) Global("VP_KrRomanceActive","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN ~KELDORJ~ slayerba
END

IF ~~ THEN BEGIN TS55yosh
  SAY ~Yoshimo... the man whom you helped to rescue his family from a bitter vendetta and to find his true love. Yet he is also a man who was once hired by Irenicus to facilitate your demise.~
  IF ~~ THEN REPLY ~Yoshimo... Your life just started anew.  IF you do not want to face Irenicus again, you do not have to. ~ EXTERN ~YOSHJ~ TS221
  IF ~~ THEN REPLY ~Listen, Yoshimo. I trust you and everything, but I need to hear that you are on my side in the upcoming battle.~ EXTERN ~YOSHJ~ TS222
  IF ~~ THEN REPLY ~Irenicus is a mighty foe, Yoshimo. I do not know  IF all of us shall survive this battle. I would understand  IF you do not want to come with me.~ EXTERN ~YOSHJ~ TS221
END

IF ~~ THEN BEGIN TS55
  SAY ~Kachiko. A warrior from a distant land, she insisted to join you to be close to Yoshimo whom she hated. She stayed with you through thick and thin to be close to Yoshimo she loved...~
  IF ~~ THEN REPLY ~Kachiko... You had fought valiantly by my side, but  IF you wish to go back to your life now, I would understand...~ EXTERN ~KACHIJ~ N37
  IF ~~ THEN REPLY ~Irenicus is a terrible creature, Kachiko. Please, let me know that you are prepared to face such a challenge.~ EXTERN ~KACHIJ~ N38
  IF ~~ THEN REPLY ~Behind these doors is death... May be it awaits Irenicus, may be it awaits all of us... You have seen death closer than I. Would you go through this door?~ EXTERN ~KACHIJ~ N39
END

IF ~~ THEN BEGIN TS56
  SAY ~Sime is before you, the woman you had not come to know very well, though she was a loyal companion.~
  IF ~~ THEN REPLY ~Sime, I know little of you, but Irenicus is no enemy of yours. You do not have to fight my battle...~ EXTERN ~SIMEJ~ TOL21
  IF ~~ THEN REPLY ~You know how powerful Irenicus is, Sime. The fight is going to be deadly.  IF you wish, you may take your leave now~ EXTERN ~SIMEJ~ TOL22
  IF ~~ THEN REPLY ~Sime, that's not the best time to chat, but I need to know that you readily and willingly partaking in the fight with Irenicus.~ EXTERN ~SIMEJ~ TOL23
END

//IF ~~ THEN BEGIN TS57
//  SAY ~Coran... You feel that you don't need to ask him... But...~
//  IF ~~ THEN REPLY ~Coran, my old friend...~ EXTERN ~CORANJ~ TS5
//END

IF ~~ THEN BEGIN TS58
  SAY ~There is something else too... He looks at you sometimes... strangely... just like now...~
  IF ~OR(2) Dead("lavok02") Dead("lavok01")~ THEN REPLY ~Valygar... Lavok is dead. You could return to your life now,  IF you wish. This is my fight.~ EXTERN ~VALYGARJ~ TS127
  IF ~!Dead("lavok01") !Dead("lavok02")~ THEN REPLY ~Valygar... Lavok is still alive. Your own quest is unfinished, but mine ends here. This is my fight.~ EXTERN ~VALYGARJ~ TS127
  IF ~~ THEN REPLY ~Irenicus is a powerful wizard, Valygar. I know how you hate magic users; you do not have to endanger yourself for me.~ EXTERN ~VALYGARJ~ TS127
  IF ~~ THEN REPLY ~This is it, Valygar. I need to know that you are ready, that you are willing to commit yourself to the battle ahead.~ EXTERN ~VALYGARJ~ TS127
END

//IF ~~ THEN BEGIN TS59
//  SAY ~Dynaheir is before you, the woman who has been your loyal companion for a long time.~
//  IF ~~ THEN REPLY ~Dynaheir, Irenicus had already crushed Minsc. Those are painful memories.  IF you did not want to face  him again, I would understand.~ EXTERN ~DYNAJ~ TS00
//  IF ~~ THEN REPLY ~You know how powerful Irenicus is, Dynaheir. There is a chance that we will not survive.  IF you wish, you may go now.~ EXTERN ~DYNAJ~ TS01
//  IF ~~ THEN REPLY ~Dynaheir, please tell me  IF you have any reservations about fighting this maniac, Irenicus.~ EXTERN ~DYNAJ~ TS02
//END

IF ~~ THEN BEGIN TS60
  SAY ~Sime... You look at the maiden's eyes and you see what you have hoped and scared to see: the determination to follow you to the end of the world and beyond it. It is obvious that you might keep Sime out of this battle,  IF you,  SAY, tied her up and gagged her. Still, you want to give her a chance to reconsider.~
  IF ~~ THEN REPLY ~Sime, Irenicus is no enemy of yours. You do not have to fight my battles.~ EXTERN ~SIMEJ~ TOL1
  IF ~~ THEN REPLY ~You know how powerful Irenicus is, Sime. The fight is going to be deadly. I am afraid that you might get hurt or die... I would rather... Do you think you might wait here?~ EXTERN ~SIMEJ~ TOL2
  IF ~~ THEN REPLY ~Sime, that's not the best time to chat, but I need to know that you readily and willingly partaking in the fight with Irenicus.~ EXTERN ~SIMEJ~ TOL3
END

IF ~~ THEN BEGIN KR_TL0
  SAY ~Keldorn... (You look into each other's eyes and you have no need for words.)~
  IF ~OR(2) Global("VP_KrRomanceActive","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN ~KELDORJ~ TL1
  IF ~OR(2) Global("VP_KrRomanceActive","GLOBAL",3) Global("VP_KrRomanceActive","GLOBAL",0)~ THEN EXTERN ~KELDORJ~ TL2
END

IF ~~ THEN BEGIN ToTLF
  SAY ~Leina is before you, the bard you had not come to know very well, though she was a loyal companion.~
  IF ~~ THEN REPLY ~Leina, I know little of you, but Irenicus is no enemy of yours. You do not have to fight my battle...~ EXTERN ~LEINAJ~ TOL21
  IF ~~ THEN REPLY ~You know how powerful Irenicus is, Leina. The fight is going to be deadly.  IF you wish, you may take your leave now~ EXTERN ~LEINAJ~ TOL22
  IF ~~ THEN REPLY ~Leina, that's not the best time to chat, but I need to know that you readily and willingly partaking in the fight with Irenicus.~ EXTERN ~LEINAJ~ TOL23
END

IF ~~ THEN BEGIN ToTLM
  SAY ~Leina... You look at the maiden's eyes and you see what you have hoped and scared to see: the determination to follow you to the end of the world and beyond it. It is obvious that you might keep Leina out of this battle,  IF you,  SAY, tied her up and gagged her. Still, you want to give her a chance to reconsider.~
  IF ~~ THEN REPLY ~Leina, Irenicus is no enemy of yours. You do not have to fight my battles.~ EXTERN ~LEINAJ~ TOL1
  IF ~~ THEN REPLY ~You know how powerful Irenicus is, Leina. The fight is going to be deadly. I am afraid that you might get hurt or die... I would rather... Do you think you might wait here?~ EXTERN ~LEINAJ~ TOL2
  IF ~~ THEN REPLY ~Leina, that's not the best time to chat, but I need to know that you readily and willingly partaking in the fight with Irenicus.~ EXTERN ~LEINAJ~ TOL3
END
END

APPEND ~KELDORJ~

IF ~~ THEN BEGIN N239
  SAY ~Again you sacrificed yourself, this time for the sake of your sister. My friend, I beg you, please rest. Lay down a little even  IF you don't want to sleep. You appear unsteady on your legs, <CHARNAME>, that mage has exhausted you.~ [theme5]
  IF ~~ THEN REPLY ~(With a weak smile) I told you it was but a moments failing, I am fine now, I feel all right. It is not necessary for us to be wasting  anymore time.~ GOTO LT24_st1
  IF ~~ THEN REPLY ~All right I'll have a rest but only  IF you talk with me and not just curt phrases either.~ GOTO LT24_st2
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
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ 203
  IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN ~CERNDJ~ 130
  IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN ~HAERDAJ~ 141
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ 194
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN ~NALIAJ~ 308
  IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN ~JANJ~ 178
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~KORGANJ~ 177
  IF ~InParty("Valygar") !Dead("Valygar") !Global("ValygarRomanceActive","GLOBAL",1) !Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYGARJ~ 103
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN ~EDWINJ~ 149
  IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ~ANOMENJ~ 250
  IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN ~AERIEJ~ 116
  IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN ~VICONIJ~ 87
  IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ 432
  IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN ~IMOEN2J~ 1
  IF ~InParty("Leina") !Dead("Leina")~ THEN EXTERN ~LEINAJ~ slayerba
  IF ~InParty("Sime") !Dead("Sime")~ THEN EXTERN ~SIMEJ~ slayerba
END

IF ~~ THEN BEGIN TL1
  SAY ~This is it, my love. Soon it will be over, your suffering will come to an end.~
  = ~We will return your soul and you will be happy and at peace my dearest, darling girl. Everything will be all right... we have our whole lives ahead of us.~
  IF ~True()~ THEN EXTERN ~PLAYER1~ 53
  IF ~InParty("Anomen") Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 52
  IF ~InParty("Aerie") Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 51
  IF ~InParty("Viconia") Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 50
  IF ~InParty("Jaheira") Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 49
  IF ~InParty("Anomen") !Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 48
  IF ~InParty("Aerie") !Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 47
  IF ~InParty("Viconia") !Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 46
  IF ~InParty("Jaheira") !Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 45
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
  IF ~InParty("Sime") OR(2) Global("SimeRomanceActive","GLOBAL",1) Global("SimeRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ TS60
  IF ~InParty("Sime") OR(2) Global("SimeRomanceActive","GLOBAL",0) Global("SimeRomanceActive","GLOBAL",3)~ THEN EXTERN ~PLAYER1~ TS56
  IF ~InParty("Kachiko")~ THEN EXTERN ~PLAYER1~ TS55
  IF ~InParty("Yoshimo")~ THEN EXTERN ~PLAYER1~ TS55yosh
END

IF ~~ THEN BEGIN TL2
  SAY ~This is it, <CHARNAME>. Soon it will be over, your suffering will come to an end. We will return your soul and you will be at peace.~
  IF ~~ THEN REPLY ~Keldorn, you don't have to continue... this isn't your fight.~ GOTO TL3
  IF ~~ THEN REPLY ~Keldorn, you know what comes. Don't let your vow bind you, there's no need to endanger yourself.~ GOTO TL3
  IF ~~ THEN REPLY ~Are you ready, Keldorn? I need you committed and ready to die,  IF necessary. This is important.~ GOTO TL3
END

IF ~~ THEN BEGIN TL3
  SAY ~The path of honor dictates that I see this through to the end, my friend... no matter what.  I would not be able to lift my eyes were I to abandon you while such an evil remains unchecked.  I could serve good no greater than by what I do now.~
  IF ~True()~ THEN EXTERN ~PLAYER1~ 53
  IF ~InParty("Anomen") Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 52
  IF ~InParty("Aerie") Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 51
  IF ~InParty("Viconia") Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 50
  IF ~InParty("Jaheira") Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 49
  IF ~InParty("Anomen") !Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 48
  IF ~InParty("Aerie") !Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 47
  IF ~InParty("Viconia") !Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 46
  IF ~InParty("Jaheira") !Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 45
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
  IF ~InParty("Sime") OR(2) Global("SimeRomanceActive","GLOBAL",1) Global("SimeRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ TS60
  IF ~InParty("Sime") OR(2) Global("SimeRomanceActive","GLOBAL",0) Global("SimeRomanceActive","GLOBAL",3)~ THEN EXTERN ~PLAYER1~ TS56
  IF ~InParty("Kachiko")~ THEN EXTERN ~PLAYER1~ TS55
  IF ~InParty("Yoshimo")~ THEN EXTERN ~PLAYER1~ TS55yosh
END

END

ADD_TRANS_TRIGGER IMOEN2J 3 ~True()~ DO 0

ADD_TRANS_TRIGGER IMOEN2J 4 ~True()~ DO 0

EXTEND_BOTTOM IMOEN2J 3
  IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1) OR(2) Global("VP_KrRomanceActive","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~InParty("Keldorn") !Dead("Keldorn") OR(3) !Global("VP_KeldornMatch","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",0) Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~InParty("Jan") !Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MAZZYJ~ 190
  IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~HAERDAJ~ 137
  IF ~InParty("Cernd") !Dead("Cernd")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~CERNDJ~ 126
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MINSCJ~ 196
  IF ~InParty("Anomen") !Dead("Anomen")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~ANOMENJ~ 233
  IF ~InParty("Aerie") !Dead("Aerie")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~AERIEJ~ 102
  IF ~InParty("Viconia") !Dead("Viconia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VICONIJ~ 67
  IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JAHEIRAJ~ 421
END

EXTEND_BOTTOM IMOEN2J 4
  IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1) OR(2) Global("VP_KrRomanceActive","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~InParty("Keldorn") !Dead("Keldorn") OR(3) !Global("VP_KeldornMatch","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",0) Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~InParty("Jan") !Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MAZZYJ~ 190
  IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~HAERDAJ~ 137
  IF ~InParty("Cernd") !Dead("Cernd")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~CERNDJ~ 126
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MINSCJ~ 196
  IF ~InParty("Anomen") !Dead("Anomen")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~ANOMENJ~ 233
  IF ~InParty("Aerie") !Dead("Aerie")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~AERIEJ~ 102
  IF ~InParty("Viconia") !Dead("Viconia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VICONIJ~ 67
  IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JAHEIRAJ~ 421
END

ADD_TRANS_TRIGGER JAHEIRAJ 422 ~True()~ DO 0

ADD_TRANS_TRIGGER JAHEIRAJ 423 ~True()~ DO 0

EXTEND_BOTTOM JAHEIRAJ 422
  IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1) OR(2) Global("VP_KrRomanceActive","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~InParty("Keldorn") !Dead("Keldorn") OR(3) !Global("VP_KeldornMatch","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",0) Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~InParty("Jan") !Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MAZZYJ~ 190
  IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~HAERDAJ~ 137
  IF ~InParty("Cernd") !Dead("Cernd")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~CERNDJ~ 126
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MINSCJ~ 196
  IF ~InParty("Anomen") !Dead("Anomen")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~ANOMENJ~ 233
  IF ~InParty("Aerie") !Dead("Aerie")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~AERIEJ~ 102
  IF ~InParty("Viconia") !Dead("Viconia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VICONIJ~ 67
END

EXTEND_BOTTOM JAHEIRAJ 423
  IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1) OR(2) Global("VP_KrRomanceActive","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~InParty("Keldorn") !Dead("Keldorn") OR(3) !Global("VP_KeldornMatch","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",0) Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~InParty("Jan") !Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MAZZYJ~ 190
  IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~HAERDAJ~ 137
  IF ~InParty("Cernd") !Dead("Cernd")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~CERNDJ~ 126
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MINSCJ~ 196
  IF ~InParty("Anomen") !Dead("Anomen")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~ANOMENJ~ 233
  IF ~InParty("Aerie") !Dead("Aerie")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~AERIEJ~ 102
  IF ~InParty("Viconia") !Dead("Viconia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VICONIJ~ 67
END

ADD_TRANS_TRIGGER VICONIJ 69 ~True()~ DO 0

ADD_TRANS_TRIGGER VICONIJ 70 ~True()~ DO 0

EXTEND_BOTTOM VICONIJ 69
  IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1) OR(2) Global("VP_KrRomanceActive","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~InParty("Keldorn") !Dead("Keldorn") OR(3) !Global("VP_KeldornMatch","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",0) Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~InParty("Jan") !Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MAZZYJ~ 190
  IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~HAERDAJ~ 137
  IF ~InParty("Cernd") !Dead("Cernd")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~CERNDJ~ 126
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MINSCJ~ 196
  IF ~InParty("Anomen") !Dead("Anomen")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~ANOMENJ~ 233
  IF ~InParty("Aerie") !Dead("Aerie")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~AERIEJ~ 102
END

EXTEND_BOTTOM VICONIJ 70
  IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1) OR(2) Global("VP_KrRomanceActive","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~InParty("Keldorn") !Dead("Keldorn") OR(3) !Global("VP_KeldornMatch","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",0) Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~InParty("Jan") !Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MAZZYJ~ 190
  IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~HAERDAJ~ 137
  IF ~InParty("Cernd") !Dead("Cernd")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~CERNDJ~ 126
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MINSCJ~ 196
  IF ~InParty("Anomen") !Dead("Anomen")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~ANOMENJ~ 233
  IF ~InParty("Aerie") !Dead("Aerie")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~AERIEJ~ 102
END

ADD_TRANS_TRIGGER AERIEJ 103 ~True()~ DO 0

EXTEND_BOTTOM AERIEJ 103
  IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1) OR(2) Global("VP_KrRomanceActive","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~InParty("Keldorn") !Dead("Keldorn") OR(3) !Global("VP_KeldornMatch","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",0) Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~InParty("Jan") !Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MAZZYJ~ 190
  IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~HAERDAJ~ 137
  IF ~InParty("Cernd") !Dead("Cernd")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~CERNDJ~ 126
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MINSCJ~ 196
  IF ~InParty("Anomen") !Dead("Anomen")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~ANOMENJ~ 233
END

ALTER_TRANS ANOMENJ // file name
BEGIN 233 END // state number (can be more than one) BEGIN 0 1 2 END // transition number (can be more than one) BEGIN // list of changes, see below for flags
"EPILOGUE" ~GOTO 233A~
END

APPEND ~ANOMENJ~

IF ~~ THEN BEGIN 233A
  SAY ~As you wish.~
  IF ~True()~ THEN EXIT
  IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1) OR(2) Global("VP_KrRomanceActive","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~InParty("Keldorn") !Dead("Keldorn") OR(3) !Global("VP_KeldornMatch","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",0) Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~InParty("Jan") !Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MAZZYJ~ 190
  IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~HAERDAJ~ 137
  IF ~InParty("Cernd") !Dead("Cernd")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~CERNDJ~ 126
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MINSCJ~ 196
END
END

ADD_TRANS_TRIGGER MINSCJ 197 ~True()~ DO 0

ADD_TRANS_TRIGGER MINSCJ 199 ~True()~ DO 0

ADD_TRANS_TRIGGER MINSCJ 233 ~True()~ DO 0

EXTEND_BOTTOM MINSCJ 197
  IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1) OR(2) Global("VP_KrRomanceActive","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~InParty("Keldorn") !Dead("Keldorn") OR(3) !Global("VP_KeldornMatch","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",0) Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~InParty("Jan") !Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MAZZYJ~ 190
  IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~HAERDAJ~ 137
  IF ~InParty("Cernd") !Dead("Cernd")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~CERNDJ~ 126
END

EXTEND_BOTTOM MINSCJ 199
  IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1) OR(2) Global("VP_KrRomanceActive","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~InParty("Keldorn") !Dead("Keldorn") OR(3) !Global("VP_KeldornMatch","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",0) Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~InParty("Jan") !Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MAZZYJ~ 190
  IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~HAERDAJ~ 137
  IF ~InParty("Cernd") !Dead("Cernd")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~CERNDJ~ 126
END

EXTEND_BOTTOM MINSCJ 233
  IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1) OR(2) Global("VP_KrRomanceActive","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~InParty("Keldorn") !Dead("Keldorn") OR(3) !Global("VP_KeldornMatch","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",0) Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~InParty("Jan") !Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MAZZYJ~ 190
  IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~HAERDAJ~ 137
  IF ~InParty("Cernd") !Dead("Cernd")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~CERNDJ~ 126
END

ADD_TRANS_TRIGGER CERNDJ 127 ~True()~ DO 0

ADD_TRANS_TRIGGER CERNDJ 128 ~True()~ DO 0

ADD_TRANS_TRIGGER CERNDJ 129 ~True()~ DO 0

EXTEND_BOTTOM CERNDJ 127
  IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1) OR(2) Global("VP_KrRomanceActive","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~InParty("Keldorn") !Dead("Keldorn") OR(3) !Global("VP_KeldornMatch","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",0) Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~InParty("Jan") !Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MAZZYJ~ 190
  IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~HAERDAJ~ 137
END

EXTEND_BOTTOM CERNDJ 128
  IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1) OR(2) Global("VP_KrRomanceActive","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~InParty("Keldorn") !Dead("Keldorn") OR(3) !Global("VP_KeldornMatch","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",0) Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~InParty("Jan") !Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MAZZYJ~ 190
  IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~HAERDAJ~ 137
END

EXTEND_BOTTOM CERNDJ 129
  IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1) OR(2) Global("VP_KrRomanceActive","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~InParty("Keldorn") !Dead("Keldorn") OR(3) !Global("VP_KeldornMatch","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",0) Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~InParty("Jan") !Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MAZZYJ~ 190
  IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~HAERDAJ~ 137
END

ADD_TRANS_TRIGGER HAERDAJ 138 ~True()~ DO 0

ADD_TRANS_TRIGGER HAERDAJ 139 ~True()~ DO 0

ADD_TRANS_TRIGGER HAERDAJ 140 ~True()~ DO 0

EXTEND_BOTTOM HAERDAJ 138
  IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1) OR(2) Global("VP_KrRomanceActive","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~InParty("Keldorn") !Dead("Keldorn") OR(3) !Global("VP_KeldornMatch","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",0) Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~InParty("Jan") !Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MAZZYJ~ 190
END

EXTEND_BOTTOM HAERDAJ 139
  IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1) OR(2) Global("VP_KrRomanceActive","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~InParty("Keldorn") !Dead("Keldorn") OR(3) !Global("VP_KeldornMatch","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",0) Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~InParty("Jan") !Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MAZZYJ~ 190
END

EXTEND_BOTTOM HAERDAJ 140
  IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1) OR(2) Global("VP_KrRomanceActive","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~InParty("Keldorn") !Dead("Keldorn") OR(3) !Global("VP_KeldornMatch","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",0) Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~InParty("Jan") !Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~MAZZYJ~ 190
END

ADD_TRANS_TRIGGER MAZZYJ 191 ~True()~ DO 0

ADD_TRANS_TRIGGER MAZZYJ 192 ~True()~ DO 0

ADD_TRANS_TRIGGER MAZZYJ 193 ~True()~ DO 0

EXTEND_BOTTOM MAZZYJ 191
  IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1) OR(2) Global("VP_KrRomanceActive","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~InParty("Keldorn") !Dead("Keldorn") OR(3) !Global("VP_KeldornMatch","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",0) Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~InParty("Jan") !Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
END

EXTEND_BOTTOM MAZZYJ 192
  IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1) OR(2) Global("VP_KrRomanceActive","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~InParty("Keldorn") !Dead("Keldorn") OR(3) !Global("VP_KeldornMatch","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",0) Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~InParty("Jan") !Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
END

EXTEND_BOTTOM MAZZYJ 193
  IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1) OR(2) Global("VP_KrRomanceActive","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~InParty("Keldorn") !Dead("Keldorn") OR(3) !Global("VP_KeldornMatch","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",0) Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~InParty("Jan") !Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~NALIAJ~ 304
END

ADD_TRANS_TRIGGER NALIAJ 305 ~True()~ DO 0

ADD_TRANS_TRIGGER NALIAJ 306 ~True()~ DO 0

ADD_TRANS_TRIGGER NALIAJ 307 ~True()~ DO 0

EXTEND_BOTTOM NALIAJ 305
  IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1) OR(2) Global("VP_KrRomanceActive","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~InParty("Keldorn") !Dead("Keldorn") OR(3) !Global("VP_KeldornMatch","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",0) Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~InParty("Jan") !Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
END

EXTEND_BOTTOM NALIAJ 306
  IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1) OR(2) Global("VP_KrRomanceActive","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~InParty("Keldorn") !Dead("Keldorn") OR(3) !Global("VP_KeldornMatch","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",0) Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~InParty("Jan") !Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
END

EXTEND_BOTTOM NALIAJ 307
  IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1) OR(2) Global("VP_KrRomanceActive","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~InParty("Keldorn") !Dead("Keldorn") OR(3) !Global("VP_KeldornMatch","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",0) Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
  IF ~InParty("Jan") !Dead("Jan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~JANJ~ 176
END

ADD_TRANS_TRIGGER JANJ 177 ~True()~ DO 0

EXTEND_BOTTOM JANJ 177
  IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1) OR(2) Global("VP_KrRomanceActive","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~InParty("Keldorn") !Dead("Keldorn") OR(3) !Global("VP_KeldornMatch","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",0) Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KORGANJ~ 173
END

ADD_TRANS_TRIGGER KORGANJ 174 ~True()~ DO 0

ADD_TRANS_TRIGGER KORGANJ 175 ~True()~ DO 0

ADD_TRANS_TRIGGER KORGANJ 176 ~True()~ DO 0

EXTEND_BOTTOM KORGANJ 174
  IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1) OR(2) Global("VP_KrRomanceActive","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~InParty("Keldorn") !Dead("Keldorn") OR(3) !Global("VP_KeldornMatch","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",0) Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
END

EXTEND_BOTTOM KORGANJ 175
  IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1) OR(2) Global("VP_KrRomanceActive","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~InParty("Keldorn") !Dead("Keldorn") OR(3) !Global("VP_KeldornMatch","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",0) Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
END

EXTEND_BOTTOM KORGANJ 176
  IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1) OR(2) Global("VP_KrRomanceActive","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
  IF ~InParty("Keldorn") !Dead("Keldorn") OR(3) !Global("VP_KeldornMatch","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",0) Global("VP_KrRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ 239
END

ADD_TRANS_TRIGGER KELDORJ 240 ~True()~ DO 0

ADD_TRANS_TRIGGER KELDORJ 241 ~True()~ DO 0

ADD_TRANS_TRIGGER KELDORJ 242 ~True()~ DO 0

EXTEND_BOTTOM KELDORJ 240
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
END

EXTEND_BOTTOM KELDORJ 241
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
END

EXTEND_BOTTOM KELDORJ 242
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~VALYGARJ~ 99
END

ADD_TRANS_TRIGGER VALYGARJ 100 ~True()~ DO 0

ADD_TRANS_TRIGGER VALYGARJ 101 ~True()~ DO 0

ADD_TRANS_TRIGGER VALYGARJ 102 ~True()~ DO 0

EXTEND_BOTTOM VALYGARJ 100
  IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1) OR(2) Global("VP_KrRomanceActive","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
END

EXTEND_BOTTOM VALYGARJ 101
  IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1) OR(2) Global("VP_KrRomanceActive","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
END

EXTEND_BOTTOM VALYGARJ 102
  IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1) OR(2) Global("VP_KrRomanceActive","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~EDWINJ~ 145
END

ADD_TRANS_TRIGGER EDWINJ 146 ~True()~ DO 0

ADD_TRANS_TRIGGER EDWINJ 147 ~True()~ DO 0

ADD_TRANS_TRIGGER EDWINJ 148 ~True()~ DO 0

EXTEND_BOTTOM EDWINJ 146
  IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1) OR(2) Global("VP_KrRomanceActive","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
END

EXTEND_BOTTOM EDWINJ 147
  IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1) OR(2) Global("VP_KrRomanceActive","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
END

EXTEND_BOTTOM EDWINJ 148
  IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1) OR(2) Global("VP_KrRomanceActive","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~KELDORJ~ N239
END

//AR1514 - Interject in PLAYER1.DLG
// First Transformation into Slayer
ALTER_TRANS PLAYER1 // file name
BEGIN 4 END // state number (can be more than one) BEGIN 0 END // transition number (can be more than one) BEGIN // list of changes, see below for flags
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
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ 203
  IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN ~CERNDJ~ 130
  IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN ~HAERDAJ~ 141
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ 194
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN ~NALIAJ~ 308
  IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN ~JANJ~ 178
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~KORGANJ~ 177
  IF ~InParty("Keldorn") !Dead("Keldorn") !Global("VP_KrRomanceActive","GLOBAL",1) !Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN ~KELDORJ~ 243
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN ~EDWINJ~ 149
  IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ~ANOMENJ~ 250
  IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN ~AERIEJ~ 116
  IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN ~VICONIJ~ 87
  IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ 432
  IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN ~IMOEN2J~ 1
  IF ~InParty("Leina") !Dead("Leina")~ THEN EXTERN ~LEINAJ~ slayerba
  IF ~InParty("Sime") !Dead("Sime")~ THEN EXTERN ~SIMEJ~ slayerba
END

END

ADD_TRANS_TRIGGER IMOEN2J 6 ~True()~ DO 0

ALTER_TRANS IMOEN2J // file name
BEGIN 6 END // state number (can be more than one) BEGIN 0 END // transition number (can be more than one) BEGIN // list of changes, see below for flags
"ACTION" ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~
END

EXTEND_BOTTOM IMOEN2J 6
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ 203
  IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN ~CERNDJ~ 130
  IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN ~HAERDAJ~ 141
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ 194
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN ~NALIAJ~ 308
  IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN ~JANJ~ 178
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~KORGANJ~ 177
  IF ~InParty("Keldorn") !Dead("Keldorn") !Global("VP_KrRomanceActive","GLOBAL",1) !Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN ~KELDORJ~ 243
  IF ~InParty("Valygar") !Dead("Valygar") !Global("ValygarRomanceActive","GLOBAL",1) !Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYGARJ~ 103
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN ~EDWINJ~ 149
  IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ~ANOMENJ~ 250
  IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN ~AERIEJ~ 116
  IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN ~VICONIJ~ 87
  IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ 432
END

ADD_TRANS_TRIGGER JAHEIRAJ 433 ~True()~ DO 0

ALTER_TRANS JAHEIRAJ // file name
BEGIN 433 END // state number (can be more than one) BEGIN 0 END // transition number (can be more than one) BEGIN // list of changes, see below for flags
"ACTION" ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~
END

EXTEND_BOTTOM JAHEIRAJ 433
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ 203
  IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN ~CERNDJ~ 130
  IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN ~HAERDAJ~ 141
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ 194
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN ~NALIAJ~ 308
  IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN ~JANJ~ 178
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~KORGANJ~ 177
  IF ~InParty("Keldorn") !Dead("Keldorn") !Global("VP_KrRomanceActive","GLOBAL",1) !Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN ~KELDORJ~ 243
  IF ~InParty("Valygar") !Dead("Valygar") !Global("ValygarRomanceActive","GLOBAL",1) !Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYGARJ~ 103
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN ~EDWINJ~ 149
  IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ~ANOMENJ~ 250
  IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN ~AERIEJ~ 116
  IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN ~VICONIJ~ 87
END

ADD_TRANS_TRIGGER VICONIJ 88 ~True()~ DO 0

ALTER_TRANS VICONIJ // file name
BEGIN 88 END // state number (can be more than one) BEGIN 0 END // transition number (can be more than one) BEGIN // list of changes, see below for flags
"ACTION" ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~
END

EXTEND_BOTTOM VICONIJ 88
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ 203
  IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN ~CERNDJ~ 130
  IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN ~HAERDAJ~ 141
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ 194
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN ~NALIAJ~ 308
  IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN ~JANJ~ 178
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~KORGANJ~ 177
  IF ~InParty("Keldorn") !Dead("Keldorn") !Global("VP_KrRomanceActive","GLOBAL",1) !Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN ~KELDORJ~ 243
  IF ~InParty("Valygar") !Dead("Valygar") !Global("ValygarRomanceActive","GLOBAL",1) !Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYGARJ~ 103
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN ~EDWINJ~ 149
  IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ~ANOMENJ~ 250
  IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN ~AERIEJ~ 116
END

ADD_TRANS_TRIGGER AERIEJ 117 ~True()~ DO 0

ALTER_TRANS AERIEJ // file name
BEGIN 117 END // state number (can be more than one) BEGIN 0 END // transition number (can be more than one) BEGIN // list of changes, see below for flags
"ACTION" ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~
END

EXTEND_BOTTOM AERIEJ 117
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ 203
  IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN ~CERNDJ~ 130
  IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN ~HAERDAJ~ 141
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ 194
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN ~NALIAJ~ 308
  IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN ~JANJ~ 178
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~KORGANJ~ 177
  IF ~InParty("Keldorn") !Dead("Keldorn") !Global("VP_KrRomanceActive","GLOBAL",1) !Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN ~KELDORJ~ 243
  IF ~InParty("Valygar") !Dead("Valygar") !Global("ValygarRomanceActive","GLOBAL",1) !Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYGARJ~ 103
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN ~EDWINJ~ 149
  IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ~ANOMENJ~ 250
END

ADD_TRANS_TRIGGER ANOMENJ 251 ~True()~ DO 0

ALTER_TRANS ANOMENJ // file name
BEGIN 251 END // state number (can be more than one) BEGIN 0 END // transition number (can be more than one) BEGIN // list of changes, see below for flags
"ACTION" ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~
END

EXTEND_BOTTOM ANOMENJ 251
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ 203
  IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN ~CERNDJ~ 130
  IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN ~HAERDAJ~ 141
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ 194
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN ~NALIAJ~ 308
  IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN ~JANJ~ 178
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~KORGANJ~ 177
  IF ~InParty("Keldorn") !Dead("Keldorn") !Global("VP_KrRomanceActive","GLOBAL",1) !Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN ~KELDORJ~ 243
  IF ~InParty("Valygar") !Dead("Valygar") !Global("ValygarRomanceActive","GLOBAL",1) !Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYGARJ~ 103
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN ~EDWINJ~ 149
END

ADD_TRANS_TRIGGER EDWINJ 152 ~True()~ DO 0

ALTER_TRANS EDWINJ // file name
BEGIN 152 END // state number (can be more than one) BEGIN 0 END // transition number (can be more than one) BEGIN // list of changes, see below for flags
"ACTION" ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~
END

EXTEND_BOTTOM EDWINJ 152
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ 203
  IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN ~CERNDJ~ 130
  IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN ~HAERDAJ~ 141
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ 194
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN ~NALIAJ~ 308
  IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN ~JANJ~ 178
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~KORGANJ~ 177
  IF ~InParty("Keldorn") !Dead("Keldorn") !Global("VP_KrRomanceActive","GLOBAL",1) !Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN ~KELDORJ~ 243
  IF ~InParty("Valygar") !Dead("Valygar") !Global("ValygarRomanceActive","GLOBAL",1) !Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYGARJ~ 103
END

ADD_TRANS_TRIGGER VALYGARJ 104 ~True()~ DO 0

ALTER_TRANS VALYGARJ // file name
BEGIN 104 END // state number (can be more than one) BEGIN 0 END // transition number (can be more than one) BEGIN // list of changes, see below for flags
"ACTION" ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~
END

EXTEND_BOTTOM VALYGARJ 104
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ 203
  IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN ~CERNDJ~ 130
  IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN ~HAERDAJ~ 141
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ 194
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN ~NALIAJ~ 308
  IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN ~JANJ~ 178
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~KORGANJ~ 177
  IF ~InParty("Keldorn") !Dead("Keldorn") !Global("VP_KrRomanceActive","GLOBAL",1) !Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN ~KELDORJ~ 243
END

ADD_TRANS_TRIGGER KELDORJ 245 ~True()~ DO 0

ALTER_TRANS KELDORJ // file name
BEGIN 245 END // state number (can be more than one) BEGIN 0 END // transition number (can be more than one) BEGIN // list of changes, see below for flags
"ACTION" ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~
END

EXTEND_BOTTOM KELDORJ 245
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ 203
  IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN ~CERNDJ~ 130
  IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN ~HAERDAJ~ 141
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ 194
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN ~NALIAJ~ 308
  IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN ~JANJ~ 178
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~KORGANJ~ 177
END

ADD_TRANS_TRIGGER KORGANJ 179 ~True()~ DO 0

ALTER_TRANS KORGANJ // file name
BEGIN 179 END // state number (can be more than one) BEGIN 0 END // transition number (can be more than one) BEGIN // list of changes, see below for flags
"ACTION" ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~
END

EXTEND_BOTTOM KORGANJ 179
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ 203
  IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN ~CERNDJ~ 130
  IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN ~HAERDAJ~ 141
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ 194
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN ~NALIAJ~ 308
  IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN ~JANJ~ 178
END

ADD_TRANS_TRIGGER JANJ 180 ~True()~ DO 0

ALTER_TRANS JANJ // file name
BEGIN 180 END // state number (can be more than one) BEGIN 0 END // transition number (can be more than one) BEGIN // list of changes, see below for flags
"ACTION" ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~
END

EXTEND_BOTTOM JANJ 180
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ 203
  IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN ~CERNDJ~ 130
  IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN ~HAERDAJ~ 141
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ 194
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN ~NALIAJ~ 308
END

ADD_TRANS_TRIGGER NALIAJ 310 ~True()~ DO 0

ALTER_TRANS NALIAJ // file name
BEGIN 310 END // state number (can be more than one) BEGIN 0 END // transition number (can be more than one) BEGIN // list of changes, see below for flags
"ACTION" ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~
END

EXTEND_BOTTOM NALIAJ 310
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ 203
  IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN ~CERNDJ~ 130
  IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN ~HAERDAJ~ 141
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ 194
END

ADD_TRANS_TRIGGER MAZZYJ 196 ~True()~ DO 0

ALTER_TRANS MAZZYJ // file name
BEGIN 196 END // state number (can be more than one) BEGIN 0 END // transition number (can be more than one) BEGIN // list of changes, see below for flags
"ACTION" ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~
END

EXTEND_BOTTOM MAZZYJ 196
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ 203
  IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN ~CERNDJ~ 130
  IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN ~HAERDAJ~ 141
END

ADD_TRANS_TRIGGER HAERDAJ 145 ~True()~ DO 0

ALTER_TRANS HAERDAJ // file name
BEGIN 145 END // state number (can be more than one) BEGIN 0 END // transition number (can be more than one) BEGIN // list of changes, see below for flags
"ACTION" ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~
END

EXTEND_BOTTOM HAERDAJ 145
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ 203
  IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN ~CERNDJ~ 130
END

ADD_TRANS_TRIGGER CERNDJ 132 ~True()~ DO 0

ALTER_TRANS CERNDJ // file name
BEGIN 132 END // state number (can be more than one) BEGIN 0 END // transition number (can be more than one) BEGIN // list of changes, see below for flags
"ACTION" ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~
END

EXTEND_BOTTOM CERNDJ 132
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ 203
END

ALTER_TRANS MINSCJ // file name
BEGIN 203 END // state number (can be more than one) BEGIN 0 END // transition number (can be more than one) BEGIN // list of changes, see below for flags
"ACTION" ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~
END

// Slayer Attacks Lover at Rest

ALTER_TRANS PLAYER1 // file name
BEGIN 7 END // state number (can be more than one) BEGIN 0 END // transition number (can be more than one) BEGIN // list of changes, see below for flags
"TRIGGER" ~!Global("JaheiraRomanceActive","GLOBAL",1) !Global("JaheiraRomanceActive","GLOBAL",2) !Global("AerieRomanceActive","GLOBAL",1) !Global("AerieRomanceActive","GLOBAL",2) !Global("ViconiaRomanceActive","GLOBAL",1) !Global("ViconiaRomanceActive","GLOBAL",2) !Global("AnomenRomanceActive","GLOBAL",1) !Global("AnomenRomanceActive","GLOBAL",2) !Global("ValygarRomanceActive","GLOBAL",1) !Global("ValygarRomanceActive","GLOBAL",2) !Global("SimeRomanceActive","GLOBAL",1) !Global("SimeRomanceActive","GLOBAL",2) !Global("VP_KrRomanceActive","GLOBAL",1) !Global("VP_KrRomanceActive","GLOBAL",2) NumInPartyGT(1)~
END

ALTER_TRANS PLAYER1 // file name
BEGIN 7 END // state number (can be more than one) BEGIN 1 END // transition number (can be more than one) BEGIN // list of changes, see below for flags
"TRIGGER" ~!NumInPartyGT(1)~
END

ALTER_TRANS PLAYER1 // file name
BEGIN 7 END // state number (can be more than one) BEGIN 2 END // transition number (can be more than one) BEGIN // list of changes, see below for flags
"TRIGGER" ~OR(14) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2) Global("AnomenRomanceActive","GLOBAL",1) Global("AnomenRomanceActive","GLOBAL",2) Global("ValygarRomanceActive","GLOBAL",1) Global("ValygarRomanceActive","GLOBAL",2) Global("SimeRomanceActive","GLOBAL",1) Global("SimeRomanceActive","GLOBAL",2) Global("VP_KrRomanceActive","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",2)~
END

ALTER_TRANS PLAYER1 // file name
BEGIN 7 END // state number (can be more than one) BEGIN 3 END // transition number (can be more than one) BEGIN // list of changes, see below for flags
"TRIGGER" ~InParty("Jaheira") !Dead("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)~
END

ALTER_TRANS PLAYER1 // file name
BEGIN 7 END // state number (can be more than one) BEGIN 4 END // transition number (can be more than one) BEGIN // list of changes, see below for flags
"TRIGGER" ~InParty("Aerie") !Dead("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2)~
END

ALTER_TRANS PLAYER1 // file name
BEGIN 7 END // state number (can be more than one) BEGIN 5 END // transition number (can be more than one) BEGIN // list of changes, see below for flags
"TRIGGER" ~InParty("Viconia") !Dead("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~
END

ALTER_TRANS PLAYER1 // file name
BEGIN 7 END // state number (can be more than one) BEGIN 6 END // transition number (can be more than one) BEGIN // list of changes, see below for flags
"TRIGGER" ~InParty("Anomen") !Dead("Anomen") OR(2) Global("AnomenRomanceActive","GLOBAL",1) Global("AnomenRomanceActive","GLOBAL",2)~
END

EXTEND_BOTTOM PLAYER1 7
  IF ~InParty("Sime") !Dead("Sime") Gender(Player1,MALE) OR(2) Global("SimeRomanceActive","GLOBAL",1) Global("SimeRomanceActive","GLOBAL",2)~ THEN EXTERN ~SIMEJ~ slayerat
  IF ~InParty("Valygar") !Dead("Valygar") OR(2) Global("ValygarRomanceActive","GLOBAL",1) Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYGARJ~ slayerat
  IF ~InParty("Keldorn") !Dead("Keldorn") OR(2) Global("VP_KrRomanceActive","GLOBAL",1) Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN ~KELDORJ~ slayerat
END

ALTER_TRANS PLAYER1 // file name
BEGIN 10 END // state number (can be more than one) BEGIN 0 END // transition number (can be more than one) BEGIN // list of changes, see below for flags
  "TRIGGER" ~NumInPartyGT(1)~
END

ALTER_TRANS PLAYER1 // file name
BEGIN 10 END // state number (can be more than one) BEGIN 1 END // transition number (can be more than one) BEGIN // list of changes, see below for flags
  "TRIGGER" ~!NumInPartyGT(1)~
END

ALTER_TRANS PLAYER1 // file name
BEGIN 10 END // state number (can be more than one) BEGIN 2 3 4 5 END // transition number (can be more than one) BEGIN // list of changes, see below for flags
"TRIGGER" ~False()~
END

ALTER_TRANS PLAYER1 // file name
BEGIN 10 END // state number (can be more than one) BEGIN 6 END // transition number (can be more than one) BEGIN // list of changes, see below for flags
"TRIGGER" ~!Global("VP_DoNotRepeat","GLOBAL",1) Global("EndangerLovedOne","GLOBAL",1) InParty("Jaheira") !Dead("Jaheira")~
END

ALTER_TRANS PLAYER1 // file name
BEGIN 10 END // state number (can be more than one) BEGIN 7 END // transition number (can be more than one) BEGIN // list of changes, see below for flags
"TRIGGER" ~Global("EndangerLovedOne","GLOBAL",2) InParty("Aerie") !Dead("Aerie")~
END

ALTER_TRANS PLAYER1 // file name
BEGIN 10 END // state number (can be more than one) BEGIN 8 END // transition number (can be more than one) BEGIN // list of changes, see below for flags
"TRIGGER" ~Global("EndangerLovedOne","GLOBAL",3) InParty("Viconia") !Dead("Viconia")~
END

ALTER_TRANS PLAYER1 // file name
BEGIN 10 END // state number (can be more than one) BEGIN 9 END // transition number (can be more than one) BEGIN // list of changes, see below for flags
"TRIGGER" ~Global("EndangerLovedOne","GLOBAL",4) InParty("Anomen") !Dead("Anomen")~
END

ALTER_TRANS PLAYER1 // file name
BEGIN 11 END // state number (can be more than one) BEGIN 0 END // transition number (can be more than one) BEGIN // list of changes, see below for flags
"EPILOGUE" ~GOTO 12~
END

EXTEND_BOTTOM PLAYER1 25 // Finding Irenicus in Hell
  IF ~InParty("Kachiko") See("Kachiko")~ THEN UNSOLVED_JOURNAL ~Finding Irenicus in Hell

Irenicus' death did not have the same effect as Bodhi's did, and my soul has not returned to me.  Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and myself inexorably behind.  And such was the power that my party members that had fallen or were near death were drawn with us as well!  Together we are in Hell, and I am certain Irenicus is somewhere near.  Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ EXTERN ~KACHIJ~ N55
//  IF ~InParty("Dynaheir") //See("Dynaheir")~ THEN UNSOLVED_JOURNAL ~Finding Irenicus in Hell
//
//Irenicus' death did not have the same effect as Bodhi's did, and my soul has not returned to me.  Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and myself inexorably behind.  And such was the power that my party members that had fallen or were near death were drawn with us as well!  Together we are in Hell, and I am certain Irenicus is somewhere near.  Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ EXTERN ~DYNAJ~ TS03
//  IF ~InParty("Coran") //See("Coran")~ THEN UNSOLVED_JOURNAL ~Finding Irenicus in Hell
//
//Irenicus' death did not have the same effect as Bodhi's did, and my soul has not returned to me.  Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and myself inexorably behind.  And such was the power that my party members that had fallen or were near death were drawn with us as well!  Together we are in Hell, and I am certain Irenicus is somewhere near.  Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ EXTERN ~CORANJ~ TS6
  IF ~InParty("Sime") See("Sime")~ THEN UNSOLVED_JOURNAL ~Finding Irenicus in Hell

Irenicus' death did not have the same effect as Bodhi's did, and my soul has not returned to me.  Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and myself inexorably behind.  And such was the power that my party members that had fallen or were near death were drawn with us as well!  Together we are in Hell, and I am certain Irenicus is somewhere near.  Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ EXTERN ~SIMEJ~ 116
  IF ~InParty("Leina") See("Leina")~ THEN UNSOLVED_JOURNAL ~Finding Irenicus in Hell

Irenicus' death did not have the same effect as Bodhi's did, and my soul has not returned to me.  Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and myself inexorably behind.  And such was the power that my party members that had fallen or were near death were drawn with us as well!  Together we are in Hell, and I am certain Irenicus is somewhere near.  Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ EXTERN ~LEINAJ~ inhell
END

EXTEND_BOTTOM PLAYER1 33 // Tree of Life Talk
  IF ~InParty("Sime") OR(2) Global("SimeRomanceActive","GLOBAL",1) Global("SimeRomanceActive","GLOBAL",2)~ THEN GOTO TS60
//IF ~InParty("Dynaheir")~ THEN GOTO TS59
//IF ~InParty("Coran")~ THEN GOTO TS57
  IF ~InParty("Sime") OR(2) Global("SimeRomanceActive","GLOBAL",0) Global("SimeRomanceActive","GLOBAL",3)~ THEN GOTO TS56
  IF ~InParty("Kachiko")~ THEN GOTO TS55
  IF ~InParty("Yoshimo")~ THEN GOTO TS55yosh
  IF ~InParty("Keldorn") !Global("VP_KrRomanceActive","GLOBAL",0)~ THEN GOTO KR_TL0
  IF ~InParty("Leina") !Dead("Leina") Gender(Player1,MALE)~ THEN GOTO ToTLM
  IF ~InParty("Leina") !Dead("Leina") Gender(Player1,FEMALE)~ THEN GOTO ToTLF
END

ALTER_TRANS PLAYER1 // file name
BEGIN 36 END // state number (can be more than one) BEGIN 0 END // transition number (can be more than one) BEGIN // list of changes, see below for flags
"TRIGGER" ~Gender(Player1,MALE) OR(2) Dead("lavok02") Dead("lavok01")~
END

ALTER_TRANS PLAYER1 // file name
BEGIN 36 END // state number (can be more than one) BEGIN 1 END // transition number (can be more than one) BEGIN // list of changes, see below for flags
"TRIGGER" ~Gender(Player1,MALE) !Dead("lavok01") !Dead("lavok02")~
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

IF WEIGHT #-1 ~Global("VP_ResqueLeina","GLOBAL",4) Global("VP_NPC_LeinaRoom","GLOBAL",0) PartyHasItem("GovanLet")~ THEN BEGIN LQT1
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

IF WEIGHT #-2 ~Global("VP_ResqueLeina","GLOBAL",4) Global("VP_NPC_LeinaRoom","GLOBAL",0) !PartyHasItem("GovanLet")~ THEN BEGIN LQT2
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