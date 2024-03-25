//ADD_STATE_TRIGGER BIMOEN25 5 ~InParty("Sarevok")~ // weight 3
//ADD_STATE_TRIGGER BIMOEN25 11 ~InParty("Sarevok")~ // weight 4
//ADD_STATE_TRIGGER BIMOEN25 14 ~InParty("Anomen")~ // weight 5
//ADD_STATE_TRIGGER BIMOEN25 23 ~InParty("Edwin")~ // weight 6
//ADD_STATE_TRIGGER BIMOEN25 33 ~InParty("Minsc")~ // weight 7
//ADD_STATE_TRIGGER BIMOEN25 37 ~InParty("Cernd")~ // weight 8
//ADD_STATE_TRIGGER BIMOEN25 55 ~InParty("Valygar")~ // weight 9
//ADD_STATE_TRIGGER BIMOEN25 63 ~InParty("Jan")~ // weight 10
//ADD_STATE_TRIGGER BIMOEN25 76 ~InParty("Nalia")~ // weight 11
SET_WEIGHT BIMOEN25 81 #-3
SET_WEIGHT BIMOEN25 91 #-2
SET_WEIGHT BIMOEN25 100 #-1

//ADD_STATE_TRIGGER BSAREV25 10 ~InParty("Anomen")~ // weight #4
//ADD_STATE_TRIGGER BSAREV25 53 ~InParty("Jaheira")~ // weight #5
//ADD_STATE_TRIGGER BSAREV25 75 ~InParty("Aerie")~ // weight #6
//ADD_STATE_TRIGGER BSAREV25 94 ~InParty("Minsc")~ // weight #7

SET_WEIGHT BSAREV25 83 #-4
SET_WEIGHT BSAREV25 105 #-3
SET_WEIGHT BSAREV25 120 #-2
SET_WEIGHT BSAREV25 142 #-1

REPLACE_TRIGGER_TEXT ~aerie25j~ ~("Imoen")~ ~("Imoen2")~
REPLACE_TRIGGER_TEXT ~hgwra01~ ~("Imoen")~ ~("Imoen2")~
REPLACE_TRIGGER_TEXT ~vicon25j~ ~("Imoen")~ ~("Imoen2")~
REPLACE_TRIGGER_TEXT ~jahei25j~ ~("Imoen")~ ~("Imoen2")~
REPLACE_TRIGGER_TEXT ~ambar01~ ~("Imoen")~ ~("Imoen2")~
REPLACE_TRIGGER_TEXT ~fsspir2~ ~("Imoen")~ ~("Imoen2")~
REPLACE_TRIGGER_TEXT ~gorimp01~ ~("Imoen")~ ~("Imoen2")~
REPLACE_TRIGGER_TEXT ~haerd25j~ ~("Imoen")~ ~("Imoen2")~
REPLACE_TRIGGER_TEXT ~jan25j~ ~("Imoen")~ ~("Imoen2")~
REPLACE_TRIGGER_TEXT ~mazzy25j~ ~("Imoen")~ ~("Imoen2")~
REPLACE_TRIGGER_TEXT ~bazmonk~ ~("Imoen")~ ~("Imoen2")~
REPLACE_TRIGGER_TEXT ~bazeye01~ ~("Imoen")~ ~("Imoen2")~
REPLACE_TRIGGER_TEXT ~baerie25~ ~("Imoen")~ ~("Imoen2")~
REPLACE_TRIGGER_TEXT ~bcernd25~ ~("Imoen")~ ~("Imoen2")~
REPLACE_TRIGGER_TEXT ~bjahei25~ ~("Imoen")~ ~("Imoen2")~
REPLACE_TRIGGER_TEXT ~hgnya01~ ~"Imoen"~ ~"Imoen2"~
REPLACE_TRIGGER_TEXT ~sarev25a~ ~"Imoen"~ ~"Imoen2"~

EXTEND_TOP SAREV25A 1
  IF ~~ THEN REPLY #22962
    DO ~SetGlobal("TalkedToSarevok","GLOBAL",1)~ GOTO 3
END