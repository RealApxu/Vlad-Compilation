REPLACE_STATE_TRIGGER YOSHP 0 ~Global("Kicked_Out","LOCALS",1) Global("VP_OnIsland","GLOBAL",0) !InParty("vpkachi") !See("vpkachi")~

REPLACE_STATE_TRIGGER YOSHP 3 ~HappinessLT(Myself,-290) !InParty("vpkachi") Global("VP_OnIsland","GLOBAL",0)~

REPLACE_STATE_TRIGGER YOSHP 4 ~Global("Kicked_Out","LOCALS",0) Global("VP_OnIsland","GLOBAL",0) !InParty("vpkachi")~

REPLACE_ACTION_TEXT yoshp
~SetGlobal("KickedOut","LOCALS",1)[^!]*EscapeAreaMove("AR0406",1368,1922,0)~
~SetGlobal("Kicked_Out","LOCALS",1) SetGlobal("VP_Yosh_WasInParty","GLOBAL",1) EscapeAreaMove("AR0406",1368,1922,0)~

REPLACE_ACTION_TEXT yoshp
~SetGlobal("KickedOut","LOCALS",1)[^!]*JoinParty()~
~SetGlobal("Kicked_Out","LOCALS",1) JoinParty()~

REPLACE_ACTION_TEXT yoshp
~SetGlobal("KickedOut","LOCALS",1)~
~SetGlobal("Kicked_Out","LOCALS",1)~

CHAIN YOSHP TS14
~Whoa! Kachiko Nakanishi, stop threatening me! I will not give up so easily. <CHARNAME>, what's going on now?~
END
 ++ ~Kachiko told me that you had killed her brother. Is that true?~ EXTERN YOSHP TS15
 ++ ~Shut up, Yoshimo, you are about to die for your crimes!~ EXTERN YOSHP TS16

CHAIN YOSHP TS15
~<CHARNAME>, it's a long bloodshed between clans in Kozakura. We call it Hojo War. God knows how it all started... Her eldest brother, Naoko, was my best friend since childhood. We hoped that one day we might strike peace... I do not know who has assassinated him. I saw just a shadow on the wall. I mourn his loss... And, Kachiko, please, believe me, I did not kill him.~
EXTERN VPKACJ N10

CHAIN YOSHP TS16
~Kachiko, I won't draw my sword against you. I do not know what she told you, <CHARNAME>, but I have no quarrel with you either. I have to leave. I'll see you later... Maybe.~
EXTERN VPKACJ N12

CHAIN YOSHP TS17
~Kachiko, I promise to come back to Kara-Tur as soon as possible on my own.~
EXTERN VPKACJ N13

CHAIN YOSHP TS18
~<CHARNAME>, perhaps both you and I still have a chance. Believe me, it's the best choice I have ever made in my life. Thank you for being so understanding. Kachiko and I will be in the Sea Bounty Tavern near docks. We will look for a ship to Kara-Tur. Look us up if you require any assistance.~
DO ~SetGlobal("Kicked_Out","LOCALS",1) ActionOverride("vpkachi",ChangeAIScript("",DEFAULT)) ActionOverride("vpkachi",SetLeavePartyDialogFile()) ActionOverride("vpkachi",LeaveParty()) ActionOverride("vpkachi",EscapeAreaMove("AR0313",784,333,8)) ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() LeaveParty() EscapeAreaMove("AR0313",723,319,14)~
EXIT

CHAIN YOSHP TS19
~Thank you, <CHARNAME>.~
DO ~SetGlobalTimer("VP_KachikoRomance","GLOBAL",ONE_DAY) SetGlobal("Kicked_Out","LOCALS",0) JoinParty()~
EXIT

CHAIN YOSHP TS20
~<CHARNAME>, what are you doing? I'm not going to participate in this slaughter! She is my countrywoman, despite all our differences and I shall stand on her side.~
DO ~ActionOverride("vpkachi",LeaveParty()) ActionOverride("vpkachi",Enemy()) Enemy()~
EXIT

// Parting ways

CHAIN
IF WEIGHT #7 ~Global("Kicked_Out","LOCALS",0) Global("VP_OnIsland","GLOBAL",0) InParty("vpkachi")~ THEN YOSHP TS7
~I do not wish to end our pairing before our tasks are done, but perhaps a rest is in order. Are you sure you want to go seperate paths?~ [YOSHIM65]
END
 ++ ~We don't need your services right now. Sorry Yoshimo.~ EXTERN YOSHP TS12
 ++ ~No, I don't want you to leave just yet, Yoshimo.~ DO ~JoinParty()~ EXIT

CHAIN
IF WEIGHT #6 ~Global("Kicked_Out","LOCALS",1) !InParty("vpkachi") See("vpkachi") Global("VP_OnIsland","GLOBAL",0) GlobalLT("Chapter","GLOBAL",4)~ THEN YOSHP TS8
~Heya, <CHARNAME> how are you?~
END
 IF ~AreaCheck("AR0313")~ THEN REPLY ~I am well, thank you. Did you manage to find a ship?~ EXTERN YOSHP TS9
 ++ ~Actually things have been pretty rough. Yoshimo, do you have time to help me out?~ EXTERN YOSHP TS10

CHAIN YOSHP TS9
~No, not yet. Kachiko's ship has already left, and it may take few months till we find another one.~
END
 ++ ~Since you have nothing much to do, but wait, may be you can help me out?~ EXTERN YOSHP TS10
 ++ ~Oh, well, that's life. Have patience, my friend.~ EXTERN YOSHP 2

CHAIN YOSHP TS10
~Kachiko, what do you think?~
END
 IF ~Global("VP_Kachiko_Joined","GLOBAL",0) OR(2) AreaCheck("AR0313") AreaCheck("AR0406")~ THEN DO ~SetGlobal("Kicked_Out","LOCALS",0)~ EXTERN VPKACHI 23
 IF ~Global("VP_Kachiko_Joined","GLOBAL",0) !AreaCheck("AR0313") !AreaCheck("AR0406")~ THEN DO ~SetGlobal("Kicked_Out","LOCALS",0)~ EXTERN VPKACHI 24
 IF ~Global("VP_Kachiko_Joined","GLOBAL",1) OR(2) AreaCheck("AR0313") AreaCheck("AR0406")~ THEN DO ~SetGlobal("Kicked_Out","LOCALS",0)~ EXTERN VPKACP 0
 IF ~Global("VP_Kachiko_Joined","GLOBAL",1) !AreaCheck("AR0313") !AreaCheck("AR0406")~ THEN DO ~SetGlobal("Kicked_Out","LOCALS",0)~ EXTERN VPKACP 1

CHAIN
IF WEIGHT #5 ~Global("Kicked_Out","LOCALS",0) Global("VP_OnIsland","GLOBAL",1)~ THEN YOSHP TS11
~<CHARNAME>, are you serious? You want to leave me when I really need your help?~
END
 IF ~!InParty("vpkachi")~ THEN REPLY ~Yes, Yoshimo. I am tired of all these complications with your crazy families. Look for somebody else to help you. I need to save Imoen.~ EXTERN YOSHP TS21
 IF ~InParty("vpkachi")~ THEN REPLY ~Yes, Yoshimo. I am tired of all these complications with your crazy families. Look for somebody else to help you. I need to save Imoen.~ EXTERN YOSHP partway1
 ++ ~Sorry, Yoshimo. I've just pressed the wrong button.~ EXTERN YOSHP TS22

CHAIN YOSHP TS12
~Where do you want to meet if we are to adventure again together?~
END
 IF ~!AreaCheck("AR0601") !AreaCheck("AR0602") !AreaCheck("AR0603") !AreaCheck("AR0410") !AreaCheck("AR0411") !AreaCheck("AR0412") !AreaCheck("AR0413") !AreaCheck("AR0414") !AreaCheck("AR1512") !AreaCheck("AR1513") !AreaCheck("AR1514") !AreaCheck("AR1515") !AreaCheck("AR1516") !AreaCheck("AR1501") !AreaCheck("AR1502") !AreaCheck("AR1503") !AreaCheck("AR1504") !AreaCheck("AR1505") !AreaCheck("AR1506") !AreaCheck("AR1507") !AreaCheck("AR1508") !AreaCheck("AR1509") !AreaCheck("AR1510") !AreaCheck("AR1511") !AreaCheck("AR2100") !AreaCheck("AR2101") !AreaCheck("AR2102") !AreaCheck("AR2200") !AreaCheck("AR2202") !AreaCheck("AR2203") !AreaCheck("AR2204") !AreaCheck("AR2205") !AreaCheck("AR2206") !AreaCheck("AR2207") !AreaCheck("AR2208") !AreaCheck("AR2209") !AreaCheck("AR2210") !AreaCheck("AR2300") !AreaCheck("AR2400") !AreaCheck("AR2401") !AreaCheck("AR2402") !AreaCheck("AR2900") !AreaCheck("AR2901") !AreaCheck("AR2902") !AreaCheck("AR2903") !AreaCheck("AR2904") !AreaCheck("AR2905") !AreaCheck("AR2906") !InWatchersKeep() Global("VP_InHalruaa","GLOBAL",0) Global("VP_OnIsland","GLOBAL",0) GlobalLT("Chapter","GLOBAL",7)~ THEN REPLY ~Go to the Copper Coronet. If we need to find you, we'll meet you there.~ EXTERN YOSHP partway1
 IF ~!AreaCheck("AR0301") !AreaCheck("AR0302") !AreaCheck("AR0303") !AreaCheck("AR0304") !AreaCheck("AR0305") !AreaCheck("AR0306") !AreaCheck("AR0307") !AreaCheck("AR0509") !AreaCheck("AR0510") !AreaCheck("AR0511") !AreaCheck("AR1102") !AreaCheck("AR1107") !AreaCheck("AR0801") !AreaCheck("AR0803") !AreaCheck("AR1300") !AreaCheck("AR1301") !AreaCheck("AR1302") !AreaCheck("AR1303") !AreaCheck("AR0601") !AreaCheck("AR0602") !AreaCheck("AR0603") !AreaCheck("AR0604") !AreaCheck("AR0605") !AreaCheck("AR0606") !AreaCheck("AR1512") !AreaCheck("AR1513") !AreaCheck("AR1514") !AreaCheck("AR1515") !AreaCheck("AR1516") !AreaCheck("AR1501") !AreaCheck("AR1502") !AreaCheck("AR1503") !AreaCheck("AR1504") !AreaCheck("AR1505") !AreaCheck("AR1506") !AreaCheck("AR1507") !AreaCheck("AR1508") !AreaCheck("AR1509") !AreaCheck("AR1510") !AreaCheck("AR1511") !InWatchersKeep()~ THEN REPLY ~Wait here. If we need your services we'll be back.~ EXTERN YOSHP partway2
 IF ~Global("VP_InHalruaa","GLOBAL",0) Global("VP_OnIsland","GLOBAL",0)~ THEN REPLY ~Perhaps at a major inn or tavern? Somewhere we are sure to go.~ EXTERN YOSHP partway1

CHAIN YOSHP partway1
~Oh, well that's okay, then.~
DO ~SetGlobal("Kicked_Out","LOCALS",1)~
EXTERN VPKACJ partway1

CHAIN YOSHP partway2
~Then return when you can. I will wait if you are sure to return.~
DO ~SetGlobal("Kicked_Out","LOCALS",1)~
EXTERN VPKACJ partway2

CHAIN YOSHP TS21
~Oh, well... I suppose we'll meet soon anyway.~
DO ~SetGlobal("Kicked_Out","LOCALS",1) EscapeAreaMove("TT0307",243,876,10)~
EXIT

CHAIN YOSHP TS22
~Oh, well that's okay, then.~
DO ~SetGlobal("Kicked_Out","LOCALS",0) JoinParty()~
EXIT

CHAIN
IF WEIGHT #4 ~Global("Kicked_Out","LOCALS",1) Global("VP_OnIsland","GLOBAL",1) !InParty("vpkachi")~ THEN YOSHP TS23
~<CHARNAME>, how are you? I see you didn't leave the island yet. So, could I beg your assisstance once again? Kachiko is dying... Please, join me to save her.~
END
 ++ ~Of course.~ EXTERN YOSHP TS24
 ++ ~No, not just yet.~ EXTERN YOSHP 2

CHAIN YOSHP TS24
~Thank you.~
DO ~SetGlobal("Kicked_Out","LOCALS",0) JoinParty()~
EXIT

CHAIN YOSHP TS25
~Oh, well that's okay, then.~
DO ~SetGlobal("Kicked_Out","LOCALS",0) ActionOverride("vpkachi",JoinParty()) JoinParty()~
EXIT