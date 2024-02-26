ADD_TRANS_ACTION BVICONI
BEGIN 27 END
BEGIN 1 END
~SetGlobal("BViconia12","LOCALS",1)~

REPLACE_STATE_TRIGGER BVICONI 103
~Global("LoveTalk","LOCALS",46)~

ALTER_TRANS BVICONI // file name
BEGIN 103 END // state number (can be more than one)
BEGIN 0 1 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~~
END

ALTER_TRANS BVICONI // file name
BEGIN 103 END // state number (can be more than one)
BEGIN 0 1 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~~
END

ALTER_TRANS BVICONI // file name
BEGIN 103 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "EPILOGUE" ~GOTO 367~
END

ALTER_TRANS BVICONI // file name
BEGIN 103 END // state number (can be more than one)
BEGIN 1 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "EPILOGUE" ~GOTO 368~
END

SET_WEIGHT BVICONI 103 #22

REPLACE_STATE_TRIGGER BVICONI 7
~InParty("Mazzy")
!Dead("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",STATE_SLEEPING)
Global("VP_BanterFix1","LOCALS",0)~

ALTER_TRANS BVICONI // file name
BEGIN 7 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("VP_BanterFix1","LOCALS",1)~
END

REPLACE_STATE_TRIGGER BVICONI 8
~InParty("Yoshimo")
!Dead("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",STATE_SLEEPING)
Global("VP_BanterFix2","LOCALS",0)~

ALTER_TRANS BVICONI // file name
BEGIN 8 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("VP_BanterFix2","LOCALS",1)~
END

REPLACE_STATE_TRIGGER BVICONI 24
~InParty("Jan")
!Dead("Jan")
See("Jan")
!StateCheck("Jan",STATE_SLEEPING)
Global("VP_BanterFix3","LOCALS",0)~

ALTER_TRANS BVICONI // file name
BEGIN 24 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("VP_BanterFix3","LOCALS",1)~
END

APPEND ~BVICONI~

IF ~~ THEN BEGIN NEJ0
  SAY ~Whilst you persist in leading these males into believing they are a females equal I will have none of your surface games. (*She turns her back and spits out her next words*) Jal shinduago jalilen ph’ jal yibin!~
	IF ~Gender(Player1,FEMALE)~ THEN EXTERN ~BLEINA~ PCF2Leina31a
	IF ~Gender(Player1,MALE)~ THEN EXTERN ~BLEINA~ PCM4Leina31a
END

IF ~~ THEN BEGIN LeiSpher1
	SAY ~How pathetic. You surface dwellers are prepared to fight like dogs in heat over such a pitiful female... if that’s what you want to call her.~
	IF ~~ THEN EXTERN ~BLEINA~ Sphere8a
END

IF ~~ THEN BEGIN LeiSpher2
	SAY ~For once a male has half an idea which is about as good as a half elf, maybe the males should split her in half the whole thing is pathetic.~
	IF ~~ THEN EXTERN ~BLEINA~ Sphere13a
END

IF ~~ THEN BEGIN LeiSpher3
	SAY ~You surface dwellers are so stupid. Who really cares?~
	IF ~True()~ THEN EXTERN ~BLEINA~ Sphere10
	IF ~InParty("Yoshimo")
!Dead("Yoshimo")~ THEN EXTERN ~BYOSHIM~ LeiSpher1
	IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~BMINSC~ LeiSpher1
	IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~BEDWIN~ LeiSpher2
	IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~BJAHEIR~ LeiSpher1
	IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~BKORGAN~ LeiSpher4
	IF ~InParty("Nalia")
!Dead("Nalia")~ THEN EXTERN ~BNALIA~ LeiSpher1
	IF ~InParty("Valygar")
!Dead("Valygar")~ THEN EXTERN ~BVALYGA~ LeiSpher1	  
END	

IF ~~ THEN BEGIN TS575
  SAY ~The surface... what a stupid place! Here, in Amn, you are a strong and valiant warrior. In your homeland you'd be subservient to some lowly jaluk. Stupid place.~
  IF ~~ THEN EXTERN ~BKACHI~ 32
END

IF ~~ THEN BEGIN TS576
  SAY ~Do not think me a fool. In Kara-Tur women are slaves of men... The ones who sell themselves are considered to be "free"! ~
  IF ~~ THEN EXTERN ~BKACHI~ 33
END

IF ~~ THEN BEGIN TS577
  SAY ~What about you, Kachiko? Are you trying to find a lover to gain power?~
  IF ~~ THEN EXTERN ~BKACHI~ 34
END

IF ~~ THEN BEGIN TS578
  SAY ~I do not understand you. If the only place to find power is some jaluk's bed that's where I would be...~
  IF ~~ THEN EXTERN ~BKACHI~ 35
END

IF ~~ THEN BEGIN TS579
  SAY ~I care not for your displeasure. When female desires to watch a male he should be grateful of attention and shiver with delight and anticipation of an order.~
  IF ~~ THEN EXTERN ~BVALYGA~ TS392
END

IF ~~ THEN BEGIN TS580
  SAY ~That's because you are a fool, rivvin. I can see now why <CHARNAME> would take an interest in you. Such a pleasure is torturing a bold male...~
  IF ~~ THEN EXTERN ~BVALYGA~ TS393
END

IF ~~ THEN BEGIN TS581
  SAY ~You are sad and pathetic, male. You see not the obvious. You refute what could be your greatest chance to change your lowly station. I shall not spare you any more of my time, rivvin.~
  IF ~~ THEN EXTERN ~BVALYGA~ TS394
END

IF ~~ THEN BEGIN TS582
  SAY ~Oh, the male is rude. Were we in Menzoberranzan, I'd beat you to death for a tenth of this insult. But you would not dare even look at me, let alone speak to me there. You would crawl by my feet and beg for my attention.~
  IF ~~ THEN EXTERN ~BVALYGA~ TS396
END

IF ~~ THEN BEGIN TS583
  SAY ~Do you even know what desire is? The longer I watch you, the firmer is my conviction that you are no man's friend and no woman's lover. Fury and emptiness you are.~
  IF ~~ THEN EXTERN ~BVALYGA~ TS397
END

IF ~~ THEN BEGIN TS584
  SAY ~I am bored and I will accept an inadequate substitute, such as an ungraceful human.~
  IF ~~ THEN EXTERN ~BVALYGA~ TS398
END

IF ~~ THEN BEGIN TS585
  SAY ~Valygar? (*catches his sleeve*)~
  IF ~~ THEN EXTERN ~BVALYGA~ TS399
END

IF ~~ THEN BEGIN TS586
  SAY ~You will regret this! I hate you!~
  IF ~~ THEN EXTERN ~BVALYGA~ TS400
END

IF ~~ THEN BEGIN TS587
  SAY ~Silence, male. I have decided that you will deliver me some pleasure tonight. That's of course if your clumsiness is bearable...~
  IF ~~ THEN EXTERN ~BVALYGA~ TS476
END

IF ~~ THEN BEGIN TS588
  SAY ~What that has to do with my order?~
  IF ~~ THEN EXTERN ~BVALYGA~ TS477
END

IF ~~ THEN BEGIN TS589
  SAY ~So if mutual hate forbids surfacers to become lovers, mutual love shall promote it?~
  IF ~~ THEN EXTERN ~BVALYGA~ TS478
END

IF ~~ THEN BEGIN TS590
  SAY ~Then why are you not laying by <CHARNAME>'s side?~
  IF ~~ THEN EXTERN ~BVALYGA~ TS479
END

IF ~~ THEN BEGIN TS591
  SAY ~Do you hate her?~
  IF ~~ THEN EXTERN ~BVALYGA~ TS480
END

IF ~~ THEN BEGIN TS592
  SAY ~Does she hate you?~
  IF ~~ THEN EXTERN ~BVALYGA~ TS481
END

IF ~~ THEN BEGIN TS593
  SAY ~So?~
  IF ~~ THEN EXTERN ~BVALYGA~ TS482
END

IF ~~ THEN BEGIN TS594
  SAY ~You are a hypocrite and a liar, male. I may not know much of the surfacers but I know desire when I see it. Now, leave this pointless argument and do what I ordered you.~
  IF ~~ THEN EXTERN ~BVALYGA~ TS483
END

IF ~~ THEN BEGIN TS595
  SAY ~Shut up, rivvin! I am going to tell you something you want to hear.~
  IF ~~ THEN EXTERN ~BVALYGA~ TS485
END

IF ~~ THEN BEGIN TS596
  SAY ~You say your blood is cursed by a hereditary affliction to dark magic. <CHARNAME> says that her dark ancestry taints her blood.~
  IF ~~ THEN EXTERN ~BVALYGA~ TS486
END

IF ~~ THEN BEGIN TS597
  SAY ~Blood against blood, taint against taint. Which should win? Do you think Corthala's blood is stronger than Bhaal's? Do not you think that your precious magical curse will be burnt out of the veins of a child should it mix with a god's blood?~
  IF ~~ THEN EXTERN ~BVALYGA~ TS487
END

IF ~~ THEN BEGIN TS598
  SAY ~No, no. You are not afraid of the curse. You are simply an impotent, miserable, scared male who is incapable of touching a woman.~
  IF ~~ THEN EXTERN ~BVALYGA~ TS488
END

IF ~~ THEN BEGIN TS599
  SAY ~There is a sweet torture to see a winner and her prize burn. I had a husband once and I caught him with my sister. I burnt them. I still can see the flames licking their corpses. Shaar was smiling that day on me.~
  IF ~~ THEN EXTERN ~BVALYGA~ TS489
END

IF ~~ THEN BEGIN TS600
  SAY ~(*laughs*) The one you cherish is no better than I. Think about what I have said about the taint, ranger.~
  IF ~~ THEN EXTERN ~BVALYGA~ TS490
END

IF ~~ THEN BEGIN TS601
  SAY ~Why you are going away from the Shadow Thieves Guild? You do not look stupid to me, and yet your actions are inapt. In your absence another would usurp your rightful place by your father.~
  IF ~~ THEN EXTERN ~BSIME~ 94
END

IF ~~ THEN BEGIN TS602
  SAY ~You find it more desirable to crawl through the dirty streets and be treated like rubbish by every rivvin you meet and still have no station?~
  IF ~~ THEN EXTERN ~BSIME~ 95
END

IF ~~ THEN BEGIN TS603
  SAY ~(*snorts*) And they will get it, no doubt. Typical. Imbecilic surfacers.~
  IF ~~ THEN EXTERN ~BSIME~ 96
END

IF ~~ THEN BEGIN TS604
  SAY ~Very few. Lloth is a cunning Mistress and watches her herd carefully. The high priestesses are ever restless, hunting the outlaws to sacrifice to Lloth and gain her favor.~
  IF ~~ THEN EXTERN ~BSIME~ 98
END

IF ~~ THEN BEGIN TS605
  SAY ~I know of none. Drizzt * spits * brought misfortune and ill fate to all of the Menzoberranzan. I doubt that anyone would feel anything but loathing for him and his choices. Drizzt's treachery strengthened my people's resolve to keep to their own ways.~
  IF ~~ THEN EXTERN ~BSIME~ 99
END

IF ~~ THEN BEGIN TS606
  SAY ~If you wish for me to answer to all of my kin's doings, you are too late. You should have thrown a torch into my pyre.~
  IF ~~ THEN EXTERN ~BSIME~ 100
END

IF ~~ THEN BEGIN TS607
  SAY ~(*Hisses and tries to stab Sime*)~
  IF ~~ THEN REPLY ~What is going on? I did not think you were such close friends to stay up late and chat.~ EXTERN ~BSIME~ 577
  IF ~~ THEN REPLY ~Can I ever get any sleep around here? Viconia, Sime, break it!~ EXTERN ~BSIME~ 577
  IF ~~ THEN REPLY ~What in Nine Hells is going on?~ EXTERN ~BSIME~ 577
END

IF ~~ THEN BEGIN TS608
  SAY ~Shut up mrannd d'ssins. Rivvin.~
  IF ~~ THEN REPLY ~Viconia, that's it. I have given you shelter against fanatics and how do you repay me? By trying to kill the woman I love?~ GOTO TS609
  IF ~~ THEN REPLY ~Viconia, get you backpack and go away. Now!~ GOTO TS610
END

IF ~~ THEN BEGIN TS609
  SAY ~Jal ssinrig zhah waella - All love is foolish.~
  IF ~~ THEN REPLY ~No it is not. You are wrong, have not I taught you anything? (*sighs*) Oh, Viconia. I guess it is my own fault, I should not have spend so much time with another and give your poor lost heart so much troubles. Sime, I am sorry about what have happened. I am sure you have it in you to forgive both Viconia and myself. I should not have abandoned the road I walked with Viconia.~ EXTERN ~BSIME~ 578
  IF ~~ THEN REPLY ~Whatever you say, Viconia. But do not you dare to as much as look at Sime unfriendly again! I am sorry that you have suffered from that vile woman, Sime. Be strong, my love.~ EXTERN ~BSIME~ 579
END

IF ~~ THEN BEGIN TS610
  SAY ~I was going to. (*laughs*)  But I wanted to kill your blonde first. Ssun usst - fear me!~
  IF ~~ THEN DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3)
LeaveParty()
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN LeiTheat
  SAY ~Then keep it yourself, your mundane thoughts are of no interest to me.~
 IF ~!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let’s get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn’t said anything yet so let’s do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin’ battle so let’s ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
	IF ~InParty("Taffic")
!Dead("Taffic")~ THEN EXTERN ~BTAFFIC~ LeiTheat
	IF ~InParty("Melora")
!Dead("Melora")~ THEN EXTERN ~BMELORA~ LeiTheat
	IF ~InParty("Dar")
!Dead("Dar")~ THEN EXTERN ~BDAR~ LeiTheat	
	IF ~InParty("Hrothgar")
!Dead("Hrothgar")~ THEN EXTERN ~BHROTH~ LeiTheat
END

IF ~~ THEN BEGIN LeiThea3
  SAY ~Bah! You surfacers and your infantile minds! It is no wonder you have not progressed, unlike the drow! Udos zhal ilstar ultrin... you will see!~
 IF ~!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let’s get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn’t said anything yet so let’s do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin’ battle so let’s ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
	IF ~InParty("Taffic")
!Dead("Taffic")~ THEN EXTERN ~BTAFFIC~ LeiThea3
	IF ~InParty("Melora")
!Dead("Melora")~ THEN EXTERN ~BMELORA~ LeiThea3
	IF ~InParty("Dar")
!Dead("Dar")~ THEN EXTERN ~BDAR~ LeiThea3	
	IF ~InParty("Hrothgar")
!Dead("Hrothgar")~ THEN EXTERN ~BHROTH~ LeiThea3
END

IF ~~ THEN BEGIN LeiThea4
  SAY ~Children, you are all nought but children! It’s no wonder you surfacers struggle to survive... udos zhal ilstar ultrin!~
 IF ~!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let’s get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn’t said anything yet so let’s do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin’ battle so let’s ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
	IF ~InParty("Taffic")
!Dead("Taffic")~ THEN EXTERN ~BTAFFIC~ LeiThea4
	IF ~InParty("Melora")
!Dead("Melora")~ THEN EXTERN ~BMELORA~ LeiThea4
	IF ~InParty("Dar")
!Dead("Dar")~ THEN EXTERN ~BDAR~ LeiThea4	
	IF ~InParty("Hrothgar")
!Dead("Hrothgar")~ THEN EXTERN ~BHROTH~ LeiThea4
END

IF ~~ THEN BEGIN LeiThea1
  SAY ~Go play your foolish prank! If the half elf hasn’t sussed you yet then the half breed deserves to be made a fool of.~
=
~(*She spits out her next words*) Kitrye kyuvren ph' nau mzild darthirii taga ph' rothe!~
	IF ~True()~ THEN EXTERN ~BLEINA~ TheaQ151
	IF ~InParty("Taffic")
!Dead("Taffic")~ THEN EXTERN ~BTAFFIC~ LeiThea1
	IF ~InParty("Melora")
!Dead("Melora")~ THEN EXTERN ~BMELORA~ LeiThea1
	IF ~InParty("Dar")
!Dead("Dar")~ THEN EXTERN ~BDAR~ LeiThea1	
	IF ~InParty("Hrothgar")
!Dead("Hrothgar")~ THEN EXTERN ~BHROTH~ LeiThea1
END

IF ~~ THEN BEGIN LeiThea2
  SAY ~Leina, I need no such silly songs. But if you must, be sure you tell of how I ripped the beasts hearts out with my bare hands and laid them open for the vultures to feed on their soft parts.~
	IF ~True()~ THEN EXTERN ~BLEINA~ TheaQ161
END

IF ~~ THEN BEGIN RadianQ
  SAY ~Bah! You bard, you couldn't handle an evil thought if one ever took a hold on you, you'd soil your pants and fall down screaming!~
 IF ~~ THEN EXTERN ~BLEINA~ RadiQ19A
END

IF ~~ THEN BEGIN LeiRadia
  SAY ~Surfacers! Your fetish for fluffy towels is unhealthy girl, some one needs to give you a good rub down with a horse blanket. That'll cure all this jumping into hot water every spare minute!~
	IF ~~ THEN EXTERN ~BLEINA~ RadiQ21B  
END	
END