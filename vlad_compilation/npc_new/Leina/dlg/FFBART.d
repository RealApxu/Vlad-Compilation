CHAIN
IF WEIGHT #-1 ~Global("VP_ResqueLeina","GLOBAL",1) InPartySlot(LastTalkedToBy,0)~ THEN FFBART NEJ26
~I was so relieved when Ikey told me that you had agreed to speak with me, <CHARNAME>. Yes, I know your name, and so do most folks around here.~
DO ~SetGlobal("VP_Met_FFBarkeep","GLOBAL",1)~
EXTERN FFBART NEJ27

CHAIN
IF WEIGHT #-2 ~Global("VP_ResqueLeina","GLOBAL",1) !InPartySlot(LastTalkedToBy,0)~ THEN FFBART NEJ47
~Greetings to you. I am Samuel Thunderburp. And you are, of course, one of the traveling companions of <CHARNAME>. I had hoped to speak with <PRO_HIMHER>, but you are certainly worthy.~
DO ~SetGlobal("VP_Met_FFBarkeep","GLOBAL",1)~
EXTERN FFBART NEJ27

CHAIN FFBART NEJ27
~It was your reputation for getting things done that prompted me to send Ikey to look for you. You have made quite a name for yourself you know.~
END
 ++ ~Ikey mentioned a reward, that is the only reason I am listening to you. Now, what is this trouble of yours and what is it worth for me to sort it for you?~ UNSOLVED_JOURNAL ~Trouble at The Five Flagons Inn.

I have spoken to Samuel Thunderburp and he has asked me to look for his missing bard... girl by the name of Leina. I have agreed to look into the matter for him... although knowing how temperamental artists can be I don't expect to find her if she doesn't want to be found. Samuel also mentioned that she may have family in Athkatla and a husband... the last thing I want is to get embroiled in another's marital affairs...~ EXTERN FFBART NEJ28
 ++ ~Ikey made it sound like you were pretty anxious to speak with me. Well, I am here, what is this matter that is so urgent?~ UNSOLVED_JOURNAL ~Trouble at The Five Flagons Inn.

I have spoken to Samuel Thunderburp and he has asked me to look for his missing bard... girl by the name of Leina. I have agreed to look into the matter for him... although knowing how temperamental artists can be I don't expect to find her if she doesn't want to be found. Samuel also mentioned that she may have family in Athkatla and a husband... the last thing I want is to get embroiled in another's marital affairs...~ EXTERN FFBART NEJ28
 ++ ~Well met Samuel, Ikey said you wished to speak with me. How can I be of help?~ UNSOLVED_JOURNAL ~Trouble at The Five Flagons Inn.

I have spoken to Samuel Thunderburp and he has asked me to look for his missing bard... girl by the name of Leina. I have agreed to look into the matter for him... although knowing how temperamental artists can be I don't expect to find her if she doesn't want to be found. Samuel also mentioned that she may have family in Athkatla and a husband... the last thing I want is to get embroiled in another's marital affairs...~ EXTERN FFBART NEJ28
 ++ ~I am pressed for time here Samuel, so just spit out what it is that you want with me?~ UNSOLVED_JOURNAL ~Trouble at The Five Flagons Inn.

I have spoken to Samuel Thunderburp and he has asked me to look for his missing bard... girl by the name of Leina. I have agreed to look into the matter for him... although knowing how temperamental artists can be I don't expect to find her if she doesn't want to be found. Samuel also mentioned that she may have family in Athkatla and a husband... the last thing I want is to get embroiled in another's marital affairs...~ EXTERN FFBART NEJ28

CHAIN FFBART NEJ28
~I am concerned for Leina, my star entertainer. She is usually here at this hour to entertain my customers, and never a once has she missed a performance, in all of her time here at The Five Flagons.~
== FFBART ~One of the best bards we have had in here in a while, a voice like a songbird but always so full of sadness. Still, the customers enjoy her tales and it is their pleasure that counts.~
== FFBART ~Leina has never let me down and her absence truly worries me, <CHARNAME>. I love the lass as I would any daughter of my own and I will pay you what I can if you find her and return her safely to me.~
END
 ++ ~I see the concern in your face Samuel. Do you have reason to think some harm may have befallen this young woman? Could she not simply be enjoying the company of friends and has lost all track of time?~ EXTERN FFBART NEJ31
 ++ ~Is it not possible that this Leina has merely dallied too long in the arms of a lover? Young girl's heads these days are so easily turned and she would not be the first to have allowed herself be swayed by a young man's attentions.~ EXTERN FFBART NEJ31
 ++ ~You worry too much! My guess is this Leina found favour with a local lad and prefers his company to that of your customers.~ EXTERN FFBART NEJ31
 ++ ~Bards, minstrels whatever you choose to call them, they are all temperamental rogues, it is their *artistic nature* that makes them so, or at least, that is what they will have you believe. This Leina of yours will probably turn up tomorrow, red faced, full of apologies and no explanation.~ EXTERN FFBART NEJ33

CHAIN FFBART NEJ31
~Not Leina, she is sensible enough. Poor lass, she has had to overcome a lot of bitter disappointments in her young life.~
== FFBART ~She knows the way of men and her head would not be turned so easily by a handsome face. No, Leina is no simple emptied headed lass, something is amiss here for sure.~
END
 ++ ~What else can you tell me of Leina? Does she perhaps have family in the area that she is in the habit of visiting?~ EXTERN FFBART NEJ35

CHAIN FFBART NEJ33
~Leina is a responsible lass with her feet firmly on the ground. She loves her music. It is her one passion and she is always telling me that it is the only thing that is constant and reliable in her life.~
== FFBART ~She loves to sing and would not forego the opportunity to do so without good reason. No, something is seriously amiss here.~
END
 ++ ~What else can you tell me of Leina? Does she perhaps have family in the area that she is in the habit of visiting?~ EXTERN FFBART NEJ35

CHAIN FFBART NEJ35
~I believe she does have family in Athkatla but she never visits, nor do they come here to listen to her sing.~
== FFBART ~Leina gave me the impression that there was a falling out at some time and the rift has never been healed.~
== FFBART ~I am not even sure they know she has returned to Athkatla.~
END
 ++ ~Perhaps they learnt of her return and she is at this minute with them hoping to heal this rift that you say lies between them?~ EXTERN FFBART NEJ38

CHAIN FFBART NEJ38
~No, I am sure Leina would have mentioned it to me if any such visit was planned and she most certainly would not have let it interfere with her job here.~
END
 ++ ~What else can you tell me of Leina? Do you know of any person that would wish to harm her for any reason?~ EXTERN FFBART NEJ39
 ++ ~You clearly fear for her safety. Has she upset or made an enemy of anyone that you can think of?~ EXTERN FFBART NEJ39

CHAIN FFBART NEJ39
~Leina enemies? Gracious me no! Leina would not hurt a soul, nor would she speak ill of anyone, not even a bad word against the bastard of a husband who walked out and left her penniless.~
END
 ++ ~A husband you say? Now that may be a reason for concern, especially if he has returned and knows that Leina has found fame with her music.~ EXTERN FFBART NEJ40
 ++ ~Well, there is your answer. This husband has returned and they have left together. This is nothing more than love rekindled and a happy ever after.~ EXTERN FFBART NEJ40

CHAIN FFBART NEJ40
~If it is true and her husband had returned, Leina would have no part of him. He hurt her badly and I do not think she will ever forgive or trust him or any man again.~
END
 ++ ~If that is the case, he could have forced her to go with him against her will. It may be a good idea for us to check her room out. Maybe you should have a word with the city guard?~ EXTERN FFBART NEJ42
 ++ ~What about her friends, have you thought to speak to them?~ EXTERN FFBART NEJ41

CHAIN FFBART NEJ41
~Leina was not one for making friends. She kept pretty much to herself.~
== FFBART ~She could always be heard in her room singing or playing. She sure loved to do that, even when she was alone.~
END
 ++ ~Not a lot to being on with I am afraid Samuel. Perhaps now would be a good time to take a look at Leina's room.~ EXTERN FFBART NEJ45
 ++ ~This Leina sounds a little too perfect to me. Perhaps a search of her room will uncover more about her. Maybe a side you have never seen barkeep.~ EXTERN FFBART NEJ45

CHAIN FFBART NEJ42
~I spoke to them but they reckon they are far too busy to worry about *flighty minstrels*.~
== FFBART ~I tell you, if I was a couple of feet taller I would have shown them that no one calls my Leina a flighty minstrel, *no one!*~
END
 ++ ~Not a lot to being on with I am afraid Samuel. Perhaps now would be a good time to take a look at Leina's room.~ EXTERN FFBART NEJ45
 ++ ~This Leina sounds a little too perfect to me. Perhaps a search of her room will uncover more about her. Maybe a side you have never seen barkeep.~ EXTERN FFBART NEJ45

CHAIN FFBART NEJ45
~By all means take a look at her room only no messing it up you hear?~
== FFBART ~Leina likes to keep things in place and I would hate her to come back and think I had let strangers rummage through her private things.~
DO ~SetGlobal("VP_ResqueLeina","GLOBAL",2)~
EXIT

CHAIN
IF WEIGHT #-4 ~GlobalGT("VP_ResqueLeina","GLOBAL",1) GlobalLT("VP_ResqueLeina","GLOBAL",5)~ THEN FFBART NEJ48 // from:
~Did you discover anything, <CHARNAME>, any clues as the whereabouts of my Leina? Tell me, did you learn anything that will help to find her?~
END
 IF ~GlobalLT("VP_ResqueLeina","GLOBAL",3)~ REPLY ~I'm afraid not yet, but I intend to keep looking.~ EXTERN FFBART NEJ49
 IF ~GlobalGT("VP_ResqueLeina","GLOBAL",3) GlobalLT("VP_ResqueLeina","GLOBAL",5) !PartyHasItem("GovanLet")~ REPLY ~I'm afraid not yet, but I intend to keep looking.~ EXTERN FFBART NEJ49
 IF ~GlobalGT("VP_ResqueLeina","GLOBAL",3) GlobalLT("VP_ResqueLeina","GLOBAL",5) PartyHasItem("GovanLet")~ REPLY ~Hey, not so fast Samuel. Her room is a right mess up there, not any of my doing I hasten to add. I did find this letter, crumpled and thrown in the corner of the room amid some roses. Here, read this and tell me what you know of this Govan Duvaine?~ DO ~TakePartyItem("GovanLet") SetGlobal("VP_ResqueLeina","GLOBAL",5)~ EXTERN FFBART NEJ50
 IF ~GlobalGT("VP_ResqueLeina","GLOBAL",3) GlobalLT("VP_ResqueLeina","GLOBAL",5) PartyHasItem("GovanLet")~ REPLY ~Seems this Leina of yours had a suitor that she did not take too kindly to. Spurned his advances I would say by the looks of things upstairs. Here, take a look and tell me what you know of the man who signs this letter.~ DO ~TakePartyItem("GovanLet") SetGlobal("VP_ResqueLeina","GLOBAL",5)~ EXTERN FFBART NEJ50
 IF ~GlobalGT("VP_ResqueLeina","GLOBAL",3) GlobalLT("VP_ResqueLeina","GLOBAL",5) PartyHasItem("GovanLet")~ REPLY ~Her room is a mess Samuel and I found this crumpled letter amongst some roses hastily discarded. I am sorry but I cannot spare anymore time on this search. Here take the letter, perhaps it will aid you in your search for her. Farewell, Samuel.~ DO ~TakePartyItem("GovanLet") SetGlobal("VP_ResqueLeina","GLOBAL",5)~ EXTERN FFBART NEJ55
 IF ~GlobalGT("VP_ResqueLeina","GLOBAL",3) GlobalLT("VP_ResqueLeina","GLOBAL",5) PartyHasItem("GovanLet")~ REPLY ~By the looks of things upstairs, I would say this Leina of yours has fallen foul of a spurned suitor. You would have discovered as much yourself if you had taken the time to look. Here take this letter and do with it as you please, I can spare no more time to help you. Farewell.~ DO ~TakePartyItem("GovanLet") SetGlobal("VP_ResqueLeina","GLOBAL",5)~ EXTERN FFBART NEJ55

CHAIN FFBART NEJ49
#25101
EXIT

CHAIN FFBART NEJ50
~I will tell you what I can of this Govan Duvaine. He is son to one of the influential families in Athkatla. The Copper Coronet is usually where he hangs out.~
== FFBART ~The entertainment there is more to his taste he once told me, reckoned I would do well to take a leaf out of Lehtinan's book and do much the same with The Five Flagons, arrogant little upstart!~
== FFBART ~Come to think of it now, I did note that he was spending more time than usual in here lately. Never entered my head that Leina was the attraction.~
== FFBART ~Your best bet is to try at the Copper Coronet. I am not a rich man but I can afford 1000 gold pieces if you return Leina to me safely.~
END
 ++ ~Leave it to me Samuel, if this Govan Duvaine knows the whereabouts of your Leina, then so shall I, even if I have to force it out of him.~ UNSOLVED_JOURNAL ~Trouble at The Five Flagons Inn.

I have agreed to search and find a missing bard... girl by the name of Leina... for Samuel Thunderburp, the halfling proprietor of The Five Flagons. A search of her room has revealed signs of a rejected marriage proposal from one Govan Duvaine and the room itself is in disarray... I fear something sinister has befallen this unfortunate young woman. It seems Samuel remembers this Govan Duvaine spending more time than usual in The Five Flagons... his usual haunt is The Copper Coronet. The poor man seems genuinely worried and has offered me 1000 gold pieces to find the girl... I told him I would speak to Govan Duvaine and try to get to the bottom of this for him.~ EXTERN FFBART NEJ54
 ++ ~1000 gold pieces, not enough barkeep. I wish you luck in your search for this girl, I think that you are going to need it.~ UNSOLVED_JOURNAL ~Trouble at The Five Flagons Inn.

I have agreed to search and find a missing bard... girl by the name of Leina... for Samuel Thunderburp, the halfling proprietor of The Five Flagons. A search of her room has revealed signs of a rejected marriage proposal from one Govan Duvaine and the room itself is in disarray... I fear something sinister has befallen this unfortunate young woman. It seems Samuel remembers this Govan Duvaine spending more time than usual in The Five Flagons... his usual haunt is The Copper Coronet. His offer of gold was not enough so his and the girl's troubles no longer concern me.~ EXTERN FFBART NEJ58

CHAIN FFBART NEJ54
~Here take this letter you found and confront him with it, see what he has to say for himself.~
DO ~SetGlobal("VP_ResqueLeina","GLOBAL",7) GiveItem("GovanLet",[PC])~
EXIT

CHAIN FFBART NEJ55
~Oh please, say you will reconsider, <CHARNAME>. If you do not aid her I do not know what will become of her! I know of this Govan Duvaine, but I had no idea he had designs on my Leina.~
== FFBART ~Please, <CHARNAME>, I am begging you to continue your search. If Leina is indeed with this Duvaine then he is clearly preventing her return? I know of no one else who can aid me.~
END
 ++ ~I am sorry but it is as I have said, I just do not have any more time. Best of luck in your search and I hope you find your Leina safe.~ UNSOLVED_JOURNAL ~Trouble at The Five Flagons Inn.

I have agreed to search and find a missing bard... girl by the name of Leina... for Samuel Thunderburp, the halfling proprietor of The Five Flagons. A search of her room has revealed signs of a rejected marriage proposal from one Govan Duvaine and the room itself is in disarray... I fear something sinister has befallen this unfortunate young woman. It seems Samuel remembers this Govan Duvaine spending more time than usual in The Five Flagons... his usual haunt is The Copper Coronet. His offer of gold was not enough so his and the girl's troubles no longer concern me.~ EXTERN FFBART NEJ57
 ++ ~Up the reward some more and give me something useful to go on and I may consider giving you some more of my time.~ EXTERN FFBART NEJ50

CHAIN FFBART NEJ57
~At least, I hope so... (*Samuel turns and walks away.*)~
DO ~SetGlobal("VP_ResqueLeina","GLOBAL",6) EscapeArea()~
EXIT

CHAIN FFBART NEJ58
~It is every copper that I own... (*Samuel turns and walks away.*)~
DO ~SetGlobal("VP_ResqueLeina","GLOBAL",6) EscapeArea()~
EXIT

CHAIN
IF WEIGHT #-3 ~GlobalGT("VP_ResqueLeina","GLOBAL",1) GlobalLT("VP_ResqueLeina","GLOBAL",8)~ THEN FFBART NEJ59 // from:
~Did you discover anything, <CHARNAME>, any clues as the whereabouts of my Leina? Tell me, did you learn anything that will help to find her?~
END
 ++ ~I'm afraid not yet, but I intend to keep looking.~ EXTERN FFBART NEJ49

CHAIN
IF WEIGHT #-5 ~Global("VP_ResqueLeina","GLOBAL",36)~ THEN FFBART NEJ60 // from:
~I see that Leina is not with you. Have you no news of her at all for me? What of that n'er-do-well Duvaine, what did he have to say for himself?~
END
 IF ~OR(2) Global("BodhiJob","GLOBAL",0) GlobalLT("BodhiAppear","GLOBAL",2)~ REPLY ~I am sorry Samuel. I have spoken to Duvaine, he says it was Leina's father's idea that they should marry, and he thought to keep her in Athkatla by marrying her to Duvaine. How much of what he said is true, I have no idea.~ EXTERN FFBART NEJ61
 IF ~OR(2) Global("BodhiJob","GLOBAL",0) GlobalLT("BodhiAppear","GLOBAL",2)~ REPLY ~Duvaine pleads ignorance over Leina's disappearance. He reckons the marriage was her father's idea and sent us on a wild goose chase halfway across the city to speak to Vulova. I have no idea where to look for this guy who could verify the whole story.~ EXTERN FFBART NEJ61
 IF ~OR(2) Global("BodhiJob","GLOBAL",0) GlobalLT("BodhiAppear","GLOBAL",2)~ REPLY ~Duvaine was of no help barkeep, except to say that maybe Leina's father is behind her sudden departure, he swears he had nothing to do with it. I would like to pay Vulova a call, but his estate is locked, and I cannot waste anymore of my time waiting for him to show up.~ EXTERN FFBART NEJ61
 IF ~GlobalLT("BodhiJob","GLOBAL",2) GlobalGT("BodhiAppear","GLOBAL",1) Global("VP_Spawn_HoodedMan","AR1000",1)~ REPLY ~Duvaine was of no help barkeep, except to say that maybe Leina's father is behind her sudden departure, he swears he had nothing to do with it. Vulova was not at home when I paid him a call and I cannot waste anymore of my time waiting for him to show up. You will have to continue the search yourself. Here, take Duvaine's letter, it is of no further use to me. Farewell.~ DO ~GiveItem("GovanLet",[PC])~ EXTERN FFBART NEJ61
 IF ~GlobalLT("BodhiJob","GLOBAL",2) GlobalGT("BodhiAppear","GLOBAL",1) Global("VP_Spawn_HoodedMan","AR1000",1)~ REPLY ~Duvaine pleads ignorance over Leina's disappearance. He reckons the marriage was her father's idea and sent us on a wild goose chase halfway across the city to speak to Vulova, only of course he wasn't home. All I got for my trouble was a cryptic story, told to me by a person of dubious character, and which meant absolutely nothing to me. To top it all, Duvaine himself had done a runner. I have wasted enough time on this chase! I return only to say that my involvement in this matter is done. Farewell.~ EXTERN FFBART NEJ61
 IF ~GlobalLT("BodhiJob","GLOBAL",2) GlobalGT("BodhiAppear","GLOBAL",1) Global("VP_Spawn_HoodedMan","AR1000",1)~ REPLY ~I am sorry Samuel. I have spoken to Duvaine, he insists it was Leina's father's idea that they should marry, he thought to keep her in Athkatla by marrying her to Duvaine. I tried to verify his story by going to the Vulova estate but there was no sign of Leina nor of her father. Instead, I was accosted by a shady character with some cryptic story that I couldn't make sense of. I am sorry but I really cannot see what else I can do at this time. If I learn any more on my travels, I'll be sure and get back to you, until then, I bid you farewell Samuel.~ EXTERN FFBART NEJ61
 IF ~GlobalLT("BodhiJob","GLOBAL",2) GlobalGT("BodhiAppear","GLOBAL",1) Global("VP_Spawn_HoodedMan","AR1000",1)~ REPLY ~I learnt from Duvaine that Leina's father could well be behind her disappearance... the marriage being his idea to keep Leina close to home. I took a trip across the city only to discover the estate locked tight, but my visit wasn't altogether fruitless. My only clue is a little obscure to say the least, but trust me Samuel, I am not about to give up so easily... I am confident that I will find her for you.~ EXTERN FFBART NEJ86
 IF ~GlobalGT("BodhiJob","GLOBAL",1)~ REPLY ~I am sorry Samuel. I have spoken to Duvaine, he says it was Leina's father's idea that they should marry, and he thought to keep her in Athkatla by marrying her to Duvaine. How much of what he said is true, I have no idea.~ EXTERN FFBART NEJ49
 IF ~GlobalGT("BodhiJob","GLOBAL",1)~ REPLY ~Duvaine pleads ignorance over Leina's disappearance. He reckons the marriage was her father's idea and sent us on a wild goose chase halfway across the city to speak to Vulova...~ EXTERN FFBART NEJ49
 IF ~GlobalGT("BodhiJob","GLOBAL",1)~ REPLY ~Duvaine was of no help barkeep, except to say that maybe Leina's father is behind her sudden departure, he swears he had nothing to do with it. I'm going to pay Vulova a call...~ EXTERN FFBART NEJ49

CHAIN FFBART NEJ61
~I see my trust in you was misplaced, I did not think you to be a person who would admit defeat so easily.~
END
 ++ ~I really cannot see what else I can do at this time Samuel, sorry. Here, take Duvaine's letter, not that I can see what good it will do you, but I have no need of it. Farewell and I hope you find Leina, soon.~ DO ~GiveItem("GovanLet",[PC])~ EXTERN FFBART NEJ62
 ++ ~I have wasted enough time on this chase! I return only to say that my involvement in this matter is done. Farewell.~ EXTERN FFBART NEJ62
 ++ ~Anyway you will have to continue the search yourself. Farewell.~ EXTERN FFBART NEJ62

CHAIN FFBART NEJ62
~All I can do now is to put the word out for all to keep an ear to the ground for news of my Leina and hope the reward is enough to loosen someone's tongue. I hope and pray that she is safe and well. Thank you again and fare thee well.~
DO ~SetGlobal("VP_ResqueLeina","GLOBAL",9)~
EXIT

////////////////////////////////////////
// //
// Old States for Correction In v4.2b //
// //
////////////////////////////////////////

CHAIN
IF WEIGHT #-6 ~Global("VP_Met_FFBarkeep","GLOBAL",1) Global("VP_Govan_Bribes_Me","GLOBAL",1)~ THEN FFBART NEJ63
~You have news of my Leina at last, <CHARNAME>? Please say that you do?~
END
 ++ ~I have, Samuel. It seems your Leina has had a change of heart. She has agreed to marry Govan Duvaine. I have spoken to her and she asks me to tell you that she is happy.~ EXTERN FFBART NEJ64
 ++ ~Yes, barkeep, in fact Leina sends you her best regards and wishes you to know that she is marrying Govan Duvaine and she expects to be very happy with him.~ EXTERN FFBART NEJ64
 ++ ~I have seen your Leina, barkeep, and she seemed very happy to me, ecstatic even I would say. She has accepted Govan Duvaine's proposal and has asked me to tell you not to worry or fret about her any more.~ EXTERN FFBART NEJ64
 ++ ~Leina has asked that I tell you she has made up her mind to marry Govan Duvaine. It is not a love match, but she says she married for love once and that did not work for her so she will be content with the comfort and security that Duvaine offers her. She asks that you worry no more for her.~ EXTERN FFBART NEJ64

CHAIN FFBART NEJ64
~Well, I suppose as long as she is happy and content, that is all I can hope for her.~
DO ~SetGlobal("VP_Govan_Bribes_Me","GLOBAL",2)~
== FFBART ~Still, I would not have reckoned with Govan being her choice, but she knows her own mind does Leina so I must respect that he is the one she has decided on.~
== FFBART ~Thank you for putting my mind at ease, <CHARNAME>. I expect she will come tell me herself when the wedding is to be. Here is the 1000 gold pieces I promised you. Fare thee well.~
DO ~GiveGoldForce(1000) SetGlobalTimer("VP_Sam_Misses_Leina","GLOBAL",TEN_DAYS)~
EXIT
 //If PC proceeds to meeting with Killian then => Scenario: Meeting With Killian

/*
CHAIN
IF WEIGHT #-7 ~Global("VP_Met_FFBarkeep","GLOBAL",1) Global("VP_ResqueLeina","GLOBAL",17)~ THEN FFBART NEJ67
~Leina arrived ahead of you, <CHARNAME>, and I give thanks to you for her safe return. She has told me of her father's death and that she lays no blame at your feet for it.~
== FFBART ~She has taken to her room for some quiet she says but was pretty shaken when she walked through the door. I fear she may decide to leave Athkatla soon and I do not blame the lass if she did.~
== FFBART ~Would it be asking too much to allow her to travel with you, <CHARNAME>, until she found her place that is?~
END
 ++ ~I have no need for a minstrel, barkeep. I have returned for the 1000 gold pieces you promised and then I have my own affairs to be getting on with.~ EXTERN FFBART NEJ70
 ++ ~I have no room for her at present Samuel, but Leina has proven more than capable of taking care of herself in the past has she not? She will be fine. I only returned to check that she had arrived safely.~ EXTERN FFBART NEJ70
 ++ ~I have already made it clear to Leina that I have no need for her in this group. It is her choice if she decides to take to the road on her own. I am here only for the reward you promised for her return.~ EXTERN FFBART NEJ70

CHAIN FFBART NEJ70
~Then there is no more to be said. Here is your gold <CHARNAME>. If you change your mind about taking Leina along with you, you know where she can be found. Fare thee well.~
DO ~SetGlobal("VP_ResqueLeina","GLOBAL",18) GivePartyGold(1000)~
EXIT
*/

CHAIN
IF WEIGHT #-8 ~InParty("vpleina") Global("VP_ResqueLeina","GLOBAL",16)~ THEN FFBART NEJ71
~Praise be! You are safe, Leina. I thought... well, I do not know what I thought, but you are here now, praise be!~
DO ~SetGlobal("VP_ResqueLeina","GLOBAL",18)~
== VPLEIJ ~I am safe Samuel and it is all down to <CHARNAME> here. My... my father sought to marry me to Duvaine to keep me in Athkatla.~
== VPLEIJ ~He was a changed man, Samuel, my mother's death hit him hard and I think he saw me as his last link to her.~
== VPLEIJ ~It's all turned out so horribly wrong Samuel... Govan... he is dead! He sought to use me to expand his own fortune... but I never wished him dead Samuel!~
== VPLEIJ ~You have to believe me... if I'd known my return to Athkatla was going to cause so much heartache, I would never have come back.~
== VPLEIJ ~I cannot stay here Samuel, there are too many memories, too much pain, too much sadness... why does it persist in following me so!~
== FFBART ~Steady up there lass... it is a mess for sure but none of this is your doing, so don't you go blaming yourself now. I know of just the person to sort it out. It will cost me but I cannot put a price on my Leina's well being.~
== FFBART ~It will take a week at least for things to settle, and it would go much smoother if neither of you were here, I'm sorry lass but I think you will be much safer if you leave the city with <CHARNAME> for a while.~
== VPLEIJ ~You are a good man Samuel and it is already agreed that I will travel with this group. I am only sorry I have brought this mess to you door.~
== FFBART ~Now don't you go fretting lass, Samuel here has taken care of a lot worse than a few irate nobles. I will miss you lass, that's for sure and so will my patrons, but I know you will be safe in the company of <CHARNAME>.~
== FFBART ~You are a different woman to the lass who first stepped through my doors and I know you will make good. Follow and listen well to what your heart says, it will not always let you down, no matter what you believe.~
== FFBART ~Remember, I will always be here if ever you feel the need to return, you will ever be my Leina. You have many years ahead of you, be happy. Fare thee well and good luck to you my child, my Leina.~
== VPLEIJ ~(*She kisses the hafling man fondly*)... Then this is goodbye Samuel, thank you for all that you have done, it is good to know I have a home here if ever I feel the need... your memory will always hold a place in my heart, you I shall never forget. Goodbye my friend.~
== VPLEIJ ~(*She looks about the room and sighs*)... This lowly inn has afforded me more comfort and warmth than any place I have called home... I will not stay away long.~
== FFBART ~Here <CHARNAME>, here is the gold you were promised. You take care of my Leina now. If I ever hear that you have in anyway brought pain or grief to her, you will answer to me and you will sorely regret the day you walked into The Five Flagons.~
END
 ++ ~You have no cause to worry Samuel. Leina will be safe and well protected in my company.~ EXTERN FFBART NEJ104
 ++ ~You worry for nothing barkeep. It was Leina's decision to join with me and I would not have taken her if she were not able to look after herself.~ EXTERN FFBART NEJ104
 ++ ~I admit my road is unknown and hostile, but this I have made clear to Leina. She is fully aware of what may lie ahead but she still prefers to join with me rather than live in a place where memories will continue to haunt her nights.~ EXTERN FFBART NEJ104


CHAIN FFBART NEJ72
~I will miss you lass and so will my patrons here, but you know your own heart. Follow and listen well to what it says, it will not always let you down, no matter what you believe.~
== FFBART ~I will be here if ever you feel the need to return, you will ever be, my Leina. You have many years ahead of you, be happy. Fare thee well and good luck to you my child, my Leina.~
EXIT

CHAIN FFBART NEJ74
~Here, <CHARNAME>, here is the gold you were promised. You take care of my Leina now. If I ever hear that you have in anyway brought pain or grief to her, you will answer to me and you will sorely regret the day you walked into the Five Flagons.~
END
 ++ ~You have no cause to worry Samuel. Leina will be safe and well protected in my company.~ EXTERN FFBART NEJ75
 ++ ~You worry for nothing barkeep. It was Leina's decision to join with me and I would not have taken her if she were not able to look after herself.~ EXTERN FFBART NEJ75
 ++ ~I admit my road is unknown and hostile, but this I have made clear to Leina. She is fully aware of what may lie ahead but she still prefers to join with me rather than live in a place where memories will continue to haunt her nights.~ EXTERN FFBART NEJ75

CHAIN FFBART NEJ75
~Then I bid you fare thee well, <CHARNAME>, but mark you well what my final words were to you.~
DO ~GiveGoldForce(1000) SetGlobalTimer("VP_Sam_Misses_Leina","GLOBAL",TEN_DAYS)~
EXIT

CHAIN
IF WEIGHT #-9 ~Global("VP_LeinaReturns","GLOBAL",0) Global("VP_LeinaThanks","GLOBAL",2) GlobalGT("VP_Govan_Bribes_Me","GLOBAL",2) Global("VP_DuvainesAttack","GLOBAL",0)~ THEN FFBART NEJ76
~You have returned my Leina to me, <CHARNAME>, and I give thanks to you for her safe return. She has taken to her room for some quiet she says but was pretty shaken when she walked through the door. I fear she may decide to leave Athkatla soon and I do not blame the lass if she did.~
DO ~SetGlobal("VP_LeinaReturns","GLOBAL",1)~
== FFBART ~She has told me the whole sordid tale. It is a mess for sure that you have got yourself into. I do know of just the person to sort it out. It will cost me but I cannot put a price on my Leina's well being. One thing I insist on, if I sort this mess you must take Leina with you when you leave the city and leave you must.~
== FFBART ~It will take a week at least for things to settle here and it would go much smoother if neither of you were here.~
== FFBART ~If you refuse my offer it will be a very long time before you will be able to walk Athkatla safely again. Do we have an agreement, <CHARNAME>?~
END
 ++ ~She can travel with me, barkeep, but I cannot guarantee that my road will be any safer for her if she remained here.~ EXTERN FFBART NEJ82
 ++ ~Leina may travel with me but I will not be held responsible for her safety and only until a safe place for her can be found.~ EXTERN FFBART NEJ82
 ++ ~I will take her with me, barkeep, just get this city off my back!~ EXTERN FFBART NEJ82
 ++ ~I have no need for a minstrel, barkeep, I will have to take my chances in the city.~ EXTERN FFBART NEJ80

CHAIN FFBART NEJ80
~Then I bid you fare thee well, <CHARNAME>, and wish you all the luck in the world because you are surely going to need it now.~
== FFBART ~If you decide you need my help after all do not leave it any longer than a day. After that time it will be too late for me do anything for you.~
DO ~SetGlobalTimer("VP_Sam_Misses_Leina","GLOBAL",TEN_DAYS)~
EXIT
 //If PC has a change of heart and returns then => Scenario: The Five Flagons 5

CHAIN FFBART NEJ82
~I will get to sorting this mess straight away. In the meantime you take good care of my Leina, <CHARNAME>. She is upstairs waiting for you.~
EXTERN FFBART NEJ83

CHAIN FFBART NEJ83
~If I hear of any pain or grief brought to her on your account, you will answer to Samuel Thunderburp. Fare thee well.~
DO ~SetGlobalTimer("VP_Sam_Helps_Timer","GLOBAL",ONE_DAY)
SetGlobal("VP_Samuel_Helps","GLOBAL",1)
SetGlobalTimer("VP_Sam_Misses_Leina","GLOBAL",TEN_DAYS)
EscapeAreaMove("AR1002",516,638,8)~
EXIT

CHAIN
IF WEIGHT #-10 ~Global("VP_LeinaReturns","GLOBAL",1) GlobalGT("VP_DuvainesRevenge","GLOBAL",0) Global("VP_Samuel_Helps","GLOBAL",0) !InParty("vpleina")~ THEN FFBART NEJ84
~Are you here to tell me that you have changed your mind about taking Leina with you, <CHARNAME>?~
END
 ++ ~She can travel with me, barkeep, but I cannot guarantee that my road will be any safer for her if she remained here.~ EXTERN FFBART NEJ90
 ++ ~Leina may travel with me but I will not be held responsible for her safety and only until a safe place for her can be found.~ EXTERN FFBART NEJ90
 ++ ~I will take her with me, barkeep, just get this city off my back!~ EXTERN FFBART NEJ90
 ++ ~I have no need for a minstrel, barkeep, I will have to take my chances in the city.~ EXTERN FFBART NEJ96

CHAIN
IF WEIGHT #-11 ~Global("VP_LeinaReturns","GLOBAL",1) GlobalGT("VP_DuvainesRevenge","GLOBAL",0) Global("VP_Samuel_Helps","GLOBAL",0) InParty("vpleina")~ THEN FFBART NEJ85
~Praise be! You have a change of heart and take Leina with you, <CHARNAME>?~
END
 ++ ~She can travel with me, barkeep, but I cannot guarantee that my road will be any safer for her if she remained here.~ EXTERN FFBART NEJ90
 ++ ~Leina may travel with me but I will not be held responsible for her safety and only until a safe place for her can be found.~ EXTERN FFBART NEJ90
 ++ ~I will take her with me, barkeep, just get this city off my back!~ EXTERN FFBART NEJ90

CHAIN FFBART NEJ86
~I'll not say I'm not disappointed <CHARNAME>, I had hoped when I saw you next, I would see my Leina's happy, smiling face in your company. However, your words reassure me a little, for if she is with old man Vulova, I can rest a little easier knowing that, although she may not be happy wherever she is... she is at least safe.~
== FFBART ~Still, to kidnap your own child to force a marriage... what kind of a father does that I ask? He doesn't deserve a daughter as kindhearted and considerate as Leina... he doesn't deserve any kind of a daughter at all!~
== FFBART ~I see that my faith in you is well placed... if anyone can find her, it is you <CHARNAME>. May the gods speed you in your search.~
DO ~SetGlobalTimer("VP_Sam_Misses_Leina","GLOBAL",TEN_DAYS)~
EXIT

//////////////////////////////////////
// //
// New & Corrected States for v4.2b //
// //
//////////////////////////////////////

CHAIN
IF WEIGHT #-12 ~Global("VP_ResqueLeina","GLOBAL",10) Global("VP_MyQuest_Is_Over","LOCALS",1)~ THEN FFBART NEJ89
~Are you here to tell me that you have changed your mind about taking Leina with you, <CHARNAME>?~
END
 ++ ~She can travel with me, barkeep, but I cannot guarantee that my road will be any safer for her if she remained here.~ EXTERN FFBART NEJ90
 ++ ~Leina may travel with me but I will not be held responsible for her safety and only until a safe place for her can be found.~ EXTERN FFBART NEJ90
 ++ ~I will take her with me, barkeep, just get this city off my back!~ EXTERN FFBART NEJ90

CHAIN FFBART NEJ90
~I will get to sorting this mess straight away. In the meantime you take good care of my Leina <CHARNAME>.~
END
 IF ~Global("VP_ResqueLeina","GLOBAL",10)~ THEN EXTERN VPLEINA 17
 IF ~OR(2) Global("VP_ResqueLeina","GLOBAL",17) Global("VP_DuvainesAttack","GLOBAL",1)~ THEN EXTERN VPLEIP 27
 IF ~InParty("vpleina")~ THEN EXTERN FFBART NEJ83

CHAIN VPLEINA 17
~(*She kisses the hafling man fondly*)... Then this is goodbye Samuel, thank you for all that you have done... your memory will always hold a place in my heart, you I shall never forget. Goodbye my friend.~
== VPLEINA ~(*She looks about the room and sighs*)... This lowly inn has afforded me more comfort and warmth than any place I have called home... I will not stay away long.~
EXTERN FFBART NEJ91

CHAIN VPLEIP 27
~(*She looks about the room and sighs*)... This lowly inn has afforded me more comfort and warmth than any place I have called home... I will not stay away long.~
DO ~SetGlobal("KickedOut","LOCALS",0)~
EXTERN FFBART NEJ91

CHAIN FFBART NEJ91
~If I hear of any pain or grief brought to her on your account, you will answer to Samuel Thunderburp. Fare thee well.~
DO ~SetGlobalTimer("VP_Sam_Helps_Timer","GLOBAL",ONE_DAY)
SetGlobal("VP_Samuel_Helps","GLOBAL",1)
SetGlobalTimer("VP_Sam_Misses_Leina","GLOBAL",TEN_DAYS)
ActionOverride("vpleina",JoinParty())
EscapeAreaMove("AR1002",516,638,8)~
EXIT

CHAIN
IF WEIGHT #-13 ~Global("VP_Met_FFBarkeep","GLOBAL",1) Global("VP_ResqueLeina","GLOBAL",17)~ THEN FFBART NEJ92
~You have returned my Leina to me, <CHARNAME>, and she has told me the whole sordid tale. It is a mess for sure that you have got yourself into.~
DO ~SetGlobal("VP_LeinaReturns","GLOBAL",1)~
== FFBART ~I do know of just the person to sort it out. It will cost me but I cannot put a price on my Leina's well being. One thing I insist on, if I sort this mess you must take Leina with you when you leave the city and leave you must.~
== FFBART ~It will take a week at least for things to settle here and it would go much smoother if neither of you were here.~
== FFBART ~If you refuse my offer it will be a very long time before you will be able to walk Athkatla safely again. Do we have an agreement, <CHARNAME>?~
END
 ++ ~She can travel with me, barkeep, but I cannot guarantee that my road will be any safer for her if she remained here.~ EXTERN FFBART NEJ90
 ++ ~Leina may travel with me but I will not be held responsible for her safety and only until a safe place for her can be found.~ EXTERN FFBART NEJ90
 ++ ~I will take her with me, barkeep, just get this city off my back!~ EXTERN FFBART NEJ90
 ++ ~I have no need for a minstrel, barkeep, I will have to take my chances in the city.~ EXTERN FFBART NEJ96

CHAIN FFBART NEJ96
~Then I bid you fare thee well, <CHARNAME>, and wish you all the luck in the world because you are surely going to need it now.~
== FFBART ~If you decide you need my help after all do not leave it any longer than a day. After that time it will be too late for me do anything for you.~
DO ~SetGlobalTimer("VP_Sam_Misses_Leina","GLOBAL",TEN_DAYS)~
EXIT
 //If PC has a change of heart and returns then => Scenario: The Five Flagons 5

CHAIN FFBART NEJ104
~Then I bid you fare thee well <CHARNAME> but mark you well what my final words were to you.~
DO ~SetGlobalTimer("VP_Sam_Helps_Timer","GLOBAL",ONE_DAY)
SetGlobal("VP_Samuel_Helps","GLOBAL",1)
SetGlobalTimer("VP_Sam_Misses_Leina","GLOBAL",TEN_DAYS)
EscapeArea()~
EXIT

CHAIN
IF WEIGHT #-14 ~Global("VP_LeinaThanks2","GLOBAL",2) Global("VP_AuberonBribesMe","GLOBAL",1) Global("VP_Samuel_Helps","GLOBAL",0) !InParty("vpleina")~ THEN FFBART NEJ105
~So <CHARNAME>, I wonder you have the nerve to show your face in my inn again! You come back and tell me a pack of lies... tell me my Leina is content to marry Duvaine and all the time you'd betrayed the trust I put in you.~
== FFBART ~You hand her over to Duvaine as though she were nothing more than a commodity to sell in order to line your own pocket with gold! I ask that you leave my inn... neither you nor your group are no longer welcome here.~
END
 ++ ~She's free now isn't she? I never intended to leave her in Duvaine's hands any longer than it took for me to turn a profit myself in this deal.~ EXTERN FFBART NEJ107
 ++ ~No need for the scathing words barkeep... the bard seems to have found her way back to you and looking none the worse for her adventure.~ EXTERN FFBART NEJ107
 ++ ~It was her father's wishes that she be married to Duvaine... who am I to argue when a father believes he has his daughter's best interests at heart?~ EXTERN FFBART NEJ112
 ++ ~I apologise to you and to the lady herself Samuel... I should never have let my pressing need for gold sway my doing the right thing by her.~ EXTERN FFBART NEJ116

CHAIN FFBART NEJ107
~Yes I am grateful for her safe return but the manner in which you procured her release was reprehensible to say the least!~
== FFBART ~I am certain your only thought was to net yourself a fine profit at my Leina's expense... here, if gold is of so much importance to you, take the reward I promised and don't show yourself in my inn again.~
DO ~SetGlobal("VP_Samuel_Breaks","GLOBAL",1)
SetGlobalTimer("VP_Sam_Misses_Leina","GLOBAL",TEN_DAYS)
GiveGoldForce(1000)~
EXIT

CHAIN
IF WEIGHT #-15 ~Global("VP_Samuel_Breaks","GLOBAL",1) !InParty("vpleina")~ THEN FFBART NEJ109
~Get out of my inn!~
DO ~SetGlobal("VP_Samuel_Breaks","GLOBAL",2)~
EXIT

CHAIN
IF WEIGHT #-16 ~Global("VP_Samuel_Breaks","GLOBAL",2) !InParty("vpleina")~ THEN FFBART NEJ110
~I told you to get out of my inn unless I call for guards!~
DO ~SetGlobal("VP_Samuel_Breaks","GLOBAL",3)~
EXIT

CHAIN
IF WEIGHT #-17 ~Global("VP_Samuel_Breaks","GLOBAL",3) !InParty("vpleina")~ THEN FFBART NEJ111
~Guards!~
DO ~SetGlobal("VP_Samuel_Breaks","GLOBAL",4)
CreateCreatureObjectOffScreen("VPGuard",Player1,0,0,0)
CreateCreatureObjectOffScreen("VPGuard",Player1,0,0,0)
CreateCreatureObjectOffScreen("VPGuard",Player1,0,0,0)
CreateCreatureObjectOffScreen("VPGuard",Player1,0,0,0)
CreateCreatureObjectOffScreen("VPGuard",Player1,0,0,0)
CreateCreatureObjectOffScreen("VPGuard",Player1,0,0,0)
EscapeArea()~
EXIT

CHAIN FFBART NEJ112
~From what Leina has told me only an imbecile would have failed to see how deranged and obsessive her father had become.~
== FFBART ~You are an intelligent person <CHARNAME> and as such, that pathetic excuse for reprehensible behaviour is as false as are your motives!~
== FFBART ~Here, if gold is of so much importance to you, take the reward I promised and don't show yourself in my inn again.~
DO ~SetGlobal("VP_Samuel_Breaks","GLOBAL",1)
SetGlobalTimer("VP_Sam_Misses_Leina","GLOBAL",TEN_DAYS)
GiveGoldForce(1000)~
EXIT

CHAIN
IF WEIGHT #-18 ~Global("VP_LeinaThanks2","GLOBAL",2) Global("VP_AuberonBribesMe","GLOBAL",1) Global("VP_Samuel_Helps","GLOBAL",0) InParty("vpleina")~ THEN FFBART NEJ115
~Praise be! You have a change of heart and take Leina with you, <CHARNAME>?~
END
 ++ ~She can travel with me, barkeep, but I cannot guarantee that my road will be any safer for her if she remained here.~ EXTERN FFBART NEJ90
 ++ ~Leina may travel with me but I will not be held responsible for her safety and only until a safe place for her can be found.~ EXTERN FFBART NEJ90
 ++ ~I will take her with me, barkeep, just get this city off my back!~ EXTERN FFBART NEJ90

CHAIN FFBART NEJ116
~I doubt there is any remorse whatsoever in your words... neither the lady nor myself are interested in your apologies!~
== FFBART ~No honourable person would have treated my Leina in the way that you have... no... your behaviour is as reprehensible as I suspect are your motives... here, if gold is of so much importance to you, take the reward I promised and don't show yourself in my inn again.~
DO ~SetGlobal("VP_Samuel_Breaks","GLOBAL",1)
SetGlobalTimer("VP_Sam_Misses_Leina","GLOBAL",TEN_DAYS)
GiveGoldForce(1000)~
EXIT

CHAIN
IF WEIGHT #-19 ~Global("VP_LeinaReturns","GLOBAL",0) Global("VP_LeinaThanks","GLOBAL",2) Global("VP_DuvainesAttack","GLOBAL",1)~ THEN FFBART NEJ118
~Well, you have stirred up a hornets nest <CHARNAME>. It's nothing more than you deserve.~
DO ~SetGlobal("VP_LeinaReturns","GLOBAL",1)~
== FFBART ~You come back and tell me a pack of lies... tell me my Leina is content to marry Duvaine and all the time you'd betrayed the trust I put in you. You hand her over to Duvaine as though she were nothing more than a commodity to sell in order to line your own pocket with gold!~
END
 ++ ~She's free now isn't she? I never intended to leave her in Duvaine's hands any longer than it took for me to turn a profit myself in this deal.~ EXTERN FFBART NEJ120
 ++ ~No need for the scathing words barkeep... the bard seems to have found her way back to you and looking none the worse for her adventure.~ EXTERN FFBART NEJ120
 ++ ~It was her father's wishes that she be married to Duvaine... who am I to argue when a father believes he has his daughter's best interests at heart?~ EXTERN FFBART NEJ112
 ++ ~I apologise to you and to the lady herself Samuel... I should never have let my pressing need for gold sway my doing the right thing by her.~ EXTERN FFBART NEJ116

CHAIN FFBART NEJ120
~Yes, she's safe enough for now. However, your actions have riled the city, not only against yourself, but the lass herself and through no fault of her own. If she remains here, the blame will be laid at her door as surely as my name is Samuel Thunderburp.~
END
 ++ ~Leina is welcome to join with me Samuel, I assure she will be safe with me... it's the least I can do to make up for the trouble I have brought upon her.~ EXTERN FFBART NEJ121
 ++ ~That's hardly my fault, you asked me to find and make sure the girl was returned safely to you. Did you really think her captor was going to give her up without a fight?~ EXTERN FFBART NEJ130
 ++ ~If I'd left Duvaine alive, how long do you think it would be before he started pestering your girl again? Seems to me, I've done you both a favour.~ EXTERN FFBART NEJ130
 ++ ~Look Samuel, Duvaine as good as said he wasn't ready just yet to give up his idea of taking Leina for his wife. How many refusals do you think it would take before he made a similar move to that of her father?~ EXTERN FFBART NEJ130

CHAIN FFBART NEJ121
~Then I think we can come to some arrangement here <CHARNAME>. My only concern is for Leina's safety and if that means saving your butt as well then so be it.~
EXTERN FFBART NEJ122

CHAIN FFBART NEJ130
~Whatever <CHARNAME>... what is done is done. My concern as of now is for the lass's safety, unfortunately that entails helping save your miserable butt as well.~
EXTERN FFBART NEJ122

CHAIN FFBART NEJ122
~I know of just the person to sort this mess... it will cost me but I cannot put a price on my Leina's well being. It will take a week at least for things to settle, and it would go much smoother if neither of you were here...~
== FFBART ~(*Turning to Leina*) I'm sorry lass but I think you will be much safer if you leave the city with <CHARNAME> for a while.~
== VPLEIP ~(*A look of disbelief comes to the bard's face*) Samuel... no! I will not travel with the likes of this person, please don't ask me to.~
== VPLEIP ~I would prefer to take my chances with whatever I meet on the road than put myself into the hands of a person who believes it is their right to sell the freedom of another for financial gain... I would not have expected such a suggestion from you Samuel!~
== FFBART ~Leina, lass, please harken to my words... if there were another way to keep you safe, I would not have let such a notion enter my mind for a second.~
== FFBART ~It brings me no pleasure to think of you travelling in the company of one who sees only their own self worth, but you have grown into a very capable young woman, well able to look out for herself... not at all like the lass who first stepped through my door.~
== FFBART ~At least this way, I will not lie awake in my bed fretting over your welfare, which I would most certainly do if you were on the road alone.~
== VPLEIP ~(*Defiantly*) I'll not go with them, and you should not have taken it upon yourself to presume that I would!~
== FFBART ~Please lass... I am not forcing you to do anything you don't want to. What I'm saying is this is the best option we have. All I am suggesting is please, leave the city with <CHARNAME> until I have sorted this mess and then if you choose, you can return any time you wish.~
== FFBART ~You know that the Five Flagons will always be your home and your room will always be waiting for you...~
== FFBART ~(*Then turning to you before Leina can reply*) What do you say <CHARNAME>, do we have a deal? I'll sort your mess in exchange for Leina's safe passage out Athkatla for a while.~
END
 ++ ~She can travel with me, barkeep, but I cannot guarantee that my road will be any safer for her if she remained here.~ EXTERN FFBART NEJ90
 ++ ~Leina may travel with me but I will not be held responsible for her safety and only until a safe place for her can be found.~ EXTERN FFBART NEJ90
 ++ ~I will take her with me, barkeep, just get this city off my back!~ EXTERN FFBART NEJ90
 ++ ~I have no need for a minstrel, barkeep, I will have to take my chances in the city.~ EXTERN FFBART NEJ96

CHAIN
IF WEIGHT #0 ~Global("VP_Met_FFBarkeep","GLOBAL",1) !InParty("vpleina") Global("VP_Samuel_Worries","GLOBAL",0) Global("VP_Samuel_Breaks","GLOBAL",0)~ THEN FFBART NEJ131
~(*His eyes anxiously search amongst your ranks*) Leina... I don't see her with you? Please, tell me that she is well and that you haven't come to my inn bearing the worst of news?~
END
 ++ ~Calm yourself Samuel, Leina is well. I had to let her go because her skills were no longer required by the group.~ EXTERN FFBART NEJ132
 ++ ~She left on her own accord barkeep, she just threw a tantrum and said she could no longer work with me.~ EXTERN FFBART NEJ132
 ++ ~I am sorry to be the bearer of sad news Samuel... Leina is dead. She died fighting bravely side by side with us, you can be been proud of her.~ EXTERN FFBART NEJ137
 ++ ~I am so sorry Samuel... Leina is dead.~ EXTERN FFBART NEJ137
 ++ ~Your Leina is dead barkeep, and all because you insisted that I take her with me.~ EXTERN FFBART NEJ137

CHAIN FFBART NEJ132
~(*A look of relief crosses his face*). Praise the gods! When I didn't see her smiling face amongst your numbers, my heart sank and I feared that she was lost to me forever. Tell me <CHARNAME>, did she say what her plans were before she left your company... is she coming home... to Athkatla?~
END
 ++ ~No, I am sorry, she didn't say anything to me. I assure you though, her time with us has made her a woman well able to look after herself. She will be fine Samuel.~ EXTERN FFBART NEJ133
 ++ ~No, she said nothing to me.~ EXTERN FFBART NEJ143
 ++ ~No and I didn't ask her either. Temperamental, ungrateful minstrel... after all I did to secure her freedom!~ EXTERN FFBART NEJ146

CHAIN FFBART NEJ133
~I hope you are right <CHARNAME>. I love that lass as though she were of my own blood and the thought of her having to make her way alone yet again, is very discomforting. Regardless of how capable a woman you say she has grown into, she is still a lass alone in the world.~
== FFBART ~Pray that her own good sense will bring her safely back here... back into the care of those who love her. Still, I thank you for doing me the courtesy and bringing me news of her.~
== FFBART ~Now, is there some service that The Five Flagons can offer you... a drink maybe to wash the dust of the road from your throats?~
END
 ++ ~Thank you... a drink will be most welcome.~ DO ~SetGlobal("VP_Samuel_Worries","GLOBAL",1)~ EXTERN FFBART 1
 ++ ~No thank you Samuel, I have to be on my way, another time maybe.~ EXTERN FFBART NEJ136

CHAIN FFBART NEJ136
~As you wish. The Five Flagons is always open should you change your mind.~
DO ~SetGlobal("VP_Samuel_Worries","GLOBAL",1)~
EXIT

CHAIN FFBART NEJ137
~(*A look of disbelief comes to his eyes*) Dead... my Leina is dead? No... she can't be... please tell me that this is a jest on your part <CHARNAME>, set up to give old Samuel a fright and that she is going to walk in laughing and smiling with a hug for her old friend? Please, she can't be gone... not my Leina... she can't be?~
END
 IF ~!Dead("njhroth")~ REPLY ~I am not in the habit of playing such cruel jests Samuel. I am sorry, Leina is dead. Please, accept the condolences of us all.~ EXTERN NJHROJ 382
 IF ~Dead("njhroth")~ REPLY ~I am not in the habit of playing such cruel jests Samuel. I am sorry, Leina is dead. Please, accept the condolences of us all.~ EXTERN FFBART NEJ138
 IF ~Dead("njhroth")~ REPLY ~I wish with all my heart that it was a jest my friend... Leina is sadly missed by us all and so we come here today to join with you in mourning your loss. You have lost a girl you called daughter and we have lost a trusted friend.~ EXTERN FFBART NEJ138
 IF ~Dead("njhroth")~ REPLY ~My road has always been fraught with risks and danger Samuel, but Leina knew this when she joined with me on that road. She was an exceptional girl was your Leina and we join you in mourning your loss.~ EXTERN FFBART NEJ138
 IF ~Dead("njhroth")~ REPLY ~You could have saved yourself this anguish barkeep. Your Leina was a tavern singer, not a warrior... you should not have encouraged her to leave with my group.~ EXTERN FFBART NEJ140

CHAIN FFBART NEJ138
~(*He tries to blink back the tears as they begin to well in his eyes*) Then it is true... her smile, the sound of her laughter and her songs... they are all gone forever. This is a sad day for the Five Flagons and Samuel Thunderburp's heart is heavy with grief and pain for his Leina... the light has passed forever from his life.~
== FFBART ~Please, I ask that you leave me now <CHARNAME> for I shall close The Five Flagons so's I can mourn my Leina and pay my respects to her passing as is fitting. There will be no business conducted in The Five Flagons until a full day has come and gone.~
DO ~SetGlobal("VP_Samuel_Worries","GLOBAL",2) EscapeArea()~
EXIT

CHAIN FFBART NEJ140
~(*He tries to blink back the tears as they begin to well in his eyes*) Then it is true... her smile, the sound of her laughter and her songs... they are all gone forever. This is a sad day for the Five Flagons and Samuel Thunderburp's heart is heavy with grief and pain for his Leina... the light has passed forever from his life.~
== FFBART ~It is too late to apportion blame, no amount of it only will bring my Leina back... the light has passed forever from my life.~
== FFBART ~Please, I ask that you leave me now <CHARNAME> for I shall close The Five Flagons so's I can mourn my Leina and pay my respects to her passing as is fitting. There will be no business conducted in The Five Flagons until a full day has come and gone.~
DO ~SetGlobal("VP_Samuel_Worries","GLOBAL",2) EscapeArea()~
EXIT

CHAIN FFBART NEJ143
~I know that she is a sensible enough lass, but Leina is as dear to me as if she were of my own blood and the thought of her being alone on the road yet again, is very discomforting <CHARNAME>.~
== FFBART ~Still, I thank you for bringing me news of her, as discomforting as it is. All I can do now is trust that she knows her own mind and pray that her own good sense will bring her safely back here... back into the care of those who love her.~
== FFBART ~Now, is there some service that The Five Flagons can offer you... a drink maybe to wash the dust of the road from your throats?~
END
 ++ ~Thank you... a drink will be most welcome.~ DO ~SetGlobal("VP_Samuel_Worries","GLOBAL",1)~ EXTERN FFBART 1
 ++ ~No thank you Samuel, I have to be on my way, another time maybe.~ EXTERN FFBART NEJ136

CHAIN FFBART NEJ146
~My Leina was never temperamental, and as for being ungrateful... I pride myself in knowing the lass well enough to know that she would lay her life on the line for any who had risked their own in aiding her! So, if you found her temperamental then the fault lies in you... not her!~
END
 ++ ~Believe what you will barkeep, your good opinion of me is of no concern to me.~ EXTERN FFBART NEJ147
 ++ ~Or maybe she just didn't have the stomach to cope with the things that a life on the road forces a person to deal with in order to survive.~ EXTERN FFBART NEJ147
 ++ ~Could be you didn't know *your* Leina as well as you thought Barkeep. You've seen yourself how she could captivate an audience with that elven charm of hers... could be she has played you too.~ EXTERN FFBART NEJ152
 ++ ~It hadn't escaped my notice what a pretty little thing she is... could be it wasn't your eyes that you were looking at her with barkeep.~ EXTERN FFBART NEJ152

CHAIN FFBART NEJ147
~I can see that mine was the mistake in believing that Leina would have a better chance of a decent life by leaving the city with you <CHARNAME>.~
== FFBART ~I am relieved to see that her own good sense prevailed and her gratitude to you didn't compromise her own principles... even if it does mean that she is once again on the road alone. I am proud of the lass and of her courage.~
== FFBART ~I pray her same good sense sees her safely back here soon... back into the care of those who love her. Now, unless you intend to make use of the services we have to offer here at The Five Flagons, I suggest you be on your way.~
END
 ++ ~Show me what you have to tempt me with barkeep.~ EXTERN FFBART NEJ150
 ++ ~A barkeep with attitude, I am surprised you have any customers at all. I will take my gold to a more civilised establishment. Farewell.~ EXTERN FFBART NEJ151
 ++ ~Then I bid you farewell barkeep.~ EXTERN FFBART NEJ151

CHAIN FFBART NEJ150
~As you wish.~
DO ~SetGlobal("VP_Samuel_Worries","GLOBAL",1) StartStore("ffbart",LastTalkedToBy())~
EXIT

CHAIN FFBART NEJ151
~As you wish, farewell <CHARNAME>.~
DO ~SetGlobal("VP_Samuel_Worries","GLOBAL",1)~
EXIT

CHAIN FFBART NEJ152
~(*His knuckles turn white as he clenches his hands hard into fists*)... I'll have none of your obscenities in my inn <CHARNAME>! Leina is like a daughter to me, she may not be of my blood but I still hold her in my heart as I would a child of my own, and I'll not tolerate your filthy mind nor that mouth of yours insinuating otherwise!~
== FFBART ~In truth... my concern at not seeing her among you has turned to relief, relief that she saw fit to end her association with you. Whereas it is discomforting to know that she is once again on the road alone, that in my eyes, is preferable to the alternative... being in your company!~
== FFBART ~Now, I suggest you leave my inn before I lose what little restraint I still have!~
END
 ++ ~What... my gold no longer good enough for you barkeep?~ EXTERN FFBART NEJ155
 ++ ~Surely, the least you can do is to offer me a drink, after I have taken time out to come and bring you news of *your* Leina?~ EXTERN FFBART NEJ155
 ++ ~I have no quarrel with you barkeep, so I will bid you farewell.~ EXTERN FFBART NEJ155

CHAIN FFBART NEJ155
~Good bye <CHARNAME>!~
DO ~SetGlobal("VP_Samuel_Worries","GLOBAL",2) SetGlobal("VP_Samuel_Breaks","GLOBAL",1)~
EXIT

CHAIN
IF WEIGHT #1 ~Global("VP_Leina_Samuel","GLOBAL",7)~ THEN FFBART NEJ156
~(*The old barkeeps eyes light up when he sees Leina*) Leina lass, you're certainly a welcome sight for sore eyes. You got a hug for old Samuel here?~
DO ~SetGlobal("VP_Leina_Samuel","GLOBAL",8)~
== VPLEIJ ~(*She gives Samuel an affectionate hug*)... Always for you my dear friend... it's good to see your smiling face again Samuel.~
== FFBART ~Tell me girl, has <CHARNAME> here been looking after you good and not running you ragged? 'Cause you just tell me if <PRO_HESHE> has, no one takes advantage of my Leina.~
== VPLEIJ ~(*She laughs softly*) No you needn't fret for me Samuel, I can assure you I am well. In fact, I couldn't wish for better company than this group. If it were not true then the choice to leave would be mine.~
== FFBART ~Aye, that is true enough lass. I only have to look at the colour in your cheeks to see that your chosen road agrees with you. It warms my heart to se you happy Leina... no one deserves to be happy more than you.~
== FFBART ~(*Then turning to you*)... You have built up quite a reputation since leaving Athkatla <CHARNAME>, but Samuel Thunderburp is not one to go listening to gossip. The sight of my Leina so happy tells me all I need to know of you. I thank you for taking such good care of her.~
END
 IF ~OR(2) !InParty("Minsc") Dead("Minsc")~ REPLY ~There is no way I would allow anything to happen to Leina Samuel, she has become very dear to me and a great asset to the group.~ EXTERN FFBART NEJ160
 IF ~OR(2) !InParty("Minsc") Dead("Minsc")~ REPLY ~Leina has made her own place not only in the group but also in my heart. She has brought joy and laughter to us all on some of the bleakest of days.~ EXTERN FFBART NEJ160
 IF ~OR(2) !InParty("Minsc") Dead("Minsc")~ REPLY ~Leina has proven herself an invaluable ally and a stalwart companion to us all Samuel. There will always be a place for her in this group.~ EXTERN FFBART NEJ160
 IF ~OR(2) !InParty("Minsc") Dead("Minsc")~ REPLY ~I admit I had my doubts as to the usefulness of a bard Samuel, but Leina has lifted our spirits many times on and off the battlefield. She has earned her place in the group as well as any warrior or wizard.~ EXTERN FFBART NEJ160
 IF ~OR(2) !InParty("Minsc") Dead("Minsc")~ REPLY ~Believe me barkeep, if the bard hadn't proved to be of any use to me I would have left her the first time she fell, regardless of where that might have been.~ EXTERN FFBART NEJ170
 IF ~InParty("Minsc") !Dead("Minsc")~ REPLY ~There is no way I would allow anything to happen to Leina Samuel, she has become very dear to me and a great asset to the group.~ EXTERN MINSCJ NEJ338
 IF ~InParty("Minsc") !Dead("Minsc")~ REPLY ~Leina has made her own place not only in the group but also in my heart. She has brought joy and laughter to us all on some of the bleakest of days.~ EXTERN MINSCJ NEJ338
 IF ~InParty("Minsc") !Dead("Minsc")~ REPLY ~Leina has proven herself an invaluable ally and a stalwart companion to us all Samuel. There will always be a place for her in this group.~ EXTERN MINSCJ NEJ338
 IF ~InParty("Minsc") !Dead("Minsc")~ REPLY ~I admit I had my doubts as to the usefulness of a bard Samuel, but Leina has lifted our spirits many times on and off the battlefield. She has earned her place in the group as well as any warrior or wizard.~ EXTERN MINSCJ NEJ338

CHAIN MINSCJ NEJ338
~It was indeed a day for hamsters and rangers everywhere to rejoice when the lovely Leina became our friend. Minsc has never heard such beautiful words as the ones Leina sings and even Boo says that he can't stop his whiskers twitching nor his toes tapping when she sings... right Boo?~
== MINSCJ ~(*Squeak*)~ [BOOHL]
EXTERN FFBART NEJ160

CHAIN FFBART NEJ160
~(*His eyes take on a twinkle as he looks at you*)... So, my Leina has enchanted you as well has she <CHARNAME>?~
== FFBART ~(*Then turning to Leina*) I can see that I have worried needlessly over your safety since your departure lass, you are in good company. It is good that you thought to come and put my mind at ease on your return, bless you for your thoughtfulness.~
END
 IF ~Global("SPRITE_IS_DEADVulova","GLOBAL",0)~ THEN EXTERN VPLEIJ 73
 IF ~Global("SPRITE_IS_DEADVulova","GLOBAL",1)~ THEN EXTERN VPLEIJ 76

CHAIN FFBART NEJ170
~(*He looks at you hard*)... I find your words disturbing <CHARNAME>, but I look at my Leina and she is happy. I see also that she is not perturbed by what you say.~
== FFBART ~Since last I saw the lass, she has grown into a very confident young woman and I believe that is due to time spent in the company of you and your group. I trust her to know what she is doing.~
== FFBART ~(*Then turning to Leina*) So, all my worrying since your departure has been for nothing lass, you are your own woman now. It is good that you thought to come and put my mind at ease on your return, bless you for your thoughtfulness.~
END
 IF ~Global("SPRITE_IS_DEADVulova","GLOBAL",0)~ THEN EXTERN VPLEIJ 73
 IF ~Global("SPRITE_IS_DEADVulova","GLOBAL",1)~ THEN EXTERN VPLEIJ 76

CHAIN VPLEIJ 73
~As if I would not come and say hello to the man who has watched and worried over me as though he were my father. Speaking of fathers, have you seen my father Samuel... is he... is he well?~
== FFBART ~(*Shaking his head*) I'll be truthful with you lass... Athkatla hasn't seen much of your father since your departure. Rumour has it that he was seen in the government district a few days ago, but now the house stands empty, shuttered and barred. I'm sorry, but that was the last anyone in the city has seen of him.~
== VPLEIJ ~(*She sighs*) Your words worry me my friend. He was clearly a broken man when last we spoke, he seemed fearful for my life, afraid I would not be safe if he were not there to watch over me.~
== VPLEIJ ~I know that he holds my mother's people responsible for her death, and somehow in his deluded mind he thought me to be in danger also... I fear for what he may do in his present state of mind.~
EXTERN FFBART NEJ163

CHAIN VPLEIJ 76
~As if I would not come and say hello to the man who has watched and worried over me as though he were my father.~
== VPLEIJ ~To be honest Samuel... you became more of a father to me than my own since my return to Athkatla. Even after all that he did, trying to force a marriage with Duvaine, I still find it very painful being here and knowing that he is no longer just across the way.~
EXTERN FFBART NEJ163

CHAIN FFBART NEJ163
~Aye... grief can mess up a man's mind something awful, but I fear you may have returned only to find you have yet something else you must deal with lass.~
== FFBART ~A man came by here not so long ago, handsome fella with the gift of the gab and a glib tongue. Said his name was Bjorn and he was looking for his wife... the bard Leina.~
== VPLEIJ ~(*She pales and then her face takes on a flush of anger*)... Bjorn here... and with the gall to refer to me as his wife! I ceased being wife to that bastard the day he walked out on me...~
== VPLEIJ ~I guess someone should have took the time to tell him that! Did he say what business he thought he had with me Samuel?~
== FFBART ~No... just said he was passing through and he had heard that a bard by the name of Leina was making The Five Flagons in Athkatla the place to visit if one found themselves in the city of coin, and if this Leina was indeed his wife, he didn't want to appear rude by not dropping by... for old times sake he said.~
END
 ++ ~Old times sake... after all he has put you through Leina! Just give the word and I will go and *speak* to him on your behalf?~ EXTERN VPLEIJ 80
 ++ ~Why the audacity of the man! Surely Leina, even you can see that it's the gold he thinks you've made that he is wanting to say hello to?~ EXTERN VPLEIJ 80
 ++ ~If Bjorn is in the city Leina, then perhaps this is the chance for you to lay to rest those remaining ghosts of yours.~ EXTERN VPLEIJ 88
 IF ~GlobalLT("chapter","GLOBAL",4)~ REPLY ~If you intend sorting out your marital problems Leina then I suggest you do it quickly because I won't hang about waiting on you. I don't have the time to allow domestic disputes getting in my way to Irenicus.~ EXTERN VPLEIJ 89

CHAIN VPLEIJ 80
~It's ok. <CHARNAME>. I have spent many long sleepless nights counting the stars, thinking what I would do if our paths ever crossed again, and now I believe I am ready to confront him.~
== VPLEIJ ~I will see him, if only to take back the piece of me that he still holds... this is the only way I will ever be free of him.~
END
 ++ ~Then we shall confront him together... let him know that you have friends who do not desert each other when the going gets rough.~ EXTERN VPLEIJ 82
 ++ ~You'll not confront him alone Leina. As a valuable ally and part of this group you are entitled to the full support of us all.~ EXTERN VPLEIJ 82
 ++ ~I insist on coming with you Leina... there are a few choice words I have of my own to say to this errant husband of yours. Together we will show this Bjorn exactly what he has thrown away and lost because of his own selfish ego.~ EXTERN VPLEIJ 82
 ++ ~Then you best be quick about it and hope that we are still here when you are done.~ EXTERN VPLEIJ 87

CHAIN VPLEIJ 88
~You are right <CHARNAME>. I have counted enough stars and lost enough sleep over that man. It is time I confronted him and take back the piece of me that he still holds... this is the only way I will ever be free of him.~
END
 ++ ~Then we shall confront him together... let him know that you have friends who do not desert each other when the going gets rough.~ EXTERN VPLEIJ 82
 ++ ~You'll not confront him alone Leina. As a valuable ally and part of this group you are entitled to the full support of us all.~ EXTERN VPLEIJ 82
 ++ ~I insist on coming with you Leina... there are a few choice words I have of my own to say to this errant husband of yours. Together we will show this Bjorn exactly what he has thrown away and lost because of his own selfish ego.~ EXTERN VPLEIJ 82
 ++ ~Then you best be quick about it and hope that we are still here when you are done.~ EXTERN VPLEIJ 87

CHAIN VPLEIJ 82
~I welcome your support but first I must find out if Samuel knows where I might find Bjorn.~
EXTERN VPLEIJ 83

CHAIN VPLEIJ 87
~If Samuel can tell me where it is that Bjorn is staying I assure you that you will not be hindered by my tardiness.~
EXTERN VPLEIJ 83

CHAIN VPLEIJ 83
~(*Turning to Samuel*) Tell me Samuel, did Bjorn say where it was that he would be staying whilst he was in the city?~
== FFBART ~He is no longer in Athkatla lass. After I told him that you had left with friends and as far as I knew, you had no intentions of returning, he stomped out of here, but not before accusing me of all manner of nasty obscenities... making out that it was my fault that you left so hurriedly.~
== FFBART ~I'll tell you lass, it was all I could do to stop myself filling that foul mouth of his with my own fist... you being as precious to me as any daughter of my own! You are well rid of the likes of him.~
== VPLEIJ ~That I am, but if he has truly fallen on hard times and lost favour with the rich ladies, then I doubt that I have seen the last of him. If he is determined to catch up with me, then I am sure our paths will cross again sooner than later.~
== VPLEIJ ~Anyway my friend, as much as I would like to tarry longer, maybe play a tune for these good customers of yours... some I recognise from my happy days spent here... <CHARNAME> has much to do and obligations to meet, so I must wish you farewell Samuel and say it was truly good to see you again.~
== VPLEIJ ~(*She gives Samuel a hug*) You take care of yourself.~
== FFBART ~(*He puts his arms around the girl for a brief second and then releases her*)... Now don't you go getting an old man tearful here. You have a long and full life ahead of you lass, so let's not be too hasty with our farewells.~
== FFBART ~Samuel Thunderburp will always be here at The Five Flagons as will a place for you should you ever have need. Now if these obligations of <CHARNAME>'s are so important I suggest you set about sorting them... just you keep yourself safe and come visit again soon.~
DO ~SetGlobal("VP_Errant_Husband","GLOBAL",1)~
EXIT

CHAIN
IF WEIGHT #-5 ~Global("VP_ResqueLeina","GLOBAL",8)~ THEN FFBART NEJ174 // from:
~I see that Leina is not with you. Have you no news of her at all for me? What of that n'er-do-well Duvaine, what did he have to say for himself?~
 IF ~OR(2) Global("BodhiJob","GLOBAL",0) GlobalLT("BodhiAppear","GLOBAL",2)~ REPLY ~I am sorry Samuel. I have spoken to Duvaine, he says it was Leina's father's idea that they should marry, and he thought to keep her in Athkatla by marrying her to Duvaine. How much of what he said is true, I have no idea.~ EXTERN FFBART NEJ175
 IF ~OR(2) Global("BodhiJob","GLOBAL",0) GlobalLT("BodhiAppear","GLOBAL",2)~ REPLY ~Duvaine pleads ignorance over Leina's disappearance. He reckons the marriage was her father's idea and sent us on a wild goose chase halfway across the city to speak to Vulova. I have no idea where to look for this guy who could verify the whole story.~ EXTERN FFBART NEJ175
 IF ~OR(2) Global("BodhiJob","GLOBAL",0) GlobalLT("BodhiAppear","GLOBAL",2)~ REPLY ~Duvaine was of no help barkeep, except to say that maybe Leina's father is behind her sudden departure, he swears he had nothing to do with it. I would like to pay Vulova a call, but his estate is locked, and I cannot waste anymore of my time waiting for him to show up.~ EXTERN FFBART NEJ179
 IF ~GlobalLT("BodhiJob","GLOBAL",2) GlobalGT("BodhiAppear","GLOBAL",1) Global("VP_Spawn_HoodedMan","GLOBAL",1)~ REPLY ~Duvaine was of no help barkeep, except to say that maybe Leina's father is behind her sudden departure, he swears he had nothing to do with it. Vulova was not at home when I paid him a call and I cannot waste anymore of my time waiting for him to show up. You will have to continue the search yourself. Here, take Duvaine's letter, it is of no further use to me. Farewell.~ DO ~GiveItem("GovanLet",[PC])~ EXTERN FFBART NEJ179
 IF ~GlobalLT("BodhiJob","GLOBAL",2) GlobalGT("BodhiAppear","GLOBAL",1) Global("VP_Spawn_HoodedMan","GLOBAL",1)~ REPLY ~Duvaine pleads ignorance over Leina's disappearance. He reckons the marriage was her father's idea and sent us on a wild goose chase halfway across the city to speak to Vulova, only of course he wasn't home. All I got for my trouble was a cryptic story, told to me by a person of dubious character, and which meant absolutely nothing to me. To top it all, Duvaine himself had done a runner. I have wasted enough time on this chase! I return only to say that my involvement in this matter is done. Farewell.~ EXTERN FFBART NEJ179
 IF ~GlobalLT("BodhiJob","GLOBAL",2) GlobalGT("BodhiAppear","GLOBAL",1) Global("VP_Spawn_HoodedMan","GLOBAL",1)~ REPLY ~I am sorry Samuel. I have spoken to Duvaine, he insists it was Leina's father's idea that they should marry, he thought to keep her in Athkatla by marrying her to Duvaine. I tried to verify his story by going to the Vulova estate but there was no sign of Leina nor of her father. Instead, I was accosted by a shady character with some cryptic story that I couldn't make sense of. I am sorry but I really cannot see what else I can do at this time. If I learn any more on my travels, I'll be sure and get back to you, until then, I bid you farewell Samuel.~ EXTERN FFBART NEJ175
 IF ~GlobalLT("BodhiJob","GLOBAL",2) GlobalGT("BodhiAppear","GLOBAL",1) Global("VP_Spawn_HoodedMan","GLOBAL",1)~ REPLY ~I learnt from Duvaine that Leina's father could well be behind her disappearance... the marriage being his idea to keep Leina close to home. I took a trip across the city only to discover the estate locked tight, but my visit wasn't altogether fruitless. My only clue is a little obscure to say the least, but trust me Samuel, I am not about to give up so easily... I am confident that I will find her for you.~ EXTERN FFBART NEJ175
 IF ~GlobalGT("BodhiJob","GLOBAL",1)~ REPLY ~I am sorry Samuel. I have spoken to Duvaine, he says it was Leina's father's idea that they should marry, and he thought to keep her in Athkatla by marrying her to Duvaine. How much of what he said is true, I have no idea.~ EXTERN FFBART NEJ175
 IF ~GlobalGT("BodhiJob","GLOBAL",1)~ REPLY ~Duvaine pleads ignorance over Leina's disappearance. He reckons the marriage was her father's idea and sent us on a wild goose chase halfway across the city to speak to Vulova.~ EXTERN FFBART NEJ175
 IF ~GlobalGT("BodhiJob","GLOBAL",1)~ REPLY ~Duvaine was of no help barkeep, except to say that maybe Leina's father is behind her sudden departure, he swears he had nothing to do with it. I'm going to pay Vulova a call.~ EXTERN FFBART NEJ175

CHAIN FFBART NEJ175
~I'll not say I'm not disappointed <CHARNAME>, I had hoped when I saw you next, I would see my Leina's happy, smiling face in your company.~
== FFBART ~However, your words reassure me a little, for if she is with old man Vulova, I can rest a little easier knowing that, although she may not be happy wherever she is... she is at least safe.~
== FFBART ~Still, to kidnap your own child to force a marriage... what kind of a father does that I ask? He doesn't deserve a daughter as kindhearted and considerate as Leina... he doesn't deserve any kind of a daughter at all!~
== FFBART ~I see that my faith in you is well placed... if anyone can find her, it is you <CHARNAME>. May the gods speed you in your search.~
EXIT

CHAIN FFBART NEJ179
~I see my trust in you <CHARNAME> was misplaced, I did not think you to be a person who would admit defeat so easily. However, I thank you for at least returning to tell me. All I can do now is to put the word out for all to keep an ear to the ground for news of my Leina and hope the reward is enough to loosen someone's tongue.~
== FFBART ~I hope and pray that she is safe and well. Thank you again and fare thee well.~
DO ~SetGlobal("VP_ResqueLeina","GLOBAL",9)~
EXIT