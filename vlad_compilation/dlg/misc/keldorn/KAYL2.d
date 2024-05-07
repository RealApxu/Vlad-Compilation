REPLACE_STATE_TRIGGER KAYL2 15
~Global("KaylFallenPaladinPlot","GLOBAL",1) !Dead("kaypala") Global("VP_Anarg_Is_Good","GLOBAL",0) OR(2) Global("ReynaldJob","GLOBAL",0) Global("KaylAcceptCupMission","GLOBAL",2) ReputationGT([PC],9) Global("Kayl1Done","GLOBAL",0)~

REPLACE_STATE_TRIGGER KAYL2 17
~OR(2) Dead("kaypala") Global("VP_Anarg_Is_Good","GLOBAL",1) PartyHasItem("Misc6i") ReputationGT([PC],9) Global("Kayl1Done","GLOBAL",0)~

ADD_TRANS_TRIGGER KAYL2 18
~Dead("kaypala")~ DO 0

EXTEND_BOTTOM KAYL2 18
 IF ~Global("VP_Anarg_Is_Good","GLOBAL",1)~ THEN DO ~SetGlobal("Kayl1Done","GLOBAL",1) EraseJournalEntry(34244) EraseJournalEntry(34245) EraseJournalEntry(34246) ReputationInc(1) TakePartyItem("misc6i") GiveItemCreate("brac20",LastTalkedToBy,1,0,0)~ SOLVED_JOURNAL ~Seek out and investigate the Fallen Paladins.

I haven't killed the rogue paladin, Anarg, but let him and his group of Fallen Paladins leave Athkatla. Nevertheless, I've returned Anarg's Cup to Ryan Trawl and had to lie to him to increase my good reputation, along with a significant amount of Sir Ryan's goodwill.~ EXIT
END