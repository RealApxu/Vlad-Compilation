BEGIN ~TuKimSia~

IF ~NumberOfTimesTalkedTo(0)
Global("VP_Know_KimSia","GLOBAL",1)~ THEN BEGIN 0
  SAY ~What do you mean by barging in here uninvited? Don't you know that this floor and these apartments are off limits to students?~
  IF ~~ THEN REPLY ~I am sorry, I didn't mean to barge. I am looking for Brial.~ GOTO 1
  IF ~~ THEN REPLY ~I was told Brial had her apartments here, can you point me to where they may be?~ GOTO 12
  IF ~~ THEN REPLY ~I am looking for Brial. We have... ah... family connections and she said to look her up the minute I got to Halruaa.~ GOTO 13
  IF ~~ THEN REPLY ~In that case, I will leave immediately.~ GOTO 22
END

IF ~~ THEN BEGIN 1
  SAY ~Brial hasn't concerned herself with the tutoring of students for sometime now, so you'll excuse me for questioning your need to find her?~
  IF ~~ THEN REPLY ~RayVon has sent me to convey a message to her. He wishes to see her urgently but he was preoccupied and he forgot to tell me which were her apartments.~ GOTO 2
  IF ~~ THEN REPLY ~I mean to find this artifact she calls the leveller that she has hidden away.~ GOTO 6
  IF ~~ THEN REPLY ~She summoned me to her quarters and it is not for a student to question the command of a senior.~ GOTO 25
END

IF ~~ THEN BEGIN 2
  SAY ~RayVon you say, so typical of him to get the students to do his running around for him...  he should know better than to send students on errands to these quarters!~
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY ~Many of the mages here choose to lock and ward their apartments magically, making the area unsafe for students to be roaming around. So you see, it is not only to preserve the privacy of senior staff that we off limit this area, but also for the safety of the students themselves.~
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY ~I will bring this up with RayVon when I next see him. I can however tell you that Brial is not in her quarters so you have no reason to tarry here.~
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY ~As RayVon has sent you, I will not report your presence... this time, but I will warn you, should I find you here again at any time in the future, you will be dealt with most severely. Now, return to your own quarters!~
  IF ~~ THEN DO ~SetGlobal("VP_Know_KimSia","GLOBAL",2)
SetGlobalTimer("VP_Reveal_Spies_A","GLOBAL",SIX_DAYS)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY ~Leveller? I have no idea what you are talking about. I am guessing that you are new students, and that you are being deliberately fed this leveller nonsense by some of our older students as some form of prank.~
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY ~Whereas that doesn't excuse your being here, I will let you off with a warning this time, but should you be found here again at any time in the future, you will be dealt with most severely.~
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY ~For future reference, students do not take it upon themselves to investigate a senior member of staff's business. Now please leave and we will say no more.~
  IF ~~ THEN REPLY ~Then I apologise for disturbing you. I will leave immediately and heed your warning. Goodbye.~ GOTO 9
  IF ~~ THEN REPLY ~Prank you say, then what do you make of this letter from Vrielle to Brial? It clearly mentions a device called the leveller, or are you going to tell me that the academy's senior staff, are also in the habit of playing pranks on new students?~ GOTO 10
END

IF ~~ THEN BEGIN 9
  SAY ~Be sure that you do.~
  IF ~~ THEN DO ~SetGlobal("VP_Know_KimSia","GLOBAL",2)
SetGlobalTimer("VP_Reveal_Spies_A","GLOBAL",SIX_DAYS)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY ~Whatever you know or think you know, this is academy business, not students's. Now I will ask you once more to leave or I will be forced to report your insolence to a higher authority.~
  IF ~~ THEN REPLY ~Hey, I don't want any trouble in my first term... I will heed your warning and leave immediately. Goodbye.~ GOTO 9
  IF ~~ THEN REPLY ~That's where you are wrong, I have made it my business to find and destroy this artifact.~ GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY ~I will take your words as an admission that you are spying for Ulcaster, and therefore a traitor to this academy! Why else would you wish to destroy that which is Halruaa's greatest hope in putting down his accursed academy... I can not let you discover it's whereabouts.~
  IF ~~ THEN DO ~SetGlobal("VP_Know_KimSia","GLOBAL",2)
SetGlobal("VP_HalruaaHostile","GLOBAL",1)
CreateCreatureObjectOffScreen("TuMage3",Player1,0,0,0)
CreateCreatureObjectOffScreen("TuMage3",Player1,0,0,0)
Shout(99)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY ~I could, but I am not about to unless you give me a good enough reason why I should! What business could a student have with a one of Halruaa's most senior of staff?~
  IF ~~ THEN REPLY ~RayVon has sent me to convey a message to her. He wishes to see her urgently but he was preoccupied and he forgot to tell me which were her apartments.~ GOTO 2
  IF ~~ THEN REPLY ~I mean to find this artifact she calls the leveller that she has hidden away.~ GOTO 6
  IF ~~ THEN REPLY ~She summoned me to her quarters and it is not for a student to question the command of a senior.~ GOTO 25
END

IF ~~ THEN BEGIN 13
  SAY ~You are related to Brial? If that was so my young friend then Brial will have informed you before your arrival that we don't favour family, nor do we encourage fraternising between students and senior staff, family or other.~
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY ~All students are subject to our rules and regulations, that includes the punishment for being found in the tutors private apartments.~
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY ~Now, as Brial no longer takes a hand in students affairs, and that includes family, I doubt that she has asked to be *looked up*!~
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY ~I'll ask you one more time... what are you doing here, and please, don't insult me with more lies?~
  IF ~CheckStatGT(LastTalkedToBy,14,WIS)
CheckStatGT(LastTalkedToBy,11,CHR)~ THEN REPLY ~I am sorry you are right. I am a new student and I wandered in here by mistake. As soon as I realised where I was I knew that I would be in trouble, so I thought if I said I had been summoned by a senior, it would be ok. I will leave immediately.~ GOTO 17
  IF ~CheckStatGT(LastTalkedToBy,14,WIS)
CheckStatLT(LastTalkedToBy,12,CHR)~ THEN REPLY ~I am sorry you are right. I am a new student and I wandered in here by mistake. As soon as I realised where I was I knew that I would be in trouble, so I thought if I said I had been summoned by a senior, it would be ok. I will leave immediately.~ GOTO 20
  IF ~~ THEN REPLY ~As I said, Brial asked to see me, she said that it was time I was taught how to deploy the leveller.~ GOTO 21
  IF ~~ THEN REPLY ~You are right, Brial didn't ask to see me. I am here to find and destroy the leveller. Now where is she?~ GOTO 11
END

IF ~~ THEN BEGIN 17
  SAY ~Hold one minute, before you leave I will give you some useful advice...~
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY ~Lesson number one, when speaking to members of staff here at the academy, be truthful always for they will detect a lie quicker than you can speak it.~
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY ~Lesson number two, don't let me catch you in this area again because I will not be so lenient a second time... new student or not, the penalties for being found here are severe. You are dismissed but heed my warning well.~
  IF ~~ THEN DO ~SetGlobal("VP_Know_KimSia","GLOBAL",2)
SetGlobalTimer("VP_Reveal_Spies_A","GLOBAL",SIX_DAYS)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 20
  SAY ~Please, credit me with intelligence enough to know when you are stalling. Now I know that you lie, and I will take your words as an admission that you are spying for Ulcaster, and therefore a traitor to this academy!~
  IF ~~ THEN DO ~SetGlobal("VP_Know_KimSia","GLOBAL",2)
SetGlobal("VP_HalruaaHostile","GLOBAL",1)
CreateCreatureObjectOffScreen("TuMage3",Player1,0,0,0)
CreateCreatureObjectOffScreen("TuMage3",Player1,0,0,0)
Shout(99)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 21
  SAY ~Now I know that you lie, for it is Garron who is to deploy the leveller in our stand against Ulcaster. RayVon would not trust such a task to a new student. I am assuming that it is your intention to find and use the leveller against Halruaa, I can not allow this...~
  IF ~~ THEN DO ~SetGlobal("VP_Know_KimSia","GLOBAL",2)
SetGlobal("VP_HalruaaHostile","GLOBAL",1)
CreateCreatureObjectOffScreen("TuMage3",Player1,0,0,0)
CreateCreatureObjectOffScreen("TuMage3",Player1,0,0,0)
Shout(99)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 22
  SAY ~Before you go I will issue this warning to you... you would do well not to be found in this area again.~
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY ~Many of the mages here choose to lock and ward their apartments magically, making the area unsafe for students to be roaming around. So you see, it is not only to preserve the privacy of senior staff that we off limit this area, but also for the safety of the students themselves.~
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY ~The penalties, should you be discovered here a second time, will be severe indeed my young friend. You are dismissed but heed well my warning.~
  IF ~~ THEN DO ~SetGlobal("VP_Know_KimSia","GLOBAL",2)
SetGlobalTimer("VP_Reveal_Spies_A","GLOBAL",SIX_DAYS)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 25
  SAY ~Brial sent for you? Now why should a senior member of staff, who has had no hand in tutoring for some time now, suddenly take it into her head to ask a new student to meet her in her private apartments? No, I think you are lying to me my young friend... I'll ask you just once more, what are you doing here?~
  IF ~CheckStatGT(LastTalkedToBy,14,WIS)
CheckStatGT(LastTalkedToBy,11,CHR)~ THEN REPLY ~I am sorry you are right. I am a new student and I wandered in here by mistake. As soon as I realised where I was I knew that I would be in trouble, so I thought if I said I had been summoned by a senior, it would be ok. I will leave immediately.~ GOTO 17
  IF ~CheckStatGT(LastTalkedToBy,14,WIS)
CheckStatLT(LastTalkedToBy,12,CHR)~ THEN REPLY ~I am sorry you are right. I am a new student and I wandered in here by mistake. As soon as I realised where I was I knew that I would be in trouble, so I thought if I said I had been summoned by a senior, it would be ok. I will leave immediately.~ GOTO 20
  IF ~~ THEN REPLY ~As I said, Brial asked to see me, she said that it was time I was taught how to deploy the leveller.~ GOTO 21
  IF ~~ THEN REPLY ~You are right, Brial didn't ask to see me. I am here to find and destroy the leveller. Now where is she?~ GOTO 11
END