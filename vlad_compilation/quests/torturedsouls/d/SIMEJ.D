BEGIN VPSIMJ

CHAIN VPSIMJ 4
~If you need a hand, I'd gladly come with you, if not - I'll stay around the ship and keep an eye on the shifty captain for you...~
END
 ++ ~Great, stay with the ship then, I do not fully trust Saemon. It might easily be his own plot to get the cash and avoid a dangerous sailing to Spellhold. Stay right where you are and call if Havarian will be up to no good.~ EXTERN VPSIMJ 5
 ++ ~Sure, always glad to have an extra hand. ~ EXTERN VPSIMJ 6

CHAIN VPSIMJ 5
~Sure, proceed without me if you are so inclined. I will stay here for the time being and you can always count on my help if you change your mind.~
DO ~SetGlobal("Kicked_Out","LOCALS",1) ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() LeaveParty()~
EXIT

CHAIN VPSIMJ 6
~Let's go.~
DO ~SetGlobal("Kicked_Out","LOCALS",0)~
EXIT

CHAIN VPSIMJ 14
~A particular congratulations to you, captain. It was fortunate you distracted those other ships we saw in the distance. Your signals in the night; were they some type of warning?~
EXTERN PPSAEM 54

CHAIN VPSIMJ 15
~Again, my compliments. It did seem that they truly believed your signal meant there would be trouble if they attacked.~
EXTERN PPSAEM 55

// Sime Romance
// Flirt1
/////////////////////////////////

CHAIN
IF WEIGHT #-99 ~Global("VP_MyFlirt","LOCALS",2)~ THEN VPSIMJ 7
~<CHARNAME>, you once had asked me about my connection with Shadow Thieves...~ [SIMEPC06]
END
 ++ ~Yes, I am quite curious...~ EXTERN VPSIMJ 8
 ++ ~Sime, it's really, really, really bad time to bring this stuff up. Let's talk about that later.~ EXTERN VPSIMJ 39

CHAIN VPSIMJ 8
~Aran Linvail is my... father, <CHARNAME>. ~ [SIMEPC07]
END
 ++ ~What?~ EXTERN VPSIMJ 9
 ++ ~Your father? That's quite a twist!~ EXTERN VPSIMJ 9
 ++ ~I suspected it all along, my dear. You look alike. But go on, please.~ EXTERN VPSIMJ 9

CHAIN VPSIMJ 9
~Yes... I do not remember my mother. Aran does not speak of her often. Theirs was a difficult relationship. Aran was young and during a reckless party he boasted that he could rob a mysterious elven temple of Selune. A lieutenant of the Shadow Thieves Guild promised him admission to the Guild, if he would bring Seluna's necklace, a powerful and priceless relic... Aran took challenge seriously and robbing the temple became his obsession. After months of careful planning he managed to get into the temple...~ [SIMEPC08]
END
 ++ ~A brilliant carrier move...~ EXTERN VPSIMJ 10
 ++ ~Wow, that Aran was quite a man!~ EXTERN VPSIMJ 10
 ++ ~Sime, I do not want to listen to this story, it sickens me to know that someone can rob a temple of Selune.~ EXTERN VPSIMJ 85

CHAIN VPSIMJ 10
~Well, yes... Apparently the information he gathered was faulty and instead of making it into the temple's main hall he broke into one of the cleric's private chambers. He plunged down from the window right at my mother's feet. Aran looked so scared and silly that she laughed and took pity on the would be thief. And he... he was enchanted by her beauty and instead of running away he stayed with her that night.~
END
 ++ ~Ahem, Sime, why are you telling me that? And anyway, how Aran then got into the Guild and became Shadow Master.~ EXTERN VPSIMJ 11
 ++ ~Sime, please, spare me that romantic nonsense.~ EXTERN VPSIMJ 84
 ++ ~If that's true, how did Aran become Shadow Master?~ EXTERN VPSIMJ 11

CHAIN VPSIMJ 11
~In truth - I do not know... He might have done something else... or faked the necklace. My father is quite resourceful.~
DO ~SetGlobal("VP_MyFlirt","LOCALS",3) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RealSetGlobalTimer("VP_SimeFlirtTimer","GLOBAL",2700)~
EXIT

CHAIN VPSIMJ 12
~It's very sad. They could not see each other often, because he had to stay in the city, trying to move up in the Guild and my mother would have none of it... So they travel in secret to meet each other all the time. On one such a trip, shortly after I was born, bandits killed my mother...~
END
 ++ ~I am sorry to hear that, Sime.~ EXTERN VPSIMJ 13

CHAIN VPSIMJ 13
~Yes, I wish I at least one small memory of her... But I do not... Aran was a wonderful father however. He meant everything to me when I was a kid. But I could not accept his ways. I am a half-elf, so his days would come to an end soon... I am trying to spend as much time with him as I can... And that's why I was by his side, when you come to the Guild... My parent's problems...should be boring to you. Sorry for telling you all this.~
END
 ++ ~Sime, I know how difficult it is to keep everything in. Please, talk to me whenever you feel like it.~ EXTERN VPSIMJ 37
 ++ ~No, actually it was very entertaining!~ EXTERN VPSIMJ 38
 ++ ~Sime, I am afraid, yes, it was terribly boring and I struggled to keep awake. I hope you got it out of your system now.~ EXTERN VPSIMJ 39

CHAIN VPSIMJ 37
~No better comfort could I ask, <CHARNAME>. I will continue to stand for you if you do the same for me. Together we can... togeth...~
EXIT

CHAIN VPSIMJ 38
~You think so? I am glad I have entertained you... Begone.~
DO ~SetGlobal("VP_MyFlirt","LOCALS",3) SetGlobal("VP_LoveTalkDelay","LOCALS",0) SetGlobal("SimeRomanceActive","GLOBAL",3)~
EXIT

CHAIN VPSIMJ 39
~If you wish.~
DO ~SetGlobal("VP_MyFlirt","LOCALS",3) SetGlobal("VP_LoveTalkDelay","LOCALS",0) SetGlobal("SimeRomanceActive","GLOBAL",3)~
EXIT

CHAIN VPSIMJ 84
~Got it! No romantic nonsense in <CHARNAME>'s company!~
DO ~SetGlobal("VP_MyFlirt","LOCALS",3) SetGlobal("VP_LoveTalkDelay","LOCALS",0) SetGlobal("SimeRomanceActive","GLOBAL",3)~
EXIT

CHAIN VPSIMJ 85
~I am glad to hear that! I also thought that it was one of the most outrageous of my father's notions. On the other hand that lead to my birth, so I guess I cannot complain too much.~
DO ~SetGlobal("VP_MyFlirt","LOCALS",3) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RealSetGlobalTimer("VP_SimeFlirtTimer","GLOBAL",2700)~
EXIT

// Sime Romance
// Flirt2
/////////////////////////////////

CHAIN
IF WEIGHT #-98 ~Global("VP_MyFlirt","LOCALS",4)~ THEN VPSIMJ 86
~The night is so beautiful... But it's on nights like this when I miss my mother the most...~
END
 ++ ~You never told me what happened to your mother. Where is she?~ EXTERN VPSIMJ 87
 ++ ~Sime, would you mind keeping your grievances to yourself? I am trying to get some rest here.~ EXTERN VPSIMJ 88

CHAIN VPSIMJ 87
~It's very sad. My parents could not see each other often, because he had to stay in the city, trying to move up in the Guild and my mother would have none of it... So they met in secret. Shortly after I was born, bandits killed my mother when she was travelling to one of their hideouts...~
END
 ++ ~I am sorry to hear that, Sime.~ EXTERN VPSIMJ 89
 ++ ~Look I'm crying already. May be you can tell me the rest another time?~ EXTERN VPSIMJ 88

CHAIN VPSIMJ 88
~I get the message. Sorry, I had mistaken you for someone with a heart.~
DO ~SetGlobal("VP_MyFlirt","LOCALS",5) SetGlobal("VP_LoveTalkDelay","LOCALS",0) SetGlobal("SimeRomanceActive","GLOBAL",3) RestParty()~
EXIT

CHAIN VPSIMJ 89
~I wish I had at least one small memory of her. But I do not. Aran was a wonderful father however. He meant everything to me when I was a child. But like my mother, I could not accept his ways. However, his days will come to an end soon. I am trying to spend as much time with him as I can. And that's why I was by his side, when you come to the Guild. My parent's problems... should be boring to you.~
END
 ++ ~Sime, I know how difficult it is to keep everything in. Please, talk to me whenever you feel like it.~ EXTERN VPSIMJ 90
 ++ ~No, actually it was very entertaining!~ EXTERN VPSIMJ 91
 ++ ~Sime, I am afraid, yes, it was terribly boring and I struggled to keep awake. I hope you got it out of your system now.~ EXTERN VPSIMJ 92

CHAIN VPSIMJ 90
~ Thank you, <CHARNAME>... and you always have my ear.~
DO ~SetGlobal("SimeRomanceActive","GLOBAL",1) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",3600) RealSetGlobalTimer("VP_SimeFlirtTimer","GLOBAL",1800) SetGlobal("LoveTalk","LOCALS",1) SetGlobal("VP_MyFlirt","LOCALS",5) RestParty()~
EXIT

CHAIN VPSIMJ 91
~Oh! You like the stories and songs of the doomed love? I might have one or two more for you then.~
DO ~SetGlobal("SimeRomanceActive","GLOBAL",1) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",3600) RealSetGlobalTimer("VP_SimeFlirtTimer","GLOBAL",1800) SetGlobal("LoveTalk","LOCALS",1) SetGlobal("VP_MyFlirt","LOCALS",5) RestParty()~
EXIT

CHAIN VPSIMJ 92
~I did. Thank you for taking the pain and listening.~
DO ~SetGlobal("VP_MyFlirt","LOCALS",5) SetGlobal("VP_LoveTalkDelay","LOCALS",0) SetGlobal("SimeRomanceActive","GLOBAL",3) RestParty()~
EXIT

// Sime Romance
// Vampires Encounter
/////////////////////////////////

CHAIN
IF WEIGHT #-97 ~Global("VP_SimeSolas","LOCALS",1) Global("VP_SimeDefeatedSols","GLOBAL",0)~ THEN VPSIMJ 28
~What? I can barely recognize you. Now I can see that it is true that Bodhi turns anyone unfortunate enough to her service. Evil assassins you were in life and evil beasts you became in undeath. I do not know whether to loathe or pity you.~ [SIMESO01]
EXTERN SOL 0

CHAIN VPSIMJ 29
~I did not forget the last lines as you did. They are:

And later a Solar, the gates ajar,
Will joyously restore to life the ores,
The dead flames and the tarnished mirrors

No restoration will you find and never will your spirit know rest after you have been destroyed. You say you are powerful? That we shall see! For the glory of life and light I shall strike you down!~ [SIMESO02]
DO ~SetGlobal("VP_SimeSolas","LOCALS",2) ActionOverride("Sol",Enemy()) ActionOverride("Sola",Enemy()) ActionOverride("Solauf",Enemy()) AttackReevaluate("Sol",75)~
EXIT

CHAIN
IF WEIGHT #-96 ~Global("VP_SimeSolas","LOCALS",2) Global("VP_SimeDefeatedSols","GLOBAL",1)~ THEN VPSIMJ 30
~It seems that I am an unfortunate companion, <CHARNAME>. This is not the first time I am attacked by those who wish to harm my father. With the Guild war growing ever more cruel maybe you would prefer not to be affiliated with Linvail's daughter?~
END
 ++ ~It was not the first time? Sime, you should have told me that before! I have enough enemies as is! I think you are right. Let's part.~ EXTERN VPSIMJ 31
 ++ ~Nonsense, Sime! The more the merrier! Let them all come and they will get their punishment from me.~ EXTERN VPSIMJ 32
 IF ~Gender(Player1,MALE)~ THEN REPLY ~I rather fancy protecting you... If you do not mind that is...~ EXTERN VPSIMJ 33
 ++ ~It's up to you really. Stay if you wish or go if you think that you are better off on your own.~ EXTERN VPSIMJ 34
 ++ ~Stay with us, Sime. You are a valuable companion and I am not afraid of an extra skirmish. Besides, I am already Bodhi's sworn enemy.~ EXTERN VPSIMJ 35

CHAIN VPSIMJ 31
~So be it.~
DO ~SetGlobal("VP_SimeDefeatedSols","GLOBAL",3) SetGlobal("Kicked_Out","LOCALS",1) DestroyItem("Wolf") DestroyItem("SiLeat") DestroyItem("SiAmul") DestroyItem("HelmSun") GivePartyAllEquipment() LeaveParty() EscapeArea()~ EXIT

CHAIN VPSIMJ 32
~I am not sure I like your attitude, but if you wish to continue to travel with me I shall stay by your side.~
DO ~SetGlobal("VP_SimeDefeatedSols","GLOBAL",2)~
EXIT

CHAIN VPSIMJ 33
~I do not mind at all... I am flattered.~
DO ~SetGlobal("VP_SimeDefeatedSols","GLOBAL",2)~
EXIT

CHAIN VPSIMJ 34
~I'd go then. I would not want to be responsible for your death or for the death of our companions. Should you need me, I will probably stay with father for a time.~
DO ~SetGlobal("VP_SimeDefeatedSols","GLOBAL",2) SetGlobal("Kicked_Out","LOCALS",1) ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() LeaveParty() EscapeAreaMove("AR0307",4642,2000,0)~
EXIT

CHAIN VPSIMJ 35
~We shall fight our enemies together then!~
DO ~SetGlobal("VP_SimeDefeatedSols","GLOBAL",2)~
EXIT

/////////////////////////////////

CHAIN
IF WEIGHT #-95 ~Global("AsylumPlot","GLOBAL",2) Global("simespeak","LOCALS",0)~ THEN VPSIMJ 16
~I do not trust this pirate, <CHARNAME>. His manner is that of a fool, but his behavior on the damned island and then during the voyage betrays a cunning mind beneath.~
END
 ++ ~He has delivered us as promised. There are more important things to worry about. ~ DO ~SetGlobal("simespeak","LOCALS",1) SetGlobal("SaemNoBodhi","GLOBAL",1)~ EXTERN VPSIMJ 17
 ++ ~Kill him if you wish. I don't care either way.~ DO ~SetGlobal("simespeak","LOCALS",1) SetGlobal("SaemNoBodhi","GLOBAL",1)~ EXTERN VPSIMJ 18
 ++ ~He seems amiable enough to me. Come, you'll feel better once off the ship.~ DO ~SetGlobal("simespeak","LOCALS",1) SetGlobal("SaemNoBodhi","GLOBAL",1)~ EXTERN VPSIMJ 17

CHAIN VPSIMJ 17
~Agreed. Be prepared, this place is dangerous enough even without my suspicions of Saemon.~
DO ~MoveToPoint([863.2422])~
EXIT

CHAIN VPSIMJ 18
~We may need his ship for our return. No, just be on your guard. He is probably the least of our worries in this place.~
DO ~MoveToPoint([863.2422]) SaveGame(0)~
EXIT

CHAIN
IF WEIGHT #-94 ~Global("AsylumPlot","GLOBAL",5)~ THEN VPSIMJ 19
~I knew he would prove treacherous. Our threats were sufficient to keep us safe while afloat, but there must be someone here that he fears even more.~
END
 IF ~!IfValidForPartyDialogue("Jaheira") !IfValidForPartyDialogue("Viconia") !IfValidForPartyDialogue("Anomen")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",6)~ EXTERN VPSIMJ 20
 IF ~IfValidForPartyDialogue("Jaheira")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",6)~ EXTERN JAHEIRAJ 456
 IF ~!IfValidForPartyDialogue("Jaheira") IfValidForPartyDialogue("Viconia")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",6)~ EXTERN VICONIJ 125
 IF ~!IfValidForPartyDialogue("Jaheira") !IfValidForPartyDialogue("Viconia") IfValidForPartyDialogue("Anomen")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",6)~ EXTERN ANOMENJ 262

CHAIN VPSIMJ 20
~Certainly this was Bodhi's doing. These creatures would not have followed Saemon of their own will. His weakness would disgust them.~
END
 ++ ~Unfortunately he fled the battle. I shall be sure to repay him if I see him again.~ EXTERN VPSIMJ 21
 ++ ~We should find him, track him to his lair! He has earned his death from this!~ EXTERN VPSIMJ 21
 ++ ~Forget him. I have no fear of him or any scheme he might come up with.~ EXTERN VPSIMJ 21

CHAIN VPSIMJ 21
~There are more important things to worry about right now, anyway. I must see that you are able to enter the asylum.~
EXTERN VPSIMJ 22

CHAIN VPSIMJ 22
~Go to the tavern. Speak with a man named Sanik. If there is a way in to the asylum, he will know it.~
EXTERN VPSIMJ 23

CHAIN VPSIMJ 23
~Work with haste, <CHARNAME>. Our enemies know we are here.~
UNSOLVED_JOURNAL ~Getting Inside the Asylum

With the vampires defeated and Saemon fled, Sime said that Bodhi was probably behind the pirate's treachery. I must work quickly to gain access to the asylum. Sime said to go to the local tavern and speak to a man named Sanik. She, meanwhile, would scout around and meet me at the pass leading to the asylum itself.~ EXIT

/////////////////////////////////

//CHAIN VPSIMJ 24
//~Yes, there is a pain in life, pain, and loss, and sorrow. But there is also joy and pleasure of growing and learning. You can't have one without the other, and I wouldn't want to sacrifice either. <CHARNAME>, let us finish this needless discussion.~
// IF ~Global("YoshimoAndHisBetrayal","GLOBAL",0)~ THEN REPLY ~Yes, I am really tired of this madness too. Let us just finish it. I'm taking Imoen, and we are going. ~ EXTERN PPIRENI1 84
// IF ~Global("YoshimoAndHisBetrayal","GLOBAL",0)~ THEN REPLY ~Yes, I think you are right. Whether or not this is all the fulfillment of a prophecy, or just random chance does change the gravity of our situation, I doubt we would do anything differently, if we even knew one way or another... Let's destroy this monster once and forever. ~ EXTERN PPIRENI1 84
// IF ~Global("YoshimoAndHisBetrayal","GLOBAL",1)~ THEN REPLY ~Yes, I am really tired of this madness too. Let us just finish it. I'm taking Imoen, and we are going. ~ EXTERN PPIRENI2 105
// IF ~Global("YoshimoAndHisBetrayal","GLOBAL",1)~ THEN REPLY ~Yes, I think you are right. Whether or not this is all the fulfillment of a prophecy, or just random chance does change the gravity of our situation, I doubt we would do anything differently, if we even knew one way or another... Let's destroy this monster once and forever. ~ EXTERN PPIRENI2 105
//

CHAIN VPSIMJ TOL21
~Irenicus had willfully damaged the Tree of Life. Thus he became an enemy of everyone with elven blood in their veins. I will fight him with you.~
END
 IF ~True()~ THEN EXTERN PLAYER1 53
 IF ~InParty("Anomen") Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 52
 IF ~InParty("Aerie") Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 51
 IF ~InParty("Viconia") Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 50
 IF ~InParty("Jaheira") Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 49
 IF ~InParty("Anomen") !Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 48
 IF ~InParty("Aerie") !Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 47
 IF ~InParty("Viconia") !Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 46
 IF ~InParty("Jaheira") !Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 45
 IF ~InParty("Cernd")~ THEN EXTERN PLAYER1 44
 IF ~InParty("Nalia")~ THEN EXTERN PLAYER1 43
 IF ~InParty("Korgan")~ THEN EXTERN PLAYER1 42
 IF ~InParty("HaerDalis")~ THEN EXTERN PLAYER1 40
 IF ~InParty("Edwin")~ THEN EXTERN PLAYER1 39
 IF ~InParty("Jan")~ THEN EXTERN PLAYER1 38
 IF ~InParty("Mazzy")~ THEN EXTERN PLAYER1 37
 IF ~InParty("Valygar")~ THEN EXTERN PLAYER1 36
 IF ~InParty("Minsc")~ THEN EXTERN PLAYER1 35
 IF ~InParty("Imoen2")~ THEN EXTERN PLAYER1 34

CHAIN VPSIMJ TOL22
~Give me one good reason why a ranger should run away from a battle with an evil wizard who endangered the whole world in his madness? You are silent? Good. I stand ready to fight.~
END
 IF ~True()~ THEN EXTERN PLAYER1 53
 IF ~InParty("Anomen") Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 52
 IF ~InParty("Aerie") Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 51
 IF ~InParty("Viconia") Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 50
 IF ~InParty("Jaheira") Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 49
 IF ~InParty("Anomen") !Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 48
 IF ~InParty("Aerie") !Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 47
 IF ~InParty("Viconia") !Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 46
 IF ~InParty("Jaheira") !Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 45
 IF ~InParty("Cernd")~ THEN EXTERN PLAYER1 44
 IF ~InParty("Nalia")~ THEN EXTERN PLAYER1 43
 IF ~InParty("Korgan")~ THEN EXTERN PLAYER1 42
 IF ~InParty("HaerDalis")~ THEN EXTERN PLAYER1 40
 IF ~InParty("Edwin")~ THEN EXTERN PLAYER1 39
 IF ~InParty("Jan")~ THEN EXTERN PLAYER1 38
 IF ~InParty("Mazzy")~ THEN EXTERN PLAYER1 37
 IF ~InParty("Valygar")~ THEN EXTERN PLAYER1 36
 IF ~InParty("Minsc")~ THEN EXTERN PLAYER1 35
 IF ~InParty("Imoen2")~ THEN EXTERN PLAYER1 34

CHAIN VPSIMJ TOL23
~You are right, we do not have time to chat. Just give me a signal to attack.~
END
 IF ~True()~ THEN EXTERN PLAYER1 53
 IF ~InParty("Anomen") Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 52
 IF ~InParty("Aerie") Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 51
 IF ~InParty("Viconia") Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 50
 IF ~InParty("Jaheira") Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 49
 IF ~InParty("Anomen") !Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 48
 IF ~InParty("Aerie") !Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 47
 IF ~InParty("Viconia") !Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 46
 IF ~InParty("Jaheira") !Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 45
 IF ~InParty("Cernd")~ THEN EXTERN PLAYER1 44
 IF ~InParty("Nalia")~ THEN EXTERN PLAYER1 43
 IF ~InParty("Korgan")~ THEN EXTERN PLAYER1 42
 IF ~InParty("HaerDalis")~ THEN EXTERN PLAYER1 40
 IF ~InParty("Edwin")~ THEN EXTERN PLAYER1 39
 IF ~InParty("Jan")~ THEN EXTERN PLAYER1 38
 IF ~InParty("Mazzy")~ THEN EXTERN PLAYER1 37
 IF ~InParty("Valygar")~ THEN EXTERN PLAYER1 36
 IF ~InParty("Minsc")~ THEN EXTERN PLAYER1 35
 IF ~InParty("Imoen2")~ THEN EXTERN PLAYER1 34

/////////////////////////////////
///////// LT32 - MALE
/////////////////////////////////

//IF THEN VPSIMJ 36
//~Father? What are you doing here?~
//EXTERN VPARAN 0
//

CHAIN VPSIMJ 40
~What? Father!~ [SIME15_2]
EXTERN VPARAN 1

CHAIN VPSIMJ 41
~<CHARNAME>, on the other hand, may be it is better if you talk to him alone. My father is a bit old-fashioned and... well, I am afraid that if I listen, I will just end up quarreling with him again. I will stay with the rest of the group.~
EXTERN VPARAN 2

CHAIN VPSIMJ 42
~<CHARNAME>, may be you are right, may be it is better if you talk to him alone. My father is a bit old fashioned and... well, I am afraid that if I listen, I will just end up quarreling with him again. I will stay with the rest of the group.~
EXTERN VPARAN 2

CHAIN VPSIMJ 43
~Father! You should lower your voice if you wish to keep your words secret! And do not you dare to threaten him! Father!~
DO ~SetGlobal("VP_Sime_Aran","GLOBAL",2) SetGlobal("VP_AranLeaves","GLOBAL",1)~
EXIT

CHAIN VPSIMJ 44
~Good-bye, father.~
DO ~SetGlobal("VP_Aran_Ring","GLOBAL",1) SetGlobal("VP_Sime_Aran","GLOBAL",2) SetGlobal("VP_AranLeaves","GLOBAL",1) GiveItemCreate("AranRing",Player1,3,0,0)~
EXIT

CHAIN
IF WEIGHT #-93 ~Global("VP_Aran_Ring","GLOBAL",2)~ THEN VPSIMJ 45
~<CHARNAME>, I wonder what you told him, that settled him down.~
END
 ++ ~I told him, that I am going to marry you. Aran gave me your mother's ring. Will you accept it from me?~ EXTERN VPSIMJ 46
 ++ ~Just what he wanted to hear, Sime. He is just worried I will mistreat you. Aran gave me your mother's ring. Will you accept it from me?~ EXTERN VPSIMJ 48
 ++ ~Some nonsense. Aran gave me your mother's ring. Will you accept it from me?~ EXTERN VPSIMJ 48

CHAIN VPSIMJ 46
~You what? Are you mad? What are we going to do if Aran takes it seriously and books the biggest temple in Athkatla for the wedding before we know it?~
END
 ++ ~(*Smile disarmingly*)... We will... elope?~ EXTERN VPSIMJ 47
 ++ ~Go there and get married, what else?~ EXTERN VPSIMJ 47
 ++ ~He won't. And if he does, we'll find a way around it, unless you do want to marry me.~ EXTERN VPSIMJ 47
 ++ ~Oh, Sime you and your father are both too... emotional.~ EXTERN VPSIMJ 47

CHAIN VPSIMJ 47
~You and your odd sense of humor! All right, I guess we will worry about it when the time comes. And you took the ring! My father was trying to press this thing on me for ages. I do not like it, but I guess now I'll have to take it so I will not land you in trouble.~
DO ~TakePartyItem("AranRing") SetGlobal("VP_Aran_Ring","GLOBAL",3) SetGlobal("VP_Sime_PCThief","GLOBAL",1) RealSetGlobalTimer("VP_SimeThiefBanter","GLOBAL",1800)~
EXIT

CHAIN VPSIMJ 48
~By Mielikki! My father was trying to press this thing on me for ages. I do not like it, but I guess now I'll have to take it so I will not land you in trouble.~
DO ~TakePartyItem("AranRing") SetGlobal("VP_Aran_Ring","GLOBAL",3) SetGlobal("VP_Sime_PCThief","GLOBAL",1) RealSetGlobalTimer("VP_SimeThiefBanter","GLOBAL",1800)~
EXIT

CHAIN
IF WEIGHT #-92 ~Global("VP_Sime_PCThief","GLOBAL",2)~ THEN VPSIMJ 49
~I was comparing you to my father, <CHARNAME>, and I came to the conclusion that you are very similar. I am sure that he was the same way as you are in his youth. No law but his own law, live fast, live on the edge, consider everything to be easy come, easy go. It is attractive, but I know what has happened to my father at the end.~
END
 ++ ~Where is this ominous talk leading?~ EXTERN VPSIMJ 50
 IF ~GlobalGT("PlayerThiefGuild","GLOBAL",0)~ THEN REPLY ~Is it because I took charge of the Guild?~ EXTERN VPSIMJ 54
 ++ ~So what? Do not all girls fall hardest for those who remind them of their fathers?~ EXTERN VPSIMJ 55

CHAIN VPSIMJ 50
~I think, what I meant to say is, it would be best for both of us to discontinue our relationship.~
END
 ++ ~Ah? Why in Nine Hells do you think that?~ EXTERN VPSIMJ 51
 ++ ~I think I deserve a better explanation than that. What, you feel like you are committing an act of incest? You have some other complex psychological reason to dislike sleeping with me?~ EXTERN VPSIMJ 51
 ++ ~Women. Cannot live with them, cannot live without them. Sime, it beats me why you want to walk out on me.~ EXTERN VPSIMJ 51
 IF ~GlobalGT("PlayerThiefGuild","GLOBAL",0)~ THEN REPLY ~Sime, do not do that! If you wish, I'll refuse to be the Guild Master, I'd do anything to keep you.~ EXTERN VPSIMJ 52
 ++ ~Have it your way. We are history.~ EXTERN VPSIMJ 53

CHAIN VPSIMJ 51
~I love my father against my good judgement and all my adult life I was fighting to change him into something he is not. I do not wish that to be repeated with you. You should follow your own way, <CHARNAME>, and I shall follow mine. There is nothing more to discuss.~
DO ~SetGlobal("SimeRomanceActive","GLOBAL",3) SetGlobal("VP_LoveTalkDelay","LOCALS",0) SetGlobal("VP_Sime_PCThief","GLOBAL",3)~
EXIT

CHAIN VPSIMJ 52
~No, I do not want you to do that. <CHARNAME>, I love my father against my good judgement and all my adult life I was fighting to change him into something he is not. I do not wish that to be repeated with you. You should follow your own way, <CHARNAME>, and I shall follow mine. There is nothing more to discuss.~
DO ~SetGlobal("SimeRomanceActive","GLOBAL",3) SetGlobal("VP_LoveTalkDelay","LOCALS",0) SetGlobal("VP_Sime_PCThief","GLOBAL",3)~
EXIT

CHAIN VPSIMJ 53
~There is nothing more to discuss then.~
DO ~SetGlobal("SimeRomanceActive","GLOBAL",3) SetGlobal("VP_LoveTalkDelay","LOCALS",0) SetGlobal("VP_Sime_PCThief","GLOBAL",3)~
EXIT

CHAIN VPSIMJ 54
~That only fleshed out my concern. <CHARNAME>, I think that it would be best for both of us to discontinue our relationship.~
END
 ++ ~Ah? Why in Nine Hells do you think that?~ EXTERN VPSIMJ 51
 ++ ~I think I deserve a better explanation than that. What, you feel like you are committing an act of incest? You have some other complex psychological reason to dislike sleeping with me?~ EXTERN VPSIMJ 51
 ++ ~Women. Cannot live with them, cannot live without them. Sime, it beats me why you want to walk out on me.~ EXTERN VPSIMJ 51
 ++ ~Sime, do not do that! If you wish, I'll refuse to be the Guild Master, I'd do anything to keep you.~ EXTERN VPSIMJ 52
 ++ ~Have it your way. We are history.~ EXTERN VPSIMJ 53

CHAIN VPSIMJ 55
~I guess, yes. I might have been in denial, but now I see clearly that I am attracted to you because you remind me so much of my father. But also, because of it, I think it would be best for both of us to discontinue our relationship.~
END
 ++ ~Ah? Why in Nine Hells do you think that?~ EXTERN VPSIMJ 51
 ++ ~I think I deserve a better explanation than that. What, you feel like you are committing an act of incest? You have some other complex psychological reason to dislike sleeping with me?~ EXTERN VPSIMJ 51
 ++ ~Women. Cannot live with them, cannot live without them. Sime, it beats me why you want to walk out on me.~ EXTERN VPSIMJ 51
 ++ ~Sime, do not do that! If you wish, I'll refuse to be the Guild Master, I'd do anything to keep you.~ EXTERN VPSIMJ 52
 ++ ~Have it your way. We are history.~ EXTERN VPSIMJ 53

////////////////////////////////////////////////
//If PC is not thief, Sime starts to talk again
////////////////////////////////////////////////

CHAIN
IF WEIGHT #-91 ~Global("VP_SimeTalksAgain","GLOBAL",1)~ THEN VPSIMJ 94
~<CHARNAME>, it seems to me that you are accustomed to the long marches and slow downs between fierce battles. What did you do to speed up the passage of time? I remember we used to sing when the danger was near or far when I was in Darriel's company.~
END
 ++ ~Sing? Well, there was a good song I used to sing back in the good old days spent with the Candlekeep guard. Do you want to it hear it?~ EXTERN VPSIMJ 95
 ++ ~(*You look away momentarily*)... Sime, we used to sing this song before, while our company marched. It helped pass the time and keep the mind on more pleasant matters. Will you permit me to sing it to you?~ EXTERN VPSIMJ 95
 ++ ~I was always a loner, my friend, and did not adventure in a big company. But when the going got rough, there was one song I liked to sing. Would you care to hear it?~ EXTERN VPSIMJ 95
 ++ ~If you used to do it often then mayhap it is time to renew the tradition. Start up a song, Sime.~ EXTERN VPSIMJ 100
 ++ ~Sime, you are a ranger after all, you should understand how important it is to be quiet. I know of one thing which can be done very-very quietly and can take your mind away from the weariness of the road... (*You kiss Sime*)~ EXTERN VPSIMJ 103

CHAIN VPSIMJ 95
~Yes, nothing would please me more, <CHARNAME>, mayhap it will even help you to relax a bit... (*gently smiles*) ...by lighten our hearts and easing our minds.~
END
 ++ ~Far over the misty mountains cold
To dungeons deep and caverns old
We must away ere break of day
To seek the pale enchanted gold.~ EXTERN VPSIMJ 96
 ++ ~Old Danilo Twill had a hundred bags 'o gold,
And a dozen times more silver than he could ever hold,
But he lost it all at knucklebones, till he didn't have a crumb,
Still, there'll always be more where that came from.~ EXTERN VPSIMJ 96
 ++ ~The road goes ever on and on,
Out from the door where it begun,
Now far ahead the Road had gone
Let others follow it who can.~ EXTERN VPSIMJ 96

CHAIN VPSIMJ 96
~It is quite lovely, but it seems to me that this song has triggered some sadness in you, and that was not my intention this eve, nor would it ever be.~
END
 ++ ~I used to sing it with my friends and now my mind is assailed by memories of the fallen. Forgive me this moment of weakness, Sime.~ EXTERN VPSIMJ 97
 ++ ~A sweet melancholy griped at my heart, as I remembered the peaceful times, and the past. But, it is over now. Did you find the song to your liking my Lady?~ EXTERN VPSIMJ 98
 ++ ~(*Taking Sime's hand*)... I apologize for giving you rise to concern, it is just that...well song is a very emotional thing. Even for a stoic fighter. It is one of the few ways in which your soul can truly be free of the duties you carry, even if only of a moment or two, it is a welcomed release.~ EXTERN VPSIMJ 97
 ++ ~No, no, I was not sad at all, I was just concentrating on keeping the tune right!~ EXTERN VPSIMJ 99

CHAIN VPSIMJ 97
~I wish to properly thank you for sharing such a significant part of yourself with me... (*Sime kisses you deeply*).~
DO ~RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0) SetGlobal("VP_SimeTalksAgain","GLOBAL",2)~
EXIT

CHAIN VPSIMJ 98
~I like the song and I love the singer.~
DO ~RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0) SetGlobal("VP_SimeTalksAgain","GLOBAL",2)~
EXIT

CHAIN VPSIMJ 99
~(*Laughs*)... You always put all your heart in what you are doing, <CHARNAME>!~
DO ~RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0) SetGlobal("VP_SimeTalksAgain","GLOBAL",2)~
EXIT

CHAIN VPSIMJ 100
~Hear this one, then:

Home is behind, the world ahead,
And there are many paths to tread
Through shadows to the edge of night,
Until the stars are all alight.~
END
 ++ ~I know this song. I used to sing it with my friends as well. Now my mind is assailed by memories of the fallen. Forgive me this moment of melancholy, Sime.~ EXTERN VPSIMJ 101
 ++ ~Oh, Sime! The song reminded me of the peaceful times when I only dreamt of adventures! Thank you!~ EXTERN VPSIMJ 102
 ++ ~It is a beautiful song, Sime, but I think that we should keep quiet for a time. I know of one thing which can be done very-very quietly and can take your mind away from the weariness of the road... (*You kiss Sime*)~ EXTERN VPSIMJ 103

CHAIN VPSIMJ 101
~I wish to properly thank you for sharing such a significant part of yourself with me... (*Sime kisses you deeply*).~
DO ~RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0) SetGlobal("VP_SimeTalksAgain","GLOBAL",2)~
EXIT

CHAIN VPSIMJ 102
~Now we have no shortage of adventure it seems and little precious time for love. I'd like to remind you of what's the passion is like... (*Sime kisses you deeply*)~
DO ~RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0) SetGlobal("VP_SimeTalksAgain","GLOBAL",2)~
EXIT

CHAIN VPSIMJ 103
~So you did not forget the passion we shared last night? I am glad to feel that in your kiss.~
DO ~RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0) SetGlobal("VP_SimeTalksAgain","GLOBAL",2)~
EXIT

////////////////////////////////////////////////

CHAIN
IF WEIGHT #-90 ~Global("VP_Sime_DreamIsland","GLOBAL",1)~ THEN VPSIMJ 56
~You wanted me here as well? I am... surprised.~
END
 IF ~OR(2) Race(Player1,ELF) Race(Player1,HALF_ELF)~ THEN REPLY ~Sime, where are we?~ EXTERN VPSIMJ 57
 IF ~!Race(Player1,ELF) !Race(Player1,HALF_ELF)~ THEN REPLY ~Sime, where are we?~ EXTERN VPSIMJ 63

CHAIN VPSIMJ 57
~We are in the Land of Dreams, the Kaimeldor. You are one of our kin, have you never heard of it? It is an ancient Elven enchantment that allows one to live ones' dreams for a time. Kaimeldor appears different to everyone. The hunter will come to a forest full of game, and an older man will enter an inn and would taste the best ale...~
END
 ++ ~I have been raised by a human, Sime. I have never heard of this enchantment. So, am I dreaming? In this case it should not surprise you that you are here.~ EXTERN VPSIMJ 58
 ++ ~I am not as versed in Elven lore as I would like to be, Sime. This enchantment, I have never heard of it, but I like it. Why does it surprise you that you are by my side in Kaimeldor?~ EXTERN VPSIMJ 58
 ++ ~I must have been really drunk, when I dreamt this place up. Flowers and silly butterflies everywhere! Give me battles and gore, not some gardens! I do dream of you sometimes, I must confess. If Kaimeldor is what you are saying it to be, then I am not surprised that you are here. How the rest got included is the mystery to me.~ EXTERN VPSIMJ 62

CHAIN VPSIMJ 58
~It is not a dream, <CHARNAME>, we are both awake and walk Kaimeldor. But to call me to your place in this land we have to share a connection of a kind... a bond...~
END
 ++ ~A bond, Sime? You mean the Elven Bond? It is not... impossible, is not it, mela en coiamin?~ EXTERN VPSIMJ 59
 ++ ~Is that news for you, Sime? Are you finally beginning to understand that we are meant for each other? Amin mela lle. Usst ssin dosst. Noldoli mellethe ulter. Zander thaerine zolt. I love you.~ EXTERN VPSIMJ 60
 ++ ~Sime, it is all too odd. Let us just enjoy this little outing without questioning why and how.~ EXTERN VPSIMJ 61

CHAIN VPSIMJ 59
~I do not think it is impossible... May that's why we are here today. You called me the love of your life, <CHARNAME>. I guess... I guess you are the one for me as well. Amin mela lle, <CHARNAME>. Amin mela lle.~
DO ~SetGlobal("VP_Sime_DreamIsland","GLOBAL",2) StartCutSceneMode() StartCutScene("VPCutS02")~
EXIT

CHAIN VPSIMJ 60
~(*Laughs*)... If those are the only words you know how to say in all these languages, than you picked up the right ones to learn. But why would we use the foul language of the Dark ones or a roaring one of the fierce dwarves? We are kin and I think you are right - we are meant for each other. I can hear the voice of my heart clearly. Amin mela lle, <CHARNAME>. Amin mela lle.~
DO ~SetGlobal("VP_Sime_DreamIsland","GLOBAL",2) StartCutSceneMode() StartCutScene("VPCutS02")~
EXIT

CHAIN VPSIMJ 61
~I think there is a meaning to that outing, <CHARNAME>. I think that I came here with you today so I can see that we are meant for each other. I can hear the voice of my heart clearly. Amin mela lle, <CHARNAME>. I love you.~
DO ~SetGlobal("VP_Sime_DreamIsland","GLOBAL",2) StartCutSceneMode() StartCutScene("VPCutS02")~
EXIT

CHAIN VPSIMJ 62
~Mayhap you have a gentler heart, than you suspected. Dreaming of me is not enough to call me to your place in this land. You could have had my shadow or my voice may be... But for Sime Linvail in flesh and blood to walk Kaimeldor by your side, we have to share a connection of a kind... a bond...~
END
 ++ ~A bond, Sime? You mean the Elven Bond? It is not... impossible, is not it, mela en coiamin?~ EXTERN VPSIMJ 59
 ++ ~Is that news for you, Sime? Are you finally beginning to understand that we are meant for each other? Amin mela lle. Usst ssin dosst. Noldoli mellethe ulter. Zander thaerine zolt. I love you.~ EXTERN VPSIMJ 60
 ++ ~Sime, it is all too odd. Let us just enjoy this little outing without questioning why and how. ~ EXTERN VPSIMJ 61

CHAIN VPSIMJ 63
~We are in the Land of Dreams, the Kaimeldor. It is an ancient Elven enchantment that allows one to live ones' dreams for a time. Kaimeldor appears different to everyone. The hunter will come to a forest full of game, and an older man will enter an inn and would taste the best ale...~
END
 ++ ~I have never heard of this enchantment. So, am I dreaming? In this case it should not surprise you that you are here.~ EXTERN VPSIMJ 64
 ++ ~I am not as versed in Elven lore as I would like to be, Sime. This enchantment, I have never heard of it, but I like it. Why does it surprise you that you are by my side in this... Kaimeldor?~ EXTERN VPSIMJ 64
 ++ ~I must have been really drunk, when I dreamt this place up. Flowers and silly butterflies everywhere! Give me battles and gore, not some gardens! I do dream of you sometimes, I must confess. If Kaimeldor is what you are saying it to be, then I am not surprised that you are here. How the rest got included is the mystery to me.~ EXTERN VPSIMJ 67

CHAIN VPSIMJ 64
~It is not a dream, <CHARNAME>, we are both awake and walk Kaimeldor. But to call me to your place in this land we have to share a connection of a kind... an Elven bond... It must be the strength of your divine blood... or... something we do not know that allowed you to call for me.~
END
 ++ ~An Elven Bond? Divine blood? I do not know much about it, but what I know, is that I love you, Sime. Is not it reason enough for you to be by my side?~ EXTERN VPSIMJ 65
 ++ ~Is that news for you, Sime? I am not a regular mortal, Elf or not. We are meant for each other - do not you understand? I love you.~ EXTERN VPSIMJ 65
 ++ ~Sime, it is all too odd. Let us just enjoy this little outing without questioning why and how.~ EXTERN VPSIMJ 66

CHAIN VPSIMJ 65
~I do not think it is impossible... May be that's why we are here today. I guess... I guess I love you. Amin mela lle, <CHARNAME>. Amin mela lle.~
DO ~SetGlobal("VP_Sime_DreamIsland","GLOBAL",2) StartCutSceneMode() StartCutScene("VPCutS02")~
EXIT

CHAIN VPSIMJ 66
~I think there is a meaning to that outing, <CHARNAME>. I think that I came here with you today so I can see that we are meant for each other. I can hear the voice of my heart clearly. Amin mela lle, <CHARNAME>. Amin mela lle.~
DO ~SetGlobal("VP_Sime_DreamIsland","GLOBAL",2) StartCutSceneMode() StartCutScene("VPCutS02")~ EXIT

CHAIN VPSIMJ 67
~Mayhap you have a gentler heart, than you suspected. Dreaming of me is not enough to call me to your place in this land. You could have had my shadow or my voice may be... But for Sime Linvail in flesh and blood to walk Kaimeldor by your side, we have to share a connection of a kind... a bond... an Elven bond... It must be the strength of your divine blood... or... something we do not know that allowed you to call for me.~
END
 ++ ~An Elven Bond? Divine blood? I do not know much about it, but what I know, is that I love you, Sime. Is not it reason enough for you to be by my side?~ EXTERN VPSIMJ 65
 ++ ~Is that news for you, Sime? I am not a regular mortal, Elf or not. We are meant for each other - do not you understand? I love you.~ EXTERN VPSIMJ 65
 ++ ~Sime, it is all too odd. Let us just enjoy this little outing without questioning why and how.~ EXTERN VPSIMJ 66

CHAIN VPSIMJ slayerat
~Are you well? I am growing very worried about you, you know. I should not like to lose you in this evil place.~
END
 ++ ~Sime, I would get back if I were you. I think it's happening again!~ DO ~SetGlobal("EndangerLovedOne","GLOBAL",5)~ EXTERN VPSIMJ slayer1
 ++ ~Get back, Sime, if you value your life.~ DO ~SetGlobal("EndangerLovedOne","GLOBAL",5)~ EXTERN VPSIMJ slayer1
 ++ ~Leave me be! You endanger yourself just standing there!~ DO ~SetGlobal("EndangerLovedOne","GLOBAL",5)~ EXTERN VPSIMJ slayer1

CHAIN VPSIMJ slayer1
#49924 /* ~<CHARNAME>? Your lips move but there is no sound. <CHARNAME>? <CHARNAME>!!!~ */
DO ~ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))~ EXIT

CHAIN VPSIMJ slayerba
~You would have killed me, if I had let you. You would have left me to rot in this place.~
END
 ++ ~I fear this will not be the last time this happens. I can't control it.~ DO ~SetGlobal("VP_DoNotRepeat","GLOBAL",1)~ EXTERN VPSIMJ slayer2
 ++ ~I tried to warn you, but I couldn't speak. I am sorry. I should distance myself from you.~ DO ~SetGlobal("VP_DoNotRepeat","GLOBAL",1)~ EXTERN VPSIMJ slayer3
 ++ ~It wasn't my fault. Whine if you want, but I'm the one really in trouble here.~ DO ~SetGlobal("VP_DoNotRepeat","GLOBAL",1)~ EXTERN VPSIMJ slayer4

CHAIN VPSIMJ slayer2
~I'm not sure you should try to control it. We must distance you from it, not embrace it. We will make due, despite the danger.~
END
 IF ~True()~ THEN DO ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~ EXIT
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN MINSCJ 203
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN CERNDJ 130
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN HAERDAJ 141
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN MAZZYJ 194
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN NALIAJ 308
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN JANJ 178
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN KORGANJ 177
 IF ~InParty("Keldorn") !Dead("Keldorn") !Global("VP_KrRomanceActive","GLOBAL",1) !Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN KELDORJ 243
 IF ~InParty("Valygar") !Dead("Valygar") !Global("ValygarRomanceActive","GLOBAL",1) !Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN VALYGARJ 103
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN EDWINJ 149
 IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ANOMENJ 250
 IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN AERIEJ 116
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN VICONIJ 87
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN JAHEIRAJ 432
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN IMOEN2J 1

CHAIN VPSIMJ slayer3
~No, you should not be alone during this. We will get through, I am sure. We just have to keep going, no matter what comes.~
END
 IF ~True()~ THEN DO ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~ EXIT
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN MINSCJ 203
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN CERNDJ 130
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN HAERDAJ 141
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN MAZZYJ 194
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN NALIAJ 308
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN JANJ 178
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN KORGANJ 177
 IF ~InParty("Keldorn") !Dead("Keldorn") !Global("VP_KrRomanceActive","GLOBAL",1) !Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN KELDORJ 243
 IF ~InParty("Valygar") !Dead("Valygar") !Global("ValygarRomanceActive","GLOBAL",1) !Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN VALYGARJ 103
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN EDWINJ 149
 IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ANOMENJ 250
 IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN AERIEJ 116
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN VICONIJ 87
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN JAHEIRAJ 432
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN IMOEN2J 1

CHAIN VPSIMJ slayer4
~You are not the only one affected by this! It is so hard to see you...~
EXTERN VPSIMJ slayer5

CHAIN VPSIMJ slayer5
~<CHARNAME>, please, let's just keep moving. We'll get through, I'm sure of it. Really.~
END
 IF ~True()~ THEN DO ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~ EXIT
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN MINSCJ 203
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN CERNDJ 130
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN HAERDAJ 141
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN MAZZYJ 194
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN NALIAJ 308
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN JANJ 178
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN KORGANJ 177
 IF ~InParty("Keldorn") !Dead("Keldorn") !Global("VP_KrRomanceActive","GLOBAL",1) !Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN KELDORJ 243
 IF ~InParty("Valygar") !Dead("Valygar") !Global("ValygarRomanceActive","GLOBAL",1) !Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN VALYGARJ 103
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN EDWINJ 149
 IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ANOMENJ 250
 IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN AERIEJ 116
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN VICONIJ 87
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN JAHEIRAJ 432
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN IMOEN2J 1

CHAIN VPSIMJ 68
~What was it? This monster, this beast! Was it really you, my sweet lover? Is there no spirit warm and kind enough in this world to protect you?~ [SIME21_1]
END
 ++ ~The shadow has passed and I pray that it will never happen again. ~ DO ~SetGlobal("VP_SlayerBanter","LOCALS",3)~ EXTERN VPSIMJ 69
 ++ ~Cut it out! Look at yourself: you are pale and tremble like a leaf in the wind. I am not an innocent victim, you idiot! Power is coming to me. I do not know how to control it yet, but soon enough I will.~ DO ~SetGlobal("VP_SlayerBanter","LOCALS",3)~ EXTERN VPSIMJ 72
 ++ ~Sime, gods are of no help, do not call for them. Help me chase down Irenicus and rip MY soul out of his body and I shall be whole again.~ DO ~SetGlobal("VP_SlayerBanter","LOCALS",3)~ EXTERN VPSIMJ 73
 ++ ~Protect me? Protect me against whom or what? From myself? I am a Bhaalspawn and I assumed the form of my father's avatar. It is only natural, do not you think? (*You laugh bitterly.*)~ DO ~SetGlobal("VP_SlayerBanter","LOCALS",3)~ EXTERN VPSIMJ 74

CHAIN VPSIMJ 69
~<CHARNAME>... It hurts me to see you misshapen. But most of all it pains me to see the light in your eyes to change to insatiable hunger of a killer. Nobody should have to go through torture like this and you in particular. I wait impatiently for the day when that evil mage pays for his crimes against you.~
END
 ++ ~That day will come soon, I swear. And when it comes I will be glad to have a trusted companion like you by my side.~ EXTERN VPSIMJ 70
 ++ ~Irenicus has committed many crimes. He has killed and tortured many. I will have to make him pay for all of them when at last we confront him.~ EXTERN VPSIMJ 70
 ++ ~Sime, I can see that you are upset, but please, calm down.~ EXTERN VPSIMJ 71

CHAIN VPSIMJ 70
~By the first day and the last day of Toril, by the torment of Abyss and by the triumph of light over darkness, by the multitude of Planes, by your breath on my cheek, by my bliss and by my torture, by my love for you, I swear that I shall not abandon your fight till we have won.~
END
 IF ~True()~ THEN DO ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~ EXIT
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN MINSCJ 203
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN CERNDJ 130
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN HAERDAJ 141
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN MAZZYJ 194
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN NALIAJ 308
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN JANJ 178
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN KORGANJ 177
 IF ~InParty("Keldorn") !Dead("Keldorn") !Global("VP_KrRomanceActive","GLOBAL",1) !Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN KELDORJ 243
 IF ~InParty("Valygar") !Dead("Valygar") !Global("ValygarRomanceActive","GLOBAL",1) !Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN VALYGARJ 103
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN EDWINJ 149
 IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ANOMENJ 250
 IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN AERIEJ 116
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN VICONIJ 87
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN JAHEIRAJ 432
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN IMOEN2J 1

CHAIN VPSIMJ 71
~I am calm, <CHARNAME>, I am deadly calm. And so I will be the day we catch up with Irenicus.~
END
 IF ~True()~ THEN DO ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~ EXIT
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN MINSCJ 203
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN CERNDJ 130
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN HAERDAJ 141
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN MAZZYJ 194
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN NALIAJ 308
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN JANJ 178
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN KORGANJ 177
 IF ~InParty("Keldorn") !Dead("Keldorn") !Global("VP_KrRomanceActive","GLOBAL",1) !Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN KELDORJ 243
 IF ~InParty("Valygar") !Dead("Valygar") !Global("ValygarRomanceActive","GLOBAL",1) !Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN VALYGARJ 103
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN EDWINJ 149
 IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ANOMENJ 250
 IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN AERIEJ 116
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN VICONIJ 87
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN JAHEIRAJ 432
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN IMOEN2J 1

CHAIN VPSIMJ 72
~Then the Evil got its grip on you... Fight it if you can, oh, please, I beg you! It pains me to see the light in your eyes to change to insatiable hunger of a killer! Fight it, <CHARNAME>.~
END
 IF ~True()~ THEN DO ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~ EXIT
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN MINSCJ 203
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN CERNDJ 130
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN HAERDAJ 141
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN MAZZYJ 194
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN NALIAJ 308
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN JANJ 178
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN KORGANJ 177
 IF ~InParty("Keldorn") !Dead("Keldorn") !Global("VP_KrRomanceActive","GLOBAL",1) !Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN KELDORJ 243
 IF ~InParty("Valygar") !Dead("Valygar") !Global("ValygarRomanceActive","GLOBAL",1) !Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN VALYGARJ 103
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN EDWINJ 149
 IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ANOMENJ 250
 IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN AERIEJ 116
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN VICONIJ 87
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN JAHEIRAJ 432
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN IMOEN2J 1

CHAIN VPSIMJ 73
~That's what I am here for, <CHARNAME>. By the first day and the last day of Toril, by the torment of Abyss and by the triumph of light over darkness, by the multitude of Planes, by your breath on my cheek, by my bliss and by my torture, by my love for you, I swear that I shall not abandon your fight till we have won.~
END
 IF ~True()~ THEN DO ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~ EXIT
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN MINSCJ 203
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN CERNDJ 130
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN HAERDAJ 141
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN MAZZYJ 194
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN NALIAJ 308
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN JANJ 178
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN KORGANJ 177
 IF ~InParty("Keldorn") !Dead("Keldorn") !Global("VP_KrRomanceActive","GLOBAL",1) !Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN KELDORJ 243
 IF ~InParty("Valygar") !Dead("Valygar") !Global("ValygarRomanceActive","GLOBAL",1) !Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN VALYGARJ 103
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN EDWINJ 149
 IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ANOMENJ 250
 IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN AERIEJ 116
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN VICONIJ 87
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN JAHEIRAJ 432
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN IMOEN2J 1

CHAIN VPSIMJ 74
~Come here and let me hold you for a moment. I know it's just an illusion but I feel like I am protecting you from all the evils of the world.~
END
 ++ ~I am glad YOU are feeling better.~ DO ~SetGlobal("SimeRomanceActive","GLOBAL",3)~ EXTERN VPSIMJ 75
 ++ ~Now that you have mentioned that, I do have the feeling of being protected... It is so strange. You are only one woman...~ EXTERN VPSIMJ 76
 ++ ~(*Whisper*) Are you mad? What would the others think?~ EXTERN VPSIMJ 77

CHAIN VPSIMJ 75
~There is no need to snap at me. If you feel uncomfortable with me loving you, you should have so earlier.~
END
 IF ~True()~ THEN DO ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~ EXIT
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN MINSCJ 203
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN CERNDJ 130
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN HAERDAJ 141
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN MAZZYJ 194
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN NALIAJ 308
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN JANJ 178
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN KORGANJ 177
 IF ~InParty("Keldorn") !Dead("Keldorn") !Global("VP_KrRomanceActive","GLOBAL",1) !Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN KELDORJ 243
 IF ~InParty("Valygar") !Dead("Valygar") !Global("ValygarRomanceActive","GLOBAL",1) !Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN VALYGARJ 103
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN EDWINJ 149
 IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ANOMENJ 250
 IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN AERIEJ 116
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN VICONIJ 87
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN JAHEIRAJ 432
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN IMOEN2J 1

CHAIN VPSIMJ 76
~One woman, yes, but I am your woman and I would not let some dead god or a crazed mage to take you away from me. Let them all come, I am ready to give them a fight... (*Laughs and strokes your hair*)... We will get through this, <CHARNAME>, do not worry.~
END
 IF ~True()~ THEN DO ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~ EXIT
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN MINSCJ 203
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN CERNDJ 130
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN HAERDAJ 141
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN MAZZYJ 194
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN NALIAJ 308
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN JANJ 178
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN KORGANJ 177
 IF ~InParty("Keldorn") !Dead("Keldorn") !Global("VP_KrRomanceActive","GLOBAL",1) !Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN KELDORJ 243
 IF ~InParty("Valygar") !Dead("Valygar") !Global("ValygarRomanceActive","GLOBAL",1) !Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN VALYGARJ 103
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN EDWINJ 149
 IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ANOMENJ 250
 IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN AERIEJ 116
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN VICONIJ 87
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN JAHEIRAJ 432
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN IMOEN2J 1

CHAIN VPSIMJ 77
~Do you really care?~
END
 ++ ~No, let them talk!~ EXTERN VPSIMJ 78
 ++ ~Yes! (*You free yourself from her arms*)~ EXTERN VPSIMJ 79
 IF ~InParty("Imoen2") See("Imoen2")~ THEN REPLY ~Imoen, what's the matter?~ EXTERN IMOEN2J TS40

CHAIN VPSIMJ 78
~Now, that's better. By the first day and the last day of Toril, by the torment of Abyss and by the triumph of light over darkness, by the multitude of Planes, by your breath on my cheek, by my bliss and by my torture, by my love for you, I swear that I shall not abandon your fight till we have won.~
EXIT

CHAIN VPSIMJ 79
~I see... I will not embarrass you with my unwanted attention any more, I swear.~
DO ~SetGlobal("SimeRomanceActive","GLOBAL",3)~ EXIT

CHAIN VPSIMJ 80
~Imoen, a certain degree of shyness becomes a maiden.~
EXTERN IMOEN2J TS42

CHAIN VPSIMJ 81
~Imoen, let us make a deal: I will listen to your story tonight, and we will leave <CHARNAME> out of it.~
END
 IF ~True()~ THEN DO ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~ EXIT
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN MINSCJ 203
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN CERNDJ 130
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN HAERDAJ 141
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN MAZZYJ 194
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN NALIAJ 308
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN JANJ 178
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN KORGANJ 177
 IF ~InParty("Keldorn") !Dead("Keldorn") !Global("VP_KrRomanceActive","GLOBAL",1) !Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN KELDORJ 243
 IF ~InParty("Valygar") !Dead("Valygar") !Global("ValygarRomanceActive","GLOBAL",1) !Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN VALYGARJ 103
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN EDWINJ 149
 IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ANOMENJ 250
 IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN AERIEJ 116
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN VICONIJ 87
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN JAHEIRAJ 432
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN IMOEN2J 1

CHAIN VPSIMJ 82
~Imoen, I believe you. But let us make a deal: I will listen to your story tonight, and we will leave <CHARNAME> out of it, he seems to be turning greenish for some reason. You know how men are...~
END
 IF ~True()~ THEN DO ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~ EXIT
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN MINSCJ 203
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN CERNDJ 130
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN HAERDAJ 141
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN MAZZYJ 194
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN NALIAJ 308
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN JANJ 178
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN KORGANJ 177
 IF ~InParty("Keldorn") !Dead("Keldorn") !Global("VP_KrRomanceActive","GLOBAL",1) !Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN KELDORJ 243
 IF ~InParty("Valygar") !Dead("Valygar") !Global("ValygarRomanceActive","GLOBAL",1) !Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN VALYGARJ 103
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN EDWINJ 149
 IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ANOMENJ 250
 IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN AERIEJ 116
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN VICONIJ 87
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN JAHEIRAJ 432
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN IMOEN2J 1

CHAIN VPSIMJ 83
~Imoen, I believe you. But let us make a deal: I will listen to your story tonight, and we will leave <CHARNAME> out of it, he seems to be turning greenish for some reason. You know how men are...~
END
 IF ~True()~ THEN DO ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~ EXIT
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN MINSCJ 203
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN CERNDJ 130
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN HAERDAJ 141
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN MAZZYJ 194
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN NALIAJ 308
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN JANJ 178
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN KORGANJ 177
 IF ~InParty("Keldorn") !Dead("Keldorn") !Global("VP_KrRomanceActive","GLOBAL",1) !Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN KELDORJ 243
 IF ~InParty("Valygar") !Dead("Valygar") !Global("ValygarRomanceActive","GLOBAL",1) !Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN VALYGARJ 103
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN EDWINJ 149
 IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ANOMENJ 250
 IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN AERIEJ 116
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN VICONIJ 87
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN JAHEIRAJ 432
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN IMOEN2J 1

CHAIN VPSIMJ 93
~No, <CHARNAME>, please, do not do it. You do not understand what you are getting yourself into! Renal, he will NOT be a Shadow Thief! <CHARNAME>, please, tell him that you will NOT accept!~
EXTERN RENAL 77

CHAIN
IF WEIGHT #-88 ~Global("VP_Sime_Dragon","GLOBAL",4)~ THEN VPSIMJ 104
~You have indeed free me, my good <PRO_SIRMAAM>!~
END
 ++ ~Yes, I did. Am I hero enough for you now?~ EXTERN VPSIMJ 105
 ++ ~My Fair Lady, your favor filled me with strength and valor. The victory is as much yours as it is mine.~ EXTERN VPSIMJ 106
 ++ ~I... I think so. Oh, Sime must you invent some ridiculous trials? Do not you know that I love you?~ EXTERN VPSIMJ 110

CHAIN VPSIMJ 105
~I never doubted that you are a hero. But now I can tell everyone, that the <PRO_MANWOMAN> I love saved me from the clutches of an evil dragon. It was worth a trip!~
DO ~SetGlobal("VP_Sime_Dragon","GLOBAL",5)~ EXIT

CHAIN VPSIMJ 106
~Such gallantry! I only pity that I did not join you in the fight! Next time...~
END
 ++ ~No next time, my Fair Lady. The deal was one salvation for one wedding. I cannot marry you more than once, can I?~ EXTERN VPSIMJ 107
 ++ ~Next time we will head a host of riders to fight some evil lord... or fight in a tourney... we cannot do dragons all the time. It will be ultimately boring, my Lady.~ EXTERN VPSIMJ 108
 ++ ~Yes, dear. (Keldorn said it usually works...)~ EXTERN VPSIMJ 109

CHAIN VPSIMJ 107
~Oh... I see. Well, we can do something different then. How about a tourney?~
DO ~SetGlobal("VP_Sime_Dragon","GLOBAL",5)~ EXIT

CHAIN VPSIMJ 108
~You have a point. Let it be an evil lord next. But our time is up now...~
DO ~SetGlobal("VP_Sime_Dragon","GLOBAL",5)~ EXIT

CHAIN VPSIMJ 109
~Hmm, sounds good. But what was that thing about Keldorn you muttered? Never mind, we must go now.~
DO ~SetGlobal("VP_Sime_Dragon","GLOBAL",5)~ EXIT

CHAIN VPSIMJ 110
~I never doubted that you love me. But now I can tell everyone, that the <PRO_MANWOMAN> I love saved me from the clutches of an evil dragon. It was worth a trip!~
DO ~SetGlobal("VP_Sime_Dragon","GLOBAL",5)~ EXIT

///////////////////////////////////////////////////////////////
//End of Romance///////////////////////////////////////////////

CHAIN VPSIMJ 111
~Stay away from <PRO_HIMHER>, vampire! You and your murderous bastard of a brother had taken too many lives as is. I will not allow you to harm <CHARNAME>...~
EXTERN BODHIAMB TS24

///////////////////////////////////////////////////////////////

CHAIN VPSIMJ TOL1
~Irenicus had willfully damaged the Tree of Life. Thus he became an enemy of everyone with Elven blood in their veins. Irenicus had hurt and tormented a man I love. How many more reasons do you want me to give you? I am ready to fight, <CHARNAME> and this battle is mine, as well as yours.~
END
 IF ~True()~ THEN EXTERN PLAYER1 53
 IF ~InParty("Anomen") !Dead("Anomen") Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 52
 IF ~InParty("Aerie") !Dead("Aerie") Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 51
 IF ~InParty("Viconia") !Dead("Viconia") Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 50
 IF ~InParty("Jaheira") !Dead("Jaheira") Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 49
 IF ~InParty("Anomen") !Dead("Anomen") !Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 48
 IF ~InParty("Aerie") !Dead("Aerie") !Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 47
 IF ~InParty("Viconia") !Dead("Viconia") !Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 46
 IF ~InParty("Jaheira") !Dead("Jaheira") !Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 45
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN PLAYER1 44
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN PLAYER1 43
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN PLAYER1 42
 IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KrRomanceActive","GLOBAL",0)~ THEN EXTERN PLAYER1 41
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN PLAYER1 40
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN PLAYER1 39
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN PLAYER1 38
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN PLAYER1 37
 IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN PLAYER1 36
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN PLAYER1 35
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN PLAYER1 34

CHAIN VPSIMJ TOL2
~No. Let's not waste words. I am ready to fight, <CHARNAME> and this battle is mine, as well as yours.~
END
 IF ~True()~ THEN EXTERN PLAYER1 53
 IF ~InParty("Anomen") !Dead("Anomen") Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 52
 IF ~InParty("Aerie") !Dead("Aerie") Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 51
 IF ~InParty("Viconia") !Dead("Viconia") Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 50
 IF ~InParty("Jaheira") !Dead("Jaheira") Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 49
 IF ~InParty("Anomen") !Dead("Anomen") !Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 48
 IF ~InParty("Aerie") !Dead("Aerie") !Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 47
 IF ~InParty("Viconia") !Dead("Viconia") !Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 46
 IF ~InParty("Jaheira") !Dead("Jaheira") !Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 45
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN PLAYER1 44
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN PLAYER1 43
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN PLAYER1 42
 IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KrRomanceActive","GLOBAL",0)~ THEN EXTERN PLAYER1 41
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN PLAYER1 40
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN PLAYER1 39
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN PLAYER1 38
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN PLAYER1 37
 IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN PLAYER1 36
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN PLAYER1 35
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN PLAYER1 34

CHAIN VPSIMJ TOL3
~I am partaking readily and willingly. You are right, we do not have time to chat. Just give me a signal to attack.~
END
 IF ~True()~ THEN EXTERN PLAYER1 53
 IF ~InParty("Anomen") !Dead("Anomen") Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 52
 IF ~InParty("Aerie") !Dead("Aerie") Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 51
 IF ~InParty("Viconia") !Dead("Viconia") Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 50
 IF ~InParty("Jaheira") !Dead("Jaheira") Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 49
 IF ~InParty("Anomen") !Dead("Anomen") !Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 48
 IF ~InParty("Aerie") !Dead("Aerie") !Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 47
 IF ~InParty("Viconia") !Dead("Viconia") !Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 46
 IF ~InParty("Jaheira") !Dead("Jaheira") !Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 45
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN PLAYER1 44
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN PLAYER1 43
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN PLAYER1 42
 IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KrRomanceActive","GLOBAL",0)~ THEN EXTERN PLAYER1 41
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN PLAYER1 40
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN PLAYER1 39
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN PLAYER1 38
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN PLAYER1 37
 IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN PLAYER1 36
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN PLAYER1 35
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN PLAYER1 34

CHAIN
IF WEIGHT #-87 ~GlobalLT("AsylumPlot","GLOBAL",5) Global("simespeak","LOCALS",1)~ THEN VPSIMJ 115
~Saemon looks nervous. Find out what he wants.~
EXIT

CHAIN VPSIMJ 116
~I often said to myself when it was getting rough - it could be worst, it could be Nine Hells... But now I am afraid we are in Nine Hells. (*Shrugs*)~
END
 IF ~True()~ THEN EXIT
 IF ~InParty("Edwin") See("Edwin")~ THEN EXTERN EDWINJ 95
 IF ~InParty("Nalia") See("Nalia")~ THEN EXTERN NALIAJ 268
 IF ~InParty("Keldorn") See("Keldorn")~ THEN EXTERN KELDORJ 189
 IF ~InParty("Haerdalis") See("Haerdalis")~ THEN EXTERN HAERDAJ 100
 IF ~InParty("Anomen") See("Anomen")~ THEN EXTERN ANOMENJ 258
 IF ~InParty("Mazzy") See("Mazzy")~ THEN EXTERN MAZZYJ 166
 IF ~InParty("Cernd") See("Cernd")~ THEN EXTERN CERNDJ 100
 IF ~InParty("Jaheira") See("Jaheira")~ THEN EXTERN JAHEIRAJ 450
 IF ~InParty("Yoshimo") See("Yoshimo")~ THEN EXTERN YOSHJ 90
 IF ~InParty("Viconia") See("Viconia")~ THEN EXTERN VICONIJ 117
 IF ~InParty("Jan") See("Jan")~ THEN EXTERN JANJ 147
 IF ~InParty("Korgan") See("Korgan")~ THEN EXTERN KORGANJ 115
 IF ~InParty("Valygar") See("Valygar")~ THEN EXTERN VALYGARJ 77
 IF ~InParty("Minsc") See("Minsc")~ THEN EXTERN MINSCJ 155
 IF ~InParty("Aerie") See("Aerie")~ THEN EXTERN AERIEJ 131
 IF ~InParty("Imoen2") See("Imoen2")~ THEN EXTERN IMOEN2J 10
 IF ~InParty("vpkachi") See("vpkachi")~ THEN EXTERN VPKACJ N55
// IF ~InParty("Dynaheir") //See("Dynaheir")~ THEN EXTERN ~DYNAJ~ TS03
// IF ~InParty("Coran") //See("Coran")~ THEN EXTERN ~CORANJ~ TS6

//FLIRTS - Phase A

IF ~GlobalGT("LoveTalk","LOCALS",2) GlobalLT("LoveTalk","LOCALS",23) OR(2) Global("SimeRomanceActive","GLOBAL",1) Global("SimeRomanceActive","GLOBAL",2)~ THEN VPSIMJ flirts_A
~(*You notice Sime approaching you with a smile on her lips. The two of you have become quite close lately, growing beyond that of simple companionship.*)~
END
 ++ ~(*Sime stands close to you and gently eases her body against yours for support. You wrap an arm firmly about her shoulder, and kiss the side of her head softly.*)~ EXTERN VPSIMJ flirt_14
 ++ ~(*Sime pulls your body to hers and hugs you close. She fits perfectly against you, as though your bodies had grown to come together in perfect harmony, like the pieces of a puzzle... As soon as you come into contact with each other, her breathing eases into a steady, content rhythm. It warms your heart to know you can soothe her in such a way.*)~ EXTERN VPSIMJ flirt_15
 ++ ~(*Sime bestows to you a quick kiss to your cheek, smiling gently as she does so.*)~ EXTERN VPSIMJ flirt_16
 ++ ~(*You notice that Sime has been watching you carefully for the past few minutes. As you turn toward her to demand an explanation, she simply smiles mysteriously and winks at you.*)~ EXTERN VPSIMJ flirt_17
 ++ ~<CHARNAME>, I just wanted to thank you for allowing me to see the world with you. You have been a good friend to me (*Sime smiles and clasps hands with yours*)...~ EXTERN VPSIMJ flirt_18
 ++ ~(*Sime giggles and bites at the tip of your nose playfully*)...~ EXTERN VPSIMJ flirt_19
 ++ ~(*Sime quickly inspects the straps of your traveling gear and pack. She notices that a strap is loose on your arm, and tightens it for you.*)~ EXTERN VPSIMJ flirt_20
 IF ~AreaType(OUTDOOR) CheckStatLT(Player1,16,STR)~ THEN REPLY ~(*As the party silently walks down the beaten path, Sime decides to break the lull and pounces on your back.*)~ EXTERN VPSIMJ flirt_21a
 IF ~AreaType(OUTDOOR) CheckStatGT(Player1,15,STR)~ THEN REPLY ~(*As the party silently walks down the beaten path, Sime decides to break the lull and pounces on your back.*)~ EXTERN VPSIMJ flirt_21b

CHAIN VPSIMJ flirt_14
~(*Sime turns her bright gaze upward into your eyes and, leaning into you, gives you an impassioned kiss to your lips.*)~
EXIT

CHAIN VPSIMJ flirt_15
~(*She kisses your cheek firmly before releasing you. You can't help but feel more empty now that she is out of your arms.*)~
EXIT

CHAIN VPSIMJ flirt_16
~(*You hope for more, but instead she turns her back to you, allowing you a splendid view of her graceful figure.*)~
EXIT

CHAIN VPSIMJ flirt_17
~(*She begins to quietly hum a random tune and turns away, pretending to occupy herself with cleaning her weapons while still watching you from the corner of her eye.*)~
EXIT

CHAIN VPSIMJ flirt_18
~(*She gazes into your eyes with a look that mixes between wonder and affection, and runs her free hand down your cheek and jaw line, sending a slight shiver to course down your spine.*)~
EXIT

CHAIN VPSIMJ flirt_19
~(*Before you can ask what brought that on, she has already moved behind you, and wraps her arms wrapped around your neck, breathing contently.*)~
EXIT

CHAIN VPSIMJ flirt_20
~(*She smiles and runs her hand down the length of your arm and over the back of your hand in a gentle caress.*) You must remember to keep your traveling equipment in proper order, though I do not mind lending a hand every now and then.~
EXIT

CHAIN VPSIMJ flirt_21a
~(*You lurch forward with a forlorn yelp, resigned to the fact that the hard ground is quite suddenly rushing up to meet you. Both you and Sime hit the dirt with a resounding smack, but Sime at least has a most convenient cushion for her fall.*)~
= ~(*Sime giggles into your ear and whispers a half-hearted apology before kissing your temple. The pain from the fall vanishes from your mind as you roll under Sime and stare up into her smiling, beautiful features.*)~
= ~Do you forgive me, <CHARNAME>? (*Sime wears her most innocent look, and trails a finger down your forehead and the length of your nose, stopping at your lips.*)~
= ~(*She then leans down and kisses you very sweetly on the lips, causing your heart to beat fiercely and your stomach to tie in knots*)... I knew you would!~
= ~(*She lets you up then, allowing you to gather your equipment and the last bit of your dignity before hugging you tightly, and resuming her place in line.*)~
EXIT

CHAIN VPSIMJ flirt_21b
~(*You stumble forward with a surprised yell, alerting the other party members who, at first think, you were attacked by some vicious animal. When they notice it is only a giggling Sime all they can do is roll their eyes.*)~
= ~(*You manage to support the combined weight of Sime, along with both her and your own equipment.*)~
= ~(*Sime bears no shame, and is giggling madly as you hoist her farther up your back, but you decide to turn the tables against her by reaching behind and grabbing her waist, and with a might swing, she is soon facing you and haning off of your hips.*)~
= ~(*You mash a long and deep kiss upon her rosy lips, both out of pure desire and to stifle the incessant laughing she emits. After your reluctant parting, she slips down from your arms and hugs you tightly, before resuming pace with the rest of the party.*)~
EXIT

//FLIRTS - Phase B

IF ~GlobalGT("LoveTalk","LOCALS",22) OR(2) Global("SimeRomanceActive","GLOBAL",1) Global("SimeRomanceActive","GLOBAL",2)~ THEN VPSIMJ flirts_B
~(*You find your gaze wandering over to Sime. Her sweet disposition belies the crowd of grim Shadow Thieves you found her hanging around with, and you are eager to learn more about her.*)~
/*1*/ IF ~Global("VP_Flirt_Option_1","LOCALS",0)~ THEN REPLY ~(*Admire Sime's exquisite beauty and unmatched grace. You realize that you have never before come across such a fair and exotic woman in all of your travels.*)~ DO ~SetGlobal("VP_Flirt_Option_1","LOCALS",1)~ EXTERN VPSIMJ flirt_1a
/*1*/ IF ~Global("VP_Flirt_Option_1","LOCALS",1)~ THEN REPLY ~(*Admire Sime's exquisite beauty and unmatched grace. You realize that you have never before come across such a fair and exotic woman in all of your travels.*)~ DO ~SetGlobal("VP_Flirt_Option_1","LOCALS",2)~ EXTERN VPSIMJ flirt_1b
/*1*/ IF ~Global("VP_Flirt_Option_1","LOCALS",2)~ THEN REPLY ~(*Admire Sime's exquisite beauty and unmatched grace. You realize that you have never before come across such a fair and exotic woman in all of your travels.*)~ DO ~SetGlobal("VP_Flirt_Option_1","LOCALS",0)~ EXTERN VPSIMJ flirt_1c
/*2*/ IF ~Global("VP_Flirt_Option_2","LOCALS",0)~ THEN REPLY ~(*You reach for Sime's hand after removing your cumbersome gloves. Your hand is afire with the desire of her touch, and her soft skin is the only thing to quench your thirst for her.*)~ DO ~SetGlobal("VP_Flirt_Option_2","LOCALS",1)~ EXTERN VPSIMJ flirt_2a
/*2*/ IF ~Global("VP_Flirt_Option_2","LOCALS",1)~ THEN REPLY ~(*You reach for Sime's hand after removing your cumbersome gloves. Your hand is afire with the desire of her touch, and her soft skin is the only thing to quench your thirst for her.*)~ DO ~SetGlobal("VP_Flirt_Option_2","LOCALS",2)~ EXTERN VPSIMJ flirt_2b
/*2*/ IF ~Global("VP_Flirt_Option_2","LOCALS",2)~ THEN REPLY ~(*You reach for Sime's hand after removing your cumbersome gloves. Your hand is afire with the desire of her touch, and her soft skin is the only thing to quench your thirst for her.*)~ DO ~SetGlobal("VP_Flirt_Option_2","LOCALS",0)~ EXTERN VPSIMJ flirt_2c
/*3*/ IF ~Global("VP_Flirt_Option_3","LOCALS",0)~ THEN REPLY ~(*You lean into Sime to fulfill your desire to feel her mouth against yours. Sime's mouth is sweet and her lips rosy red, and you are nearly driven wild in anticipation.*)~ DO ~SetGlobal("VP_Flirt_Option_3","LOCALS",1)~ EXTERN VPSIMJ flirt_3a
/*3*/ IF ~Global("VP_Flirt_Option_3","LOCALS",1)~ THEN REPLY ~(*You lean into Sime to fulfill your desire to feel her mouth against yours. Sime's mouth is sweet and her lips rosy red, and you are nearly driven wild in anticipation.*)~ DO ~SetGlobal("VP_Flirt_Option_3","LOCALS",2)~ EXTERN VPSIMJ flirt_3b
/*3*/ IF ~Global("VP_Flirt_Option_3","LOCALS",2)~ THEN REPLY ~(*You lean into Sime to fulfill your desire to feel her mouth against yours. Sime's mouth is sweet and her lips rosy red, and you are nearly driven wild in anticipation.*)~ DO ~SetGlobal("VP_Flirt_Option_3","LOCALS",0)~ EXTERN VPSIMJ flirt_3c
/*4*/ IF ~Global("VP_Flirt_Option_4","LOCALS",0)~ THEN REPLY ~(*Shower Sime's face and neck with soft, wet kisses.*)~ DO ~SetGlobal("VP_Flirt_Option_4","LOCALS",1)~ EXTERN VPSIMJ flirt_4a
/*4*/ IF ~Global("VP_Flirt_Option_4","LOCALS",1)~ THEN REPLY ~(*Shower Sime's face and neck with soft, wet kisses.*)~ DO ~SetGlobal("VP_Flirt_Option_4","LOCALS",2)~ EXTERN VPSIMJ flirt_4b
/*4*/ IF ~Global("VP_Flirt_Option_4","LOCALS",2)~ THEN REPLY ~(*Shower Sime's face and neck with soft, wet kisses.*)~ DO ~SetGlobal("VP_Flirt_Option_4","LOCALS",0)~ EXTERN VPSIMJ flirt_4c
/*5*/ IF ~Global("VP_Flirt_Option_5","LOCALS",0)~ THEN REPLY ~I'm glad that Aran allowed you to join me, Sime. I truly enjoy your presence here beside me.~ DO ~SetGlobal("VP_Flirt_Option_5","LOCALS",1)~ EXTERN VPSIMJ flirt_5a
/*5*/ IF ~Global("VP_Flirt_Option_5","LOCALS",1)~ THEN REPLY ~I'm glad that Aran allowed you to join me, Sime. I truly enjoy your presence here beside me.~ DO ~SetGlobal("VP_Flirt_Option_5","LOCALS",2)~ EXTERN VPSIMJ flirt_5b
/*5*/ IF ~Global("VP_Flirt_Option_5","LOCALS",2)~ THEN REPLY ~I'm glad that Aran allowed you to join me, Sime. I truly enjoy your presence here beside me.~ DO ~SetGlobal("VP_Flirt_Option_5","LOCALS",0)~ EXTERN VPSIMJ flirt_5c
/*6*/ IF ~Global("VP_Flirt_Option_6","LOCALS",0)~ THEN REPLY ~(*Tug Sime toward you for a close, intimate embrace. The contact of her body against yours ignites an inner warmth deep within your heart, making you wonder how you could have ever possibly gone through a day without holding her.*)~ DO ~SetGlobal("VP_Flirt_Option_6","LOCALS",1)~ EXTERN VPSIMJ flirt_6a
/*6*/ IF ~Global("VP_Flirt_Option_6","LOCALS",1)~ THEN REPLY ~(*Tug Sime toward you for a close, intimate embrace. The contact of her body against yours ignites an inner warmth deep within your heart, making you wonder how you could have ever possibly gone through a day without holding her.*)~ DO ~SetGlobal("VP_Flirt_Option_6","LOCALS",2)~ EXTERN VPSIMJ flirt_6b
/*6*/ IF ~Global("VP_Flirt_Option_6","LOCALS",2)~ THEN REPLY ~(*Tug Sime toward you for a close, intimate embrace. The contact of her body against yours ignites an inner warmth deep within your heart, making you wonder how you could have ever possibly gone through a day without holding her.*)~ DO ~SetGlobal("VP_Flirt_Option_6","LOCALS",0)~ EXTERN VPSIMJ flirt_6c
/*7*/ IF ~Global("VP_Flirt_Option_7","LOCALS",0)~ THEN REPLY ~(*Throw aside all care and modesty and caress Sime's torso and the curves of her body. Her feminine, yet strong build verily begs to be touched and you cannot hold back any longer.*)~ DO ~SetGlobal("VP_Flirt_Option_7","LOCALS",1)~ EXTERN VPSIMJ flirt_7a
/*7*/ IF ~Global("VP_Flirt_Option_7","LOCALS",1)~ THEN REPLY ~(*Throw aside all care and modesty and caress Sime's torso and the curves of her body. Her feminine, yet strong build verily begs to be touched and you cannot hold back any longer.*)~ DO ~SetGlobal("VP_Flirt_Option_7","LOCALS",2)~ EXTERN VPSIMJ flirt_7b
/*7*/ IF ~Global("VP_Flirt_Option_7","LOCALS",2)~ THEN REPLY ~(*Throw aside all care and modesty and caress Sime's torso and the curves of her body. Her feminine, yet strong build verily begs to be touched and you cannot hold back any longer.*)~ DO ~SetGlobal("VP_Flirt_Option_7","LOCALS",0)~ EXTERN VPSIMJ flirt_7c
/*8*/ IF ~Global("VP_Flirt_Option_8","LOCALS",0)~ THEN REPLY ~(*Engulf your hands into Sime's golden tresses, twining her hair between your fingers.*)~ DO ~SetGlobal("VP_Flirt_Option_8","LOCALS",1)~ EXTERN VPSIMJ flirt_8a
/*8*/ IF ~Global("VP_Flirt_Option_8","LOCALS",1)~ THEN REPLY ~(*Engulf your hands into Sime's golden tresses, twining her hair between your fingers.*)~ DO ~SetGlobal("VP_Flirt_Option_8","LOCALS",2)~ EXTERN VPSIMJ flirt_8b
/*8*/ IF ~Global("VP_Flirt_Option_8","LOCALS",2)~ THEN REPLY ~(*Engulf your hands into Sime's golden tresses, twining her hair between your fingers.*)~ DO ~SetGlobal("VP_Flirt_Option_8","LOCALS",0)~ EXTERN VPSIMJ flirt_8c
/*9*/ IF ~Global("VP_Flirt_Option_9","LOCALS",0)~ THEN REPLY ~(*Cup Sime's face between your palms. You slide your tongue easily between full lips that part eagerly for you and massage her tongue with your own.*)~ DO ~SetGlobal("VP_Flirt_Option_9","LOCALS",1)~ EXTERN VPSIMJ flirt_9a
/*9*/ IF ~Global("VP_Flirt_Option_9","LOCALS",1)~ THEN REPLY ~(*Cup Sime's face between your palms. You slide your tongue easily between full lips that part eagerly for you and massage her tongue with your own.*)~ DO ~SetGlobal("VP_Flirt_Option_9","LOCALS",2)~ EXTERN VPSIMJ flirt_9b
/*9*/ IF ~Global("VP_Flirt_Option_9","LOCALS",2)~ THEN REPLY ~(*Cup Sime's face between your palms. You slide your tongue easily between full lips that part eagerly for you and massage her tongue with your own.*)~ DO ~SetGlobal("VP_Flirt_Option_9","LOCALS",0)~ EXTERN VPSIMJ flirt_9c
/*10*/ IF ~AreaType(FOREST)~ THEN REPLY ~(*You present to Sime a branch of berries you found along a path earlier that morn. After carefully testing their flavor and safety, you tingle with excitement as Sime takes the berries from you.*)~ EXTERN VPSIMJ flirt_10
/*11*/ IF ~Global("VP_Flirt_Option_11","LOCALS",0) AreaType(OUTDOOR)~ THEN REPLY ~(*The sun glistening off of Sime's honey hair inspires you to humble yourself before her, and recite lines of love and adoration to her.*)
Lady of my life, gentle maiden of my dreams and fairy tails,
Let this poor <PRO_MANWOMAN> be blessed by your touch,
The feel of your featherlike hand across my skin
and your sweet breath against my face
Is bliss, let this <PRO_MANWOMAN> be glorified by
Your words of praise and love.
I am yours, my Sime
Now, and forevermore.

~ DO ~SetGlobal("VP_Flirt_Option_11","LOCALS",1)~ EXTERN VPSIMJ flirt_11a
/*11*/ IF ~Global("VP_Flirt_Option_11","LOCALS",1) AreaType(OUTDOOR)~ THEN REPLY ~(*The sun glistening off of Sime's honey hair inspires you to humble yourself before her, and recite lines of love and adoration to her.*)
Sime, your beauty in this light
And any light for that matter,
Is unmatched by even the most
Glamorous of dryads, or the
Most splendid of Solars
Even the most heavenly
Of Goddesses pale when
Compared to you, dearest Sime,
Please say nothing, but know
That these just words echo
Throughout my mind
Like a thunderous underground waterfall
In a shining, diamond cavern.

~ DO ~SetGlobal("VP_Flirt_Option_11","LOCALS",2)~ EXTERN VPSIMJ flirt_11b
/*11*/ IF ~Global("VP_Flirt_Option_11","LOCALS",2) AreaType(OUTDOOR) CheckStatLT(Player1,13,INT)~ THEN REPLY ~(*The sun glistening off of Sime's honey hair inspires you to humble yourself before her, and recite lines of love and adoration to her.*)
Uh... demons are red,
Xvarts are blue,
The Abyss is really hot,
... and so are you!

~ DO ~SetGlobal("VP_Flirt_Option_11","LOCALS",0)~ EXTERN VPSIMJ flirt_11c
/*12*/ IF ~Global("VP_Flirt_Option_12","LOCALS",0) AreaType(DUNGEON)~ THEN REPLY ~(*You notice that Sime seems a bit on edge as of late. You come up beside her and rest an arm about her small shoulders and pull her close to you. Sime looks up at you with gratitude, and you kiss the side of her head softly to comfort her*) Is everything well, my shining star?~ DO ~SetGlobal("VP_Flirt_Option_12","LOCALS",1)~ EXTERN VPSIMJ flirt_12a
/*12*/ IF ~Global("VP_Flirt_Option_12","LOCALS",1) AreaType(DUNGEON)~ THEN REPLY ~(*You notice that Sime seems a bit on edge as of late. You come up beside her and rest an arm about her small shoulders and pull her close to you. Sime looks up at you with gratitude, and you kiss the side of her head softly to comfort her*) Is everything well, my shining star?~ DO ~SetGlobal("VP_Flirt_Option_12","LOCALS",0)~ EXTERN VPSIMJ flirt_12b
/*13*/ IF ~Global("VP_Flirt_Option_13","LOCALS",0) AreaType(DUNGEON)~ THEN REPLY ~(*The party takes a short break in order to restore vitality through food and rest. A small campfire is built, and the blackened shadows swiftly retreat from the intrusion of the light. Sime stares into the flames, lost in thought.*)~ DO ~SetGlobal("VP_Flirt_Option_13","LOCALS",1)~ EXTERN VPSIMJ flirt_13a
/*13*/ IF ~Global("VP_Flirt_Option_13","LOCALS",1) AreaType(DUNGEON)~ THEN REPLY ~(*The party takes a short break in order to restore vitality through food and rest. A small campfire is built, and the blackened shadows swiftly retreat from the intrusion of the light. Sime stares into the flames, lost in thought.*)~ DO ~SetGlobal("VP_Flirt_Option_13","LOCALS",2)~ EXTERN VPSIMJ flirt_13b
/*13*/ IF ~Global("VP_Flirt_Option_13","LOCALS",2) AreaType(DUNGEON)~ THEN REPLY ~(*The party takes a short break in order to restore vitality through food and rest. A small campfire is built, and the blackened shadows swiftly retreat from the intrusion of the light. Sime stares into the flames, lost in thought.*)~ DO ~SetGlobal("VP_Flirt_Option_13","LOCALS",0)~ EXTERN VPSIMJ flirt_13c

CHAIN VPSIMJ flirt_1a
~(*Your eyes linger over the half-elf's features and body. You note the way her hair flows behind her like a sun-kissed cloth, how her eyes glitter whenever a laugh escapes her lips, and how the trials and tribulations you endure with her never seem to wipe a smile off of her fair face.*)~
= ~(*Her eyes meet yours suddenly, causing your stomach to flutter. She tilts her head to the side and starts making silly faces at you, giggling when you feel your neck and ears heat in an embarrassed blush.*)~
= ~I thought I heard you singing about love, <CHARNAME>. It was lovely enough, but your voice could use a bit of tuning, however.~
= ~(*Sime giggles at you, and you can only imagine how red your ears and neck must have turned.*)~
EXIT

CHAIN VPSIMJ flirt_1b
~(*Sime is currently walking ahead of you, making it easier for you to admire her without being noticed. The easy swaying of her hips and her graceful step are only a few of the great many things about her that you notice.*)~
= ~(*You suddenly find yourself aching for her touch, and burning for the feel of her in your arms. Sime whirls suddenly and presses her mouth against yours, expertly slipping her tongue into your mouth. When the moment is over, she laughs heartily at your surprised expression.*)~
EXIT

CHAIN VPSIMJ flirt_1c
~(*Her glistening eyes captivate you as you stare into them. They each have their own inner glow as bright as a thousand suns.*)~
= ~(*Your gaze wanders to the slight curve of her nose to her rich yet subtle lips. When you look back up to her eyes she finds herself staring straight back at you, making you blink in surprise.*)~
= ~(*Sime giggles*) It seems I won that staring contest, <CHARNAME>!~
EXIT

CHAIN VPSIMJ flirt_2a
~(*You slowly reach out with your right hand toward her left, but pull away nervously. A moment later, you try to take her hand again but find yourself too nervous to go through with it, and you pull away yet again.*)~
= ~(*Finally, you muster enough courage to reach for her a third time, but Sime snatches your hand in hers. Surprised, you look into her face and see her smiling.*)~
= ~You should try and learn some more subtlety, <CHARNAME>. (*She says, tossing you a wink.*)~
EXIT

CHAIN VPSIMJ flirt_2b
~(*You wrap her free hand in your own, reveling in her touch.*)~
= ~(*Sime looks to you in puzzlement, and politely releases herself from your grip*) I'm sorry, <CHARNAME>, it was sweet, but this isn't a good time.~
EXIT

CHAIN VPSIMJ flirt_2c
~(*After interlocking your fingers with hers, Sime's hand trembles slightly at the sudden contact, but she does not pull away. The two of you walk on for a while as such, until she decisively turns and breaks your hold, in order to inspect her weapons and armor.*)~
EXIT

CHAIN VPSIMJ flirt_3a
~(*Sime at first doesn't react to the sudden brush of your lips on hers, as if she isn't quite certain of what just happened. She quickly regains her composure and yanks her head back, looking at you with a dark expression on her face.*)~
= ~Look, <CHARNAME>, you have been very kind to me so far, but I do not think I'm prepared to advance our...relationship...that far yet.~
EXIT

CHAIN VPSIMJ flirt_3b
~(*Sime's lips lock with yours for a brief moment. You are nearly overcome by the sweetness of the moment, but Sime soon breaks away before any further advancement.*)~
= ~Ah, <CHARNAME>, what exactly have you been drinking as of late?~
EXIT

CHAIN VPSIMJ flirt_3c
~(*To your surprise, Sime returns your kiss. It is not the sensual kiss of lovers, but it is more than the formal peck of friends as well. The two of you part quickly, and you feel your heart pounding in your chest. You look to Sime, only to find that she has turned and is walking away from you.*)~
EXIT

CHAIN VPSIMJ flirt_4a
~(*You hungrily begin kissing Sime on her forehead, then moving down to her eyelids and the very tip of her nose. She does not pull away or resist your attention, until you reach her neck and upper chest.*)~
= ~(*She lightly but firmly pushes you away, a clear message in her eyes warning you to keep your hands to yourself.*)~
EXIT

CHAIN VPSIMJ flirt_4b
~(*You kiss both of Sime's cheeks, and then her nose. You do not get much farther than that, for she pulls back, trying to suppress a giggle.*)~
= ~I'm sorry <CHARNAME>, but I'm ticklish there!~
EXIT

CHAIN VPSIMJ flirt_4c
~(*Sime presses her hand on the back of your head, pulling you closer and encouraging your assault. You stop your affectionate kisses at the base of her neck and pull back, beaming at her. Sime rewards you with a long and deep kiss to your lips.*)~
EXIT

CHAIN VPSIMJ flirt_5a
~Thank you, <CHARNAME>. I enjoy being with you as well, but remember, I'm also here for my own reasons, not just for bringing pleasure to you.~
EXIT

CHAIN VPSIMJ flirt_5b
~And I am glad as well. I much prefer your company than a guild of pickpockets and thieves.~
EXIT

CHAIN VPSIMJ flirt_5c
~Why thank you, <CHARNAME>. I do my best to aid you, and it pleases me to hear I am doing well.~
EXIT

CHAIN VPSIMJ flirt_6a
~(*Sime rests her body against yours with a gentle grace. Her light breathing caresses the neck of your skin as you hold her close, causing a tingle to run up your spine.*)~
EXIT

CHAIN VPSIMJ flirt_6b
~(*You seem to have picked the perfect moment to give Sime comfort, for she clings to you with desperation.*)~
= ~(*Sime balls her hands into fists while she grips your clothing tightly, and softly whispers something into your shoulder*) Mielikki, bless you.~
EXIT

CHAIN VPSIMJ flirt_6c
~(*Sime nuzzles her nose against your neck as you hold each other. You are suddenly overcome in a wave of warmth and care, and from the way that Sime holds you as though making sure you are real, you can tell she is experiencing the same.*)~
EXIT

CHAIN VPSIMJ flirt_7a
~(*Sime is distracted momentarily by the attention, but she quickly grips your wandering hands by the wrists and pushes you back.*)~
= ~Do not... do not touch me that way, <CHARNAME>.~
EXIT

CHAIN VPSIMJ flirt_7b
~(*Sime slaps your hands away from her body angrily*) I am not an object, <CHARNAME>. Do not treat me as something to be manhandled as such.~
EXIT

CHAIN VPSIMJ flirt_7c
~(*You reach towards Sime, but she turns away unexpectedly, making your hands bump into her back. She turns her head around and gazes at you warily, but softens her visage quickly.*)~
= ~(*Sime leans backward into you and presses her back against your stomach while wrapping your arms around her*) You could have just asked if you wanted a hug, <CHARNAME>.~
= ~(*Though it is not exactly what you had in mind, the hug is still quite intimate.*)~
EXIT

CHAIN VPSIMJ flirt_8a
~(*Sime welcomes your touch and closes her eyes and smiles to herself as you stroke and play with her hair.*)~
EXIT

CHAIN VPSIMJ flirt_8b
~(*Sime smiles mischievously, then she flips her head about, sending her hair flying into your face. Sime laughs sweetly as the loose strands momentarily blind your eyes, and as you sputter to remove the pieces of hair that flew into your mouth.*)~
= ~I'm sorry, <CHARNAME>, it was just too tempting! And you know I love to tease you. (*Sime kisses you once, then twice on the lips in an effort to apologize.*)~
EXIT

CHAIN VPSIMJ flirt_8c
~(*Sime reaches out slowly and likewise runs her fingers through your hair. Her soft stroking soothes you, and you feel at peace. She looks as if she wants to say something, but seems to be afraid of spoiling the moment. Instead, she compromises by leaning forward and moves up and down the side of your neck leaving soft, wet kisses in her wake.*)~
EXIT

CHAIN VPSIMJ flirt_9a
~(*Sime's breath quickens in your mouth and she presses against you with a fierce and fiery passion. Your tongues fight each other in a playful match for dominance of the other's mouth.*)~
= ~(*Your parting is slow and breathless, and Sime's eyes speak an unfathomable amount of trust and dedication for you.*)~
EXIT

CHAIN VPSIMJ flirt_9b
~(*Sime's reaction is initially slow, but the passion between you two builds wonderfully quickly.*)~
= ~You make me so happy, <CHARNAME>... (*Sime manages to say between chaste kisses. You make certain that your responding kiss tells her of all the adoration you hold for her as well.*)~
EXIT

CHAIN VPSIMJ flirt_9c
~(*Sime moves her head backwards denying you the sweetness of her mouth for a moment and tries to speak to you when you suddenly press your mouth on hers, and her words flow into your mouth as an incoherent stream of sound.*)~
= ~(*Her tongue rolls over yours in a wild and beautiful dance inside your mouth*)...~
= ~(*When you finally break the embrace, she grins widely while catching her breath*)... I was just about to say that it had been a while since you last kissed me, <CHARNAME>. Are you certain that one of your gifts as a Bhaalspawn isn't telepathy?~
EXIT

CHAIN VPSIMJ flirt_10
~(*Sime teases you delightfully. She carefully plucks a berry from the branch, and rolls it betwixt her fingers. She brings it to her nose, and smells it slowly. Then, she runs the berry over her succulent lips, slipping her tongue from her mouth and tasting the sweetness of the fruit.*)~
= ~(*You think you hear a pitiful whimpering, and only then you realize it is coming from you. Sime ends her game by slowly inserting the fruit into her delicate mouth, and reverentially chews it before swallowing.*)~
= ~(*She giggles while looking at you, then spits the pit out so that it bounces off of your sweating forehead*)... Mmm, delicious, <CHARNAME>...~
= ~(*You groan in exasperation and surrender the rest of the branch to her.*)~
EXIT

CHAIN VPSIMJ flirt_11a
~(*You think you see a tear well in one of Sime's eyes, but she blinks it away.*)~
= ~That was... wonderful <CHARNAME>, but know you that I am not one to condone slavery. (*She giggles*)~
EXIT

CHAIN VPSIMJ flirt_11b
~(*Thank... thank you, <CHARNAME>. That was much better than the one lined poems some of the Shadow Thieves would grant me... I did not know you felt so much about me.*)~
= ~(*She looks as if she wants to say something to tease you, but thinks better of it. This is a rare moment when Sime actually doesn't have a clever retort to give... you must have touched her deeply indeed.*)~
EXIT

CHAIN VPSIMJ flirt_11c
~Umm... thank you, <CHARNAME>. Please tell me that you didn't spend all day thinking of that one.~
EXIT

CHAIN VPSIMJ flirt_12a
~(*Sime smiles at you and snuggles closer to you*)... Everything is all right now, my walking headrest. (*She accentuates her claim by resting her head against your shoulder, humming gently to herself.*)~
EXIT

CHAIN VPSIMJ flirt_12b
~Hmm? Oh... of course, I am fine. I thought I smelled undead... I always become distant when the air tastes of the stench of a mummy or vampire. I have never taken a liking to them...~
= ~(*Sime's distracted look returns to her countenance, but you decide to respect her privacy and not press it any further.*)~
EXIT

CHAIN VPSIMJ flirt_13a
~(*You begin singing a well-known song of valor and love, seeing if the rest of the group will join in.*)~
= ~(*No one else joins in with your singing, but the mood does seem to lighten because of it. Sime, however, continues to stare into the flames.*)~
= ~(*Undaunted, you raise the tone of your voice and change the fair lady's name in the song to 'Sime'. You certainly arouse her attention then, and she shakes her head almost resolutely. Seeing you falter in your singing brings a tired, but genuine smile to her face, a reward in itself for your efforts.*)~
EXIT

CHAIN VPSIMJ flirt_13b
~(*You playfully toss a pebble in her direction.*)~
= ~(*Sime's head shoots up after the pebble bounces harmlessly off of her. You try to suppress a laugh, but to no avail. At first she glares at you in hurt and betrayal, but then it seems she decides she is being too serious and mediocre for her own good.*)~
= ~(*Sime quickly retaliates by launching a barrage of small stones and pebbles back at you, making you squirm and wriggle in surprise. It then becomes a full-fledged throwing contest, and you are soon resorting to food, wrappers, and even the occasional pillow.*)~
= ~(*By the end of your play, you and Sime are laying side by side giggling and laughing at each other's expense. Sime sits up on her elbows, leaning over you. She then leans down and kisses you softly, sliding her tongue against yours*)...~
= ~I feel better now, <CHARNAME>, thank you.~
EXIT

CHAIN VPSIMJ flirt_13c
~(*You do nothing.*)~
= ~(*Sime glances up at you from time to time, shifting her gaze from the fire to your face. After a moment of more contemplation, she turns away, and settles into her bedroll, and is soon asleep.*)~
EXIT

// TOB

CHAIN VPSIMJ TSTOB0
~I did not mind the pain, it was sweet. I love you <CHARNAME>, do not listen to this cruel spirit.~
EXTERN HGWRA01 24

CHAIN VPSIMJ TSTOB1
~Darriel? I do not understand...~
EXTERN LOVEONE6 1

CHAIN VPSIMJ TSTOB2
~I did not kill you, Darriel. Your own recklessness did.~
EXTERN LOVEONE6 2

CHAIN VPSIMJ TSTOB3
~I cherished you, I adored you, I looked up to you...~
EXTERN LOVEONE6 3

CHAIN VPSIMJ TSTOB4
~But Darriel, we could not have been lovers, you know that! You were my mentor, my friend...~
EXTERN LOVEONE6 4

CHAIN VPSIMJ TSTOB5
~No! That's cannot be true... Darriel could not have thrown your life away because of me...~
END
 ++ ~Darriel, whatever you did, you did it to yourself! Stop trying to place the blame on Sime! She did nothing wrong!~ EXTERN HGWRA01 25
 ++ ~Gorion, what is it? Sime did nothing to be tortured so... You are unfair.~ EXTERN HGWRA01 25
 ++ ~This is madness and lies. Enough.~ EXTERN HGWRA01 25
 ++ ~Sime, my love, this is not Darriel... It is some cruel scheme! Sime, trust me, it is not real!~ EXTERN HGWRA01 25

CHAIN VPSIMJ TSTOB6
~This is it, then? I cannot believe I am witnessing a mortal becoming a god.~
END
 IF ~!Alignment(Player1,MASK_EVIL)~ THEN EXTERN VPSIMJ TSTOB10
 IF ~Alignment(Player1,MASK_EVIL)~ THEN EXTERN VPSIMJ TSTOB11

CHAIN VPSIMJ TSTOB7
~I will not hold you, <CHARNAME>. I love you, but your destiny... It is beyond any words I have at my disposal. You were destined for greatness, you were born into it. What is one woman's desire to hold you close every night compare to that?~
END
 IF ~True()~ THEN EXTERN FINSOL01 28
 IF ~InParty("Valygar") Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN VALYG25J 3
 IF ~InParty("Anomen") Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ANOME25J 11
 IF ~InParty("Valygar") !Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN VALYG25J 2
 IF ~InParty("Anomen") !Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ANOME25J 10
 IF ~InParty("Viconia") !Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN VICON25J 6
 IF ~InParty("Aerie") !Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN AERIE25J 7
 IF ~InParty("Jaheira") !Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN JAHEI25J 7
 IF ~InParty("Imoen2")~ THEN EXTERN IMOEN25J 15
 IF ~InParty("Sarevok") !Alignment("Sarevok",MASK_EVIL)~ THEN EXTERN SAREV25J 2
 IF ~InParty("Sarevok") Alignment("Sarevok",MASK_EVIL)~ THEN EXTERN SAREV25J 3
 IF ~InParty("Minsc")~ THEN EXTERN MINSC25J 0
 IF ~InParty("Nalia")~ THEN EXTERN NALIA25J 1
 IF ~InParty("HaerDalis")~ THEN EXTERN HAERD25J 1
 IF ~InParty("Jan")~ THEN EXTERN JAN25J 3
 IF ~InParty("Cernd")~ THEN EXTERN CERND25J 0
 IF ~InParty("Mazzy")~ THEN EXTERN MAZZY25J 0
 IF ~InParty("Edwin")~ THEN EXTERN EDWIN25J 0
 IF ~InParty("Korgan")~ THEN EXTERN KORGA25J 2
 IF ~InParty("Keldorn")~ THEN EXTERN KELDO25J 0
//IF ~InParty("Coran")~ THEN EXTERN ~CORAN25J~ 0
//IF ~InParty("Dynaheir")~ THEN EXTERN ~DYNA25J~ 0
 IF ~InParty("vpkachi")~ THEN EXTERN VPKAC25J 3
 IF ~InParty("Yoshimo")~ THEN EXTERN YOSHJ TS231

CHAIN VPSIMJ TSTOB8
~I must be feeling really special now for sharing the bedroll of the <PRO_LADYLORD> of Murder. Oh, Nine Hells! What's done is done. Hopefully my father does not aspire to take Mask's place. For he is the only person I love left on this plane of existence.~
END
 IF ~True()~ THEN EXTERN FINSOL01 33
 IF ~InParty("Valygar") Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN VALYG25J 11
 IF ~InParty("Anomen") Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ANOME25J 20
 IF ~InParty("Viconia") Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN VICON25J 18
 IF ~InParty("Aerie") Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN AERIE25J 20
 IF ~InParty("Jaheira") Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN JAHEI25J 18
 IF ~InParty("Imoen2")~ THEN EXTERN IMOEN25J 18
 IF ~InParty("Sarevok") Alignment("Sarevok",MASK_EVIL)~ THEN EXTERN SAREV25J 4
 IF ~InParty("Sarevok") !Alignment("Sarevok",MASK_EVIL)~ THEN EXTERN SAREV25J 6

CHAIN VPSIMJ TSTOB9
~What? You choose to remain mortal? <CHARNAME>, <CHARNAME>, I do not know, I feel like berating you for ultimate stupidity, yet my heart sings. And I think I am crying. I must look silly.~
END
 ++ ~You have never looked more beautiful, Sime. I love you, I will not leave you. Not for a crown, not for a godhood, not even for another woman.~ EXTERN VPSIMJ TSTOB12
 ++ ~Well, at first I wanted to say something like: "It is not that we will be apart, my beloved Sime, it is only that we won't be together." But then I thought that it is sappy. Since I did not think that: "Oh, Nine Hells!" is not exactly the words you would expect from a person ascending to the godhood, and I could not come up with anything else I decided to stay and... Oh, Nine Hells! I love you, and that's all that matters.~ EXTERN VPSIMJ TSTOB13
 ++ ~You thought I'd trade our love for that terrifying piece of used furniture? Not on my life!~ EXTERN VPSIMJ TSTOB14
 ++ ~Sime, if I wanted a fountain, I would seriously consider you for the job. Whip your tears and let us rejoice!~ EXTERN VPSIMJ TSTOB15
 IF ~Gender(Player1,MALE)~ THEN REPLY ~Compare to me, you look a pinnacle of intelligence, Sime. I am not a god, not even a demi-god now. I am a man and I am in love. That is all I know.~ EXTERN VPSIMJ TSTOB16
 IF ~Gender(Player1,FEMALE)~ THEN REPLY ~Compare to me, you look a pinnacle of intelligence, Sime. I am not a godness, not even a demi-godness now. I am a woman and I am in love. That is all I know.~ EXTERN VPSIMJ TSTOB16

CHAIN VPSIMJ TSTOB10
~You are going to ascend, won't you? You have proven a person of goodness and wisdom. Such a person can succeed in changing the dark domain of the Lord of Murder.~
END
 IF ~True()~ THEN EXTERN FINSOL01 28
 IF ~InParty("Valygar") Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN VALYG25J 3
 IF ~InParty("Anomen") Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ANOME25J 11
 IF ~InParty("Viconia") Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN VICON25J 8
 IF ~InParty("Aerie") Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN AERIE25J 9
 IF ~InParty("Jaheira") Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN JAHEI25J 9
 IF ~InParty("Valygar") !Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN VALYG25J 2
 IF ~InParty("Anomen") !Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ANOME25J 10
 IF ~InParty("Viconia") !Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN VICON25J 6
 IF ~InParty("Aerie") !Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN AERIE25J 7
 IF ~InParty("Jaheira") !Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN JAHEI25J 7
 IF ~InParty("Imoen2")~ THEN EXTERN IMOEN25J 15
 IF ~InParty("Sarevok") !Alignment("Sarevok",MASK_EVIL)~ THEN EXTERN SAREV25J 2
 IF ~InParty("Sarevok") Alignment("Sarevok",MASK_EVIL)~ THEN EXTERN SAREV25J 3
 IF ~InParty("Minsc")~ THEN EXTERN MINSC25J 0
 IF ~InParty("Nalia")~ THEN EXTERN NALIA25J 1
 IF ~InParty("HaerDalis")~ THEN EXTERN HAERD25J 1
 IF ~InParty("Jan")~ THEN EXTERN JAN25J 3
 IF ~InParty("Cernd")~ THEN EXTERN CERND25J 0
 IF ~InParty("Mazzy")~ THEN EXTERN MAZZY25J 0
 IF ~InParty("Edwin")~ THEN EXTERN EDWIN25J 0
 IF ~InParty("Korgan")~ THEN EXTERN KORGA25J 2
 IF ~InParty("Keldorn")~ THEN EXTERN KELDO25J 0
//IF ~InParty("Coran")~ THEN EXTERN ~CORAN25J~ 0
//IF ~InParty("Dynaheir")~ THEN EXTERN ~DYNA25J~ 0
 IF ~InParty("vpkachi")~ THEN EXTERN VPKAC25J 3
 IF ~InParty("Yoshimo")~ THEN EXTERN YOSHJ TS231

CHAIN VPSIMJ TSTOB11
~I know that you have power and blood of a god, but the Lord of Murder's domain is a dark one. I... I hope you will not make it darker still.~
END
 IF ~True()~ THEN EXTERN FINSOL01 28
 IF ~InParty("Valygar") Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN VALYG25J 3
 IF ~InParty("Anomen") Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ANOME25J 11
 IF ~InParty("Viconia") Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN VICON25J 8
 IF ~InParty("Aerie") Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN AERIE25J 9
 IF ~InParty("Jaheira") Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN JAHEI25J 9
 IF ~InParty("Valygar") !Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN VALYG25J 2
 IF ~InParty("Anomen") !Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ANOME25J 10
 IF ~InParty("Viconia") !Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN VICON25J 6
 IF ~InParty("Aerie") !Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN AERIE25J 7
 IF ~InParty("Jaheira") !Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN JAHEI25J 7
 IF ~InParty("Imoen2")~ THEN EXTERN IMOEN25J 15
 IF ~InParty("Sarevok") !Alignment("Sarevok",MASK_EVIL)~ THEN EXTERN SAREV25J 2
 IF ~InParty("Sarevok") Alignment("Sarevok",MASK_EVIL)~ THEN EXTERN SAREV25J 3
 IF ~InParty("Minsc")~ THEN EXTERN MINSC25J 0
 IF ~InParty("Nalia")~ THEN EXTERN NALIA25J 1
 IF ~InParty("HaerDalis")~ THEN EXTERN HAERD25J 1
 IF ~InParty("Jan")~ THEN EXTERN JAN25J 3
 IF ~InParty("Cernd")~ THEN EXTERN CERND25J 0
 IF ~InParty("Mazzy")~ THEN EXTERN MAZZY25J 0
 IF ~InParty("Edwin")~ THEN EXTERN EDWIN25J 0
 IF ~InParty("Korgan")~ THEN EXTERN KORGA25J 2
 IF ~InParty("Keldorn")~ THEN EXTERN KELDO25J 0
//IF ~InParty("Coran")~ THEN EXTERN ~CORAN25J~ 0
//IF ~InParty("Dynaheir")~ THEN EXTERN ~DYNA25J~ 0
 IF ~InParty("vpkachi")~ THEN EXTERN VPKAC25J 3
 IF ~InParty("Yoshimo")~ THEN EXTERN YOSHJ TS231

CHAIN VPSIMJ TSTOB12
~For a moment I was worried that I was going to loose you. But then your eyes stopped at me. The way you looked at me made thousand of butterflies to be born in my heart. I love you, <CHARNAME>.~
EXTERN FINSOL01 33

CHAIN VPSIMJ TSTOB13
~"Oh, Nine Hells" will do. I was silly to ask you for pretty words so often. I do not want any now, I want your love, and I want your kiss.~
EXTERN FINSOL01 33

CHAIN VPSIMJ TSTOB14
~I... I always wanted to fall in love for a person who'd call the Throne of Bhaal "a piece of used furniture". Now this dream came true.~
EXTERN FINSOL01 33

CHAIN VPSIMJ TSTOB15
~I am trying, <CHARNAME>, but the stupid tears won't stop. But I am rejoicing, and I cry of happiness. I love you so!~
EXTERN FINSOL01 33

CHAIN VPSIMJ TSTOB16
~And all I know is that I love you. Let it make us stupid, I do not care.~
EXTERN FINSOL01 33

CHAIN VPSIMJ Kelem0 //224
~What is it, where am I? There is cold and no trace of life. What is this horrible place?~
END
 ++ ~This is the plan of Kelemvor, Sime.~ EXTERN VPSIMJ Kelem1
 ++ ~This is a bad place for priestesses of Mielikki, Sime. Here... Here are only dead.~ EXTERN VPSIMJ Kelem1
 ++ ~Hunter turned into victim.~ EXTERN VPSIMJ Kelem2

CHAIN VPSIMJ Kelem1
~So this is how that world looks like! Of course. I should have guessed. You placed the ring on a finger, turned into a fury and killed us all with such ease. But why?~
END
 ++ ~I don't know. Why would I kill you? We are comrades in arms. But the ring ... it drove me crazy. I was not I, Sime.~ EXTERN VPSIMJ Kelem3
 ++ ~I was not I, Sime. That was Bhaal wearing my skin who killed you.~ EXTERN VPSIMJ Kelem3

CHAIN VPSIMJ Kelem2
~(Shudders) Bad joke.~
END
 ++ ~Sorry, Sime. Indeed, bad joke, I agree. I ... I do not know what to say for myself, Sime. The ring of Cyric is to be blamed.~ EXTERN VPSIMJ Kelem3
 ++ ~Sorry, Sime. Let's get out of here, to light and life.~ EXTERN VPSIMJ Kelem4

CHAIN VPSIMJ Kelem3
~(Supprisingly) You thought that the ring of Cyric would allow you to remove the curse from Keldorn? The curse put by the priest of same Cyric?~
END
 ++ ~Yes, it was stupid. But Kelemvor has already taken the ring, so that we can get out of here. He lets us go.~ EXTERN VPSIMJ Kelem4

CHAIN VPSIMJ Kelem4
~Yes, yes! Let's go quickly to the sun and fresh air.~
END
 IF ~InParty("Edwin")~ THEN EXTERN EDWINJ Kelem0
 IF ~InParty("vpkachi")~ THEN EXTERN VPKACJ Kelem0
 IF ~InParty("Yoshimo")~ THEN EXTERN YOSHJ Kelem0
 IF ~InParty("Viconia")~ THEN EXTERN VICONIJ Kelem0
 IF ~InParty("Jan")~ THEN EXTERN JANJ Kelem0
 IF ~InParty("Minsc")~ THEN EXTERN MINSCJ Kelem0
 IF ~InParty("Jaheira")~ THEN EXTERN JAHEIRAJ Kelem0
 IF ~InParty("Mazzy")~ THEN EXTERN MAZZYJ Kelem0
 IF ~InParty("HaerDalis")~ THEN EXTERN HAERDAJ Kelem0
 IF ~InParty("Korgan")~ THEN EXTERN KORGANJ Kelem0
 IF ~InParty("Cernd")~ THEN EXTERN CERNDJ Kelem0
 IF ~InParty("Nalia")~ THEN EXTERN NALIAJ Kelem0
 IF ~InParty("Aerie")~ THEN EXTERN AERIEJ Kelem0

CHAIN VPSIMJ sailoff1
~I shall make certain that, should we be surprised at sea, death will not come from a surprise source. Do I make myself clear?~
EXTERN PPSAEM TS18

CHAIN VPSIMJ sailoff2
~My guild will pay you, Saemon... if we are to survive this spell...~
EXTERN PPSAEM TS0

CHAIN VPSIMJ sailoff3
~Watch you tongue, Saemon. We have already paid you enough!~
EXTERN PPSAEM KR12

CHAIN VPSIMJ sailoff4
~Okay, take this money, and try to do your best.~
EXTERN VPKACJ sailoff2

CHAIN VPSIMJ NEJ119
~May Mielikki look into my heart and know I do this only to aid the search for an unfortunate girl.~
END
 IF ~True()~ THEN EXIT
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN KORGANJ NEJ224
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN JANJ NEJ200
 IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN VALYGARJ NEJ166
 IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ANOMENJ NEJ312
 IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN KELDORJ NEJ255
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARJ 70