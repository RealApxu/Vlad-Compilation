//2. AR1005 in BGT - Meeting Therella
REPLACE_STATE_TRIGGER ~THEREL~ 0
~NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy(),HOSTILE_UPPER)
!Dead("DeathK")~ //fix for the case of meeting Therella for the first time after rescuing Dalton/Ginny

REPLACE_STATE_TRIGGER ~THEREL~ 1
~NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy(),NEUTRAL_UPPER)
!Dead("DeathK")~ //fix for the case of meeting Therella for the first time after rescuing Dalton/Ginny

REPLACE_STATE_TRIGGER ~THEREL~ 2
~NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy(),NEUTRAL_LOWER)
!Dead("DeathK")~ //fix for the case of meeting Therella for the first time after rescuing Dalton/Ginny

REPLACE_STATE_TRIGGER ~THEREL~ 13
~!Dead("Dalton")
Global("Therella","GLOBAL",1)
Gender(Player1,FEMALE)~

REPLACE_STATE_TRIGGER ~THEREL~ 14
~Dead("Dalton")
Gender(Player1,FEMALE)
Global("Therella","GLOBAL",1)~

ADD_TRANS_TRIGGER ~THEREL~ 0 ~Gender(Player1,FEMALE)~ DO 0 //reply option 0 (start with 0)
ADD_TRANS_TRIGGER ~THEREL~ 1 ~Gender(Player1,FEMALE)~ DO 0 //reply option 0 (start with 0)
ADD_TRANS_TRIGGER ~THEREL~ 2 ~Gender(Player1,FEMALE)~ DO 0 //reply option 0 (start with 0)
ADD_TRANS_TRIGGER ~THEREL~ 3 ~Gender(Player1,FEMALE)~ DO 0 //reply option 0 (start with 0)
ADD_TRANS_TRIGGER ~THEREL~ 17 ~Gender(Player1,FEMALE)~ DO 0 //reply option 0 (start with 0)

EXTEND_TOP THEREL 0
  IF ~Gender(Player1,MALE)~ THEN REPLY ~Worry not, lady. Is there anything that we could do to help?~ GOTO 3A //new option for male player
END

EXTEND_TOP THEREL 1
  IF ~Gender(Player1,MALE)~ THEN REPLY ~Worry not, lady. Is there anything that we could do to help?~ GOTO 3A //new option for male player
END

EXTEND_TOP THEREL 2
  IF ~Gender(Player1,MALE)~ THEN REPLY ~Worry not, lady. Is there anything that we could do to help?~ GOTO 3A //new option for male player
END

EXTEND_TOP THEREL 3
  IF ~Gender(Player1,MALE)~ THEN REPLY ~Tell us the tale and we might be able to help.~ GOTO 6A //new option for male player
END

EXTEND_TOP THEREL 17
  IF ~Gender(Player1,MALE)~ THEN REPLY ~Worry not, lady. Is there anything that we could do to help?~ GOTO 3A //new option for male player
END

APPEND ~THEREL~

IF ~~ THEN BEGIN 3A
  SAY ~Unless you wish to search for my errant daughter, then no.~
  IF ~~ THEN REPLY ~Tell us the tale and we might be able to help.~ GOTO 6A
  IF ~~ THEN REPLY ~As you will. Good day.~ GOTO 4
END

IF ~~ THEN BEGIN 5A
  SAY ~I have done nothing to deserve such unkindness. Leave me to my mourning.~
  IF ~~ THEN DO ~SetGlobal("TherTalk","GLOBAL",1)
SetGlobal("Therella","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 6A
  SAY ~I have, or perhaps I should say had, a daughter named Ginny. She fell in with a crew of adventurers from Waterdeep. Ginny was always obsessed with the idea of being a hero. Alas, she has neither the brains nor the ability. Such is a mother's lot in life however, to watch her children perform acts of idiocy despite her warnings or concerns.~
  IF ~~ THEN JOURNAL ~In Ulgoth's Beard, a woman named Therella has asked us to look for her errant daughter in Durlag's Tower.~ GOTO 7A
END

IF ~~ THEN BEGIN 7A
  SAY ~My poor girl took those acts of idiocy to the extreme. She and her thickskulled cohorts took it upon themselves to plumb the depths of Durlag's Tower. They bought a ward token from that shyster, Galkin, and made ready to leave. Though I begged and cried, Ginny still insisted on going. The band never returned. I fear that they were destroyed by the mad dwarf's machinations. That is the tale, sad but true.~
  IF ~~ THEN REPLY ~I wish I could help, but we have other concerns at present.~ GOTO 8
  IF ~~ THEN REPLY ~Rest easy, woman. We will find your daughter if she still lives.~ GOTO 9A
  IF ~~ THEN REPLY ~She deserved her fate. Cease your pointless weeping.~ GOTO 5A
END

IF ~~ THEN BEGIN 9A
  SAY ~Thank you so much. Such kindness from strangers is unheard of in this harsh life. I will await Ginny's return with breathless anticicpation.~
  IF ~~ THEN DO ~SetGlobal("Therella","GLOBAL",1)~ EXIT
END

IF ~Global("Therella","GLOBAL",2)
!Dead("Ginny")
Gender(Player1,MALE)~ THEN BEGIN 10A
  SAY ~Thank you for rescuing Ginny. She arrived back here just a few days before you did. The tales she had to tell were quite fantastic, demon knights! Well, it is nice seeing my daughter. Here is some of my savings for your time.~
  IF ~~ THEN DO ~SetGlobal("Therella","GLOBAL",3)
GiveGoldForce(300)~ EXIT
END

IF ~Global("Therella","GLOBAL",3)
Gender(Player1,FEMALE)~ THEN BEGIN N1
  SAY ~Thank you for saving my son.~
  IF ~~ THEN EXIT
END

IF ~Global("Therella","GLOBAL",3)
Gender(Player1,MALE)~ THEN BEGIN N2
  SAY ~Thank you for saving my daughter.~
  IF ~~ THEN EXIT
END

IF ~!Dead("Ginny")
Global("Therella","GLOBAL",1)
Gender(Player1,MALE)~ THEN BEGIN 13A
  SAY ~Please keep looking for my poor girl. I don't know how much longer I can bear to be apart from her.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~Dead("Ginny")
Global("Therella","GLOBAL",1)
Gender(Player1,MALE)~ THEN BEGIN 14A
  SAY ~Have you found Ginny yet? I so worry about my girl.~
  IF ~~ THEN REPLY ~No, she's dead. The whiny little girl had it coming.~ GOTO 15
  IF ~~ THEN REPLY ~I'm sorry Therella, there was little we could do. Your daughter is dead.~ GOTO 16
END
END

REPLACE ~THEREL~

IF ~~ THEN BEGIN 7
  SAY ~My poor boy took those acts of idiocy to the extreme. He and his thickskulled cohorts took it upon themselves to plumb the depths of Durlag's Tower. They bought a ward token from that shyster, Galkin, and made ready to leave. Though I begged and cried, Dalton still insisted on going. The band never returned. I fear that they were destroyed by the mad dwarf's machinations. That is the tale, sad but true.~
  IF ~~ THEN REPLY ~I wish I could help, but we have other concerns at present.~ GOTO 8
  IF ~~ THEN REPLY ~Rest easy, woman. We will find your son if he still lives.~ GOTO 9
  IF ~~ THEN REPLY ~He deserved his fate. Cease your pointless weeping.~ GOTO 5A
END

IF ~~ THEN BEGIN 8
  SAY ~If you say so. Excuse me.~
  IF ~~ THEN DO ~SetGlobal("TherTalk","GLOBAL",1)
SetGlobal("Therella","GLOBAL",1)~ EXIT
END

IF WEIGHT #3 ~Global("Therella","GLOBAL",2)
!Dead("Dalton")
Gender(Player1,FEMALE)~ THEN BEGIN 10
  SAY ~Thank you for rescuing Dalton. He arrived back here just a few days before you did. The tales he had to tell were quite fantastic, demon knights! Well, it is nice seeing my son. Here is some of my savings for your time.~
  IF ~~ THEN DO ~SetGlobal("Therella","GLOBAL",3)
GiveGoldForce(300)~ EXIT
END
END