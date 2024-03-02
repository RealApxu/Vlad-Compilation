//Removing SetGlobal("PlayerHasStronghold","GLOBAL",1) to enable another stronghold for the dual- or multi-class fighters
//Removing all conditions to enable stronghold for any class
ALTER_TRANS NALIA // file name
BEGIN 81 END // state number (can be more than one)
BEGIN 3 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~~
END

ALTER_TRANS NALIA // file name
BEGIN 81 END // state number (can be more than one)
BEGIN 4 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~False()~
END

ALTER_TRANS NALIA // file name
BEGIN 82 83 101 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~~
END

ALTER_TRANS NALIA // file name
BEGIN 82 83 101 END // state number (can be more than one)
BEGIN 1 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~False()~
END

ALTER_TRANS NALIA // file name
BEGIN 95 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("PCKeepOwner","GLOBAL",1)
RevealAreaOnMap("AR1304")
HideAreaOnMap("AR1300")
StartCutSceneMode()
StartCutScene("Cut32a")~
END

REPLACE_ACTION_TEXT NALIA
~GiveGoldForce(650)~
~GiveGoldForce(10650)~

APPEND ~NALIA~

IF WEIGHT #-1 /* Triggers after states #: 18 even though they appear after this state */
~Global("RoenalConvict","GLOBAL",1)~ THEN BEGIN N12 // from:
  SAY #46221 /* ~Thank you for your help. You have helped me again, and I am grateful.~ [NALIA96] */
  IF ~~ THEN REPLY #46222 /* ~Think nothing of it.~ */ GOTO N13
  IF ~~ THEN REPLY #46223 /* ~It's getting a little tedious helping you, actually.~ */ GOTO N13
  IF ~~ THEN REPLY #46224 /* ~Yes, yes, can we go now?~ */ GOTO N13
END

IF ~~ THEN BEGIN N13 // from: 12.2 12.1 12.0
  SAY #46225 /* ~I will try to be less of a burden on the group in future. I... I trust you still want my company in the party?~ */
  IF ~~ THEN REPLY #46226 /* ~Yes, join and we shall be on our way again.~ */ DO ~EraseJournalEntry(5811)
EraseJournalEntry(5831)
EraseJournalEntry(6538)
EraseJournalEntry(7036)
EraseJournalEntry(9703)
EraseJournalEntry(14924)
EraseJournalEntry(16028)
EraseJournalEntry(23547)~ SOLVED_JOURNAL #11880 /* ~Nalia Abducted By Isaea Roenall

I brought all the evidence I had collected on Isaea Roenall's corruption to his commander's attention, warranting both Nalia's release and an investigation into the arrogant noble's dealings.  I wonder if I will hear of the result... he certainly deserves whatever he gets.~ */ GOTO N14
  IF ~~ THEN REPLY #46227 /* ~No, I've decided I don't need you right now.~ */ DO ~EraseJournalEntry(5811)
EraseJournalEntry(5831)
EraseJournalEntry(6538)
EraseJournalEntry(7036)
EraseJournalEntry(9703)
EraseJournalEntry(14924)
EraseJournalEntry(16028)
EraseJournalEntry(23547)~ SOLVED_JOURNAL #11880 /* ~Nalia Abducted By Isaea Roenall

I brought all the evidence I had collected on Isaea Roenall's corruption to his commander's attention, warranting both Nalia's release and an investigation into the arrogant noble's dealings.  I wonder if I will hear of the result... he certainly deserves whatever he gets.~ */ GOTO N15
END

IF ~~ THEN BEGIN N14 // from: 16.0 13.0
  SAY #46228 /* ~Thank you, <CHARNAME>, I needed to feel welcome.~ */
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN N15 // from: 13.1
  SAY #46229 /* ~Very well. I will remain here until you have changed your mind.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN N16 // from:
  SAY #48261 /* ~Shall we continue on, or has this ended our travels?~ */
  IF ~~ THEN REPLY #48262 /* ~We go on as before. Let's go.~ */ GOTO N14
  IF ~!HappinessLT(Myself,0)~ THEN REPLY #48263 /* ~It's time we went our separate ways.~ */ GOTO N17
  IF ~HappinessLT(Myself,0)~ THEN REPLY #48264 /* ~It's time we went our separate ways.~ */ GOTO N5
END

IF ~~ THEN BEGIN N17 // from: 16.1 6.0
  SAY #49744 /* ~Where should we meet if you were to change your mind?~ */
  IF ~!AreaCheck("AR0602")
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
~ THEN REPLY #49745 /* ~Meet us at the Copper Coronet.~ */ DO ~SetGlobal("KickedOut","LOCALS",1)
MoveGlobal("AR0406","Nalia",[658.1462])
~ EXIT
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
!AreaCheck("AR0604")
!AreaCheck("AR0605")
!AreaCheck("AR0606")
!InWatchersKeep()
~ THEN REPLY #49746 /* ~Just wait right here and we'll come back for you later.~ */ DO ~SetGlobal("KickedOut","LOCALS",1)
~ EXIT
END

IF ~Global("KickedOut","LOCALS",0)
HappinessLT(Myself,-299)~ THEN BEGIN N5
  SAY #23428 /* ~I... I don't think this group is doing as much good as it could, and I doubt I would rejoin if asked. I... I don't think I'll be seeing you again.~ [NALIA98] */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END
END