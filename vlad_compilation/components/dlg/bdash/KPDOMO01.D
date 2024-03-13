ALTER_TRANS KPDOMO01 // file name
BEGIN 1 11 115 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~InParty("Nalia")
!Dead("Nalia")~
END

ALTER_TRANS KPDOMO01 // file name
BEGIN 1 11 115 END // state number (can be more than one)
BEGIN 1 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~!InParty("Nalia")
!Dead("Nalia")
See("Nalia")~
END

EXTEND_BOTTOM KPDOMO01 1
    IF ~!InParty("Nalia")
!See("Nalia")~ THEN GOTO N2
END

EXTEND_BOTTOM KPDOMO01 11
    IF ~!InParty("Nalia")
!See("Nalia")~ THEN GOTO 13
END

EXTEND_BOTTOM KPDOMO01 115
    IF ~!InParty("Nalia")
!See("Nalia")~ THEN GOTO 116
END

APPEND ~KPDOMO01~

IF ~~ THEN BEGIN N2 // from:
  SAY ~I run day-to-day operations in the keep, handling servants and any minor problems that occur with the farmers or others on your land.~
  IF ~~ THEN GOTO 3
END
END