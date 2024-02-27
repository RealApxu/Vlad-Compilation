APPEND ~IMOEN2J~

IF ~PartyHasItem("Misc4e")
Global("Rielev","LOCALS",0)
~ THEN BEGIN CR0 // from:
  SAY #37850 /* ~He's... he's dead now? This pathetic creature...~ [IMOENJ50] */
  IF ~~ THEN DO ~SetGlobal("Rielev","LOCALS",1)
~ GOTO CR1
END

IF ~~ THEN BEGIN CR1 // from: 0.0
  SAY #37851 /* ~I can't look away, <CHARNAME>. I have seen death in our scuffles before, but here I did nothing but watch his life end...~ */
  IF ~~ THEN GOTO CR2
END

IF ~~ THEN BEGIN CR2 // from: 1.0
  SAY #37852 /* ~I can't look away.~ */
  IF ~~ THEN REPLY #37853 /* ~Yet another corpse in my wake. Nothing odd about that. Let's go.~ */ GOTO CR3
  IF ~~ THEN REPLY #37854 /* ~Death is not always to be feared, I guess. I would not wish to live like that.~ */ GOTO CR3
  IF ~~ THEN REPLY #37855 /* ~We've no more time for your morbid fascinations. Let's get moving. ~ */ GOTO CR3
END

IF ~~ THEN BEGIN CR3 // from: 2.2 2.1 2.0
  SAY #37856 /* ~Death is... pretty. Why would I think that? Oh, <CHARNAME>, I've got to get out of this place.~ */
  IF ~~ THEN SOLVED_JOURNAL #47517 /* ~Free Rielev from his life-support.

Rielev has been released from his overlong life. I took the crystal that apparently powered the device that he floated in, but not before he said that it might be used to activate other servants in similar devices.~ */ EXIT
END

IF ~~ THEN BEGIN CR4 // from:
  SAY #37857 /* ~This poor creature wishes to die? Right here? We should...~ [IMOENJ51] */
  IF ~~ THEN GOTO CR5
END

IF ~~ THEN BEGIN CR5 // from: CR4.0
  SAY #37858 /* ~We should help... we should... we should see what happens now!~ */
  IF ~~ THEN DO ~MoveToObject("Reilev")
GiveItemCreate("Misc4e",Myself,1,0,0)
ActionOverride("Rielev",DestroySelf())
~ EXIT
END

IF ~~ THEN BEGIN CR6 // from:
  SAY #38537 /* ~I can help you too. Should I not try? I hate to see you cooped up like that.~ */
  IF ~~ THEN EXTERN ~JAHEIRA~ 74
END

IF ~~ THEN BEGIN CR7 // from:
  SAY #38539 /* ~Minsc, that is horrible! I am so sorry for you. ~ */
  IF ~~ THEN EXTERN ~MINSCA~ 43
END

IF ~~ THEN BEGIN CR8 // from:
  SAY #38543 /* ~Eww, I... really don't want to think about that too much. ~ */
  IF ~~ THEN EXTERN ~MINSCA~ 13
END

IF ~Global("ImoenClones","AR0602",1)
~ THEN BEGIN CR9 // from:
  SAY #38544 /* ~I... I know this room. I've been in here... we both have. He... There are things in these tanks. They used to be people... ~ [IMOENJ52] */
  IF ~~ THEN DO ~SetGlobal("ImoenClones","AR0602",2)
~ GOTO CR10
END

IF ~~ THEN BEGIN CR10 // from: 9.0
  SAY #38559 /* ~What kind of monster is this guy? Captures us easy as pie, kills whoever he wants... that could have been us in those glass things.~ */
  IF ~~ THEN REPLY #38560 /* ~We'll get him back, Imoen. We'll make him pay for all of this.~ */ GOTO CR12
  IF ~~ THEN REPLY #38561 /* ~Quit your whining. We're free now.~ */ GOTO CR13
  IF ~~ THEN REPLY #38562 /* ~I'm sure we'll find him soon enough. I want to know what he wants with me.~ */ GOTO CR15
END

IF ~~ THEN BEGIN CR11 // from:
  SAY #38563 /* ~I don't know about that, Minsc, but he sure is a cute little fuzzy wuzzy. Aren't you, Boo? ~ */
  IF ~~ THEN EXTERN ~MINSCA~ 14
END

IF ~~ THEN BEGIN CR12 // from: 10.0
  SAY #38584 /* ~We don't even know where we are, and my head is still doing funny things... He said something... something about potential.~ */
  IF ~~ THEN GOTO CR68
END

IF ~~ THEN BEGIN CR13 // from: 10.1
  SAY #38599 /* ~Are we?  Horrible, horrible things surround us and my head still hurts like crazy.  I want to know what he did to me.  I remember... something about potential.~ */
  IF ~~ THEN GOTO CR14
END

IF ~~ THEN BEGIN CR14 // from: 13.0
  SAY #38602 /* ~He said it about you too: something about power that can be unleashed.  I don't care; I just have to get out.  Can we leave this room? It bothers me.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CR15 // from: 10.2
  SAY #38603 /* ~I want to know what he did to me, too. My head still hurts really bad. He said... said something about potential... about you too.~ */
  IF ~~ THEN GOTO CR69
END

IF ~~ THEN BEGIN CR16 // from:
  SAY #38606 /* ~Wow, a golem.  Powerful magic stuff.  Odd that it's not hostile.  I suppose its maker didn't expect us to escape so it never got orders for restraining us.~ */
  IF ~~ THEN GOTO CR17
END

IF ~~ THEN BEGIN CR17 // from: 16.0
  SAY #38611 /* ~They only do exactly what they are directed to, they don't really think. If it hasn't been told to keep quiet we might get some information out of it.~ */
  IF ~~ THEN EXTERN ~IGOLEM2~ 0
END

IF ~Global("ImoenEllesime","AR0602",1)
~ THEN BEGIN CR18 // from:
  SAY #38612 /* ~What... what is this place. It's beautiful. Oh, there is simply no way that this space belongs to the same person that owns those horrible glass containers.~ [IMOENJ53] */
  IF ~~ THEN REPLY #38617 /* ~It is unlikely that our captor would rent out space. It must be his.~ */ DO ~SetGlobal("ImoenEllesime","AR0602",2)
~ GOTO CR19
  IF ~~ THEN REPLY #38618 /* ~Perhaps it is simply a side of him we have not seen. ~ */ DO ~SetGlobal("ImoenEllesime","AR0602",2)
~ GOTO CR19
END

IF ~~ THEN BEGIN CR19 // from: 18.1 18.0
  SAY #38619 /* ~No, it can't be. Not the person I know. This... this bed, that table... I know of them. He would... he would speak of them while... while he...~ */
  IF ~~ THEN GOTO CR20
END

IF ~~ THEN BEGIN CR20 // from: 19.0
  SAY #38620 /* ~It's for a lost love, kept in perfect condition. She... she despises him. This is his monument to her. He spoke of all of this, but... but his voice was cold...~ */
  IF ~~ THEN GOTO CR21
END

IF ~~ THEN BEGIN CR21 // from: 20.0
  SAY #38621 /* ~No emotion at all, not even remembered. He spoke of these things even while he cut... he cut... and the spells that wove through my brain... cold, ugly things!~ */
  IF ~~ THEN REPLY #38622 /* ~He cannot hurt you now. You are among friends.~ */ GOTO CR22
  IF ~~ THEN REPLY #38623 /* ~Calm down, you'll attract attention to us.~ */ GOTO CR25
END

IF ~~ THEN BEGIN CR22 // from: 25.0 21.0
  SAY #38624 /* ~It still hurts... his sick fingers are still in my head, doing whatever it was he started. I see blood... and death... behind my eyes... Irenicus...~ */
  IF ~~ THEN GOTO CR23
END

IF ~~ THEN BEGIN CR23 // from: 22.0
  SAY #38625 /* ~This room: if he could care for anything he would care for this room. Above the lives of all of us. It makes me sick. I feel... I feel... so much hate. ~ */
  IF ~~ THEN GOTO CR24
END

IF ~~ THEN BEGIN CR24 // from: 23.0
  SAY #38626 /* ~I would burn this place, but it is nothing. Even as it means so much, it is nothing. Let's do what we must and get out of this place, it is making me sick.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CR25 // from: 21.1
  SAY #38627 /* ~We are nothing, that's why the golems don't care. Why bother worrying about gnats. Besides, he doesn't need to catch us. I can tell. I can feel it.~ */
  IF ~~ THEN GOTO CR22
END

IF ~~ THEN BEGIN CR26 // from: 59.0
  SAY #38628 /* ~Duergar, I think. Kind of evil, I guess, so I'm not surprised they would be working for our captor.~ */
  IF ~~ THEN REPLY #38629 /* ~Quite the little setup down here. Got everything he needs, including smiths.~ */ DO ~SetGlobal("ImoenIlyich","LOCALS",2)
~ GOTO CR27
  IF ~~ THEN REPLY #38630 /* ~He tolerates some company, or are they little more than skilled packhorses to him?~ */ DO ~SetGlobal("ImoenIlyich","LOCALS",2)
~ GOTO CR28
END

IF ~~ THEN BEGIN CR27 // from: 26.0
  SAY #38631 /* ~For the knives, probably. The knives... he has a lot of them... I'm going to have a couple of scars from this... looks like you will too.~ */
  IF ~~ THEN GOTO CR70
END

IF ~~ THEN BEGIN CR28 // from: 26.1
  SAY #38632 /* ~I doubt he cares for anything more than the quality of knives they make.  He has a lot of them... I'm going to have scars from this... looks like you will too.~ */
  IF ~~ THEN GOTO CR70
END

IF ~Global("SawKhalid","AR0603",1)
Global("ImoenKhalid","LOCALS",0)
~ THEN BEGIN CR29 // from:
  SAY #38633 /* ~Jaheira... I want to say how sorry I am about Khalid... I... know this is hard...~ [IMOENJ54] */
  IF ~~ THEN DO ~SetGlobal("ImoenKhalid","LOCALS",1)
~ EXTERN ~JAHEIRAJ~ 296
END

IF ~~ THEN BEGIN CR30 // from:
  SAY #38635 /* ~Stop calling me child. I'm as old as <CHARNAME>, and besides, I can tell you that Khalid did not suffer.~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 297
END

IF ~~ THEN BEGIN CR31 // from:
  SAY #38637 /* ~I'm not babbling! I saw him do this! Khalid was dead when our captor started... doing those things to him! ~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 298
END

IF ~~ THEN BEGIN CR32 // from:
  SAY #38639 /* ~He... he showed me. He cut and... and showed me. He forced my eyes open and made me look as he...~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 299
END

IF ~~ THEN BEGIN CR33 // from:
  SAY #38641 /* ~He said I should see, so I would understand, but I don't know what he wanted! He would cut and say "Do you see?" Cut and say "Do you see?"~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 300
END

IF ~~ THEN BEGIN CR34 // from:
  SAY #38643 /* ~I am not a child! I'm as old as <CHARNAME>, and I've... I've seen. I can see...~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 301
END

IF ~~ THEN BEGIN CR35 // from:
  SAY #38645 /* ~I see now... in my head... cut, "yes, I see..."~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 302
END

IF ~Global("ImoenDryad","AR0602",2)
~ THEN BEGIN CR36 // from:
  SAY #38647 /* ~So beautiful! I used to dream of dryads and their beautiful trees. ~ [IMOENJ55] */
  IF ~~ THEN DO ~	SetGlobal("ImoenDryad","AR0602",3)
~ EXTERN ~IDRYAD1~ 14
END

IF ~~ THEN BEGIN CR37 // from:
  SAY #38649 /* ~I used to dream... but he doesn't. Your charms don't work on him anymore, do they?~ */
  IF ~~ THEN EXTERN ~IDRYAD1~ 15
END

IF ~~ THEN BEGIN CR38 // from:
  SAY #38651 /* ~Irenicus...~ */
  IF ~~ THEN EXTERN ~IDRYAD1~ 16
END

IF ~~ THEN BEGIN CR39 // from:
  SAY #38653 /* ~No, death sounds different. He showed me... I spit on his name. I spit on this place.~ */
  IF ~~ THEN EXTERN ~IDRYAD1~ 17
END

IF ~~ THEN BEGIN CR40 // from:
  SAY #38655 /* ~I have learned... something different. So beautiful you are. I almost can't see you. I just want to go home. Oh <CHARNAME>, when can we go home?~ */
  IF ~~ THEN EXIT
END

IF ~Global("Rested","LOCALS",1)
~ THEN BEGIN CR41 // from:
  SAY #38661 /* ~I've got to hand it to you, you sure have some kind of courage to sleep in this place. I would have run screaming a dozen times over if you weren't here.~ [IMOENJ56] */
  IF ~~ THEN REPLY #38662 /* ~We needed rest to succeed. We had to take the chance.~ */ DO ~SetGlobal("Rested","LOCALS",2)
~ GOTO CR42
  IF ~~ THEN REPLY #38663 /* ~It seemed safe enough. No one has taken serious notice of our escape.~ */ DO ~SetGlobal("Rested","LOCALS",2)
~ GOTO CR46
  IF ~~ THEN REPLY #38664 /* ~I know what you mean. This place worries me too.~ */ DO ~SetGlobal("Rested","LOCALS",2)
~ GOTO CR47
END

IF ~~ THEN BEGIN CR42 // from: 41.0
  SAY #38665 /* ~I guess I should be used to sleeping with both eyes open.  I don't deal with this well.  We're alike because of Gorion, but I prefer being in the background.~ */
  IF ~~ THEN REPLY #38666 /* ~Do you remember much about him? My memory is still fuzzy.~ */ GOTO CR43
  IF ~~ THEN REPLY #38667 /* ~Perhaps, though I remember you not hesitating to step up front when needed.~ */ GOTO CR48
  IF ~~ THEN REPLY #38669 /* ~That's your preference. I prefer to lead. Speaking of which, we should get going.~ */ GOTO CR49
END

IF ~~ THEN BEGIN CR43 // from: 48.1 47.0 46.0 42.0
  SAY #38671 /* ~He was a great mage, and supposedly a great adventurer. It's funny; we lived with him for years and Jaheira seems to know more about him.~ */
  IF ~!IsValidForPartyDialog("Jaheira")
~ THEN GOTO CR44
  IF ~IsValidForPartyDialog("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 304
END

IF ~~ THEN BEGIN CR44 // from: 43.0
  SAY #38672 /* ~I guess he was a big friend of the Harpers.  Even got a visit from Khelben "Blackstaff" once.  Real powerful mage.  Talked to Gorion like an equal.~ */
  IF ~~ THEN GOTO CR45
END

IF ~~ THEN BEGIN CR45 // from: 44.0
  SAY #38674 /* ~I wish we could go back to those days, before all this fuss and bother. Before I learned... Well, we've seen so much. Candlekeep seems so small now.~ */
  IF ~~ THEN REPLY #38683 /* ~Yes, but then to me it always did. It was home, but I outgrew it.~ */ GOTO CR51
  IF ~~ THEN REPLY #38684 /* ~There wasn't much to go back to with Gorion gone. ~ */ GOTO CR53
  IF ~~ THEN REPLY #38685 /* ~You have to move on eventually. Speaking of which, we should get going.~ */ GOTO CR49
END

IF ~~ THEN BEGIN CR46 // from: 41.1
  SAY #38686 /* ~Seems like we're not important enough to worry about.  I'm just not up to this like you. We're alike because of Gorion, but I prefer being in the background.~ */
  IF ~~ THEN REPLY #38687 /* ~Do you remember much about him? My memory is still fuzzy.~ */ GOTO CR43
  IF ~~ THEN REPLY #38688 /* ~Perhaps, though I remember you not hesitating to step up front when needed.~ */ GOTO CR48
  IF ~~ THEN REPLY #38689 /* ~That's your preference. I prefer to lead. Speaking of which, we should get going.~ */ GOTO CR49
END

IF ~~ THEN BEGIN CR47 // from: 41.2
  SAY #38690 /* ~Does it?  Then I feel better.  I figured I didn't deal with this as well as you.  We're alike because of Gorion, but I prefer being in the background.~ */
  IF ~~ THEN REPLY #38693 /* ~Do you remember much about him? My memory is still fuzzy.~ */ GOTO CR43
  IF ~~ THEN REPLY #38694 /* ~Perhaps, though I remember you not hesitating to step up front when needed.~ */ GOTO CR48
  IF ~~ THEN REPLY #38695 /* ~That's your preference. I prefer to lead. Speaking of which, we should ge going.~ */ GOTO CR49
END

IF ~~ THEN BEGIN CR48 // from: 47.1 46.1 42.1
  SAY #38697 /* ~Well, when people are in danger, sure. Winthrop taught me how to get out of trouble, but Gorion always said there are times when it's worth getting into it.~ */
  IF ~~ THEN REPLY #38701 /* ~Well, right now we're in danger, and I guess we should work on getting out. Let's go.~ */ GOTO CR49
  IF ~~ THEN REPLY #38702 /* ~Do you remember much about him? My memory is still fuzzy.~ */ GOTO CR43
END

IF ~~ THEN BEGIN CR49 // from: 48.0 47.2 46.2 45.2 42.2
  SAY #38703 /* ~Yeah, you're right. I don't want to spend a second more in this place than I have to. My head still hurts and I keep seeing things in corners and such.~ */
  IF ~~ THEN GOTO CR50
END

IF ~~ THEN BEGIN CR50 // from: 54.0 52.0 49.0
  SAY #38704 /* ~We won't be able to just walk away, you know.  The guy that captured us... he knows about you.  He said something about potential, something about great power.~ */
  IF ~~ THEN GOTO CR64
END

IF ~~ THEN BEGIN CR51 // from: 45.0
  SAY #38705 /* ~Funny that. I was sorry to go, but I couldn't let you wander off on your own, now could I? After Gorion d... died, you needed all the help you could get.~ */
  IF ~~ THEN GOTO CR52
END

IF ~~ THEN BEGIN CR52 // from: 51.0
  SAY #38706 /* ~Not that I'm much help right now. My head still aches and I keep seeing things. Too much death around here, everywhere. It's in everything, even me. ~ */
  IF ~~ THEN GOTO CR50
END

IF ~~ THEN BEGIN CR53 // from: 45.1
  SAY #38707 /* ~We still had friends there.  They were proud, even if they didn't show it.  Winthrop said so.  He always thought Gorion was too stuffy.  I don't know though.~ */
  IF ~~ THEN GOTO CR54
END

IF ~~ THEN BEGIN CR54 // from: 53.0
  SAY #38708 /* ~Ooh, my head still hurts and I keep thinking I see... things in the corners. Too much death here for my liking. It's in everything, even us.~ */
  IF ~~ THEN GOTO CR50
END

IF ~Global("ImoenClone1","LOCALS",1)
~ THEN BEGIN CR55 // from:
  SAY #38734 /* ~What a tortured creature that clone-thing was. She was a copy? A copy of another person?~ [IMOENJ57] */
  IF ~~ THEN DO ~SetGlobal("ImoenClone1","LOCALS",2)
~ GOTO CR56
END

IF ~~ THEN BEGIN CR56 // from: 55.0
  SAY #38735 /* ~I wonder why Irenicus made her?  I doubt he took pleasure in her company; he's beyond that.  He's fascinated with death.  He showed me... over and over...~ */
  IF ~~ THEN EXIT
END

IF ~Global("ImoenLibrary","AR0602",1)
~ THEN BEGIN CR57 // from:
  SAY #38787 /* ~Oh, this reminds me so much of Candlekeep. Dusty old tomes all over, bookcases nearly spilling, it's like we never left...~ [IMOENJ58] */
  IF ~~ THEN DO ~SetGlobal("ImoenLibrary","AR0602",2)
~ GOTO CR58
END

IF ~~ THEN BEGIN CR58 // from: 57.0
  SAY #38788 /* ~But we did, didn't we. <CHARNAME>, I just want to go home again. It doesn't matter where it is, just so long as I can call it home.~ */
  IF ~~ THEN EXIT
END

IF ~Global("ImoenIlyich","LOCALS",1)
~ THEN BEGIN CR59 // from:
  SAY #39761 /* ~Those dwarves that attacked us; I read about them when you were skipping out of lessons back in Candlekeep. ~ [IMOENJ59] */
  IF ~~ THEN DO ~SetGlobal("ImoenIlyich","LOCALS",2)
~ GOTO CR26
END

IF ~False()~ THEN BEGIN CR60 // from:
  SAY #47215 /* ~Something strange up here. Be careful, this place has all manner of dangerous devices in it. I don't know what they do, but I know we would be safer if we shut them off.~ */
  IF ~~ THEN GOTO CR61
END

IF ~~ THEN BEGIN CR61 // from: 60.0
  SAY #47220 /* ~Do you smell that?  Smells like lightning, but indoors?  That can't be right.  I think I remember. Look to the right... the machine making the storm....~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CR62 // from:
  SAY #49035 /* ~Get out of my way! I don't want to fight any of you, I just want to leave!~ */
  IF ~~ THEN EXTERN ~ISHADMT1~ 7
END

IF ~~ THEN BEGIN CR63 // from:
  SAY #56483 /* ~Athkatla?  That's... the City of Coin, right?  A merchant city in Amn.  We come from the Sword Coast, a ways to the north.  Why do you think we're in Athkatla?~ */
  IF ~~ THEN EXTERN ~YOSHIMO~ 42
END

IF ~~ THEN BEGIN CR64 // from: 50.0
  SAY #58492 /* ~<CHARNAME>, say we won't look back.  I don't care if he can "tap the power" or access whatever avatar stuff.  We've gotta get away from all this death.~ */
  IF ~~ THEN REPLY #58493 /* ~I have no intention of looking back.  Our 'host' has proven his evil intent.~ */ GOTO CR65
  IF ~~ THEN REPLY #58494 /* ~If it were just me, I might be interested in what he wants, but I will not have you harmed further.~ */ GOTO CR66
  IF ~~ THEN REPLY #58495 /* ~If he's uncovered something I can use, perhaps I will 'encourage' him to reveal it.~ */ GOTO CR67
END

IF ~~ THEN BEGIN CR65 // from: 64.0
  SAY #58496 /* ~Means a lot to hear that. I can't stand all these shadows...~ */
  IF ~~ THEN JOURNAL #843 /* ~Does my captor know a way for me to gain power?

Imoen said something odd. Our captor apparently has some insight into my... condition as a Child of Bhaal.  He supposedly mentioned a means of allowing me to tap that power.  I am in no position to question him at the moment, but I will keep it in mind for the future.  ~ */ FLAGS 128 EXIT
END

IF ~~ THEN BEGIN CR66 // from: 64.1
  SAY #58497 /* ~I appreciate that, but I doubt he meant you any good either. Didn't spare you the knives any more than me. Come on, I gotta get away from all these shadows.~ */
  IF ~~ THEN JOURNAL #843 /* ~Does my captor know a way for me to gain power?

Imoen said something odd. Our captor apparently has some insight into my... condition as a Child of Bhaal.  He supposedly mentioned a means of allowing me to tap that power.  I am in no position to question him at the moment, but I will keep it in mind for the future.  ~ */ FLAGS 128 EXIT
END

IF ~~ THEN BEGIN CR67 // from: 64.2
  SAY #58498 /* ~Let it go, please?  Whoever he is, and whatever he can do, above it all he's a vile bastard that's hurt us both. Come on, I gotta get away from all this death.~ */
  IF ~~ THEN JOURNAL #843 /* ~Does my captor know a way for me to gain power?

Imoen said something odd. Our captor apparently has some insight into my... condition as a Child of Bhaal.  He supposedly mentioned a means of allowing me to tap that power.  I am in no position to question him at the moment, but I will keep it in mind for the future.  ~ */ FLAGS 128 EXIT
END

IF ~~ THEN BEGIN CR68 // from: 12.0
  SAY #58502 /* ~He said something like "releasing power within you so it could be used," but if it means taking part in horrible things... I don't like this place.  Can we go?~ */
  IF ~~ THEN JOURNAL #843 /* ~Does my captor know a way for me to gain power?

Imoen said something odd. Our captor apparently has some insight into my... condition as a Child of Bhaal.  He supposedly mentioned a means of allowing me to tap that power.  I am in no position to question him at the moment, but I will keep it in mind for the future.  ~ */ FLAGS 128 EXIT
END

IF ~~ THEN BEGIN CR69 // from: 15.0
  SAY #58503 /* ~<CHARNAME>, I don't care if he could make us three ogres strong, I have to get out of this place.  It bothers me.  Makes me think I see... things.~ */
  IF ~~ THEN JOURNAL #843 /* ~Does my captor know a way for me to gain power?

Imoen said something odd. Our captor apparently has some insight into my... condition as a Child of Bhaal.  He supposedly mentioned a means of allowing me to tap that power.  I am in no position to question him at the moment, but I will keep it in mind for the future.  ~ */ FLAGS 128 EXIT
END

IF ~~ THEN BEGIN CR70 // from: 28.0 27.0
  SAY #58504 /* ~As if I need another reminder.  <CHARNAME>, I don't care what power this guy thinks he can tap in you, he's just sick to the core. We can't ever look back.~ */
  IF ~~ THEN JOURNAL #843 /* ~Does my captor know a way for me to gain power?

Imoen said something odd. Our captor apparently has some insight into my... condition as a Child of Bhaal.  He supposedly mentioned a means of allowing me to tap that power.  I am in no position to question him at the moment, but I will keep it in mind for the future.  ~ */ FLAGS 128 EXIT
END

IF ~~ THEN BEGIN TS40
  SAY ~Awww... So sweet. Nope, of course he does not! And it is cool to see big <PRO_BROTHERSISTER> is blushing.~
  IF ~~ THEN REPLY ~Imoen! Have the decency to look away!~ GOTO TS41
END

IF ~~ THEN BEGIN TS41
  SAY ~(*Giggles*) What! And miss all the hot stuff? No way in Nine Hells! I have spent too long watching a crack on my ceiling as entertainment!~
  IF ~~ THEN EXTERN ~SIMEJ~ 80
END

IF ~~ THEN BEGIN TS42
  SAY ~And who's to say I am a maiden? Hey, I am almost as old as <CHARNAME> is, and I did not have Gorion on my back, so once I...~
  IF ~~ THEN REPLY ~(*Close your ears with your palms*)... LA-LA-LA! I am not listening! LA-LA-LA!~ GOTO TS43
  IF ~~ THEN REPLY ~Go on, Imoen, I am extremely interested to know which old stuffy mage or dusty librarian you graced with your favors.~ GOTO TS44
  IF ~~ THEN REPLY ~IMOEN!~ GOTO TS45
END

IF ~~ THEN BEGIN TS43
  SAY ~(*Laughs and makes faces*)~
  IF ~~ THEN EXTERN ~SIMEJ~ 81
END

IF ~~ THEN BEGIN TS44
  SAY ~(*Pouts*) 'Twas no stuffy mage! 'Twas that awesome looking traveller who came through Candlekeep on that stormy night... It was a pitch-black. The thunder was shuttering the skies, the moon was showing her face from behind the clouds specifically to make the world even scarier, and the wind was blowing with the force unknown before.~
  IF ~~ THEN EXTERN ~SIMEJ~ 82
END

IF ~~ THEN BEGIN TS45
  SAY ~(*Pouts*) Imoen! I know I am Imoen. You NEVER give me a chance to tell ANYTHING! ~
  IF ~~ THEN EXTERN ~SIMEJ~ 83
END

IF ~~ THEN BEGIN VP_FIX1
 SAY ~We've just had some very bad things done to us, but I don't believe the plan was to send us to the northern lands... Let's proceed warily.~
 IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ243
 IF ~!InParty("Minsc")~ THEN EXIT
END

IF ~~ THEN BEGIN VP_FIX4
 SAY ~We... we are back here! No... no... please no... let this be a dream! <CHARNAME>, please tell me that this is a dream!?~
 IF ~~ THEN REPLY ~I wish I could give you comfort and say that this is indeed a dream, Imoen, but I would be lying. This is all too real. I can promise you that no one is going to hurt you again and that we are going to get out of here. Do you understand this?~ GOTO VP_FIX5
 IF ~~ THEN REPLY ~Imoen, I too am disappointed at finding ourselves back here, but we will be free believe me, we will!~ GOTO VP_FIX5
 IF ~~ THEN REPLY ~Together we have faced worse than this, Imoen, and we have come through. Look around you, we have friends to aid us, good reliable friends and with their help we will be out of here very soon. Trust them and me, Imoen.~ GOTO VP_FIX5
 IF ~~ THEN REPLY ~Pull yourself together, Imoen! We need all our wits about us if we are to flee this hell hole in one piece, any more hysterical outbursts from you and I shall leave you to make your own way out!~ GOTO VP_FIX5
END

IF ~~ THEN BEGIN VP_FIX5
 SAY ~I am sorry, <CHARNAME>. A few moments ago we were celebrating our freedom, only to find ourselves trapped in this... this horrible place again! Please, please let us get moving and just get out of here, quickly.~
 IF ~True()~ THEN EXTERN ~HROTHJ~ 369
 IF ~InParty("Sharteel")~ THEN EXTERN ~SHARTJ~ comebck1
 IF ~InParty("Dar")~ THEN EXTERN ~DARJ~ 5
 IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ246
 IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ534
END

IF WEIGHT #-63 ~Global("TeleportDialog","GLOBAL",2)~ THEN BEGIN VP_FIX6
 SAY ~Are... are we free <CHARNAME>? Dare we hope? This room it feels different somehow.~
 IF ~True()~ THEN REPLY ~This place does feel different, but we should not get our hopes up nor let our guard down because of the way we feel. One thing is for sure, we will not discover anything standing around here so I suggest we move quickly and prepare ourselves for whoever or whatever lies in wait at the bottom of these stairs.~ GOTO VP_FIX7
 IF ~InParty("Sharteel")~ THEN DO ~SetGlobal("TeleportDialog","GLOBAL",3)~ EXTERN ~SHARTJ~ nejopen1
 IF ~InParty("Minsc")~ THEN DO ~SetGlobal("TeleportDialog","GLOBAL",3)~ EXTERN ~MINSCJ~ NEJ265
 IF ~InParty("Jaheira")~ THEN DO ~SetGlobal("TeleportDialog","GLOBAL",3)~ EXTERN ~JAHEIRAJ~ NEJ555
END

IF ~~ THEN BEGIN VP_FIX7
 SAY ~Oh... <CHARNAME>.~
 IF ~~ THEN DO ~SetGlobal("TeleportDialog","GLOBAL",3)~ EXIT
END

IF WEIGHT #-1 ~Global("VP_BHrothgar","LOCALS",2)~ THEN BEGIN VP_FIX8
 SAY ~Hrothgar, can I ask why you have so much junk in your otherwise nice house?~
 IF ~~ THEN DO ~SetGlobal("VP_BHrothgar","LOCALS",3)~ EXTERN ~HROTHJ~ 103
END

IF ~~ THEN BEGIN VP_FIX9
 SAY ~Stories you say, but how many times can you hear a story before you get fed up with it and no longer wish to hear it ever again? Get what I mean?~
 IF ~~ THEN EXTERN ~HROTHJ~ 104
END

IF ~~ THEN BEGIN VP_FIX10
 SAY ~Wow, that is so sad Hrothgar, and I bet you don't even know why?~
 IF ~~ THEN EXTERN ~HROTHJ~ 105
END

IF ~~ THEN BEGIN VP_FIX11
 SAY ~Because your house is full of things from the past. Looks to me like you surround yourself with your ju... shall we call them keepsakes, because your life is no longer as exciting as it was when you were young. You have to keep these things to remind you of exciting past times. Right Hrothgar?~
 IF ~~ THEN EXTERN ~HROTHJ~ 106
END

IF ~~ THEN BEGIN VP_FIX12
 SAY ~Hey, don't go getting so uppity. I never said you were old, maybe just a little lonely. Did you never think to marry, bring a little romance and... well... a different sort of excitement to your life?~
 IF ~~ THEN EXTERN ~HROTHJ~ 107
END

IF ~~ THEN BEGIN VP_FIX13
 SAY ~Well, was there such a lady?~
 IF ~~ THEN EXTERN ~HROTHJ~ 108
END

IF ~~ THEN BEGIN VP_FIX14
 SAY ~Wow, I didn't expect to hear your life story Hrothgar. It could definitely do with some more action, what do you say? Maybe this trip will put some into it for you.~
 IF ~~ THEN EXTERN ~HROTHJ~ 111
END

IF WEIGHT #-2 ~Global("VP_BAccalia","LOCALS",2)~ THEN BEGIN VP_FIX15
 SAY ~Hiya Ace. What you doing?~
 IF ~~ THEN DO ~SetGlobal("VP_BAccalia","LOCALS",3)~ EXTERN ~ACCALIJ~ 12
END

IF ~~ THEN BEGIN VP_FIX16
 SAY ~Right'o' Accalia, just thought Ace sounded a bit more pally. What you doing anyway?~
 IF ~~ THEN EXTERN ~ACCALIJ~ 13
END

IF ~~ THEN BEGIN VP_FIX17
 SAY ~Aww... very funny. I can see you are writing but what are you writing?~
 IF ~~ THEN EXTERN ~ACCALIJ~ 14
END

IF ~~ THEN BEGIN VP_FIX18
 SAY ~Oh, a journal... boring. Let me tell you what you should write, help you make it less boring...~
 IF ~~ THEN EXTERN ~ACCALIJ~ 15
END

IF ~~ THEN BEGIN VP_FIX19
 SAY ~I was going to say... what was that... all of us... you mean I am in your journal? You have to let me read it now Accalia! Please, please can I read it?~
 IF ~~ THEN EXTERN ~ACCALIJ~ 16
END

IF ~~ THEN BEGIN VP_FIX20
 SAY ~Then you read it to me, you only have to read the parts about me, to me. I have never been written about before. Tell me, you have not forgotten to write how captivating and beguiling young Imoen is, how she turns heads where ever she walks?~
 IF ~~ THEN EXTERN ~ACCALIJ~ 17
END

IF ~~ THEN BEGIN VP_FIX21
 SAY ~Yeah, whatever, but you could still make it more colourful, by using lots of bright descriptive words.~
 IF ~~ THEN GOTO VP_FIX22
END

IF ~~ THEN BEGIN VP_FIX22
 SAY ~You could say for instance, *The sun caught Imoen's hair, causing it to shine lustrously, as she made ready to loosen an arrow from her bow,* or...~
 IF ~~ THEN GOTO VP_FIX23
END

IF ~~ THEN BEGIN VP_FIX23
 SAY ~*Imoen's young svelte body flowed gracefully into the shadows as she prepared to scout ahead* or even...~
 IF ~~ THEN EXTERN ~ACCALIJ~ 18
END

IF ~~ THEN BEGIN VP_FIX24
 SAY ~(*Muttering under her breath as she walks away*)... Hmph! She needn't think I won't find out what she has written, because I will, you can bet on it! ~
 IF ~~ THEN EXIT
END

IF WEIGHT #-3 ~Global("VP_BDar","LOCALS",2)~ THEN BEGIN VP_FIX25
 SAY ~Does this snow ever go away Dar? It looks to me like it is always here.~
 IF ~~ THEN DO ~SetGlobal("VP_BDar","LOCALS",3)~ EXTERN ~DARJ~ 21
END

IF ~~ THEN BEGIN VP_FIX26
 SAY ~But it is so... so horribly cold! I thought it looked real pretty at first, but now I find it cold and wet, and it seeps through my boots, making my feet cold and wet too.~
 IF ~~ THEN EXTERN ~DARJ~ 22
END

IF ~~ THEN BEGIN VP_FIX27
 SAY ~(*Stamping her feet in a newly fallen area of snow*) It makes such a delicious sound Dar, like stomping on beetles, all crunchy. Here listen! (*She stamps her feet again to demonstrate what she means*). See what I mean.~
 IF ~~ THEN EXTERN ~DARJ~ 23
END

IF ~~ THEN BEGIN VP_FIX28
 SAY ~Of course I have, well, maybe not so much of it in all one place. There was this island we were once transported to when some mage asked us to find a cloak for him, but... but that seems such a long time ago now. Anyhow, we were not there very long.~
 IF ~~ THEN EXTERN ~DARJ~ 24
END

IF ~~ THEN BEGIN VP_FIX29
 SAY ~But that is not a fun way to walk Dar, no crunchy squashed beetle sounds!~
 IF ~~ THEN EXTERN ~DARJ~ 25
END

IF ~~ THEN BEGIN VP_FIX30
 SAY ~Was I complaining? I had not noticed, never mind. Still, I much prefer to be walking this cold place and be free, wet feet and all, than be in that horrible place we have just left. (*Sighs*) I suppose my feet will dry out eventually.~
 IF ~~ THEN EXIT
END

IF WEIGHT #-4 ~Global("VP_BMinsc","LOCALS",2)~ THEN BEGIN VP_FIX31
 SAY ~We have travelled some rough roads together Minsc, but this must be the strangest. I don't think I will ever see Candlekeep again. Damn Irenicus!~
 IF ~~ THEN DO ~SetGlobal("VP_BMinsc","LOCALS",3)~ EXTERN ~MINSCJ~ NEJ270
END

IF ~~ THEN BEGIN VP_FIX32
 SAY ~I don't want you to be sad Minsc, you have lots to be happy about. Here, in this place Dynaheir is not dead, but if we do get home you will be sad and have to avenge her being dead again.~
 IF ~~ THEN EXTERN ~MINSCJ~ NEJ271
END

IF ~~ THEN BEGIN VP_FIX33
 SAY ~No Minsc, you can't do that! You don't belong here anymore than I do. It's all so unfair! That damn portal dragging us here, I don't care a bit about Hrothgar and his big old evil! I just want to go home, feel the sun on my face instead of trudging through all this cold, horrible snow!~
 IF ~~ THEN EXTERN ~MINSCJ~ NEJ272
END

IF ~~ THEN BEGIN VP_FIX34
 SAY ~Thank you Minsc. I think a big strong arm is just what I need at the moment, only don't go telling the others, they still think of me as the baby here as it is.~
 IF ~~ THEN EXTERN ~MINSCJ~ NEJ273
END

IF ~~ THEN BEGIN VP_FIX35
 SAY ~Right you are Minsc.~
 IF ~~ THEN EXIT
END

IF WEIGHT #-5 ~Global("VP_BPC","LOCALS",2)~ THEN BEGIN NEJ106
 SAY ~(*Tossing a snow ball at you*)... Here <CHARNAME>, catch!~
 IF ~~ THEN REPLY ~For goodness sake Imoen, grow up!~ DO ~SetGlobal("VP_BPC","LOCALS",3)~ GOTO NEJ107
 IF ~~ THEN REPLY ~What the...? Imoen, this is not the time to be lobbing snowballs!~ DO ~SetGlobal("VP_BPC","LOCALS",3)~ GOTO NEJ107
 IF ~~ THEN REPLY ~(*Making and tossing a snowball of your own*)... Catch yourself Imoen. It has been a long time since we last enjoyed such a game. Where did the years go?~ DO ~SetGlobal("VP_BPC","LOCALS",3)~ GOTO NEJ108
END

IF ~~ THEN BEGIN NEJ107
 SAY ~Aaaw... come on <CHARNAME>, lighten up. You used to throw snowballs at me faster than I could make them.~
 IF ~~ THEN REPLY ~We were children then Imoen, without a thought for tomorrow. We left our childhood behind the day we left Candlekeep, now we do not even know if we have a tomorrow.~ GOTO NEJ112
 IF ~~ THEN REPLY ~That was then Imoen. Silly games we played as children may get us killed today, so, cease this foolishness now.~ GOTO NEJ113
 IF ~~ THEN REPLY ~We are not the same innocent children that we were back then Imoen, nor can we ever be again., so let us just concentrate on staying alive for at least another day shall we.~ GOTO NEJ113
END

IF ~~ THEN BEGIN NEJ108
 SAY ~(*Picking up a handfull of fresh snow*)... Sometimes it is difficult to remember the good parts of those years <CHARNAME>. Candlekeep and Gorion, all memories that I do not want to ever loose and yet, I am so afraid that in time I will.~
 IF ~~ THEN GOTO NEJ109
END

IF ~~ THEN BEGIN NEJ109
 SAY ~We have come so far and learnt so much, how can we ever be the same? You discover your father to be the god of murder, you have been hunted by and forced to fight and kill Sarevok, your own power crazed brother.~
 IF ~~ THEN GOTO NEJ110
END

IF ~~ THEN BEGIN NEJ110
 SAY ~I have no brother nor sister, so I can only imagine how awful that had to have been for you <CHARNAME>, not that Sarevok would have made a very nice brother anyway, but still, to have to kill him.~
 IF ~~ THEN GOTO NEJ111
END

IF ~~ THEN BEGIN NEJ111
 SAY ~Now, thanks to this Irenicus, we land up... well, wherever it is we are now! It is just not fair <CHARNAME>! I want my... our life back the way it was before all this child of Bhaal palaver!~
 IF ~~ THEN REPLY ~What is past is past Imoen, for now we have to concentrate on surviving this cold inhospitable land.~ GOTO NEJ116
 IF ~~ THEN REPLY ~It is fruitless to dwell on what has been. We could be here for a very long time, so I suggest you get used to it and make the most of the here and now.~ GOTO NEJ116
 IF ~~ THEN REPLY ~All good memories are worth hanging onto, but that is all they are, memories. Whereas the past will always be with us, we have a future to look to now, even if fate decrees that our futures now lie in this strange land.~ GOTO NEJ117
 IF ~~ THEN REPLY ~Come Imoen this is not the time to relive old memories, and please, put that snowball down, I am quite wet enough thank you.~ GOTO NEJ117
END

IF ~~ THEN BEGIN NEJ112
 SAY ~(*Picking up a handfull of fresh snow*)... Then all the more reason to enjoy today, come <CHARNAME>, we may not be children any more but surely some of those memories are worth hanging onto and reliving, like our excitement at seeing the first snow of winter, right?~
 IF ~~ THEN REPLY ~What is past is past Imoen, for now we have to concentrate on surviving this cold inhospitable land.~ GOTO NEJ116
 IF ~~ THEN REPLY ~It is fruitless to dwell on what has been. We could be here for a very long time, so I suggest you get used to it and make the most of the here and now.~ GOTO NEJ116
 IF ~~ THEN REPLY ~All good memories are worth hanging onto, but that is all they are, memories. Whereas the past will always be with us, we have a future to look to now, even if fate decrees that our futures now lie in this strange land.~ GOTO NEJ117
 IF ~~ THEN REPLY ~Come Imoen this is not the time to relive old memories, and please, put that snowball down, I am quite wet enough thank you.~ GOTO NEJ117
END
	
IF ~~ THEN BEGIN NEJ113
 SAY ~(*Picking up a handfull of fresh snow*)... I know <CHARNAME>, but it feels so good to be walking free again.~
 IF ~~ THEN GOTO NEJ114
END

IF ~~ THEN BEGIN NEJ114
 SAY ~The snow sort of reminded me of the excitement we felt at seeing the first snow of winter when we were children at Candlekeep.~
 IF ~~ THEN GOTO NEJ115
END

IF ~~ THEN BEGIN NEJ115
 SAY ~For a moment I forgot Irenicus and all those horrible things he did to us. I just thought to relive some of those memories would cheer us both.~
 IF ~~ THEN REPLY ~What is past is past Imoen, for now we have to concentrate on surviving this cold inhospitable land.~ GOTO NEJ116
 IF ~~ THEN REPLY ~It is fruitless to dwell on what has been. We could be here for a very long time, so I suggest you get used to it and make the most of the here and now.~ GOTO NEJ116
 IF ~~ THEN REPLY ~All good memories are worth hanging onto, but that is all they are, memories. Whereas the past will always be with us, we have a future to look to now, even if fate decrees that our futures now lie in this strange land.~ GOTO NEJ117
 IF ~~ THEN REPLY ~Come Imoen this is not the time to relive old memories, and please, put that snowball down, I am quite wet enough thank you.~ GOTO NEJ117
END

IF ~~ THEN BEGIN NEJ116
 SAY ~You never used to take life so seriously <CHARNAME>, if this is what happens when a person grows up, then... then I want no part of it.~
 IF ~~ THEN REPLY ~Imoen, promise me that you will never change? You are the one person in my life that I can rely on to be constant, you keep your memories, no one will force you to grow up if you do not want to.~ GOTO NEJ117
 IF ~~ THEN REPLY ~Whatever Imoen! One of us has to be the adult in all this lest nothing would be achieved.~ GOTO NEJ118
END

IF ~~ THEN BEGIN NEJ117
 SAY ~(*Tosses the snowball at you*)... Then I guess it can not hurt to make a new memory and besides, there is no use in letting a good snowball go to waste now is there?~
 IF ~~ THEN REPLY ~(*Dodging Imoen's snowball*) Imoen! I asked you to put that snowball down. Now, no more childish behaviour or I will leave you here to enjoy the snow on your own! If I behaved as you nothing would ever be achieved!~ GOTO NEJ118
 IF ~~ THEN REPLY ~(*Dodging Imoen's snowball*) No matter how the years pass, to me you will always be Imoen, the innocent rogue with a big heart, and a friend that I know will always put a smile on my face no matter how bad things get. Come my friend, no more snowballs, we are not safe here.~ GOTO NEJ119
 IF ~~ THEN REPLY ~(*Dodging Imoen's snowball*) Imoen! I despair of you. No matter, let us move on before all this ruckuss gets us noticed.~ GOTO NEJ119
END

IF ~~ THEN BEGIN NEJ118
 SAY ~Maybe not <CHARNAME>, but we would have a heck of a lot more fun.~
 IF ~OR(2)
Dead("Jaheira")
!InParty("Jaheira")~ THEN EXIT
 IF ~!Dead("Jaheira")
InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ561
END

IF ~~ THEN BEGIN NEJ119
 SAY ~You got lucky there, bet I get you with my next one!~
 IF ~OR(2)
Dead("Jaheira")
!InParty("Jaheira")~ THEN EXIT
 IF ~!Dead("Jaheira")
InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ561
END

IF ~~ THEN BEGIN VP_FIX36
 SAY ~And maybe you wouldn't be so grouchy if you put less starch in your knickers Jaheira... (*grinning*) then perhaps Khalid would smile more and stutter less!~
 IF ~~ THEN EXTERN ~JAHEIRAJ~ NEJ562
END

IF ~~ THEN BEGIN VP_FIX37
 SAY ~Well... you should listen to yourself sometimes! You fuss around us like an old mother hen, when in fact you are neither a mother nor an old bird. Lighten up, live your own life and stop finding fault with everyone elses.~
 IF ~~ THEN EXTERN ~JAHEIRAJ~ NEJ563
END

IF ~~ THEN BEGIN VP_FIX38
 SAY ~Why not say faults Jaheira, after all that is what you mean isn't it? If it is my nature to be as I am then surely nature is also responsible for what you call my faults? Now, remind me... who it is that believes we should not mess with nature?~
 IF ~~ THEN EXTERN ~JAHEIRAJ~ NEJ564
END

IF ~~ THEN BEGIN VP_FIX39
 SAY ~Fine by me. I can't think of a more fun way to learn, at least when it comes to talking about a thing, I will know what I am talking about, having *experienced* it.~
 IF ~~ THEN EXTERN ~JAHEIRAJ~ NEJ565
END

IF WEIGHT #-6 ~Global("VP_BAccalia","LOCALS",5)~ THEN BEGIN VP_FIX40
 SAY ~(*Opening and looking at the book in her hands*)... Now let's see what that priest has written that she wants kept so darn private...~
 IF ~~ THEN DO ~SetGlobal("VP_BAccalia","LOCALS",6)~ GOTO VP_FIX41
END

IF ~~ THEN BEGIN VP_FIX41
 SAY ~(*She turns a couple of pages*)... Hmp... *Today Hrothgar... Hrothgar said... Hrothgar... Hrothgar, Hrothgar, and more Hrothgar!~
 IF ~~ THEN GOTO VP_FIX42
END

IF ~~ THEN BEGIN VP_FIX42
 SAY ~(*Giggles*) It Looks like our lady priest has got a crush on Hrothgar and him being so old... yuck!~
 IF ~InParty("Jaheira")~ THEN GOTO VP_FIX43
 IF ~!InParty("Jaheira")
InParty("Minsc")~ THEN GOTO VP_FIX45
 IF ~!InParty("Jaheira")
!InParty("Minsc")~ THEN GOTO VP_FIX47
END

IF ~~ THEN BEGIN VP_FIX43
 SAY ~(*She turns another page*)... Aha... now what's this... *Jaheira seemed a tad cranky today*.~
 IF ~~ THEN GOTO VP_FIX44
END

IF ~~ THEN BEGIN VP_FIX44
 SAY ~(*Giggles louder*)... You think she'd know by know that Jaheira is always cranky, in fact Jaheira is another name for cranky.~
 IF ~InParty("Minsc")~ THEN GOTO VP_FIX45
 IF ~!InParty("Minsc")~ THEN GOTO VP_FIX47
END

IF ~~ THEN BEGIN VP_FIX45
 SAY ~(*She turns another page*)... *I wish Tempus would endow me with the means to cure the gentle ranger's head... but perhaps then he would no longer be Minsc and his friends would not thank me for it*.~
 IF ~~ THEN GOTO VP_FIX46
END

IF ~~ THEN BEGIN VP_FIX46
 SAY ~(*Hotly*) You can keep your hands off our Minsc lady, we love him just as he is!~
 IF ~~ THEN GOTO VP_FIX47
END

IF ~~ THEN BEGIN VP_FIX47
 SAY ~(*She turns another page*)... Now this is more like it... *Imoen, a charming enough rogue*... she actually likes me well I'll be darned...~
 IF ~~ THEN GOTO VP_FIX48
END

IF ~~ THEN BEGIN VP_FIX48
 SAY ~(*She reads on*)... *Should really learn to grow up and realise life out here is not a playground*... What!! Why the...~
 IF ~~ THEN EXTERN ~ACCALIJ~ 25
END

IF ~~ THEN BEGIN VP_FIX49
 SAY ~(*Quickly stuffing her hands behind her back*) Er... no Accalia.~
 IF ~~ THEN EXTERN ~ACCALIJ~ 26
END

IF ~~ THEN BEGIN VP_FIX50
 SAY ~You do that Accalia... (*Smirking*) Why not ask Hrothgar, he might know?~
 IF ~~ THEN EXTERN ~ACCALIJ~ 27
END

IF ~~ THEN BEGIN VP_FIX51
 SAY ~(*Quickly holding out her hands for the clasp, dropping the book as she does*) It's beautiful Accalia, thank... ooops!!~
 IF ~~ THEN EXTERN ~ACCALIJ~ 28
END

IF ~~ THEN BEGIN VP_FIX52
 SAY ~(*Blushing*) What this book... is it yours? I only just found it and haven't had time to find out who it belongs to yet and I certainly have not had enough time to read it. (*Picks up the book and gives it to Accalia.*)~
 IF ~~ THEN EXTERN ~ACCALIJ~ 29
END

IF ~~ THEN BEGIN VP_FIX53
 SAY ~Right you are Accalia. Thank you for the clasp and I'm glad you got your journal back.~
 IF ~~ THEN EXTERN ~ACCALIJ~ 30
END

IF ~~ THEN BEGIN VP_FIX54
 SAY ~I would never read your journal Accalia, as you said, it's private.~
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN VP_FIX55
 SAY ~That was scary!!!~
 IF ~True()~ THEN EXTERN ~HROTHJ~ 113
 IF ~InParty("Dar")
!Dead("Dar")~ THEN EXTERN ~DARJ~ 26
 IF ~InParty("Accalia")
!Dead("Accalia")~ THEN EXTERN ~ACCALIJ~ 31
END

IF ~~ THEN BEGIN VP_FIX56
 SAY ~Then let's get it over with. We can debate the virtue of our decision later over a couple of mugs.~
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN VP_FIX57
 SAY ~Elisia-of-the-Sky's-Mirror... Elisia-of-the-Lake... Sea spirits are such glorious creatures and have such beautiful names.~
 IF ~~ THEN GOTO VP_FIX58
END

IF ~~ THEN BEGIN VP_FIX58
 SAY ~I think I may change my name to Imoen-of-the... Imoen-of-the what? Mmm, I am going to have to think some more on this one, after all, it has to reflect the colour of my skin or maybe even my hair.~
 IF ~True()~ THEN EXIT
 IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ587
END

IF ~~ THEN BEGIN VP_FIX59
 SAY ~And how should we know you Jaheira, Jaheira-of-the-Over-Starched-Knickers? (*Giggling uncontrollably*) Oh yes, I like that one, very apt and one I will have to remember.~
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN VP_FIX60
 SAY ~(*Giggles*) Nah, what gave you that idea?~
 IF ~~ THEN EXTERN ~JAHEIRAJ~ NEJ588
END

IF ~~ THEN BEGIN VP_FIX61
 SAY ~Well, at least we won't be bored.~
 IF ~~ THEN DO ~ActionOverride("AcolyteD",Enemy())~ EXIT
END

IF ~~ THEN BEGIN VP_FIX62
 SAY ~Are you sure Arundel is playing with a full set Hrothgar? Could he not be getting senile, he seemed pretty old to me?~
 IF ~~ THEN EXTERN ~HROTHJ~ 130
END

IF ~~ THEN BEGIN VP_FIX63
 SAY ~Please tell me that is not a real dragon, because if it is some beast a mage has petrified, I really do not want to be inside its belly should someone wake it up again?~
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN VP_FIX64
 SAY ~(*Screwing up her nose*) Ugg! What a horrible thought, those big lizards killing people to feed to slimy snake men!~
 IF ~True()~ THEN EXTERN ~HROTHJ~ 273
 IF ~InParty("Accalia")
!Dead("Accalia")~ THEN EXTERN ~ACCALIJ~ 59
END

IF ~~ THEN BEGIN VP_FIX65
 SAY ~Hey, they're already waiting for us... why give 'em more time I say?~
 IF ~True()~ THEN EXTERN ~HROTHJ~ 274
 IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ292
 IF ~InParty("Accalia")
!Dead("Accalia")~ THEN EXTERN ~ACCALIJ~ 60
 IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ628
END

IF ~~ THEN BEGIN VP_FIX66
 SAY ~We'll keep an eye on the big fella. He's family, and we need him around.~
 IF ~~ THEN EXTERN ~MINSCJ~ NEJ293
END

IF ~~ THEN BEGIN VP_FIX67
 SAY ~Yeah. I hate to tell you this big fella, but she's evil.~
 IF ~~ THEN EXTERN ~MINSCJ~ NEJ296
END

IF WEIGHT #-7 ~Global("VP_YxunomeiDead","GLOBAL",1)~ THEN BEGIN VP_FIX68
 SAY ~What the hell was that thing?~
 IF ~~ THEN DO ~SetGlobal("VP_YxunomeiDead","GLOBAL",2)~ EXTERN ~HROTHJ~ 148
END

IF ~~ THEN BEGIN VP_FIX69
 SAY ~(*Smiling a wan smile*) At least we won't be bored.~
 IF ~True()~ THEN EXTERN ~HROTHJ~ 280
 IF ~InParty("Dar")
!Dead("Dar")~ THEN EXTERN ~DARJ~ 35
 IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ297
 IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ595
END

IF ~~ THEN BEGIN VP_FIX70
 SAY ~The nearest Inn I can think of is in Kuldahar, shall we go?~
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN VP_FIX87
 SAY ~Wow... that was some move Hrothgar! Uh... care to tell us how you did it?~
 IF ~True()~ THEN EXTERN ~HROTHJ~ 196
 IF ~InParty("Dar")~ THEN EXTERN ~DARJ~ 43
 IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ314
 IF ~InParty("Accalia")~ THEN EXTERN ~ACCALIJ~ 38
 IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ611
END

IF ~~ THEN BEGIN VP_FIX88
 SAY ~I thought we were helping you Hrothgar? Is there really some evil here that you are working with, or are you doing this for Irenicus? Is... is he here somewhere even now laughing at our foolishness in trusting you? Hrothgar, tell me... is he here waiting to torture us some more?~
 IF ~~ THEN EXTERN ~HROTHJ~ 196
END

IF ~~ THEN BEGIN VP_FIX89
 SAY ~It's... it's not like we are being asked to kill real people is it? I mean they were real people once, brave people, but now they are just restless spirits... right?~
 IF ~True()~ THEN DO ~SetGlobal("VP_Astrolabe_Talks","GLOBAL",2)
RealSetGlobalTimer("VP_Accalia_Hrothgar","GLOBAL",10)~ EXIT
 IF ~InParty("Sharteel")
!Dead("Sharteel")~ THEN EXTERN ~SHARTJ~ kaylsold
 IF ~InParty("Accalia")
!Dead("Accalia")~ THEN EXTERN ~ACCALIJ~ 40
 IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ613
 IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ315
 IF ~InParty("Dar")
!Dead("Dar")~ THEN EXTERN ~DARJ~ 44
END

IF ~~ THEN BEGIN VP_FIX90
 SAY ~You're not alone there Dar. Jaheira is always telling me to be wary and to maintain balance within myself, but do you know what Dar... no matter how wary I am I still find I fall over at times... (*giggles*)... and all this snow doesn't do much for a girl's balance either.~
 IF ~True()~ THEN DO ~SetGlobal("VP_Astrolabe_Talks","GLOBAL",2)
RealSetGlobalTimer("VP_Accalia_Hrothgar","GLOBAL",10)~ EXIT
 IF ~InParty("Sharteel")
!Dead("Sharteel")~ THEN EXTERN ~SHARTJ~ kaylsold
 IF ~InParty("Hrothgar")
!Dead("Hrothgar")~ THEN EXTERN ~HROTHJ~ 206
 IF ~InParty("Accalia")
!Dead("Accalia")~ THEN EXTERN ~ACCALIJ~ 40
 IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ614
END

IF ~~ THEN BEGIN VP_FIX91
 SAY ~When we meet these heroes Minsc, you just have to remember what Kaylessa said, that they are the twisted spirits of what once were heroes. We are putting to rest that which should have been allowed to die a long time ago.~
 IF ~True()~ THEN EXTERN ~HROTHJ~ 208
 IF ~InParty("Dar")
!Dead("Dar")~ THEN EXTERN ~DARJ~ 46
END

IF ~~ THEN BEGIN VP_FIX92
	SAY ~I hope this works <CHARNAME>, I really want out of here.~
 IF ~True()~ THEN DO ~SetGlobal("VP_Astrolabe_Talks","GLOBAL",4)
ClearAllActions()
StartCutSceneMode()
StartCutscene("VPCutH07")~ EXIT
 IF ~InParty("Accalia")~ THEN EXTERN ~ACCALIJ~ 42
 IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ317
 IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ616
END

IF ~~ THEN BEGIN VP_FIX93
	SAY ~I don't care two hoots about balance Jaheira! It can be tipped upside down and standing on its head for all I care... I just want to go home.~
 IF ~True()~ THEN DO ~SetGlobal("VP_Astrolabe_Talks","GLOBAL",4)
ClearAllActions()
StartCutSceneMode()
StartCutscene("VPCutH07")~ EXIT
 IF ~InParty("Accalia")~ THEN EXTERN ~ACCALIJ~ 42
 IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ317
END

IF ~~ THEN BEGIN VP_FIX94
 SAY ~Now hold on one darn minute Accalia! Who are you calling coward? You know nothing of our lives before we were thrown here... nothing... do you hear me, nothing?~
 IF ~~ THEN GOTO VP_FIX95
END

IF ~~ THEN BEGIN VP_FIX95
 SAY ~So before you begin to judge who is and who is not a coward ask yourself, is there really any point to us staying here, will our aid make a difference or are we wasting time trying to believe that it will?~
 IF ~InParty("Accalia")~ THEN EXTERN ~ACCALIJ~ 46
 IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ319
 IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ617
END

IF ~~ THEN BEGIN VP_FIX96
 SAY ~I guess they have said it all for me Accalia. I will miss you and when you meet this big evil, be sure you show him a fight for me.~
 IF ~True()~ THEN EXTERN ~HROTHJ~ 233
 IF ~InParty("Dar")~ THEN EXTERN ~DARJ~ 49
END

IF ~~ THEN BEGIN VP_FIX97 //3.01
 SAY ~You have to come with us Hrothgar. Why die fighting some evil thing when you don't need to. You can travel with <CHARNAME>, there is a lot of evil even in the future that needs fighting... Come on, what do you say Hrothgar?~
 IF ~~ THEN EXTERN ~HROTHJ~ 235 //-->H7.01
END

IF ~~ THEN BEGIN VP_FIX98 //3.02
 SAY ~You are clever sometimes Minsc. He is right Hrothgar, you can come with us and travel with <CHARNAME>. That's got to be better than staying here and being killed by some evil thing. Come on, what do you say Hrothgar?~
 IF ~~ THEN EXTERN ~HROTHJ~ 235 //-->H7.01
END

IF ~~ THEN BEGIN VP_FIX99
 SAY ~Now hold on one darn minute Accalia! Who are you calling coward? You know nothing of our lives before we were thrown here... nothing... do you hear me, nothing?~
 IF ~~ THEN GOTO VP_FIX100
END

IF ~~ THEN BEGIN VP_FIX100
 SAY ~So before you begin to judge who is and who is not a coward ask yourself, is there really any point to us staying here, will our aid make a difference or are we wasting time trying to believe that it will?~
 IF ~InParty("Accalia")~ THEN EXTERN ~ACCALIJ~ 54
 IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ323
 IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ621
END

IF ~~ THEN BEGIN VP_FIX101
 SAY ~I guess they have said it all for me Accalia. I will miss you and when you meet this big evil, be sure you show him a fight for me.~
 IF ~True()~ THEN EXTERN ~HROTHJ~ 258
 IF ~InParty("Dar")~ THEN EXTERN ~DARJ~ 59
END

IF ~~ THEN BEGIN VP_FIX102
 SAY ~Aaaw... quit worrying Hrothgar! <CHARNAME> has never made a wrong decision yet. Have you <CHARNAME>?~
 IF ~~ THEN REPLY ~I am not convinced that my decisions are always right Imoen, but they do have a knack of coming out right in the end.~ DO ~SetGlobal("VP_Astrolabe_Talks","GLOBAL",7)
SetGlobal("VP_BackTo_Kuldahar","GLOBAL",2)~ GOTO VP_FIX103
 IF ~~ THEN REPLY ~Thanks for the vote of confidence Imoen, let's hope this one comes out okay.~ DO ~SetGlobal("VP_Astrolabe_Talks","GLOBAL",7)
SetGlobal("VP_BackTo_Kuldahar","GLOBAL",2)~ GOTO VP_FIX103
 IF ~~ THEN REPLY ~No... and that's why this is the right one too.~ DO ~SetGlobal("VP_Astrolabe_Talks","GLOBAL",7)
SetGlobal("VP_BackTo_Kuldahar","GLOBAL",2)~ GOTO VP_FIX103
END

IF ~~ THEN BEGIN VP_FIX103
 SAY ~So... what are we waiting for? Let's get out of here!~
 IF ~~ THEN EXTERN ~HROTHJ~ 262
END

IF ~~ THEN BEGIN VP_FIX104
 SAY ~Pretty good magic user though and an ok fellow... if you didn't listen to him too closely that was.~
 IF ~~ THEN REPLY ~It was pretty hard not to listen to him ... why do you think I stuck him at the back of the group all the time? Anyway, enough talk, we must move on before we share Erevain's fate and become a meal for the creatures of this place.~ EXTERN ~HROTHJ~ 271
 IF ~~ THEN REPLY ~He had his uses, magic users were in short supply back then... or at least any that were willing to join our inexperienced little group, but that was then and this is now. We can do no more here, let us move on before we share this fools fate.~ EXTERN ~HROTHJ~ 271
END

IF ~~ THEN BEGIN VP_FIX105
 SAY ~Great! Just great! Now we get to be dogs in a dogfight. I wonder how much he has bet on the winner.~
 IF ~OR(2)
!InParty("Jaheira")
Dead("Jaheira")~ THEN REPLY ~For now, let's just make sure that one of these enemies is unhappy with the outcome.~ EXTERN ~HROTHJ~ 284
 IF ~OR(2)
!InParty("Jaheira")
Dead("Jaheira")~ THEN REPLY ~Each foe we dispatch leaves us one step closer to solving this puzzle.~ EXTERN ~HROTHJ~ 284
 IF ~OR(2)
!InParty("Jaheira")
Dead("Jaheira")~ THEN REPLY ~Ah! Who cares? Lets just plant these vermin!~ EXTERN ~HROTHJ~ 284
 IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ631
END

IF ~~ THEN BEGIN VP_FIX106
 SAY ~(*Rolling her eyes*) You two are incorrigible.~
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN VP_FIX107
 SAY ~You have to come with us Hrothgar. Why die fighting some evil thing when you don't need to. You can travel with <CHARNAME>, there is a lot of evil even in the future that needs fighting... Come on, what do you say Hrothgar?~
 IF ~~ THEN EXTERN ~HROTHJ~ 287
END

IF ~Global("VP_Imoen_In_IWD","GLOBAL",2)~ THEN BEGIN NEJ192 // 1
 SAY ~What's up <CHARNAME>, you look as though you've seen a ghost?~
  IF ~~ THEN REPLY ~This is not possible! What is going on here?~ DO ~SetGlobal("VP_Imoen_In_IWD","GLOBAL",3)~ GOTO NEJ204 //--> 2
 IF ~~ THEN REPLY ~I... I know that man Imoen... at least I know of him.~ DO ~SetGlobal("VP_Imoen_In_IWD","GLOBAL",3)~ GOTO NEJ193 ////--> 3
 IF ~~ THEN REPLY ~What trick has that wizard played on us this time? I swear I will have his hide for this!~ DO ~SetGlobal("VP_Imoen_In_IWD","GLOBAL",3)~ GOTO NEJ200//--> 10
END

IF ~~ THEN BEGIN NEJ193 // 3
 SAY ~Now you're really scaring me! We've never been here before... I would remember all this snow if we had. How can you know him?~		
 IF ~~ THEN REPLY ~I did not say I know him, only I know of him. Hrothgar of Easthaven, the name has become a legend in our time.~ GOTO NEJ194
 IF ~~ THEN REPLY ~There is something very wrong here. Legend says Hrothgar of Easthaven died over 100 years ago!~ GOTO NEJ194
 IF ~~ THEN REPLY ~I remember Gorion telling me stories of great men and women. Legends of heroes who have left their mark on The Realms in some way. Hrothgar of Easthaven was such a man.~ GOTO NEJ194
END

IF ~~ THEN BEGIN NEJ194
 SAY ~Did you hit your head in the portal? I always thought legends were stories of dead heroes... not live ones and Hrothgar didn't look like a ghost to me. Admitted he looked a bit worn around the edges but he was still breathing, you're the one looking all pale and sounding scary.~
 IF ~~ THEN REPLY ~Legend tells of Hrothgar dying at the hand of a demon as he tried to defend his town, the town of Easthaven. You heard the man himself say, this is Easthaven!~ GOTO NEJ195
 IF ~~ THEN REPLY ~My head is fine thank you Imoen. Hrothgar was said to have lost his life defending the town of Easthaven from a demon and yet, here we are in Easthaven and we have spoken to Hrothgar, is it any wonder I seem a little confused.~ GOTO NEJ195
 IF ~~ THEN REPLY ~I no more understand it than you. We are in Easthaven and Hrothgar is very much alive. Somehow we have been sent back in time and I do not mind betting that it is all Irenicus doing!~ GOTO NEJ195
END

IF ~~ THEN BEGIN NEJ195
 SAY ~Irenicus! He's done this on purpose... I just know it! He's had his fun torturing us and now he's sent us back in time to keep us from getting our own back on him, or to make sure we don't tell anyone of all those horrible things he did to us back in that dungeon of his.~
 IF ~~ THEN REPLY ~We are in the past yes, but I am sure if Irenicus merely wanted to rid himself of us, we would be dead. Men like him have no conscience, nor do they fear retribution. No, we are here for a reason, you can be sure of that.~ GOTO NEJ196
 IF ~~ THEN REPLY ~If Irenicus meant for us to be here, then I can only imagine that he hopes we will change the past by some deed or action that will secure the future he wants for himself.~ GOTO NEJ196
 IF ~~ THEN REPLY ~We know how devious and brutal Irenicus is, he would not have had us come here if not for some devious, monstrous plan he has in that twisted head of his!~ GOTO NEJ196
END

IF ~~ THEN BEGIN NEJ196
 SAY ~(*Her face pales*) Even if we discover why he sent us here, we aren't going to help him... are we <CHARNAME>? We'll find a way to get home, and when we do, we are going to pay him back... right?~
 IF ~~ THEN REPLY ~You bet we are Imoen... and when we do find him, I will show him who is the puppet and who is the puppet master!~ GOTO NEJ197
 IF ~~ THEN REPLY ~Even if I have to wait the next hundred years out... I will find him Imoen and when I do, it'll be him caged and tortured in that hell hole of his.~ GOTO NEJ198
 IF ~~ THEN REPLY ~Believe me Imoen, Irenicus's days are numbered even as we stand here. I am not about to let a little thing like where or when we are keep me from cutting out that black heart of his and handing it to him... still beating!~ GOTO NEJ199
END
						
IF ~~ THEN BEGIN NEJ197
 SAY ~(*Her face brightens a little at your words*) Then what are we waiting for, let's go find us another portal and kick some ass.~
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NEJ198
 SAY ~(*A faint smile crosses her lips at your words*) Let's hope we don't have to wait that long. When we catch up with Irenicus, I want to be able to walk up to him and look him straight in the eye as he gets what's coming to him. Somehow, I don't think the sight of me in a bath chair, struggling to look him in the eye is going to have the impact I am hoping for.~
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NEJ199
 SAY ~(*Her face pales even more at your words*) It... it's nothing more than he deserves after the things he did to us, but in a way, that would make us no better than him. I'll be happy just to get the chance to put an arrow of detonation straight through that torturing heart of his.~
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NEJ200 // 10
 SAY ~What's wrong <CHARNAME>... I don't think I've ever seen you this angry before and it's scaring me?~
 IF ~~ THEN REPLY ~That madman has sent us to the past Imoen! To be be more specific, he has sent us at least 100 years into the past!~ GOTO NEJ201
 IF ~~ THEN REPLY ~He is playing with my head again! To let me think I am free and then to show me that it is only an illusion! Curses on him, he will regret crossing me when I catch up to him!~ GOTO NEJ202
 IF ~~ THEN REPLY ~He cannot do this! He refuses to face me and sends us here instead!~ GOTO NEJ203
END

IF ~~ THEN BEGIN NEJ201
 SAY ~The past! I don't understand... how can we be in the past? <CHARNAME> please, we've only been here a short while, how can you possibly know we are in the past?~
 IF ~~ THEN REPLY ~That man, Hrothgar, I know him or at least I know what legend speaks of him. He died over 100 years ago defending his town from some demon. That town was Easthaven, the very same town that we now find ourselves in.~ GOTO NEJ195
 IF ~~ THEN REPLY ~This has to be another of his accursed experiments, damn this insanity! Legend says that Hrothgar of Easthaven died over 100 years ago Imoen, he died defending this very town!~ GOTO NEJ195
END

IF ~~ THEN BEGIN NEJ202
 SAY ~No, that can't be true <CHARNAME>! He messed with both our heads whilst we were in that horrible dungeon of his, but here we are free of him. Where ever here is, I just know that there is no way he can still be messing with us.~
 IF ~~ THEN REPLY ~How are we free of him Imoen? If this is to be believed, then that damned portal of his has catapulted us back into the past, which probably means only he can return us to our own time.~ GOTO NEJ195
 IF ~~ THEN REPLY ~You think so Imoen? Do you believe Irenicus capable of travelling to the past, because if you believe all this to be real and not in my head, then that is where we are now, in the past.~ GOTO NEJ195
 IF ~~ THEN REPLY ~Free of him you say Imoen, if you say he is not playing with my head, then we have all been sent back into the past. I doubt he would do that so we could be free of him!~ GOTO NEJ195
END

IF ~~ THEN BEGIN NEJ203
 SAY ~Irenicus... you are talking about Irenicus aren't you <CHARNAME>? You think he sent us here don't you? If he did and you know where we are, then we can find our way home again... right?~
 IF ~~ THEN REPLY ~If I am right then home and Irenicus are both a long way away Imoen, or should I say a long way into the future... for we are now in the past. Damn Irenicus and his portal.~ GOTO NEJ195
 IF ~~ THEN REPLY ~I don't know Imoen, somehow that insane mage has transported us back into the past and unless we find another portal then we may never see our own time again.~ GOTO NEJ195
 IF ~~ THEN REPLY ~Oh... I know where we are Imoen, I even know when we are and yes, I believe this is all Irenicus's doing! That damn portal of his has catapulted us into the past, putting him well out of my reach!~ GOTO NEJ195
END

IF ~~ THEN BEGIN NEJ204 // 2
	SAY ~Please, you're beginning to scare me <CHARNAME>. What's not possible... is it something to do with that man, Hrothgar?~
 	IF ~~ THEN REPLY ~I... I know that man Imoen... at least I know of him.~ GOTO NEJ193
 	IF ~~ THEN REPLY ~Hrothgar! A name I know but this makes no sense!~ GOTO NEJ193
END

IF ~~ THEN BEGIN NEJ205
	SAY ~(*Groans*)... Aargh... another portal! What is it with this mage, doesn't he believe in good old fashioned wooden doors?~
 IF ~~ THEN EXTERN ~HROTHJ~ 371
END

IF ~~ THEN BEGIN NEJ206
  SAY ~(*She turns deathly pale and begins shaking*)... Hrothgar please... Irenicus did horrible things to <CHARNAME> and me. He wasn't angry when he did those things, but he will be now and I don't think I could stand it if he caught us again.~
  IF ~~ THEN GOTO NEJ207
END
	
IF ~~ THEN BEGIN NEJ207
  SAY ~Please Hrothgar, you teleported us once, please do it again... get us out of here... please!~
  IF ~~ THEN EXTERN ~SHARTJ~ imscared
END

IF ~~ THEN BEGIN NEJ208
  SAY ~What ever you say <CHARNAME>, but let's do it quickly because I really want out of here!~
 IF ~~ THEN DO ~SetGlobal("VP_Hrothgar_Interjects","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN NEJ209
  SAY ~(*She shivers and pales slightly*)... We don't really know what's on the other side... do we? It could be another demon, it could be a whole horde of demons! Or worse... it could be Irenicus!~
  IF ~~ THEN GOTO NEJ210
END

IF ~~ THEN BEGIN NEJ210
  SAY ~Please <CHARNAME>, I don't know if I can face going through another portal, not if Irenicus is waiting for us on the other side. There has to be another way, there has to...~
  IF ~~ THEN GOTO NEJ211
END

IF ~~ THEN BEGIN NEJ211
  SAY ~Hrothgar... you... you teleported us once, please do it again... please, get us out of here!~
  IF ~~ THEN EXTERN ~SHARTJ~ imscared
END

IF ~~ THEN BEGIN NEJ212
  SAY ~(*She turns deathly pale and begins shaking*)... Nooo... please <CHARNAME>, if there's the slightest chance that Irenicus is on the other side of this portal, just waiting to torture us some more, I don't want to go that way! Please, don't make me, please...~
  IF ~~ THEN GOTO NEJ211
END

IF ~~ THEN BEGIN nejstart
  SAY ~(*Noticeably a shade paler*)... I... I've seen enough blood thank you! Irenicus has the same fascination with it as you Shar-Teel... only he likes to share his depravity!~
  IF ~~ THEN EXTERN ~SHARTJ~ nejopen2
END

IF ~~ THEN BEGIN sharaval
  SAY ~You are so cruel Shar-Teel! I don't know why <CHARNAME> didn't leave you locked in your cage for Irenicus to play with... but then again, I reckon you might have found an ally in your love of bloodshed!~
	IF ~True()~ THEN EXTERN ~HROTHJ~ 401
	IF ~InParty ("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ sharaval
END

IF ~~ THEN BEGIN NEJ206fix
  SAY ~(*She turns deathly pale and begins shaking*)... Hrothgar please... Irenicus did horrible things to <CHARNAME> and me. He wasn't angry when he did those things, but he will be now and I don't think I could stand it if he caught us again.~
  IF ~~ THEN GOTO NEJ207fix
END
	
IF ~~ THEN BEGIN NEJ207fix
  SAY ~Please Hrothgar, you teleported us once, please do it again... get us out of here... please!~
	IF ~~ THEN EXTERN ~HROTHJ~ 372
END

IF ~~ THEN BEGIN NEJ209fix
  SAY ~(*She shivers and pales slightly*)... We don't really know what's on the other side... do we? It could be another demon, it could be a whole horde of demons! Or worse... it could be Irenicus!~
  IF ~~ THEN GOTO NEJ210fix
END

IF ~~ THEN BEGIN NEJ210fix
  SAY ~Please <CHARNAME>, I don't know if I can face going through another portal, not if Irenicus is waiting for us on the other side. There has to be another way, there has to...~
  IF ~~ THEN GOTO NEJ211fix
END

IF ~~ THEN BEGIN NEJ211fix
  SAY ~Hrothgar... you... you teleported us once, please do it again... please, get us out of here!~
	IF ~~ THEN EXTERN ~HROTHJ~ 372
END

IF ~~ THEN BEGIN NEJ212fix
  SAY ~(*She turns deathly pale and begins shaking*)... Nooo... please <CHARNAME>, if there's the slightest chance that Irenicus is on the other side of this portal, just waiting to torture us some more, I don't want to go that way! Please, don't make me, please...~
  IF ~~ THEN GOTO NEJ211fix
END

IF ~~ THEN BEGIN kuldback
 SAY ~(*Groans*) Kuldahar! I suppose this is your doing Hrothgar. I bet you messed with the portal when we weren't looking, didn't you?~
    IF ~~ THEN EXTERN ~HROTHJ~ kulback1
END

IF ~~ THEN BEGIN kulback1
 SAY ~(*Angrily*) Safe! You call having your soul ripped from you safe? A hole for... who knows what evil to take advantage of!~
=
~You had no right bringing us here, but of course why should you care? You with your own soul tucked warmly away inside you!~
    IF ~~ THEN EXTERN ~HROTHJ~ kulback2
END

IF ~~ THEN BEGIN kulback2
 SAY ~(*Mimicking Hrothgar's voice as only Imoen can*) All will be well in time! What time? This time? My own time? Hundreds of years in the future time? Exactly what time are we talking about here?~
    IF ~~ THEN EXTERN ~HROTHJ~ kulback3
END

IF ~~ THEN BEGIN kulback3
 SAY ~Maybe. But you've still gone too far this time Hrothgar, dragging us all here without so much as a warning!~
=
~(*Then turning to you*) Please <CHARNAME>, tell him to send us back, now!~
    IF ~~ THEN EXTERN ~HROTHJ~ kulback4
END

IF ~~ THEN BEGIN kulback4
 SAY ~Yea, not to mention leaving me to have my soul tortured from my body by a sadistic, sick bastard while you go on a joyride through time, you tell him Dar!~
IF ~True()~ THEN EXTERN ~HROTHJ~ kulback6
 IF ~InParty("Sharteel")
!Dead("Sharteel")~ THEN EXTERN ~SHARTJ~ kuldback
 IF ~InParty("HaerDalis")
!Dead("HaerDalis")~ THEN EXTERN ~HAERDAJ~ kuldback
 IF ~InParty("Kachiko")
InParty("Yoshimo")
!Dead("Kachiko")
!Dead("Yoshimo")~ THEN EXTERN ~KACHIJ~ kuldback
 IF ~InParty("Viconia")
!Dead("Viconia")~ THEN EXTERN ~VICONIJ~ kuldback
 IF ~InParty("Jan")
!Dead("Jan")~ THEN EXTERN ~JANJ~ kuldback
 IF ~InParty("Aerie")
!Dead("Aerie")~ THEN EXTERN ~AERIEJ~ kuldback
 IF ~InParty("Anomen")
!Dead("Anomen")
OR(2)
		Global("AnomenRomanceActive","GLOBAL",1)
		Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~ANOMENJ~ kulback1
 IF ~InParty("Anomen")
!Dead("Anomen")
OR(2)
		Global("AnomenRomanceActive","GLOBAL",0)
		Global("AnomenRomanceActive","GLOBAL",3)~ THEN EXTERN ~ANOMENJ~ kulback2
  IF ~InParty("Nalia")
!Dead("Nalia")~ THEN EXTERN ~NALIAJ~ kuldback
 IF ~InParty("Mazzy")
!Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ kuldback
 IF ~InParty("Valygar")
!Dead("Valygar")~ THEN EXTERN ~VALYGARJ~ kuldback
 IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~KORGANJ~ kuldback
 IF ~InParty("Keldorn")
!Dead("Keldorn")~ THEN EXTERN ~KELDORJ~ kuldback
 IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~EDWINJ~ kuldback
 IF ~InParty("Melora")
!Dead("Melora")~ THEN EXTERN ~MELORAJ~ kuldback
 IF ~InParty("Taffic")
!Dead("Taffic")~ THEN EXTERN ~TAFFICJ~ kuldback
 IF ~InParty("Sime")
!Dead("Sime")~ THEN EXTERN ~SIMEJ~ kuldback
 IF ~InParty("Leina")
!Dead("Leina")~ THEN EXTERN ~LEINAJ~ kuldback
 IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ kuldback
END

IF ~~ THEN BEGIN hrotleft
 SAY ~Phew, for a moment there I thought you were going to go along with him! I'm glad to see you managed to hang on to your senses whilst Irenicus was pulling the rest of you apart.~
=
~So, big <BROTHERSISTER>, what are we waiting around here for? Time to go show that soul stealing sorcerer and that demon sister of his that they can't go around whipping people's souls out willy nilly!~
  	IF ~True()~ THEN DO ~ActionOverride("Hrothgar",LeaveParty())
ActionOverride("Hrothgar",EscapeArea())~ EXIT
  	IF ~InParty("Taffic")
!Dead("Taffic")
InParty("Melora")
!Dead("Melora")~ THEN EXTERN ~TAFFICJ~ hrotleft
END

IF ~~ THEN BEGIN kulback5
 SAY ~(*Groans*) Not more battling through ice and snow, I've only just dried my boots out from our last trek through here, not to mention just getting some feeling back into my feet again!~
=
~And if I fall dead into a snowdrift due to my lacking a soul, I hope someone here is prepared to carry this poor soulless girl home for a decent burying and a humungous wake.~
=
~I don't want to be left in the past, frozen to death under a ton of ice and snow for all eternity.~
	IF ~True()~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCtSH2")~ EXIT
  	IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ kulback1
  	IF ~InParty("Dar")
!Dead("Dar")~ THEN EXTERN ~DARJ~ kulback1
END

IF ~~ THEN BEGIN kulback6
 SAY ~Gee Dar, you don't know how much better that makes a girl feel.~
 	IF ~True()~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCtSH2")~ EXIT
  	IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ kulback1
END

IF ~~ THEN BEGIN kulback7
 SAY ~(*Giggling*) Oh Minsc you are funny. That was Boo's own reflection that he saw. Of course it went away when you jumped in, I bet Boo knew this all the time and thought to play a joke on you, didn't you Boo?~
=
~(*Squeak*)~ [BOONEJ1]
  	IF ~~ THEN EXTERN ~MINSCJ~ kulback2
END

IF ~~ THEN BEGIN returnsh
 SAY ~(*Her face flushed*) Hey <CHARNAME>, you're definitely gonna have to get one of those things. Look, not even a damp patch on my boots!~
 	IF ~True()~ THEN EXTERN ~HROTHJ~ returns1
 	IF ~InParty("Melora")
!Dead("Melora")~ THEN EXTERN ~MELORAJ~ returnsh
END

IF ~~ THEN BEGIN IWDEREV1
  SAY ~Oh yes, we'll have so much to share with you. Great foods such as mud pies, butterfly wheels, and pixie stuffing!~
	IF ~~ THEN EXTERN ~EREVAINJ~ 4
END

IF ~~ THEN BEGIN IWDEREV2
  SAY ~Oh, don't take everything so literal Erevain. There's so many fun things to experience! You'll love it somewhere warmer.~
	IF ~~ THEN EXTERN ~EREVAINJ~ 5
END
END