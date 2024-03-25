APPEND ~PPSIME~

IF ~~ THEN BEGIN TS0
  SAY ~I�ll stay around the ship and keep an eye on the shifty captain for you...~
  IF ~~ THEN REPLY ~Great, stay with the ship then, I do not fully trust Saemon. It might easily be his own plot to get the cash and avoid a dangerous sailing to Spellhold. Stay right where you are and call if Havarian will be up to no good.~ GOTO TS1
END

IF ~~ THEN BEGIN TS1
  SAY ~I will stay here for the time being and you can always count on my help.~
  IF ~~ THEN DO ~SetGlobal("VP_Sime_Is_Waiting","GLOBAL",3)~ EXIT
END

END