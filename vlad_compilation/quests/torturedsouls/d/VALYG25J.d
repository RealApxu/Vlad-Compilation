REPLACE VALYG25J

CHAIN VALYG25J 0
~<CHARNAME> has brought me no pain, spirit. Quite the contrary.~
EXTERN HGWRA01 24

CHAIN VALYG25J 1
~You are not Merella! I talked to Merella before she died... We have put it to rest, we...~
END
 ++ ~I had been there when you died, Merella! Valygar did all he could to save you. He does not deserve these wild accusations!~ EXTERN HGWRA01 25
 ++ ~Gorion, what are you doing? Valygar did nothing to deserve this torture!~ EXTERN HGWRA01 25
 IF ~CheckStatGT(Player1,16,WIS)~ THEN REPLY ~Valygar, do not you see that they are lying? They are liars and pretenders!~ EXTERN HGWRA01 25

CHAIN VALYG25J 2
~I'm not very qualified to advise you, <CHARNAME>. I've never been very comfortable with power. The thought of attracting the attention of other gods, some who might be jealous, would not sit very well with me.~
EXTERN VALYG25J 5

CHAIN VALYG25J 3
~<CHARNAME>... I know the choice is before you, and you alone. And it may not be fair of me to try to influence you. But please, stay who you are. Stay what you are. Do not let Bhaal take you away. I...I love who you are... I find myself afraid that I might not have the chance to say this again if I do not say it now: I LOVE YOU.~
EXTERN FINSOL01 28

CHAIN VALYG25J 4
~You wish to face the taint of Bhaal forever? It will eat away at you... if you do not embrace it willingly. Make your own destiny would be my advice... do not rest in your sire's shadow.~ [VALY2517]
EXIT

CHAIN VALYG25J 5
~But I know that you'll make the best decision. You always have in the past, and I trust that you always will in the future. You laugh at me for such confidence, but I believe it. You are unique beyond anyone I have ever encountered.~
EXTERN VALYG25J 6

CHAIN VALYG25J 6
~If you stay with me, I can only offer the solace of my company. I would love to continue our journeys together... there is much that we could still do, many places we could go.~
EXTERN VALYG25J 7

CHAIN VALYG25J 7
~But if you leave, that doesn't mean I will love you any less, <CHARNAME>. I will remember you, and hope that the power you gain will make you happy.~
EXTERN VALYG25J 8

CHAIN VALYG25J 8
~If you've taught me anything, it's that power isn't something to always fear. I only hope that the life you choose isn't one you regret. As for me... our time together has been worth everything.~
END
 IF ~True()~ THEN EXTERN FINSOL01 28
 IF ~InParty("Anomen") Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ANOME25J 11
 IF ~InParty("Viconia") Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN VICON25J 8
 IF ~InParty("Aerie") Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN AERIE25J 9
 IF ~InParty("Jaheira") Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN JAHEI25J 9

CHAIN VALYG25J 9
~I love you as well. I wouldn't blame you for not wanting the power and the taint of your sire... but I would ask you to reconsider if you were to refuse it simply to remain with me, <CHARNAME>.~
EXTERN VALYG25J 5

CHAIN VALYG25J 10
~Truly? I could not see myself deciding the same. To attract the attention of the gods with such power would not sit well with me, although the idea of exploring the planes is attractive, I'll admit.~
EXTERN VALYG25J 5

CHAIN VALYG25J 11
~<CHARNAME>, you... how could you... I wish I could curse the day I met you, nightingale. But this day is my pain and my bliss and I grew to cherish it. That's how love always is, I wager. At least that had been my experience... (*He turns and walks away.*)~
EXTERN FINSOL01 33

CHAIN VALYG25J 12
~It takes a great person to achieve godhood, yet it takes a true hero to reject it. <CHARNAME>, what you have done is an act of grandeur. You have destroyed the Bhaal essence within you and you have resisted the temptation to take his place in the pantheon. Let me kneel before you... I will worship you to the end of my days.~
END
 ++ ~Get up, you idiot. Or I swear I'll take you on a trip to Ust-Natha... I love you and all I want is to spend my life with you.~ EXTERN VALYG25J TS24
 ++ ~Valygar, what do you say we go to the Docks and look for a ship sailing to Zakhara?~ EXTERN VALYG25J TS25
 ++ ~But if I would become a goddess, I would not get a chance to tell the most stubborn, impossible, ill-mannered ranger on Faerun, that I love him.~ EXTERN VALYG25J TS26

CHAIN VALYG25J TS24
~My heart, we do not have to travel to the Underdark. I love you and I cannot hide my feelings, even if I wanted to. I will prove you my love and my loyalty... Kiss me <CHARNAME>...~
EXTERN FINSOL01 33

CHAIN VALYG25J TS25
~What if we leave it for a bit later? I have other plans for right now, and I want to start with kissing you. I swear by the first day of Toril and by its last day, I swear by the pain of death and by the joy of life, I swear I love you and I will never give you a reason to regret the choice you have made today.~
EXTERN FINSOL01 33

CHAIN VALYG25J TS26
~I am glad you took a chance on me. I swear by the first day of Toril and by its last day, I swear by the pain of death and by the joy of life, I swear I love you and I will never give you a reason to regret the choice you have made today.~
EXTERN FINSOL01 33

CHAIN VALYG25J TS27
~Merella?~
EXTERN LOVEONE5 1

CHAIN VALYG25J TS28
~What are you talking about, Merella? I came back just as I promised, and you... you were engaged to another man!~
EXTERN LOVEONE5 2

CHAIN VALYG25J TS29
~Merella that is not true! I loved you then, if you only spoke to me, we could have...~
EXTERN LOVEONE5 3

CHAIN
IF ~GlobalGT("ExpLoveTalk","LOCALS",0) GlobalLT("ExpLoveTalk","LOCALS",8) Global("ValygarMatch","GLOBAL",1) OR(2) Global("ValygarRomanceActive","GLOBAL",1) Global("ValygarRomanceActive","GLOBAL",2)~ THEN VALYG25J TS30
~Valygar had been almost everything for you: a man you hunted, a reluctant ally, a comrade at arms, a friend... Through thick and thin you went together and now you suspect that he is about to become your lover as well.~
END
 ++ ~You brush past Valygar, "accidentally" making your hips touch...~ EXTERN VALYG25J TS31
 ++ ~You kiss Valygar lightly on the cheek: "Thank you for being with me after all that happened."~ EXTERN VALYG25J TS32
 ++ ~You whisper into Valygar's ear: "I think I really need a hug..."~ EXTERN VALYG25J TS33
 ++ ~You sigh in exasperation: the days' trials are starting to weigh upon you.~ EXTERN VALYG25J TS34
 ++ ~You close your eyes and enjoy the silence for a moment after the ring of steel on steel and the cries of the last battle.~ EXTERN VALYG25J TS35
 ++ ~You hold Valygar's hand.~ EXTERN VALYG25J TS36

CHAIN VALYG25J TS31
~For a brief moment Valygar's arm embraces your waist, and he pulls you closer. Then, reluctantly he lets you go.~
EXIT

CHAIN VALYG25J TS32
~Valygar takes you face in his hands: "<CHARNAME>, I am honored by the trust you have shown me."~
EXIT

CHAIN VALYG25J TS33
~The ranger throws his hands around you, and he presses you tightly against his chest: "Do you feel better now, <CHARNAME>?"~
EXIT

CHAIN VALYG25J TS34
~Valygar starts to sing in a low voice a stupid, bawdy song which goes something like:

"Then we shall drink some ale,
To make our life a bliss
Though even ale of course
Here tastes like piss..."~
EXIT

CHAIN VALYG25J TS35
~You feel a light touch of lips on you forehead and hear Valygar's soft voice: "Please, do not look so sad."~
EXIT

CHAIN VALYG25J TS36
~Valygar's fingers intertwine with yours and he says: "Now I have caught you sweetling."~
EXIT

CHAIN
IF ~GlobalGT("ExpLoveTalk","LOCALS",7) GlobalLT("ExpLoveTalk","LOCALS",12) Global("ValygarMatch","GLOBAL",1) Global("ValygarRomanceActive","GLOBAL",2)~ THEN VALYG25J TS37
~The world swirls around you. You feel that since the day you left Candlekeep with Gorion you were sure of nothing.~
END
 ++ ~You announce to your group: "My friends, I feel a bit uneasy and wish for some... rest. Please, take a break. Will you walk with me, Valygar?"~ EXTERN VALYG25J TS38
 ++ ~Ignoring everyone you give Valygar a deep, long kiss.~ EXTERN VALYG25J TS39
 ++ ~You smile at Valygar gently.~ EXTERN VALYG25J TS40
 ++ ~You ask the ranger quietly: "Do you remember the last night, Valygar?"~ EXTERN VALYG25J TS41
 ++ ~You trace Valygar's face with your fingers: "Here is the strong jaw which tells me that you are a stubborn man, wide cheekbones - that's because of some wild blood in your veins, high temples - must have come from your noble ancestors..."~ EXTERN VALYG25J TS42
 ++ ~"Valygar, we are going to make it, won't we?"~ EXTERN VALYG25J TS43

CHAIN VALYG25J TS38
~As everyone else is out of view and earshot, Valygar showers you with passionate kisses: "I am so glad you have done that, <CHARNAME>. Another minute and I would go mad from walking by you and not being able to touch you."~
EXIT

CHAIN VALYG25J TS39
~"Ah... Crazy woman..."~
EXIT

CHAIN VALYG25J TS40
~Valygar returns your smile and whispers: "You are so beautiful..."~
EXIT

CHAIN VALYG25J TS41
~"Remember? I cannot think about anything else but the last night... or the night to come."~
EXIT

CHAIN VALYG25J TS42
~"It is my turn now." His fingers caress your face and touch your lips: "Those lips were made of smiles and for kisses..."~
EXIT

CHAIN VALYG25J TS43
~"I don't know, but what I can promise you that I shall protect you from any harm until I live."~
EXIT