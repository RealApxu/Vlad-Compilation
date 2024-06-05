BEGIN HOODMAN

CHAIN
IF ~NumTimesTalkedTo(0)~ THEN HOODMAN 0
~A moment <CHARNAME>...~
END
 ++ ~I don't believe I know you... do I? Care to explain how it is you know my name?~ EXTERN HOODMAN 1
 ++ ~What the... who are you skulking in the shadows and more to the point... how is it you know my name?~ EXTERN HOODMAN 1
 ++ ~I don't know you, so you'd best tell me how it is you know my name and what business you think you have with me?~ EXTERN HOODMAN 1
 ++ ~Isn't there anyone in this damned city who doesn't know who I am? What is it you want with me and make it fast... I have unfinished business with another!~ EXTERN HOODMAN 6

CHAIN HOODMAN 1
~It is not necessary for you to know my name, as to my knowing your name... my Mistress knows much about you already. You are known to us, if not us to you.~
EXTERN HOODMAN 2

CHAIN HOODMAN 6
~Your reputation spreads far and wide <CHARNAME>, there are very few who don't know the story of the hero of the Sword Coast. There are however, not so many who know of your parentage... my mistress is one who knows much about you already. You are known to us, if not us to you.~
EXTERN HOODMAN 2

CHAIN HOODMAN 2
~Your business with Armagaran Vulova is your own and of no interest to my Mistress. However, and listen to my words, for I speak only the truth when I say to you, that she can and will help you gain access to his estate.~
== HOODMAN ~Know that, ONLY through her help will the way be opened for you. Consider this when the time comes for deciding.~
END
 IF ~!Global("BodiAppear","GLOBAL",0)~ REPLY ~Would I be right in thinking that this mysterious mistress whom you serve, is also the mistress of another who has recently approached me?~ EXTERN HOODMAN 4
 ++ ~Deciding what... and who is this mistress you speak of?~ EXTERN HOODMAN 4
 ++ ~Time for deciding... what does this mistress of yours know of any decisions I will be asked to make?~ EXTERN HOODMAN 4
 ++ ~I make my own choices and you can tell this mistress of yours, whoever she is, that my mind will not be swayed by ambiguous promises.~ EXTERN HOODMAN 7

CHAIN HOODMAN 4
~Patience <CHARNAME>... all answers will be given in due time...~
END
 IF ~~ EXTERN HOODMAN 5
 IF ~InParty("njhroth") InMyArea("njhroth") !StateCheck("njhroth",CD_STATE_NOTVALID)~ EXTERN NJHROJ 379

CHAIN HOODMAN 7
~(*The mysterious figure laughs softly and the sound of his mirth, wraps itself around your heart, turning the blood it pumps to ice*)... Your choices are not so much your own as you would like to believe... if you were to be given a hundred choices or only two, the terms would still be laid down by the one offering those choices.~
END
 IF ~~ EXTERN HOODMAN 5
 IF ~InParty("njhroth") InMyArea("njhroth") !StateCheck("njhroth",CD_STATE_NOTVALID)~ EXTERN NJHROJ 379

CHAIN NJHROJ 379
~Yet more intrigue designed to embroil us in the affaires of this city! We really don't have time for these intrigues <CHARNAME>, there are far more important issues that need our attention right now.~
== NJDARJ IF ~InParty("njdar") InMyArea("njdar") !StateCheck("njdar",CD_STATE_NOTVALID)~ THEN ~Beware of that one's mistress <CHARNAME>, I sense a wrongness emanating from him. We would do well to avoid whoever he is aligned with.~
== NJMELJ IF ~InParty("njmelora") InMyArea("njmelora") !StateCheck("njmelora",CD_STATE_NOTVALID)~ THEN ~There's definitely something not right here... Even though he was heavily cloaked, I could feel the dank, coldness he carried about him... almost like the air that rushes from a newly opened tomb... (*she shudders*)... I don't trust who ever that was!~
END
 IF ~~ EXTERN HOODMAN 5
 IF ~InParty("njhroth") InMyArea("njhroth") !StateCheck("njhroth",CD_STATE_NOTVALID)~ EXTERN NJHROJ 380
 IF ~InParty("njhroth") InMyArea("njhroth") !StateCheck("njhroth",CD_STATE_NOTVALID) InParty("njmelora") InMyArea("njmelora") !StateCheck("njmelora",CD_STATE_NOTVALID) InParty("njtaffic") InMyArea("njtaffic") !StateCheck("njtaffic",CD_STATE_NOTVALID)~ EXTERN NJTAFJ vulova

CHAIN NJTAFJ vulova
~That's nothing new... you're suspicious of everyone! I thought he was most helpful, at least it gives us another line of enquiry...~
== NJTAFJ ~... even if we do have to wait for this deciding time, as he called it, before we can pursue it.~
== NJMELJ ~It is because of my suspicious instincts that I am still alive. You gnome, would do well to pay heed and follow my lead, after all, you haven't achieved a lot following your own!~
== NJTAFJ ~Follow your lead hafling...why I'd rather walk into the abyss behind a whole hoard of demons than follow you anywhere...~
== NJHROJ ~Come off it you two, <CHARNAME> doesn't need the hassle of your petty disagreements.~
== NJHROJ ~Please, at least try to get along for all our sakes, we have enough worries without you two at each others throats all the time.~
END
 ++ ~Thank you Hrothgar. Now, cut it out you two, or neither of you will be following anyone if you don't learn to do as Hrothgar says.~ EXTERN NJMELJ vulova1
 ++ ~I decide who is leading who, not you Melora, nor you Taffic. So will you two please quit arguing and get in line!~ EXTERN NJMELJ vulova1
 ++ ~Taffic, no one is asking you to follow Melora, but if you really feel you prefer the company of the demons of the abyss to those present, then please be my guest!~ EXTERN NJMELJ vulova1

CHAIN NJMELJ vulova1
~I was only speaking metaphorically when I said he was to follow my lead, but then if he is too stupid to realise this...~
== NJTAFJ ~Who do you think you are calling stupid you *halfwit*?~
END
 ++ ~Enough! I swear Taffic, if you didn't need your voice to cast your spells, then I would gag you both!~ EXTERN NJMELJ vulova2
 ++ ~Enough...or I swear I will have a silence spell permanently cast on you both. Understood?~ EXTERN NJMELJ vulova2
 ++ ~Yea gods, if you both weren't so good at what you do, I'd let you both go. Now, please, if you want to continue with me, give it up and let my ears have some rest.~ EXTERN NJMELJ vulova2

CHAIN NJMELJ vulova2
~Now look what you've done gnome. You've gone and upset <PRO_HIMHER>. Don't worry <CHARNAME>, I know how pedantic he can be.~
== NJMELJ ~Ill try and ignore his boorish remarks in the future. (*She tosses her head and heads back in line.*)~
== NJTAFJ ~(*He stomps of loudly*) Why that stuck up insolent harpy? She hasn't heard the last of this, not by a long way!~
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira", CD_STATE_NOTVALID)~ THEN ~(*Rolls her eyes*) Those two would try the patience of Ilmater himself, <CHARNAME>.~
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira", CD_STATE_NOTVALID)~ THEN ~Apart from that bit of trouble we had with Minsc and Edwin over Dynaheir in Nashkiel, I don't recall having a more argumentative pair in party...ever!~
== MINSCJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira", CD_STATE_NOTVALID) InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc", CD_STATE_NOTVALID)~ THEN ~Oooo...Minsc does not need to be reminded of such things! That wizard soon learnt that when evil threatens, a ranger and his hamster are not to be messed with.~
== MINSCJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira", CD_STATE_NOTVALID) InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc", CD_STATE_NOTVALID)~ THEN ~As will the evil wizard who murdered sweet Dynaheir in front of mine and Boo's very eyes bringing down shame upon this poor head of Minsc's when he couldn't protect her...right Boo? (*Squeak*).~ [BOONEJ1]
EXTERN NJHROJ 380

CHAIN NJHROJ 380
~No matter what we may think of our visitor's cryptic message, we are no closer to speaking with Leina's father. Our path is barred, so I suggest we report back to Samuel and explain the circumstances as they stand... we can do no more for now.~
EXTERN HOODMAN 5

CHAIN HOODMAN 5
~(*The hooded man looks around furtively*)... I must go, for guards approach and I must not be seen. Consider... (*Consider... his final word echos in your mind as the shadowy figure melts into the shadows and out of sight.*)~
DO ~DestroySelf()~
EXIT