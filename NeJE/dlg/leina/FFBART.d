APPEND ~FFBART~

IF WEIGHT #-1 ~Global("VP_ResqueLeina","GLOBAL",1)
InPartySlot(LastTalkedToBy,0)~ THEN BEGIN NEJ26
  SAY ~I was so relieved when Ikey told me that you had agreed to speak with me, <CHARNAME>. Yes, I know your name, and so do most folks around here.~
  IF ~~ THEN DO ~SetGlobal("VP_Met_FFBarkeep","GLOBAL",1)~ GOTO NEJ27
END

IF ~~ THEN BEGIN NEJ27
  SAY ~It was your reputation for getting things done that prompted me to send Ikey to look for you. You have made quite a name for yourself you know.~
  IF ~~ THEN REPLY ~Ikey mentioned a reward, that is the only reason I am listening to you. Now, what is this trouble of yours and what is it worth for me to sort it for you?~ UNSOLVED_JOURNAL ~Trouble at The Five Flagons Inn.

I have spoken to Samuel Thunderburp and he has asked me to look for his missing bard... girl by the name of Leina. I have agreed to look into the matter for him... although knowing how temperamental artists can be I don't expect to find her if she doesn't want to be found. Samuel also mentioned that she may have family in Athkatla and a  husband... the last thing I want is to get embroiled in another's marital affairs...~ GOTO NEJ28
  IF ~~ THEN REPLY ~Ikey made it sound like you were pretty anxious to speak with me. Well, I am here, what is this matter that is so urgent?~ UNSOLVED_JOURNAL ~Trouble at The Five Flagons Inn.

I have spoken to Samuel Thunderburp and he has asked me to look for his missing bard... girl by the name of Leina. I have agreed to look into the matter for him... although knowing how temperamental artists can be I don't expect to find her if she doesn't want to be found. Samuel also mentioned that she may have family in Athkatla and a  husband... the last thing I want is to get embroiled in another's marital affairs...~ GOTO NEJ28
  IF ~~ THEN REPLY ~Well met Samuel, Ikey said you wished to speak with me. How can I be of help?~ UNSOLVED_JOURNAL ~Trouble at The Five Flagons Inn.

I have spoken to Samuel Thunderburp and he has asked me to look for his missing bard... girl by the name of Leina. I have agreed to look into the matter for him... although knowing how temperamental artists can be I don't expect to find her if she doesn't want to be found. Samuel also mentioned that she may have family in Athkatla and a  husband... the last thing I want is to get embroiled in another's marital affairs...~ GOTO NEJ28
  IF ~~ THEN REPLY ~I am pressed for time here Samuel, so just spit out what it is that you want with me?~ UNSOLVED_JOURNAL ~Trouble at The Five Flagons Inn.

I have spoken to Samuel Thunderburp and he has asked me to look for his missing bard... girl by the name of Leina. I have agreed to look into the matter for him... although knowing how temperamental artists can be I don't expect to find her if she doesn't want to be found. Samuel also mentioned that she may have family in Athkatla and a  husband... the last thing I want is to get embroiled in another's marital affairs...~ GOTO NEJ28
END

IF ~~ THEN BEGIN NEJ28
  SAY ~I am concerned for Leina, my star entertainer. She is usually here at this hour to entertain my customers, and never a once has she missed a performance, in all of her time here at The Five Flagons.~
  IF ~~ THEN GOTO NEJ29
END

IF ~~ THEN BEGIN NEJ29
  SAY ~One of the best bards we have had in here in a while, a voice like a songbird but always so full of sadness. Still, the customers enjoy her tales and it is their pleasure that counts.~
  IF ~~ THEN GOTO NEJ30
END

IF ~~ THEN BEGIN NEJ30
  SAY ~Leina has never let me down and her absence truly worries me, <CHARNAME>. I love the lass as I would any daughter of my own and I will pay you what I can if you find her and return her safely to me.~
  IF ~~ THEN REPLY ~I see the concern in your face Samuel. Do you have reason to think some harm may have befallen this young woman? Could she not simply be enjoying the company of friends and has lost all track of time?~ GOTO NEJ31
  IF ~~ THEN REPLY ~Is it not possible that this Leina has merely dallied too long in the arms of a lover? Young girl's heads these days are so easily turned and she would not be the first to have allowed herself be swayed by a young man's attentions.~ GOTO NEJ31
  IF ~~ THEN REPLY ~You worry too much! My guess is this Leina found favour with a local lad and prefers his company to that of your customers.~ GOTO NEJ31
  IF ~~ THEN REPLY ~Bards, minstrels whatever you choose to call them, they are all temperamental rogues, it is their *artistic nature* that makes them so, or at least, that is what they will have you believe. This Leina of yours will probably turn up tomorrow, red faced, full of apologies and no explanation.~ GOTO NEJ33
END

IF ~~ THEN BEGIN NEJ31
  SAY ~Not Leina, she is sensible enough. Poor lass, she has had to overcome a lot of bitter disappointments in her young life.~
  IF ~~ THEN GOTO NEJ32
END

IF ~~ THEN BEGIN NEJ32
  SAY ~She knows the way of men and her head would not be turned so easily by a handsome face. No, Leina is no simple emptied headed lass, something is amiss here for sure.~
  IF ~~ THEN REPLY ~What else can you tell me of Leina? Does she perhaps have family in the area that she is in the habit of visiting?~ GOTO NEJ35
END

IF ~~ THEN BEGIN NEJ33
  SAY ~Leina is a responsible lass with her feet firmly on the ground. She loves her music. It is her one passion and she is always telling me that it is the only thing that is constant and reliable in her life.~
  IF ~~ THEN GOTO NEJ34
END

IF ~~ THEN BEGIN NEJ34
  SAY ~She loves to sing and would not forego the opportunity to do so without good reason. No, something is seriously amiss here.~
  IF ~~ THEN REPLY ~What else can you tell me of Leina? Does she perhaps have family in the area that she is in the habit of visiting?~ GOTO NEJ35
END

IF ~~ THEN BEGIN NEJ35
  SAY ~I believe she does have family in Athkatla but she never visits, nor do they come here to listen to her sing.~
  IF ~~ THEN GOTO NEJ36
END

IF ~~ THEN BEGIN NEJ36
  SAY ~Leina gave me the impression that there was a falling out at some time and the rift has never been healed.~
  IF ~~ THEN GOTO NEJ37
END

IF ~~ THEN BEGIN NEJ37
  SAY ~I am not even sure they know she has returned to Athkatla.~
  IF ~~ THEN REPLY ~Perhaps they learnt of her return and she is at this minute with them hoping to heal this rift that you say lies between them?~ GOTO NEJ38
END

IF ~~ THEN BEGIN NEJ38
  SAY ~No, I am sure Leina would have mentioned it to me if any such visit was planned and she most certainly would not have let it interfere with her job here.~
  IF ~~ THEN REPLY ~What else can you tell me of Leina? Do you know of any person that would wish to harm her for any reason?~ GOTO NEJ39
  IF ~~ THEN REPLY ~You clearly fear for her safety. Has she upset or made an enemy of anyone that you can think of?~ GOTO NEJ39
END

IF ~~ THEN BEGIN NEJ39
  SAY ~Leina enemies? Gracious me no! Leina would not hurt a soul, nor would she speak ill of anyone, not even a bad word against the bastard of a husband who walked out and left her penniless.~
  IF ~~ THEN REPLY ~A husband you say? Now that may be a reason for concern, especially if he has returned and knows that Leina has found fame with her music.~ GOTO NEJ40
  IF ~~ THEN REPLY ~Well, there is your answer. This husband has returned and they have left together. This is nothing more than love rekindled and a happy ever after.~ GOTO NEJ40
END

IF ~~ THEN BEGIN NEJ40
  SAY ~If it is true and her husband had returned, Leina would have no part of him. He hurt her badly and I do not think she will ever forgive or trust him or any man again.~
  IF ~~ THEN REPLY ~If that is the case, he could have forced her to go with him against her will. It may be a good idea for us to check her room out. Maybe you should have a word with the city guard?~ GOTO NEJ42
  IF ~~ THEN REPLY ~What about her friends, have you thought to speak to them?~ GOTO NEJ41
END

IF ~~ THEN BEGIN NEJ41
  SAY ~Leina was not one for making friends. She kept pretty much to herself.~
  IF ~~ THEN GOTO NEJ44
END

IF ~~ THEN BEGIN NEJ42
  SAY ~I spoke to them but they reckon they are far too busy to worry about *flighty minstrels*.~
  IF ~~ THEN GOTO NEJ43
END

IF ~~ THEN BEGIN NEJ43
  SAY ~I tell you, if I was a couple of feet taller I would have shown them that no one calls my Leina a flighty minstrel, *no one!*~
  IF ~~ THEN REPLY ~Not a lot to being on with I am afraid Samuel. Perhaps now would be a good time to take a look at Leina's room.~ GOTO NEJ45
  IF ~~ THEN REPLY ~This Leina sounds a little too perfect to me. Perhaps a search of her room will uncover more about her. Maybe a side you have never seen barkeep.~ GOTO NEJ45
END

IF ~~ THEN BEGIN NEJ44
  SAY ~She could always be heard in her room singing or playing. She sure loved to do that, even when she was alone.~
  IF ~~ THEN REPLY ~Not a lot to being on with I am afraid Samuel. Perhaps now would be a good time to take a look at Leina's room.~ GOTO NEJ45
  IF ~~ THEN REPLY ~This Leina sounds a little too perfect to me. Perhaps a search of her room will uncover more about her. Maybe a side you have never seen barkeep.~ GOTO NEJ45
END

IF ~~ THEN BEGIN NEJ45
  SAY ~By all means take a look at her room only no messing it up you hear?~
  IF ~~ THEN GOTO NEJ46
END

IF ~~ THEN BEGIN NEJ46
  SAY ~Leina likes to keep things in place and I would hate her to come back and think I had let strangers rummage through her private things.~
  IF ~~ THEN DO ~SetGlobal("VP_ResqueLeina","GLOBAL",2)~ EXIT
END

IF WEIGHT #-2 ~Global("VP_ResqueLeina","GLOBAL",1)
!InPartySlot(LastTalkedToBy,0)~ THEN BEGIN NEJ47
  SAY ~Greetings to you. I am Samuel Thunderburp. And you are, of course, one of the traveling companions of <CHARNAME>. I had hoped to speak with <PRO_HIMHER>, but you are certainly worthy.~
  IF ~~ THEN DO ~SetGlobal("VP_Met_FFBarkeep","GLOBAL",1)~ GOTO NEJ27
END

IF WEIGHT #-4 ~GlobalGT("VP_ResqueLeina","GLOBAL",1)
GlobalLT("VP_ResqueLeina","GLOBAL",5)~ THEN BEGIN NEJ48 // from:
  SAY ~Did you discover anything, <CHARNAME>, any clues as the whereabouts of my Leina? Tell me, did you learn anything that will help to find her?~
  IF ~GlobalLT("VP_ResqueLeina","GLOBAL",3)~ THEN REPLY ~I'm afraid not yet, but I intend to keep looking.~ GOTO NEJ49
  IF ~GlobalGT("VP_ResqueLeina","GLOBAL",3)
GlobalLT("VP_ResqueLeina","GLOBAL",5)
!PartyHasItem("GovanLet")~ THEN REPLY ~I'm afraid not yet, but I intend to keep looking.~ GOTO NEJ49
  IF ~GlobalGT("VP_ResqueLeina","GLOBAL",3)
GlobalLT("VP_ResqueLeina","GLOBAL",5)
PartyHasItem("GovanLet")~ THEN REPLY ~Hey, not so fast Samuel. Her room is a right mess up there, not any of my doing I hasten to add. I did find this letter, crumpled and thrown in the corner of the room amid some roses. Here, read this and tell me what you know of this Govan Duvaine?~ DO ~TakePartyItem("GovanLet")
SetGlobal("VP_ResqueLeina","GLOBAL",5)~ GOTO NEJ50
  IF ~GlobalGT("VP_ResqueLeina","GLOBAL",3)
GlobalLT("VP_ResqueLeina","GLOBAL",5)
PartyHasItem("GovanLet")~ THEN REPLY ~Seems this Leina of yours had a suitor that she did not take too kindly to. Spurned his advances I would say by the looks of things upstairs. Here, take a look and tell me what you know of the man who signs this letter.~ DO ~TakePartyItem("GovanLet")
SetGlobal("VP_ResqueLeina","GLOBAL",5)~ GOTO NEJ50
  IF ~GlobalGT("VP_ResqueLeina","GLOBAL",3)
GlobalLT("VP_ResqueLeina","GLOBAL",5)
PartyHasItem("GovanLet")~ THEN REPLY ~Her room is a mess Samuel and I found this crumpled letter amongst some roses hastily discarded. I am sorry but I cannot spare anymore time on this search. Here take the letter, perhaps it will aid you in your search for her. Farewell, Samuel.~ DO ~TakePartyItem("GovanLet")
SetGlobal("VP_ResqueLeina","GLOBAL",5)~ GOTO NEJ55
  IF ~GlobalGT("VP_ResqueLeina","GLOBAL",3)
GlobalLT("VP_ResqueLeina","GLOBAL",5)
PartyHasItem("GovanLet")~ THEN REPLY ~By the looks of things upstairs, I would say this Leina of yours has fallen foul of a spurned suitor. You would have discovered as much yourself if you had taken the time to look. Here take this letter and do with it as you please, I can spare no more time to help you. Farewell.~ DO ~TakePartyItem("GovanLet")
SetGlobal("VP_ResqueLeina","GLOBAL",5)~ GOTO NEJ55
END

IF ~~ THEN BEGIN NEJ49
  SAY #25101
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NEJ50
  SAY ~I will tell you what I can of this Govan Duvaine. He is son to one of the influential families in Athkatla. The Copper Coronet is usually where he hangs out.~
  IF ~~ THEN GOTO NEJ51
END

IF ~~ THEN BEGIN NEJ51
  SAY ~The entertainment there is more to his taste he once told me, reckoned I would do well to take a leaf out of Lehtinan's book and do much the same with The Five Flagons, arrogant little upstart!~
  IF ~~ THEN GOTO NEJ52
END

IF ~~ THEN BEGIN NEJ52
  SAY ~Come to think of it now, I did note that he was spending more time than usual in here lately. Never entered my head that Leina was the attraction.~
  IF ~~ THEN GOTO NEJ53
END

IF ~~ THEN BEGIN NEJ53
  SAY ~Your best bet is to try at the Copper Coronet. I am not a rich man but I can afford 1000 gold pieces if you return Leina to me safely.~
  IF ~~ THEN REPLY ~Leave it to me Samuel, if this Govan Duvaine knows the whereabouts of your Leina, then so shall I, even if I have to force it out of him.~ UNSOLVED_JOURNAL ~Trouble at The Five Flagons Inn.

I have agreed to search and find a missing bard... girl by the name of Leina...  for Samuel Thunderburp, the halfling proprietor of The Five Flagons. A search of her room has revealed signs of a rejected marriage proposal from one Govan Duvaine and the room itself is in disarray... I fear something sinister has befallen this unfortunate young woman. It seems Samuel remembers this Govan Duvaine spending more time than usual in The Five Flagons... his usual haunt is The Copper Coronet. The poor man seems genuinely worried and has offered me 1000 gold pieces to find the girl... I told him I would speak to Govan Duvaine and try to get to the bottom of this for him.~ GOTO NEJ54
  IF ~~ THEN REPLY ~1000 gold pieces, not enough barkeep. I wish you luck in your search for this girl, I think that you are going to need it.~ UNSOLVED_JOURNAL ~Trouble at The Five Flagons Inn.

I have agreed to search and find a missing bard... girl by the name of Leina...  for Samuel Thunderburp, the halfling proprietor of The Five Flagons. A search of her room has revealed signs of a rejected marriage proposal from one Govan Duvaine and the room itself is in disarray... I fear something sinister has befallen this unfortunate young woman. It seems Samuel remembers this Govan Duvaine spending more time than usual in The Five Flagons... his usual haunt is The Copper Coronet. His offer of gold was not enough so his and the girl's troubles no longer concern me.~ GOTO NEJ58
END

IF ~~ THEN BEGIN NEJ54
  SAY ~Here take this letter you found and confront him with it, see what he has to say for himself.~
  IF ~~ THEN DO ~SetGlobal("VP_ResqueLeina","GLOBAL",7)
GiveItem("GovanLet",[PC])~ EXIT
END

IF ~~ THEN BEGIN NEJ55
  SAY ~Oh please, say you will reconsider, <CHARNAME>. If you do not aid her I do not know what will become of her! I know of this Govan Duvaine, but I had no idea he had designs on my Leina.~
  IF ~~ THEN GOTO NEJ56
END

IF ~~ THEN BEGIN NEJ56
  SAY ~Please, <CHARNAME>, I am begging you to continue your search. If Leina is indeed with this Duvaine then he is clearly preventing her return? I know of no one else who can aid me.~
  IF ~~ THEN REPLY ~I am sorry but it is as I have said, I just do not have any more time. Best of luck in your search and I hope you find your Leina safe.~ UNSOLVED_JOURNAL ~Trouble at The Five Flagons Inn.

I have agreed to search and find a missing bard... girl by the name of Leina...  for Samuel Thunderburp, the halfling proprietor of The Five Flagons. A search of her room has revealed signs of a rejected marriage proposal from one Govan Duvaine and the room itself is in disarray... I fear something sinister has befallen this unfortunate young woman. It seems Samuel remembers this Govan Duvaine spending more time than usual in The Five Flagons... his usual haunt is The Copper Coronet. His offer of gold was not enough so his and the girl's troubles no longer concern me.~ GOTO NEJ57
  IF ~~ THEN REPLY ~Up the reward some more and give me something useful to go on and I may consider giving you some more of my time.~ GOTO NEJ50
END

IF ~~ THEN BEGIN NEJ57
  SAY ~At least, I hope so... (*Samuel turns and walks away.*)~
  IF ~~ THEN DO ~SetGlobal("VP_ResqueLeina","GLOBAL",6)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN NEJ58
  SAY ~It is every copper that I own... (*Samuel turns and walks away.*)~
  IF ~~ THEN DO ~SetGlobal("VP_ResqueLeina","GLOBAL",6)
EscapeArea()~ EXIT
END


IF WEIGHT #-3 ~GlobalGT("VP_ResqueLeina","GLOBAL",1)
GlobalLT("VP_ResqueLeina","GLOBAL",8)~ THEN BEGIN NEJ59 // from:
  SAY ~Did you discover anything, <CHARNAME>, any clues as the whereabouts of my Leina? Tell me, did you learn anything that will help to find her?~
  IF ~~ THEN REPLY ~I'm afraid not yet, but I intend to keep looking.~ GOTO NEJ49
END

IF WEIGHT #-5 ~Global("VP_ResqueLeina","GLOBAL",36)~ THEN BEGIN NEJ60 // from:
  SAY ~I see that Leina is not with you. Have you no news of her at all for me? What of that n'er-do-well Duvaine, what did he have to say for himself?~
  IF ~OR(2)
Global("BodhiJob","GLOBAL",0)
GlobalLT("BodhiAppear","GLOBAL",2)~ THEN REPLY ~I am sorry Samuel. I have spoken to Duvaine, he says it was Leina's father's idea that they should marry, and he thought to keep her in Athkatla by marrying her to Duvaine. How much of what he said is true, I have no idea.~ GOTO NEJ61
  IF ~OR(2)
Global("BodhiJob","GLOBAL",0)
GlobalLT("BodhiAppear","GLOBAL",2)~ THEN REPLY ~Duvaine pleads ignorance over Leina's disappearance. He reckons the marriage was her father's idea and sent us on a wild goose chase halfway across the city to speak to Vulova. I have no idea where to look for this guy who could verify the whole story.~ GOTO NEJ61
  IF ~OR(2)
Global("BodhiJob","GLOBAL",0)
GlobalLT("BodhiAppear","GLOBAL",2)~ THEN REPLY ~Duvaine was of no help barkeep, except to say that maybe Leina's father is behind her sudden departure, he swears he had nothing to do with it. I would like to pay Vulova a call, but his estate is locked, and I cannot waste anymore of my time waiting for him to show up.~ GOTO NEJ61
  IF ~GlobalLT("BodhiJob","GLOBAL",2)
GlobalGT("BodhiAppear","GLOBAL",1)
Global("VP_Spawn_HoodedMan","AR1000",1)~ THEN REPLY ~Duvaine was of no help barkeep, except to say that maybe Leina's father is behind her sudden departure, he swears he had nothing to do with it. Vulova was not at home when I paid him a call and I cannot waste anymore of my time waiting for him to show up. You will have to continue the search yourself. Here, take Duvaine's letter, it is of no further use to me. Farewell.~ DO ~GiveItem("GovanLet",[PC])~ GOTO NEJ61
  IF ~GlobalLT("BodhiJob","GLOBAL",2)
GlobalGT("BodhiAppear","GLOBAL",1)
Global("VP_Spawn_HoodedMan","AR1000",1)~ THEN REPLY ~Duvaine pleads ignorance over Leina's disappearance. He reckons the marriage was her father's idea and sent us on a wild goose chase halfway across the city to speak to Vulova, only of course he wasn't home. All I got for my trouble was a cryptic story, told to me by a person of dubious character, and which meant absolutely nothing to me. To top it all, Duvaine himself had done a runner. I have wasted enough time on this chase! I return only to say that my involvement in this matter is done. Farewell.~ GOTO NEJ61
  IF ~GlobalLT("BodhiJob","GLOBAL",2)
GlobalGT("BodhiAppear","GLOBAL",1)
Global("VP_Spawn_HoodedMan","AR1000",1)~ THEN REPLY ~I am sorry Samuel. I have spoken to Duvaine, he insists it was Leina's father's idea that they should marry, he thought to keep her in Athkatla by marrying her to Duvaine. I tried to verify his story by going to the Vulova estate but there was no sign of Leina nor of her father. Instead, I was accosted by a shady character with some cryptic story that I couldn't make sense of. I am sorry but I really cannot see what else I can do at this time. If I learn any more on my travels, I'll be sure and get back to you, until then, I bid you farewell Samuel.~ GOTO NEJ61
  IF ~GlobalLT("BodhiJob","GLOBAL",2)
GlobalGT("BodhiAppear","GLOBAL",1)
Global("VP_Spawn_HoodedMan","AR1000",1)~ THEN REPLY ~I learnt from Duvaine that Leina's father could well be behind her disappearance... the marriage being his idea to keep Leina close to home. I took a trip across the city only to discover the estate locked tight, but my visit wasn't altogether fruitless. My only clue is a little obscure to say the least, but trust me Samuel, I am not about to give up so easily... I am confident that I will find her for you.~ GOTO NEJ86
  IF ~GlobalGT("BodhiJob","GLOBAL",1)~ THEN REPLY ~I am sorry Samuel. I have spoken to Duvaine, he says it was Leina's father's idea that they should marry, and he thought to keep her in Athkatla by marrying her to Duvaine. How much of what he said is true, I have no idea.~ GOTO NEJ49
  IF ~GlobalGT("BodhiJob","GLOBAL",1)~ THEN REPLY ~Duvaine pleads ignorance over Leina's disappearance. He reckons the marriage was her father's idea and sent us on a wild goose chase halfway across the city to speak to Vulova...~ GOTO NEJ49
  IF ~GlobalGT("BodhiJob","GLOBAL",1)~ THEN REPLY ~Duvaine was of no help barkeep, except to say that maybe Leina's father is behind her sudden departure, he swears he had nothing to do with it. I'm going to pay Vulova a call...~ GOTO NEJ49
END

IF ~~ THEN BEGIN NEJ61
  SAY ~I see my trust in you was misplaced, I did not think you to be a person who would admit defeat so easily.~
  IF ~~ THEN REPLY ~I really cannot see what else I can do at this time Samuel, sorry. Here, take Duvaine's letter, not that I can see what good it will do you, but I have no need of it. Farewell and I hope you find Leina, soon.~ DO ~GiveItem("GovanLet",[PC])~ GOTO NEJ62
  IF ~~ THEN REPLY ~I have wasted enough time on this chase! I return only to say that my involvement in this matter is done. Farewell.~ GOTO NEJ62
  IF ~~ THEN REPLY ~Anyway you will have to continue the search yourself. Farewell.~ GOTO NEJ62
END

IF ~~ THEN BEGIN NEJ62
  SAY ~All I can do now is to put the word out for all to keep an ear to the ground for news of my Leina and hope the reward is enough to loosen someone's tongue. I hope and pray that she is safe and well. Thank you again and fare thee well.~
  IF ~~ THEN DO ~SetGlobal("VP_ResqueLeina","GLOBAL",9)~ EXIT
END

////////////////////////////////////////
//                                    //
// Old States for Correction In v4.2b //
//                                    //
////////////////////////////////////////

IF WEIGHT #-6 ~Global("VP_Met_FFBarkeep","GLOBAL",1)
Global("VP_Govan_Bribes_Me","GLOBAL",1)~ THEN BEGIN NEJ63
  SAY ~You have news of my Leina at last, <CHARNAME>? Please say that you do?~
  IF ~~ THEN REPLY ~I have, Samuel. It seems your Leina has had a change of heart. She has agreed to marry Govan Duvaine. I have spoken to her and she asks me to tell you that she is happy.~ GOTO NEJ64
  IF ~~ THEN REPLY ~Yes, barkeep, in fact Leina sends you her best regards and wishes you to know that she is marrying Govan Duvaine and she expects to be very happy with him.~ GOTO NEJ64
  IF ~~ THEN REPLY ~I have seen your Leina, barkeep, and she seemed very happy to me, ecstatic even I would say. She has accepted Govan Duvaine's proposal and has asked me to tell you not to worry or fret about her any more.~ GOTO NEJ64
  IF ~~ THEN REPLY ~Leina has asked that I tell you she has made up her mind to marry Govan Duvaine. It is not a love match, but she says she married for love once and that did not work for her so she will be content with the comfort and security that Duvaine offers her. She asks that you worry no more for her.~ GOTO NEJ64
END

IF ~~ THEN BEGIN NEJ64
  SAY ~Well, I suppose as long as she is happy and content, that is all I can hope for her.~
  IF ~~ THEN DO ~SetGlobal("VP_Govan_Bribes_Me","GLOBAL",2)~ GOTO NEJ65
END

IF ~~ THEN BEGIN NEJ65
  SAY ~Still, I would not have reckoned with Govan being her choice, but she knows her own mind does Leina so I must respect that he is the one she has decided on.~
  IF ~~ THEN GOTO NEJ66
END

IF ~~ THEN BEGIN NEJ66
  SAY ~Thank you for putting my mind at ease, <CHARNAME>. I expect she will come tell me herself when the wedding is to be. Here is the 1000 gold pieces I promised you. Fare thee well.~
  IF ~~ THEN DO ~GiveGoldForce(1000)
SetGlobalTimer("VP_Sam_Misses_Leina","GLOBAL",TEN_DAYS)~ EXIT
END //If PC proceeds to meeting with Killian then => Scenario: Meeting With Killian

/*IF WEIGHT #-7 ~Global("VP_Met_FFBarkeep","GLOBAL",1)
Global("VP_ResqueLeina","GLOBAL",17)~ THEN BEGIN NEJ67
  SAY ~Leina arrived ahead of you, <CHARNAME>, and I give thanks to you for her safe return. She has told me of her father's death and that she lays no blame at your feet for it.~
  IF ~~ THEN GOTO NEJ68
END

IF ~~ THEN BEGIN NEJ68
  SAY ~She has taken to her room for some quiet she says but was pretty shaken when she walked through the door. I fear she may decide to leave Athkatla soon and I do not blame the lass if she did.~
  IF ~~ THEN GOTO NEJ69
END

IF ~~ THEN BEGIN NEJ69
  SAY ~Would it be asking too much to allow her to travel with you, <CHARNAME>, until she found her place that is?~
  IF ~~ THEN REPLY ~I have no need for a minstrel, barkeep. I have returned for the 1000 gold pieces you promised and then I have my own affairs to be getting on with.~ GOTO NEJ70
  IF ~~ THEN REPLY ~I have no room for her at present Samuel, but Leina has proven more than capable of taking care of herself in the past has she not? She will be fine. I only returned to check that she had arrived safely.~ GOTO NEJ70
  IF ~~ THEN REPLY ~I have already made it clear to Leina that I have no need for her in this group. It is her choice if she decides to take to the road on her own. I am here only for the reward you promised for her return.~ GOTO NEJ70
END

IF ~~ THEN BEGIN NEJ70
  SAY ~Then there is no more to be said. Here is your gold <CHARNAME>. If you change your mind about taking Leina along with you, you know where she can be found. Fare thee well.~
  IF ~~ THEN DO ~SetGlobal("VP_ResqueLeina","GLOBAL",18)
GivePartyGold(1000)~ EXIT
END*/

IF WEIGHT #-8 ~InParty("Leina")
Global("VP_ResqueLeina","GLOBAL",16)~ THEN BEGIN NEJ71
  SAY ~Praise be! You are safe, Leina. I thought... well, I do not know what I thought, but you are here now, praise be!~
  IF ~~ THEN DO ~SetGlobal("VP_ResqueLeina","GLOBAL",18)~ EXTERN ~LEINAJ~ 18
END

IF ~~ THEN BEGIN NEJ72
  SAY ~I will miss you lass and so will my patrons here, but you know your own heart. Follow and listen well to what it says, it will not always let you down, no matter what you believe.~
  IF ~~ THEN GOTO NEJ73
END

IF ~~ THEN BEGIN NEJ73
  SAY ~I will be here if ever you feel the need to return, you will ever be, my Leina. You have many years ahead of you, be happy. Fare thee well and good luck to you my child, my Leina.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NEJ74
  SAY ~Here, <CHARNAME>, here is the gold you were promised. You take care of my Leina now. If I ever hear that you have in anyway brought pain or grief to her, you will answer to me and you will sorely regret the day you walked into the Five Flagons.~
  IF ~~ THEN REPLY ~You have no cause to worry Samuel. Leina will be safe and well protected in my company.~ GOTO NEJ75
  IF ~~ THEN REPLY ~You worry for nothing barkeep. It was Leina's decision to join with me and I would not have taken her if she were not able to look after herself.~ GOTO NEJ75
  IF ~~ THEN REPLY ~I admit my road is unknown and hostile, but this I have made clear to Leina. She is fully aware of what may lie ahead but she still prefers to join with me rather than live in a place where memories will continue to haunt her nights.~ GOTO NEJ75
END

IF ~~ THEN BEGIN NEJ75
  SAY ~Then I bid you fare thee well, <CHARNAME>, but mark you well what my final words were to you.~
  IF ~~ THEN DO ~GiveGoldForce(1000)
SetGlobalTimer("VP_Sam_Misses_Leina","GLOBAL",TEN_DAYS)~ EXIT
END

IF WEIGHT #-9 ~Global("VP_LeinaReturns","GLOBAL",0)
Global("VP_LeinaThanks","GLOBAL",2)
GlobalGT("VP_Govan_Bribes_Me","GLOBAL",2)
Global("VP_DuvainesAttack","GLOBAL",0)~ THEN BEGIN NEJ76
  SAY ~You have returned my Leina to me, <CHARNAME>, and I give thanks to you for her safe return. She has taken to her room for some quiet she says but was pretty shaken when she walked through the door. I fear she may decide to leave Athkatla soon and I do not blame the lass if she did.~
  IF ~~ THEN DO ~SetGlobal("VP_LeinaReturns","GLOBAL",1)~ GOTO NEJ77
END

IF ~~ THEN BEGIN NEJ77
  SAY ~She has told me the whole sordid tale. It is a mess for sure that you have got yourself into. I do know of just the person to sort it out. It will cost me but I cannot put a price on my Leina's well being. One thing I insist on, if I sort this mess you must take Leina with you when you leave the city and leave you must.~
  IF ~~ THEN GOTO NEJ78
END

IF ~~ THEN BEGIN NEJ78
  SAY ~It will take a week at least for things to settle here and it would go much smoother if neither of you were here.~
  IF ~~ THEN GOTO NEJ79
END

IF ~~ THEN BEGIN NEJ79
  SAY ~If you refuse my offer it will be a very long time before you will be able to walk Athkatla safely again. Do we have an agreement, <CHARNAME>?~
  IF ~~ THEN REPLY ~She can travel with me, barkeep, but I cannot guarantee that my road will be any safer for her if she remained here.~ GOTO NEJ82
  IF ~~ THEN REPLY ~Leina may travel with me but I will not be held responsible for her safety and only until a safe place for her can be found.~ GOTO NEJ82
  IF ~~ THEN REPLY ~I will take her with me, barkeep, just get this city off my back!~ GOTO NEJ82
  IF ~~ THEN REPLY ~I have no need for a minstrel, barkeep, I will have to take my chances in the city.~ GOTO NEJ80
END

IF ~~ THEN BEGIN NEJ80
  SAY ~Then I bid you fare thee well, <CHARNAME>, and wish you all the luck in the world because you are surely going to need it now.~
  IF ~~ THEN GOTO NEJ81
END

IF ~~ THEN BEGIN NEJ81
  SAY ~If you decide you need my help after all do not leave it any longer than a day. After that time it will be too late for me do anything for you.~
  IF ~~ THEN DO ~SetGlobalTimer("VP_Sam_Misses_Leina","GLOBAL",TEN_DAYS)~ EXIT
END //If PC has a change of heart and returns then => Scenario: The Five Flagons 5

IF ~~ THEN BEGIN NEJ82
  SAY ~I will get to sorting this mess straight away. In the meantime you take good care of my Leina, <CHARNAME>. She is upstairs waiting for you.~
  IF ~~ THEN GOTO NEJ83
END

IF ~~ THEN BEGIN NEJ83
  SAY ~If I hear of any pain or grief brought to her on your account, you will answer to Samuel Thunderburp. Fare thee well.~
  IF ~~ THEN DO ~SetGlobalTimer("VP_Sam_Helps_Timer","GLOBAL",ONE_DAY)
SetGlobal("VP_Samuel_Helps","GLOBAL",1)
SetGlobalTimer("VP_Sam_Misses_Leina","GLOBAL",TEN_DAYS)
EscapeAreaMove("AR1002",516,638,8)~ EXIT
END

IF WEIGHT #-10 ~Global("VP_LeinaReturns","GLOBAL",1)
GlobalGT("VP_DuvainesRevenge","GLOBAL",0)
Global("VP_Samuel_Helps","GLOBAL",0)
!InParty("Leina")~ THEN BEGIN NEJ84
  SAY ~Are you here to tell me that you have changed your mind about taking Leina with you, <CHARNAME>?~
  IF ~~ THEN REPLY ~She can travel with me, barkeep, but I cannot guarantee that my road will be any safer for her if she remained here.~ GOTO NEJ90
  IF ~~ THEN REPLY ~Leina may travel with me but I will not be held responsible for her safety and only until a safe place for her can be found.~ GOTO NEJ90
  IF ~~ THEN REPLY ~I will take her with me, barkeep, just get this city off my back!~ GOTO NEJ90
  IF ~~ THEN REPLY ~I have no need for a minstrel, barkeep, I will have to take my chances in the city.~ GOTO NEJ96
END

IF WEIGHT #-11 ~Global("VP_LeinaReturns","GLOBAL",1)
GlobalGT("VP_DuvainesRevenge","GLOBAL",0)
Global("VP_Samuel_Helps","GLOBAL",0)
InParty("Leina")~ THEN BEGIN NEJ85
  SAY ~Praise be! You have a change of heart and take Leina with you, <CHARNAME>?~
  IF ~~ THEN REPLY ~She can travel with me, barkeep, but I cannot guarantee that my road will be any safer for her if she remained here.~ GOTO NEJ90
  IF ~~ THEN REPLY ~Leina may travel with me but I will not be held responsible for her safety and only until a safe place for her can be found.~ GOTO NEJ90
  IF ~~ THEN REPLY ~I will take her with me, barkeep, just get this city off my back!~ GOTO NEJ90
END

IF ~~ THEN BEGIN NEJ86
  SAY ~I'll not say I'm not disappointed <CHARNAME>, I had hoped when I saw you next, I would see my Leina's happy, smiling face in your company. However, your words reassure me a little, for if she is with old man Vulova, I can rest a little easier knowing that, although she may not be happy wherever she is... she is at least safe.~
  IF ~~ THEN GOTO NEJ87
END

IF ~~ THEN BEGIN NEJ87
  SAY ~Still, to kidnap your own child to force a marriage... what kind of a father does that I ask? He doesn't deserve a daughter as kindhearted and considerate as Leina... he doesn't deserve any kind of a daughter at all!~
  IF ~~ THEN GOTO NEJ88
END

IF ~~ THEN BEGIN NEJ88
  SAY ~I see that my faith in you is well placed... if anyone can find her, it is you <CHARNAME>. May the gods speed you in your search.~
  IF ~~ THEN DO ~SetGlobalTimer("VP_Sam_Misses_Leina","GLOBAL",TEN_DAYS)~ EXIT
END

//////////////////////////////////////
//                                  //
// New & Corrected States for v4.2b //
//                                  //
//////////////////////////////////////

IF WEIGHT #-12 ~Global("VP_ResqueLeina","GLOBAL",10)
Global("VP_MyQuest_Is_Over","LOCALS",1)~ THEN BEGIN NEJ89
  SAY ~Are you here to tell me that you have changed your mind about taking Leina with you, <CHARNAME>?~
  IF ~~ THEN REPLY ~She can travel with me, barkeep, but I cannot guarantee that my road will be any safer for her if she remained here.~ GOTO NEJ90
  IF ~~ THEN REPLY ~Leina may travel with me but I will not be held responsible for her safety and only until a safe place for her can be found.~ GOTO NEJ90
  IF ~~ THEN REPLY ~I will take her with me, barkeep, just get this city off my back!~ GOTO NEJ90
END

IF ~~ THEN BEGIN NEJ90
  SAY ~I will get to sorting this mess straight away. In the meantime you take good care of my Leina <CHARNAME>.~
  IF ~Global("VP_ResqueLeina","GLOBAL",10)~ THEN EXTERN ~LEINA~ 17
  IF ~OR(2)
Global("VP_ResqueLeina","GLOBAL",17)
Global("VP_DuvainesAttack","GLOBAL",1)~ THEN EXTERN ~LEINAP~ 27
  IF ~InParty("Leina")~ THEN GOTO NEJ83
END

IF ~~ THEN BEGIN NEJ91
  SAY ~If I hear of any pain or grief brought to her on your account, you will answer to Samuel Thunderburp. Fare thee well.~
  IF ~~ THEN DO ~SetGlobalTimer("VP_Sam_Helps_Timer","GLOBAL",ONE_DAY)
SetGlobal("VP_Samuel_Helps","GLOBAL",1)
SetGlobalTimer("VP_Sam_Misses_Leina","GLOBAL",TEN_DAYS)
ActionOverride("Leina",JoinParty())
EscapeAreaMove("AR1002",516,638,8)~ EXIT
END

IF WEIGHT #-13 ~Global("VP_Met_FFBarkeep","GLOBAL",1)
Global("VP_ResqueLeina","GLOBAL",17)~ THEN BEGIN NEJ92
  SAY ~You have returned my Leina to me, <CHARNAME>, and she has told me the whole sordid tale. It is a mess for sure that you have got yourself into.~
  IF ~~ THEN DO ~SetGlobal("VP_LeinaReturns","GLOBAL",1)~ GOTO NEJ93
END

IF ~~ THEN BEGIN NEJ93
  SAY ~I do know of just the person to sort it out. It will cost me but I cannot put a price on my Leina's well being. One thing I insist on, if I sort this mess you must take Leina with you when you leave the city and leave you must.~
  IF ~~ THEN GOTO NEJ94
END

IF ~~ THEN BEGIN NEJ94
  SAY ~It will take a week at least for things to settle here and it would go much smoother if neither of you were here.~
  IF ~~ THEN GOTO NEJ95
END

IF ~~ THEN BEGIN NEJ95
  SAY ~If you refuse my offer it will be a very long time before you will be able to walk Athkatla safely again. Do we have an agreement, <CHARNAME>?~
  IF ~~ THEN REPLY ~She can travel with me, barkeep, but I cannot guarantee that my road will be any safer for her if she remained here.~ GOTO NEJ90
  IF ~~ THEN REPLY ~Leina may travel with me but I will not be held responsible for her safety and only until a safe place for her can be found.~ GOTO NEJ90
  IF ~~ THEN REPLY ~I will take her with me, barkeep, just get this city off my back!~ GOTO NEJ90
  IF ~~ THEN REPLY ~I have no need for a minstrel, barkeep, I will have to take my chances in the city.~ GOTO NEJ96
END

IF ~~ THEN BEGIN NEJ96
  SAY ~Then I bid you fare thee well, <CHARNAME>, and wish you all the luck in the world because you are surely going to need it now.~
  IF ~~ THEN GOTO NEJ97
END

IF ~~ THEN BEGIN NEJ97
  SAY ~If you decide you need my help after all do not leave it any longer than a day. After that time it will be too late for me do anything for you.~
  IF ~~ THEN DO ~SetGlobalTimer("VP_Sam_Misses_Leina","GLOBAL",TEN_DAYS)~ EXIT
END //If PC has a change of heart and returns then => Scenario: The Five Flagons 5

IF ~~ THEN BEGIN NEJ98
  SAY ~Steady up there lass... it is a mess for sure but none of this is your doing, so don't you go blaming yourself now. I know of just the person to sort it out. It will cost me but I cannot put a price on my Leina's well being.~
  IF ~~ THEN GOTO NEJ99
END

IF ~~ THEN BEGIN NEJ99
  SAY ~It will take a week at least for things to settle, and it would go much smoother if neither of you were here, I'm sorry lass but I think you will be much safer if you leave the city with <CHARNAME> for a while.~
  IF ~~ THEN EXTERN ~LEINAJ~ 68
END

IF ~~ THEN BEGIN NEJ100
  SAY ~Now don't you go fretting lass, Samuel here has taken care of a lot worse than a few irate nobles. I will miss you lass, that's for sure and so will my patrons, but I know you will be safe in the company of <CHARNAME>.~
  IF ~~ THEN GOTO NEJ101
END

IF ~~ THEN BEGIN NEJ101
  SAY ~You are a different woman to the lass who first stepped through my doors and I know you will make good. Follow and listen well to what your heart says, it will not always let you down, no matter what you believe.~
  IF ~~ THEN GOTO NEJ102
END

IF ~~ THEN BEGIN NEJ102
  SAY ~Remember, I will always be here if ever you feel the need to return, you will ever be my Leina. You have many years ahead of you, be happy. Fare thee well and good luck to you my child, my Leina.~
  IF ~~ THEN EXTERN ~LEINAJ~ 69
END

IF ~~ THEN BEGIN NEJ103
  SAY ~Here <CHARNAME>, here is the gold you were promised. You take care of my Leina now. If I ever hear that you have in anyway brought pain or grief to her, you will answer to me and you will sorely regret the day you walked into The Five Flagons.~
  IF ~~ THEN REPLY ~You have no cause to worry Samuel. Leina will be safe and well protected in my company.~ GOTO NEJ104
  IF ~~ THEN REPLY ~You worry for nothing barkeep. It was Leina's decision to join with me and I would not have taken her if she were not able to look after herself.~ GOTO NEJ104
  IF ~~ THEN REPLY ~I admit my road is unknown and hostile, but this I have made clear to Leina. She is fully aware of what may lie ahead but she still prefers to join with me rather than live in a place where memories will continue to haunt her nights.~ GOTO NEJ104
END

IF ~~ THEN BEGIN NEJ104
  SAY ~Then I bid you fare thee well <CHARNAME> but mark you well what my final words were to you.~
  IF ~~ THEN DO ~SetGlobalTimer("VP_Sam_Helps_Timer","GLOBAL",ONE_DAY)
SetGlobal("VP_Samuel_Helps","GLOBAL",1)
SetGlobalTimer("VP_Sam_Misses_Leina","GLOBAL",TEN_DAYS)
EscapeArea()~ EXIT
END

IF WEIGHT #-14 ~Global("VP_LeinaThanks2","GLOBAL",2)
Global("VP_AuberonBribesMe","GLOBAL",1)
Global("VP_Samuel_Helps","GLOBAL",0)
!InParty("Leina")~ THEN BEGIN NEJ105
  SAY ~So <CHARNAME>, I wonder you have the nerve to show your face in my inn again! You come back and tell me a pack of lies... tell me my Leina is content to marry Duvaine and all the time you'd  betrayed the trust I put in you.~
  IF ~~ THEN GOTO NEJ106
END

IF ~~ THEN BEGIN NEJ106
  SAY ~You hand her over to Duvaine as though she were nothing more than a commodity to sell in order to line your own pocket with gold! I ask that you leave my inn... neither you nor your group are no longer welcome here.~
  IF ~~ THEN REPLY ~She's free now isn't she? I never intended to leave her in Duvaine's hands any longer than it took for me to turn a profit myself in this deal.~ GOTO NEJ107
  IF ~~ THEN REPLY ~No need for the scathing words barkeep... the bard seems to have found her way back to you and looking none the worse for her adventure.~ GOTO NEJ107
  IF ~~ THEN REPLY ~It was her father's wishes that she be married to Duvaine... who am I to argue when a father believes he has his daughter's best interests at heart?~ GOTO NEJ112
  IF ~~ THEN REPLY ~I apologise to you and to the lady herself Samuel... I should never have let my pressing need for gold sway my doing the right thing by her.~ GOTO NEJ116
END

IF ~~ THEN BEGIN NEJ107
  SAY ~Yes I am grateful for her safe return but the manner in which you procured her release was reprehensible to say the least!~
  IF ~~ THEN GOTO NEJ108
END

IF ~~ THEN BEGIN NEJ108
  SAY ~I am certain your only thought was to net yourself a fine profit at my Leina's expense... here, if gold is of so much importance to you, take the reward I promised and don't show yourself in my inn again.~
  IF ~~ THEN DO ~SetGlobal("VP_Samuel_Breaks","GLOBAL",1)
SetGlobalTimer("VP_Sam_Misses_Leina","GLOBAL",TEN_DAYS)
GiveGoldForce(1000)~ EXIT
END

IF WEIGHT #-15 ~Global("VP_Samuel_Breaks","GLOBAL",1)
!InParty("Leina")~ THEN BEGIN NEJ109
  SAY ~Get out of my inn!~
  IF ~~ THEN DO ~SetGlobal("VP_Samuel_Breaks","GLOBAL",2)~ EXIT
END

IF WEIGHT #-16 ~Global("VP_Samuel_Breaks","GLOBAL",2)
!InParty("Leina")~ THEN BEGIN NEJ110
  SAY ~I told you to get out of my inn unless I call for guards!~
  IF ~~ THEN DO ~SetGlobal("VP_Samuel_Breaks","GLOBAL",3)~ EXIT
END

IF WEIGHT #-17 ~Global("VP_Samuel_Breaks","GLOBAL",3)
!InParty("Leina")~ THEN BEGIN NEJ111
  SAY ~Guards!~
  IF ~~ THEN DO ~SetGlobal("VP_Samuel_Breaks","GLOBAL",4)
CreateCreatureObjectOffScreen("VPGuard",Player1,0,0,0)
CreateCreatureObjectOffScreen("VPGuard",Player1,0,0,0)
CreateCreatureObjectOffScreen("VPGuard",Player1,0,0,0)
CreateCreatureObjectOffScreen("VPGuard",Player1,0,0,0)
CreateCreatureObjectOffScreen("VPGuard",Player1,0,0,0)
CreateCreatureObjectOffScreen("VPGuard",Player1,0,0,0)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN NEJ112
  SAY ~From what Leina has told me only an imbecile would have failed to see how deranged and obsessive her father had become.~
  IF ~~ THEN GOTO NEJ113
END

IF ~~ THEN BEGIN NEJ113
  SAY ~You are an intelligent person <CHARNAME> and as such, that pathetic excuse for reprehensible behaviour is as false as are your motives!~
  IF ~~ THEN GOTO NEJ114
END

IF ~~ THEN BEGIN NEJ114
  SAY ~Here, if gold is of so much importance to you, take the reward I promised and don't show yourself in my inn again.~
  IF ~~ THEN DO ~SetGlobal("VP_Samuel_Breaks","GLOBAL",1)
SetGlobalTimer("VP_Sam_Misses_Leina","GLOBAL",TEN_DAYS)
GiveGoldForce(1000)~ EXIT
END

IF WEIGHT #-18 ~Global("VP_LeinaThanks2","GLOBAL",2)
Global("VP_AuberonBribesMe","GLOBAL",1)
Global("VP_Samuel_Helps","GLOBAL",0)
InParty("Leina")~ THEN BEGIN NEJ115
  SAY ~Praise be! You have a change of heart and take Leina with you, <CHARNAME>?~
  IF ~~ THEN REPLY ~She can travel with me, barkeep, but I cannot guarantee that my road will be any safer for her if she remained here.~ GOTO NEJ90
  IF ~~ THEN REPLY ~Leina may travel with me but I will not be held responsible for her safety and only until a safe place for her can be found.~ GOTO NEJ90
  IF ~~ THEN REPLY ~I will take her with me, barkeep, just get this city off my back!~ GOTO NEJ90
END

IF ~~ THEN BEGIN NEJ116
  SAY ~I doubt there is any remorse whatsoever in your words... neither the lady nor myself are interested in your apologies!~
  IF ~~ THEN GOTO NEJ117
END

IF ~~ THEN BEGIN NEJ117
  SAY ~No honourable person would have treated my Leina in the way that you have... no... your behaviour is as reprehensible as I suspect are your motives... here, if gold is of so much importance to you, take the reward I promised and don't show yourself in my inn again.~
  IF ~~ THEN DO ~SetGlobal("VP_Samuel_Breaks","GLOBAL",1)
SetGlobalTimer("VP_Sam_Misses_Leina","GLOBAL",TEN_DAYS)
GiveGoldForce(1000)~ EXIT
END

IF WEIGHT #-19 ~Global("VP_LeinaReturns","GLOBAL",0)
Global("VP_LeinaThanks","GLOBAL",2)
Global("VP_DuvainesAttack","GLOBAL",1)~ THEN BEGIN NEJ118
  SAY ~Well, you have stirred up a hornets nest <CHARNAME>. It's nothing more than you deserve.~
  IF ~~ THEN DO ~SetGlobal("VP_LeinaReturns","GLOBAL",1)~ GOTO NEJ119
END

IF ~~ THEN BEGIN NEJ119
  SAY ~You come back and tell me a pack of lies... tell me my Leina is content to marry Duvaine and all the time you'd betrayed the trust I put in you. You hand her over to Duvaine as though she were nothing more than a commodity to sell in order to line your own pocket with gold!~
  IF ~~ THEN REPLY ~She's free now isn't she? I never intended to leave her in Duvaine's hands any longer than it took for me to turn a profit myself in this deal.~ GOTO NEJ120
  IF ~~ THEN REPLY ~No need for the scathing words barkeep... the bard seems to have found her way back to you and looking none the worse for her adventure.~ GOTO NEJ120
  IF ~~ THEN REPLY ~It was her father's wishes that she be married to Duvaine... who am I to argue when a father believes he has his daughter's best interests at heart?~ GOTO NEJ112
  IF ~~ THEN REPLY ~I apologise to you and to the lady herself Samuel... I should never have let my pressing need for gold sway my doing the right thing by her.~ GOTO NEJ116
END

IF ~~ THEN BEGIN NEJ120
  SAY ~Yes, she's safe enough for now. However, your actions have riled the city, not only against yourself, but the lass herself and through no fault of her own. If she remains here, the blame will be laid at her door as surely as my name is Samuel Thunderburp.~
  IF ~~ THEN REPLY ~Leina is welcome to join with me Samuel, I assure she will be safe with me... it's the least I can do to make up for the trouble I have brought upon her.~ GOTO NEJ121
  IF ~~ THEN REPLY ~That's hardly my fault, you asked me to find and make sure the girl was returned safely to you. Did you really think her captor was going to give her up without a fight?~ GOTO NEJ130
  IF ~~ THEN REPLY ~If I'd left Duvaine alive, how long do you think it would be before he started pestering your girl again? Seems to me, I've done you both a favour.~ GOTO NEJ130
  IF ~~ THEN REPLY ~Look Samuel, Duvaine as good as said he wasn't ready just yet to give up his idea of taking Leina for his wife. How many refusals do you think it would take before he made a similar move to that of her father?~ GOTO NEJ130
END

IF ~~ THEN BEGIN NEJ121
  SAY ~Then I think we can come to some arrangement here <CHARNAME>. My only concern is for Leina's safety and if that means saving your butt as well then so be it.~
  IF ~~ THEN GOTO NEJ122
END

IF ~~ THEN BEGIN NEJ122
  SAY ~I know of just the person to sort this mess... it will cost me but I cannot put a price on my Leina's well being. It will take a week at least for things to settle, and it would go much smoother if neither of you were here...~
  IF ~~ THEN GOTO NEJ123
END

IF ~~ THEN BEGIN NEJ123
  SAY ~(*Turning to Leina*) I'm sorry lass but I think you will be much safer if you leave the city with <CHARNAME> for a while.~
  IF ~~ THEN EXTERN ~LEINAP~ 28
END

IF ~~ THEN BEGIN NEJ124
  SAY ~Leina, lass, please harken to my words... if there were another way to keep you safe, I would not have let such a notion enter my mind for a second.~
  IF ~~ THEN GOTO NEJ125
END

IF ~~ THEN BEGIN NEJ125
  SAY ~It brings me no pleasure to think of you travelling in the company of one who sees only their own self worth, but you have grown into a very capable young woman, well able to look out for herself... not at all like the lass who first stepped through my door.~
  IF ~~ THEN GOTO NEJ126
END

IF ~~ THEN BEGIN NEJ126
  SAY ~At least this way, I will not lie awake in my bed fretting over your welfare, which I would most certainly do if you were on the road alone.~
  IF ~~ THEN EXTERN ~LEINAP~ 30
END

IF ~~ THEN BEGIN NEJ127
  SAY ~Please lass... I am not forcing you to do anything you don't want to. What I'm saying is this is the best option we have. All I am suggesting is please, leave the city with <CHARNAME> until I have sorted this mess and then if you choose, you can return any time you wish.~
  IF ~~ THEN GOTO NEJ128
END

IF ~~ THEN BEGIN NEJ128
  SAY ~You know that the Five Flagons will always be your home and your room will always be waiting for you...~
  IF ~~ THEN GOTO NEJ129
END

IF ~~ THEN BEGIN NEJ129
  SAY ~(*Then turning to you before Leina can reply*) What do you say <CHARNAME>, do we have a deal? I'll sort your mess in exchange for Leina's safe passage out Athkatla for a while.~
  IF ~~ THEN REPLY ~She can travel with me, barkeep, but I cannot guarantee that my road will be any safer for her if she remained here.~ GOTO NEJ90
  IF ~~ THEN REPLY ~Leina may travel with me but I will not be held responsible for her safety and only until a safe place for her can be found.~ GOTO NEJ90
  IF ~~ THEN REPLY ~I will take her with me, barkeep, just get this city off my back!~ GOTO NEJ90
  IF ~~ THEN REPLY ~I have no need for a minstrel, barkeep, I will have to take my chances in the city.~ GOTO NEJ96
END

IF ~~ THEN BEGIN NEJ130
  SAY ~Whatever <CHARNAME>... what is done is done. My concern as of now is for the lass's safety, unfortunately that entails helping save your miserable butt as well.~
  IF ~~ THEN GOTO NEJ122
END

IF WEIGHT #0 ~Global("VP_Met_FFBarkeep","GLOBAL",1)
!InParty("Leina")
Global("VP_Samuel_Worries","GLOBAL",0)
Global("VP_Samuel_Breaks","GLOBAL",0)~ THEN BEGIN NEJ131
  SAY ~(*His eyes anxiously search amongst your ranks*) Leina... I don't see her with you? Please, tell me that she is well and that you haven't come to my inn bearing the worst of news?~
  IF ~~ THEN REPLY ~Calm yourself Samuel, Leina is well. I had to let her go because her skills were no longer required by the group.~ GOTO NEJ132
  IF ~~ THEN REPLY ~She left on her own accord barkeep, she just threw a tantrum and said she could no longer work with me.~ GOTO NEJ132
  IF ~~ THEN REPLY ~I am sorry to be the bearer of sad news Samuel... Leina is dead. She died fighting bravely side by side with us, you can be been proud of her.~ GOTO NEJ137
  IF ~~ THEN REPLY ~I am so sorry Samuel... Leina is dead.~ GOTO NEJ137
  IF ~~ THEN REPLY ~Your Leina is dead barkeep, and all because you insisted that I take her with me.~ GOTO NEJ137
END

IF ~~ THEN BEGIN NEJ132
  SAY ~(*A look of relief crosses his face*). Praise the gods! When I didn't see her smiling face amongst your numbers, my heart sank and I feared that she was lost to me forever. Tell me <CHARNAME>, did she say what her plans were before she left your company... is she coming home... to Athkatla?~
  IF ~~ THEN REPLY ~No, I am sorry, she didn't say anything to me. I assure you though, her time with us has made her a woman well able to look after herself. She will be fine Samuel.~ GOTO NEJ133
  IF ~~ THEN REPLY ~No, she said nothing to me.~ GOTO NEJ143
  IF ~~ THEN REPLY ~No and I didn't ask her either. Temperamental, ungrateful minstrel... after all I did to secure her freedom!~ GOTO NEJ146   	
END

IF ~~ THEN BEGIN NEJ133
  SAY ~I hope you are right <CHARNAME>. I love that lass as though she were of my own blood and the thought of her having to make her way alone yet again, is very discomforting. Regardless of how capable a woman you say she has grown into, she is still a lass alone in the world.~
  IF ~~ THEN GOTO NEJ134
END

IF ~~ THEN BEGIN NEJ134
  SAY ~Pray that her own good sense will bring her safely back here... back into the care of those who love her. Still, I thank you for doing me the courtesy and bringing me news of her.~
  IF ~~ THEN GOTO NEJ135
END

IF ~~ THEN BEGIN NEJ135
  SAY ~Now, is there some service that The Five Flagons can offer you... a drink maybe to wash the dust of the road from your throats?~ 	
  IF ~~ THEN REPLY ~Thank you... a drink will be most welcome.~ DO ~SetGlobal("VP_Samuel_Worries","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY ~No thank you Samuel, I have to be on my way, another time maybe.~ GOTO NEJ136
END

IF ~~ THEN BEGIN NEJ136
  SAY ~As you wish. The Five Flagons is always open should you change your mind.~
  IF ~~ THEN DO ~SetGlobal("VP_Samuel_Worries","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN NEJ137
  SAY ~(*A look of disbelief comes to his eyes*) Dead... my Leina is dead? No... she can't be... please tell me that this is a jest on your part <CHARNAME>, set up to give old Samuel a fright and that she is going to walk in laughing and smiling with a hug for her old friend? Please, she can't be gone... not my Leina... she can't be?~
  IF ~!Dead("Hrothgar")~ THEN REPLY ~I am not in the habit of playing such cruel jests Samuel. I am sorry, Leina is dead. Please, accept the condolences of us all.~ EXTERN ~HROTHJ~ 382
  IF ~Dead("Hrothgar")~ THEN REPLY ~I am not in the habit of playing such cruel jests Samuel. I am sorry, Leina is dead. Please, accept the condolences of us all.~ GOTO NEJ138
  IF ~Dead("Hrothgar")~ THEN REPLY ~I wish with all my heart that it was a jest my friend... Leina is sadly missed by us all and so we come here today to join with you in mourning your loss. You have lost a girl you called daughter and we have lost a trusted friend.~ GOTO NEJ138
  IF ~Dead("Hrothgar")~ THEN REPLY ~My road has always been fraught with risks and danger Samuel, but Leina knew this when she joined with me on that road. She was an exceptional girl was your Leina and we join you in mourning your loss.~ GOTO NEJ138
  IF ~Dead("Hrothgar")~ THEN REPLY ~You could have saved yourself this anguish barkeep. Your Leina was a tavern singer, not a warrior... you should not have encouraged her to leave with my group.~ GOTO NEJ140
END

IF ~~ THEN BEGIN NEJ138
  SAY ~(*He tries to blink back the tears as they begin to well in his eyes*) Then it is true... her smile, the sound of her laughter and her songs... they are all gone forever. This is a sad day for the Five Flagons and Samuel Thunderburp's heart is heavy with grief and pain for his Leina... the light has passed forever from his life.~
  IF ~~ THEN GOTO NEJ139
END

IF ~~ THEN BEGIN NEJ139
  SAY ~Please, I ask that you leave me now <CHARNAME> for I shall close The Five Flagons so's I can mourn my Leina and pay my respects to her passing as is fitting. There will be no business conducted in The Five Flagons until a full day has come and gone.~
  IF ~~ THEN DO ~SetGlobal("VP_Samuel_Worries","GLOBAL",2)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN NEJ140
  SAY ~(*He tries to blink back the tears as they begin to well in his eyes*) Then it is true... her smile, the sound of her laughter and her songs... they are all gone forever. This is a sad day for the Five Flagons and Samuel Thunderburp's heart is heavy with grief and pain for his Leina... the light has passed forever from his life.~
  IF ~~ THEN GOTO NEJ141
END

IF ~~ THEN BEGIN NEJ141
  SAY ~It is too late to apportion blame, no amount of it only will bring my Leina back... the light has passed forever from my life.~
  IF ~~ THEN GOTO NEJ142
END

IF ~~ THEN BEGIN NEJ142
  SAY ~Please, I ask that you leave me now <CHARNAME> for I shall close The Five Flagons so's I can mourn my Leina and pay my respects to her passing as is fitting. There will be no business conducted in The Five Flagons until a full day has come and gone.~
  IF ~~ THEN DO ~SetGlobal("VP_Samuel_Worries","GLOBAL",2)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN NEJ143
  SAY ~I know that she is a sensible enough lass, but Leina is as dear to me as if she were of my own blood and the thought of her being alone on the road yet again, is very discomforting <CHARNAME>.~
  IF ~~ THEN GOTO NEJ144
END

IF ~~ THEN BEGIN NEJ144
  SAY ~Still, I thank you for bringing me news of her, as discomforting as it is. All I can do now is trust that she knows her own mind and pray that her own good sense will bring her safely back here... back into the care of those who love her.~
  IF ~~ THEN GOTO NEJ145
END

IF ~~ THEN BEGIN NEJ145
  SAY ~Now, is there some service that The Five Flagons can offer you... a drink maybe to wash the dust of the road from your throats?~
  IF ~~ THEN REPLY ~Thank you... a drink will be most welcome.~ DO ~SetGlobal("VP_Samuel_Worries","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY ~No thank you Samuel, I have to be on my way, another time maybe.~ GOTO NEJ136
END

IF ~~ THEN BEGIN NEJ146
  SAY ~My Leina was never temperamental, and as for being ungrateful... I pride myself in knowing the lass well enough to know that she would lay her life on the line for any who had risked their own in aiding her! So, if you found her temperamental then the fault lies in you... not her!~
  IF ~~ THEN REPLY ~Believe what you will barkeep, your good opinion of me is of no concern to me.~ GOTO NEJ147
  IF ~~ THEN REPLY ~Or maybe she just didn't have the stomach to cope with the things that a life on the road forces a person to deal with in order to survive.~ GOTO NEJ147
  IF ~~ THEN REPLY ~Could be you didn't know *your* Leina as well as you thought Barkeep. You've seen yourself how she could captivate an audience with that elven charm of hers... could be she has played you too.~ GOTO NEJ152
  IF ~~ THEN REPLY ~It hadn't escaped my notice what a pretty little thing she is... could be it wasn't your eyes that you were looking at her with barkeep.~ GOTO NEJ152
END

IF ~~ THEN BEGIN NEJ147
  SAY ~I can see that mine was the mistake in believing that Leina would have a better chance of a decent life by leaving the city with you <CHARNAME>.~
  IF ~~ THEN GOTO NEJ148
END

IF ~~ THEN BEGIN NEJ148
  SAY ~I am relieved to see that her own good sense prevailed and her gratitude to you didn't compromise her own principles... even if it does mean that she is once again on the road alone. I am proud of the lass and of her courage.~
  IF ~~ THEN GOTO NEJ149
END

IF ~~ THEN BEGIN NEJ149
  SAY ~I pray her same good sense sees her safely back here soon... back into the care of those who love her. Now, unless you intend to make use of the services we have to offer here at The Five Flagons, I suggest you be on your way.~
  IF ~~ THEN REPLY ~Show me what you have to tempt me with barkeep.~ GOTO NEJ150
  IF ~~ THEN REPLY ~A barkeep with attitude, I am surprised you have any customers at all. I will take my gold to a more civilised establishment. Farewell.~ GOTO NEJ151
  IF ~~ THEN REPLY ~Then I bid you farewell barkeep.~ GOTO NEJ151
END

IF ~~ THEN BEGIN NEJ150
  SAY ~As you wish.~
  IF ~~ THEN DO ~SetGlobal("VP_Samuel_Worries","GLOBAL",1)
StartStore("ffbart",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN NEJ151
  SAY ~As you wish, farewell <CHARNAME>.~
  IF ~~ THEN DO ~SetGlobal("VP_Samuel_Worries","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN NEJ152
  SAY ~(*His knuckles turn white as he clenches his hands hard into fists*)... I'll have none of your obscenities in my inn <CHARNAME>! Leina is like a daughter to me, she may not be of my blood but I still hold her in my heart as I would a child of my own, and  I'll not tolerate your filthy mind nor that mouth of yours insinuating otherwise!~
  IF ~~ THEN GOTO NEJ153
END

IF ~~ THEN BEGIN NEJ153
  SAY ~In truth... my concern at not seeing her among you has turned to relief, relief that she saw fit to end her association with you. Whereas it is discomforting to know that she is once again on the road alone, that in my eyes, is preferable to the alternative... being in your company!~
  IF ~~ THEN GOTO NEJ154
END

IF ~~ THEN BEGIN NEJ154
  SAY ~Now, I suggest you leave my inn before I lose what little restraint I still have!~
  IF ~~ THEN REPLY ~What... my gold no longer good enough for you barkeep?~ GOTO NEJ155
  IF ~~ THEN REPLY ~Surely, the least you can do is to offer me a drink, after I have taken time out to come and bring you news of *your* Leina?~ GOTO NEJ155
  IF ~~ THEN REPLY ~I have no quarrel with you barkeep, so I will bid you farewell.~ GOTO NEJ155
END

IF ~~ THEN BEGIN NEJ155
  SAY ~Good bye <CHARNAME>!~
  IF ~~ THEN DO ~SetGlobal("VP_Samuel_Worries","GLOBAL",2)
SetGlobal("VP_Samuel_Breaks","GLOBAL",1)~ EXIT
END

IF WEIGHT #1 ~Global("VP_Leina_Samuel","GLOBAL",7)~ THEN BEGIN NEJ156
  SAY ~(*The old barkeeps eyes light up when he sees Leina*) Leina lass, you're certainly a welcome sight for sore eyes. You got a hug for old Samuel here?~
  IF ~~ THEN DO ~SetGlobal("VP_Leina_Samuel","GLOBAL",8)~ EXTERN ~LEINAJ~ 71
END

IF ~~ THEN BEGIN NEJ157
  SAY ~Tell me girl, has <CHARNAME> here been looking after you good and not running you ragged? 'Cause you just tell me if <PRO_HESHE> has, no one takes advantage of my Leina.~
  IF ~~ THEN EXTERN ~LEINAJ~ 72
END

IF ~~ THEN BEGIN NEJ158
  SAY ~Aye, that is true enough lass. I only have to look at the colour in your cheeks to see that your chosen road agrees with you. It warms my heart to se you happy Leina... no one deserves to be happy more than you.~
  IF ~~ THEN GOTO NEJ159
END

IF ~~ THEN BEGIN NEJ159
  SAY ~(*Then turning to you*)... You have built up quite a reputation since leaving Athkatla <CHARNAME>, but Samuel Thunderburp is not one to go listening to gossip. The sight of my Leina so happy tells me all I need to know of you. I thank you for taking such good care of her.~
  IF ~OR(2)
!InParty("Minsc")
Dead("Minsc")~ THEN REPLY ~There is no way I would allow anything to happen to Leina Samuel, she has become very dear to me and a great asset to the group.~ GOTO NEJ160
  IF ~OR(2)
!InParty("Minsc")
Dead("Minsc")~ THEN REPLY ~Leina has made her own place not only in the group but also in my heart. She has brought joy and laughter to us all on some of the bleakest of days.~ GOTO NEJ160
  IF ~OR(2)
!InParty("Minsc")
Dead("Minsc")~ THEN REPLY ~Leina has proven herself an invaluable ally and a stalwart companion to us all Samuel. There will always be a place for her in this group.~ GOTO NEJ160
  IF ~OR(2)
!InParty("Minsc")
Dead("Minsc")~ THEN REPLY ~I admit I had my doubts as to the usefulness of a bard Samuel, but Leina has lifted our spirits many times on and off the battlefield. She has earned her place in the group as well as any warrior or wizard.~ GOTO NEJ160
  IF ~OR(2)
!InParty("Minsc")
Dead("Minsc")~ THEN REPLY ~Believe me barkeep, if the bard hadn't proved to be of any use to me I would have left her the first time she fell, regardless of where that might have been.~ GOTO NEJ170
  IF ~InParty("Minsc")
!Dead("Minsc")~ THEN REPLY ~There is no way I would allow anything to happen to Leina Samuel, she has become very dear to me and a great asset to the group.~ EXTERN ~MINSCJ~ NEJ338
  IF ~InParty("Minsc")
!Dead("Minsc")~ THEN REPLY ~Leina has made her own place not only in the group but also in my heart. She has brought joy and laughter to us all on some of the bleakest of days.~ EXTERN ~MINSCJ~ NEJ338
  IF ~InParty("Minsc")
!Dead("Minsc")~ THEN REPLY ~Leina has proven herself an invaluable ally and a stalwart companion to us all Samuel. There will always be a place for her in this group.~ EXTERN ~MINSCJ~ NEJ338
  IF ~InParty("Minsc")
!Dead("Minsc")~ THEN REPLY ~I admit I had my doubts as to the usefulness of a bard Samuel, but Leina has lifted our spirits many times on and off the battlefield. She has earned her place in the group as well as any warrior or wizard.~ EXTERN ~MINSCJ~ NEJ338
END

IF ~~ THEN BEGIN NEJ160
  SAY ~(*His eyes take on a twinkle as he looks at you*)... So, my Leina has enchanted you as well has she <CHARNAME>?~
  IF ~~ THEN GOTO NEJ161
END

IF ~~ THEN BEGIN NEJ161
  SAY ~(*Then turning to Leina*) I can see that I have worried needlessly over your safety since your departure lass, you are in good company. It is good that you thought to come and put my mind at ease on your return, bless you for your thoughtfulness.~
  IF ~Global("SPRITE_IS_DEADVulova","GLOBAL",0)~ THEN EXTERN ~LEINAJ~ 73
  IF ~Global("SPRITE_IS_DEADVulova","GLOBAL",1)~ THEN EXTERN ~LEINAJ~ 76
END

IF ~~ THEN BEGIN NEJ162
  SAY ~(*Shaking his head*) I'll be truthful with you lass... Athkatla hasn't seen much of your father since your departure. Rumour has it that he was seen in the government district a few days ago, but now the house stands empty, shuttered and barred. I'm sorry, but that was the last anyone in the city has seen of him.~
  IF ~~ THEN EXTERN ~LEINAJ~ 74
END

IF ~~ THEN BEGIN NEJ163
  SAY ~Aye... grief can mess up a man's mind something awful, but I fear you may have returned only to find you have yet something else you must deal with lass.~
  IF ~~ THEN GOTO NEJ164
END

IF ~~ THEN BEGIN NEJ164
  SAY ~A man came by here not so long ago, handsome fella with the gift of the gab and a glib tongue. Said his name was Bjorn and he was looking for his wife... the bard Leina.~
  IF ~~ THEN EXTERN ~LEINAJ~ 78
END

IF ~~ THEN BEGIN NEJ165
  SAY ~No... just said he was passing through and he had heard that a bard by the name of Leina was making The Five Flagons in Athkatla the place to visit if one found themselves in the city of coin, and if this Leina was indeed his wife, he didn't want to appear rude by not dropping by... for old times sake he said.~
  IF ~~ THEN REPLY ~Old times sake... after all he has put you through Leina! Just give the word and I will go and *speak* to him on your behalf?~ EXTERN ~LEINAJ~ 80
  IF ~~ THEN REPLY ~Why the audacity of the man! Surely Leina, even you can see that it's the gold he thinks you've made that he is wanting to say hello to?~ EXTERN ~LEINAJ~ 80
  IF ~~ THEN REPLY ~If Bjorn is in the city Leina, then perhaps this is the chance for you to lay to rest those remaining ghosts of yours.~ EXTERN ~LEINAJ~ 88
  IF ~GlobalLT("chapter","GLOBAL",4)~ THEN REPLY ~If you intend sorting out your marital problems Leina then I suggest you do it quickly because I won't hang about waiting on you. I don't have the time to allow domestic disputes getting in my way to Irenicus.~ EXTERN ~LEINAJ~ 89
END

IF ~~ THEN BEGIN NEJ166
  SAY ~He is no longer in Athkatla lass. After I told him that you had left with friends and as far as I knew, you had no intentions of returning, he stomped out of here, but not before accusing me of all manner of nasty obscenities... making out that it was my fault that you left so hurriedly.~
  IF ~~ THEN GOTO NEJ167
END

IF ~~ THEN BEGIN NEJ167
  SAY ~I'll tell you lass, it was all I could do to stop myself filling that foul mouth of his with my own fist... you being as precious to me as any daughter of my own! You are well rid of the likes of him.~
  IF ~~ THEN EXTERN ~LEINAJ~ 84
END

IF ~~ THEN BEGIN NEJ168
  SAY ~(*He puts his arms around the girl for a brief second and then releases her*)... Now don't you go getting an old man tearful here. You have a long and full life ahead of you lass, so let's not be too hasty with our farewells.~
  IF ~~ THEN GOTO NEJ169
END

IF ~~ THEN BEGIN NEJ169
  SAY ~Samuel Thunderburp will always be here at The Five Flagons as will a place for you should you ever have need. Now if these obligations of <CHARNAME>'s are so important I suggest you set about sorting them... just you keep yourself safe and come visit again soon.~
	IF ~~ THEN DO ~SetGlobal("VP_Errant_Husband","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN NEJ170
  SAY ~(*He looks at you hard*)... I find your words disturbing <CHARNAME>, but I look at my Leina and she is happy. I see also that she is not perturbed by what you say.~
  IF ~~ THEN GOTO NEJ171
END

IF ~~ THEN BEGIN NEJ171
  SAY ~Since last I saw the lass, she has grown into a very confident young woman and I believe that is due to time spent in the company of you and your group. I trust her to know what she is doing.~
  IF ~~ THEN GOTO NEJ172
END

IF ~~ THEN BEGIN NEJ172
  SAY ~(*Then turning to Leina*) So, all my worrying since your departure has been for nothing lass, you are your own woman now. It is good that you thought to come and put my mind at ease on your return, bless you for your thoughtfulness.~
  IF ~Global("SPRITE_IS_DEADVulova","GLOBAL",0)~ THEN EXTERN ~LEINAJ~ 73
  IF ~Global("SPRITE_IS_DEADVulova","GLOBAL",1)~ THEN EXTERN ~LEINAJ~ 76
END

IF ~~ THEN BEGIN NEJ173
  SAY ~You be sure you do lass. Now, you take care and be on your guard for that no good husband of yours. All smiles and pleasantries he was when he walked in here... but a face like thunder he had when he heard you'd left the city. He's trouble is that one, you mark my words lass.~
  IF ~~ THEN EXTERN ~LEINAP~ 35
END

IF WEIGHT #-5 ~Global("VP_ResqueLeina","GLOBAL",8)~ THEN BEGIN NEJ174 // from:
  SAY ~I see that Leina is not with you. Have you no news of her at all for me? What of that n'er-do-well Duvaine, what did he have to say for himself?~
  IF ~OR(2)
Global("BodhiJob","GLOBAL",0)
GlobalLT("BodhiAppear","GLOBAL",2)~ THEN REPLY ~I am sorry Samuel. I have spoken to Duvaine, he says it was Leina's father's idea that they should marry, and he thought to keep her in Athkatla by marrying her to Duvaine. How much of what he said is true, I have no idea.~ GOTO NEJ175
  IF ~OR(2)
Global("BodhiJob","GLOBAL",0)
GlobalLT("BodhiAppear","GLOBAL",2)~ THEN REPLY ~Duvaine pleads ignorance over Leina's disappearance. He reckons the marriage was her father's idea and sent us on a wild goose chase halfway across the city to speak to Vulova. I have no idea where to look for this guy who could verify the whole story.~ GOTO NEJ175
  IF ~OR(2)
Global("BodhiJob","GLOBAL",0)
GlobalLT("BodhiAppear","GLOBAL",2)~ THEN REPLY ~Duvaine was of no help barkeep, except to say that maybe Leina's father is behind her sudden departure, he swears he had nothing to do with it. I would like to pay Vulova a call, but his estate is locked, and I cannot waste anymore of my time waiting for him to show up.~ GOTO NEJ179
  IF ~GlobalLT("BodhiJob","GLOBAL",2)
GlobalGT("BodhiAppear","GLOBAL",1)
Global("VP_Spawn_HoodedMan","GLOBAL",1)~ THEN REPLY ~Duvaine was of no help barkeep, except to say that maybe Leina's father is behind her sudden departure, he swears he had nothing to do with it. Vulova was not at home when I paid him a call and I cannot waste anymore of my time waiting for him to show up. You will have to continue the search yourself. Here, take Duvaine's letter, it is of no further use to me. Farewell.~ DO ~GiveItem("GovanLet",[PC])~ GOTO NEJ179
  IF ~GlobalLT("BodhiJob","GLOBAL",2)
GlobalGT("BodhiAppear","GLOBAL",1)
Global("VP_Spawn_HoodedMan","GLOBAL",1)~ THEN REPLY ~Duvaine pleads ignorance over Leina's disappearance. He reckons the marriage was her father's idea and sent us on a wild goose chase halfway across the city to speak to Vulova, only of course he wasn't home. All I got for my trouble was a cryptic story, told to me by a person of dubious character, and which meant absolutely nothing to me. To top it all, Duvaine himself had done a runner. I have wasted enough time on this chase! I return only to say that my involvement in this matter is done. Farewell.~ GOTO NEJ179
  IF ~GlobalLT("BodhiJob","GLOBAL",2)
GlobalGT("BodhiAppear","GLOBAL",1)
Global("VP_Spawn_HoodedMan","GLOBAL",1)~ THEN REPLY ~I am sorry Samuel. I have spoken to Duvaine, he insists it was Leina's father's idea that they should marry, he thought to keep her in Athkatla by marrying her to Duvaine. I tried to verify his story by going to the Vulova estate but there was no sign of Leina nor of her father. Instead, I was accosted by a shady character with some cryptic story that I couldn't make sense of. I am sorry but I really cannot see what else I can do at this time. If I learn any more on my travels, I'll be sure and get back to you, until then, I bid you farewell Samuel.~ GOTO NEJ175
  IF ~GlobalLT("BodhiJob","GLOBAL",2)
GlobalGT("BodhiAppear","GLOBAL",1)
Global("VP_Spawn_HoodedMan","GLOBAL",1)~ THEN REPLY ~I learnt from Duvaine that Leina's father could well be behind her disappearance... the marriage being his idea to keep Leina close to home. I took a trip across the city only to discover the estate locked tight, but my visit wasn't altogether fruitless. My only clue is a little obscure to say the least, but trust me Samuel, I am not about to give up so easily... I am confident that I will find her for you.~ GOTO NEJ175
  IF ~GlobalGT("BodhiJob","GLOBAL",1)~ THEN REPLY ~I am sorry Samuel. I have spoken to Duvaine, he says it was Leina's father's idea that they should marry, and he thought to keep her in Athkatla by marrying her to Duvaine. How much of what he said is true, I have no idea.~ GOTO NEJ175
  IF ~GlobalGT("BodhiJob","GLOBAL",1)~ THEN REPLY ~Duvaine pleads ignorance over Leina's disappearance. He reckons the marriage was her father's idea and sent us on a wild goose chase halfway across the city to speak to Vulova.~ GOTO NEJ175
  IF ~GlobalGT("BodhiJob","GLOBAL",1)~ THEN REPLY ~Duvaine was of no help barkeep, except to say that maybe Leina's father is behind her sudden departure, he swears he had nothing to do with it. I'm going to pay Vulova a call.~ GOTO NEJ175
END

IF ~~ THEN BEGIN NEJ175
  SAY ~I'll not say I'm not disappointed <CHARNAME>, I had hoped when I saw you next, I would see my Leina's happy, smiling face in your company.~
  IF ~~ THEN GOTO NEJ176
END

IF ~~ THEN BEGIN NEJ176
  SAY ~However, your words reassure me a little, for if she is with old man Vulova, I can rest a little easier knowing that, although she may not be happy wherever she is... she is at least safe.~
  IF ~~ THEN GOTO NEJ177
END

IF ~~ THEN BEGIN NEJ177
  SAY ~Still, to kidnap your own child to force a marriage... what kind of a father does that I ask? He doesn't deserve a daughter as kindhearted and considerate as Leina... he doesn't deserve any kind of a daughter at all!~
  IF ~~ THEN GOTO NEJ178
END

IF ~~ THEN BEGIN NEJ178
  SAY ~I see that my faith in you is well placed... if anyone can find her, it is you <CHARNAME>. May the gods speed you in your search.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NEJ179
  SAY ~I see my trust in you <CHARNAME> was misplaced, I did not think you to be a person who would admit defeat so easily. However, I thank you for at least returning to tell me. All I can do now is to put the word out for all to keep an ear to the ground for news of my Leina and hope the reward is enough to loosen someone's tongue.~
  IF ~~ THEN GOTO NEJ180
END

IF ~~ THEN BEGIN NEJ180
  SAY ~I hope and pray that she is safe and well. Thank you again and fare thee well.~
  IF ~~ THEN DO ~SetGlobal("VP_ResqueLeina","GLOBAL",9)~ EXIT
END
END