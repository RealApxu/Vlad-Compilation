//1A. Meeting Bayard
//First of all, let's add the option of the girl "Ginny" (if Palyer1 is MALE) in the dialogue with Bayard. Otherwise, if Player1 is "FEMALE", then "Dalton" is a boy by defaul as in the original dialogue.
ADD_TRANS_TRIGGER ~BAYARD~ 9 ~Gender(Player1,FEMALE)~ DO 1 //reply option 1 (start with 0)

EXTEND_TOP BAYARD 9
  IF ~Gender(Player1,MALE)
Global("Therella","GLOBAL",1)~ THEN REPLY ~One of your friends; they did not happen to be named Ginny, did they?~ GOTO 10A //new option for male player
END

APPEND ~BAYARD~

IF ~~ THEN BEGIN 10A
  SAY ~You know the lass, or did her mother send you to check on her? She is a worrisome little parent, isn't she? Perhaps rightly so, I worried about the girl too. She does not take much of this seriously, and when she realizes what she has been through it may be a rude awakening, to be sure. She is with my fellows, deeper than I wished to go. You may find them if you search, but I think the way they went has been blocked. There be so many passages it seems Durlag felt he could afford to collapse a few behind the unwary.~
  IF ~~ THEN DO ~EscapeAreaDestroy(90)~ UNSOLVED_JOURNAL ~Find Therella's daughter, Ginny, in Durlag's Tower.

One of Bayard's comrades was the lass named Ginny that I have come to rescue. Bayard thinks the girl is in over her head, but it is her head to do with what she pleases.~ GOTO 12
END
END