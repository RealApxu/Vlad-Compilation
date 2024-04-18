BEGIN NANNY

CHAIN
IF ~NumberOfTimesTalkedTo(0) See("Yoshimo") ~ THEN NANNY 0
~Yoshimo-san, I am glad to see you're healthy and in a good state.~
DO ~SetGlobal("Yoshimo_Meet","LOCALS",1)~
EXTERN YOSHJ TS183

CHAIN NANNY 1
~Thank you, Yoshimo-san. You know I have been worried about you, and now I feel much better when you are at home with your family. No need to tell you where is your room, I am sure. Your friends may rest there as well.~
EXIT

CHAIN
IF ~!NumberOfTimesTalkedTo(0)~ THEN NANNY 2
~I hope everything is alright. Have a nice day.~
EXIT

CHAIN
IF ~NumberOfTimesTalkedTo(0) OR(2) !InPartySlot(LastTalkedToBy,0) !Name("Yoshimo",LastTalkedToBy)~ THEN NANNY 3
~Greetings to you. Have a nice day.~
EXIT