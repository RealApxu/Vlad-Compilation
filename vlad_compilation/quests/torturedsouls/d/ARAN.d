ADD_TRANS_TRIGGER ARAN 47 ~Global("Sime_Meet","GLOBAL",0)~ DO 0

EXTEND_BOTTOM ARAN 47
  IF ~Global("Sime_Meet","GLOBAL",1) InParty("Sime")~ THEN DO ~EraseJournalEntry(47783) EraseJournalEntry(47805) EraseJournalEntry(47806) EraseJournalEntry(47831) EraseJournalEntry(47837) EraseJournalEntry(47838) StartCutSceneMode() StartCutScene("Movie3ba")~ JOURNAL #47839 EXIT
  IF ~Global("Sime_Meet","GLOBAL",1) !InParty("Sime")~ THEN DO ~EraseJournalEntry(47783) EraseJournalEntry(47805) EraseJournalEntry(47806) EraseJournalEntry(47831) EraseJournalEntry(47837) EraseJournalEntry(47838) StartCutSceneMode() StartCutScene("Movie03b")~ JOURNAL #47839 EXIT
END