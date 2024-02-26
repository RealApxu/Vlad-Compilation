REPLACE_STATE_TRIGGER VALYGARJ 25
~Global("ValygarSeesOrb","GLOBAL",1)
!Global("LavokDead","GLOBAL",1)~

REPLACE_STATE_TRIGGER VALYGARJ 107
~Dead("lavok02")
Global("LavokDead","GLOBAL",1)
!Global("ValygarSeesOrb","GLOBAL",1)~

ALTER_TRANS VALYGARJ // file name
BEGIN 107 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("LavokDead","GLOBAL",2)~
END

SET_WEIGHT VALYGARJ 25 #-1
SET_WEIGHT VALYGARJ 107 #-2

APPEND ~VALYGARJ~

IF ~Global("SPRITE_IS_DEADKiotsi","GLOBAL",1)
Global("Kiotsi_Dead","GLOBAL",1)
!Global("LavokDead","GLOBAL",1)
!Global("ValygarSeesOrb","GLOBAL",1)
Global("VP_OnIsland","GLOBAL",1)~ THEN BEGIN TS123
  SAY ~Something about this place reminds me of my family... Undead mages, twisted honor. I expect my mother to appear every minute dragging my zombied father along... Did I tell you I had to kill them both to stop my mother’s madness? Still gives me creeps. Let’s be done quickly and be out of here.~
  IF ~~ THEN DO ~SetGlobal("Kiotsi_Dead","GLOBAL",2)~ EXIT
END

//IF ~~ THEN BEGIN TS124
//  SAY ~Yes, there is a pain in life, pain, and loss, and sorrow. But there is also joy and pleasure of growing and learning. You can’t have one without the other, and I wouldn’t want to sacrifice either. <CHARNAME>, let us finish this needless discussion.~
//  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",0)~ THEN REPLY ~Yes, I am really tired of this madness too. Let us just finish it. I’m taking Imoen, and we are going. ~ EXTERN ~PPIRENI1~ 84
//  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",0)~ THEN REPLY ~Yes, I think you are right. Whether or not this is all the fulfillment of a prophecy, or just random chance does change the gravity of our situation, I doubt we would do anything differently, if we even knew one way or another... Let’s destroy this monster once and forever. ~ EXTERN ~PPIRENI1~ 84
//  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",1)~ THEN REPLY ~Yes, I am really tired of this madness too. Let us just finish it. I’m taking Imoen, and we are going. ~ EXTERN ~PPIRENI2~ 105
//  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",1)~ THEN REPLY ~Yes, I think you are right. Whether or not this is all the fulfillment of a prophecy, or just random chance does change the gravity of our situation, I doubt we would do anything differently, if we even knew one way or another... Let’s destroy this monster once and forever. ~ EXTERN ~PPIRENI2~ 105
//END

IF ~~ THEN BEGIN TS126
  SAY ~Stay away from her, vampire! You and your murderous bastard of a brother had taken too many lives as is. I will not allow you to harm <CHARNAME>...~
  IF ~~ THEN EXTERN ~BODHIAMB~ TS21
END

IF ~GlobalGT("LoveTalk","LOCALS",4)
GlobalLT("LoveTalk","LOCALS",22)
!Global("ValygarSeesOrb","GLOBAL",1)
!Global("LavokDead","GLOBAL",1)
!Global("Kiotsi_Dead","GLOBAL",1)
Global("ValygarMatch","GLOBAL",1)
OR(2)
Global("ValygarRomanceActive","GLOBAL",1)
Global("ValygarRomanceActive","GLOBAL",2)~ THEN BEGIN TS128
  SAY ~Your eyes stop on Valygar. "It is a rare sight," you think suddenly, since the ranger spends the most of his  time scouting ahead of the party or guarding the flanks or watching the rear... or one of those endless things rangers do and which all by some reason or another require them to disappear from view. May be you should seize this opportunity to interact with him?~
  IF ~~ THEN REPLY ~You try to sneak up on Valygar from behind and cover his eyes with your palms...~ GOTO TS129
  IF ~~ THEN REPLY ~"Valygar, how are you faring?"~ GOTO TS130
  IF ~~ THEN REPLY ~"Do you not feel lonely sometimes, Valygar?"~ GOTO TS131
  IF ~~ THEN REPLY ~You come up to Valygar quietly and walk beside him in silence.~ GOTO TS132
  IF ~~ THEN REPLY ~You study Valygar’s face while he is preoccupied with his task.~ GOTO TS133
  IF ~~ THEN REPLY ~You blow Valygar a kiss.~ GOTO TS134
  IF ~~ THEN REPLY ~You throw a pinecone you were saving for the last three days for that particular purpose into him.~ GOTO TS135
  IF ~~ THEN REPLY ~You murmur under your breath: "Gods be good, he is quite a stallion that one".~ GOTO TS136
  IF ~~ THEN REPLY ~You do nothing.~ GOTO TS137
END

IF ~~ THEN BEGIN TS127
  SAY ~No, do not waste your words. Perhaps not all magic is evil, <CHARNAME>. But Irenicus is worse than anything Lavok ever was, I am sure of it. I would ask you to stay here in safety and wait until I return with the head of the mad mage... But I know, that I’d have to tie you up to keep you out of this battle. So I will not suggest it. I accept the same courtesy of you. We will fight for your soul, <CHARNAME> side by side. I am ready to die for your cause if need be. Besides, sending yet another wizard to Abyss is a pleasure, not labor for Valygar Corthala. Let us go.~
  IF ~True()~ THEN EXTERN ~PLAYER1~ 53
  IF ~InParty("Anomen")
!Dead("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 52
  IF ~InParty("Aerie")
!Dead("Aerie")
Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 51
  IF ~InParty("Viconia")
!Dead("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 50
  IF ~InParty("Jaheira")
!Dead("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 49
  IF ~InParty("Anomen")
!Dead("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 48
  IF ~InParty("Aerie")
!Dead("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 47
  IF ~InParty("Viconia")
!Dead("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 46
  IF ~InParty("Jaheira")
!Dead("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 45
  IF ~InParty("Cernd")
!Dead("Cernd")~ THEN EXTERN ~PLAYER1~ 44
  IF ~InParty("Nalia")
!Dead("Nalia")~ THEN EXTERN ~PLAYER1~ 43
  IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~PLAYER1~ 42
  IF ~InParty("Keldorn")
!Dead("Keldorn")~ THEN EXTERN ~PLAYER1~ 41
  IF ~InParty("HaerDalis")
!Dead("HaerDalis")~ THEN EXTERN ~PLAYER1~ 40
  IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~PLAYER1~ 39
  IF ~InParty("Jan")
!Dead("Jan")~ THEN EXTERN ~PLAYER1~ 38
  IF ~InParty("Mazzy")
!Dead("Mazzy")~ THEN EXTERN ~PLAYER1~ 37
END

IF ~~ THEN BEGIN TS129
  SAY ~You follow Valygar as stealthily as you can, and as you finally gain on him and raise your arms... Valygar whirls around suddenly, catches you by your waist and lifts you high into the air, laughing: "Nice try, <CHARNAME>!"~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TS130
  SAY ~Quite well, thank you, <CHARNAME>.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TS131
  SAY ~I do. Care to keep me company for a while?~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TS132
  SAY ~Slowly Valygar gets a hold of your hand. You both stop suddenly and he looks onto your upturned face... Gently his palm squeezes your fingers. "<CHARNAME>..." Valygar says quietly.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TS133
  SAY ~You did not mean for this to happen, but your eyes meet... for a moment he looks at you and something in his gaze makes you blush and your heart race.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TS134
  SAY ~Valygar presses his right palm to his heart and bows, smiling: "You are very kind, My Lady".~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TS135
  SAY ~"I’m going to get you!" Now, of course it is not the most mature thing to do, and it can damage your reputation as a party leader, but you find yourself running away giggling like mad, with Valygar at your heels...~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TS136
  SAY ~Valygar grins. There was no way in the Nine Hells that he could have heard you! Or was there?~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TS137
  SAY ~Valygar disappears into the shadows again... another time perhaps?~
  IF ~~ THEN EXIT
END

IF ~GlobalGT("LoveTalk","LOCALS",22)
GlobalLT("LoveTalk","LOCALS",36)
!Global("ValygarSeesOrb","GLOBAL",1)
!Global("LavokDead","GLOBAL",1)
!Global("Kiotsi_Dead","GLOBAL",1)
Global("ValygarMatch","GLOBAL",1)
OR(2)
Global("ValygarRomanceActive","GLOBAL",1)
Global("ValygarRomanceActive","GLOBAL",2)~ THEN BEGIN TS138
  SAY ~Before you can help it your mind wanders away from the problems of the day and you think about Valygar. You remember him sitting by your feet near a campfire or the way he seems never to loose your sight in battle, ready to rush to your side at any moment. Sometimes you even suspect that he might be in love with you. Though you did not mean to, you say his name out loud. Presently, he turns towards you: "<CHARNAME>?"~
  IF ~~ THEN REPLY ~"I was thinking about you..."~ GOTO TS139
  IF ~~ THEN REPLY ~"Ahem... it was nothing important, really... "~ GOTO TS140
  IF ~~ THEN REPLY ~"Do you have some water left in your water skin? I have run out..."~ GOTO TS141
  IF ~~ THEN REPLY ~You point in whatever direction: "Cowled wizard!"~ GOTO TS142
  IF ~~ THEN REPLY ~You take a hold of Valygar’s hands: "Valygar, you are a fine companion"~ GOTO TS143
  IF ~~ THEN REPLY ~"Hmm... here you are! I lost you for a moment..."~ GOTO TS144
  IF ~~ THEN REPLY ~"Do you like my name?"~ GOTO TS145
  IF ~~ THEN REPLY ~"Valygar, about this Corthala curse thing which makes you to ignore women... I think you are overreacting it."~ GOTO TS146
  IF ~~ THEN REPLY ~You do nothing.~ GOTO TS147
END

IF ~~ THEN BEGIN TS139
  SAY ~"And I was thinking about you, <CHARNAME>. How strange..."~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TS140
  SAY ~Valygar laughs and pats you on the shoulder: "Do you think I am a dragon or something? Common, what can I do for you?"~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TS141
  SAY ~"Of course". When you are finished drinking he leans towards you, and kisses a drop off your cheek: "No need to waste the sweet water, <CHARNAME>". ~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TS142
  SAY ~Catches you hand and kisses your palm: "You are such unskilled liar, <CHARNAME>!"~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TS143
  SAY ~"And you are a fine leader, <CHARNAME>."~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TS144
  SAY ~"No wonder you cannot see well, with all this hair falling into your eyes..." He brushes the loose strands of hair away from your face. "Now, that’s better."~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TS145
  SAY ~"<CHARNAME>? I love..." he hesitates for a moment and then finishes: "your name."~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TS146
  SAY ~Valygar looks at you sadly: "I don’t overreact, <CHARNAME>. I am a danger for any woman mad enough to care about me. And I do not ignore women, though I wish I could sometimes. The more I love someone, the more I wish to protect her... to stay away. You do understand, don’t you?"~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TS147
  SAY ~Valygar mutters under his breath: "Nine Hells, I am starting to imagine things already! Of course she did not call upon you, you old fool!"~
  IF ~~ THEN EXIT
END

IF ~GlobalGT("LoveTalk","LOCALS",36)
GlobalLT("LoveTalk","LOCALS",50)
!Global("ValygarSeesOrb","GLOBAL",1)
!Global("LavokDead","GLOBAL",1)
!Global("Kiotsi_Dead","GLOBAL",1)
Global("ValygarMatch","GLOBAL",1)
OR(2)
Global("ValygarRomanceActive","GLOBAL",1)
Global("ValygarRomanceActive","GLOBAL",2)~ THEN BEGIN TS148
  SAY ~Sometimes people mask their feelings so well or imagine non-existent obstacles... You picked up a daisy another day and you plucked away its petals: "He loves me, he loves me not..." until only one is left.  You wonder if daisies know anything about grim rangers.~
  IF ~~ THEN REPLY ~"Valygar, I have a daisy here and it is her expert opinion that you are in love with me."~ GOTO TS149
  IF ~~ THEN REPLY ~"Do you think that flowers can lie, Valygar?"~ GOTO TS150
  IF ~~ THEN REPLY ~"I am very flattered by your attention lately, Valygar. You have a gentle heart, I was surprised to discover."~ GOTO TS151
  IF ~~ THEN REPLY ~"I was wondering what do you think about me, Valygar? Someone was giving me ideas..."~ GOTO TS152
  IF ~~ THEN REPLY ~You stuff what was left of the daisy into Valygar’s palm.~ GOTO TS153
  IF ~~ THEN REPLY ~You come up to Valygar, and muss his hair: "Here, you looked way too stiff. Don’t you ever let your guard down? Or stop to smell flowers?"~ GOTO TS154
  IF ~~ THEN REPLY ~You show Valygar the daisy with a single petal left on it from a distance and mouth: "He loves me" voicelessly.~ GOTO TS155
  IF ~~ THEN REPLY ~You throw the daisy away.~ GOTO TS156
END

IF ~~ THEN BEGIN TS149
  SAY ~Valygar grumbles: "Expert opinion indeed...", but the shine of his eyes as he looks at you serves to confirm the daisy’s verdict.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TS150
  SAY ~"I do not know, <CHARNAME>..." Valygar looks surprised by your question, but than notices the flower in your hand and smiles at you.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TS151
  SAY ~Valygar takes your hand and sighs:  "I thought you can use a bit of gentleness m’lady. The destiny is too rough on you." ~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TS152
  SAY ~The ranger replies without a moment’s hesitation: "I think that you are wonderful, smart and beautiful..." It sounds almost like a prayer on his lips.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TS153
  SAY ~Valygar looks at the ruined flower in surprise: "<CHARNAME>, you are such a child sometimes!"~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TS154
  SAY ~Valygar shakes his head in astonishment: "That’s what I get for taking the helmet off for a moment? Makes me wonder about what will happen should I remove gauntlets or boots or... I am sorry, <CHARNAME>, this is not fit for the ears of a lady."~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TS155
  SAY ~Valygar looks back at you and you can swear that you can hear his heart pounding.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TS156
  SAY ~Valygar picks the flower up: "<CHARNAME>, you have dropped something... Oh... So does he love you or does he not? He better be good to you!"~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN slayerat
  SAY ~You are shivering, my dear. I will stoke the fire, though I fear your chill is not a fault of the air.~
  IF ~~ THEN REPLY ~No, it isn't. Stand back, Valygar, I don't know if I can protect you from this.~ DO ~SetGlobal("EndangerLovedOne","GLOBAL",6)~ GOTO slayer1
  IF ~~ THEN REPLY ~You endanger yourself being here. Move, for your own good.~ DO ~SetGlobal("EndangerLovedOne","GLOBAL",6)~ GOTO slayer1
  IF ~~ THEN REPLY ~Get away from me, fool. You endanger your worthless life!~ DO ~SetGlobal("EndangerLovedOne","GLOBAL",6)~ GOTO slayer1
END

IF ~~ THEN BEGIN slayer1
  SAY ~Your lips move, but no sound emerges. Are you sure you are well... <CHARNAME>? By the gods, <CHARNAME>!!~
  IF ~~ THEN DO ~ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))~ EXIT
END

IF ~~ THEN BEGIN Kr_WarTk
  SAY ~Ah, I thought my days in the military were done, now I fear I shall also be mobilized.~
  	IF ~True()~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("KRCut04")~ EXIT
  	IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kr_WarTk
  	IF ~InParty("Yoshimo")~ THEN EXTERN ~YOSHJ~ Kr_WarTk
  	IF ~InParty("Jan")~ THEN EXTERN ~JANJ~ Kr_WarTk
  	IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ Kr_WarTk
  	IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ Kr_WarTk
  	IF ~InParty("Mazzy")~ THEN EXTERN ~MAZZYJ~ Kr_WarTk
  	IF ~InParty("HaerDalis")~ THEN EXTERN ~HAERDAJ~ Kr_WarTk
  	IF ~InParty("Korgan")~ THEN EXTERN ~KORGANJ~ Kr_WarTk
  	IF ~InParty("Cernd")~ THEN EXTERN ~CERNDJ~ Kr_WarTk
  	IF ~InParty("Nalia")~ THEN EXTERN ~NALIAJ~ Kr_WarTk
  	IF ~InParty("Aerie")~ THEN EXTERN ~AERIEJ~ Kr_WarTk
END

IF ~~ THEN BEGIN Kelem0
	SAY ~Hm, it would appear that I am dead. Well, the hell with it.~
		IF ~~ THEN REPLY ~Valygar! You died by my hand Valygar! Believe me, I did not mean it... please forgive me.~ GOTO Kelem1
		IF ~~ THEN REPLY ~The hell with it? Then let it be so.~ GOTO Kelem2
END

IF ~~ THEN BEGIN Kelem1
	SAY ~<CHARNAME>? You killed me? Ah, I see... I'm not angry with you. Though I do not approve of foul magic... and look where it has led us to, you could not help yourself. Still, let's forget it and leave this place.~
  	IF ~True()~ THEN EXTERN ~KELEMVOR~ 4A
  	IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kelem0
  	IF ~InParty("Kachiko")~ THEN EXTERN ~KACHIJ~ Kelem0
  	IF ~InParty("Yoshimo")~ THEN EXTERN ~YOSHJ~ Kelem0
  	IF ~InParty("Viconia")~ THEN EXTERN ~VICONIJ~ Kelem0
  	IF ~InParty("Jan")~ THEN EXTERN ~JANJ~ Kelem0
  	IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ Kelem0
  	IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ Kelem0
  	IF ~InParty("Mazzy")~ THEN EXTERN ~MAZZYJ~ Kelem0
  	IF ~InParty("HaerDalis")~ THEN EXTERN ~HAERDAJ~ Kelem0
  	IF ~InParty("Korgan")~ THEN EXTERN ~KORGANJ~ Kelem0
  	IF ~InParty("Cernd")~ THEN EXTERN ~CERNDJ~ Kelem0
  	IF ~InParty("Nalia")~ THEN EXTERN ~NALIAJ~ Kelem0
  	IF ~InParty("Aerie")~ THEN EXTERN ~AERIEJ~ Kelem0
END

IF ~~ THEN BEGIN Kelem2
	SAY ~(Shrugs his shoulders) You killed me, <CHARNAME>. Ah, I see... I'm not angry with you. Though I do not approve of foul magic... and look where it has led us to, you could not help yourself. Still, let's forget it and leave this place.~
  	IF ~True()~ THEN EXTERN ~KELEMVOR~ 14
  	IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kelem0
  	IF ~InParty("Kachiko")~ THEN EXTERN ~KACHIJ~ Kelem0
  	IF ~InParty("Yoshimo")~ THEN EXTERN ~YOSHJ~ Kelem0
  	IF ~InParty("Viconia")~ THEN EXTERN ~VICONIJ~ Kelem0
  	IF ~InParty("Jan")~ THEN EXTERN ~JANJ~ Kelem0
  	IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ Kelem0
  	IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ Kelem0
  	IF ~InParty("Mazzy")~ THEN EXTERN ~MAZZYJ~ Kelem0
  	IF ~InParty("HaerDalis")~ THEN EXTERN ~HAERDAJ~ Kelem0
  	IF ~InParty("Korgan")~ THEN EXTERN ~KORGANJ~ Kelem0
  	IF ~InParty("Cernd")~ THEN EXTERN ~CERNDJ~ Kelem0
  	IF ~InParty("Nalia")~ THEN EXTERN ~NALIAJ~ Kelem0
  	IF ~InParty("Aerie")~ THEN EXTERN ~AERIEJ~ Kelem0
END

IF ~~ THEN BEGIN NEJ157
  SAY ~See the contempt with which this young woman treats this man‘s heart, she throws scorn on his words and gift? I cannot believe a man would have written such as this if this Leina had not encouraged him in some way. Women are so fickle!~
  IF ~True()~ THEN DO ~SetGlobal("VP_NPC_LeinaRoom","GLOBAL",1)~ EXIT
  IF ~InParty("Hrothgar")~ THEN EXTERN ~HROTHJ~ 47
END

IF ~~ THEN BEGIN NEJ158
  SAY ~A ruined academy of magic, now we get to see first hand the havoc mages cause.~
  IF ~True()~ THEN EXTERN ~HROTHJ~ 60
  IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ546
  IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ260
  IF ~InParty("Kachiko")
InParty("Yoshimo")
!Dead("Kachiko")~ THEN EXTERN ~KACHIJ~ NEJ57
  IF ~InParty("Yoshimo")
InParty("Kachiko")
!Dead("Yoshimo")~ THEN EXTERN ~YOSHJ~ NEJ152
  IF ~InParty("Kachiko")
!InParty("Yoshimo")
!Dead("Kachiko")~ THEN EXTERN ~KACHIJ~ NEJ58
  IF ~InParty("Leina")
!Dead("Leina")~ THEN EXTERN ~LEINAJ~ 35
  IF ~InParty("Melora")
!Dead("Melora")~ THEN EXTERN ~MELORAJ~ 7
  IF ~InParty("Dar")
!Dead("Dar")~ THEN EXTERN ~DARJ~ 12
END

IF ~~ THEN BEGIN NEJ159
  SAY ~Yea Gods, <CHARNAME>!! You are seriously thinking of dragging me to a place swarming with wizards?! I shudder at the mere thought of such a place.~
  IF ~~ THEN GOTO NEJ160
END 
  
IF ~~ THEN BEGIN NEJ160
  SAY ~If any of those wizards as much as looks at me and makes any hand gestures in my direction, I swear by all that I hold dear, I will not be responsible for my actions!~
  IF ~True()~ THEN EXTERN ~TILORN~ 19
  IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ261
  IF ~InParty("Kachiko")
InParty("Yoshimo")
!Dead("Kachiko")~ THEN EXTERN ~KACHIJ~ NEJ59
  IF ~InParty("Yoshimo")
InParty("Kachiko")
!Dead("Yoshimo")~ THEN EXTERN ~YOSHJ~ NEJ153
  IF ~InParty("Leina")
!Dead("Leina")~ THEN EXTERN ~LEINAJ~ 36
  IF ~InParty("Melora")
!Dead("Melora")~ THEN EXTERN ~MELORAJ~ 8
END

IF ~~ THEN BEGIN NEJ161
  SAY ~I can sense the foul taint of magic around this place before we even set foot on its soil. I say it is not too late to turn back before it corrupts us all.~
  IF ~Dead("Hrothgar")~ THEN REPLY ~It is too late Valygar, we can only go forward now until the time Tilorn brings us home.~ GOTO NEJ162
  IF ~Dead("Hrothgar")~ THEN REPLY ~And go where Valygar? Look around you, there is only dessert as far as the eye can see.~ GOTO NEJ162
  IF ~Dead("Hrothgar")~ THEN REPLY ~It was your choice to follow me ranger. I would appreciate it if you please, try and not scowl so at the mages whilst we are here.~ GOTO NEJ162
  IF ~Dead("Hrothgar")~ THEN REPLY ~Please Valygar, try to look and act like you are a mage. Our lives depend on you not acting hastily whilst we are here.~ GOTO NEJ162
  IF ~!Dead("Hrothgar")~ THEN REPLY ~It is too late Valygar, we can only go forward now until the time Tilorn brings us home.~ EXTERN ~HROTHJ~ 264
  IF ~!Dead("Hrothgar")~ THEN REPLY ~And go where Valygar? Look around you, there is only dessert as far as the eye can see.~ EXTERN ~HROTHJ~ 264
  IF ~!Dead("Hrothgar")~ THEN REPLY ~It was your choice to follow me ranger. I would appreciate it if you please, try and not scowl so at the mages whilst we are here.~ EXTERN ~HROTHJ~ 264
  IF ~!Dead("Hrothgar")~ THEN REPLY ~Please Valygar, try to look and act like you are a mage. Our lives depend on you not acting hastily whilst we are here.~ EXTERN ~HROTHJ~ 264
END

IF ~~ THEN BEGIN NEJ162
  SAY ~I fear I may not be able to keep this pretense up for too long. I have little patience or love for wizards and their black arts.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NEJ163
  SAY ~I‘m with Melora. You can never be sure what is going to come out of the mouth of a wizard! Best not to let them so much as open it!~
  IF ~~ THEN REPLY ~Both of you shut up before someone dies, and I‘m not promising that it will be the mages!~ EXTERN ~MELORAJ~ 15
  IF ~~ THEN REPLY ~You both knew what would be expected from you when you agreed to come here. Now if neither of you can cope with it leave before we enter the Academy.~ EXTERN ~MELORAJ~ 15
  IF ~~ THEN REPLY ~I am not going to risk the lives of the rest of the group. If you two cannot see past your phobias for a while do us all a favor and leave now.~ EXTERN ~MELORAJ~ 15
  IF ~~ THEN REPLY ~Melora, Valygar if you wish to remain with the group then at least try and act like mages.~ EXTERN ~MELORAJ~ 15
END

IF ~~ THEN BEGIN NEJ164
  SAY ~Nor do I Melora, nor do I, but I will try to be more prudent whilst we are here <CHARNAME>.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NEJ165
  SAY ~I hope so Hrothgar for I fear I may not be able to keep this pretense up for too long. I have little patience or love for wizards and their black arts.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NEJ166
  SAY ~Poetic justice I say, a mage ending up as spell components.~
	IF ~True()~ THEN EXIT
	IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~KORGANJ~ NEJ224
	IF ~InParty("Jan")
!Dead("Jan")~ THEN EXTERN ~JANJ~ NEJ200
END

IF ~~ THEN BEGIN NEJ167
 SAY ~As long as her tongue speak I say we don’t give her a chance to use it!~
 IF ~True()~ THEN EXTERN ~KHARESSE~ 1
 IF ~InParty("Leina")
!Dead("Leina")~ THEN EXTERN ~LEINAJ~ 125
END

IF ~~ THEN BEGIN tafficuh
  SAY ~Trusting a wizard and their black arts was always going to end badly for you gnome.~
 IF ~True()~ THEN EXTERN ~TAFFICP~ umberhk3 
 IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ tafficuh
 IF ~InParty("Kachiko")
InParty("Yoshimo")
!Dead("Kachiko")~ THEN EXTERN ~KACHIJ~ tafficuh
 IF ~InParty("Yoshimo")
InParty("Kachiko")
!Dead("Yoshimo")~ THEN EXTERN ~YOSHJ~ tafficuh
 IF ~InParty("Leina")
!Dead("Leina")~ THEN EXTERN ~LEINAJ~ tafficuh
 IF ~InParty("Melora")
!Dead("Melora")~ THEN EXTERN ~MELORAJ~ tafficuh
END
END