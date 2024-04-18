ADD_TRANS_TRIGGER VICONIJ 125
~!InParty("Sime") See("ppsime")~ DO 0

EXTEND_BOTTOM VICONIJ 125
 IF ~InParty("Sime")~ THEN EXTERN VPSIMJ 20
END

CHAIN VICONIJ TS183
~Love is for weak-hearted rivvins...~
END
 IF ~!InParty("Aerie") !InParty("Korgan") !InParty("Keldorn")~ THEN EXTERN NAJOKI 7
 IF ~InParty("Aerie") See("Aerie")~ THEN EXTERN AERIEJ TS219
 IF ~!InParty("Aerie") InParty("Korgan") See("Korgan")~ THEN EXTERN KORGANJ TS222
 IF ~!InParty("Aerie") !InParty("Korgan") InParty("Keldorn") See("Keldorn")~ THEN EXTERN KELDORJ TS253