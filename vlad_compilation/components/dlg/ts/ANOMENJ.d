ADD_TRANS_TRIGGER ANOMENJ 262 ~!InParty("Sime")
See("ppsime")~ DO 0

EXTEND_BOTTOM ANOMENJ 262
  IF ~InParty("Sime")~ THEN EXTERN ~SIMEJ~ 20
END

APPEND ~ANOMENJ~

IF ~~ THEN BEGIN TS311
  SAY ~Love of God is a higher calling, then an earthly passion, but still there is a measure of truth in your words, Najoki.~
  IF ~~ THEN EXIT
END

END