BEGIN ~IMOENP~

//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 3 even though they appear after this state */~True()~ THEN BEGIN 0 // from:
  SAY #17357 /* ~Well, that's gratitude for you. You aren't going to abandon me here, are you? We have to stay together! I... I feel it!~ [IMOENP60] */
  IF ~~ THEN REPLY #19956 /* ~If we split up it will be easier for us to sneak out of here.~ */ GOTO 1
  IF ~~ THEN REPLY #19957 /* ~I didn't mean to scare you. Let's stay together.~ */ GOTO 2
  IF ~~ THEN REPLY #19958 /* ~Beat it, Imoen. We stand a better chance acting separately.~ */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.2 0.0
  SAY #19961 /* ~I guess that makes sense, but it feels wrong. My head... hurts more when we split up. I guess I'll manage. I'm not going to let the dagger get me.~ */
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #19962 /* ~Good and good. We have to watch each other's back. It's weird too, my head hurts more when we split. I... I don't know why that is. ~ */
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF WEIGHT #0 ~HPLT(Myself,9)~ THEN BEGIN 3 // from:
  SAY #19965 /* ~No, no, NO! I'm not dying here! I'm not! Gah, my head hurts! I have to get to the surface! I have to go!~ [IMOENP61] */
  IF ~~ THEN DO ~LeaveParty()
Wait(1)
GivePartyAllEquipment()
EscapeArea()~ EXIT
END