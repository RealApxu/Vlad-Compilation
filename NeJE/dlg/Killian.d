BEGIN ~KILLIAN~

IF ~Global("VP_Govan_Bribes_Me","GLOBAL",2)~ THEN BEGIN 0
  SAY ~You seem to be looking for some one, friend. Perhaps I can help with his whereabouts, name�s Killian.~
  IF ~~ THEN REPLY ~Then you are the man I am looking for. I am <GABBER>. Govan Duvaine said you would be able to help me with a small financial transaction.~ GOTO 2
  IF ~~ THEN REPLY ~Well met, Killian, I am <GABBER>. Can we get this little transaction over with as quickly as possible, I have places to be.~ GOTO 2
  IF ~~ THEN REPLY ~I am <GABBER>, and I believe you are the person who is about to make me a very rich <PRO_MANWOMAN>, courtesy of Govan Duvaine of course.~ GOTO 2
  IF ~~ THEN REPLY ~Let us get straight to business, Killian. I am <GABBER>. I have something for you and you have something for me, now, let us make the exchange.~ GOTO 2
END

IF ~GlobalLT("VP_Govan_Bribes_Me","GLOBAL",2)~ THEN BEGIN 1
  SAY ~I�m a busy man, friend. Why don�t you go and bother someone else?~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~Govan did not describe you very well to me. Let me see that ring you have there. I need to be sure that you are who you say you are before handing over any gold.~
  IF ~PartyHasItem("GovRing")~ THEN REPLY ~You can see it, Killian, but it is not leaving my hand until I see the gold... (*You show Killian the ring but keep a firm hold on it.*)~ GOTO 3
  IF ~PartyHasItem("GovRing")~ THEN REPLY ~Oh no, Killian! Do I look that stupid? If you value your head you will not answer that. Here, you can look at the ring but from where you stand. Do not attempt one step closer... (*You show Killian the ring but keep a firm hold on it.*)~ GOTO 3
  IF ~PartyHasItem("GovRing")~ THEN REPLY ~Here, Killian, I think you will see that this is indeed Govan�s ring... (*You give the ring to Killian.*)~ DO ~TakePartyItem("GovRing")~ GOTO 3
  IF ~~ THEN REPLY ~The gold first, Killian. Show me the gold!~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY ~(*Laughs*)... Duvaine said you were a cagey bastard. No matter, things seem to be in order here. I just had to be sure. Unfortunately for you, it is not gold that Duvaine has instructed me to give you but a taste of cold steel!~
  IF ~~ THEN REPLY ~So, Duvaine intends to keep his gold and the girl. If it is a fight you want, then I am more than ready to give you one!~ GOTO 4
  IF ~~ THEN REPLY ~You will not find me an easy victim, Killian. I will take you first and then Duvaine.~ GOTO 4
  IF ~~ THEN REPLY ~Why do your words not surprise me, Killian? I had a hunch Duvaine would not pay out such a sum just to keep a woman.~ GOTO 4
  IF ~~ THEN REPLY ~Whatever Duvaine payed you, Killian, you will not going to live long enough to enjoy it.~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY ~Stand easy, <GABBER>. Do you think I am foolish enough to come here alone? Come friends, make yourselves known.~
  IF ~~ THEN DO ~CreateCreature("KilHelp1",[485.625],15)
CreateCreature("KilHelp2",[537.584],0)
CreateCreature("KilHelp3",[594.605],1)~ GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY ~There is no need for anyone to die, I have a proposition of my own to put to you. You do something for me and you walk away with your life, no gold mind you, just your life. Are you listening?~
  IF ~~ THEN REPLY ~I will give you three minutes only, Killian, and if I do not like what I hear... well, we shall what happens then.~ GOTO 6
  IF ~~ THEN REPLY ~I am listening and this had better be good because your life depends on it being so, Killian.~ GOTO 6
  IF ~~ THEN REPLY ~Speak, Killian, but make it quick, I am in no mood for more bargaining.~ GOTO 6
  IF ~~ THEN REPLY ~You�re foolish if you think I�m going to listen to you. No one would dare to cheat me, fool!~ GOTO 11
END

IF ~~ THEN BEGIN 6
  SAY ~Duvaine has asked me to take care of his problem, namely you, but I also have a problem of my own that needs taking care of, namely Duvaine.~
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY ~Not Govan himself, his parents. Too long a story to go into here, all you need know is that I owe my present situation to them and I am not talking about the phoney *Keeper Of the Duvaine Finances* Govan spoke of.~
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY ~I now wish to pay them back if you get my meaning, <GABBER>? The deal is this, you pay me 1000 gold pieces to tell Govan that you did not show, then you take care of the parents for me and you get to walk away from here with your life.~
  IF ~~ THEN REPLY ~Let me get this straight, I pay you 1000 gold pieces for the privilege of murdering Duvaine�s parents, right?~ GOTO 9
  IF ~~ THEN REPLY ~Should that not be the other way around, you pay me the 1000 gold pieces to spare your life and to murder the Duvaines?~ GOTO 10
  IF ~~ THEN REPLY ~I have no quarrel with the Duvaines, Killian, only with Govan and now you as well. I will make no such bargain.~ GOTO 11
  IF ~~ THEN REPLY ~You have a deal Killian, here take the money. Now, where do I find the Duvaines?~ DO ~TakePartyGold(1000)~ GOTO 12
END

IF ~~ THEN BEGIN 9
  SAY ~Not forgetting, your life, <GABBER>, you get to keep that too.~
  IF ~~ THEN REPLY ~Nothing doing, Killian. I will deal with the Duvaines for you but you will pay me the gold to do it. No gold and the Duvaines continue to enjoy their lives for many years to come.~ GOTO 14
  IF ~~ THEN REPLY ~Look, I will deal with the Duvaines, but I am not paying to do so. Let me ask you Killian, is your life worth 1000 gold pieces to you or not?~ GOTO 14
END

IF ~~ THEN BEGIN 10
  SAY ~No, <GABBER>, you pay me 1000 gold pieces, and then you murder the Duvaines in order to keep *your* life.~
  IF ~~ THEN REPLY ~Nothing doing, Killian. I will deal with the Duvaines for you but you will pay me the gold to do it. No gold and the Duvaines continue to enjoy their lives for many years to come.~ GOTO 14
  IF ~~ THEN REPLY ~Look, I will deal with the Duvaines, but I am not paying to do so. Let me ask you Killian, is your life worth 1000 gold pieces to you or not?~ GOTO 14
END

IF ~~ THEN BEGIN 11
  SAY ~You have a death wish I see, <GABBER>. Allow me to be the one to grant it!~
  IF ~~ THEN DO ~SetGlobal("VP_Govan_Bribes_Me","GLOBAL",3)
Shout(89)
Enemy()~ EXIT
END //If PC leaves for the Vulova estate then => Scenario: Vulova Estate 2

IF ~~ THEN BEGIN 12
  SAY ~Very sensible of you, <GABBER>. The Duvaines are at this moment visiting the Vulova estate. Probably there to offer their condolences to the Vulova girl and to finalise their son�s wedding plans.~
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY ~Now you make sure that they know who it was that sent you. Been a real pleasure doing business with you.~
  IF ~~ THEN DO ~SetGlobal("VP_Killian_Bribes_Me","GLOBAL",1)
ActionOverride("KilHelp1",EscapeArea())
ActionOverride("KilHelp2",EscapeArea())
ActionOverride("KilHelp3",EscapeArea())
EscapeArea()~ EXIT
END //If PC leaves for the Vulova estate then => Scenario: Vulova Estate 3

IF ~~ THEN BEGIN 14
  SAY ~Damn you, <GABBER>, here take your gold! It is I suppose a small price to pay for what I have been forced to become.~
  IF ~~ THEN DO ~GivePartyGold(1000)~ GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY ~You will find the Duvaines at this moment visiting the Vulova estate, probably there to offer their condolences to the Vulova girl and to finalise their son�s wedding plans.~
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY ~Now you make sure that they know who it was that sent you. Farewell.~
  IF ~~ THEN DO ~SetGlobal("VP_Killian_Bribes_Me","GLOBAL",1)
ActionOverride("KilHelp1",EscapeArea())
ActionOverride("KilHelp2",EscapeArea())
ActionOverride("KilHelp3",EscapeArea())
EscapeArea()~ EXIT
END //If PC leaves for the Vulova estate then => Scenario: Vulova Estate 3