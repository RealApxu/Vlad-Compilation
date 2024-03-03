REPLACE ~MARL~

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY ~'Twould be fitting, I suppose.  To Kennair Nethalin!  Rest ye well!  I... I would be alone awhile.~ /* #2389 */
  IF ~~ THEN DO ~ChangeClass(Myself,INNOCENT)
AddExperienceParty(900)~ JOURNAL ~A man named Marl tried to pick a fight with me at the Feldepost Inn, but I was able to calm him down.  Marl lost a son named Kennair Nethalin.~ /* #11821 */ EXTERN ~DUNKIN~ 4
END

END
