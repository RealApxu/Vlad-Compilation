BEGIN ~SHARTJ~

//NeJ Dialogue - Hrothgar Avalanche
CHAIN VPSHAJ avalanche
~(*Scoffs*)... All men are weak! Look how we managed to dig ourselves out...~
 IF ~True()~ THEN GOTO avalan3
 IF ~OR(3) Gender(Player1,MALE) CheckStatLT(Player1,16,STR) Class(Player1,MAGE)~ THEN GOTO avalan1
 IF ~Gender(Player1,FEMALE) CheckStatGT(Player1,15,STR) !Class(Player1,MAGE)~ THEN GOTO avalan2
END

CHAIN VPSHAJ avalan1
~(*Then looking disparagingly at you*)... Some with the help of others, those who didn't were weak and deserve no more than death. At least as fodder for the beasts their bodies will serve a damn sight better than they would have served as warriors!~
 IF ~True()~ THEN EXTERN NJHROJ 401
 IF ~InParty ("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ sharaval
 IF ~InParty("Imoen")~ THEN EXTERN ~IMOENJ~ sharaval
 IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN2J~ sharaval
END

CHAIN VPSHAJ avalan2
~(*Then looking disparagingly at the male members of your group*)... Some with the help of others, those who didn't were weak and deserve no more than death. At least as fodder for the beasts their bodies will serve a damn sight better than they would have served as warriors!~
 IF ~True()~ THEN EXTERN NJHROJ 401
 IF ~InParty ("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ sharaval
 IF ~InParty("Imoen")~ THEN EXTERN ~IMOENJ~ sharaval
 IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN2J~ sharaval
END

CHAIN VPSHAJ avalan3
~...those who didn't were weak and deserve no more than death. At least as fodder for the beasts their bodies will serve a damn sight better than they would have served as warriors!~
 IF ~True()~ THEN EXTERN NJHROJ 401
 IF ~InParty ("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ sharaval
 IF ~InParty("Imoen")~ THEN EXTERN ~IMOENJ~ sharaval
 IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN2J~ sharaval
END


//NeJ Dialogue - Leaving NeJ1
CHAIN VPSHAJ nearportal
~(*Looking around at the group she scoffs*)... Just listen to yourselves...~ [mute]
 IF ~~ THEN EXTERN NJHROJ shargrp
 IF ~InParty("Minsc")~ THEN GOTO onminsc1
 IF ~InParty("Accalia")~ THEN GOTO onaccali
 IF ~InParty("njdar")~ THEN GOTO ondar
 IF ~InParty("Jaheira")~ THEN GOTO onjahi
 IF ~OR(2) InParty("Imoen") InParty("Imoen2")~ THEN GOTO onimoen1
END

CHAIN VPSHAJ onimoen1
~(*Echoing Imoen's words sarcastically*) "It's so cold... there's too much snow and it makes the sun hurt my eyes..."~
 IF ~~ THEN GOTO onimoen2
END

CHAIN VPSHAJ onimoen2
~The thief has a spine made of jelly. Let the wimp go home, she obviously hasn't backbone enough for this mission!~
 IF ~~ THEN EXTERN NJHROJ shargrp
 IF ~InParty("Minsc")~ THEN GOTO onminsc1
 IF ~InParty("Accalia")~ THEN GOTO onaccali
 IF ~InParty("njdar")~ THEN GOTO ondar
 IF ~InParty("Jaheira")~ THEN GOTO onjahi
END

CHAIN VPSHAJ onjahi
~(*Looking at Jaheira*) You poor dear, being too long from "your Khalid's" side have you? I can't imagine why any woman would suffer such a bumbling, stuttering fool in her bed. Leave the fool where he is, he deserves no less!~
 IF ~~ THEN EXTERN NJHROJ shargrp
 IF ~InParty("Minsc")~ THEN GOTO onminsc1
 IF ~InParty("Accalia")~ THEN GOTO onaccali
 IF ~InParty("njdar")~ THEN GOTO ondar
END

CHAIN VPSHAJ ondar
~(*Glancing next at Dar*) You may be an ugly great brute but at least you know your place is to follow and serve... it's a shame that quality can't be bred into the males of all races.~
 IF ~~ THEN EXTERN NJHROJ shargrp
 IF ~InParty("Minsc")~ THEN GOTO onminsc1
 IF ~InParty("Accalia")~ THEN GOTO onaccali
END

CHAIN VPSHAJ onaccali
~(*Looking smugly at Accalia*) So Accalia, Hrothgar knows where your duty lays does he?~
 IF ~~ THEN GOTO onaccali2
END

CHAIN VPSHAJ onaccali2
~(*Scoffs*)... Who do you think you're fooling priestess, it's as plain as the nose on your face that you wish your duty is to *lay with* the paladin! It has nothing to do with Tempus' will or the will of any other god either... weak pathetic woman you are!~
 IF ~~ THEN EXTERN NJHROJ shargrp
 IF ~InParty("Minsc")~ THEN GOTO onminsc1
END

CHAIN VPSHAJ onminsc1
~(*Minsc is last to suffer her taunts, you half suspect this is deliberate on her part*)~
 IF ~~ THEN GOTO onminsc2
END

CHAIN VPSHAJ onminsc2
~The idiot ranger... how the nine hells you found your way into this group is beyond me! A half wit who asks a rat what his next move should be... need I say more?!~
 IF ~~ THEN EXTERN ~MINSCJ~ NEJ342
END

CHAIN VPSHAJ onminsc3
~Hamster my ass, it's a rat with its tail cut off you idiot.~
 IF ~~ THEN EXTERN NJHROJ shargrp
END

//NeJ Dialogue - Severed Hand
CHAIN VPSHAJ sevhand1
~(*Looking around bewildered*) What... curses, where did that come from... how the hell did he do that? That was no magician's wand he was waving around!~
 IF ~~ THEN GOTO sevhand2
END

CHAIN VPSHAJ sevhand2
~This male could prove dangerous and needs watching... I never did trust that cold steel gaze of his! Dangerous...~
 IF ~~ THEN GOTO sevhand3
END

CHAIN VPSHAJ sevhand3
~(*Then shaking her head as if to clear it*) Snap out of it girl, he's only a man and will bleed and die as easily as the next!~
 IF ~~ THEN EXTERN NJHROJ 195
END

CHAIN VPSHAJ kaylsold
~Bah killing that which is already dead, where's the sport in that? Still, if it moves I can kill it and when I'm through with it you can be sure it'll bloody well stay dead... permanently!~
 IF ~~ THEN DO ~SetGlobal("VP_Astrolabe_Talks","GLOBAL",2) RealSetGlobalTimer("VP_Accalia_Hrothgar","GLOBAL",10)~ EXIT
END

//NeJ Dialogue - Come back
CHAIN VPSHAJ comebck1
~(*As it dawns upon her where she is, the corners of her mouth curl up into a cruel grin*)...~
 IF ~~ THEN GOTO comebck2
END

CHAIN VPSHAJ comebck2
~Ho... maybe the gods are looking down on me after all! They sure as hell aren't looking out for that sorcerer by returning me here... his days, make that hours, are numbered. The son of a bitch can run but he can't hide!~
 IF ~~ THEN EXTERN NJHROJ 369
END

//Promenade Talk
IF ~Global("PostCutSpeak","AR0700",1)~ THEN BEGIN imytaken
~NOOOO... bring him back you cowled bastards!~ [mute]
 = ~You pathetic wizards have not the means to torment him in the way he deserves, nor will he escape me no matter where you may have taken him...~
 IF ~~ THEN DO ~SetGlobal("PostCutSpeak","AR0700",2)~ GOTO imytakenfix
END

CHAIN VPSHAJ imytakenfix
~VENGEANCE will be mine!~
 IF ~True()~ THEN EXIT
 IF ~ InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ N238
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ N528
 IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN ~YOSHJ~ N147
END

//Nej 2 - Go to Ulcaster
CHAIN VPSHAJ gotoulcr
~You are off your head if you think you're going discover anything at Ulcaster.~
 = ~Been there, done that, left everything that bleeds dead and I'm damn sure no stone was left unturned... even the old ghost has deserted his ruins now.~
 = ~You'll not find anything and there's certainly no glory in going over old ground... but I doubt you'll listen to sense, men never do, so I guess we're going anyway!~
 IF ~~ THEN EXTERN NJHROJ 404
END

//Nej 2 - Leave Armor
CHAIN VPSHAJ leavarmo
~Ha, now we sort the men from the boys! My fist is as honed as my blade and will draw blood just as easily... how many of you can boast the same... eh!?~
 IF ~~ THEN DO ~SetGlobal("VP_Move_To_Halruaa","GLOBAL",1) GiveItemCreate("TulRobe",Player1,0,0,0) GiveItemCreate("TulRobe",Player2,0,0,0) GiveItemCreate("TulRobe",Player3,0,0,0) GiveItemCreate("TulRobe",Player4,0,0,0) GiveItemCreate("TulRobe",Player5,0,0,0) GiveItemCreate("TulRobe",Player6,0,0,0)~ EXIT
END

//Nej 2 - Arrival
CHAIN VPSHAJ arrivhal
~Phew... for a minute there I thought <CHARNAME> was going to ask him to join us!~
 = ~Hrothgar and friend of Hrothgar together in one group!? One holier than thou egotistic male is maybe just about tolerable but two... no two would be stretching a girl's need to keep her word too far!~
 IF ~True()~ THEN DO ~SetGlobal("VP_Move_To_Halruaa","GLOBAL",4)~ EXIT
 IF ~InParty("njmelora")~ THEN DO ~SetGlobal("VP_Move_To_Halruaa","GLOBAL",4)~ EXTERN NJMELJ 10
END

//Nej 2 - Iezikiel Quest
CHAIN VPSHAJ ezequest1
~Yea gods, we've carried bodies before... remember the decaying corpse we carried from the sewers of Baldurs Gate for that necromancer... Arkion was it? Phew, that one stunk to the pits!~
 = ~At least we're going after a fresh one this time! Those of you too morally challenged can stay with the necromancer...~
 = ~(*Looking around at the paraphernalia in Ezekial's room*)... Mmm... then again, if it's your delicate stomachs worrying you, you may prefer to wait outside for our return... wimps!~
 IF ~~ THEN EXTERN ~TuEzek~ 7
END

//Nej Interjections
CHAIN VPSHAJ ezequest2
~Yea gods, we've carried bodies before... remember the decaying corpse we carried from the sewers of Baldurs Gate for that necromancer... Arkion was it? Phew, that one stunk to the pits!~
 = ~At least we're going after a fresh one this time!~
 = ~(*Looking around at the paraphernalia in Ezekial's room*)... Mmm... then again, if it's your delicate stomach worrying you, you may prefer to wait outside.~
 IF ~~ THEN EXTERN ~TuEzek~ 9
END

CHAIN VPSHAJ imscared
~Quit your blubbering you wimp! Can't some one do something to shut the crybaby up before she attracts the sorcerer's attention and he comes flying through this portal here?~
 IF ~~ THEN EXTERN NJHROJ 372
END

CHAIN VPSHAJ frellaru
~(*Impatiently*) Yet more errands to be run for a man too up himself and full of his own self importance to risk his neck! What are we, warriors or bloody gophers?~
 IF ~~ THEN EXTERN NJHROJ shararu1
END

CHAIN VPSHAJ frellaru2
~I need no convincing paladin, you and your kind are the worst sort of pathetic! You can't help sticking those over sized noses of yours into things that don't concern you.~
 = ~The old druid looked more than fit enough to sort this town... *his* town's problems, but no, Hrothgar the righteous has to stick his oar in and volunteer our necks instead whilst the druid does what... sits comfortably by his hearth contemplating his navel?! Men really are...~
 IF ~~ THEN EXTERN NJHROJ shararu2
END

CHAIN VPSHAJ frellaru3
~Do not question my intentions. You don't have the power to dismiss me Paladin. An oath is an oath and I pledged my sword to aid <CHARNAME>, my word is my bond but make NO mistake... I follow only because of <PRO_HISHER> prowess in battle. When that falters, so does my loyalty.~
 = ~As for you paladin... I have no such loyalty to you, but you can be sure that as long as you don't cross me you have nothing to fear... cross me and it'll be your front you need to watch... back stabbing is the way of weak cowards!~
 IF ~~ THEN EXTERN NJHROJ shararu3
END

CHAIN VPSHAJ dragoneye
~(*Pointing her sword*) I suppose it does somewhat resemble a dragon's head and I can see why some may find it impressive, but in reality... it's just another damp dungeon for us to crawl through.~
 IF ~True()~ THEN DO ~SetGlobal("VP_DragonsEyeNotes","GLOBAL",2)~ EXIT
 IF ~InParty("Imoen") !Dead("Imoen")~ THEN DO ~SetGlobal("VP_DragonsEyeNotes","GLOBAL",2)~ EXTERN ~IMOENJ~ NEJ147
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN DO ~SetGlobal("VP_DragonsEyeNotes","GLOBAL",2)~ EXTERN ~IMOEN2J~ VP_FIX63
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN DO ~SetGlobal("VP_DragonsEyeNotes","GLOBAL",2)~ EXTERN ~JAHEIRAJ~ NEJ591
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN DO ~SetGlobal("VP_DragonsEyeNotes","GLOBAL",2)~ EXTERN ~MINSCJ~ NEJ288
END

CHAIN VPSHAJ lizardking
~(*Wiping her sword on her sleeve*) That's that... one less slimy reptile hunting for his mistress. If that's the best she can muster then I reckon she and her minions are going to be pretty hungry, not to say angry when we find them... best we stay alert from here lest they see us as their next meal!~
 IF ~True()~ THEN DO ~SetGlobal("VP_LizardKingDead","LOCALS",2)~ EXTERN NJHROJ 273
 IF ~InParty("Accalia") !Dead("Accalia")~ THEN DO ~SetGlobal("VP_LizardKingDead","LOCALS",2)~ EXTERN ~ACCALIJ~ 59
 IF ~InParty("Imoen") !Dead("Imoen")~ THEN DO ~SetGlobal("VP_LizardKingDead","LOCALS",2)~ EXTERN ~IMOENJ~ NEJ148
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN DO ~SetGlobal("VP_LizardKingDead","LOCALS",2)~ EXTERN ~IMOEN2J~ VP_FIX64
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN DO ~SetGlobal("VP_LizardKingDead","LOCALS",2)~ EXTERN ~JAHEIRAJ~ NEJ627
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN DO ~SetGlobal("VP_LizardKingDead","LOCALS",2)~ EXTERN ~MINSCJ~ NEJ291
END

CHAIN VPSHAJ erevbody
~(*Scoffs*) Bloody foolish elf you mean! The arrogance of elves, the males especially... well this one certainly got what he deserved!~
 IF ~~ THEN EXTERN NJHROJ sharerev
END

CHAIN VPSHAJ erevbod2
~Bravery and courage I can certainly respect, but stupidity... never!~
 IF ~~ THEN EXIT
END

CHAIN VPSHAJ egenia
~If you seriously believe that the gods give a toss about what is going on down here then you are all fools! I trust only my sword and my own eyes, not the off chance that the gods may be watching my back... or my front.~
 IF ~True()~ THEN EXIT
 IF ~InParty("Minsc") !Dead("Minsc") OR(2) !InParty("njdar") Dead("njdar")~ THEN EXTERN ~MINSCJ~ NEJ326
 IF ~InParty("Minsc") !Dead("Minsc") InParty("njdar") !Dead("njdar")~ THEN EXTERN ~DARJ~ 62
END

CHAIN VPSHAJ nearpor1
~At last we leave this miserable cold. What vexes me most is no one will believe we fought the ancestors of the creatures of our time and lived, it lessens the thrill of the kills we have made. It'll be good to be back where honest bloodshed is appreciated!~
 IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutNJ2")~ EXIT
END

CHAIN VPSHAJ nearpor2
~At last we leave this miserable cold. What vexes me most is no one will believe we fought the ancestors of the creatures of our time and lived, it lessens the thrill of the kills we have made. It'll be good to be back where honest bloodshed is appreciated!~
 IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutNJ4")~ EXIT
END

/*ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() SetGlobal("KickedOut","LOCALS",1) LeaveParty() EscapeAreaMove("AR0086",9,9,9)*/

//NeJ Interjection - starting dialogue
CHAIN VPSHAJ nejopen1
~(*Drawing her sword*)... Then it'll be my pleasure to leave the dogs on the floor lapping up their own blood!~ [mute]
== IMOENJ ~(*Noticeably a shade paler*)... I... I've seen enough blood thank you! Irenicus has the same fascination with it as you Shar-Teel... only he likes to share his depravity!~
== VPSHAJ ~Still have a weak stomach then thief? You should have stayed in Candlekeep if you can't take the heat.~
END
 ++ ~This place does feel different, but we should not get our hopes up nor let our guard down because of the way we feel. One thing is for sure, we will not discover anything standing around here so I suggest we move quickly and prepare ourselves for whoever or whatever lies in wait at the bottom of these stairs.~ EXTERN IMOENJ NEJ77

//NeJ Interjection - Avalanche
CHAIN IMOENJ sharaval
~You are so cruel Shar-Teel! I don't know why <CHARNAME> didn't leave you locked in your cage for Irenicus to play with... but then again, I reckon you might have found an ally in your love of bloodshed!~
END
 IF ~True()~ THEN EXTERN NJHROJ 401
 IF ~InParty ("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ sharaval

//Leina Interactions

IF ~~ THEN BEGIN LeiSpher1
  SAY ~What do you take me for... I am a warrior not a bloody contestant in your guessing game bard!~
  IF ~True()~ THEN EXTERN ~BLEINA~ Sphere10
  IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN ~BYOSHIM~ LeiSpher1
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~BMINSC~ LeiSpher1
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN ~BEDWIN~ LeiSpher2
  IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN ~BJAHEIR~ LeiSpher1
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~BKORGAN~ LeiSpher4
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN ~BNALIA~ LeiSpher1
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN ~BVALYGA~ LeiSpher1
  IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN ~BVICONI~ LeiSpher3
  IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN ~BDAR~ LeiSpher2
  IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiSpher1
  IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN ~BTAFFIC~ LeiSpher1
END

IF ~~ THEN BEGIN RadianQ
  SAY ~Finally the stinkin' male is gettin' a brain. Your damn right, <CHARNAME>, who gives a crap who starts it and how. As long as blood flows. So you shut your yammering bard!~
  IF ~True()~ THEN EXTERN ~BLEINA~ RadiaQ10
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~BKORGAN~ RadianQB
END

IF ~~ THEN BEGIN RadianQ1
  SAY ~I think a snowball has a better chance in hell than this bard being able to change her pie in the sky attitude. For all her, *I've grown* attitude, she still doesn't use her brain!~
  IF ~True()~ THEN EXTERN ~BLEINA~ RadiQ19A
  IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN ~BVICONI~ RadianQ
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN ~BEDWIN~ RadianQ
END

IF ~~ THEN BEGIN LeiRadia
  SAY ~Oh suck it up bard, who the hell cares where we sit as long as they have ale and hot water. I'll never know how in the nine hells you ever got into this party. You're such a prig!~
  IF ~True()~ THEN EXTERN ~BLEINA~ RadiQ21B
  IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN ~BVICONI~ LeiRadia
  IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN ~BTAFFIC~ LeiRadia
  IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiRadia
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~BMINSC~ LeiRadia
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN ~BEDWIN~ LeiRadia
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~BKORGAN~ LeiRadia
END