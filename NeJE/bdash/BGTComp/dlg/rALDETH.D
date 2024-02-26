REPLACE ~ALDETH~

IF WEIGHT #7 ~Global("Chapter","GLOBAL",8)~ THEN BEGIN 21 // from:
  SAY ~Salutations, my dear fellows.  It has been some time since I've seen you last.  Troubled times have descended upon our beautiful city, perhaps we should retire to the antechamber and discuss things.~ /* #2123 */
  IF ~~ THEN REPLY ~Sorry, we don't have time to talk right now, we'll see you later.~ /* #2126 */ EXIT
  IF ~~ THEN REPLY ~Sounds good to us.~ /* #2127 */ DO ~CreateCreature("FLAMAL",[281.450],0)
CreateCreature("FFHUNT",[221.425],0)
CreateCreature("FFHUNT",[468.293],0)
CreateCreature("FFHUNT",[503.269],0)~ GOTO 22
END
END

SET_WEIGHT ALDETH 21 #7