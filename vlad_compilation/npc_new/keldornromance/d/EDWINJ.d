CHAIN EDWINJ Kr_WarTk
~Fie, the war... I was hoping that you would mind your own business and not meddle in politics... (or at least those pitiful and pointless fussings that they call politics).~
= ~I thought your intention was to rescue that snotty girl thief and to chase down the powerful mage responsible for your ills? (Powerful he may be, but I doubt he can hold a candle to me... the all powerful Edwin Odesseiron).~
= ~I fail to understand why you involve yourself in this petty war... do you forget who you are?~
END
 ++ ~You do not want to help us, is that it? Then stay here with your demons, we will manage without you. You are not the only mage in Faerun you know.~ EXTERN EDWINJ Kr_WarT2
 ++ ~Look Edwin, you are a sensible man and I value you highly, but you are talking nonsense! Imoen... yes, I'm pressed for time, but we can't reach her right now because of this damned war! I know that you hate war of any sort, but surely you wouldn't want to miss the opportunity to show this enemy just how powerful a mage you are?~ EXTERN EDWINJ Kr_WarT3

CHAIN EDWINJ Kr_WarT2
~Be it so, you lumbering fool!~
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("KRCut05")~
EXIT

CHAIN EDWINJ Kr_WarT3
~Ha! Let's see what your paladin has to say to all this shall we. (My counsel will indeed be invaluable, but this blockhead will jib anyway).~
EXTERN KELDORJ War_st2

CHAIN EDWINJ Kr_WarT4
~Our lady persuaded me to stay.~
EXTERN KELDORJ War_st3

CHAIN EDWINJ Kr_WarT5
~(Grinning) That everything will be looted before we arrive? (I don't ever remember a time when <CHARNAME> missed her chance to participate in distribution of booty).~
= ~Tell me paladin, why is it you think the only reasons that guide me are mercantile? Don't forget that I met <CHARNAME> before you... and knew who she was!~
EXTERN KELDORJ War_st4

CHAIN EDWINJ Kr_WarT6
~(Sighing) She's not just a daughter of Bhaal, she is *THE* child of Bhaal. There is great power hidden within her, and this power needs to be nurtured, developed, you might say...~
EXTERN KELDORJ War_st5

CHAIN EDWINJ Kr_WarT7
~(Sarcastically) Oh, you do, do you... in that case, lord Keldorn let's not quarrel. Instead, let us agree that it is an honour to accompany our epic heroine.~
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("KRCut04")~
EXIT

CHAIN EDWINJ Kelem0
~Damn! That stupid girl simply refuses to learn. She actually donned the ring of Cyric. I just can't believe it! I spend my precious time on her, I try to teach this peasant some sense, and then she...~
END
 ++ ~Edwin! Edwin, please forgive me, I did not mean to kill you. I hold you and your instructions in the highest esteem.~ EXTERN EDWINJ Kelem1
 ++ ~Did I ask you to teach me? Why have you even decided that I need your lectures! Gorion was a good tutor to me, and I do not understand what it is you want from me!~ EXTERN EDWINJ Kelem2

CHAIN EDWINJ Kelem1
~You can forget the flattery! I am very serious when I say, you need to think first and then act.~
= ~I am sure Kelemvor had his reasons for hiding Cyric's ring, and I am equally as sure the priest knew something about the ring's power. Your Keldorn warned you and he is a smart man, even for a paladin!~
END
 ++ ~Yes, Kelemvor was very displeased.~ EXTERN EDWINJ Kelem3

CHAIN EDWINJ Kelem2
~You need to be smarter! By the nine hells, you are after all the daughter of a god, not just some mere commoner, and as such your actions should be beyond reproach!~
END
 ++ ~Yes, you are right... Kelemvor pulled me up as well.~ EXTERN EDWINJ Kelem3

CHAIN EDWINJ Kelem3
~Kelemvor? So, you've met him, have you? That is a piece of good news, right... (Ponders, then he continues) I see that he took the ring from you... Wee, all right.~
= ~So, you take me with you? Did I read your intentions correctly? (I can not help but wonder how this story will end?)~
EXTERN KELEMVOR 4A