REPLACE_STATE_TRIGGER VESPER 1
~Global("KeldornEstate","GLOBAL",0)
!Global("VP_Kr_LovedOne","GLOBAL",1)~

REPLACE_STATE_TRIGGER VESPER 2
~GlobalGT("LadyMaria","GLOBAL",0)
GlobalLT("LadyMaria","GLOBAL",4)
!Global("VP_Kr_LovedOne","GLOBAL",1)~

REPLACE_STATE_TRIGGER VESPER 3
~Global("LadyMaria","GLOBAL",4)
!Global("VP_Kr_LovedOne","GLOBAL",1)~

REPLACE_STATE_TRIGGER VESPER 4
~GlobalGT("LadyMaria","GLOBAL",4)
!Global("VP_Kr_LovedOne","GLOBAL",1)~

REPLACE_STATE_TRIGGER VESPER 5
~GlobalGT("LadyMaria","GLOBAL",0)
Dead("Keldorn")
!Global("VP_Kr_LovedOne","GLOBAL",1)~

REPLACE_STATE_TRIGGER VESPER 6
~InParty("Keldorn")
See("Keldorn")
Global("LadyMaria","GLOBAL",0)
!Global("VP_Kr_LovedOne","GLOBAL",1)~

CHAIN
IF ~Global("VP_Kr_LovedOne","GLOBAL",1) Global("VP_MyTalk","LOCALS",0)~ THEN VESPER KR0
~Oh, daddy, you have absolutely forgotten about us.~
DO ~SetGlobal("VP_MyTalk","LOCALS",1)~
EXTERN LEONA KR0

CHAIN VESPER KR1
~(Crying) We are so lonely here, daddy...~
EXTERN LEONA KR3