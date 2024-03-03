BEGIN ~BKACHI~

IF WEIGHT #1 ~Global("LoveTalk","LOCALS",1)~ THEN BEGIN 0
  SAY ~Ouch! Looks like you’ve spent some time for improving your fighting skills...~
  IF ~~ THEN DO ~SetGlobal("LoveTalk","LOCALS",2)~ EXTERN ~BYOSHIM~ TS84
END

IF ~~ THEN BEGIN 1
  SAY ~You should have kept your eyes on the weapons Yoshimo Hashimoto, not on my... me. Then you would have fared better.~ [KACHIL01]
  IF ~~ THEN EXTERN ~BYOSHIM~ TS85
END

IF ~~ THEN BEGIN 2
  SAY ~Killing you was just a chore before, a vow to fulfill; I feel that it can become a pleasurable exploit in the very near future. Let us restart, Dragon tongue.~ [KACHIL11]
  IF ~~ THEN EXTERN ~BYOSHIM~ TS86
END

IF WEIGHT #2 ~Global("LoveTalk","LOCALS",3)~ THEN BEGIN 3
  SAY ~Naoko and you were friends... It is so strange. The brother I adored and thought I knew so well had such a secret!~ [KACHIL02]
  IF ~~ THEN DO ~SetGlobal("LoveTalk","LOCALS",4)~ EXTERN ~BYOSHIM~ TS87
END

IF ~~ THEN BEGIN 4
  SAY ~You should not have hid from me!~
  IF ~~ THEN EXTERN ~BYOSHIM~ TS88
END

IF WEIGHT #3 ~Global("LoveTalk","LOCALS",5)~ THEN BEGIN 5
  SAY ~I have been pondering on something for a while, Yoshimo. Naoko, he died very young, only 16... You were of the same age were you not? It must have been horrible for you... how did you survive all of that?~ [KACHIL03]
  IF ~~ THEN DO ~SetGlobal("LoveTalk","LOCALS",6)~ EXTERN ~BYOSHIM~ TS89
END

IF ~~ THEN BEGIN 6
  SAY ~Yoshimo, I see that the memory still hurts you... You do not have to tell if you do not want to, I understand.~
  IF ~~ THEN EXTERN ~BYOSHIM~ TS90
END

//IF ~~ THEN BEGIN 7
//  SAY ~Oh, Yoshimo...~
//  IF ~~ THEN EXTERN ~BYOSHIM~ TS91
//END

IF ~~ THEN BEGIN 8
  SAY ~No, no. I am not appalled... It’s just that when you have spoken of Naoko I glimpsed the honorable noble you had been...~ [KACHIL13]
  IF ~~ THEN EXTERN ~BYOSHIM~ TS92
END

IF WEIGHT #4 ~Global("LoveTalk","LOCALS",7)~ THEN BEGIN 9
  SAY ~Yoshimo, I would like to continue our last conversation...~
  IF ~~ THEN DO ~SetGlobal("LoveTalk","LOCALS",8)~ EXTERN ~BYOSHIM~ TS93
END

IF ~~ THEN BEGIN 10
  SAY ~The world does not consist of Hashimoto and Nakanishi, Yoshimo. I see now how high the walls of my house were; how small was our existence and how petty was our honor! But I witnessed true honorable deeds in the wide world and I am sure you had also.~ [KACHIL04]
  IF ~~ THEN EXTERN ~BYOSHIM~ TS94
END

IF ~~ THEN BEGIN 11
  SAY ~I saw it in a destitute rogue also...~ [KACHIL14]
  IF ~~ THEN EXTERN ~BYOSHIM~ TS95
END

IF ~~ THEN BEGIN 12
  SAY ~Yoshimo, I MUST know, I do not believe...~
  IF ~~ THEN EXTERN ~BYOSHIM~ TS96
END

IF WEIGHT #5 ~Global("LoveTalk","LOCALS",9)~ THEN BEGIN 13
  SAY ~Yoshimo, if you would...if you would please sit with me for a moment... I am really scared of what you’ve told me before...~
  IF ~~ THEN DO ~SetGlobal("LoveTalk","LOCALS",10)~ EXTERN ~BYOSHIM~ TS97
END

IF ~~ THEN BEGIN 14
  SAY ~Thank you, Yoshimo. I was cold. Do you still keep an eye on me?~ [KACHIL05]
  IF ~~ THEN EXTERN ~BYOSHIM~ TS98
END

IF ~~ THEN BEGIN 15
  SAY ~You... you were joking! All those talks about curses? And I almost believed you, Dragon Tongue!~ [KACHIL15]
  IF ~~ THEN EXTERN ~BYOSHIM~ TS99
END

IF ~~ THEN BEGIN 16
  SAY ~Was the poem written for you? My opinion is all that matters and I LOVE it!~ [KACHIB11]
  IF ~~ THEN EXTERN ~BYOSHIM~ TS102
END

IF ~~ THEN BEGIN 17
  SAY ~Stop it, stop it! You wasted three times more words already and said less than my Yoshimo! And why do I have a feeling that I have heard something similar before?~
  IF ~Global("AnomenMatch","GLOBAL",1)
!Global("AnomenRomanceActive","GLOBAL",0)
!Global("AnomenRomanceActive","GLOBAL",3)~ THEN EXTERN ~BANOMEN~ TS591
  IF ~OR(3)
!Global("AnomenMatch","GLOBAL",1)
Global("AnomenRomanceActive","GLOBAL",0)
Global("AnomenRomanceActive","GLOBAL",3)~ THEN EXIT
END

IF ~~ THEN BEGIN 18
  SAY ~Tie it is, <CHARNAME>.~
  IF ~~ THEN EXTERN ~BANOMEN~ TS593
END

IF ~Global("VP_BKachiko_1","LOCALS",2)~ THEN BEGIN 19
  SAY ~Anomen! Please, leave him to his contemplation! Anomen!~ [KACHIB01]
  IF ~~ THEN DO ~SetGlobal("VP_BKachiko_1","LOCALS",3)~ EXTERN ~BANOMEN~ TS587
END

IF ~Global("VP_BKachiko_2","LOCALS",2)~ THEN BEGIN 20
  SAY ~You look ever so grim, Valygar. What you need is a good woman in your life. Have you ever loved Valygar?~
  IF ~~ THEN DO ~SetGlobal("VP_BKachiko_2","LOCALS",3)~ EXTERN ~BVALYGA~ TS149
END

IF ~~ THEN BEGIN 21
  SAY ~So it was an unhappy experience? Who was she?~
  IF ~~ THEN EXTERN ~BVALYGA~ TS150
END

IF ~~ THEN BEGIN 22
  SAY ~You cannot say that about all women, Valygar! I think the problem is yourself...~
  IF ~~ THEN EXTERN ~BVALYGA~ TS151
END

IF ~~ THEN BEGIN 23
  SAY ~I am sorry to hear that, Valygar. I think there is more to you than your family name and a hunting cabin... I hope you will be pleasantly surprised one day...~
  IF ~~ THEN EXTERN ~BVALYGA~ TS152
END

IF ~Global("VP_BKachiko_3","LOCALS",2)~ THEN BEGIN 24
  SAY ~Minsc, what are you looking for? Be careful with those potion bottles! Do you need a potion of healing or something? Let me help you...~ [KACHIB04]
  IF ~~ THEN DO ~SetGlobal("VP_BKachiko_3","LOCALS",3)~ EXTERN ~BMINSC~ TS99
END

IF ~~ THEN BEGIN 25
  SAY ~Potion of Genius?~ [KACHIB14]
  IF ~~ THEN EXTERN ~BMINSC~ TS100
END

IF ~~ THEN BEGIN 26
  SAY ~Well, it’s sort of true...~
  IF ~~ THEN EXTERN ~BMINSC~ TS101
END

IF ~~ THEN BEGIN 27
  SAY ~Boo is one of a kind... I never knew hamsters could be that intelligent...~
  IF ~~ THEN EXTERN ~BMINSC~ TS102
END

IF ~~ THEN BEGIN 28
  SAY ~(*smiles*) I do not know Minsc... may be you needed a potion of healing?~
  IF ~~ THEN EXIT
END

IF ~Global("VP_BKachiko_4","LOCALS",2)~ THEN BEGIN 29
  SAY ~Nalia, your dress! I cannot take my eyes away from your dress! It’s simply wonderful! I feel like such a tasteless slob near you...~ [KACHIB05]
  IF ~~ THEN DO ~SetGlobal("VP_BKachiko_4","LOCALS",3)~ EXTERN ~BNALIA~ TS51
END

IF ~~ THEN BEGIN 30
  SAY ~Nalia, I see no harm in wearing a beautiful dress...~
  IF ~~ THEN EXTERN ~BNALIA~ TS53
END

IF ~Global("VP_BKachiko_5","LOCALS",2)~ THEN BEGIN 31
  SAY ~Viconia, you are making me uncomfortable, staring at me like that...~ [KACHIB06]
  IF ~~ THEN DO ~SetGlobal("VP_BKachiko_5","LOCALS",3)~ EXTERN ~BVICONI~ TS576
END

IF ~~ THEN BEGIN 32
  SAY ~Subservient? What are you talking about?~
  IF ~~ THEN EXTERN ~BVICONI~ TS577
END

IF ~~ THEN BEGIN 33
  SAY ~You are talking about singsong girls, Viconia? Those are strange beings. They sing in brothels, yet dream of marriage. Some, however, gain true power through their lovers... The famous courtesan, Nita Chan Shi, was a concubine of Emperor Tsao Shou Chin, and she effectively ruled the Empire for 15 years. Those were prosperous and peaceful times.~ [KACHIB16]
  IF ~~ THEN EXTERN ~BVICONI~ TS578
END

IF ~~ THEN BEGIN 34
  SAY ~No, Viconia, I have no use for power. I come from Kozakura, and we are not interested in the games of the Emperors and their courtiers. We have our own traditions. Nakanishi was never one to restrict females of the house. My grandfather trained me, though I am a girl. My mother is the most respected woman in Kozakura and my father values her advice. I do not need a lover to enhance my status.~
  IF ~~ THEN EXTERN ~BVICONI~ TS579
END

IF ~~ THEN BEGIN 35
  SAY ~(*smiles*) I do not doubt it, Viconia.~ [KACHIB26]
  IF ~~ THEN EXIT
END

IF ~Global("VP_BKachiko_6","LOCALS",2)~ THEN BEGIN 36
  SAY ~So how is Haer’Dalis doing today?~ [KACHIB08]
  IF ~~ THEN DO ~SetGlobal("VP_BKachiko_6","LOCALS",3)~ EXTERN ~BHAERDA~ TS165
END

IF ~~ THEN BEGIN 37
  SAY ~(*laughs*) Did you just come up with this one, or is it from a play you were rehearsing?~ [KACHIB18]
  IF ~~ THEN EXTERN ~BHAERDA~ TS166
END

IF ~~ THEN BEGIN 38
  SAY ~I always thought that the purpose of any bard is to share his tale with as many people as possible, Haer’Dalis. I would not dare to steal your performance from the public...~ [KACHIB28]
  IF ~~ THEN EXTERN ~BHAERDA~ TS168
END

IF ~Global("VP_BKachiko_7","LOCALS",2)~ THEN BEGIN 39
  SAY ~Let me help you, Keldorn... Here we go, I fixed that torn seam on your shirt...  It’s as good as new now. That was quite a battle, was it not?~ [KACHIB09]
  IF ~~ THEN DO ~SetGlobal("VP_BKachiko_7","LOCALS",3)~ EXTERN ~BKELDOR~ TS149
END

IF ~~ THEN BEGIN 40
  SAY ~That sounds like a proper thing to do... What delays you?~
  IF ~~ THEN EXTERN ~BKELDOR~ TS150
END

IF ~~ THEN BEGIN 41
  SAY ~I am afraid there will never be less evil in the world, Keldorn. And if Torm minds you taking care of your family, there are other gods, more forgiving...~
  IF ~~ THEN EXTERN ~BKELDOR~ TS151
END

IF ~~ THEN BEGIN 42
  SAY ~In Kara-Tur, we believe that Eight Million Gods populate the Universe. If one frowns on you, another might smile. In his infinite wisdom, the Celestial Emperor has many Immortal helpers and you must talk to the right Immortal to bless your choices. In our land girls will pray in the Immortal Ai Ch’ing temple for rich husbands, then they will burn candles to Kwan Ying.~ [KACHIB19]
  IF ~~ THEN EXTERN ~BKELDOR~ TS152
END

IF ~~ THEN BEGIN 43
  SAY ~So that these good husbands will be handsome as well!~ [KACHIB29]
  IF ~~ THEN EXTERN ~BKELDOR~ TS153
END

IF ~~ THEN BEGIN 44
  SAY ~But at least you smiled!~
  IF ~~ THEN EXIT
END

IF ~Global("VP_BKachiko_8","LOCALS",2)~ THEN BEGIN 45
  SAY ~Aerie, are you crying?~ [KACHIB1A]
  IF ~~ THEN DO ~SetGlobal("VP_BKachiko_8","LOCALS",3)~ EXTERN ~BAERIE~ TS449
END

IF ~~ THEN BEGIN 46
  SAY ~You miss them, do you not? Do not be embarrassed; I can understand your sorrow. I cannot imagine that I would never see my family or my native land again.~ [KACHIB2A]
  IF ~~ THEN EXTERN ~BAERIE~ TS450
END

IF ~~ THEN BEGIN 47
  SAY ~I am afraid I would never know Aerie. But you do and I envy you.~
  IF ~~ THEN EXTERN ~BAERIE~ TS451
END

IF ~~ THEN BEGIN 48
  SAY ~Aerie, I know how much grief there was in your life, but you went through it without loosing your faith in goodness. There is strength in you Aerie, and I respect it. If only you can start respecting yourself and trust in yourself! Please, stop tormenting and victimizing yourself...~
  IF ~~ THEN EXTERN ~BAERIE~ TS452
END

IF ~Global("Start_Island","GLOBAL",0)
Global("VP_BKachiko_9","LOCALS",2)~ THEN BEGIN 49
  SAY ~Jaheira, it’s not necessary to scrutinize me like that. I had done nothing wrong.~ [KACHIB0J]
  IF ~~ THEN DO ~SetGlobal("VP_BKachiko_9","LOCALS",3)~ EXTERN ~BJAHEIR~ TS461
END

IF ~~ THEN BEGIN 50
  SAY ~I believe, that I was wrong about Yoshimo... I am getting to know him better and better every day and I... Has it ever happened to you? When you think badly of a person, then you talk to him and suddenly you realize that he is wonderful?~ [KACHIB1J]
  IF ~~ THEN EXTERN ~BJAHEIR~ TS462
END

IF ~~ THEN BEGIN 51
  SAY ~Blush?  (*laughs*) No, no, Jaheira, why would I blush?~
  IF ~~ THEN EXTERN ~BJAHEIR~ TS463
END

IF ~~ THEN BEGIN 52
  SAY ~Jaheira!~
  IF ~~ THEN EXTERN ~BJAHEIR~ TS464
END

IF ~~ THEN BEGIN 53
  SAY ~Jaheira!~
  IF ~~ THEN EXTERN ~BYOSHIM~ TS106
END

IF ~~ THEN BEGIN 54
  SAY ~Nothing! It’s nothing!~
  IF ~~ THEN EXTERN ~BJAHEIR~ TS465
END

IF ~Global("VP_BKachiko_10","LOCALS",2)~ THEN BEGIN 55
  SAY ~If you only knew how irritating your attitude is...~ [KACHIB0E]
  IF ~~ THEN DO ~SetGlobal("VP_BKachiko_10","LOCALS",3)~ EXTERN ~BEDWIN~ TS106
END

IF ~~ THEN BEGIN 56
  SAY ~Or what?~
  IF ~~ THEN EXTERN ~BEDWIN~ TS107
END

IF ~~ THEN BEGIN 57
  SAY ~Try me Edwin! But I hope that you have another arrangement with the evil priest who resurrected you after your last untimely and violent death!~ [KACHIB1E]
  IF ~InParty("Minsc")~ THEN EXTERN ~BMINSC~ TS103
  IF ~!InParty("Minsc")~ THEN REPLY ~Calm down, all of you! We have enough enemies without starting to fight among ourselves!~ EXIT
  IF ~!InParty("Minsc")~ THEN REPLY ~Edwin, to be honest, you are wearing on my nerves also. I think we’d better part ways.~ EXTERN ~BEDWIN~ TS108
  IF ~!InParty("Minsc")~ THEN REPLY ~Speaking about violent death, Edwin, I killed you once and I shall do so again!~ EXTERN ~BEDWIN~ TS109
END

IF ~Global("VP_BKachiko_11","LOCALS",2)~ THEN BEGIN 58
  SAY ~Imoen, I have not had the chance before, but I must tell you that I am glad we got you out of this terrible Asylum.~ [KACHIB0I]
  IF ~~ THEN DO ~SetGlobal("VP_BKachiko_11","LOCALS",3)~ EXTERN ~BIMOEN2~ 0
END

IF ~~ THEN BEGIN 59
  SAY ~I... know... My relatives invoked a strange state of ’undeath’ on me and I faced many torments before <CHARNAME> and Yoshimo came looking for me... But I am healing now. I wish you would start healing too.~
  IF ~~ THEN EXTERN ~BIMOEN2~ 1
END

IF ~~ THEN BEGIN 60
  SAY ~As you wish.~
  IF ~~ THEN EXIT
END

IF ~Global("VP_BKachiko_12","LOCALS",2)~ THEN BEGIN 61
  SAY ~I cannot help but wonder how this indomitable spirit could have come from such a sleepy place as Trademeet...~ [KACHIB1M]
  IF ~~ THEN DO ~SetGlobal("VP_BKachiko_12","LOCALS",3)~ EXTERN ~BMAZZY~ TS127
END

IF ~~ THEN BEGIN 62
  SAY ~Still, there had to be more than a fascination with a bard’s tale to make a halfing to leave comfort of her home, was there not?~
  IF ~~ THEN EXTERN ~BMAZZY~ TS128
END

IF ~~ THEN BEGIN 63
  SAY ~Hmm, why do I find that feeling vaguely familiar...~
  IF ~~ THEN EXTERN ~BMAZZY~ TS129
END

IF ~~ THEN BEGIN 64
  SAY ~Mazzy, you are truly a wonder! I am proud to name you among my friends. Mayhaps, when we complete our mission for <CHARNAME> we can journey together for a while?~
  IF ~~ THEN EXTERN ~BMAZZY~ TS130
END

IF ~~ THEN BEGIN 65
  SAY ~(*gives Valygar a push with her elbow, then whispers*) Squire? That’s what she calls it? She is head over heels into you, ranger... I’d bet Yoshimo’s katana against...~
  IF ~~ THEN EXTERN ~BVALYGA~ TS155
END

IF ~~ THEN BEGIN 66
  SAY ~(*Kachiko laughs uncontrollably. Valygar gets up and walks away. Mazzy stares at Kachiko in surprise.*)~
  IF ~~ THEN EXIT
END

IF ~Global("VP_BKachiko_13","LOCALS",2)
!Global("End_Island","GLOBAL",0)~ THEN BEGIN 67
  SAY ~Taking notes, Jan?~ [KACHIB15]
  IF ~~ THEN DO ~SetGlobal("VP_BKachiko_13","LOCALS",3)~ EXTERN ~BJAN~ TS116
END

IF ~~ THEN BEGIN 68
  SAY ~Jan, we do not even know were the Island is! How are you going to bring the tourists there?~ [KACHIB25]
  IF ~~ THEN EXTERN ~BJAN~ TS117
END

IF ~~ THEN BEGIN 69
  SAY ~How many Kara-Turian families have you seen in Athkatla?~
  IF ~~ THEN EXTERN ~BJAN~ TS118
END

IF ~~ THEN BEGIN 70
  SAY ~Yes.~
  IF ~~ THEN EXTERN ~BJAN~ TS119
END

IF ~~ THEN BEGIN 71
  SAY ~Yes you did. Sorry, Jan, I absolutely have to talk to <CHARNAME> right away.~
  IF ~~ THEN EXIT
END

IF ~Global("VP_YoshimoExcuse","GLOBAL",6)~ THEN BEGIN 72
  SAY ~Yoshimo, I know it’s painful for you to talk about this but how did Irenicus manage to get his evil hold over you?~ [KACHIL07]
  IF ~~ THEN DO ~SetGlobal("VP_YoshimoExcuse","GLOBAL",7)~ EXTERN ~BYOSHIM~ TS108
END

IF ~~ THEN BEGIN 73
  SAY ~What are you talking about? I asked you how did Irenicus get his evil hold over you?~
  IF ~~ THEN EXTERN ~BYOSHIM~ TS109
END

IF ~~ THEN BEGIN 74
  SAY ~How awful!~
  IF ~~ THEN EXTERN ~BYOSHIM~ TS110
END

IF ~~ THEN BEGIN 75
  SAY ~I do not know, Yoshimo. I love you so much and it hurts me to think that you had been seduced by the promises of evil...~ [KACHIL17]
  IF ~~ THEN EXTERN ~BYOSHIM~ TS111
END

IF ~~ THEN BEGIN 76
  SAY ~Yes, it was. I am a bad singer, but the song came to my mind and I could not chase it away. You know how it happens? The same tune playing in your head over and over again?~
  IF ~~ THEN EXTERN ~BVALYGA~ TS402
END

IF ~~ THEN BEGIN 77
  SAY ~Love, naturally.~
  IF ~~ THEN EXTERN ~BVALYGA~ TS403
END

IF ~~ THEN BEGIN 78
  SAY ~I do not think I am too young to love. And you are definitely not too old. You cannot be more than thirty, Valygar.~
  IF ~~ THEN EXTERN ~BVALYGA~ TS404
END

IF ~~ THEN BEGIN 79
  SAY ~But why?~
  IF ~~ THEN EXTERN ~BVALYGA~ TS405
END

IF ~~ THEN BEGIN 80
  SAY ~I am a mage myself, Valygar. Do not you exaggerate a bit? Searching for knowledge is not a bad thing.~
  IF ~~ THEN EXTERN ~BVALYGA~ TS406
END

IF ~~ THEN BEGIN 81
  SAY ~No secrets, ranger. I am in love and I dare to hope that I am loved in return. I am happy, Valygar.~
  IF ~~ THEN EXTERN ~BVALYGA~ TS408
END

IF ~~ THEN BEGIN 82
  SAY ~Valygar, I am not sure of what you except me to say. No advice is good to a loving heart. You are a daring man in battle, why do you not try the same approach in the gentler matters?~
  IF ~~ THEN EXTERN ~BVALYGA~ TS409
END

IF ~~ THEN BEGIN 83
  SAY ~Then you know well what you are doing?~
  IF ~~ THEN EXTERN ~BVALYGA~ TS410
END

IF ~~ THEN BEGIN 84
  SAY ~Yes?~
  IF ~~ THEN EXTERN ~BYOSHIM~ TS114
END

IF ~~ THEN BEGIN 85
  SAY ~But I am. May be I shall jump off the cliff?~
  IF ~~ THEN EXTERN ~BYOSHIM~ TS115
END

IF ~~ THEN BEGIN 86
  SAY ~(*laughs*) You are so nice, Yoshimo. May be we shall try it one day.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 87
  SAY ~The world is a small place for those who travel, Sime. I know people for whom their house is an entire world.~
  IF ~~ THEN EXTERN ~BSIME~ 102
END

IF ~~ THEN BEGIN 88
  SAY ~The mind has no boundaries, Sime. A philosopher may never leave his straw mat but his mind will travel the highest mountains and the deepest gorges and see the things clearer than the one who has climbed to the top.~
  IF ~~ THEN EXTERN ~BSIME~ 103
END

IF ~~ THEN BEGIN 89
  SAY ~I have four brothers and a sister.~
  IF ~~ THEN EXTERN ~BSIME~ 105
END

IF ~~ THEN BEGIN 90
  SAY ~It is a joy to have relations, yes. Your father does not have any other children?~
  IF ~~ THEN EXTERN ~BSIME~ 106
END

IF ~~ THEN BEGIN 91
  SAY ~You sound bitter, Sime.~
  IF ~~ THEN EXTERN ~BSIME~ 107
END

IF ~~ THEN BEGIN 92
  SAY ~And you do not believe so?~
  IF ~~ THEN EXTERN ~BSIME~ 108
END

IF ~~ THEN BEGIN 93
  SAY ~Dar, I would just like to say how well you are adapting to your new life in a strange time.~
  IF ~~ THEN EXTERN ~BDAR~ 92
END

IF ~~ THEN BEGIN 94
  SAY ~My life in Kara Tur ill prepared me for what I would find in this part of the world. Of course I expected to experience a cultural difference, but you Dar, you had to except a change in time. Did it not unnerve you a little?~
  IF ~~ THEN EXTERN ~BDAR~ 93
END

IF ~~ THEN BEGIN 95
  SAY ~No Dar, it is not so much your choice of companions but more who you are. You are showing people a side of you that they could never imagine exists. You escaped the cruel death dealt to so many with your heritage at birth. All things that are have a reason to be. Fate intervened at your birth because you have a reason to be, never ever lose sight of that Dar!~
  IF ~~ THEN EXTERN ~BDAR~ 94
END

IF ~~ THEN BEGIN 96
  SAY ~I feel certain that you will hear a lot more such words in your future Dar. It is easy to see that you have a good heart.~
  IF ~~ THEN EXTERN ~BDAR~ 95
END

IF ~~ THEN BEGIN 97
  SAY ~Leina your music is very beautiful, but why do you sing so often of sadness when your voice is so much more suited to the songs of joy and love?~
  IF ~~ THEN EXTERN ~BLEINA~ 6
END

IF ~~ THEN BEGIN 98
  SAY ~Oh Leina! You are too young to have such a hard heart! Do you wish to tell me what has turned your heart to stone?~
  IF ~~ THEN EXTERN ~BLEINA~ 7
END

IF ~~ THEN BEGIN 99
  SAY ~I am sorry Leina, I should not have asked. It is plain to see the scars that you still carry are also in your music, but you should not let the actions of one man deny you the warmth and passion that real love brings. That way only leads to bitterness and a life of loneliness.~
  IF ~~ THEN EXTERN ~BLEINA~ 8
END

IF ~~ THEN BEGIN 100
  SAY ~As you please Leina, but I truly hope that someday you will feel the joy of love once again, with a man that will not abuse all that you have to give.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NEJ0
  SAY ~(*Laughing*) I have to say  Yoshimo, that is the first time I have ever had a dance partner stand still while I danced around him. I thought you were going to surprise me with all that you had learnt.~
	IF ~~ THEN EXTERN ~BYOSHIM~ NEJ8
END

IF ~~ THEN BEGIN NEJ1
  SAY ~(*A gleam comes to her eye*) I too have learnt a lot in your absence Yoshimo.~
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
END

IF ~~ THEN BEGIN NEJ2
  SAY ~Have you learnt to dance at last Yoshimo? I remember watching you and that brother of mine, practising so’s you could impress the girls...  you think I didn’t notice? How I pitied those poor girls toes should they ever have the misfortune to dance with either of you.~
	IF ~~ THEN EXTERN ~BYOSHIM~ NEJ10
END

IF ~~ THEN BEGIN NEJ3
  SAY ~I will dance with you Yoshimo, if only to see what you have learnt, but I will not be dancing bare foot.~
  IF ~Gender(Player1,FEMALE)~ THEN EXTERN ~BLEINA~ PCF2Leina2a
  IF ~Gender(Player1,MALE)~ THEN EXTERN ~BLEINA~ PCM4Leina2b
END

IF ~~ THEN BEGIN LeiSpher1
	SAY ~Yoshimo, just name a large object. You do know one don’t you. A ship Leina.~
	IF ~~ THEN EXTERN ~BLEINA~ Sphere18
END

IF ~~ THEN BEGIN LeiSpher2
	SAY ~Yoshimo, show your manners! Guess something small like a sock, which I will put in your mouth if you can’t answer sensibly!~
	IF ~~ THEN EXTERN ~BLEINA~ Sphere19
END

IF ~~ THEN BEGIN LeiSpher3
	SAY ~Yoshimo, I am not even going to ask how it is you can get a man comfortably into a sack. Umm, this is not as easy as I first thought... could it perhaps be a barrel Leina?~
	IF ~~ THEN EXTERN ~BLEINA~ Sphere20
END

IF ~~ THEN BEGIN LeiTheaA
  SAY ~Shh Yoshimo, I am sure <CHARNAME> is about to tell us... aren’t you, <CHARNAME>?~
 IF ~!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Cernd")
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
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let’s get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Cernd")
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
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn’t said anything yet so let’s do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Cernd")
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
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin’ battle so let’s ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
	IF ~InParty("Taffic")
!Dead("Taffic")~ THEN EXTERN ~BTAFFIC~ LeiTheat
	IF ~InParty("Melora")
!Dead("Melora")~ THEN EXTERN ~BMELORA~ LeiTheat
	IF ~InParty("Dar")
!Dead("Dar")~ THEN EXTERN ~BDAR~ LeiTheat	
	IF ~InParty("Hrothgar")
!Dead("Hrothgar")~ THEN EXTERN ~BHROTH~ LeiTheat
	IF ~InParty("Valygar")
!Dead("Valygar")~ THEN EXTERN ~BVALYGA~ LeiTheat
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
	IF ~InParty("Anomen")
!Dead("Anomen")~ THEN EXTERN ~BANOMEN~ LeiTheat
	IF ~InParty("Aerie")
!Dead("Aerie")~ THEN EXTERN ~BAERIE~ LeiTheat
	IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~BEDWIN~ LeiTheat
	IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~BMINSC~ LeiTheat
END

IF ~~ THEN BEGIN LeiTheaB
  SAY ~(*Smiling secretly*) An idea, now I wonder, who is going to fall foul of this idea of yours, <CHARNAME>?~
 IF ~!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Cernd")
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
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let’s get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Cernd")
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
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn’t said anything yet so let’s do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Cernd")
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
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin’ battle so let’s ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
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
	IF ~InParty("Anomen")
!Dead("Anomen")~ THEN EXTERN ~BANOMEN~ LeiTheat
	IF ~InParty("Aerie")
!Dead("Aerie")~ THEN EXTERN ~BAERIE~ LeiTheat
	IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~BEDWIN~ LeiTheat
	IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~BMINSC~ LeiTheat
END

IF ~~ THEN BEGIN LeiTheaC
  SAY ~You have no need to understand Yoshimo, as I am sure <CHARNAME> is about to explain. Aren’t you, <CHARNAME>?~
 IF ~!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Cernd")
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
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let’s get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Cernd")
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
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn’t said anything yet so let’s do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Cernd")
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
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin’ battle so let’s ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
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
	IF ~InParty("Anomen")
!Dead("Anomen")~ THEN EXTERN ~BANOMEN~ LeiTheat
	IF ~InParty("Aerie")
!Dead("Aerie")~ THEN EXTERN ~BAERIE~ LeiTheat
	IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~BEDWIN~ LeiTheat
	IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~BMINSC~ LeiTheat
END

IF ~~ THEN BEGIN LeiThea3
  SAY ~(*Smiling secretly*) I suspect a certain young lady is about to discover what this idea of yours is. Am I not right, <CHARNAME>?~
 IF ~!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Cernd")
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
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let’s get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Cernd")
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
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn’t said anything yet so let’s do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Cernd")
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
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin’ battle so let’s ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
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
	IF ~InParty("Anomen")
!Dead("Anomen")~ THEN EXTERN ~BANOMEN~ LeiThea3
	IF ~InParty("Aerie")
!Dead("Aerie")~ THEN EXTERN ~BAERIE~ LeiThea3
	IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~BEDWIN~ LeiThea3
	IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~BMINSC~ LeiThea3
END

IF ~~ THEN BEGIN LeiTheaD
  SAY ~I stand with Yoshimo on this! We will both watch that Leina is not upset by your plan, <CHARNAME>!~
 IF ~!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Cernd")
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
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let’s get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Cernd")
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
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn’t said anything yet so let’s do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Cernd")
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
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin’ battle so let’s ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
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
	IF ~InParty("Anomen")
!Dead("Anomen")~ THEN EXTERN ~BANOMEN~ LeiThea4
	IF ~InParty("Aerie")
!Dead("Aerie")~ THEN EXTERN ~BAERIE~ LeiThea4
	IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~BEDWIN~ LeiThea4
	IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~BMINSC~ LeiThea4
END

IF ~~ THEN BEGIN LeiThea4
  SAY ~(*Sternly*) I have the greatest respect for Leina, I will be watching that you do not upset her, <CHARNAME>, in any way!~
 IF ~!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Cernd")
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
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let’s get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Cernd")
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
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn’t said anything yet so let’s do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Cernd")
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
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin’ battle so let’s ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
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
	IF ~InParty("Anomen")
!Dead("Anomen")~ THEN EXTERN ~BANOMEN~ LeiThea4
	IF ~InParty("Aerie")
!Dead("Aerie")~ THEN EXTERN ~BAERIE~ LeiThea4
	IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~BEDWIN~ LeiThea4
	IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~BMINSC~ LeiThea4
END

IF ~~ THEN BEGIN LeiThea1
  SAY ~So the people of this land are not so far from my own. My brother would have liked you, <CHARNAME>.~
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
	IF ~InParty("Anomen")
!Dead("Anomen")~ THEN EXTERN ~BANOMEN~ LeiThea1
	IF ~InParty("Aerie")
!Dead("Aerie")~ THEN EXTERN ~BAERIE~ LeiThea1
	IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~BEDWIN~ LeiThea1
	IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~BMINSC~ LeiThea1
END