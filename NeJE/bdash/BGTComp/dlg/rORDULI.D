REPLACE ~ORDULI~

IF WEIGHT #2 ~Global("HelpOrdulinian","GLOBAL",0)
PartyHasItem("BGAMUL13")
PartyHasItem("BGRING12")~ THEN BEGIN 4 // from:
  SAY ~Ah, the bloodstone amulet of Arkion and Nemphre's onyx ring. I hope no blood was shed to get these for that may yet rest heavy on your conscience. Fools are to be suffered in this world, not slaughtered. Be what may, at least they may find some peace. As for these trinkets, you might as well sell them somewhere as they are of little use to anyone. For your troubles I will give you these cloak and boots. They may be of some use to you in the future.~
  IF ~~ THEN DO ~GiveItemCreate("CLCK02",LastTalkedToBy,0,0,0)
GiveItemCreate("BOOT01",LastTalkedToBy,0,0,0)
SetGlobal("HelpOrdulinian","GLOBAL",1)
AddexperienceParty(7500)~ EXIT
END
END

SET_WEIGHT ORDULI 4 #2