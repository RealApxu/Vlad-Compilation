BEGIN ~KACHIJ~

// Search for Yoshimo

IF WEIGHT #0 ~Global("VP_Yoshimo_Dies","GLOBAL",3)~ THEN BEGIN yoshdied
  SAY ~Sorry, <CHARNAME>, I cannot stay with you any longer. Without Yoshimo, I have nothing to do in your party. I must go back to Kozakura. Good luck to you.~
  IF ~~ THEN DO ~SetGlobal("VP_Yoshimo_Dies","GLOBAL",4) DestroyItem("KASWOR01") DestroyItem("KASWOR02") DestroyItem("NPRING02") GivePartyAllEquipment() LeaveParty() EscapeArea()~ EXIT
END

IF WEIGHT #-1 ~Global("VP_YoshimoSearch","GLOBAL",2)~ THEN BEGIN remind_1
  SAY ~<CHARNAME>, you promised that you would lead me to Yoshimo! Yet all we are doing is running around in small circles all day!~
  IF ~~ THEN REPLY ~Oh, and I was wondering what was it that we forgot to do? Kachiko, we are going right away!~ GOTO remind_2
  IF ~~ THEN REPLY ~Girl, what do you need Yoshimo for anyway? Can't you skip your vendetta or something?~ GOTO remind_3
END

IF ~~ THEN BEGIN remind_2
  SAY ~You better act upon your word, <CHARNAME>!~
  IF ~~ THEN DO ~SetGlobal("VP_YoshimoSearch","GLOBAL",3) SetGlobalTimer("VP_KachikoLeaves","GLOBAL",TWO_DAYS)~ EXIT
END

IF ~~ THEN BEGIN remind_3
  SAY ~No, I cannot. You lied to me. You have no intention to lead me to Yoshimo! I do not need your help! I'll find Yoshimo eventually! I SWEAR I'll find him! There has to be somewhere I haven't looked!~
  IF ~~ THEN DO ~DestroyItem("KASWOR01") DestroyItem("KASWOR02") DestroyItem("NPRING02") GivePartyAllEquipment() LeaveParty() EscapeArea()~ EXIT
END

IF WEIGHT #-2 ~Global("VP_YoshimoSearch","GLOBAL",4)~ THEN BEGIN leave
  SAY ~You lied to me. You have no intention to lead me to Yoshimo! I do not need your help! I'll find Yoshimo eventually! I SWEAR I'll find him! There has to be somewhere I haven't looked!~
  IF ~~ THEN DO ~DestroyItem("KASWOR01") DestroyItem("KASWOR02") DestroyItem("NPRING02") GivePartyAllEquipment() LeaveParty() EscapeArea()~ EXIT
END

// Yoshimo is found in Copper Coronet
// 1. Yoshimo has never joined party - dialogue YOSHIMO.DLG

IF WEIGHT #-3 ~Global("VP_YoshimoSearch","GLOBAL",5) Global("MetYoshimo","GLOBAL",1) Global("VP_Yosh_WasInParty","GLOBAL",0)~ THEN BEGIN KrFix0
  SAY ~Ah, here you are, bastard! You thought you could flee far enough? I promised to find you even in Nine Hells! Prepare to die!~
  IF ~~ THEN DO ~SetGlobal("VP_YoshimoSearch","GLOBAL",6)~ EXTERN ~YOSHIMO~ TS53
END

IF ~~ THEN BEGIN KrFix1
  SAY ~Yoshimo, you sound sincere... Hmm... If what you say is true, we must come back to Kara-Tur and try to convince my family that you're not the murderer. But if you lied... <CHARNAME>, we have to leave for Kara-Tur immediately.~
  IF ~~ THEN REPLY ~Kachiko, are you going back on your promise to help me?~ GOTO KrFix2
  IF ~~ THEN REPLY ~Of course, Kachiko, I understand. Farewell.~ EXTERN ~YOSHIMO~ TS57
END

IF ~~ THEN BEGIN KrFix2
  SAY ~<CHARNAME>, do you need another companion in your group? May be you let Yoshimo to tag along? Then I can keep an eye on him and we both will help you out...~
  IF ~~ THEN EXTERN ~YOSHIMO~ TS56
END

IF ~~ THEN BEGIN KrFix3
  SAY ~You will not get away that easily! Sorry, <CHARNAME>, but I have to go after him!~
  IF ~~ THEN DO ~SetGlobal("Kicked_Out","LOCALS",1) ActionOverride("Yoshimo",EscapeArea()) ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() DestroyItem("KASWOR01") DestroyItem("KASWOR02") DestroyItem("NPRING02") GivePartyAllEquipment() LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN N4
  SAY ~Don't lie to me. You won't escape again. I'll watch you even if I have to break my word to <CHARNAME>.~
  IF ~~ THEN REPLY ~Of course, I need all help I can get. Welcome back, Yoshimo.~ EXTERN ~YOSHIMO~ TS58
  IF ~~ THEN REPLY ~I don't need your help. Go away, both of you.~ EXTERN ~YOSHIMO~ TS57
  IF ~~ THEN REPLY ~I don't know you, I don't need your problems and I grow tired of this soap opera. Perhaps killing both of you will brighten things up!~ EXTERN ~YOSHIMO~ TS59
END

IF ~~ THEN BEGIN New4
  SAY ~Farewell, <CHARNAME>.~
  IF ~~ THEN DO ~SetGlobal("Kicked_Out","LOCALS",1) SetGlobal("VP_YoshNeverJoined","GLOBAL",1) ActionOverride("Yoshimo",EscapeAreaMove("AR0313",723,319,14)) ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() LeaveParty() EscapeAreaMove("AR0313",784,333,8)~ EXIT
END

// 2. Yoshimo was kicked out from party before - dialogue YOSHP.DLG

IF WEIGHT #-4 ~Global("VP_YoshimoSearch","GLOBAL",5) Global("VP_Yosh_WasInParty","GLOBAL",1)~ THEN BEGIN 9
  SAY ~Ah, here you are, bastard! You thought you could flee far enough? I promised to find you even in Nine Hells! Prepare to die!~
  IF ~~ THEN  DO ~SetGlobal("VP_YoshimoSearch","GLOBAL",6)~ EXTERN ~YOSHP~ TS14
END

IF ~~ THEN BEGIN N10
  SAY ~Yoshimo, you sound sincere... Hmm... If what you say is true, we must come back to Kara-Tur and try to convince my family that you're not the murderer. But if you lied... <CHARNAME>, we have to leave for Kara-Tur immediately.~
  IF ~~ THEN REPLY ~Kachiko, are you going back on your promise to help me?~ GOTO N11
  IF ~~ THEN REPLY ~Of course, Kachiko, I understand. Farewell.~ DO ~SetGlobal("Kicked_Out","LOCALS",1) ~ EXTERN ~YOSHP~ TS18
END

IF ~~ THEN BEGIN N11
  SAY ~<CHARNAME>, do you need another companion in your group? May be you let Yoshimo to tag along? Then I can keep an eye on him and we both will help you out...~
  IF ~~ THEN EXTERN ~YOSHP~ TS17
END

IF ~~ THEN BEGIN N12
  SAY ~You will not get away that easily! Sorry, <CHARNAME>, but I have to go after him!~
  IF ~~ THEN DO ~ActionOverride("Yoshimo",EscapeArea()) ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() DestroyItem("KASWOR01") DestroyItem("KASWOR02") DestroyItem("NPRING02") GivePartyAllEquipment() LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN N13
  SAY ~Don't lie to me. You won't escape again. I'll watch you even if I have to break my word to <CHARNAME>.~
  IF ~~ THEN REPLY ~Of course, I need all help I can get. Welcome back, Yoshimo.~ EXTERN ~YOSHP~ TS19
  IF ~~ THEN REPLY ~I don't need your help. Go away, both of you.~ DO ~SetGlobal("Kicked_Out","LOCALS",1)~ EXTERN ~YOSHP~ TS18
  IF ~~ THEN REPLY ~I don't know you, I don't need your problems and I grow tired of this soap opera. Perhaps killing both of you will brighten things up!~ DO ~SetGlobal("Kicked_Out","LOCALS",1)~ EXTERN ~YOSHP~ TS20
END

// Parting ways, initiated by Yoshimo

IF ~~ THEN BEGIN partway1
  SAY ~Yoshimo, wait. I am leaving with you. Alone you will only get into more troubles. Sorry <CHARNAME>, but I told you from the very start that I would follow whenever he goes... and I shall do so now.~ [KACHIL26]
  IF ~~ THEN DO ~SetGlobal("Kicked_Out","LOCALS",1) ActionOverride("Yoshimo",ChangeAIScript("",DEFAULT)) ActionOverride("Yoshimo",SetLeavePartyDialogFile()) ActionOverride("Yoshimo",LeaveParty()) ActionOverride("Yoshimo",EscapeAreaMove("AR0406",1368,1922,0)) ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() LeaveParty() EscapeAreaMove("AR0406",1381,1959,1)~ EXIT
END

IF ~~ THEN BEGIN partway2
  SAY ~Yoshimo, I am staying with you. Alone you will only get into more troubles. Sorry <CHARNAME>, but I told you from the very start that I wouldn't allow him to escape... and I shan't do so now.~
  IF ~~ THEN DO ~SetGlobal("Kicked_Out","LOCALS",1) ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() LeaveParty()~ EXIT
END

// Interjections

IF ~~ THEN BEGIN N17
  SAY ~Yoshimo, does not this... man looks a bit familiar to you? It is strange but he reminds me Otako Hashimoto.~ [KACHIQ03]
  IF ~~ THEN EXTERN ~YOSHJ~ TS170
END

IF ~~ THEN BEGIN N18
  SAY ~My guess is that the spell might have worked and we are somehow moving towards solving our family feud. But why are we on an island, and not at home?~
  IF ~~ THEN REPLY ~The spell... Harpel must have done something that works for once. Let's go on, and we will have better chance to find some answers. Yoshimo, I am mourn your loss.~ EXTERN ~YOSHJ~ TS172
END

IF ~Global("Dead_Bodies","GLOBAL",3)~ THEN BEGIN N19
  SAY ~There are more bodies out there. Do you see them? I cannot look, I am afraid to find my kin among them.~
  IF ~~ THEN DO ~SetGlobal("Dead_Bodies","GLOBAL",4)~ EXIT
END

IF ~~ THEN BEGIN N20
  SAY ~Yoshimo, I appreciate what you have said. Even if you said it because you were afraid that I'd kill you both if you ever tried anything funny.~ [KACHIQ04]
  IF ~~ THEN EXTERN ~YOSHJ~ TS176
END

IF ~~ THEN BEGIN N21
  SAY ~I am surprised by your welcome, my cousin, after all those lies you told my parents to prevent me from going after Yoshimo.~ [KACHIQ05]
  IF ~~ THEN EXTERN ~MASAKI~ 1
END

IF ~~ THEN BEGIN N22
  SAY ~Hold Masaki, you are too hasty. Yoshimo is no murderer and we were going home so the proof of his innocence may be found. But now I meet you on this desolate Island, talking to me as if we are at home...~
  IF ~~ THEN EXTERN ~MASAKI~ 2
END

IF ~~ THEN BEGIN N23
  SAY ~I mourn Naoko. Yet your words scare me. What is this place? How did Hashimoto and Nakanishi come to be here? Answer me!~
  IF ~~ THEN EXTERN ~MASAKI~ 3
END

IF ~~ THEN BEGIN N24
  SAY ~Yoshimo is innocent and I will fight you if I must to protect justice, which you so eagerly discard! You are disgrace to Nakanishi's honor!~ [KACHIQ06]
  IF ~~ THEN EXTERN ~MASAKI~ 4
END

IF ~~ THEN BEGIN N25
  SAY ~Does Masaki Hayashi speak for Nakanishi family now?~
  IF ~~ THEN EXTERN ~MASAKI~ 5
END

IF ~~ THEN BEGIN N26
  SAY ~I doubt that you find it in your black heart to tell my mother that Kachiko is praying to see her and plead her case...~
  IF ~Global("Hashimoto_Visited","GLOBAL",0) ~ THEN EXTERN ~MASAKI~ 6
  IF ~Global("Hashimoto_Visited","GLOBAL",1) ~ THEN EXTERN ~MASAKI~ 7
END

IF ~~ THEN BEGIN N27
  SAY ~I go where I please. I refuse to see people as enemies because they are named Hashimoto.~ [KACHIQ07]
  IF ~~ THEN EXTERN ~MASAKI~ 8
END

IF ~~ THEN BEGIN N28
  SAY ~I am no assassin! And no one sent me!~ [KACHIQ08]
  IF ~~ THEN EXTERN ~AINO~ 2
END

IF ~~ THEN BEGIN N29
  SAY ~I am Nakanishi. Will you kill me as well?~
  IF ~~ THEN REPLY ~Do you know of any other way, Aino? I have no desire to kill scores of innocent people.~ EXTERN ~AINO~ 6
  IF ~~ THEN REPLY ~No, Kachiko, you are right. I say we kill this scheming bastard instead, take the wardstone and get outta here.~ EXTERN ~YOSHJ~ TS181
  IF ~~ THEN REPLY ~Sorry, Kachiko, I see no other choice. I really need this wardstone!~ EXTERN ~YOSHJ~ TS181
END

IF ~~ THEN BEGIN N30
  SAY ~Neither would I. Yoshimo, I love you, and if we are destined to die, then we will die together!~
  IF ~~ THEN DO ~SetGlobal("Kachiko_Hostile","GLOBAL",1)~ EXTERN ~YOSHJ~ TS182
END

//IF ~Global("VP_YoshimoExcuse","GLOBAL",1)~ THEN BEGIN N32
IF ~~ THEN BEGIN N32
//  SAY ~<CHARNAME>, you have been silent, but I think we should talk about what happened. Yoshimo had dishonorable intentions and it is your right to demand his death.~ [KACHIL06]
  SAY ~<CHARNAME>, I think we should talk about what happened. Yoshimo had dishonorable intentions and it is your right to demand his death.~
  IF ~~ THEN REPLY ~What do you mean Kachiko? That sounds a bit extreme.~ GOTO N33
  IF ~~ THEN REPLY ~Kachiko, my custom is more forgiving than the code of a samurai. I have seen Yoshimo stand against Irenicus and refuse to surrender me. I trust him. ~ GOTO N34
  IF ~~ THEN REPLY ~Glad you reminded me of the traitor. I do not wish him in my party. He may do what he wants with his life, but he may not stay.~ EXTERN ~YOSHJ~ TS218
END

IF ~~ THEN BEGIN N33
  SAY ~My <PRO_LADYLORD>, Yoshimo pledged his service to you, yet he was serving Irenicus at the same time. His intention was to deceive you. Yoshimo is not a samurai and he does not follow a strict code of honor, but his upbringing was that of a noble. His actions towards you call for ritual suicide.~
  IF ~~ THEN REPLY ~I respect your customs, but he has a noble heart, and he's faithful ally. He stood against Irenicus and refused to surrender me. I trust him.~ GOTO N34
  IF ~~ THEN REPLY ~Uh, well... He may do what he wants with his life, but he may not stay.~ EXTERN ~YOSHJ~ TS218
END

IF ~~ THEN BEGIN N34
  SAY ~So you do not see his actions as betrayal, then <CHARNAME>?~
  IF ~~ THEN REPLY ~No Kachiko, the way I see it, Yoshimo was loyal to me in deed if not always in his thoughts. I am quite comfortable with him staying in the party.~ GOTO N35
END

IF ~~ THEN BEGIN N35
  SAY ~You have a different way of thinking <CHARNAME>, but I am... I am glad you do. Yoshimo and I will prove our loyalty to you in battle. ~ [KACHIL16]
//IF ~~ THEN DO ~SetGlobal("VP_YoshimoExcuse","GLOBAL",2)~ EXIT
  IF ~~ THEN DO ~SetGlobal("VP_YoshimoExcuse","GLOBAL",2)~ EXTERN ~IMOEN2~ KachiHi
END

//IF ~~ THEN BEGIN N36
//SAY ~Yoshimo, wait. I am leaving with you. Alone you will only get into more troubles. Sorry <CHARNAME>, but I told you from the very start that I would follow whenever he goes... and I shall do so now.~ [KACHIL26]
//IF ~~ THEN DO ~ChangeAIScript("",DEFAULT) //SetLeavePartyDialogFile() //SetGlobal("Kicked_Out","LOCALS",1) //ActionOverride("Yoshimo",LeaveParty()) //ActionOverride("Yoshimo",EscapeArea()) //LeaveParty() //EscapeArea()~ EXIT
//END

IF ~~ THEN BEGIN N36
  SAY ~Yoshimo, wait. I am leaving with you. Alone you will only get into more troubles. Sorry <CHARNAME>, but I told you from the very start that I would follow whenever he goes... and I shall do so now.~ [KACHIL26]
  IF ~~ THEN EXTERN ~IMOEN2~ KachiBye
END

IF ~~ THEN BEGIN N37
  SAY ~Avenging the suffering of my family is a part of my life, <CHARNAME>. My blade is thirsty for his blood. For Nakanishi's honor! For Hashimoto's honor! No more talk! I am going!~
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
END

IF ~~ THEN BEGIN N38
  SAY ~Try to stop me! You would have to tie me up to prevent me from fighting Irenicus. For Nakanishi's honor! For Hashimoto's honor!~
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
END

IF ~~ THEN BEGIN N39
  SAY ~I have seen it, yes. I am not afraid to die if I know that Irenicus goes down with me. For Nakanishi's honor! For Hashimoto's honor!~
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
END

IF ~Global("VP_Yoshimo_Dies","GLOBAL",3) See(Player1) !StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN N40
  SAY ~Sorry, <CHARNAME>, I cannot stay with you any longer. Without Yoshimo, I have nothing to do in your party. I must go back to Kozakura. Good luck to you.~
  IF ~~ THEN DO ~SetGlobal("VP_Yoshimo_Dies","GLOBAL",4) DestroyItem("KASWOR01") DestroyItem("KASWOR02") DestroyItem("NPRING02") GivePartyAllEquipment() LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN N55
  SAY ~Are we dead? I only wished I could tell Yoshimo a proper farewell.~
  IF ~True()~ THEN EXIT
  IF ~InParty("Edwin") See("Edwin")~ THEN EXTERN ~EDWINJ~ 95
  IF ~InParty("Nalia") See("Nalia")~ THEN EXTERN ~NALIAJ~ 268
  IF ~InParty("Keldorn") See("Keldorn")~ THEN EXTERN ~KELDORJ~ 189
  IF ~InParty("Haerdalis") See("Haerdalis")~ THEN EXTERN ~HAERDAJ~ 100
  IF ~InParty("Anomen") See("Anomen")~ THEN EXTERN ~ANOMENJ~ 258
  IF ~InParty("Mazzy") See("Mazzy")~ THEN EXTERN ~MAZZYJ~ 166
  IF ~InParty("Cernd") See("Cernd")~ THEN EXTERN ~CERNDJ~ 100
  IF ~InParty("Jaheira") See("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ 450
  IF ~InParty("Yoshimo") See("Yoshimo")~ THEN EXTERN ~YOSHJ~ 90
  IF ~InParty("Viconia") See("Viconia")~ THEN EXTERN ~VICONIJ~ 117
  IF ~InParty("Jan") See("Jan")~ THEN EXTERN ~JANJ~ 147
  IF ~InParty("Korgan") See("Korgan")~ THEN EXTERN ~KORGANJ~ 115
  IF ~InParty("Valygar") See("Valygar")~ THEN EXTERN ~VALYGARJ~ 77
  IF ~InParty("Minsc") See("Minsc")~ THEN EXTERN ~MINSCJ~ 155
  IF ~InParty("Aerie") See("Aerie")~ THEN EXTERN ~AERIEJ~ 131
  IF ~InParty("Imoen2") See("Imoen2")~ THEN EXTERN ~IMOEN2J~ 10
END

/////////////////////////////////////////////
//  SailOff  //
/////////////////////////////////////////////

IF ~~ THEN BEGIN sailoff1
  SAY ~Wait a minute! The ship is ours to take anywhere, right? <CHARNAME>, can we go to Kara-Tur now?~
  IF ~~ THEN REPLY ~Saemon, I have little knowledge of the sea travel. Can you tell me how long will it take us to get to Kara-Tur by sea?~ EXTERN ~PPSAEM~ TS7
END

IF ~~ THEN BEGIN sailoff2
  SAY ~Oh, we will see Kara-Turian shores and prove that Yoshimo is innocent and restore peace between our families. I agree with you, <CHARNAME>, let the fate decide! Cast the spell captain Havarian!~
  IF ~~ THEN EXTERN ~PPSAEM~ TS2
END

IF ~~ THEN BEGIN sailoff3
  SAY ~Good luck to you, <CHARNAME>. Farewell.~
  IF ~~ THEN EXTERN ~PPSAEM~ TS9
END

IF ~~ THEN BEGIN Kr_WarTk
  SAY ~And I'll follow Yoshimo wherever he goes. He won't escape from me this time.~
  IF ~!IfValidForPartyDialogue("Edwin")~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("KRCut04")~ EXIT
  IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kr_WarTk
END

IF ~~ THEN BEGIN Kelem0 //46
  SAY ~How so? How did this happen? I ... I wanted to avenge the death of Naoko, but got killed! I'm so clumsy, I let her kill myself! I didn't train well, not enough. I should spend more time on the art of swording!~
  = ~But what could I possibly do against the daughter of the god of murder! Oh, I had to ask her a few lessons.~
  IF ~~ THEN REPLY ~Kachiko! Kachiko, what are you talking about? You are not guilty at all. Bhaal took a control of me.~ GOTO Kelem1
  IF ~~ THEN REPLY ~Kachiko, if the most famous sword master of Kara-Tur were at you place, he would also have found himself powerless.~ GOTO Kelem2
  IF ~~ THEN REPLY ~Kachiko, it is I who should ask your forgiveness! You're a nice girl and suffered because of my stupidity and arrogance.~ GOTO Kelem3
END

IF ~~ THEN BEGIN Kelem1
  SAY ~Bhaal! Why, <CHARNAME>? How did he manage to take control over you? Are your gods doing that?~
  IF ~~ THEN REPLY ~The matter of fact is that I placed the ring, which the priest of Kelemvor brought to Keldorn, on my finger, and lost control of myself.~ GOTO Kelem4
  IF ~~ THEN REPLY ~It's all my fault, Kachiko. Keldorn warned me not to wear the ring, but I did not listen.~ GOTO Kelem4
END

IF ~~ THEN BEGIN Kelem2
  SAY ~Are you sure?~
  IF ~~ THEN REPLY ~I'm sure. The Ring of Cyric gave me the power of god.~ GOTO Kelem5
  IF ~~ THEN REPLY ~Unfortunately, yes. No mortal can compete with a god.~ GOTO Kelem5
END

IF ~~ THEN BEGIN Kelem3
  SAY ~I remember you placed the ring on a finger. Why? Can it resurrect?~
  IF ~~ THEN REPLY ~I dont know. But I was hoping that gaining the power of god, I'd be able to save Keldorn. Instead, I killed you all.~ GOTO Kelem5
  IF ~~ THEN REPLY ~I hoped so. No priest could help Keldorn, only the power of god could save him. But let's go, I want to take you out of here.~ GOTO Kelem6
END

IF ~~ THEN BEGIN Kelem4
  SAY ~And you could not take it off yourself? Where is it now?~
  IF ~~ THEN REPLY ~Kelemvor, the god of death, took it off me. Let's go, Kachiko, it's time to come back.~ GOTO Kelem6
END

IF ~~ THEN BEGIN Kelem5
  SAY ~(Shudders) I wouldn't want to experience that. Will you help me and Yoshimo to go back?~
  IF ~~ THEN REPLY ~Sure, Kachiko, let's go.~ GOTO Kelem6
END

IF ~~ THEN BEGIN Kelem6
  SAY ~Of course! I don't want to stay here any longer.~
  IF ~True()~ THEN EXTERN ~KELEMVOR~ 4A
  IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kelem0
END

IF ~~ THEN BEGIN NEJ56
  SAY ~This land suprises me more and more. To find a man not afraid to lay bare his heart and soul to a woman, to risk rejection is a rare man indeed. This Govan will surely be upset to discover that his love is missing.~
  IF ~True()~ THEN DO ~SetGlobal("VP_NPC_LeinaRoom","GLOBAL",1)~ EXIT
  IF ~InParty("Hrothgar")~ THEN EXTERN ~HROTHJ~ 47
  IF ~InParty("Valygar")~ THEN EXTERN ~VALYGARJ~ NEJ157
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ259
  IF ~InParty("Dar")~ THEN EXTERN ~DARJ~ 7
  IF ~InParty("Viconia")~ THEN EXTERN ~VICONIJ~ NEJ185
  IF ~InParty("Mazzy")~ THEN EXTERN ~MAZZYJ~ NEJ205
  IF ~InParty("Aerie")~ THEN EXTERN ~AERIEJ~ NEJ221
  IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ544
END

IF ~~ THEN BEGIN NEJ57
  SAY ~Curious, you are worried for another's safety, Yoshimo? I cannot believe that you show concern for a girl you hardly know. Your flight from Kara-Tur was the action of a coward who's only thought was, and always will be, for his own skin.~
  IF ~True()~ THEN EXTERN ~HROTHJ~ 60
  IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ546
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ260
END

IF ~~ THEN BEGIN NEJ58
  SAY ~I do not believe I will find Yoshimo Hashimoto among these ruins, <CHARNAME>. I am certain his trail ends somewhere here in Athkatla, but then, I never was very good at tracking, he could be hiding out in such a place, I will follow for now.~
  IF ~True()~ THEN EXTERN ~HROTHJ~ 60
  IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ546
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ260
END

IF ~~ THEN BEGIN NEJ59
  SAY ~When I left Kara-Tur, I knew I had a long journey ahead of me but I never dreamt that my hunt for Yoshimo Hashimoto would take me so far!~
  IF ~True()~ THEN EXTERN ~TILORN~ 19
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ261
END

IF ~~ THEN BEGIN NEJ60
  SAY ~I know of magic, <CHARNAME>. I sense that this mage is powerful, but his power is nothing compared to the power unleashed should we be forced to face the wrath of the whole academy! Let us do what we must quickly!~
  IF ~True()~ THEN EXTERN ~RAYVON~ 2
  IF ~InParty("Hrothgar") !Dead("Hrothgar")~ THEN EXTERN ~HROTHJ~ rayvon2
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN ~EDWINJ~ rayvon
  IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN ~YOSHJ~ NEJ155
END

IF ~~ THEN BEGIN NEJ61
  SAY ~Sure, I'll do it.~
  IF ~~ THEN DO ~SetGlobal("VP_Kachi_EnchQuest","GLOBAL",1)~ EXTERN ~XANH~ 23
END

IF ~~ THEN BEGIN NEJ62
  SAY ~A girl can only do what a girl can do, and only then if she has the right spells for the task! So less of the sarcasm if you please <CHARNAME>.~
  IF ~~ THEN EXTERN ~XANH~ 37
END

IF ~~ THEN BEGIN NEJ63
  SAY ~Sure, I'll do it.~
  IF ~~ THEN DO ~SetGlobal("VP_Kachi_AbjQuest","GLOBAL",1)~ EXTERN ~TUPHIN~ 7
END

IF ~~ THEN BEGIN NEJ64
  SAY ~Sure, I'll do it.~
  IF ~~ THEN DO ~SetGlobal("VP_Kachi_InvQuest","GLOBAL",1)~ EXTERN ~TUTHEOD~ 27
END

IF ~~ THEN BEGIN NEJ65
  SAY ~Sure, I'll do it.~
  IF ~~ THEN DO ~SetGlobal("VP_Kachi_InvQuest","GLOBAL",1)~ EXTERN ~TUTHEOD~ 30
END

IF ~~ THEN BEGIN NEJ66
  SAY ~Sure, I'll do it.~
  IF ~~ THEN DO ~SetGlobal("VP_Kachi_IllQuest","GLOBAL",1)~ EXTERN ~TUVASHON~ 18
END

IF ~~ THEN BEGIN NEJ67
  SAY ~Ok, I am ready.~
  IF ~~ THEN DO ~SetGlobal("VP_Kachi_ConQuest","GLOBAL",1)~ EXTERN ~TUMORD~ 15
END

IF ~~ THEN BEGIN NEJ68
  SAY ~What can I say? I am sorry.~
  IF ~~ THEN REPLY ~Do we need an intelligence check or something here? All you had to do was to read a couple of scrolls... you can read can't you?~ GOTO NEJ69
  IF ~!Class(Player1,MAGE_ALL)~ THEN REPLY ~I don't understand a lot about magic but surely it has to be easier to read scrolls then trying to remember spells that have been memorised?~ GOTO NEJ69
END

IF ~~ THEN BEGIN NEJ69
  SAY ~A spell is a spell whether it is cast from a scroll or cast from memory, there is no guarantee that it will be cast successfully. The slightest distraction or missed word and the spell will be lost or miscast.~
  IF ~~ THEN DO ~ActionOverride("TuMord",EscapeArea())~ EXIT
END

IF ~~ THEN BEGIN NEJ70
  SAY ~Sure, I'll do it.~
  IF ~~ THEN DO ~SetGlobal("VP_Kachi_TraQuest","GLOBAL",1)~ EXTERN ~TUMALV~ 20
END

IF ~~ THEN BEGIN tranfail
  SAY ~What can I say? I am sorry.~
  IF ~~ THEN REPLY ~You failed, a simple kill the monster and open the chest task! It isn't as if you haven't done it before.~ GOTO tranfai2
  IF ~~ THEN REPLY ~It's not that important. What is important is that Malvolio got you out safely.~ GOTO tranfai3
END

IF ~~ THEN BEGIN tranfai2
  SAY ~Even then, with the aid of the group, we didn't always get it right first time.~
  IF ~True()~ THEN EXTERN ~TUMALV~ 24
  IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN ~YOSHJ~ tranfail
END

IF ~~ THEN BEGIN tranfai3
  SAY ~Thank you <CHARNAME>, but with my training, I should have been able to handle that better than I did.~
  IF ~True()~ THEN EXTERN ~TUMALV~ 24
  IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN ~YOSHJ~ tranfail
END

IF ~~ THEN BEGIN invfail
  SAY ~What can I say? I am sorry.~
  IF ~~ THEN REPLY ~That was abysmal! With all the spells you have at your disposal, I can not believe that you couldn't take care of a few pesky pests!~ GOTO invfail2
  IF ~~ THEN REPLY ~It happens. I was probably expecting too much letting you go into a situation you hadn't been given time to prepare for.~GOTO invfail2
END

IF ~~ THEN BEGIN invfail2
  SAY ~I am Kensai as well as mage <CHARNAME>, trained with sword as well as magic. If I had been permitted  to use the skills that I have been trained to use, then believe me, those vermin would be dead by now.~
  IF ~~ THEN EXTERN ~TUTHEOD~ failtest
END

IF ~~ THEN BEGIN tafficuh
  SAY ~I... I do not know what I should say to you Taffic.~
  IF ~True()~ THEN EXTERN ~TAFFICP~ umberhk3
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ tafficuh
END

IF ~~ THEN BEGIN NEJ701
  SAY ~I am confident I can do this.~
  IF ~~ THEN DO ~SetGlobal("VP_Kachi_TraQuest","GLOBAL",1)~ EXTERN ~TUMALV~ 20
END

IF ~~ THEN BEGIN abjurer2
  SAY ~What can I say? I am sorry.~
  IF ~~ THEN REPLY ~You call yourself a mage? Thanks to your incompetence, girl, we have lost some valuable prizes.~ GOTO abjurer3
  IF ~~ THEN REPLY ~It happens, we win some we lose some, I am sure you gave it your best shot.~ GOTO abjurer4
END

IF ~~ THEN BEGIN abjurer3
  SAY ~I apologised, but if trinkets are worth more to you than a competent warrior mage, don't hesitate to say and I will be out of your hair.~
  IF ~~ THEN EXTERN ~TUPHIN~ npcfail
END

IF ~~ THEN BEGIN abjurer4
  SAY ~I am only sorry that my best shot was not enough.~
  IF ~~ THEN EXTERN ~TUPHIN~ npcfail
END

IF ~~ THEN BEGIN vashon
  SAY ~I am sorry <CHARNAME>, what more can I say?~
  IF ~~ THEN REPLY ~If I had a gold piece for each time I heard sorry for an excuse, I would be rich beyond your imaginings. Sorry is never an excuse for failure.~ GOTO vashon3
  IF ~~ THEN REPLY ~No matter, you couldn't have second guessed Vashon's test, no one could... not even if you'd been a diviner.~ GOTO vashon4
END

IF ~~ THEN BEGIN vashon3
  SAY ~It was an apology not an excuse, but I guess you wouldn't understand the difference.~
  IF ~~ THEN EXTERN ~TUVASHON~ npcfail
END

IF ~~ THEN BEGIN vashon4
  SAY ~Being kensai trained first, I often forget how powerful my magic is. Knowing I can always fall back on my sword in any situation that arises, means I can be quite neglectful of my magic.~
  = ~Now that I have chosen to be a mage I must give more thought to preparing my spell book more wisely.~
  IF ~~ THEN EXTERN ~TUVASHON~ npcfail
END