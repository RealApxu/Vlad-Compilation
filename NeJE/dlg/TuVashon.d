BEGIN ~TuVashon~ 1

IF ~NumTimesTalkedTo(0)
!Global("VP_Illusion_Quest","GLOBAL",10)~ THEN BEGIN 0
  SAY ~Come join me my young friend, I am always ready to help a scholar if <PRO_HESHE> needs advice on magic or anything else that bothers you young people of today. I am Vashon, and you are?~
  IF ~~ THEN REPLY ~I am <CHARNAME>, well met Vashon. I would appreciate it if you could spare me the time to test me on all that I have learnt so far.~ GOTO 1
  IF ~~ THEN REPLY ~Nice to meet you Vashon, I am <CHARNAME>. Tell me, are you able to test students who wish to advance in their studies?~ GOTO 2
  IF ~~ THEN REPLY ~I am <CHARNAME>. I hear that this is the place to be if a student wishes to prove himself. Did I hear right Vashon?~ GOTO 3
  IF ~~ THEN REPLY ~I can sort my own problems thank you very much. I am only here to participate in these mage tests.~ GOTO 4
  IF ~~ THEN REPLY ~Well met Vashon, I am <CHARNAME>. I am not looking for advice on anything today but if you are not too busy, I am looking for a tutor to set an ability test for one among my group.~ GOTO npcstest
END

IF ~~ THEN BEGIN 1
  SAY ~I can always spare time for my students <CHARNAME>. So, you have chosen to specialise in the magic of illusion, a wise choice. I consider this school to have a fun side to it as well as the more serious side of its magic.~
  IF ~~ THEN REPLY ~I can see why you would say that, but I take my magic seriously Vashon.~ GOTO 6
  IF ~~ THEN REPLY ~I never thought of magic having a fun side, but yes, I guess some of the illusion spells have a lot of potential for fun.~ GOTO 6
  IF ~~ THEN REPLY ~Maybe Vashon but I am only interested in using magic for the good, not fun.~ GOTO 6
END

IF ~~ THEN BEGIN 2
  SAY ~I most certainly am <CHARNAME>. It is one of a tutor's more pleasurable tasks, to see a prodigy of their's put all that has been taught to use... safely. I emphasise safely because this is what these tests are designed for after all.~
  IF ~~ THEN REPLY ~I understand and I believe myself capable of using magic both safely and wisely.~ GOTO 6
  IF ~~ THEN REPLY ~Then it is not for me to deny you your pleasure, let us begin.~ GOTO 6
  IF ~~ THEN REPLY ~I know why the tests are designed, but I am still not sure whether you tutor's fear for the student's safety or their own. However let us about what we are here for... the test.~ GOTO 6
END

IF ~~ THEN BEGIN 3
  SAY ~You most certainly did. Do you think yourself ready for my... ahem... little test <CHARNAME>?~
  IF ~~ THEN REPLY ~More than ready.~ GOTO 6
  IF ~~ THEN REPLY ~Only one way to find out isn't there?~ GOTO 6
  IF ~~ THEN REPLY ~You set them up and I'll knock them down, so's to speak.~ GOTO 6
END

IF ~~ THEN BEGIN 4
  SAY ~I am pleased to hear that, after all most of the problems of the you young people are nearly always brought on by yourselves, but if you wish me to test your abilities as a mage I would appreciate it if you introduced yourself properly.~
  IF ~~ THEN REPLY ~I am <CHARNAME>. Now tell me, what is it you have lined up for me?~ GOTO 5
  IF ~~ THEN REPLY ~My name is <CHARNAME> and I am in a hurry so please... the test?~ GOTO 5
  IF ~~ THEN REPLY ~I am <CHARNAME>, can we begin?~ GOTO 5
END
	
IF ~~ THEN BEGIN 5
  SAY ~Well <CHARNAME>, perhaps a lesson in manners would be a good place to start. However, it is your magical ability that I am here to test, not your demeanor.~
  IF ~~ THEN REPLY ~I didn't think magic depended on manners, so can we stop the chatter and get on with this test.~ GOTO 6
  IF ~~ THEN REPLY ~Whatever let's just get this show on the road.~ GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY ~Then I will explain what is to be done.~
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY ~As an Illusionist <CHARNAME>, you know that the strength in your magic lies in your ability to confuse and mislead those around you. I have therefore set one multi-task for you that will determine your ability in the casting and learning of such spells.~
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY ~The task will be for you to retrieve, without being discovered, a spell scroll that I have left in the tutor Hazarlich's living quarters. The spell written is a new one of my own devising, a spell which will be yours if you succeed in this task.~
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY ~I take it you have the necessary spells readied <CHARNAME>?~
  IF ~~ THEN REPLY ~I have Vashon.~ GOTO 10
  IF ~~ THEN REPLY ~I have spells suitable yes but I have had no opportunity to memorise them.~ GOTO 11
  IF ~~ THEN REPLY ~No, I don't have anything in my spell book to cover that at all.~ GOTO 20
  IF ~~ THEN REPLY ~Bah, this is no better than pitting my wits against a first year student! There is no challenge in what you are asking, so I will be leaving now. Farewell.~ GOTO 22
  IF ~~ THEN REPLY ~Sounds like this is one of those fun aspects  you spoke of Vashon, only I, unfortunately do not have the time to partake. Perhaps another time.~ GOTO 24
  IF ~InParty("Nalia")
!Dead("Nalia")~ THEN REPLY ~Nalia is going to test her abilities.~ EXTERN ~NALIAJ~ NEJ328
  IF ~InParty("Aerie")
!Dead("Aerie")~ THEN REPLY ~Aerie is prepared to be assessed.~ EXTERN ~AERIEJ~ NEJ230
  IF ~InParty("Kachiko")
!Dead("Kachiko")~ THEN REPLY ~Kachiko is ready.~ EXTERN ~KACHIJ~ NEJ66
  IF ~InParty("Taffic")
!Dead("Taffic")~ THEN REPLY ~Taffic, I believe this is where you should come into your own, you being an illusionist.~ EXTERN ~TAFFICJ~ vashtest
  IF ~InParty("Jan")
!Dead("Jan")~ THEN REPLY ~Jan, as an illusionist and with your thieves skills, this should be walk over for you, a chance for your name to be added to the already famous Jansen's exploits.~ EXTERN ~JANJ~ vashtest
  IF ~InParty("Edwin")
!Dead("Edwin")~ THEN REPLY ~Edwin, I know this isn't really a task for a conjurer but I believe you are a versatile enough mage to handle anything that comes your way. With your virtuosity in magical arts those prizes are as good as ours. What do you say Edwin, could you possibly see your way past the shenanigans of all this and humour the mage by passing his test, please?~ EXTERN ~EDWINJ~ vashtest
END

IF ~~ THEN BEGIN 10
  SAY ~Ah, a student well versed in the art of illusion, commendable! You may begin your search for my scroll.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1)
SetGlobal("VP_Illusion_Quest","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutT24")~ EXIT
END //Illusionist: Test 1 starts

IF ~~ THEN BEGIN 11
  SAY ~Not again, it dismays me when students cannot think for themselves and come ill prepared. How you students expect to pass anything is beyond me. Still you are not the first and I doubt you will be the last.~
  IF ~~ THEN REPLY ~I was so engrossed in my studies that I forgot to check my spells before I fell asleep.~ GOTO 12
  IF ~~ THEN REPLY ~I will be honest Vashon, I forgot all about these tests being available today.~ GOTO 12
  IF ~~ THEN REPLY ~Be fair Vashon, it is difficult to come prepared not knowing what was going to be expected of me.~ GOTO 12
  IF ~~ THEN REPLY ~I am an illusionist not a bloody diviner Vashon, how should I know what spells I would be needing today.~ GOTO 12
END

//Vashon Reply to CH.24-27: If PC is given scrolls for test then Vashon10. If PC has to memorise spells then vashon10.2.

IF ~~ THEN BEGIN 12
  SAY ~I am not interested in excuses, needless to say I am disappointed in you <CHARNAME>. Fortunately for you I am here to test your ability as an illusionist and not your ability to think ahead, although being prepared for any situation is a skill you will do well to learn.~
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY ~As such I can offer you the choice of two scrolls from those I have here. Being unprepared will however go against your final mark and it could mean the difference in whether you graduate or not.~
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY ~Which will be your choice of scroll?~
  IF ~~ THEN REPLY ~Scroll of Invisibility.~ DO ~GiveItemCreate("SCRL90",Player1,1,0,0)~ GOTO 15
  IF ~~ THEN REPLY ~Scroll of Improved Invisibility.~ DO ~GiveItemCreate("SCRL1Y",Player1,1,0,0)~ GOTO 15
  IF ~~ THEN REPLY ~Scroll of Reflected Image.~ DO ~GiveItemCreate("SCRL5U",Player1,1,0,0)~ GOTO 15
  IF ~~ THEN REPLY ~Scroll of Non-Detection.~ DO ~GiveItemCreate("SCRL1M",Player1,1,0,0)~ GOTO 15
  IF ~~ THEN REPLY ~Scroll of Mislead.~ DO ~GiveItemCreate("SCRL7K",Player1,1,0,0)~ GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY ~You may choose another one if you wish.~
  IF ~~ THEN REPLY ~Scroll of Invisibility.~ DO ~GiveItemCreate("SCRL90",Player1,1,0,0)~ GOTO 16
  IF ~~ THEN REPLY ~Scroll of Improved Invisibility.~ DO ~GiveItemCreate("SCRL1Y",Player1,1,0,0)~ GOTO 16
  IF ~~ THEN REPLY ~Scroll of Reflected Image.~ DO ~GiveItemCreate("SCRL5U",Player1,1,0,0)~ GOTO 16
  IF ~~ THEN REPLY ~Scroll of Non-Detection.~ DO ~GiveItemCreate("SCRL1M",Player1,1,0,0)~ GOTO 16
  IF ~~ THEN REPLY ~Scroll of Mislead.~ DO ~GiveItemCreate("SCRL7K",Player1,1,0,0)~ GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY ~You have chosen your scrolls let's hope you have chosen wisely. All that remains is for you to find and return my scroll.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1)
SetGlobal("VP_Illusion_Quest","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutT24")~ EXIT
END //Illusionist: Test 1 starts

IF ~~ THEN BEGIN 17
  SAY ~Ah, a student well versed in the art of illusion, commendable! You may begin your search for my scroll.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1)
SetGlobal("VP_Illusion_Quest","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutN09")~ EXIT
END //Illusionist: Test 1 starts

IF ~~ THEN BEGIN 18
  SAY ~Ah, a student well versed in the art of illusion, commendable! You may begin your search for my scroll.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1)
SetGlobal("VP_Illusion_Quest","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutK09")~ EXIT
END //Illusionist: Test 1 starts

IF ~~ THEN BEGIN 19
  SAY ~Ah, a student well versed in the art of illusion, commendable! You may begin your search for my scroll.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1)
SetGlobal("VP_Illusion_Quest","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutA09")~ EXIT
END //Illusionist: Test 1 starts

//Vashon10.2: Reply to CH.24-27. PC. is to memorise spells.
//	You disappoint me <CHARNAME>. I suggest you come back when you have what you need and I will set the test again, but be warned, Halruaa has a more pressing need for my magic and I may not be here when you do. So until then, farewell. END.
//		If PC. returns at a later time then Vashon16.
	
IF ~~ THEN BEGIN 20
  SAY ~This task calls for some of the most widely used spells an illusionist has, and yet you do not have a single one at your disposal. How do you dare call yourself an illusionist <CHARNAME>?~
  IF ~~ THEN REPLY ~Well I am an illusionist and as such I have a right to be tested by you.~ GOTO 21
  IF ~~ THEN REPLY ~Whether I have appropriate spells for your little test is neither here nor there Vashon, I am, I believe, to be judged on my magical abilities.~ GOTO 21
  IF ~~ THEN REPLY ~Give me the chance and I will show you how I dare!~ GOTO 21
  IF ~~ THEN REPLY ~I can pass your test Vashon all I need is for you to give me the chance.~ GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY ~This will go against your final mark <CHARNAME> but I can however set the test for you and offer you a choice of two of the scrolls that I have with me here. Make your choice.~
  IF ~~ THEN REPLY ~Scroll of Invisibility.~ DO ~GiveItemCreate("SCRL90",Player1,1,0,0)~ GOTO 15
  IF ~~ THEN REPLY ~Scroll of Improved Invisibility.~ DO ~GiveItemCreate("SCRL1Y",Player1,1,0,0)~ GOTO 15
  IF ~~ THEN REPLY ~Scroll of Reflected Image.~ DO ~GiveItemCreate("SCRL5U",Player1,1,0,0)~ GOTO 15
  IF ~~ THEN REPLY ~Scroll of Non-Detection.~ DO ~GiveItemCreate("SCRL1M",Player1,1,0,0)~ GOTO 15
  IF ~~ THEN REPLY ~Scroll of Mislead.~ DO ~GiveItemCreate("SCRL7K",Player1,1,0,0)~ GOTO 15
END

//Vashon Reply: to CH.28-31. If PC. is to memorise spells. Then Vashon 10.2.
	
IF ~~ THEN BEGIN 22
  SAY ~That is your choice <CHARNAME>, but if you wish to graduate from Halruaa in the near future you will have to take all the tests set eventually and that includes this one.~
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY ~I advise you to think on this, for now I bid you farewell.~
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutT25")~ EXIT
END //Quest is lost to PC.

IF ~~ THEN BEGIN 24
  SAY ~If you leave now it may be a while before I am free to see you again, Halruaa has need of me elsewhere and I could be away a while. My advice to you <CHARNAME> is to seize each and every chance to progress with your studies whenever they are offered, but the choice has to be yours I will not press you further.~
  IF ~~ THEN REPLY ~Farewell Vashon.~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutT25")~ EXIT //Quest is lost to PC.
  IF ~~ THEN REPLY ~I don't suppose it will delay me to much to fetch your scroll for you. I will do it Vashon.~ GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY ~Then let us delay no more. I have explained what it is you must do, have you the spells you need?~
  IF ~~ THEN REPLY ~I have Vashon.~ GOTO 10
  IF ~~ THEN REPLY ~I have spells suitable yes but I have had no opportunity to memorise them.~ GOTO 11
  IF ~~ THEN REPLY ~No, I don't have anything in my spell book to cover that at all.~ GOTO 20
  IF ~~ THEN REPLY ~Bah, this is no better than pitting my wits against a first year student! There is no challenge in what you are asking, so I will be leaving now. Farewell.~ GOTO 22
  IF ~~ THEN REPLY ~Sounds like this is one of those fun aspects  you spoke of Vashon, only I, unfortunately do not have the time to partake. Perhaps another time.~ GOTO 24
  IF ~InParty("Nalia")
!Dead("Nalia")~ THEN REPLY ~Nalia is going to test her abilities.~ EXTERN ~NALIAJ~ NEJ328
  IF ~InParty("Aerie")
!Dead("Aerie")~ THEN REPLY ~Aerie is prepared to be assessed.~ EXTERN ~AERIEJ~ NEJ230
  IF ~InParty("Kachiko")
!Dead("Kachiko")~ THEN REPLY ~Kachiko is ready.~ EXTERN ~KACHIJ~ NEJ66
  IF ~InParty("Taffic")
!Dead("Taffic")~ THEN REPLY ~Taffic, I believe this is where you should come into your own, you being an illusionist.~ EXTERN ~TAFFICJ~ vashtest
  IF ~InParty("Jan")
!Dead("Jan")~ THEN REPLY ~Jan, as an illusionist and with your thieves skills, this should be walk over for you, a chance for your name to be added to the already famous Jansen's exploits.~ EXTERN ~JANJ~ vashtest
  IF ~InParty("Edwin")
!Dead("Edwin")~ THEN REPLY ~Edwin, I know this isn't really a task for a conjurer but I believe you are a versatile enough mage to handle anything that comes your way. With your virtuosity in magical arts those prizes are as good as ours. What do you say Edwin, could you possibly see your way past the shenanigans of all this and humour the mage by passing his test, please?~ EXTERN ~EDWINJ~ vashtest
END

//Vashon 16: PC. returns after memorising spells.	
//	So the student returns, better prepared this time I hope.

//<CHARNAME>: Reply to Vashon 16.
//37.	I am Vashon. Then Vashon19

//38.	There wouldn't be much sense in my being here if I wasn't now would there?
//	 Then Vashon17

//39.	Of course. Your scroll is as good as mine.  Then Vashon19.

//Vashon 19: Reply to CH.35-37.
//	Then let's see what you can do <CHARNAME>. Then Scenario2.

IF ~Global("VP_My_Test","LOCALS",1)
Global("VP_Illusion_Quest","GLOBAL",1)
!PartyHasItem("shadbfak")~ THEN BEGIN 26
  SAY ~You disappoint me student. I suggest you come back when you have what you need, but be warned, Halruaa has a more pressing need for my magic and I may not be here when you do. So until then, farewell.~
  IF ~~ THEN EXIT
END

IF ~Global("VP_My_Test","LOCALS",1)
Global("VP_Illusion_Quest","GLOBAL",1)
PartyHasItem("shadbfak")~ THEN BEGIN 27
  SAY ~(*Vashon gains scroll and gestures over it with his hand.*) Nicely done <GABBER>. You show more promise than I have seen in a student for a long while. I will personally monitor your progress carefully.~
  IF ~~ THEN DO ~SetGlobal("VP_Illusion_Quest","GLOBAL",9)~ GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY ~Now take this scroll back and another scroll as a reward and as a mark of your excellence. I would also like to grant you one of my special items, please use it wisely.~
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY ~You may return to your studies and I will see you again when you are once more ready to advance. Until then, I wish you luck. Farewell for now.~
  IF ~Global("VP_Nalia_IllQuest","GLOBAL",0)
Global("VP_Kachi_IllQuest","GLOBAL",0)
Global("VP_Aerie_IllQuest","GLOBAL",0)
Global("VP_Taffic_IllQuest","GLOBAL",0)
Global("VP_Jan_IllQuest","GLOBAL",0)
Global("VP_Edwin_IllQuest","GLOBAL",0)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutT26")~ EXIT
  IF ~OR(2)
Name("Nalia",LastTalkedToBy)
Global("VP_Nalia_IllQuest","GLOBAL",1)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutN10")~ EXIT
  IF ~OR(2)
Name("Kachiko",LastTalkedToBy)
Global("VP_Kachi_IllQuest","GLOBAL",1)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutK10")~ EXIT
  IF ~OR(2)
Name("Aerie",LastTalkedToBy)
Global("VP_Aerie_IllQuest","GLOBAL",1)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutA10")~ EXIT
  IF ~OR(2)
Name("Taffic",LastTalkedToBy)
Global("VP_Taffic_IllQuest","GLOBAL",1)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCuTf10")~ EXIT
  IF ~OR(2)
Name("Jan",LastTalkedToBy)
Global("VP_Jan_IllQuest","GLOBAL",1)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutJ10")~ EXIT
  IF ~OR(2)
Name("Edwin",LastTalkedToBy)
Global("VP_Edwin_IllQuest","GLOBAL",1)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutE10")~ EXIT
END

IF ~Global("VP_My_Test","LOCALS",1)
Global("VP_MyTest_byNPCfix","GLOBAL",0)
OR(3)
Global("VP_Illusion_Quest","GLOBAL",3)
Global("VP_Illusion_Quest","GLOBAL",6)
Global("VP_Illusion_Quest","GLOBAL",7)~ THEN BEGIN 30
  SAY ~I am sorry <GABBER>, I had thought you are capable of this task and I cannot pass you unless you complete the task.~
  IF ~Global("VP_Nalia_IllQuest","GLOBAL",0)
Global("VP_Kachi_IllQuest","GLOBAL",0)
Global("VP_Aerie_IllQuest","GLOBAL",0)
Global("VP_Taffic_IllQuest","GLOBAL",0)
Global("VP_Jan_IllQuest","GLOBAL",0)
Global("VP_Edwin_IllQuest","GLOBAL",0)~ THEN REPLY ~Please Vashon, let me try at least once more?~ GOTO 31
  IF ~Global("VP_Nalia_IllQuest","GLOBAL",0)
Global("VP_Kachi_IllQuest","GLOBAL",0)
Global("VP_Aerie_IllQuest","GLOBAL",0)
Global("VP_Taffic_IllQuest","GLOBAL",0)
Global("VP_Jan_IllQuest","GLOBAL",0)
Global("VP_Edwin_IllQuest","GLOBAL",0)~ THEN REPLY ~Surely you cannot possibly fail me after only one attempt Vashon!~ GOTO 31
  IF ~Global("VP_Nalia_IllQuest","GLOBAL",0)
Global("VP_Kachi_IllQuest","GLOBAL",0)
Global("VP_Aerie_IllQuest","GLOBAL",0)
Global("VP_Taffic_IllQuest","GLOBAL",0)
Global("VP_Jan_IllQuest","GLOBAL",0)
Global("VP_Edwin_IllQuest","GLOBAL",0)~ THEN REPLY ~Now hold on a minute, one attempt hardly seems fair. How about letting me try again.~ GOTO 31
  IF ~OR(2)
Name("Nalia",LastTalkedToBy)
Global("VP_Nalia_IllQuest","GLOBAL",1)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutT40")~ EXIT
  IF ~OR(2)
Name("Kachiko",LastTalkedToBy)
Global("VP_Kachi_IllQuest","GLOBAL",1)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutT40")~ EXIT
  IF ~OR(2)
Name("Aerie",LastTalkedToBy)
Global("VP_Aerie_IllQuest","GLOBAL",1)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutT40")~ EXIT
  IF ~OR(2)
Name("Taffic",LastTalkedToBy)
Global("VP_Taffic_IllQuest","GLOBAL",1)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutT40")~ EXIT
  IF ~OR(2)
Name("Jan",LastTalkedToBy)
Global("VP_Jan_IllQuest","GLOBAL",1)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutT40")~ EXIT
  IF ~OR(2)
Name("Edwin",LastTalkedToBy)
Global("VP_Edwin_IllQuest","GLOBAL",1)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutT40")~ EXIT
END

IF ~~ THEN BEGIN 31
  SAY ~I have already made it clear that you only have one chance per test. And the task needs to be completed satisfactorily. No matter there will be another time for you when I return to the academy. Then you may come and see me again. So until then farewell <GABBER>.~
  IF ~~ THEN DO ~SetGlobal("VP_Illusion_Quest","GLOBAL",8)
TakePartyItem("shadbfak")
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutT27")~ EXIT
END

IF ~Global("VP_My_Test","LOCALS",1)
OR(2)
Global("VP_Illusion_Quest","GLOBAL",4)
Global("VP_Illusion_Quest","GLOBAL",5)~ THEN BEGIN 32
  SAY ~I am disappointed in you <GABBER>, never, in all my years as a tutor have I heard a student attempt to bribe another tutor in order to gain a pass! For a student, you seem to know very little of the ways of the Academy, this I find most disconcerting. Before I decide what is to be done with you, I will hear what you have to say for yourself.~
  IF ~~ THEN REPLY ~I can only apologise for my rashness Vashon. The only excuse I can offer is that I let my eagerness to do well cloud my mind and I spoke the words in haste, before I knew what I was saying, they were said. I wish you to know that I am deeply ashamed of them.~ GOTO 33
  IF ~~ THEN REPLY ~I am sorry Vashon, I have no idea what came over me. I spoke hastily, without a thought to my words.~ GOTO 33
END

IF ~~ THEN BEGIN 33
  SAY ~That is not an exceptable excuse <GABBER> and I would be failing other students if I just let the matter go without taking any action at all. I believe your sincerity when you say it was over exuberance on your part but I am still worried that such a thought even occurred to a student here. I will think on what is to be done and speak to you again when my other business is concluded. Take this time to think on your future here <GABBER>. Farewell for now.~
  IF ~~ THEN DO ~SetGlobal("VP_Illusion_Quest","GLOBAL",8)
TakePartyItem("shadbfak")
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutT27")~ EXIT
END

IF ~NumTimesTalkedTo(0)
Global("VP_Illusion_Quest","GLOBAL",10)~ THEN BEGIN 34
  SAY ~It seems you have already retrieved the scroll without my permission. Then there is no point for us continuing further today. I'll mark down you for cheating. A warning, the scroll you have is warded against anyone other than me reading it. I alone can dispel the ward, you would be wise to drop it right here and now. Farewell.~
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN npcstest
  SAY ~I am never too busy to aid a student's progress. First I will tell you what my test entails, you can then introduce me to your young companion and we will set about the assessment.~
=
~Nearly all of the spells of the school of illusion are designed to mislead and confuse those around the illusionist, I have therefore set one task that will determine your ability in the casting and learning of such spells.~
=
~The task will be for you to retrieve, without being discovered, a spell scroll that I have left in the tutor Hazarlich's living quarters. The spell written is a new one of my own devising, a spell which will be yours if you succeed in the task. Now if your companion is ready we can begin?~
  IF ~~ THEN REPLY ~I am ready to pass your exams, Vashon.~ GOTO 10
  IF ~~ THEN REPLY ~I am ready to pass your exams and I have spells suitable, but I have had no opportunity to memorise them.~ GOTO 11
  IF ~~ THEN REPLY ~Unfortunately, I don't have anything in my spell book to cover that at all.~ GOTO 20
  IF ~~ THEN REPLY ~Bah, this is no better than pitting my wits against a first year student! There is no challenge in what you are asking, so I will be leaving now. Farewell.~ GOTO 22
  IF ~~ THEN REPLY ~Sounds like this is one of those fun aspects  you spoke of Vashon, only I, unfortunately do not have the time to partake. Perhaps another time.~ GOTO 24
  IF ~InParty("Nalia")
!Dead("Nalia")~ THEN REPLY ~Nalia is going to test her abilities.~ EXTERN ~NALIAJ~ NEJ328
  IF ~InParty("Aerie")
!Dead("Aerie")~ THEN REPLY ~Aerie is prepared to be assessed.~ EXTERN ~AERIEJ~ NEJ230
  IF ~InParty("Kachiko")
!Dead("Kachiko")~ THEN REPLY ~Kachiko is ready.~ EXTERN ~KACHIJ~ NEJ66
  IF ~InParty("Taffic")
!Dead("Taffic")~ THEN REPLY ~Taffic, I believe this is where you should come into your own, you being an illusionist.~ EXTERN ~TAFFICJ~ vashtest
  IF ~InParty("Jan")
!Dead("Jan")~ THEN REPLY ~Jan, as an illusionist and with your thieves skills, this should be walk over for you, a chance for your name to be added to the already famous Jansen's exploits.~ EXTERN ~JANJ~ vashtest
  IF ~InParty("Edwin")
!Dead("Edwin")~ THEN REPLY ~Edwin, I know this isn't really a task for a conjurer but I believe you are a versatile enough mage to handle anything that comes your way. With your virtuosity in magical arts those prizes are as good as ours. What do you say Edwin, could you possibly see your way past the shenanigans of all this and humour the mage by passing his test, please?~ EXTERN ~EDWINJ~ vashtest
END

IF ~~ THEN BEGIN taffic
  SAY ~Ah, a student well versed in the art of illusion, commendable! You may begin your search for my scroll.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1)
SetGlobal("VP_Illusion_Quest","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutTf9")~ EXIT
END //Illusionist: Test 1 starts

IF ~~ THEN BEGIN janjan
  SAY ~Ah, a student well versed in the art of illusion, commendable! You may begin your search for my scroll.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1)
SetGlobal("VP_Illusion_Quest","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutJ09")~ EXIT
END //Illusionist: Test 1 starts

IF ~~ THEN BEGIN edwin
  SAY ~Ah, a student well versed in the art of illusion, commendable! You may begin your search for my scroll.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1)
SetGlobal("VP_Illusion_Quest","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutE09")~ EXIT
END //Illusionist: Test 1 starts

IF ~Global("VP_My_Test","LOCALS",1)
Global("VP_MyTest_byNPCfix","GLOBAL",1)
OR(3)
Global("VP_Illusion_Quest","GLOBAL",3)
Global("VP_Illusion_Quest","GLOBAL",6)
Global("VP_Illusion_Quest","GLOBAL",7)~ THEN BEGIN newstate
  SAY ~I have already made it clear that you only have one chance per test. And the task needs to be completed satisfactorily.~
  IF ~Global("VP_Nalia_IllQuest","GLOBAL",1)~ THEN EXTERN ~NALIAJ~ vashon
  IF ~Global("VP_Kachiko_IllQuest","GLOBAL",1)~ THEN EXTERN ~KACHIJ~ vashon
  IF ~Global("VP_Aerie_IllQuest","GLOBAL",1)~ THEN EXTERN ~AERIEJ~ vashon
  IF ~Global("VP_Taffic_IllQuest","GLOBAL",1)~ THEN EXTERN ~TAFFICJ~ vashon
  IF ~Global("VP_Jan_IllQuest","GLOBAL",1)~ THEN EXTERN ~JANJ~ vashon
  IF ~Global("VP_Edwin_IllQuest","GLOBAL",1)~ THEN EXTERN ~EDWINJ~ vashon
END

IF ~~ THEN BEGIN npcfail
  SAY ~No matter there will be another time for you, but I have to leave the academy for a short time so it may be a while, so until I return farewell. ~
  IF ~~ THEN DO ~SetGlobal("VP_Illusion_Quest","GLOBAL",8)
TakePartyItem("shadbfak")
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutT41")~ EXIT
END