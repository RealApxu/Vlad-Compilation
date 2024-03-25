APPEND ~BKELDOR~

//LT4
IF WEIGHT #-1 ~Global("VP_CK_Banter","LOCALS",1) GlobalGT("VP_LoveTalk","LOCALS",1) GlobalLT("VP_LoveTalk","LOCALS",11)~ THEN BEGIN LT4_st0
  SAY ~My lady, you've been on the road for more than a year now. Do you miss Candlekeep perchance? You must have led a quiet and ordained life there.~
  IF ~~ THEN REPLY ~Yes, I miss it. I'd rather describe my life in Candlekeep as carefree. Gorion took care of everything, and I just had to study. It's a shame that I did not understand it back then.~ DO ~SetGlobal("VP_CK_Banter","LOCALS",2)~ GOTO LT4_st1
  IF ~~ THEN REPLY ~Do I miss it? A bit... Imoen and I would just fall asleep in the library or look for ways to skip our classes.~ DO ~SetGlobal("VP_CK_Banter","LOCALS",2)~ GOTO LT4_st1
  IF ~~ THEN REPLY ~The walls of Candlekeep made me feel completely safe. When everything... changed it proved to be quite a shock.~ DO ~SetGlobal("VP_CK_Banter","LOCALS",2)~ GOTO LT4_st2
END

IF ~~ THEN BEGIN LT4_st1
  SAY ~(With a sad smile) This is common to all children, my lady. They rarely appreciate parental care.~
  IF ~~ THEN REPLY ~Do you have children, sir Keldorn?~ GOTO LT4_st3
  IF ~~ THEN REPLY ~At times Gorion was a terrible bore though.~ GOTO LT4_st4
END

IF ~~ THEN BEGIN LT4_st3
  SAY ~Yes, I do, so I am speaking from experience. What of your friend? Is she anything like you?~
  IF ~~ THEN REPLY ~Oh, no... She is a small quick thief, very pretty and smart too, funny and mischievous.~ GOTO LT4_st5
  IF ~~ THEN REPLY ~She is nothing like me. She has a sharp tongue, asking to be silenced. Back in Candlekeep days, she'd report what each monk had in his pockets. But I miss the brat.~ GOTO LT4_st5
  IF ~~ THEN REPLY ~Heh, Imoen... She's so small and dexterous that she'd squeeze through any hole. Funny too, dyed her hair pink and all... Where would I be, if not for her...~ GOTO LT4_st5
END

IF ~~ THEN BEGIN LT4_st5
  SAY ~(Frowns) A thief...~
  IF ~~ THEN REPLY ~After Gorion's death she turned her quick mind to magic... that's the reason she got herself arrested.~ GOTO LT4_st6
END

IF ~~ THEN BEGIN LT4_st6
  SAY ~Ah, yes, I forgot. The wizards are quite out of control, indeed.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LT4_st4
  SAY ~But he taught you a lot, my lady. What of this Imoen...is she anything like you?~
  IF ~~ THEN REPLY ~Oh, no... She is a small dexterous thief, very pretty and smart too, funny and mischievous.~ GOTO LT4_st5
  IF ~~ THEN REPLY ~She is nothing like me. She has a sharp tongue, asking to be silenced. Back in Candlekeep days, she'd report what each monk had in his pockets. But I miss the brat.~ GOTO LT4_st5
  IF ~~ THEN REPLY ~Heh, Imoen... She's so small and dexterous that she'd squeeze through any hole. Funny too, dyed her hair pink and all... Where would I be, if not for her...~ GOTO LT4_st5
END

IF ~~ THEN BEGIN LT4_st2
  SAY ~Yes, I understand you so well... Do tell me of your friend. Is she anything like you?~
  IF ~~ THEN REPLY ~Oh, no... She is a small quick thief, very pretty and smart too, funny and mischievous.~ GOTO LT4_st5
  IF ~~ THEN REPLY ~She is nothing like me. She has a sharp tongue, asking to be silenced. Back in Candlekeep days, she'd report what each monk had in his pockets. But I miss the brat.~ GOTO LT4_st5
  IF ~~ THEN REPLY ~Heh, Imoen... She's so small and dexterous that she'd squeeze through any hole. Funny too, dyed her hair pink and all... Where would I be, if not for her...~ GOTO LT4_st5
END

//LT6
IF WEIGHT #-2 ~Global("VP_LoveTalk","LOCALS",5)~ THEN BEGIN LT6_st0
  SAY #8702 /* ~Oh, to taste the airs of home... It has been a long time since last I passed this way.~ [KELDOR85] */
  = ~My <PRO_LADYLORD>, have I told you that I live in the Government District?~
  IF ~~ THEN REPLY #9076 /* ~Home? But I thought you maintained your quarters at the Radiant Heart.~ */ DO ~SetGlobal("KeldornEstate","LOCALS",2) SetGlobalTimer("KeldornHome","GLOBAL",TWO_DAYS) SetGlobal("KeldornComplain","LOCALS",1)~ GOTO LT6_st0A
  IF ~~ THEN REPLY #9077 /* ~I didn't know this was where you grew up, Keldorn. Which house was yours?~ */ DO ~SetGlobal("KeldornEstate","LOCALS",2) SetGlobalTimer("KeldornHome","GLOBAL",TWO_DAYS) SetGlobal("KeldornComplain","LOCALS",1)~ GOTO LT6_st0B
  IF ~~ THEN REPLY #9079 /* ~Yes, yes, very moving. Come, we have no time to dawdle over childhood memories.~ */ DO ~SetGlobal("KeldornEstate","LOCALS",2) SetGlobalTimer("KeldornHome","GLOBAL",TWO_DAYS) SetGlobal("KeldornComplain","LOCALS",1)~ GOTO LT6_st0C
END

IF ~~ THEN BEGIN LT6_st0A
  SAY ~My attendance at the Order is... it is oft required, but my servants maintain an estate in this district and it is there that I visit my wife and daughters.~
  = ~I would love to offer you the hospitality of my manor, moreover that I am curious to hear the tales of your doings in Baldur's Gate. Would you like to come? I shall introduce you.~
  IF ~~ THEN REPLY ~But, sir Keldorn, I could tell you the tales in an inn or by the campfire...~ DO ~SetGlobal("VP_LoveTalk","LOCALS",6)~ GOTO LT6_st1
  IF ~~ THEN REPLY ~I'm... not sure, we are hardly acquainted, it's just not appropriate.~ DO ~SetGlobal("VP_LoveTalk","LOCALS",6)~ GOTO LT6_st1
  IF ~~ THEN REPLY ~That would be wonderful, my lord!~ DO ~SetGlobal("VP_LoveTalk","LOCALS",6)~ GOTO LT6_st6
  IF ~~ THEN REPLY ~Would that be appropriate? I doubt that your family would be happy if we barged into your house.~ DO ~SetGlobal("VP_LoveTalk","LOCALS",6)~ GOTO LT6_st2
  IF ~~ THEN REPLY ~You must be missing your family? You could always spend a night at home and meet us at the inn in the morning.~ DO ~SetGlobal("VP_LoveTalk","LOCALS",6)~ GOTO LT6_st3
  IF ~~ THEN REPLY ~No thanks, sir Keldorn. It is not my place to intrude upon your personal life.~ DO ~SetGlobal("VP_LoveTalk","LOCALS",6)~ GOTO LT6_st8
END

IF ~~ THEN BEGIN LT6_st0B
  SAY ~I was born in Esmeltaran, but Athkatla has long been my home. My tasks for the Church too often keep me away, but my estate is in this district, along with my wife and daughters.~
  = ~I would love to offer you the hospitality of my manor, moreover that I am curious to hear the tales of your doings in Baldur's Gate. Would you like to come? I shall introduce you.~
  IF ~~ THEN REPLY ~But, sir Keldorn, I could tell you the tales in an inn or by the campfire...~ DO ~SetGlobal("VP_LoveTalk","LOCALS",6)~ GOTO LT6_st1
  IF ~~ THEN REPLY ~I'm... not sure, we are hardly acquainted, it's just not appropriate.~ DO ~SetGlobal("VP_LoveTalk","LOCALS",6)~ GOTO LT6_st1
  IF ~~ THEN REPLY ~That would be wonderful, my lord!~ DO ~SetGlobal("VP_LoveTalk","LOCALS",6)~ GOTO LT6_st6
  IF ~~ THEN REPLY ~Would that be appropriate? I doubt that your family would be happy if we barged into your house.~ DO ~SetGlobal("VP_LoveTalk","LOCALS",6)~ GOTO LT6_st2
  IF ~~ THEN REPLY ~You must be missing your family? You could always spend a night at home and meet us at the inn in the morning.~ DO ~SetGlobal("VP_LoveTalk","LOCALS",6)~ GOTO LT6_st3
  IF ~~ THEN REPLY ~No thanks, sir Keldorn. It is not my place to intrude upon your personal life.~ DO ~SetGlobal("VP_LoveTalk","LOCALS",6)~ GOTO LT6_st8
END

IF ~~ THEN BEGIN LT6_st0C
  SAY ~Nonsense. I would love to offer you the hospitality of my manor, moreover that I am curious to hear the tales of your doings in Baldur's Gate.~
  = ~My estate is in this district, along with my wife and daughters. I am sure they would love to meet you. Come, and I shall make the necessary introductions.~
  IF ~~ THEN REPLY ~But, sir Keldorn, I could tell you the tales in an inn or by the campfire...~ DO ~SetGlobal("VP_LoveTalk","LOCALS",6)~ GOTO LT6_st1
  IF ~~ THEN REPLY ~I'm... not sure, we are hardly acquainted, it's just not appropriate.~ DO ~SetGlobal("VP_LoveTalk","LOCALS",6)~ GOTO LT6_st1
  IF ~~ THEN REPLY ~That would be wonderful, my lord!~ DO ~SetGlobal("VP_LoveTalk","LOCALS",6)~ GOTO LT6_st6
  IF ~~ THEN REPLY ~Would that be appropriate? I doubt that your family would be happy if we barged into your house.~ DO ~SetGlobal("VP_LoveTalk","LOCALS",6)~ GOTO LT6_st2
  IF ~~ THEN REPLY ~You must be missing your family? You could always spend a night at home and meet us at the inn in the morning.~ DO ~SetGlobal("VP_LoveTalk","LOCALS",6)~ GOTO LT6_st3
  IF ~~ THEN REPLY ~No thanks, sir Keldorn. It is not my place to intrude upon your personal life.~ DO ~SetGlobal("VP_LoveTalk","LOCALS",6)~ GOTO LT6_st8
END

IF ~~ THEN BEGIN LT6_st1
  SAY ~My lady, aren't you getting tired of staying at inns?~
  IF ~~ THEN REPLY ~(With a guilty smile) I am...~ GOTO LT6_st7
  IF ~~ THEN REPLY ~Sir, this is not about my preferences, though...~ GOTO LT6_st7
  IF ~~ THEN REPLY ~I'm not comfortable with your offer anyway.~ GOTO LT6_st7
  IF ~~ THEN REPLY ~You are correct, my lord.~ GOTO LT6_st6
END

IF ~~ THEN BEGIN LT6_st7
  SAY ~<CHARNAME>, why are you looking so abashed? We are comrades at arms after all is said and done. We could use this opportunity to get to know each other. Be at ease, everything will be fine.~
  = ~I shall point it out to you as we pass its gates. As I said, it has been far too long since last I walked these streets.~
  IF ~~ THEN DO ~SetGlobal("VP_Dar_Keldor_Talk","GLOBAL",1)~ UNSOLVED_JOURNAL ~Keldorn wishes to visit his wife and family.

Keldorn has become anxious to visit his estate and family in the Government District of Athkatla.  I get the feeling that if I do not go with him, soon, he will decide to go by himself.~ EXIT
END

IF ~~ THEN BEGIN LT6_st2
  SAY ~Be at ease. My daughters would probably be interested, and my wife, well... she is used to this.~
  IF ~~ THEN REPLY ~I am not sure... If I were in her shoes, I wouldn't like it. You don't visit them too often, do you?~ GOTO LT6_st4
  IF ~~ THEN REPLY ~(With a laugh) Do you always bring home your company?~ GOTO LT6_st5
END

IF ~~ THEN BEGIN LT6_st4
  SAY ~(Smirks) Not every day, no. My assignments keep me away. Come along, my friends? I shall point it out to you as we pass its gates. As I said, it has been far too long since last I walked these streets.~
  IF ~~ THEN DO ~SetGlobal("VP_Dar_Keldor_Talk","GLOBAL",1)~ UNSOLVED_JOURNAL ~Keldorn wishes to visit his wife and family.

Keldorn has become anxious to return to his estate in Athkatla... apparently, he has not seen his family in over a season.  I have agreed to go with him.  His estate can be found in the Government District, and Keldorn will point it out when we pass.~ EXIT
END

IF ~~ THEN BEGIN LT6_st5
  SAY ~Not always, but it happens from time to time. You can verify that should you wish, my lady.~
  IF ~~ THEN DO ~SetGlobal("VP_Dar_Keldor_Talk","GLOBAL",1)~ UNSOLVED_JOURNAL ~Keldorn wishes to visit his wife and family.

Keldorn has become anxious to return to his estate in Athkatla... apparently, he has not seen his family in over a season.  I have agreed to go with him.  His estate can be found in the Government District, and Keldorn will point it out when we pass.~ EXIT
END

IF ~~ THEN BEGIN LT6_st3
  SAY ~No-no. It is no good at all. We belong to the same company and should board together. One never knows what could come to pass. I appreciate your offer, I am deeply touched. But it's better if we all remain together. I will see my family too, I haven't stopped by for quite a while.~
  = ~Please, follow me. I shall point it out to you as we pass its gates. As I said, it has been far too long since last I walked these streets.~
  IF ~~ THEN DO ~SetGlobal("VP_Dar_Keldor_Talk","GLOBAL",1)~ UNSOLVED_JOURNAL ~Keldorn wishes to visit his wife and family.

Keldorn has become anxious to return to his estate in Athkatla... apparently, he has not seen his family in over a season.  I have agreed to go with him.  His estate can be found in the Government District, and Keldorn will point it out when we pass.~ EXIT
END

IF ~~ THEN BEGIN LT6_st6
  SAY ~(Bows) I will be glad to offer you my hospitality. Allow me to show the way. It has been far too long since last I walked these streets.~
  IF ~~ THEN DO ~SetGlobal("VP_Dar_Keldor_Talk","GLOBAL",1)~ UNSOLVED_JOURNAL ~Keldorn wishes to visit his wife and family.

Keldorn has become anxious to return to his estate in Athkatla... apparently, he has not seen his family in over a season.  I have agreed to go with him.  His estate can be found in the Government District, and Keldorn will point it out when we pass.~ EXIT
END

IF ~~ THEN BEGIN LT6_st8
  SAY #9093 /* ~It is hardly an intrusion. They will be pleased to meet you and, as I said, it has been far too long since last I saw them.~ */
  IF ~~ THEN REPLY ~I'm... not sure, we are hardly acquainted, it's just not appropriate.~ GOTO LT6_st1
  IF ~~ THEN REPLY ~Would that be appropriate? I doubt that your family would be happy if we barged into your house.~ GOTO LT6_st2
  IF ~~ THEN REPLY ~You must be missing your family? You could always spend a night at home and meet us at the inn in the morning.~ GOTO LT6_st3
END

//LT10
IF WEIGHT #-3 ~Global("VP_LoveTalk","LOCALS",11)~ THEN BEGIN LT10_st0
  SAY ~I'd like to tell you, <CHARNAME>, that I respect you decision to give me some time off.~ [notforme]
  IF ~~ THEN REPLY ~Hmm, so you tired yourself so much in my service? You can take a breather any time you wish.~ DO ~SetGlobal("VP_LoveTalk","LOCALS",12)~ GOTO LT10_st1
  IF ~~ THEN REPLY ~You allowed me the freedom of choice, if I recall correctly.~ DO ~SetGlobal("VP_LoveTalk","LOCALS",12)~ GOTO LT10_st2
  IF ~~ THEN REPLY ~You don't regret this decision?~ DO ~SetGlobal("VP_LoveTalk","LOCALS",12)~ GOTO LT10_st3
  IF ~~ THEN REPLY ~Did you enjoy time with your family?~ DO ~SetGlobal("VP_LoveTalk","LOCALS",12)~ GOTO LT10_st4
END

IF ~~ THEN BEGIN LT10_st1
  SAY ~Tired? No, I would not say so. I meant something else: after spending my time at home, I saw the wisdom of your decision and became convinced that my place is not there, but here, at your side. I sworn a solemn vow and I am not going to break it and leave you.~
  IF ~~ THEN REPLY ~However, our journey could be very long, and you might not return home for a long time yet, sir Keldorn.~ GOTO LT10_st5
END

IF ~~ THEN BEGIN LT10_st5
  SAY ~This I realise, but once given I am true to my word. <CHARNAME>.~
  IF ~~ THEN DO ~RealSetGlobalTimer("VP_KrRomance_Timer","GLOBAL",3600)~ JOURNAL ~Sir Keldorn has approved my decision to give him a leave. He is now ready to accompany me to the bitter end, and he is not ruffled by the long parting with his family. I get the feeling that he may have even missed me.~ EXIT
END

IF ~~ THEN BEGIN LT10_st2
  SAY ~Yes, and I am glad that I've done that. Yours was a good decision.~
  IF ~~ THEN REPLY ~Really? I was afraid that I may be keeping you away from your family.~ GOTO LT10_st6
  IF ~~ THEN REPLY ~But... what of your family? They need you at home.~ GOTO LT10_st6
  IF ~~ THEN REPLY ~Your wife will be upset with you again.~ GOTO LT10_st6
END

IF ~~ THEN BEGIN LT10_st6
  SAY ~But I am a Paladin of Torm and my duty is to serve good and righteousness and combat evil. So, onward, <CHARNAME>.~
  IF ~~ THEN DO ~RealSetGlobalTimer("VP_KrRomance_Timer","GLOBAL",3600)~ JOURNAL ~Sir Keldorn has approved my decision to give him a leave. He is now ready to accompany me to the bitter end, and he is not ruffled by the long parting with his family. I get the feeling that he may have even missed me.~ EXIT
END

IF ~~ THEN BEGIN LT10_st3
  SAY ~No.~
  IF ~~ THEN REPLY ~Please, take your time to think it over. You can return if you wish.~ GOTO LT10_st6
  IF ~~ THEN REPLY ~Really? I was afraid that I may be keeping you away from your family.~ GOTO LT10_st6
  IF ~~ THEN REPLY ~But... what of your family? They need you at home.~ GOTO LT10_st6
  IF ~~ THEN REPLY ~Your wife will be upset with you again.~ GOTO LT10_st6
END

IF ~~ THEN BEGIN LT10_st4
  SAY ~More than the fair share, to be honest, <CHARNAME>. I started to get bored.~
  IF ~~ THEN DO ~RealSetGlobalTimer("VP_KrRomance_Timer","GLOBAL",3600)~ JOURNAL ~Sir Keldorn has approved my decision to give him a leave. He is now ready to accompany me to the bitter end, and he is not ruffled by the long parting with his family. I get the feeling that he may have even missed me.~ EXIT
END

//LT12
IF WEIGHT #-4 ~Global("VP_LoveTalk","LOCALS",13)~ THEN BEGIN LT12_st0
  SAY ~(Quietly) <CHARNAME>, what else are you planning to do today? Is not it a good time for us to stop for rest?~
  IF ~~ THEN REPLY ~Well, there is still... Sir! Is something wrong?~ DO ~SetGlobal("VP_LoveTalk","LOCALS",14)~ GOTO LT12_st1
  IF ~~ THEN REPLY ~(alarmed) What's the matter? Are you feeling ill?~ DO ~SetGlobal("VP_LoveTalk","LOCALS",14)~ GOTO LT12_st1
  IF ~~ THEN REPLY ~Did you have a bad night? Nightmares?~ DO ~SetGlobal("VP_LoveTalk","LOCALS",14)~ GOTO LT12_st2
  IF ~~ THEN REPLY ~I think that our last meal was quite all right. Perhaps a bit too much. In any case, you should eat less before turning in...~ DO ~SetGlobal("VP_LoveTalk","LOCALS",14)~ GOTO LT12_st3
END

IF ~~ THEN BEGIN LT12_st1
  SAY ~(Tries to speak quietly, so that his words do not carry on to the rest of the party) I don't feel quite right, can't really explain what's wrong. I feel faint, and have troubles breathing, and there is something... some strange pressure in my chest...~
  IF ~~ THEN REPLY ~(Frightened) Yea gods! This isn't something we need just now. Come here, lean on me. Don't worry, I can manage.~ GOTO LT12_st6
  IF ~Class(Player1,CLERIC)~ THEN REPLY ~Sir Keldorn, if you'd let me...~ GOTO LT12_st7
  IF ~~ THEN REPLY ~All right, let's call it quits for today. Are you unwell? Should we stop by a temple, or could our healer help you?~ GOTO LT12_st4
  IF ~~ THEN REPLY ~(Decisively) We are going to a temple right that minute, to solve this issue.~ GOTO LT12_st4
END

IF ~~ THEN BEGIN LT12_st2
  SAY ~(Quiet) I did not sleep at all. I don't feel quite well, if truth be told...~
  IF ~Class(Player1,CLERIC)~ THEN REPLY ~Sir Keldorn, if you'd let me...~ GOTO LT12_st7
  IF ~~ THEN REPLY ~All right, let's call it quits for today. Are you unwell? Should we stop by a temple, or could our healer help you?~ GOTO LT12_st4
  IF ~~ THEN REPLY ~(Decisively) We are going to a temple right that minute, to solve this issue.~ GOTO LT12_st4
  IF ~~ THEN REPLY ~After a sleepless night nobody would feel great. We won't be long now, but there are a couple of things we still must do. Verily, sir Keldorn, it won't take us too much time.~ GOTO LT12_st5
END

IF ~~ THEN BEGIN LT12_st3
  SAY ~(Sharply) <CHARNAME>! I am quite capable of knowing what it is I should do, and how I should do it. I am sorry for bothering you  my lady.~
  IF ~~ THEN DO ~SetGlobal("VP_KrRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN LT12_st4
  SAY ~<CHARNAME>, I wouldn't want the whole world to know of my troubles. This is not an illness, it's something else. I know enough to realize that my health has nothing to do with it.~
  IF ~~ THEN REPLY ~(Frightened) Yea gods! This isn't something we need just now. Come here, lean on me. Don't worry, I can manage.~ GOTO LT12_st6
  IF ~Class(Player1,CLERIC)~ THEN REPLY ~Sir Keldorn, if you'd let me...~ GOTO LT12_st7
  IF ~~ THEN REPLY ~And how did you figure that out? Maybe it's for the best if someone more qualified would take a look at you?~ GOTO LT12_st5
  IF ~~ THEN REPLY ~If you are so sure... What would you have us do now? Go to an inn and stay there till the next morning?~ GOTO LT12_st5
  IF ~~ THEN REPLY ~If this is not a health issue, I don't see why we should go back to an inn.~ GOTO LT12_st5
END

IF ~~ THEN BEGIN LT12_st5
  SAY ~(Impatiently) Don't you have any compassion at all? Quite a cold woman you are, my lady.~
  IF ~~ THEN DO ~SetGlobal("VP_KrRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN LT12_st7
  SAY ~Don't even think of it! (Softer) I apologize... I did not mean to snap at you. I know enough myself to realize that my health has nothing to do with this. Forgive me, please.~
  IF ~~ THEN REPLY ~That's quite alright. I understand that you don't take me seriously. Lean on my shoulder, sir.~ GOTO LT12_st6
  IF ~~ THEN REPLY ~(Sigh) Whatever you say... you should lie down.~ GOTO LT12_st8
  IF ~~ THEN REPLY ~I only wished to help! Why are you so... Okay, let it be that I know nothing, but you still need to lie down.~ GOTO LT12_st8
END

IF ~~ THEN BEGIN LT12_st6
  SAY ~(Leaning on you heavily) I am sorry, my dear... am I not too heavy for you? I don't mean to be making myself such a bother...~
  IF ~~ THEN REPLY ~Don't speak nonsense, sir. You should lie down. I will help you undress. Aren't you feeling better even a little bit?~ GOTO LT12_st9
  IF ~~ THEN REPLY ~Here, here... Let me take off your shirt. Lie down. How are you feeling?~ GOTO LT12_st9
END

IF ~~ THEN BEGIN LT12_st8
  SAY ~(Embarrassedly) <CHARNAME>...~
  IF ~~ THEN REPLY ~Silence, sir, silence! Or, even better tell me how are you feeling? What's bothering you?~ GOTO LT12_st9
END

IF ~~ THEN BEGIN LT12_st9
  SAY ~I beg you, leave out this 'Sir'. We are comrades at arms, and you can call me by my name. Everyone does just that.~
  IF ~~ THEN REPLY ~I don't think it's proper, I don't know what to say. I... I cannot.~ GOTO LT12_st10
END

IF ~~ THEN BEGIN LT12_st10
  SAY ~(With a scorn) <CHARNAME>, I did ask.~
  IF ~~ THEN REPLY ~All right... Keldorn. How are you feeling?~ GOTO LT12_st11
END

IF ~~ THEN BEGIN LT12_st11
  SAY ~It's not a hurt I can name, <CHARNAME>. I am just sick.~
  IF ~~ THEN REPLY ~Keldorn, you are scaring me!~ GOTO LT12_st12
  IF ~~ THEN REPLY ~Keldorn! (Sniff)~ GOTO LT12_st12
  IF ~~ THEN REPLY ~(Sobbing quietly)~ GOTO LT12_st12
END

IF ~~ THEN BEGIN LT12_st12
  SAY ~(With a faint smile) You mourn me before my time it seems. You see... I think I have overestimated myself. I put on a brave face to show that I can survive the collapse of my life, but it seems that... I cannot.~
  IF ~~ THEN REPLY ~You... Do you love her so much?~ GOTO LT12_st13
END

IF ~~ THEN BEGIN LT12_st13
  SAY ~We were engaged a long time ago. Did I love her before our wedding? No, we only met once or twice. Only after we were wed, did I see her beauty. She was well brought up, and gentle with me. So as I grew accustomed to her we fell in love.~
  = ~I can't even say when it all went wrong. Maybe that happened after the duel... Some hooligan ' and a master swordsman, by the way -  he was openly asking for a scandal. I just had to challenge him. He gave me a grave wound, but I prevailed and claimed the victory. Then I was feverish for a long time, and my mother took care of me. I never saw Maria by my sickbed. Perhaps it was then, when something gave way in my heart.~
  IF ~~ THEN REPLY ~(Sobbing quietly)... Keldorn...~ GOTO LT12_st14
END

IF ~~ THEN BEGIN LT12_st14
  SAY ~(Carefully takes a teardrop off your cheek) But I had hoped that everything could be restored so I took the pain. I am an old-fashioned and sentimental man, who wants to have a family, <CHARNAME>. And I... I just don't understand why she suddenly made a scene.~
  IF ~~ THEN REPLY ~Maybe she just wanted a divorce?~ GOTO LT12_st15
END

IF ~~ THEN BEGIN LT12_st15
  SAY ~A divorce? Oh, Torm, that thought never visited my mind... (Somberly) So, I should face a lonely years of decline. Where did I go wrong, <CHARNAME>?~
  IF ~~ THEN REPLY ~You fell in love with the wrong woman, Keldorn. I.. I don't understand your wife, I can't understand how she could not to love you... (Sob and press your wet cheek against his)... I think you are the best.~ GOTO LT12_st16
END

IF ~~ THEN BEGIN LT12_st16
  SAY ~(In a trembling voice) Thank you. You are a sweet girl, <CHARNAME>. Very sweet.~
  IF ~~ THEN DO ~RealSetGlobalTimer("VP_KrRomance_Timer","GLOBAL",5) ClearAllActions() StartCutSceneMode() Wait(4) RestParty() EndCutSceneMode()~ JOURNAL ~I've learned something of sir Keldorn's family life. It sounds as though his wife was not faithful to him for a long time, but he tried to preserve his family and did not pay much attention to this. On one hand, I can understand Maria as I would have loved to see him more often at home, and on another... maybe it is her own fault that he was absent so often?~ EXIT
END

//LT12 - in the morining
IF WEIGHT #-5 ~Global("VP_LoveTalk","LOCALS",15)~ THEN BEGIN LT12_st17
  SAY ~<CHARNAME>! Have you been sitting here for a long time?~
  IF ~~ THEN REPLY ~I was afraid to leave you, you slept poorly.~ DO ~SetGlobal("VP_LoveTalk","LOCALS",16)~ GOTO LT12_st18
  IF ~~ THEN REPLY ~You had nightmares.~ DO ~SetGlobal("VP_LoveTalk","LOCALS",16)~ GOTO LT12_st18
  IF ~~ THEN REPLY ~You screamed all night long.~ DO ~SetGlobal("VP_LoveTalk","LOCALS",16)~ GOTO LT12_st18
END

IF ~~ THEN BEGIN LT12_st18
  SAY ~(Placing an emphasis on every word) You were here all night? Guarding me?~
  IF ~~ THEN REPLY ~Yeah, what's so special about it? How are you feeling?~ GOTO LT12_st19
  IF ~~ THEN REPLY ~Are you feeling better?~ GOTO LT12_st19
  IF ~~ THEN REPLY ~I've just walked in to check in on you. Why did you think... otherwise?~ GOTO LT12_st20
END

IF ~~ THEN BEGIN LT12_st19
  SAY ~I am better, much better. <CHARNAME>... I don't know what to say. Verily, I am touched.~
  IF ~~ THEN REPLY ~(Smile) This is because you're sentimental, as you've said so yourself. Lie still, I will bring you some breakfast.~ GOTO LT12_st21
END

IF ~~ THEN BEGIN LT12_st20
  SAY ~Why are you trying to deceive me? I can see that you have not been sleeping, here, your eyes are red rimmed.~
  IF ~~ THEN REPLY ~Are you feeling better?~ GOTO LT12_st19
END

IF ~~ THEN BEGIN LT12_st21
  SAY ~I can walk down myself.~
  IF ~~ THEN REPLY ~Nay, it's the bed rest for you! You may only get up under the exceptional circumstances.~ GOTO LT12_st22
  IF ~~ THEN REPLY ~Never on your life! Lie down!~ GOTO LT12_st22
END

IF ~~ THEN BEGIN LT12_st22
  SAY ~You are spoiling me, oh, my precious healer.~
  IF ~~ THEN REPLY ~And why not?~ GOTO LT12_st23
  IF ~~ THEN REPLY ~(In a lecturing tone) This is not a joke, it is a medical procedure!~ GOTO LT12_st23
  IF ~~ THEN REPLY ~You can say so, yes.~ GOTO LT12_st23
END

IF ~~ THEN BEGIN LT12_st23
  SAY ~(Laughs) I will enjoy being sick.~
  IF ~~ THEN DO ~SetGlobal("VP_Kr_Messenger","LOCALS",1) SetGlobalTimer("VP_Kr_Mess_Timer","GLOBAL",ONE_DAY) SetGlobal("VP_AnomenJealous","GLOBAL",1)~  EXIT
END

//LT16
IF WEIGHT #-6 ~Global("VP_LoveTalk","LOCALS",17)~ THEN BEGIN LT16_st0
  SAY ~<CHARNAME>, do not feel aggrieved or hold it against me that I keep my silence. I...~
  IF ~~ THEN REPLY ~You think you have to entertain me, Keldorn?~ GOTO LT16_st1
  IF ~~ THEN REPLY ~Why, my friend, you definitely have plenty to think over.~ GOTO LT16_st2
  IF ~~ THEN REPLY ~I do not mind.~ GOTO LT16_st3
END

IF ~~ THEN BEGIN LT16_st1
  SAY ~And do my talks entertain you, <CHARNAME>?~
  IF ~~ THEN REPLY ~No, that is not what I meant! If you don't want to talk, you are welcome to keep your silence.~ GOTO LT16_st3
END

IF ~~ THEN BEGIN LT16_st2
  SAY ~(With a grin) That I do... It's just that my speculations lead me to nothing good.~
  IF ~~ THEN REPLY ~Do you regret that you have gotten yourself involved with me and my friend?~ GOTO LT16_st4
  IF ~~ THEN REPLY ~What are you trying to tell me, Keldorn?~ GOTO LT16_st10
END

IF ~~ THEN BEGIN LT16_st3
  SAY ~I suspect that deep down,  I bore you with all these talks my lady.~
  IF ~~ THEN REPLY ~You've got the right suspicion. I need a warrior, not a distressed knight.~ GOTO LT16_st11
  IF ~~ THEN REPLY ~Not a bit.~ GOTO LT16_st12
  IF ~~ THEN REPLY ~You just think I can not help you... you do not trust me.~ GOTO LT16_st7
END

IF ~~ THEN BEGIN LT16_st4
  SAY ~(Aggrievedly) You should be ashamed of yourself, <CHARNAME>. I'm in pain, and you...~
  IF ~~ THEN REPLY ~...instead of comforting you, only add to your concerns? Please, forgive me.~ GOTO LT16_st5
  IF ~~ THEN REPLY ~Forgive me, my friend, please, forgive me...~ GOTO LT16_st5
END

IF ~~ THEN BEGIN LT16_st5
  SAY ~Oh, no matter... I do not know myself what it is I expect to hear.~
  IF ~~ THEN REPLY ~You are suffering, Keldorn, it's no wonder... you keep everything to yourself.~ GOTO LT16_st6
END

IF ~~ THEN BEGIN LT16_st6
  SAY ~You want me to put my problems onto your delicate shoulders? As if you do not have enough of your own? I set my hand to help you, but I only bring you more troubles...~
  IF ~~ THEN REPLY ~You only think I can not help you, you do not trust me.~ GOTO LT16_st7
  IF ~~ THEN REPLY ~You are afraid to trust me, Keldorn!~ GOTO LT16_st7
END

IF ~~ THEN BEGIN LT16_st7
  SAY ~(Looking straight into your eyes) You want me to trust you? To allow you to see me as I am? The way, say, my mother knows me? There is nothing of interest there, believe me... I am but an old, miserable paladin who has lost his family... all that was ever precious to him. Why do you need all that, <CHARNAME>? (Bitterly) I am but a loser!~
  IF ~~ THEN REPLY ~I told you, Keldorn! I have never met a better person than you, and I... (Stammering)... respect you so much... I will do anything for you!~ GOTO LT16_st8
  IF ~~ THEN REPLY ~You are my closest... friend. I will do anything for you.~ GOTO LT16_st8
END

IF ~~ THEN BEGIN LT16_st8
  SAY ~No-no, "everything" is not a necessity. I will not allow you!~
  IF ~~ THEN REPLY ~All right, I will ask your permission every time then!~ GOTO LT16_st9
  IF ~~ THEN REPLY ~(With a smile) I need to get your permission to sacrifice myself?~ GOTO LT16_st9
END

IF ~~ THEN BEGIN LT16_st9
  SAY ~If I feel up to agreement...~
  IF ~~ THEN DO ~SetGlobal("VP_LoveTalk","LOCALS",18) SetGlobalTimer("VP_Kr_NewWarTimer","GLOBAL",THREE_DAYS)~ JOURNAL ~Keldorn rubs through his solitude painfully. Apparently having a family, presence of people to love, to take care of, meant the world to him despite his restless nature. He is really very sentimental... Nevertheless he is afraid to trust me. Why? Can it be true that my... ancestry is to blame?~ EXIT
END

IF ~~ THEN BEGIN LT16_st10
  SAY ~I'm just complaining... I'm all down.~
  IF ~~ THEN REPLY ~I know you are hurt, but what can say if you do not share with me?~ GOTO LT16_st6
  IF ~~ THEN REPLY ~You just think I can not help you... you do not trust me.~ GOTO LT16_st7
END

IF ~~ THEN BEGIN LT16_st11
  SAY ~Umm... a distressed knight. Is that how my lady sees me? Indeed...~
  IF ~~ THEN DO ~SetGlobal("VP_KrRomanceActive","GLOBAL",3)~ JOURNAL ~Keldorn is distressed, he was seeking sympathy and compassion, but I could not give it. Now everything is finished between us... What a shame.~ EXIT
END

IF ~~ THEN BEGIN LT16_st12
  SAY ~(Dispassionately) Is that so?...~
  IF ~~ THEN REPLY ~Keldorn, if I do not hassle you with questions, that does not mean that I do not care! I just do not think I have a right to worm myself into your confidence.~ GOTO LT16_st13
  IF ~~ THEN REPLY ~You just think I can not help you.... you do not trust me.~ GOTO LT16_st7
END

IF ~~ THEN BEGIN LT16_st13
  SAY ~Worming into my confidence? That is not an easy thing to do despite the fact that I feel so... so down.~
  IF ~~ THEN REPLY ~But why are keeping everything to yourself, Keldorn? Maybe, you try to talk and set things off your chest?~ GOTO LT16_st6
  IF ~~ THEN REPLY ~I know you are hurt, but what I can  say if you do not share with me?~ GOTO LT16_st6
END

IF WEIGHT #-8 ~Global("VP_LoveTalk","LOCALS",22)~ THEN BEGIN LT22_st0
  SAY ~I must apologise my lady, I have not been here for such a long time, and the rooms have become rather shabby.~
  IF ~~ THEN REPLY ~Shabby? You can't mean that! It's so beautiful here!~ GOTO LT22_st1
  IF ~~ THEN REPLY ~It's not exactly the way I imagined a paladin's castle to be.~ GOTO LT22_st2
  IF ~~ THEN REPLY ~You mean your mother has changed everything here to suit her own taste?~ GOTO LT22_st3
END

IF ~~ THEN BEGIN LT22_st1
  SAY ~You like it? It gladdens me to hear you say this. Come my lady, take a seat. I wonder, will the local cuisine be to your taste also?~
  IF ~~ THEN GOTO LT22_stA
END

IF ~~ THEN BEGIN LT22_st2
  SAY ~What did you expect my lady? That the walls of the rooms here would be plastered with weapons, and not a single picture in sight? I thought you knew me a little better than that. Come, take this seat at the table and try some of our local delicacies.~
  IF ~~ THEN GOTO LT22_stA
END

IF ~~ THEN BEGIN LT22_st3
  SAY ~(Surprised) Certainly not! She would never dare to change a single thing without my permission. Now, come sit my lady... what say you to the fruit salad?~
  IF ~~ THEN GOTO LT22_stA
END

IF ~~ THEN BEGIN LT22_stA
  SAY ~<CHARNAME>, I want to talk to you here and now, because I do not know when we will have another chance to do so without fear of interruption or unexpected intrusion.~
  = ~I want to know why you put on that ring, why you went to the world of the dead for me, and why you sacrificed yourself on my behalf? I remember your explanations, but if they satisfied me then, they certainly do not now.~
  = ~I... I... my own reactions were slow I know but tell me, why did you disturb Kelemvor for the sake of an old battered paladin? My life is behind me, over... my wife has betrayed me, my children are dead. I do not have anything left except  my responsibilities towards you. I cannot leave you, I have no right...~
  IF ~~ THEN REPLY ~(Interrupting him) Are you trying to say that I lied to you? You... you... how can you say that? (You burst into tears)~ GOTO LT22_st4
  IF ~~ THEN REPLY ~(Pummelling his breast with your fists) Don't you dare say that, don't you dare! Don't you...~ GOTO LT22_st4
  IF ~~ THEN REPLY ~You are contradicting yourself, Keldorn. On the one hand you are saying that you do not want to live, whilst on the other that you do not have the right to leave me.~ GOTO LT22_st5
  IF ~~ THEN REPLY ~(Shrugging your shoulders) Why should I feel the need to lie to you, Keldorn?~ GOTO LT22_st6
END

IF ~~ THEN BEGIN LT22_st4
  SAY ~(Hugs you awkwardly) Calm down, my lady, calm down. Forgive me. I should not have spoken to you thus. I beg your forgiveness.~
  IF ~~ THEN REPLY ~(Sobbing) Why do you think that I lied?~ GOTO LT22_st6
  IF ~~ THEN REPLY ~(Whispering) How many times do I have to prove to you how much I care for you?~ GOTO LT22_st7
  IF ~~ THEN REPLY ~No, you should not, but what does it matter if you ceased talking this way? You will still think that your life is ebbing away, that nothing good awaits you, that Maria is the only woman that was worthy of you... and that you'll never be able to love another!~ GOTO LT22_st8
  IF ~~ THEN REPLY ~(Bitterly you push his hands away) Leave me be!~ GOTO LT22_st9
END

IF ~~ THEN BEGIN LT22_st5
  SAY ~There is no contradiction in my words. Duty is something that fills one's life with reason!~
  IF ~~ THEN REPLY ~What... what about love, Keldorn?~ GOTO LT22_st10
  IF ~~ THEN REPLY ~What... duty! No, I have heard enough about duty! (You turn and make for the door.)~ GOTO LT22_st11
  IF ~~ THEN REPLY ~(Dismayed) I do not know what to say. I thought you were a human being, suffering, hesitating, capable of derring-do for the people dear to your heart, and yet you behave like a statue of law!~ GOTO LT22_st12
END

IF ~~ THEN BEGIN LT22_st6
  SAY ~Why did you put on the ring of Cyric, <CHARNAME>?~
  IF ~~ THEN REPLY ~Keldorn, you were dying right in front of my eyes! I could not let it happen. I told you once that I will go any length for your sake. Any length, and why... because I love you, because I want us to be together, to fight side by side always!~ GOTO LT22_st13
  IF ~~ THEN REPLY ~(You speak softly but slowly you hear your voice begins to get louder) I had no choice, Keldorn... no one would come to my aid, none of the Gods! I called out to everyone of them in turn, they do not care about you nor about me, none of them do. EVEN YOUR TORM TURNED AWAY!~ GOTO LT22_st14
  IF ~~ THEN REPLY ~(Irritably) I do not understand... why the interrogation? Bah, forget it and leave me be!~ GOTO LT22_st9
END

IF ~~ THEN BEGIN LT22_st7
  SAY ~(As if an echo) Care... my lady... you care for me?~
  IF ~~ THEN REPLY ~(Softly) I love you.~ GOTO LT22_st13
  IF ~~ THEN REPLY ~That surprises you? It never crossed your mind that I might... fall in love with you? (Tenderly) My beloved paladin.~ GOTO LT22_st13
END

IF ~~ THEN BEGIN LT22_st8
  SAY ~(Shaking his head) I simply do not see a future for me, <CHARNAME>.  My life... it is almost finished.~
  IF ~~ THEN REPLY ~No, I won't allow you to bury yourself alive! I love you and like it or not, that is something you are just going to have to accept!~ GOTO LT22_st13
  IF ~~ THEN REPLY ~Then I do not know why we are having this conversation!~ GOTO LT22_st15
END

IF ~~ THEN BEGIN LT22_st9
  SAY ~(He pales) <CHARNAME>, I beg you... tell me, why then did you risk your life for me?~
  IF ~~ THEN REPLY ~For nothing, or so it would seem. Nothing! (You head towards the door)~ GOTO LT22_st11
  IF ~~ THEN REPLY ~(Softly) I don't have the strength to argue with you any more. Remain with your delusions if that is your wish Keldorn.~ GOTO LT22_st15
END

IF ~~ THEN BEGIN LT22_st10
  SAY ~Love... Love is a duty also, but it is a duty that needs to be mutual my lady. If I knew... if I felt that someone loved me, truly loved me, would I have spent my nights and days in the Order's headquarters? I loved Maria, I told you, but my love gradually faded, and with the death of our darling girls, it died completely.~
  IF ~~ THEN REPLY ~(You begin to sob) What about me Keldorn? What about me? I love you.~ GOTO LT22_st13
  IF ~~ THEN REPLY ~I... I see. This is all so pointlesss!~ GOTO LT22_st15
END

IF ~~ THEN BEGIN LT22_st11
  SAY ~(Runs after you and grabs your hand) No please, my lady... don't go! I was being egotistical, please forgive me. You have always treated me with such tenderness and care, and here I am interrogating you like a common criminal. Forgive me, please?~
  IF ~~ THEN REPLY ~(Looking into his eyes) I love you!~ GOTO LT22_st13
  IF ~~ THEN REPLY ~You say this now, but tomorrow will be just the same. No, I am tired of your suspicions. ~ GOTO LT22_st15
END

IF ~~ THEN BEGIN LT22_st12
  SAY ~(Hotly) Like a statue... I am a statue?! Bah, what do you understand, girl? (Opening the door) Go away!~
  IF ~~ THEN REPLY ~But... (You turn to leave the room)~ GOTO LT22_st16
  IF ~~ THEN REPLY ~I... I did not mean to offend you.~ GOTO LT22_st17
  IF ~~ THEN REPLY ~Why do you take such offence?! Is anger the only emotion you are capable of? I do not wish to know you any more. Farewell my angry paladin!~ GOTO LT22_st18
END

IF ~~ THEN BEGIN LT22_st13
  SAY ~What... what did you say? No, it can't be true, you just believe it to be so. You treat me well, but love... No, it's impossible. No matter how much I may hope... No, things just do not happen this way.~
  IF ~~ THEN REPLY ~Nevertheless, it is true. I love you. Kelemvor made me look inside my heart and realise it was so. If you do not trust me, then believe Kelemvor. To him the souls of the living are like an open book. I love you, Keldorn, I do.~ GOTO LT22_st19
  IF ~~ THEN REPLY ~(Sadly) Again you do not believe me. Again you insult me with your suspicions. Why Keldorn, why?!~ GOTO LT22_st19
  IF ~~ THEN REPLY ~Then don't believe me! I love you anyway and I do not care whether you accept it or not!~ GOTO LT22_st19
END

IF ~~ THEN BEGIN LT22_st14
  SAY ~Neither Torm nor Tyr nor any other could have helped you and you know that well enough, but I will not allow you to berate my god in my presence, nor any other god for that matter. I have no more questions for you my lady. We may depart the castle today and go rescue your Imoen.~
  IF ~~ THEN DO ~SetGlobal("VP_KrRomanceActive","GLOBAL",3) ClearAllActions() StartCutSceneMode() StartCutScene("KRCut19")~ EXIT
END

IF ~~ THEN BEGIN LT22_st15
  SAY ~(The pain of recent events shows in his voice as he speaks) I am an old man, <CHARNAME>. Please understand how difficult this is for me! I can not decide to simply erase my previous life, my experiences in a single stroke.~
  = ~I had hoped you would help me to forget, to start a new beginning. I am sorry, I see know how I must have worn you down with my mourning. Forgive me my lady, I should not have started this conversation, forgive me. (He turns away from you)~
  IF ~~ THEN REPLY ~(You walk over and put your arms around him) Keldorn, I was saying all the wrong things. I should have just simply said, I love you.~ GOTO LT22_st13
  IF ~~ THEN REPLY ~Yes. I see how the spirits of your wife and children hold you tight and until you lay them to rest, there is no way for you to start anew!~ GOTO LT22_st21
END

IF ~~ THEN BEGIN LT22_st16
  SAY ~<CHARNAME>, my lady! Forgive me. I lost my temper, I am sorry.~
  IF ~~ THEN REPLY ~(Looking deeply into his eyes) I love you.~ GOTO LT22_st13
  IF ~~ THEN REPLY ~Please, forgive me also.~ GOTO LT22_st17
END

IF ~~ THEN BEGIN LT22_st17
  SAY ~I do not know why I started this conversation, <CHARNAME>.~
  IF ~~ THEN REPLY ~I do. You wanted to hear "I love you", and I will tell you, I love you, Keldorn!~ GOTO LT22_st13
  IF ~~ THEN REPLY ~(Smiling) You are just grumpy and in a bad mood. I love you Keldorn, bad mood and all.~ GOTO LT22_st13
END

IF ~~ THEN BEGIN LT22_st18
  SAY ~My lady, I... I... (He looks at you as if trying to find the right words but then he waves his hand in despair and turns away.) I have no more questions for you my lady. We may depart the castle today and go rescue your Imoen.~
  IF ~~ THEN DO ~SetGlobal("VP_KrRomanceActive","GLOBAL",3) ClearAllActions() StartCutSceneMode() StartCutScene("KRCut19")~ EXIT
END

IF ~~ THEN BEGIN LT22_st19
  SAY ~(Seeming perplexed and embarassed) I... I am not ready to answer you, <CHARNAME>, I did not expect such a show of affection, although... (His voice drops to a whisper) I was desperate to hear it. I...~
  IF ~~ THEN REPLY ~(You close his mouth with a kiss, he pulls you close and holds your trembling body firmly against his own. His kiss, rough at first, quickly yields to the softness of your own mouth and you are lost in each other for what seems like an eternity.)~ GOTO LT22_stB
END

IF ~~ THEN BEGIN LT22_stB
  SAY ~(Suddenly he groans and pulls away, sliding to the floor, he kneels, hiding his face in your breast. After a moment, he raises his head and, with a strange look in his eyes, whispers to you: 'Don't leave me')~
  IF ~~ THEN GOTO LT22_stC
END

IF ~~ THEN BEGIN LT22_stC
  SAY ~(These three words turn your soul about, and it suddenly strikes you that you are seeing a new Keldorn... you are not sure how to respond.)~
  IF ~~ THEN GOTO LT22_stD
END

IF ~~ THEN BEGIN LT22_stD
  SAY ~('Love is a great responsibility, my dear girl', Gorion's words leap to your mind. Then you see something flash in Keldorn's eyes, he stands up and gently taking you in his arms, he holds you tightly to him once again. His is a strong and yet at the same time, tender embrace.)~
  IF ~~ THEN GOTO LT22_stE
END

IF ~~ THEN BEGIN LT22_stE
  SAY ~(He looks into your eyes again and you forget everything, Imoen, Irenicus, your taint... everything, they are forgotten. There are only his eyes, blocking out everything else.)~
  IF ~~ THEN DO ~SetGlobal("VP_KrRomanceActive","GLOBAL",2) SetGlobal("VP_LoveTalk","LOCALS",23) ClearAllActions() StartCutSceneMode() StartCutScene("KRCut19")~ EXIT
END

IF ~~ THEN BEGIN LT22_st20
  SAY ~(Covering his face with his hands) I do not know... Forgive me. I am just too afraid to believe that happiness...~
  IF ~~ THEN REPLY ~(You close his mouth with a kiss, he pulls you close and holds your trembling body firmly against his own. His kiss, rough at first, quickly yields to the softness of your own mouth and you are lost in each other for what seems like an eternity.)~ GOTO LT22_stB
END

IF ~~ THEN BEGIN LT22_st21
  SAY ~(Raising his voice) Yea gods, <CHARNAME>, I can not forget them, I do not want to forget them! (Lowers his voice) This is my life, this is I, Keldorn Firecam.~
  IF ~~ THEN REPLY ~So, I need either to take you as you are or part with you?~ GOTO LT22_st24
END

IF ~~ THEN BEGIN LT22_st22
  SAY ~(Startled) For you... you say, for you? You... you say that you love me? Tell me that my ears are not deceiving me my lady?~
  IF ~~ THEN REPLY ~Yes and yes and YES again! There is nothing wrong with your ears, you oaf. I love you.~ GOTO LT22_st20
END

IF ~~ THEN BEGIN LT22_st23
  SAY ~(Angrily) Enough! I have heard all I need to hear! We may depart the castle today and go rescue your Imoen.~
  IF ~~ THEN DO ~SetGlobal("VP_KrRomanceActive","GLOBAL",3) ClearAllActions() StartCutSceneMode() StartCutScene("KRCut19")~ EXIT
END

IF ~~ THEN BEGIN LT22_st24
  SAY ~(Shrugs his shoulders) I am as you see me my lady.~
  IF ~~ THEN REPLY ~I love you, Keldorn. It is not my intention to replace Maria or your girls, they will always be in your memory, but surely there is enough room in your heart for them and for me.~ GOTO LT22_st22
  IF ~~ THEN REPLY ~I understand. The past holds you too tightly, and you yourself do not want to be rid of it. It is almost as though you are enjoying savouring your own sufferings.~ GOTO LT22_st23
END

//LT26 - night part
IF WEIGHT #-9 ~Global("VP_LoveTalk","LOCALS",26)~ THEN BEGIN LT26_st0
  SAY ~(Seeing that you are not tired, even though it is well into the night already) What's up, <CHARNAME>? Why are you so restless?~
  IF ~~ THEN REPLY ~I am scared. I can't sleep.~ GOTO LT26_st1
  IF ~~ THEN REPLY ~I'm afraid to fall asleep, Keldorn.~ GOTO LT26_st3
END

IF ~~ THEN BEGIN LT26_st1
  SAY ~Me too. I keep trying to think of ways to exorcise the demon from your soul.~
  IF ~~ THEN REPLY ~I do not have a soul!~ GOTO LT26_st2
END

IF ~~ THEN BEGIN LT26_st2
  SAY ~Nonsense! He's taken only a part of your soul, the part that is connected with the Bhaalspawn but the main part of your human soul is still with you, if it wasn't then you'd be dead already. And now the Slayer has found his home there. Are you afraid of him, afraid that he will possess you whilst you are asleep?~
  IF ~~ THEN REPLY ~Yes.~ GOTO LT26_st3
  IF ~~ THEN REPLY ~I feel him. I know he sits there, waiting for me to fall asleep!~ GOTO LT26_st3
END

IF ~~ THEN BEGIN LT26_st3
  SAY ~But this is not the way, <CHARNAME>. You can't go on denying sleep forever. Come now, things can not be that bad. You sleep and I will watch over you.~
  IF ~~ THEN REPLY ~No, no! It's too dangerous! I may kill you!~ GOTO LT26_st4
  IF ~~ THEN REPLY ~And what if I kill you as I killed all our companions in Esmeltaran?~ GOTO LT26_st4
END

IF ~~ THEN BEGIN LT26_st4
  SAY ~I am not that helpless, I think you are worrying over nothing.~
  IF ~~ THEN REPLY ~(Sighing) Maybe. All right, I'll try to sleep but you must try to sleep yourself, you also need some rest.~ GOTO LT26_st5
  IF ~~ THEN REPLY ~I wish I had your confidence paladin. All right, I'll take your advice but you must try to sleep yourself, you also need some rest.~ GOTO LT26_st5
END

IF ~~ THEN BEGIN LT26_st5
  SAY ~Are you... certain? (Hugs you) Hey, what's this, you are shivering, this won't do. I'll stay with you. Come, take off your clothes and lie down, there is nothing for you to fear.~
  IF ~~ THEN REPLY ~And you, you are not going to stay awake all night, are you! (Shyly) Come, lie down here next to me, there's room enough.~ GOTO LT26_st6
  IF ~~ THEN REPLY ~I'm afraid, it's too dangerous!~ GOTO LT26_st6
END

IF ~~ THEN BEGIN LT26_st6
  SAY ~There is no need for embarrassment, you sat by me, remember and now it is my turn. Take off your clothes, I'll look away if it makes you feel better. Now sleep, there is nothing for you to fear.~
  IF ~~ THEN DO ~SetGlobal("VP_LoveTalk","LOCALS",27) ClearAllActions() StartCutSceneMode() Wait(4) RestParty() EndCutSceneMode()~ EXIT
END

//LT27 (LT26A) - morning part
IF WEIGHT #-10 ~Global("VP_MorningTalk","LOCALS",1) Global("VP_LoveTalk","LOCALS",27)~ THEN BEGIN LT26_stA
  SAY ~You see, everything is all right. You worried for nothing. (Bends and kisses your forehead) I've been looking at you and thinking, you are so unlike my wife. I tried to find at least one common feature and could not. You and Maria ' you are both beautiful, but your beauty is of a different nature.~
  IF ~~ THEN GOTO LT26_stA_1
END

IF ~~ THEN BEGIN LT26_stA_1
  SAY ~(Takes your hands and examines them, then he continues with a smile) Well, Maria definitely had no calluses and scars.~
  IF ~~ THEN REPLY ~(You snatch your hands away) My hands are good only for killing. Nobody would think to raise them to his lips.~ GOTO LT26_st7
  IF ~~ THEN REPLY ~Why are you saying all this Keldorn?~ GOTO LT26_st8
END

IF ~~ THEN BEGIN LT26_st7
  SAY ~(Bursts out laughing and taking your hands in his, he proceeds to kiss every callus and graze... then he catches you up in his arms and with a sudden jerk lifts you from the bed.) Get up, enough lounging.~
  IF ~~ THEN REPLY ~(You find yourself blushing to the roots of your hair) Keldorn! I am not fit to be seen.~ GOTO LT26_st9
  IF ~~ THEN REPLY ~(Opening your eyes wide) Keldorn! What if I had been naked under here?~ GOTO LT26_st9
END

IF ~~ THEN BEGIN LT26_st8
  SAY ~So what... you were not naked. And even if you were, would it be so terrible? Now, get dressed. (He turns away, allowing you the privacy to get dressed.)~
  IF ~~ THEN DO ~SetGlobal("VP_MorningTalk","LOCALS",2) SetGlobalTimer("VP_KrRomance_Timer","GLOBAL",ONE_DAY)~ EXIT
END

IF ~~ THEN BEGIN LT26_st9
  SAY ~(Smiling) I do not know... no particular reason. Now get dressed, it's time to get up.~
  IF ~~ THEN DO ~SetGlobal("VP_MorningTalk","LOCALS",2) SetGlobalTimer("VP_KrRomance_Timer","GLOBAL",ONE_DAY)~ EXIT
END

//LT28
IF WEIGHT #-11 ~Global("VP_LoveTalk","LOCALS",28)~ THEN BEGIN LT28_st0
  SAY ~<CHARNAME>, tell me please, why do you never ask questions of me? Does my company bore you am I of no interest to you?~
  IF ~~ THEN REPLY ~Keldorn! How could you think such a thing! I have told you that I love you, how can you be of no interest to me?~ GOTO LT28_st1
  IF ~~ THEN REPLY ~(You look reprovingly at him) You are imagining things my friend. I just don't want to appear too nosy.~ GOTO LT28_st2
  IF ~~ THEN REPLY ~Well... everyone has a right to keep secrets. I may inadvertently ask about things that you'd prefer to keep to yourself and then you'd feel uncomfortable refuse to answer. We don't need such complications and anyway, you tell me enough to satisfy my curiosity.~ GOTO LT28_st3
END

IF ~~ THEN BEGIN LT28_st1
  SAY ~You still haven't answered my question <CHARNAME>.~
  IF ~~ THEN REPLY ~(You look reprovingly at him) You are imagining things my friend. I just don't want to appear too nosy.~ GOTO LT28_st2
  IF ~~ THEN REPLY ~Well... everyone has a right to keep secrets. I may inadvertently ask about things that you'd prefer to keep to yourself and then you'd feel uncomfortable refuse to answer. We don't need such complications and anyway, you tell me enough to satisfy my curiosity.~ GOTO LT28_st3
  IF ~~ THEN REPLY ~(Shrugging) I really don't know what to say.~ GOTO LT28_st4
END

IF ~~ THEN BEGIN LT28_st2
  SAY ~(With a grin) Now that has to be a first an incurious woman!~
  IF ~~ THEN REPLY ~Well... everyone has a right to keep secrets. I may inadvertently ask about things that you'd prefer to keep to yourself and then you'd feel uncomfortable refuse to answer. We don't need such complications and anyway, you tell me enough to satisfy my curiosity.~ GOTO LT28_st3
  IF ~~ THEN REPLY ~You do not see me as a woman at all!~ GOTO LT28_st5
  IF ~~ THEN REPLY ~Have you forgotten that I was brought up by monks?~ GOTO LT28_st6
END

IF ~~ THEN BEGIN LT28_st3
  SAY ~(Shaking his head) You do surprise me. I have to give credit to your foster father, he brought you up well. Let us leave it here and please forgive my starting this conversation. Come, we have things to do.~
  IF ~~ THEN DO ~SetGlobal("VP_LoveTalk","LOCALS",29) SetGlobalTimer("VP_KrRomance_Timer","GLOBAL",ONE_DAY)~ EXIT
END

IF ~~ THEN BEGIN LT28_st4
  SAY ~(He becomes ornery) And I do not know why I insist. I'm sorry... come, we have things to do.~
  IF ~~ THEN DO ~SetGlobal("VP_LoveTalk","LOCALS",29) SetGlobalTimer("VP_KrRomance_Timer","GLOBAL",ONE_DAY)~ EXIT
END

IF ~~ THEN BEGIN LT28_st5
  SAY ~(Looking puzzled) <CHARNAME>... forgive me if I have given you cause to believe that is so. Despite my age I find I can still appreciate a beautiful woman.~
  IF ~~ THEN REPLY ~(Blushing) Keldorn, that's not at all what I meant!~ GOTO LT28_st7
  IF ~~ THEN REPLY ~(Curtly) Let's leave this subject Keldorn... it will lead to no good.~ GOTO LT28_st8
END

IF ~~ THEN BEGIN LT28_st6
  SAY ~I did. I'm sorry I should not have started this conversation. Come, we have things to do.~
  IF ~~ THEN DO ~SetGlobal("VP_LoveTalk","LOCALS",29) SetGlobalTimer("VP_KrRomance_Timer","GLOBAL",ONE_DAY)~ EXIT
END

IF ~~ THEN BEGIN LT28_st7
  SAY ~What else is meant when a man is accused of showing a lack of interest towards a female? Though I doubt you even consider me a man. No matter, we should forget it as no doubt I asked for it. Come, we have spent too much time here already.~
  IF ~~ THEN DO ~SetGlobal("VP_LoveTalk","LOCALS",29) SetGlobalTimer("VP_KrRomance_Timer","GLOBAL",ONE_DAY)~ EXIT
END

IF ~~ THEN BEGIN LT28_st8
  SAY ~(Sighing) What else do I have left?~
  IF ~~ THEN DO ~SetGlobal("VP_LoveTalk","LOCALS",29) SetGlobalTimer("VP_KrRomance_Timer","GLOBAL",ONE_DAY)~ EXIT
END

//LT30
IF WEIGHT #-12 ~Global("VP_LoveTalk","LOCALS",30)~ THEN BEGIN LT30_st0
  SAY ~(You can't sleep. You keep thinking about the last conversation you had with Keldorn, he would never have behaved like that before. You remember Kelemvor's warning, but appealing to a powerful god simply because your beloved acts strangely doesn't seem to be a wise move. You turn towards Keldorn's bed and find it empty. He is sitting by the fire watching the dancing flame. On hearing your steps, Keldorn raises his eyes.)~
  = ~You probably want to hear some explanation from me, but I have nothing to say. I know I am acting like a petulant child, but I do not understand why. It seems to me that Kelemvor and you played a mean joke on me even if unintentionally. I am... changing, do you understand? I am not the Keldorn Firecam, senior officer of the Order that you found in Athkatla's sewers.~
  = ~(He sneers, then suddenly bends to you almost touching your face with his lips) Your blood, <CHARNAME>, your hot young blood! I... I must appear mad to you but it is this divine blood of yours, it forces me to act unwisely. I want to be with you, I want to... to hold you, I want (he turns away and covers his face with his hands)... and I can't help it, <CHARNAME>, I just can't.~
  IF ~~ THEN REPLY ~(You put your arms around him not sure what to say)~ GOTO LT30_st1
  IF ~~ THEN REPLY ~(Feeling a little afraid, you take a step back) K-Kel-dorn...~ GOTO LT30_st2
  IF ~~ THEN REPLY ~(Sighing heavily you look into his eyes) Keldorn, if it is my consent that you seek to solve your dilemma... then I willingly come to you my love.~ GOTO LT30_st3
END

IF ~~ THEN BEGIN LT30_st1
  SAY ~(Quietly) Thank you. I'm better now. I received but a small drop of your blood and I can not cope with it. How do you manage to control it? In my ignorance, I did not fully realize what it means to be a semi-god... until now.~
  IF ~~ THEN REPLY ~I've become accustomed to it my love. When I was small, it did not manifest itself strongly, it started developing gradually as I moved into adulthood. Even now I am still lacking in knowledge you know... and though I'm used to struggling with myself, now I find I must battle with the slayer.~ GOTO LT30_st4
  IF ~~ THEN REPLY ~(Laughing softly) You will learn. (Suddenly, the same words echo in your mind. *YOU WILL LEARN* but they seem to be from some distant time past and soon they have slipped from your mind.)~ GOTO LT30_st5
  IF ~~ THEN REPLY ~It will take time but you will learn to control it. That I have no doubt.~ GOTO LT30_st6
END

IF ~~ THEN BEGIN LT30_st2
  SAY ~(Jerking his head back) Do I scare you? Yea gods, Torm.~
  IF ~~ THEN REPLY ~(You notice the pain in his eyes) No, my love, there... no. (You put your arms around him and hold him gently to you.)~ GOTO LT30_st1
  IF ~~ THEN REPLY ~(Sighing heavily you look into his eyes) Keldorn, if it is my consent that you seek to solve your dilemma, then I willingly come to you my love.~ GOTO LT30_st3
END

IF ~~ THEN BEGIN LT30_st3
  SAY ~(His eyes brighten as he looks at you in admiration. On his face you clearly see the signs of some inner conflict that he is battling within himself. Suddenly his features relax and you feel that what ever the turmoil was, he has won through this time.)~
  = ~Thank you for understanding my dear, you have no idea how important that is for me but how could I ever respect myself if I were to take advantage of the moment of you! I... I will overcome this failing myself.~
  = ~I would be right in saying that you are a virgin are you not?~
  = ~(Seeing your face turn scarlet, he takes your hand and presses it to his face) No... no my sweet girl, there is no need for you to be embarrassed. Virginity is but a state of being and yet, by offering yourself to me in this way, it would be the greatest gift you could bestow upon me.~
  = ~I can not take your gift, not yet. It is far too precious a thing to give away hastily, and as much as I am tempted by your beauty, by your naivness, I respect you too much my dear to lose myself in the heat of the moment.~
  = ~However, I will accept your kiss my dearest <CHARNAME>.~
  = ~(As his lips touch yours, his kiss becomes demanding and yet still gentle. You feel your heart leap in your breast and you suddenly become giddy, light headed... as if you have just been lifted up high. The kiss ends and as Keldorn reluctantly pulls away he smiles.)~
  = ~So you have never recieved a man's kiss before. I can see that we will have to make up for lost time.~
  IF ~~ THEN GOTO LT30_st13
END

IF ~~ THEN BEGIN LT30_st4
  SAY ~(He becomes despondent) Slayer. I wish I was more certain that I could protect you from him. Every time you turn into him he will take you further and further from the Light. I ask you... no I implore you, please my darling girl, do not surrender to him! He will try to seduce you, whispering his words of power.~
  IF ~~ THEN REPLY ~I promise. I'll not fall for his dark speeches.~ GOTO LT30_st7
  IF ~~ THEN REPLY ~(A glint comes to your eye) I'd prefer that it were you trying to seduce me.~ GOTO LT30_st8
  IF ~~ THEN REPLY ~I think you are making something of nothing.~ GOTO LT30_st9
END

IF ~~ THEN BEGIN LT30_st5
  SAY ~Learn? Yes, you are right of course but you will help me, won't you? In return I will teach you of other things.~
  IF ~~ THEN REPLY ~(Suspiciously) Teach me of other things. What other things do you have in mind?~ GOTO LT30_st10
  IF ~~ THEN REPLY ~What, yet more learning. Did I not suffer enough in Candlekeep?~ GOTO LT30_st11
END

IF ~~ THEN BEGIN LT30_st6
  SAY ~(Sadly) You do not want to help me?~
  IF ~~ THEN REPLY ~I do and if it is my consent that you seek. Then I willingly come to you my love.~ GOTO LT30_st3
  IF ~~ THEN REPLY ~Tell me what it is you wish of me my love, tell me for I'll do anything?~ GOTO LT30_st12
END

IF ~~ THEN BEGIN LT30_st7
  SAY ~(Looking deeply into your eyes) I have your word? Then I shall pray for Torm to bring you strength to aid you in your resolve. Promise?~
  IF ~~ THEN GOTO LT30_st13
END

IF ~~ THEN BEGIN LT30_st8
  SAY ~(Sighing) I am serious <CHARNAME>! You are going to find it difficult to withstand his might, believe me you are! Until we return that which Irenicus has stolen, he isn't going to give you a moments peace.~
  IF ~~ THEN GOTO LT30_st13
END

IF ~~ THEN BEGIN LT30_st9
  SAY ~Believe me, I am not! He will become stronger, more powerful and until we return that which Irenicus has stolen, he isn't going to give you a moments peace.~
  IF ~~ THEN GOTO LT30_st13
END

IF ~~ THEN BEGIN LT30_st10
  SAY ~(The corners of his eyes crinkle as he smiles) Mmm... maybe how to kiss a man properly? Your kiss is delicious my sweet girl, it leaves a taste of honey on a man's lips and yet I get the feeling there is still a sweetness awaiting to be woken by the bee.~
  = ~(Ignoring your protests he pulls you to him, smothering your mouth with his own, then laughing he pulls back) Now it is your turn.~
  IF ~~ THEN GOTO LT30_st13
END

IF ~~ THEN BEGIN LT30_st11
  SAY ~(Bursts out laughing, then pulling you to him) I doubt monks taught you how to kiss a man properly my sweet! Come here and learn.~
  IF ~~ THEN GOTO LT30_st13
END

IF ~~ THEN BEGIN LT30_st12
  SAY ~(Sighing, then pulling you gently to him) I wish I knew my dear, I wish I knew. Please, a kiss at least.~
  IF ~~ THEN GOTO LT30_st13
END

IF ~~ THEN BEGIN LT30_st13
  SAY ~(You sit a while longer and eventually you fall asleep. As your head touches the pillow, your eyes close and you do not hear Keldorn wishing you sweet dreams. In front of you a strange face appears, strange and yet you sense that it is a face known to you.)~
  IF ~~ THEN DO ~SetGlobal("VP_LoveTalk","LOCALS",31) SetGlobal("VP_Kr_AfterDream","LOCALS",1) SetGlobalTimer("VP_KrRomance_Timer","GLOBAL",ONE_DAY) ClearAllActions() StartCutSceneMode() StartCutScene("MovieKr")~ EXIT
END

IF WEIGHT #-13 ~Global("VP_LoveTalk","LOCALS",31) Global("VP_Kr_AfterDream","LOCALS",1)~ THEN BEGIN AftDream
  SAY ~(His face stern and yet serene.) You had a nightmare again, only this time you were speaking quite clearly and I heard everything. So Torm... (he smiles). Anyway now I know how to help you, <CHARNAME> and I will do it. At all costs.~
  IF ~~ THEN DO ~SetGlobal("VP_Kr_AfterDream","LOCALS",2) ClearAllActions() StartCutSceneMode() Wait(4) RestParty() EndCutSceneMode()~ JOURNAL ~It started so well but it finished so sadly! Keldorn was so nice when he was speaking about... how did he put it his problems. Really he considers me too naive and childlike. Maybe it's for the best, who knows? However, his last statement frightened me. What does he have in mind? He definitely arrived at some uneasy decision saying that he will help me. I am certain that he is doing so against his will. Suddenly I am frightened.~ EXIT
END

//LT 32, Ust-Natha
IF WEIGHT #-14 ~Global("Kr_DrowBanter","LOCALS",2)~ THEN BEGIN DrowTlk0
  SAY ~(Jocularly) <CHARNAME>, how do you find me? Does my new face become me?~
  IF ~~ THEN REPLY ~Oh, Keldorn. I can't wait until I see your real face again. I can't talk to you seriously while you look like a drow. I know it's stupid but I just can't. I'm sorry.~ GOTO DrowTlk1
  IF ~~ THEN REPLY ~How can you make jokes now? We are among enemies who may become suspicious at any moment and discover our real identities. I don't understand your carelessness.~ GOTO DrowTlk2
  IF ~~ THEN REPLY ~(Casting him a quick glance) No, I do not like it.~ GOTO DrowTlk3
END

IF ~~ THEN BEGIN DrowTlk1
  SAY ~(Softly) I understand my sweet. I have something to talk to you about as well, but I want to see your face, your eyes, your smile. All right my dear, let us leave all talks for later.~
  IF ~~ THEN DO ~SetGlobal("Kr_DrowBanter","LOCALS",3)~ EXIT
END

IF ~~ THEN BEGIN DrowTlk2
  SAY ~(Apologetically) I am sorry. I wanted to cheer you up but I'm afraid I've done that rather awkwardly. I'm sorry my dear, we'll talk later.~
  IF ~~ THEN DO ~SetGlobal("Kr_DrowBanter","LOCALS",3)~ EXIT
END

IF ~~ THEN BEGIN DrowTlk3
  SAY ~(Sighing) Looks like you are not in the mood to talk, <CHARNAME>.~
  IF ~~ THEN DO ~SetGlobal("Kr_DrowBanter","LOCALS",3)~ EXIT
END

// After exit from Underdark, just after Elhan's conversation
IF WEIGHT #-15 ~Global("Kr_ElfBanter","LOCALS",2)~ THEN BEGIN ElfTlk0
  SAY ~<CHARNAME>, <CHARNAME>... what ever is it? You are shaking all over... (putting his arms around you). Please calm yourself... we are at war and elves have never been known to trust strangers at the best of times.~
  IF ~!Race(Player1,ELF) !Race(Player1,HALF_ELF)~ THEN REPLY ~It's just... this damned interrogation Keldorn, it is absolutely revolting!~ GOTO ElfTlk1
  IF ~Race(Player1,ELF)~ THEN REPLY ~They dare interrogate me in this appalling manner. Me... an elf! This is... this is... words fail me, I am speechless!~ GOTO ElfTlk2
  IF ~Race(Player1,HALF_ELF)~ THEN REPLY ~Are they blind? Any fool can see I have elven blood in my ancestry... not drow!~ GOTO ElfTlk3
END

IF ~~ THEN BEGIN ElfTlk1
  SAY ~They are not humans my dear. Do you think the Order does not admit non-humans without a good reason? They have a different vision of the world, different ethics, different philosophies, different values and their understanding of "honour" is also different to the way we humans perceive it.~
  = ~Come, let it trouble you no more, it's high time we returned home... after all, time and tide wait for no man.~
  IF ~~ THEN DO ~SetGlobal("Kr_ElfBanter","LOCALS",3)~ EXIT
END

IF ~~ THEN BEGIN ElfTlk2
  SAY ~I agree with you, I was outraged myself. It's strange that Adalon did not speak up for us. Come, let it trouble you no more, it's high time we returned home... after all, time and tide wait for no man.~
  IF ~~ THEN DO ~SetGlobal("Kr_ElfBanter","LOCALS",3)~ EXIT
END

IF ~~ THEN BEGIN ElfTlk3
  SAY ~Don't forget that you have humans as well as elves among your ancestors. Elves do not trust us, it's a fact, they are a closed race and trust no one. It may be so because they live too long, who knows but come, let it trouble you no more, it's high time we returned home... after all, time and tide wait for no man.~
  IF ~~ THEN DO ~SetGlobal("Kr_ElfBanter","LOCALS",3)~ EXIT
END

IF WEIGHT #-16 ~Global("Kr_LakeBanter","LOCALS",2)~ THEN BEGIN LT34_st0
  SAY ~(Determindely) You do as you wish <CHARNAME>, but I am not able to go any further until I wash off the dirt of those dungeons. Look at that lovely lake over there. Why don't we encamp here and have some rest... we deserve it.~
  IF ~~ THEN REPLY ~Were not the baths in Ust-Natha warm enough and clean enough for you? Didn't you enjoy the delicate silk bedsheets and the soft pillows of the inn there? In comparison the most luxurious inn in Athkatla will look a rat infested stable!~ GOTO LT34_st1
  IF ~~ THEN REPLY ~To be honest I would enjoy a bathe myself.~ GOTO LT34_st2
  IF ~~ THEN REPLY ~You say it as if you think I'd mind!~ GOTO LT34_st3
END

IF ~~ THEN BEGIN LT34_st1
  SAY ~(Laughing.) Don't find faults with my words my darling. Come, get those grimey clothes off and let's have a swim.~
  IF ~~ THEN REPLY ~(You feel the colour creep into your cheeks) Undressed... you mean completely... but what about...~ GOTO LT34_st4
  IF ~~ THEN REPLY ~Um... maybe we should probably wait until it gets dark?~ GOTO LT34_st4
  IF ~~ THEN REPLY ~(Looking around fervently) But Keldorn, there are no bushes here!~ GOTO LT34_st4
END

IF ~~ THEN BEGIN LT34_st2
  SAY ~Then what are you waiting for... get those grimey clothes off and let's have a swim.~
  IF ~~ THEN REPLY ~(You feel the colour creep into your cheeks) Undressed... you mean completely... but what about...~ GOTO LT34_st4
  IF ~~ THEN REPLY ~Um... maybe we should probably wait until it gets dark?~ GOTO LT34_st4
  IF ~~ THEN REPLY ~(Looking around fervently) But Keldorn, there are no bushes here!~ GOTO LT34_st4
END

IF ~~ THEN BEGIN LT34_st3
  SAY ~(Artfully) No offense meant, it's just in case. Now get those grimey clothes off and let's have a swim, the water looks warm.~
  IF ~~ THEN REPLY ~(You feel the colour creep into your cheeks) Undressed... you mean completely... but what about...~ GOTO LT34_st4
  IF ~~ THEN REPLY ~Um... maybe we should probably wait until it gets dark?~ GOTO LT34_st4
  IF ~~ THEN REPLY ~(Looking around fervently) But Keldorn, there are no bushes here!~ GOTO LT34_st4
END

IF ~~ THEN BEGIN LT34_st4
  SAY ~(Laughing heartedly) <CHARNAME>... you sleep in underwear, so why so shy of going into the water with it on? Though if my lady would prefer to swim naked, I wouldn't mind.~
  IF ~~ THEN REPLY ~(Your face becomes bright red with anger) You... you... you!~ GOTO LT34_st5
END

IF ~~ THEN BEGIN LT34_st5
  SAY ~(He scoops up a handful of water and splashes it into your face) Cool down my dear! Forgive me that was an insensitive joke on my part. How may I wash away my guilt?~
  = ~(He drops down on bended knee and extends his hand to you) I offer you my hand and my heart, <CHARNAME>, you are free to do with them whatever you wish!~
  IF ~~ THEN REPLY ~(You step back angrily) Your clowning passes all bounds, lord Keldorn!~ GOTO LT34_st6
  IF ~~ THEN REPLY ~(You speak softly as tears well up in your eyes) That was a bad joke, Keldorn!~ GOTO LT34_st7
  IF ~~ THEN REPLY ~(Your eyes pop wide open and you open and close your mouth several times but no words will come.)~ GOTO LT34_st8
END

IF ~~ THEN BEGIN LT34_st6
  SAY ~(He becomes surly) Clowning... you say I am a clown? I wouldn't joke about such things. Is it so hard for you to believe that I am serious. Certainly my proposal may seem strange and sudden, but I am ready to repeat it. However, I'll not demand an answer from you right away, though I must say your mistrust goes to my heart.~
  = ~(He sighs heavily) I asked that we should swim did I not? Then let us brave the water, it will refresh both your body and your thoughts.~
  = ~(The cool, clear water of the lake calms you down, helping you to gather your thoughts. He was joking of course. Count Firecam would not seriously marry a humble girl of unknown parentage. It was another of his jokes because he does not take seriously either you or your love. Unwilling tears to well up in your eyes... determined not to let Keldorn see them, you dive and swim under water.)~
  = ~(You reach the opposite shore. Keldorn suggests that you rest and you stretch with pleasure on the white sand, warming yourself under the hot rays. You do not notice that your wet underwear is clinging to your body.)~
  = ~(Keldorn softly kisses you on your lips) You have warmed yourself... and you are once again calm, yes? Good, then I will repeat what I said a few moments ago. It's true, I want you to be my wife but I did not expect you to be so astonished at my proposal. You confessed your love to me, why were you so surprised by my response?~
  = ~Or maybe you (his voice becomes despondent)... maybe you only said that you loved me in the heat of the moment and now you are regretting it? Am I repugnant to you? Tell me and if it is so then I will disappear from your life forever.~
  IF ~~ THEN REPLY ~(You leap up and embrace him) I love you and I want to be with you so much. Your proposal just caught me off guard. I still can't believe you really mean it.~ GOTO LT34_st9
  IF ~~ THEN REPLY ~(Your eyes open wide in amazement) You, count Firecam, want to marry me, a girl of unknown parentage? You are not joking?~ GOTO LT34_st10
  IF ~~ THEN REPLY ~I... I do not trust you.~ GOTO LT34_st11
END

IF ~~ THEN BEGIN LT34_st7
  SAY ~(Quietly) This is no joke, <CHARNAME>. Did I frighten you? I can see I acted too impulsively, let us put off this conversation aside for some other time and take our swim... come, the water looks inviting.~
  = ~(The cool, clear water of the lake calms you down, helping you to gather your thoughts. He was joking of course. Count Firecam would not seriously marry a humble girl of unknown parentage. It was another of his jokes because he does not take seriously either you or your love. Unwilling tears to well up in your eyes... determined not to let Keldorn see them, you dive and swim under water.)~
  = ~(You reach the opposite shore. Keldorn suggests that you rest and you stretch with pleasure on the white sand, warming yourself under the hot rays. You do not notice that your wet underwear is clinging to your body.)~
  = ~(Keldorn softly kisses you on your lips) You have warmed yourself... and you are once again calm, yes? Good, then I will repeat what I said a few moments ago. It's true, I want you to be my wife but I did not expect you to be so astonished at my proposal. You confessed your love to me, why were you so surprised by my response?~
  = ~Or maybe you (his voice becomes despondent)... maybe you only said that you loved me in the heat of the moment and now you are regretting it? Am I repugnant to you? Tell me and if it is so then I will disappear from your life forever.~
  IF ~~ THEN REPLY ~(You leap up and embrace him) I love you and I want to be with you so much. Your proposal just caught me off guard. I still can't believe you really mean it.~ GOTO LT34_st9
  IF ~~ THEN REPLY ~(Your eyes open wide in amazement) You, count Firecam, want to marry me, a girl of unknown parentage? You are not joking?~ GOTO LT34_st10
  IF ~~ THEN REPLY ~I... I do not trust you.~ GOTO LT34_st11
END

IF ~~ THEN BEGIN LT34_st8
  SAY ~(Bursts out laughing, takes you by your hand and pulls you into the water.) You were not expecting that were you? See, it is still within my power to surprise you.~
  = ~(The cool, clear water of the lake calms you down, helping you to gather your thoughts. He was joking of course. Count Firecam would not seriously marry a humble girl of unknown parentage. It was another of his jokes because he does not take seriously either you or your love. Unwilling tears to well up in your eyes... determined not to let Keldorn see them, you dive and swim under water.)~
  = ~(You reach the opposite shore. Keldorn suggests that you rest and you stretch with pleasure on the white sand, warming yourself under the hot rays. You do not notice that your wet underwear is clinging to your body.)~
  = ~(Keldorn softly kisses you on your lips) You have warmed yourself... and you are once again calm, yes? Good, then I will repeat what I said a few moments ago. It's true, I want you to be my wife but I did not expect you to be so astonished at my proposal. You confessed your love to me, why were you so surprised by my response?~
  =~Or maybe you (his voice becomes despondent)... maybe you only said that you loved me in the heat of the moment and now you are regretting it? Am I repugnant to you? Tell me and if it is so then I will disappear from your life forever.~
  IF ~~ THEN REPLY ~(You leap up and embrace him) I love you and I want to be with you so much. Your proposal just caught me off guard. I still can't believe you really mean it.~ GOTO LT34_st9
  IF ~~ THEN REPLY ~(Your eyes open wide in amazement) You, count Firecam, want to marry me, a girl of unknown parentage? You are not joking?~ GOTO LT34_st10
  IF ~~ THEN REPLY ~I... I do not trust you.~ GOTO LT34_st11
END

IF ~~ THEN BEGIN LT34_st9
  SAY ~(Kissing you firmly) My beautiful girl... I have never been more serious in my life. (He cups your breast in his hand and kissing it he whispers) I want to live with you, I want to take care of you. I want to love you.~
  IF ~~ THEN REPLY ~(You remove a long chain with a ring hanging on it from your neck and put it on Keldorn's finger) This is Gorion's ring. Imoen kept it for a very long time until Irenicus took it from her. Later, she managed to steal it from him and gave it to me. Gorion told me that the ring is imbued with magical power but he knew not what that power is. Whatever it is, it could not save my father.~ GOTO LT34_st12
END

IF ~~ THEN BEGIN LT34_st10
  SAY ~(Winks at you.) What jokes can there be at such a moment? I really do. Though you are not a simple girl either, you are a semi-god and as such, people will be envious that I am the one who won your heart.~
  IF ~~ THEN REPLY ~(You remove a long chain with a ring hanging on it from your neck and put it on Keldorn's finger) This is Gorion's ring. Imoen kept it for a very long time until Irenicus took it from her. Later, she managed to steal it from him and gave it to me. Gorion told me that the ring is imbued with magical power but he knew not what that power is. Whatever it is, it could not save my father.~ GOTO LT34_st12
END

IF ~~ THEN BEGIN LT34_st11
  SAY ~You don't trust me? Tell me. what does it take for you to believe in me? Do you wish that I should kneel before you or that I should perform a heroic deed in your honour?~
  IF ~~ THEN REPLY ~(You remove a long chain with a ring hanging on it from your neck and put it on Keldorn's finger) This is Gorion's ring. Imoen kept it for a very long time until Irenicus took it from her. Later, she managed to steal it from him and gave it to me. Gorion told me that the ring is imbued with magical power but he knew not what that power is. Whatever it is, it could not save my father.~ GOTO LT34_st12
  IF ~~ THEN REPLY ~Nothing, Keldorn... yes, I told you that I love you and it is true but I cannot marry you. I have no wish to endanger you. I am cursed, I bring misfortune to people I care about. I do not want to bring you to your death. This is my final word. I'm sorry my love. I beg of you, do not try to persuade me.~ GOTO LT34_st13
END

IF ~~ THEN BEGIN LT34_st12
  SAY ~(Pressing his lips to the ring) It still carries the warmth of your body. You have given me the most precious thing that you have, what better declaration of love could a man wish for?~
  = ~In Athkatla we will send a letter to my mother. We'll tell her to make preparations for our wedding. I'll tell you a secret, when we left Esmeltaran, she warned me that she would turn me from the door if I were to let you slip through my fingers.~
  IF ~~ THEN DO ~GiveItemCreate("kring222",Myself,0,0,0) SetGlobal("Kr_LakeBanter","LOCALS",3) SetGlobal("VP_KrRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN LT34_st13
  SAY ~(Tears well up in his eyes) You... then why did you bring me from Kelemvor's kingdom? Why? (Seizes you by your shoulders and shakes you) Tell me... why?! I love you, <CHARNAME>. Please let me be with you, I beg you.~
  IF ~~ THEN REPLY ~(You remove a long chain with a ring hanging on it from your neck and put it on Keldorn's finger) This is Gorion's ring. Imoen kept it for a very long time until Irenicus took it from her. Later, she managed to steal it from him and gave it to me. Gorion told me that the ring is imbued with magical power but he knew not what that power is. Whatever it is, it could not save my father.~ GOTO LT34_st12
  IF ~~ THEN REPLY ~(Closing your eyes you shake your head) No, Keldorn. Forgive me.~ GOTO LT34_st14
END

IF ~~ THEN BEGIN LT34_st14
  SAY ~(His voice becomes flat) You are mistaken, my love. Will you not leave me even a little hope? I can't bear this... (Pressing his hand to his chest) I won't.~
  IF ~~ THEN DO ~SetGlobal("Kr_LakeBanter","LOCALS",3) SetGlobal("VP_KrRomanceActive","GLOBAL",3) Kill(Myself)~ EXIT
END

//Series of banters in Keldorn's castle before wedding
IF WEIGHT #-17 ~Global("VP_Castle_Banters","GLOBAL",1)~ THEN BEGIN TK_st0
  SAY ~Darling, what are you going to do now?~
  IF ~~ THEN REPLY ~I am going to try on a dress so that Frida may complete her work.~ GOTO TK_st1
END

IF ~~ THEN BEGIN TK_st1
  SAY ~Oh, of course the dress. It is very important, that I understand. Would you mind if I have a look? I am interested in everything that concerns you and our forthcoming wedding. Besides I am very curious as to what sort of taste this Frida has.~
  IF ~~ THEN DO ~SetGlobal("VP_Castle_Banters","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("KRCut22")~ EXIT
END

IF WEIGHT #-18 ~Global("VP_Castle_Banters","GLOBAL",2)~ THEN BEGIN TK_st2
  SAY ~(Eyeing the dress) Lovely indeed... Nothing to quibble about here but tell me Frida, why have you made the dress with so high a neckline?~
  IF ~~ THEN DO ~SetGlobal("VP_Castle_Banters","GLOBAL",3)~ EXTERN ~FRIDA~ 0
END

IF ~~ THEN BEGIN TK_st3
  SAY ~(Furrowing his brow) Why so? Maria used to always wear dresses with low necklines...it is the fashion, is it not?~
  IF ~~ THEN EXTERN ~FRIDA~ 1
END

IF ~~ THEN BEGIN TK_st4
  SAY ~(Laughing) And if the face is beautiful, eh, Frida? What if there are no flaws?~
  IF ~~ THEN EXTERN ~FRIDA~ 2
END

//LT 36, Keldorn is at home, Slayer transformation
IF WEIGHT #-19 ~Global("VP_Castle_Banters","GLOBAL",3) Global("VP_LoveTalk","LOCALS",31)~ THEN BEGIN LT36_st0
  SAY ~(Sitting you on his lap) How are things with you my love? Are you getting used to feeling that you are mistress of this place... and my wife? My mother says that Frida has spent many days and nights preparing your marriage trousseau.~
  IF ~~ THEN REPLY ~(Quickly releasing yourself from his warm embrace) You see what our haste has done?~ GOTO LT36_st1
  IF ~~ THEN REPLY ~You should really increase her salary, don't you think?~ GOTO LT36_st2
  IF ~~ THEN REPLY ~(Blushing) Wife? But...~ GOTO LT36_st3
END

IF ~~ THEN BEGIN LT36_st1
  SAY ~(Sighing) There, there, my dearest girl... (Enfolding you in his arms) Will you show me Frida's work?~
  IF ~~ THEN REPLY ~Keldorn! That is hardly decent.~ GOTO LT36_st4
  IF ~~ THEN REPLY ~(Kissing him) Can't you wait just a day longer?~ GOTO LT36_st4
  IF ~~ THEN REPLY ~(Embarrassed but firmly) No-no, swimming was quite enough for me!~ GOTO LT36_st4
END

IF ~~ THEN BEGIN LT36_st2
  SAY ~(Laughing) You increase it then. You are free to give any orders you want here my love.~
  IF ~~ THEN REPLY ~(Slyly) Any... truly? Does that include to you as well?~ GOTO LT36_st6
  IF ~~ THEN REPLY ~Aren't you afraid for your fortune? I am a girl of no family after all.~ GOTO LT36_st7
  IF ~~ THEN REPLY ~(Nestling your face into his shoulder) I don't want to take charge. I am so tired.~ GOTO LT36_st8
  IF ~~ THEN REPLY ~(Burying your head on his chest) All right, take me, my love... Why do we need to wait until tomorrow?~ GOTO LT36_st30
END

IF ~~ THEN BEGIN LT36_st3
  SAY ~(Quietly) Yes. You know it to be true so why wait until tomorrow, let us try our own bed tonight?~
  IF ~~ THEN REPLY ~(Firmly) No, my love. I feel uneasy. Because of your mother... your servants.~ GOTO LT36_st5
END

IF ~~ THEN BEGIN LT36_st4
  SAY ~But our wedding is tomorrow! Does one day really matter so much my love. You know in my heart that I have considered you as my wife for a long time now?~
  IF ~~ THEN REPLY ~I do understand, my darling, but... let's wait until tomorrow.~ GOTO LT36_st5
  IF ~~ THEN REPLY ~(Burying your head on his chest) All right, take me, my love. Why do we need to wait until tomorrow?~ GOTO LT36_st30
END

IF ~~ THEN BEGIN LT36_st5
  SAY ~(A little abashed) Yes of course I understand but this room has not been made ready for you! Come my dearest, let me sleep here whilst you sleep in my room.~
  IF ~~ THEN REPLY ~Why is there something wrong with this room?~ GOTO LT36_st9
  IF ~~ THEN REPLY ~(Burying your head on his chest) All right, take me, my love. Why do we need to wait until tomorrow?~ GOTO LT36_st30
END

IF ~~ THEN BEGIN LT36_st6
  SAY ~To me? Why, don't you know that you already command me my love? Now how about you order me to carry you to our bed?~
  IF ~~ THEN REPLY ~(Moving away from him) No! I can't. What will your mother think of me?~ GOTO LT36_st5
  IF ~~ THEN REPLY ~(Burying your head on his chest) All right, take me, my love. Why do we need to wait until tomorrow?~ GOTO LT36_st30
END

IF ~~ THEN BEGIN LT36_st7
  SAY ~(Smiling) I am not afraid. I trust you, girl of no family. Come, I'll show you to our room and our bed. It's time to try it.~
  IF ~~ THEN REPLY ~I will have a look at the room, but trying the bed... sorry, my love, I can't. Please believe me, I just can't!~ GOTO LT36_st5
  IF ~~ THEN REPLY ~(Burying your head on his chest) All right, take me, my love. Why do we need to wait until tomorrow?~ GOTO LT36_st30
END

IF ~~ THEN BEGIN LT36_st8
  SAY ~Then I will carry you to our bed.~
  IF ~~ THEN REPLY ~No! Please, I beg of you Keldorn... don't force me.~ GOTO LT36_st5
  IF ~~ THEN REPLY ~(Burying your head on his chest) All right, take me, my love. Why do we need to wait until tomorrow?~ GOTO LT36_st30
END

IF ~~ THEN BEGIN LT36_st9
  SAY ~No, it's fine. Everything is fine. Sweet dreams, my love. (He kisses you and leaves.)~
  IF ~~ THEN  GOTO LT38_st0
END

IF ~~ THEN BEGIN LT36_st30
  SAY ~(Carrying you into his room and... suddenly Slayer appears.)~
  IF ~~ THEN DO ~SetGlobal("VP_LoveTalk","LOCALS",32) ClearAllActions() StartCutSceneMode() StartCutScene("KRCut24")~ EXIT
END

IF ~~ THEN BEGIN LT38_st0
  SAY ~(You can't sleep. You are tossing and turning, trying to get comfortable, when suddenly a vision appears before your eyes.)~
  = ~(You see an old hag pointing her finger at you, her voice croaking: "A curse on you! You will never be happy with him, you will never know peace!")~
  = ~(Then, for a moment she has Maria Firecam's face, as you gasp she is once again the old hag. You open your eyes, not sure whether it was a dream or real.)~
  = ~(It is very dark in the room and suddenly you are afraid. Fear surrounds you and begins burrowing deep into your heart. You begin to shiver, you feel dizzy and sick.)~
  = ~(All you know is that you don't want to be alone in this room and then you remember Keldorn's offer to exchange rooms. He must have known something, but did not say anything, why you wonder?)~
  = ~(Carefully you get up from the bed, too afraid to light a candle you feel around in the dark for your grown and slippers.)~
  = ~(Silently you slip out to the corridor and head for Keldorn's room. To your relief you find his door is half-open and a light burns within.)~
  IF ~~ THEN GOTO LT38_st10
END

IF ~~ THEN BEGIN LT38_st10
  SAY ~(Putting away a book) You've come. Why, whatever is the matter my dear?~
  IF ~~ THEN REPLY ~I... I do not know. I am scared, I am dreadfully scared. There is something there... in the room...~ GOTO LT38_st11
END

IF ~~ THEN BEGIN LT38_st11
  SAY ~(Drawing you into his arms) There-there... calm down. You are safe here. (Reprovingly) You see, you should have slept here. Tell your Keldorn what it is that has frightened you so, another nightmare?~
  IF ~~ THEN REPLY ~I do not know... I feel strange. I tell you, there's something in that room!~ GOTO LT38_st12
END

IF ~~ THEN BEGIN LT38_st12
  SAY ~I will take a look.  Here, you sit on the bed and wait for me.~
  IF ~~ THEN REPLY ~No! I am coming with you!~ GOTO LT38_st13
  IF ~~ THEN REPLY ~I'm afraid to be alone. Please take me with you, I must be sure myself.~ GOTO LT38_st13
END

IF ~~ THEN BEGIN LT38_st13
  SAY ~(Taking a candle) Let us go then... one moment, where is your amulet? Why have you taken it off?~
  IF ~~ THEN REPLY ~I took it off when I was bathing and then... just forgot to put it back on.~ GOTO LT38_st14
  IF ~~ THEN REPLY ~I... I thought that I would not need it here. You must take Carsomyr!~ GOTO LT38_st14
END

IF ~~ THEN BEGIN LT38_st14
  SAY ~(You go along the corridor, Keldorn pushes the door of your room open and enters, holding the candle in his outstretched hand you see there's no one inside.)~
  = ~(Suddenly he is silent. His features tighten and drops of sweat appear on his forehead. With a warning gesture he grabs Carsomyr and peers into the void.)~
  = ~(Whispering, Keldorn tells you to take your amulet, but you can't move. You try to call out his name but only a harsh croak leaves your mouth.)~
  = ~(Your fiance is no longer looking at you, he is slashing about furiously as if fighting some invisible foe. His blue robe is dark, drenched with sweat as Carsomyr, time and time again, wings hissing through the air.)~
  = ~(You see that Keldorn is tiring and know that he can not last much longer. You make a final effort and stretch your hand for the driad's necklace but at the very same moment you hear a terrible howling in your ears causing your body to shudder violently.)~
  = ~(You feel as if a tightly coiled spring has unwound itself inside you, exploding through your mind. Your body is shaking uncontrollably, your whole being is straining, you are growing taller.)~
  = ~(Your head is thrown back and the muscles in your neck harden as though they are turning to stone... a terrifying shriek builds from the pit of your stomach and traveling up, bursts from your throat.)~
  = ~(Keldorn turns quickly, the horror you see in his eyes stings your heart as surely as if a dagger had pierced it but it is too late, you can not stop yourself now... when you become a Slayer)~
  = ~(You body is filled with strength and power, your sight is clear, and you see abominable shadows, Irenicus's demons... so these are what Keldorn has been fighting.)~
  = ~(You begin slaughtering them and with each one that goes down exhilaration and immense pleasure fills your mind as you relish in the bloodbath. However, your satisfaction is not complete... something is preventing it, a niggling in the back of you mind.)~
  = ~(You concentrate, straining to find the source of the aggravation and suddenly you realize that it is Keldorn shouting at you...) Back! Get back! You are dying!~
  = ~(The truth of his words suddenly fill your mind and you struggle to hang on to the remnants of your consciousness. All power leaves you and darkness rolls over you as you return to your human form.)~
  = ~(Consciousness is slowly and unwillingly returning to you, and with it comes pain. You feel revulsion as everything comes back to you. You clearly remember everything - your transformation and worst of all, the fear in the eyes of your beloved.)~
  = ~(Keldorn was afraid of you, a monster breaking  free despite your will. This is the end... the end of your happiness and of your dreams. There is nothing to be done, a wedding is out of the question.)~
  = ~(It is all your own fault, only you are to blame because once again you did not heed advice and through your stubbornness, you exposed your beloved to danger.)~
  = ~(You open your eyes and find yourself lying in Keldorn's bed. He is kneeling beside you, with his head resting on the edge. Your hand touches your fiance's and his head jerks up suddenly...)~
  = ~You have recovered! I was so afraid that you would never again regain consciousness. My darling, I almost ruined you, forgive me please, I beg you!~
  IF ~~ THEN REPLY ~You? Why, what has this to do with you? This is all my fault, I did not listen to you!~ GOTO LT38_st16
  IF ~~ THEN REPLY ~(Quietly) This is a sign, Keldorn. We can't be together.~ GOTO LT38_st17
  IF ~~ THEN REPLY ~He's won, he's stronger.~ GOTO LT38_st18
END

//State 15 is omitted

IF ~~ THEN BEGIN LT38_st16
  SAY ~No! This has come about through my folly, my mistrust. My brave girl, does she get scared?~
  = ~(Quietly) My virtuous bride, can she not come to me at night without a reason? I thought I could protect you by marrying you and... (his voice drops to almost a whisper.) by taking your virginity.~
  = ~I misinterpret your dream ' remember? ' and almost lost you forever. The first thing we must do is kill that damned mage and return that which he tore from you!~
  = ~Forgive me, I'm so sorry. I should not have rushed you into a wedding, I can see that you are not yet ready.~
  IF ~~ THEN REPLY ~Rushed... rushed?! Maybe it is you who has changed your mind now that you realize your bride is a monster?!~ GOTO LT38_st19
  IF ~~ THEN REPLY ~I... I did not keep my word, I promised not to turn into the slayer, so I free you from your promise my love. I stupidly thought that I could control my essence but I was mistaken. I can promise you nothing, nothing at all.~ GOTO LT38_st19
END

IF ~~ THEN BEGIN LT38_st17
  SAY ~What sign, what are you talking about?~
  IF ~~ THEN REPLY ~Don't you understand? Your ex-wife... I saw her. She condemned me! She is right, sweetheart... we can't build our happiness on another's misfortune. Your girls, your daughters will always stand between us! Were they alive, they would never accept me.~ GOTO LT38_st22
END

IF ~~ THEN BEGIN LT38_st18
  SAY ~Never... don't even think that! He can't win, he's evil. We have light on our side, my love, and light is stronger than any evil.~
  = ~Remember, since I have decided to join my life with the life of a daughter of Bhaal, I will do everything possible and impossible to save you, even from yourself. I love you and I will always love you no matter what.~
  = ~Now hush, no more arguing with me, I am a redeemer after all. Let us get some sleep my love.~
  IF ~~ THEN DO ~SetGlobal("VP_LoveTalk","LOCALS",36) SetGlobal("Kr_Slayer_Talk","GLOBAL",1) RealSetGlobalTimer("VP_KrRomance_Timer","GLOBAL",5) ClearAllActions() StartCutSceneMode() Wait(4) RestParty() EndCutSceneMode()~ EXIT
END

IF ~~ THEN BEGIN LT38_st19
  SAY ~But I love you! Whatever happens know this: I do love you. And I am not going to give you up, not to any slayer nor to Kelemvor. Let him seek another ally.~
  = ~Look... (Keldorn carefully turns your head) See the symbol over there? My father put it there a long time ago, when I was just a boy. Demons are afraid of it and they will never enter the room.~
  = ~That amulet that queen Vaelasa gave you possesses the same kind of power. That is why I asked you to never take it off, at least, not until we best Irenicus.~
  IF ~~ THEN REPLY ~But... how do you know?~ GOTO LT38_st20
  IF ~~ THEN REPLY ~Irenicus? How come he knows I am still alive?~ GOTO LT38_st21
END

IF ~~ THEN BEGIN LT38_st20
  SAY ~(Softly) Did you forget that you are marrying a redeemer? I have some experience in this kind of thing you know but hush now, you need to sleep my love. Here, let me tuck you in. Sleep my darling.~
  IF ~~ THEN DO ~SetGlobal("VP_LoveTalk","LOCALS",36) SetGlobal("Kr_Slayer_Talk","GLOBAL",1) RealSetGlobalTimer("VP_KrRomance_Timer","GLOBAL",5) ClearAllActions() StartCutSceneMode() Wait(4) RestParty() EndCutSceneMode()~ EXIT
END

IF ~~ THEN BEGIN LT38_st21
  SAY ~You killed Bodhi, his sister, that wouldn't have escaped his notice but hush now, you need to sleep my love. We have a big day ahead of us tomorrow. Sleep my darling.~
  IF ~~ THEN DO ~SetGlobal("VP_LoveTalk","LOCALS",36) SetGlobal("Kr_Slayer_Talk","GLOBAL",1) RealSetGlobalTimer("VP_KrRomance_Timer","GLOBAL",5) ClearAllActions() StartCutSceneMode() Wait(4) RestParty() EndCutSceneMode()~ EXIT
END

IF ~~ THEN BEGIN LT38_st22
  SAY ~(With a sigh) As a step-mother... no, but... is this the reason? I saw how you grieved over Gorion, but how could I fail to understand that?~
  = ~You wept over Ajantis ' did I have a right to be jealous? Gorion, Ajantis, Khalid... they will be with you forever and I do not want you to forget them. The same with me my dear <CHARNAME>.~
  = ~I also do not want to forget either Maria or my girls. They will always remain with me, in my memory but it does not mean they will take your place. Even if I forget them, I could not possibly love you more.~
  = ~I can't live without you... (sighs) but hush now, it is time for you to sleep my love. We have a big day ahead of us tomorrow so no more bad thoughts and remember, whatever happens I love you.~
  IF ~~ THEN DO ~SetGlobal("VP_LoveTalk","LOCALS",36) SetGlobal("Kr_Slayer_Talk","GLOBAL",1) RealSetGlobalTimer("VP_KrRomance_Timer","GLOBAL",5) ClearAllActions() StartCutSceneMode() Wait(4) RestParty() EndCutSceneMode()~ EXIT
END

END