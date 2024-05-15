EXTEND_BOTTOM IMOEN2 21
 IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1)~ THEN EXTERN KELDORJ Imoen0
END

CHAIN IMOEN2 MeetKr0
~(Crossly) Yea, well I can't say I enjoyed being used as bait... it was <CHARNAME> whom he wanted. Who would have guessed that Athkatla has such foolish laws!~
EXTERN KELDORJ Imoen1

CHAIN IMOEN2 MeetKr1
~Steal me? Hey, what do you think I am... a scroll from the age of Netheril waiting to be stolen? Yes, I did a stupid thing... wait, what did you mean by that... that I would have done a stupid thing anyway?~
EXTERN KELDORJ Imoen2

CHAIN IMOEN2 MeetKr2
~Aw, don't worry sir paladin, I am not one to be crabby for long... I'm sure we'll have lots of chances to get better acquainted.~
END
 IF ~True()~ THEN DO ~SetGlobal("VP_Imoen_Returns","GLOBAL",1) AddXPObject(Myself,1000000) JoinParty()~ EXIT
 IF ~Global("Kachiko_Saved","GLOBAL",2) InParty("Yoshimo") !Dead("Yoshimo") InParty("vpkachi") !Dead("vpkachi")~ THEN DO ~SetGlobal("VP_YoshimoExcuse","GLOBAL",1)~ EXTERN VPKACJ N32