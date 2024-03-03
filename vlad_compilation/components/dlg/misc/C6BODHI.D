EXTEND_BOTTOM ~C6BODHI~ 21
IF ~OR(4)
Global("ValygarVampire","GLOBAL",2)
Global("VP_SimeVampire","GLOBAL",2)
Global("VP_KeldornVampire","GLOBAL",2)
Global("VP_LeinaVampire","GLOBAL",2)~ THEN EXTERN C6BODHI 23
END

EXTEND_BOTTOM ~C6BODHI~ 23
	IF ~Global("ValygarVampire","GLOBAL",2)~ THEN REPLY ~You place too much confidence in sentiment. The theft of Valygar will not save you.~ EXTERN C6BODHI  TS29
  	IF ~Global("ValygarVampire","GLOBAL",2)~ THEN REPLY ~You have taken too much already! You will return both Imoen's soul and Valygar!~ EXTERN C6BODHI  TS29
  	IF ~Global("ValygarVampire","GLOBAL",2)~ THEN REPLY ~And you have delivered on that promise. Return Valygar and perhaps I will be merciful.~ EXTERN C6BODHI  TS29
  	IF ~Global("ValygarVampire","GLOBAL",2)~ THEN REPLY ~I would have hunted you for your theft of Valygar alone. He is very important to me.~ EXTERN C6BODHI  TS29
  	IF ~Global("VP_SimeVampire","GLOBAL",2)~ THEN REPLY ~You place too much confidence in sentiment.  The theft of Sime will not save you.~ EXTERN C6BODHI TS32
  	IF ~Global("VP_SimeVampire","GLOBAL",2)~ THEN REPLY ~You have taken too much already!  You will return both Imoen's soul and Sime!~ EXTERN C6BODHI TS32
  	IF ~Global("VP_SimeVampire","GLOBAL",2)~ THEN REPLY ~And you have delivered on that promise. Return Sime and perhaps I will be merciful.~ EXTERN C6BODHI TS32
  	IF ~Global("VP_SimeVampire","GLOBAL",2)~ THEN REPLY ~I would have hunted you for your theft of Sime alone. She is very important to me.~ EXTERN C6BODHI TS32
	IF ~Global("VP_KeldornVampire","GLOBAL",2)~ THEN REPLY ~Bodhi, you nefarious hag! I will tear out your black heart and feed it to the beasts, I swear I will!~ EXTERN ~C6BODHI~ vampamb2
  	IF ~Global("VP_KeldornVampire","GLOBAL",2)~ THEN REPLY ~You have taken too much already! You will return both Imoen's soul and Keldorn!~ EXTERN ~C6BODHI~ vampamb2
  	IF ~Global("VP_KeldornVampire","GLOBAL",2)~ THEN REPLY ~And you have delivered on that promise. Return Keldorn and perhaps I will be merciful.~ EXTERN ~C6BODHI~ vampamb2
  IF ~Global("VP_LeinaVampire","GLOBAL",2)~ THEN REPLY ~You place too much confidence in sentiment. The theft of Leina will not save you.~ EXTERN C6BODHI leiamb1
  IF ~Global("VP_LeinaVampire","GLOBAL",2)~ THEN REPLY ~You have taken too much already! You will return both Imoen's soul and Leina!~ EXTERN C6BODHI leiamb1
  IF ~Global("VP_LeinaVampire","GLOBAL",2)~ THEN REPLY ~And you have delivered on that promise. Return Leina and perhaps I will be merciful.~ EXTERN C6BODHI leiamb1
  IF ~Global("VP_LeinaVampire","GLOBAL",2)~ THEN REPLY ~I would have hunted you for your theft of Leina alone. She is very important to me.~ EXTERN C6BODHI leiamb1
END

APPEND ~C6BODHI~

IF ~~ THEN BEGIN TS29
  SAY ~Ah yes, the noble hermit Valygar. Very naughty despite his declarations otherwise. I doubt your fumbling could inspire the loyalty I have taken with a bite and a gaze.~
  IF ~~ THEN EXTERN ~VAMPVAL~ 0
END

IF ~~ THEN BEGIN TS30
  SAY ~What is the meaning of this performance, slave? You cannot disobey me. Go, attack the Bhaal child! Pain you feel now is going to increase slowly and infinitely if you keep neglecting my order.~
  IF ~~ THEN EXTERN ~VAMPVAL~ 1
END

IF ~~ THEN BEGIN TS31
  SAY ~What? How dare you are? Terrible pain will be your punishment!~
  IF ~~ THEN DO ~ReallyForceSpell("Vampval",0)
ActionOverride("Vampval",PlayDead(2))
OpenDoor("DOOR01")
OpenDoor("DOOR02")
CreateCreature("BODFGT01",[1107.281],0)
CreateCreature("BODFGT01",[1667.220],2)
SetGlobal("C6BodhiFight","AR0809",1)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN TS32
  SAY ~She is lost to you, <CHARNAME>. Sime has been quite receptive to my wiles. I doubt your fumbling could have inspired the loyalty I have taken with a bite and a gaze.~
  IF ~~ THEN JOURNAL ~The Final Battle with Bodhi.

Bodhi has turned Sime into a vampire!  Or... or very nearly.  The process may not have been completed in the short time Bodhi has had her.  Hopefully something can be done or I will have lost her.  Perhaps the elven war sage might know some way of restoration... or Elhan... ~ EXTERN ~VAMPSIME~ 0
END

IF ~~ THEN BEGIN TS33
  SAY ~Love... I should have sealed my doors tighter against that perpetrator. I have no times for follies, stupid bitch. Punishment you want - then you should get it. Die.~
  IF ~~ THEN DO ~SetGlobal("C6BodhiFight","AR0809",1)
OpenDoor("DOOR01")
OpenDoor("DOOR02")
CreateCreature("BODFGT01",[1107.281],0)
CreateCreature("BODFGT01",[1667.220],2)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN vampamb2
  SAY ~Ah yes, the noble and beloved Keldorn. Very naughty despite his declarations otherwise. I doubt your fumbling could inspire the loyalty I have taken with a bite and a gaze.~
  IF ~~ THEN EXTERN ~VAMPKEL~ 0
END

IF ~~ THEN BEGIN vampamb3
  SAY ~What is the meaning of this performance, slave? You cannot disobey me. Go, attack the Bhaal child! Pain you feel now is going to increase slowly and infinitely if you keep neglecting my order.~
  IF ~~ THEN EXTERN ~VAMPKEL~ 1
END

IF ~~ THEN BEGIN vampamb4
  SAY ~What? How dare you are? You will die nevertheless! Naive romantic.~
  IF ~~ THEN DO ~ReallyForceSpell("vampkel",0)
ActionOverride("vampkel",PlayDead(2))
OpenDoor("DOOR01")
OpenDoor("DOOR02")
CreateCreature("BODFGT01",[1107.281],0)
CreateCreature("BODFGT01",[1667.220],2)
SetGlobal("C6BodhiFight","AR0809",1)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN leiamb1
  SAY ~She is lost to you, <CHARNAME>. Leina has been quite receptive to my wiles. I doubt your fumbling could have inspired the loyalty I have taken with a bite and a gaze.~
  IF ~~ THEN JOURNAL ~The Final Battle with Bodhi.

Bodhi has turned Leina into a vampire! Or... or very nearly. The process may not have been completed in the short time Bodhi has had her. Hopefully something can be done or I will have lost her. Perhaps the elven war sage might know some way of restoration... or Elhan... ~ EXTERN ~VAMPLEI~ 0
END

IF ~~ THEN BEGIN leiamb2
  SAY ~Love... I should have sealed my doors tighter against that perpetrator. I have no times for follies, stupid bitch. Punishment you want - then you should get it. Die.~
  IF ~~ THEN DO ~SetGlobal("C6BodhiFight","AR0809",1)
OpenDoor("DOOR01")
OpenDoor("DOOR02")
CreateCreature("BODFGT01",[1107.281],0)
CreateCreature("BODFGT01",[1667.220],2)
Enemy()~ EXIT
END
END