ADD_TRANS_TRIGGER VICONIJ 125
~!InParty("Sime")
See("ppsime")~ DO 0

EXTEND_BOTTOM VICONIJ 125
  IF ~InParty("Sime")~ THEN EXTERN ~SIMEJ~ 20
END

APPEND ~VICONIJ~

IF ~~ THEN BEGIN TS183
  SAY ~Love is for weak-hearted rivvins...~
  IF ~!InParty("Aerie")
!InParty("Korgan")
!InParty("Keldorn")~ THEN EXTERN ~NAJOKI~ 7
  IF ~InParty("Aerie")
See("Aerie")~ THEN EXTERN ~AERIEJ~ TS219
  IF ~!InParty("Aerie")
InParty("Korgan")
See("Korgan")~ THEN EXTERN ~KORGANJ~ TS222
  IF ~!InParty("Aerie")
!InParty("Korgan")
InParty("Keldorn")
See("Keldorn")~ THEN EXTERN ~KELDORJ~ TS253
END

END