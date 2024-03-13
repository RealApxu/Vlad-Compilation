APPEND IMOEN2P
//////////////////////////////////////////////////

IF WEIGHT #1 ~True() Global("Chapter","GLOBAL",1) ~ THEN BEGIN CR0 // from:  /* Triggers after states #: 3 even though they appear after this state */
  SAY #17357 /* ~Well, that's gratitude for you. You aren't going to abandon me here, are you? We have to stay together! I... I feel it!~ [IMOENP60] */
  IF ~~ THEN REPLY #19956 /* ~If we split up it will be easier for us to sneak out of here.~ */ GOTO CR1
  IF ~~ THEN REPLY #19957 /* ~I didn't mean to scare you. Let's stay together.~ */ GOTO CR2
  IF ~~ THEN REPLY #19958 /* ~Beat it, Imoen. We stand a better chance acting separately.~ */ GOTO CR1
END

IF ~~ THEN BEGIN CR1 // from: 0.2 0.0
  SAY #19961 /* ~I guess that makes sense, but it feels wrong. My head... hurts more when we split up. I guess I'll manage. I'm not going to let the dagger get me.~ */
  IF ~~ THEN DO ~LeaveParty() SetDialog("IMOEN2") SetNumTimesTalkedTo(0) ChangeAIScript("",DEFAULT) ChangeAIScript("IMOEN2",OVERRIDE) MoveGlobal("AR1512",Myself,[1857.1520]) ~ EXIT
END

IF ~~ THEN BEGIN CR2 // from: 0.1
  SAY #19962 /* ~Good and good. We have to watch each other's back. It's weird too, my head hurts more when we split. I... I don't know why that is. ~ */
  IF ~~ THEN DO ~JoinParty() ~ EXIT
END

IF WEIGHT #0 ~Global("Chapter","GLOBAL",1) HP(Myself,1) ~ THEN BEGIN CR3 // from:
  SAY #19965 /* ~No, no, NO! I'm not dying here! I'm not! Gah, my head hurts! I have to get to the surface! I have to go!~ [IMOENP61] */
  IF ~~ THEN DO ~LeaveParty() GivePartyAllEquipment() SetDialog("IMOEN2") SetNumTimesTalkedTo(0) ChangeAIScript("",DEFAULT) ChangeAIScript("IMOEN2",OVERRIDE) MoveGlobal("AR1512",Myself,[1857.1520]) ~ EXIT
END

END