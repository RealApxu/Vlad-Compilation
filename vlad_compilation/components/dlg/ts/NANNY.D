BEGIN ~NANNY~ 74280

IF ~NumberOfTimesTalkedTo(0)
See("Yoshimo")
~ THEN BEGIN 0
  SAY ~Yoshimo-san, I am glad to see you're healthy and in a good state.~
  IF ~~ THEN DO ~SetGlobal("Yoshimo_Meet","LOCALS",1)
~ EXTERN ~YOSHJ~ TS183
END

IF ~~ THEN BEGIN 1
  SAY ~Thank you, Yoshimo-san. You know I have been worried about you, and now I feel much better when you are at home with your family. No need to tell you where is your room, I am sure. Your friends may rest there as well.~
  IF ~~ THEN EXIT
END

IF ~!NumberOfTimesTalkedTo(0)
~ THEN BEGIN 2
  SAY ~I hope everything is alright. Have a nice day.~
  IF ~~ THEN EXIT
END

IF ~NumberOfTimesTalkedTo(0)
OR(2)
!InPartySlot(LastTalkedToBy,0)
!Name("Yoshimo",LastTalkedToBy)
~ THEN BEGIN 3
  SAY ~Greetings to you. Have a nice day.~
  IF ~~ THEN EXIT
END
