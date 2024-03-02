ADD_TRANS_TRIGGER ~ARAN~ 43 ~CalanderDayGT(33)~ DO 1
ADD_TRANS_TRIGGER ~ARAN~ 45 ~CalanderDayGT(33)~ DO 0

REPLACE_STATE_TRIGGER ~ARAN~ 48
~Global("AranJob","GLOBAL",3)
Global("LassalVampires","GLOBAL",3)
Global("spokeTrip","LOCALS",1)
GlobalLT("Chapter","GLOBAL",6)
CalanderDayGT(33)~

ADD_TRANS_TRIGGER ~ARAN~ 47 ~Global("Sime_Meet","GLOBAL",0)~ DO 0

EXTEND_BOTTOM ARAN 47
  IF ~Global("Sime_Meet","GLOBAL",1)
InParty("Sime")~ THEN DO ~EraseJournalEntry(47783)
EraseJournalEntry(47805)
EraseJournalEntry(47806)
EraseJournalEntry(47831)
EraseJournalEntry(47837)
EraseJournalEntry(47838)
StartCutSceneMode()
StartCutScene("Movie3ba")~ JOURNAL #47839 EXIT
  IF ~Global("Sime_Meet","GLOBAL",1)
!InParty("Sime")~ THEN DO ~EraseJournalEntry(47783)
EraseJournalEntry(47805)
EraseJournalEntry(47806)
EraseJournalEntry(47831)
EraseJournalEntry(47837)
EraseJournalEntry(47838)
StartCutSceneMode()
StartCutScene("Movie03b")~ JOURNAL #47839 EXIT
END

APPEND ~ARAN~

IF ~Global("AranJob","GLOBAL",3)
Global("LassalVampires","GLOBAL",3)
Global("spokeTrip","LOCALS",1)
GlobalLT("Chapter","GLOBAL",6)
CalanderDayLT(34)
OR(2)
	Global("VP_KrRomanceActive","GLOBAL",1)
	Global("VP_KrRomanceActive","GLOBAL",2)~ THEN BEGIN KR_NewPhrase
  SAY ~I'm sorry, <CHARNAME>. There are circumstances beyond my control. Amn is on the doorstep of war. The port is closed and no ships may depart... including the one which was to take you to Imoen.~
  IF ~~ THEN JOURNAL ~Damn Amn and her militant tendencies! Once again she stretches out her hand and engages in a war. I can not leave Athkatla and as my only way to Imoen is by sea, there is nothing to be done but just wait.~ EXIT
END
END