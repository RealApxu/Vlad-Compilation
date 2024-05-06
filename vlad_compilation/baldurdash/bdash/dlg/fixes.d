REPLACE_ACTION_TEXT PPBODHI4 ~SetGlobal("AsylumPlot","GLOBAL",42)[^!]*ActionOverride("vammat01",Enemy())[^!]*ActionOverride("vamold01",Enemy())[^!]*SetGlobalTimer("SlayerTimer","GLOBAL",2)[^!]*Enemy()~
~SetGlobal("AsylumPlot","GLOBAL",42)
ActionOverride("vam1514a",Enemy())
ActionOverride("vam1514b",Enemy())
SetGlobalTimer("SlayerTimer","GLOBAL",2)
Enemy()~

REPLACE_ACTION_TEXT PPBODHI4 ~SetGlobalTimer("SlayerTimer","GLOBAL",18)[^!]*ApplySpell(Myself,VAMPIRE_BAT_FORM_CHANGE)~
~SetGlobalTimer("SlayerTimer","GLOBAL",18)
ApplySpell(Myself,VAMPIRE_BAT_FORM_CHANGE)~

REPLACE_STATE_TRIGGER PLAYER1 1
~Global("SelfTalk","GLOBAL",2)
Global("AsylumPlot","GLOBAL",44)
Global("speakWhenLonkDead","GLOBAL",0)~

//Slayer Transformation Missing Interjections (not a fix?)
ADD_TRANS_ACTION PLAYER1
BEGIN 5 END
BEGIN 0 END
~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~

ADD_TRANS_TRIGGER IMOEN2J 6 ~True()~ DO 0

ADD_TRANS_ACTION IMOEN2J
BEGIN 6 END
BEGIN 0 END
~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~

EXTEND_BOTTOM IMOEN2J 6
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN MINSCJ 203
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN CERNDJ 130
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN HAERDAJ 141
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN MAZZYJ 194
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN NALIAJ 308
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN JANJ 178
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN KORGANJ 177
 IF ~InParty("Keldorn") !Dead("Keldorn") !Global("VP_KrRomanceActive","GLOBAL",1) !Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN KELDORJ 243
 IF ~InParty("Valygar") !Dead("Valygar") !Global("ValygarRomanceActive","GLOBAL",1) !Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN VALYGARJ 103
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN EDWINJ 149
 IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ANOMENJ 250
 IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN AERIEJ 116
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN VICONIJ 87
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN JAHEIRAJ 432
END

ADD_TRANS_TRIGGER JAHEIRAJ 433 ~True()~ DO 0

ADD_TRANS_ACTION JAHEIRAJ
BEGIN 433 END
BEGIN 0 END
~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~

EXTEND_BOTTOM JAHEIRAJ 433
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN MINSCJ 203
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN CERNDJ 130
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN HAERDAJ 141
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN MAZZYJ 194
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN NALIAJ 308
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN JANJ 178
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN KORGANJ 177
 IF ~InParty("Keldorn") !Dead("Keldorn") !Global("VP_KrRomanceActive","GLOBAL",1) !Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN KELDORJ 243
 IF ~InParty("Valygar") !Dead("Valygar") !Global("ValygarRomanceActive","GLOBAL",1) !Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN VALYGARJ 103
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN EDWINJ 149
 IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ANOMENJ 250
 IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN AERIEJ 116
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN VICONIJ 87
END

ADD_TRANS_TRIGGER VICONIJ 88 ~True()~ DO 0

ADD_TRANS_ACTION VICONIJ
BEGIN 88 END
BEGIN 0 END
~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~

EXTEND_BOTTOM VICONIJ 88
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN MINSCJ 203
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN CERNDJ 130
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN HAERDAJ 141
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN MAZZYJ 194
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN NALIAJ 308
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN JANJ 178
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN KORGANJ 177
 IF ~InParty("Keldorn") !Dead("Keldorn") !Global("VP_KrRomanceActive","GLOBAL",1) !Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN KELDORJ 243
 IF ~InParty("Valygar") !Dead("Valygar") !Global("ValygarRomanceActive","GLOBAL",1) !Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN VALYGARJ 103
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN EDWINJ 149
 IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ANOMENJ 250
 IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN AERIEJ 116
END

ADD_TRANS_TRIGGER AERIEJ 117 ~True()~ DO 0

ADD_TRANS_ACTION AERIEJ
BEGIN 117 END
BEGIN 0 END
~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~

EXTEND_BOTTOM AERIEJ 117
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN MINSCJ 203
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN CERNDJ 130
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN HAERDAJ 141
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN MAZZYJ 194
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN NALIAJ 308
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN JANJ 178
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN KORGANJ 177
 IF ~InParty("Keldorn") !Dead("Keldorn") !Global("VP_KrRomanceActive","GLOBAL",1) !Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN KELDORJ 243
 IF ~InParty("Valygar") !Dead("Valygar") !Global("ValygarRomanceActive","GLOBAL",1) !Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN VALYGARJ 103
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN EDWINJ 149
 IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ANOMENJ 250
END

ADD_TRANS_TRIGGER ANOMENJ 251 ~True()~ DO 0

ADD_TRANS_ACTION ANOMENJ
BEGIN 251 END
BEGIN 0 END
~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~

EXTEND_BOTTOM ANOMENJ 251
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN MINSCJ 203
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN CERNDJ 130
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN HAERDAJ 141
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN MAZZYJ 194
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN NALIAJ 308
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN JANJ 178
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN KORGANJ 177
 IF ~InParty("Keldorn") !Dead("Keldorn") !Global("VP_KrRomanceActive","GLOBAL",1) !Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN KELDORJ 243
 IF ~InParty("Valygar") !Dead("Valygar") !Global("ValygarRomanceActive","GLOBAL",1) !Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN VALYGARJ 103
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN EDWINJ 149
END

ADD_TRANS_TRIGGER EDWINJ 152 ~True()~ DO 0

ADD_TRANS_ACTION EDWINJ
BEGIN 152 END
BEGIN 0 END
~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~

EXTEND_BOTTOM EDWINJ 152
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN MINSCJ 203
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN CERNDJ 130
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN HAERDAJ 141
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN MAZZYJ 194
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN NALIAJ 308
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN JANJ 178
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN KORGANJ 177
 IF ~InParty("Keldorn") !Dead("Keldorn") !Global("VP_KrRomanceActive","GLOBAL",1) !Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN KELDORJ 243
 IF ~InParty("Valygar") !Dead("Valygar") !Global("ValygarRomanceActive","GLOBAL",1) !Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN VALYGARJ 103
END

ADD_TRANS_TRIGGER VALYGARJ 104 ~True()~ DO 0

ADD_TRANS_ACTION VALYGARJ
BEGIN 104 END
BEGIN 0 END
~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~

EXTEND_BOTTOM VALYGARJ 104
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN MINSCJ 203
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN CERNDJ 130
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN HAERDAJ 141
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN MAZZYJ 194
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN NALIAJ 308
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN JANJ 178
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN KORGANJ 177
 IF ~InParty("Keldorn") !Dead("Keldorn") !Global("VP_KrRomanceActive","GLOBAL",1) !Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN KELDORJ 243
END

ADD_TRANS_TRIGGER KELDORJ 245 ~True()~ DO 0

ADD_TRANS_ACTION KELDORJ
BEGIN 245 END
BEGIN 0 END
~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~

EXTEND_BOTTOM KELDORJ 245
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN MINSCJ 203
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN CERNDJ 130
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN HAERDAJ 141
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN MAZZYJ 194
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN NALIAJ 308
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN JANJ 178
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN KORGANJ 177
END

ADD_TRANS_TRIGGER KORGANJ 179 ~True()~ DO 0

ADD_TRANS_ACTION KORGANJ
BEGIN 179 END
BEGIN 0 END
~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~

EXTEND_BOTTOM KORGANJ 179
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN MINSCJ 203
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN CERNDJ 130
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN HAERDAJ 141
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN MAZZYJ 194
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN NALIAJ 308
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN JANJ 178
END

ADD_TRANS_TRIGGER JANJ 180 ~True()~ DO 0

ADD_TRANS_ACTION JANJ
BEGIN 180 END
BEGIN 0 END
~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~

EXTEND_BOTTOM JANJ 180
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN MINSCJ 203
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN CERNDJ 130
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN HAERDAJ 141
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN MAZZYJ 194
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN NALIAJ 308
END

ADD_TRANS_TRIGGER JANJ 180 ~True()~ DO 0

ADD_TRANS_ACTION JANJ
BEGIN 180 END
BEGIN 0 END
~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~

EXTEND_BOTTOM JANJ 180
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN MINSCJ 203
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN CERNDJ 130
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN HAERDAJ 141
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN MAZZYJ 194
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN NALIAJ 308
END

ADD_TRANS_TRIGGER NALIAJ 310 ~True()~ DO 0

ADD_TRANS_ACTION NALIAJ
BEGIN 310 END
BEGIN 0 END
~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~

EXTEND_BOTTOM NALIAJ 310
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN MINSCJ 203
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN CERNDJ 130
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN HAERDAJ 141
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN MAZZYJ 194
END

ADD_TRANS_TRIGGER MAZZYJ 196 ~True()~ DO 0

ADD_TRANS_ACTION MAZZYJ
BEGIN 196 END
BEGIN 0 END
~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~

EXTEND_BOTTOM MAZZYJ 196
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN MINSCJ 203
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN CERNDJ 130
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN HAERDAJ 141
END

ADD_TRANS_TRIGGER HAERDAJ 145 ~True()~ DO 0

ADD_TRANS_ACTION HAERDAJ
BEGIN 145 END
BEGIN 0 END
~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~

EXTEND_BOTTOM HAERDAJ 145
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN MINSCJ 203
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN CERNDJ 130
END

ADD_TRANS_TRIGGER CERNDJ 132 ~True()~ DO 0

ADD_TRANS_ACTION CERNDJ
BEGIN 132 END
BEGIN 0 END
~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~

EXTEND_BOTTOM CERNDJ 132
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN MINSCJ 203
END

ADD_TRANS_TRIGGER MINSCJ 203 ~True()~ DO 0

ADD_TRANS_ACTION MINSCJ
BEGIN 203 END
BEGIN 0 END
~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~

//not a fix end

REPLACE_ACTION_TEXT AMFAHEED ~GiveItemCreate("plot17b",LastTalkedToBy,0,0,0)[^!]*ActionOverride("ammajira",EscapeArea())[^!]*EscapeArea())~
~GiveItemCreate("plot17b",LastTalkedToBy,0,0,0)
ActionOverride("ammajira",EscapeArea())
EscapeArea()~

REPLACE_TRIGGER_TEXT AMWENC01
~"balth01"~
~"balth"~

REPLACE_TRIGGER_TEXT BEDWIN
~InParty("Keldorn")[^!]*See("Keldown")[^!]*Gender("Edwin",MALE)[^!]*!StateCheck("Keldorn",STATE_SLEEPING)[^!]*Global("BEdwin6","LOCALS",0)~
~InParty("Keldorn")
See("Keldorn")
Gender("Edwin",MALE)
!StateCheck("Keldorn",STATE_SLEEPING)
Global("BEdwin6","LOCALS",0)~

REPLACE_TRIGGER_TEXT BVICONI
~Gender(Player1,MALE)[^!]*!Global("ViconiaRomance","GLOBAL",2)[^!]*See("Anomen")[^!]*InParty("Amomen")[^!]*!StateCheck("Anomen",STATE_SLEEPING)[^!]*!Global("AnomenIsKnight","GLOBAL",1)[^!]*Global("BViconia3","LOCALS",0)~
~Gender(Player1,MALE)
!Global("ViconiaRomance","GLOBAL",2)
See("Anomen")
InParty("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
!Global("AnomenIsKnight","GLOBAL",1)
Global("BViconia3","LOCALS",0)~

REPLACE_ACTION_TEXT IMOEMJ
~MoveToObject("Reilev")[^!]*GiveItemCreate("Misc4e",Myself,1,0,0)[^!]*ActionOverride("Rielev",DestroySelf())~
~MoveToObject("Reilev")
GiveItemCreate("Misc4e",Myself,1,0,0)
ActionOverride("Rielev",DestroySelf())~

REPLACE_TRIGGER_TEXT VALYGARJ
~IfValidForPartyDialogue("Jaheria")[^!]*Global("JaheiraRomanceActive","GLOBAL",2)~
~InParty("Jaheira")
!Dead("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)~

REPLACE_ACTION_TEXT KELDO25P
~"KickedOut","GLOBAL"~
~"KickedOut","LOCALS"~

ADD_TRANS_TRIGGER BKELDO25 55
~OR(3) !InParty("Jan") !See("Jan") StateCheck("Jan",STATE_SLEEPING)~ DO 0

REPLACE_ACTION_TEXT GORCHR
~TakeItemReplace("GORCHRAM","GORCHR",Myself)~
~DestroyItem("GORCHR")~

REPLACE_TRIGGER_TEXT AERIE25J ~IsValidForPartyDialog("Imoen")~
~InParty("Imoen2")
!Dead("Imoen2")~

REPLACE_TRIGGER_TEXT AMBAR01 ~IsValidForPartyDialog("Imoen")~
~InParty("Imoen2")
!Dead("Imoen2")~

REPLACE_TRIGGER_TEXT BAERIE25 ~InParty("Imoen")[^!]*See("Imoen")[^!]*!StateCheck("Imoen",STATE_SLEEPING)~
~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)~

REPLACE_TRIGGER_TEXT BAZEYE01 ~IsValidForPartyDialog("Imoen")~
~InParty("Imoen2")
!Dead("Imoen2")~

REPLACE_TRIGGER_TEXT BAZMONK ~IsValidForPartyDialog("Imoen")~
~InParty("Imoen2")
!Dead("Imoen2")~

REPLACE_STATE_TRIGGER BCERND25 3
~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
Global("ExpBCernd4","LOCALS",0)~

REPLACE_STATE_TRIGGER BJAHEI25 7
~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
Global("ExpBJaheira1","LOCALS",0)~

REPLACE_TRIGGER_TEXT FSSPIR2 ~IsValidForPartyDialog("Imoen")[^!]*GlobalGT("Chapter","GLOBAL",7)~
~InParty("Imoen2")
!Dead("Imoen2")
GlobalGT("Chapter","GLOBAL",7)~

REPLACE_TRIGGER_TEXT GORIMP01 ~IsValidForPartyDialog("Imoen")[^!]*GlobalGT("Chapter","GLOBAL",7)~
~InParty("Imoen2")
!Dead("Imoen2")
GlobalGT("Chapter","GLOBAL",7)~

REPLACE_TRIGGER_TEXT HAERD25J ~IsValidForPartyDialog("Imoen")~
~InParty("Imoen2")
!Dead("Imoen2")~

REPLACE_STATE_TRIGGER HGNYA01 2
~!InPartySlot(LastTalkedToBy,0)
!Name("Imoen2",LastTalkedToBy)~

REPLACE_STATE_TRIGGER HGNYA01 4
~Name("Imoen2",LastTalkedToBy)~

REPLACE_TRIGGER_TEXT HGWRA01 ~!IsValidForPartyDialog("Sarevok")[^!]*IsValidForPartyDialog("Imoen")~
~InParty("Imoen2")
!Dead("Imoen2")
OR(2)
!InParty("Sarevok")
Dead("Sarevok")~

REPLACE_TRIGGER_TEXT HGWRA01 ~!IsValidForPartyDialog("Sarevok")[^!]*!IsValidForPartyDialog("Imoen")~
~OR(2)
!InParty("Sarevok")
Dead("Sarevok")
OR(2)
!InParty("Imoen2")
Dead("Imoen2")~

REPLACE_TRIGGER_TEXT JAHEI25J ~IsValidForPartyDialog("Imoen")~
~InParty("Imoen2")
!Dead("Imoen2")~

REPLACE_TRIGGER_TEXT JAN25J ~IsValidForPartyDialog("Imoen")~
~InParty("Imoen2")
!Dead("Imoen2")~

REPLACE_TRIGGER_TEXT MAZZY25J ~IsValidForPartyDialog("Imoen")~
~InParty("Imoen2")
!Dead("Imoen2")~

REPLACE_STATE_TRIGGER SAREV25A 1
~Global("SarevokAlive","GLOBAL",0)
!InPartySlot(LastTalkedToBy,0)
!Name("Imoen2",LastTalkedToBy)~

REPLACE_STATE_TRIGGER SAREV25A 2
~Global("SarevokAlive","GLOBAL",0)
!InPartySlot(LastTalkedToBy,0)
Name("Imoen",LastTalkedToBy)~

REPLACE_TRIGGER_TEXT VICON25J ~IsValidForPartyDialog("Imoen")~
~InParty("Imoen2")
!Dead("Imoen2")~

REPLACE_ACTION_TEXT BVICON25 ~Rest()~
~RestParty()~
ADD_TRANS_ACTION BVICON25
BEGIN 81 82 127 END
BEGIN END
~RestParty()~

REPLACE_ACTION_TEXT SARMEL01
~DialogInterrupt("FALSE")~
~DialogInterrupt(FALSE)~

REPLACE_TRIGGER_TEXT 25SPELL
~Dead("hectan")~
~Dead("sarthf01")~

ADD_TRANS_ACTION BJAN25
BEGIN 72 END
BEGIN 0 END
~SetGlobal("ExpBJan10","LOCALS",1)~

REPLACE_TRIGGER_TEXT NALIA
~NumTimesTalkedTo(0)[^!]*CheckStatGT(LastTalkedToBy,7,CHR)~
~NumTimesTalkedTo(0)
!Dead("Torgal")
CheckStatGT(LastTalkedToBy,7,CHR)~

REPLACE_TRIGGER_TEXT NALIA
~NumTimesTalkedTo(0)[^!]*CheckStatLT(LastTalkedToBy,8,CHR)~
~NumTimesTalkedTo(0)
!Dead("Torgal")
CheckStatLT(LastTalkedToBy,8,CHR)~

REPLACE_TRIGGER_TEXT NALIA
~NumberOfTimesTalkedTo(0)[^!]*CheckStatGT(LastTalkedToBy,7,CHR)~
~NumTimesTalkedTo(0)
!Dead("Torgal")
CheckStatGT(LastTalkedToBy,7,CHR)~

REPLACE_TRIGGER_TEXT NALIA
~NumberOfTimesTalkedTo(0)[^!]*CheckStatLT(LastTalkedToBy,8,CHR)~
~NumTimesTalkedTo(0)
!Dead("Torgal")
CheckStatLT(LastTalkedToBy,8,CHR)~

ALTER_TRANS DREAM4 // file name
BEGIN 10 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
 "ACTION" ~StartCutSceneMode()
SetGlobal("dream","AR0014",9)
ActionOverride(Player1,Attack("drim02"))
Wait(1)
EndCutSceneMode()
Kill(Myself)~
END

ALTER_TRANS GORODR1 // file name
BEGIN 39 END // state number (can be more than one)
BEGIN 2 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
 "ACTION" ~SetGlobal("zGarOdr1Job","GLOBAL",2)~
END

//Avoiding fight between Viconia and Keldorn
ALTER_TRANS BVICONI // file name
BEGIN 110 111 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
 "ACTION" ~DestroyItem("VICAMUL")
GivePartyAllEquipment()
DropInventory()
LeaveParty()
EscapeArea()~
END

REPLACE_STATE_TRIGGER BHAERDA 2
~InParty("Mazzy")
!Dead("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",STATE_SLEEPING)
Global("VP_BanterFix","LOCALS",0)~

ALTER_TRANS BHAERDA // file name
BEGIN 2 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
 "ACTION" ~SetGlobal("VP_BanterFix","LOCALS",1)~
END