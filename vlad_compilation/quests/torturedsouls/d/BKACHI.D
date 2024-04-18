BEGIN VPKACB

CHAIN
IF WEIGHT #1 ~Global("LoveTalk","LOCALS",1)~ THEN VPKACB 0
~Ouch! Looks like you�ve spent some time for improving your fighting skills...~
DO ~SetGlobal("LoveTalk","LOCALS",2)~
EXTERN BYOSHIM TS84

CHAIN VPKACB 1
~You should have kept your eyes on the weapons Yoshimo Hashimoto, not on my... me. Then you would have fared better.~ [KACHIL01]
EXTERN BYOSHIM TS85

CHAIN VPKACB 2
~Killing you was just a chore before, a vow to fulfill; I feel that it can become a pleasurable exploit in the very near future. Let us restart, Dragon tongue.~ [KACHIL11]
EXTERN BYOSHIM TS86

CHAIN
IF WEIGHT #2 ~Global("LoveTalk","LOCALS",3)~ THEN VPKACB 3
~Naoko and you were friends... It is so strange. The brother I adored and thought I knew so well had such a secret!~ [KACHIL02]
DO ~SetGlobal("LoveTalk","LOCALS",4)~
EXTERN BYOSHIM TS87

CHAIN VPKACB 4
~You should not have hid from me!~
EXTERN BYOSHIM TS88

CHAIN
IF WEIGHT #3 ~Global("LoveTalk","LOCALS",5)~ THEN VPKACB 5
~I have been pondering on something for a while, Yoshimo. Naoko, he died very young, only 16... You were of the same age were you not? It must have been horrible for you... how did you survive all of that?~ [KACHIL03]
DO ~SetGlobal("LoveTalk","LOCALS",6)~ EXTERN BYOSHIM TS89

CHAIN VPKACB 6
~Yoshimo, I see that the memory still hurts you... You do not have to tell if you do not want to, I understand.~
EXTERN BYOSHIM TS90

/*
CHAIN VPKACB 7
~Oh, Yoshimo...~
EXTERN BYOSHIM TS91
*/

CHAIN VPKACB 8
~No, no. I am not appalled... It�s just that when you have spoken of Naoko I glimpsed the honorable noble you had been...~ [KACHIL13]
EXTERN BYOSHIM TS92

CHAIN
IF WEIGHT #4 ~Global("LoveTalk","LOCALS",7)~ THEN VPKACB 9
~Yoshimo, I would like to continue our last conversation...~
DO ~SetGlobal("LoveTalk","LOCALS",8)~
EXTERN BYOSHIM TS93

CHAIN VPKACB 10
~The world does not consist of Hashimoto and Nakanishi, Yoshimo. I see now how high the walls of my house were; how small was our existence and how petty was our honor! But I witnessed true honorable deeds in the wide world and I am sure you had also.~ [KACHIL04]
EXTERN BYOSHIM TS94

CHAIN VPKACB 11
~I saw it in a destitute rogue also...~ [KACHIL14]
EXTERN BYOSHIM TS95

CHAIN VPKACB 12
~Yoshimo, I MUST know, I do not believe...~
EXTERN BYOSHIM TS96

CHAIN
IF WEIGHT #5 ~Global("LoveTalk","LOCALS",9)~ THEN VPKACB 13
~Yoshimo, if you would...if you would please sit with me for a moment... I am really scared of what you�ve told me before...~
DO ~SetGlobal("LoveTalk","LOCALS",10)~
EXTERN BYOSHIM TS97

CHAIN VPKACB 14
~Thank you, Yoshimo. I was cold. Do you still keep an eye on me?~ [KACHIL05]
EXTERN BYOSHIM TS98

CHAIN VPKACB 15
~You... you were joking! All those talks about curses? And I almost believed you, Dragon Tongue!~ [KACHIL15]
EXTERN BYOSHIM TS99

CHAIN VPKACB 16
~Was the poem written for you? My opinion is all that matters and I LOVE it!~ [KACHIB11]
EXTERN BYOSHIM TS102

CHAIN VPKACB 17
~Stop it, stop it! You wasted three times more words already and said less than my Yoshimo! And why do I have a feeling that I have heard something similar before?~
END
 IF ~Global("AnomenMatch","GLOBAL",1) !Global("AnomenRomanceActive","GLOBAL",0) !Global("AnomenRomanceActive","GLOBAL",3)~ THEN EXTERN BANOMEN TS591
 IF ~OR(3) !Global("AnomenMatch","GLOBAL",1) Global("AnomenRomanceActive","GLOBAL",0) Global("AnomenRomanceActive","GLOBAL",3)~ THEN EXIT

CHAIN VPKACB 18
~Tie it is, <CHARNAME>.~
EXTERN BANOMEN TS593

CHAIN
IF ~Global("VP_BKachiko_1","LOCALS",2)~ THEN VPKACB 19
~Anomen! Please, leave him to his contemplation! Anomen!~ [KACHIB01]
DO ~SetGlobal("VP_BKachiko_1","LOCALS",3)~
EXTERN BANOMEN TS587

CHAIN
IF ~Global("VP_BKachiko_2","LOCALS",2)~ THEN VPKACB 20
~You look ever so grim, Valygar. What you need is a good woman in your life. Have you ever loved Valygar?~
DO ~SetGlobal("VP_BKachiko_2","LOCALS",3)~ 
EXTERN BVALYGA TS149

CHAIN VPKACB 21
~So it was an unhappy experience? Who was she?~
EXTERN BVALYGA TS150

CHAIN VPKACB 22
~You cannot say that about all women, Valygar! I think the problem is yourself...~
EXTERN BVALYGA TS151

CHAIN VPKACB 23
~I am sorry to hear that, Valygar. I think there is more to you than your family name and a hunting cabin... I hope you will be pleasantly surprised one day...~
EXTERN BVALYGA TS152

CHAIN
IF ~Global("VP_BKachiko_3","LOCALS",2)~ THEN VPKACB 24
~Minsc, what are you looking for? Be careful with those potion bottles! Do you need a potion of healing or something? Let me help you...~ [KACHIB04]
DO ~SetGlobal("VP_BKachiko_3","LOCALS",3)~
EXTERN BMINSC TS99

CHAIN VPKACB 25
~Potion of Genius?~ [KACHIB14]
EXTERN BMINSC TS100

CHAIN VPKACB 26
~Well, it�s sort of true...~
EXTERN BMINSC TS101

CHAIN VPKACB 27
~Boo is one of a kind... I never knew hamsters could be that intelligent...~
EXTERN BMINSC TS102

CHAIN VPKACB 28
~(*smiles*) I do not know Minsc... may be you needed a potion of healing?~
EXIT

CHAIN
IF ~Global("VP_BKachiko_4","LOCALS",2)~ THEN VPKACB 29
~Nalia, your dress! I cannot take my eyes away from your dress! It�s simply wonderful! I feel like such a tasteless slob near you...~ [KACHIB05]
DO ~SetGlobal("VP_BKachiko_4","LOCALS",3)~
EXTERN BNALIA TS51

CHAIN VPKACB 30
~Nalia, I see no harm in wearing a beautiful dress...~
EXTERN BNALIA TS53

CHAIN
IF ~Global("VP_BKachiko_5","LOCALS",2)~ THEN VPKACB 31
~Viconia, you are making me uncomfortable, staring at me like that...~ [KACHIB06]
DO ~SetGlobal("VP_BKachiko_5","LOCALS",3)~
EXTERN BVICONI TS576

CHAIN VPKACB 32
~Subservient? What are you talking about?~
EXTERN BVICONI TS577

CHAIN VPKACB 33
~You are talking about singsong girls, Viconia? Those are strange beings. They sing in brothels, yet dream of marriage. Some, however, gain true power through their lovers... The famous courtesan, Nita Chan Shi, was a concubine of Emperor Tsao Shou Chin, and she effectively ruled the Empire for 15 years. Those were prosperous and peaceful times.~ [KACHIB16]
EXTERN BVICONI TS578

CHAIN VPKACB 34
~No, Viconia, I have no use for power. I come from Kozakura, and we are not interested in the games of the Emperors and their courtiers. We have our own traditions. Nakanishi was never one to restrict females of the house. My grandfather trained me, though I am a girl. My mother is the most respected woman in Kozakura and my father values her advice. I do not need a lover to enhance my status.~
EXTERN BVICONI TS579

CHAIN VPKACB 35
~(*smiles*) I do not doubt it, Viconia.~ [KACHIB26]
EXIT

CHAIN
IF ~Global("VP_BKachiko_6","LOCALS",2)~ THEN VPKACB 36
~So how is Haer�Dalis doing today?~ [KACHIB08]
DO ~SetGlobal("VP_BKachiko_6","LOCALS",3)~
EXTERN BHAERDA TS165

CHAIN VPKACB 37
~(*laughs*) Did you just come up with this one, or is it from a play you were rehearsing?~ [KACHIB18]
EXTERN BHAERDA TS166

CHAIN VPKACB 38
~I always thought that the purpose of any bard is to share his tale with as many people as possible, Haer�Dalis. I would not dare to steal your performance from the public...~ [KACHIB28]
EXTERN BHAERDA TS168

CHAIN
IF ~Global("VP_BKachiko_7","LOCALS",2)~ THEN VPKACB 39
~Let me help you, Keldorn... Here we go, I fixed that torn seam on your shirt... It�s as good as new now. That was quite a battle, was it not?~ [KACHIB09]
DO ~SetGlobal("VP_BKachiko_7","LOCALS",3)~
EXTERN BKELDOR TS149

CHAIN VPKACB 40
~That sounds like a proper thing to do... What delays you?~
EXTERN BKELDOR TS150

CHAIN VPKACB 41
~I am afraid there will never be less evil in the world, Keldorn. And if Torm minds you taking care of your family, there are other gods, more forgiving...~
EXTERN BKELDOR TS151

CHAIN VPKACB 42
~In Kara-Tur, we believe that Eight Million Gods populate the Universe. If one frowns on you, another might smile. In his infinite wisdom, the Celestial Emperor has many Immortal helpers and you must talk to the right Immortal to bless your choices. In our land girls will pray in the Immortal Ai Ch�ing temple for rich husbands, then they will burn candles to Kwan Ying.~ [KACHIB19]
EXTERN BKELDOR TS152

CHAIN VPKACB 43
~So that these good husbands will be handsome as well!~ [KACHIB29]
EXTERN BKELDOR TS153

CHAIN VPKACB 44
~But at least you smiled!~
EXIT

CHAIN
IF ~Global("VP_BKachiko_8","LOCALS",2)~ THEN VPKACB 45
~Aerie, are you crying?~ [KACHIB1A]
DO ~SetGlobal("VP_BKachiko_8","LOCALS",3)~
EXTERN BAERIE TS449

CHAIN VPKACB 46
~You miss them, do you not? Do not be embarrassed; I can understand your sorrow. I cannot imagine that I would never see my family or my native land again.~ [KACHIB2A]
EXTERN BAERIE TS450

CHAIN VPKACB 47
~I am afraid I would never know Aerie. But you do and I envy you.~
EXTERN BAERIE TS451

CHAIN VPKACB 48
~Aerie, I know how much grief there was in your life, but you went through it without loosing your faith in goodness. There is strength in you Aerie, and I respect it. If only you can start respecting yourself and trust in yourself! Please, stop tormenting and victimizing yourself...~
EXTERN BAERIE TS452

CHAIN
IF ~Global("Start_Island","GLOBAL",0) Global("VP_BKachiko_9","LOCALS",2)~ THEN VPKACB 49
~Jaheira, it�s not necessary to scrutinize me like that. I had done nothing wrong.~ [KACHIB0J]
DO ~SetGlobal("VP_BKachiko_9","LOCALS",3)~
EXTERN BJAHEIR TS461

CHAIN VPKACB 50
~I believe, that I was wrong about Yoshimo... I am getting to know him better and better every day and I... Has it ever happened to you? When you think badly of a person, then you talk to him and suddenly you realize that he is wonderful?~ [KACHIB1J]
EXTERN BJAHEIR TS462

CHAIN VPKACB 51
~Blush? (*laughs*) No, no, Jaheira, why would I blush?~
EXTERN BJAHEIR TS463

CHAIN VPKACB 52
~Jaheira!~
EXTERN BJAHEIR TS464

CHAIN VPKACB 53
~Jaheira!~
EXTERN BYOSHIM TS106

CHAIN VPKACB 54
~Nothing! It�s nothing!~
EXTERN BJAHEIR TS465

CHAIN
IF ~Global("VP_BKachiko_10","LOCALS",2)~ THEN VPKACB 55
~If you only knew how irritating your attitude is...~ [KACHIB0E]
DO ~SetGlobal("VP_BKachiko_10","LOCALS",3)~
EXTERN BEDWIN TS106

CHAIN VPKACB 56
~Or what?~
EXTERN BEDWIN TS107

CHAIN VPKACB 57
~Try me Edwin! But I hope that you have another arrangement with the evil priest who resurrected you after your last untimely and violent death!~ [KACHIB1E]
END
 IF ~InParty("Minsc")~ THEN EXTERN BMINSC TS103
 IF ~!InParty("Minsc")~ THEN REPLY ~Calm down, all of you! We have enough enemies without starting to fight among ourselves!~ EXIT
 IF ~!InParty("Minsc")~ THEN REPLY ~Edwin, to be honest, you are wearing on my nerves also. I think we�d better part ways.~ EXTERN BEDWIN TS108
 IF ~!InParty("Minsc")~ THEN REPLY ~Speaking about violent death, Edwin, I killed you once and I shall do so again!~ EXTERN BEDWIN TS109

CHAIN
IF ~Global("VP_BKachiko_11","LOCALS",2)~ THEN VPKACB 58
~Imoen, I have not had the chance before, but I must tell you that I am glad we got you out of this terrible Asylum.~ [KACHIB0I]
DO ~SetGlobal("VP_BKachiko_11","LOCALS",3)~
EXTERN BIMOEN2 0

CHAIN VPKACB 59
~I... know... My relatives invoked a strange state of �undeath� on me and I faced many torments before <CHARNAME> and Yoshimo came looking for me... But I am healing now. I wish you would start healing too.~
EXTERN BIMOEN2 1

CHAIN VPKACB 60
~As you wish.~
EXIT

CHAIN
IF ~Global("VP_BKachiko_12","LOCALS",2)~ THEN VPKACB 61
~I cannot help but wonder how this indomitable spirit could have come from such a sleepy place as Trademeet...~ [KACHIB1M]
DO ~SetGlobal("VP_BKachiko_12","LOCALS",3)~
EXTERN BMAZZY TS127

CHAIN VPKACB 62
~Still, there had to be more than a fascination with a bard�s tale to make a halfing to leave comfort of her home, was there not?~
EXTERN BMAZZY TS128

CHAIN VPKACB 63
~Hmm, why do I find that feeling vaguely familiar...~
EXTERN BMAZZY TS129

CHAIN VPKACB 64
~Mazzy, you are truly a wonder! I am proud to name you among my friends. Mayhaps, when we complete our mission for <CHARNAME> we can journey together for a while?~
EXTERN BMAZZY TS130

CHAIN VPKACB 65
~(*gives Valygar a push with her elbow, then whispers*) Squire? That�s what she calls it? She is head over heels into you, ranger... I�d bet Yoshimo�s katana against...~
EXTERN BVALYGA TS155

CHAIN VPKACB 66
~(*Kachiko laughs uncontrollably. Valygar gets up and walks away. Mazzy stares at Kachiko in surprise.*)~
EXIT

CHAIN
IF ~Global("VP_BKachiko_13","LOCALS",2) !Global("End_Island","GLOBAL",0)~ THEN VPKACB 67
~Taking notes, Jan?~ [KACHIB15]
DO ~SetGlobal("VP_BKachiko_13","LOCALS",3)~
EXTERN BJAN TS116

CHAIN VPKACB 68
~Jan, we do not even know were the Island is! How are you going to bring the tourists there?~ [KACHIB25]
EXTERN BJAN TS117

CHAIN VPKACB 69
~How many Kara-Turian families have you seen in Athkatla?~
EXTERN BJAN TS118

CHAIN VPKACB 70
~Yes.~
EXTERN BJAN TS119

CHAIN VPKACB 71
~Yes you did. Sorry, Jan, I absolutely have to talk to <CHARNAME> right away.~
EXIT

CHAIN
IF ~Global("VP_YoshimoExcuse","GLOBAL",6)~ THEN VPKACB 72
~Yoshimo, I know it�s painful for you to talk about this but how did Irenicus manage to get his evil hold over you?~ [KACHIL07]
DO ~SetGlobal("VP_YoshimoExcuse","GLOBAL",7)~
EXTERN BYOSHIM TS108

CHAIN VPKACB 73
~What are you talking about? I asked you how did Irenicus get his evil hold over you?~
EXTERN BYOSHIM TS109

CHAIN VPKACB 74
~How awful!~
EXTERN BYOSHIM TS110

CHAIN VPKACB 75
~I do not know, Yoshimo. I love you so much and it hurts me to think that you had been seduced by the promises of evil...~ [KACHIL17]
EXTERN BYOSHIM TS111

CHAIN VPKACB 76
~Yes, it was. I am a bad singer, but the song came to my mind and I could not chase it away. You know how it happens? The same tune playing in your head over and over again?~
EXTERN BVALYGA TS402

CHAIN VPKACB 77
~Love, naturally.~
EXTERN BVALYGA TS403

CHAIN VPKACB 78
~I do not think I am too young to love. And you are definitely not too old. You cannot be more than thirty, Valygar.~
EXTERN BVALYGA TS404

CHAIN VPKACB 79
~But why?~
EXTERN BVALYGA TS405

CHAIN VPKACB 80
~I am a mage myself, Valygar. Do not you exaggerate a bit? Searching for knowledge is not a bad thing.~
EXTERN BVALYGA TS406

CHAIN VPKACB 81
~No secrets, ranger. I am in love and I dare to hope that I am loved in return. I am happy, Valygar.~
EXTERN BVALYGA TS408

CHAIN VPKACB 82
~Valygar, I am not sure of what you except me to say. No advice is good to a loving heart. You are a daring man in battle, why do you not try the same approach in the gentler matters?~
EXTERN BVALYGA TS409

CHAIN VPKACB 83
~Then you know well what you are doing?~
EXTERN BVALYGA TS410

CHAIN VPKACB 84
~Yes?~
EXTERN BYOSHIM TS114

CHAIN VPKACB 85
~But I am. May be I shall jump off the cliff?~
EXTERN BYOSHIM TS115

CHAIN VPKACB 86
~(*laughs*) You are so nice, Yoshimo. May be we shall try it one day.~
EXIT

CHAIN VPKACB 87
~The world is a small place for those who travel, Sime. I know people for whom their house is an entire world.~
EXTERN VPSIMB 102

CHAIN VPKACB 88
~The mind has no boundaries, Sime. A philosopher may never leave his straw mat but his mind will travel the highest mountains and the deepest gorges and see the things clearer than the one who has climbed to the top.~
EXTERN VPSIMB 103

CHAIN VPKACB 89
~I have four brothers and a sister.~
EXTERN VPSIMB 105

CHAIN VPKACB 90
~It is a joy to have relations, yes. Your father does not have any other children?~
EXTERN VPSIMB 106

CHAIN VPKACB 91
~You sound bitter, Sime.~
EXTERN VPSIMB 107

CHAIN VPKACB 92
~And you do not believe so?~
EXTERN VPSIMB 108

CHAIN VPKACB 93
~Dar, I would just like to say how well you are adapting to your new life in a strange time.~
EXTERN NJDARB 92

CHAIN VPKACB 94
~My life in Kara Tur ill prepared me for what I would find in this part of the world. Of course I expected to experience a cultural difference, but you Dar, you had to except a change in time. Did it not unnerve you a little?~
EXTERN NJDARB 93

CHAIN VPKACB 95
~No Dar, it is not so much your choice of companions but more who you are. You are showing people a side of you that they could never imagine exists. You escaped the cruel death dealt to so many with your heritage at birth. All things that are have a reason to be. Fate intervened at your birth because you have a reason to be, never ever lose sight of that Dar!~
EXTERN NJDARB 94

CHAIN VPKACB 96
~I feel certain that you will hear a lot more such words in your future Dar. It is easy to see that you have a good heart.~
EXTERN NJDARB 95

CHAIN VPKACB 97
~Leina your music is very beautiful, but why do you sing so often of sadness when your voice is so much more suited to the songs of joy and love?~
EXTERN VPLEIB 6

CHAIN VPKACB 98
~Oh Leina! You are too young to have such a hard heart! Do you wish to tell me what has turned your heart to stone?~
EXTERN VPLEIB 7

CHAIN VPKACB 99
~I am sorry Leina, I should not have asked. It is plain to see the scars that you still carry are also in your music, but you should not let the actions of one man deny you the warmth and passion that real love brings. That way only leads to bitterness and a life of loneliness.~
EXTERN VPLEIB 8

CHAIN VPKACB 100
~As you please Leina, but I truly hope that someday you will feel the joy of love once again, with a man that will not abuse all that you have to give.~
EXIT

CHAIN VPKACB NEJ0
~(*Laughing*) I have to say Yoshimo, that is the first time I have ever had a dance partner stand still while I danced around him. I thought you were going to surprise me with all that you had learnt.~
EXTERN BYOSHIM NEJ8

CHAIN VPKACB NEJ1
~(*A gleam comes to her eye*) I too have learnt a lot in your absence Yoshimo.~
END
 IF ~Gender(Player1,FEMALE) !InParty("njmelora")~ THEN EXTERN VPLEIB PCF2Leina38a
 IF ~Gender(Player1,MALE) !InParty("njmelora")~ THEN DO ~SetGlobal("VP_Danicng_Queen","GLOBAL",2)~ EXIT
 IF ~Gender(Player1,FEMALE) InParty("njmelora") InParty("njtaffic")~ THEN EXTERN NJMELB 53
 IF ~Gender(Player1,MALE) InParty("njmelora") InParty("njtaffic")~ THEN EXTERN NJMELB 56
 IF ~InParty("Jan")~ THEN EXTERN BJAN NEJ0

CHAIN VPKACB NEJ2
~Have you learnt to dance at last Yoshimo? I remember watching you and that brother of mine, practising so�s you could impress the girls... you think I didn�t notice? How I pitied those poor girls toes should they ever have the misfortune to dance with either of you.~
EXTERN BYOSHIM NEJ10

CHAIN VPKACB NEJ3
~I will dance with you Yoshimo, if only to see what you have learnt, but I will not be dancing bare foot.~
END
 IF ~Gender(Player1,FEMALE)~ THEN EXTERN VPLEIB PCF2Leina2a
 IF ~Gender(Player1,MALE)~ THEN EXTERN VPLEIB PCM4Leina2b

CHAIN VPKACB LeiSpher1
~Yoshimo, just name a large object. You do know one don�t you. A ship Leina.~
EXTERN VPLEIB Sphere18

CHAIN VPKACB LeiSpher2
~Yoshimo, show your manners! Guess something small like a sock, which I will put in your mouth if you can�t answer sensibly!~
EXTERN VPLEIB Sphere19

CHAIN VPKACB LeiSpher3
~Yoshimo, I am not even going to ask how it is you can get a man comfortably into a sack. Umm, this is not as easy as I first thought... could it perhaps be a barrel Leina?~
EXTERN VPLEIB Sphere20

CHAIN VPKACB LeiTheaA
~Shh Yoshimo, I am sure <CHARNAME> is about to tell us... aren�t you, <CHARNAME>?~
END
 IF ~!IsValidForPartyDialogue("Minsc") !IsValidForPartyDialogue("Edwin") !IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let�s get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Minsc") !IsValidForPartyDialogue("Edwin") !IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn�t said anything yet so let�s do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Minsc") !IsValidForPartyDialogue("Edwin") !IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin� battle so let�s ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiTheat
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiTheat
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiTheat
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiTheat
 IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN BVALYGA LeiTheat
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiTheat
 IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN BVALYGA LeiTheat
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN BNALIA LeiTheat
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN BMAZZY LeiTheat
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN BKORGAN LeiTheat
 IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN BKELDOR LeiTheat
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN BJAN LeiTheat
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN BJAHEIR LeiTheat
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN BIMOEN2 LeiTheat
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN BHAERDA LeiTheat
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN BCERND LeiTheat
 IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN BANOMEN LeiTheat
 IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN BAERIE LeiTheat
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN BEDWIN LeiTheat
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN BMINSC LeiTheat

CHAIN VPKACB LeiTheaB
~(*Smiling secretly*) An idea, now I wonder, who is going to fall foul of this idea of yours, <CHARNAME>?~
END
 IF ~!IsValidForPartyDialogue("Minsc") !IsValidForPartyDialogue("Edwin") !IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let�s get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Minsc") !IsValidForPartyDialogue("Edwin") !IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn�t said anything yet so let�s do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Minsc") !IsValidForPartyDialogue("Edwin") !IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin� battle so let�s ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiTheat
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiTheat
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiTheat
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiTheat
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiTheat
 IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN BVALYGA LeiTheat
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN BNALIA LeiTheat
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN BMAZZY LeiTheat
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN BKORGAN LeiTheat
 IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN BKELDOR LeiTheat
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN BJAN LeiTheat
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN BJAHEIR LeiTheat
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN BIMOEN2 LeiTheat
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN BHAERDA LeiTheat
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN BCERND LeiTheat
 IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN BANOMEN LeiTheat
 IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN BAERIE LeiTheat
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN BEDWIN LeiTheat
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN BMINSC LeiTheat

CHAIN VPKACB LeiTheaC
~You have no need to understand Yoshimo, as I am sure <CHARNAME> is about to explain. Aren�t you, <CHARNAME>?~
END
 IF ~!IsValidForPartyDialogue("Minsc") !IsValidForPartyDialogue("Edwin") !IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let�s get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Minsc") !IsValidForPartyDialogue("Edwin") !IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn�t said anything yet so let�s do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Minsc") !IsValidForPartyDialogue("Edwin") !IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin� battle so let�s ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiTheat
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiTheat
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiTheat
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiTheat
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiTheat
 IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN BVALYGA LeiTheat
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN BNALIA LeiTheat
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN BMAZZY LeiTheat
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN BKORGAN LeiTheat
 IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN BKELDOR LeiTheat
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN BJAN LeiTheat
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN BJAHEIR LeiTheat
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN BIMOEN2 LeiTheat
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN BHAERDA LeiTheat
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN BCERND LeiTheat
 IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN BANOMEN LeiTheat
 IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN BAERIE LeiTheat
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN BEDWIN LeiTheat
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN BMINSC LeiTheat

CHAIN VPKACB LeiThea3
~(*Smiling secretly*) I suspect a certain young lady is about to discover what this idea of yours is. Am I not right, <CHARNAME>?~
END
 IF ~!IsValidForPartyDialogue("Minsc") !IsValidForPartyDialogue("Edwin") !IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let�s get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Minsc") !IsValidForPartyDialogue("Edwin") !IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn�t said anything yet so let�s do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Minsc") !IsValidForPartyDialogue("Edwin") !IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin� battle so let�s ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiThea3
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiThea3
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiThea3
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiThea3
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiThea3
 IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN BVALYGA LeiThea3
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN BNALIA LeiThea3
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN BMAZZY LeiThea3
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN BKORGAN LeiThea3
 IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN BKELDOR LeiThea3
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN BJAN LeiThea3
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN BJAHEIR LeiThea3
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN BIMOEN2 LeiThea3
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN BHAERDA LeiThea3
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN BCERND LeiThea3
 IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN BANOMEN LeiThea3
 IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN BAERIE LeiThea3
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN BEDWIN LeiThea3
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN BMINSC LeiThea3

CHAIN VPKACB LeiTheaD
~I stand with Yoshimo on this! We will both watch that Leina is not upset by your plan, <CHARNAME>!~
END
 IF ~!IsValidForPartyDialogue("Minsc") !IsValidForPartyDialogue("Edwin") !IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let�s get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Minsc") !IsValidForPartyDialogue("Edwin") !IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn�t said anything yet so let�s do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Minsc") !IsValidForPartyDialogue("Edwin") !IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin� battle so let�s ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiThea4
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiThea4
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiThea4
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiThea4
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiThea4
 IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN BVALYGA LeiThea4
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN BNALIA LeiThea4
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN BMAZZY LeiThea4
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN BKORGAN LeiThea4
 IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN BKELDOR LeiThea4
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN BJAN LeiThea4
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN BJAHEIR LeiThea4
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN BIMOEN2 LeiThea4
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN BHAERDA LeiThea4
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN BCERND LeiThea4
 IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN BANOMEN LeiThea4
 IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN BAERIE LeiThea4
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN BEDWIN LeiThea4
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN BMINSC LeiThea4

CHAIN VPKACB LeiThea4
~(*Sternly*) I have the greatest respect for Leina, I will be watching that you do not upset her, <CHARNAME>, in any way!~
END
 IF ~!IsValidForPartyDialogue("Minsc") !IsValidForPartyDialogue("Edwin") !IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let�s get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Minsc") !IsValidForPartyDialogue("Edwin") !IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn�t said anything yet so let�s do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Minsc") !IsValidForPartyDialogue("Edwin") !IsValidForPartyDialogue("Aerie") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialogue("Cernd") !IsValidForPartyDialogue("HaerDalis") !IsValidForPartyDialogue("Imoen2") !IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Jan") !IsValidForPartyDialogue("Keldorn") !IsValidForPartyDialogue("Korgan") !IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin� battle so let�s ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiThea4
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiThea4
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiThea4
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiThea4
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiThea4
 IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN BVALYGA LeiThea4
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN BNALIA LeiThea4
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN BMAZZY LeiThea4
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN BKORGAN LeiThea4
 IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN BKELDOR LeiThea4
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN BJAN LeiThea4
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN BJAHEIR LeiThea4
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN BIMOEN2 LeiThea4
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN BHAERDA LeiThea4
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN BCERND LeiThea4
 IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN BANOMEN LeiThea4
 IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN BAERIE LeiThea4
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN BEDWIN LeiThea4
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN BMINSC LeiThea4

CHAIN VPKACB LeiThea1
~So the people of this land are not so far from my own. My brother would have liked you, <CHARNAME>.~
END
 IF ~True()~ THEN EXTERN VPLEIB TheaQ151
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiThea1
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiThea1
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiThea1
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiThea1
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiThea1
 IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN BVALYGA LeiThea1
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN BNALIA LeiThea1
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN BMAZZY LeiThea1
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN BKORGAN LeiThea1
 IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN BKELDOR LeiThea1
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN BJAN LeiThea1
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN BJAHEIR LeiThea1
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN BIMOEN2 LeiThea1
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN BHAERDA LeiThea1
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN BCERND LeiThea1
 IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN BANOMEN LeiThea1
 IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN BAERIE LeiThea1
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN BEDWIN LeiThea1
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN BMINSC LeiThea1
