BEGIN ~Lavallin~

IF WEIGHT #0 ~NumTimesTalkedTo(0)
Global("VP_Lavallins_Plot","GLOBAL",0)~ THEN BEGIN 0
  SAY ~Ah, more magelings looking to purchase my books and spell components. Welcome, I am Lavallin.~ [laval01]
  IF ~~ THEN REPLY ~I am <CHARNAME>. Well met, Lavallin. I did not realise students had to purchase books and spell components. It does not seem right.~ GOTO 1
  IF ~~ THEN REPLY ~I am <CHARNAME>. I am impressed by what I see here, Lavallin. It must cost quite a lot to keep so well stocked.~ GOTO 1
  IF ~~ THEN REPLY ~I am <CHARNAME>. I suppose you would charge me an outrageous price for the smallest of components should I decide to purchase anything from you?~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY ~Components do not come cheap my friend. Some have to be gathered from exotic lands and places almost impossible to reach. There are those that take many years to grow and those that have to be harvested from some of the most dangerous of beasts that walk the land. No, spell components do not come cheap.~ [laval02]
  IF ~~ THEN REPLY ~Dangerous or not you seem to have no trouble maintaining your supplies.~ GOTO 2
  IF ~~ THEN REPLY ~If it is so dangerous, where do you find the people willing to go to such lengths?~ GOTO 2
  IF ~~ THEN REPLY ~So, you are blaming your suppliers for forcing such exorbitant prices? I am intrigued to know who these people are that can demand their own fee and not worry about the risk of angering a mage such as yourself.~ GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY ~We have contacts spread far and wide. There are always those prepared to take a risk or two if the price is right and we respect these people for the risks they take on our behalf. We at Halruaa have a reputation to maintain so we pay what is necessary to maintain it.~ [laval03]
  IF ~~ THEN REPLY ~Surely most of your customers are students, how can they afford such prices?~ GOTO 3
  IF ~~ THEN REPLY ~I know that such extras are not covered in tuition fees, but does it not hinder a student�s progress if he is unable to purchase what is needed?~ GOTO 3
  IF ~~ THEN REPLY ~What of the student who has the capabilities to learn but not the extra gold when, say for instance, he needs a component for an important examination?~ GOTO 3
  IF ~~ THEN REPLY ~I see that only as an excuse to make a gold piece or two! What of the poorer student?~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY ~No student is denied the chance to learn. The abilities he learns here mostly use the basic of components, many of which can be found naturally in the environment.~ [laval04a]
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY ~The more costlier items that I supply, are for students who may embark on their own research. It is hoped the cost deters such research until the student has gained a higher degree of knowledge. Past mistakes have made us more careful.~ [laval04b]
  IF ~~ THEN REPLY ~Mistakes? Tell me more.~ GOTO 5
  IF ~~ THEN REPLY ~Some student get himself killed did he?~ GOTO 5
  IF ~~ THEN REPLY ~Who made the mistake, Student or tutor?~ GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY ~The incident involved five very promising students, but is of no concern now, it happened some years past. If you are worried about the cost of components you may have need to purchase at any time, I have a proposition to put to you that may enable you to obtain those things free of charge. Are you interested?~ [laval05]
  IF ~~ THEN REPLY ~Of course I am interested. Speak on.~ GOTO 6
  IF ~~ THEN REPLY ~I will hear what you propose first, then I will say whether I am interested or not.~ GOTO 6
  IF ~~ THEN REPLY ~I am listening.~ GOTO 6
  IF ~~ THEN REPLY ~Who would not be interested in hearing an offer that includes free handouts. However, I usually find that the person offering wants something in return so they are never really free. Still, I will listen, speak on.~ GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY ~I have this small problem with things disappearing from my room here. Nothing of significant value, the odd magical item, potion and such like. Nothing that warrants a search myself, more of a nuisance really.~ [laval06a]
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY ~As you can see there is only the one door and I make sure that the lock is such that only I can bypass the wards once I set them, but somehow, someone is still able to gain entrance without disturbing the wards. Would you be interested in looking into the matter for me?~ [laval06b]
  IF ~~ THEN REPLY ~Why not just wait around and catch the thief yourself?~ GOTO 8
  IF ~~ THEN REPLY ~Sounds simple enough why do you need me to do this?~ GOTO 8
  IF ~~ THEN REPLY ~What can I do that a mage of your standing cannot?~ GOTO 8
  IF ~~ THEN REPLY ~Should not be a problem, but what is in it for me?~ GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY ~As I have said, the problem is more of a nuisance than a worry. I have even forgotten what has gone missing, that is how trivial these thefts are. At the moment my priorities lie elsewhere and I do not have the time to spare.~ [laval07a]
  IF ~~ THEN JOURNAL ~Lavallin�s Thief.

Whilst exploring the academy I found myself in a what looked like a workroom where a mage by the name of Lavallin asked me if I would be interested in helping him solve a mystery of minor thefts from his room. He says he always locks and wards the room but still the thefts are occurring. If I agree to aid him. I can keep whatever I retrieve and the mage also offered me a reward of free spell components for future use in my studies... it�s good to know our guise as students is still fooling the mages here.~ GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY ~If you manage to recover whatever was taken, you may keep it for yourself as an extra incentive, I care little for the trinkets that are missing. I am more concerned for the safety of those involved, some of these items can be perilous if not handled correctly. You have heard my offer <CHARNAME>, what do you say?~ [laval07b]
  IF ~~ THEN REPLY ~I will be pleased look into this for you Lavallin.~ UNSOLVED_JOURNAL ~Lavallin�s Thief.

I have agreed to help a mage named Lavallin solve his problem of disappearing items. So, after casting a spell to make the room appear empty and warning me not to touch anything, he left to attend to a more urgent matter he said. I can�t help but wonder if that matter is anything to do with my quest here.~ GOTO 11
  IF ~~ THEN REPLY ~Say no more, the thief is as good as dead!~ UNSOLVED_JOURNAL ~Lavallin�s Thief.

I have agreed to help a mage named Lavallin solve his problem of disappearing items. So, after casting a spell to make the room appear empty and warning me not to touch anything, he left to attend to a more urgent matter he said. I can�t help but wonder if that matter is anything to do with my quest here.~ GOTO 11
  IF ~~ THEN REPLY ~I am sorry I do not have the time to help you Lavallin.~ JOURNAL ~Lavallin�s Thief.

I declined to help a mage named Lavallin search for his petty thief. I really do not have the time to let myself be side tracked... the quicker I can find the information that I came here for, the quicker I can do the necessary and get back to my search for Imoen and Irenicus.~ GOTO 10
  IF ~~ THEN REPLY ~I will think on your offer and if I can help I will return later.~ JOURNAL ~Lavallin�s Thief.

I declined to help a mage named Lavallin search for his petty thief. I really do not have the time to let myself be side tracked... the quicker I can find the information that I came here for, the quicker I can do the necessary and get back to my search for Imoen and Irenicus.~ GOTO 10
  IF ~~ THEN REPLY ~My answer is no. I too have more important things to do Lavallin.~ JOURNAL ~Lavallin�s Thief.

I declined to help a mage named Lavallin search for his petty thief. I really do not have the time to let myself be side tracked... the quicker I can find the information that I came here for, the quicker I can do the necessary and get back to my search for Imoen and Irenicus.~ GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY ~As you wish, <CHARNAME>. I must ask you to leave now as I am about to lock up for today, I am needed urgently elsewhere. I cannot say when I will be able to return should you wish to speak with me again. Farewell.~ [laval08]
  IF ~~ THEN DO ~SetGlobal("VP_Lavallins_Plot","GLOBAL",1)
RealSetGlobalTimer("VP_Lavallin_Leaves","GLOBAL",30)~ EXIT // First rejection to Lavallin�s quest
END

IF ~~ THEN BEGIN 11
  SAY ~I am pleased that you agree to help. I was about to leave but seeing as you will be here, I will not ward the door, I will however ward the room so it appears to be empty. Please, for your own safety, I urge, you do not to touch anything. I will return as soon as I am able. Farewell for now, <CHARNAME>.~ [laval09]
  IF ~InParty("Hrothgar")~ THEN DO ~SetGlobal("VP_Lavallins_Plot","GLOBAL",2)
SetGlobal("VP_Hrothgar_Lavallin","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutT03")~ EXIT
  IF ~!InParty("Hrothgar")~ THEN REPLY ~Where is Hrothgar? You may not continue playing without him. Goodbye.~ DO ~Kill(Protagonist)~ EXIT
END

IF WEIGHT #-1 ~Global("VP_Lavallins_Plot","GLOBAL",1)~ THEN BEGIN 12
  SAY ~Ah, you return <CHARNAME>. Have you reconsidered my offer, or is there some special component that you seek?~ [laval10]
  IF ~~ THEN REPLY ~I have thought on your offer and yes, I will help you Lavallin.~ DO ~EraseJournalEntry(%Lavallin�s Thief.

I declined to help a mage named Lavallin search for his petty thief. I really do not have the time to let myself be side tracked... the quicker I can find the information that I came here for, the quicker I can do the necessary and get back to my search for Imoen and Irenicus.%)~ GOTO 11
  IF ~~ THEN REPLY ~The thought of the reward brought me back Lavallin, so the sooner we sort this thief out the quicker it will be mine.~ DO ~EraseJournalEntry(%Lavallin�s Thief.

I declined to help a mage named Lavallin search for his petty thief. I really do not have the time to let myself be side tracked... the quicker I can find the information that I came here for, the quicker I can do the necessary and get back to my search for Imoen and Irenicus.%)~ GOTO 11
  IF ~~ THEN REPLY ~I would like to see what you have for sale.~ GOTO 57
END

IF WEIGHT #-2 ~Global("VP_Lavallins_Plot","GLOBAL",4)~ THEN BEGIN 13
  SAY ~Did our little thief put in an appearance, <CHARNAME>?~ [laval11]
  IF ~~ THEN REPLY ~Someone did Lavallin but I did not see who. I did see a portal open. It closed and I sensed someone moving about the room. It then opened and closed again.~ GOTO 14
  IF ~~ THEN REPLY ~It would appear that you have an invisible thief who comes and goes via a portal.~ GOTO 14
  IF ~~ THEN REPLY ~I am not sure Lavallin. I saw a portal open and close, twice, but I did not see any one enter or leave.~ GOTO 14
END	

IF ~~ THEN BEGIN 14
  SAY ~The portal would explain how whoever it was managed to bypass my wards. I could I suppose ward the room to prevent further intrusions, but I would much prefer this thief caught. If I make it worth your while, would you consider pursuing this matter for me, <CHARNAME>?~ [laval12]
  IF ~~ THEN REPLY ~I am sorry, I have a schedule of my own to keep. As you say, you can ward the room to prevent further theft.~ GOTO 16
  IF ~~ THEN REPLY ~I have my own schedule here Lavallin, I cannot help you further.~ GOTO 16
  IF ~~ THEN REPLY ~Mmm, worth my while you say? Maybe some more investigation is needed here.~ UNSOLVED_JOURNAL ~Lavallin�s Thief.

I didn�t have to wait long to discover how Lavallin�s thief was entering his room... a portal opened and I heard someone searching about the room but he must have been cloaked by some invisibility enchantment for I could see no one. After telling Lavallin what I had discovered he offered to make it worth my while if I was to continue my search. I have agreed to continue my investigation for Lavallin and must now wait for the portal to open again.~ GOTO 15
  IF ~~ THEN REPLY ~Perhaps, I can spare a little more time Lavallin, I will see what else I can discover.~ UNSOLVED_JOURNAL ~Lavallin�s Thief.

I didn�t have to wait long to discover how Lavallin�s thief was entering his room... a portal opened and I heard someone searching about the room but he must have been cloaked by some invisibility enchantment for I could see no one. After telling Lavallin what I had discovered he offered to make it worth my while if I was to continue my search. I have agreed to continue my investigation for Lavallin and must now wait for the portal to open again.~ GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY ~Thank you, <CHARNAME>. I will leave you in the room as before. Perhaps our thief is an opportunist and will return if I am not here. I will return as soon as I am able. Good luck.~ [laval13]
  IF ~~ THEN DO ~SetGlobal("VP_Lavallins_Plot","GLOBAL",5)
RealSetGlobalTimer("VP_Activate_Portal","GLOBAL",10)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutT37")~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY ~Then I thank you for your help, <CHARNAME>. I will secure the room, I am sure that whoever our thief is, they will soon tire when they realise they can no longer open a portal into my room. If I had more time I could deal with whoever it is myself, but I do not.~ [laval14a]
  IF ~~ THEN JOURNAL ~Lavallin�s Thief.

I didn�t have to wait long to discover how Lavallin�s thief was entering his room... a portal opened and I heard someone searching about the room but he must have been cloaked by some invisibility enchantment for I could see no one. After telling Lavallin what I had discovered he offered to make it worth my while if I was to continue my search. I decided against spending any more time on this matter, so I left Lavallin warding the room against further such intrusion. My first priority has to be finding that which I came for and getting back to my search for Imoen and Irenicus.~ GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY ~I must however ask you to leave whilst I do what is necessary. Farewell, <CHARNAME>, and remember my offer should you require components in the future.~ [laval14b]
  IF ~~ THEN DO ~SetGlobal("VP_Lavallins_Plot","GLOBAL",6)
RealSetGlobalTimer("VP_Lavallin_Leaves","GLOBAL",30)
EraseJournalEntry(%Lavallin�s Thief.

I have agreed to help a mage named Lavallin solve his problem of disappearing items. So, after casting a spell to make the room appear empty and warning me not to touch anything, he left to attend to a more urgent matter he said. I can�t help but wonder if that matter is anything to do with my quest here.%)
EraseJournalEntry(%Lavallin�s Thief.

I declined to help a mage named Lavallin search for his petty thief. I really do not have the time to let myself be side tracked... the quicker I can find the information that I came here for, the quicker I can do the necessary and get back to my search for Imoen and Irenicus.%)
GiveItemCreate("POTN33",Player1,1,0,0)
GiveItemCreate("POTN34",Player1,1,0,0)
GivePartyGold(500)~ EXIT
END // Second rejection to Lavallin�s quest

IF WEIGHT #-3 ~Global("VP_LvQuest_Botched","GLOBAL",0)
Global("VP_Lavallins_Plot","GLOBAL",9)
Dead("Bartlemy")
GlobalLT("VP_Meeting_Delrysia","GLOBAL",2)~ THEN BEGIN 18
//The first condition *Global("VP_Lavallins_Plot","GLOBAL",9)* is enough to
//trigger this dialogue *End Quest 1*. Other two conditins must be true if
//*VP_Lavallins_Plot* = 9, and added here to prevent any possible cheating.
  SAY ~You startled me, <CHARNAME>! I do not see our little thief with you, did you not discover him?~ [laval15]
  IF ~~ THEN REPLY ~Yes, I found him, Lavallin. He is dead as is the mage he was working for, Bartlemy he called himself.~ GOTO 19
  IF ~~ THEN REPLY ~You should have no more trouble, Lavallin, Bartlemy and his goblin thief are both dead.~ GOTO 19
  IF ~~ THEN REPLY ~Seems our little thief was no more than a goblin, stealing to order for a mage called Bartlemy. Neither will be stealing from anyone again!~ GOTO 19
  IF ~~ THEN REPLY ~I have dealt with him, Lavallin, him and his master Bartlemy!~ GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY ~Bartlemy you say? The name is familiar to me.~ [laval16]
  IF ~~ THEN REPLY ~Before he died, Bartlemy spoke of an accident and an item he claimed to have lost in this room.~ GOTO 20
  IF ~~ THEN REPLY ~Bartlemy was using this goblin to search for something he lost in this room but the goblin was too stupid to remember what he had been sent to find.~ GOTO 20
  IF ~~ THEN REPLY ~Bartlemy spoke of an accident. I am wondering if this accident is the same *mistake* that you spoke of earlier?~ GOTO 20
  IF ~~ THEN REPLY ~I hope he was not an acquaintance of yours, seeing as he is dead!~ GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY ~Bartlemy... Yes! Now I remember! Still trying to forge that cursed ring of his. I will tell you briefly what I  know of Bartlemy and his friends, or at least as the story was told to me.~ [laval17]
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY ~A few years back, three or four maybe, five very talented students sought to forge a powerful artifact known as a *Ring of Might*. They were forbidden to attempt such a feat but went ahead anyway secretly in this very room.~ [laval18a]
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY ~It is said, but not known for sure, that it takes a mage from each of the four elemental schools working together to achieve this, so why a necromancer was involved no one knows.~ [laval18b]
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY ~Anyway, they failed, and the explosion that followed destroyed this part of the building and left three of them dead. What became of the fourth, Delrysia, is unknown as only Bartlemy was discovered, unconscious and near death at the scene.~ [laval18c]
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY ~After his recovery, he was banished and warned that to set foot on Halruaa soil again would mean his death, but I see he has somehow got around that little hindrance.~ [laval19a]
  IF ~~ THEN SOLVED_JOURNAL ~A Ring Of Might.

I have solved the problem of Lavallin�s thief and in doing so I encountered a necromancer by name of Bartlemy. He explained that he was searching for an artifact, an item that he had lost some years previous whilst conducting an experiment in Lavallin�s room. When Bartlemy refused to hand over all that his goblin had stolen, choosing instead to attack me, I was forced to kill them both. On my return to Lavallin I learnt more of Bartlemy�s mysterious item... a ring of might, an artifact that both students and tutors, even the most senior of Halruaa are banned from attempting to construct. Lavallin was most generous in his gratitude and I am left to ponder on what manner of artifact could have so many high powered wizards so worried that they should choose to ban its construction?~ GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY ~With the disappearance of Delrysia, I guess the truth of what happened will never be known, although it is rumoured they were very close to completing the artifact.~ [laval19b]
  IF ~~ THEN REPLY ~Is it possible that Delrysia took the ring with her when she disappeared?~ GOTO 26
  IF ~~ THEN REPLY ~Perhaps the ring was destroyed in the explosion?~ GOTO 26
  IF ~~ THEN REPLY ~Is there anyone here that was around at the time who may know more?~ GOTO 27
  IF ~~ THEN REPLY ~Whoever was to blame, Bartlemy has payed for his part in it. As interesting as the story is, I have more important issues to address.~ GOTO 28
END

IF ~~ THEN BEGIN 26
  SAY ~I suppose that is always possible, <CHARNAME>, I only know it as it is told in the Academy here. Now, I must hurry you along as I have places I should be. Please, accept these items as a token of my thanks and remember my offer should you require components at anytime. Farewell, <CHARNAME>.~ [laval20]
  IF ~~ THEN DO ~SetGlobal("VP_LvQuest_Botched","GLOBAL",1)
EraseJournalEntry(%Lavallin�s Thief.

I have agreed to help a mage named Lavallin solve his problem of disappearing items. So, after casting a spell to make the room appear empty and warning me not to touch anything, he left to attend to a more urgent matter he said. I can�t help but wonder if that matter is anything to do with my quest here.%)
EraseJournalEntry(%Lavallin�s Thief.

I declined to help a mage named Lavallin search for his petty thief. I really do not have the time to let myself be side tracked... the quicker I can find the information that I came here for, the quicker I can do the necessary and get back to my search for Imoen and Irenicus.%)
EraseJournalEntry(%Lavallin�s Thief.

I didn�t have to wait long to discover how Lavallin�s thief was entering his room... a portal opened and I heard someone searching about the room but he must have been cloaked by some invisibility enchantment for I could see no one. After telling Lavallin what I had discovered he offered to make it worth my while if I was to continue my search. I have agreed to continue my investigation for Lavallin and must now wait for the portal to open again.%)
EraseJournalEntry(%A Ring Of Might.

I was not prepared for what I was to meet when I finally encountered Delrysia, for she was now a wretched undead creature, no longer recognisable as human. All of which she blamed on Bartlemy�s necromantic component. She agreed to barter the ring of might if Bartlemy would free her from her undead state. One of the two was lying, that was clear, but I had been given the run around long enough. I decided to end my involvement with them once and for all and get on with my own concerns.%)
EraseJournalEntry(%A Ring Of Might.

I was not prepared for what I was to meet when I finally encountered Delrysia, for she was now a wretched undead creature, no longer recognisable as human. All of which she blamed on Bartlemy�s necromantic component. She agreed to barter the ring of might if Bartlemy would free her from her undead state. I gave Bartlemy�s potion to Delrysia in the hope that it would restore her. It was a great relief to see that it worked, I had feared that the necromancer may have concocted a potion to harm her rather than cure her. In return she has given me what can only be Bartlemy�s ring of might and a warning that only an elementalist mage should be entrusted to attempt to finish that which they had started.%)
EraseJournalEntry(%A Ring Of Might.

I was not prepared for what I was to meet when I finally encountered Delrysia, for she was now a wretched undead creature, no longer recognisable as human. All of which she blamed on Bartlemy�s necromantic component. She agreed to barter the ring of might if Bartlemy would free her from her undead state.%)
EraseJournalEntry(%A Ring Of Might.

Bartlemy has told me of the accident that occurred whilst he and four of his friends were experimenting with some research. It seems he was the only one to survive the explosion and was banned from the academy. To set foot on Halruaa grounds would be instant death for him, hence the use of the goblin and the portal to retrieve his item. He has asked me to help him in his search in return for the way out of this place... whereas he can teleport in and out, the portal is my only escape. He assures me that his death would instantly seal the exit for good. After agreeing to help the mage... as I see it he has left me very little choice if I want to get out of this place... he told me a little more of the item I was to find, a rare and very powerful elemental artifact known as a ring of might. If I manage to find it he�ll share with me the secrets of its construction... I am not so sure that�s a good idea if his last attempt is anything to go by.%)
EraseJournalEntry(%A Ring Of Might.

I gave Bartlemy�s potion to Delrysia in the hope that it would restore her. It was a great relief to see that it worked, I had feared that the necromancer may have concocted a potion to harm her rather than cure her. In return she has given me what can only be Bartlemy�s ring of might and a warning that only an elementalist mage should be entrusted to attempt to finish that which they had started.%)
EraseJournalEntry(%A Ring Of Might.

Bartlemy has told me of the accident that occurred whilst he and four of his friends were experimenting with some research. It seems he was the only one to survive the explosion and was banned from the academy. To set foot on Halruaa grounds would be instant death for him, hence the use of the goblin and the portal to retrieve his item. He has asked me to help him in his search in return for the way out of this place... whereas he can teleport in and out, the portal is my only escape. He assures me that his death would instantly seal the exit for good. I will not be coerced into doing anyone�s bidding! I asked him to hand over whatever the goblin had stolen and the key to the portal... he then laughed and attacked, along with his goblin friend.%)
EraseJournalEntry(%A Ring Of Might.

The search of Lavallin�s room revealed yet another interested party in this ring of might... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring. Is there any truth in the words of this mage I asked myself? Or was I once again being used as a pawn in the power struggles of others? Whatever the truth I decided to have no further part in this quest and when asked to return all that his goblin had stolen, Bartlemy merely laughed and attacked me, along with his goblin friend.%)
EraseJournalEntry(%A Ring Of Might.

The search of Lavallin�s room revealed yet another interested party in this ring of might... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring.%)
EraseJournalEntry(%A Ring Of Might.

The search for the "Ring of Might" revealed yet another interested party in this cursed ring... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring.%)
EraseJournalEntry(%A Ring Of Might.

The search for the "Ring of Might" revealed yet another interested party in this ring of might... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring. Is there any truth in the words of this mage I asked myself? Or was I once again being used as a pawn in the power struggles of others? Whatever the truth I decided to have no further part in this quest and when asked to return all that his goblin had stolen, Bartlemy merely laughed and attacked me, along with his goblin friend.%)
EraseJournalEntry(%A Ring Of Might.

The search of Lavallin�s room revealed yet another interested party in this ring of might... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring. Is there any truth in the words of this mage I asked myself? Or was I once again being used as a pawn in the power struggles of others? Whatever the truth I decided to have no further part in this quest and when asked to return all that his goblin had stolen, Bartlemy merely laughed and attacked me, along with his goblin friend.%)
AddexperienceParty(5000)
GiveItemCreate("SCRL8O",Player1,1,0,0)
GiveItemCreate("SCRL8P",Player1,1,0,0)
GiveItemCreate("SCRL8Q",Player1,1,0,0)
GiveItemCreate("SCRL8R",Player1,1,0,0)
GiveGoldForce(2000)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutT37")~ EXIT
END

IF ~~ THEN BEGIN 27
  SAY ~There are I believe quite a few of the tutors still here, but you will find them far too busy with another concern at the moment so I would not go bothering them with questions. Now, I must hurry you along as I have places I should be. Please, accept these items as a token of my thanks and remember my offer should you require components at anytime. Farewell, <CHARNAME>.~ [laval21]
  IF ~~ THEN DO ~SetGlobal("VP_LvQuest_Botched","GLOBAL",1)
EraseJournalEntry(%Lavallin�s Thief.

I have agreed to help a mage named Lavallin solve his problem of disappearing items. So, after casting a spell to make the room appear empty and warning me not to touch anything, he left to attend to a more urgent matter he said. I can�t help but wonder if that matter is anything to do with my quest here.%)
EraseJournalEntry(%Lavallin�s Thief.

I declined to help a mage named Lavallin search for his petty thief. I really do not have the time to let myself be side tracked... the quicker I can find the information that I came here for, the quicker I can do the necessary and get back to my search for Imoen and Irenicus.%)
EraseJournalEntry(%Lavallin�s Thief.

I didn�t have to wait long to discover how Lavallin�s thief was entering his room... a portal opened and I heard someone searching about the room but he must have been cloaked by some invisibility enchantment for I could see no one. After telling Lavallin what I had discovered he offered to make it worth my while if I was to continue my search. I have agreed to continue my investigation for Lavallin and must now wait for the portal to open again.%)
EraseJournalEntry(%A Ring Of Might.

I was not prepared for what I was to meet when I finally encountered Delrysia, for she was now a wretched undead creature, no longer recognisable as human. All of which she blamed on Bartlemy�s necromantic component. She agreed to barter the ring of might if Bartlemy would free her from her undead state. One of the two was lying, that was clear, but I had been given the run around long enough. I decided to end my involvement with them once and for all and get on with my own concerns.%)
EraseJournalEntry(%A Ring Of Might.

I was not prepared for what I was to meet when I finally encountered Delrysia, for she was now a wretched undead creature, no longer recognisable as human. All of which she blamed on Bartlemy�s necromantic component. She agreed to barter the ring of might if Bartlemy would free her from her undead state. I gave Bartlemy�s potion to Delrysia in the hope that it would restore her. It was a great relief to see that it worked, I had feared that the necromancer may have concocted a potion to harm her rather than cure her. In return she has given me what can only be Bartlemy�s ring of might and a warning that only an elementalist mage should be entrusted to attempt to finish that which they had started.%)
EraseJournalEntry(%A Ring Of Might.

I was not prepared for what I was to meet when I finally encountered Delrysia, for she was now a wretched undead creature, no longer recognisable as human. All of which she blamed on Bartlemy�s necromantic component. She agreed to barter the ring of might if Bartlemy would free her from her undead state.%)
EraseJournalEntry(%A Ring Of Might.

Bartlemy has told me of the accident that occurred whilst he and four of his friends were experimenting with some research. It seems he was the only one to survive the explosion and was banned from the academy. To set foot on Halruaa grounds would be instant death for him, hence the use of the goblin and the portal to retrieve his item. He has asked me to help him in his search in return for the way out of this place... whereas he can teleport in and out, the portal is my only escape. He assures me that his death would instantly seal the exit for good. After agreeing to help the mage... as I see it he has left me very little choice if I want to get out of this place... he told me a little more of the item I was to find, a rare and very powerful elemental artifact known as a ring of might. If I manage to find it he�ll share with me the secrets of its construction... I am not so sure that�s a good idea if his last attempt is anything to go by.%)
EraseJournalEntry(%A Ring Of Might.

I gave Bartlemy�s potion to Delrysia in the hope that it would restore her. It was a great relief to see that it worked, I had feared that the necromancer may have concocted a potion to harm her rather than cure her. In return she has given me what can only be Bartlemy�s ring of might and a warning that only an elementalist mage should be entrusted to attempt to finish that which they had started.%)
EraseJournalEntry(%A Ring Of Might.

Bartlemy has told me of the accident that occurred whilst he and four of his friends were experimenting with some research. It seems he was the only one to survive the explosion and was banned from the academy. To set foot on Halruaa grounds would be instant death for him, hence the use of the goblin and the portal to retrieve his item. He has asked me to help him in his search in return for the way out of this place... whereas he can teleport in and out, the portal is my only escape. He assures me that his death would instantly seal the exit for good. I will not be coerced into doing anyone�s bidding! I asked him to hand over whatever the goblin had stolen and the key to the portal... he then laughed and attacked, along with his goblin friend.%)
EraseJournalEntry(%A Ring Of Might.

The search of Lavallin�s room revealed yet another interested party in this ring of might... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring. Is there any truth in the words of this mage I asked myself? Or was I once again being used as a pawn in the power struggles of others? Whatever the truth I decided to have no further part in this quest and when asked to return all that his goblin had stolen, Bartlemy merely laughed and attacked me, along with his goblin friend.%)
EraseJournalEntry(%A Ring Of Might.

The search of Lavallin�s room revealed yet another interested party in this ring of might... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring.%)
EraseJournalEntry(%A Ring Of Might.

The search for the "Ring of Might" revealed yet another interested party in this cursed ring... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring.%)
EraseJournalEntry(%A Ring Of Might.

The search for the "Ring of Might" revealed yet another interested party in this ring of might... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring. Is there any truth in the words of this mage I asked myself? Or was I once again being used as a pawn in the power struggles of others? Whatever the truth I decided to have no further part in this quest and when asked to return all that his goblin had stolen, Bartlemy merely laughed and attacked me, along with his goblin friend.%)
EraseJournalEntry(%A Ring Of Might.

The search of Lavallin�s room revealed yet another interested party in this ring of might... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring. Is there any truth in the words of this mage I asked myself? Or was I once again being used as a pawn in the power struggles of others? Whatever the truth I decided to have no further part in this quest and when asked to return all that his goblin had stolen, Bartlemy merely laughed and attacked me, along with his goblin friend.%)
AddexperienceParty(5000)
GiveItemCreate("SCRL8O",Player1,1,0,0)
GiveItemCreate("SCRL8P",Player1,1,0,0)
GiveItemCreate("SCRL8Q",Player1,1,0,0)
GiveItemCreate("SCRL8R",Player1,1,0,0)
GiveGoldForce(2000)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutT37")~ EXIT
END

IF ~~ THEN BEGIN 28
  SAY ~Of course. Please, accept these items as a token of my thanks and remember my offer should you require components at anytime. Farewell, <CHARNAME>.~
  IF ~~ THEN DO ~SetGlobal("VP_LvQuest_Botched","GLOBAL",1)
EraseJournalEntry(%Lavallin�s Thief.

I have agreed to help a mage named Lavallin solve his problem of disappearing items. So, after casting a spell to make the room appear empty and warning me not to touch anything, he left to attend to a more urgent matter he said. I can�t help but wonder if that matter is anything to do with my quest here.%)
EraseJournalEntry(%Lavallin�s Thief.

I declined to help a mage named Lavallin search for his petty thief. I really do not have the time to let myself be side tracked... the quicker I can find the information that I came here for, the quicker I can do the necessary and get back to my search for Imoen and Irenicus.%)
EraseJournalEntry(%Lavallin�s Thief.

I didn�t have to wait long to discover how Lavallin�s thief was entering his room... a portal opened and I heard someone searching about the room but he must have been cloaked by some invisibility enchantment for I could see no one. After telling Lavallin what I had discovered he offered to make it worth my while if I was to continue my search. I have agreed to continue my investigation for Lavallin and must now wait for the portal to open again.%)
EraseJournalEntry(%A Ring Of Might.

I was not prepared for what I was to meet when I finally encountered Delrysia, for she was now a wretched undead creature, no longer recognisable as human. All of which she blamed on Bartlemy�s necromantic component. She agreed to barter the ring of might if Bartlemy would free her from her undead state. One of the two was lying, that was clear, but I had been given the run around long enough. I decided to end my involvement with them once and for all and get on with my own concerns.%)
EraseJournalEntry(%A Ring Of Might.

I was not prepared for what I was to meet when I finally encountered Delrysia, for she was now a wretched undead creature, no longer recognisable as human. All of which she blamed on Bartlemy�s necromantic component. She agreed to barter the ring of might if Bartlemy would free her from her undead state. I gave Bartlemy�s potion to Delrysia in the hope that it would restore her. It was a great relief to see that it worked, I had feared that the necromancer may have concocted a potion to harm her rather than cure her. In return she has given me what can only be Bartlemy�s ring of might and a warning that only an elementalist mage should be entrusted to attempt to finish that which they had started.%)
EraseJournalEntry(%A Ring Of Might.

I was not prepared for what I was to meet when I finally encountered Delrysia, for she was now a wretched undead creature, no longer recognisable as human. All of which she blamed on Bartlemy�s necromantic component. She agreed to barter the ring of might if Bartlemy would free her from her undead state.%)
EraseJournalEntry(%A Ring Of Might.

Bartlemy has told me of the accident that occurred whilst he and four of his friends were experimenting with some research. It seems he was the only one to survive the explosion and was banned from the academy. To set foot on Halruaa grounds would be instant death for him, hence the use of the goblin and the portal to retrieve his item. He has asked me to help him in his search in return for the way out of this place... whereas he can teleport in and out, the portal is my only escape. He assures me that his death would instantly seal the exit for good. After agreeing to help the mage... as I see it he has left me very little choice if I want to get out of this place... he told me a little more of the item I was to find, a rare and very powerful elemental artifact known as a ring of might. If I manage to find it he�ll share with me the secrets of its construction... I am not so sure that�s a good idea if his last attempt is anything to go by.%)
EraseJournalEntry(%A Ring Of Might.

I gave Bartlemy�s potion to Delrysia in the hope that it would restore her. It was a great relief to see that it worked, I had feared that the necromancer may have concocted a potion to harm her rather than cure her. In return she has given me what can only be Bartlemy�s ring of might and a warning that only an elementalist mage should be entrusted to attempt to finish that which they had started.%)
EraseJournalEntry(%A Ring Of Might.

Bartlemy has told me of the accident that occurred whilst he and four of his friends were experimenting with some research. It seems he was the only one to survive the explosion and was banned from the academy. To set foot on Halruaa grounds would be instant death for him, hence the use of the goblin and the portal to retrieve his item. He has asked me to help him in his search in return for the way out of this place... whereas he can teleport in and out, the portal is my only escape. He assures me that his death would instantly seal the exit for good. I will not be coerced into doing anyone�s bidding! I asked him to hand over whatever the goblin had stolen and the key to the portal... he then laughed and attacked, along with his goblin friend.%)
EraseJournalEntry(%A Ring Of Might.

The search of Lavallin�s room revealed yet another interested party in this ring of might... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring. Is there any truth in the words of this mage I asked myself? Or was I once again being used as a pawn in the power struggles of others? Whatever the truth I decided to have no further part in this quest and when asked to return all that his goblin had stolen, Bartlemy merely laughed and attacked me, along with his goblin friend.%)
EraseJournalEntry(%A Ring Of Might.

The search of Lavallin�s room revealed yet another interested party in this ring of might... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring.%)
EraseJournalEntry(%A Ring Of Might.

The search for the "Ring of Might" revealed yet another interested party in this cursed ring... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring.%)
EraseJournalEntry(%A Ring Of Might.

The search for the "Ring of Might" revealed yet another interested party in this ring of might... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring. Is there any truth in the words of this mage I asked myself? Or was I once again being used as a pawn in the power struggles of others? Whatever the truth I decided to have no further part in this quest and when asked to return all that his goblin had stolen, Bartlemy merely laughed and attacked me, along with his goblin friend.%)
EraseJournalEntry(%A Ring Of Might.

The search of Lavallin�s room revealed yet another interested party in this ring of might... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring. Is there any truth in the words of this mage I asked myself? Or was I once again being used as a pawn in the power struggles of others? Whatever the truth I decided to have no further part in this quest and when asked to return all that his goblin had stolen, Bartlemy merely laughed and attacked me, along with his goblin friend.%)
AddexperienceParty(5000)
GiveItemCreate("POTN33",Player1,1,0,0)
GiveItemCreate("POTN34",Player1,1,0,0)
GiveItemCreate("SCRL8O",Player1,1,0,0)
GivePartyGold(500)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutT37")~ EXIT
END

IF WEIGHT #-18 ~GlobalGT("VP_Lavallins_Plot","GLOBAL",10)
GlobalGT("VP_Meeting_Delrysia","GLOBAL",1)
Global("VP_LvQuest_Done","GLOBAL",0)
Global("VP_LvQuest_Botched","GLOBAL",0)
GlobalLT("VP_Delrisia_Letter","GLOBAL",3)
Global("VP_Restore_Ring","GLOBAL",0)~ THEN BEGIN 29
  SAY ~You startled me, <CHARNAME>! I do not see our little thief with you, did you not discover him?~ [laval15]
  IF ~Dead("Bartlemy")~ THEN REPLY ~Yes, I found him, Lavallin. He is dead as is the mage he was working for, Bartlemy he called himself.~ GOTO 30
  IF ~Dead("Bartlemy")~ THEN REPLY ~You should have no more trouble, Lavallin, Bartlemy and his goblin thief are both dead.~ GOTO 30
  IF ~Dead("Bartlemy")~ THEN REPLY ~Seems our little thief was no more than a goblin, stealing to order for a mage called Bartlemy. Neither will be stealing from anyone again!~ GOTO 30
  IF ~!Dead("Bartlemy")~ THEN REPLY ~It would appear a mage by name of Bartlemy has made himself at home under the academy, and has been sending a goblin to look for some artifact he claims he lost in your room some time ago.~ GOTO 30
  IF ~!Dead("Bartlemy")~ THEN REPLY ~Seems our little thief was no more than a goblin, stealing to order for a mage called Bartlemy.~ GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY ~Bartlemy you say? The name is familiar to me... Bartlemy... Yes! Now I remember! Are you saying these thefts are about that damned ring of might! Has Bartlemy�s obsession with that artifact brought him back to Halruaa, even at the risk to his own life... I don�t know what he has told you but I will tell you briefly what I  know of Bartlemy, his friends and their quest to construct a ring of might... or at least as the story was told to me.~
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY ~A few years back, five very talented students sought to forge a powerful artifact known as a "Ring of Might". They were forbidden to attempt such a feat but went ahead anyway secretly in this very room.~
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY ~It is said, but not known for sure, that it takes a mage from each of the four elemental schools working together to achieve this, so why a necromancer was involved no one knows. Anyway, they failed and the explosion that followed destroyed this part of the building and left three of them dead.~
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33
  SAY ~What became of the fourth, Delrysia, is unknown as only Bartlemy was discovered, unconscious and near death at the scene. After his recovery, he was banished and warned that to set foot on Halruaa soil again would mean his death, still, that doesn�t seem to have deterred him.~
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34
  SAY ~With the disappearance of Delrysia, the truth of what happened has never come to light, although it is rumoured they were very close to completing the artifact.~
  IF ~~ THEN REPLY ~I have already discovered Delrysia living in the sewers. It would appear the explosion transformed her into a ghoul. I have a potion that I took from Bartlemy and I am hoping that it will help her.~ GOTO 35
  IF ~Dead("Bartlemy")~ THEN REPLY ~Delrysia is no longer human and is forced to live in the sewers. That fiend Bartlemy knew and refused to help her! I took a potion from his body which I hope will reverse the transformation.~ GOTO 35
  IF ~Dead("Bartlemy")~ THEN REPLY ~Delrysia exists now as a ghoul. I care not what happens to her but she says she has the Ring of Might. Now that I am interested in! I am hoping she will relinquish it for this potion I took from the necromancers body.~ GOTO 35
  IF ~!Dead("Bartlemy")~ THEN REPLY ~I have spoken to Delrysia. She is forced to live as an undead creature, the price for her foolishness. I have a potion given me by the necromancer, if he speaks the truth then it will end her misery.~ GOTO 35
  IF ~!Dead("Bartlemy")~ THEN REPLY ~I have found Delrysia... or at least the undead creature she has become. I have a potion that Bartlemy has given me to barter for his ring... he says it will restore her, but as of yet, I am undecided as to whether either of them deserve my help.~ GOTO 35
END

IF ~~ THEN BEGIN 35
  SAY ~(*Shaking his head sadly*)... Poor Delrysia, she has paid dearly for her foolishness. It would seem that whatever Bartlemy was trying to add to the ring caused the explosion and left Delrysia as she is.~ [laval22c]
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36
  SAY ~I can do nothing for her at this minute. It would take too long to research a transformation spell, so I truly hope Bartlemy�s potion will restore her. Before you leave <CHARNAME>, I ask only one thing, if you do retrieve Bartlemy�s accursed ring, please consider giving it to the safe keeping of the academy, enough young lives have been lost already thanks to his folly... bring the ring to me and I will make sure it is put forever out of harms way.~ [laval22a]
  IF ~~ THEN GOTO 37
END
	
IF ~~ THEN BEGIN 37
  SAY ~Now, I have other business to attend to, but not before I thank you for solving my little problem, here take these items and remember my offer if ever you find the need for components. Farewell and thank you again, <CHARNAME>.~ [laval22b]
  IF ~~ THEN REPLY ~Farewell, Lavallin.~ DO ~SetGlobal("VP_LvQuest_Done","GLOBAL",1)
EraseJournalEntry(%Lavallin�s Thief.

I have agreed to help a mage named Lavallin solve his problem of disappearing items. So, after casting a spell to make the room appear empty and warning me not to touch anything, he left to attend to a more urgent matter he said. I can�t help but wonder if that matter is anything to do with my quest here.%)
EraseJournalEntry(%Lavallin�s Thief.

I declined to help a mage named Lavallin search for his petty thief. I really do not have the time to let myself be side tracked... the quicker I can find the information that I came here for, the quicker I can do the necessary and get back to my search for Imoen and Irenicus.%)
EraseJournalEntry(%Lavallin�s Thief.

I didn�t have to wait long to discover how Lavallin�s thief was entering his room... a portal opened and I heard someone searching about the room but he must have been cloaked by some invisibility enchantment for I could see no one. After telling Lavallin what I had discovered he offered to make it worth my while if I was to continue my search. I have agreed to continue my investigation for Lavallin and must now wait for the portal to open again.%)
EraseJournalEntry(%A Ring Of Might.

I was not prepared for what I was to meet when I finally encountered Delrysia, for she was now a wretched undead creature, no longer recognisable as human. All of which she blamed on Bartlemy�s necromantic component. She agreed to barter the ring of might if Bartlemy would free her from her undead state. One of the two was lying, that was clear, but I had been given the run around long enough. I decided to end my involvement with them once and for all and get on with my own concerns.%)
EraseJournalEntry(%A Ring Of Might.

I was not prepared for what I was to meet when I finally encountered Delrysia, for she was now a wretched undead creature, no longer recognisable as human. All of which she blamed on Bartlemy�s necromantic component. She agreed to barter the ring of might if Bartlemy would free her from her undead state. I gave Bartlemy�s potion to Delrysia in the hope that it would restore her. It was a great relief to see that it worked, I had feared that the necromancer may have concocted a potion to harm her rather than cure her. In return she has given me what can only be Bartlemy�s ring of might and a warning that only an elementalist mage should be entrusted to attempt to finish that which they had started.%)
EraseJournalEntry(%A Ring Of Might.

I was not prepared for what I was to meet when I finally encountered Delrysia, for she was now a wretched undead creature, no longer recognisable as human. All of which she blamed on Bartlemy�s necromantic component. She agreed to barter the ring of might if Bartlemy would free her from her undead state.%)
EraseJournalEntry(%A Ring Of Might.

Bartlemy has told me of the accident that occurred whilst he and four of his friends were experimenting with some research. It seems he was the only one to survive the explosion and was banned from the academy. To set foot on Halruaa grounds would be instant death for him, hence the use of the goblin and the portal to retrieve his item. He has asked me to help him in his search in return for the way out of this place... whereas he can teleport in and out, the portal is my only escape. He assures me that his death would instantly seal the exit for good. After agreeing to help the mage... as I see it he has left me very little choice if I want to get out of this place... he told me a little more of the item I was to find, a rare and very powerful elemental artifact known as a ring of might. If I manage to find it he�ll share with me the secrets of its construction... I am not so sure that�s a good idea if his last attempt is anything to go by.%)
EraseJournalEntry(%A Ring Of Might.

I gave Bartlemy�s potion to Delrysia in the hope that it would restore her. It was a great relief to see that it worked, I had feared that the necromancer may have concocted a potion to harm her rather than cure her. In return she has given me what can only be Bartlemy�s ring of might and a warning that only an elementalist mage should be entrusted to attempt to finish that which they had started.%)
EraseJournalEntry(%A Ring Of Might.

Bartlemy has told me of the accident that occurred whilst he and four of his friends were experimenting with some research. It seems he was the only one to survive the explosion and was banned from the academy. To set foot on Halruaa grounds would be instant death for him, hence the use of the goblin and the portal to retrieve his item. He has asked me to help him in his search in return for the way out of this place... whereas he can teleport in and out, the portal is my only escape. He assures me that his death would instantly seal the exit for good. I will not be coerced into doing anyone�s bidding! I asked him to hand over whatever the goblin had stolen and the key to the portal... he then laughed and attacked, along with his goblin friend.%)
EraseJournalEntry(%A Ring Of Might.

The search of Lavallin�s room revealed yet another interested party in this ring of might... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring. Is there any truth in the words of this mage I asked myself? Or was I once again being used as a pawn in the power struggles of others? Whatever the truth I decided to have no further part in this quest and when asked to return all that his goblin had stolen, Bartlemy merely laughed and attacked me, along with his goblin friend.%)
EraseJournalEntry(%A Ring Of Might.

The search of Lavallin�s room revealed yet another interested party in this ring of might... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring.%)
EraseJournalEntry(%A Ring Of Might.

The search for the "Ring of Might" revealed yet another interested party in this cursed ring... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring.%)
EraseJournalEntry(%A Ring Of Might.

The search for the "Ring of Might" revealed yet another interested party in this ring of might... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring. Is there any truth in the words of this mage I asked myself? Or was I once again being used as a pawn in the power struggles of others? Whatever the truth I decided to have no further part in this quest and when asked to return all that his goblin had stolen, Bartlemy merely laughed and attacked me, along with his goblin friend.%)
EraseJournalEntry(%A Ring Of Might.

The search of Lavallin�s room revealed yet another interested party in this ring of might... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring. Is there any truth in the words of this mage I asked myself? Or was I once again being used as a pawn in the power struggles of others? Whatever the truth I decided to have no further part in this quest and when asked to return all that his goblin had stolen, Bartlemy merely laughed and attacked me, along with his goblin friend.%)
AddexperienceParty(19500)
GiveItemCreate("POTN33",Player1,1,0,0)
GiveItemCreate("POTN34",Player1,1,0,0)
GiveItemCreate("SCRL8O",Player1,1,0,0)
GivePartyGold(500)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutT37")~ EXIT
END

/*IF WEIGHT #-5 ~Global("VP_My_Plot_Ends","LOCALS",0)
Global("VP_Lavallins_Plot","GLOBAL",10)
Global("VP_Meeting_Delrysia","GLOBAL",2)
Dead("Bartlemy")~ THEN BEGIN 37
  SAY ~You startled me, <CHARNAME>! I do not see our little thief with you, did you not discover him?~ [laval15]
  IF ~!PartyHasItem("DeRing")~ THEN REPLY ~He is dead Lavallin. They all are, the goblin thief, Bartlemy and Delrysia.~ GOTO 38
  IF ~!PartyHasItem("DeRing")~ THEN REPLY ~You will have no more trouble from Bartlemy nor Delrysia. I have made sure of that.~ GOTO 38
  IF ~!PartyHasItem("DeRing")~ THEN REPLY ~They are all dead Lavallin. The necromancer Bartlemy, Pung his little thief, Delrysia, and the Ring of Might, the cause of this trouble is still lost.~ GOTO 38
  IF ~PartyHasItem("DeRing")~ THEN REPLY ~He is dead Lavallin. They all are, the goblin thief, Bartlemy and Delrysia. I have the Ring of Might which I will keep for my trouble.~ SOLVED_JOURNAL ~A Ring Of Might.

I have solved the problem of Lavallin�s thief and in doing so I have discovered a partially constructed, and potentially powerful artifact known as a ring of might. Unfortunately the only clue I have as to how to go about restoring the ring, lie in the notes I took from the body of one of the mages instrumental in its construction... a necromancer who went by the name of Bartlemy. I can just make out the symbols of the four elements in his writings and the name Lhillias. Perhaps I should seek her out and see what she knows of Bartlemy and his ring. Lavallin was most generous in his gratitude and if I can restore the ring of might it will have been a most profitable quest indeed.~ GOTO 39
  IF ~PartyHasItem("DeRing")~ THEN REPLY ~You will have no more trouble from Bartlemy nor Delrysia. I have made sure of that. The Ring of Might is now mine.~ SOLVED_JOURNAL ~A Ring Of Might.

I have solved the problem of Lavallin�s thief and in doing so I have discovered a partially constructed, and potentially powerful artifact known as a ring of might. Unfortunately the only clue I have as to how to go about restoring the ring, lie in the notes I took from the body of one of the mages instrumental in its construction... a necromancer who went by the name of Bartlemy. I can just make out the symbols of the four elements in his writings and the name Lhillias. Perhaps I should seek her out and see what she knows of Bartlemy and his ring. Lavallin was most generous in his gratitude and if I can restore the ring of might it will have been a most profitable quest indeed.~ GOTO 39
  IF ~PartyHasItem("DeRing")~ THEN REPLY ~They are all dead, Lavallin. The necromancer Bartlemy, Pung his little thief, Delrysia, and the Ring of Might, the cause of this trouble, is now mine to restore.~ SOLVED_JOURNAL ~A Ring Of Might.

I have solved the problem of Lavallin�s thief and in doing so I have discovered a partially constructed, and potentially powerful artifact known as a ring of might. Unfortunately the only clue I have as to how to go about restoring the ring, lie in the notes I took from the body of one of the mages instrumental in its construction... a necromancer who went by the name of Bartlemy. I can just make out the symbols of the four elements in his writings and the name Lhillias. Perhaps I should seek her out and see what she knows of Bartlemy and his ring. Lavallin was most generous in his gratitude and if I can restore the ring of might it will have been a most profitable quest indeed.~ GOTO 39

END*/

IF ~~ THEN BEGIN 38
  SAY ~Bartlemy, Delrysia and that cursed ring, is that what this was all about?! Now all five are dead and the ring, if it did survive the explosion, is still lost. Not a bad thing, <CHARNAME>, but still a tragic loss of five young lives. Now, I have other business to attend to but not before I thank you for solving my little problem, here take these items and remember my offer if ever you find the need for components. Farewell and thank you again, <CHARNAME>.~ [laval24]
  IF ~~ THEN DO ~SetGlobal("VP_LvQuest_Done","GLOBAL",1)
EraseJournalEntry(%Lavallin�s Thief.

I have agreed to help a mage named Lavallin solve his problem of disappearing items. So, after casting a spell to make the room appear empty and warning me not to touch anything, he left to attend to a more urgent matter he said. I can�t help but wonder if that matter is anything to do with my quest here.%)
EraseJournalEntry(%Lavallin�s Thief.

I declined to help a mage named Lavallin search for his petty thief. I really do not have the time to let myself be side tracked... the quicker I can find the information that I came here for, the quicker I can do the necessary and get back to my search for Imoen and Irenicus.%)
EraseJournalEntry(%Lavallin�s Thief.

I didn�t have to wait long to discover how Lavallin�s thief was entering his room... a portal opened and I heard someone searching about the room but he must have been cloaked by some invisibility enchantment for I could see no one. After telling Lavallin what I had discovered he offered to make it worth my while if I was to continue my search. I have agreed to continue my investigation for Lavallin and must now wait for the portal to open again.%)
EraseJournalEntry(%A Ring Of Might.

I was not prepared for what I was to meet when I finally encountered Delrysia, for she was now a wretched undead creature, no longer recognisable as human. All of which she blamed on Bartlemy�s necromantic component. She agreed to barter the ring of might if Bartlemy would free her from her undead state. One of the two was lying, that was clear, but I had been given the run around long enough. I decided to end my involvement with them once and for all and get on with my own concerns.%)
EraseJournalEntry(%A Ring Of Might.

I was not prepared for what I was to meet when I finally encountered Delrysia, for she was now a wretched undead creature, no longer recognisable as human. All of which she blamed on Bartlemy�s necromantic component. She agreed to barter the ring of might if Bartlemy would free her from her undead state. I gave Bartlemy�s potion to Delrysia in the hope that it would restore her. It was a great relief to see that it worked, I had feared that the necromancer may have concocted a potion to harm her rather than cure her. In return she has given me what can only be Bartlemy�s ring of might and a warning that only an elementalist mage should be entrusted to attempt to finish that which they had started.%)
EraseJournalEntry(%A Ring Of Might.

I was not prepared for what I was to meet when I finally encountered Delrysia, for she was now a wretched undead creature, no longer recognisable as human. All of which she blamed on Bartlemy�s necromantic component. She agreed to barter the ring of might if Bartlemy would free her from her undead state.%)
EraseJournalEntry(%A Ring Of Might.

Bartlemy has told me of the accident that occurred whilst he and four of his friends were experimenting with some research. It seems he was the only one to survive the explosion and was banned from the academy. To set foot on Halruaa grounds would be instant death for him, hence the use of the goblin and the portal to retrieve his item. He has asked me to help him in his search in return for the way out of this place... whereas he can teleport in and out, the portal is my only escape. He assures me that his death would instantly seal the exit for good. After agreeing to help the mage... as I see it he has left me very little choice if I want to get out of this place... he told me a little more of the item I was to find, a rare and very powerful elemental artifact known as a ring of might. If I manage to find it he�ll share with me the secrets of its construction... I am not so sure that�s a good idea if his last attempt is anything to go by.%)
EraseJournalEntry(%A Ring Of Might.

I gave Bartlemy�s potion to Delrysia in the hope that it would restore her. It was a great relief to see that it worked, I had feared that the necromancer may have concocted a potion to harm her rather than cure her. In return she has given me what can only be Bartlemy�s ring of might and a warning that only an elementalist mage should be entrusted to attempt to finish that which they had started.%)
EraseJournalEntry(%A Ring Of Might.

Bartlemy has told me of the accident that occurred whilst he and four of his friends were experimenting with some research. It seems he was the only one to survive the explosion and was banned from the academy. To set foot on Halruaa grounds would be instant death for him, hence the use of the goblin and the portal to retrieve his item. He has asked me to help him in his search in return for the way out of this place... whereas he can teleport in and out, the portal is my only escape. He assures me that his death would instantly seal the exit for good. I will not be coerced into doing anyone�s bidding! I asked him to hand over whatever the goblin had stolen and the key to the portal... he then laughed and attacked, along with his goblin friend.%)
EraseJournalEntry(%A Ring Of Might.

The search of Lavallin�s room revealed yet another interested party in this ring of might... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring. Is there any truth in the words of this mage I asked myself? Or was I once again being used as a pawn in the power struggles of others? Whatever the truth I decided to have no further part in this quest and when asked to return all that his goblin had stolen, Bartlemy merely laughed and attacked me, along with his goblin friend.%)
EraseJournalEntry(%A Ring Of Might.

The search of Lavallin�s room revealed yet another interested party in this ring of might... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring.%)
EraseJournalEntry(%A Ring Of Might.

The search for the "Ring of Might" revealed yet another interested party in this cursed ring... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring.%)
EraseJournalEntry(%A Ring Of Might.

The search for the "Ring of Might" revealed yet another interested party in this ring of might... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring. Is there any truth in the words of this mage I asked myself? Or was I once again being used as a pawn in the power struggles of others? Whatever the truth I decided to have no further part in this quest and when asked to return all that his goblin had stolen, Bartlemy merely laughed and attacked me, along with his goblin friend.%)
EraseJournalEntry(%A Ring Of Might.

The search of Lavallin�s room revealed yet another interested party in this ring of might... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring. Is there any truth in the words of this mage I asked myself? Or was I once again being used as a pawn in the power struggles of others? Whatever the truth I decided to have no further part in this quest and when asked to return all that his goblin had stolen, Bartlemy merely laughed and attacked me, along with his goblin friend.%)
AddexperienceParty(19500)
GiveItemCreate("POTN33",Player1,1,0,0)
GiveItemCreate("POTN34",Player1,1,0,0)
GiveItemCreate("SCRL8O",Player1,1,0,0)
GivePartyGold(500)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutT37")~ EXIT
END

IF ~~ THEN BEGIN 39
  SAY ~Bartlemy, Delrysia and that cursed ring, is that what this was all about?! Now all five are dead. A tragic waste of five young lives. I hope you will think long and hard on these events before you make any attempt to restore the ring, <CHARNAME>. It is forbidden for any elementalist at Halruaa to attempt such a thing again. Now, I have other business to attend to but not before I thank you for solving my little problem. Here take these items and remember my offer if ever you find the need for components. Farewell and thank you again, <CHARNAME>.~ [laval23]
  IF ~~ THEN DO ~SetGlobal("VP_LvQuest_Done","GLOBAL",1)
EraseJournalEntry(%Lavallin�s Thief.

I have agreed to help a mage named Lavallin solve his problem of disappearing items. So, after casting a spell to make the room appear empty and warning me not to touch anything, he left to attend to a more urgent matter he said. I can�t help but wonder if that matter is anything to do with my quest here.%)
EraseJournalEntry(%Lavallin�s Thief.

I declined to help a mage named Lavallin search for his petty thief. I really do not have the time to let myself be side tracked... the quicker I can find the information that I came here for, the quicker I can do the necessary and get back to my search for Imoen and Irenicus.%)
EraseJournalEntry(%Lavallin�s Thief.

I didn�t have to wait long to discover how Lavallin�s thief was entering his room... a portal opened and I heard someone searching about the room but he must have been cloaked by some invisibility enchantment for I could see no one. After telling Lavallin what I had discovered he offered to make it worth my while if I was to continue my search. I have agreed to continue my investigation for Lavallin and must now wait for the portal to open again.%)
EraseJournalEntry(%A Ring Of Might.

I was not prepared for what I was to meet when I finally encountered Delrysia, for she was now a wretched undead creature, no longer recognisable as human. All of which she blamed on Bartlemy�s necromantic component. She agreed to barter the ring of might if Bartlemy would free her from her undead state. One of the two was lying, that was clear, but I had been given the run around long enough. I decided to end my involvement with them once and for all and get on with my own concerns.%)
EraseJournalEntry(%A Ring Of Might.

I was not prepared for what I was to meet when I finally encountered Delrysia, for she was now a wretched undead creature, no longer recognisable as human. All of which she blamed on Bartlemy�s necromantic component. She agreed to barter the ring of might if Bartlemy would free her from her undead state. I gave Bartlemy�s potion to Delrysia in the hope that it would restore her. It was a great relief to see that it worked, I had feared that the necromancer may have concocted a potion to harm her rather than cure her. In return she has given me what can only be Bartlemy�s ring of might and a warning that only an elementalist mage should be entrusted to attempt to finish that which they had started.%)
EraseJournalEntry(%A Ring Of Might.

I was not prepared for what I was to meet when I finally encountered Delrysia, for she was now a wretched undead creature, no longer recognisable as human. All of which she blamed on Bartlemy�s necromantic component. She agreed to barter the ring of might if Bartlemy would free her from her undead state.%)
EraseJournalEntry(%A Ring Of Might.

Bartlemy has told me of the accident that occurred whilst he and four of his friends were experimenting with some research. It seems he was the only one to survive the explosion and was banned from the academy. To set foot on Halruaa grounds would be instant death for him, hence the use of the goblin and the portal to retrieve his item. He has asked me to help him in his search in return for the way out of this place... whereas he can teleport in and out, the portal is my only escape. He assures me that his death would instantly seal the exit for good. After agreeing to help the mage... as I see it he has left me very little choice if I want to get out of this place... he told me a little more of the item I was to find, a rare and very powerful elemental artifact known as a ring of might. If I manage to find it he�ll share with me the secrets of its construction... I am not so sure that�s a good idea if his last attempt is anything to go by.%)
EraseJournalEntry(%A Ring Of Might.

I gave Bartlemy�s potion to Delrysia in the hope that it would restore her. It was a great relief to see that it worked, I had feared that the necromancer may have concocted a potion to harm her rather than cure her. In return she has given me what can only be Bartlemy�s ring of might and a warning that only an elementalist mage should be entrusted to attempt to finish that which they had started.%)
EraseJournalEntry(%A Ring Of Might.

Bartlemy has told me of the accident that occurred whilst he and four of his friends were experimenting with some research. It seems he was the only one to survive the explosion and was banned from the academy. To set foot on Halruaa grounds would be instant death for him, hence the use of the goblin and the portal to retrieve his item. He has asked me to help him in his search in return for the way out of this place... whereas he can teleport in and out, the portal is my only escape. He assures me that his death would instantly seal the exit for good. I will not be coerced into doing anyone�s bidding! I asked him to hand over whatever the goblin had stolen and the key to the portal... he then laughed and attacked, along with his goblin friend.%)
EraseJournalEntry(%A Ring Of Might.

The search of Lavallin�s room revealed yet another interested party in this ring of might... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring. Is there any truth in the words of this mage I asked myself? Or was I once again being used as a pawn in the power struggles of others? Whatever the truth I decided to have no further part in this quest and when asked to return all that his goblin had stolen, Bartlemy merely laughed and attacked me, along with his goblin friend.%)
EraseJournalEntry(%A Ring Of Might.

The search of Lavallin�s room revealed yet another interested party in this ring of might... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring.%)
EraseJournalEntry(%A Ring Of Might.

The search for the "Ring of Might" revealed yet another interested party in this cursed ring... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring.%)
EraseJournalEntry(%A Ring Of Might.

The search for the "Ring of Might" revealed yet another interested party in this ring of might... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring. Is there any truth in the words of this mage I asked myself? Or was I once again being used as a pawn in the power struggles of others? Whatever the truth I decided to have no further part in this quest and when asked to return all that his goblin had stolen, Bartlemy merely laughed and attacked me, along with his goblin friend.%)
EraseJournalEntry(%A Ring Of Might.

The search of Lavallin�s room revealed yet another interested party in this ring of might... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring. Is there any truth in the words of this mage I asked myself? Or was I once again being used as a pawn in the power struggles of others? Whatever the truth I decided to have no further part in this quest and when asked to return all that his goblin had stolen, Bartlemy merely laughed and attacked me, along with his goblin friend.%)
AddexperienceParty(19500)
GiveItemCreate("POTN33",Player1,1,0,0)
GiveItemCreate("POTN34",Player1,1,0,0)
GiveItemCreate("SCRL8O",Player1,1,0,0)
GivePartyGold(500)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutT37")~ EXIT
END

IF WEIGHT #-19 ~Global("VP_My_Quest_IsOver","LOCALS",0)
GlobalGT("VP_Lavallins_Plot","GLOBAL",10)
GlobalGT("VP_Meeting_Delrysia","GLOBAL",1)
Global("VP_Restore_Ring","GLOBAL",0)
OR(3)
Global("VP_LvQuest_Done","GLOBAL",1)
Global("VP_LvQuest_Botched","GLOBAL",1)
Global("VP_Delrisia_Letter","GLOBAL",3)~ THEN BEGIN 40
  SAY ~What news <CHARNAME>?~
  IF ~Dead("Bartlemy")~ THEN REPLY ~Bartlemy has admitted that he knew of Delrysia�s fate. The fiend was going to trade this potion that I took from his body for his ring... he said that it would free her from the undead state she is condemned to suffer.~ DO ~SetGlobal("VP_My_Quest_IsOver","LOCALS",1)~ GOTO 35
  IF ~!Dead("Bartlemy")~ THEN REPLY ~It seems Delrysia was condemned to live in a state of undead as a result of the accident and Bartlemy knew this but not that she had remained on academy grounds... living in the sewers. He has given me a potion which he assures me will free her and I am to barter it for his ring.~ DO ~SetGlobal("VP_My_Quest_IsOver","LOCALS",1)~ GOTO 35
  IF ~!Dead("Bartlemy")~ THEN REPLY ~Since the accident, Delrysia has been condemned to a state of undead and forced to live in the sewers. Bartlemy knows of her plight and has given me a potion which will free her, in exchange for his ring. Both have sought to use me for their own ends so I am, as of yet,  undecided as to what I will do.~ DO ~SetGlobal("VP_My_Quest_IsOver","LOCALS",1)~ GOTO 35
END

IF WEIGHT #1 ~Global("VP_Return_Ring","LOCALS",0)
GlobalGT("VP_Lavallins_Plot","GLOBAL",10)
GlobalGT("VP_Meeting_Delrysia","GLOBAL",1)
GlobalGT("VP_Restore_Ring","GLOBAL",0)~ THEN BEGIN 41
  SAY ~It is good to see you once again my intrepid mageling. Is it spell components that you seek or does your visit herald news of the lost ring of might? ~
  IF ~~ THEN REPLY ~I would like to browse those free spell components you promised me Lavallin.~ DO ~SetGlobal("VP_Return_Ring","LOCALS",1)~ GOTO 57
  IF ~~ THEN REPLY ~I thought you might like to know that I have found Bartlemy�s ring. You have no longer need to worry about it falling into the wrong hands Lavallin... I intend  keeping it very safe.~ DO ~SetGlobal("VP_Return_Ring","LOCALS",1)~ GOTO 42
  IF ~PartyHasItem("DeRing")~ THEN REPLY ~I have found the ring and I bring it to you Lavallin. I want no trouble from it, nor from the mages here, so please, take the accursed thing.~ DO ~SetGlobal("VP_Return_Ring","LOCALS",1)~ GOTO 52
END

IF ~~ THEN BEGIN 42
  SAY ~(*He becomes excited and his eyes widen as speaks*)... You have found Bartlemy�s ring of might! Please, for your own safety, I urge you to reconsider and give it to me. It is the only way to be sure that no more students will suffer for the sake of trying to finish it.~
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43
  SAY ~What use is it to you in its present state? You will find none here willing to jeopardise their future at the academy and aid you in its completion.~
  IF ~~ THEN REPLY ~It�s a pretty enough bauble, and if as you say it is no use in its present state, then there can be no harm in me keeping it.~ GOTO 44
  IF ~~ THEN REPLY ~Those two led me a merry dance over this bauble, I think I have earned the right to keep it... don�t you Lavallin? ~ GOTO 44
  IF ~~ THEN REPLY ~I will keep it anyway, just because the mages here are too scared to aid me, doesn�t mean that I won�t find a mage somewhere, at some future time who will.~ GOTO 46
  IF ~~ THEN REPLY ~This little bauble really scares you doesn�t it Lavallin?~ GOTO 49
END

IF ~~ THEN BEGIN 44
  SAY ~You realise of course that I could easily wrest it from you if I chose to, and had the ring been intact, then I would have no choice other than to take it from you, but I�ll not fight you <CHARNAME>, enough blood has already been spilt over it.~
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45
	SAY ~A warning though, if I hear even a whisper that a student is attempting to restore the ring then I will tell the senior mages all I that know, and then you will have them to answer to. You will not be able to rely on me to defend you once the matter has left my hands. I think I have made myself clear. Now I bid you farewell and wish you luck in your studies at Halruaa.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 46
  SAY ~I�ll not fight you for the ring <CHARNAME>, enough blood has been spilt over it already and I don�t want to add yours to it. Do as you will once you leave the academy, although I would urge you to think twice before seeking to restore it.~
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47
  SAY ~A warning <CHARNAME>... for your own safety, whilst you are on academy grounds you will not speak a word of this to anyone and if even a whisper reaches my ear, that a student is attempting to restore the ring then I will tell the senior mages all that I know... then you will have them to answer to.~
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48
  SAY ~You will not be able to rely on me to defend you once the matter has left my hands. I think I have made myself clear. Now I bid you farewell and wish you luck in your studies at Halruaa.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 49
  SAY ~It does <CHARNAME> and I�m not ashamed to admit it. Intact, it is a very powerful artifact, and in its present state it is as I said harmless. However, the method of construction is very dangerous unless one knows what they are doing. You have seen the misery caused by Bartlemy and his friends attempt.~
  IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 50
  SAY ~Admittedly he tried to add to it his own component, but the original design was lost with the death of the first mages ever to succeed, and not enough is known to attempt to recreate their work.~
  IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 51
  SAY ~To know that such an artifact is in the academy, possibly in the hands of a novice magic user who doesn�t know what it is he holds, causes me to fear not only for his life but for the lives of the unsuspecting and innocent around him. Yes, that little bauble scares me.~
  IF ~~ THEN REPLY ~It�s a pretty enough bauble, and if as you say it is harmless in its present state, then there can be no harm in me keeping it.~ GOTO 44
  IF ~~ THEN REPLY ~I think I will keep anyway, just because the mages here are too scared to aid me, doesn�t mean that I won�t find a mage somewhere, at some future time who will.~ GOTO 46
  IF ~PartyHasItem("DeRing")~ THEN REPLY ~With such a history the ring is surely cursed... take it and do with it as you see fit.~ GOTO 52
END

IF ~~ THEN BEGIN 52
  SAY ~(*Looking at the ring*)... One has to wonder how so small an item can have caused so much destruction, even incomplete it is an exquisite artifact... (*Then closing his hand over it*)...~
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53
  SAY ~You have done the only thing you could <CHARNAME>, as long as it remains at the academy it will bring no more grief to those who covet it. Please accept this small reward and my thanks on behalf of all here at Halruaa.~
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54
  SAY ~Now, I must get this *bauble*, as you call it, to a place where it will be safe... where it can do no more harm to the academy or to those who work and study here. I bid you farewell and wish you luck in your studies at Halruaa.~
	IF ~~ THEN DO ~TakePartyItem("DeRing")
GiveItemCreate("BOOKINF",LastTalkedToBy,0,0,0)
AddXPObject(Player1,45500)
AddXPObject(Player2,45500)
AddXPObject(Player3,45500)
AddXPObject(Player4,45500)
AddXPObject(Player5,45500)
AddXPObject(Player6,45500)~ EXIT
END

IF WEIGHT #-8 ~Global("VP_Lavallins_Plot","GLOBAL",6)~ THEN BEGIN 55
  SAY ~Ah, you return <CHARNAME>. Is there something else?~
  IF ~~ THEN REPLY ~I have thought on your offer and, I will help you Lavallin.~ DO ~EraseJournalEntry(%Lavallin�s Thief.

I declined to help a mage named Lavallin search for his petty thief. I really do not have the time to let myself be side tracked... the quicker I can find the information that I came here for, the quicker I can do the necessary and get back to my search for Imoen and Irenicus.%)~ GOTO 15
  IF ~~ THEN REPLY ~The thought of the reward brought me back Lavallin, so the sooner we sort this thief out the quicker it will be mine.~ DO ~EraseJournalEntry(%Lavallin�s Thief.

I declined to help a mage named Lavallin search for his petty thief. I really do not have the time to let myself be side tracked... the quicker I can find the information that I came here for, the quicker I can do the necessary and get back to my search for Imoen and Irenicus.%)~ GOTO 15
  IF ~~ THEN REPLY ~I would like to see what you have for sale.~ GOTO 57
END

IF ~Global("VP_Lavallins_Plot","GLOBAL",9)
OR(2)
Global("VP_LvQuest_Botched","GLOBAL",1)
Global("VP_LvQuest_Done","GLOBAL",1)~ THEN BEGIN 56
  SAY ~Ah, you return <CHARNAME>. May I help you?~
  IF ~~ THEN REPLY ~I would like to see what you have for sale.~ GOTO 57
  IF ~~ THEN REPLY ~Not at the moment.~ EXIT
END

IF ~~ THEN BEGIN 57
  SAY ~Of course. I have a wide assortment of spells and spell components.~
  IF ~~ THEN DO ~StartStore("Lavallin",LastTalkedToBy())~ EXIT
END

IF WEIGHT #-9 ~Global("VP_Lavallins_Plot","GLOBAL",9)
Global("VP_LvQuest_Botched","GLOBAL",0)
GlobalLT("VP_Delrisia_Letter","GLOBAL",3)
!Dead("Bartlemy")
!PartyHasItem("DELETTER")~ THEN BEGIN 58
  SAY ~You return <CHARNAME>. Did you discover the identity of our invisible thief?~
  IF ~~ THEN REPLY ~I did. It would appear that your thief is none other than a goblin who, instructed by a mage calling himself Bartlemy, is searching for an artifact that he claims to have lost in this room.~ DO ~SetGlobal("VP_Delrisia_Letter","GLOBAL",3)~ GOTO 59
  IF ~~ THEN REPLY ~I found a mage hiding in the sewers beneath the academy, and he has a trained goblin that he sends to your room in search of a ring he calls a ring of might, but the creature is too stupid to remember what he�s supposed to be looking for, and so he takes the first thing he can lay his hands on.~ DO ~SetGlobal("VP_Delrisia_Letter","GLOBAL",3)~ GOTO 59
  IF ~~ THEN REPLY ~I discovered a mage named Bartlemy holed up under the academy, he appears to know a lot about this accident that you mentioned earlier. As for your thief, it is none other than a goblin who he sends searching for a lost ring of his.~ DO ~SetGlobal("VP_Delrisia_Letter","GLOBAL",3)~ GOTO 59
END

IF ~~ THEN BEGIN 59
  SAY ~Bartlemy... (*sighs*)... are you saying these thefts are about that damned ring of might! Has Bartlemy�s obsession with that artifact brought him back to Halruaa, even at the risk to his own life... will this madness of his never end!~
  IF ~~ THEN REPLY ~I have heard his story but I am not at all sure that I trust him. I would prefer to hear what you have to say about it.~ GOTO 60
  IF ~~ THEN REPLY ~Madness maybe, obsession yes. One thing you can be sure of, and that is he isn�t going to go away until he has found his ring.~ GOTO 60
END

IF ~~ THEN BEGIN 60
  SAY ~I don�t know how much truth there is in his story, no more than I know the truth of the story as it is told here in the academy, but I will tell it to you as I was told...~
  IF ~~ THEN GOTO 61
END

IF ~~ THEN BEGIN 61
  SAY ~A few years back, five very talented students sought to forge a powerful artifact known as a "Ring of Might". They were forbidden to attempt such a feat but went ahead anyway secretly in this very room.~
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 62
  SAY ~It is said, but not known for sure, that it takes a mage from each of the four elemental schools working together to achieve this, so why a necromancer was involved no one knows. Anyway, they failed and the explosion that followed destroyed this part of the building and left three of them dead.~
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 63
  SAY ~What became of the fourth, Delrysia, is unknown as only Bartlemy was discovered, unconscious and near death at the scene. After his recovery, he was banished and warned that to set foot on Halruaa soil again would mean his death, still, that doesn�t seem to have deterred him, as I see he has somehow got around that little hindrance.~
  IF ~~ THEN SOLVED_JOURNAL ~A Ring Of Might.

I have solved the problem of Lavallin�s thief and in doing so I encountered a necromancer by name of Bartlemy. He explained that he was searching for an artifact, an item that he had lost some years previous whilst conducting an experiment in Lavallin�s room. On my return to Lavallin I learnt more of Bartlemy�s mysterious item... a ring of might, an artifact that both students and tutors, even the most senior of Halruaa are banned from attempting to construct.~ GOTO 64
END

IF ~~ THEN BEGIN 64
  SAY ~With the disappearance of Delrysia, the truth of what happened has never come to light, although it is rumoured they were very close to completing the artifact.~
  IF ~~ THEN REPLY ~Well, now that you know who your thief is maybe you can do something to stop him gaining access to your room. I want nothing more to do with it.~ GOTO 65
  IF ~~ THEN REPLY ~Sounds like a very valuable and troublesome artifact, not something I want to get involved with at this time.~ GOTO 65
  IF ~~ THEN REPLY ~Mmm... maybe I will investigate some more... sounds like this ring is worth recovering.~ GOTO 69
  IF ~~ THEN REPLY ~Do you think it possible that Delrysia has found her way back and she has the ring?~ GOTO 71
END

IF ~~ THEN BEGIN 65
  SAY ~Please <CHARNAME>, I implore you, if this ring is still on academy grounds then it is imperative that you continue your search to find it and deliver it into the safe keeping of the academy.~
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66
  SAY ~We can not risk it falling into the hands of any of the students here. The gods know it�s caused enough grief already!~
  IF ~~ THEN REPLY ~Sorry Lavallin, this is not my problem. I have done as you asked and it is for you to deal with Bartlemy. Now, the small matter of a reward?~ GOTO 67
  IF ~~ THEN REPLY ~I am sorry Lavallin but this looks as though it is going to need more time than I am prepared to give. If however, I do discover more about the whereabouts of Bartlemy�s ring, I will be sure to drop by and let you know.~ GOTO 67
  IF ~~ THEN REPLY ~I will speak with Bartlemy again. If he knows the whereabouts of this Delrysia, then maybe I�ll be able to spare a little more time to look into it further for you.~ GOTO 69
END

IF ~~ THEN BEGIN 67
  SAY ~(*Sighs*)... Then I guess our business is concluded. If you do decide to continue with this search at a later time and retrieve Bartlemy�s accursed ring, I ask only that you consider giving it to the safe keeping of the academy, enough young lives have been lost already thanks to his folly... bring the ring to me and I will make sure it is put forever out of harms way.~
  IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 68
  SAY ~Now please, you must excuse me <CHARNAME>, I have other matters that need my attention. Please accept these items and remember my offer if ever you find the need for components. Farewell and thank you again <CHARNAME>.~
  IF ~~ THEN DO ~SetGlobal("VP_LvQuest_Done","GLOBAL",1)
EraseJournalEntry(%Lavallin�s Thief.

I have agreed to help a mage named Lavallin solve his problem of disappearing items. So, after casting a spell to make the room appear empty and warning me not to touch anything, he left to attend to a more urgent matter he said. I can�t help but wonder if that matter is anything to do with my quest here.%)
EraseJournalEntry(%Lavallin�s Thief.

I declined to help a mage named Lavallin search for his petty thief. I really do not have the time to let myself be side tracked... the quicker I can find the information that I came here for, the quicker I can do the necessary and get back to my search for Imoen and Irenicus.%)
EraseJournalEntry(%Lavallin�s Thief.

I didn�t have to wait long to discover how Lavallin�s thief was entering his room... a portal opened and I heard someone searching about the room but he must have been cloaked by some invisibility enchantment for I could see no one. After telling Lavallin what I had discovered he offered to make it worth my while if I was to continue my search. I have agreed to continue my investigation for Lavallin and must now wait for the portal to open again.%)
EraseJournalEntry(%A Ring Of Might.

I was not prepared for what I was to meet when I finally encountered Delrysia, for she was now a wretched undead creature, no longer recognisable as human. All of which she blamed on Bartlemy�s necromantic component. She agreed to barter the ring of might if Bartlemy would free her from her undead state. One of the two was lying, that was clear, but I had been given the run around long enough. I decided to end my involvement with them once and for all and get on with my own concerns.%)
EraseJournalEntry(%A Ring Of Might.

I was not prepared for what I was to meet when I finally encountered Delrysia, for she was now a wretched undead creature, no longer recognisable as human. All of which she blamed on Bartlemy�s necromantic component. She agreed to barter the ring of might if Bartlemy would free her from her undead state. I gave Bartlemy�s potion to Delrysia in the hope that it would restore her. It was a great relief to see that it worked, I had feared that the necromancer may have concocted a potion to harm her rather than cure her. In return she has given me what can only be Bartlemy�s ring of might and a warning that only an elementalist mage should be entrusted to attempt to finish that which they had started.%)
EraseJournalEntry(%A Ring Of Might.

I was not prepared for what I was to meet when I finally encountered Delrysia, for she was now a wretched undead creature, no longer recognisable as human. All of which she blamed on Bartlemy�s necromantic component. She agreed to barter the ring of might if Bartlemy would free her from her undead state.%)
EraseJournalEntry(%A Ring Of Might.

Bartlemy has told me of the accident that occurred whilst he and four of his friends were experimenting with some research. It seems he was the only one to survive the explosion and was banned from the academy. To set foot on Halruaa grounds would be instant death for him, hence the use of the goblin and the portal to retrieve his item. He has asked me to help him in his search in return for the way out of this place... whereas he can teleport in and out, the portal is my only escape. He assures me that his death would instantly seal the exit for good. After agreeing to help the mage... as I see it he has left me very little choice if I want to get out of this place... he told me a little more of the item I was to find, a rare and very powerful elemental artifact known as a ring of might. If I manage to find it he�ll share with me the secrets of its construction... I am not so sure that�s a good idea if his last attempt is anything to go by.%)
EraseJournalEntry(%A Ring Of Might.

I gave Bartlemy�s potion to Delrysia in the hope that it would restore her. It was a great relief to see that it worked, I had feared that the necromancer may have concocted a potion to harm her rather than cure her. In return she has given me what can only be Bartlemy�s ring of might and a warning that only an elementalist mage should be entrusted to attempt to finish that which they had started.%)
EraseJournalEntry(%A Ring Of Might.

Bartlemy has told me of the accident that occurred whilst he and four of his friends were experimenting with some research. It seems he was the only one to survive the explosion and was banned from the academy. To set foot on Halruaa grounds would be instant death for him, hence the use of the goblin and the portal to retrieve his item. He has asked me to help him in his search in return for the way out of this place... whereas he can teleport in and out, the portal is my only escape. He assures me that his death would instantly seal the exit for good. I will not be coerced into doing anyone�s bidding! I asked him to hand over whatever the goblin had stolen and the key to the portal... he then laughed and attacked, along with his goblin friend.%)
EraseJournalEntry(%A Ring Of Might.

The search of Lavallin�s room revealed yet another interested party in this ring of might... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring. Is there any truth in the words of this mage I asked myself? Or was I once again being used as a pawn in the power struggles of others? Whatever the truth I decided to have no further part in this quest and when asked to return all that his goblin had stolen, Bartlemy merely laughed and attacked me, along with his goblin friend.%)
EraseJournalEntry(%A Ring Of Might.

The search of Lavallin�s room revealed yet another interested party in this ring of might... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring.%)
EraseJournalEntry(%A Ring Of Might.

The search for the "Ring of Might" revealed yet another interested party in this cursed ring... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring.%)
EraseJournalEntry(%A Ring Of Might.

The search for the "Ring of Might" revealed yet another interested party in this ring of might... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring. Is there any truth in the words of this mage I asked myself? Or was I once again being used as a pawn in the power struggles of others? Whatever the truth I decided to have no further part in this quest and when asked to return all that his goblin had stolen, Bartlemy merely laughed and attacked me, along with his goblin friend.%)
EraseJournalEntry(%A Ring Of Might.

The search of Lavallin�s room revealed yet another interested party in this ring of might... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring. Is there any truth in the words of this mage I asked myself? Or was I once again being used as a pawn in the power struggles of others? Whatever the truth I decided to have no further part in this quest and when asked to return all that his goblin had stolen, Bartlemy merely laughed and attacked me, along with his goblin friend.%)
AddexperienceParty(19500)
GiveItemCreate("POTN33",Player1,1,0,0)
GiveItemCreate("POTN34",Player1,1,0,0)
GiveItemCreate("SCRL8O",Player1,1,0,0)
GivePartyGold(5000)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutT37")~ EXIT
END

IF ~~ THEN BEGIN 69
  SAY ~Thank you <CHARNAME>. Regardless of whether the ring is complete or not, I would feel a lot safer knowing that it is out of harms way. Enough young lives have already been lost through Bartlemy�s folly. If it were to fall into inexperienced hands, we could have another similar tragedy to mop up.~
  IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 70
  SAY ~Find the ring and bring it to me... I will make sure it is put forever out of harms way.~
  IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 71
  SAY ~It is possible, as I said, no one knows what became of her. Although she must be very capable as my wards are set to deter any mage or student gaining access. I guess I never suspected a goblin or any other type of creature for that matter would have access to the academy. Bartlemy was always a bright student, too bright for his own good as it turned out.~
  IF ~~ THEN GOTO 72
END

IF ~~ THEN BEGIN 72
  SAY ~It may be a good idea to return and speak to Bartlemy about Delrysia, he may know more than he is telling you. The ring that he speaks of is not a thing that should be left for inexperienced hands to find... you would do Halruaa a great favour if you are able to find it and deliver it in to the hands of the mages here for safe keeping <CHARNAME>... the gods know it�s caused enough grief already!~
  IF ~~ THEN REPLY ~Sorry Lavallin, this is not my problem. I have done as you asked and it is for you to deal with Bartlemy. Now, the small matter of a reward?~ GOTO 67
  IF ~~ THEN REPLY ~I am sorry Lavallin but this looks as though it is going to need more time than I am prepared to give. If however, I do discover more about the whereabouts of Bartlemy�s ring, I will be sure to drop by and let you know.~ GOTO 67
  IF ~~ THEN REPLY ~I will speak with Bartlemy again. If he knows the whereabouts of this Delrysia, then maybe I�ll be able to spare a little more time to look into it further for you.~ GOTO 69
END

IF WEIGHT #-9 ~Global("VP_Find_Delrysia","LOCALS",0)
Global("VP_Lavallins_Plot","GLOBAL",9)
GlobalLT("VP_Meeting_Delrysia","GLOBAL",2)
Global("VP_Delrisia_Letter","GLOBAL",3)
Dead("Bartlemy")~ THEN BEGIN 73
//Double check because this condition Dead("Bartlemy") is true
//for *VP_Meeting_Delrysia* < 2 only if *VP_Lavallins_Plot* = 2
  SAY ~Tell me <CHARNAME>, were you able to discover the whereabouts of Delrysia?~
  IF ~~ THEN REPLY ~Bartlemy told me I would find Delrysia in the sewers. I suspect that there is more than what he is telling  me, but I agreed to check it out for him.~ DO ~SetGlobal("VP_Find_Delrysia","LOCALS",1)~ GOTO 74
  IF ~~ THEN REPLY ~Bartlemy was very cagey, but he seems convinced that I�ll find Delrysia, and his ring in the sewers.~ DO ~SetGlobal("VP_Find_Delrysia","LOCALS",1)~ GOTO 74
  IF ~~ THEN REPLY ~Bartlemy got very angry at the mention Delrysia and told me to go look in the sewers for her and his ring.~ DO ~SetGlobal("VP_Find_Delrysia","LOCALS",1)~ GOTO 74
  IF ~~ THEN REPLY ~The little weasel, Bartlemy said that Delrysia is probably in the sewers and spun me some yarn about her being responsible for his friends deaths. I didn�t believe him and when I refused to murder her he attacked me, him and that goblin of his... big mistake on his part.~ DO ~SetGlobal("VP_Find_Delrysia","LOCALS",1)~ GOTO 74
END

IF ~~ THEN BEGIN 74
  SAY ~The sewers... why on earth would Delrysia be living in the sewers? She came from a very well to do family, it was presumed that was where she ran to after the accident. Unless of course, she chose to stay close to the academy in the hope of completing the ring at some future time. Is it your intention to check his story out <CHARNAME>?~
  IF ~~ THEN REPLY ~Bartlemy is dead but there is still the missing ring to find... I think I�ll go see if this Delrysia is hiding in the sewers. Seems unlikely but there�s no harm in taking a look.~ GOTO 75
  IF ~~ THEN REPLY ~Oh I am going to check it out alright... if this ring of might is as powerful as you all say and Bartlemy was prepared to risk his neck for it, putting up with the filth of the sewers is a small price to pay to possess it.~ GOTO 75
END

IF ~~ THEN BEGIN 75
  SAY ~Then I wish you luck in your search <CHARNAME>. It will be a relief to know one way or another whether that accursed ring is still in the academy and I sincerely hope that you will consider bringing it to me for safe keeping should you discover that Delrysia has it. Now please, you must excuse me, I have other matters that need my attention.~
  IF ~~ THEN EXIT
END

IF WEIGHT #-10 ~Global("VP_Find_Delrysia","LOCALS",0)
Global("VP_Lavallins_Plot","GLOBAL",10)
GlobalLT("VP_Meeting_Delrysia","GLOBAL",2)
Global("VP_Delrisia_Letter","GLOBAL",3)
!Dead("Bartlemy")~ THEN BEGIN 76
//Double check because this condition !Dead("Bartlemy") is true
//for *VP_Meeting_Delrysia* < 2 only if *VP_Lavallins_Plot* = 10
  SAY ~Tell me <CHARNAME>, were you able to discover the whereabouts of Delrysia?~
  IF ~~ THEN REPLY ~Bartlemy told me I would find Delrysia in the sewers. I suspect that there is more than what he is telling  me, but I agreed to check it out for him.~ DO ~SetGlobal("VP_Find_Delrysia","LOCALS",1)~ GOTO 77
  IF ~~ THEN REPLY ~Bartlemy was very cagey, but he seems convinced that I�ll find Delrysia, and his ring in the sewers.~ DO ~SetGlobal("VP_Find_Delrysia","LOCALS",1)~ GOTO 77
  IF ~~ THEN REPLY ~Bartlemy got very angry at the mention Delrysia and told me to go look in the sewers for her and his ring.~ DO ~SetGlobal("VP_Find_Delrysia","LOCALS",1)~ GOTO 77
END

IF ~~ THEN BEGIN 77
  SAY ~The sewers... why on earth would Delrysia be living in the sewers? She came from a very well to do family, it was presumed that was where she ran to after the accident. Unless of course, she chose to stay close to the academy in the hope of completing the ring at some future time. Is it your intention to check his story out <CHARNAME>?~
  IF ~~ THEN REPLY ~I think I�ll go see if this Delrysia is hiding in the sewers. Seems unlikely but there�s no harm in taking a look.~ GOTO 78
  IF ~~ THEN REPLY ~I have already decided to seek out Delrysia and hear her version of all this before I confront Bartlemy again.~ GOTO 78
  IF ~~ THEN REPLY ~Oh I am going to check it out alright... if this ring of might is as powerful as you all say, putting up with the filth of the sewers is a small price to pay to possess it.~ GOTO 78
END

IF ~~ THEN BEGIN 78
  SAY ~Then I wish you luck in your search <CHARNAME>. It will be a relief to know one way or another whether that accursed ring is still in the academy and I sincerely hope that you will consider bringing it to me for safe keeping should you discover that Delrysia has it. Now please, you must excuse me, I have other matters that need my attention.~
  IF ~~ THEN EXIT
END

IF WEIGHT #-11 ~Global("VP_Lavallins_Plot","GLOBAL",9)
Global("VP_LvQuest_Done","GLOBAL",0)
Global("VP_LvQuest_Botched","GLOBAL",0)
GlobalLT("VP_Delrisia_Letter","GLOBAL",3)
GlobalLT("VP_Meeting_Delrysia","GLOBAL",2)
!Dead("Bartlemy")
PartyHasItem("DELETTER")~ THEN BEGIN 79
  SAY ~So, what news do you bring me <CHARNAME>?~
  IF ~~ THEN REPLY ~It would appear that your thief is none other than a goblin who, instructed by a mage calling himself Bartlemy, is searching for an artifact that he claims to have lost in this room.~ GOTO 59
  IF ~~ THEN REPLY ~I found a mage hiding in the sewers beneath the academy, and he has a trained goblin that he sends to your room in search of a ring he calls a ring of might, but the creature is too stupid to remember what he�s supposed to be looking for, and so he takes the first thing he can lay his hands on.~ GOTO 59
  IF ~~ THEN REPLY ~I discovered a mage named Bartlemy holed up under the academy, he appears to know a lot about this accident that you mentioned earlier. As for your thief, it is none other than a goblin who he sends searching for a lost ring of his.~ GOTO 59
	IF ~~ THEN REPLY ~I have been asked to find a ring by a mage who claims to have lost it in your room. Now according to this letter here, someone named Delrysia has taken it.~ GOTO 80
END

IF ~~ THEN BEGIN 80
  SAY ~Bartlemy, Delrysia... are you saying these thefts are about that damned ring of might! Has Bartlemy�s obsession with that artifact brought him back to Halruaa, even at the risk to his own life... will this madness of his never end!~
  IF ~~ THEN REPLY ~I have heard his story but I am not at all sure that I trust him. I would prefer to hear what you have to say about it.~ GOTO 60
  IF ~~ THEN REPLY ~Madness maybe, obsession yes. One thing you can be sure of, and that is he isn�t going to go away until he has found his ring.~ GOTO 60
	IF ~~ THEN REPLY ~He has told me of the accident and how he was unfairly blamed. All he wants is the ring he lost here at the time.~ GOTO 60
END

IF WEIGHT #-12 ~Global("VP_Lavallins_Plot","GLOBAL",9)
Global("VP_LvQuest_Done","GLOBAL",0)
Global("VP_LvQuest_Botched","GLOBAL",0)
Global("VP_Meeting_Delrysia","GLOBAL",2)
GlobalLT("VP_Delrisia_Letter","GLOBAL",3)
Dead("Bartlemy")
Dead("Delrysia")~ THEN BEGIN 81
  SAY ~You startled me, <CHARNAME>! I do not see our little thief with you, did you not discover him?~ [laval15]
  IF ~~ THEN REPLY ~I do indeed Lavallin. It seems a necromancer by name of Bartlemy was using the portal to enable a goblin to gain access to your room, in order to search for a ring of might he had lost in this room, but it had already been found by another.~ GOTO 82
  IF ~~ THEN REPLY ~I discovered a mage named Bartlemy holed up under the academy, he appeared to know a lot about this accident that you mentioned earlier. As for your thief, it was none other than a goblin who he sent searching for a lost ring of his.~ GOTO 82
  IF ~~ THEN REPLY ~He is dead Lavallin. They all are, the goblin thief, Bartlemy and Delrysia.~ GOTO 38
  IF ~~ THEN REPLY ~You will have no more trouble from Bartlemy nor Delrysia. I have made sure of that.~ GOTO 38
  IF ~~ THEN REPLY ~They are all dead Lavallin. The necromancer Bartlemy, Pung his little thief, Delrysia, and the Ring of Might, the cause of this trouble is still lost.~ GOTO 38
END

IF ~~ THEN BEGIN 82
  SAY ~Bartlemy... I know the name. So this is all about that accursed ring of his. I don�t know what he has told you but I will tell you briefly what I  know of Bartlemy, his friends and their quest to construct a ring of might... or at least as the story was told to me.~
  IF ~~ THEN GOTO 83
END

IF ~~ THEN BEGIN 83
  SAY ~A few years back, five very talented students sought to forge a powerful artifact known as a "Ring of Might". They were forbidden to attempt such a feat but went ahead anyway secretly in this very room.~
  IF ~~ THEN GOTO 84
END

IF ~~ THEN BEGIN 84
  SAY ~It is said, but not known for sure, that it takes a mage from each of the four elemental schools working together to achieve this, so why a necromancer was involved no one knows. Anyway, they failed and the explosion that followed destroyed this part of the building and left three of them dead.~
  IF ~~ THEN GOTO 85
END

IF ~~ THEN BEGIN 85
  SAY ~What became of the fifth student, Delrysia, is unknown as only Bartlemy was discovered, unconscious and near death at the scene. After his recovery, he was banished and warned that to set foot on Halruaa soil again would mean his death, still, that doesn�t seem to have deterred him.~
  IF ~~ THEN GOTO 86
END

IF ~~ THEN BEGIN 86
  SAY ~With the disappearance of Delrysia, the truth of what happened has never come to light, although it is rumoured they were very close to completing the artifact.~
  IF ~~ THEN REPLY ~I discovered Delrysia, transformed by the accident into an undead creature and living in the sewers. Both she and Bartlemy attempted to use me for their own ends, Delrysia has paid for that mistake as well as the necromancer!~ GOTO 87
  IF ~~ THEN REPLY ~I have discovered Delrysia Lavallin. Unfortunately, the accident had left her as an undead creature and I found her living in the sewers. I gave her the only release possible, I gave her death.~ GOTO 87
  IF ~~ THEN REPLY ~Both Delrysia and Bartlemy have paid for their foolishness and that I believe ends our business... except of course, the small matter of a reward?~ GOTO 87
END

IF ~~ THEN BEGIN 87
  SAY ~(*Shaking his head sadly*) Poor, foolish Delrysia! Such a waste, it was said she possessed a great mind and was destined for an equally great future in the school of elemental magic! Why oh why did she let herself be caught up in Bartlemy�s insane idea!~
  IF ~~ THEN GOTO 88
END

IF ~~ THEN BEGIN 88
  SAY ~We all thought that the necromancer had given up his obsession, we never dreamt that he would be foolish enough to risk his life and return to look for it... not after all this time.~
  IF ~~ THEN GOTO 89
END

IF ~~ THEN BEGIN 89
  SAY ~What of the ring of might <CHARNAME>, the cause of all this heartache... were you able to discover its whereabouts and retrieve it?~
  IF ~~ THEN REPLY ~Sorry no, the ring is lost Lavallin.~ GOTO 90
END

IF ~~ THEN BEGIN 90
  SAY ~Perhaps that is not a bad thing <CHARNAME>. I see why Halruaa has banned their construction, one only has to look at the misery Bartlemy�s attempts have wrought.~
  IF ~~ THEN GOTO 91
END

IF ~~ THEN BEGIN 91
  SAY ~If you continue with this search and you do manage to retrieve his accursed ring, I ask only that you consider giving it to the safe keeping of the academy, enough young lives have been lost already thanks to his folly... bring the ring to me and I will make sure it is put forever out of harms way.~
  IF ~~ THEN GOTO 92
END

IF ~~ THEN BEGIN 92
  SAY ~Please take these items and let me wish you luck in your endeavours <CHARNAME>, you are by far, one of the most resourceful students I have had the pleasure to see at our academy in a long while.~
  IF ~~ THEN DO ~SetGlobal("VP_LvQuest_Done","GLOBAL",1)
EraseJournalEntry(%Lavallin�s Thief.

I have agreed to help a mage named Lavallin solve his problem of disappearing items. So, after casting a spell to make the room appear empty and warning me not to touch anything, he left to attend to a more urgent matter he said. I can�t help but wonder if that matter is anything to do with my quest here.%)
EraseJournalEntry(%Lavallin�s Thief.

I declined to help a mage named Lavallin search for his petty thief. I really do not have the time to let myself be side tracked... the quicker I can find the information that I came here for, the quicker I can do the necessary and get back to my search for Imoen and Irenicus.%)
EraseJournalEntry(%Lavallin�s Thief.

I didn�t have to wait long to discover how Lavallin�s thief was entering his room... a portal opened and I heard someone searching about the room but he must have been cloaked by some invisibility enchantment for I could see no one. After telling Lavallin what I had discovered he offered to make it worth my while if I was to continue my search. I have agreed to continue my investigation for Lavallin and must now wait for the portal to open again.%)
EraseJournalEntry(%A Ring Of Might.

I was not prepared for what I was to meet when I finally encountered Delrysia, for she was now a wretched undead creature, no longer recognisable as human. All of which she blamed on Bartlemy�s necromantic component. She agreed to barter the ring of might if Bartlemy would free her from her undead state. One of the two was lying, that was clear, but I had been given the run around long enough. I decided to end my involvement with them once and for all and get on with my own concerns.%)
EraseJournalEntry(%A Ring Of Might.

I was not prepared for what I was to meet when I finally encountered Delrysia, for she was now a wretched undead creature, no longer recognisable as human. All of which she blamed on Bartlemy�s necromantic component. She agreed to barter the ring of might if Bartlemy would free her from her undead state. I gave Bartlemy�s potion to Delrysia in the hope that it would restore her. It was a great relief to see that it worked, I had feared that the necromancer may have concocted a potion to harm her rather than cure her. In return she has given me what can only be Bartlemy�s ring of might and a warning that only an elementalist mage should be entrusted to attempt to finish that which they had started.%)
EraseJournalEntry(%A Ring Of Might.

I was not prepared for what I was to meet when I finally encountered Delrysia, for she was now a wretched undead creature, no longer recognisable as human. All of which she blamed on Bartlemy�s necromantic component. She agreed to barter the ring of might if Bartlemy would free her from her undead state.%)
EraseJournalEntry(%A Ring Of Might.

Bartlemy has told me of the accident that occurred whilst he and four of his friends were experimenting with some research. It seems he was the only one to survive the explosion and was banned from the academy. To set foot on Halruaa grounds would be instant death for him, hence the use of the goblin and the portal to retrieve his item. He has asked me to help him in his search in return for the way out of this place... whereas he can teleport in and out, the portal is my only escape. He assures me that his death would instantly seal the exit for good. After agreeing to help the mage... as I see it he has left me very little choice if I want to get out of this place... he told me a little more of the item I was to find, a rare and very powerful elemental artifact known as a ring of might. If I manage to find it he�ll share with me the secrets of its construction... I am not so sure that�s a good idea if his last attempt is anything to go by.%)
EraseJournalEntry(%A Ring Of Might.

I gave Bartlemy�s potion to Delrysia in the hope that it would restore her. It was a great relief to see that it worked, I had feared that the necromancer may have concocted a potion to harm her rather than cure her. In return she has given me what can only be Bartlemy�s ring of might and a warning that only an elementalist mage should be entrusted to attempt to finish that which they had started.%)
EraseJournalEntry(%A Ring Of Might.

Bartlemy has told me of the accident that occurred whilst he and four of his friends were experimenting with some research. It seems he was the only one to survive the explosion and was banned from the academy. To set foot on Halruaa grounds would be instant death for him, hence the use of the goblin and the portal to retrieve his item. He has asked me to help him in his search in return for the way out of this place... whereas he can teleport in and out, the portal is my only escape. He assures me that his death would instantly seal the exit for good. I will not be coerced into doing anyone�s bidding! I asked him to hand over whatever the goblin had stolen and the key to the portal... he then laughed and attacked, along with his goblin friend.%)
EraseJournalEntry(%A Ring Of Might.

The search of Lavallin�s room revealed yet another interested party in this ring of might... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring. Is there any truth in the words of this mage I asked myself? Or was I once again being used as a pawn in the power struggles of others? Whatever the truth I decided to have no further part in this quest and when asked to return all that his goblin had stolen, Bartlemy merely laughed and attacked me, along with his goblin friend.%)
EraseJournalEntry(%A Ring Of Might.

The search of Lavallin�s room revealed yet another interested party in this ring of might... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring.%)
EraseJournalEntry(%A Ring Of Might.

The search for the "Ring of Might" revealed yet another interested party in this cursed ring... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring.%)
EraseJournalEntry(%A Ring Of Might.

The search for the "Ring of Might" revealed yet another interested party in this ring of might... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring. Is there any truth in the words of this mage I asked myself? Or was I once again being used as a pawn in the power struggles of others? Whatever the truth I decided to have no further part in this quest and when asked to return all that his goblin had stolen, Bartlemy merely laughed and attacked me, along with his goblin friend.%)
EraseJournalEntry(%A Ring Of Might.

The search of Lavallin�s room revealed yet another interested party in this ring of might... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia�s insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring. Is there any truth in the words of this mage I asked myself? Or was I once again being used as a pawn in the power struggles of others? Whatever the truth I decided to have no further part in this quest and when asked to return all that his goblin had stolen, Bartlemy merely laughed and attacked me, along with his goblin friend.%)
AddexperienceParty(19500)
GiveItemCreate("POTN33",Player1,1,0,0)
GiveItemCreate("POTN34",Player1,1,0,0)
GiveItemCreate("SCRL8O",Player1,1,0,0)
GivePartyGold(5000)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutT37")~ EXIT
END

IF WEIGHT #-13 ~Global("VP_Lavallins_Plot","GLOBAL",9)
Global("VP_My_Plot_Ends","LOCALS",0)
Global("VP_Meeting_Delrysia","GLOBAL",2)
Dead("Bartlemy")
Dead("Delrysia")
OR(3)
Global("VP_Delrisia_Letter","GLOBAL",3)
Global("VP_LvQuest_Done","GLOBAL",1)
Global("VP_LvQuest_Botched","GLOBAL",1)~ THEN BEGIN 93
  SAY ~Ah... you return <CHARNAME>, have you good news for me?~
  IF ~~ THEN REPLY ~I discovered Delrysia, transformed by the accident into an undead creature and living in the sewers. Both she and Bartlemy attempted to use me for their own ends, Delrysia has paid for that mistake as well as the necromancer!~ GOTO 94
  IF ~~ THEN REPLY ~I have discovered Delrysia Lavallin. Unfortunately, the accident had left her as an undead creature and I found her living in the sewers. I gave her the only release possible, I gave her death.~ GOTO 94
  IF ~~ THEN REPLY ~Both Delrysia and Bartlemy have paid for their foolishness and that I believe ends our business... except of course, the small matter of a reward?~ GOTO 94
  IF ~~ THEN REPLY ~You will have no more trouble from Bartlemy nor Delrysia. I have made sure of that.~ GOTO 94
  IF ~~ THEN REPLY ~They are all dead Lavallin. The necromancer Bartlemy, Pung his little thief, Delrysia, and the Ring of Might, the cause of this trouble is still lost.~ GOTO 94
END

IF ~~ THEN BEGIN 94
  SAY ~(*Shaking his head sadly*) Poor, foolish Delrysia! Such a waste, it was said she possessed a great mind and was destined for an equally great future in the school of elemental magic! Why oh why did she let herself be caught up in Bartlemy�s insane idea!~
  IF ~~ THEN GOTO 95
END

IF ~~ THEN BEGIN 95
  SAY ~We all thought that the necromancer had given up his obsession, we never dreamt that he would be foolish enough to risk his life and return to look for it... not after all this time.~
  IF ~~ THEN GOTO 96
END

IF ~~ THEN BEGIN 96
  SAY ~What of the ring of might <CHARNAME>, the cause of all this heartache... were you able to discover its whereabouts and retrieve it?~
  IF ~~ THEN REPLY ~Sorry no, the ring is lost Lavallin.~ GOTO 97
END

IF ~~ THEN BEGIN 97
  SAY ~Perhaps that is not a bad thing <CHARNAME>. I see why Halruaa has banned their construction, one only has to look at the misery Bartlemy�s attempts have wrought.~
  IF ~~ THEN GOTO 98
END

IF ~~ THEN BEGIN 98
  SAY ~If you continue with this search and you do manage to retrieve his accursed ring, I ask only that you consider giving it to the safe keeping of the academy, enough young lives have been lost already thanks to his folly... bring the ring to me and I will make sure it is put forever out of harms way.~
  IF ~~ THEN GOTO 99
END

IF ~~ THEN BEGIN 99
  SAY ~Now let me wish you luck in your endeavours <CHARNAME>, you are by far, one of the most resourceful students I have had the pleasure to see at our academy in a long while.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Plot_Ends","LOCALS",1)~ EXIT
END

IF WEIGHT #-14 ~Global("VP_Lavallins_Plot","GLOBAL",9)
Global("VP_LvQuest_Done","GLOBAL",0)
Global("VP_LvQuest_Botched","GLOBAL",0)
Global("VP_Meeting_Delrysia","GLOBAL",3)
GlobalLT("VP_Delrisia_Letter","GLOBAL",3)
Dead("Bartlemy")
!Dead("Delrysia")~ THEN BEGIN 100
//!Dead("Delrysia") is a double check for "VP_Meeting_Delrysia" = 3
  SAY ~Hello again <CHARNAME>. Does your reappearance here mean our little problem is sorted?~
  IF ~~ THEN REPLY ~It does Lavallin. The necromancer Bartlemy, had ensconced himself in a hole below the academy, and was using a goblin to search for a ring he claims to have lost in your room. He�ll not be bothering you again.~ GOTO 101
  IF ~~ THEN REPLY ~It does, Bartlemy the one behind your thefts... lies dead in the hole he had dug himself under the academy in order to gain access to your room, he�ll bother you no more.~ GOTO 101
  IF ~~ THEN REPLY ~It does, as I have already finished my business with Bartlemy, the one behind these thefts of yours.~ GOTO 101
  IF ~~ THEN REPLY ~The one behind these thefts of yours is burried in a hole below the sewers of the academy... a necromancer by name of Bartlemy. He seemed to know an awful lot about that accident you hinted at.~ GOTO 101
END

IF ~~ THEN BEGIN 101
  SAY ~Bartlemy... I know the name. So this is all about that accursed ring of his. I don�t know what he has told you but I will tell you briefly what I  know of Bartlemy, his friends and their quest to construct a ring of might... or at least as the story was told to me.~
  IF ~~ THEN GOTO 102
END

IF ~~ THEN BEGIN 102
  SAY ~A few years back, five very talented students sought to forge a powerful artifact known as a "Ring of Might". They were forbidden to attempt such a feat but went ahead anyway secretly in this very room.~
  IF ~~ THEN GOTO 103
END

IF ~~ THEN BEGIN 103
  SAY ~It is said, but not known for sure, that it takes a mage from each of the four elemental schools working together to achieve this, so why a necromancer was involved no one knows. Anyway, they failed and the explosion that followed destroyed this part of the building and left three of them dead.~
  IF ~~ THEN GOTO 104
END

IF ~~ THEN BEGIN 104
  SAY ~What became of the fifth student, Delrysia, is unknown as only Bartlemy was discovered, unconscious and near death at the scene. After his recovery, he was banished and warned that to set foot on Halruaa soil again would mean his death, still, that doesn�t seem to have deterred him.~
  IF ~~ THEN GOTO 105
END

IF ~~ THEN BEGIN 105
  SAY ~With the disappearance of Delrysia, the truth of what happened has never come to light, although it is rumoured they were very close to completing the artifact.~
  IF ~~ THEN REPLY ~I have already discovered Delrysia living in the sewers. The explosion had transformed her into a ghoul, but with the aid of a potion I took from the necromancers body she is now free.~ GOTO 106
  IF ~~ THEN REPLY ~I have already discovered Delrysia, or at least the undead creature that the accident had transfprmed her into, living in the sewers. That fiend Bartlemy knew of her condition and refused to help, even though he had the means to release her. Instead he offered to barter with her, a potion for his ring... so I took the potion from his body and she is now free.~ GOTO 106
  IF ~~ THEN REPLY ~I have found and spoken to Delrysia, and with the aid of a potion Bartlemy had given me, I was able to free her from the undead state that the accident had brought upon her.~ GOTO 115
  IF ~~ THEN REPLY ~I have already found Delrysia and in exchange for Bartlemy�s ring I have solved her unfortunate problem... she has gone from the academy. That just leaves the necromancer for you to deal with and ... ahem... a small matter of a reward for me?~ GOTO 115
END

IF ~~ THEN BEGIN 106
  SAY ~(*Shaking his head sadly*) Bartlemy has paid dearly for his folly. It was thought that the necromancer had given up his obsession, no one even considered that he would be foolish enough to risk his life and return to look for it... not after all this time.~
  IF ~~ THEN GOTO 107
END

IF ~~ THEN BEGIN 107
  SAY ~Still, thanks to you, perhaps Delrysia will live a much wiser life now and become the great mage she was always destined to be. I only regret that she will never be allowed to continue her studies here at Halruaa. Your compassion has given her the chance of a normal life again <CHARNAME>, but tell me... what of the ring of might... the cause of all this heartache... were you able to discover its whereabouts and retrieve it?~
  IF ~PartyHasItem("DeRing")~ THEN REPLY ~I have the ring, but I am not sure that it is much use unless someone is found to complete it.~ GOTO 108
  IF ~PartyHasItem("DeRing")~ THEN REPLY ~I have the ring, and I have decided to keep it as payment for my time... not to mention the trouble those two mages have caused me.~ GOTO 108
  IF ~~ THEN REPLY ~Sorry no, the ring is lost Lavallin.~ GOTO 90
END

IF ~~ THEN BEGIN 108
  SAY ~(*He becomes excited and his eyes widen as he speaks*)... Th... the ring <CHARNAME>... y... you have found Bartlemy�s ring of might! Then for your own safety, I urge you to hand it over to me and I will deliver it into the safe keeping of the mages here at the academy.~
  IF ~~ THEN GOTO 109
END

IF ~~ THEN BEGIN 109
  SAY ~That way we can be assured that no more students will suffer for the sake of trying to finish it. After all, you will find none here willing to jeopardise their future at the academy and aid you in its completion.~
  IF ~~ THEN REPLY ~In that case, it is no threat to the academy and there can be no harm in me keeping it.~ GOTO 110
  IF ~~ THEN REPLY ~I will keep it anyway, just because the mages here are too scared to aid me, doesn�t mean that I won�t find a mage somewhere, at some future time who will.~ GOTO 110
  IF ~~ THEN REPLY ~With such a history the ring is surely cursed... take it and do with it as you see fit.~ GOTO 113
END

IF ~~ THEN BEGIN 110
  SAY ~I�ll not force you to give it up <CHARNAME>. The gods know how much trouble you�ve gone in order to reclaim it... perhaps you should be the one to keep it, but that�s not to say that I wouldn�t sleep easier if only you�d reconsider, and give it to the safe keeping of the academy.~
  IF ~~ THEN GOTO 111
END

IF ~~ THEN BEGIN 111
  SAY ~If it was complete... then I would have to insist you hand it over for the safety of all here at Halruaa. As it is, in its present state, it is harmless, but if I hear one whisper that you are attempting to restore it whilst on academy grounds, I will have no choice other than to tell the senior mages of its existence and then the matter will be out of my hands.~
  IF ~~ THEN GOTO 112
END

IF ~~ THEN BEGIN 112
  SAY ~So for your own sake and for the sake of your future here, let none know that you possess it.~
  IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 113
  SAY ~(*Looking at the ring*)... One has to wonder how so small an item can have caused so much destruction, even incomplete it is an exquisite artifact. (*Then closing his hand over it*)...~
  IF ~~ THEN DO ~TakePartyItem("DeRing")~ GOTO 114
END

IF ~~ THEN BEGIN 114
  SAY ~You have done the only thing you could <CHARNAME>, as long as it remains at the academy it will bring no more grief to those who covet it. You have my thanks and the thanks of all here at Halruaa.~
  IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 115
  SAY ~Then let�s hope your compassion hasn�t been wasted and that Delrysia will go on to become the great mage she was destined to be. It was said that she showed great promise whilst she was here at the academy, and my only regret is that she will never allowed to continue her studies here.~
  IF ~~ THEN GOTO 116
END

IF ~~ THEN BEGIN 116
  SAY ~Still, perhaps this episode will have taught her something and she will live a much wiser life in the future. Now, what of the ring of might... the cause of all this heartache... were you able to discover its whereabouts and retrieve it?~
  IF ~PartyHasItem("DeRing")~ THEN REPLY ~I have the ring, but I am not sure that it is much use unless someone is found to complete it.~ GOTO 108
  IF ~PartyHasItem("DeRing")~ THEN REPLY ~I have the ring, and I have decided to keep it as payment for my time... not to mention the trouble those two mages have caused me.~ GOTO 108
  IF ~~ THEN REPLY ~Sorry no, the ring is lost Lavallin.~ GOTO 90
END

IF WEIGHT #-15 ~Global("VP_Lavallins_Plot","GLOBAL",9)
Global("VP_Meeting_Delrysia","GLOBAL",3)
Global("VP_My_Plot_Ends","LOCALS",0)
Dead("Bartlemy")
!Dead("Delrysia")
OR(3)
Global("VP_Delrisia_Letter","GLOBAL",3)
Global("VP_LvQuest_Done","GLOBAL",1)
Global("VP_LvQuest_Botched","GLOBAL",1)~ THEN BEGIN 117
//!Dead("Delrysia") is a double check for "VP_Meeting_Delrysia" = 3
  SAY ~Hello again <CHARNAME>. Does your reappearance here mean our little problem is sorted?~
  IF ~~ THEN REPLY ~It is Lavallin. Delrysia is free from the undead state that Bartlemy�s folly had inflicted upon her and the necromancer himself is dead. I think that tidies up this business quite nicely.~ GOTO 118
  IF ~~ THEN REPLY ~I have already discovered Delrysia living in the sewers. The explosion had transformed her into a ghoul, but with the aid of a potion I took from the necromancers body she is now free.~ GOTO 118
  IF ~~ THEN REPLY ~I have already discovered Delrysia, or at least the undead creature that the accident had transfprmed her into, living in the sewers. That fiend Bartlemy knew of her condition and refused to help, even though he had the means to release her. Instead he offered to barter with her, a potion for his ring... so I took the potion from his body and she is now free.~ GOTO 118
  IF ~~ THEN REPLY ~I have found and spoken to Delrysia, and with the aid of a potion Bartlemy had given me, I was able to free her from the undead state that the accident had brought upon her.~ GOTO 127
  IF ~~ THEN REPLY ~I have already found Delrysia and in exchange for Bartlemy�s ring I have solved her unfortunate problem... she has gone from the academy. That just leaves the necromancer for you to deal with and ... ahem... a small matter of a reward for me?~ GOTO 127
END

IF ~~ THEN BEGIN 118
  SAY ~(*Shaking his head sadly*) Bartlemy has paid dearly for his folly. It was thought that the necromancer had given up his obsession, no one even considered that he would be foolish enough to risk his life and return to look for it... not after all this time.~
  IF ~~ THEN GOTO 119
END

IF ~~ THEN BEGIN 119
  SAY ~Still, thanks to you, perhaps Delrysia will live a much wiser life now and become the great mage she was always destined to be. I only regret that she will never be allowed to continue her studies here at Halruaa. Your compassion has given her the chance of a normal life again <CHARNAME>, but tell me... what of the ring of might... the cause of all this heartache... were you able to discover its whereabouts and retrieve it?~
  IF ~PartyHasItem("DeRing")~ THEN REPLY ~I have the ring, but I am not sure that it is much use unless someone is found to complete it.~ GOTO 120
  IF ~PartyHasItem("DeRing")~ THEN REPLY ~I have the ring, and I have decided to keep it as payment for my time... not to mention the trouble those two mages have caused me.~ GOTO 120
  IF ~~ THEN REPLY ~Sorry no, the ring is lost Lavallin.~ GOTO 97
END

IF ~~ THEN BEGIN 120
  SAY ~(*He becomes excited and his eyes widen as he speaks*)... Th... the ring <CHARNAME>... y... you have found Bartlemy�s ring of might! Then for your own safety, I urge you to hand it over to me and I will deliver it into the safe keeping of the mages here at the academy.~
  IF ~~ THEN GOTO 121
END

IF ~~ THEN BEGIN 121
  SAY ~That way we can be assured that no more students will suffer for the sake of trying to finish it. After all, you will find none here willing to jeopardise their future at the academy and aid you in its completion.~
  IF ~~ THEN REPLY ~In that case, it is no threat to the academy and there can be no harm in me keeping it.~ GOTO 122
  IF ~~ THEN REPLY ~I will keep it anyway, just because the mages here are too scared to aid me, doesn�t mean that I won�t find a mage somewhere, at some future time who will.~ GOTO 122
  IF ~~ THEN REPLY ~With such a history the ring is surely cursed... take it and do with it as you see fit.~ GOTO 125
END

IF ~~ THEN BEGIN 122
  SAY ~I�ll not force you to give it up <CHARNAME>. The gods know how much trouble you�ve gone in order to reclaim it... perhaps you should be the one to keep it, but that�s not to say that I wouldn�t sleep easier if only you�d reconsider, and give it to the safe keeping of the academy.~
  IF ~~ THEN GOTO 123
END

IF ~~ THEN BEGIN 123
  SAY ~If it was complete... then I would have to insist you hand it over for the safety of all here at Halruaa. As it is, in its present state, it is harmless, but if I hear one whisper that you are attempting to restore it whilst on academy grounds, I will have no choice other than to tell the senior mages of its existence and then the matter will be out of my hands.~
  IF ~~ THEN GOTO 124
END

IF ~~ THEN BEGIN 124
  SAY ~So for your own sake and for the sake of your future here, let none know that you possess it.~
  IF ~~ THEN GOTO 99
END

IF ~~ THEN BEGIN 125
  SAY ~(*Looking at the ring*)... One has to wonder how so small an item can have caused so much destruction, even incomplete it is an exquisite artifact. (*Then closing his hand over it*)...~
  IF ~~ THEN DO ~TakePartyItem("DeRing")~ GOTO 126
END

IF ~~ THEN BEGIN 126
  SAY ~You have done the only thing you could <CHARNAME>, as long as it remains at the academy it will bring no more grief to those who covet it. You have my thanks and the thanks of all here at Halruaa.~
  IF ~~ THEN GOTO 99
END

IF ~~ THEN BEGIN 127
  SAY ~Then let�s hope your compassion hasn�t been wasted and that Delrysia will go on to become the great mage she was destined to be. It was said that she showed great promise whilst she was here at the academy, and my only regret is that she will never allowed to continue her studies here.~
  IF ~~ THEN GOTO 128
END

IF ~~ THEN BEGIN 128
  SAY ~Still, perhaps this episode will have taught her something and she will live a much wiser life in the future. Now, what of the ring of might... the cause of all this heartache... were you able to discover its whereabouts and retrieve it?~
  IF ~PartyHasItem("DeRing")~ THEN REPLY ~I have the ring, but I am not sure that it is much use unless someone is found to complete it.~ GOTO 120
  IF ~PartyHasItem("DeRing")~ THEN REPLY ~I have the ring, and I have decided to keep it as payment for my time... not to mention the trouble those two mages have caused me.~ GOTO 120
  IF ~~ THEN REPLY ~Sorry no, the ring is lost Lavallin.~ GOTO 97
END

IF WEIGHT #-16 ~Global("VP_Lavallins_Plot","GLOBAL",10)
Global("VP_LvQuest_Done","GLOBAL",0)
Global("VP_LvQuest_Botched","GLOBAL",0)
GlobalLT("VP_Delrisia_Letter","GLOBAL",3)
Global("VP_Meeting_Delrysia","GLOBAL",2)
!Dead("Bartlemy")
Dead("Delrysia")~ THEN BEGIN 129
//Dead("Delrysia") is a double check for "VP_Meeting_Delrysia" = 2
  SAY ~Ah... you return <CHARNAME>, have you good news for me?~
  IF ~~ THEN REPLY ~I do indeed Lavallin. It seems a necromancer by name of Bartlemy was using the portal to enable a goblin to gain access to your room, in order to search. searching for a ring of might he had lost in this room, but it had already been found by another.~ GOTO 130
  IF ~~ THEN REPLY ~I have Lavallin... already one of those involved in this affair lies dead and I am now about to deal with the necromancer, Bartlemy! He was the one responsible for sending the thief to your room, claims he lost a ring here a while ago.~ GOTO 130
END

IF ~~ THEN BEGIN 130
  SAY ~Bartlemy... I know the name. So this is all about that accursed ring of his. I don�t know what he has told you but I will tell you briefly what I  know of Bartlemy, his friends and their quest to construct a ring of might... or at least as the story was told to me.~
  IF ~~ THEN GOTO 131
END

IF ~~ THEN BEGIN 131
  SAY ~A few years back, five very talented students sought to forge a powerful artifact known as a "Ring of Might". They were forbidden to attempt such a feat but went ahead anyway secretly in this very room.~
  IF ~~ THEN GOTO 132
END

IF ~~ THEN BEGIN 132
  SAY ~It is said, but not known for sure, that it takes a mage from each of the four elemental schools working together to achieve this, so why a necromancer was involved no one knows. Anyway, they failed and the explosion that followed destroyed this part of the building and left three of them dead.~
  IF ~~ THEN GOTO 133
END

IF ~~ THEN BEGIN 133
  SAY ~What became of the fifth student, Delrysia, is unknown as only Bartlemy was discovered, unconscious and near death at the scene. After his recovery, he was banished and warned that to set foot on Halruaa soil again would mean his death, still, that doesn�t seem to have deterred him.~
  IF ~~ THEN GOTO 134
END

IF ~~ THEN BEGIN 134
  SAY ~With the disappearance of Delrysia, the truth of what happened has never come to light, although it is rumoured they were very close to completing the artifact.~
  IF ~~ THEN REPLY ~I discovered Delrysia hiding in the sewers and it�s in the sewers I left her... dead. At least, the undead creature that the accident had turned her into lies there dead. That just leaves the necromancer for you to deal with and... ahem... a small matter of a reward Lavallin?~ GOTO 87
  IF ~~ THEN REPLY ~I discovered Delrysia, transformed by the accident into an undead creature and living in the sewers. Both she and Bartlemy attempted to use me for their own ends, Delrysia has paid for that mistake, and so shall the necromancer!~ GOTO 87
  IF ~~ THEN REPLY ~I have discovered Delrysia Lavallin. Unfortunately, the accident had left her as an undead creature and  I found her living in the sewers. I gave her the only release possible, I gave her death.~ GOTO 87
END

IF WEIGHT #-17 ~Global("VP_Lavallins_Plot","GLOBAL",10)
Global("VP_Meeting_Delrysia","GLOBAL",2)
Global("VP_My_Plot_Ends","LOCALS",0)
!Dead("Bartlemy")
Dead("Delrysia")
OR(3)
Global("VP_LvQuest_Done","GLOBAL",1)
Global("VP_LvQuest_Botched","GLOBAL",1)
Global("VP_Delrisia_Letter","GLOBAL",3)~ THEN BEGIN 135
//Dead("Delrysia") is a double check for "VP_Meeting_Delrysia" = 2
  SAY ~Ah... you return <CHARNAME>, have you good news for me?~
  IF ~~ THEN REPLY ~I discovered Delrysia hiding in the sewers and it�s in the sewers I left her... dead. At least, the undead creature that the accident had turned her into lies there dead. That just leaves the necromancer for you to deal with and... ahem... a small matter of a reward Lavallin?~ GOTO 94
  IF ~~ THEN REPLY ~I discovered Delrysia, transformed by the accident into an undead creature and living in the sewers. Both she and Bartlemy attempted to use me for their own ends, Delrysia has paid for that mistake, and so shall the necromancer!~ GOTO 94
  IF ~~ THEN REPLY ~I have discovered Delrysia Lavallin. Unfortunately, the accident had left her as an undead creature and  I found her living in the sewers. I gave her the only release possible, I gave her death.~ GOTO 94
END

IF ~True()~ THEN BEGIN 136
	SAY ~Ah, you return <CHARNAME>. May I help you?~
  IF ~~ THEN REPLY ~I would like to see what you have for sale.~ GOTO 57
  IF ~~ THEN REPLY ~Not at the moment.~ EXIT
END