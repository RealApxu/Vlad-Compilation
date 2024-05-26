BEGIN VPKACJ

// Search for Yoshimo

CHAIN
IF WEIGHT #0 ~Global("VP_Yoshimo_Dies","GLOBAL",3)~ THEN VPKACJ yoshdied
~Sorry, <CHARNAME>, I cannot stay with you any longer. Without Yoshimo, I have nothing to do in your party. I must go back to Kozakura. Good luck to you.~
DO ~SetGlobal("VP_Yoshimo_Dies","GLOBAL",4) DestroyItem("KASWOR01") DestroyItem("KASWOR02") DestroyItem("NPRING02") GivePartyAllEquipment() LeaveParty() EscapeArea()~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("VP_YoshimoSearch","GLOBAL",2)~ THEN VPKACJ remind_1
~<CHARNAME>, you promised that you would lead me to Yoshimo! Yet all we are doing is running around in small circles all day!~
END
 ++ ~Oh, and I was wondering what was it that we forgot to do? Kachiko, we are going right away!~ EXTERN VPKACJ remind_2
 ++ ~Girl, what do you need Yoshimo for anyway? Can't you skip your vendetta or something?~ EXTERN VPKACJ remind_3

CHAIN VPKACJ remind_2
~You better act upon your word, <CHARNAME>!~
DO ~SetGlobal("VP_YoshimoSearch","GLOBAL",3) SetGlobalTimer("VP_KachikoLeaves","GLOBAL",TWO_DAYS)~
EXIT

CHAIN VPKACJ remind_3
~No, I cannot. You lied to me. You have no intention to lead me to Yoshimo! I do not need your help! I'll find Yoshimo eventually! I SWEAR I'll find him! There has to be somewhere I haven't looked!~
DO ~DestroyItem("KASWOR01") DestroyItem("KASWOR02") DestroyItem("NPRING02") GivePartyAllEquipment() LeaveParty() EscapeArea()~
EXIT

CHAIN
IF WEIGHT #-2 ~Global("VP_YoshimoSearch","GLOBAL",4)~ THEN VPKACJ leave
~You lied to me. You have no intention to lead me to Yoshimo! I do not need your help! I'll find Yoshimo eventually! I SWEAR I'll find him! There has to be somewhere I haven't looked!~
DO ~DestroyItem("KASWOR01") DestroyItem("KASWOR02") DestroyItem("NPRING02") GivePartyAllEquipment() LeaveParty() EscapeArea()~
EXIT

// Yoshimo is found in Copper Coronet
// 1. Yoshimo has never joined party - dialogue YOSHIMO.DLG
CHAIN
IF WEIGHT #-3 ~Global("VP_YoshimoSearch","GLOBAL",5) Global("MetYoshimo","GLOBAL",1) Global("VP_Yosh_WasInParty","GLOBAL",0)~ THEN VPKACJ KrFix0
~Ah, here you are, bastard! You thought you could flee far enough? I promised to find you even in Nine Hells! Prepare to die!~
DO ~SetGlobal("VP_YoshimoSearch","GLOBAL",6)~
EXTERN YOSHIMO TS53

CHAIN VPKACJ KrFix1
~Yoshimo, you sound sincere... Hmm... If what you say is true, we must come back to Kara-Tur and try to convince my family that you're not the murderer. But if you lied... <CHARNAME>, we have to leave for Kara-Tur immediately.~
END
 ++ ~Kachiko, are you going back on your promise to help me?~ EXTERN VPKACJ KrFix2
 ++ ~Of course, Kachiko, I understand. Farewell.~ EXTERN YOSHIMO TS57

CHAIN VPKACJ KrFix2
~<CHARNAME>, do you need another companion in your group? May be you let Yoshimo to tag along? Then I can keep an eye on him and we both will help you out...~
EXTERN YOSHIMO TS56

CHAIN VPKACJ KrFix3
~You will not get away that easily! Sorry, <CHARNAME>, but I have to go after him!~
DO ~SetGlobal("Kicked_Out","LOCALS",1) ActionOverride("Yoshimo",EscapeArea()) ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() DestroyItem("KASWOR01") DestroyItem("KASWOR02") DestroyItem("NPRING02") GivePartyAllEquipment() LeaveParty() EscapeArea()~
EXIT

CHAIN VPKACJ N4
~Don't lie to me. You won't escape again. I'll watch you even if I have to break my word to <CHARNAME>.~
END
 ++ ~Of course, I need all help I can get. Welcome back, Yoshimo.~ EXTERN YOSHIMO TS58
 ++ ~I don't need your help. Go away, both of you.~ EXTERN YOSHIMO TS57
 ++ ~I don't know you, I don't need your problems and I grow tired of this soap opera. Perhaps killing both of you will brighten things up!~ EXTERN YOSHIMO TS59

CHAIN VPKACJ New4
~Farewell, <CHARNAME>.~
DO ~SetGlobal("Kicked_Out","LOCALS",1) SetGlobal("VP_YoshNeverJoined","GLOBAL",1) ActionOverride("Yoshimo",EscapeAreaMove("AR0313",723,319,14)) ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() LeaveParty() EscapeAreaMove("AR0313",784,333,8)~
EXIT

// 2. Yoshimo was kicked out from party before - dialogue YOSHP.DLG

CHAIN
IF WEIGHT #-4 ~Global("VP_YoshimoSearch","GLOBAL",5) Global("VP_Yosh_WasInParty","GLOBAL",1)~ THEN VPKACJ 9
~Ah, here you are, bastard! You thought you could flee far enough? I promised to find you even in Nine Hells! Prepare to die!~
DO ~SetGlobal("VP_YoshimoSearch","GLOBAL",6)~
EXTERN YOSHP TS14

CHAIN VPKACJ N10
~Yoshimo, you sound sincere... Hmm... If what you say is true, we must come back to Kara-Tur and try to convince my family that you're not the murderer. But if you lied... <CHARNAME>, we have to leave for Kara-Tur immediately.~
END
 ++ ~Kachiko, are you going back on your promise to help me?~ EXTERN VPKACJ N11
 ++ ~Of course, Kachiko, I understand. Farewell.~ DO ~SetGlobal("Kicked_Out","LOCALS",1)~ EXTERN YOSHP TS18

CHAIN VPKACJ N11
~<CHARNAME>, do you need another companion in your group? May be you let Yoshimo to tag along? Then I can keep an eye on him and we both will help you out...~
EXTERN YOSHP TS17

CHAIN VPKACJ N12
~You will not get away that easily! Sorry, <CHARNAME>, but I have to go after him!~
DO ~ActionOverride("Yoshimo",EscapeArea()) ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() DestroyItem("KASWOR01") DestroyItem("KASWOR02") DestroyItem("NPRING02") GivePartyAllEquipment() LeaveParty() EscapeArea()~
EXIT

CHAIN VPKACJ N13
~Don't lie to me. You won't escape again. I'll watch you even if I have to break my word to <CHARNAME>.~
END
 ++ ~Of course, I need all help I can get. Welcome back, Yoshimo.~ EXTERN YOSHP TS19
 ++ ~I don't need your help. Go away, both of you.~ DO ~SetGlobal("Kicked_Out","LOCALS",1)~ EXTERN YOSHP TS18
 ++ ~I don't know you, I don't need your problems and I grow tired of this soap opera. Perhaps killing both of you will brighten things up!~ DO ~SetGlobal("Kicked_Out","LOCALS",1)~ EXTERN YOSHP TS20

// Parting ways, initiated by Yoshimo

CHAIN VPKACJ partway1
~Yoshimo, wait. I am leaving with you. Alone you will only get into more troubles. Sorry <CHARNAME>, but I told you from the very start that I would follow whenever he goes... and I shall do so now.~ [KACHIL26]
DO ~SetGlobal("Kicked_Out","LOCALS",1) ActionOverride("Yoshimo",ChangeAIScript("",DEFAULT)) ActionOverride("Yoshimo",SetLeavePartyDialogFile()) ActionOverride("Yoshimo",LeaveParty()) ActionOverride("Yoshimo",EscapeAreaMove("AR0406",1368,1922,0)) ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() LeaveParty() EscapeAreaMove("AR0406",1381,1959,1)~
EXIT

CHAIN VPKACJ partway2
~Yoshimo, I am staying with you. Alone you will only get into more troubles. Sorry <CHARNAME>, but I told you from the very start that I wouldn't allow him to escape... and I shan't do so now.~
DO ~SetGlobal("Kicked_Out","LOCALS",1) ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() LeaveParty()~
EXIT

// Interjections

CHAIN VPKACJ N17
~Yoshimo, does not this... man looks a bit familiar to you? It is strange but he reminds me Otako Hashimoto.~ [KACHIQ03]
EXTERN YOSHJ TS170

CHAIN VPKACJ N18
~My guess is that the spell might have worked and we are somehow moving towards solving our family feud. But why are we on an island, and not at home?~
END
 ++ ~The spell... Harpel must have done something that works for once. Let's go on, and we will have better chance to find some answers. Yoshimo, I am mourn your loss.~ EXTERN YOSHJ TS172

CHAIN
IF ~Global("Dead_Bodies","GLOBAL",3)~ THEN VPKACJ N19
~There are more bodies out there. Do you see them? I cannot look, I am afraid to find my kin among them.~
DO ~SetGlobal("Dead_Bodies","GLOBAL",4)~
EXIT

CHAIN VPKACJ N20
~Yoshimo, I appreciate what you have said. Even if you said it because you were afraid that I'd kill you both if you ever tried anything funny.~ [KACHIQ04]
EXTERN YOSHJ TS176

CHAIN VPKACJ N21
~I am surprised by your welcome, my cousin, after all those lies you told my parents to prevent me from going after Yoshimo.~ [KACHIQ05]
EXTERN MASAKI 1

CHAIN VPKACJ N22
~Hold Masaki, you are too hasty. Yoshimo is no murderer and we were going home so the proof of his innocence may be found. But now I meet you on this desolate Island, talking to me as if we are at home...~
EXTERN MASAKI 2

CHAIN VPKACJ N23
~I mourn Naoko. Yet your words scare me. What is this place? How did Hashimoto and Nakanishi come to be here? Answer me!~
EXTERN MASAKI 3

CHAIN VPKACJ N24
~Yoshimo is innocent and I will fight you if I must to protect justice, which you so eagerly discard! You are disgrace to Nakanishi's honor!~ [KACHIQ06]
EXTERN MASAKI 4

CHAIN VPKACJ N25
~Does Masaki Hayashi speak for Nakanishi family now?~
EXTERN MASAKI 5

CHAIN VPKACJ N26
~I doubt that you find it in your black heart to tell my mother that Kachiko is praying to see her and plead her case...~
END
 IF ~Global("Hashimoto_Visited","GLOBAL",0) ~ THEN EXTERN MASAKI 6
 IF ~Global("Hashimoto_Visited","GLOBAL",1) ~ THEN EXTERN MASAKI 7

CHAIN VPKACJ N27
~I go where I please. I refuse to see people as enemies because they are named Hashimoto.~ [KACHIQ07]
EXTERN MASAKI 8

CHAIN VPKACJ N28
~I am no assassin! And no one sent me!~ [KACHIQ08]
EXTERN AINO 2

CHAIN VPKACJ N29
~I am Nakanishi. Will you kill me as well?~
END
 ++ ~Do you know of any other way, Aino? I have no desire to kill scores of innocent people.~ EXTERN AINO 6
 ++ ~No, Kachiko, you are right. I say we kill this scheming bastard instead, take the wardstone and get outta here.~ EXTERN YOSHJ TS181
 ++ ~Sorry, Kachiko, I see no other choice. I really need this wardstone!~ EXTERN YOSHJ TS181

CHAIN VPKACJ N30
~Neither would I. Yoshimo, I love you, and if we are destined to die, then we will die together!~
DO ~SetGlobal("Kachiko_Hostile","GLOBAL",1)~
EXTERN YOSHJ TS182

//IF ~Global("VP_YoshimoExcuse","GLOBAL",1)~ THEN VPKACJ N32
CHAIN VPKACJ N32
//~<CHARNAME>, you have been silent, but I think we should talk about what happened. Yoshimo had dishonorable intentions and it is your right to demand his death.~ [KACHIL06]
~<CHARNAME>, I think we should talk about what happened. Yoshimo had dishonorable intentions and it is your right to demand his death.~
END
 ++ ~What do you mean Kachiko? That sounds a bit extreme.~ EXTERN VPKACJ N33
 ++ ~Kachiko, my custom is more forgiving than the code of a samurai. I have seen Yoshimo stand against Irenicus and refuse to surrender me. I trust him. ~ EXTERN VPKACJ N34
 ++ ~Glad you reminded me of the traitor. I do not wish him in my party. He may do what he wants with his life, but he may not stay.~ EXTERN YOSHJ TS218

CHAIN VPKACJ N33
~My <PRO_LADYLORD>, Yoshimo pledged his service to you, yet he was serving Irenicus at the same time. His intention was to deceive you. Yoshimo is not a samurai and he does not follow a strict code of honor, but his upbringing was that of a noble. His actions towards you call for ritual suicide.~
END
 ++ ~I respect your customs, but he has a noble heart, and he's faithful ally. He stood against Irenicus and refused to surrender me. I trust him.~ EXTERN VPKACJ N34
 ++ ~Uh, well... He may do what he wants with his life, but he may not stay.~ EXTERN YOSHJ TS218

CHAIN VPKACJ N34
~So you do not see his actions as betrayal, then <CHARNAME>?~
END
 ++ ~No Kachiko, the way I see it, Yoshimo was loyal to me in deed if not always in his thoughts. I am quite comfortable with him staying in the party.~ EXTERN VPKACJ N35

CHAIN VPKACJ N35
~You have a different way of thinking <CHARNAME>, but I am... I am glad you do. Yoshimo and I will prove our loyalty to you in battle. ~ [KACHIL16]
//IF ~~ THEN DO ~SetGlobal("VP_YoshimoExcuse","GLOBAL",2)~ EXIT
DO ~SetGlobal("VP_YoshimoExcuse","GLOBAL",2)~
EXTERN IMOEN2 KachiHi

/*
CHAIN VPKACJ N36
~Yoshimo, wait. I am leaving with you. Alone you will only get into more troubles. Sorry <CHARNAME>, but I told you from the very start that I would follow whenever he goes... and I shall do so now.~ [KACHIL26]
DO ~ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() SetGlobal("Kicked_Out","LOCALS",1) ActionOverride("Yoshimo",LeaveParty()) ActionOverride("Yoshimo",EscapeArea()) LeaveParty() EscapeArea()~
EXIT
*/

CHAIN VPKACJ N36
~Yoshimo, wait. I am leaving with you. Alone you will only get into more troubles. Sorry <CHARNAME>, but I told you from the very start that I would follow whenever he goes... and I shall do so now.~ [KACHIL26]
EXTERN IMOEN2 KachiBye

CHAIN VPKACJ N37
~Avenging the suffering of my family is a part of my life, <CHARNAME>. My blade is thirsty for his blood. For Nakanishi's honor! For Hashimoto's honor! No more talk! I am going!~
END
 IF ~True()~ THEN EXTERN PLAYER1 53
 IF ~InParty("Anomen") Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 52
 IF ~InParty("Aerie") Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 51
 IF ~InParty("Viconia") Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 50
 IF ~InParty("Jaheira") Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 49
 IF ~InParty("Anomen") !Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 48
 IF ~InParty("Aerie") !Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 47
 IF ~InParty("Viconia") !Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 46
 IF ~InParty("Jaheira") !Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 45
 IF ~InParty("Cernd")~ THEN EXTERN PLAYER1 44
 IF ~InParty("Nalia")~ THEN EXTERN PLAYER1 43
 IF ~InParty("Korgan")~ THEN EXTERN PLAYER1 42
 IF ~InParty("HaerDalis")~ THEN EXTERN PLAYER1 40
 IF ~InParty("Edwin")~ THEN EXTERN PLAYER1 39
 IF ~InParty("Jan")~ THEN EXTERN PLAYER1 38
 IF ~InParty("Mazzy")~ THEN EXTERN PLAYER1 37
 IF ~InParty("Valygar")~ THEN EXTERN PLAYER1 36
 IF ~InParty("Minsc")~ THEN EXTERN PLAYER1 35
 IF ~InParty("Imoen2")~ THEN EXTERN PLAYER1 34
 IF ~InParty("Sime") OR(2) Global("SimeRomanceActive","GLOBAL",1) Global("SimeRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 TS60
 IF ~InParty("Sime") OR(2) Global("SimeRomanceActive","GLOBAL",0) Global("SimeRomanceActive","GLOBAL",3)~ THEN EXTERN PLAYER1 TS56

CHAIN VPKACJ N38
~Try to stop me! You would have to tie me up to prevent me from fighting Irenicus. For Nakanishi's honor! For Hashimoto's honor!~
END
 IF ~True()~ THEN EXTERN PLAYER1 53
 IF ~InParty("Anomen") Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 52
 IF ~InParty("Aerie") Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 51
 IF ~InParty("Viconia") Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 50
 IF ~InParty("Jaheira") Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 49
 IF ~InParty("Anomen") !Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 48
 IF ~InParty("Aerie") !Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 47
 IF ~InParty("Viconia") !Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 46
 IF ~InParty("Jaheira") !Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 45
 IF ~InParty("Cernd")~ THEN EXTERN PLAYER1 44
 IF ~InParty("Nalia")~ THEN EXTERN PLAYER1 43
 IF ~InParty("Korgan")~ THEN EXTERN PLAYER1 42
 IF ~InParty("HaerDalis")~ THEN EXTERN PLAYER1 40
 IF ~InParty("Edwin")~ THEN EXTERN PLAYER1 39
 IF ~InParty("Jan")~ THEN EXTERN PLAYER1 38
 IF ~InParty("Mazzy")~ THEN EXTERN PLAYER1 37
 IF ~InParty("Valygar")~ THEN EXTERN PLAYER1 36
 IF ~InParty("Minsc")~ THEN EXTERN PLAYER1 35
 IF ~InParty("Imoen2")~ THEN EXTERN PLAYER1 34
 IF ~InParty("Sime") OR(2) Global("SimeRomanceActive","GLOBAL",1) Global("SimeRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 TS60
 IF ~InParty("Sime") OR(2) Global("SimeRomanceActive","GLOBAL",0) Global("SimeRomanceActive","GLOBAL",3)~ THEN EXTERN PLAYER1 TS56

CHAIN VPKACJ N39
~I have seen it, yes. I am not afraid to die if I know that Irenicus goes down with me. For Nakanishi's honor! For Hashimoto's honor!~
END
 IF ~True()~ THEN EXTERN PLAYER1 53
 IF ~InParty("Anomen") Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 52
 IF ~InParty("Aerie") Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 51
 IF ~InParty("Viconia") Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 50
 IF ~InParty("Jaheira") Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 49
 IF ~InParty("Anomen") !Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 48
 IF ~InParty("Aerie") !Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 47
 IF ~InParty("Viconia") !Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 46
 IF ~InParty("Jaheira") !Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 45
 IF ~InParty("Cernd")~ THEN EXTERN PLAYER1 44
 IF ~InParty("Nalia")~ THEN EXTERN PLAYER1 43
 IF ~InParty("Korgan")~ THEN EXTERN PLAYER1 42
 IF ~InParty("HaerDalis")~ THEN EXTERN PLAYER1 40
 IF ~InParty("Edwin")~ THEN EXTERN PLAYER1 39
 IF ~InParty("Jan")~ THEN EXTERN PLAYER1 38
 IF ~InParty("Mazzy")~ THEN EXTERN PLAYER1 37
 IF ~InParty("Valygar")~ THEN EXTERN PLAYER1 36
 IF ~InParty("Minsc")~ THEN EXTERN PLAYER1 35
 IF ~InParty("Imoen2")~ THEN EXTERN PLAYER1 34
 IF ~InParty("Sime") OR(2) Global("SimeRomanceActive","GLOBAL",1) Global("SimeRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 TS60
 IF ~InParty("Sime") OR(2) Global("SimeRomanceActive","GLOBAL",0) Global("SimeRomanceActive","GLOBAL",3)~ THEN EXTERN PLAYER1 TS56

CHAIN
IF ~Global("VP_Yoshimo_Dies","GLOBAL",3) See(Player1) !StateCheck(Player1,STATE_SLEEPING)~ THEN VPKACJ N40
~Sorry, <CHARNAME>, I cannot stay with you any longer. Without Yoshimo, I have nothing to do in your party. I must go back to Kozakura. Good luck to you.~
DO ~SetGlobal("VP_Yoshimo_Dies","GLOBAL",4) DestroyItem("KASWOR01") DestroyItem("KASWOR02") DestroyItem("NPRING02") GivePartyAllEquipment() LeaveParty() EscapeArea()~
EXIT

CHAIN VPKACJ N55
~Are we dead? I only wished I could tell Yoshimo a proper farewell.~
END
 IF ~True()~ THEN EXIT
 IF ~InParty("Edwin") See("Edwin")~ THEN EXTERN EDWINJ 95
 IF ~InParty("Nalia") See("Nalia")~ THEN EXTERN NALIAJ 268
 IF ~InParty("Keldorn") See("Keldorn")~ THEN EXTERN KELDORJ 189
 IF ~InParty("Haerdalis") See("Haerdalis")~ THEN EXTERN HAERDAJ 100
 IF ~InParty("Anomen") See("Anomen")~ THEN EXTERN ANOMENJ 258
 IF ~InParty("Mazzy") See("Mazzy")~ THEN EXTERN MAZZYJ 166
 IF ~InParty("Cernd") See("Cernd")~ THEN EXTERN CERNDJ 100
 IF ~InParty("Jaheira") See("Jaheira")~ THEN EXTERN JAHEIRAJ 450
 IF ~InParty("Yoshimo") See("Yoshimo")~ THEN EXTERN YOSHJ 90
 IF ~InParty("Viconia") See("Viconia")~ THEN EXTERN VICONIJ 117
 IF ~InParty("Jan") See("Jan")~ THEN EXTERN JANJ 147
 IF ~InParty("Korgan") See("Korgan")~ THEN EXTERN KORGANJ 115
 IF ~InParty("Valygar") See("Valygar")~ THEN EXTERN VALYGARJ 77
 IF ~InParty("Minsc") See("Minsc")~ THEN EXTERN MINSCJ 155
 IF ~InParty("Aerie") See("Aerie")~ THEN EXTERN AERIEJ 131
 IF ~InParty("Imoen2") See("Imoen2")~ THEN EXTERN IMOEN2J 10

/////////////////////////////////////////////
// SailOff //
/////////////////////////////////////////////

CHAIN VPKACJ sailoff1
~Wait a minute! The ship is ours to take anywhere, right? <CHARNAME>, can we go to Kara-Tur now?~
END
 ++ ~Saemon, I have little knowledge of the sea travel. Can you tell me how long will it take us to get to Kara-Tur by sea?~ EXTERN PPSAEM TS7

CHAIN VPKACJ sailoff2
~Oh, we will see Kara-Turian shores and prove that Yoshimo is innocent and restore peace between our families. I agree with you, <CHARNAME>, let the fate decide! Cast the spell captain Havarian!~
EXTERN PPSAEM TS2

CHAIN VPKACJ sailoff3
~Good luck to you, <CHARNAME>. Farewell.~
EXTERN PPSAEM TS9

CHAIN VPKACJ Kr_WarTk
~And I'll follow Yoshimo wherever he goes. He won't escape from me this time.~
END
 IF ~!IfValidForPartyDialogue("Edwin")~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("KRCut04")~ EXIT
 IF ~InParty("Edwin")~ THEN EXTERN EDWINJ Kr_WarTk

CHAIN VPKACJ Kelem0 //46
~How so? How did this happen? I ... I wanted to avenge the death of Naoko, but got killed! I'm so clumsy, I let her kill myself! I didn't train well, not enough. I should spend more time on the art of swording!~
= ~But what could I possibly do against the daughter of the god of murder! Oh, I had to ask her a few lessons.~
END
 ++ ~Kachiko! Kachiko, what are you talking about? You are not guilty at all. Bhaal took a control of me.~ EXTERN VPKACJ Kelem1
 ++ ~Kachiko, if the most famous sword master of Kara-Tur were at you place, he would also have found himself powerless.~ EXTERN VPKACJ Kelem2
 ++ ~Kachiko, it is I who should ask your forgiveness! You're a nice girl and suffered because of my stupidity and arrogance.~ EXTERN VPKACJ Kelem3

CHAIN VPKACJ Kelem1
~Bhaal! Why, <CHARNAME>? How did he manage to take control over you? Are your gods doing that?~
END
 ++ ~The matter of fact is that I placed the ring, which the priest of Kelemvor brought to Keldorn, on my finger, and lost control of myself.~ EXTERN VPKACJ Kelem4
 ++ ~It's all my fault, Kachiko. Keldorn warned me not to wear the ring, but I did not listen.~ EXTERN VPKACJ Kelem4

CHAIN VPKACJ Kelem2
~Are you sure?~
END
 ++ ~I'm sure. The Ring of Cyric gave me the power of god.~ EXTERN VPKACJ Kelem5
 ++ ~Unfortunately, yes. No mortal can compete with a god.~ EXTERN VPKACJ Kelem5

CHAIN VPKACJ Kelem3
~I remember you placed the ring on a finger. Why? Can it resurrect?~
END
 ++ ~I dont know. But I was hoping that gaining the power of god, I'd be able to save Keldorn. Instead, I killed you all.~ EXTERN VPKACJ Kelem5
 ++ ~I hoped so. No priest could help Keldorn, only the power of god could save him. But let's go, I want to take you out of here.~ EXTERN VPKACJ Kelem6

CHAIN VPKACJ Kelem4
~And you could not take it off yourself? Where is it now?~
END
 ++ ~Kelemvor, the god of death, took it off me. Let's go, Kachiko, it's time to come back.~ EXTERN VPKACJ Kelem6

CHAIN VPKACJ Kelem5
~(Shudders) I wouldn't want to experience that. Will you help me and Yoshimo to go back?~
END
 ++ ~Sure, Kachiko, let's go.~ EXTERN VPKACJ Kelem6

CHAIN VPKACJ Kelem6
~Of course! I don't want to stay here any longer.~
END
 IF ~True()~ THEN EXTERN KELEMVOR 4A
 IF ~InParty("Edwin")~ THEN EXTERN EDWINJ Kelem0

CHAIN VPKACJ NEJ56
~This land suprises me more and more. To find a man not afraid to lay bare his heart and soul to a woman, to risk rejection is a rare man indeed. This Govan will surely be upset to discover that his love is missing.~
END
 IF ~True()~ THEN DO ~SetGlobal("VP_NPC_LeinaRoom","GLOBAL",1)~ EXIT
 IF ~InParty("njhroth")~ THEN EXTERN NJHROJ 47
 IF ~InParty("Valygar")~ THEN EXTERN VALYGARJ NEJ157
 IF ~InParty("Minsc")~ THEN EXTERN MINSCJ NEJ259
 IF ~InParty("njdar")~ THEN EXTERN NJDARJ 7
 IF ~InParty("Viconia")~ THEN EXTERN VICONIJ NEJ185
 IF ~InParty("Mazzy")~ THEN EXTERN MAZZYJ NEJ205
 IF ~InParty("Aerie")~ THEN EXTERN AERIEJ NEJ221
 IF ~InParty("Jaheira")~ THEN EXTERN JAHEIRAJ NEJ544

CHAIN VPKACJ NEJ57
~Curious, you are worried for another's safety, Yoshimo? I cannot believe that you show concern for a girl you hardly know. Your flight from Kara-Tur was the action of a coward who's only thought was, and always will be, for his own skin.~
END
 IF ~True()~ THEN EXTERN NJHROJ 60
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN JAHEIRAJ NEJ546
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN MINSCJ NEJ260

CHAIN VPKACJ NEJ63
~Sure, I'll do it.~
DO ~SetGlobal("VP_Kachi_AbjQuest","GLOBAL",1)~
EXTERN TUPHIN 7

CHAIN VPKACJ NEJ64
~Sure, I'll do it.~
DO ~SetGlobal("VP_Kachi_InvQuest","GLOBAL",1)~
EXTERN TUTHEOD 27

CHAIN VPKACJ NEJ65
~Sure, I'll do it.~
DO ~SetGlobal("VP_Kachi_InvQuest","GLOBAL",1)~
EXTERN TUTHEOD 30

CHAIN VPKACJ NEJ67
~Ok, I am ready.~
DO ~SetGlobal("VP_Kachi_ConQuest","GLOBAL",1)~
EXTERN TUMORD 15

CHAIN VPKACJ NEJ68
~What can I say? I am sorry.~
END
 ++ ~Do we need an intelligence check or something here? All you had to do was to read a couple of scrolls... you can read can't you?~ EXTERN VPKACJ NEJ69
 IF ~!Class(Player1,MAGE_ALL)~ THEN REPLY ~I don't understand a lot about magic but surely it has to be easier to read scrolls then trying to remember spells that have been memorised?~ EXTERN VPKACJ NEJ69

CHAIN VPKACJ NEJ69
~A spell is a spell whether it is cast from a scroll or cast from memory, there is no guarantee that it will be cast successfully. The slightest distraction or missed word and the spell will be lost or miscast.~
DO ~ActionOverride("TuMord",EscapeArea())~
EXIT

CHAIN VPKACJ NEJ70
~Sure, I'll do it.~
DO ~SetGlobal("VP_Kachi_TraQuest","GLOBAL",1)~
EXTERN TUMALV 20

CHAIN VPKACJ tranfail
~What can I say? I am sorry.~
END
 ++ ~You failed, a simple kill the monster and open the chest task! It isn't as if you haven't done it before.~ EXTERN VPKACJ tranfai2
 ++ ~It's not that important. What is important is that Malvolio got you out safely.~ EXTERN VPKACJ tranfai3

CHAIN VPKACJ tranfai2
~Even then, with the aid of the group, we didn't always get it right first time.~
END
 IF ~True()~ THEN EXTERN TUMALV 24
 IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN YOSHJ tranfail

CHAIN VPKACJ tranfai3
~Thank you <CHARNAME>, but with my training, I should have been able to handle that better than I did.~
END
 IF ~True()~ THEN EXTERN TUMALV 24
 IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN YOSHJ tranfail

CHAIN VPKACJ invfail
~What can I say? I am sorry.~
END
 ++ ~That was abysmal! With all the spells you have at your disposal, I can not believe that you couldn't take care of a few pesky pests!~ EXTERN VPKACJ invfail2
 ++ ~It happens. I was probably expecting too much letting you go into a situation you hadn't been given time to prepare for.~GOTO invfail2

CHAIN VPKACJ invfail2
~I am Kensai as well as mage <CHARNAME>, trained with sword as well as magic. If I had been permitted to use the skills that I have been trained to use, then believe me, those vermin would be dead by now.~
EXTERN TUTHEOD failtest

CHAIN VPKACJ NEJ701
~I am confident I can do this.~
DO ~SetGlobal("VP_Kachi_TraQuest","GLOBAL",1)~
EXTERN TUMALV 20

CHAIN VPKACJ abjurer2
~What can I say? I am sorry.~
END
 ++ ~You call yourself a mage? Thanks to your incompetence, girl, we have lost some valuable prizes.~ EXTERN VPKACJ abjurer3
 ++ ~It happens, we win some we lose some, I am sure you gave it your best shot.~ EXTERN VPKACJ abjurer4

CHAIN VPKACJ abjurer3
~I apologised, but if trinkets are worth more to you than a competent warrior mage, don't hesitate to say and I will be out of your hair.~
EXTERN TUPHIN npcfail

CHAIN VPKACJ abjurer4
~I am only sorry that my best shot was not enough.~
EXTERN TUPHIN npcfail

CHAIN VPKACJ vashon
~I am sorry <CHARNAME>, what more can I say?~
END
 ++ ~If I had a gold piece for each time I heard sorry for an excuse, I would be rich beyond your imaginings. Sorry is never an excuse for failure.~ EXTERN VPKACJ vashon3
 ++ ~No matter, you couldn't have second guessed Vashon's test, no one could... not even if you'd been a diviner.~ EXTERN VPKACJ vashon4

CHAIN VPKACJ vashon3
~It was an apology not an excuse, but I guess you wouldn't understand the difference.~
EXTERN TUVASHON npcfail

CHAIN VPKACJ vashon4
~Being kensai trained first, I often forget how powerful my magic is. Knowing I can always fall back on my sword in any situation that arises, means I can be quite neglectful of my magic.~
= ~Now that I have chosen to be a mage I must give more thought to preparing my spell book more wisely.~
EXTERN TUVASHON npcfail