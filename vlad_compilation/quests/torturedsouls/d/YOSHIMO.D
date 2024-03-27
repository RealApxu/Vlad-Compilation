REPLACE_STATE_TRIGGER YOSHIMO 14

~Global("MetYoshimo","GLOBAL",1) !InParty("Kachiko") !See("Kachiko")~

REPLACE_STATE_TRIGGER YOSHIMO 21

~Global("DishonorYoshimo","GLOBAL",1) !InParty("Kachiko") !See("Kachiko")~

APPEND ~YOSHIMO~

IF ~~ THEN BEGIN TS53
  SAY ~Kachiko Nakanishi, stop threatening me! I will not give up so easily. <CHARNAME>, what�s going on here?~
  IF ~~ THEN REPLY ~Kachiko told me that you had killed her brother. Is that true?~ GOTO TS54
  IF ~~ THEN REPLY ~Shut up, Yoshimo, you are about to die for your crimes!~ GOTO TS55
END

IF ~~ THEN BEGIN TS54
  SAY ~<CHARNAME>, it�s a long bloodshed between clans in Kozakura. We call it Hojo War. God knows how it all started... Her eldest brother, Naoko, was my best friend since childhood. We hoped that one day we might strike peace... I do not know who has assassinated him. I saw just a shadow on the wall. I mourn his loss... And, Kachiko, please, believe me, I did not kill him.~
  IF ~~ THEN EXTERN ~KACHIJ~ KrFix1
END

IF ~~ THEN BEGIN TS55
  SAY ~Kachiko, I won�t draw my sword against you. I do not know what she told you, <CHARNAME>, but I have no quarrel with you either. I have to leave. I�ll see you later... Maybe.~
  IF ~~ THEN EXTERN ~KACHIJ~ KrFix3
END

IF ~~ THEN BEGIN TS56
  SAY ~Kachiko, I promise to come back to Kara-Tur as soon as possible on my own.~
  IF ~~ THEN EXTERN ~KACHIJ~ N4
END

IF ~~ THEN BEGIN TS57
  SAY ~<CHARNAME>, perhaps both you and I still have a chance. Believe me, it�s the best choice I have ever made in my life. Thank you for being so understanding. Kachiko and I will be in the Sea Bounty Tavern near docks. We will look for a ship to Kara-Tur. Look us up if you require any assistance.~
  IF ~~ THEN EXTERN ~KACHIJ~ New4
END

IF ~~ THEN BEGIN TS58
  SAY ~Thank you, <CHARNAME>.~
  IF ~~ THEN DO ~SetGlobalTimer("VP_KachikoRomance","GLOBAL",ONE_DAY) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN TS59
  SAY ~<CHARNAME>, what are you doing? I�m not going to participate in this slaughter! She is my countrywoman, despite all our differences and I shall stand on her side.~
  IF ~~ THEN DO ~ActionOverride("Kachiko",LeaveParty()) ActionOverride("Kachiko",Enemy()) Enemy()~ EXIT
END

IF WEIGHT #-1 ~AreaCheck("AR0313") Global("VP_OnIsland","GLOBAL",0) GlobalLT("Chapter","GLOBAL",4)~ THEN BEGIN TS8
  SAY ~Heya, <CHARNAME> how are you?~
  IF ~~ THEN REPLY ~I am well, thank you. Did you manage to find a ship?~ GOTO TS9
  IF ~~ THEN REPLY ~Actually things have been pretty rough. Yoshimo, do you have time to help me out?~ GOTO TS10
END

IF ~~ THEN BEGIN TS9
  SAY ~No, not yet. Kachiko�s ship has already left, and it may take few months till we find another one.~
  IF ~~ THEN REPLY ~Since you have nothing much to do, but wait, may be you can help me out?~ GOTO TS10
  IF ~~ THEN REPLY ~Oh, well, that�s life. Have patience, my friend.~ GOTO 2
END

IF ~~ THEN BEGIN TS10
  SAY ~Kachiko, what do you think?~
  IF ~OR(2) Global("VP_Kachiko_Joined","GLOBAL",0) Global("VP_YoshFollowsKach","GLOBAL",1)~ THEN DO ~SetGlobal("Kicked_Out","LOCALS",0)~ EXTERN ~KACHIKO~ 23
  IF ~Global("VP_Kachiko_Joined","GLOBAL",1)~ THEN DO ~SetGlobal("Kicked_Out","LOCALS",0)~ EXTERN ~KACHIP~ 0
END

END