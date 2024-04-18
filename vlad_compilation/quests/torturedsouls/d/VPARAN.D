BEGIN VPARAN

CHAIN
IF ~Global("VP_Sime_Aran","GLOBAL",1)~ THEN VPARAN 0
~A pearl to you, dear. I have to say, you should act with more caution. It is common knowledge in Athkatla now that you are back and are travelling with <CHARNAME>. There is also a more disturbing rumor, Sime. That�s why I came. I need to talk to <CHARNAME> in private. A man-to-man talk, you understand? Leave us daughter.~
EXTERN VPSIMJ 40

CHAIN VPARAN 1
~I told you to leave us, Sime.~
END
 ++ ~What in Nine Hells is it? Anything you have to say to me you can say in the presence of your daughter!~ EXTERN VPSIMJ 41
 ++ ~Ahem, Sime, let�s not aggravate your father.~ EXTERN VPSIMJJ 42
 ++ ~Do not worry, love, I can handle it. You can stay with the rest of the group and I�ll talk to Aran.~ EXTERN VPSIMJJ 42

CHAIN VPARAN 2
~Now, son...~
END
 ++ ~Son? I have heard that my mother heated it up with Bhaal, the Lord of Murder to get me. I do not recall Aran Linvail mentioned as my father.~ EXTERN VPARAN 3
 ++ ~Yes, Sir!~ EXTERN VPARAN 4
 ++ ~(*Look at him patiently and wait for him to continue.*)~ EXTERN VPARAN 4

CHAIN VPARAN 3
~I appreciate a good joke, yes. But I have not come all the way here to humor some pup. I might not be Bhaal, but I happen to do random jobs for the Lord of Murder and you may consider me his... associate. If you will not shut up and listen what I have to say I�ll start with shoving your sharp tongue deep into your throat until you choke on your own wit, son.~
END
 ++ ~Yes, Sir!~ EXTERN VPARAN 4
 ++ ~You are not scaring me. I can take on Bhaal himself, let alone his associate.~ EXTERN VPARAN 6
 ++ ~Sir, your wrath is undeserved. I love your daughter with all my heart and I have the most honorable intentions...~ EXTERN VPARAN 7

CHAIN VPARAN 4
~So, son it reached me that my daughter fancies you. Do not bother to deny it, you are involved. I promised Sime�s mother, gods bless her noble soul, to protect our daughter before she died. Son, should any harm come to my daughter, I�ll have you roasted alive. Do you understand?~
END
 ++ ~Yes, Sir!~ EXTERN VPARAN 5
 ++ ~Aran, are you trying to threaten me? If so, you failed. I can take on any number of the likes of you!~ EXTERN VPARAN 6
 ++ ~Sir, these threats are misdirected. I love your daughter with all my heart and I have the most honorable intentions... I only want what�s best for her.~ EXTERN VPARAN 7

CHAIN VPARAN 5
~I am glad we had this little chat, son... (*Pats your cheek*)... You are not a wordy one, are you? Those silent, they are said to be the most dangerous ones. I think I�ll give you a taste of unpleasant things that may happen if you get me cross. Just in case, you know.~
EXTERN VPSIMJ 43

CHAIN VPARAN 6
~I fail to understand what my daughter sees in a fop like you. I hope she comes back to her senses and leaves you. Anyway, son, should any harm come to my daughter, I�ll have you roasted alive. And since you are such a joker, I�ll give you a taste of unpleasant things that may happen to you if you get me cross.~
EXTERN VPSIMJ 43

CHAIN VPARAN 7
~Honorable intentions? Oh, I forget, you are from Candlekeep, my young friend. Flowery language apart you seem like a decent fellow. I am glad we had this little chat, and I will rest easier, knowing that my Sime is well cared for. Here, son. This is a ring I once gave to her mother. I paid in blood to get it back from those who killed my wife, hoping that a day would come to give it to my little daughter. Sime, love, come here, say good-bye to me! I am leaving.~
EXTERN VPSIMJ 44