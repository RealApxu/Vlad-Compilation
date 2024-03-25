REPLACE_ACTION_TEXT KELDOR  ~SetGlobal("KeldornMove","GLOBAL",1)[^!]*EscapeAreaMove("AR0903",1634,368,3)~
~SetGlobal("VP_KrRomanceActive","GLOBAL",3)
SetGlobal("KeldornMove","GLOBAL",1)
StartCutSceneMode()
StartCutScene("KeldFix")~

REPLACE_STATE_TRIGGER KELDOR 0
~NumTimesTalkedTo(0)
!Global("KeldornLeave","GLOBAL",5)~

REPLACE_STATE_TRIGGER KELDOR 16
~!NumTimesTalkedTo(0)~

ADD_TRANS_TRIGGER KELDOR 2 ~Global("WorkingForBodhi","GLOBAL",0)
Global("WorkingForAran","GLOBAL",0)~ DO 1

EXTEND_BOTTOM KELDOR 2
  IF ~Global("WorkingForBodhi","GLOBAL",1)~ THEN REPLY #8317 GOTO KR4A
  IF ~Global("WorkingForAran","GLOBAL",1)~ THEN REPLY #8317 GOTO 4
END

APPEND ~KELDOR~

IF ~~ THEN BEGIN KR4A
  SAY ~Sorry, friend, but I sense that you parley or consort with evil creatures. I cannot be a party to it. Now excuse me, but I have some other tasks to perform elsewhere.~
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~NumTimesTalkedTo(0)
Global("KeldornLeave","GLOBAL",5)~ THEN BEGIN K23
  SAY #10836 /* ~Greetings. I was wondering when you might come.~ [KELDORA5] */
  IF ~~ THEN REPLY #10838 /* ~Are you ready?~ */ GOTO K25
  IF ~~ THEN REPLY #10839 /* ~How was your day?~ */ GOTO K27
END

IF ~~ THEN BEGIN K25
  SAY #10844 /* ~I have everything I can bring with me, if that is what you mean. Come, let us go.~ */
  IF ~~ THEN DO ~SetGlobal("KeldornLeave","GLOBAL",99) SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN K26
  SAY #10845 /* ~If that is your wish... I would be grateful for it... Take care, <CHARNAME>, and travel with the blessings of the gods.~ */
  IF ~~ THEN DO ~EscapeArea() SetGlobal("KeldornLeave","GLOBAL",99) SetGlobal("KickedOut","LOCALS",0)~ EXIT
END

IF ~~ THEN BEGIN K27
  SAY #10848 /* ~I felt... I felt like a husband again, like a father. It was good, <CHARNAME>. Very good... Now let us rescue your Imoen, that I might return here all the sooner.~ */
  IF ~~ THEN REPLY #10852 /* ~Certainly. Have you everything you need?~ */ GOTO K25
  IF ~~ THEN REPLY #10853 /* ~Actually Keldorn, I've been thinking... The quest for Imoen is my own and I have no right the force it upon a good friend against his will... You need to be here with your family.~ */ GOTO K26
END

//IF ~~ THEN BEGIN KR4B
//  SAY ~Sorry, friend, but I recognise you. You are working for Shadow Thieves, and I cannot be a party to it. Now excuse me, but I have some other tasks to perform elsewhere.~
// IF ~~ THEN DO ~EscapeArea()~ EXIT
//END

END