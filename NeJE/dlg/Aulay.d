BEGIN ~AULAY~

IF ~Global("VP_Restore_Ring","GLOBAL",6)
Global("VP_Enhance_Ring","GLOBAL",4)~ THEN BEGIN 0
  SAY ~(*Brusquely*) You wanting to speak with me?~
  IF ~~ THEN REPLY ~If you are Aulay then yes I do.~ GOTO 1
  IF ~~ THEN REPLY ~That depends on who you are?~ GOTO 1
  IF ~~ THEN REPLY ~I am looking for Aulay, mage specialist. Do you know where I might find him?~ GOTO 1
  IF ~~ THEN REPLY ~Why so churlish friend?~ GOTO 14
END

IF ~~ THEN BEGIN 1
  SAY ~I am Aulay. I don't know you so what could you possibly want with me?~
  IF ~~ THEN REPLY ~I am <GABBER>, nice to meet you too Aulay! You willing to listen to a proposition that could be of benefit to yourself?~ GOTO 2
  IF ~~ THEN REPLY ~Well met Aulay. I am <GABBER> and whereas we do not know one another, I am here to enlist your aid. If you are interested that is?~ GOTO 2
  IF ~~ THEN REPLY ~I am <GABBER> and I was told that you are the man to ask for aid when discretion is needed. Did my ears hear right Aulay?~ GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY ~I might be but I won't know until you tell me what it is you need, now will I?~
  IF ~~ THEN REPLY ~I want you to further enhance this ring of mine with a little of your specialist magic. Nothing more.~ GOTO 4
  IF ~~ THEN REPLY ~I need your skills as a specialist earth mage to help me finish the construction of this ring of mine. What do you say?~ GOTO 4
  IF ~~ THEN REPLY ~I have a magical ring that is sadly lacking in power and I thought to use some of your specialist magic to give it a boost. What do you say?~ GOTO 4
  IF ~~ THEN REPLY ~I have a ring and because of its potential, I need someone who can be discreet to do a little magical work on it for me. You up for it?~ GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY ~I can be discreet yes, but my discretion depends on whether it is to my benefit to be so. You say what it is you want and I will say whether I can be of help, discreetly of course.~
  IF ~~ THEN REPLY ~I want you to further enhance this ring of mine with a little of your specialist magic. Nothing more.~ GOTO 4
  IF ~~ THEN REPLY ~I need your skills as a specialist earth mage to help me finish the construction of this ring of mine. What do you say?~ GOTO 4
  IF ~~ THEN REPLY ~I have a magical ring that is sadly lacking in power and I thought to use some of your specialist magic to give it a boost. What do you say?~ GOTO 4
  IF ~~ THEN REPLY ~I have a ring and because of its potential, I need someone who can be discreet to do a little magical work on it for me. You up for it?~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY ~(*Scoffs*) A ring! Why come to me then? Any mage, even a first level student is more than capable of imbuing rings with magical properties. I have better things to do with my time than play around with the toys of children.~
  IF ~~ THEN REPLY ~Ah... but this is no ordinary ring Aulay. This ring was intended to be a Ring of Might when it began its existence.~ GOTO 5
  IF ~~ THEN REPLY ~This is a specialist ring. Originally its construction was begun by four elementelists, I  speak of a Ring of Might Aulay.~ GOTO 5
  IF ~~ THEN REPLY ~You will, I am sure, understand the need for discretion when I say the ring I wish you to enhance for me, is none other than a Ring of Might.~ GOTO 5
  IF ~~ THEN REPLY ~This is no child's toy Aulay. This is a Ring of Might, or at least a modification of an unfinished ring. The question is, do you have the backbone to help me add to its power?~ GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY ~(*His eyes light up*) Ah... yes... I understand! However, what I don't understand and is of great interest to me is how such an item got into the academy undetected, and how you manage to circumvent the prying minds of the senior mages and carry it so freely about your person!~
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY ~To know that could prove very useful to one such as myself. Nevertheless, if I am to work on this forbidden artifact <GABBER>, tell me, how much is my discretion worth to you?~
  IF ~PartyGoldGT(7999)~ THEN REPLY ~I would say 8000 gold should more than pay for your discretion, wouldn't you?~ GOTO 7
  IF ~~ THEN REPLY ~I will give you 4000 gold, and the promise of my own discretion in not revealing your name to anyone?~ GOTO 8
  IF ~~ THEN REPLY ~How does 2000 gold sound to you?~ GOTO 12
END

IF ~~ THEN BEGIN 7
  SAY ~8000 gold it is but I must also insist on some discretion on your part <GABBER>, in so much as, you do not mention that it was Aulay who aided you should you be discovered. Now, give me your ring and the gold, and meet me here in say one day.~
  IF ~~ THEN DO ~SetGlobal("VP_Enhance_Ring","GLOBAL",5) //Aulay went to enhance the ring
SetGlobalTimer("VP_Aulay_Returns","GLOBAL",ONE_DAY)
TakePartyGold(8000)
TakePartyItem("DeRing3")
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY ~(*Soffs*) 4000 gold! That would barely cover the cost of components let alone compensate for my time, and not to mention the consequences should I be discovered in possession of the ring! 6000 gold is my offer and it is non-negotiable.~
  IF ~PartyGoldGT(5999)~ THEN REPLY ~I will give you your 6000 gold but I do not expect you to return with anything less than your finest work.~ GOTO 9
  IF ~PartyGoldGT(5999)~ THEN REPLY ~Here take the 6000 gold! Just tell me when I can expect the work to be completed?~ GOTO 9
  IF ~~ THEN REPLY ~I am not paying you 6000 gold! I will find me another, less greedy mage to aid me.~ GOTO 10
  IF ~~ THEN REPLY ~I do not have that amount of gold Aulay. I am sorry I bothered you.~ GOTO 11
END

IF ~~ THEN BEGIN 9
  SAY ~6000 gold it is but I must also insist on some discretion on your part <GABBER>, in so much as, you do not mention that it was Aulay who aided you should you be discovered. Now, give me your ring and the gold, and meet me here in say one day.~
  IF ~~ THEN DO ~SetGlobal("VP_Enhance_Ring","GLOBAL",5) //Aulay went to enhance the ring
SetGlobalTimer("VP_Aulay_Returns","GLOBAL",ONE_DAY)
TakePartyGold(6000)
TakePartyItem("DeRing3")
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY ~(*Laughs*) You'll be lucky, but I wish you luck in your search just the same! Don't expect me to hang around waiting for you to change your mind, this was a once only offer on my part. Farewell.~
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY ~Then what are you doing wasting my time!~
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY ~(*Scoffs*) 2000 gold, please, do not insult me nor waste my time! I know well the worth of my specialist skills especially to one who will find no other to aid them.~
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY ~If you cannot see fit to raise your offer to at least 6000 gold, then your ring will have to do without the power that my magic would bring to it. Re-consider, or I walk away now!~
  IF ~PartyGoldGT(5999)~ THEN REPLY ~I will give you your 6000 gold but I do not expect you to return with anything less than your finest work.~ GOTO 9
  IF ~PartyGoldGT(5999)~ THEN REPLY ~Here take the 6000 gold! Just tell me when I can expect the work to be completed?~ GOTO 9
  IF ~~ THEN REPLY ~I am not paying you 6000 gold! I will find me another, less greedy mage to aid me.~ GOTO 10
  IF ~~ THEN REPLY ~I do not have that amount of gold Aulay. I am sorry I bothered you.~ GOTO 11
END

IF ~~ THEN BEGIN 14
  SAY ~If I am churlish it is because I do not appreciate being accosted by strangers who want no more than to engage in idle chatter!~
  IF ~~ THEN REPLY ~I am not here to engage in idle chatter, I am looking for Aulay. Now, are you or are you not him?~ GOTO 1
  IF ~~ THEN REPLY ~I can assure you that if you are Aulay, it is not for idle chatter that I seek to engage you in.~ GOTO 1
  IF ~~ THEN REPLY ~I am not accustomed to accosting strangers unless it is for something more than idle chatter. I have business to talk over with Aulay, do you know where I might find him?~ GOTO 1
END

IF ~Global("VP_Enhance_Ring","GLOBAL",6)~ THEN BEGIN 15
  SAY ~At least you are punctual <GABBER>, I do like that in a person. Here, take a look at your ring. Even if I say so myself, I have exceeded my own expectations and I am impressed with my work.~
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY ~With the addition of my magic its power has increased tenfold and you now have an artifact you can be proud to own. Whereas it may not be what its makers set out to construct but it is certainly now in the class of a Ring of Might.~
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY ~That ends our arrangement and as we will not cross paths again, neither of us need ever admit to knowing the other.~
  IF ~~ THEN REPLY ~That remains to be seen but thank you Aulay. It shall be as though we have never met, farewell.~ GOTO 18
  IF ~~ THEN REPLY ~Our knowing or not knowing each other depends on whether I am as impressed with your work as you are Aulay. If I am not, then our paths may well cross again. Farewell... for now!~ GOTO 18
  IF ~~ THEN REPLY ~As you wish. Thank you and  Farewell Aulay.~ GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY ~Farewell, and if you ever find yourself another artifact that needs restoring, please, do not bring it to me!~
	IF ~~ THEN DO ~GiveItemCreate("DeRing4",LastTalkedToBy,0,0,0)
EscapeArea()~ EXIT
END //Aulay is granting the enhanced ring (+earth element)  