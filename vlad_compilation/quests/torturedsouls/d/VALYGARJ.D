APPEND VALYGARJ

CHAIN
IF ~Global("SPRITE_IS_DEADKiotsi","GLOBAL",1) Global("Kiotsi_Dead","GLOBAL",1) !Global("LavokDead","GLOBAL",1) !Global("ValygarSeesOrb","GLOBAL",1) Global("VP_OnIsland","GLOBAL",1)~ THEN VALYGARJ TS123
~Something about this place reminds me of my family... Undead mages, twisted honor. I expect my mother to appear every minute dragging my zombied father along... Did I tell you I had to kill them both to stop my mother's madness? Still gives me creeps. Let's be done quickly and be out of here.~
DO ~SetGlobal("Kiotsi_Dead","GLOBAL",2)~
EXIT

/*
CHAIN VALYGARJ TS124
~Yes, there is a pain in life, pain, and loss, and sorrow. But there is also joy and pleasure of growing and learning. You can't have one without the other, and I wouldn't want to sacrifice either. <CHARNAME>, let us finish this needless discussion.~
END
 IF ~Global("YoshimoAndHisBetrayal","GLOBAL",0)~ THEN REPLY ~Yes, I am really tired of this madness too. Let us just finish it. I'm taking Imoen, and we are going. ~ EXTERN PPIRENI1 84
 IF ~Global("YoshimoAndHisBetrayal","GLOBAL",0)~ THEN REPLY ~Yes, I think you are right. Whether or not this is all the fulfillment of a prophecy, or just random chance does change the gravity of our situation, I doubt we would do anything differently, if we even knew one way or another... Let's destroy this monster once and forever. ~ EXTERN PPIRENI1 84
 IF ~Global("YoshimoAndHisBetrayal","GLOBAL",1)~ THEN REPLY ~Yes, I am really tired of this madness too. Let us just finish it. I'm taking Imoen, and we are going. ~ EXTERN PPIRENI2 105
 IF ~Global("YoshimoAndHisBetrayal","GLOBAL",1)~ THEN REPLY ~Yes, I think you are right. Whether or not this is all the fulfillment of a prophecy, or just random chance does change the gravity of our situation, I doubt we would do anything differently, if we even knew one way or another... Let's destroy this monster once and forever. ~ EXTERN PPIRENI2 105
*/

CHAIN VALYGARJ TS126
~Stay away from her, vampire! You and your murderous bastard of a brother had taken too many lives as is. I will not allow you to harm <CHARNAME>...~
EXTERN BODHIAMB TS21

CHAIN
IF ~GlobalGT("LoveTalk","LOCALS",4) GlobalLT("LoveTalk","LOCALS",22) !Global("ValygarSeesOrb","GLOBAL",1) !Global("LavokDead","GLOBAL",1) !Global("Kiotsi_Dead","GLOBAL",1) Global("ValygarMatch","GLOBAL",1) OR(2) Global("ValygarRomanceActive","GLOBAL",1) Global("ValygarRomanceActive","GLOBAL",2)~ THEN BEGIN TS128
~Your eyes stop on Valygar. "It is a rare sight," you think suddenly, since the ranger spends the most of his time scouting ahead of the party or guarding the flanks or watching the rear... or one of those endless things rangers do and which all by some reason or another require them to disappear from view. May be you should seize this opportunity to interact with him?~
END
 ++ ~You try to sneak up on Valygar from behind and cover his eyes with your palms...~ EXTERN VALYGARJ TS129
 ++ ~"Valygar, how are you faring?"~ EXTERN VALYGARJ TS130
 ++ ~"Do you not feel lonely sometimes, Valygar?"~ EXTERN VALYGARJ TS131
 ++ ~You come up to Valygar quietly and walk beside him in silence.~ EXTERN VALYGARJ TS132
 ++ ~You study Valygar's face while he is preoccupied with his task.~ EXTERN VALYGARJ TS133
 ++ ~You blow Valygar a kiss.~ EXTERN VALYGARJ TS134
 ++ ~You throw a pinecone you were saving for the last three days for that particular purpose into him.~ EXTERN VALYGARJ TS135
 ++ ~You murmur under your breath: "Gods be good, he is quite a stallion that one".~ EXTERN VALYGARJ TS136
 ++ ~You do nothing.~ EXTERN VALYGARJ TS137

CHAIN VALYGARJ TS127
~No, do not waste your words. Perhaps not all magic is evil, <CHARNAME>. But Irenicus is worse than anything Lavok ever was, I am sure of it. I would ask you to stay here in safety and wait until I return with the head of the mad mage... But I know, that I'd have to tie you up to keep you out of this battle. So I will not suggest it. I accept the same courtesy of you. We will fight for your soul, <CHARNAME> side by side. I am ready to die for your cause if need be. Besides, sending yet another wizard to Abyss is a pleasure, not labor for Valygar Corthala. Let us go.~
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
 IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN PLAYER1 41
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN PLAYER1 40
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN PLAYER1 39
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN PLAYER1 38
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN PLAYER1 37

CHAIN VALYGARJ TS129
~You follow Valygar as stealthily as you can, and as you finally gain on him and raise your arms... Valygar whirls around suddenly, catches you by your waist and lifts you high into the air, laughing: "Nice try, <CHARNAME>!"~
EXIT

CHAIN VALYGARJ TS130
~Quite well, thank you, <CHARNAME>.~
EXIT

CHAIN VALYGARJ TS131
~I do. Care to keep me company for a while?~
EXIT

CHAIN VALYGARJ TS132
~Slowly Valygar gets a hold of your hand. You both stop suddenly and he looks onto your upturned face... Gently his palm squeezes your fingers. "<CHARNAME>..." Valygar says quietly.~
EXIT

CHAIN VALYGARJ TS133
~You did not mean for this to happen, but your eyes meet... for a moment he looks at you and something in his gaze makes you blush and your heart race.~
EXIT

CHAIN VALYGARJ TS134
~Valygar presses his right palm to his heart and bows, smiling: "You are very kind, My Lady".~
EXIT

CHAIN VALYGARJ TS135
~"I'm going to get you!" Now, of course it is not the most mature thing to do, and it can damage your reputation as a party leader, but you find yourself running away giggling like mad, with Valygar at your heels...~
EXIT

CHAIN VALYGARJ TS136
~Valygar grins. There was no way in the Nine Hells that he could have heard you! Or was there?~
EXIT

CHAIN VALYGARJ TS137
~Valygar disappears into the shadows again... another time perhaps?~
EXIT

CHAIN
IF ~GlobalGT("LoveTalk","LOCALS",22) GlobalLT("LoveTalk","LOCALS",36) !Global("ValygarSeesOrb","GLOBAL",1) !Global("LavokDead","GLOBAL",1) !Global("Kiotsi_Dead","GLOBAL",1) Global("ValygarMatch","GLOBAL",1) OR(2) Global("ValygarRomanceActive","GLOBAL",1) Global("ValygarRomanceActive","GLOBAL",2)~ THEN BEGIN TS138
~Before you can help it your mind wanders away from the problems of the day and you think about Valygar. You remember him sitting by your feet near a campfire or the way he seems never to loose your sight in battle, ready to rush to your side at any moment. Sometimes you even suspect that he might be in love with you. Though you did not mean to, you say his name out loud. Presently, he turns towards you: "<CHARNAME>?"~
END
 ++ ~"I was thinking about you..."~ EXTERN VALYGARJ TS139
 ++ ~"Ahem... it was nothing important, really... "~ EXTERN VALYGARJ TS140
 ++ ~"Do you have some water left in your water skin? I have run out..."~ EXTERN VALYGARJ TS141
 ++ ~You point in whatever direction: "Cowled wizard!"~ EXTERN VALYGARJ TS142
 ++ ~You take a hold of Valygar's hands: "Valygar, you are a fine companion"~ EXTERN VALYGARJ TS143
 ++ ~"Hmm... here you are! I lost you for a moment..."~ EXTERN VALYGARJ TS144
 ++ ~"Do you like my name?"~ EXTERN VALYGARJ TS145
 ++ ~"Valygar, about this Corthala curse thing which makes you to ignore women... I think you are overreacting it."~ EXTERN VALYGARJ TS146
 ++ ~You do nothing.~ EXTERN VALYGARJ TS147

CHAIN VALYGARJ TS139
~"And I was thinking about you, <CHARNAME>. How strange..."~
EXIT

CHAIN VALYGARJ TS140
~Valygar laughs and pats you on the shoulder: "Do you think I am a dragon or something? Common, what can I do for you?"~
EXIT

CHAIN VALYGARJ TS141
~"Of course". When you are finished drinking he leans towards you, and kisses a drop off your cheek: "No need to waste the sweet water, <CHARNAME>".~
EXIT

CHAIN VALYGARJ TS142
~Catches you hand and kisses your palm: "You are such unskilled liar, <CHARNAME>!"~
EXIT

CHAIN VALYGARJ TS143
~"And you are a fine leader, <CHARNAME>."~
EXIT

CHAIN VALYGARJ TS144
~"No wonder you cannot see well, with all this hair falling into your eyes..." He brushes the loose strands of hair away from your face. "Now, that's better."~
EXIT

CHAIN VALYGARJ TS145
~"<CHARNAME>? I love..." he hesitates for a moment and then finishes: "your name."~
EXIT

CHAIN VALYGARJ TS146
~Valygar looks at you sadly: "I don't overreact, <CHARNAME>. I am a danger for any woman mad enough to care about me. And I do not ignore women, though I wish I could sometimes. The more I love someone, the more I wish to protect her... to stay away. You do understand, don't you?"~
EXIT

CHAIN VALYGARJ TS147
~Valygar mutters under his breath: "Nine Hells, I am starting to imagine things already! Of course she did not call upon you, you old fool!"~
EXIT

CHAIN
IF ~GlobalGT("LoveTalk","LOCALS",36) GlobalLT("LoveTalk","LOCALS",50) !Global("ValygarSeesOrb","GLOBAL",1) !Global("LavokDead","GLOBAL",1) !Global("Kiotsi_Dead","GLOBAL",1) Global("ValygarMatch","GLOBAL",1) OR(2) Global("ValygarRomanceActive","GLOBAL",1) Global("ValygarRomanceActive","GLOBAL",2)~ THEN BEGIN TS148
~Sometimes people mask their feelings so well or imagine non-existent obstacles... You picked up a daisy another day and you plucked away its petals: "He loves me, he loves me not..." until only one is left. You wonder if daisies know anything about grim rangers.~
END
 ++ ~"Valygar, I have a daisy here and it is her expert opinion that you are in love with me."~ EXTERN VALYGARJ TS149
 ++ ~"Do you think that flowers can lie, Valygar?"~ EXTERN VALYGARJ TS150
 ++ ~"I am very flattered by your attention lately, Valygar. You have a gentle heart, I was surprised to discover."~ EXTERN VALYGARJ TS151
 ++ ~"I was wondering what do you think about me, Valygar? Someone was giving me ideas..."~ EXTERN VALYGARJ TS152
 ++ ~You stuff what was left of the daisy into Valygar's palm.~ EXTERN VALYGARJ TS153
 ++ ~You come up to Valygar, and muss his hair: "Here, you looked way too stiff. Don't you ever let your guard down? Or stop to smell flowers?"~ EXTERN VALYGARJ TS154
 ++ ~You show Valygar the daisy with a single petal left on it from a distance and mouth: "He loves me" voicelessly.~ EXTERN VALYGARJ TS155
 ++ ~You throw the daisy away.~ EXTERN VALYGARJ TS156

CHAIN VALYGARJ TS149
~Valygar grumbles: "Expert opinion indeed...", but the shine of his eyes as he looks at you serves to confirm the daisy's verdict.~
EXIT

CHAIN VALYGARJ TS150
~"I do not know, <CHARNAME>..." Valygar looks surprised by your question, but than notices the flower in your hand and smiles at you.~
EXIT

CHAIN VALYGARJ TS151
~Valygar takes your hand and sighs: "I thought you can use a bit of gentleness m'lady. The destiny is too rough on you."~
EXIT

CHAIN VALYGARJ TS152
~The ranger replies without a moment's hesitation: "I think that you are wonderful, smart and beautiful..." It sounds almost like a prayer on his lips.~
EXIT

CHAIN VALYGARJ TS153
~Valygar looks at the ruined flower in surprise: "<CHARNAME>, you are such a child sometimes!"~
EXIT

CHAIN VALYGARJ TS154
~Valygar shakes his head in astonishment: "That's what I get for taking the helmet off for a moment? Makes me wonder about what will happen should I remove gauntlets or boots or... I am sorry, <CHARNAME>, this is not fit for the ears of a lady."~
EXIT

CHAIN VALYGARJ TS155
~Valygar looks back at you and you can swear that you can hear his heart pounding.~
EXIT

CHAIN VALYGARJ TS156
~Valygar picks the flower up: "<CHARNAME>, you have dropped something... Oh... So does he love you or does he not? He better be good to you!"~
EXIT

CHAIN VALYGARJ slayerat
~You are shivering, my dear. I will stoke the fire, though I fear your chill is not a fault of the air.~
END
 ++ ~No, it isn't. Stand back, Valygar, I don't know if I can protect you from this.~ DO ~SetGlobal("EndangerLovedOne","GLOBAL",6)~ EXTERN VALYGARJ slayer1
 ++ ~You endanger yourself being here. Move, for your own good.~ DO ~SetGlobal("EndangerLovedOne","GLOBAL",6)~ EXTERN VALYGARJ slayer1
 ++ ~Get away from me, fool. You endanger your worthless life!~ DO ~SetGlobal("EndangerLovedOne","GLOBAL",6)~ EXTERN VALYGARJ slayer1

CHAIN VALYGARJ slayer1
~Your lips move, but no sound emerges. Are you sure you are well... <CHARNAME>? By the gods, <CHARNAME>!!~
DO ~ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))~
EXIT