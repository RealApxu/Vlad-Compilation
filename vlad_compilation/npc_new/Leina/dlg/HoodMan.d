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

CHAIN HOODMAN 2
~Your business with Armagaran Vulova is your own and of no interest to my Mistress. However, and listen to my words, for I speak only the truth when I say to you, that she can and will help you gain access to his estate.~
EXTERN HOODMAN 3

CHAIN HOODMAN 3
~Know that, ONLY through her help will the way be opened for you. Consider this when the time comes for deciding.~
END
 IF ~!Global("BodiAppear","GLOBAL",0)~ THEN REPLY ~Would I be right in thinking that this mysterious mistress whom you serve, is also the mistress of another who has recently approached me?~ EXTERN HOODMAN 4
 ++ ~Deciding what... and who is this mistress you speak of?~ EXTERN HOODMAN 4
 ++ ~Time for deciding... what does this mistress of yours know of any decisions I will be asked to make?~ EXTERN HOODMAN 4
 ++ ~I make my own choices and you can tell this mistress of yours, whoever she is, that my mind will not be swayed by ambiguous promises.~ EXTERN HOODMAN 7

CHAIN HOODMAN 4
~Patience <CHARNAME>... all answers will be given in due time...~
END
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROJ 380
 IF ~OR(2) !InParty("njhroth") Dead("njhroth")~ THEN EXTERN HOODMAN 5

CHAIN HOODMAN 5
~(*The hooded man looks around furtively*)... I must go, for guards approach and I must not be seen. Consider... (*Consider... his final word echos in your mind as the shadowy figure melts into the shadows and out of sight.*)~
DO ~DestroySelf()~
EXIT

CHAIN HOODMAN 6
~Your reputation spreads far and wide <CHARNAME>, there are very few who don't know the story of the hero of the Sword Coast. There are however, not so many who know of your parentage... my mistress is one who knows much about you already. You are known to us, if not us to you.~
EXTERN HOODMAN 2

CHAIN HOODMAN 7
~(*The mysterious figure laughs softly and the sound of his mirth, wraps itself around your heart, turning the blood it pumps to ice*)... Your choices are not so much your own as you would like to believe... if you were to be given a hundred choices or only two, the terms would still be laid down by the one offering those choices.~
END
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROJ 380
 IF ~OR(2) !InParty("njhroth") Dead("njhroth")~ THEN EXTERN HOODMAN 8

CHAIN HOODMAN 8
~(*He looks around furtively*)... I must go, for guards approach and I must not be seen. Consider... (*Consider... his final word echos in your mind as the shadowy figure melts into the shadows and out of sight.*)~
DO ~DestroySelf()~
EXIT