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
 IF ~True()~ THEN EXTERN ~HROTHJ~ 401
 IF ~InParty ("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ sharaval
 IF ~InParty("Imoen")~ THEN EXTERN ~IMOENJ~ sharaval
 IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN2J~ sharaval
END

CHAIN VPSHAJ avalan2
~(*Then looking disparagingly at the male members of your group*)... Some with the help of others, those who didn't were weak and deserve no more than death. At least as fodder for the beasts their bodies will serve a damn sight better than they would have served as warriors!~
 IF ~True()~ THEN EXTERN ~HROTHJ~ 401
 IF ~InParty ("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ sharaval
 IF ~InParty("Imoen")~ THEN EXTERN ~IMOENJ~ sharaval
 IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN2J~ sharaval
END

CHAIN VPSHAJ avalan3
~...those who didn't were weak and deserve no more than death. At least as fodder for the beasts their bodies will serve a damn sight better than they would have served as warriors!~
 IF ~True()~ THEN EXTERN ~HROTHJ~ 401
 IF ~InParty ("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ sharaval
 IF ~InParty("Imoen")~ THEN EXTERN ~IMOENJ~ sharaval
 IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN2J~ sharaval
END


//NeJ Dialogue - Leaving NeJ1
CHAIN VPSHAJ nearportal
~(*Looking around at the group she scoffs*)... Just listen to yourselves...~ [mute]
 IF ~~ THEN EXTERN ~HROTHJ~ shargrp
 IF ~InParty("Minsc")~ THEN GOTO onminsc1
 IF ~InParty("Accalia")~ THEN GOTO onaccali
 IF ~InParty("Dar")~ THEN GOTO ondar
 IF ~InParty("Jaheira")~ THEN GOTO onjahi
 IF ~OR(2) InParty("Imoen") InParty("Imoen2")~ THEN GOTO onimoen1
END

CHAIN VPSHAJ onimoen1
~(*Echoing Imoen's words sarcastically*) "It's so cold... there's too much snow and it makes the sun hurt my eyes..."~
 IF ~~ THEN GOTO onimoen2
END

CHAIN VPSHAJ onimoen2
~The thief has a spine made of jelly. Let the wimp go home, she obviously hasn't backbone enough for this mission!~
 IF ~~ THEN EXTERN ~HROTHJ~ shargrp
 IF ~InParty("Minsc")~ THEN GOTO onminsc1
 IF ~InParty("Accalia")~ THEN GOTO onaccali
 IF ~InParty("Dar")~ THEN GOTO ondar
 IF ~InParty("Jaheira")~ THEN GOTO onjahi
END

CHAIN VPSHAJ onjahi
~(*Looking at Jaheira*) You poor dear, being too long from "your Khalid's" side have you? I can't imagine why any woman would suffer such a bumbling, stuttering fool in her bed. Leave the fool where he is, he deserves no less!~
 IF ~~ THEN EXTERN ~HROTHJ~ shargrp
 IF ~InParty("Minsc")~ THEN GOTO onminsc1
 IF ~InParty("Accalia")~ THEN GOTO onaccali
 IF ~InParty("Dar")~ THEN GOTO ondar
END

CHAIN VPSHAJ ondar
~(*Glancing next at Dar*) You may be an ugly great brute but at least you know your place is to follow and serve... it's a shame that quality can't be bred into the males of all races.~
 IF ~~ THEN EXTERN ~HROTHJ~ shargrp
 IF ~InParty("Minsc")~ THEN GOTO onminsc1
 IF ~InParty("Accalia")~ THEN GOTO onaccali
END

CHAIN VPSHAJ onaccali
~(*Looking smugly at Accalia*) So Accalia, Hrothgar knows where your duty lays does he?~
 IF ~~ THEN GOTO onaccali2
END

CHAIN VPSHAJ onaccali2
~(*Scoffs*)... Who do you think you're fooling priestess, it's as plain as the nose on your face that you wish your duty is to *lay with* the paladin! It has nothing to do with Tempus' will or the will of any other god either... weak pathetic woman you are!~
 IF ~~ THEN EXTERN ~HROTHJ~ shargrp
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
 IF ~~ THEN EXTERN ~HROTHJ~ shargrp
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
 IF ~~ THEN EXTERN ~HROTHJ~ 195
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
 IF ~~ THEN EXTERN ~HROTHJ~ 369
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
 IF ~~ THEN EXTERN ~HROTHJ~ 404
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
 IF ~InParty("Melora")~ THEN DO ~SetGlobal("VP_Move_To_Halruaa","GLOBAL",4)~ EXTERN ~MELORAJ~ 10
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
 IF ~~ THEN EXTERN ~HROTHJ~ 372
END

CHAIN VPSHAJ frellaru
~(*Impatiently*) Yet more errands to be run for a man too up himself and full of his own self importance to risk his neck! What are we, warriors or bloody gophers?~
 IF ~~ THEN EXTERN ~HROTHJ~ shararu1
END

CHAIN VPSHAJ frellaru2
~I need no convincing paladin, you and your kind are the worst sort of pathetic! You can't help sticking those over sized noses of yours into things that don't concern you.~
 = ~The old druid looked more than fit enough to sort this town... *his* town's problems, but no, Hrothgar the righteous has to stick his oar in and volunteer our necks instead whilst the druid does what... sits comfortably by his hearth contemplating his navel?! Men really are...~
 IF ~~ THEN EXTERN ~HROTHJ~ shararu2
END

CHAIN VPSHAJ frellaru3
~Do not question my intentions. You don't have the power to dismiss me Paladin. An oath is an oath and I pledged my sword to aid <CHARNAME>, my word is my bond but make NO mistake... I follow only because of <PRO_HISHER> prowess in battle. When that falters, so does my loyalty.~
 = ~As for you paladin... I have no such loyalty to you, but you can be sure that as long as you don't cross me you have nothing to fear... cross me and it'll be your front you need to watch... back stabbing is the way of weak cowards!~
 IF ~~ THEN EXTERN ~HROTHJ~ shararu3
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
 IF ~True()~ THEN DO ~SetGlobal("VP_LizardKingDead","LOCALS",2)~ EXTERN ~HROTHJ~ 273
 IF ~InParty("Accalia") !Dead("Accalia")~ THEN DO ~SetGlobal("VP_LizardKingDead","LOCALS",2)~ EXTERN ~ACCALIJ~ 59
 IF ~InParty("Imoen") !Dead("Imoen")~ THEN DO ~SetGlobal("VP_LizardKingDead","LOCALS",2)~ EXTERN ~IMOENJ~ NEJ148
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN DO ~SetGlobal("VP_LizardKingDead","LOCALS",2)~ EXTERN ~IMOEN2J~ VP_FIX64
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN DO ~SetGlobal("VP_LizardKingDead","LOCALS",2)~ EXTERN ~JAHEIRAJ~ NEJ627
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN DO ~SetGlobal("VP_LizardKingDead","LOCALS",2)~ EXTERN ~MINSCJ~ NEJ291
END

CHAIN VPSHAJ erevbody
~(*Scoffs*) Bloody foolish elf you mean! The arrogance of elves, the males especially... well this one certainly got what he deserved!~
 IF ~~ THEN EXTERN ~HROTHJ~ sharerev
END

CHAIN VPSHAJ erevbod2
~Bravery and courage I can certainly respect, but stupidity... never!~
 IF ~~ THEN EXIT
END

CHAIN VPSHAJ egenia
~If you seriously believe that the gods give a toss about what is going on down here then you are all fools! I trust only my sword and my own eyes, not the off chance that the gods may be watching my back... or my front.~
 IF ~True()~ THEN EXIT
 IF ~InParty("Minsc") !Dead("Minsc") OR(2) !InParty("Dar") Dead("Dar")~ THEN EXTERN ~MINSCJ~ NEJ326
 IF ~InParty("Minsc") !Dead("Minsc") InParty("Dar") !Dead("Dar")~ THEN EXTERN ~DARJ~ 62
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

IF WEIGHT #-8 ~Global("VP_STB_orcsambush","LOCALS",1)~ THEN BEGIN legacy300
~(*Angrily she snarls*) An ambush... why the son of a bitch! The slime ball fights using the coward's tactics! So be it! If that's the way he wants it then it'll be a coward's death for the male scum!~
 IF ~~ THEN DO ~SetGlobal("VP_STB_orcsambush","LOCALS",2)~ EXIT
END

CHAIN VPSHAJ legacy310
~(*She looks contemptuously at the orcs and brandishing her sword, sparks flickering as her knuckles*)... Move out of the way... I've something here that'll soon have them squealing like a couple of stuck pigs!~
 IF ~~ THEN EXTERN ~FIRORC02~ orcsflee2
END

CHAIN VPSHAJ legacy311
~Bah... orc scum! You're even bigger cowards than Firkraag. I slit your throats and leave your bloody corpses as a warning not to get in my way.~
 ++ ~I think we've scared them enough. Go on, get out of here before I change my mind.~ EXTERN ~FIRORC02~ orcsflee3
 ++ ~I'm with you Shar... pick which one you want and I'll take the other one!~ GOTO legacy314
END

CHAIN VPSHAJ legacy312
~(*She sneers and with sarcasm in her voice*) Yea well, that'll sure have Firkraag quaking in his boots! Moron... sparing a couple of orcs like that, you've made us look like a lot of pansies!~
 IF ~~ THEN GOTO legacy313
END

CHAIN VPSHAJ legacy313
~You should have done as I said, at least it would have shown these creatures down here that we mean business! Bah, I wonder why I'm still with this group. You make me sick to my stomach, you and your prissy attitude!~
 IF ~~ THEN DO ~ActionOverride("firorc02",EscapeArea()) ActionOverride("firorc03",EscapeArea())~ EXIT
END

CHAIN VPSHAJ legacy314
~(*Her eyes light up as she gleefully swings her sword*) I'm not fussy... one orc is much the same as another. Just point me at him and watch him bleed.~
 IF ~~ THEN EXTERN ~FIRORC02~ 2
END

IF WEIGHT #-9 ~Global("VP_STB_orcsflees","LOCALS",1)~ THEN BEGIN legacy315
~This is too easy, we are being toyed with! If it is Firkraag's intention to put us off our guard by sending menial creatures to meet us, then it is he who has underestimated us... and that will be his undoing!~
 IF ~~ THEN DO ~SetGlobal("VP_STB_orcsflees","LOCALS",2)~ EXIT
END

CHAIN VPSHAJ legacy320
~(*Scoffs*) Share the booty... who the hell does she think she is kidding?! Her lying tongue was saying one thing but she couldn't hide the greed in her eyes.~
 IF ~~ THEN GOTO legacy321
END

CHAIN VPSHAJ legacy321
~Should have made her eat steel and taken the bloody key from her! Would have meant one less potential enemy at our backs... Damn <CHARNAME> and <PRO_HISHER> need to aid lame ducks! It makes me want to spew up!~
 IF ~~ THEN EXIT
END

CHAIN VPSHAJ legacy322
~Ha... the treacherous bitch thought to leave us dead and buried in the tomb! Well she's paid for her arrogance and now she's the one left to rot down here.~
 IF ~~ THEN DO ~SetGlobal("SamiaPreempted","GLOBAL",1) EraseJournalEntry(7167) CreateCreatureObject("Akae",Myself,0,0,0) CreateCreatureObject("Kaol",Myself,0,0,0) CreateCreatureObject("Chak",Myself,0,0,0) CreateCreatureObject("Legdor",Myself,0,0,0) CreateCreatureObject("Deshar",Myself,0,0,0) ActionOverride("Akae",Enemy()) ActionOverride("Kaol",Enemy()) ActionOverride("Chak",Enemy()) ActionOverride("Legdor",Enemy()) ActionOverride("Deshar",Enemy()) ActionOverride("Samia",Enemy())~ EXIT
END

IF WEIGHT #-10 ~Global("VP_STB_samiadead","LOCALS",1)~ THEN BEGIN legacy323
~(*Spitting out her words*) Well, I can't say that surprised me... treacherous bitch! The arrogance of her, thinking she would get us to do her dirty work and all the time she was plotting murder when it was done...~
 IF ~~ THEN GOTO legacy324
END

CHAIN VPSHAJ legacy324
~I like her style... but she's paid for her arrogance and now she's the one left to rot down here!~
 IF ~~ THEN DO ~SetGlobal("VP_STB_samiadead","LOCALS",2)~ EXIT
END

CHAIN VPSHAJ durbin1
~(*Stepping in front of the old man*) Not so fast! I haven't finished with this old man yet. So old man, tell me, how do you come to be locked in with these beasts... run foul of the cowardly Firkraag did you?~
 IF ~~ THEN EXTERN ~DURBIN~ D8
END

CHAIN VPSHAJ durbin2
~Many years you say... just how 'many' years might that be? Enough to know a great deal about the comings and goings of all his Lordships visitors I'd wager... eh old man?~
 IF ~~ THEN EXTERN ~DURBIN~ D9
END

CHAIN VPSHAJ durbin3
~Yea, I've already been told that but this visitor left. It's not him I'm interested in, Firkraag should have sent him straight to the abyss for all I care, but what I am interested in are the items this... this man gave to Firkraag in exchange for knowledge. Dossan was his name... Angelo Dossan. Ringing any bells in that senile brain of yours?~
 IF ~~ THEN EXTERN ~DURBIN~ D10
END

CHAIN VPSHAJ durbin4
~(*Drawing her sword impatiently, she snarles*) Need a little help remembering do we?~
 IF ~~ THEN EXTERN ~DURBIN~ D11
END

CHAIN VPSHAJ durbin5
~They're not so little to me so you best start remembering and quick! Besides, if you don't I'll take my pleasure in gutting you where you stand... starting here... (*Her eyes glaze over as she jabs the point of her sword toward his throat and draws it slowly down to his groin... a flicker of flame dancing along her knuckles*)... to here!~
 = ~Believe me I know just how to do it so's a man gets to watch his own entrails as they fall steaming to the ground.~
 IF ~~ THEN EXTERN ~DURBIN~ D12
END

CHAIN VPSHAJ durbin6
~(*Moving her sword slowly back to his throat the flame vanishes*)... I'll take that as a compliment. Now, what are you remembering, or do you need a demonstration of just how much I love bloodshed?~
 IF ~~ THEN EXTERN ~DURBIN~ D13
END

CHAIN VPSHAJ durbin7
~(*Her eyes light up*) Very likely. If Dossan had such items then Firkraag's vanity alone would cause him to want to own them and a bargain could well have been struck. Tell me, where are they hidden?~
 IF ~~ THEN EXTERN ~DURBIN~ D14
END

CHAIN VPSHAJ durbin8
~(*She rages... a red hot serpent like flame streaks down her sword*) The bastard... the cowardly bastard! I'll not only cut his lying tongue from his mouth but I'll rip his still beating heart from his chest and force him to eat them both for his treachery. Tell me, before you share his fate, what of the thief?~
 IF ~~ THEN EXTERN ~DURBIN~ D15
END

CHAIN VPSHAJ durbin9
~(*Her eyes burning with rage*) Tell me and you can keep your miserable life, you have my word!~
 IF ~~ THEN EXTERN ~DURBIN~ D16
END

CHAIN VPSHAJ durbin10
~(*Still gripping her sword*) Umar Hills?! Curses... I gave my word so go, get out of my sight! Consider yourself fortunate that I find little sport in taking the life of one who already walks in death's shadow. Besides, Firkraag already knows of our presence so you're in no position to betray us to him.~
 = ~I'll save my rage for the coward himself! As for that scumbag of a thief, he can run but he can't hide. He's sure as hell going to regret choosing to run so far, forcing me to back track after him!~
 IF ~~ THEN DO ~SetGlobal("VP_Create_Esmond","GLOBAL",1) ActionOverride("durbin",EscapeArea())~ EXIT
END

CHAIN VPSHAJ durbin11
~(*Stepping in front of the old man*) Not so fast! I haven't finished with this old man yet. So you've served Firkraag for many years... just how 'many' years might that be? Enough to know a great deal about the comings and goings of all his Lordships visitor's I'd wager... eh old man?~
 IF ~~ THEN EXTERN ~DURBIN~ D8
END

CHAIN VPSHAJ durbin12
~Not so fast old man, we're not done talking yet! The cowardly beast you served told me of a servant who had made off with some of his treasures. Was he speaking the truth or are they still stashed away in this warren somewhere?~
 IF ~~ THEN EXTERN ~DURBIN~ D20
END

CHAIN VPSHAJ durbin13
~(*Drawing her sword she snarls*) He got what he deserved! Lord, dragon, whatever... the son of a bitch won't be manipulating anyone again! Now, if you don't want to join your Lord in the abyss you'll tell me about this thief!~
 IF ~~ THEN EXTERN ~DURBIN~ D21
END

CHAIN VPSHAJ durbin14
~This has nothing to do with glory old man and besides, if you don't start talking I'll take my pleasure in gutting you where you stand... starting here...~
 = ~(*Her eyes glaze over as she jabs her sword at his throat and running it slowly down to his groin... as a barely noticeable small thin flame snakes it's way down her sword to the point*)... to here! Believe me I know just how to do it so's a man gets to watch his own entrails as they fall steaming to the ground, just the way your Lord did!~
 IF ~~ THEN EXTERN ~DURBIN~ D21a
END

CHAIN VPSHAJ durbin15
~(*Moving her sword slowly back to his throat*)... Tell me and you can keep your miserable life, you have my word!~
 IF ~~ THEN EXTERN ~DURBIN~ D22
END

CHAIN VPSHAJ durbin16
~(*Her sword still at his throat*) Umar Hills?! Curses... I gave my word so go, get out of my sight! Consider yourself fortunate that I find little sport in taking the life of one who already walks in death's shadow.~
 = ~As for that scumbag of a thief, he can run but he can't hide. He's sure as hell going to regret choosing to run so far, forcing me to back track after him!~
 IF ~~ THEN DO ~SetGlobal("VP_Create_Esmond","GLOBAL",1) ActionOverride("durbin",EscapeArea())~ EXIT
END

CHAIN VPSHAJ durbin17
~Let's not be hasty here, the old man may have something to tell us yet. Listen and listen good for your life may well depend on your answer. The dragon who called himself Lord Firkraag is dead, what do you know of him?~
 IF ~~ THEN EXTERN ~DURBIN~ D19
END

CHAIN VPSHAJ durbin18
~Let's not be hasty here, the old man may have something to tell us yet. Listen and listen good for your life may well depend on your answer old man. What do you know of the dragon calling himself Lord Firkraag?~
 IF ~~ THEN EXTERN ~DURBIN~ D24
END

CHAIN VPSHAJ durbin19
~(*Draws her sword*) Oh I think I will! You're going to tell me all about a thief your Lord claimed ran off with some very special treasures of his, because if you don't I'll take my pleasure in gutting you where you stand... starting here.~
 = ~(*Her eyes glaze over as she jabs her sword at his throat and running it slowly down to his groin... as a barely noticeable small thin flame snakes it's way down her sword to the point*)... to here! Believe me I know just how to do it so's a man gets to watch his own entrails as they fall steaming to the ground.~
 IF ~~ THEN EXTERN ~DURBIN~ D21a
END

CHAIN VPSHAJ durbin20
~Let's not be hasty here, the old man may have something to tell us yet. Listen and listen good for your life may well depend on your answer old man. Exactly how much were you privy to the dragon's dealings?~
 IF ~~ THEN EXTERN ~DURBIN~ D24
END

CHAIN VPSHAJ legacy401
~(*Sneering*) Don't flatter yourself! You forget, it was a red dragon I had in mind to find when first I set out on my quest. So whereas discovering you to be that dragon was unexpected, I find you no more intimidating than I would a gnat!~
 IF ~~ THEN EXTERN ~FIRKRA02~ firecr02
END

CHAIN VPSHAJ legacy402
~Ho, not so fast you scaly lizard. I am not done with you. How much do you value you reputation... enough to trade a few trinkets to stop others of your kind knowing how a human wrangled knowledge from you for the cost of a few paltry items?~
 IF ~~ THEN EXTERN ~FIRKRA02~ firecr03
END

CHAIN VPSHAJ legacy403
~You'll not dismiss me that easily, and don't think I'll be put off by a few puffs of smoke either! Give me what I have tramped this stinking dungeon for, and maybe I'll leave your ugly great head atop that scaley carcass of yours!~
 IF ~~ THEN EXTERN ~FIRKRA02~ firecr04
END

CHAIN VPSHAJ legacy404
~(*Sparks appear at her finger tips as she reaches for her sword*) So your cowardly servant spoke the truth! Listen you overheated heap of lizard dung I'm not about to leave empty handed! If I can't take what I came for, then I'll take your treacherous heart, preferably still beating, for wasting my time!~
 IF ~~ THEN EXTERN ~FIRKRA02~ firecr05
END

CHAIN VPSHAJ legacy405
~(*Sparks appear at her finger tips as she reaches for her sword*) What! You lie you overheated heap of lizard dung! I'll not leave empty handed, either you hand them over or I'll take your treacherous heart, preferably still beating, for wasting my time!~
 IF ~~ THEN EXTERN ~FIRKRA02~ firecr05
END

CHAIN VPSHAJ legacy405a
~Now your talking! The feel of cold steel in the belly will quell any embers lurking inside this steaming heap of lizard dung's innards!~
 IF ~~ THEN DO ~SetGlobal("VP_Create_Esmond","GLOBAL",1)~ EXTERN ~FIRKRA02~ 25
END

CHAIN VPSHAJ legacy406
~(*Her eyes flash with anger as she sheathes her sword*)...~
 IF ~True()~ THEN GOTO legacy406a
 IF ~InParty("Hrothgar") !Dead("Hrothgar")~ THEN EXTERN ~HROTHJ~ firattak
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN ~VICONIJ~ firattak
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN ~EDWINJ~ firattak
 IF ~InParty("Dar") !Dead("Dar")~ THEN EXTERN ~DARJ~ firattak
 IF ~InParty("Taffic") !Dead("Taffic")~ THEN EXTERN ~TAFFICJ~ firattak
 IF ~InParty("Leina") !Dead("Leina")~ THEN EXTERN ~LEINAJ~ firattak
 IF ~InParty("Melora") !Dead("Melora")~ THEN EXTERN ~MELORAJ~ firattak
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~KORGANJ~ firattak
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ firattak
END

CHAIN VPSHAJ legacy406a
~This isn't over lizard, not by a long way! I know something of the items I seek, you were foolish to allow them to be taken from you. Mark my words, my sword WILL drink of your blood... just not today!~
 IF ~~ THEN EXIT
END

CHAIN VPSHAJ legacy407
~(*Angrily*) You mean to bargain with this creature, even though he played you for the fool? Bah... it's plain to see why you are so often easily duped! Hear him out if you must and while you're at it ask him why he so anxious for the return of these items?~
 IF ~~ THEN EXTERN ~FIRKRA02~ firecr06
END

CHAIN VPSHAJ legacy408
~(*To herself as she tightens her grip around the hilt of her sword*) When I find it, no one, and I mean NO ONE other than me is going to be putting a hand on my property. Any one who tries to put it back into the filthy claws of that creature will feel my sword tickling their innards!~
 IF ~~ THEN DO ~SetGlobal("VP_AngelosLegacy","GLOBAL",4) SetGlobal("VP_Create_Esmond","GLOBAL",1) RealSetGlobalTimer("VP_FirAttacksParty","GLOBAL",60)~ EXIT //Firkraag's quest accepted - escape from the area within half a minute and do not come back untill the quest is finished.
END

IF WEIGHT #-11 ~Global("VP_Firkrag_Is_Dead","GLOBAL",1)~ THEN BEGIN legacy409
~(*Stabbing her sword into the bloody carcase of the dragon*) Ha, see how easily the mighty has fallen... see how the dirt beneath the stones eagerly drink its blood. So much blood... and so, those who dare trifle with me as this creature... so shall they share the same fate.~
 IF ~OR(2) !InParty("Leina") Dead("Leina")~ THEN DO ~SetGlobal("VP_Firkrag_Is_Dead","GLOBAL",2)~ EXIT
 IF ~InParty("Leina") !Dead("Leina")~ THEN EXTERN ~LEINAJ~ firkdead1
END


APPEND ~FIRORC02~

IF WEIGHT #-1 ~NumTimesTalkedTo(0)~ THEN BEGIN orcsflee1
~Pleeze, mercy on us! Me sorry. Don't kill. Me just following orders. Didn't want to eat children or kick old people. Just job!~
 IF ~OR(2) !InParty("Sharteel") Dead("Sharteel")~ THEN REPLY ~Foul orc! You will suffer the same fate as all your kind!~ GOTO 2
 IF ~OR(2) !InParty("Sharteel") Dead("Sharteel")~ THEN REPLY ~Flee from here, foul creature, and never harm another!~ GOTO 1
 IF ~OR(2) !InParty("Sharteel") Dead("Sharteel")~ THEN REPLY ~Cowardly creature, have some dignity in death even if you had none in life.~ GOTO 3
 IF ~OR(2) InParty("Sharteel") !Dead("Sharteel")~ THEN EXTERN ~SHARTJ~ legacy310
END

CHAIN FIRORC02 orcsflee2
~(*His face blanches with fear*) Loo... loo... look please, we like it here, aint that so Flaylan? We don't interfere with the lord's business and if ya have a brain then ya'd run and forget what ya come here for aint that right Flaylan?~
 IF ~~ THEN EXTERN ~FIRORC03~ orcs2flee1
END

CHAIN FIRORC02 orcsflee3
~Com'on, Flaylan, we run! I not want to be around when lord Firkraag frazzles this lot. You wait and see, you all gonna get it good and proper.~
 IF ~~ THEN EXTERN ~FIRORC03~ orcs2flee2
END

END

APPEND ~FIRORC03~

CHAIN FIRORC03 orcs2flee1
~Lord Jierdan says the daughter would follow the father, and he's always right. Fool girl, ya don't know what ya be up against... none of youse do! Enuff to say s'no shame to turn back now, run whilst ya still can.~
 IF ~~ THEN EXTERN ~SHARTJ~ legacy311
END

CHAIN FIRORC03 orcs2flee2
~He sure you gonna die. Me sure too. Me sure I should run other way so I not killed too by accident. He get mad, bad things happen.~
 IF ~~ THEN EXTERN ~SHARTJ~ legacy312
END

END

EXTEND_BOTTOM ~SAMIA~ 14
 IF ~InParty("Sharteel") !Dead("Sharteel")~ THEN UNSOLVED_JOURNAL ~Rescue Garren's child from Firkraag.

Inside Firkraag's dungeon I have encountered a woman by the name of Samia... a relic hunter, of sorts, who is searching for texts relating to a dead Tethyrian king. I have agreed to take her key and find the texts she needs from the king's burial chamber... which is supposedly protected by a mysterious, invisible creature, the last of seven guardians, according to the legends. Once I have the texts I am to return to Samia.~ EXTERN ~SHARTJ~ legacy320

END

EXTEND_BOTTOM ~SAMIA~ 18
 IF ~InParty("Sharteel") !Dead("Sharteel")~ THEN SOLVED_JOURNAL ~Samia's plan foiled.

Samia, the relic hunter in Firkraag's dungeon, was not what she seemed. Her plan was to get a dupe to get the treasure within the tomb for her... and then kill whomever retrieved it with the help of her companions. Fortunately, she has paid for her arrogance.~ EXTERN ~SHARTJ~ legacy322
END

REPLACE_ACTION_TEXT FIRWLF01
~OpenDoor("DOOR43")[^!]*OpenDoor("DOOR44")[^!]*ActionOverride("firwlf02",MoveToPointNoInterrupt([986.2033]))[^!]*MoveToPointNoInterrupt([1066.2095])[^!]*SetGlobal("WerewolfMove","LOCALS",1)~
~OpenDoor("DOOR43") OpenDoor("DOOR44") CreateCreature("durbin",[717.407],10) ActionOverride("firwlf02",MoveToPointNoInterrupt([986.2033])) MoveToPointNoInterrupt([1066.2095]) SetGlobal("WerewolfMove","LOCALS",1)~

REPLACE_ACTION_TEXT FIRWLF01
~CreateCreature("wolfwe02",[1093.1867],0)[^!]*CreateCreature("wolfwe02",[1267.1986],0)[^!]*ActionOverride("firwlf02",ForceSpell(Myself,WOLFWERE_CHANGE))[^!]*ForceSpell(Myself,GREATER_WOLFWERE_CHANGE)~
~CreateCreature("durbin",[717.407],10) CreateCreature("wolfwe02",[1093.1867],0) CreateCreature("wolfwe02",[1267.1986],0) ActionOverride("firwlf02",ForceSpell(Myself,WOLFWERE_CHANGE)) ForceSpell(Myself,GREATER_WOLFWERE_CHANGE)~

EXTEND_BOTTOM ~FIRKRA02~ 21
 IF ~InParty("Sharteel") !Dead("Sharteel") Global("VP_Lit_Firecracker","GLOBAL",0) !Global("VP_AngelosLegacy","GLOBAL",0)~ THEN GOTO firecr01
END

REPLACE ~FIRKRA02~

CHAIN FIRKRA02 24 // from: 23.0
#43191 /* ~Do you still demand a battle? You shall have one, if you wish, but you will not win. Do not be foolish, <PRO_GIRLBOY>.~ */
 IF ~OR(3) !InParty("Sharteel") Dead("Sharteel") !Global("VP_Lit_Firecracker","GLOBAL",0)~ THEN REPLY #43192 /* ~I will leave for now, but I will return.~ */ GOTO 20
 IF ~OR(3) !InParty("Sharteel") Dead("Sharteel") !Global("VP_Lit_Firecracker","GLOBAL",0)~ THEN REPLY #43193 /* ~I will fight you, and I shall win. I can do no other.~ */ GOTO 25
 IF ~InParty("Sharteel") !Dead("Sharteel") Global("VP_Lit_Firecracker","GLOBAL",0) !Global("VP_AngelosLegacy","GLOBAL",0)~ THEN GOTO firecr01
END

END

EXTEND_BOTTOM ~FIRKRA02~ 32
 IF ~InParty("Sharteel") !Dead("Sharteel") Global("VP_Lit_Firecracker","GLOBAL",0) !Global("VP_AngelosLegacy","GLOBAL",0)~ THEN GOTO firecr01
END

APPEND ~FIRKRA02~

CHAIN FIRKRA02 firecr01
~Now what about you my little firecracker, you still looking to take on Lord Firkraag or do you now find my true form a little... shall we say... intimidating?~
 IF ~~ THEN DO ~SetGlobal("VP_Lit_Firecracker","GLOBAL",1) SetGlobal("Firmag01Move","GLOBAL",1) ActionOverride("firmag01",ForceSpell(Myself,DRYAD_TELEPORT))~ UNSOLVED_JOURNAL #15724 EXTERN ~SHARTJ~ legacy401
END

CHAIN FIRKRA02 firecr02
~Brave words but I suspect they are more for the benefit of your friends' ears than mine. Now be a good little girl and go wrest the Windspear brat from Conster before he toasts it! I am done with you.~
 IF ~~ THEN EXTERN ~SHARTJ~ legacy402
END

CHAIN FIRKRA02 firecr03
~(*Small puffs of smoke leave the dragon's nostrils*) Don't you mess with me girl... I'll not look as kindly on the daughter as I did the father!~
 = ~Dossan intrigued me and that is the only reason I tolerated his presence... you however, do not! Believe me when I say you do not want to test my patience nor do you want to feel the full fury of a dragon's wrath!~
 = ~Now go away and leave me to ponder on more important matters.~
 IF ~~ THEN EXTERN ~SHARTJ~ legacy403
END

CHAIN FIRKRA02 firecr04
~You are either very brave or very foolish... like father like daughter it would seem.~
 = ~Well, daughter of Dossan, know that I could have wrested those trinkets from your father easily, but his naiveness and audacity in thinking he could bargain with me was... well, shall we say... refreshing.~
 = ~Besides, it gave me the opportunity to experience the emotion you humans call benevolence. Living as long as we do, my kin like to experience all that there is to experience... including all the emotions of your other races.~
 = ~Strange, the only thing I felt was a bad taste in my mouth. Not a pleasant experience at all and certainly not one I intend to repeat. Anyway, I no longer have the items you speak of so, if it is your intention to save the brat child then I suggest you do so quickly, Conster is not a man to be kept waiting.~
 IF ~Global("VP_Know_Durbin","GLOBAL",1)~ THEN EXTERN ~SHARTJ~ legacy404
 IF ~Global("VP_Know_Durbin","GLOBAL",0)~ THEN EXTERN ~SHARTJ~ legacy405
END

CHAIN FIRKRA02 firecr05
~(*Small flames dance menacingly from his tongue as he speaks*) Ho, not so fast my fiery maiden... if it's a heated confrontation you want I am more than willing to oblige.~
 = ~You are a credit to Dossan. In fact you would make any dragon proud to have sired you. A temper such as yours could be nurtured to reach untold heights.~
 = ~The fool Dossan didn't know what he had spawned, you do him proud, daughter of Dossan, but before you do anything foolish which will surely lead to your death, I have a proposition to put to you and this little group. What say you <CHARNAME>, are you up for bargaining?~
 ++ ~Ye gods woman... we're not set up to take down a dragon! Hold that temper of yours and let's get out of here whilst we can.~ EXTERN ~SHARTJ~ legacy406
 ++ ~He'll keep Shar-Teel. I'm not about to strike a bargain with this creature, nor do I wish a confrontation until I am ready. We're leaving... and I mean now!~ EXTERN ~SHARTJ~ legacy406
 ++ ~Put your sword away Shar-Teel. I want to hear his offer.~ EXTERN ~SHARTJ~ legacy407
 ++ ~That temper of yours will be the death of us yet! Ah what the heck, nothing ventured nothing gained. Let's make this quick... before he has chance to stoke that fiery breath of his.~ EXTERN ~SHARTJ~ legacy405a
END

CHAIN FIRKRA02 firecr06
~(*His nostrils flare*) Be quiet girl, you are not the one making decisions here!~
 = ~(*Turning his attention back to you*) My proposition is one that should not prove too difficult to a capable person such as yourself. If you find and bring to me the thief... No, come to think of it, I have no need of the thief, his body will suffice.~
 = ~Bring me the traitor's body and all that he stole from me, and I shall reward you with riches beyond anything you can imagine. What say you child of Bhaal?~
 IF ~Global("VP_Know_Durbin","GLOBAL",0)~ THEN REPLY ~I can imagine plenty... still I never say no to more. Where might I find this thief?~ GOTO firecr07
 IF ~Global("VP_Know_Durbin","GLOBAL",0)~ THEN REPLY ~I don't care much for treachery myself. Tell me where the coward is hiding and Ill dispatch him for you.~ GOTO firecr07
 IF ~Global("VP_Know_Durbin","GLOBAL",0)~ THEN REPLY ~I am no common assassin, but tell me where this thief can be found and maybe if I'm passing, I'll have a word with him on your behalf.~ GOTO firecr07
 IF ~Global("VP_Know_Durbin","GLOBAL",0)~ THEN REPLY ~What does she mean... why the concern over these particular trinkets when you are clearly sitting on a sizable hoard already?~ GOTO firecr09
 IF ~Global("VP_Know_Durbin","GLOBAL",1)~ THEN REPLY ~I can imagine plenty, still I never say no to more... The Umar Hills I believe is where Durbin says he is holed up.~ GOTO firecr10
 IF ~Global("VP_Know_Durbin","GLOBAL",1)~ THEN REPLY ~I don't care much for treachery myself. Durbin has already told me where to find this thief... the coward will find no quarter among the trees.~ GOTO firecr10
 IF ~Global("VP_Know_Durbin","GLOBAL",1)~ THEN REPLY ~I am no common assassin, but if I happen to pass through this forest that Durbin mentioned, then I'll maybe have a word with him on your behalf.~ GOTO firecr10
 ++ ~What does she mean... why the concern over these particular trinkets when you are clearly sitting on a sizable hoard already?~ GOTO firecr09
END

CHAIN FIRKRA02 firecr07
~Hm... now there is my dilemma... you see if I knew where the traitor was holed up I wouldn't be needing your services now would I?~
 = ~The last sighting of the coward was somewhere in the forest, far north of this place but he has evaded all my endeavours to track him to his hole. My guess is he is long gone by now, and my property lost with him.~
 = ~You child of Bhaal, have a long journey ahead of you before you find your place in the scheme of things, but you might just run into him somewhere along this strange path of yours. I am a patient being, age has taught me both patience and wisdom and that it is better to take one's time when seeking to overcome life's little hiccups... impetuosity often as not ends with one's demise.~
 = ~So I will not rush you in this matter... but if your lust for riches spurs you into action and you return quickly, I am sure I can find a magical item or two around here to show my appreciation. Do we have a bargain... and I suggested you decide quickly as I know Conster is anxious to relinquish his role as babysitter.~
 ++ ~Yea gods... you too! Am I the only one around here who doesn't know my *path* as you call it? We must talk some more about that when I've dealt with your thief.~ GOTO firecr08
 ++ ~The forest far north of here, not a lot to go on seeing as it's nearly all forest in that direction. Still, you can start counting out that reward, I'll soon flush the traitor out.~ GOTO firecr08
 ++ ~He's as good as dead... just you keep that soon to be hoard of mine warm!~ GOTO firecr08
 ++ ~I don't think so... I'll just relieve you of that hoard that you're sitting on as payment for wasting my time.~ EXTERN ~SHARTJ~ legacy405a
END

CHAIN FIRKRA02 firecr08
~Yes... well... let's not be getting ahead of ourselves. If you do manage to find my possessions, then and only then dare you venture back into my presence. If you are foolhardy enough to attempt to gain entry without them, I will see this as an assault on myself and will act accordingly.~
 = ~(*Yawning*) Now go... we are done talking. Remember my warning and return only when you have completed your part of our bargain.~
 IF ~~ THEN EXTERN ~SHARTJ~ legacy408
END

CHAIN FIRKRA02 firecr09
~Yes, and along the way I have lost both talon and tooth to win such prizes. I'll not relinquish so easily that which has cost me. No matter whether I paid with talon or knowledge, the price was paid and by rights the *trinkets* are mine.~
 = ~What ever they may or may not be is neither here nor there... they are mine and I simply wish them returned to me. In return I have offered you wealth beyond your imagining and be assured, I'll not repeat such an offer again... so what is your answer?~
 ++ ~I can imagine plenty... still I never say no to more. Where might I find this thief?~ GOTO firecr07
 ++ ~I don't care much for treachery myself. Tell me where the coward is hiding and I'll dispatch him for you.~ GOTO firecr07
 ++ ~I am no common assassin, but tell me where this thief can be found and maybe if I'm passing, I'll have a word with him on your behalf.~ GOTO firecr07
END

CHAIN FIRKRA02 firecr10
~Durbin... yes... the name is vaguely familiar to me, but then I have had so many servants over the centuries I can't be expected to remember one name out of so many.~
 = ~I have sent my servants to explore each and every sighting of him, and for all my pains they return empty handed. My guess is he is long gone by now, and my property lost with him.~
 = ~You child of Bhaal, have a long journey ahead of you before you find your place in the scheme of things, but you might just run into him somewhere along this strange path of yours. I am a patient being, age has taught me both patience and wisdom and that it is better to take one's time when seeking to overcome life's little hiccups... impetuosity often as not ends in death.~
 = ~So I will not rush you in this matter... but if your lust for riches spurs you into action and you return quickly, I am sure I can find a magical item or two around here to show my appreciation. Do we have a bargain.... and I suggested you decide quickly as I know Conster is anxious to relinquish his role as babysitter.~
 ++ ~Yea gods... you too! Am I the only one around here who doesn't know my *path* as you call it? We must talk some more about that when I've dealt with your thief.~ GOTO firecr08
 ++ ~It's a pretty big forest to hide in, it's just possible your servants didn't look long enough. No matter, you can start counting out that reward, I'll soon flush the traitor out.~ GOTO firecr08
 ++ ~He's as good as dead... just you keep that soon to be hoard of mine warm!~ GOTO firecr08
 ++ ~I don't think so... I'll just relieve you of that hoard that you're sitting on as payment for wasting my time.~ EXTERN ~SHARTJ~ legacy405a
END

END

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
 IF ~True()~ THEN EXTERN ~HROTHJ~ 401
 IF ~InParty ("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ sharaval