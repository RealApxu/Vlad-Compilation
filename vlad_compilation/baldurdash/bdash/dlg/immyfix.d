//////////////////////////////////////////
// Patches Imoen dialog and links to Imoen2.
// Not a fix but a tweak to use IMOEN2 in Irenicus Dungeon
//////////////////////////////////////////

REPLACE_TRIGGER_TEXT ~AATAQAH~ ~"Imoen"~ ~"Imoen2"~
REPLACE_ACTION_TEXT ~AATAQAH~ ~"Imoen"~ ~"Imoen2"~

//Modify JaheiraJ.dlg
REPLACE_TRIGGER_TEXT ~JaheiraJ~ ~("Imoen")~ ~("Imoen2")~

EXTEND_BOTTOM JaheiraJ 296
 IF ~~ THEN EXTERN IMOEN2J CR30
END

EXTEND_BOTTOM JaheiraJ 297
 IF ~~ THEN EXTERN IMOEN2J CR31
END

EXTEND_BOTTOM JaheiraJ 298
 IF ~~ THEN EXTERN IMOEN2J CR32
END

EXTEND_BOTTOM JaheiraJ 299
 IF ~~ THEN EXTERN IMOEN2J CR33
END

EXTEND_BOTTOM JaheiraJ 301
 IF ~~ THEN EXTERN IMOEN2J CR35
END

EXTEND_BOTTOM JaheiraJ 304
 IF ~~ THEN EXTERN IMOEN2J CR44
END

REPLACE_TRIGGER_TEXT ~MinscJ~ ~("Imoen")~ ~("Imoen2")~

//Modifying the MinscA.dlg
EXTEND_BOTTOM MinscA 20
 IF ~IsValidForPartyDialog("Imoen2")~ THEN EXTERN IMOEN2J CR7
END

EXTEND_BOTTOM MinscA 29
 IF ~IsValidForPartyDialog("Imoen2")~ THEN EXTERN IMOEN2J CR8
END

EXTEND_BOTTOM MinscA 31
 IF ~IsValidForPartyDialog("Imoen2")~ THEN EXTERN IMOEN2J CR11
END

//Yoshimo's Dialog
EXTEND_BOTTOM Yoshimo 6
 IF ~IsValidForPartyDialog("Imoen2")~ THEN EXTERN IMOEN2J CR63
END

//Modifying the IDryad1 dialog
EXTEND_BOTTOM IDryad1 14
 IF ~InParty("Imoen2")~ THEN EXTERN IMOEN2J CR37
END

EXTEND_BOTTOM IDryad1 15
 IF ~InParty("Imoen2")~ THEN EXTERN IMOEN2J CR38
END

EXTEND_BOTTOM IDryad1 16
 IF ~InParty("Imoen2") ~ THEN EXTERN IMOEN2J CR39
END

EXTEND_BOTTOM IDryad1 17
 IF ~InParty("Imoen2") ~ THEN EXTERN IMOEN2J CR40
END

//GOLEM Talk
REPLACE_TRIGGER_TEXT ~IGolem2~ ~("Imoen")~ ~("Imoen2")~

EXTEND_BOTTOM IGolem2 7
 IF ~Global("IMOENGOLEM","GLOBAL",0) InParty("Imoen2") See("Imoen2") !Dead("Imoen2") !StateCheck("Imoen2",STATE_SLEEPING)~ THEN DO ~SetGlobal("IMOENGOLEM","GLOBAL",1)~ EXTERN IMOEN2J CR16
END

//Modify IShadmt1.dlg
EXTEND_BOTTOM IShadmt1 3
 IF ~IsValidForPartyDialogue("IMOEN2")~ THEN EXTERN IMOEN2J CR62
END

EXTEND_BOTTOM IShadmt1 4
 IF ~IsValidForPartyDialogue("IMOEN2")~ THEN EXTERN IMOEN2J CR62
END