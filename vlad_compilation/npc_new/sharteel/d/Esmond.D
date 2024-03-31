BEGIN ~ESMOND~

CHAIN
IF ~NumTimesTalkedTo(0)~ THEN ESMOND 1
~Greetings, I am Esmond. Please, stay your weapons, I have no quarrel with you and neither I nor my friends wish you harm.~
= ~As wild as these creatures may appear we have grown together in our need for both aid and companionship. They will remain by my side unless I am threatened or until I indicate my wish for them to do otherwise.~
= ~So please, just move along your way quickly and you will suffer no molestation from me or mine.~
== VPSHAJ ~(*Scoffs*) Bah, this thief must have a brain the size of a pea if he thought himself safe here! How did the pathetic little man expect to remain hidden here? Still, he is a man and they never think with their mind!~
= ~(*Turning to Esmond*) Don't try and *orc dung* me you male dog! I know you for who you are you cowardly mongrel, the stench of the wyrm clings to you still! All the years spent crawling behind in his filth has left you smelling as foul as your master!~
== ESMOND ~Master no more, but what of you? What makes you any better than me? For all your colourful words, you clearly do the dragon's bidding, why else would you be here?~
== VPSHAJ ~(*Her eyes flash*) I'm no one's servant. Another insinuation that I am and your innards will find themselves hugging steel! I am here to claim that which is mine by right, that which you stole from the wyrm.~
== ESMOND ~Yours by right? What right? The dragon owed me, he took the best years of my life and proud I was at first to give them up into his service, but for what, only to be discarded when younger upstarts came begging, falling over themselves to be allowed to sit at his feet and kiss his tail!~
= ~So, when I left I made sure he'd regret ever thinking me expendable...now he'll see how arrogant he was every time he remembers how it was me who outsmarted him and took his most prized treasure from under that fiery snout of his!~
= ~I know the story of how the dragon gained this treasure and I don't recall mention of any jumped up would be girly fighter coming into it anywhere.~
== VPSHAJ ~(*Sparks leap at her finger tips as she makes to grab for the hilt of her sword*) Jumped up, who are you calling jumped up you heap of orc's dung! I'll show you jumped up...~
== ESMOND ~Oh please, someone restrain this over excitable female before she hurts herself with that sword!~
= ~(*Then pointing to you*) You... yes you, are you responsible for her? If so kindly tell her that I don't wish her any harm but I am not about to give up that which I worked for, and risked my life for in the dragon's lair, because of the threats from an obviously deranged female!~
END
 ++ ~She is a tad unstable Esmond, I'll give you that. So I suggest you give her that which she is asking for, otherwise... well trust me, you really don't want to rile her anymore.~ EXTERN ESMOND 5
 ++ ~Just give us that which we came for and I'm sure I can persuade her to put the sword away.~ EXTERN ESMOND 5
 ++ ~No hard feelings but whereas Shar-Teel has my backing on this matter, no one's responsible for anyone other than theirself here.~ EXTERN ESMOND 6
 ++ ~Sorry Esmond, I don't want to see you get hurt but Shar-Teel believes you have something that once belonged to her father and she wants it back.~ EXTERN ESMOND 6

CHAIN ESMOND 5
~I don't scare easily and I've not kept one step ahead of the old dragon without the odd tussle with his minions... though none claiming a right to his property.~
= ~Tell me, what stories has this girl been feeding you to make you travel so far for her? Must have been some tale to get you to venture into the lair of a red dragon.~
END
 ++ ~Nothing the dragon didn't confirm... but come, surely a few trinkets aren't worth losing your life over?~ EXTERN ESMOND 7
 ++ ~I'm not here to parley, just hand over the goods or this is going to get messy pretty quickly!~ EXTERN ESMOND 11
 ++ ~Just give us the goods and maybe I'll forget my promise to the dragon to return with your body in tow!~ EXTERN ESMOND 11

CHAIN ESMOND 6
~So you stand by her claim do you? Tell me, what stories has this girl been feeding you to make you travel so far? Must have been some tale to get you to venture into the lair of a red dragon.~
END
 ++ ~Nothing the dragon didn't confirm... but come, surely a few trinkets aren't worth losing your life over?~ EXTERN ESMOND 7
 ++ ~I'm not here to parley, just hand over the goods or this is going to get messy pretty quickly!~ EXTERN ESMOND 11
 ++ ~Just give us the goods and maybe I'll forget my promise to the dragon to return with your body in tow!~ EXTERN ESMOND 11

CHAIN ESMOND 7
~Maybe not, but they must be pretty important for you to chase me down here. Now the question is, how much are they worth to you?~
= ~They may not be of any use to me but that doesn't mean I'm going to just hand them over to you, not without some compensation for the trouble I went to getting them out of the clutches of that stinking bag of bones of a dragon.~
EXTERN ESMOND 71

CHAIN ESMOND 11
~(*Laughs*) Ho, so it has come to threats has it and not even a chance to bargain first!? True, threats can prove productive if the one being threatened feels intimidated, but they are only words to my ears.~
= ~Hear me out and maybe then we can forget those silly words of bravado.~
= ~The items may not be of any use to me but that doesn't mean I'm going to just hand them over to you, not without some compensation for the trouble I went to getting them out of the clutches of that stinking bag of bones of a dragon.~
EXTERN ESMOND 71

CHAIN ESMOND 71
~I don't think 5,000 gold is too outrageous a sum to be asking, do you? Not when we consider the price *Old Red* will pay to get his claws back on them.~
= ~That is of course if that is your intention, not that it's any consequence to me what you do. What say you? Do we have a deal?~
END
 IF ~PartyGoldGT(4999)~ THEN REPLY ~Fair enough, here's your gold.~ EXTERN ESMOND 8
 IF ~PartyGoldLT(5000)~ THEN REPLY ~Fair enough, here's your gold.~ EXTERN ESMOND 9
 IF ~CheckStatGT(Player1,15,CHR) PartyGoldGT(2999)~ THEN REPLY ~I'll give you 3,000 gold and not one gold piece more. Take it or leave it!~ EXTERN ESMOND 81
 IF ~CheckStatGT(Player1,15,CHR) PartyGoldLT(3000)~ THEN REPLY ~I'll give you 3,000 gold and not one gold piece more. Take it or leave it!~ EXTERN ESMOND 9
 IF ~CheckStatGT(Player1,10,CHR) CheckStatLT(Player1,16,CHR)~ THEN REPLY ~I'll give you 3,000 gold and not one gold piece more. Take it or leave it!~ EXTERN ESMOND 91
 IF ~CheckStatLT(Player1,11,CHR)~ THEN REPLY ~I'll give you 3,000 gold and not one gold piece more. Take it or leave it!~ EXTERN ESMOND 10
 ++ ~I give you how much?! I don't think so. Leaving you your miserable life in tact is the only payment you'll get from me!~ EXTERN ESMOND 10
 ++ ~So, it's a deal your looking for is it? Well, I have one for you. You hand over the items and there'll be no need for Shar-Teel here to show you *her* deal!~ EXTERN ESMOND 10

CHAIN ESMOND 8
~Take the accursed things, and maybe now the dragon will leave me in peace.~
DO ~SetGlobal("VP_Esmond_Thief","GLOBAL",1) TakePartyGold(5000)~
EXTERN ESMOND 82

CHAIN ESMOND 81
~Take the accursed things, and maybe now the dragon will leave me in peace.~
DO ~SetGlobal("VP_Esmond_Thief","GLOBAL",1) TakePartyGold(3000)~
EXTERN ESMOND 82

CHAIN ESMOND 82
~You'll forgive me if I don't stay around to count each piece, but I am not foolish enough to trust that you won't inform the dragon of my whereabouts.~
= ~Farewell and if you do return to *Old Red* then tell him from me that Esmond sends his regards and says that he would be wise to remain alert.~
= ~After all, when the world hears how I outwitted him, and what with his advancing years and senility, his hoard will be considered easy pickings by all. That is, if you dare brave his lair again.~
= ~Ha-ha-ha! (*Suddenly, the dimension door opens, and Esmond teleports out leaving only the echo of his laughter behind.*)~
DO ~SetGlobal("VP_AngelosLegacy","GLOBAL",5)
SetGlobal("VP_Create_Esmond","GLOBAL",4)
SetGlobal("MAP_GROUP_HOSTILE6","MYAREA",1)
ActionOverride("Esanima1",Enemy())
ActionOverride("Esanima2",Enemy())
ActionOverride("Esanima3",Enemy())
ActionOverride("Esanima4",Enemy())
ActionOverride("Esanima5",Enemy())
StartCutSceneMode()
ActionOverride("Esmond",Wait(1))
ActionOverride("Esmond",DestroySelf())
ActionOverride("Esmond",EndCutSceneMode())
ForceSpell(Myself,DRYAD_TELEPORT)~
EXIT

CHAIN ESMOND 9
~Mmm, you cannot afford it. I think I'll leave it.~
EXTERN ESMOND 92

CHAIN ESMOND 91
~Mmm, I think I'll leave it.~
EXTERN ESMOND 92

CHAIN ESMOND 92
~Before your untimely intrusion, I was on my way to meet colleagues who know their true worth and who will pay me accordingly.~
= ~However before I leave, if you're thinking of returning to *Old Red* to tell him of your failure please, tell him from me that Esmond sends his regards and says that he would be wise to remain alert.~
= ~After all, when the world hears how I outwitted him, and what with his advancing years and senility, his hoard will be considered easy pickings by all. That is, if you dare brave his lair again.~
= ~Ha-ha-ha! (*Suddenly, the dimension door opens, and Esmond teleports out leaving only the echo of his laughter behind.*)~
DO ~SetGlobal("VP_AngelosLegacy","GLOBAL",5)
SetGlobal("VP_Create_Esmond","GLOBAL",4)
SetGlobal("MAP_GROUP_HOSTILE6","MYAREA",1)
ActionOverride("Esanima1",Enemy())
ActionOverride("Esanima2",Enemy())
ActionOverride("Esanima3",Enemy())
ActionOverride("Esanima4",Enemy())
ActionOverride("Esanima5",Enemy())
StartCutSceneMode()
ActionOverride("Esmond",Wait(1))
ActionOverride("Esmond",DestroySelf())
ActionOverride("Esmond",EndCutSceneMode())
ForceSpell(Myself,DRYAD_TELEPORT)~
EXIT

CHAIN ESMOND 10
~Bah, we are all wasting our time here. If it is your choice that your bones lie for the vultures to pick, along with the other fools who came rushing to win the dragon's favour then so be it.~
= ~However before I leave, if you're thinking of returning to *Old Red* to tell him of your failure please, tell him from me that Esmond sends his regards and says that he would be wise to remain alert.~
= ~After all, when the world hears how I outwitted him, and what with his advancing years and senility, his hoard will be considered easy pickings by all. That is, if you dare brave his lair again.~
= ~At them my faithful, don't fail me and you'll all feast well this day!~
= ~Ha-ha-ha! (*Suddenly, the dimension door opens, and Esmond teleports out leaving only the echo of his laughter behind.*)~
DO ~SetGlobal("VP_AngelosLegacy","GLOBAL",5)
SetGlobal("VP_Create_Esmond","GLOBAL",4)
SetGlobal("MAP_GROUP_HOSTILE6","MYAREA",1)
ActionOverride("Esanima1",Enemy())
ActionOverride("Esanima2",Enemy())
ActionOverride("Esanima3",Enemy())
ActionOverride("Esanima4",Enemy())
ActionOverride("Esanima5",Enemy())
StartCutSceneMode()
ActionOverride("Esmond",Wait(1))
ActionOverride("Esmond",DestroySelf())
ActionOverride("Esmond",EndCutSceneMode())
ForceSpell(Myself,DRYAD_TELEPORT)~
EXIT

CHAIN
IF WEIGHT #-14 ~Global("VP_After_Esm_Esape","LOCALS",2) Global("VP_Esmond_Thief","GLOBAL",0)~ THEN VPSHAJ esmond10
~(*Her eyes flash with anger*) What in the nine hells! How look where your bloody incompetence has gotten me!~
= ~I'll... I'll flay you alive! No flaying's too good for you. I'll toast you in the biggest fireball I can muster, that way I get you and this pathetic group of yours in one go!~
= ~(*Her hands move, sparks already beginning to dance at her finger tips*)~
END
 ++ ~Shar-Teel, stop now or I swear, you'll not live long enough to raise that fireball!!~ EXTERN VPSHAJ esmond11
 ++ ~Shar-Teel think, it'll take us but a second to surround you and you'll be caught in your own fireball.~ EXTERN VPSHAJ esmond11
 ++ ~Shar-Teel, NO! (*Then taking one look at the fire growing in her hands you attack Shar-Teel*)~ EXTERN VPSHAJ esmond15

CHAIN VPSHAJ esmond11
~(*Snarling, she looks at you and her fingers stop weaving*) I'll not allow your bungling or my temper to be my downfall. I will find the male scum again, without your hindrance!~
= ~You can forget our deal. I curse the day I ever thought you worthy of my service. Now get out of my way.~
END
 ++ ~This is no one's fault. I didn't know he was capable of teleporting and I'm sure you didn't either. Just pull your head in and put it down to experience! ~ EXTERN VPSHAJ esmond12
 ++ ~Whereas I don't appreciate all your bad mouthing, you have proven yourself invaluable to the group so won't you reconsider and stay?~ EXTERN VPSHAJ esmond12
// ++ ~You are my most valuable companion... and trustfull friend. There's so much we passed together, and you have always bravely fought at my side. Please don't leave me now.~ EXTERN VPSHAJ esmond14
 ++ ~I've just about had it with all your bad mouthing! So just go and good riddance!~ EXTERN VPSHAJ esmond13

CHAIN VPSHAJ esmond12
~Never!! Know that should our paths ever cross again, for whatever reason, then you best keep walking or by the nine hells I'll finish what I started here, and that's a promise!~
DO ~SetGlobal("VP_After_Esm_Esape","LOCALS",3)
GivePartyAllEquipment()
DropInventory()
LeaveParty()
EscapeArea()~
EXIT

CHAIN VPSHAJ esmond13
~I hope never to see you or this worthless band of cretins again, but should our paths ever cross again, for whatever reason, then you best keep walking or by the nine hells I'll finish what I started here, and that's a promise!~
DO ~SetGlobal("VP_After_Esm_Esape","LOCALS",3)
GivePartyAllEquipment()
DropInventory()
LeaveParty()
EscapeArea()~
EXIT

CHAIN VPSHAJ esmond15
~Pathetic fools.~
DO ~SetGlobal("VP_After_Esm_Esape","LOCALS",3)
LeaveParty()
Enemy()
Attack(Player1)~
EXIT

/*
CHAIN VPSHAJ esmond11
~(*Snarling, she looks at you and her fingers stop weaving*) I'll not allow your bungling or my temper to be my downfall. I will find the male scum again, without your hindrance!~
= ~You can forget our deal. I curse the day I ever thought you worthy of my service. Now get out of my way.~
 ++ ~This is no one's fault. I didn't know he was capable of teleporting and I'm sure you didn't either. Just pull your head in and put it down to experience! ~ EXTERN VPSHAJ esmond12
 ++ ~Whereas I don't appreciate all your bad mouthing, you have proven yourself invaluable to the group so won't you reconsider and stay?~ EXTERN VPSHAJ esmond12
 ++ ~I've just about had it with all your bad mouthing! So just go and good riddance!~ EXTERN VPSHAJ esmond13
END

CHAIN VPSHAJ esmond14
~(*Wiping her blood stained boot in the dirt, she sneers*) What do I care for your words! I care only for actions, not self righteous recriminations after the deed is done.~
= ~Bah, spare me the hypocrisy, you make me want to throw up!~
DO ~SetGlobal("VP_After_Esm_Esape","LOCALS",3)~ EXIT
END
*/

CHAIN
IF WEIGHT #-13 ~Global("VP_After_Esm_Esape","LOCALS",2) Global("VP_Esmond_Thief","GLOBAL",1)~ THEN VPSHAJ esmond5
~Ye gods, what were you thinking of, <CHARNAME>?! You should have just let me cut the bastard's throat. It's not like anyone was going to miss the pathetic dog, and not to mention our purse is now unnecessarily lighter.~
END
 ++ ~Shut up Shar-Teel! You got what you wanted and it's not like we couldn't afford the gold!~ EXTERN VPSHAJ esmond6
 ++ ~It is for me to decide what we do with our gold so stop whining and try to be grateful for once in your life.~ EXTERN VPSHAJ esmond6
 ++ ~I don't share your love for bloodshed Shar-Teel. If gold was what it took for a peaceful outcome then I consider it gold well spent.~ EXTERN VPSHAJ esmond8

CHAIN VPSHAJ esmond6
~Yea well, don't expect me to hang around when you're hiring out as mercenaries again, or clearing the sewers of vermin because you've given our hard earned gold to every lost cause we meet.~
= ~Mark my words, I have no intentions of living in poverty ever again.~
END
 ++ ~Neither do I so you've nothing to fear from my extravagances. Now can we quit yammering and get out of here!~ EXTERN VPSHAJ esmond7
 ++ ~You'll do whatever you have to do regardless, Shar-Teel, so let's drop it for now and get out of here!~ EXTERN VPSHAJ esmond7


CHAIN VPSHAJ esmond7
~Just telling you so's that you know should I go, all that's mine goes with me, and I'll skewer anyone who so much as raises a hand to stop me!~
== VPHROJ IF ~InParty("vphroth") InMyArea("vphroth") !StateCheck("vphroth",CD_STATE_NOTVALID)~ ~(*Sternly*) Let us not gloat on what has occurred here Shar-Teel.~ DO ~SetGlobal("vpSharteelEsmondInterjection","GLOBAL",1)~
== VPTAFJ IF ~InParty("vptaffic") InMyArea("vptaffic") !StateCheck("vptaffic",CD_STATE_NOTVALID)~ ~Bah, I hardly broke a sweat there! How's a hero supposed to build a reputation when he's forced to waste time on petty skirmishes?!~ DO ~SetGlobal("vpSharteelEsmondInterjection","GLOBAL",1)~
== VPMELJ IF ~InParty("vptaffic") InMyArea("vptaffic") !StateCheck("vptaffic",CD_STATE_NOTVALID) InParty("vpmelora") InMyArea("vpmelora") !StateCheck("vpmelora",CD_STATE_NOTVALID)~ ~Never I'd say if the hero in question is yourself gnome. Heroes don't stay at the back tossing trifling spells around, they take point with swords in their hands.~
== VPTAFJ IF ~InParty("vptaffic") InMyArea("vptaffic") !StateCheck("vptaffic",CD_STATE_NOTVALID) InParty("vpmelora") InMyArea("vpmelora") !StateCheck("vpmelora",CD_STATE_NOTVALID)~ ~Look to yourself hafling. I don't see you up front unless it entails sneaking around in the shadows!~
== VPMELJ IF ~InParty("vptaffic") InMyArea("vptaffic") !StateCheck("vptaffic",CD_STATE_NOTVALID) InParty("vpmelora") InMyArea("vpmelora") !StateCheck("vpmelora",CD_STATE_NOTVALID)~ ~And how many times has my sneaking around as you call it, saved your hide from an ambush or from a particularly nasty trap, more times than you can count I'll wager!~
== VPTAFJ IF ~InParty("vptaffic") InMyArea("vptaffic") !StateCheck("vptaffic",CD_STATE_NOTVALID) InParty("vpmelora") InMyArea("vpmelora") !StateCheck("vpmelora",CD_STATE_NOTVALID)~ ~What do you think you're in this group for you half wit? You suss out the threat and the rest of the group take point in order to let me muster my magic and take the enemy out before any serious damage befalls you all.~
== VPTAFJ IF ~InParty("vptaffic") InMyArea("vptaffic") !StateCheck("vptaffic",CD_STATE_NOTVALID) InParty("vpmelora") InMyArea("vpmelora") !StateCheck("vpmelora",CD_STATE_NOTVALID)~ ~(*Turning away*) Tsk... What other reason does she think she's here for? Her charismatic attraction?!~
== VPHROJ IF ~Global("vpSharteelEsmondInterjection","GLOBAL",1)~ ~(*Wiping her blood stained boot in the dirt, she sneers*) What do I care for your words! I care only for actions, not self righteous recriminations after the deed is done.~
== VPHROJ IF ~Global("vpSharteelEsmondInterjection","GLOBAL",1)~ ~Mine are, after all, not the only hands stained in blood, or hadn't you cared to take a look at yourselves? I thought not!~
== VPHROJ IF ~Global("vpSharteelEsmondInterjection","GLOBAL",1)~ ~Bah, spare me the hypocrisy , you all make me want to throw up!~
EXTERN VPSHAJ esmond9

CHAIN VPSHAJ esmond8
~(*Scoffs*) Listen to yourself, your dead father would turn in his grave if he could hear you talk!~
= ~No, he'd probably jump right out of it and strike you down himself for shaming him! You've not got the balls to be worthy of the name *murder*!~
END
 ++ ~Just beware of that acid tongue of yours my girl. The worm may yet turn and prove you wrong!~ EXTERN VPSHAJ esmond9
 ++ ~Whatever Shar-Teel, I am the child of murder and no amount of petty jealousy on your part will make it otherwise!~ EXTERN VPSHAJ esmond9
 ++ ~Nowhere is it written that the child should follow the father. I am my own person and proud to be so.~ EXTERN VPSHAJ esmond9

CHAIN VPSHAJ esmond9
~Sometimes your attitude makes me sick to my stomach. Only time will tell whether you make something of yourself or die pitifully in the attempt. Just don't count on me anymore hanging around to keep backing you up.~
DO ~SetGlobal("VP_After_Esm_Esape","LOCALS",3)
GivePartyAllEquipment()
DropInventory()
LeaveParty()
EscapeArea()~
EXIT

/*
CHAIN VPSHAJ esmond9
~Bah, sometimes your attitude makes me sick to my stomach. Only time will tell whether you make something of yourself or die pitifully in the attempt. Just don't count on me hanging around to keep backing you up.~
DO ~SetGlobal("VP_After_Esm_Esape","LOCALS",3)~ EXIT
END
*/