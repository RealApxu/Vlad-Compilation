REPLACE_STATE_TRIGGER YOSHIMO 14 ~Global("MetYoshimo","GLOBAL",1) !InParty("vpkachi") !See("vpkachi")~
REPLACE_STATE_TRIGGER YOSHIMO 21 ~Global("DishonorYoshimo","GLOBAL",1) !InParty("vpkachi") !See("vpkachi")~

CHAIN YOSHIMO TS53
~Kachiko Nakanishi, stop threatening me! I will not give up so easily. <CHARNAME>, what's going on here?~
END
 ++ ~Kachiko told me that you had killed her brother. Is that true?~ EXTERN YOSHIMO TS54
 ++ ~Shut up, Yoshimo, you are about to die for your crimes!~ EXTERN YOSHIMO TS55

CHAIN YOSHIMO TS54
~<CHARNAME>, it's a long bloodshed between clans in Kozakura. We call it Hojo War. God knows how it all started... Her eldest brother, Naoko, was my best friend since childhood. We hoped that one day we might strike peace... I do not know who has assassinated him. I saw just a shadow on the wall. I mourn his loss... And, Kachiko, please, believe me, I did not kill him.~
EXTERN VPKACJ KrFix1

CHAIN YOSHIMO TS55
~Kachiko, I won't draw my sword against you. I do not know what she told you, <CHARNAME>, but I have no quarrel with you either. I have to leave. I'll see you later... Maybe.~
EXTERN VPKACJ KrFix3

CHAIN YOSHIMO TS56
~Kachiko, I promise to come back to Kara-Tur as soon as possible on my own.~
EXTERN VPKACJ N4

CHAIN YOSHIMO TS57
~<CHARNAME>, perhaps both you and I still have a chance. Believe me, it's the best choice I have ever made in my life. Thank you for being so understanding. Kachiko and I will be in the Sea Bounty Tavern near docks. We will look for a ship to Kara-Tur. Look us up if you require any assistance.~
EXTERN VPKACJ New4

CHAIN YOSHIMO TS58
~Thank you, <CHARNAME>.~
DO ~SetGlobalTimer("VP_KachikoRomance","GLOBAL",ONE_DAY) JoinParty()~
EXIT

CHAIN YOSHIMO TS59
~<CHARNAME>, what are you doing? I'm not going to participate in this slaughter! She is my countrywoman, despite all our differences and I shall stand on her side.~
DO ~ActionOverride("vpkachi",LeaveParty()) ActionOverride("vpkachi",Enemy()) Enemy()~
EXIT

CHAIN
IF WEIGHT #-1 ~AreaCheck("AR0313") Global("VP_OnIsland","GLOBAL",0) GlobalLT("Chapter","GLOBAL",4)~ THEN YOSHIMO TS8
~Heya, <CHARNAME> how are you?~
END
 ++ ~I am well, thank you. Did you manage to find a ship?~ EXTERN YOSHIMO TS9
 ++ ~Actually things have been pretty rough. Yoshimo, do you have time to help me out?~ EXTERN YOSHIMO TS10

CHAIN YOSHIMO TS9
~No, not yet. Kachiko's ship has already left, and it may take few months till we find another one.~
END
 ++ ~Since you have nothing much to do, but wait, may be you can help me out?~ EXTERN YOSHIMO TS10
 ++ ~Oh, well, that's life. Have patience, my friend.~ EXTERN YOSHIMO 2

CHAIN YOSHIMO TS10
~Kachiko, what do you think?~
END
 IF ~OR(2) Global("VP_Kachiko_Joined","GLOBAL",0) Global("VP_YoshFollowsKach","GLOBAL",1)~ THEN DO ~SetGlobal("Kicked_Out","LOCALS",0)~ EXTERN VPKACHI 23
 IF ~Global("VP_Kachiko_Joined","GLOBAL",1)~ THEN DO ~SetGlobal("Kicked_Out","LOCALS",0)~ EXTERN VPKACP 0

REPLACE YOSHIMO

IF ~~ THEN BEGIN 31
 SAY ~I am very sorry to hear that. You shall find me in Athkatla should you need me. I will be staying at the Copper Coronet. Travel safely, <CHARNAME>.~
 IF ~~ THEN DO ~EscapeAreaMove("AR0406",1368,1922,12)~ EXIT
END

IF ~~ THEN BEGIN 32
 SAY ~When you have thought about this and realized your error, you will find me at the Copper Coronet in Athkatla. I will now take my leave of you.~
 IF ~~ THEN DO ~EscapeAreaMove("AR0406",1368,1922,12)~ EXIT
END

IF ~~ THEN BEGIN 33
 SAY ~The wands are locked onto the pedestals and you would do well to search out the keys and take down the wands before walking through the hall. Again I say, farewell!~
 IF ~~ THEN DO ~EscapeAreaMove("AR0406",1368,1922,12)~ EXIT
END

END