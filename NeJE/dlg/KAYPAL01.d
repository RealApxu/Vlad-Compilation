REPLACE_STATE_TRIGGER KAYPAL01 0
~NumTimesTalkedTo(0)
OR(2)
!InParty("Keldorn")
Dead("Keldorn")~

REPLACE_STATE_TRIGGER KAYPAL01 5
~NumTimesTalkedTo(0)
InParty("Keldorn")
!Dead("Keldorn")~

ALTER_TRANS KAYPAL02 // file name
BEGIN 28 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~False()~
END

EXTEND_BOTTOM KAYPAL02 28
  IF ~~ THEN REPLY ~Your Cup, Sir Anarg. I can not give it to you, but I ask you to listen to me. I beg you, please.~ EXTERN ~KAYPAL01~ A8 
END

ALTER_TRANS KAYPAL01 // file name
BEGIN 3 END // state number (can be more than one)
BEGIN 0 1 2 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~False()~
END

EXTEND_BOTTOM KAYPAL01 3
  IF ~~ THEN REPLY ~Your Cup, Sir Anarg. I can not give it to you, but I ask you to listen to me. I beg you, please.~ EXTERN ~KAYPAL01~ A8 
END

APPEND ~KAYPAL01~

IF ~~ THEN BEGIN A1
  SAY ~Did not Ryan Trawl send you to kill me and my comrades?~
  IF ~OR(2)
!InParty("Keldorn")
Dead("Keldorn")~ THEN GOTO A2
  IF ~InParty("Keldorn")
!Dead("Keldorn")~ THEN EXTERN ~KELDORJ~ FP1
END

IF ~~ THEN BEGIN A2
  SAY ~Well, of course! Does he ever speak directly? How did he put it? Something like "stop our activities"? I'm right?~
  IF ~~ THEN REPLY ~Yes, Sir Anarg, exactly.~ GOTO A3
END

IF ~~ THEN BEGIN A3
  SAY ~And how were you going to... stop me, dear <PRO_LADYLORD>? Having twisted the Cup in front of me? You lied to Ryan Trawl too, I suppose?~
  IF ~~ THEN REPLY ~I was hoping to convince you to do that without bloodshed and leave Athkatla.~ GOTO A4
  IF ~~ THEN REPLY ~I understand how important this Cup to you, but is it worth the life of your comrades?~ GOTO A4
  IF ~~ THEN REPLY ~I told him that otherwise I could not complete the task.~ GOTO A4
END

IF ~~ THEN BEGIN A4
  SAY ~Enlighten me, what is your task? What exactly bothers Ryan Trawl?~
  IF ~~ THEN REPLY ~The fact that you act on behalf of the Order, and your actions discredit the Order.~ GOTO A5
END

IF ~~ THEN BEGIN A5
  SAY ~Ha! Discredit! As if the reputation of the Order can be dropped even lower!~
  IF ~OR(2)
!InParty("Keldorn")
Dead("Keldorn")~ THEN GOTO A7
  IF ~InParty("Keldorn")
!Dead("Keldorn")~ THEN EXTERN ~KELDORJ~ FP2
END

IF ~~ THEN BEGIN A6
  SAY ~What is it, Sir Keldorn? You do not mind that a crowd of armed men in shining armor sends a foreign <PRO_GIRLBOY> to do their dirty work for them? The main thing is to preserve the reputation of the Order! At any cost! Where are your principles, Sir Keldorn? Why did not you advise her to answer Sir Ryan as he deserved?~
  IF ~~ THEN EXTERN ~KELDORJ~ FP3
END

IF ~~ THEN BEGIN A7
  SAY ~Okay, okay, I say nothing more. Here's what, my dear <PRO_LADYLORD>. Return the Cup to Sir Ryan and tell him that you have completed the task, and I promise you that we will leave Athkatla. It is a troubled time now, it seems a conflict with Riatavin is unavoidable... I hope that the war will not come soon though... Take care, my <PRO_LADYLORD>, and farewell!~
  IF ~~ THEN DO ~AddexperienceParty(25000)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutFP")~ EXIT
END

IF ~~ THEN BEGIN A8
  SAY ~Draw your swords and do your best.~
	IF ~~ THEN REPLY ~Stop it! That's not true! Sirs, forgive me for lying to you, but I needed to see Sir Anarg. You did not give me other chance.~ GOTO A1
	IF ~~ THEN REPLY ~Why do you think that I came to kill you, Sir Anarg? I'm not going to do that.~ GOTO A1
	IF ~~ THEN REPLY ~Sir Anarg, can we talk before drawing our swords?~ GOTO A1
END  
END

APPEND ~KELDORJ~

IF ~~ THEN BEGIN FP1
  SAY ~Sir Anarg, you know our Sir Ryan, he wouldn't send us for that.~
  IF ~~ THEN EXTERN ~KAYPAL01~ A2
END

IF ~~ THEN BEGIN FP2
  SAY ~Sir Anarg...~
  IF ~~ THEN EXTERN ~KAYPAL01~ A6
END

IF ~~ THEN BEGIN FP3
  SAY ~Sir Anarg...~
  IF ~~ THEN EXTERN ~KAYPAL01~ A7
END
END