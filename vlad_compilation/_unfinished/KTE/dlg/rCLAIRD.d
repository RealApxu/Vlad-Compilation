//1B. AR0514 in BGT - Meeting Clair De'Lain
//First of all, let's add the option of the girl "Ginny" (if Palyer1 is MALE) in the dialogue with Clair. Otherwise, if Player1 is "FEMALE", then "Dalton" is a boy by defaul as in the original dialogue.
ADD_TRANS_TRIGGER ~CLAIRD~ 12 ~Gender(Player1,FEMALE)~ DO 0 //reply option 0 (start with 0)
ADD_TRANS_TRIGGER ~CLAIRD~ 13 ~Gender(Player1,FEMALE)~ DO 0 //reply option 0 (start with 0)
ADD_TRANS_TRIGGER ~CLAIRD~ 14 ~Gender(Player1,FEMALE)~ DO 0 //reply option 0 (start with 0)
ADD_TRANS_TRIGGER ~CLAIRD~ 15 ~Gender(Player1,FEMALE)~ DO 0 //reply option 0 (start with 0)
ADD_TRANS_TRIGGER ~CLAIRD~ 17 ~Gender(Player1,FEMALE)~ DO 0 //reply option 0 (start with 0)
ADD_TRANS_TRIGGER ~CLAIRD~ 18 ~Gender(Player1,FEMALE)~ DO 0 //reply option 0 (start with 0)

EXTEND_TOP CLAIRD 12
  IF ~Gender(Player1,MALE)~ THEN REPLY ~Then tell me straight: what happened to your friends.~ GOTO 16A //new option for male player
END

EXTEND_TOP CLAIRD 13
  IF ~Gender(Player1,MALE)~ THEN REPLY ~Then tell me straight: what happened to your friends.~ GOTO 16A //new option for male player
END

EXTEND_TOP CLAIRD 14
  IF ~Gender(Player1,MALE)~ THEN REPLY ~Then tell me straight: what happened to your friends.~ GOTO 16A //new option for male player
END

EXTEND_TOP CLAIRD 15
  IF ~Gender(Player1,MALE)~ THEN REPLY ~Then tell me straight: what happened to your friends.~ GOTO 16A //new option for male player
END

EXTEND_TOP CLAIRD 17
  IF ~Gender(Player1,MALE)~ THEN REPLY ~And it used this device to destroy your friends?~ GOTO 16A //new option for male player
END

EXTEND_TOP CLAIRD 18
  IF ~Gender(Player1,MALE)~ THEN REPLY ~And it deafeated them without any effort at all?~ GOTO 16A //new option for male player
END

REPLACE_STATE_TRIGGER ~CLAIRD~ 24 ~Dead("DeathK")
!Global("Therella","GLOBAL",2)
Gender(Player1,FEMALE)~

REPLACE_STATE_TRIGGER ~CLAIRD~ 25 ~Dead("DeathK")
Global("Therella","GLOBAL",2)
Gender(Player1,FEMALE)~

APPEND ~CLAIRD~

IF ~Dead("DeathK")
!Global("Therella","GLOBAL",2)~ THEN BEGIN 16A
  SAY ~They entered and challenged it, and it stared and did nothing. For a moment they didn't know what to do, and then it made a simple gesture with its hand, and all the hells broke loose. It created doubles of them all, and laughed as they literally killed themselves. I heard Ginny screaming loudest. I think she actually killed her double, but couldn't handle the fact that she had to. She was the youngest... They didn't know, and they missed the one shot they may have had...~
  IF ~~ THEN REPLY ~And what fell magic did it use to do this? ~ GOTO 17
  IF ~~ THEN REPLY ~Why did you come if you think this creature unbeatable?~ GOTO 18
  IF ~~ THEN REPLY ~And what is this 'one shot' of which you speak? You have already said that you think the creature cannot be beaten.~ GOTO 19
  IF ~~ THEN REPLY ~Weaklings. I will assault the creature head-on and destroy him before he realizes!~ GOTO 20
END

IF ~Dead("DeathK")
!Global("Therella","GLOBAL",2)
Gender(Player1,MALE)~ THEN BEGIN 24A
  SAY ~You... you made it! Did any of... no, all my friends are dead, aren't they? Ginny's mother will kill me as surely as this place would have. At... at least the Demonknight has been stopped. I hope we've seen that last of his kind...it worries me though. I have heard they serve powerful beings even more evil than they, if such a thing is possible. I... I'd better go.~
  IF ~~ THEN DO ~DialogInterrupt(FALSE)
MoveToPoint([4208.1107])
DestroySelf()~ JOURNAL ~Clair seemed rather amazed that I defeated the demonknight. Perhaps so was I. A pity her friends could not be saved. A harsh lesson about knowing your boundaries.~ EXIT
END

IF ~Dead("DeathK")
Global("Therella","GLOBAL",2)
Gender(Player1,MALE)~ THEN BEGIN 25A
  SAY ~You... you made it! Ginny ran out faster than I've ever seen her move. Did anyone else... no, they are dead, aren't they? At least Ginny's mother will sleep well tonight. I doubt she'll be going on any more adventures anytime soon. Neither will I, for that matter. At least you stopped the demonknight, though... though it worries me. I have heard that such creatures serve powerful beings even more evil than they, as if such a thing were possible. I... I should go. ~
  IF ~~ THEN DO ~DialogInterrupt(FALSE)
MoveToPoint([4208.1107])
DestroySelf()~ JOURNAL ~Clair seemed rather amazed that I defeated the demonknight, and perhaps so was I. She was also happy that at least one of her friends made it out alive. A small thing in the face of so much death, but we take our victories where we can.~ EXIT
END
END