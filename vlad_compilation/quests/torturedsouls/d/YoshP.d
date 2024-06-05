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
== VPKACJ ~Yoshimo, wait. I am leaving with you. Alone you will only get into more troubles. Sorry <CHARNAME>, but I told you from the very start that I would follow whenever he goes... and I shall do so now.~ [KACHIL26]
DO ~SetGlobal("Kicked_Out","LOCALS",1) ActionOverride("Yoshimo",ChangeAIScript("",DEFAULT)) ActionOverride("Yoshimo",SetLeavePartyDialogFile()) ActionOverride("Yoshimo",LeaveParty()) ActionOverride("Yoshimo",EscapeAreaMove("AR0406",1368,1922,0)) ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() LeaveParty() EscapeAreaMove("AR0406",1381,1959,1)~
EXIT

CHAIN YOSHP partway2
~Then return when you can. I will wait if you are sure to return.~
DO ~SetGlobal("Kicked_Out","LOCALS",1)~
== VPKACJ ~Yoshimo, I am staying with you. Alone you will only get into more troubles. Sorry <CHARNAME>, but I told you from the very start that I wouldn't allow him to escape... and I shan't do so now.~
DO ~SetGlobal("Kicked_Out","LOCALS",1) ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() LeaveParty()~
EXIT

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