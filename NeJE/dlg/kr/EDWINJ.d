APPEND ~EDWINJ~

IF ~~ THEN BEGIN Kr_WarTk
  SAY ~Fie, the war... I was hoping that you would mind your own business and not meddle in politics... (or at least those pitiful and pointless fussings that they call politics).~
=
~I thought your intention was to rescue that snotty girl thief and to chase down the powerful mage responsible for your ills? (Powerful he may be, but I doubt he can hold a candle to me... the all powerful Edwin Odesseiron).~
=
~I fail to understand why you involve yourself in this petty war... do you forget who you are?~
  	IF ~~ THEN REPLY ~You do not want to help us, is that it? Then stay here with your demons, we will manage without you. You are not the only mage in Faerun you know.~ GOTO Kr_WarT2
  	IF ~~ THEN REPLY ~Look Edwin, you are a sensible man and I value you highly, but you are talking nonsense! Imoen... yes, I'm pressed for time, but we can't reach her right now because of this damned war! I know that you hate war of any sort, but surely you wouldn't want to miss the opportunity to show this enemy just how powerful a mage you are?~ GOTO Kr_WarT3
END

IF ~~ THEN BEGIN Kr_WarT2
  SAY ~Be it so, you lumbering fool!~
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("KRCut05")~ EXIT
END

IF ~~ THEN BEGIN Kr_WarT3
  SAY ~Ha! Let's see what your paladin has to say to all this shall we. (My counsel will indeed be invaluable, but this blockhead will jib anyway).~
  	IF ~~ THEN EXTERN ~KELDORJ~ War_st2
END

IF ~~ THEN BEGIN Kr_WarT4
  SAY ~Our lady persuaded me to stay.~
  	IF ~~ THEN EXTERN ~KELDORJ~ War_st3
END

IF ~~ THEN BEGIN Kr_WarT5
  SAY ~(Grinning) That everything will be looted before we arrive? (I don't ever remember a time when <CHARNAME> missed her chance to participate in distribution of booty).~
=
~Tell me paladin, why is it you think the only reasons that guide me are mercantile? Don't forget that I met <CHARNAME> before you... and knew who she was!~
  	IF ~~ THEN EXTERN ~KELDORJ~ War_st4
END

IF ~~ THEN BEGIN Kr_WarT6
  SAY ~(Sighing) She's not just a daughter of Bhaal, she is *THE* child of Bhaal. There is great power hidden within her, and this power needs to be nurtured, developed, you might say...~
  	IF ~~ THEN EXTERN ~KELDORJ~ War_st5
END

IF ~~ THEN BEGIN Kr_WarT7
  SAY ~(Sarcastically) Oh, you do, do you... in that case, lord Keldorn let's not quarrel. Instead, let us agree that it is an honour to accompany our epic heroine.~
  	IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("KRCut04")~ EXIT
END

IF ~~ THEN BEGIN Kelem0
  SAY ~Damn! That stupid girl simply refuses to learn. She actually donned the ring of Cyric. I just can't believe it! I spend my precious time on her, I try to teach this peasant some sense, and then she...~
  	IF ~~ THEN REPLY ~Edwin! Edwin, please forgive me, I did not mean to kill you. I hold you and your instructions in the highest esteem.~ GOTO Kelem1
  	IF ~~ THEN REPLY ~Did I ask you to teach me? Why have you even decided that I need your lectures! Gorion was a good tutor to me, and I do not understand what it is you want from me!~ GOTO Kelem2
END

IF ~~ THEN BEGIN Kelem1
  SAY ~You can forget the flattery! I am very serious when I say, you need to think first and then act.~
=
~I am sure Kelemvor had his reasons for hiding Cyric's ring, and I am equally as sure the priest knew something about the ring's power. Your Keldorn warned you and he is a smart man, even for a paladin!~
  	IF ~~ THEN REPLY ~Yes, Kelemvor was very displeased.~ GOTO Kelem3
END

IF ~~ THEN BEGIN Kelem2
  SAY ~You need to be smarter! By the nine hells, you are after all the daughter of a god, not just some mere commoner, and as such your actions should be beyond reproach!~
  	IF ~~ THEN REPLY ~Yes, you are right... Kelemvor pulled me up as well.~ GOTO Kelem3
END

IF ~~ THEN BEGIN Kelem3
  SAY ~Kelemvor? So, you've met him, have you? That is a piece of good news, right... (Ponders, then he continues) I see that he took the ring from you... Wee, all right.~
=
~So, you take me with you? Did I read your intentions correctly? (I can not help but wonder how this story will end?)~
	IF ~~ THEN EXTERN ~KELEMVOR~ 4A
END

END