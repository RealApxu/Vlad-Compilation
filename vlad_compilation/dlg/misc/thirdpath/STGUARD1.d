REPLACE STGUARD1

IF ~OR(2) Global("WorkingForBodhi","GLOBAL",1) Global("VP_Guild_Attacked","GLOBAL",1)~ THEN BEGIN 1
 SAY ~Ye've made quite th' mistake, showin' yer face around here!~
 IF ~~ THEN DO ~CreateCreature("DASSIN",[667.1583],0) CreateCreature("DASSIN",[759.1206],0) CreateCreature("DASSIN",[500.1246],0) CreateCreature("DASSIN",[1435.1156],0) CreateCreature("DASSIN",[1127.1457],0) SetGlobal("StGuardAttack","AR0300",1)~ EXIT
END

END