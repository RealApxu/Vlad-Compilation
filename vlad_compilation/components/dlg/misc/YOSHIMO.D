REPLACE ~YOSHIMO~

IF ~~ THEN BEGIN 31
  SAY ~I am very sorry to hear that. You shall find me in Athkatla should you need me. I will be staying at the Copper Coronet. Travel safely, <CHARNAME>.~
  IF ~~ THEN DO ~EscapeAreaMove("AR0406",1368,1922,12)~ EXIT
END

IF ~~ THEN BEGIN 32
  SAY ~When you have thought about this and realized your error, you will find me at the Copper Coronet in Athkatla. I will now take my leave of you.~
  IF ~~ THEN DO ~EscapeAreaMove("AR0406",1368,1922,12)~ EXIT
END

IF ~~ THEN BEGIN 33
  SAY ~The wands are locked onto the pedestals and you would do well to search out the keys and take down the wands before walking through the hall. Again I say, farewell!~
  IF ~~ THEN DO ~EscapeAreaMove("AR0406",1368,1922,12)~ EXIT
END

END