APPEND ~KELDORJ~

IF ~~ THEN BEGIN TS253
  SAY ~Love of God is a higher calling, then an earthly passion, but still there is a measure of truth in your words, Najoki...~
  IF ~!InParty("Aerie") !InParty("Korgan")~ THEN EXTERN ~NAJOKI~ 7
  IF ~InParty("Aerie") See("Aerie")~ THEN EXTERN ~AERIEJ~ TS219
  IF ~!InParty("Aerie") InParty("Korgan") See("Korgan")~ THEN EXTERN ~KORGANJ~ TS222
END

END