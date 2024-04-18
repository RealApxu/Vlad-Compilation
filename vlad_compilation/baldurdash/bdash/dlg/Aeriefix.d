ADD_STATE_TRIGGER AERIEJ 7 ~!Global("QuayleRaelis","GLOBAL",1)~ 10

REPLACE_STATE_TRIGGER AERIE 26
~NumberOfTimesTalkedTo(0)
GlobalLT("AerieTransform","GLOBAL",2)~

REPLACE_TRIGGER_TEXT AERIE
~Global("AerieTransform","GLOBAL",2)[^!]*!Dead("Kalah")~
~Global("AerieTransform","GLOBAL",2)
!Dead("Kalah")
OR(2)
AreaCheck("AR0604")
AreaCheck("AR0605")~

ALTER_TRANS AERIE // file name
BEGIN 2 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~TakePartyItem("MISC4Q")
DestroyItem("MISC4Q")
AddexperienceParty(18500)
SetGlobal("AerieTransform","GLOBAL",1)
Wait(1)
Polymorph(CLERIC_FEMALE_ELF)
ApplySpell(Myself,AERIE_PORTRAIT)
Wait(2)
StartDialogNoSet([PC])~
END

ALTER_TRANS AERIE // file name
BEGIN 3 END // state number (can be more than one)
BEGIN 1 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "EPILOGUE" ~GOTO N5~
END

APPEND ~AERIE~

IF ~~ THEN BEGIN N5 // from: 3.1
  SAY ~I cannot wait here. This place is illusion. But I'll find my way out.~
  IF ~~ THEN GOTO 5
END
END

ALTER_TRANS AERIE // file name
BEGIN 5 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("AerieTransform","GLOBAL",2)
EscapeAreaMove("AR0607",318,378,12)~
END

SET_WEIGHT AERIEJ 15 #-1
REPLACE_STATE_TRIGGER AERIEJ 15
~!Dead("Quaylem")
!StateCheck("Quaylem",STATE_SLEEPING)
Dead("Kalah")
Global("AerieQ","GLOBAL",0)
Global("QuayleRaelis","GLOBAL",0)
!Global("AerieMove","GLOBAL",1)~

ADD_TRANS_TRIGGER AERIEP 6 ~Global("VP_InHalruaa","GLOBAL",0)
Global("VP_OnIsland","GLOBAL",0)~ DO 1
EXTEND_BOTTOM AERIEP 6
  IF ~OR(2)
!Global("VP_InHalruaa","GLOBAL",0)
!Global("VP_OnIsland","GLOBAL",0)~ THEN REPLY #48308 DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END

ALTER_TRANS AERIEP // file name
BEGIN 15 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("KickedOut","LOCALS",1)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
EscapeAreaMove("AR0607",318,378,12)~
END

APPEND ~AERIEP~

IF WEIGHT #-1 ~  !Dead("Quaylem")
!StateCheck("Quaylem",STATE_SLEEPING)
Dead("Kalah")
Global("AerieMove","GLOBAL",0)
Global("TicketTaker","GLOBAL",0)
AreaCheck("AR0607")
Global("AerieQ","GLOBAL",0)~ THEN BEGIN A14 // from:
  SAY #2245 /* ~Uncle Quayle, you're okay!~ [AERIEB6] */
  IF ~~ THEN EXTERN ~QUAYLE~ Q0
END

IF ~~ THEN BEGIN A15 // from:
  SAY #2247 /* ~What would I ever do without you?~ */
  IF ~~ THEN EXTERN ~QUAYLE~ Q1
END

IF ~~ THEN BEGIN A16 // from:
  SAY #2249 /* ~You're the wisest and the smartest and the kindest man I'll ever know.~ */
  IF ~~ THEN EXTERN ~QUAYLE~ Q2
END

IF ~~ THEN BEGIN A17 // from:
  SAY #2253 /* ~You would... You would have me travel with you? I would love to but... Oh Quayle, I would miss you!~ */
  IF ~~ THEN EXTERN ~QUAYLE~ Q3
END

IF ~~ THEN BEGIN A18 // from:
  SAY #2255 /* ~... Alright. Take--Take care of the circus while I'm away.~ */
  IF ~~ THEN DO ~SetGlobal("AerieJoined","GLOBAL",1)~ EXTERN ~QUAYLE~ Q4
END

IF ~~ THEN BEGIN A19 // from:
  SAY #2257 /* ~Come... Come back and visit, then.  Maybe you'll have need of me in the future and I could travel with you.  I'd like that.~ */
  IF ~~ THEN DO ~SetGlobal("AerieMove","GLOBAL",1)
SetGlobal("TicketTaker","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN A54 // from: 21.0
  SAY #42167 /* ~If this friend of yours... if she's in danger, then I'd be glad to help you look for her.  It's the least that I owe you, no matter what the danger is!~ */
  IF ~~ THEN DO ~JoinParty()~ EXIT
END
END

APPEND ~QUAYLE~

IF ~~ THEN BEGIN Q0 // from:
  SAY #2246 /* ~Ha!  I knew Kalah would trip over himself, eventually.  I'm just pleased he despised me enough to play with me rather than dispose of me like some of the others!~ */
  IF ~~ THEN EXTERN ~AERIEP~ A15
END

IF ~~ THEN BEGIN Q1 // from:
  SAY #2248 /* ~I... I think you need to find out, my dear.  I've taught you everything I can.  It's time, Aerie... time for you to learn the rest on your own.~ */
  IF ~~ THEN EXTERN ~AERIEP~ A16
END

IF ~~ THEN BEGIN Q2 // from:
  SAY #2250 /* ~I wasn't always, my dear.  You changed that.  But I can't keep you here.  <CHARNAME>... you can provide for her better than I.  Perhaps you will take her with you?~ */
  IF ~~ THEN REPLY #2251 /* ~Aerie, should you be willing, we would appreciate a goo cleric with your heart and stature.~ */ EXTERN ~AERIEP~ A17
  IF ~~ THEN REPLY #2252 /* ~There is no room for her at my side, right now at least. Perhaps another time.~ */ EXTERN ~AERIEP~ A19
END

IF ~~ THEN BEGIN Q3 // from:
  SAY #2254 /* ~Then you shall have to come and visit me from time to time and tell me what you've learned.  Go... go with my blessing, girl.~ */
  IF ~~ THEN EXTERN ~AERIEP~ A18
END

IF ~~ THEN BEGIN Q4 // from:
  SAY #2256 /* ~Oh, don't worry about me.  If you find happiness, maybe the pain of losing your wings will be lessened... nothing would please me more.  Be well, my Aerie.~ */
  IF ~  GlobalLT("chapter","GLOBAL",4)~ THEN REPLY #42164 /* ~You should know, Aerie, that my goal is to rescue a friend of mine... Imoen... who has been captured by the Cowled Wizards.  It could be dangerous.~ */ DO ~SetGlobalTimer("CircusEnded","GLOBAL",ONE_DAY)~ EXTERN ~AERIEP~ A54
  IF ~~ THEN REPLY #42165 /* ~Alright, let's go then, Aerie.~ */ DO ~ActionOverride("Aerie",JoinParty())
SetGlobalTimer("CircusEnded","GLOBAL",ONE_DAY)~ EXIT
END
END