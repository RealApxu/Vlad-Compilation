EXTEND_BOTTOM IMOEN2 21
 IF ~Global("Kachiko_Saved","GLOBAL",2) InParty("Yoshimo") !Dead("Yoshimo") InParty("vpkachi") !Dead("vpkachi")~ THEN DO ~SetGlobal("VP_YoshimoExcuse","GLOBAL",1)~ EXTERN VPKACJ N32
END

CHAIN IMOEN2 KachiBye
~Bye, Kachiko~
DO ~SetGlobal("VP_Imoen_Returns","GLOBAL",1) ActionOverride("Yoshimo",LeaveParty()) ActionOverride("Yoshimo",EscapeArea()) ActionOverride("vpkachi",LeaveParty()) ActionOverride("vpkachi",EscapeArea()) AddXPObject(Myself,1000000) JoinParty()~
EXIT

CHAIN IMOEN2 KachiHi
~That's good, Kachiko.~
DO ~SetGlobal("VP_Imoen_Returns","GLOBAL",1) AddXPObject(Myself,1000000) JoinParty()~
EXIT