BEGIN VPKACHI

//////////////////////////////////////////////////////////////////////////////////////////////////
//
// Situation 1: Yoshimo is in Party
//
// 1) If Kachiko is joined:
// VP_Kachiko_Joined is set to 1
// VP_Kachiko_Meet is set to 2
//
// 2) If Kachiko is not joined, both go to SeaBounty:
// VP_YoshFollowsKach is set to 1
// VP_Kachiko_Meet is set to 3 --> EXTERN VPKACHI Situation 3
//
//////////////////////////////////////////////////////////////////////////////////////////////////

CHAIN
IF WEIGHT #2 ~NumberOfTimesTalkedTo(0) InParty("Yoshimo") Global("VP_Kachiko_Meet","GLOBAL",1) Global("VP_KachikoInTavern","GLOBAL",0)~ THEN VPKACHI 0
~Ah, here you are, bastard! You thought you could flee far enough? I promised to find you even in Nine Hells! I am Kachiko Nakanishi, prepare to die!~ [KACHI01]
DO ~SetGlobal("VP_Kachiko_Meet","GLOBAL",2)~
EXTERN YOSHJ TS152

CHAIN VPKACHI 1
~Who are these people with you? Are they your new associates? Don�t think you�re so safe. I can deal with all of them if they try to stop me.~ [KACHI02]
END
 ++ ~Do you mind if I interrupt your polemic?~ EXTERN VPKACHI 2
 ++ ~Shut up, both of you. You, crazy one, are gonna die!~ EXTERN YOSHJ TS153
 ++ ~[Silent]~ EXTERN YOSHJ TS154

CHAIN VPKACHI 2
~No, but this is not really your concern.~
END
 ++ ~I am <CHARNAME>. Please, introduce yourself, and maybe we shall come to a peaceful solution.~ EXTERN VPKACHI 3
 ++ ~I grow tired of explaining to everyone that I only wish to leave this dungeon as soon as possible. Prepare to die, witch!~ EXTERN YOSHJ TS153

CHAIN VPKACHI 3
~There is no peaceful solution, but... Hmm... May be you really don�t know anything about this snake. I am Kachiko Nakanishi. From Kozakura. Do you know much of your associate, Yoshimo?~
END
 ++ ~No. Please, tell more.~ EXTERN VPKACHI 4

CHAIN VPKACHI 4
~This... this... man, Yoshimo, standing behind you is accused of my brother�s murder...~
EXTERN YOSHJ TS156

CHAIN VPKACHI 5
~I won�t listen to your lies.~
EXTERN YOSHJ TS155

CHAIN VPKACHI 6
~Yoshimo, you sound sincere... Hmm... If what you say is true, we must come back to Kara-Tur and try to convince my family that you�re not the murderer. But if you lied...~
EXTERN YOSHJ TS159

CHAIN VPKACHI 7
~Why? I will ensure your safety.~
EXTERN YOSHJ TS160

CHAIN VPKACHI 8
~And I cannot come back to Kara-Tur without Yoshimo... dead or alive.~
EXTERN YOSHJ TS162

CHAIN VPKACHI 9
~Farewell.~
EXTERN YOSHJ TS164

CHAIN VPKACHI 10
~Don�t lie to me. You won�t escape again. I�ll follow you, and I�ll watch you. And once you close your deal with <CHARNAME>, you�ll come with me. <CHARNAME>, do you need another companion in your group? My grandfather trained me equally in the spiritual and martial arts. I am not very strong and cannot wear armour, but I am fast and deadly in combat. Perhaps, in the future I may improve my wizard skills, as it is within my ability.~
END
 ++ ~No, Kachiko, I have no room for you right now. Perhaps I will need your help later.~ EXTERN VPKACHI 11
 ++ ~Of course, I need a good fighter-mage.~ EXTERN YOSHJ TS165
 ++ ~Sorry, I don�t need your help, and I won�t allow you to follow us. Go back to Kara-Tur alone.~ EXTERN VPKACHI 12
 ++ ~I don�t know you, I don�t need your problems, and I won�t allow you to follow us. I should have killed you right away.~ EXTERN YOSHJ TS153

CHAIN VPKACHI 11
~I have neither time, nor desire to wait for you in this dreadful barbaric city. But I won�t leave without Yoshimo.~
DO ~SetGlobal("VP_Kachiko_Meet","GLOBAL",3)~
EXTERN YOSHJ TS163

CHAIN VPKACHI 12
~I won�t come back without Yoshimo.~
EXTERN YOSHJ TS164

CHAIN VPKACHI 13
~Watch your tongue, �friend�.~
DO ~SetGlobalTimer("VP_KachikoRomance","GLOBAL",ONE_DAY) SetGlobal("VP_Kachiko_Joined","GLOBAL",1) JoinParty()~
EXIT

////////////////////////////////////////////////////////////////////////////////
//
// Situation 2: Yoshimo is not in Party
//
// 1) If Kachiko is joined:
// VP_Kachiko_Joined is set to 1
// VP_Kachiko_Meet is set to 2
// VP_YoshimoSearch is set to 1
//
// 2) If Kachiko is not joined, she escapes to Sea Bounty Tavern
//
////////////////////////////////////////////////////////////////////////////////

CHAIN
IF WEIGHT #1 ~NumberOfTimesTalkedTo(0) !InParty("Yoshimo") Global("VP_Kachiko_Meet","GLOBAL",1) Global("VP_KachikoInTavern","GLOBAL",0)~ THEN VPKACHI 14
~You! Have you seen Yoshimo? I know he�s around here somewhere!~ [KACHI04]
END
 ++ ~Yes, I saw him not long time ago. Err...who, might I ask, are you? And what�s the matter?~ DO ~SetGlobal("VP_Kachiko_Meet","GLOBAL",2)~ EXTERN VPKACHI 15
 ++ ~No, I didn�t see him before.~ DO ~SetGlobal("VP_Kachiko_Meet","GLOBAL",2)~ EXTERN VPKACHI 21
 ++ ~Who is Yoshimo?~ DO ~SetGlobal("VP_Kachiko_Meet","GLOBAL",2)~ EXTERN VPKACHI 22

CHAIN VPKACHI 15
~I am Kachiko from the clan of Nakanishi. Did you hear about Kara-Tur?~ [KACHI05]
END
 ++ ~Yes. Go on.~ EXTERN VPKACHI 16
 ++ ~No. Please, explain.~ EXTERN VPKACHI 16

CHAIN VPKACHI 16
~This bastard you met before is accused in the murder of my eldest brother... Hmm, are you mercenaries?~ [KACHI06]
END
 ++ ~No. I am trying just to get out of this damned dungeon.~ EXTERN VPKACHI 17
 ++ ~Yes, why not? And what might be your proposition?~ EXTERN VPKACHI 18

CHAIN VPKACHI 17
~Could you help me finding Yoshimo and bringing him to justice?~
END
 ++ ~Of course, I�ll help you. You may join my company if you wish.~ DO ~SetGlobal("VP_Kachiko_Joined","GLOBAL",1) SetGlobal("VP_YoshimoSearch","GLOBAL",1) JoinParty()~ EXIT
 ++ ~And what is the profit?~ EXTERN VPKACHI 18
 ++ ~Sorry, I have no time for another quest. You are on your own.~ EXTERN VPKACHI 20

CHAIN VPKACHI 18
~I�ll help you in your quests, if you help me to find Yoshimo... dead or alive.~
END
 ++ ~What makes you think that I need your help?~ EXTERN VPKACHI 19
 ++ ~You have a deal.~ DO ~SetGlobal("VP_Kachiko_Joined","GLOBAL",1) SetGlobal("VP_YoshimoSearch","GLOBAL",1) JoinParty()~ EXIT
 ++ ~Sorry, I have no time for another quest. You are on your own.~ EXTERN VPKACHI 20

CHAIN VPKACHI 19
~My grandfather trained me equally in the spiritual and martial arts. I am not very strong and cannot wear armour, but I am fast and deadly in combat. Perhaps, in the future I may improve my wizard skills, as it is within my ability.~
END
 ++ ~Well then you convinced me. Join me, and I�ll help you to find Yoshimo.~ DO ~SetGlobal("VP_Kachiko_Joined","GLOBAL",1) SetGlobal("VP_YoshimoSearch","GLOBAL",1) JoinParty()~ EXIT
 ++ ~Sorry, I have no time for another quest. You are on your own.~ EXTERN VPKACHI 20

CHAIN VPKACHI 20
~I�ll find him eventually! I SWEAR I�ll find him! There has to be somewhere I haven�t looked!~ [KACHI07]
DO ~SetGlobal("VP_KachikoInTavern","GLOBAL",1) EscapeAreaMove("AR0313",784,333,8)~
EXIT

CHAIN VPKACHI 21
~Liar! I know you hide him here.~
DO ~SetGlobal("VP_KachikoInTavern","GLOBAL",1) EscapeAreaMove("AR0313",784,333,8)~
EXIT

CHAIN VPKACHI 22
~Don�t make a fool of me! I know you hide him here.~
DO ~SetGlobal("VP_KachikoInTavern","GLOBAL",1) EscapeAreaMove("AR0313",784,333,8)~
EXIT

////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////

CHAIN VPKACHI 23
~I think it is a good idea! Better than staying in this barbaric tavern and listening to drunkard sailors!~
DO ~SetGlobal("Kicked_Out","LOCALS",0) ActionOverride("Yoshimo",JoinParty()) JoinParty()~
EXIT

CHAIN VPKACHI 24
~If that is what you wish.~
DO ~SetGlobal("Kicked_Out","LOCALS",0) ActionOverride("Yoshimo",JoinParty()) JoinParty()~
EXIT

CHAIN
IF WEIGHT #0 ~Global("VP_YoshFollowsKach","GLOBAL",1) Global("VP_KachikoInTavern","GLOBAL",0)~ THEN VPKACHI 25
~It is good to see you again. I had hoped you would return. We still have not managed to get a ship. Do you need another party member or two?~
END
 ++ ~Yes.~ DO ~SetGlobal("VP_YoshFollowsKach","GLOBAL",0)~ EXTERN VPKACHI 26
 ++ ~No.~ EXTERN VPKACHI 27

CHAIN VPKACHI 26
~Good. Not another word, then.~
DO ~SetGlobal("VP_JoinYoshimo","GLOBAL",1) SetGlobal("Kicked_Out","LOCALS",0)~
EXTERN YOSHP TS25

CHAIN VPKACHI 27
~If that is what you wish.~
DO ~SetGlobal("VP_YoshFollowsKach","GLOBAL",1)~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("VP_KachikoInTavern","GLOBAL",1) !InParty(Myself) !InParty("Yoshimo") !See("Yoshimo")~ THEN VPKACHI N28
~It is good to see you again. Was there something that you wished?~
END
 ++ ~Maybe you can join my party?~ EXTERN VPKACHI N29
 ++ ~No.~ EXTERN VPKACHI N30

CHAIN VPKACHI N29
~Good. Not another word, then.~
DO ~SetGlobal("VP_KachikoInTavern","GLOBAL",0) SetGlobal("Kicked_Out","LOCALS",0) JoinParty()~
EXIT

CHAIN VPKACHI N30
~If that is what you wish.~
EXIT

// Waiting in Sea Bounty and detecting Yoshimo
CHAIN
IF WEIGHT #-2 ~Global("VP_KachikoInTavern","GLOBAL",1) !InParty(Myself) InParty("Yoshimo") Detect("Yoshimo")~ THEN VPKACHI N31
~Ah, here you are, bastard! You thought you could flee far enough? I promised to find you even in Nine Hells! Prepare to die!~
EXTERN YOSHJ SB06

CHAIN VPKACHI N32
~Yoshimo, you sound sincere... Hmm... If what you say is true, we must come back to Kara-Tur and try to convince my family that you�re not the murderer. But if you lied... <CHARNAME>, we have to leave for Kara-Tur immediately.~
END
 ++ ~Kachiko, are you going back on your offer to help me?~ EXTERN VPKACHI N33
 ++ ~Of course, Kachiko, I understand. Farewell.~ EXTERN YOSHJ SB10

CHAIN VPKACHI N33
~Of course, <CHARNAME>. At least I can keep an eye on Yoshimo and bring him back to Kara-Tur when time comes.~
EXTERN YOSHJ SB09

CHAIN VPKACHI N34
~You will not get away that easily! Sorry, <CHARNAME>, but I have to go after him!~
EXTERN YOSHJ SB10

CHAIN VPKACHI N35
~Don�t lie to me. You won�t escape again. I�ll watch you even if I have to break my word to <CHARNAME>.~
DO ~SetGlobal("VP_KachikoInTavern","GLOBAL",0) SetGlobal("Kicked_Out","LOCALS",0) JoinParty()~
EXIT