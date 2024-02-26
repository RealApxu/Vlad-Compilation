APPEND ~BANOMEN~

IF ~~ THEN BEGIN NEJ0
  SAY ~Hmph! When the lady said dance I didn�t think she meant it would be the kind of dancing found in a brothel!~
  IF ~Gender(Player1,FEMALE)
!InParty("Melora")~ THEN EXTERN ~BLEINA~ PCF2Leina38a
	IF ~Gender(Player1,MALE)
!InParty("Melora")~ THEN DO ~SetGlobal("VP_Danicng_Queen","GLOBAL",2)~ EXIT
	IF ~Gender(Player1,FEMALE)
InParty("Melora")
InParty("Taffic")~ THEN EXTERN ~BMELORA~ 53
	IF ~Gender(Player1,MALE)
InParty("Melora")
InParty("Taffic")~ THEN EXTERN ~BMELORA~ 56
	IF ~InParty("Jan")~ THEN EXTERN ~BJAN~ NEJ0
	IF ~InParty("Kachiko")~ THEN EXTERN ~BKACHI~ NEJ0
	IF ~InParty("Mazzy")~ THEN EXTERN ~BMAZZY~ NEJ0
	IF ~InParty("Nalia")~ THEN EXTERN ~BNALIA~ NEJ57
	IF ~InParty("Keldorn")~ THEN EXTERN ~BKELDOR~ NEJ0
END

IF ~~ THEN BEGIN NEJ1
  SAY ~I think my lady will not find me not lacking in grace when it comes to the dance. I have attended many grand occasions given in honour of The Radiant Heart.~
  IF ~Gender(Player1,FEMALE)~ THEN EXTERN ~BLEINA~ PCF2Leina34a
	IF ~Gender(Player1,MALE)~ THEN EXTERN ~BLEINA~ PCM4Leina34a
END

IF ~~ THEN BEGIN TS587
  SAY ~Ahem, Yoshimo, I had... accidentally... noticed that you are writing something. Well, poetry. So you have poetry in Kara-Tur?~
  IF ~~ THEN EXTERN ~BYOSHIM~ TS100
END

IF ~~ THEN BEGIN TS588
  SAY ~That�s a good start... was it what you were writing for the past fortnight?  Keep up good work, Yoshimo and you might actually finish it.~
  IF ~~ THEN EXTERN ~BYOSHIM~ TS101
END

IF ~~ THEN BEGIN TS589
  SAY ~Oh, you are working for dwarven market? New style? Short poetry for short people?~
  IF ~~ THEN EXTERN ~BKACHI~ 16
END

IF ~~ THEN BEGIN TS590
  SAY ~Kachiko, the poetry is a dove which whispers tender desires to the Lady of the heart... Not a childish line and a half... If I may offer you a real madrigal:

She walks in beauty, like the night
Of cloudless climes and starry skies;
And all that�s best of dark and bright
Meet in her aspect and her eyes:
Thus mellow�d to that tender light
Which heaven to gaudy day denies...
~
  IF ~~ THEN EXTERN ~BKACHI~ 17
END

IF ~~ THEN BEGIN TS591
  SAY ~The judge is not objective! My star, come, tell what you think?~
  IF ~~ THEN REPLY ~What, the poem you wrote about Kachiko? Well, I�d say I agree with her, it�s not the greatest...~ GOTO TS592
END

IF ~~ THEN BEGIN TS592
  SAY ~All that nights I spend writing it for you... all wasted...~
  IF ~~ THEN REPLY ~On the second thought, may we call it a tie, Kachiko?~ EXTERN ~BKACHI~ 18
END

IF ~~ THEN BEGIN TS593
  SAY ~A tie? A TIE?~
  IF ~~ THEN EXTERN ~BYOSHIM~ TS103
END

IF ~~ THEN BEGIN TS594
  SAY ~Valygar, if she needed anybody�s help she�d ask for it.~
  IF ~~ THEN EXTERN ~BVALYGA~ TS174
END

IF ~~ THEN BEGIN TS595
  SAY ~Verily, Valygar, I know little of love beside what the tales say. I would speak to an older comrade in the Order, but I thought you might be willing to listen. Besides, the girl I like, well, she is very special... It�s <CHARNAME> and with her heritage, I am not sure the Order would look benevolently on our relationship...~
  IF ~~ THEN EXTERN ~BVALYGA~ TS379
END

IF ~~ THEN BEGIN TS596
  SAY ~See my problem? Of all fair ladies I love the one who would never be accepted by the Order as my bride...~
  IF ~~ THEN EXTERN ~BVALYGA~ TS380
END

IF ~~ THEN BEGIN TS597
  SAY ~Why are you so upset Valygar? I merely...~
  IF ~~ THEN EXTERN ~BVALYGA~ TS382
END

IF ~~ THEN BEGIN TS598
  SAY ~Have you never met a nice girl?~
  IF ~~ THEN EXTERN ~BVALYGA~ TS383
END

IF ~~ THEN BEGIN TS599
  SAY ~I think I am luckier than you then. <CHARNAME> is a woman of rare virtue...~
  IF ~~ THEN EXTERN ~BVALYGA~ TS384
END

IF ~~ THEN BEGIN TS600
  SAY ~You should try. She went mad, dragging us all over the place instead of saving the elven city. Many lives were forsaken to save yours. Verily, a worthy exchange! It would seem that you have some special value in the eyes of <CHARNAME>.~
  IF ~~ THEN EXTERN ~BVALYGA~ TS386
END

IF ~~ THEN BEGIN TS601
  SAY ~Is that true <CHARNAME>? Would you do it, say, for me?~
  IF ~~ THEN REPLY ~Yes I would. Now cool down, you are acting irrationally.~ GOTO TS602
  IF ~~ THEN REPLY ~I am not going to answer that. Think what you will, Anomen, I just do not care.~ EXTERN ~BVALYGA~ TS389
  IF ~~ THEN REPLY ~No. I would have left you to rot in the crypt. ~ GOTO TS604
END

IF ~~ THEN BEGIN TS602
  SAY ~I... I was... I am sorry my Lady.~
  IF ~~ THEN REPLY ~You should apologize to Valygar, not to me...~ GOTO TS603
  IF ~~ THEN REPLY ~Apology accepted. Now, let�s all calm down and do our job.~ EXTERN ~BVALYGA~ TS388
END

IF ~~ THEN BEGIN TS603
  SAY ~Oh, that? Well, Valygar, I must say I had been ill-tempered and said what I should have not...~
  IF ~~ THEN EXTERN ~BVALYGA~ TS387
END

IF ~~ THEN BEGIN TS604
  SAY ~Oh, I see... Well, then I�ll relieve you from the necessity of being in my company. Fare thee well.~
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN TS605
  SAY ~Somehow I do not think so. She cares not if I would turn into a stone or a turnip... or a vampire.~
  IF ~~ THEN EXTERN ~BVALYGA~ TS390
END

IF ~~ THEN BEGIN TS606
  SAY ~Indeed, it would serve me well. Looks like <CHARNAME> is into the strong and silent type.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TS607
  SAY ~I have a strange suspicion, ranger. I think you are trying to...~
  IF ~~ THEN EXTERN ~BVALYGA~ TS462
END

IF ~~ THEN BEGIN TS608
  SAY ~You know what!~
  IF ~~ THEN EXTERN ~BVALYGA~ TS463
END

IF ~~ THEN BEGIN TS609
  SAY ~Laughing! Sure, you can laugh! It�s my heart that is bleeding!~
  IF ~~ THEN EXTERN ~BVALYGA~ TS464
END

IF ~~ THEN BEGIN TS610
  SAY ~I want NOTHING from you!~
  IF ~~ THEN EXTERN ~BVALYGA~ TS465
END

IF ~~ THEN BEGIN TS611
  SAY ~I am not through with you yet! You cannot just walk away!~
  IF ~~ THEN EXTERN ~BVALYGA~ TS466
END

IF ~~ THEN BEGIN TS612
  SAY ~I have seen you together... Do not try to deny it! You hold her hand! You who have told me endlessly how uninterested you are in ladies! I was so blind. I let you to steal <CHARNAME> from me...~
  IF ~~ THEN EXTERN ~BVALYGA~ TS468
END

IF ~~ THEN BEGIN TS613
  SAY ~Spend time indeed... Travel to Zakhara - that�s going to give you two a lot of time to kill.~
  IF ~~ THEN EXTERN ~BVALYGA~ TS469
END

IF ~~ THEN BEGIN TS614
  SAY ~I should have done that long ago, instead of trusting her, instead of trusting you. It is my own fault that the one I love and you, whom I called my friend, have broken my life. I was too carefree. Now they all look at me with pity and say nice words. But my heart is the vulture�s food. Nothing hurts more than treachery.~
  IF ~~ THEN EXTERN ~BVALYGA~ TS470
END

IF ~~ THEN BEGIN TS615
  SAY ~How dare you!~
  IF ~~ THEN EXTERN ~BVALYGA~ TS471
END

IF ~~ THEN BEGIN TS616
  SAY ~Oh, now it�s my own fault, is not it?~
  IF ~~ THEN EXTERN ~BVALYGA~ TS472
END

IF ~~ THEN BEGIN TS617
  SAY ~I see... May be she would have more to say?~
  IF ~~ THEN EXTERN ~BVALYGA~ TS473
END

IF ~~ THEN BEGIN TS618
  SAY ~Are you threatening me?~
  IF ~~ THEN EXTERN ~BVALYGA~ TS474
END

IF ~~ THEN BEGIN TS619
  SAY ~I care not what you told me. My conversation with her is a private one.~
  IF ~~ THEN EXTERN ~BVALYGA~ TS551
END

IF ~~ THEN BEGIN TS620
  SAY ~Jealous? Of course you are jealous! She loves me, not you!~
  IF ~~ THEN EXTERN ~BVALYGA~ TS552
END

IF ~~ THEN BEGIN TS621
  SAY ~What! I love her more than my own life, and I will hurt her? You are going queer, ranger! I just need to talk to her. <CHARNAME>, I beg you to tell me what is going on... Do you like Valygar better than I?~
  IF ~~ THEN REPLY ~That�s enough. Valygar, you have some sort of idea-fix that everyone tries to hurt me and you are the one to save me. Let me remind you, that I am quite capable of taking care of myself. Besides I do not desire to be protected from the love of my life, Anomen... (*give Anomen a sweet smile*)~ EXTERN ~BVALYGA~ TS553
  IF ~~ THEN REPLY ~I think I know the way to solve this conflict: I care for neither of you. But I consider both of you my friends. So do make up and let�s forget about this silly conversation.~ EXTERN ~BVALYGA~ TS554
  IF ~~ THEN REPLY ~Ahem... Anomen. I do not know how you came up with the notion that I like you... I am sorry if I have given you a false hope. I prefer you not to intervene into my relationship with Valygar. ~ EXTERN ~BVALYGA~ TS556
  IF ~~ THEN REPLY ~(*grin... and stay silent waiting for the next scene*)~ EXTERN ~BVALYGA~ TS558
  IF ~~ THEN REPLY ~(*cry helplessly*) Fools, I... I love both of you. Please, do not make me choose...~ EXTERN ~BVALYGA~ TS560
END

IF ~~ THEN BEGIN TS622
  SAY ~I cannot believe my own ears!~
  IF ~~ THEN EXTERN ~BVALYGA~ TS555
END

IF ~~ THEN BEGIN TS623
  SAY ~I do not want to hear another word! I have to be alone now.~
  IF ~~ THEN DO ~ChangeAlignment(Myself,CHAOTIC_NEUTRAL)~ EXIT
END

IF ~~ THEN BEGIN TS624
  SAY ~I do not want to hear another word! I have to be alone now.~
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN TS625
  SAY ~Let me go talk to her! Or I swear I will kill you!~
  IF ~~ THEN EXTERN ~BVALYGA~ TS559
END

IF ~~ THEN BEGIN TS626
  SAY ~How dare you are...~
  IF ~~ THEN DO ~SetGlobal("AnomenValygarFight","GLOBAL",1)
SetLeavePartyDialogueFile()
LeaveParty()
ChangeAIScript("",DEFAULT)
ChangeAIScript("useitem",GENERAL)
ChangeAIScript("anvsval",SPECIFICS)~ EXIT
END

IF ~~ THEN BEGIN TS627
  SAY ~Nay my Lady, not in the least.~
  IF ~~ THEN EXTERN ~BSIME~ 40
END

IF ~~ THEN BEGIN TS628
  SAY ~You should my Lady, you should.~
  IF ~~ THEN EXTERN ~BSIME~ 41
END

IF ~~ THEN BEGIN TS629
  SAY ~It is most hurtful to hear such harsh words from a noble born Lady.~
  IF ~~ THEN EXTERN ~BSIME~ 42
END

IF ~~ THEN BEGIN TS630
  SAY ~But surely, your Lady mother was of a high station...~
  IF ~~ THEN EXTERN ~BSIME~ 43
END

IF ~~ THEN BEGIN TS631
  SAY ~Mayhaps you are a Princess of some enchanted place and you know not of it, my Lady?~
  IF ~~ THEN EXTERN ~BSIME~ 44
END

IF ~~ THEN BEGIN TS632
  SAY ~My Lady, you are an observant friend. I am worried of my feeling about our company.~
  IF ~~ THEN EXTERN ~BSIME~ 46
END

IF ~~ THEN BEGIN TS633
  SAY ~Quite the opposite, my dear Sime, quite the opposite...~
  IF ~~ THEN EXTERN ~BSIME~ 47
END

IF ~~ THEN BEGIN TS634
  SAY ~Our group is lacking discipline and the purpose. Yet I like it. What would the Prelate of the Order say if he would learn that I am not insistent enough on proper procedures? When are we to undertake the heroic deeds fit for a paladin of the Order?~
  IF ~~ THEN EXTERN ~BSIME~ 48
END

IF ~~ THEN BEGIN TS635
  SAY ~Aye, you speak truthfully, my Lady. And that was "the pool of right"... I suppose I strike evil in the name of the Order and I am pleased with it. Menial tasks or no, we do good things. But the lack of discipline and insubordination does not sit well with me!~
  IF ~~ THEN EXTERN ~BSIME~ 49
END

IF WEIGHT #2 ~Global("VP_AnomenJealous","GLOBAL",6)~ THEN BEGIN AHK_st0
  SAY ~<CHARNAME>! Can we have a word?~
=
~You love him, don't you? Please, do not bother denying it. I see it, I'm losing to him in each and every way.~
=
~I understand... I just have to speak out as it is. Maybe it would be best if I left and kept out of your way?~
  IF ~~ THEN REPLY ~Anomen, it is your decision. I have no right to forbid you.~ GOTO AHK_st1
  IF ~~ THEN REPLY ~Have it your way. I do not care.~ GOTO AHK_st1
  IF ~~ THEN REPLY ~Yes, it's probably for the best. You should leave.~ GOTO AHK_st2
END

IF ~~ THEN BEGIN AHK_st1
  SAY ~(Becomes thoughtful) What of the group, you will be left without a cleric? Your adventure is full of dangers, <CHARNAME>, and I do not want you to suffer because of my lack of reserve. After all sir Ryan did commission me to accompany you.~
=
~You remember I once told you that you remind me of Moira? Maybe I can start learning to love you as sister, now that there is nothing else left for me.~
	IF ~~ THEN DO ~SetGlobal("VP_AnomenJealous","GLOBAL",7)~ EXIT
END

IF ~~ THEN BEGIN AHK_st2
  SAY ~Then I'll go to Oisig. Helm shall not forsake me. Farewell, my love.~
  IF ~~ THEN DO ~SetGlobal("VP_Anom_Frustrated","GLOBAL",3)
SetGlobal("KickedOut","LOCALS",1)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
EscapeAreaMove("AR0901",705,711,4)~ EXIT
END

IF WEIGHT #3 ~Global("VP_Anom_Frustrated","GLOBAL",2)~ THEN BEGIN AFr_st0
  SAY ~Be so kind and tell *your* Keldorn to leave me in peace! I have lost everything, don't you see? Everything! The dream of my life, my first love...~
  IF ~~ THEN REPLY ~Anomen, that is not reason enough for you to take your hurt out on Keldorn! After all he is older and wiser than you!~ GOTO AFr_st1
  IF ~~ THEN REPLY ~This is all my fault! I must have talked you out of that. I am so sorry.~ GOTO AFr_st1
END

IF ~~ THEN BEGIN AFr_st1
  SAY ~(Turns sulky) No, my love. I have my own head on my shoulders, but I did my father's bidding. Neither you, nor I have enough experience to have been able to foresee the outcome.~
=
~(In a confused and low voice) I should have listened to Keldorn, but I couldn't stand another of those sermons of his, and this, all of this will come to no good.~
=
~I... I should leave you my love, and disappear forever. It hurts me so much to see your love for another. Please tell him that I still have the greatest respect for him. Farewell.~
  IF ~~ THEN REPLY ~Where will you go?~ GOTO AFr_st2
END

IF ~~ THEN BEGIN AFr_st2
  SAY ~To Oisig. Helm shall not forsake me.~
  	IF ~~ THEN EXTERN ~KELDORJ~ AnomLeav
END

IF ~~ THEN BEGIN AnomBye
  SAY ~Farewell, my love, farewell forever.~
  IF ~~ THEN DO ~SetGlobal("VP_Anom_Frustrated","GLOBAL",3)
SetGlobal("KickedOut","LOCALS",1)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
EscapeAreaMove("AR0901",705,711,4)~ EXIT
END

IF ~~ THEN BEGIN LeiTheat
  SAY ~Tsk... now you have an idea... after the battle is won!~
 IF ~!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let�s get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn�t said anything yet so let�s do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin� battle so let�s ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
	IF ~InParty("Taffic")
!Dead("Taffic")~ THEN EXTERN ~BTAFFIC~ LeiTheat
	IF ~InParty("Melora")
!Dead("Melora")~ THEN EXTERN ~BMELORA~ LeiTheat
	IF ~InParty("Dar")
!Dead("Dar")~ THEN EXTERN ~BDAR~ LeiTheat	
	IF ~InParty("Hrothgar")
!Dead("Hrothgar")~ THEN EXTERN ~BHROTH~ LeiTheat
	IF ~InParty("Viconia")
!Dead("Viconia")~ THEN EXTERN ~BVICONI~ LeiTheat
	IF ~InParty("Valygar")
!Dead("Valygar")~ THEN EXTERN ~BVALYGA~ LeiTheat
	IF ~InParty("Nalia")
!Dead("Nalia")~ THEN EXTERN ~BNALIA~ LeiTheat
	IF ~InParty("Mazzy")
!Dead("Mazzy")~ THEN EXTERN ~BMAZZY~ LeiTheat
	IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~BKORGAN~ LeiTheat
	IF ~InParty("Keldorn")
!Dead("Keldorn")~ THEN EXTERN ~BKELDOR~ LeiTheat
	IF ~InParty("Jan")
!Dead("Jan")~ THEN EXTERN ~BJAN~ LeiTheat
	IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~BJAHEIR~ LeiTheat
	IF ~InParty("Imoen2")
!Dead("Imoen2")~ THEN EXTERN ~BIMOEN2~ LeiTheat
	IF ~InParty("HaerDalis")
!Dead("HaerDalis")~ THEN EXTERN ~BHAERDA~ LeiTheat
	IF ~InParty("Cernd")
!Dead("Cernd")~ THEN EXTERN ~BCERND~ LeiTheat
END

IF ~~ THEN BEGIN LeiThea3
  SAY ~What is that supposed to mean?~
 IF ~!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let�s get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn�t said anything yet so let�s do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin� battle so let�s ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
	IF ~InParty("Taffic")
!Dead("Taffic")~ THEN EXTERN ~BTAFFIC~ LeiThea3
	IF ~InParty("Melora")
!Dead("Melora")~ THEN EXTERN ~BMELORA~ LeiThea3
	IF ~InParty("Dar")
!Dead("Dar")~ THEN EXTERN ~BDAR~ LeiThea3	
	IF ~InParty("Hrothgar")
!Dead("Hrothgar")~ THEN EXTERN ~BHROTH~ LeiThea3
	IF ~InParty("Viconia")
!Dead("Viconia")~ THEN EXTERN ~BVICONI~ LeiThea3
	IF ~InParty("Valygar")
!Dead("Valygar")~ THEN EXTERN ~BVALYGA~ LeiThea3
	IF ~InParty("Nalia")
!Dead("Nalia")~ THEN EXTERN ~BNALIA~ LeiThea3
	IF ~InParty("Mazzy")
!Dead("Mazzy")~ THEN EXTERN ~BMAZZY~ LeiThea3
	IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~BKORGAN~ LeiThea3
	IF ~InParty("Keldorn")
!Dead("Keldorn")~ THEN EXTERN ~BKELDOR~ LeiThea3
	IF ~InParty("Jan")
!Dead("Jan")~ THEN EXTERN ~BJAN~ LeiThea3
	IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~BJAHEIR~ LeiThea3
	IF ~InParty("Imoen2")
!Dead("Imoen2")~ THEN EXTERN ~BIMOEN2~ LeiThea3
	IF ~InParty("HaerDalis")
!Dead("HaerDalis")~ THEN EXTERN ~BHAERDA~ LeiThea3
	IF ~InParty("Cernd")
!Dead("Cernd")~ THEN EXTERN ~BCERND~ LeiThea3
END

IF ~~ THEN BEGIN LeiThea4
  SAY ~I have nothing against a bit of fun with the girl but I will make it known that I will not be drawn into anything disrespectable!~
 IF ~!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let�s get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn�t said anything yet so let�s do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin� battle so let�s ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
	IF ~InParty("Taffic")
!Dead("Taffic")~ THEN EXTERN ~BTAFFIC~ LeiThea4
	IF ~InParty("Melora")
!Dead("Melora")~ THEN EXTERN ~BMELORA~ LeiThea4
	IF ~InParty("Dar")
!Dead("Dar")~ THEN EXTERN ~BDAR~ LeiThea4	
	IF ~InParty("Hrothgar")
!Dead("Hrothgar")~ THEN EXTERN ~BHROTH~ LeiThea4
	IF ~InParty("Viconia")
!Dead("Viconia")~ THEN EXTERN ~BVICONI~ LeiThea4
	IF ~InParty("Valygar")
!Dead("Valygar")~ THEN EXTERN ~BVALYGA~ LeiThea4
	IF ~InParty("Nalia")
!Dead("Nalia")~ THEN EXTERN ~BNALIA~ LeiThea4
	IF ~InParty("Mazzy")
!Dead("Mazzy")~ THEN EXTERN ~BMAZZY~ LeiThea4
	IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~BKORGAN~ LeiThea4
	IF ~InParty("Keldorn")
!Dead("Keldorn")~ THEN EXTERN ~BKELDOR~ LeiThea4
	IF ~InParty("Jan")
!Dead("Jan")~ THEN EXTERN ~BJAN~ LeiThea4
	IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~BJAHEIR~ LeiThea4
	IF ~InParty("Imoen2")
!Dead("Imoen2")~ THEN EXTERN ~BIMOEN2~ LeiThea4
	IF ~InParty("HaerDalis")
!Dead("HaerDalis")~ THEN EXTERN ~BHAERDA~ LeiThea4
	IF ~InParty("Cernd")
!Dead("Cernd")~ THEN EXTERN ~BCERND~ LeiThea4
END

IF ~~ THEN BEGIN LeiThea1
  SAY ~Tsk, whatever next! This group acts on the whim of a child, what this group needs is more mature leadership!~
	IF ~True()~ THEN EXTERN ~BLEINA~ TheaQ151
	IF ~InParty("Taffic")
!Dead("Taffic")~ THEN EXTERN ~BTAFFIC~ LeiThea1
	IF ~InParty("Melora")
!Dead("Melora")~ THEN EXTERN ~BMELORA~ LeiThea1
	IF ~InParty("Dar")
!Dead("Dar")~ THEN EXTERN ~BDAR~ LeiThea1	
	IF ~InParty("Hrothgar")
!Dead("Hrothgar")~ THEN EXTERN ~BHROTH~ LeiThea1
	IF ~InParty("Viconia")
!Dead("Viconia")~ THEN EXTERN ~BVICONI~ LeiThea1
	IF ~InParty("Valygar")
!Dead("Valygar")~ THEN EXTERN ~BVALYGA~ LeiThea1
	IF ~InParty("Nalia")
!Dead("Nalia")~ THEN EXTERN ~BNALIA~ LeiThea1
	IF ~InParty("Mazzy")
!Dead("Mazzy")~ THEN EXTERN ~BMAZZY~ LeiThea1
	IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~BKORGAN~ LeiThea1
	IF ~InParty("Keldorn")
!Dead("Keldorn")~ THEN EXTERN ~BKELDOR~ LeiThea1
	IF ~InParty("Jan")
!Dead("Jan")~ THEN EXTERN ~BJAN~ LeiThea1
	IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~BJAHEIR~ LeiThea1
	IF ~InParty("Imoen2")
!Dead("Imoen2")~ THEN EXTERN ~BIMOEN2~ LeiThea1
	IF ~InParty("HaerDalis")
!Dead("HaerDalis")~ THEN EXTERN ~BHAERDA~ LeiThea1
	IF ~InParty("Cernd")
!Dead("Cernd")~ THEN EXTERN ~BCERND~ LeiThea1
END

IF ~~ THEN BEGIN LeiThea2
  SAY ~Do not include in a ballad with a Bhaalspawn, unless you sing that Anomen held <PRO_HIMHER> to a more righteous path.~
	IF ~True()~ THEN EXTERN ~BLEINA~ TheaQ161
	IF ~InParty("Viconia")
!Dead("Viconia")~ THEN EXTERN ~BVICONI~ LeiThea2
	IF ~InParty("Mazzy")
!Dead("Mazzy")~ THEN EXTERN ~BMAZZY~ LeiThea2
	IF ~InParty("Keldorn")
!Dead("Keldorn")~ THEN EXTERN ~BKELDOR~ LeiThea2
	IF ~InParty("Jan")
!Dead("Jan")~ THEN EXTERN ~BJAN~ LeiThea2
	IF ~InParty("HaerDalis")
!Dead("HaerDalis")~ THEN EXTERN ~BHAERDA~ LeiThea2
	IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~BEDWIN~ LeiThea2
END
END

/////////////CHAINs////////////////

CHAIN IF WEIGHT #0 ~Global("VP_AnomenJealous","GLOBAL",2)~ THEN
BANOMEN AnomenHatred1
  ~Lord Keldorn! May I have a word with you?~
DO ~SetGlobal("VP_AnomenJealous","GLOBAL",3)~
== BKELDOR ~By all means Anomen, what troubles you?~
== BANOMEN ~Sir Keldorn, it has not escaped my attention that you have frequent and long conversations with <CHARNAME>.~
== BKELDOR ~Anomen, I'm afraid I fail to see your point. Please, be so kind and explain yourself.~
== BANOMEN ~(Losing patience) I fail to understand what your interest is that you choose to pass so much time in her company!~
== BKELDOR ~(Laughing good-naturedly) Anomen... you like our lady. She's a lovely girl, I admit, but that is all and certainly not a reason for you to take your jealousy out on me.~
== BANOMEN ~(Swallowing bitterly) Then please accept my apologizes... it seems I have presumed too much.~
== BKELDOR ~Really, my friend, until now I could not even imagine that you... hm... have set your cap at her � is that how you young men of today would put it?~
== BANOMEN ~I have spoken to her on several occasions... yes.~
== BKELDOR ~About what my young friend? You were telling her some bits about yourself, some bits about your family. These are but friendly and casual conversations, such as it is between friends. You are concerned about your Test and all your thoughts are with the Order now. This is the right thing, Anomen, this is what is important for you at the moment.~
== BANOMEN ~But what about... l-love?~
== BKELDOR ~Isn't it a little too early to speak of love, Anomen? And trust me the Order is of greater importance. It's good, when love is with you, when it is mutual... love inspires, it gives a special meaning to life. But if there is none, that is no tragedy either. To perform one's duty and to uphold the honour, that's the true path of a would-be knight.~
EXIT

CHAIN IF WEIGHT #1 ~Global("VP_AnomenJealous","GLOBAL",4)~ THEN
BANOMEN AnomenHatred2
  ~Sir Keldorn! You remember our talk? You said then, that passing the test and becoming a knight of The Order were of the most importance to me.~
DO ~SetGlobal("VP_AnomenJealous","GLOBAL",5)~
== BKELDOR ~And you have accomplished that! I am very pleased for you, Sir Anomen.~
== BANOMEN ~Thank you. But I was talking about another matter.~
== BKELDOR ~(With a sigh) Anomen, even if I ceased talking to her, it would hardly affect your relationship.~
== BANOMEN ~(Lowering his head) I'm afraid you are right, sir Keldorn. She can't take her eyes off you.~
== BKELDOR ~My friend, you exaggerate!~
== BANOMEN ~No. I can see it... me...  I'm looking at her all the time and I realize that. I... I perceive that I am no match for you, Sir Keldorn.~
== BKELDOR ~Anomen...~
== BANOMEN ~(With passion) Don't you care? Why do you persist in stringing her along?~
== BKELDOR ~(Meeting his eyes) Of course I care, just as I care for anyone I have sworn to protect. Anomen, this conversation is not leading us anywhere.~
== BANOMEN ~So my jealousy is not groundless after all, eh? Perhaps, I should just leave now, and bother you both no more!~
== BKELDOR ~Where would you go? To your father?~
== BANOMEN ~To Sir Ryan.~
== BKELDOR ~And when he asks why you have abandoned <CHARNAME>. What would you answer? That you have failed to control your emotions?~
== BANOMEN ~I do not know.~
== BKELDOR ~(Gently) Anomen... Please, I beg of you, don't go making any rash decisions.~
EXIT