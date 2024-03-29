REPLACE ~VALYG25J~

IF ~~ THEN BEGIN 0
  SAY ~<CHARNAME> has brought me no pain, spirit.  Quite the contrary.~
  IF ~~ THEN EXTERN ~HGWRA01~ 24
END

IF ~~ THEN BEGIN 1
  SAY ~You are not Merella! I talked to Merella before she died... We have put it to rest, we...~
  IF ~~ THEN REPLY ~I had been there when you died, Merella! Valygar did all he could to save you. He does not deserve these wild accusations!~ EXTERN ~HGWRA01~ 25
  IF ~~ THEN REPLY ~Gorion, what are you doing? Valygar did nothing to deserve this torture!~ EXTERN ~HGWRA01~ 25
  IF ~CheckStatGT(Player1,16,WIS)~ THEN REPLY ~Valygar, do not you see that they are lying? They are liars and pretenders!~ EXTERN ~HGWRA01~ 25
END

IF ~~ THEN BEGIN 2
  SAY ~I'm not very qualified to advise you, <CHARNAME>.  I've never been very comfortable with power.  The thought of attracting the attention of other gods, some who might be jealous, would not sit very well with me.~
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 3
  SAY ~<CHARNAME>... I know the choice is before you, and you alone. And it may not be fair of me to try to influence you. But please, stay who you are. Stay what you are. Do not let Bhaal take you away. I...I love who you are... I find myself afraid that I might not have the chance to say this again if I do not say it now: I LOVE YOU.~
  IF ~~ THEN EXTERN ~FINSOL01~ 28
END

IF ~~ THEN BEGIN 4
  SAY ~You wish to face the taint of Bhaal forever?  It will eat away at you... if you do not embrace it willingly.  Make your own destiny would be my advice... do not rest in your sire's shadow.~ [VALY2517]
  IF ~False()~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~But I know that you'll make the best decision.  You always have in the past, and I trust that you always will in the future.  You laugh at me for such confidence, but I believe it.  You are unique beyond anyone I have ever encountered.~
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY ~If you stay with me, I can only offer the solace of my company.  I would love to continue our journeys together... there is much that we could still do, many places we could go.~
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY ~But if you leave, that doesn't mean I will love you any less, <CHARNAME>.  I will remember you, and hope that the power you gain will make you happy.~
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY ~If you've taught me anything, it's that power isn't something to always fear.  I only hope that the life you choose isn't one you regret.  As for me... our time together has been worth everything.~
  IF ~True()~ THEN EXTERN ~FINSOL01~ 28
  IF ~InParty("Anomen") Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~ANOME25J~ 11
  IF ~InParty("Viconia") Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~VICON25J~ 8
  IF ~InParty("Aerie") Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~AERIE25J~ 9
  IF ~InParty("Jaheira") Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~JAHEI25J~ 9
END

IF ~~ THEN BEGIN 9
  SAY ~I love you as well.  I wouldn't blame you for not wanting the power and the taint of your sire... but I would ask you to reconsider if you were to refuse it simply to remain with me, <CHARNAME>.~
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 10
  SAY ~Truly?  I could not see myself deciding the same.  To attract the attention of the gods with such power would not sit well with me, although the idea of exploring the planes is attractive, I'll admit.~
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 11
  SAY ~<CHARNAME>, you... how could you... I wish I could curse the day I met you, nightingale. But this day is my pain and my bliss and I grew to cherish it. That's how love always is, I wager. At least that had been my experience... (*He turns and walks away.*)~
  IF ~True()~ THEN EXTERN ~FINSOL01~ 33
END

IF ~~ THEN BEGIN 12
  SAY ~It takes a great person to achieve godhood, yet it takes a true hero to reject it. <CHARNAME>, what you have done is an act of grandeur. You have destroyed the Bhaal essence within you and you have resisted the temptation to take his place in the pantheon. Let me kneel before you... I will worship you to the end of my days.~
  IF ~~ THEN REPLY ~Get up, you idiot. Or I swear I'll take you on a trip to Ust-Natha... I love you and all I want is to spend my life with you.~ GOTO TS24
  IF ~~ THEN REPLY ~Valygar, what do you say we go to the Docks and look for a ship sailing to Zakhara?~ GOTO TS25
  IF ~~ THEN REPLY ~But if I would become a goddess, I would not get a chance to tell the most stubborn, impossible, ill-mannered ranger on Faerun, that I love him.~ GOTO TS26
END
END

APPEND ~VALYG25J~

IF ~~ THEN BEGIN TS24
  SAY ~My heart, we do not have to travel to the Underdark. I love you and I cannot hide my feelings, even if I wanted to.  I will prove you my love and my loyalty... Kiss me <CHARNAME>...~
  IF ~~ THEN EXTERN ~FINSOL01~ 33
END

IF ~~ THEN BEGIN TS25
  SAY ~What if we leave it for a bit later? I have other plans for right now, and I want to start with kissing you. I swear by the first day of Toril and by its last day, I swear by the pain of death and by the joy of life, I swear I love you and I will never give you a reason to regret the choice you have made today.~
  IF ~~ THEN EXTERN ~FINSOL01~ 33
END

IF ~~ THEN BEGIN TS26
  SAY ~I am glad you took a chance on me. I swear by the first day of Toril and by its last day, I swear by the pain of death and by the joy of life, I swear I love you and I will never give you a reason to regret the choice you have made today.~
  IF ~~ THEN EXTERN ~FINSOL01~ 33
END

IF ~~ THEN BEGIN TS27
  SAY ~Merella?~
  IF ~~ THEN EXTERN ~LOVEONE5~ 1
END

IF ~~ THEN BEGIN TS28
  SAY ~What are you talking about, Merella? I came back just as I promised, and you... you were engaged to another man!~
  IF ~~ THEN EXTERN ~LOVEONE5~ 2
END

IF ~~ THEN BEGIN TS29
  SAY ~Merella that is not true! I loved you then, if you only spoke to me, we could have...~
  IF ~~ THEN EXTERN ~LOVEONE5~ 3
END

IF ~GlobalGT("ExpLoveTalk","LOCALS",0) GlobalLT("ExpLoveTalk","LOCALS",8) Global("ValygarMatch","GLOBAL",1) OR(2) Global("ValygarRomanceActive","GLOBAL",1) Global("ValygarRomanceActive","GLOBAL",2)~ THEN BEGIN TS30
  SAY ~Valygar had been almost everything for you: a man you hunted, a reluctant ally, a comrade at arms, a friend... Through thick and thin you went together and now you suspect that he is about to become your lover as well.~
  IF ~~ THEN REPLY ~You brush  past Valygar, "accidentally" making your hips  touch...~ GOTO TS31
  IF ~~ THEN REPLY ~You kiss Valygar lightly on the cheek: "Thank you for being with me after all that happened."~ GOTO TS32
  IF ~~ THEN REPLY ~You whisper into Valygar's ear: "I think I really need a hug..."~ GOTO TS33
  IF ~~ THEN REPLY ~You sigh in exasperation: the days' trials are starting to weigh upon you.~ GOTO TS34
  IF ~~ THEN REPLY ~You close your eyes and enjoy the silence for a moment after the ring of steel on steel and the cries of the last battle.~ GOTO TS35
  IF ~~ THEN REPLY ~You hold Valygar's hand.~ GOTO TS36
END

IF ~~ THEN BEGIN TS31
  SAY ~For a brief moment Valygar's arm embraces your waist, and he pulls you closer. Then, reluctantly he lets you go.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TS32
  SAY ~Valygar takes you face in his hands: "<CHARNAME>, I am honored by the trust you have shown me."~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TS33
  SAY ~The ranger throws his hands around you, and he presses you tightly against his chest: "Do you feel better now, <CHARNAME>?"~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TS34
  SAY ~Valygar starts to sing in a low voice a stupid, bawdy song which goes something like:

"Then we shall drink some ale,
To make our life a bliss
Though even ale of course
Here tastes like piss..."~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TS35
  SAY ~You feel a light touch of lips on you forehead and hear Valygar's soft voice: "Please, do not look so sad."~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TS36
  SAY ~Valygar's fingers intertwine with yours and he says: "Now I have caught you sweetling."~
  IF ~~ THEN EXIT
END

IF ~GlobalGT("ExpLoveTalk","LOCALS",7) GlobalLT("ExpLoveTalk","LOCALS",12) Global("ValygarMatch","GLOBAL",1) Global("ValygarRomanceActive","GLOBAL",2)~ THEN BEGIN TS37
  SAY ~The world swirls around you. You feel that since the day you left Candlekeep with Gorion you were sure of nothing.~
  IF ~~ THEN REPLY ~You announce to your group: "My friends, I feel a bit uneasy and wish for some... rest. Please, take a break. Will you walk with me, Valygar?"~ GOTO TS38
  IF ~~ THEN REPLY ~Ignoring everyone you give Valygar a deep, long kiss.~ GOTO TS39
  IF ~~ THEN REPLY ~You smile at Valygar gently.~ GOTO TS40
  IF ~~ THEN REPLY ~You ask the ranger quietly: "Do you remember the last night, Valygar?"~ GOTO TS41
  IF ~~ THEN REPLY ~You trace Valygar's face with your fingers: "Here is the strong jaw which tells me that you are a stubborn man, wide cheekbones - that's because of some wild blood in your veins, high temples - must have come from your noble ancestors..."~ GOTO TS42
  IF ~~ THEN REPLY ~"Valygar, we are going to make it, won't we?"~ GOTO TS43
END

IF ~~ THEN BEGIN TS38
  SAY ~As everyone else is out of view and earshot, Valygar showers you with passionate kisses: "I am so glad you have done that, <CHARNAME>. Another minute and I would go mad from walking by you and not being able to touch you."~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TS39
  SAY ~"Ah... Crazy woman..."~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TS40
  SAY ~Valygar returns your smile and whispers: "You are so beautiful..."~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TS41
  SAY ~"Remember? I cannot think about anything else but the last night... or the night to come."~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TS42
  SAY ~"It is my turn now." His fingers caress your face and touch your lips: "Those lips were made of smiles and for kisses..."~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TS43
  SAY ~"I don't know, but what I can promise you that I shall protect you from any harm until I live."~
  IF ~~ THEN EXIT
END

END