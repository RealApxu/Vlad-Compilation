BEGIN KILLIAN

CHAIN
IF ~Global("VP_Govan_Bribes_Me","GLOBAL",2)~ THEN KILLIAN 0
~You seem to be looking for some one, friend. Perhaps I can help with his whereabouts, name's Killian.~
END
 ++ ~Then you are the man I am looking for. I am <GABBER>. Govan Duvaine said you would be able to help me with a small financial transaction.~ EXTERN KILLIAN 2
 ++ ~Well met, Killian, I am <GABBER>. Can we get this little transaction over with as quickly as possible, I have places to be.~ EXTERN KILLIAN 2
 ++ ~I am <GABBER>, and I believe you are the person who is about to make me a very rich <PRO_MANWOMAN>, courtesy of Govan Duvaine of course.~ EXTERN KILLIAN 2
 ++ ~Let us get straight to business, Killian. I am <GABBER>. I have something for you and you have something for me, now, let us make the exchange.~ EXTERN KILLIAN 2

CHAIN
IF ~GlobalLT("VP_Govan_Bribes_Me","GLOBAL",2)~ THEN KILLIAN 1
~I'm a busy man, friend. Why don't you go and bother someone else?~
EXIT

CHAIN KILLIAN 2
~Govan did not describe you very well to me. Let me see that ring you have there. I need to be sure that you are who you say you are before handing over any gold.~
END
 IF ~PartyHasItem("GovRing")~ THEN REPLY ~You can see it, Killian, but it is not leaving my hand until I see the gold... (*You show Killian the ring but keep a firm hold on it.*)~ EXTERN KILLIAN 3
 IF ~PartyHasItem("GovRing")~ THEN REPLY ~Oh no, Killian! Do I look that stupid? If you value your head you will not answer that. Here, you can look at the ring but from where you stand. Do not attempt one step closer... (*You show Killian the ring but keep a firm hold on it.*)~ EXTERN KILLIAN 3
 IF ~PartyHasItem("GovRing")~ THEN REPLY ~Here, Killian, I think you will see that this is indeed Govan's ring... (*You give the ring to Killian.*)~ DO ~TakePartyItem("GovRing")~ EXTERN KILLIAN 3
 ++ ~The gold first, Killian. Show me the gold!~ EXTERN KILLIAN 3

CHAIN KILLIAN 3
~(*Laughs*)... Duvaine said you were a cagey bastard. No matter, things seem to be in order here. I just had to be sure. Unfortunately for you, it is not gold that Duvaine has instructed me to give you but a taste of cold steel!~
END
 ++ ~So, Duvaine intends to keep his gold and the girl. If it is a fight you want, then I am more than ready to give you one!~ EXTERN KILLIAN 4
 ++ ~You will not find me an easy victim, Killian. I will take you first and then Duvaine.~ EXTERN KILLIAN 4
 ++ ~Why do your words not surprise me, Killian? I had a hunch Duvaine would not pay out such a sum just to keep a woman.~ EXTERN KILLIAN 4
 ++ ~Whatever Duvaine payed you, Killian, you will not going to live long enough to enjoy it.~ EXTERN KILLIAN 4

CHAIN KILLIAN 4
~Stand easy, <GABBER>. Do you think I am foolish enough to come here alone? Come friends, make yourselves known.~
DO ~CreateCreature("KilHelp1",[485.625],15) CreateCreature("KilHelp2",[537.584],0) CreateCreature("KilHelp3",[594.605],1)~
EXTERN KILLIAN 5

CHAIN KILLIAN 5
~There is no need for anyone to die, I have a proposition of my own to put to you. You do something for me and you walk away with your life, no gold mind you, just your life. Are you listening?~
END
 ++ ~I will give you three minutes only, Killian, and if I do not like what I hear... well, we shall what happens then.~ EXTERN KILLIAN 6
 ++ ~I am listening and this had better be good because your life depends on it being so, Killian.~ EXTERN KILLIAN 6
 ++ ~Speak, Killian, but make it quick, I am in no mood for more bargaining.~ EXTERN KILLIAN 6
 ++ ~You're foolish if you think I'm going to listen to you. No one would dare to cheat me, fool!~ EXTERN KILLIAN 11

CHAIN KILLIAN 6
~Duvaine has asked me to take care of his problem, namely you, but I also have a problem of my own that needs taking care of, namely Duvaine.~
EXTERN KILLIAN 7

CHAIN KILLIAN 7
~Not Govan himself, his parents. Too long a story to go into here, all you need know is that I owe my present situation to them and I am not talking about the phoney *Keeper Of the Duvaine Finances* Govan spoke of.~
EXTERN KILLIAN 8

CHAIN KILLIAN 8
~I now wish to pay them back if you get my meaning, <GABBER>? The deal is this, you pay me 1000 gold pieces to tell Govan that you did not show, then you take care of the parents for me and you get to walk away from here with your life.~
END
 ++ ~Let me get this straight, I pay you 1000 gold pieces for the privilege of murdering Duvaine's parents, right?~ EXTERN KILLIAN 9
 ++ ~Should that not be the other way around, you pay me the 1000 gold pieces to spare your life and to murder the Duvaines?~ EXTERN KILLIAN 10
 ++ ~I have no quarrel with the Duvaines, Killian, only with Govan and now you as well. I will make no such bargain.~ EXTERN KILLIAN 11
 ++ ~You have a deal Killian, here take the money. Now, where do I find the Duvaines?~ DO ~TakePartyGold(1000)~ EXTERN KILLIAN 12

CHAIN KILLIAN 9
~Not forgetting, your life, <GABBER>, you get to keep that too.~
END
 ++ ~Nothing doing, Killian. I will deal with the Duvaines for you but you will pay me the gold to do it. No gold and the Duvaines continue to enjoy their lives for many years to come.~ EXTERN KILLIAN 14
 ++ ~Look, I will deal with the Duvaines, but I am not paying to do so. Let me ask you Killian, is your life worth 1000 gold pieces to you or not?~ EXTERN KILLIAN 14

CHAIN KILLIAN 10
~No, <GABBER>, you pay me 1000 gold pieces, and then you murder the Duvaines in order to keep *your* life.~
END
 ++ ~Nothing doing, Killian. I will deal with the Duvaines for you but you will pay me the gold to do it. No gold and the Duvaines continue to enjoy their lives for many years to come.~ EXTERN KILLIAN 14
 ++ ~Look, I will deal with the Duvaines, but I am not paying to do so. Let me ask you Killian, is your life worth 1000 gold pieces to you or not?~ EXTERN KILLIAN 14

CHAIN KILLIAN 11
~You have a death wish I see, <GABBER>. Allow me to be the one to grant it!~
DO ~SetGlobal("VP_Govan_Bribes_Me","GLOBAL",3) Shout(89) Enemy()~
EXIT
 //If PC leaves for the Vulova estate then => Scenario: Vulova Estate 2

CHAIN KILLIAN 12
~Very sensible of you, <GABBER>. The Duvaines are at this moment visiting the Vulova estate. Probably there to offer their condolences to the Vulova girl and to finalise their son's wedding plans.~
EXTERN KILLIAN 13

CHAIN KILLIAN 13
~Now you make sure that they know who it was that sent you. Been a real pleasure doing business with you.~
DO ~SetGlobal("VP_Killian_Bribes_Me","GLOBAL",1) ActionOverride("KilHelp1",EscapeArea()) ActionOverride("KilHelp2",EscapeArea()) ActionOverride("KilHelp3",EscapeArea()) EscapeArea()~
EXIT
 //If PC leaves for the Vulova estate then => Scenario: Vulova Estate 3

CHAIN KILLIAN 14
~Damn you, <GABBER>, here take your gold! It is I suppose a small price to pay for what I have been forced to become.~
DO ~GivePartyGold(1000)~ EXTERN KILLIAN 15

CHAIN KILLIAN 15
~You will find the Duvaines at this moment visiting the Vulova estate, probably there to offer their condolences to the Vulova girl and to finalise their son's wedding plans.~
EXTERN KILLIAN 16

CHAIN KILLIAN 16
~Now you make sure that they know who it was that sent you. Farewell.~
DO ~SetGlobal("VP_Killian_Bribes_Me","GLOBAL",1) ActionOverride("KilHelp1",EscapeArea()) ActionOverride("KilHelp2",EscapeArea()) ActionOverride("KilHelp3",EscapeArea()) EscapeArea()~
EXIT
 //If PC leaves for the Vulova estate then => Scenario: Vulova Estate 3