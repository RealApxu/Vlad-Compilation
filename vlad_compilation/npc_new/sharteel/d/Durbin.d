BEGIN ~DURBIN~

CHAIN
IF ~NumTimesTalkedTo(0)~ THEN DURBIN D1
~Well met friends, I am Durbin Vizenge, I am indebted to you for rescuing me for I was surely about to be devoured by those creatures.~
DO ~SetGlobal("VP_Know_Durbin","GLOBAL",1)~
= ~I fear I don't have anything I can give you in the way of a reward but if you look around I am sure you will find trinkets of value that those beasts have taken from other not so fortunate souls.~
END
 IF ~Global("SPRITE_IS_DEADfirkra02","GLOBAL",0) Global("FirkraagDeal","GLOBAL",0) Global("Firmag01Move","GLOBAL",0) GlobalLT("VP_AngelosLegacy","GLOBAL",4)~ THEN REPLY ~Tell me Durbin, do you also have business with Lord Firkraag or was it he who locked you in here with these beasts?~ EXTERN DURBIN D2
 IF ~Global("SPRITE_IS_DEADfirkra02","GLOBAL",0) Global("FirkraagDeal","GLOBAL",0) Global("Firmag01Move","GLOBAL",0) GlobalLT("VP_AngelosLegacy","GLOBAL",4)~ THEN REPLY ~What have we here? Seeing your predicament you certainly can't be another of Lord Firkraag's spies sent to spy on me.~ EXTERN DURBIN D2
 IF ~Global("SPRITE_IS_DEADfirkra02","GLOBAL",0) Global("FirkraagDeal","GLOBAL",0) Global("Firmag01Move","GLOBAL",0) GlobalLT("VP_AngelosLegacy","GLOBAL",4)~ THEN REPLY ~Then you'd better hope you have information worth trading for your life!~ EXTERN DURBIN D17
 IF ~Global("SPRITE_IS_DEADfirkra02","GLOBAL",0) Global("FirkraagDeal","GLOBAL",0) Global("Firmag01Move","GLOBAL",0) GlobalLT("VP_AngelosLegacy","GLOBAL",4)~ THEN REPLY ~Well met to you Durbin. If you could tell me where Lord Firkraag is holding the child of Garren Windspear, I'll deem that payment enough?~ EXTERN DURBIN D3
 IF ~Global("SPRITE_IS_DEADfirkra02","GLOBAL",0) Global("FirkraagDeal","GLOBAL",0) Global("Firmag01Move","GLOBAL",0) GlobalLT("VP_AngelosLegacy","GLOBAL",4)~ THEN REPLY ~Well met to you Durbin. If you could tell me where Lord Firkraag is hiding out, I'll deem that payment enough?~ EXTERN DURBIN D5
 IF ~Global("SPRITE_IS_DEADfirkra02","GLOBAL",0) Global("FirkraagDeal","GLOBAL",0) Global("Firmag01Move","GLOBAL",0) InParty("Sharteel") !Dead("Sharteel") GlobalLT("VP_AngelosLegacy","GLOBAL",4)~ THEN REPLY ~I have no need for payment... it's all in a days work for an adventurer. You are free to go.~ EXTERN VPSHAJ durbin1
 IF ~Global("SPRITE_IS_DEADfirkra02","GLOBAL",1)~ THEN REPLY ~If you've come looking for Firkraag, you're too late my friend... he's dead.~ EXTERN DURBIN D19
 IF ~Global("SPRITE_IS_DEADfirkra02","GLOBAL",1)~ THEN REPLY ~What have we here? If you're a servant of the dragon, consider yourself relieved of your duties... he's dead!~ EXTERN DURBIN D19
 IF ~OR(3) Global("FirkraagDeal","GLOBAL",1) GlobalGT("Firmag01Move","GLOBAL",0) Global("VP_AngelosLegacy","GLOBAL",4)~ THEN REPLY ~Then maybe I'll take what little you do have in payment.~ EXTERN DURBIN D23
 IF ~Global("SPRITE_IS_DEADfirkra02","GLOBAL",1) OR(3) Global("FirkraagDeal","GLOBAL",1) GlobalGT("Firmag01Move","GLOBAL",0) Global("VP_AngelosLegacy","GLOBAL",4) InParty("Sharteel") !Dead("Sharteel")~ THEN REPLY ~I have no need for payment... it's all in a days work for an adventurer. You are free to go.~ EXTERN VPSHAJ durbin17
 IF ~Global("SPRITE_IS_DEADfirkra02","GLOBAL",0) OR(3) Global("FirkraagDeal","GLOBAL",1) GlobalGT("Firmag01Move","GLOBAL",0) Global("VP_AngelosLegacy","GLOBAL",4) InParty("Sharteel") !Dead("Sharteel")~ THEN REPLY ~I have no need for payment... it's all in a days work for an adventurer. You are free to go.~ EXTERN VPSHAJ durbin18
 IF ~Global("SPRITE_IS_DEADfirkra02","GLOBAL",0) OR(3) Global("FirkraagDeal","GLOBAL",1) GlobalGT("Firmag01Move","GLOBAL",0) Global("VP_AngelosLegacy","GLOBAL",4)~ THEN REPLY ~So what are you, another of the dragon's servants? I don't see him rushing to save your skin from the Wolfweres.~ EXTERN DURBIN D25
END

CHAIN DURBIN D2
~I was looking for yo... ahem... intruders in the other room. Unfortunately for me, I didn't notice when those beasts were thrown in and the door locked behind them.~
= ~I have been in the service of Lord Firkraag for many years now, an honour you couldn't possibly begin to understand. However, I don't flatter myself as being important in my Lord's eyes. Certainly not important enough for him to notice I was missing.~
= ~If in time he discovered he was a servant or two down, he'd merely replace them thinking they'd perished sometime over the years. So you see, until you arrived, I was resigned to ending up in the bellies of those beasts. Now, may I go?~
END
 ++ ~I'll consider it if you tell me where Garren Windspear's child is being held?~ EXTERN DURBIN D3 //reply to D2 & D18
 ++ ~Not before you tell me where this Lord Firkraag of yours is hiding out!~ EXTERN DURBIN D5 //reply to D2 & D18
 ++ ~I don't think so. I can't have you warning your master that we are closing in on him now can I?~ EXTERN DURBIN D7 //reply to D2 & D18

CHAIN DURBIN D3
~(*Smiles*) The child... of course. My Lord knew you'd come, so I doubt he'll mind me telling you now... Go back the way you have just come and cross the wooden bridge, I warn you it is well guarded. There is a room on your right which leads down to another and that is where you will find the child.~
= ~Even if you overcome the guards I don't believe my Lord would have entrusted the key to the child's cell to them. For that you must confront my Lord himself... if you dare. Now if that is all, I'll take my leave of you.~
END
 ++ ~One more question, can you tell me where this Lord Firkraag of yours is hiding out?~ EXTERN DURBIN D4
 ++ ~I don't think so. I can't have you warning your master that we are closing in on him now can I?~ EXTERN DURBIN D7
 IF ~InParty("Sharteel") !Dead("Sharteel")~ THEN REPLY ~Get out of here, but I warn you, if you stand with your master against me I'll not hesitate in taking the life I have just saved.~ EXTERN VPSHAJ durbin11

CHAIN DURBIN D4
~Yes, I'm sure my Lord wouldn't mind my disclosing his whereabouts, not now you are so close. My Lord Firkraag's personal quarters are on the lower floor of this place. The entrance to my Lord's quarters is in the room where the child is imprisoned.~
= ~Turn left as you walk into this room and there you will find steps leading to the lower floor. He almost certainly knows you are here and is expecting you. I hope you are as prepared for him. Now if that is all, I'll take my leave of you.~
END
 ++ ~I don't think so. I can't have you warning your master that we are closing in on him now can I?~ EXTERN DURBIN D7
 IF ~InParty("Sharteel") !Dead("Sharteel")~ THEN REPLY ~Get out of here, but I warn you, if you stand with your master against me I'll not hesitate in taking the life I have just saved.~ EXTERN VPSHAJ durbin11

CHAIN DURBIN D5
~(*Smiles*) I doubt you would have gotten this far if he hadn't meant for you to, so I can safely say he wouldn't mind my disclosing his whereabouts, now that you are so close.~
= ~My Lord Firkraag's personal quarters are on the lower floor of this place. Go back the way you have just come and cross the wooden bridge, I warn you it is well guarded. There is a room on your right which leads down to another.~
= ~Turn left as you walk into this room and there you will find steps leading to the lower floor. He almost certainly knows you are here and is expecting you. I hope you are as prepared for him. Now if that is all...~
END
 ++ ~One more question, can you tell me where Garren Windspear's child is being held?~ EXTERN DURBIN D6
 ++ ~I don't think so. I can't have you warning your master that we are closing in on him now can I?~ EXTERN DURBIN D7
 IF ~InParty("Sharteel") !Dead("Sharteel")~ THEN REPLY ~Get out of here, but I warn you, if you stand with your master against me I'll not hesitate in taking the life I have just saved.~ EXTERN VPSHAJ durbin11

CHAIN DURBIN D6
~The child... of course. You will find the child in the room that holds the entrance to my Lord's private quarters. My Lord will have set guards around the child and even if you manage to overcome them, I don't believe he would have entrusted the key to the child's cell to them. For that you must confront my Lord himself... if you dare. Now if that is all...~
END
 ++ ~I don't think so. I can't have you warning your master that we are closing in on him now can I?~ EXTERN DURBIN D7
 IF ~InParty("Sharteel") !Dead("Sharteel")~ THEN REPLY ~Get out of here, but I warn you, if you stand with your master against me I'll not hesitate in taking the life I have just saved.~ EXTERN VPSHAJ durbin11

CHAIN DURBIN D7
~(*Sighs*) I can not hope to best you in a fight, and anyway I am tired. I die knowing that I have lived a much longer life than I would have, had I not sworn my fealty to my master. I trust that when you meet him you do nothing foolish and treat him with respect, as that may be the only way to you leaving here alive.~
END
 IF ~OR(2) !InParty("Sharteel") Dead("Sharteel")~ THEN DO ~EscapeArea()~ EXIT
 IF ~InParty("Sharteel") !Dead("Sharteel")~ THEN EXTERN VPSHAJ durbin11

CHAIN DURBIN D8
~I'll have you know that I been in the service of Lord Firkraag for many years now, an honour you couldn't possibly begin to understand.~
= ~I was looking for yo... intruders in the other room when, unfortunately for me, I didn't notice that those beasts had been thrown in and the door locked behind them. I don't flatter myself as being important in my Lord's eyes. Certainly not important enough for him to notice I was missing.~
= ~So you see, until you arrived, I was resigned to ending up in the bellies of those beasts. Now, may I go?~
EXTERN VPSHAJ durbin2

CHAIN DURBIN D9
~If it's information you want then I know very little. I wasn't privy to his Lordships dealings. He is very private, solitary even, preferring to use his servants as his eyes and ears, but I can tell you, of the few visitors who ventured here, even fewer left.~
EXTERN VPSHAJ durbin3

CHAIN DURBIN D10
~I may be old but I am not senile young woman! (*His brow furrows*) Dossan you say... yes, there was something a while back now. What was it?~
EXTERN VPSHAJ durbin4

CHAIN DURBIN D11
~Threatening gestures won't get you anywhere. You just have to be patient as it takes a little longer these days for my brain to recall past incidents that were of little consequence to me.~
EXTERN VPSHAJ durbin5

CHAIN DURBIN D12
~(*Looking into Shar-Teel's eyes, the old man shakes his head*) Sadly, oft' an evil heart is masked by a beautiful face. I have come across many such faces but none with eyes that shine with the lust for blood in the way that yours do. A cruel heart surely beats within your breast.~
EXTERN VPSHAJ durbin6

CHAIN DURBIN D13
~That won't be necessary, things are coming back to me. I can't be certain... I wasn't here when the young man dropped by, but it is said that there are certain items my Lord keeps hidden well away from his usual hoard...~
= ~Items, that for personal reasons, he didn't want falling into the hands of those who seek to destroy him... or so I have heard. Could these be what you seek?~
EXTERN VPSHAJ durbin7

CHAIN DURBIN D14
~Alas, you have made this journey for nothing. They are no longer here. Sometime ago a servant had discovered his Lordship's hidden cache. As it so happen, a short while later he subsequently failed in his service to Lord Firkraag, and fearing for his life he absconded with the lot.~
= ~I remember the day well, his Lordship's anger was such that this whole place shook and I feared it would topple to the ground... as he raged in search of the thief but he was long gone.~
EXTERN VPSHAJ durbin8

CHAIN DURBIN D15
~(*Squirming away from her sword*) Please, you'll not learn anything if you kill me. I beg you, give me your word that you'll set me free and I'll tell you what I know?~
EXTERN VPSHAJ durbin9

CHAIN DURBIN D16
~There... there have been reported sightings of him in the area of Umar Hills but he always manages to disappear before anyone can get close enough to apprehend him. With each new sighting and failure of capture that reached his Lordship's ears, he could be heard raging and cursing enough to bring the walls down around us all. I... I swear, that is the truth.~
EXTERN VPSHAJ durbin10

CHAIN DURBIN D17
~(*Sighs*) So, this rescue is just a reprieve. I escape the bellies of the beasts only to find myself at the mercy of another type of beast. Ah well, I was already resigned to my fate, do as you will.~
END
 ++ ~Do you know where the coward Lord Firkraag is hiding out?~ EXTERN DURBIN D5
 ++ ~How did you come to be locked in with those beasts?~ EXTERN DURBIN D2
 ++ ~Lord Firkraag throw you to the wolves did he? Now what did you do to deserve that I wonder?~ EXTERN DURBIN D18

CHAIN DURBIN D18
~I'll have you know that I been in the service of Lord Firkraag for many years now and I was looking for yo... ahem... intruders in the other room.~
= ~Unfortunately for me, I didn't notice when those beasts were thrown in and the door locked behind them. I don't flatter myself as being important in my Lord's eyes. Certainly not important enough for him to notice I was missing.~
= ~So you see, until you arrived, I was resigned to ending up in the bellies of those beasts. Now, may I go?~
END
 ++ ~I'll consider it if you tell me where Garren Windspear's child is being held?~ EXTERN DURBIN D3 //reply to D2 & D18
 ++ ~Not before you tell me where this Lord Firkraag of yours is hiding out!~ EXTERN DURBIN D5 //reply to D2 & D18
 ++ ~I don't think so. I can't have you warning your master that we are closing in on him now can I?~ EXTERN DURBIN D7 //reply to D2 & D18

CHAIN DURBIN D19
~(*Shaking his head sadly*) I have long expected this day but it doesn't make it any less painful. I knew that there would come a day when his arrogance would be his downfall. That he would, one day, challenge one too many young adventurers and one of those adventurers would be his death.~
= ~Still, it is a sad day when so magnificent and ancient a creature such as he dies. The knowledge he carried, gathered over the centuries... lost forever. Forgive me, I must go mourn my Lord.~
EXTERN VPSHAJ durbin12

CHAIN DURBIN D20
~(*Angrily*) What... my Lord lies dead and you question me about trinkets when you have clearly stolen all that he prized! You and your kind are no better than vultures... taking from the dead!~
EXTERN VPSHAJ durbin13

CHAIN DURBIN D21
~(*Sneers*) Bah, why should I? You've already taken enough of my Lord's possessions to satisfy your greed, not to mention the name you'll have made for yourself when you tell your tale of how you slaughtered one of nature's mightiest and most ancient of creatures! Isn't that enough to satisfy your lust for glory?~
 EXTERN VPSHAJ durbin14
END

CHAIN DURBIN D21a
~(*He pales and starts squirming at the touch of her sword*) Please, you'll not learn anything if you kill me. I beg you, give me your word that you'll set me free and I'll tell you what I know?~
EXTERN VPSHAJ durbin15


CHAIN DURBIN D22
~There... there have been reported sightings of him in the area of Umar Hills but he always manages to disappear before anyone can get close enough to apprehend him. With each new sighting and failure of capture that reached his Lordship's ears, he could be heard raging and cursing enough to bring the walls down around us all. I... I swear, that is the truth.~
EXTERN VPSHAJ durbin16

CHAIN DURBIN D23
~(*Sighs*) So, this rescue is just a reprieve. I escape the bellies of the beasts only to find myself at the mercy of another type of beast. Ah well, I was already resigned to my fate, do as you will.~
END
 IF ~OR(2) !InParty("Sharteel") Dead("Sharteel")~ THEN DO ~EscapeArea()~ EXIT
 IF ~Global("SPRITE_IS_DEADfirkra02","GLOBAL",1) InParty("Sharteel") !Dead("Sharteel")~ THEN REPLY ~I have no need for payment... it's all in a days work for an adventurer. You are free to go.~ EXTERN VPSHAJ durbin17
 IF ~Global("SPRITE_IS_DEADfirkra02","GLOBAL",0) InParty("Sharteel") !Dead("Sharteel")~ THEN REPLY ~I have no need for payment... it's all in a days work for an adventurer. You are free to go.~ EXTERN VPSHAJ durbin18

CHAIN DURBIN D24
~(*Haughtily*) You've met my Lord, seen his magnificence for yourself, felt the power surrounding him and yet you still live. I am guessing my Lord Firkraag has some future plans for you... you'll get nothing from me.~
 EXTERN VPSHAJ durbin19
END

CHAIN DURBIN D25
~I am and have been in the service of Lord Firkraag for many years now, an honour you couldn't possibly begin to understand. However, I don't flatter myself as being important in my Lord's eyes. Certainly not important enough for him to notice I was missing.~
= ~If in time he discovered he was a servant or two down, he'd merely replace them thinking they'd perished sometime over the years. So you see, until you arrived, I was resigned to ending up in the bellies of those beasts. Now, may I go?~
 IF ~OR(2) !InParty("Sharteel") Dead("Sharteel")~ THEN REPLY ~I've no quarrel with you, begone.~ DO ~EscapeArea()~ EXIT
 IF ~InParty("Sharteel") !Dead("Sharteel")~ THEN REPLY ~I've no quarrel with you, begone.~ EXTERN VPSHAJ durbin20
 IF ~InParty("Sharteel") !Dead("Sharteel")~ THEN REPLY ~I don't think so. I'm coming back for the dragon and dealing with you will leave me ones less servant hindering my goal.~ EXTERN VPSHAJ durbin20
 ++ ~(*Lie*) Your lord lays dead below, struck down by my hand. What say you now?~ EXTERN DURBIN D19
END



CHAIN VPSHAJ durbin1
~(*Stepping in front of the old man*) Not so fast! I haven't finished with this old man yet. So old man, tell me, how do you come to be locked in with these beasts... run foul of the cowardly Firkraag did you?~
EXTERN ~DURBIN~ D8
END

CHAIN VPSHAJ durbin2
~Many years you say... just how 'many' years might that be? Enough to know a great deal about the comings and goings of all his Lordships visitors I'd wager... eh old man?~
EXTERN ~DURBIN~ D9
END

CHAIN VPSHAJ durbin3
~Yea, I've already been told that but this visitor left. It's not him I'm interested in, Firkraag should have sent him straight to the abyss for all I care, but what I am interested in are the items this... this man gave to Firkraag in exchange for knowledge. Dossan was his name... Angelo Dossan. Ringing any bells in that senile brain of yours?~
EXTERN ~DURBIN~ D10
END

CHAIN VPSHAJ durbin4
~(*Drawing her sword impatiently, she snarles*) Need a little help remembering do we?~
EXTERN ~DURBIN~ D11
END

CHAIN VPSHAJ durbin5
~They're not so little to me so you best start remembering and quick! Besides, if you don't I'll take my pleasure in gutting you where you stand... starting here... (*Her eyes glaze over as she jabs the point of her sword toward his throat and draws it slowly down to his groin... a flicker of flame dancing along her knuckles*)... to here!~
= ~Believe me I know just how to do it so's a man gets to watch his own entrails as they fall steaming to the ground.~
EXTERN ~DURBIN~ D12
END

CHAIN VPSHAJ durbin6
~(*Moving her sword slowly back to his throat the flame vanishes*)... I'll take that as a compliment. Now, what are you remembering, or do you need a demonstration of just how much I love bloodshed?~
EXTERN ~DURBIN~ D13
END

CHAIN VPSHAJ durbin7
~(*Her eyes light up*) Very likely. If Dossan had such items then Firkraag's vanity alone would cause him to want to own them and a bargain could well have been struck. Tell me, where are they hidden?~
EXTERN ~DURBIN~ D14
END

CHAIN VPSHAJ durbin8
~(*She rages... a red hot serpent like flame streaks down her sword*) The bastard... the cowardly bastard! I'll not only cut his lying tongue from his mouth but I'll rip his still beating heart from his chest and force him to eat them both for his treachery. Tell me, before you share his fate, what of the thief?~
EXTERN ~DURBIN~ D15
END

CHAIN VPSHAJ durbin9
~(*Her eyes burning with rage*) Tell me and you can keep your miserable life, you have my word!~
EXTERN ~DURBIN~ D16
END

CHAIN VPSHAJ durbin10
~(*Still gripping her sword*) Umar Hills?! Curses... I gave my word so go, get out of my sight! Consider yourself fortunate that I find little sport in taking the life of one who already walks in death's shadow. Besides, Firkraag already knows of our presence so you're in no position to betray us to him.~
= ~I'll save my rage for the coward himself! As for that scumbag of a thief, he can run but he can't hide. He's sure as hell going to regret choosing to run so far, forcing me to back track after him!~
 IF ~~ THEN DO ~SetGlobal("VP_Create_Esmond","GLOBAL",1) ActionOverride("durbin",EscapeArea())~ EXIT
END

CHAIN VPSHAJ durbin11
~(*Stepping in front of the old man*) Not so fast! I haven't finished with this old man yet. So you've served Firkraag for many years... just how 'many' years might that be? Enough to know a great deal about the comings and goings of all his Lordships visitor's I'd wager... eh old man?~
EXTERN ~DURBIN~ D8
END

CHAIN VPSHAJ durbin12
~Not so fast old man, we're not done talking yet! The cowardly beast you served told me of a servant who had made off with some of his treasures. Was he speaking the truth or are they still stashed away in this warren somewhere?~
EXTERN ~DURBIN~ D20
END

CHAIN VPSHAJ durbin13
~(*Drawing her sword she snarls*) He got what he deserved! Lord, dragon, whatever... the son of a bitch won't be manipulating anyone again! Now, if you don't want to join your Lord in the abyss you'll tell me about this thief!~
EXTERN ~DURBIN~ D21
END

CHAIN VPSHAJ durbin14
~This has nothing to do with glory old man and besides, if you don't start talking I'll take my pleasure in gutting you where you stand... starting here...~
= ~(*Her eyes glaze over as she jabs her sword at his throat and running it slowly down to his groin... as a barely noticeable small thin flame snakes it's way down her sword to the point*)... to here! Believe me I know just how to do it so's a man gets to watch his own entrails as they fall steaming to the ground, just the way your Lord did!~
EXTERN ~DURBIN~ D21a
END

CHAIN VPSHAJ durbin15
~(*Moving her sword slowly back to his throat*)... Tell me and you can keep your miserable life, you have my word!~
EXTERN ~DURBIN~ D22
END

CHAIN VPSHAJ durbin16
~(*Her sword still at his throat*) Umar Hills?! Curses... I gave my word so go, get out of my sight! Consider yourself fortunate that I find little sport in taking the life of one who already walks in death's shadow.~
= ~As for that scumbag of a thief, he can run but he can't hide. He's sure as hell going to regret choosing to run so far, forcing me to back track after him!~
 IF ~~ THEN DO ~SetGlobal("VP_Create_Esmond","GLOBAL",1) ActionOverride("durbin",EscapeArea())~ EXIT
END

CHAIN VPSHAJ durbin17
~Let's not be hasty here, the old man may have something to tell us yet. Listen and listen good for your life may well depend on your answer. The dragon who called himself Lord Firkraag is dead, what do you know of him?~
EXTERN ~DURBIN~ D19
END

CHAIN VPSHAJ durbin18
~Let's not be hasty here, the old man may have something to tell us yet. Listen and listen good for your life may well depend on your answer old man. What do you know of the dragon calling himself Lord Firkraag?~
EXTERN ~DURBIN~ D24
END

CHAIN VPSHAJ durbin19
~(*Draws her sword*) Oh I think I will! You're going to tell me all about a thief your Lord claimed ran off with some very special treasures of his, because if you don't I'll take my pleasure in gutting you where you stand... starting here.~
= ~(*Her eyes glaze over as she jabs her sword at his throat and running it slowly down to his groin... as a barely noticeable small thin flame snakes it's way down her sword to the point*)... to here! Believe me I know just how to do it so's a man gets to watch his own entrails as they fall steaming to the ground.~
EXTERN ~DURBIN~ D21a
END

CHAIN VPSHAJ durbin20
~Let's not be hasty here, the old man may have something to tell us yet. Listen and listen good for your life may well depend on your answer old man. Exactly how much were you privy to the dragon's dealings?~
EXTERN ~DURBIN~ D24
END
