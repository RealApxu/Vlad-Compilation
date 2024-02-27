BEGIN ~TuTheod~ 1

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~Well met, my young friend, I am Theodoran, specialist and tutor here at Halruaa. If you are here for the ability test, please, introduce yourself.~
  IF ~~ THEN REPLY ~I am <GABBER>, well met, Theodoran. Please, tell me more about this ability test?~ GOTO 1
  IF ~~ THEN REPLY ~Hello, Theodoran, I am <GABBER>. Why do I need to take an ability test?~ GOTO 1
  IF ~~ THEN REPLY ~I am <GABBER>. This test you speak of, is it compulsory for all students here at Halruaa?~ GOTO 1
  IF ~~ THEN REPLY ~I am <GABBER>. What is an ability test?~ GOTO 1
  IF ~~ THEN REPLY ~I am <GABBER>, and I know my capabilities. I see no reason to prove myself to you or anyone!~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY ~Testing students at different stages of their tuition is a necessary procedure, <GABBER>.~
=
~We need to be sure that the student has learnt all that is required before moving on to the next phase of learning.~
  IF ~~ THEN DO ~SetGlobal("VP_Halruaa_Tests","GLOBAL",1)~ GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY ~To move a student forward before understanding what has gone before could prove hazardous not only to the student but also to the students who work alongside him.~
=
~No student will be permitted to proceed or graduate if they refuse a test at any stage.~
  IF ~~ THEN REPLY ~I understand why you set the tests, but how are they beneficial to the student?~ GOTO 3
  IF ~~ THEN REPLY ~What advantage does a student who has graduated have over one who has obtained all the certificates and not graduated?~ GOTO 3
  IF ~~ THEN REPLY ~Tell me, Theodoran, what incentive is offered to encourage students to take these tests?~ GOTO 3
  IF ~~ THEN REPLY ~You give me reasons why you set the tests, and yet you say nothing of what I gain by taking them?~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY ~(*Looking at you closely*)... I find that an odd question for a student to be asking, <GABBER>?~
=
~All students know that a graduation pass from Halruaa will afford them the highest of respect wherever they travel.~
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY ~The Academy is renown for its high standards of discipline, and to maintain this high esteem only students that graduate are granted a final diploma of Halruaa.~
=
~In order to graduate, all students must produce certificates of each stage passed.~
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY ~To gain that diploma and the prestige that it affords is all the reward that students here strive for, but as a student yourself, <CHARNAME>, you know this or you would not be here for assessment, would you? Or..., is there some other reason that you are here?~
  IF ~~ THEN REPLY ~No... no other reason than to prove myself, Theodoran.~ GOTO 6
  IF ~~ THEN REPLY ~I am here for the assessment, Theodoran, nothing more than that.~ GOTO 6
  IF ~~ THEN REPLY ~I know of the prestige gained, Theodoran, I merely asked whether there was a personal reward for each certificate gained. Set your tests, I will not fail!~ GOTO 6
  IF ~~ THEN REPLY ~Set your test, Theodoran, I will then decide whether I am here to take them or not.~ GOTO 6
  IF ~~ THEN REPLY ~Well met Theodoran. I am <CHARNAME> and yes I am here for your ability test but not for myself.~ GOTO npcstest
END

IF ~~ THEN BEGIN 6
  SAY ~Then let me explain the test, <GABBER>. You know that a lot of invocation spells are ideal in combat situations.~
=
~Some of the most powerful invocation spells are designed to give the mage the edge in combat.~
=
~My intention here today is to test your handling of such a situation using whatever invocation spells you know.~
=
~Now for the task. What I need you to do is to help me with a little infestation problem I have.~
=
~There is a place, which has unfortunately been infested with pests, pests that I am hoping you can get rid of for me.~
=
~Let me first assure you that a competent mage with the right spells should have no difficulty in getting rid of these pests.~
=
~Knowing the task do you have the neccessary spells readied?~
  IF ~~ THEN REPLY ~I have, Theodoran.~ GOTO 7
  IF ~~ THEN REPLY ~I have no time for your little tests, Theodoran, I will be leaving.~ GOTO 12
  IF ~~ THEN REPLY ~Perhaps another time, Theodoran, I have other matters to attend to at this moment in time.~ GOTO 12
  IF ~Class(Player1,MAGE_ALL)
!Kit(Player1,MAGESCHOOL_ENCHANTER)~ THEN REPLY ~I have the spells, Theodoran, but I have not had the opportunity to memorise them.~ GOTO 8
  IF ~OR(2)
!Class(Player1,MAGE_ALL)
Kit(Player1,MAGESCHOOL_ENCHANTER)~ THEN REPLY ~I have the spells, Theodoran, but I have not had the opportunity to memorise them.~ GOTO 9
  IF ~Class(Player1,MAGE_ALL)
!Kit(Player1,MAGESCHOOL_ENCHANTER)~ THEN REPLY ~I do not have the required spells in my spell book.~ GOTO 10
  IF ~OR(2)
!Class(Player1,MAGE_ALL)
Kit(Player1,MAGESCHOOL_ENCHANTER)~ THEN REPLY ~I do not have the required spells in my spell book.~ GOTO 11
  IF ~InParty("Nalia")
!Dead("Nalia")~ THEN REPLY ~Nalia is going to test her abilities.~ EXTERN ~NALIAJ~ NEJ326
  IF ~InParty("Aerie")
!Dead("Aerie")~ THEN REPLY ~Aerie is prepared to be assessed.~ EXTERN ~AERIEJ~ NEJ228
  IF ~InParty("Kachiko")
!Dead("Kachiko")~ THEN REPLY ~Kachiko is ready.~ EXTERN ~KACHIJ~ NEJ64
  IF ~InParty("Jan")
!Dead("Jan")~ THEN REPLY ~Jan, this calls for your skill and expertise, are you ready?~ EXTERN ~JANJ~ invoker
  IF ~InParty("Edwin")
!Dead("Edwin")~ THEN REPLY ~Edwin, I know this is beneath you and I shouldn't really be asking but as there is no other in the group as well versed in magic as you, could you possibly consider dealing with this mage's request for me ... please?~ EXTERN ~EDWINJ~ invoker1
  IF ~InParty("Taffic")
!Dead("Taffic")~ THEN REPLY ~Taffic, do you think you can handle this?~ EXTERN ~TAFFICJ~ invoker
END

IF ~~ THEN BEGIN 7
  SAY ~Commendable, <GABBER>!~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutT13")~ EXIT
END //=> Invoker: Test 1

IF ~~ THEN BEGIN 8
  SAY ~I would have thought you would have come better prepared, <GABBER>! However did you expect to pass without any preparation on your part?~
  IF ~~ THEN REPLY ~I was preoccupied with my studies, Theodoran, I guess I left it too late to memorise spells.~ GOTO 15
  IF ~~ THEN REPLY ~I have no excuses, Theodoran, I forgot about the assessment.~ GOTO 15
  IF ~~ THEN REPLY ~How am I expected to have the required spells memorised when I have no idea what would be expected of me?~ GOTO 15
  IF ~~ THEN REPLY ~I am an Invoker not a Diviner! However was I supposed to know what spells would be required today?~ GOTO 15
END

IF ~~ THEN BEGIN 9
  SAY ~Then, <GABBER>, I suggest you come back when you have memorised the appropriate spells, but you would be wise to make it soon as I have an important duty that will call me away shortly. So until then, farewell.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",2)~ EXIT
END //Invoker: Test 1 is postponed
		
IF ~~ THEN BEGIN 10
  SAY ~You call yourself Invoker, <GABBER>, and yet you do not have some of the most versatile of evocation spells at your disposal! I should by rights refuse you and have you return when you are better prepared!~
  IF ~~ THEN REPLY ~Do you disregard my abilities solely because I do not have the spells required for this test of yours?~ GOTO 18
  IF ~~ THEN REPLY ~I might not have what you call *the* most versatile of evocation  spells, but I am an Invoker, and as such should be given the chance to prove myself!~ GOTO 18
  IF ~~ THEN REPLY ~I am more than capable as an Invoker to pass your tests, Theodoran, if only you will give me the opportunity.~ GOTO 18
  IF ~~ THEN REPLY ~Please, Theodoran, I can pass your test if only will give me the chance.~ GOTO 18
END

IF ~~ THEN BEGIN 11
  SAY ~You call yourself Invoker, <GABBER>, and yet you do not have some of the most versatile of evocation spells at your disposal!~
=
~I suggest you come back when you are ready to prove yourself deserving of the name Invoker! Farewell.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",2)~ EXIT
END //Invoker: Test 1 is postponed

IF ~~ THEN BEGIN 12
  SAY ~As you wish, <GABBER>. This may be the only opportunity you may have as I have an important duty that will call me away shortly, and I have no idea when I shall return. Farewell.~
  IF ~~ THEN REPLY ~Farewell, Theodoran.~ GOTO 13
  IF ~~ THEN REPLY ~If that is so, perhaps I should make the time for your tests now, Theodoran.~ GOTO 14
END

IF ~~ THEN BEGIN 13
  SAY ~Goodbye, <GABBER>.~
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END //Invoker: Test 1 is rejected

IF ~~ THEN BEGIN 14
  SAY ~Then you know what is required of you, <GABBER>, are you prepared?~
  IF ~~ THEN REPLY ~I have, Theodoran.~ GOTO 7
  IF ~Class(Player1,MAGE_ALL)
!Kit(Player1,MAGESCHOOL_ENCHANTER)~ THEN REPLY ~I have the spells, Theodoran, but I have not had the opportunity to memorise them.~ GOTO 8
  IF ~OR(2)
!Class(Player1,MAGE_ALL)
Kit(Player1,MAGESCHOOL_ENCHANTER)~ THEN REPLY ~I have the spells, Theodoran, but I have not had the opportunity to memorise them.~ GOTO 9
  IF ~Class(Player1,MAGE_ALL)
!Kit(Player1,MAGESCHOOL_ENCHANTER)~ THEN REPLY ~I do not have the required spells in my spell book.~ GOTO 10
  IF ~OR(2)
!Class(Player1,MAGE_ALL)
Kit(Player1,MAGESCHOOL_ENCHANTER)~ THEN REPLY ~I do not have the required spells in my spell book.~ GOTO 11
  IF ~InParty("Nalia")
!Dead("Nalia")~ THEN REPLY ~Nalia is going to test her abilities.~ EXTERN ~NALIAJ~ NEJ326
  IF ~InParty("Aerie")
!Dead("Aerie")~ THEN REPLY ~Aerie is prepared to be assessed.~ EXTERN ~AERIEJ~ NEJ228
  IF ~InParty("Kachiko")
!Dead("Kachiko")~ THEN REPLY ~Kachiko is ready.~ EXTERN ~KACHIJ~ NEJ64
  IF ~InParty("Jan")
!Dead("Jan")~ THEN REPLY ~Jan, this calls for your skill and expertise, are you ready?~ EXTERN ~JANJ~ invoker
  IF ~InParty("Edwin")
!Dead("Edwin")~ THEN REPLY ~Edwin, I know this is beneath you and I shouldn't really be asking but as there is no other in the group as well versed in magic as you, could you possibly consider dealing with this mage's request for me ... please?~ EXTERN ~EDWINJ~ invoker1
  IF ~InParty("Taffic")
!Dead("Taffic")~ THEN REPLY ~Taffic, do you think you can handle this?~ EXTERN ~TAFFICJ~ invoker
END

IF ~~ THEN BEGIN 15
  SAY ~Spare me the excuses, <GABBER>. I am here to assess your spell casting abilities and as such I will offer you a choice of scrolls, I will however have to mark you down for not preparing beforehand. You may choose two, which will you take?~
  IF ~~ THEN REPLY ~Agannazar's Scorcher.~ DO ~GiveItemCreate("SCRL1B",Player1,1,0,0)~ GOTO 16
  IF ~~ THEN REPLY ~Fireball.~ DO ~GiveItemCreate("SCRL1G",Player1,1,0,0)~ GOTO 16
  IF ~~ THEN REPLY ~Lightning Bolt.~ DO ~GiveItemCreate("SCRL1K",Player1,1,0,0)~ GOTO 16
  IF ~~ THEN REPLY ~Ice Storm.~ DO ~GiveItemCreate("SCRL1X",Player1,1,0,0)~ GOTO 16
  IF ~~ THEN REPLY ~Cloudkill.~ DO ~GiveItemCreate("SCRL2E",Player1,1,0,0)~ GOTO 16
  IF ~~ THEN REPLY ~Cone of Cold.~ DO ~GiveItemCreate("SCRL2F",Player1,1,0,0)~ GOTO 16
  IF ~~ THEN REPLY ~Phantom Blade.~ DO ~GiveItemCreate("SCRL6Z",Player1,1,0,0)~ GOTO 16
  IF ~~ THEN REPLY ~Magic Missile.~ DO ~GiveItemCreate("SCRL77",Player1,1,0,0)~ GOTO 16
  IF ~~ THEN REPLY ~Chromatic Orb.~ DO ~GiveItemCreate("SCRL83",Player1,1,0,0)~ GOTO 16
  IF ~~ THEN REPLY ~Web.~ DO ~GiveItemCreate("SCRL99",Player1,1,0,0)~ GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY ~You may take another one.~
  IF ~~ THEN REPLY ~Agannazar's Scorcher.~ DO ~GiveItemCreate("SCRL1B",Player1,1,0,0)~ GOTO 17
  IF ~~ THEN REPLY ~Fireball.~ DO ~GiveItemCreate("SCRL1G",Player1,1,0,0)~ GOTO 17
  IF ~~ THEN REPLY ~Lightning Bolt.~ DO ~GiveItemCreate("SCRL1K",Player1,1,0,0)~ GOTO 17
  IF ~~ THEN REPLY ~Ice Storm.~ DO ~GiveItemCreate("SCRL1X",Player1,1,0,0)~ GOTO 17
  IF ~~ THEN REPLY ~Cloudkill.~ DO ~GiveItemCreate("SCRL2E",Player1,1,0,0)~ GOTO 17
  IF ~~ THEN REPLY ~Cone of Cold.~ DO ~GiveItemCreate("SCRL2F",Player1,1,0,0)~ GOTO 17
  IF ~~ THEN REPLY ~Phantom Blade.~ DO ~GiveItemCreate("SCRL6Z",Player1,1,0,0)~ GOTO 17
  IF ~~ THEN REPLY ~Magic Missile.~ DO ~GiveItemCreate("SCRL77",Player1,1,0,0)~ GOTO 17
  IF ~~ THEN REPLY ~Chromatic Orb.~ DO ~GiveItemCreate("SCRL83",Player1,1,0,0)~ GOTO 17
  IF ~~ THEN REPLY ~Web.~ DO ~GiveItemCreate("SCRL99",Player1,1,0,0)~ GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY ~You have chosen, then you may proceed.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutT13")~ EXIT
END //=> Invoker: Test 1

IF ~~ THEN BEGIN 18
  SAY ~Do not interrupt me, <GABBER>! As it is your ability to cast the spells that I am interested in and not what your spell book contains, I will give you a choice of scrolls.~
=
~I will however have to mark you down for not being prepared on your arrival. You may pick two, which will you take?~
  IF ~~ THEN REPLY ~Agannazar's Scorcher.~ DO ~GiveItemCreate("SCRL1B",Player1,1,0,0)~ GOTO 16
  IF ~~ THEN REPLY ~Fireball.~ DO ~GiveItemCreate("SCRL1G",Player1,1,0,0)~ GOTO 16
  IF ~~ THEN REPLY ~Lightning Bolt.~ DO ~GiveItemCreate("SCRL1K",Player1,1,0,0)~ GOTO 16
  IF ~~ THEN REPLY ~Ice Storm.~ DO ~GiveItemCreate("SCRL1X",Player1,1,0,0)~ GOTO 16
  IF ~~ THEN REPLY ~Cloudkill.~ DO ~GiveItemCreate("SCRL2E",Player1,1,0,0)~ GOTO 16
  IF ~~ THEN REPLY ~Cone of Cold.~ DO ~GiveItemCreate("SCRL2F",Player1,1,0,0)~ GOTO 16
  IF ~~ THEN REPLY ~Phantom Blade.~ DO ~GiveItemCreate("SCRL6Z",Player1,1,0,0)~ GOTO 16
  IF ~~ THEN REPLY ~Magic Missile.~ DO ~GiveItemCreate("SCRL77",Player1,1,0,0)~ GOTO 16
  IF ~~ THEN REPLY ~Chromatic Orb.~ DO ~GiveItemCreate("SCRL83",Player1,1,0,0)~ GOTO 16
  IF ~~ THEN REPLY ~Web.~ DO ~GiveItemCreate("SCRL99",Player1,1,0,0)~ GOTO 16
END

IF ~OR(2)
Global("VP_My_Test","LOCALS",2)
Global("VP_My_Test","LOCALS",4)~ THEN BEGIN 19
  SAY ~Ah, it is good to see you again, <GABBER>. I take it you have returned better prepared and now have the spells necessary for the task set?~
  IF ~~ THEN REPLY ~I do, Theodoran.~ GOTO 20
  IF ~~ THEN REPLY ~Of course, Theodoran, I would not be here otherwise.~ GOTO 20
  IF ~~ THEN REPLY ~I do and I assure you, I will not fail.~ GOTO 20
  IF ~InParty("Nalia")
!Dead("Nalia")~ THEN REPLY ~Nalia is going to test her abilities.~ EXTERN ~NALIAJ~ NEJ327
  IF ~InParty("Aerie")
!Dead("Aerie")~ THEN REPLY ~Aerie is prepared to be assessed.~ EXTERN ~AERIEJ~ NEJ229
  IF ~InParty("Kachiko")
!Dead("Kachiko")~ THEN REPLY ~Kachiko is ready.~ EXTERN ~KACHIJ~ NEJ65
  IF ~InParty("Jan")
!Dead("Jan")~ THEN REPLY ~Jan, this calls for your skill and expertise, are you ready?~ EXTERN ~JANJ~ invoker2
  IF ~InParty("Taffic")
!Dead("Taffic")~ THEN REPLY ~Taffic, do you think you can handle this?~ EXTERN ~TAFFICJ~ invoker2
  IF ~InParty("Edwin")
!Dead("Edwin")
Global("VP_My_Test","LOCALS",2)~ THEN REPLY ~Edwin, I know this is beneath you and I shouldn't really be asking but as there is no other in the group as well versed in magic as you, could you possibly consider dealing with this mage's request for me ... please?~ EXTERN ~EDWINJ~ invoker1

END

IF ~~ THEN BEGIN 20
  SAY ~Then you may proceed.~
  IF ~Global("VP_My_Test","LOCALS",2)~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutT13")~ EXIT
  IF ~Global("VP_My_Test","LOCALS",4)~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",5)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutT15")~ EXIT
END //=> Invoker: Test 1

IF ~Global("VP_Invoker_Test","GLOBAL",1)
OR(2)
Global("VP_My_Test","LOCALS",1)
Global("VP_My_Test","LOCALS",5)~ THEN BEGIN 21
  SAY ~Well done. You have dealt with my little problem I see. This was one test that has proven beneficial to both student and tutor, I thank you.~
  IF ~Global("VP_Nalia_InvQuest","GLOBAL",0)
Global("VP_Kachi_InvQuest","GLOBAL",0)
Global("VP_Aerie_InvQuest","GLOBAL",0)
Global("VP_Taffic_InvQuest","GLOBAL",0)
Global("VP_Edwin_InvQuest","GLOBAL",0)
Global("VP_Jan_InvQuest","GLOBAL",0)~ THEN REPLY ~I certainly did not expect to serve as an exterminator during my time at Halruaa, Theodoran.~ GOTO 22
  IF ~Global("VP_Nalia_InvQuest","GLOBAL",0)
Global("VP_Kachi_InvQuest","GLOBAL",0)
Global("VP_Aerie_InvQuest","GLOBAL",0)
Global("VP_Taffic_InvQuest","GLOBAL",0)
Global("VP_Edwin_InvQuest","GLOBAL",0)
Global("VP_Jan_InvQuest","GLOBAL",0)~ THEN REPLY ~Hardly a task for an Invoker, Theodoran. Still, I suppose using your students as exterminators means you do not have to dirty your own hands.~ GOTO 22
  IF ~Global("VP_Nalia_InvQuest","GLOBAL",0)
Global("VP_Kachi_InvQuest","GLOBAL",0)
Global("VP_Aerie_InvQuest","GLOBAL",0)
Global("VP_Taffic_InvQuest","GLOBAL",0)
Global("VP_Edwin_InvQuest","GLOBAL",0)
Global("VP_Jan_InvQuest","GLOBAL",0)~ THEN REPLY ~So, under the guise of performing tests, Halruaa's students have to clear the vermin, is that not what this was about, Theodoran?~ GOTO 22
  IF ~Global("VP_Nalia_InvQuest","GLOBAL",1)~ THEN REPLY ~I certainly did not expect to serve as an exterminator during my time at Halruaa, Theodoran.~ GOTO 32
  IF ~Global("VP_Nalia_InvQuest","GLOBAL",1)~ THEN REPLY ~Hardly a task for an Invoker, Theodoran. Still, I suppose using your students as exterminators means you do not have to dirty your own hands.~ GOTO 32
  IF ~Global("VP_Nalia_InvQuest","GLOBAL",1)~ THEN REPLY ~So, under the guise of performing tests, Halruaa's students have to clear the vermin, is that not what this was about, Theodoran?~ GOTO 32
  IF ~Global("VP_Kachi_InvQuest","GLOBAL",1)~ THEN REPLY ~I certainly did not expect to serve as an exterminator during my time at Halruaa, Theodoran.~ GOTO 33
  IF ~Global("VP_Kachi_InvQuest","GLOBAL",1)~ THEN REPLY ~Hardly a task for an Invoker, Theodoran. Still, I suppose using your students as exterminators means you do not have to dirty your own hands.~ GOTO 33
  IF ~Global("VP_Kachi_InvQuest","GLOBAL",1)~ THEN REPLY ~So, under the guise of performing tests, Halruaa's students have to clear the vermin, is that not what this was about, Theodoran?~ GOTO 33
  IF ~Global("VP_Aerie_InvQuest","GLOBAL",1)~ THEN REPLY ~I certainly did not expect to serve as an exterminator during my time at Halruaa, Theodoran.~ GOTO 34
  IF ~Global("VP_Aerie_InvQuest","GLOBAL",1)~ THEN REPLY ~Hardly a task for an Invoker, Theodoran. Still, I suppose using your students as exterminators means you do not have to dirty your own hands.~ GOTO 34
  IF ~Global("VP_Aerie_InvQuest","GLOBAL",1)~ THEN REPLY ~So, under the guise of performing tests, Halruaa's students have to clear the vermin, is that not what this was about, Theodoran?~ GOTO 34
  IF ~Global("VP_Taffic_InvQuest","GLOBAL",1)~ THEN REPLY ~I certainly did not expect to serve as an exterminator during my time at Halruaa, Theodoran.~ GOTO tafftest
  IF ~Global("VP_Taffic_InvQuest","GLOBAL",1)~ THEN REPLY ~Hardly a task for an Invoker, Theodoran. Still, I suppose using your students as exterminators means you do not have to dirty your own hands.~ GOTO tafftest
  IF ~Global("VP_Taffic_InvQuest","GLOBAL",1)~ THEN REPLY ~So, under the guise of performing tests, Halruaa's students have to clear the vermin, is that not what this was about, Theodoran?~ GOTO tafftest
  IF ~Global("VP_Edwin_InvQuest","GLOBAL",1)~ THEN REPLY ~I certainly did not expect to serve as an exterminator during my time at Halruaa, Theodoran.~ GOTO edwdone
  IF ~Global("VP_Edwin_InvQuest","GLOBAL",1)~ THEN REPLY ~Hardly a task for an Invoker, Theodoran. Still, I suppose using your students as exterminators means you do not have to dirty your own hands.~ GOTO edwdone
  IF ~Global("VP_Edwin_InvQuest","GLOBAL",1)~ THEN REPLY ~So, under the guise of performing tests, Halruaa's students have to clear the vermin, is that not what this was about, Theodoran?~ GOTO edwdone
  IF ~Global("VP_Jan_InvQuest","GLOBAL",1)~ THEN REPLY ~I certainly did not expect to serve as an exterminator during my time at Halruaa, Theodoran.~ GOTO jandone
  IF ~Global("VP_Jan_InvQuest","GLOBAL",1)~ THEN REPLY ~Hardly a task for an Invoker, Theodoran. Still, I suppose using your students as exterminators means you do not have to dirty your own hands.~ GOTO jandone
  IF ~Global("VP_Jan_InvQuest","GLOBAL",1)~ THEN REPLY ~So, under the guise of performing tests, Halruaa's students have to clear the vermin, is that not what this was about, Theodoran?~ GOTO jandone
END

IF ~~ THEN BEGIN 22
  SAY ~However you look at it <GABBER>, you have passed the test no matter what you had to do. Be content. Now, I suggest you return to your studies and I will see you again when you are next ready to advance.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",3)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutT14")~ EXIT
END

IF ~!Global("VP_Invoker_Test","GLOBAL",1)
OR(2)
Global("VP_My_Test","LOCALS",1)
Global("VP_My_Test","LOCALS",5)~ THEN BEGIN 23
  SAY ~Now that didn't go very well at all did it? I know the test was a little out of the ordinary but it certainly shouldn't have been beyond your capabilities.~
=
~However, at Halruaa it is not our policy to put our students lives in jeopardy for these tests and that is why I had to abort the test and pull you out quickly.~
=
~Now I suppose I will have to take care of the pests myself unless another candidate comes along soon. Now run along and get back to your studies.~
  IF ~Global("VP_My_Test","LOCALS",1)~ THEN REPLY ~Please, Theodoran, let me attempt the task once more. I will not fail again.~ GOTO 24
  IF ~Global("VP_My_Test","LOCALS",1)~ THEN REPLY ~You cannot possibly fail me after only one attempt, Theodoran!~ GOTO 24
  IF ~Global("VP_My_Test","LOCALS",1)~ THEN REPLY ~Is that it, Theodoran? One attempt is hardly fair!~ GOTO 24
  IF ~Global("VP_My_Test","LOCALS",1)~ THEN REPLY ~Vermin extermination could hardly be described as a fair test for an Invoker! I think you should in all fairness set me another task, Theodoran!~ GOTO 24
  IF ~Global("VP_My_Test","LOCALS",5)~ THEN REPLY ~Please, Theodoran, let me attempt the task once more. I will not fail again.~ GOTO 25
  IF ~Global("VP_My_Test","LOCALS",5)~ THEN REPLY ~You cannot possibly fail me after only one attempt, Theodoran!~ GOTO 25
  IF ~Global("VP_My_Test","LOCALS",5)~ THEN REPLY ~Is that it, Theodoran? One attempt is hardly fair!~ GOTO 25
  IF ~Global("VP_My_Test","LOCALS",5)~ THEN REPLY ~Vermin extermination could hardly be described as a fair test for an Invoker! I think you should in all fairness set me another task, Theodoran!~ GOTO 25
END

IF ~~ THEN BEGIN 24
  SAY ~One attempt is all you get! You may try again but not at this time.~
  IF ~True()~ THEN GOTO failtest
	IF ~Global("VP_Nalia_InvQuest","GLOBAL",1)~ THEN EXTERN ~NALIAJ~ invfail
	IF ~Global("VP_Aerie_InvQuest","GLOBAL",1)~ THEN EXTERN ~AERIEJ~ invfail
	IF ~Global("VP_Kachiko_InvQuest","GLOBAL",1)~ THEN EXTERN ~KACHIJ~ invfail
	IF ~Global("VP_Edwin_InvQuest","GLOBAL",1)~ THEN EXTERN ~EDWINJ~ invfail
	IF ~Global("VP_Taffic_InvQuest","GLOBAL",1)~ THEN EXTERN ~TAFFICJ~ invfail
	IF ~Global("VP_Jan_InvQuest","GLOBAL",1)~ THEN EXTERN ~JANJ~ invfail
END //Invoker: Test 1 is failed and postponed

IF ~~ THEN BEGIN 25
  SAY ~I am sorry, but that is all I can do for you. You have already failed twice, and you may not try again. I wish you good luck in your studies.~
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutT17")~ EXIT
END //Invoker: Test 1 is failed

IF ~~ THEN BEGIN 26
  SAY ~Commendable, Nalia!~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutN06")~ EXIT
END //=> Invoker: Test 1

IF ~~ THEN BEGIN 27
  SAY ~Commendable, Kachiko!~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutK06")~ EXIT
END //=> Invoker: Test 1

IF ~~ THEN BEGIN 28
  SAY ~Commendable, Aerie!~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutA06")~ EXIT
END //=> Invoker: Test 1

IF ~~ THEN BEGIN 29
  SAY ~Then you may proceed.~
  IF ~Global("VP_My_Test","LOCALS",2)~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutN06")~ EXIT
  IF ~Global("VP_My_Test","LOCALS",4)~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",5)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutN07")~ EXIT
END //=> Invoker: Test 1

IF ~~ THEN BEGIN 30
  SAY ~Then you may proceed.~
  IF ~Global("VP_My_Test","LOCALS",2)~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutK06")~ EXIT
  IF ~Global("VP_My_Test","LOCALS",4)~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",5)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutK07")~ EXIT
END //=> Invoker: Test 1

IF ~~ THEN BEGIN 31
  SAY ~Then you may proceed.~
  IF ~Global("VP_My_Test","LOCALS",2)~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutA06")~ EXIT
  IF ~Global("VP_My_Test","LOCALS",4)~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",5)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutA07")~ EXIT
END //=> Invoker: Test 1

IF ~~ THEN BEGIN 32
  SAY ~However you look at it Nalia, you have passed the test no matter what you had to do. Be content. Now, I suggest you return to your studies and I will see you again when you are next ready to advance.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",3)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutN08")~ EXIT
END

IF ~~ THEN BEGIN 33
  SAY ~However you look at it Kachiko, you have passed the test no matter what you had to do. Be content. Now, I suggest you return to your studies and I will see you again when you are next ready to advance.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",3)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutK08")~ EXIT
END

IF ~~ THEN BEGIN 34
  SAY ~However you look at it Aerie, you have passed the test no matter what you had to do. Be content. Now, I suggest you return to your studies and I will see you again when you are next ready to advance.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",3)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutA08")~ EXIT
END

IF WEIGHT #-1 ~!Global("VP_Invoker_Test","GLOBAL",1)
Global("VP_Break_AlterTest","GLOBAL",1)
OR(2)
Global("VP_My_Test","LOCALS",1)
Global("VP_My_Test","LOCALS",5)~ THEN BEGIN 35
  SAY ~Well, that did not go very well did it? In fact that was an abysmal attempt. You're bleeding, and I had no choice but to interrupt the test and bring you back here.~
  IF ~~ THEN DO ~ReallyForceSpell(LastTalkedToBy,GENIE_LIMITED_WISH_HEAL_ALL)~ GOTO 36
END

IF ~~ THEN BEGIN 36
  SAY ~Now you should return to your studies and I will see you again when I return.~
  IF ~Global("VP_My_Test","LOCALS",1)~ THEN REPLY ~Please, Theodoran, let me attempt the task once more. I will not fail again.~ GOTO 24
  IF ~Global("VP_My_Test","LOCALS",1)~ THEN REPLY ~You cannot possibly fail me after only one attempt, Theodoran!~ GOTO 24
  IF ~Global("VP_My_Test","LOCALS",1)~ THEN REPLY ~Is that it, Theodoran? One attempt is hardly fair!~ GOTO 24
  IF ~Global("VP_My_Test","LOCALS",1)~ THEN REPLY ~Vermin extermination could hardly be described as a fair test for an Invoker! I think you should in all fairness set me another task, Theodoran!~ GOTO 24
  IF ~Global("VP_My_Test","LOCALS",5)~ THEN REPLY ~Please, Theodoran, let me attempt the task once more. I will not fail again.~ GOTO 25
  IF ~Global("VP_My_Test","LOCALS",5)~ THEN REPLY ~You cannot possibly fail me after only one attempt, Theodoran!~ GOTO 25
  IF ~Global("VP_My_Test","LOCALS",5)~ THEN REPLY ~Is that it, Theodoran? One attempt is hardly fair!~ GOTO 25
  IF ~Global("VP_My_Test","LOCALS",5)~ THEN REPLY ~Vermin extermination could hardly be described as a fair test for an Invoker! I think you should in all fairness set me another task, Theodoran!~ GOTO 25
END

IF WEIGHT #-2 ~Global("VP_Invoker_Test","GLOBAL",1)
Global("VP_Break_AlterTest","GLOBAL",1)
OR(2)
Global("VP_My_Test","LOCALS",1)
Global("VP_My_Test","LOCALS",5)~ THEN BEGIN 37
  SAY ~Well, that did not go very well did it? In fact that was an abysmal attempt. You're bleeding, and I had no choice but to interrupt the test and bring you back here.~
  IF ~Global("VP_Nalia_InvQuest","GLOBAL",0)
Global("VP_Kachi_InvQuest","GLOBAL",0)
Global("VP_Aerie_InvQuest","GLOBAL",0)
Global("VP_Taffic_InvQuest","GLOBAL",0)
Global("VP_Edwin_InvQuest","GLOBAL",0)
Global("VP_Jan_InvQuest","GLOBAL",0)~ THEN REPLY ~I certainly did not expect to serve as an exterminator during my time at Halruaa, Theodoran.~ GOTO 22
  IF ~Global("VP_Nalia_InvQuest","GLOBAL",0)
Global("VP_Kachi_InvQuest","GLOBAL",0)
Global("VP_Aerie_InvQuest","GLOBAL",0)
Global("VP_Taffic_InvQuest","GLOBAL",0)
Global("VP_Edwin_InvQuest","GLOBAL",0)
Global("VP_Jan_InvQuest","GLOBAL",0)~ THEN REPLY ~Hardly a task for an Invoker, Theodoran. Still, I suppose using your students as exterminators means you do not have to dirty your own hands.~ GOTO 22
  IF ~Global("VP_Nalia_InvQuest","GLOBAL",0)
Global("VP_Kachi_InvQuest","GLOBAL",0)
Global("VP_Aerie_InvQuest","GLOBAL",0)
Global("VP_Taffic_InvQuest","GLOBAL",0)
Global("VP_Edwin_InvQuest","GLOBAL",0)
Global("VP_Jan_InvQuest","GLOBAL",0)~ THEN REPLY ~So, under the guise of performing tests, Halruaa's students have to clear the vermin, is that not what this was about, Theodoran?~ GOTO 22
  IF ~Global("VP_Nalia_InvQuest","GLOBAL",1)~ THEN REPLY ~I certainly did not expect to serve as an exterminator during my time at Halruaa, Theodoran.~ GOTO 32
  IF ~Global("VP_Nalia_InvQuest","GLOBAL",1)~ THEN REPLY ~Hardly a task for an Invoker, Theodoran. Still, I suppose using your students as exterminators means you do not have to dirty your own hands.~ GOTO 32
  IF ~Global("VP_Nalia_InvQuest","GLOBAL",1)~ THEN REPLY ~So, under the guise of performing tests, Halruaa's students have to clear the vermin, is that not what this was about, Theodoran?~ GOTO 32
  IF ~Global("VP_Kachi_InvQuest","GLOBAL",1)~ THEN REPLY ~I certainly did not expect to serve as an exterminator during my time at Halruaa, Theodoran.~ GOTO 33
  IF ~Global("VP_Kachi_InvQuest","GLOBAL",1)~ THEN REPLY ~Hardly a task for an Invoker, Theodoran. Still, I suppose using your students as exterminators means you do not have to dirty your own hands.~ GOTO 33
  IF ~Global("VP_Kachi_InvQuest","GLOBAL",1)~ THEN REPLY ~So, under the guise of performing tests, Halruaa's students have to clear the vermin, is that not what this was about, Theodoran?~ GOTO 33
  IF ~Global("VP_Aerie_InvQuest","GLOBAL",1)~ THEN REPLY ~I certainly did not expect to serve as an exterminator during my time at Halruaa, Theodoran.~ GOTO 34
  IF ~Global("VP_Aerie_InvQuest","GLOBAL",1)~ THEN REPLY ~Hardly a task for an Invoker, Theodoran. Still, I suppose using your students as exterminators means you do not have to dirty your own hands.~ GOTO 34
  IF ~Global("VP_Aerie_InvQuest","GLOBAL",1)~ THEN REPLY ~So, under the guise of performing tests, Halruaa's students have to clear the vermin, is that not what this was about, Theodoran?~ GOTO 34
  IF ~Global("VP_Taffic_InvQuest","GLOBAL",1)~ THEN REPLY ~I certainly did not expect to serve as an exterminator during my time at Halruaa, Theodoran.~ GOTO tafftest
  IF ~Global("VP_Taffic_InvQuest","GLOBAL",1)~ THEN REPLY ~Hardly a task for an Invoker, Theodoran. Still, I suppose using your students as exterminators means you do not have to dirty your own hands.~ GOTO tafftest
  IF ~Global("VP_Taffic_InvQuest","GLOBAL",1)~ THEN REPLY ~So, under the guise of performing tests, Halruaa's students have to clear the vermin, is that not what this was about, Theodoran?~ GOTO tafftest
  IF ~Global("VP_Edwin_InvQuest","GLOBAL",1)~ THEN REPLY ~I certainly did not expect to serve as an exterminator during my time at Halruaa, Theodoran.~ GOTO edwdone
  IF ~Global("VP_Edwin_InvQuest","GLOBAL",1)~ THEN REPLY ~Hardly a task for an Invoker, Theodoran. Still, I suppose using your students as exterminators means you do not have to dirty your own hands.~ GOTO edwdone
  IF ~Global("VP_Edwin_InvQuest","GLOBAL",1)~ THEN REPLY ~So, under the guise of performing tests, Halruaa's students have to clear the vermin, is that not what this was about, Theodoran?~ GOTO edwdone
  IF ~Global("VP_Jan_InvQuest","GLOBAL",1)~ THEN REPLY ~I certainly did not expect to serve as an exterminator during my time at Halruaa, Theodoran.~ GOTO jandone
  IF ~Global("VP_Jan_InvQuest","GLOBAL",1)~ THEN REPLY ~Hardly a task for an Invoker, Theodoran. Still, I suppose using your students as exterminators means you do not have to dirty your own hands.~ GOTO jandone
  IF ~Global("VP_Jan_InvQuest","GLOBAL",1)~ THEN REPLY ~So, under the guise of performing tests, Halruaa's students have to clear the vermin, is that not what this was about, Theodoran?~ GOTO jandone
END

IF ~~ THEN BEGIN taftest1
  SAY ~Commendable, Taffic!~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutTf6")~ EXIT
END //=> Invoker: Test 1

IF ~~ THEN BEGIN taftest2
  SAY ~Then you may proceed.~
  IF ~Global("VP_My_Test","LOCALS",2)~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutTf6")~ EXIT
  IF ~Global("VP_My_Test","LOCALS",4)~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",5)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutTf7")~ EXIT
END //=> Invoker: Test 1

IF ~~ THEN BEGIN tafftest
  SAY ~However you look at it Taffic, you have passed the test no matter what you had to do. Be content. Now, I suggest you return to your studies and I will see you again when you are next ready to advance.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",3)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutTf8")~ EXIT
END

IF ~~ THEN BEGIN edwtest1
  SAY ~Commendable, Edwin!~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutE06")~ EXIT
  IF ~Global("VP_My_Test","LOCALS",4)~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",5)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutE07")~ EXIT
END //=> Invoker: Test 1

IF ~~ THEN BEGIN edwdone
  SAY ~However you look at it Edwin, you have passed the test no matter what you had to do. Be content. Now, I suggest you return to your studies and I will see you again when you are next ready to advance.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",3)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutE08")~ EXIT
END

IF ~~ THEN BEGIN failtest
	SAY~Now, you will return to your studies and I will see you again when my other business is concluded. Farewell.~
	IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",4)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutT16")~ EXIT
END

IF ~~ THEN BEGIN jantest1
  SAY ~Commendable, Jan!~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutJ06")~ EXIT
END //=> Invoker: Test 1

IF ~~ THEN BEGIN jantest2
  SAY ~Then you may proceed.~
  IF ~Global("VP_My_Test","LOCALS",2)~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutJ06")~ EXIT
  IF ~Global("VP_My_Test","LOCALS",4)~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",5)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutJ07")~ EXIT
END //=> Invoker: Test 1

IF ~~ THEN BEGIN jandone
  SAY ~However you look at it Jan, you have passed the test no matter what you had to do. Be content. Now, I suggest you return to your studies and I will see you again when you are next ready to advance.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",3)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutJ08")~ EXIT
END

IF ~~ THEN BEGIN npcstest
  SAY ~Then let me explain the test, and you can then introduce me to your candidate, <CHARNAME>.~
=
~Some of the most powerful invocation spells are designed to give the mage the edge in combat situations, so my intention today is to test your handling of such a situation using whatever invocation spells you know.~
=
~What I need you to do is to help me with a little infestation problem I have. Let me first assure you that a competent mage with the right spells should have no difficulty in getting rid of these pests.~
  IF ~~ THEN REPLY ~I am ready to pass your exams, Theodoran.~ GOTO 7
  IF ~~ THEN REPLY ~I have no time for your little tests, Theodoran, I will be leaving.~ GOTO 12
  IF ~~ THEN REPLY ~Perhaps another time, Theodoran, I have other matters to attend to at this moment in time.~ GOTO 12
  IF ~Class(Player1,MAGE_ALL)
!Kit(Player1,MAGESCHOOL_ENCHANTER)~ THEN REPLY ~I am ready to pass your exams and I have the spells, but I have not had the opportunity to memorise them.~ GOTO 8
  IF ~OR(2)
!Class(Player1,MAGE_ALL)
Kit(Player1,MAGESCHOOL_ENCHANTER)~ THEN REPLY ~I am ready to pass your exams and I have the spells, but I have not had the opportunity to memorise them.~ GOTO 9
  IF ~Class(Player1,MAGE_ALL)
!Kit(Player1,MAGESCHOOL_ENCHANTER)~ THEN REPLY ~I do not have the required spells in my spell book.~ GOTO 10
  IF ~OR(2)
!Class(Player1,MAGE_ALL)
Kit(Player1,MAGESCHOOL_ENCHANTER)~ THEN REPLY ~I do not have the required spells in my spell book.~ GOTO 11
  IF ~InParty("Nalia")
!Dead("Nalia")~ THEN REPLY ~Nalia is going to test her abilities.~ EXTERN ~NALIAJ~ NEJ326
  IF ~InParty("Aerie")
!Dead("Aerie")~ THEN REPLY ~Aerie is prepared to be assessed.~ EXTERN ~AERIEJ~ NEJ228
  IF ~InParty("Kachiko")
!Dead("Kachiko")~ THEN REPLY ~Kachiko is ready.~ EXTERN ~KACHIJ~ NEJ64
  IF ~InParty("Jan")
!Dead("Jan")~ THEN REPLY ~Jan, this calls for your skill and expertise, are you ready?~ EXTERN ~JANJ~ invoker
  IF ~InParty("Edwin")
!Dead("Edwin")~ THEN REPLY ~Edwin, I know this is beneath you and I shouldn't really be asking but as there is no other in the group as well versed in magic as you, could you possibly consider dealing with this mage's request for me ... please?~ EXTERN ~EDWINJ~ invoker1
  IF ~InParty("Taffic")
!Dead("Taffic")~ THEN REPLY ~Taffic, do you think you can handle this?~ EXTERN ~TAFFICJ~ invoker
END