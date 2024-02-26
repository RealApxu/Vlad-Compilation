REPLACE_STATE_TRIGGER YOSHP 0 ~Global("Kicked_Out","LOCALS",1)
Global("VP_OnIsland","GLOBAL",0)
!InParty("Kachiko")
!See("Kachiko")~

REPLACE_STATE_TRIGGER YOSHP 3 ~HappinessLT(Myself,-290)
!InParty("Kachiko")
Global("VP_OnIsland","GLOBAL",0)~

REPLACE_STATE_TRIGGER YOSHP 4 ~Global("Kicked_Out","LOCALS",0)
Global("VP_OnIsland","GLOBAL",0)
!InParty("Kachiko")~

REPLACE_ACTION_TEXT yoshp
~SetGlobal("KickedOut","LOCALS",1)[^!]*EscapeAreaMove("AR0406",1368,1922,0)~
~SetGlobal("Kicked_Out","LOCALS",1)
SetGlobal("VP_Yosh_WasInParty","GLOBAL",1)
EscapeAreaMove("AR0406",1368,1922,0)~

REPLACE_ACTION_TEXT yoshp
~SetGlobal("KickedOut","LOCALS",1)[^!]*JoinParty()~
~SetGlobal("Kicked_Out","LOCALS",1)
JoinParty()~

REPLACE_ACTION_TEXT yoshp
~SetGlobal("KickedOut","LOCALS",1)~
~SetGlobal("Kicked_Out","LOCALS",1)~

APPEND ~YOSHP~

IF ~~ THEN BEGIN TS14
  SAY ~Whoa! Kachiko Nakanishi, stop threatening me! I will not give up so easily. <CHARNAME>, what’s going on now?~
  IF ~~ THEN REPLY ~Kachiko told me that you had killed her brother. Is that true?~ GOTO TS15
  IF ~~ THEN REPLY ~Shut up, Yoshimo, you are about to die for your crimes!~ GOTO TS16
END

IF ~~ THEN BEGIN TS15
  SAY ~<CHARNAME>, it’s a long bloodshed between clans in Kozakura. We call it Hojo War. God knows how it all started... Her eldest brother, Naoko, was my best friend since childhood. We hoped that one day we might strike peace... I do not know who has assassinated him. I saw just a shadow on the wall. I mourn his loss... And, Kachiko, please, believe me, I did not kill him.~
  IF ~~ THEN EXTERN ~KACHIJ~ N10
END

IF ~~ THEN BEGIN TS16
  SAY ~Kachiko, I won’t draw my sword against you. I do not know what she told you, <CHARNAME>, but I have no quarrel with you either. I have to leave. I’ll see you later... Maybe.~
  IF ~~ THEN EXTERN ~KACHIJ~ N12
END

IF ~~ THEN BEGIN TS17
  SAY ~Kachiko, I promise to come back to Kara-Tur as soon as possible on my own.~
  IF ~~ THEN EXTERN ~KACHIJ~ N13
END

IF ~~ THEN BEGIN TS18
  SAY ~<CHARNAME>, perhaps both you and I still have a chance. Believe me, it’s the best choice I have ever made in my life. Thank you for being so understanding. Kachiko and I will be in the Sea Bounty Tavern near docks. We will look for a ship to Kara-Tur. Look us up if you require any assistance.~
  IF ~~ THEN DO ~SetGlobal("Kicked_Out","LOCALS",1)
ActionOverride("Kachiko",ChangeAIScript("",DEFAULT))
ActionOverride("Kachiko",SetLeavePartyDialogFile())
ActionOverride("Kachiko",LeaveParty())
ActionOverride("Kachiko",EscapeAreaMove("AR0313",784,333,8))
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
LeaveParty()
EscapeAreaMove("AR0313",723,319,14)~ EXIT
END

IF ~~ THEN BEGIN TS19
  SAY ~Thank you, <CHARNAME>.~
  IF ~~ THEN DO ~SetGlobalTimer("VP_KachikoRomance","GLOBAL",ONE_DAY)
SetGlobal("Kicked_Out","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN TS20
  SAY ~<CHARNAME>, what are you doing? I’m not going to participate in this slaughter! She is my countrywoman, despite all our differences and I shall stand on her side.~
  IF ~~ THEN DO ~ActionOverride("Kachiko",LeaveParty())
ActionOverride("Kachiko",Enemy())
Enemy()~ EXIT
END

// Parting ways

IF WEIGHT #7 ~Global("Kicked_Out","LOCALS",0)
Global("VP_OnIsland","GLOBAL",0)
InParty("Kachiko")~ THEN BEGIN TS7
  SAY ~I do not wish to end our pairing before our tasks are done, but perhaps a rest is in order.  Are you sure you want to go seperate paths?~ [YOSHIM65]
  IF ~~ THEN REPLY ~We don’t need your services right now. Sorry Yoshimo.~ GOTO TS12
  IF ~~ THEN REPLY ~No, I don’t want you to leave just yet, Yoshimo.~ DO ~JoinParty()~ EXIT
END

IF WEIGHT #6 ~Global("Kicked_Out","LOCALS",1)
!InParty("Kachiko")
See("Kachiko")
Global("VP_OnIsland","GLOBAL",0)
GlobalLT("Chapter","GLOBAL",4)~ THEN BEGIN TS8
  SAY ~Heya, <CHARNAME> how are you?~
  IF ~AreaCheck("AR0313")~ THEN REPLY ~I am well, thank you. Did you manage to find a ship?~ GOTO TS9
  IF ~~ THEN REPLY ~Actually things have been pretty rough. Yoshimo, do you have time to help me out?~ GOTO TS10
END

IF ~~ THEN BEGIN TS9
  SAY ~No, not yet. Kachiko’s ship has already left, and it may take few months till we find another one.~
  IF ~~ THEN REPLY ~Since you have nothing much to do, but wait, may be you can help me out?~ GOTO TS10
  IF ~~ THEN REPLY ~Oh, well, that’s life. Have patience, my friend.~ GOTO 2
END

IF ~~ THEN BEGIN TS10
  SAY ~Kachiko, what do you think?~
  IF ~Global("VP_Kachiko_Joined","GLOBAL",0)
OR(2)
AreaCheck("AR0313")
AreaCheck("AR0406")~ THEN DO ~SetGlobal("Kicked_Out","LOCALS",0)~ EXTERN ~KACHIKO~ 23
  IF ~Global("VP_Kachiko_Joined","GLOBAL",0)
!AreaCheck("AR0313")
!AreaCheck("AR0406")~ THEN DO ~SetGlobal("Kicked_Out","LOCALS",0)~ EXTERN ~KACHIKO~ 24
  IF ~Global("VP_Kachiko_Joined","GLOBAL",1)
OR(2)
AreaCheck("AR0313")
AreaCheck("AR0406")~ THEN DO ~SetGlobal("Kicked_Out","LOCALS",0)~ EXTERN ~KACHIP~ 0
  IF ~Global("VP_Kachiko_Joined","GLOBAL",1)
!AreaCheck("AR0313")
!AreaCheck("AR0406")~ THEN DO ~SetGlobal("Kicked_Out","LOCALS",0)~ EXTERN ~KACHIP~ 1
END

IF WEIGHT #5 ~Global("Kicked_Out","LOCALS",0)
Global("VP_OnIsland","GLOBAL",1)~ THEN BEGIN TS11
  SAY ~<CHARNAME>, are you serious? You want to leave me when I really need your help?~
  IF ~!InParty("Kachiko")~ THEN REPLY ~Yes, Yoshimo. I am tired of all these complications with your crazy families. Look for somebody else to help you. I need to save Imoen.~ GOTO TS21
	IF ~InParty("Kachiko")~ THEN REPLY ~Yes, Yoshimo. I am tired of all these complications with your crazy families. Look for somebody else to help you. I need to save Imoen.~ GOTO partway1
  IF ~~ THEN REPLY ~Sorry, Yoshimo. I’ve just pressed the wrong button.~ GOTO TS22
END

IF ~~ THEN BEGIN TS12
  SAY ~Where do you want to meet if we are to adventure again together?~
  IF ~!AreaCheck("AR0601")
!AreaCheck("AR0602")
!AreaCheck("AR0603")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")
!AreaCheck("AR1509")
!AreaCheck("AR1510")
!AreaCheck("AR1511")
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2300")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")
!AreaCheck("AR2900")
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")
!InWatchersKeep()
Global("VP_InHalruaa","GLOBAL",0)
Global("VP_OnIsland","GLOBAL",0)
GlobalLT("Chapter","GLOBAL",7)~ THEN REPLY ~Go to the Copper Coronet. If we need to find you, we’ll meet you there.~ GOTO partway1
  IF ~!AreaCheck("AR0301")
!AreaCheck("AR0302")
!AreaCheck("AR0303")
!AreaCheck("AR0304")
!AreaCheck("AR0305")
!AreaCheck("AR0306")
!AreaCheck("AR0307")
!AreaCheck("AR0509")
!AreaCheck("AR0510")
!AreaCheck("AR0511")
!AreaCheck("AR1102")
!AreaCheck("AR1107")
!AreaCheck("AR0801")
!AreaCheck("AR0803")
!AreaCheck("AR1300")
!AreaCheck("AR1301")
!AreaCheck("AR1302")
!AreaCheck("AR1303")
!AreaCheck("AR0601")
!AreaCheck("AR0602")
!AreaCheck("AR0603")
!AreaCheck("AR0604")
!AreaCheck("AR0605")
!AreaCheck("AR0606")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")
!AreaCheck("AR1509")
!AreaCheck("AR1510")
!AreaCheck("AR1511")
!InWatchersKeep()~ THEN REPLY ~Wait here. If we need your services we’ll be back.~ GOTO partway2
  IF ~Global("VP_InHalruaa","GLOBAL",0)
Global("VP_OnIsland","GLOBAL",0)~ THEN REPLY ~Perhaps at a major inn or tavern? Somewhere we are sure to go.~ GOTO partway1
END

IF ~~ THEN BEGIN partway1
  SAY ~Oh, well that’s okay, then.~
  IF ~~ THEN DO ~SetGlobal("Kicked_Out","LOCALS",1)~ EXTERN ~KACHIJ~ partway1
END

IF ~~ THEN BEGIN partway2
  SAY ~Then return when you can. I will wait if you are sure to return.~
  IF ~~ THEN DO ~SetGlobal("Kicked_Out","LOCALS",1)~ EXTERN ~KACHIJ~ partway2
END

IF ~~ THEN BEGIN TS21
  SAY ~Oh, well... I suppose we’ll meet soon anyway.~
  IF ~~ THEN DO ~SetGlobal("Kicked_Out","LOCALS",1)
EscapeAreaMove("TT0307",243,876,10)~ EXIT
END

IF ~~ THEN BEGIN TS22
  SAY ~Oh, well that’s okay, then.~
  IF ~~ THEN DO ~SetGlobal("Kicked_Out","LOCALS",0)
JoinParty()~ EXIT
END

IF WEIGHT #4 ~Global("Kicked_Out","LOCALS",1)
Global("VP_OnIsland","GLOBAL",1)
!InParty("Kachiko")~ THEN BEGIN TS23
  SAY ~<CHARNAME>, how are you? I see you didn’t leave the island yet. So, could I beg your assisstance once again? Kachiko is dying... Please, join me to save her.~
  IF ~~ THEN REPLY ~Of course.~ GOTO TS24
  IF ~~ THEN REPLY ~No, not just yet.~ GOTO 2
END
 
IF ~~ THEN BEGIN TS24
  SAY ~Thank you.~
  IF ~~ THEN DO ~SetGlobal("Kicked_Out","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN TS25
  SAY ~Oh, well that’s okay, then.~
  IF ~~ THEN DO ~SetGlobal("Kicked_Out","LOCALS",0)
ActionOverride("Kachiko",JoinParty())
JoinParty()~ EXIT
END
END