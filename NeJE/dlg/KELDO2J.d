APPEND ~KELDO25J~

//First banter about Sarevok
IF WEIGHT #-1 ~Global("VP_BSarevok","LOCALS",2)~ THEN BEGIN SB1_st0
  SAY ~I have something serious to discuss with you, <CHARNAME>. Your brother Sarevok, he is a servant of darkness, how can you trust him! Aren't you constantly thinking if he will stick a dagger in your back, or chop off your head when you're sleeping?~
  	IF ~~ THEN REPLY ~This is not like you, Keldorn! How can you say this about my brother? Please understand, that he's family, and how I can't trust him? Wasn't it you who said, that a paladin's first duty is to save lost souls? And now you deny that chance to my only brother?~ GOTO SB1_st1
  	IF ~~ THEN REPLY ~(Frustratingly) But he is my brother, my kin. I killed him once, and now you want me to kill him again? Do I have the right to push him away, when he is in such need of my help? Please, let him stay, my love.~ GOTO SB1_st2
  	IF ~~ THEN REPLY ~(Crafty) Keldorn, my love, did I ask for your advice? Do you remember the sahuagins, do you remember the old priestess, who cared so much about her tribe? You said she was a servant of darkness too. And her daughter, do you remember her?~ GOTO SB1_st3
END

IF ~~ THEN BEGIN SB1_st1
  SAY ~Your only brother... Yes, you're right, I'm wrong. You are performing your duty to your brother, Torm would not disapprove of your actions (he smiles and kisses you). You have made me feel ashamed of myself, my love.~
  IF ~~ THEN DO ~SetGlobal("VP_BSarevok","LOCALS",3)
SetGlobal("VP_Kr_NextTalk","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN SB1_st2
  SAY ~You ask my permission to spare your brother's life? It unsettles me, that I have put you in a position to make such a choice. Please, forgive me. Henceforth I will not advise you on how to act towards your... relatives.~
  IF ~~ THEN DO ~SetGlobal("VP_BSarevok","LOCALS",3)
SetGlobal("VP_Kr_NextTalk","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN SB1_st3
  SAY ~(Grows dark) Yes, I remember... That was a hard lesson to learn. A priestess, a worthy elderly woman, she sacrificed herself for the sake of her people; she raised a daughter, and taught her serving her tribe selflessly.~
=
~I am ashamed of what I said back then. Yes, you're right to remind me of my shame. You are wiser, you seem to instantly understand the essence of those you speak with, so do as you deem worthy. I won't give further you any advice or make any claims... at least I'll try not to.~
  IF ~~ THEN DO ~SetGlobal("VP_BSarevok","LOCALS",3)
SetGlobal("VP_Kr_NextTalk","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN BA0
  SAY ~(Confused) Oh, please, Miss... But to sing of course!~
  IF ~~ THEN EXTERN ~SARBARD~ 1
END

IF ~~ THEN BEGIN BA1
  SAY ~(Emotionally) Beautiful song, young lady! However, what are you doing here, in this doomed city? How did you come to Saradush?~
  IF ~~ THEN EXTERN ~SARBARD~ 2
END

IF ~~ THEN BEGIN BA2
  SAY ~Forgive me, child, but we cannot take you beyond the city walls. Nevertheless, you should not lose hope! If anyone is capable of rescuing Saradush, then this lady it is. However, she is a daughter of Bhaal...~
  IF ~~ THEN EXTERN ~SARBARD~ 3
END

//LT4-TOB - First Love Talk in ToB
IF WEIGHT #-2 ~Global("VP_ToB_LoveTalk","LOCALS",2)~ THEN BEGIN LT4TOB_0
  SAY ~I am desperate, my love. Now I see, what an uneasy time I've chosen for our wedding, and I understand that there will be time for it no soon. I am afraid to think of what could've happened, if the slayer wouldn't have warned you.~ [theme5]
=
~Why didn't I think that Irenicus's threats were not as empty as they seemed to be? I couldn't even imagine that death would threaten you. I love you, <CHARNAME>, and I want you to be my wife.~
=
~But, if you will decide otherwise, I will not hold you to the promise you made. Though it will be very hard for me, my only love.~
  	IF ~~ THEN REPLY ~Everything has changed so unexpectedly, my love. I have found my another sister, only to kill her. My second brother has the whole city under siege, and it's filled with my brothers and sisters. My third brother hides like the coward he is, unwilling to save neither them, nor himself. Why are you speaking about wedding, my love? How can I think about my own happiness, when there is so much suffering all around us?~ GOTO LT4TOB_1
  	IF ~~ THEN REPLY ~Wedding... Yes, there were times, when I have dreamed about wedding, but now I cannot even think about it! I will ruin your life, my love. I am not suited for simple human happiness. Forgive me, please.~ GOTO LT4TOB_2
  	IF ~~ THEN REPLY ~I will not decide otherwise, my love! I adore you and I want to be your wife. But we can't have our wedding here, can we? We should choose a better time and place for the wedding.~ GOTO LT4TOB_3
END

IF ~~ THEN BEGIN LT4TOB_1
  SAY ~Yes, you are right, my dear. I will not hurry your decision. I have waited so long for the joy your love will bring. So I can wait a little longer if need be (he kisses you).~
  	IF ~~ THEN REPLY ~(Gently) I am so ashamed my dear, and I am terribly sorry for Frida, who has sewn such a beautiful dress for me. I have never worn such an elegant dress before. Such a luxurious dress, Keldorn. And the poor girl was in such a haste and all for vain. But, I will marry you, I promise!~ GOTO LT4TOB_3
  	IF ~~ THEN REPLY ~(Looking him in the eyes) How long will you wait for me, Keldorn? Until I deal with all my brothers and sisters?~ GOTO LT4TOB_4
  	IF ~~ THEN REPLY ~But what happens, if I don't win? We are greatly outnumbered. What if I fall in this battle? The Gods have not promised us victory - neither Solar, nor Kelemvor.~ GOTO LT4TOB_5
END

IF ~~ THEN BEGIN LT4TOB_2
  SAY ~(Turning pale) You... you are refusing to marry me? Don't you love me anymore? I do not even know what to say. I must think, I... I am not able to think straight right now.~
  IF ~~ THEN DO ~SetGlobal("VP_ToB_LoveTalk","LOCALS",3)
SetGlobal("VP_Kr_NextTalk","GLOBAL",4)~ EXIT
END

IF ~~ THEN BEGIN LT4TOB_3
  SAY ~(Hugs you) We will choose the perfect time and the place, my dear. I will think long and hard on this.~ 
  IF ~~ THEN DO ~SetGlobal("VP_ToB_LoveTalk","LOCALS",3)
SetGlobal("VP_Kr_NextTalk","GLOBAL",4)~ EXIT
END

IF ~~ THEN BEGIN LT4TOB_4
  SAY ~(Firmly) As I already said, as long as it takes, my love. I know how to wait.~
  IF ~~ THEN DO ~SetGlobal("VP_ToB_LoveTalk","LOCALS",3)
SetGlobal("VP_Kr_NextTalk","GLOBAL",4)~ EXIT
END

IF ~~ THEN BEGIN LT4TOB_5
  SAY ~(His voice shivers a bit) Do not say so, my love!~
=
~(More firmly) Do not think about defeat; let your thoughts be only about victory! I will disturb you no more with discussions about our wedding.~
  IF ~~ THEN DO ~SetGlobal("VP_ToB_LoveTalk","LOCALS",3)
SetGlobal("VP_Kr_NextTalk","GLOBAL",4)~ EXIT
END

IF ~~ THEN BEGIN LoveOne0
  SAY ~You're wrong, she does not bring me any pain.~
  IF ~~ THEN EXTERN ~HGWRA01~ 24
END

IF ~~ THEN BEGIN LoveOne1
  SAY ~How dare you speak so, Leona! Where did you learn such words?~
   IF ~~ THEN EXTERN ~LEONA~ KR1
END 
  
IF ~~ THEN BEGIN LoveOne2
  SAY ~Leona! Leona, dear, how can you say that? I have always loved you and Vesper, it is my service in the Order that took so much of my time. I've always wanted to be with you, but your mother...~
   IF ~~ THEN EXTERN ~LEONA~ KR2
END   
  
IF ~~ THEN BEGIN LoveOne3
  SAY ~(Choking with tears) I... I truly am guilty! I couldn't show you my love and I couldn't find your murderers, you are right... If only I could have been there with you...~
    IF ~~ THEN EXTERN ~LEONA~ KR4
END  
  
IF ~~ THEN BEGIN LoveOne4
  SAY ~Leona!~
  	IF ~~ THEN REPLY ~Leona, do not torture your father, he has been tortured enough. I am the one who is guilty of your death!~ EXTERN ~HGWRA01~ 25
  	IF ~~ THEN REPLY ~Gorion, stop it! He does not deserve such tortures!~ EXTERN ~HGWRA01~ 25
  	IF ~~ THEN REPLY ~Keldorn, it is not Leona and Vesper, but only ghosts!~ EXTERN ~HGWRA01~ 25
END

//LT12-TOB - Dialogue with Torm, then morning dialogue
IF WEIGHT #-3 ~Global("VP_ToB_LoveTalk","LOCALS",9)~ THEN BEGIN LT12st15
  SAY ~Torm, my lord, my master! Was I right to do this? Should I have been so fast to take her virginity? Have I destroyed her power? I am still not sure I had the right to do that. Please, grant me guidance, Torm!~
    IF ~~ THEN EXTERN ~TORM~ 3
END  

IF ~~ THEN BEGIN LT12Tor1
  SAY ~Perhaps? Are you not sure, my lord?~
    IF ~~ THEN EXTERN ~TORM~ 4
END

IF ~~ THEN BEGIN LT12Tor2
  SAY ~Thank you, my lord.~
    	IF ~~ THEN DO ~SetGlobal("VP_ToB_LoveTalk","LOCALS",10)
ClearAllActions()
StartCutSceneMode()
StartCutScene("KRCut31")~ EXIT
END

//LT12-TOB - Morning dialogue
IF WEIGHT #-4 ~Global("VP_ToB_LoveTalk","LOCALS",10)~ THEN BEGIN LT12st16
  SAY ~(You open your eyes and you see that Keldorn is still sleeping. You rise up on one elbow and to look at him. Suddenly you understand that you are seeing him so calm and happy for the first time. Like all the ghosts were left in the past, and nothing disturbs him, even your frightening future. Not being able to help yourself, gently you touch your lips to his, but suddenly he opens his eyes.)~ [theme5]
=
~(He hugs you tenderly) Good morning, my beloved wife! Don't be so surprised at my happiness, because you are my wife now, in the eyes of the gods and the people. Torm himself blessed our marriage, and I think Kelemvor will do the same.~
  	IF ~~ THEN REPLY ~(Smile happy) Good morning, my dear husband!~ GOTO LT12st17
  	IF ~~ THEN REPLY ~(A little confused) I... I do not even know what to say. Only, that I love you.~ GOTO LT12st18
  	IF ~~ THEN REPLY ~(Seriously) I woke early and was watching you sleep. I never imagined that I would see such a serene smile on your face. I feel a little responsible now for your expectations not being vain.~ GOTO LT12st19
END

IF ~~ THEN BEGIN LT12st17
  SAY ~(With naughty twinkle in his eyes) I do not think that our... how can I put this...joint dream, slipped away from our friends' attention. Be ready for many questions.~
  IF ~!InParty("Mazzy")
!InParty("Sarevok")
!InParty("Jaheira")
!InParty("Imoen2")~ THEN DO ~SetGlobal("VP_ToB_LoveTalk","LOCALS",11)
SetGlobalTimer("VP_ToB_Kr_Timer","GLOBAL",ONE_DAY)~ EXIT
	IF ~InParty("Imoen2")~ EXTERN ~IMOEN25J~ KRst0
	IF ~InParty("Jaheira")~ EXTERN ~JAHEI25J~ KRst0
	IF ~InParty("Sarevok")~ EXTERN ~SAREV25J~ KRst0
	IF ~InParty("Mazzy")~ EXTERN ~MAZZY25J~ KRst0
END

IF ~~ THEN BEGIN LT12st18
  SAY ~(Silently) You have already said what's most important. Nothing else matters.~
  IF ~!InParty("Mazzy")
!InParty("Sarevok")
!InParty("Jaheira")
!InParty("Imoen2")~ THEN DO ~SetGlobal("VP_ToB_LoveTalk","LOCALS",11)
SetGlobalTimer("VP_ToB_Kr_Timer","GLOBAL",ONE_DAY)~ EXIT
	IF ~InParty("Imoen2")~ EXTERN ~IMOEN25J~ KRst0
	IF ~InParty("Jaheira")~ EXTERN ~JAHEI25J~ KRst0
	IF ~InParty("Sarevok")~ EXTERN ~SAREV25J~ KRst0
	IF ~InParty("Mazzy")~ EXTERN ~MAZZY25J~ KRst0
END

IF ~~ THEN BEGIN LT12st19
  SAY ~(He looks on you from above) I was afraid, you know, that I would appear... in capable. But you were so tender, so sweet that all my fears appeared to be vain. Am I saying something wrong (his face becomes red from confusion).~
  	IF ~~ THEN REPLY ~(Shy) Please, tell me, are you happy?~ GOTO LT12st20
  	IF ~~ THEN REPLY ~(Your face becomes red too) But I know nothing of it. I mean, Jaheira has told something to me, and Imoen too, but I still do not know, how to do it right. Maybe, I can try again?~ GOTO LT12st21
  	IF ~~ THEN REPLY ~(With delight) But I am so happy to hear that!~ GOTO LT12st22
END

IF ~~ THEN BEGIN LT12st20
  SAY ~(With a happy, shiny smile on his face) Look at me! Are you still being uncertain? Of course, I am happy, my dearest!~
  IF ~!InParty("Mazzy")
!InParty("Sarevok")
!InParty("Jaheira")
!InParty("Imoen2")~ THEN DO ~SetGlobal("VP_ToB_LoveTalk","LOCALS",11)
SetGlobalTimer("VP_ToB_Kr_Timer","GLOBAL",ONE_DAY)~ EXIT
	IF ~InParty("Imoen2")~ EXTERN ~IMOEN25J~ KRst0
	IF ~InParty("Jaheira")~ EXTERN ~JAHEI25J~ KRst0
	IF ~InParty("Sarevok")~ EXTERN ~SAREV25J~ KRst0
	IF ~InParty("Mazzy")~ EXTERN ~MAZZY25J~ KRst0
END

IF ~~ THEN BEGIN LT12st21
  SAY ~(Gently kisses you in the lips) Jaheira hasn't warned you, has she? Women shouldn't have much for the first time. I can hurt you, and you... will be afraid. Be patient, my love.~
  IF ~!InParty("Mazzy")
!InParty("Sarevok")
!InParty("Jaheira")
!InParty("Imoen2")~ THEN DO ~SetGlobal("VP_ToB_LoveTalk","LOCALS",11)
SetGlobalTimer("VP_ToB_Kr_Timer","GLOBAL",ONE_DAY)~ EXIT
	IF ~InParty("Imoen2")~ EXTERN ~IMOEN25J~ KRst0
	IF ~InParty("Jaheira")~ EXTERN ~JAHEI25J~ KRst0
	IF ~InParty("Sarevok")~ EXTERN ~SAREV25J~ KRst0
	IF ~InParty("Mazzy")~ EXTERN ~MAZZY25J~ KRst0
END

IF ~~ THEN BEGIN LT12st22
  SAY ~(He hugs you strong, but gently, while bursting out in laughter.)~
  IF ~!InParty("Mazzy")
!InParty("Sarevok")
!InParty("Jaheira")
!InParty("Imoen2")~ THEN DO ~SetGlobal("VP_ToB_LoveTalk","LOCALS",11)
SetGlobalTimer("VP_ToB_Kr_Timer","GLOBAL",ONE_DAY)~ EXIT
	IF ~InParty("Imoen2")~ EXTERN ~IMOEN25J~ KRst0
	IF ~InParty("Jaheira")~ EXTERN ~JAHEI25J~ KRst0
	IF ~InParty("Sarevok")~ EXTERN ~SAREV25J~ KRst0
	IF ~InParty("Mazzy")~ EXTERN ~MAZZY25J~ KRst0
END

IF ~~ THEN BEGIN LT12_Mz0
	SAY ~(Smiles imperceptibly) Mazzy, of course, my girl.~
  		IF ~~ THEN EXTERN ~MAZZY25J~ KRst1 
END 

IF ~~ THEN BEGIN LT12_Mz1
	SAY ~Mazzy...~
  		IF ~~ THEN EXTERN ~MAZZY25J~ KRst2 
END 

IF ~~ THEN BEGIN LT12_Mz2
	SAY ~In common sense of this word, no.~
  		IF ~~ THEN EXTERN ~MAZZY25J~ KRst3 
END 

IF ~~ THEN BEGIN LT12_Mz3
	SAY ~(Takes her hand) Mazzy, are you judging me?~
  		IF ~~ THEN EXTERN ~MAZZY25J~ KRst4 
END 

IF ~~ THEN BEGIN LT12_Mz4
	SAY ~I love her. She loves me. We were going to have a wedding, but you do know what happened.~
  		IF ~~ THEN EXTERN ~MAZZY25J~ KRst5 
END 

IF ~~ THEN BEGIN LT12_Mz5
	SAY ~The slayer is torturing her, confusing her. I had to interfere! Do you understand?~
  		IF ~~ THEN EXTERN ~MAZZY25J~ KRst6 
END 

IF ~~ THEN BEGIN LT12_Mz6
	SAY ~(Thinks for himself) You are a good girl, that's why you understand. But, The High Order of the Radiant Heart might not be so easily persuaded without Torm's interference.~
  IF ~!InParty("Sarevok")
!InParty("Jaheira")
!InParty("Imoen2")~ THEN DO ~SetGlobal("VP_ToB_LoveTalk","LOCALS",11)
SetGlobalTimer("VP_ToB_Kr_Timer","GLOBAL",ONE_DAY)~ EXIT
	IF ~InParty("Imoen2")~ EXTERN ~IMOEN25J~ KRst0
	IF ~InParty("Jaheira")~ EXTERN ~JAHEI25J~ KRst0
	IF ~InParty("Sarevok")~ EXTERN ~SAREV25J~ KRst0
END

IF ~~ THEN BEGIN LT12_Sr0
	SAY ~(Firmly clasps the offered hand) Thank you, Sarevok. I am glad you understood and supported us.~
  		IF ~~ THEN EXTERN ~SAREV25J~ KRst1 
END 	
	
IF ~~ THEN BEGIN LT12_Sr1
	SAY ~(With a smile on his face) But now are you sure she is happy?~
  		IF ~~ THEN EXTERN ~SAREV25J~ KRst2 
END 

IF ~~ THEN BEGIN LT12_Sr2
	SAY ~(Returning a smile) Good to know that~
  IF ~!InParty("Jaheira")
!InParty("Imoen2")~ THEN DO ~SetGlobal("VP_ToB_LoveTalk","LOCALS",11)
SetGlobalTimer("VP_ToB_Kr_Timer","GLOBAL",ONE_DAY)~ EXIT
	IF ~InParty("Imoen2")~ EXTERN ~IMOEN25J~ KRst0
	IF ~InParty("Jaheira")~ EXTERN ~JAHEI25J~ KRst0
END

IF ~~ THEN BEGIN LT12_Jh0
	SAY ~Jaheira, my dear, what are you talking about?~
  		IF ~~ THEN EXTERN ~JAHEI25J~ KRst1 
END 	

IF ~~ THEN BEGIN LT12_Jh1
	SAY ~(Laughingly) Dear Jaheira, I have never doubted that we would have this discussion. What do you want to tell me? Are you judging us?~
  		IF ~~ THEN EXTERN ~JAHEI25J~ KRst2 
END

IF ~~ THEN BEGIN LT12_Jh2
	SAY ~(Smiling) So what is it that you want to say, Jaheira?~
  		IF ~~ THEN EXTERN ~JAHEI25J~ KRst3 
END

IF ~~ THEN BEGIN LT12_Jh3
	SAY ~(Seriously) In that you can be absolutely sure, Jaheira.~
  IF ~!InParty("Imoen2")~ THEN DO ~SetGlobal("VP_ToB_LoveTalk","LOCALS",11)
SetGlobalTimer("VP_ToB_Kr_Timer","GLOBAL",ONE_DAY)~ EXIT
	IF ~InParty("Imoen2")~ EXTERN ~IMOEN25J~ KRst0
END

IF ~~ THEN BEGIN LT12_Im0
	SAY ~(Smiling) Imoen, I heard nothing.~
  IF ~~ THEN DO ~SetGlobal("VP_ToB_LoveTalk","LOCALS",11)
SetGlobalTimer("VP_ToB_Kr_Timer","GLOBAL",ONE_DAY)~ EXIT
END

IF ~~ THEN BEGIN Bz0
	SAY ~You fail to understand your duty, Balthazar. You're not seeing the obvious. You consider yourself as a righteous person, having your sister accused in advance without giving her a chance to prove you wrong.~
  		IF ~~ THEN EXTERN ~BALTH~ KR0
END 

IF ~~ THEN BEGIN Bz1
	SAY ~Yes, I will. I am a paladin of Torm, God of duty, and I am going to teach you, monk. And you will listen to what I have to say, even if you do not want to.~
  		IF ~~ THEN EXTERN ~BALTH~ KR1
END 

IF ~~ THEN BEGIN Bz2
	SAY ~Your duty, Balthazar, is to serve the powers of Good. Help those who are in the service of these powers. Trust them. Tell me, why don't you believe your sister, my bride?~
  		IF ~~ THEN EXTERN ~BALTH~ KR2
END 

IF ~~ THEN BEGIN Bz2n
	SAY ~Your duty, Balthazar, is to serve the powers of Good. Help those who are in the service of these powers. Trust them. Tell me, why don't you believe your sister?~
  		IF ~~ THEN EXTERN ~BALTH~ KR3
END 

IF ~~ THEN BEGIN Bz3
	SAY ~Yes. When this all ends, we are going to be married.~
  		IF ~~ THEN EXTERN ~BALTH~ KR3
END 

IF ~~ THEN BEGIN Bz4
	SAY ~I am truly hoping that she does not. You do understand that one can not be absolutely sure in something?~
  		IF ~~ THEN EXTERN ~BALTH~ KR4
END 

IF ~~ THEN BEGIN Bz5
	SAY ~But what if you... won't be able to kill her? Or yourself? Have you thought about that, Balthazar?~
  		IF ~~ THEN EXTERN ~BALTH~ KR5
END 

IF ~~ THEN BEGIN Bz6
	SAY ~(Shaking his head) There is nothing heroic in pointless death, Balthazar. If you do not want to become a new god, then give up your legacy!~
  		IF ~~ THEN EXTERN ~BALTH~ KR6
END 

//IF ~~ THEN BEGIN Bz7
//	SAY ~You are going to have to trust our word. Her word and mine. There is no other way, Balthazar. It is your duty to trust.~
//  		IF ~~ THEN EXTERN ~BALTH~ KR7
//END

IF ~~ THEN BEGIN KREND_0
	SAY ~(Confusedly) So the moment I was so afraid is at hand. I... should give you an advice? Forgive me, but I can't. I can only say that I love you.~
=
~Yes, I know how you want to stop this evil once and for all! But... but I don't see a place for me. Forgive my selfish words, but I can't imagine life without you. I grown so fond of you during this time we have spent together.~
=
~<CHARNAME>, no matter what I say, you should decide for yourself. I will accept whatever choice you make, so do not look to me. It is you - the daughter of a god, we are just standing at your side and none of us have the right to influence your decision.~
=
~I'm asking all of you: please, do not persuade her. She is wise; she has already made many difficult decisions, so we shall trust her judgment this time as well. Because if she listens to me, or any of you, then she will regret it.~
=
~I am very grateful to you, <CHARNAME>. You have allowed me to love, and to feel loved again, so what else can I possibly say? Demand for you to decline something, that is yours by right? No, my love. Make your decision and don't worry about me. I will understand. You are making a difficult decision, that is yours alone to make.~
  		IF ~~ THEN EXTERN ~FINSOL01~ KR0
END	

IF ~~ THEN BEGIN KREND_1
	SAY ~Yes, Solar. I have no use for it. (Solar takes legacy from Keldorn)~
=
~(He reels and leans on his sword) Oh... I had forgotten how it feels to be old.~
  IF ~True()~ THEN EXTERN ~FINSOL01~ 28
  IF ~InParty("Valygar")
!Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYG25J~ 2
  IF ~InParty("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~ANOME25J~ 10
  IF ~InParty("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~VICON25J~ 6
  IF ~InParty("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~AERIE25J~ 7
  IF ~InParty("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~JAHEI25J~ 7
  IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN25J~ 15
  IF ~InParty("Sarevok")
!Alignment("Sarevok",MASK_EVIL)~ THEN EXTERN ~SAREV25J~ 2
  IF ~InParty("Sarevok")
Alignment("Sarevok",MASK_EVIL)~ THEN EXTERN ~SAREV25J~ 3
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSC25J~ 0
  IF ~InParty("Nalia")~ THEN EXTERN ~NALIA25J~ 1
  IF ~InParty("HaerDalis")~ THEN EXTERN ~HAERD25J~ 1
  IF ~InParty("Jan")~ THEN EXTERN ~JAN25J~ 3
  IF ~InParty("Cernd")~ THEN EXTERN ~CERND25J~ 0
  IF ~InParty("Mazzy")~ THEN EXTERN ~MAZZY25J~ 0
  IF ~InParty("Edwin")~ THEN EXTERN ~EDWIN25J~ 0
  IF ~InParty("Korgan")~ THEN EXTERN ~KORGA25J~ 2
END

IF ~~ THEN BEGIN KRENDst1
	SAY ~For a moment, I thought I was going to die, I swear... (He drops his helmet and hugs you strongly) I still don't understand what you have found in an old man like me. But does it matter? Our child and his well-being is what's most important now.~
		IF ~True()~ THEN EXTERN ~FINSOL01~ KR6
		IF ~InParty("Imoen2")
!Dead("Imoen2")~ THEN EXTERN ~IMOEN25J~ KRst8
		IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~JAHEI25J~ KRst4
		IF ~InParty("Sarevok")
!Dead("Sarevok")~ THEN EXTERN ~SAREV25J~ KRst3
END

IF ~~ THEN BEGIN KRENDs1A
	SAY ~Will Bhaal be reborn in her body?~
		IF ~~ THEN EXTERN ~KELEMVOR~ K16
END

IF ~~ THEN BEGIN KRENDs1B
	SAY ~You will take her away, mighty Kelemvor?~
		IF ~~ THEN EXTERN ~KELEMVOR~ K17
END

IF ~~ THEN BEGIN KRENDs1C
	SAY ~(Leans his head) As you command, mighty Kelemvor.~
		IF ~~ THEN DO ~SetGlobal("VP_Kr_Epilogue","GLOBAL",1)
ActionOverride("Kelemvo1",DestroySelf())~ EXTERN ~FINSOL01~ 33 //remove Kelemvor
END

IF ~~ THEN BEGIN KRENDst2
	SAY ~As I already said to you, I do understand. But our child's destiny troubles me. Will you be able to give birth, being a goddess? Won't you lose him while rising?~
		IF ~~ THEN EXTERN ~FINSOL01~ KR7	
END

IF ~~ THEN BEGIN KRENDst3
	SAY ~(He hugs you) I am so happy! We will get back to our castle, have our wedding and I hope, we will have our children very soon. Do not laugh, my dear. The Solar left something for me, and I feel myself so much younger and stronger now.~
		IF ~True()~ THEN EXTERN ~FINSOL01~ KR9
		IF ~InParty("Imoen2")
!Dead("Imoen2")~ THEN EXTERN ~IMOEN25J~ KRst5
		IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~JAHEI25J~ KRst6
		IF ~InParty("Sarevok")
!Dead("Sarevok")~ THEN EXTERN ~SAREV25J~ KRst5
END

IF ~~ THEN BEGIN KRENDst4
	SAY ~Why do you say so, my love? Duty calls you, I can understand that. Pain and emptiness awaits me while being without you, but I will bear it. You are going to battle against evil, and I am going to pray for you, asking Torm to help you henceforth.~
=
~Don't worry about me, I will leave with the memory of our love, and it will be enough till the end of my life and there is not much of it left.~
		IF ~True()~ THEN EXTERN ~FINSOL01~ KR10
		IF ~InParty("Imoen2")
!Dead("Imoen2")~ THEN EXTERN ~IMOEN25J~ KRst4
		IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~JAHEI25J~ KRst7
		IF ~InParty("Sarevok")
!Dead("Sarevok")~ THEN EXTERN ~SAREV25J~ KRst6
END
END

ADD_TRANS_TRIGGER KELDO25J 0 ~!Global("VP_ToB_KrBanters","GLOBAL",1)~ DO 0
EXTEND_BOTTOM KELDO25J 0
  IF ~Global("VP_ToB_KrBanters","GLOBAL",1)~ THEN GOTO KREND_0
END

CHAIN IF WEIGHT #-15 ~Global("VP_BKeldorn","LOCALS",2)~ THEN  
BSAREV25 SarKeld1
  ~I have a question for you, Paladin. What kind of relationship do you have with my sister?~
DO ~SetGlobal("VP_BKeldorn","LOCALS",3)
SetGlobal("VP_Kr_NextTalk","GLOBAL",2)~
== BKELDO25 ~I love your sister, Sarevok, and I want to marry her. Actually, our wedding should have already taken place, but... (he grows dark).~
== BSAREV25 ~But it did not. Don't you think, paladin, that it would be wise to learn my opinion on this matter? I am her older brother, after all!~
== BKELDO25 ~(Confused) Yes, but at that time... You're right, of course, since our wedding has not taken place, <CHARNAME> is free from her promise. In that case, let me make it official,  Sarevok, I am formally asking for your sister's hand in marriage. I love her, and I want her to be my wife, Lady Firecam.~
== BSAREV25 ~(Grinning) Don't make haste, paladin. I not sure of my sister's opinion on this, maybe she has changed her mind? Maybe she has decided to become a goddess? Do not forget, paladin, whom you are dealing with. I can swear that <CHARNAME> is the most powerful child of Bhaal and she is worthy to take his throne like no other! No kidding, paladin, I will understand if she decides to abandon love.~
== BKELDO25 ~Wait! Allow me to speak with her myself. I promise, I won't insist. Give me this one last chance.~
== BSAREV25 ~Last chance? Well... So be it, Keldorn. Speak with my sister. I will not influence her on this matter. I'll let her make her own decision.~
EXIT

CHAIN IF WEIGHT #-16 ~Global("VP_BKeldorn","LOCALS",5)~ THEN  
BSAREV25 SarKeld2
  ~Though my sister hasn't given her final answer, paladin, we can celebrate our meeting with a glass of good wine.~
DO ~SetGlobal("VP_BKeldorn","LOCALS",6)
SetGlobal("VP_Kr_NextTalk","GLOBAL",3)~
== BKELDO25 ~My edicts do not condone drunkenness, Sarevok.~
== BSAREV25 ~Am I offering you to get drunk? I am offering a drink for the sake of our acquaintance, or do you refuse to drink with such an evil as myself?~
== BKELDO25 ~(Reconciliatory) Believe me Sarevok, I did not mean to offend you. So be it, let us drink for the sake of our acquaintance.~
== BSAREV25 ~Tavern keeper, bring us wine! So, Keldorn, you want to marry my sister. This means, that she will not take her father's throne. I doubt that she will leave you after she marries you. Are you wondering why I am paying so much attention to this? I feel a strange tenderness towards my sister. She... she is the only family, I have. Moreover, I am the only family she has, paladin! Do you truly understand this?~
== BKELDO25 ~(Sips from his glass) Yes. <CHARNAME> has told me how she blamed herself for your death. Especially, because she promised Tamoko that she would not kill you.~
== BSAREV25 ~Tamoko? She did not kill Tamoko? Then who did?~
== BKELDO25 ~We do not know, Sarevok, I swear to you. But you can ask anyone, and they will confirm that <CHARNAME> did not kill Tamoko! They left as allies. They wanted to save you from evil! And from death.~
== BSAREV25 ~(Deafly) I remember. I remember, how she shouted to me in the temple: "I have just found you, why can't we talk? Why can't we fight side by side, why should we bare our swords against each other? I do not want to kill you, brother!"~
== BKELDO25 ~Then why did you start to fight with her?~
== BSAREV25 ~(Drinks all his wine at once) You do not understand, paladin. I couldn't do otherwise. Her words, her face were in front of me later, in the Abyss. I was a hell spawn back there and I couldn't hear the voice of reason, and that is why I intend to protect her from everybody and from everything, even from you, should I decide so.~
== BKELDO25 ~Why don't you trust in my love, Sarevok?~
== BSAREV25 ~I want to be sure that it really is the love you speak of, not gratefulness or an attempt to shield her from evil.~
== BKELDO25 ~(Confused) But how can I convince you? I fell in love with her long ago, but only understood that recently, when she was lying in bed cold and motionless, with me, staying at her side. In that moment I understood, that I couldn't possibly live without her. But you are right, Sarevok, I was ready to sacrifice myself for her. And I swear to you, she would have never known the truth!~
== BSAREV25 ~(Shakes his head) Dangerous game you have started, paladin. What if she would learn the truth?~
== BKELDO25 ~But I love her, Sarevok. And that is why all of this does not matter anymore.~
EXIT