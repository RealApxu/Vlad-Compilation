BEGIN GOVAN

CHAIN
IF ~NumTimesTalkedTo(0)~ THEN GOVAN 0
~(*hic*) Who are you, and by what right do you interrupt a man enjoying quiet ale or two with his friends?~
END
 ++ ~Govan Duvaine? You are Govan Duvaine, are you not?~ DO ~SetGlobal("VP_MetGovan","GLOBAL",1)~ EXTERN GOVAN 1
 ++ ~I have business with one, Govan Duvaine? From the description given me by Samuel Thunderburp I think I have found my man.~ DO ~SetGlobal("VP_MetGovan","GLOBAL",1)~ EXTERN GOVAN 1

CHAIN GOVAN 1
~I could be him. (*hic*) Depends on who is asking and what you want!~
END
 ++ ~I am looking for a girl goes by the name of Leina. I believe that is a name known to you?~ EXTERN GOVAN 2
 ++ ~Who I am, is not important, what I want is! Tell me what you know of a girl named Leina?~ EXTERN GOVAN 2

CHAIN GOVAN 2
~I know lots of girls but none important enough to remember by name. Leina you say, pretty name. If she is as fetching as her name, perhaps I should be looking her up too!~
END
 ++ ~I am not here to play games Duvaine. Here read this and then tell me you do not know any Leina.~ DO ~TakePartyItem("GovanLet")~ EXTERN GOVAN 3
 ++ ~I am under the impression you have already *looked* her up, or at least attempted to, Duvaine. Here, is this not your handiwork?~ DO ~TakePartyItem("GovanLet")~ EXTERN GOVAN 3
 ++ ~I am not amused by your smart answers Duvaine. This letter here tells me you know this Leina that I speak of.~ DO ~TakePartyItem("GovanLet")~ EXTERN GOVAN 3

CHAIN GOVAN 3
~Oh, that Leina, stuck up wench! The name Duvaine not good enough for her and her no more than a minstrel singing to keep herself off the streets.~
DO ~GiveItem("GovanLet",[PC])~
EXTERN GOVAN 4

CHAIN GOVAN 4
~Mind you, with her talent, or should that be lack of talent, she would make more if she were on the streets.~
END
 IF ~IfValidForPartyDialog("njmelora")~ THEN EXTERN NJMELJ 2
 IF ~!IfValidForPartyDialog("njmelora")~ THEN EXTERN GOVAN 5

CHAIN GOVAN 5
~If you want to speak to that one, The Five Flagons is where you will find her.~
END
 ++ ~Would I be right in thinking that your intentions towards this Leina were, how shall I put it, less than honourable, only she saw right through you? Made you angry did it?~ EXTERN GOVAN 6
 ++ ~This Leina clearly recognised you for the cad you are and spurned your advances. How does that make you feel Duvaine?~ EXTERN GOVAN 6
 ++ ~Poor spoilt, little rich boy, not used to being turned down by the ladies! Tell me Duvaine, what did you do when your words and flowers failed to seduce her?~ EXTERN GOVAN 6

CHAIN GOVAN 6
~Not that it is any business of yours what my intentions are towards Leina, but I would have married her if she had said yes. In fact, I fully intend to ask her again.~
EXTERN GOVAN 7

CHAIN GOVAN 7
~She is pretty enough and a man could do worse. Besides, her father is an influential man, it will be a fine pairing between our families. Now, maybe it is time you told me what your interest in Leina is?~
END
 ++ ~She seems to have up and disappeared without a word to a soul. Your letter and *gift* were found in her room and by the crumpled state of them it was clear your attentions were not welcome.~ EXTERN GOVAN 8
 ++ ~She is missing Duvaine and from what I see of you, you are not the sort to take kindly when a lady says no to you.~ EXTERN GOVAN 8
 ++ ~I have no interested in your affairs or your intentions towards this girl, but she is missing and the barkeep of The Five Flagons has offered me a generous reward if I can find her. So tell me what did you do with her when she refused your proposal, Duvaine?~ EXTERN GOVAN 12

CHAIN GOVAN 8
~I know nothing of her disappearance! All I did was send a messenger with the letters and the flowers, I never even saw her myself.~
EXTERN GOVAN 9

CHAIN GOVAN 9
~When he returned with her refusal, I thought to leave it for a few days then try my luck again. I was not the only person to think this marriage convenient you know.~
EXTERN GOVAN 10

CHAIN GOVAN 10
~It was Leina's father who suggested it to me, he had some notion that if she married me it would put a stop to her wanderings.~
EXTERN GOVAN 11

CHAIN GOVAN 11
~He also knows she refused me because I sent the messenger to tell him, but I also sent word that I would not be giving up.~
EXTERN GOVAN 14

CHAIN GOVAN 12
~Now hold on a minute! I am not that short of female company to let one refusal get to me! When the messenger I had sent to Leina with my proposal returned with her refusal, my intentions were to wait a few days and try my luck again.~
EXTERN GOVAN 13

CHAIN GOVAN 13
~The marriage was her father's idea you know, not mine! He had some notion that by marrying Leina off to me it would stop her wanderings. He also knew of her refusal because I sent the messenger with word that Leina had refused, but I also said to tell him that I would not be giving up.~
EXTERN GOVAN 14

CHAIN GOVAN 14
~Maybe he is the one you should be speaking to and not me!~
END
 ++ ~I may just do that Duvaine. Where might I find this father of Leina?~ EXTERN GOVAN 15
 ++ ~I will, Duvaine, but if I do not get the answers I expect from him, I will return with more questions for you. Now where do I find this man?~ EXTERN GOVAN 15
 ++ ~Tell me where to find this man, Duvaine, and you had better hope I find Leina safe there with him or I will be back to deal with you further.~ EXTERN GOVAN 15

CHAIN GOVAN 15
~Old man Vulova! I thought everyone knew where to find him. You new to the city? No matter, he has an estate over in the government district. His business takes him away a lot, but he still keeps the house maintained for when he is in Athkatla.~
EXTERN GOVAN 16

CHAIN GOVAN 16
~Since the death of his wife, Leina's mother, he spends less and less time there. I think he keeps it more as a shrine to her than a home.~
END
 ++ ~Then I will pay this Vulova a visit. In the meantime you had not better get any ideas of not being here should I return, because I will find you and believe me, you will wish you had stayed here when I do!~ UNSOLVED_JOURNAL ~Trouble at The Five Flagons Inn.

I found Govan Duvaine in The Copper Coronet... he strikes me as a typical spoilt little rich boy, not used to being said no to. Whereas he admits to writing the letter, he says he knows nothing of her whereabouts... he suggests I speak with her father. I will find him at the Vulova estate in the government district... apparently it was he who suggested Duvaine should court his daughter in order to keep her in Athkatla.~ EXTERN GOVAN 17
 ++ ~I will speak with Vulova and for your sake, I hope that I find this Leina is indeed with her father, and that I find her safe!~ UNSOLVED_JOURNAL ~Trouble at The Five Flagons Inn.

I found Govan Duvaine in The Copper Coronet... he strikes me as a typical spoilt little rich boy, not used to being said no to. Whereas he admits to writing the letter, he says he knows nothing of her whereabouts... he suggests I speak with her father. I will find him at the Vulova estate in the government district... apparently it was he who suggested Duvaine should court his daughter in order to keep her in Athkatla.~ EXTERN GOVAN 17

CHAIN GOVAN 17
~So good luck in meeting Vulova and finding the girl.~
DO ~SetGlobal("VP_ResqueLeina","GLOBAL",8)~
EXIT