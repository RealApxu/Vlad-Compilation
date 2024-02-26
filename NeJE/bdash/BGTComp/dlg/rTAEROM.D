REPLACE ~TAEROM~

IF ~~ THEN BEGIN 1 // from: 12.0 4.1 2.0 0.1
  SAY ~Ahhh, this will make a fine suit of plate for a governor or better.  Nobility like exotic materials, and don't care much about the price.  Probably close to 20,000 gold for a tenday's work when I'm finished.  I may survive this iron shortage after all.~ /* #180 */
  IF ~~ THEN DO ~TakePartyItemAll("MISC12")
GiveGoldForce(500)
SetGlobal("MakeArmor","GLOBAL",2)
~ JOURNAL ~Today I sold that ankheg shell I found for 500 gold!  It's a fortune!~ /* #5835 */ EXIT
END

END
