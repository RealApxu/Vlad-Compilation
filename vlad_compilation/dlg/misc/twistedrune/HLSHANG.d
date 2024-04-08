BEGIN ~HLSHANG~

IF ~True()~ THEN BEGIN 0
  SAY ~Stop.~
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY ~You have power... chained, but it is not of my giving. Do you know where you are?~
  IF ~~ THEN REPLY ~Not as such, no.~ GOTO 2
  IF ~~ THEN REPLY ~I will not be questioned by the likes of you! Die fiend!~ GOTO 6
  IF ~~ THEN REPLY ~I am in the Bridge District of Athkatla. Why kind of tricks are you playing on me?~ GOTO 7
END

IF ~~ THEN BEGIN 2
  SAY ~Yet, you had a key, a Rogue Stone. What did you hope to accomplish by tresspassing in my chamber?~
  IF ~Global("HeardOfTwistedRuneHQ","GLOBAL",1)~ THEN REPLY ~I found a note that told of this place. I was curious to know what this is all about.~ GOTO 3
  IF ~~ THEN REPLY ~My arrival here was an accident. I will leave.~ GOTO 4
  IF ~~ THEN REPLY ~I am here to kill you.~ GOTO 6
END

IF ~~ THEN BEGIN 3
  SAY ~Hmm. I suppose the fool Koshi wrote it down. If you destroyed him to get it, you have my thanks. Punishing the fool has been getting boring as of late.~
  IF ~~ THEN REPLY ~You're welcome. Now, if you'll excuse me, I shall leave you be.~ GOTO 4
  IF ~~ THEN REPLY ~I tire of this. I'm leaving.~ GOTO 4
  IF ~~ THEN REPLY ~That said, you will be the one who is punished now. I will destroy you, fiend!~ GOTO 6
END

IF ~~ THEN BEGIN 4
  SAY ~No. I don't suspect that you'll be leaving here today. When you play with powers that are beyond your meager skills, you'll soon find that a price is required.~
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY ~In this case, you know too much and your life is forfeit. Come, my friends. It seems that the Twisted Rune shall have some amusement today.~
  IF ~~ THEN DO ~CreateVisualEffect("SPHEALIN",[962.554]) Wait(1) CreateVisualEffect("SPFLSRIN",[962.554]) JumpToPoint([532.744]) SetGlobal("ShangalarMove","AR1008",1) ~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY ~As you like. Come friends. It seems that the Twisted Rune shall have a bit of amusement today.~
  IF ~~ THEN DO ~CreateVisualEffect("SPHEALIN",[962.554]) Wait(1) CreateVisualEffect("SPFLSRIN",[962.554]) JumpToPoint([532.744]) SetGlobal("ShangalarMove","AR1008",1) ~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY ~Athkatla? Hardly. The portal is known only to my creatures and yet you had a key, a Rogue Stone. What did you hope to accomplish by tresspassing in my chamber?~
  IF ~Global("HeardOfTwistedRuneHQ","GLOBAL",1)~ THEN REPLY ~I found a note that told of this place. I was curious to know what this is all about.~ GOTO 3
  IF ~~ THEN REPLY ~My arrival here was an accident. I will leave.~ GOTO 4
  IF ~~ THEN REPLY ~I intend to destroy you.~ GOTO 6
END