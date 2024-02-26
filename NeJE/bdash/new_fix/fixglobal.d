ALTER_TRANS ABELA // file name
BEGIN 9 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~GiveItemCreate("MISC68",LastTalkedToBy,0,0,0)
DestroySelf()~
END

ALTER_TRANS ALBERT // file name
BEGIN 0 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("RUFIE",[3803.695],0)~
END

ALTER_TRANS ALORA // file name
BEGIN 11 12 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("FLAM",[802.905],0)
CreateCreature("FLAM",[850.886],0)
EscapeArea()~
END

ALTER_TRANS AMFAHEED // file name
BEGIN 10 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~GiveItemCreate("plot17b",LastTalkedToBy,0,0,0)
ActionOverride("ammajira",EscapeArea())
EscapeArea()~
END

ALTER_TRANS ARGHAI // file name
BEGIN 1 2 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("OGREHA",[1351.1078],0)
CreateCreature("OGREHA",[1351.1078],0)
CreateCreature("OGREHA",[1351.1078],0)
Enemy()~
END

ALTER_TRANS ARNMAN11 // file name
BEGIN 0 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~OpenDoor("DOOR05")
CreateCreature("ARNMAN10",[3563.2121],0)
ActionOverride("arnman10",MoveToObject("arnman11"))~
END

REPLACE_STATE_TRIGGER BANDIC 0
~NumDeadGT("Bandcap",4)~

ALTER_TRANS BARUK // file name
BEGIN 1 2 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("KOBCOMM",[766.988],0)
CreateCreature("KOBCOMM",[776.998],0)
CreateCreature("KOBCOMM",[756.978],0)
CreateCreature("KOBCOMM",[746.988],0)
CreateCreature("KOBCOMM",[736.988],0)
Enemy()~
END

ALTER_TRANS BELDIN // file name
BEGIN 1 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("KOBOLDAB",[2227.2390],0)
CreateCreature("KOBOLDAB",[2227.2390],0)
CreateCreature("KOBOLDAB",[2227.2390],0)
CreateCreature("KOBOLDAB",[2227.2390],0)
EscapeArea()~
END

ALTER_TRANS BENJY // file name
BEGIN 0 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("FLAMANG",[1227.821],0)
CreateCreature("FLAMANG",[1180.883],0)
CreateCreature("FLAMANG",[1094.901],0)
CreateCreature("FLAMANG",[1371.943],0)
CreateCreature("FLAMANG",[1277.991],0)
ActionOverride("DICKSMOK",Enemy())
Enemy()~
END

ALTER_TRANS BRATHL // file name
BEGIN 11 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("FLAM6",[171.1167],0)
CreateCreature("FLAM6",[225.1169],0)
CreateCreature("FLAM6",[405.1330],0)
EscapeArea()~
END

ALTER_TRANS BREVLI // file name
BEGIN 20 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~Wait(10)
CreateCreature("GUARD",[0.0],0)
CreateCreature("GUARD",[0.0],0)
CreateCreature("GUARD",[0.0],0)
CreateCreature("GUARD",[0.0],0)
CreateCreature("GUARD",[0.0],0)
SetGlobal("HelpBrevlik","GLOBAL",2)~
END

ALTER_TRANS BREVLI // file name
BEGIN 27 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~GiveItemCreate("RING23",LastTalkedToBy,0,0,0)
TakePartyGold(500)~
END

ALTER_TRANS BREVLI // file name
BEGIN 28 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~GiveItemCreate("RING23",LastTalkedToBy,0,0,0)
TakePartyGold(200)~
END

ALTER_TRANS BRILLA // file name
BEGIN 2 4 5 6 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("GUARD",[1482.933],0)
CreateCreature("GUARD",[1482.933],0)
CreateCreature("GUARD",[1482.933],0)
EscapeArea()~
END

ALTER_TRANS CARSA // file name
BEGIN 8 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("KAHRK",[3476.852],0)
Kill("CARSA")~
END

ALTER_TRANS CATTAC // file name
BEGIN 1 2 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~Shout(1)
Enemy()
Attack(NearestEnemyOf(Myself))~
END

REPLACE_STATE_TRIGGER DMTOWN1 0
~RandomNum(4,1)~

ALTER_TRANS DRUNK // file name
BEGIN 4 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~PlayDead(9000)~
END

ALTER_TRANS ELGEA // file name
BEGIN 0 END // state number (can be more than one)
BEGIN 1 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~!IsValidForPartyDialog("Edwin")
!IsValidForPartyDialog("Korgan")~
END

ALTER_TRANS CHARLE // file name
BEGIN 3 9 10 11 12 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("CharlestonMoved","GLOBAL",1)
CreateCreature("GALLOR",[3077.1261],0)
ActionOverride("Gallor",MoveToPoint([3069.1315]))
MoveToPoint([3077.1261])~
END

ALTER_TRANS CHARLE // file name
BEGIN 15 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("HelpCharleston","GLOBAL",1)
SetGlobal("CharlestonMoved","GLOBAL",1)
CreateCreature("GALLOR",[3077.1261],0)
ActionOverride("Gallor",MoveToPoint([3069.1315]))
MoveToPoint([3077.1261])~
END

ALTER_TRANS CULT1 // file name
BEGIN 1 END // state number (can be more than one)
BEGIN 0 2 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("CULTT2",[826.999],0)
CreateCreature("CULTT2",[826.999],0)
CreateCreature("CULTT2",[826.999],0)
CreateCreature("CULTT2",[1198.504],0)
CreateCreature("CULTT2",[1198.504],0)
CreateCreature("CULTT4",[1207.681],0)
CreateCreature("CULTT4",[1207.681],0)
Enemy()~
END

ALTER_TRANS CULT1 // file name
BEGIN 3 5 6 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("CULTT2",[1078.876],0)
CreateCreature("CULTT2",[1078.876],0)
CreateCreature("CULTT2",[1078.876],0)
CreateCreature("CULTT2",[1198.504],0)
CreateCreature("CULTT2",[1198.504],0)
CreateCreature("CULTT4",[1444.409],0)
CreateCreature("CULTT4",[1444.409],0)
Enemy()~
END

ALTER_TRANS CULT3 // file name
BEGIN 2 3 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~TakePartyItem("DAGG10")
SetGlobal("Cult1","GLOBAL",1)
CreateCreature("CULTT1",[2716.877],0)
CreateCreature("CULTT2",[2707.1124],0)
CreateCreature("CULTT2",[2707.1124],0)
ActionOverride("Cult Wizard",MoveToPoint([2900.904]))
CreateCreature("CULTT3",[3045.773],0)
CreateCreature("CULTT3",[3054.1032],0)
CreateCreature("CULTT4",[2393.1044],0)
CreateCreature("CULTT4",[2406.848],0)
ActionOverride("Cult Archer",MoveToPoint([2716.877]))
ForceSpell(Myself,DRYAD_TELEPORT)~
END

ALTER_TRANS CYTHAN // file name
BEGIN 2 3 4 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("ARGHH",[835.718],0)
CreateCreature("UGHH",[795.654],0)
Enemy()~
END

ALTER_TRANS DEGROD // file name
BEGIN 1 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("HELMHO",[371.427],0)
CreateCreature("DOOMGU",[418.460],0)
CreateCreature("DOOMGU",[326.489],0)
CreateCreature("STALKE",[351.605],0)
Enemy()~
END

ALTER_TRANS DEGROD // file name
BEGIN 7 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~GiveGoldForce(5000)
TakePartyItem("HELM07")
CreateCreature("HELMHO",[371.427],0)
CreateCreature("DOOMGU",[418.460],0)
CreateCreature("DOOMGU",[326.489],0)
CreateCreature("STALKE",[351.605],0)
EscapeArea()~
END

ALTER_TRANS DELTAN // file name
BEGIN 10 11 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~GiveGoldForce(2000)
SetGlobal("HelpEltan","GLOBAL",2)
GiveItem("BOOK68",LastTalkedToBy)
IncrementChapter("Chptxt-6")
AddJournalEntry(75196,INFO)
ActionOverride(Player1,LeaveAreaLUAPanic("AR6526","",[4714.2930],12))
ActionOverride(Player1,LeaveAreaLUA("AR6526","",[4714.2930],12))
ActionOverride(Player2,LeaveAreaLUA("AR6526","",[4714.2930],12))
ActionOverride(Player3,LeaveAreaLUA("AR6526","",[4714.2930],12))
ActionOverride(Player4,LeaveAreaLUA("AR6526","",[4714.2930],12))
ActionOverride(Player5,LeaveAreaLUA("AR6526","",[4714.2930],12))
ActionOverride(Player6,LeaveAreaLUA("AR6526","",[4714.2930],12))
DestroySelf()~
END

ALTER_TRANS DELTAN // file name
BEGIN 12 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~GiveItemCreate("MISC55",LastTalkedToBy,0,0,0)
DestroySelf()~
END

ALTER_TRANS DELTAN2 // file name
BEGIN 0 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~GiveItemCreate("MISC55",LastTalkedToBy,0,0,0)
GiveItemCreate("SCRL2R",LastTalkedToBy,0,0,0)
DestroySelf()~
END

ALTER_TRANS DELTHY // file name
BEGIN 17 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~Global("AskedDelthyr1","GLOBAL",0)~
END

ALTER_TRANS DELTHY // file name
BEGIN 17 END // state number (can be more than one)
BEGIN 1 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~Global("AskedDelthyr2","GLOBAL",0)~
END

ALTER_TRANS DELTHY // file name
BEGIN 17 END // state number (can be more than one)
BEGIN 2 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~Global("AskedDelthyr3","GLOBAL",0)~
END

ALTER_TRANS DELTHY // file name
BEGIN 17 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("AskedDelthyr1","GLOBAL",0)~
END

ALTER_TRANS DELTHY // file name
BEGIN 17 END // state number (can be more than one)
BEGIN 1 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("AskedDelthyr2","GLOBAL",0)~
END

ALTER_TRANS DELTHY // file name
BEGIN 17 END // state number (can be more than one)
BEGIN 2 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("AskedDelthyr3","GLOBAL",0)~
END

ALTER_TRANS DOCSOL03 // file name
BEGIN 9 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("GuardSeesPC","LOCALS",4)
ActionOverride("docsol02",EscapeArea())
EscapeArea()~
END

ALTER_TRANS DOOMSAY // file name
BEGIN 4 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("doomsayer","GLOBAL",0)
EscapeArea()~
END

ALTER_TRANS DOPDUR3 // file name
BEGIN 0 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~DialogueInterrupt(FALSE)
SetDialogue("")
Face(10)
CreateCreature("islann",[2045.953],0)
CreateCreature("fuerne",[1461.597],0)
SetGlobal("dopdur3","GLOBAL",1)
ActionOverride("FUERNEBOL",MoveToPoint([1638.749]))
ActionOverride("FUERNEBOL",ProtectPoint([1638.749],3))
ActionOverride("ISLANNE",MoveToPoint([1806.895]))
ActionOverride("ISLANNE",ProtectPoint([1806.895],3))
Wait(3)
ForceSpellPoint([1900.714],QUICK_TELEPORT)
Face(10)
Wait(2)
DialogueInterrupt(TRUE)
StartDialogue("dopdur3",Player1)~
END

ALTER_TRANS DRATAN // file name
BEGIN 1 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("IRONGUAR",[507.838],0)
CreateCreature("IRONGUAR",[538.898],0)
CreateCreature("IRONGUAR",[679.216],0)
CreateCreature("IRONGUAR",[751.959],0)
CreateCreature("IRONGU",[992.858],0)
CreateCreature("IRONGU",[690.276],0)
CreateCreature("IRONGU",[242.408],0)
Enemy()~
END

ALTER_TRANS DRSTATU1 // file name
BEGIN 1 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~ActionOverride("drstatu2",StartDialogueNoSet(Player1))~
END

ALTER_TRANS DRSTATU2 // file name
BEGIN 2 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~ActionOverride("drstatu1",StartDialogueNoSet(Player1))~
END

ALTER_TRANS DRSTATU2 // file name
BEGIN 3 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~ActionOverride("drstatu3",StartDialogueNoSet(Player1))~
END

ALTER_TRANS DRSTATU3 // file name
BEGIN 2 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~AddexperienceParty(30000)
ActionOverride("drstatu2",StartDialogueNoSet(Player1))~
END

ALTER_TRANS DSHOP02 // file name
BEGIN 15 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~OR(2)
Global("JaheiraRomanceActive","GLOBAL",1)
Global("JaheiraRomanceActive","GLOBAL",2)
InParty("Jaheira")
!Dead("Jaheira")~
END

ALTER_TRANS DSHOP02 // file name
BEGIN 15 END // state number (can be more than one)
BEGIN 1 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~OR(4)
Global("JaheiraRomanceActive","GLOBAL",0)
Global("JaheiraRomanceActive","GLOBAL",3)
!InParty("Jaheira")
Dead("Jaheira")~
END

ALTER_TRANS ELDOTP // file name
BEGIN 3 8 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~ActionOverride("Skie",ChangeAIScript("",DEFAULT))
ActionOverride("Skie",SetGlobal("IWasKickedOut","LOCALS",1))
ActionOverride("Skie",LeaveParty())
ActionOverride("Skie",SetDialogue("SkieP"))
SetGlobal("IWasKickedOut","LOCALS",1)~
END

ALTER_TRANS ELKART // file name
BEGIN 2 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("FLAME",[0.0],0)
CreateCreature("FLAME",[0.0],0)
CreateCreature("FLAME",[0.0],0)
CreateCreature("FLAME",[0.0],0)
CreateCreature("FLAME",[0.0],0)
CreateCreature("FLAME",[0.0],0)
EscapeArea()~
END

ALTER_TRANS EMERSO // file name
BEGIN 0 1 4 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("EmersonPermission","GLOBAL",1)
SetGlobal("SpokeToEmerson","GLOBAL",1)~
END

ALTER_TRANS FELONI // file name
BEGIN 2 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("FLAMEN",[302.639],0)
CreateCreature("FLAMEN",[302.639],0)
EscapeArea()~
END

REPLACE_STATE_TRIGGER FLAM7 4
~RandomNum(2,1)
StateCheck(Myself,STATE_CHARMED)~

REPLACE_STATE_TRIGGER FLAM7 5
~RandomNum(2,2)
StateCheck(Myself,STATE_CHARMED)~

ALTER_TRANS FLAMGG // file name
BEGIN 1 2 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("SCAR",[1212.1150],0)~
END

REPLACE_STATE_TRIGGER FRIEND 6
~StateCheck(Myself,STATE_CHARMED)~

REPLACE_STATE_TRIGGER FERGUS 6
~Global("FERGUS1","GLOBAL",2)~

ALTER_TRANS FTOBE5 // file name
BEGIN 6 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("FLAMHUSB",[490.458],0)~
END

ALTER_TRANS GALKEN // file name
BEGIN 11 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~RevealAreaOnMap("AR0500")
TakePartyGold(900)
GiveItemCreate("Misc2N",LastTalkedToBy,0,0,0)
EscapeArea()~
END

ALTER_TRANS GALTOK // file name
BEGIN 3 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("KOBOLD",[3284.2631],0)
CreateCreature("KOBOLD",[3284.2631],0)
CreateCreature("KOBOLD",[3284.2631],0)
CreateCreature("KOBOLD",[3284.2631],0)
EscapeArea()~
END

ALTER_TRANS GANTOL // file name
BEGIN 2 3 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("GANTOL2",[246.433],0)
DestroySelf()~
END

ALTER_TRANS GARAN // file name
BEGIN 2 3 4 5 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~Enemy()
CreateCreature("ankheg",[912.1057],0)
CreateCreature("ankheg",[822.1029],0)
CreateCreature("ankheg",[1198.1011],0)
CreateCreature("ankheg",[1220.1172],0)~
END

ALTER_TRANS GAZIB // file name
BEGIN 0 1 2 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("OOPAH",[1282.3222],0)~
END

ALTER_TRANS GERVIS // file name
BEGIN 1 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("VOLTIN",[705.246],0)~
END

ALTER_TRANS GLANMA // file name
BEGIN 6 8 9 10 12 16 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~Wait(10)
CreateCreature("FLAMEN",[0.0],0)
CreateCreature("FLAMEN",[0.0],0)
CreateCreature("FLAMEN",[0.0],0)
CreateCreature("FLAMEN",[0.0],0)
CreateCreature("FLAMEN",[0.0],0)~
END

ALTER_TRANS GORPEL // file name
BEGIN 1 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("GRETEK",[743.1041],0)
CreateCreature("PARGUS",[681.1029],0)
CreateCreature("WILF",[775.1135],0)
CreateCreature("NADER",[845.992],0)
CreateCreature("ARLIN",[812.1057],0)
CreateCreature("CATURA",[376.1045],0)~
END

ALTER_TRANS GORPEL // file name
BEGIN 2 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("GRETEK",[743.1041],0)
CreateCreature("PARGUS",[681.1029],0)
CreateCreature("WILF",[775.1135],0)
CreateCreature("NADER",[845.992],0)
CreateCreature("ARLIN",[812.1057],0)
CreateCreature("CATURA",[376.1045],0)
ActionOverride("FARLUCK",EscapeArea())
ActionOverride("TURPIN",EscapeArea())
ActionOverride("NELIK",EscapeArea())
EscapeArea()~
END

ALTER_TRANS HAJANOS // file name
BEGIN 3 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~EscapeAreaMove("ar0500",4398,1060,4)
ActionOverride("habrega",EscapeAreaMove("ar0500",4475,1037,5))~
END

ALTER_TRANS HELLGEN // file name
BEGIN 10 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~AddJournalEntry(15713,QUEST)
SetGlobal("Player1Greed","GLOBAL",1)
TakePartyItem("MISCBC")
GiveItem("MISCB7",LastTalkedToBy)
AddexperienceParty(20000)
CreateVisualEffect("spplanar",[362.918])
Wait(2)
DestroySelf()~
END

ALTER_TRANS HELLGEN // file name
BEGIN 11 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "UNSOLVED_JOURNAL" ~~
END

ALTER_TRANS HUSAM2 // file name
BEGIN 3 END // state number (can be more than one)
BEGIN 0 1 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("SHADOW",[313.1889],0)
CreateCreature("SHADOW",[368.1887],0)
CreateCreature("SHADOW",[426.1902],0)
CreateCreature("SHADOW",[489.1908],0)
CreateCreature("SHADOW",[550.1905],0)
CreateCreature("SHADOW",[528.1962],0)
SetGlobal("HusamMove","GLOBAL",99)
Wait(4)
Dialog([PC])~
END

ALTER_TRANS IRON10 // file name
BEGIN 2 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("IRONGU",[186.1729],0)
CreateCreature("IRONGU",[141.1646],0)
CreateCreature("IRONGU",[140.1555],0)~
END

ALTER_TRANS IRON12 // file name
BEGIN 2 4 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~EscapeArea()~
END

ALTER_TRANS IRONM4 // file name
BEGIN 4 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("IRONGU",[936.836],0)
CreateCreature("IRONGU",[936.836],0)
CreateCreature("IRONGU",[936.836],0)
EscapeArea()~
END

ALTER_TRANS ISLSIR // file name
BEGIN 7 8 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("SIRINE",[318.2010],0)
CreateCreature("SIRINE",[387.1870],0)
CreateCreature("SIRINE",[813.803],0)
CreateCreature("SIRINE",[735.738],0)
Enemy()~
END

ALTER_TRANS ITHMEE // file name
BEGIN 4 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("GUARD",[0.0],0)
CreateCreature("GUARD",[0.0],0)
CreateCreature("GUARD",[0.0],0)
ActionOverride("HELSHARA",Enemy())
ActionOverride("DELORNA",Enemy())
Enemy()~
END

REPLACE_STATE_TRIGGER ITHTYL 10
~True()~

ALTER_TRANS JACIL // file name
BEGIN 0 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("DOGBLINK",[429.535],0)
CreateCreature("DOGBLINK",[429.535],0)
CreateCreature("DOGBLINK",[429.535],0)
CreateCreature("DOGBLINK",[429.535],0)
CreateCreature("DOGBLINK",[429.535],0)
CreateCreature("DOGBLINK",[429.535],0)
CreateCreature("DOGBLINK",[429.535],0)
Enemy()~
END

REPLACE_STATE_TRIGGER JARED 2
~Dead("JaredPbear")
Global("HelpJared","GLOBAL",0)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~

REPLACE_STATE_TRIGGER JARED 3
~Dead("JaredPbear")
Global("HelpJared","GLOBAL",0)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~

REPLACE_STATE_TRIGGER JARED 4
~Dead("JaredPbear")
Global("HelpJared","GLOBAL",0)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~

ALTER_TRANS JONDAL // file name
BEGIN 2 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("ERIK",[4185.1114],0)
ActionOverride("Erik",Enemy())
Enemy()~
END

ALTER_TRANS KAROUG // file name
BEGIN 2 4 7 9 12 13 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~ActionOverride("Daese",Enemy())
CreateCreature("WOLFWEGL",[135.454],0)
CreateCreature("WOLFWEGL",[135.454],0)
CreateCreature("WOLFWEGL",[157.415],0)
CreateCreature("WOLFWEGL",[157.415],0)
ForceSpell(Myself,GREATER_WOLFWERE_CHANGE)~
END

ALTER_TRANS KIELPC // file name
BEGIN 0 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~MoveToPoint([1830.904])
OpenDoor("Door09")
MoveToPoint([2052.974])
MoveToPoint([2092.924])
Deactivate("Levers 1-3, 6-7")
Activate("Lever 8")
MoveToPoint([2135.890])
SetGlobal("KielPC","AR0512",2)
StartDialogueNoSet([PC])~
END

ALTER_TRANS KIELPC // file name
BEGIN 1 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~Deactivate("Levers 4-5")
Activate("Levers 9-11")
MoveToPoint([2357.930])
MoveToPoint([2488.839])
MoveToPoint([2631.966])
MoveToPoint([2350.1215])
MoveToPoint([2294.1341])
MoveToPoint([2047.1371])
SetGlobal("KielPC","AR0512",3)
StartDialogueNoSet([PC])~
END

ALTER_TRANS KIELPC // file name
BEGIN 4 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("KielPC","AR0512",6)
CreateCreature("kiel2",[1005.2247],0)
AddExperienceParty(5000)
ChangeAIScript("",Override)
ActionOverride("kiel2",EscapeArea())~
END

REPLACE_STATE_TRIGGER KIERES 8
~True()~

ALTER_TRANS KRYLA // file name
BEGIN 4 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("JONDALW",[3027.1690],0)
SetGlobal("KrylaMove","GLOBAL",2)
ForceSpell(Myself,WOLFWERE_CHANGE)~
END

ALTER_TRANS LAERTA // file name
BEGIN 0 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("GERVIS",[807.497],0)
SetNumTimesTalkedTo(1)
SetGlobal("TalkedToLaerta","GLOBAL",1)~
END

ALTER_TRANS LAERTA // file name
BEGIN 4 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("HelpLaerta","GLOBAL",2)
AddexperienceParty(1000)
GiveItem("SCRL78",LastTalkedToBy)~
END

ALTER_TRANS LAKADA // file name
BEGIN 5 6 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("IRONGU",[1650.582],0)
CreateCreature("IRONGU",[1650.582],0)
CreateCreature("IRONGU",[1650.582],0)
CreateCreature("IRONGU",[1650.582],0)
Enemy()~
END

REPLACE_STATE_TRIGGER LAHL 1
~Global("Kaishas1","GLOBAL",1)
RandomNum(7,1)
!Dead("karoug")~

REPLACE_STATE_TRIGGER LAHL 2
~Global("Kaishas1","GLOBAL",1)
RandomNum(7,2)
!Dead("karoug")~

REPLACE_STATE_TRIGGER LAHL 3
~Global("Kaishas1","GLOBAL",1)
RandomNum(7,3)
!Dead("karoug")~

REPLACE_STATE_TRIGGER LAHL 4
~Global("Kaishas1","GLOBAL",1)
RandomNum(7,4)
!Dead("karoug")~

REPLACE_STATE_TRIGGER LAHL 5
~Global("Kaishas1","GLOBAL",1)
RandomNum(7,5)
!Dead("karoug")~

REPLACE_STATE_TRIGGER LAHL 6
~Global("Kaishas1","GLOBAL",1)
RandomNum(7,6)
!Dead("karoug")~

REPLACE_STATE_TRIGGER LAHL 7
~Global("Kaishas1","GLOBAL",1)
RandomNum(7,7)
!Dead("karoug")~

ALTER_TRANS LAUREL // file name
BEGIN 3 8 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetInterrupt(FALSE)
Wait(3)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
Wait(15)
SetNumTimesTalkedTo(10)
SetInterrupt(TRUE)~
END

REPLACE_STATE_TRIGGER LOTHAN 0
~Global("LothanderMove","GLOBAL",3)
Global("HelpLothander","GLOBAL",0)~

REPLACE_STATE_TRIGGER LOTHAN 10
~Global("LothanderMove","GLOBAL",9)
Global("HelpLothander","GLOBAL",1)~

ALTER_TRANS LOTHAN // file name
BEGIN 14 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~AddexperienceParty(1500)
TakePartyItem("SCRLJALA")
GiveItem("POTN20",LastTalkedToBy)
SetGlobal("MarekMove","GLOBAL",1)
SetGlobal("LothanderMove","GLOBAL",5)
EscapeArea()~
END

ALTER_TRANS MARL // file name
BEGIN 16 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~~
END

ALTER_TRANS MELICA // file name
BEGIN 16 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("ThalantyrRumours","GLOBAL",1)
GiveItemCreate("MISC49",LastTalkedToBy,0,0,0)
DestroySelf()~
END

ALTER_TRANS MESSED // file name
BEGIN 3 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~Kill(Myself)~
END

REPLACE_STATE_TRIGGER MINERN 0
~Global("SpokenToEmerson","GLOBAL",0)
NumTimesTalkedTo(0)~

REPLACE_STATE_TRIGGER MINERN 1
~Global("SpokenToEmerson","GLOBAL",0)
NumTimesTalkedTo(1)~

ALTER_TRANS MGTEOS01 // file name
BEGIN 61 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("SpawnAssassins","AR0411",1)~
END

REPLACE_STATE_TRIGGER MTOB6 5
~Global("Warning","GLOBAL",1)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~

REPLACE_STATE_TRIGGER MTOB6 6
~Global("Warning","GLOBAL",1)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~

ALTER_TRANS MTBE9 // file name
BEGIN 2 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("MERC",[339.330],0)
CreateCreature("MERC",[431.310],0)
CreateCreature("MERC",[372.348],0)
CreateCreature("MERC",[391.365],0)
CreateCreature("MERC",[427.348],0)
CreateCreature("MERC",[457.334],0)~
END

ALTER_TRANS MULAHE // file name
BEGIN 2 6 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~Enemy()
CreateCreature("KOBOLD",[217.591],0)
CreateCreature("KOBOLD",[217.591],0)
CreateCreature("KOBOLD",[217.591],0)
CreateCreature("KOBOLD",[217.591],0)
CreateCreature("KOBOLD",[217.591],0)
CreateCreature("KOBOLD",[217.591],0)
CreateCreature("SKELET",[222.502],0)
CreateCreature("SKELET",[222.502],0)
CreateCreature("SKELET",[222.502],0)
CreateCreature("SKELET",[222.502],0)
MoveToPoint([359.664])
Help()~
END

ALTER_TRANS NARCIL // file name
BEGIN 3 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("JELLYGR",[3777.2859],0)
CreateCreature("JELLYGR",[3777.2859],0)
CreateCreature("JELLYGR",[3777.2859],0)
CreateCreature("JELLYGR",[3777.2859],0)
EscapeArea()~
END

ALTER_TRANS NARCIL // file name
BEGIN 4 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("JELLMU",[3777.2859],0)
CreateCreature("JELLMU",[3777.2859],0)
Enemy()~
END

ALTER_TRANS NARCIL // file name
BEGIN 4 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("JELLMU",[3777.2859],0)
CreateCreature("JELLMU",[3777.2859],0)
Enemy()~
END

ALTER_TRANS NARLEN // file name
BEGIN 24 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("NarlenMove","GLOBAL",6)
TakePartyItem("MISC45")
GiveItemCreate("MISC36",LastTalkedToBy,0,0,0)
GiveItemCreate("MISC36",LastTalkedToBy,0,0,0)
GiveItemCreate("MISC36",LastTalkedToBy,0,0,0)~
END

ALTER_TRANS NARLEN // file name
BEGIN 25 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("NarlenMove","GLOBAL",7)
TakePartyItem("MISC45")
GiveItemCreate("MISC36",LastTalkedToBy,0,0,0)
GiveItemCreate("MISC36",LastTalkedToBy,0,0,0)
GiveItemCreate("MISC36",LastTalkedToBy,0,0,0)~
END

ALTER_TRANS NESTOR // file name
BEGIN 1 3 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("CAVENE",[4361.1455],0)
Enemy()~
END

ALTER_TRANS NEVILL // file name
BEGIN 1 2 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("HOBGOBA",[3621.706],0)
CreateCreature("HOBGOBA",[3631.716],0)
CreateCreature("HOBGOBA",[3611.696],0)
CreateCreature("HOBGOBA",[3641.706],0)
CreateCreature("HOBGOBA",[3651.706],0)
Enemy()~
END

ALTER_TRANS NEXLIT // file name
BEGIN 0 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("URSA",[3557.2061],0)
ActionOverride("Ursa",Attack("Nexlit"))~
END

ALTER_TRANS NOBW8 // file name
BEGIN 22 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("TORLOB",[349.474],0)
EraseJournalEntry(74544)
EraseJournalEntry(74545)
EraseJournalEntry(74546)~
END

ALTER_TRANS NOBW8 // file name
BEGIN 19 20 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("AcceptedJob","GLOBAL",2)
GiveGoldForce(500)
GiveItem("MISC20",LastTalkedToBy)~
END

REPLACE_STATE_TRIGGER NOBL10 4
~ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~

REPLACE_STATE_TRIGGER NOBL10 5
~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~

ALTER_TRANS OBE // file name
BEGIN 3 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~ActionOverride("Osprey",JoinParty())
ActionOverride("Canderous",JoinParty())
ActionOverride("Mordaine",JoinParty())
ActionOverride("Arkanis",JoinParty())
ActionOverride("Deeder",JoinParty())
CreateCreature("igibber",[724.660],0)
CreateCreature("igibber",[754.701],0)
CreateCreature("igibber",[698.568],0)
CreateCreature("igibber",[823.574],0)
CreateCreature("igibber",[919.533],0)
CreateCreature("igibber",[798.460],0)~
END

ALTER_TRANS OBE // file name
BEGIN 6 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("ixvart",[724.660],0)
CreateCreature("ixvart",[754.701],0)
CreateCreature("ixvart",[698.568],0)
CreateCreature("ixvart",[823.574],0)
CreateCreature("ixvart",[919.533],0)
CreateCreature("ixvart",[798.460],0)~
END

ALTER_TRANS OBE // file name
BEGIN 8 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("iskelet",[724.660],0)
CreateCreature("iskelet",[754.701],0)
CreateCreature("iskelet",[698.568],0)
CreateCreature("iskelet",[823.574],0)
CreateCreature("iskelet",[919.533],0)
CreateCreature("iskelet",[798.460],0)~
END

ALTER_TRANS OBE // file name
BEGIN 10 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("ikobold",[724.660],0)
CreateCreature("ikobold",[754.701],0)
CreateCreature("ikobold",[698.568],0)
CreateCreature("ikobold",[823.574],0)
CreateCreature("ikobold",[919.533],0)
CreateCreature("ikobold",[798.460],0)~
END

ALTER_TRANS OBE // file name
BEGIN 12 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("itasloi",[724.660],0)
CreateCreature("itasloi",[754.701],0)
CreateCreature("itasloi",[698.568],0)
CreateCreature("itasloi",[823.574],0)
CreateCreature("itasloi",[919.533],0)
CreateCreature("itasloi",[798.460],0)~
END

ALTER_TRANS OBE // file name
BEGIN 15 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("ihobgob",[724.660],0)
CreateCreature("ihobgob",[754.701],0)
CreateCreature("ihobgob",[698.568],0)
CreateCreature("ihobgob",[823.574],0)
CreateCreature("ihobgob",[919.533],0)
CreateCreature("ihobgob",[798.460],0)~
END

ALTER_TRANS OBERAN // file name
BEGIN 2 3 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("GUARD",[0.0],0)
CreateCreature("GUARD",[0.0],0)
CreateCreature("GUARD",[0.0],0)
CreateCreature("GUARD",[0.0],0)
CreateCreature("GUARD",[0.0],0)~
END

ALTER_TRANS OSMADI // file name
BEGIN 1 2 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("CORSONE",[4677.625],0)
CreateCreature("BEARCA",[4371.625],0)
CreateCreature("BEARCA",[4122.648],0)
Enemy()~
END

ALTER_TRANS PALIN // file name
BEGIN 2 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("WOLFWE",[2336.3292],0)
CreateCreature("WOLFWE",[2352.3450],0)
CreateCreature("WOLFWE",[2255.3480],0)
CreateCreature("WOLFWEGL",[2135.3516],0)
Enemy()
MoveToPoint([1994.3323])~
END

ALTER_TRANS PALIN // file name
BEGIN 5 6 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("WOLFWE",[2336.3292],0)
CreateCreature("WOLFWE",[2352.3450],0)
CreateCreature("WOLFWE",[2255.3480],0)
CreateCreature("WOLFWEGL",[2135.3516],0)
Enemy()~
END

ALTER_TRANS PRISM // file name
BEGIN 4 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("GREYWO",[1267.2579],0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("Prismcut")~
END

ALTER_TRANS PUMBERL // file name
BEGIN 6 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("JALAPPEAR","GLOBAL",1)
CreateCreature("JALANT",[459.531],0)
ActionOverride("Jalantha",Dialog([PC]))~
END

ALTER_TRANS PUMBERL // file name
BEGIN 7 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("TENAPPEAR","GLOBAL",1)
CreateCreature("TENYA2",[536.648],0)
ActionOverride("Tenya2",SetNumTimesTalkedTo(1))
ActionOverride("Tenya2",Dialog([PC]))~
END

ALTER_TRANS PUMBERL // file name
BEGIN 10 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("JALANT",[216.677],0)
ActionOverride("Jalantha",Dialog([PC]))~
END

ALTER_TRANS QUAYLE // file name
BEGIN 4 END // state number (can be more than one)
BEGIN 1 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~ActionOverride("Aerie",JoinParty())
SetGlobalTimer("CircusEnded","GLOBAL",ONE_DAY)~
END

ALTER_TRANS QUINN // file name
BEGIN 2 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~TakePartyItem("DAGG06")
GiveItemCreate("MISC32",LastTalkedToBy,0,0,0)
SetGlobal("HelpQuinn","GLOBAL",2)
AddexperienceParty(950)
ReputationInc(1)~
END

ALTER_TRANS PHEIRK // file name
BEGIN 6 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~~
END

ALTER_TRANS PHEIRKAS // file name
BEGIN 6 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~~
END

REPLACE_STATE_TRIGGER RAIKEN 0
~NumTimesTalkedTo(0)
Global("JoinedBandits","GLOBAL",0)~

ALTER_TRANS RAMAZI // file name
BEGIN 13 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("HelpRamazith","GLOBAL",2)
TakePartyItem("MISC68")
DestroyItem("MISC68")
CreateCreature("ABELA",[260.170],0)
ActionOverride("Abela",Dialog([PC]))~
END

ALTER_TRANS RASHAD // file name
BEGIN 5 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~Kill(Myself)~
END

ALTER_TRANS RATCHI // file name
BEGIN 1 2 4 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("KOBCOMM",[2159.1673],0)
CreateCreature("KOBCOMM",[2211.1848],0)
CreateCreature("KOBCOMM",[2455.1828],0)
CreateCreature("KOBCOMM",[2534.1769],0)
CreateCreature("KOBCOMM",[2594.1739],0)
CreateCreature("KOBCOMM",[2660.1972],0)
CreateCreature("KOBCOMM",[2647.2091],0)
CreateCreature("KOBCOMM",[2047.2233],0)
CreateCreature("KOBCOMM",[1972.2088],0)
CreateCreature("KOBCOMM",[1931.1913],0)
CreateCreature("KOBCOMM",[2727.2113],0)
Enemy()~
END

REPLACE_STATE_TRIGGER READ4 1
~!NumberOfTimesTalkedTo(0)~

ALTER_TRANS SAMANT // file name
BEGIN 1 7 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("JAMIE",[365.530],0)
EscapeArea()~
END

ALTER_TRANS SAREVO // file name
BEGIN 8 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("SarevokBehavior","GLOBAL",3)
TriggerActivation("Door0200",FALSE)
TriggerActivation("Door0109a",FALSE)
TriggerActivation("Door0109b",FALSE)
TriggerActivation("Door0111",FALSE)
SetGlobalTimer("EndGame","GLOBAL",1)
CreateCreature("ANGELO",[469.707],0)
ActionOverride("Angelo",Enemy())
Wait(1)
CreateCreature("FLAME",[469.707],0)
CreateCreature("FLAME",[469.707],0)
CreateCreature("FLAME",[469.707],0)
CreateCreature("FLAME",[469.707],0)
CreateCreature("FLAME",[469.707],0)
CreateCreature("FLAME",[469.707],0)
Shout(2)
Enemy()~
END

ALTER_TRANS SHARTE // file name
BEGIN 5 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~AddexperienceParty(300)
ChangeAIScript("SHARTEEL",OVERRIDE)
SetGlobal("BeatSharteel","GLOBAL",5)
EscapeArea()~
END

ALTER_TRANS SILENC // file name
BEGIN 4 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("NoPayment","GLOBAL",1)
Wait(10)
CreateCreature("GUARD",[0.0],0)~
END

ALTER_TRANS SHOAL // file name
BEGIN 6 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~ClearAllActions()
ChangeEnemyAlly(Myself,NEUTRAL)
ForceSpell(Myself,SHOAL_REVIVE)
CreateCreature("DROTH",[2500.500],0)
ActionOverride("Droth",MoveToPoint([2900.525]))~
END

ALTER_TRANS SHOAL // file name
BEGIN 7 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~ClearAllActions()
ChangeEnemyAlly(Myself,NEUTRAL)
CreateCreature("DROTH",[2500.500],0)
ActionOverride("Droth",MoveToPoint([2900.525]))~
END

ALTER_TRANS SILKE // file name
BEGIN 4 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("SilkeJob","GLOBAL",1)
CreateCreature("MERSIL",[3834.1755],0)
CreateCreature("MERSIL2",[3793.1723],0)
CreateCreature("MERSIL3",[3876.1774],0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("Silkecut")~
END

ALTER_TRANS SKIE // file name
BEGIN 2 4 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("GUARD",[701.1285],0)
CreateCreature("GUARD",[701.1285],0)
CreateCreature("GUARD",[701.1285],0)
EscapeArea()~
END

ALTER_TRANS SONNER // file name
BEGIN 8 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("HelpJebadoh","GLOBAL",2)
ActionOverride("Telman",EscapeArea())
ActionOverride("Jebadoh",EscapeArea())
EscapeArea()~
END

ALTER_TRANS SUNIN // file name
BEGIN 1 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("JOULAR",[494.355],0)
CreateCreature("MAKA",[773.386],0)
Enemy()~
END

ALTER_TRANS TAEROM // file name
BEGIN 9 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~GiveItemCreate("PLAT06",LastTalkedToBy,0,0,0)
DestroyItem("MISC12")
SetGlobal("MakeArmor","GLOBAL",2)~
END

ALTER_TRANS TERSUS // file name
BEGIN 3 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~GiveItemCreate("LEAT01",Player1,0,0,0)
GiveItemCreate("LEAT01",Player2,0,0,0)
GiveItemCreate("LEAT01",Player3,0,0,0)
GiveItemCreate("LEAT01",Player4,0,0,0)
GiveItemCreate("LEAT01",Player5,0,0,0)
GiveItemCreate("LEAT01",Player6,0,0,0)~
END

ALTER_TRANS TEST2 // file name
BEGIN 2 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~Attack([ANYONE])~
END

REPLACE_STATE_TRIGGER TEVEN 0
~NumTimesTalkedTo(0)
Global("JoinedBandits","GLOBAL",0)~

ALTER_TRANS TRACEA // file name
BEGIN 1 2 3 4 5 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("TANAR",[641.583],0)~
END

ALTER_TRANS TREMAI // file name
BEGIN 12 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("TremainMove","GLOBAL",2)
CreateCreature("CASSON",[413.334],0)
ActionOverride("Casson",Dialog([PC]))~
END

ALTER_TRANS UDSVIR08 // file name
BEGIN 13 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("udleaveGnome","AR2100",1)
EscapeArea()~
END

ALTER_TRANS ULCAST // file name
BEGIN 6 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~TakePartyItem("MISC82")
TakePartyItem("MISC48")
GiveItemCreate("SW1H19",LastTalkedToBy,0,0,0)~
END

ALTER_TRANS WIVEN // file name
BEGIN 6 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~CreateCreature("DIRK",[307.580],0)
CreateCreature("MEAKIN",[737.402],0)
CreateCreature("SATH",[437.364],0)
Enemy()~
END