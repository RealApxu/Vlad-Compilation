BEGIN ~LOVEONE5~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~Valygar? Is it you... did you return at last, my love?~
  IF ~~ THEN EXTERN ~VALYG25J~ TS27
END

IF ~~ THEN BEGIN 1
  SAY ~Why did not you come sooner? I died lonely, waiting for you...The waiting killed me...~
  IF ~~ THEN EXTERN ~VALYG25J~ TS28
END

IF ~~ THEN BEGIN 2
  SAY ~You never forgave, did not you? Your eyes are so cold...~
  IF ~~ THEN EXTERN ~VALYG25J~ TS29
END

IF ~~ THEN BEGIN 3
  SAY ~No, we could not have. You did not love me any more. You came back fulfilling your duty, no more. When I saw it, I lied to you! And I died then. I turned into a shadow. You killed me, not the Shade Lord...~
  IF ~~ THEN EXTERN ~VALYG25J~ 1
END
