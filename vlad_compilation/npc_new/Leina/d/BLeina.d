BEGIN VPLEIB

CHAIN
IF ~Global("VP_BKachiko","LOCALS",2)~ THEN VPLEIB 5
~Kachiko do you like my music?~
DO ~SetGlobal("VP_BKachiko","LOCALS",3)~
EXTERN VPKACB 97


CHAIN VPLEIB 6
~Love Kachiko? My experience with what you call love brought only sadness and misery into my life. I see my songs as a very good reflection of love. Love and pain are the same thing.~
EXTERN VPKACB 98


CHAIN VPLEIB 7
~It was a man Kachiko! Is it not always so? You give your heart, your soul and your whole being to one man. This man in return, swears to love you, to worship you, to protect you, so you allow him to entice you away from the family that also love you, with promises of a life of love that will be forever. Then one morning you awake and he is gone and so is everything that you own, that includes your heart and your dreams!~
EXTERN VPKACB 99


CHAIN VPLEIB 8
~I am not lonely Kachiko. I have my music, that brings me all the passion that I need, warmth I can find in the arms of any man when I feel the need, love, well apart from my love of music, I neither need it nor do I desire it. Pursue it if you wish Kachiko, but do so with those bright, trusting eyes of yours wide open. Now, if you do not mind, I no longer wish to talk of love.~
EXTERN VPKACB 100

CHAIN
IF ~Global("VP_BDar","LOCALS",2)~ THEN VPLEIB 9
~Dar, as a barbarian from the frozen north, you must know many songs and tales of the tribes of the north. Do you care to share any of them with me?~
DO ~SetGlobal("VP_BDar","LOCALS",3)~
EXTERN NJDARB 96


CHAIN VPLEIB 10
~That must have been lonely for you Dar. I have spent much time alone by choice, but at least the opportunity for companionship was there if I desired it. I am guessing that you had no choice but to keep to your own company?~
EXTERN NJDARB 97


CHAIN VPLEIB 11
~I know how that feels Dar. I lived with my parents among such prejudices in the city of Athkatla and I have found myself on the receiving end of looks of mistrust myself due merely to my parentage. Though I doubt nowhere near to the extent of what you have endured and yet you maintain your code of honour. You are an exceptional person Dar.~
EXTERN NJDARB 98


CHAIN VPLEIB 12
~That is how I see you Dar. In my eyes, your conduct is worthy and deserving to be called a person.~
EXTERN NJDARB 99


CHAIN VPLEIB 13
~(*Smiles to herself*)... Maybe not so far in the future *Dar The Honourable Half-Orc Person*, maybe a little nearer, perhaps sometime in the present!~
EXTERN NJDARB 100


CHAIN VPLEIB 14
~(*Still smiling*) Of course Dar, of course.~
EXIT

CHAIN
IF ~Global("VP_BPC","LOCALS",2)~ THEN VPLEIB 15
~Bards tell many tales of your exploits along The Sword Coast <CHARNAME>. The most significant being your battle under Baldur's Gate, but I wonder how many tell it true?~
END
 ++ ~I have heard some of these tales Leina. Most have been exaggerated with the passing of time and the numerous tellings, but it is not something that bothers me.~ DO ~SetGlobal("VP_BPC","LOCALS",3)~ EXTERN VPLEIB 16
 ++ ~I think they all contain some part of the truth but which part depends on the tale you happen to be listening to.~ DO ~SetGlobal("VP_BPC","LOCALS",3)~ EXTERN VPLEIB 16
 ++ ~Are you looking to make another tale to tell Leina?~ DO ~SetGlobal("VP_BPC","LOCALS",3)~ EXTERN VPLEIB 17
 ++ ~Pleeeeease! I do not want to get into yet another discussion on what happened at Baldur's Gate!~ DO ~SetGlobal("VP_BPC","LOCALS",3)~ EXTERN VPLEIB 18


//To add state for non-NeJ banter
CHAIN VPLEIB 16
~It is the same with all stories, they change with each new telling, but I see by your expression you are tired of being asked about the events. Perhaps you can tell me what brings you here? Nothing as sinister as another war to avert I hope?~
END
 IF ~OR(2) InParty("njhroth") !Global("StartIWD","GLOBAL",0)~ THEN REPLY ~No such heroics this time. I was about to embark on a search for a friend of mine, Imoen, she was taken by Cowled Wizards to some place only the gods know where, when Hrothgar persuaded me to join him on his quest, assuring me that Imoen would be found safe.~ EXTERN VPLEIB 19
 IF ~OR(2) InParty("njhroth") !Global("StartIWD","GLOBAL",0)~ THEN REPLY ~I had intended to seek out a wizard by the name of Irenicus. A very dear friend of mine, Imoen, and myself have suffered a lot of pain by his hand and I intend to pay him back double, only Hrothgar persuaded me to postpone my search and join him on his quest.~ EXTERN VPLEIB 20
 IF ~OR(2) InParty("njhroth") !Global("StartIWD","GLOBAL",0)~ THEN REPLY ~No heroics Leina, I simply have a friend to find and a debt of pain to pay back to an insane wizard, but first I agreed to aid Hrothgar in his quest and that is why I am here.~ EXTERN VPLEIB 20
 IF ~!InParty("njhroth") Global("StartIWD","GLOBAL",0)~ THEN REPLY ~I am intended to seek out a wizard by the name of Irenicus. A very dear friend of mine, Imoen, and myself have suffered a lot of pain by his hand and I intend to pay him back double.~ EXTERN VPLEIB 20A
 IF ~!InParty("njhroth") Global("StartIWD","GLOBAL",0)~ THEN REPLY ~No heroics Leina, I simply have a friend to find and a debt of pain to pay back to an insane wizard.~ EXTERN VPLEIB 20A


CHAIN VPLEIB 17
~(*Laughs softly*) Oh no <CHARNAME>, there are tales enough. I do not think another is needed, unless your being here means that we are about to witness another heroic feat.~
END
 IF ~OR(2) InParty("njhroth") !Global("StartIWD","GLOBAL",0)~ THEN REPLY ~No such heroics this time. I was about to embark on a search for a friend of mine, Imoen, she was taken by Cowled Wizards to some place only the gods know where, when Hrothgar persuaded me to join him on his quest, assuring me that Imoen would be found safe.~ EXTERN VPLEIB 19
 IF ~OR(2) InParty("njhroth") !Global("StartIWD","GLOBAL",0)~ THEN REPLY ~I had intended to seek out a wizard by the name of Irenicus. A very dear friend of mine, Imoen, and myself have suffered a lot of pain by his hand and I intend to pay him back double, only Hrothgar persuaded me to postpone my search and join him on his quest.~ EXTERN VPLEIB 20
 IF ~OR(2) InParty("njhroth") !Global("StartIWD","GLOBAL",0)~ THEN REPLY ~No heroics Leina, I simply have a friend to find and a debt of pain to pay back to an insane wizard, but first I agreed to aid Hrothgar in his quest and that is why I am here.~ EXTERN VPLEIB 20
 IF ~!InParty("njhroth") Global("StartIWD","GLOBAL",0)~ THEN REPLY ~I am intended to seek out a wizard by the name of Irenicus. A very dear friend of mine, Imoen, and myself have suffered a lot of pain by his hand and I intend to pay him back double.~ EXTERN VPLEIB 20A
 IF ~!InParty("njhroth") Global("StartIWD","GLOBAL",0)~ THEN REPLY ~No heroics Leina, I simply have a friend to find and a debt of pain to pay back to an insane wizard.~ EXTERN VPLEIB 20A


CHAIN VPLEIB 18
~As you wish <CHARNAME>. I was curious as to the truth behind so many tales. To meet a hero before they pass into legend is always an honour. Will you at least tell me what brings you this way?~
END
 ++ ~I am here to seek out someone that I owe a debt of pain. He will wish that he had never messed with a child of Bhaal when we next meet, mark my words!~ EXTERN VPLEIB 21
 IF ~OR(2) InParty("njhroth") !Global("StartIWD","GLOBAL",0)~ THEN REPLY ~I am here for two reasons Leina. One, I allowed myself to be persuaded by Hrothgar to aid him in his search and when that is done comes two, revenge on an insane wizard who should have known better than to torture a child of Bhaal!~ EXTERN VPLEIB 21
 IF ~!InParty("njhroth") Global("StartIWD","GLOBAL",0)~ THEN REPLY ~I am here for one reason Leina: to revenge on an insane wizard who should have known better than to torture a child of Bhaal!~ EXTERN VPLEIB 21


CHAIN VPLEIB 19
~To think to take on Cowled wizards or any wizards for that matter is no mean task <CHARNAME>. You worry for the safety of your Imoen at their hands and yet you abandon her on the words of one man. I know you have followed Hrothgar far and you probably know him far better than I, but what warrants such faith may I ask?~
END
 ++ ~I am not sure myself Leina. Instinct, maybe nothing more.~ EXTERN VPLEIB 22
 ++ ~It is not his words so much, more the way he speaks them. He is confident in what he says is so, and in return he instills that confidence in me.~ EXTERN VPLEIB 22
 ++ ~I look into his face and I know I am looking at a man who speaks only truth and believes strongly in what he is doing.~ EXTERN VPLEIB 22


CHAIN VPLEIB 20
~You seek revenge <CHARNAME>, do you truly believe that the pain you inflict back will erase the memory of the pain received? Only time will do that and then never completely. You will always carry with you some of the scars, that I know to be true. Perhaps this search with Hrothgar will give you some of that much needed time.~
END
 ++ ~Your words may be true, but I will gain immense satisfaction in exacting my revenge. That in itself will suffice.~ EXTERN VPLEIB 23
 ++ ~All that this time with Hrothgar will bring me is the time to relish and savour my thoughts of when I eventually confront Irenicus!~ EXTERN VPLEIB 23
 ++ ~I could probably forego revenge for what I suffered but I will never forgive him for what he did to Imoen. She is the gentlest and most generous of people I know. We are of the same age but she is still a child in so many ways. She did not deserve the abuse she suffered at Irenicus's hand and that is what he must and will pay for!~ EXTERN VPLEIB 23


CHAIN VPLEIB 21
~I... I... I did not believe the tales of you being one of the children of Bhaal! I thought them too fantastic, but I see there is sometimes truth in even the wildest tales.~
EXTERN VPLEIB 24


CHAIN VPLEIB 22
~I could never put so much trust in one person again <CHARNAME>. I know Hrothgar seems to be an honourable, if some what evasive man, but I could not abandon a true friend to an unknown fate on the word of a man I barely know no matter what lore says of him. I will pray for the sake of your Imoen, that he truly has some insight into what is going to be and that you are not misguided in placing your faith in him.~
EXIT


CHAIN VPLEIB 23
~I was hoping you would use the time to think on your motives for tracking this Irenicus but I can see that will not be so. Be warned <CHARNAME>, you may not like the bitter sweet taste that revenge so often leaves. I will leave you now to ponder these words.~
EXIT


CHAIN VPLEIB 24
~(*Looks sadly at you*) Know this <CHARNAME>, the thirst for revenge is told in many a bards tale and it seldom brings the peace that is expected. Have you never listened to them as they tell of the bitter sweet taste it brings so often? No matter who you are, the taste is the same. Be warned, that is all I will say!~
EXIT

CHAIN
IF ~Global("VP_BDar","LOCALS",5)~ THEN VPLEIB 25
~May I walk with you a while Dar?~ [leinab03]
DO ~SetGlobal("VP_BDar","LOCALS",6)~
EXTERN NJDARB 109


CHAIN VPLEIB 26
~Why should my asking to walk beside you indicate that I have something on my mind?~ [leinab04]
EXTERN NJDARB 110


CHAIN VPLEIB 27
~I have reached a point where I need more information to continue. It is information that only you can give me Dar. So I thought to speak to you whilst we have a quiet moment.~ [leinab05]
EXTERN NJDARB 111


CHAIN VPLEIB 28
~You have exceptional hearing Dar, for I was always certain I knew where you were before I put any of my words to music. You are not angry with me are you? Please say you are not?~ [leinab06]
EXTERN NJDARB 112


CHAIN VPLEIB 29
~I would prefer for you to wait and hear the tale when it is finished. It still needs a lot of fine tuning before I could ever tell the world of *Dar The Noble Half-Orc Person*, which incidently is what I have called it. I now need you to tell me more of your life before your meeting with <CHARNAME>. The rest I can write as we continue our travels.~
EXTERN NJDARB 113


CHAIN VPLEIB 30
~Oh, oh ok Dar as you wish, but please remember it is a long way, as of yet, to being perfect.~
EXTERN NJDARB 114


CHAIN VPLEIB 31
~I bring you this song, one of courage, of faith,
of a hero who emerged from the north.
This hero was shunned, where e'er that he walked,
for this hero I speak of, is Dar The Half-Orc.

Dar took to the roads, in search of his dream,
A dream of acceptance, a place to call home.

Despised and rejected in the land of his birth
his heart, he kept noble and pure.
He travelled his road, helping where e'er that he could,
never leaving the path of the righteous and good.

Dar took to the roads, in search of his dream,
A dream of acceptance, a place to call home.

Fate, she watched o'er him, of his dream she well knew,
of the truth of his heart, of all he aspired to do.
*I will give this Half-Orc a chance in this life,
will he trust, will he follow or will he continue his strife?*

Dar took to the roads, in search of his dream,
A dream of acceptance, a place to call home.

Dar looked at the portal, his face clouded with doubt,
new friends all around him, they urged he should follow.
In their eyes was acceptance, 'twas his dream that he saw,
so with a prayer to Ilmater, he stepped through the strange door.

Dar entered the portal, hope leapt in his heart.
A hope for his future, a place he'd call home.


(*As she finishes singing, she looks about her, the group has stopped to listen.*)~
END
 IF ~True()~ THEN EXTERN VPLEIB 32
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB 0
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN BMINSC NEJ130


CHAIN VPLEIB 32
~(*Blushing she turned her attention back to Dar.*) Well Dar, what do you say, do I get my story?~
EXTERN NJDARB 115


CHAIN VPLEIB 33
~They will Dar, given time. People need time to adjust to something or to someone that does not conform to what they have been taught to believe.~
EXTERN NJDARB 116

CHAIN
IF ~Global("VP_BPC","LOCALS",5)~ THEN VPLEIB 34
~Your life and the conflict that followed you as you fled Candlekeep is known far and wide, and yet you yourself still remain a mystery. I have heard tell of your life, but nothing of you. So, if you have no objections, please I would like to hear more of the person behind the hero?~
END
 ++ ~Is this one of those if you tell me yours I will tell you mine conversations Leina?~ DO ~SetGlobal("VP_BPC","LOCALS",6)~ EXTERN VPLEIB 35
 ++ ~A reluctant hero Leina. I have only dealt with the things that life has seen fit to throw in my path as any other would in order to survive.~ DO ~SetGlobal("VP_BPC","LOCALS",6)~ EXTERN VPLEIB 36
 ++ ~I do object Leina, if nothing else my life has taught me to keep my own counsel and not to let the world invade my privacy. That way I avoid those who seek my friendship purely for their own selfish needs.~ DO ~SetGlobal("VP_BPC","LOCALS",6)~ EXTERN VPLEIB 37
 ++ ~It is not necessary for you, or anyone else, to know anymore than you do. I do wish people would keep their noses out of that which does not concern them!~ DO ~SetGlobal("VP_BPC","LOCALS",6)~ EXTERN VPLEIB 38


CHAIN VPLEIB 35
~In time <CHARNAME>. There are still some scars that have not healed and if I keep opening the wounds they never will, but what of you, has life left you with any wounds that refuse to heal, no matter how long you carry them?~
END
 ++ ~Life itself leaves its impressions on us all, but none as deep as the scars that I see it has left for you to carry Leina.~ EXTERN VPLEIB 39
 ++ ~I am lucky, the only wounds I have suffered are the result of battles fought. Once they heal they are forgotten, though, some do leave a scar to carry as a reminder.~ EXTERN VPLEIB 45
 ++ ~No Leina, I never give life the chance to cut deep enough.~ EXTERN VPLEIB 45
 ++ ~I see no point in carrying what has passed into the present, so no, I have no scars of the sort you refer to Leina.~ EXTERN VPLEIB 45


CHAIN VPLEIB 36
~Is that not always the way of things? True heroes seldom set out to make a name for themselves, fame and glory is often unwanted but thrust upon them anyway. Fate has her own plans for us all and she will not be thwarted.~
END
 ++ ~Then I wish fate would give me some respite from this battle weary life she has set before me.~ EXTERN VPLEIB 50
 ++ ~If it was fate's idea that I should be pitted against and kill my half-brother and then to be tortured at the hand of a mad man, then she is a cruel task mistress indeed.~ EXTERN VPLEIB 51
 ++ ~I am not sure that I believe in fate. If she has already set our course why then are there decisions to be made and cross roads to negotiate?~ EXTERN VPLEIB 52
 ++ ~Some call it fate, some call it the will of the gods but who really controls our lives I ask, them or us?~ EXTERN VPLEIB 53


CHAIN VPLEIB 37
~I am not sure that I agree with you <CHARNAME>, to keep ones own counsel is good but sometimes another can see what we can not so we should not be afraid to at least listen to others, even if we decide that our own choice is the better... and that is something my life has taught me but if you don't wish to talk of yourself then that is your prerogative.~
EXIT


CHAIN VPLEIB 38
~Of course <CHARNAME>, forgive me for asking. It's just that you show one face to the world and yet, I feel that there is much more hidden behind the face that you are reluctant to reveal. Still, as you so rightly say, it is no ones business but your own. Once again, forgive my inquisitive nature, I will now leave you to your own company as you seem to like it so much.~
DO ~SetGlobal("VP_MyFlirt_Is_Over","LOCALS",1)~ EXIT


CHAIN VPLEIB 39
~They are not as deep as they were yesterday and yesterday they were not as deep as the day before. If you had but seen me when I was left penniless and friendless, you would have seen only an open gash that refused to stop gushing.~
EXTERN VPLEIB 40


CHAIN VPLEIB 40
~It was only the need to keep the wolf from the door that forced me to turn to the only thing I knew, music. It was music that slowly brought me out of the darkness where I dwelt, it was music that showed me day always follows night. You might say it was my saviour, and has since become my one passion, my one love, the only love I will ever need.~
END
 ++ ~Music is a gift Leina and a gift to be nurtured and treasured, but music can not bring the comfort and warmth that love brings to a body.~ EXTERN VPLEIB 41
 ++ ~And you have grown into a much stronger person through your pain, I am sure, but do not let this strength lead you into thinking that there is no room for love and the joy that sharing with another brings.~ EXTERN VPLEIB 41
 ++ ~In a way love is very much like your music Leina. It starts as a simple tune, but in your hands it can build to a crescendo or remain nothing more than the simple tune it started out as. It is you who decides its fate.~ EXTERN VPLEIB 41
 ++ ~Music is born of the soul Leina, but what of your heart? What fills the emptiness there?~ EXTERN VPLEIB 41
 ++ ~You have loved once Leina tell me, this thing called love, how is a person to find it if they do not know what they are looking for and how will they know it when they have found it?~ EXTERN VPLEIB 43


CHAIN VPLEIB 41
~I have no need for the love you speak of <CHARNAME>. The warmth I feel in my music fills any empty space within me to overflowing, but if I should find the need for the warmth of another to help me through life's darkest hours, then I can play the game of love as well as any man, enjoy the moment and leave with the dawn.~
EXTERN VPLEIB 42


CHAIN VPLEIB 42
~I have no desire to greet the day in the arms of a man nor do I wish to have a man waken in mine. I am content. (*She turns away.*)~
EXIT


CHAIN VPLEIB 43
~We don't <CHARNAME>, our failure to recognise it when it presents itself is often the reason that it eludes so many and those that do find it, are not always content. There are those who continually crave the excitement that new love always brings and that is when love brings pain.~
EXTERN VPLEIB 44


CHAIN VPLEIB 44
~I have loved yes, but I was not loved in return and that is a pain that will never touch me again. I am content to live for my music, it will never bring the pain that love has brought to me. (*She turns away.*)~
EXIT


CHAIN VPLEIB 45
~Then you have either been fortunate in your friends or you have distanced yourself and allowed none to get close to you. I can see no other way you could have avoided the pain that causes these wounds.~
END
 ++ ~I consider my self very fortunate in my friends, especially when I see the bitterness in people who have been let down or rejected by those they called friend.~ EXTERN VPLEIB 46
 ++ ~I find I have no need to for close alliances, I prefer not to have to consider the needs of anyone other than myself.~ EXTERN VPLEIB 47
 ++ ~I have seen too many people die because of their closeness to me and if the only way to keep them safe is to distance myself from them, so be it.~ EXTERN VPLEIB 48
 ++ ~Being fortunate has nothing to do with it. It is more likely that fate has a bigger plan for me and it does not include collecting baggage along the way.~ EXTERN VPLEIB 49


CHAIN VPLEIB 46
~Then let's hope you continue to be as fortunate in the future as you are now <CHARNAME>, and you never know the pain of betrayal.~
EXIT


CHAIN VPLEIB 47
~I didn't expect so selfish a reply <CHARNAME>, after all you lead this group, and that makes you responsible for them and their lives. In my eyes that is considering the needs of others as well as your own, whatever you might say.~
EXIT


CHAIN VPLEIB 48
~Those friends who died <CHARNAME>, did so because they chose to follow you, not because of you. The loss of friends is inevitable due to the road we follow but it should not stop us forging new friendships along the way. You would do well to think on this or you will have a very sad and lonely life ahead of you.~
EXIT


CHAIN VPLEIB 49
~Collecting baggage! Is that how you look upon us <CHARNAME>? In that case, perhaps you being the collector of this baggage, will carry her next time she gets tired.(*She laughs and turns away.*)~
EXIT


CHAIN VPLEIB 50
~Fate has her reasons for everything she does <CHARNAME>. I am sure your respite will come when you have fulfilled all that she expects of you. It just may not be any time in the near future so you should not wish your life away by wanting that respite tomorrow.~
EXIT


CHAIN VPLEIB 51
~No one says she is gracious <CHARNAME> and no one knows why she does what she does. The only thing we can be certain of is that fate will have her way, and if we ever wander from her path, she will be sure to make another that leads us back to her chosen way.~
EXIT


CHAIN VPLEIB 52
~The decisions and the crossroads are her way of leading us into the belief that we are in charge of our own lives. The different roads add their own challenges in order to keep us interested enough to continue our journey but what ever decision or road we take it will always bring us back to her chosen way.~
EXIT


CHAIN VPLEIB 53
~I am not sure about the part the gods play in our lives <CHARNAME>, but it is my belief that fate takes a hand and sets our paths. However, she does it in such a way that we are led to believe that we are in charge of our own lives, but we can be sure that if we ever wander from her path, she will be sure to make another that leads us back to her chosen way.~
EXIT


IF ~Global("VP_BPC","LOCALS",8)~ THEN VPLEIB 54
~I often look into your face and see the weariness in your eyes. Sometimes I even see confusion and another time I catch sight of a shadow that passes fleetingly over them, much like the shadows in my own.~
DO ~SetGlobal("VP_BPC","LOCALS",9)~ EXTERN VPLEIB 55


CHAIN VPLEIB 55
~You are surrounded by friends who would gladly share some of what haunts you and yet you prefer to keep your turmoil to yourself. Have you not heard that a problem shared is a problem halved <CHARNAME>?~
END
 ++ ~My thoughts are my own, and they are best left that way.~ EXTERN VPLEIB 56
 ++ ~I am not very happy being scrutinised here Leina, so please keep your eyes... out of my eyes!~ EXTERN VPLEIB 56
 ++ ~It's because they are my friends that it so difficult to speak of my doubts to them.~ EXTERN VPLEIB 58
 ++ ~They have their own doubts and fears, they do not need the added weight of mine.~ EXTERN VPLEIB 58


CHAIN VPLEIB 56
~You may think that your thoughts are your own but you do not hide them very well. Anyone who looks into your face can see them mirrored in your eyes and I know, given the chance, your friends will gladly take some of that weight from your shoulders.~
END
 ++ ~That isn't necessary. I do not feel the need to unburden myself to them or to you Leina.~ EXTERN VPLEIB 57
 ++ ~Forget it Leina, I do not believe in all this a problem shared is a problem halved business. To share a problem means that two people are then burdened, whereas in the beginning it was the burden of only one.~ EXTERN VPLEIB 57
 ++ ~Drop it Leina! I have already made it clear that I have no intentions of sharing anything with anyone.~ EXTERN VPLEIB 57


CHAIN VPLEIB 57
~As you wish <CHARNAME>. Be stubborn and mule headed, but if the burden becomes too heavy remember, there is no shame in asking for the help of friends and I will be there should you have need to ask.~
EXIT


CHAIN VPLEIB 58
~But that is one of the joys of having friends, to share the bad as well as the good things that we meet on our journey. They share our hopes, our fears and our dreams. Sometimes along the way, our dreams become theirs and theirs our own.~
EXTERN VPLEIB 59


CHAIN VPLEIB 59
~You do have dreams don't you <CHARNAME>? Perhaps there are times when your thoughts turn to a future away from the hazards and the dust that living on the road brings?~
END
 ++ ~I have dreams Leina but never have the time to pursue them.~ EXTERN VPLEIB 60
 ++ ~What good are dreams if fate persists in throwing obstacles in the way of them.~ EXTERN VPLEIB 61
 ++ ~My dreams consist only of my hopes that I will be alive at the end of the day and have another morning to wake up to.~ EXTERN VPLEIB 62
 ++ ~I have dreams Leina, but never of the future. I believe that tomorrow is promised to no one and therefore it should not be presumed that we will have a future or even a tomorrow. Why dream of what may never be?~ EXTERN VPLEIB 63


CHAIN VPLEIB 60
~The best things about dreams is that the majority of them will wait to be pursued. The only draw back is the longer we leave it before we pursue them, the less time we have to live them when they are eventually realised. Never give up on your dreams <CHARNAME>, just because other issues get in the way of them for a while.~
EXIT


CHAIN VPLEIB 61
~That rather depends on how important your dreams are to you and how much you are prepared to go through in order to realise them. Remember <CHARNAME>, something you have had to strive for and have gained through your own hard work and toil will always be appreciated more than a thing that just falls into your lap.~
EXIT


CHAIN VPLEIB 62
~Given the path that fate has lain before you, I can emphasise with the way you feel, but a dream for a better future will also give you a reason to look forward to a safe ending to the day and the hope of awakening to a new one <CHARNAME>. Our dreams and hopes are often one of the same.~
EXIT


CHAIN VPLEIB 63
~It may be true that no one is guaranteed a tomorrow, but to be able to dream of what tomorrow may bring, gives us a reason to hope that we will see tomorrow and the day after that and the day after that. Before we know it, we are dreaming of all the future tomorrows. With our dreams come hope, and hope is something no one should ever lose sight of <CHARNAME>, no matter what the world or fate throws at us.~
EXIT


IF WEIGHT #0 ~Global("VP_BPC","LOCALS",11) GlobalLT("VP_MyFatherIsDead","LOCALS",3) GlobalLT("VP_Break_Point","LOCALS",2)~ THEN VPLEIB 64
~<CHARNAME>, I cannot continue further with you until I know the truth of my my father's death.~
END
 IF ~Global("BodhiJob","GLOBAL",2)~ THEN REPLY ~What do you want to hear Leina?~ DO ~SetGlobal("VP_BPC","LOCALS",12)~ EXTERN VPLEIB 65
 IF ~Global("BodhiJob","GLOBAL",0) Global("VP_Guild_Attacked","GLOBAL",1)~ THEN REPLY ~What do you want to hear Leina?~ DO ~SetGlobal("VP_BPC","LOCALS",12)~ EXTERN VPLEIB N65
 IF ~Global("BodhiJob","GLOBAL",2)~ THEN REPLY ~You want a description, the details of his dying Leina, is that what you are asking me to tell?~ DO ~SetGlobal("VP_BPC","LOCALS",12)~ EXTERN VPLEIB 71
 IF ~Global("BodhiJob","GLOBAL",0) Global("VP_Guild_Attacked","GLOBAL",1)~ THEN REPLY ~You want a description, the details of his dying Leina, is that what you are asking me to tell?~ DO ~SetGlobal("VP_BPC","LOCALS",12)~ EXTERN VPLEIB N71
 IF ~Global("BodhiJob","GLOBAL",2)~ THEN REPLY ~I have already told you, it was a means to an end Leina, nothing more.~ DO ~SetGlobal("VP_BPC","LOCALS",12)~ EXTERN VPLEIB 72
 IF ~Global("BodhiJob","GLOBAL",0) Global("VP_Guild_Attacked","GLOBAL",1)~ THEN REPLY ~I have already told you, it was a means to get to you Leina, nothing more.~ DO ~SetGlobal("VP_BPC","LOCALS",12)~ EXTERN VPLEIB N72


CHAIN VPLEIB 65
~Why? Why you considered his life yours to take? Why you allied yourself with a creature such as Bodhi and murdered a man you knew nothing about for her?~
END
 ++ ~It is easy to kill when the victim is a stranger. I saw your father only as an obstacle to be removed from my path to Irenicus.~ EXTERN VPLEIB 66
 ++ ~Bodhi had knowledge of Irenicus, knowledge I had to have regardless of the price.~ EXTERN VPLEIB 66
 ++ ~It was as I said, your father attacked me before I had chance to reason with him.~ EXTERN VPLEIB 74
 ++ ~My rage at the loss of Imoen blinded me Leina. Bodhi knew much about Irenicus and I needed what she knew in order to pursue him and find her.~ EXTERN VPLEIB 83


CHAIN VPLEIB 66
~(*Angrily*) And you believe that to be reason enough to commit cold blooded murder? Do you know or even care how heartless your words show you to be <CHARNAME>.~
END
 ++ ~I care for very little at the moment other than reaching Irenicus and ending his insane life.~ EXTERN VPLEIB 67
 ++ ~I choose my words to suit my mood. I will do whatever is necessary to find Irenicus.~ EXTERN VPLEIB 67
 ++ ~I cannot help how you or others perceive me Leina, I am who I am.~ EXTERN VPLEIB 67


CHAIN VPLEIB 67
~I see no remorse, only coldness reflected in your eyes. I see no room for compassion in your heart and it is for that reason I show none to you and your cause.~
EXTERN VPLEIB 68


CHAIN VPLEIB 68
~My father is dead for no other reason than to aid your lust for revenge. I cannot forgive this wanton disregard for life that I see in you, it sickens me and as such I refuse to aid you further.~
END
 ++ ~Think for a second, if it were not for me you would still be a prisoner of your insane father, or worse married to the likes of Govan Duvaine. A little gratitude would not go amiss here!~ EXTERN VPLEIB 69
 ++ ~That is your choice. Your talents, or lack of them will not be missed.~ EXTERN VPLEIB 69
 ++ ~You ungrateful wench! Is this the thanks I get for risking my neck to rescue you?~ EXTERN VPLEIB 69


CHAIN VPLEIB 69
~I am grateful enough for my rescue, but had I known beforehand the cost of my freedom I would not have asked for it.~
EXTERN VPLEIB 70


CHAIN VPLEIB 70
~I pray that no more will pay the price my father has for your selfish agenda <CHARNAME>, but I fear that many will. Farewell.~
DO ~LeaveParty() EscapeArea()~ EXIT


CHAIN VPLEIB 71
~Do not act so facetiously <CHARNAME>, you know full well what I meant! I am asking why, when you knew Bodhi for the creature she was, did you align yourself with her and murder an innocent stranger on her orders?~
END
 ++ ~It is easy to kill when the victim is a stranger. I saw your father only as an obstacle to be removed from my path to Irenicus.~ EXTERN VPLEIB 66
 ++ ~Bodhi had knowledge of Irenicus, knowledge I had to have regardless of the price.~ EXTERN VPLEIB 66
 ++ ~It was as I said, your father attacked me before I had chance to reason with him.~ EXTERN VPLEIB 74
 ++ ~My rage at the loss of Imoen blinded me Leina. Bodhi knew much about Irenicus and I needed what she knew in order to pursue him and find her.~ EXTERN VPLEIB 83


CHAIN VPLEIB 72
~I cannot believe the coldness I hear in your voice when you say *a means to an end, nothing more*! You actually believe your needs are what counts above all else, even the sanctity of life.~
EXTERN VPLEIB 73


CHAIN VPLEIB 73
~You ally yourself to any who promise to give you that which you want regardless of the price or consequences that others will pay. Tell me, how can you condone what you have done?~
END
 ++ ~It is easy to kill when the victim is a stranger. I saw your father only as an obstacle to be removed from my path to Irenicus.~ EXTERN VPLEIB 66
 ++ ~Bodhi had knowledge of Irenicus, knowledge I had to have regardless of the price.~ EXTERN VPLEIB 66
 ++ ~It was as I said, your father attacked me before I had chance to reason with him.~ EXTERN VPLEIB 74
 ++ ~My rage at the loss of Imoen blinded me Leina. Bodhi knew much about Irenicus and I needed what she knew in order to pursue him and find her.~ EXTERN VPLEIB 83


CHAIN VPLEIB 74
~How can I believe that? I heard that Bodhi creature's words. On her orders, you went to my father's home fully intending to murder him and now he is dead, his blood is on your hands.~
END
 ++ ~Bodhi sent me that is true, but I had no intentions of doing what she asked.~ EXTERN VPLEIB 75
 ++ ~I thought only to scare him Leina, to get him to leave Athkatla until Bodhi had given me what she promised.~ EXTERN VPLEIB 76
 ++ ~Yes his blood is on my hands, but they are hands that he forced by refusing to heed my words.~ EXTERN VPLEIB 82


CHAIN VPLEIB 75
~If that is true, then why did you bother to go to his home? You could have returned to Bodhi, said he was not home, that you could not find him, after all, his business affairs did take take him away often. You could have said he escaped as you entered the house, there are any number of excuses you could have taken to her, but you did not. Instead, you chose to murder him as she asked.~
END
 ++ ~I knew Bodhi would have her spies follow me, I had to be seen to go into the house.~ EXTERN VPLEIB 66
 ++ ~I wanted to warn him, to let him know that his dealings with the shadow thieves had made him a powerful enemy, namely Bodhi.~ EXTERN VPLEIB 66
 ++ ~I thought only to scare him Leina, to get him to leave Athkatla until Bodhi had given me what she promised.~ EXTERN VPLEIB 81


CHAIN VPLEIB 76
~I... I do not know what to believe. His sick mind was such that he would have seen you as an intruder, possibly he even believed that Samuel had sent you to find me and take me from him. I do not want to believe that he was merely a pawn, a life to be played and discarded for the selfish reasons of others.~
END
 IF ~Global("BodhiJob","GLOBAL",2)~ THEN REPLY ~Then believe in the truth, that in his poor sick mind he saw me as an intruder, someone intent on taking away the only thing he had left in this world, his daughter.~ EXTERN VPLEIB 77
 IF ~Global("BodhiJob","GLOBAL",2)~ THEN REPLY ~All I can say is look back at the state of his mind, his recent behaviour and then judge what you believe his actions would have been faced with an intruder in his home.~ EXTERN VPLEIB 77
 IF ~Global("BodhiJob","GLOBAL",2)~ THEN REPLY ~Only you can decide what to believe and who to trust but you need time to grieve for your father properly before you try to make sense of anything. Stay with the group, give yourself that time.~ EXTERN VPLEIB 77
 IF ~Global("BodhiJob","GLOBAL",0) Global("VP_Guild_Attacked","GLOBAL",1)~ THEN REPLY ~Then believe in the truth, that in his poor sick mind he saw me as an intruder, someone intent on taking away the only thing he had left in this world, his daughter.~ EXTERN VPLEIB N77
 IF ~Global("BodhiJob","GLOBAL",0) Global("VP_Guild_Attacked","GLOBAL",1)~ THEN REPLY ~All I can say is look back at the state of his mind, his recent behaviour and then judge what you believe his actions would have been faced with an intruder in his home.~ EXTERN VPLEIB N77
 IF ~Global("BodhiJob","GLOBAL",0) Global("VP_Guild_Attacked","GLOBAL",1)~ THEN REPLY ~Only you can decide what to believe and who to trust but you need time to grieve for your father properly before you try to make sense of anything. Stay with the group, give yourself that time.~ EXTERN VPLEIB N77


CHAIN VPLEIB 77
~He was not a happy man, his own grief had engulfed him completely. I can no more be certain of his reactions than I can of your intentions that day, so it does not give me the right to judge you <CHARNAME>. One last question and then we will speak no more of it. Why did Bodhi want my father dead?~
END
 ++ ~Bodhi sought to use me as a pawn in her private war against the Shadow Thieves and your father's death as an example to all who have dealings with them.~ EXTERN VPLEIB 78
 ++ ~I think solely to test my allegiance to her, nothing more.~ EXTERN VPLEIB 78


CHAIN VPLEIB 78
~As saddened as I am by your answer, I can only hope he found some release in death and that he gained more than he lost. I will hold the memory of the man I knew as my father before his grief took hold of his mind in my heart always. Now the matter is truly closed and we will speak no more of it.~
END
 ++ ~And it will remain closed if that is your wish.~ EXTERN VPLEIB 79
 ++ ~A sensible decision. Loss is a private thing and we must all find our own way of dealing with it.~ EXTERN VPLEIB 79
 ++ ~The loss of a loved one always leaves the need to speak of them for a time. Let us not close the conversation completely Leina, but merely delay further words lest you need to talk some more at a future time.~ EXTERN VPLEIB 80


CHAIN VPLEIB 79
~Then it is settled, we look to the future now and leave the yesterdays where they belong, in the past.~
EXIT


CHAIN VPLEIB 80
~I thank you for your words of comfort <CHARNAME> and will remember them if the need to talk should ever arise again. For now, let us look ahead and not behind.~
EXIT


CHAIN VPLEIB 81
~Scare him you say! Breaking into his home and threatening him, was that not enough of a scare without resorting to murder?~
END
 ++ ~I knew Bodhi would have her spies follow me, I had to be seen to go into the house armed and ready to do as she had asked. Once inside he gave me no chance to sheathe my weapon or speak.~ EXTERN VPLEIB 76
 ++ ~I wanted to warn him, to let him know that his dealings with the shadow thieves had made him a powerful enemy, namely Bodhi, but I guess my sudden intrusion scared him too well and he would not listen.~ EXTERN VPLEIB 76
 ++ ~Murder was not intended, you must believe me. I simply did not stop to consider what his reaction might be to seeing armed intruders burst into his home. I am sorry, I should have.~ EXTERN VPLEIB 76


CHAIN VPLEIB 82
~And if the situation were reversed? Would you stay your hand if you thought your life was at risk when intruders burst into your home brandishing weapons?~
END
 IF ~Global("BodhiJob","GLOBAL",2)~ THEN REPLY ~I knew Bodhi would have her spies follow me, I had to be seen to go into the house armed and ready to do as she had asked. Once inside he gave me no chance to sheathe my weapon or speak.~ EXTERN VPLEIB 76
 IF ~Global("BodhiJob","GLOBAL",2)~ THEN REPLY ~I wanted to warn him, to let him know that his dealings with the shadow thieves had made him a powerful enemy, namely Bodhi, but I guess my sudden intrusion scared him too well and he would not listen.~ EXTERN VPLEIB 76
 IF ~Global("BodhiJob","GLOBAL",0) Global("VP_Guild_Attacked","GLOBAL",1)~ THEN REPLY ~I only wanted to ask him about you, but I guess my sudden intrusion scared him too well and he would not listen.~ EXTERN VPLEIB 76
 ++ ~Murder was not intended, you must believe me. I simply did not stop to consider what his reaction might be to seeing armed intruders burst into his home. I am sorry, I should have.~ EXTERN VPLEIB 76


CHAIN VPLEIB 83
~Rage is a powerful emotion <CHARNAME> and revenge is a powerful spur. The blindness that comes to those who allow one such emotion to take hold leads to unpredictable results. To allow both emotions to take hold, then reason is also lost.~
EXTERN VPLEIB 84


CHAIN VPLEIB 84
~It is then the innocent that get in the way that suffer. Neither rage nor vengeance are valid excuses for the murder of my father, there is never a valid reason for cold blooded murder.~
END
 ++ ~My rage and anger may have been the cause of my siding with Bodhi but I did not lose my reason. What ever you choose to may believe, murder was never my intention.~ EXTERN VPLEIB 75
 ++ ~I chose my path in haste, whilst anger raged in my heart that is true and once chosen their was no going back. By siding with Bodhi I had burnt all my bridges, it was she who wanted his death not me.~ EXTERN VPLEIB 75
 ++ ~That was not meant as an excuse, only a reason. Bodhi's price for her aid was the murder of your father, but I did not go to his home intending for him to die. You have to believe that.~ EXTERN VPLEIB 75


IF ~Global("VP_BPC","LOCALS",13)~ THEN VPLEIB 85
~Can I sit with you a while <CHARNAME>? I see you also prefer to linger in the solitude and the quiet after the others have retired. I have lost track of the number of times I have looked upward and counted the stars to try and ignore the thoughts that plague me in the silence.~
END
 ++ ~Join me if you wish Leina but do not expect me to indulge in idle chatter.~ DO ~SetGlobal("VP_BPC","LOCALS",14)~ EXTERN VPLEIB 86
 ++ ~Your company is much appreciated Leina but I fear my conversation will be poor tonight.~ DO ~SetGlobal("VP_BPC","LOCALS",14)~ EXTERN VPLEIB 86
 ++ ~I find this an ideal time to evaluate my thoughts and recent events Leina.~ DO ~SetGlobal("VP_BPC","LOCALS",14)~ EXTERN VPLEIB 88
 ++ ~It is a fearsome hour indeed Leina, the hour when all the fears of the day and the past take the opportunity to surface.~ DO ~SetGlobal("VP_BPC","LOCALS",14)~ EXTERN VPLEIB 89


CHAIN VPLEIB 86
~Then I will sit and if no word passes between us at least we have the comfort of knowing neither of us need be alone with our thoughts and fears.~
END
 ++ ~I have no such fears, nor do my thoughts bother me. I was hoping to enjoy the silence after listening to the yammering of you all.~ EXTERN VPLEIB 87
 ++ ~I have no objections to your conversation, it is my own that may be poor.~ EXTERN VPLEIB 90
 ++ ~And what fears crowd your thoughts Leina?~ EXTERN VPLEIB 89


CHAIN VPLEIB 87
~Then I ask that you forgive my intrusion, I will leave you to your solitude and no longer force your ears to listen to my yammering. Sleep well <CHARNAME>.~
DO ~SetGlobal("VP_MyFlirt_Is_Over","LOCALS",1)~ EXIT


CHAIN VPLEIB 88
~Only recent events? Do you never find that mistakes of the past also creep into your mind at these times, forcing you to evaluate them as well?~
END
 ++ ~They do but as no amount of thought will change them I have learnt to dismiss them and move on.~ EXTERN VPLEIB 91
 ++ ~Mistakes are part of lifes way of teaching us, if we are wise we learn from them and call it experience.~ EXTERN VPLEIB 91
 ++ ~Life is about choices Leina and it does not come with a guarantee that we will always make the right ones. Mistakes are inevitable and so we learn to live with them.~ EXTERN VPLEIB 91
 ++ ~Is there something you wish to share with me Leina?~ EXTERN VPLEIB 91


CHAIN VPLEIB 89
~It is not so much the ghosts of the past I find crowding my mind but the ghosts of past mistakes. How does one contend with such an invasion when it causes a body to toss and turn until the darkness of night becomes the light of day?~
END
 ++ ~Mistakes are part of lifes way of teaching us, if we are wise we learn from them and call it experience.~ EXTERN VPLEIB 91
 ++ ~Life is about choices Leina and it does not come with a guarantee that we will always make the right ones. Mistakes are inevitable and so we learn to live with them.~ EXTERN VPLEIB 91
 ++ ~Is there something you wish to share with me Leina?~ EXTERN VPLEIB 91


CHAIN VPLEIB 90
~I sense things weigh heavily on your mind also, but I suspect your thoughts are of present events, whilst mine are ghosts of past mistakes and regrets. I fear I shall never reconcile with the ill choices I have made in my life.~
END
 ++ ~Mistakes are part of lifes way of teaching us, if we are wise we learn from them and call it experience.~ EXTERN VPLEIB 91
 ++ ~Life is about choices Leina and it does not come with a guarantee that we will always make the right ones. Mistakes are inevitable and so we learn to live with them.~ EXTERN VPLEIB 91
 ++ ~Is there something you wish to share with me Leina?~ EXTERN VPLEIB 91


CHAIN VPLEIB 91
~(*Sighs*) If only dealing with them and moving on was as simple as you make it sound. Some mistakes are so deeply entwined with regrets that the roots are too deep to pull up and the scars they leave as they burrow deeper, never heal as each regret surfaces again and again.~
END
 ++ ~(*Yawns*) I suddenly find myself overcome with fatigue. We should both be getting some rest now, sleep well Leina.~ EXTERN VPLEIB 92
 ++ ~We all deal with things in our own way and you must find yours. Now we must rest, we have another arduous journey ahead of us tomorrow.~ EXTERN VPLEIB 92
 ++ ~I am no gardener and would baulk at pulling up roots in case I disturb a flower instead of a weed, but I am a good listener if you wish to talk.~ EXTERN VPLEIB 93
 ++ ~It would appear sleep will not come easily to either of us, so why not tell me what bothers you Leina?~ EXTERN VPLEIB 93


CHAIN VPLEIB 92
~I will remain here a while longer, I am in no rush for my bed. I prefer to sit here than wrestle the ghosts that keep sleep from taking me. I trust your own slumber will be less troublesome. Sleep well <CHARNAME>.~
DO ~SetGlobal("VP_MyFlirt_Is_Over","LOCALS",1)~ EXIT


CHAIN VPLEIB 93
~I have always been a dreamer, an idealist but then given my upbringing, secluded and cosseted in my father's house how could I be anything else but. All I ever knew was the warmth, goodness and love of my parents. I had no idea how cruel and materialistic people really are!~
END
 ++ ~You do not know how lucky you were Leina, to be surrounded by so much love and to know that you were brought into this world through an act of love, not necessity.~ EXTERN VPLEIB 94
 ++ ~Not all people, but there are those who cannot except that there are those that have so little whilst others have so much.~ EXTERN VPLEIB 97
 ++ ~Not everyone is out for their own gain, but you will never know that if you do not learn to trust.~ EXTERN VPLEIB 97


CHAIN VPLEIB 94
~I was forgetting, you were also brought up in ignorance. Your Gorion sheltered you from the truth of your heritage just as my parents sheltered me from the world and its nastier side. Who is to say our paths would not have been easier had we both been better prepared.~
END
 ++ ~That is neither here nor there, parents come with an instinct to protect and shelter their offspring. What they do forget, is that is one day their offspring will have to meet the world on their own.~ EXTERN VPLEIB 95
 ++ ~To blame your mistakes on your parents is unfair Leina, in the end we all make our own choices sometimes as much by instinct as by knowledge.~ EXTERN VPLEIB 95
 ++ ~Parents are but guides for the time we are children, as we become adults we take responsibility for our own actions.~ EXTERN VPLEIB 95


CHAIN VPLEIB 95
~Still, I should have looked closer at my mother's life, asked why I spent so much time in the house, seldom allowed to play with other children. Now of course I see why, she sought to hide the prejudices that she endured from me, wanted me to know only love and goodness.~
EXTERN VPLEIB 96


CHAIN VPLEIB 96
~I believe she even kept such things from my father, she loved him so completely that she would not have him think he had brought her to such a lonely existence... That was all I ever wanted from life, to find a love as passionate as theirs. How could I know that love could be so cruel and cause so much pain!~
END
 ++ ~We are all born to seek love, it is the way nature ensures the continuation of all her creatures. Even so, not all are lucky enough to find it.~ EXTERN VPLEIB 98
 ++ ~We seldom have choice or control over whom we love, when are hearts are touched all sense leaves our mind, and we become slaves to our emotions.~ EXTERN VPLEIB 98
 ++ ~It is not wrong to want to be loved. We see the happiness in the faces of those touched by it and long to be touched ourselves, to experience the rapture and the warmth that comes with knowing we are loved.~ EXTERN VPLEIB 98
 ++ ~From what I have seen of love it blows hot and cold like the changing seasons. None would expect the seasons to remain constant so why expect it of love, when love itself is, to some extent, controlled by nature?~ EXTERN VPLEIB 98


CHAIN VPLEIB 97
~How was I supposed to judge who is trustworthy and who is not? How could I be expected to make right choices when I knew so little of the world of men.! My parents were wrong to cosset me as they did!~
END
 ++ ~That is neither here nor there, parents come with an instinct to protect and shelter their offspring. What they do forget, is that is one day their offspring will have to meet the world on their own.~ EXTERN VPLEIB 95
 ++ ~To blame your mistakes on your parents is unfair Leina, in the end we all make our own choices sometimes as much by instinct as by knowledge.~ EXTERN VPLEIB 95
 ++ ~Parents are but guides for the time we are children, as we become adults we take responsibility for our own actions.~ EXTERN VPLEIB 95


CHAIN VPLEIB 98
~I no longer crave love, nor the warmth and passion it brings. To love is to open oneself to possible pain, your heart becomes vulnerable to the whims and moods of the one in whose hands you place it.~
EXTERN VPLEIB 99


CHAIN VPLEIB 99
~No, I shall not love again nor will my heart ever be laid open for a man to enter and tear apart with his touch. These eyes have shed their last tears over love and if any man should mistake the warmth I find in his embrace for love then let him shed his tears for me!~
END
 ++ ~Where do such angry words come from Leina? I cannot conceive that your heart is so cold?~ EXTERN VPLEIB 100
 ++ ~Love will not be denied Leina. If your fate is entwined with another it will find you and when it does, no sacrifice will seem too great in order to hold on to it.~ EXTERN VPLEIB 100
 ++ ~Leina, you have a beautiful soul, this clearly shines through your music. Why then, do you allow such cold, impassionate feelings to invade your heart?~ EXTERN VPLEIB 100
 ++ ~I feel a someone done someone wrong story coming up here. Maybe this is a good time to think about getting some rest.~ EXTERN VPLEIB 100


CHAIN VPLEIB 100
~I... I did not mean for this conversation to become so personal <CHARNAME>. A while back I allowed pride to dictate my actions and now I have to live with the regrets that so often accompany prideful decisions.~
EXTERN VPLEIB 101


CHAIN VPLEIB 101
~These are the thoughts that haunt my mind, keeping sleep at bay each night. I have to find some way to combat them but I do not believe sharing them will help either of us rest easy tonight.~
END
 ++ ~That is a relief, I really was not up for another sob story, in fact I suggest we get some rest before the others awaken.~ EXTERN VPLEIB 92
 ++ ~There will be other such hours, many I fear before my task is done. We can talk then, for now, let us both try and get some rest.~ EXTERN VPLEIB 102
 ++ ~I sleep lightly Leina, so any time you feel the need, know that I am here for you. Do not feel that you have to count the stars alone.~ EXTERN VPLEIB 102


CHAIN VPLEIB 102
~I too sleep lightly so if you should ever find yourself in need of an ear or just to have someone sit beside you in the lonely hours you have but to ask. I will keep you from your rest no longer, sleep well <CHARNAME>.~
DO ~SetGlobal("VP_Enable_Flirts","LOCALS",1) RestParty()~ EXIT //first flirt phase


IF ~Global("VP_BPC","LOCALS",15) Global("VP_BPC_Buffer1","LOCALS",1)~ THEN VPLEIB 103
~[The elven city of *Ael-el-Van-aira*, roughly translates to *The home in the great green forest*, pronounced Arl-el-Vahn-ara. Leina's mother's clan name *Tia'Llaeyth* pronounced Te-a-Lay-a-yith, roughly translated to mean *The people of magic and harmony*.]

(*Stops quite still*) Listen, do you hear that?~
END
 ++ ~What is it Leina, trouble? Curses, and us out in the open like this.~ DO ~SetGlobal("VP_BPC","LOCALS",16) SetGlobal("VP_BPC_Buffer1","LOCALS",2)~ EXTERN VPLEIB 104
 ++ ~What... where...?~ DO ~SetGlobal("VP_BPC","LOCALS",16) SetGlobal("VP_BPC_Buffer1","LOCALS",2)~ EXTERN VPLEIB 104
 ++ ~I hear only the song of a bird Leina. What do you hear?~ DO ~SetGlobal("VP_BPC","LOCALS",16) SetGlobal("VP_BPC_Buffer1","LOCALS",2)~ EXTERN VPLEIB 105


CHAIN VPLEIB 104
~That sound, it is one I know so well and yet never knew where she had learnt it... until now that is. Listen.~
END
 ++ ~I am listening, but all I hear is the sound of that pesky bird.~ EXTERN VPLEIB 105
 ++ ~Somebody shoot that damn bird and maybe then I will be able to hear whatever seems to be unnerving you.~ EXTERN VPLEIB 105
 ++ ~Who learnt what from who? Hold on a sec. Whilst I throw something at that bird.~ EXTERN VPLEIB 105


CHAIN VPLEIB 105
~That is it, the song of that bird, or at least the melody it trills. I cannot see it but for a moment I thought... it reminded me of a song my mother used to sing for my father.~
END
 ++ ~Is that all! For a moment I thought we were about to be attacked!~ EXTERN VPLEIB 106
 ++ ~A pretty enough tune but this is not a good time to be listening to bird song.~ EXTERN VPLEIB 107
 ++ ~It is beautiful Leina, I would have missed it had you not made me stop and listen.~ EXTERN VPLEIB 109
 ++ ~If her voice was as sweet as the sound of that bird then it is clear from who you inherited your talent.~ EXTERN VPLEIB 109


CHAIN VPLEIB 106
~I did not mean to alarm, the familiarity of it caught me by surprise. I never expected to hear it again, for a moment I heard once again my mother's voice as she sang of the joy of being alive. I thought to share the moment with you, that is all.~
END
 ++ ~The twitterings of birds to my ears are no more than gibberish twitterings. Now that it has stopped can we please move on!~ EXTERN VPLEIB 108
 ++ ~Try and think before you stop and say listen again. See how you have set the group on edge looking for the threat.~ EXTERN VPLEIB 108
 ++ ~I am glad it brought you a few moments of joy but it did nothing for me so perhaps we can get a move on now.~ EXTERN VPLEIB 108
 ++ ~Yes.... quite lovely but we should not be dithering here.~ EXTERN VPLEIB 108
 ++ ~When death parts us from loved ones and leaves only their memory, we should cherish each one, lest they become lost to us forever.~ EXTERN VPLEIB 259


CHAIN VPLEIB 107
~No, I do not suppose it is. More's the pity because there is joy to be heard in so simple a melody if you only take the time to listen. We all need a little joy in our lives sometimes.~
END
 ++ ~The twitterings of birds to my ears are no more than gibberish twitterings. Now that it has stopped can we please move on!~ EXTERN VPLEIB 108
 ++ ~Try and think before you stop and say listen again. See how you have set the group on edge looking for the threat.~ EXTERN VPLEIB 108
 ++ ~I am glad it brought you a few moments of joy but it did nothing for me so perhaps we can get a move on now.~ EXTERN VPLEIB 108
 ++ ~Yes.... quite lovely but we should not be dithering here.~ EXTERN VPLEIB 108
 ++ ~When death parts us from loved ones and leaves only their memory, we should cherish each one, lest they become lost to us forever.~ EXTERN VPLEIB 259


CHAIN VPLEIB 108
~(*Sighs*) The moment has passed, but the joy of hearing the melody again is still here... in my heart, where it will remain. Whoever sent you to me little bird knows my heart well, thank you for your song.~
DO ~SetGlobal("VP_MyFlirt_Is_Over","LOCALS",1)~ EXIT


CHAIN VPLEIB 109
~(*Sighs*) I wish you could have heard the same melody sung by my mother <CHARNAME>. There were many such songs she knew, how many I wonder took their melodies from the songs of the birds.~
EXTERN VPLEIB 110


CHAIN VPLEIB 110
~She was elven born as you know and when she sang the words of her people it was truly as if she sang with the birds. I learnt all that all that I know listening to her. My father always said that she was blessed by the gods, but if that were true, why then did they take her from us so cruelly!~
END
 ++ ~She sounds like she was a very special lady Leina, all mothers are special in their way. I only wish I could have known mine.~ EXTERN VPLEIB 111
 ++ ~It is no easy thing to face Leina, but we all know that there will come a time when our parents leave us, those fortunate to know their parents that is. It is the order of things and cannot be changed.~ EXTERN VPLEIB 111
 ++ ~What happened Leina? She could not have lived one quarter of her lifespan when she died.~ EXTERN VPLEIB 115
 ++ ~I can see her death has effected you greatly but I feel there is more than grief here, there is also anger. Anger at who Leina, her for dying or the world you are forced to live in without her?~ EXTERN VPLEIB 115


CHAIN VPLEIB 111
~(*Hotly*) Be thankful that you will never know the pain that only the death of one's mother brings because it is like a fire that can never be quenched!~
EXTERN VPLEIB 112


CHAIN VPLEIB 112
~They tell you that time will heal and yes, maybe the flames do abate for a while... after you have forgiven yourself for all the things you never said, the things you never did or even the things you did say and did do.~
EXTERN VPLEIB 113


CHAIN VPLEIB 113
~Then one day something quite trivial occurs, you hear a word, a song and once again fuel is added to those flames and the pain begins all over again.~
END
 ++ ~I can see her death has effected you greatly but I feel there is more than grief here, there is also anger. Anger at who Leina, her for dying or the world you are forced to live in without her?~ EXTERN VPLEIB 114
 ++ ~I know of this pain that you speak of. Gorion was in all ways the only father I knew and I loved him dearly, but I would gladly risk the same pain just to know my mother, no matter how brief a time I was given.~ EXTERN VPLEIB 114
 ++ ~You do not have a monopoly on pain Leina. It has touched us all at some time.~ EXTERN VPLEIB 114


CHAIN VPLEIB 114
~Please... I am sorry... forgive me, you do not deserve such angry words. I have no idea where they came from.~
END
 ++ ~There is nothing to forgive, grief and anger often come hand in hand and talking is a very good release for these emotions.~ EXTERN VPLEIB 115
 ++ ~I see my words have upset you, perhaps you would rather we spoke no more?~ EXTERN VPLEIB 115


CHAIN VPLEIB 115
~It is not easy to speak of her death, more so because no-one knows the real truth of it.~
EXTERN VPLEIB 116


CHAIN VPLEIB 116
~She was from the elven city of Ael-el-Van-aira, north of The High Forest. The city has several large mithril mines known but to the few they permit trade with.~
EXTERN VPLEIB 117


CHAIN VPLEIB 117
~It was from a visiting elf from Ael-el-Van-aira that my father heard of possible trade with the city. This visiting elf very soon became his wife and later my mother.~
END
 ++ ~Ael-el-Van-aira? Not a name I have heard before.~ EXTERN VPLEIB 118
 ++ ~What was an elf from Ael-el-Van-aira doing in Athkatla?~ EXTERN VPLEIB 118


CHAIN VPLEIB 118
~The city itself has very little contact with settlements this far south but the elven females of Ael-el-Van-aira are quite resourceful when it comes to looking for husbands and she met my father whilst he was overseeing business in Waterdeep.~
EXTERN VPLEIB 119


CHAIN VPLEIB 119
~It was unusual to see Ael-el-Van-airians in Waterdeep and my father was smitten by her ethereal exotic beauty the moment he saw her.~
EXTERN VPLEIB 120


CHAIN VPLEIB 120
~They married within weeks of meeting and instead of him taking her clan name as is traditional among her people she took his name believing it would make things less complicated for them living in Athkatla.~
END
 ++ ~She was an exceptional lady, very much like her daughter. Please continue.~ EXTERN VPLEIB 121
 ++ ~Your father was fortunate, such self sacrificing love is rare indeed, but please continue your tale.~ EXTERN VPLEIB 121
 ++ ~And they lived happily ever after, but not as long as they had expected to. What happened?~ EXTERN VPLEIB 121


CHAIN VPLEIB 121
~Do not rush me, I will tell it in my own time!~
EXTERN VPLEIB 122


CHAIN VPLEIB 122
~Not long after I married and left Athkatka my mother received news she was to attend a meeting of the High Council of Ael-el-Van-aira but the messenger would not say why in front of my father... Damn the elves and all their secrecy!~
EXTERN VPLEIB 123


CHAIN VPLEIB 123
~Later, he received news saying that she had succumbed to sickness whilst travelling and by the time she reached the city there was nothing they could do to save her.~
EXTERN VPLEIB 124


CHAIN VPLEIB 124
~Sadly she was cremated before my father could reach Ael-el-Van-aira... to prevent the spread of infection he was told, he did not even have a grave he could mourn beside. All he had to remember her by was her pendant.~
EXTERN VPLEIB 125


CHAIN VPLEIB 125
~He became convinced her clan was keeping something from him and he became paranoid to the point he was afraid the same fate might befall me should he lose sight of me.~
END
 ++ ~Poor Leina! So your marriage to Duvaine was a ploy to keep you in Athkatla, close to him.~ EXTERN VPLEIB 126
 ++ ~I am sorry Leina, but now I understand partly why he was prepared to hold you captive rather than risk you leaving Athkatla. Not That I condone his actions.~ EXTERN VPLEIB 126
 ++ ~Was he delusional, or was there some conspiracy on the part of the clan to keep the truth from him do you think?~ EXTERN VPLEIB 126


CHAIN VPLEIB 126
~Maybe my father was right to worry... one thing he knew for sure was that she could not have been wearing her pendant. If she had it would have sustained her life until she reached aid or until such a time she could be healed.~
EXTERN VPLEIB 127


CHAIN VPLEIB 127
~According to my father, she never removed it in case I ever had need to call on her, so someone must have removed it deliberately knowing that in doing so she would die...~
EXTERN VPLEIB 128


CHAIN VPLEIB 128
~(*Hotly*) I am Tia'Llaeyth my mother's daughter and heir! I swear one day I will go to Ael-el-Van-aira and demand the truth from her clan. As a rightful daughter they cannot deny me!~
END
 ++ ~And do you believe that by doing this you will end the counting of the stars on sleepless nights?~ EXTERN VPLEIB 129
 ++ ~Why torture yourself so? I am sure it would aggrieve your mother to see her daughter so tormented.~ EXTERN VPLEIB 129
 ++ ~Not all lies are conspiracies Leina, some are told to prevent further pain, could this not be your mother's people's intention?~ EXTERN VPLEIB 129


CHAIN VPLEIB 129
~I have to know! If she truly got sick whilst travelling then I could have aided her... (*Pulling at the pendant around her neck*)... if not for my own stupid pride I would have been wearing this around my neck!~
EXTERN VPLEIB 130


CHAIN VPLEIB 130
~Instead I shoved it in my backpack so she would not learn of my plight after being deserted by the rat I chose for a husband. In doing so, I severed the only connection that could have possibly saved her life.~
END
 ++ ~Storming into Ael-el-Van-aira and demanding answers will not change what has happened. You have to let go of your grief and anger, live the life your parents gave to you.~ EXTERN VPLEIB 131
 ++ ~You cannot dwell on what ifs Leina, their only purpose is to instill more guilt in ourselves and to prevent us from moving on.~ EXTERN VPLEIB 131
 ++ ~You should except that yes it was possible you could have aided your mother but you must also except the possibility that there was nothing you could have done for her.~ EXTERN VPLEIB 131


CHAIN VPLEIB 131
~Maybe you are right <CHARNAME>, but knowing I could have aided my mother is as important as knowing that I could not. I need to know myself which it was in order to face and come to terms with her death in my own way. That is why, one day, I will travel to Ael-el-Van-aira, I will face her clan and they will tell me the truth of it.~
END
 ++ ~Then I truly hope you find what you need Leina and that your journey when you undertake it will not cause you more pain.~ EXTERN VPLEIB 132
 ++ ~If that is what you wish to do then I will accompany you on your journey once this task of mine is done.~ EXTERN VPLEIB 132
 ++ ~Elves are tricky beings to deal with, they guard their secrets well. I fear you will be hard pressed to loosen their tongues and get you answers, no matter what your lineage may be.~ EXTERN VPLEIB 132


CHAIN VPLEIB 132
~When I do journey to Ael-el-Van-aira, you can be assured I will not be leaving the city without my answers and whatever they might be, they will be truth!~
EXIT


IF ~Global("VP_BPC","LOCALS",15) Global("VP_BPC_Buffer2","LOCALS",1)~ THEN VPLEIB 133
~I am tired of carrying the grime of the road, can we not find an inn to spend this night?~
END
 ++ ~So, I take it you are not enjoying a life on the road Leina?~ DO ~SetGlobal("VP_BPC","LOCALS",16) SetGlobal("VP_BPC_Buffer2","LOCALS",2)~ EXTERN VPLEIB 134
 ++ ~What does it matter where we sleep, you always end up walking the floor most of the night anyway Leina?~ DO ~SetGlobal("VP_BPC","LOCALS",16) SetGlobal("VP_BPC_Buffer2","LOCALS",2)~ EXTERN VPLEIB 135
 ++ ~And here I am thinking that bards like to look at the stars, compose and sing songs whilst looking to the moon.~ DO ~SetGlobal("VP_BPC","LOCALS",16) SetGlobal("VP_BPC_Buffer2","LOCALS",2)~ EXTERN VPLEIB 136
 ++ ~Most of the inns we have frequented have all been rat infested. If I am to sleep with rats I am not paying for the privilege.~ DO ~SetGlobal("VP_BPC","LOCALS",16) SetGlobal("VP_BPC_Buffer2","LOCALS",2)~ EXTERN VPLEIB 137


CHAIN VPLEIB 134
~(*Laughs*) On the contrary the life suits me very well <CHARNAME>. It would be nice to have a bath though, my pack is heavy enough without having to carry the added weight of the dust from the road.~
END
 ++ ~We have put a couple of tough travelling days behind us haven't we, maybe we can all do with soft bed tonight.~ EXTERN VPLEIB 138
 ++ ~Mmm, now you come to mention it, we do all whiff a bit.~ EXTERN VPLEIB 138
 ++ ~And here was I thinking it was the sun colouring your cheeks, however... now that I look closer I can see the little bits of pink in between the black.~ EXTERN VPLEIB 138
 ++ ~A bath... what is one of those? Am I right in remembering that it has something to do with immersing oneself in water?!~ EXTERN VPLEIB 138
 ++ ~We will sleep as we usually do, where we drop. If you are lucky you will get your bath if not then we rest under the stars again.~ EXTERN VPLEIB 140


CHAIN VPLEIB 135
~(*Laughs*) At least if I was to smell fresher, I might attract some company during my walks and the night would not be so lonely. Seriously <CHARNAME>, I would kill for a bath.~
END
 ++ ~We have put a couple of tough travelling days behind us haven't we, maybe we can all do with soft bed tonight.~ EXTERN VPLEIB 138
 ++ ~Mmm, now you come to mention it, we do all whiff a bit.~ EXTERN VPLEIB 138
 ++ ~And here was I thinking it was the sun colouring your cheeks, however... now that I look closer I can see the little bits of pink in between the black.~ EXTERN VPLEIB 138
 ++ ~A bath... what is one of those? Am I right in remembering that it has something to do with immersing oneself in water?!~ EXTERN VPLEIB 138
 ++ ~We will sleep as we usually do, where we drop. If you are lucky you will get your bath if not then we rest under the stars again.~ EXTERN VPLEIB 140


CHAIN VPLEIB 136
~(*Laughs*) If I was to look to the moon tonight with a song, she would hide her face thinking that some crazed mud woman was trying to woo her.~
END
 ++ ~You are forgetting Leina, the moon knows all. She can see what lies beneath, even if what lies beneath is hidden deep.~ EXTERN VPLEIB 141
 ++ ~I can not see the moon turning her face if the song is worth listening to, can you?~ EXTERN VPLEIB 141
 ++ ~Mud woman... eh? Then perhaps water is the last thing you should go near.~ EXTERN VPLEIB 141
 ++ ~She is a gracious lady Leina. She will see the grime for what it is, the result of travelling the hard road that has been set before us.~ EXTERN VPLEIB 141


CHAIN VPLEIB 137
~(*Smiles*) I could brave anything after a bathe in hot steaming water, even rats. Please say that we will stay at an inn tonight <CHARNAME>, I would love to get rid of all this grime?~
END
 ++ ~Ah, but maybe the rats will think twice before approaching us if we do not smell appetising enough to them?~ EXTERN VPLEIB 143
 ++ ~Then perhaps we should consider carrying a bath tub with us. The thought of Leina ready to brave anything would put fear into any rat or enemy that we meet along our way.~ EXTERN VPLEIB 143
 ++ ~(*Smiling*) A bath! You mean to give the rats freshly bathed flesh to gnaw into?~ EXTERN VPLEIB 143
 ++ ~In that case rats and enemies beware for we all bathe tonight.~ EXTERN VPLEIB 143
 ++ ~We will sleep as we usually do, where we drop. If you are lucky you will get your bath if not then we rest under the stars again.~ EXTERN VPLEIB 140


CHAIN VPLEIB 138
~Then you will consider it? An inn with a bath house, lots of hot steaming water and large fluffy towels to wrap oneself in. The perfect end to a hard day's toil.~
END
 ++ ~If we do not find an inn Leina I promise you we will camp by a river, just so's you can bathe. I am sure we can spare a blanket for you to wrap yourself in when you are done.~ EXTERN VPLEIB 139
 ++ ~Let us see how far we get today and worry about where we will be sleeping when we tire Leina.~ EXTERN VPLEIB 140
 ++ ~We will sleep as we usually do, where we drop. If you are lucky you will get your bath if not then we rest under the stars again.~ EXTERN VPLEIB 140


CHAIN VPLEIB 139 //Leina7:Reply to CH.10&22.
~(*Laughing softly*) Then <CHARNAME>, if it is to be a river, then you can have the privilege of testing the temperature first.~
EXIT


CHAIN VPLEIB 140 //Leina8:Reply to CH.9, 11-12, 21&23-24.
~(*Laughing softly*) In that case <CHARNAME>, I have a song that will inspire us to keep going until we do sight an inn where we can drop. When we do, be sure to make use of the bath house youself <CHARNAME> or you will be marching well ahead of us all come tomorrow.~
EXIT


CHAIN VPLEIB 141
~Maybe so, but think how much more she would be pleased if we took the time to show our respect by standing before her shining almost as brightly as she herself. She may even illuminate our road more brightly with her radiance when we are forced to travel the night.~
EXTERN VPLEIB 142


CHAIN VPLEIB 142
~Please <CHARNAME>, let us not force her to look upon our road weary faces again, please say that we will sleep in the comfort of an inn tonight and rid ourselves of the dust from the road?~
END
 ++ ~If we do not find an inn Leina I promise you we will camp by a river, just so's you can bathe. I am sure we can spare a blanket for you to wrap yourself in when you are done.~ EXTERN VPLEIB 139
 ++ ~Let us see how far we get today and worry about where we will be sleeping when we tire Leina.~ EXTERN VPLEIB 140
 ++ ~We will sleep as we usually do, where we drop. If you are lucky you will get your bath if not then we rest under the stars again.~ EXTERN VPLEIB 140


CHAIN VPLEIB 143
~(*Laughs softly*) So you make light of the bards request, and you not smelling so sweetly yourself <CHARNAME>. If I can brave the rats so can *the hero of the sword coast*. So is to be an inn, or does the hero's phobia of rats become another tale for the bards to tell?~
END
 ++ ~(*Smiling*) Oh the bard's words, they are so cruel! You will get your bath Leina, I promise. If we do not find an inn, then we will camp by a river, just so's you can bathe.~ EXTERN VPLEIB 139
 ++ ~Let us see how far we get today and worry about where we will be sleeping when we tire Leina.~ EXTERN VPLEIB 140
 ++ ~We will sleep as we usually do, where we drop. If you are lucky you will get your bath if not then we rest under the stars again.~ EXTERN VPLEIB 140


//If the group's next rest is at an inn then banter Leina/PC2a followed by Leina/PC3a.
//If the group should rest outside before resting at an inn then banterLeina/PC4a. and Leina/PC2a& Leina/PC3a will occur when they do next rest at an inn.

//Leina/PC.2a
//Takes place when the group next rest at an inn.

IF ~Global("VP_BPC","LOCALS",16) Global("VP_BPC_Buffer2","LOCALS",3) Global("VP_Bathe_Talk","LOCALS",1)~ THEN VPLEIB 144
~I have spoken to the barkeep, he has only the one bath but he has assured me that he has plenty of hot water for us all. So make the most of it my friends and follow my lead.~
END
 ++ ~So the bard wants to lead us into hot water does she?~ DO ~SetGlobal("VP_BPC_Buffer2","LOCALS",4)~ EXTERN VPLEIB 145
 ++ ~You want us to follow you into the tub Leina, all of us? Interesting!~ DO ~SetGlobal("VP_BPC_Buffer2","LOCALS",4)~ EXTERN VPLEIB 146
 ++ ~I don't think we would emerge very fresh if we all followed you into your bath Leina.~ DO ~SetGlobal("VP_BPC_Buffer2","LOCALS",4)~ EXTERN VPLEIB 147
 ++ ~One at a time or all together Leina?~ DO ~SetGlobal("VP_BPC_Buffer2","LOCALS",4)~ EXTERN VPLEIB 148
 ++ ~You take your bath Leina, I need a soft bed and rest first.~ DO ~SetGlobal("VP_BPC_Buffer2","LOCALS",4)~ EXTERN VPLEIB 149
 ++ ~Then you best enjoy the water whilst it is hot. See you in the morning Leina.~ DO ~SetGlobal("VP_BPC_Buffer2","LOCALS",4)~ EXTERN VPLEIB 149
 ++ ~We are all big enough to decide whether we bathe or not for ourselves Leina.~ DO ~SetGlobal("VP_BPC_Buffer2","LOCALS",4)~ EXTERN VPLEIB 150


CHAIN VPLEIB 145
~(*Smiling*) Trust me, for the sake of all our noses, this is one time getting into hot water is definitely beneficial to all. Now, shall we toss for who gets first dip?~
END
 ++ ~And here was I thinking that the group who bathed together stayed together.~ EXTERN VPLEIB 151
 ++ ~Then as it was you who set this up for us, you may take first dip, but I intend being second and that's non negotiable.~ EXTERN VPLEIB 152
 ++ ~You take your bath Leina, the rest of us will decide after we have tasted a couple of the barkeep's fine ales.~ EXTERN VPLEIB 153
 ++ ~Then you best be quick if you want me to follow because the barkeep's ales are looking a lot more inviting than a hot tub at the moment.~ EXTERN VPLEIB 153
 ++ ~In that case, I for one will gladly follow the bard... or should that be, follow after the bard?~ EXTERN VPLEIB 154
 ++ ~Then I suggest you stop talking and start bathing before the rest of us drop whilst we wait.~ EXTERN VPLEIB 155


CHAIN VPLEIB 146
~(*Smiling*) If it would get rid of the stench of the road, I can forego my modesty, but as I have secured enough hot water for all, our blushes have been spared.~
END
 ++ ~And here was I thinking that the group who bathed together stayed together.~ EXTERN VPLEIB 151
 ++ ~Then as it was you who set this up for us, you may take first dip, but I intend being second and that's non negotiable.~ EXTERN VPLEIB 152
 ++ ~You take your bath Leina, the rest of us will decide after we have tasted a couple of the barkeep's fine ales.~ EXTERN VPLEIB 153
 ++ ~Then you best be quick if you want me to follow because the barkeep's ales are looking a lot more inviting than a hot tub at the moment.~ EXTERN VPLEIB 153
 ++ ~In that case, I for one will gladly follow the bard... or should that be, follow after the bard?~ EXTERN VPLEIB 154
 ++ ~Then I suggest you stop talking and start bathing before the rest of us drop whilst we wait.~ EXTERN VPLEIB 155


CHAIN VPLEIB 147
~(*Smiling*) I have no intention of washing off my own grime, only to emerge wearing yours, that is why I have secured hot water for us all, as you well know <CHARNAME>.~
END
 ++ ~And here was I thinking that the group who bathed together stayed together.~ EXTERN VPLEIB 151
 ++ ~Then as it was you who set this up for us, you may take first dip, but I intend being second and that's non negotiable.~ EXTERN VPLEIB 152
 ++ ~You take your bath Leina, the rest of us will decide after we have tasted a couple of the barkeep's fine ales.~ EXTERN VPLEIB 153
 ++ ~Then you best be quick if you want me to follow because the barkeep's ales are looking a lot more inviting than a hot tub at the moment.~ EXTERN VPLEIB 153
 ++ ~In that case, I for one will gladly follow the bard... or should that be, follow after the bard?~ EXTERN VPLEIB 154
 ++ ~Then I suggest you stop talking and start bathing before the rest of us drop whilst we wait.~ EXTERN VPLEIB 155


CHAIN VPLEIB 148
~(*Smiling*) Well, as there is enough hot water for at least six we don't have to all rush at once.~
END
 ++ ~And here was I thinking that the group who bathed together stayed together.~ EXTERN VPLEIB 151
 ++ ~Then as it was you who set this up for us, you may take first dip, but I intend being second and that's non negotiable.~ EXTERN VPLEIB 152
 ++ ~You take your bath Leina, the rest of us will decide after we have tasted a couple of the barkeep's fine ales.~ EXTERN VPLEIB 153
 ++ ~Then you best be quick if you want me to follow because the barkeep's ales are looking a lot more inviting than a hot tub at the moment.~ EXTERN VPLEIB 153
 ++ ~In that case, I for one will gladly follow the bard... or should that be, follow after the bard?~ EXTERN VPLEIB 154
 ++ ~Then I suggest you stop talking and start bathing before the rest of us drop whilst we wait.~ EXTERN VPLEIB 155


CHAIN VPLEIB 149
~Then I will take it upon myself to ensure there will be hot water when you rise <CHARNAME>. If you were to lead us tomorrow in your present state, all enemies within a league will know of our approach. Be sure to use it. Sleep well. (*She turns and heads towards the bath house.*)~
DO ~SetGlobal("VP_MyFlirt_Is_Over","LOCALS",1)~ EXIT


CHAIN VPLEIB 150
~That is true, but sometimes it takes the nose of another to notice that which our own noses miss. I have secured enough hot water for us all, use it or not, your choice. (*She turns and heads towards the bath house.*)~
DO ~SetGlobal("VP_MyFlirt_Is_Over","LOCALS",1)~ EXIT


CHAIN VPLEIB 151
~(*Laughs*) I believe it is the group that plays together stays together, but your interpretation is... interesting <CHARNAME>. (*She turns and heads for the bath house.*)~
DO ~SetGlobal("VP_Enable_Flirts","LOCALS",2)~ EXIT //second flirt phase


CHAIN VPLEIB 152
~That is something you can decide amongst yourselves. I have a date with hot water and fluffy towels. (*She turns and heads for the bath house.*)~
DO ~SetGlobal("VP_Enable_Flirts","LOCALS",2)~ EXIT


CHAIN VPLEIB 153
~(*Smiling*) Then as I pass, I will whisper in the barkeep's ear to ration his ales until all have partook of the hospitality of his bath house. (*She turns and heads for the bath house.*)~
DO ~SetGlobal("VP_MyFlirt_Is_Over","LOCALS",1)~ EXIT


CHAIN VPLEIB 154
~I think, *when the bard emerges dressed and refreshed* is a better turn of phrase don't you <CHARNAME>? (*She laughs and heads for the bath house.*)~
DO ~SetGlobal("VP_Enable_Flirts","LOCALS",2)~ EXIT //second flirt phase


CHAIN VPLEIB 155
~Don't worry <CHARNAME>, should you all nod off waiting, I know a rousing tune that is guaranteed to wake the dead from their slumber. (*She laughs and heads for the bath house.*)~
DO ~SetGlobal("VP_MyFlirt_Is_Over","LOCALS",1)~ EXIT


//Leina/PC.3a.
//The next morning, after the group have roused from their rest.

IF ~Global("VP_BPC","LOCALS",16) Global("VP_BPC_Buffer2","LOCALS",5)~ THEN VPLEIB 156
~I had forgotten how good hot water and soap could make a person feel. I feel refreshed and ready to face whatever the day cares to throw at us.~
END
 ++ ~But your bath did not seem to bring sleep to you any quicker Leina, I still heard you pacing the room last night.~ DO ~SetGlobal("VP_BPC_Buffer2","LOCALS",6)~ EXTERN VPLEIB 157
 ++ ~I had my doubts Leina. The noise that was coming from the bath house last night, I was not sure whether someone was trying to drown you.~ DO ~SetGlobal("VP_BPC_Buffer2","LOCALS",6)~ EXTERN VPLEIB 158
 ++ ~As you can see, I am just as fresh as you, if not fresher looking at the shadows around your eyes, and I had no need to sit in a tub of hot water for an hour or more.~ DO ~SetGlobal("VP_BPC_Buffer2","LOCALS",6)~ EXTERN VPLEIB 159
 ++ ~I have to agree with you there Leina. With the dust of the road gone, I feel fully charged and ready to face the day.~ DO ~SetGlobal("VP_BPC_Buffer2","LOCALS",6)~ EXTERN VPLEIB 160


CHAIN VPLEIB 157
~It will take more than a hot bath and a soft bed to chase my nightmares away <CHARNAME> although they have lessened since my travels with this group began.~
END
 ++ ~Things never seem as bad when one is surrounded by friends.~ EXTERN VPLEIB 161
 ++ ~Time is the greatest healer there is Leina, but we are usually too impatient to be healed.~ EXTERN VPLEIB 163
 ++ ~It is easy to see the light in your eyes return a little more each day as the shadows slowly leave them.~ EXTERN VPLEIB 166
 ++ ~Then thankfully it will not be too long before we can all sleep undisturbed.~ EXTERN VPLEIB 168


CHAIN VPLEIB 158
~Ah, me thinks <CHARNAME> does not have the ear to know a fine tune when it is sung. The acoustics of a bath house is great for trying out new compositions, but as you wouldn't appreciate it, I am not about to share my new masterpiece with you.~
END
 ++ ~Then my ears will be ever grateful for that.~ EXTERN VPLEIB 169
 ++ ~Then perhaps you should reserve your singing for the bath house Leina.~ EXTERN VPLEIB 169
 ++ ~Does the bard not know a jest when she hears one, come Leina, share your tune with us all.~ EXTERN VPLEIB 170
 ++ ~My ear is well attuned to fine music Leina, come let me hear this tune of yours and let me judge just how fine it is.~ EXTERN VPLEIB 171


CHAIN VPLEIB 159
~(*Wrinkling her nose*) So I noticed as soon as I walked into the room <CHARNAME>, and after the trouble I went to, to secure hot water for when you awoke. Still, perhaps any enemies we meet today will also find the smell unpalatable and give you a wide berth, as I shall now. (*She turns away.*)~
DO ~SetGlobal("VP_MyFlirt_Is_Over","LOCALS",1)~ EXIT


CHAIN VPLEIB 160
~See, follow the bard, she will never lead you wrong. Seriously, you look more like a leader now the grime is gone from your face. Our enemies will see the confidence in your eye now that it is not hidden by so much dirt and know you are not to be messed with.~
END
 ++ ~Follow the bard she says, was there not a tale of children who followed the bard and were never seen again?~ EXTERN VPLEIB 171
 ++ ~Is this some new battle strategy Leina, follow the bard as she sings and dances her way past the enemy? That might just bemuse them enough for us to make our exit.~ EXTERN VPLEIB 172
 ++ ~Then today we shall do just that, Leina shall lead us.~ EXTERN VPLEIB 173
 ++ ~I have no intentions of letting the enemy close enough to see my face Leina, so whether it is clean or dirty does not really matter.~ EXTERN VPLEIB 174


CHAIN VPLEIB 161
~I believe that is true. I have spent so much time alone, I forget the joy of having friends to accompany me on this journey we call life.~
EXTERN VPLEIB 162


CHAIN VPLEIB 162
~Still, we have a different sort of journey that we should be thinking about today and we are lucky to have friends ready to accompany us. So come <CHARNAME>, let us make the most of this day and see where our road takes us.~
EXIT


CHAIN VPLEIB 163
~Pain is not an easy thing to bear, is it any wonder we are impatient to be rid of it.~
EXTERN VPLEIB 164


CHAIN VPLEIB 164
~It is also said that we learn through our pain but from what I know of pain it is the most unkind way to gain knowledge.~
EXTERN VPLEIB 165


CHAIN VPLEIB 165
~Come <CHARNAME>, enough talk of pain, let us find what joy there is to be had in this new day.~
EXIT


CHAIN VPLEIB 166
~I am not convinced that I will ever be truly free of the shadows <CHARNAME>, but I am grateful for each night that they lessen their grip on me.~
EXTERN VPLEIB 167


CHAIN VPLEIB 167
~However, we are not resting and there is no place for nightmares whilst the mind and body are occupied. I am free of them for a few hours so let us enjoy what lies ahead before they return.~
EXIT


CHAIN VPLEIB 168
~You are not alone in your wish for an undisturbed night <CHARNAME>, that is something I wish for myself.~
EXIT


CHAIN VPLEIB 169
~My singing can not be that hard on your ears <CHARNAME>, for it is you who gives the order for me to sing or play when the battle commences. You will do well to remember this the next time you feel compelled to prod me into action.~
DO ~SetGlobal("VP_MyFlirt_Is_Over","LOCALS",1)~ EXIT


CHAIN VPLEIB 170
~(*Laughs softly*) Ah but your words, they were unkind and cut to my soul <CHARNAME> and as you know music comes from the soul, so we must wait for mine to heal before it will release the music once more. There will be no music to inspire the group today, so let us hope we meet few enemies on our road.~
EXIT


CHAIN VPLEIB 171
~(*Chuckles softly*) There is such a tale <CHARNAME>. The folk of the town would not pay the debt they owed to the bard, so he played his tune and lured their children away. A lesson to all that one should never cross a bard, for you never know what tune she might play when she is asked to lead the group.~
EXIT


CHAIN VPLEIB 172
~(*Laughs softly*) I'll have you know I have entranced many an audience with my singing and dancing <CHARNAME>, but I see by the smile on your lips you do not believe me. I can see I will have to show you the magic of a real performance when time permits... but not today.~
EXIT


CHAIN VPLEIB 173
~(*Striking a chord as she speaks*) And it will be a merry dance that she leads you all in.~
EXIT


CHAIN VPLEIB 174
~But the enemy is often devious and stealthy <CHARNAME>. Many's the time he has come upon us before we have time to draw swords. At least with a clean face he can see you are a person to be feared and not just some unkempt, undisciplined low life.~
EXIT


IF ~Global("VP_BPC","LOCALS",16) Global("VP_BPC_Buffer2","LOCALS",3) Global("VP_Bathe_Talk","LOCALS",0)~ THEN VPLEIB 175
~(*Sighs*) So, we are to rest once more under the skies <CHARNAME>, I suppose the extra layer of dust that I have collected today will help keep out the cold. I had so hoped to be rid of it and not depending on it to keep me warm.~
END
 ++ ~I didn't make any promises as to where we would be resting next Leina.~ DO ~SetGlobal("VP_BPC_Buffer2","LOCALS",4)~ EXTERN VPLEIB 176
 ++ ~The group is tired Leina. It would not have been fair to expect them to press on just so's you can take a bath.~ DO ~SetGlobal("VP_BPC_Buffer2","LOCALS",4)~ EXTERN VPLEIB 177
 ++ ~There will plenty of inns to rest in at other times Leina. If we continue any further in our present condition, not all of us, if any, may get to see those other times.~ DO ~SetGlobal("VP_BPC_Buffer2","LOCALS",4)~ EXTERN VPLEIB 177
 ++ ~(*Smiling and holding out a blanket*) Well, there's always the river we passed a short way back. Fluffy towels are a bit short in supply but you can always take this blanket.~ DO ~SetGlobal("VP_BPC_Buffer2","LOCALS",4)~ EXTERN VPLEIB 178


CHAIN VPLEIB 176
~I know, we sleep where we drop! Still, I have to admit I am tired enough just to be thankful to be off my feet, but don't you go getting any notions that I have given up on my inn with lashings of hot water and fluffy towels. It's out there... awaiting our next stop. Sleep well <CHARNAME>.~
DO ~SetGlobal("VP_MyFlirt_Is_Over","LOCALS",1) RestParty()~ EXIT


CHAIN VPLEIB 177
~I know <CHARNAME>. I can see how weary the group is as well as you, but I fear my bedroll is recoiling at the thought of all the grime I am about to inflict on it again when I climb inside. Will it, or me for that matter, ever be able to scrub long enough and hard enough to be free of all this dirt I ask?~
END
 ++ ~(*Smiling and holding out a blanket*) Well, there's always the river we passed a short way back. Fluffy towels are a bit short in supply but you can always take this blanket.~ EXTERN VPLEIB 178
 ++ ~Speak to it nicely, promise it you will bathe tomorrow.~ EXTERN VPLEIB 180
 ++ ~You have to be masterful when it comes to bedrolls Leina, or you will soon find its up and done a runner.~ EXTERN VPLEIB 180
 ++ ~At the moment I am more interested in getting some sleep than getting clean. So if you don't mind Leina, dirty or not my bedroll looks good to me.~ EXTERN VPLEIB 181
 ++ ~Clean or dirty, if we don't rest it will not matter, because we could all be getting dirt shovelled on us if we are tired when we next meet the enemy.~ EXTERN VPLEIB 182


CHAIN VPLEIB 178
~I noticed it and I also noticed that we are not camped any where near it. What is it <CHARNAME>, cold water not to your taste?~
EXTERN VPLEIB 179


CHAIN VPLEIB 179
~No matter, our next stop will have a bath house attached. You will not have to worry about your aversion to cold water and I am sure once the barkeep sees you do not intend muddying his nice clean sheets, he will have soft beds for us all. (*Laughing she turns and heads for her bed roll*)... Sleep well <CHARNAME>.~
DO ~RestParty()~ EXIT


CHAIN VPLEIB 180
~So, it is not unusual for bed rolls to be unruly and afraid of a little dirt? I thank you for your advice, I will try being gentle with it and if that does not work then I will grab it, throw it to the ground and be on it before it can make a getaway. Show it who's boss, right? (*Laughing she turns and heads for her bed roll*)... Sleep well <CHARNAME>.~
DO ~RestParty()~ EXIT


CHAIN VPLEIB 181
~Then I'll not keep you from it. I... (*yawning*)... I have to say mine is looking a little less grubby and a little more inviting through half closed eyes. Sleep well <CHARNAME>.~
DO ~SetGlobal("VP_MyFlirt_Is_Over","LOCALS",1) RestParty()~ EXIT


CHAIN VPLEIB 182
~(*Laughing softly*) Anyone who tries shovelling more dirt on to me will be in for a surprise, they will be getting a whack with their own shovel, there is only so much dirt a girl will put up with on her person.~
EXTERN VPLEIB 183


CHAIN VPLEIB 183
~Still, it is probably best we do not give them the chance. Sleep well <CHARNAME>. (*She turns and heads for her bed roll.*)~
DO ~SetGlobal("VP_MyFlirt_Is_Over","LOCALS",1) RestParty()~ EXIT


IF ~Global("VP_BJaheira","LOCALS",2)~ THEN VPLEIB 184
~(*Adjusting the harp she carries she plucks a string accidentally*) Ooops!~ [mute]
DO ~SetGlobal("VP_BJaheira","LOCALS",3)~ EXTERN BJAHEIR NEJ491


CHAIN VPLEIB 185
~I was not about to Jaheira, my harp slipped that was all.~
EXTERN BJAHEIR NEJ492


CHAIN VPLEIB 186
~Firstly Jaheira, my harp is meant to be carried, to be ready to strum when the mood takes me or the situation calls for my song, not stuffed in a grubby back pack! Secondly, look closer, I am no child!~
EXTERN BJAHEIR NEJ493


CHAIN VPLEIB 187
~There are not that many years between us Jaheira. You just appear older because you have let yourself go and allowed yourself to be weighed down by life instead of getting on top of it and enjoying what it has to offer.~
EXTERN BJAHEIR NEJ494


CHAIN VPLEIB 188
~That was spiteful and uncalled for! This Imoen's abduction by Irenicus was not of her making. As for her insolence, perhaps you should look to yourself to see why she speaks to you in the way she does... and another thing, I have never professed to *knowing it all*!~
EXTERN BJAHEIR NEJ495


CHAIN VPLEIB 189
~No Jaheira, it was not! There were no rebellious intentions on my part. My parents did not like my choice of husband that is true but I loved him and when they saw that I intended to follow my heart regardless, they gave us their blessing and... as I have already pointed out, you are not my elder by many years, so please my name is Leina, not child when you speak to me.~
EXTERN BJAHEIR NEJ496


IF ~Global("VP_BMinsc","LOCALS",2)~ THEN VPLEIB 190
~Minsc please, my instruments are very precious to me and I prefer that no-one handles than other than me.~ [mute]
DO ~SetGlobal("VP_BMinsc","LOCALS",3)~ EXTERN BMINSC NEJ131


CHAIN VPLEIB 191
~The music comes from the way the strings are moved Minsc and the way has to be learned or else only discord... a jumble of notes is made.~
EXTERN BMINSC NEJ132


CHAIN VPLEIB 192
~I don't know, we are all different and as such so are our skills... the things we are good at. You are a ranger and know much more than me of the ways of the woods and its creatures, you are also a brave fearless warrior and those are your skills Minsc.~
EXTERN BMINSC NEJ133


CHAIN VPLEIB 193
~Music has to come from the soul. I am not sure if you understand what I mean but it is as though it is inside you, bursting to be released, only it is all never fully released. The minute one melody is free, you feel another stirring waiting its turn to be born. That is the only way I can think to describe the gift of music to you Minsc.~
EXTERN BMINSC NEJ134


CHAIN VPLEIB 194
~In a way my passion for music feels the same to me as your passion to rid the world of evil feels to you. It is the wise man who nurtures and excels in that which he is gifted and a fool who tries everything and succeeds in nothing.~
EXTERN BMINSC NEJ135


CHAIN VPLEIB 195
~(*Chuckles softly*) Wise ranger eh, could I have just accidentally unleashed a new ranger into the woods?~
EXIT


IF ~Global("VP_BAerie","LOCALS",2)~ THEN VPLEIB 196
~Aerie, often when the group stops to rest, I see you stand away from us with your arms outstretched, and facing into the wind with your eyes closed. Is it some ritual you practise for your god?~ [mute]
DO ~SetGlobal("VP_BAerie","LOCALS",3)~ EXTERN BAERIE NEJ449


CHAIN VPLEIB 197
~I envy you your memories Aerie. I can only imagine the exhilaration of being up high with the birds, to join them in their songs of flight and freedom.~
EXTERN BAERIE NEJ450


CHAIN VPLEIB 198
~The memory that you flew will always be with you, nothing will take that from you, it is only the sensations that will slowly be lost.~
EXTERN BAERIE NEJ451


CHAIN VPLEIB 199
~You become whatever you wish Aerie. You were born Avarial and the loss of your wings cannot take that from you. Now you learn of the wonders that being earth bound has to offer.~
EXTERN VPLEIB 200


CHAIN VPLEIB 200
~Such as the soft touch of the grass on your feet and the gentle splashing of the water as you walk through the rain, you will notice tiny creatures and insects that have escaped your eye because they are too small to see from above. There is much to learn and wonder at Aerie.~
EXTERN BAERIE NEJ452


CHAIN VPLEIB 201
~(*Puts her arm around her*) Come Aerie, things will get better. It may not seem like it know but I promise you they will. Look how much better they are now to when you were caged and displayed as a freak in the circus.~
EXTERN VPLEIB 202


CHAIN VPLEIB 202
~Now walk with me and wipe your tears, I will sing you a song of the wind in you hair and the clouds beneath your feet. We will soar above the clouds together.~
EXTERN VPLEIB 203


CHAIN VPLEIB 203
~ (*She begins her song as she walks with her arm still around the girl*)...

"We are one with the wind as it catches our flight,
As we soar through the clouds and the heavens we sight..."~
EXIT


IF ~Global("VP_BValygar","LOCALS",2)~ THEN VPLEIB 204
~You are a man of many moods Valygar. One moment you are fighting the enemy with fire in your eyes and then within seconds you are calming the fiercest of wild creatures. Who is the real Valygar I ask?~ [mute]
DO ~SetGlobal("VP_BValygar","LOCALS",3)~ EXTERN BVALYGA NEJ149


CHAIN VPLEIB 205
~I am. Tell me who is really behind the sombre man who stands and protects both man and creature alike?~
EXTERN BVALYGA NEJ150


CHAIN VPLEIB 206
~Then perhaps we should frequent the woods and the forests more often. On the chance that we might see a more relaxed Valygar and the fire in his eyes would burn a while longer.~
EXTERN BVALYGA NEJ152


CHAIN VPLEIB 207
~(*Laughing with him*)... And what of Valygar, has he also been crossed in love? Can that be why he prefers the company of the one person who cannot hurt him, namely Valygar?~
EXTERN BVALYGA NEJ153


CHAIN VPLEIB 208
~Unlike the man himself. I do not think anyone will ever see you as an uncomplicated man Valygar. Be it ranger, woodsman or warrior, however you see yourself, you have a fire within you that one day you will not be able to contain.~
EXTERN BVALYGA NEJ154


CHAIN VPLEIB 209
~Ah, but fires are funny things! Especially those which seem to be almost quenched. As long as there is a spark it takes but a small amount of fuel and it will become a conflagration. Be wary my friend is all I will say, for the fuel can come from the least likely of places and at the most unexpected of moments.~
EXTERN BVALYGA NEJ155


IF ~Global("VP_BNalia","LOCALS",2)~ THEN VPLEIB 210
~Nalia, what's wrong?~ [mute]
DO ~SetGlobal("VP_BNalia","LOCALS",3)~ EXTERN BNALIA NEJ51


CHAIN VPLEIB 211
~Come here, take your shoe off and let me see. I can see you are not used to walking the rough road, these are court shoes not walking shoes. You need to get yourself a stout pair of boots the next time we visit a store.~
END
 IF ~!Dead("Torgal")~ THEN EXTERN BNALIA NEJ52
 IF ~Dead("Torgal")~ THEN EXTERN BNALIA NEJ53


CHAIN VPLEIB 212
~Sorry Nalia, but if you keep your foot still this might not hurt so much. It does not look as though the damage is too bad, more bruised than cut. Still it is going to be sore for a while. Here, you best put your shoe back on, it will be better than nothing on your foot.~
EXTERN BNALIA NEJ54


CHAIN VPLEIB 213
~If anyone were to ask me, I would say that you are looking a lot healthier for being out of that musty old keep. You have colour in your cheeks and even your eyes look more alive now. Get yourself some boots, maybe more suitable clothes and you will do nicely Nalia.~
EXTERN BNALIA NEJ56


CHAIN VPLEIB 214
~Fiddlesticks I say! Who cares what the Aunties of the world believe as long we feel good about ourselves, that is what counts.~
EXTERN VPLEIB 215


CHAIN VPLEIB 215
~Come, I will walk behind with you as you are not going to keep up too well with the rest of the group until that bruise of yours goes down. As soon as we can we are going to hit the stores and together we are going to do some serious shopping.~
EXIT


IF ~Global("VP_BEdwin","LOCALS",2)~ THEN VPLEIB 216
~Edwin please, I do not need you to walk so close to me. See... I nearly stepped on your robe!~ [mute]
DO ~SetGlobal("VP_BEdwin","LOCALS",3)~ EXTERN BEDWIN NEJ106


CHAIN VPLEIB 217
~I have no need of your protection, nor that of any man. I am not the fragile flower you take me for.~
EXTERN BEDWIN NEJ107


CHAIN VPLEIB 218
~I am not some helpless half elf who has recently left the sanctuary of her forest home Edwin! I can handle a sword and magic as well as I play any instrument, so your concern is not necessary but thank you all the same.~
EXTERN BEDWIN NEJ108


CHAIN VPLEIB 219
~Have it your own way. Walk where you like, but do not expect me to wash your robe after I have constantly trod it in the mud.~
EXIT


IF ~Global("VP_LoveTalk","LOCALS",2) Gender(Player1,MALE)~ THEN VPLEIB 220
~(*Softly singing to herself*) No man will my heart, ever embrace... no... that isn't right... My heart has no need to e'er... Drat, That's no good either!~
END
 ++ ~Then Leina, let me hear some more and let me be the judge of whether it is any good or not.~ EXTERN VPLEIB 221
 ++ ~Which part don't you like Leina, the words or the tune?~ EXTERN VPLEIB 221
 ++ ~Please Leina, not another *Leina will never love again* song.~ EXTERN VPLEIB 222
 ++ ~I agree, its not. For someone who professes that music is her passion, her only passion, your songs all seem be sadly lacking this great passion you speak of.~ EXTERN VPLEIB 223


CHAIN VPLEIB 221
~I... I didn't realise anyone was listening. This blasted tune, I can feel it struggling to be free but for some reason, the words and melody will not fit together, no matter how I turn them around.~
END
 ++ ~Why not first write the words and then add the melody?~ EXTERN VPLEIB 224
 ++ ~Then change one to suit the other.~ EXTERN VPLEIB 224
 ++ ~Why not leave it for a while and come back to it later? That nearly always works for me if I fail to get something right first go.~ EXTERN VPLEIB 225
 ++ ~Is one song so important Leina? Maybe this one is just not meant to be sung?~ EXTERN VPLEIB 225


CHAIN VPLEIB 222
~I am not asking you to listen <CHARNAME>, after all, the song is mine to sing! If it is not to your taste then take your self out of earshot, your good opinion bothers me not.~ // Then CH.13-16.
 ++ ~I would have move an awful long way to be out of earshot of your despondent mutterings.~ EXTERN VPLEIB 230
 ++ ~Why should I distant myself? You are the one constantly beating up on the world and love.~ EXTERN VPLEIB 230
 ++ ~We would all listen if you put some of that passion you say you have for your music into your songs.~ EXTERN VPLEIB 223
 ++ ~Where is this passion you speak of Leina, all I hear are words of sorrow and pain?.~ EXTERN VPLEIB 223


CHAIN VPLEIB 223
~Real passion isn't instantaneous <CHARNAME>. It simmers slowly until it comes to the boil, it is the same with music. The passion will be there for all to feel but only after the subtle strains of the beginning.~ // Then CH.17-20.
 ++ ~I have yet to hear that in anything you sing Leina.~ EXTERN VPLEIB 232
 ++ ~How about when next you sing, you give me nod when you get to the part with the passion, that way I'll not miss it.~ EXTERN VPLEIB 233
 ++ ~We definitely have different ideas of passion Leina.~ EXTERN VPLEIB 234
 ++ ~Then I suppose if I want to feel some of this passion of yours, I will have to force myself to stick around past your opening strains Leina.~ EXTERN VPLEIB 235


CHAIN VPLEIB 224
~Bards have a way of composing music that is unique to themselves <CHARNAME>. I have never yet had a song born before its melody nor a melody born before its song. Both are inside me together and must be joined as they are born, never one before the other or they may never come together as one but remain separate forever.~ // Then CH.9-12.
 ++ ~(*You smile as you answer*) Songs are born? The next thing you will be telling me is that they are conceived as well.~ EXTERN VPLEIB 226
 ++ ~(*You smile as you answer*) For something to be born it first has to be conceived, is this where the passion you speak of comes into play Leina?~ EXTERN VPLEIB 227
 ++ ~(*You smile as you answer*) How silly of me... here I am thinking that songs are written... not born.~ EXTERN VPLEIB 228
 ++ ~(*You smile as you answer*) Ah... now I understand why a lot of noise heralds the birth... er... composing of a song.~ EXTERN VPLEIB 229


CHAIN VPLEIB 225
~When a song is ready to be born, it will not wait. As soon as the first words or part of a melody comes into being, it will give me no peace until the two are one and are released. Every spark is a possible song, and therefore, very important to me <CHARNAME>.~ // Then CH.9-12.
 ++ ~(*You smile as you answer*) Songs are born? The next thing you will be telling me is that they are conceived as well.~ EXTERN VPLEIB 226
 ++ ~(*You smile as you answer*) For something to be born it first has to be conceived, is this where the passion you speak of comes into play Leina?~ EXTERN VPLEIB 227
 ++ ~(*You smile as you answer*) How silly of me... here I am thinking that songs are written... not born.~ EXTERN VPLEIB 228
 ++ ~(*You smile as you answer*) Ah... now I understand why a lot of noise heralds the birth... er... composing of a song.~ EXTERN VPLEIB 229


CHAIN VPLEIB 226
~(*Laughs softly*) Oh, but they are <CHARNAME>. The conception of a song is the spark that begins with a word, a chord and then it germinates. More words and more chords are added until it is no longer just words and chords but the whole song. That is when it bursts free for all to see and enjoy. It is born, I can think of no other way to describe how it comes into being.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",3)~ EXIT


CHAIN VPLEIB 227
~(*Her eyes twinkle as she answers*) Oh yes... plenty of passion goes into my music. It is a necessary component, as necessary as it is for the birth of a child.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",3)~ EXIT


CHAIN VPLEIB 228
~(*Smiles*) A simple mistake <CHARNAME> and one any man who has never felt a song bursting for release could make.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",3)~ EXIT


CHAIN VPLEIB 229
~(*Laughs softly*) Ah yes, the discord often heard before the wondrous sounds of love's labours... a beautiful new melody.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",3)~ EXIT


CHAIN VPLEIB 230
~My eyes and my heart are my soul's guide to the music it releases <CHARNAME>. I can not sing of what I no longer believe in nor can I fool myself that the world is anything other than what I see.~
EXTERN VPLEIB 231


CHAIN VPLEIB 231
~If I feel joy I sing of it, if I feel sorrow I sing of it, but I no longer feel the joy of love, so I no longer sing of it. I am sorry but that is how my music is born and I can not alter it nor would I wish to.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",3)~ EXIT


CHAIN VPLEIB 232
~(*Laughs softly*) Then <CHARNAME>, I guess there is neither music nor passion in your soul.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",3)~ EXIT


CHAIN VPLEIB 233
~I don't prompt my audience <CHARNAME>, there has never been a need. I suggest instead, that you open your ears and close your eyes when next you hear my song. Let what you hear bring the image to your heart and not what you see.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",3)~ EXIT


CHAIN VPLEIB 234
~(*Smiles*) I doubt that <CHARNAME>. I can see the many faces of passion, whereas you, like most men, see only the one. The one that comes with desire.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",3)~ EXIT


CHAIN VPLEIB 235
~(*Laughs softly*) If you were to do that <CHARNAME>, then it would be my pleasure to play for you until you do see the sort of passion that music can incite After all who can tell what surprises the end of a book brings if you read but the first couple of chapters. A song is after all a story that is told and not read.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",3)~ EXIT


IF ~Global("VP_LoveTalk","LOCALS",2) Gender(Player1,FEMALE)~ THEN VPLEIB 236
~(*Softly singing to herself*) No man will my heart, ever embrace... no... that isn't right... My heart has no need to e'er... Drat, That's no good either!~
END
 ++ ~It sounds pretty to me Leina, please continue.~ EXTERN VPLEIB 237
 ++ ~Which part isn't right, the words or the tune?~ EXTERN VPLEIB 237
 ++ ~Leina, you may not believe in love but there are some of us who hope to find it some day. Why not make this a happy song?~ EXTERN VPLEIB 246
 ++ ~I admit, you have come up with better.~ EXTERN VPLEIB 246
 ++ ~Leina, please say that you'll sing something we can dance to tonight? I am tired of someone done Leina wrong songs.~ EXTERN VPLEIB 254


CHAIN VPLEIB 237
~I... I didn't realise anyone was listening. This blasted tune, I can feel it struggling to be free but for some reason, the words and melody will not fit together, no matter how I turn them around.~ // Then CH.6-9.
 ++ ~Then let me help. Perhaps we can sort the words between us and then you can add the tune later.~ EXTERN VPLEIB 238
 ++ ~Maybe if you concentrate on either the words or the tune, the other will follow.~ EXTERN VPLEIB 238
 ++ ~Why not leave it for a while and come back to it later? That nearly always works for me if I fail to get something right first go.~ EXTERN VPLEIB 238
 ++ ~Is one song so important Leina? Maybe this one is just not meant to be sung?~ EXTERN VPLEIB 245


CHAIN VPLEIB 238
~If only it were that simple <CHARNAME>. All bards compose music in their own way. I have never yet had a song born before its melody nor a melody born before its song. Both are inside me together and must be joined as they are born, never one before the other or they may never come together as one but remain separate forever.~ // Then CH.10-12.
 ++ ~Born, that is an odd term to apply to a song.~ EXTERN VPLEIB 239
 ++ ~You liken a new song to a new babe when you say born. Is it also, metaphorically speaking, conceived?~ EXTERN VPLEIB 239
 ++ ~This all sounds very romantic Leina, the joining together and becoming one. Yet you say you have no need for romance in your life.~ EXTERN VPLEIB 243


CHAIN VPLEIB 239
~I speak as I feel. The conception of a song is the spark that begins with a word, a chord and then it germinates. More words and more chords are added until it is no longer just words and chords but the whole song. that is when it bursts free for all to see and enjoy. It is born, I can think of no other way to describe how it comes into being.~ // Then CH.13-16.
 ++ ~I guess I would need to be a bard to understand that.~ EXTERN VPLEIB 240
 ++ ~When you use words in the way you do it is easy understand why your songs have so much passion in them.~ EXTERN VPLEIB 241
 ++ ~I may not understand this passion you say you feel for music, but I can hear it in your voice and see it in your face when you speak of it.~ EXTERN VPLEIB 241
 ++ ~Then I hope you have many more healthy songs for us to enjoy Leina.~ EXTERN VPLEIB 242


CHAIN VPLEIB 240
~(*Smiles*) Quite possible <CHARNAME>, quite possible.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",3)~ EXIT


CHAIN VPLEIB 241
~Then perhaps you do understand a little of why music has taken such a hold on my life and why I will never forsake it or let it go.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",3)~ EXIT


CHAIN VPLEIB 242
~(*Laughs softly*) As long as I draw breath there will always be a song for all to enjoy.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",3)~ EXIT


CHAIN VPLEIB 243
~I have no need for romance that comes with love <CHARNAME>. What I feel for my music is a passion that goes beyond romantic love and it is this that is heard in the words of my songs and the manner in which I speak of them. If it sounds romantic to you then that is fine, for we all interpret what we see and hear in our own way.~ // Then CH.17-19.
 ++ ~I guess only a bard could love with the passion you speak of Leina, whether it is for music or for another.~ EXTERN VPLEIB 240
 ++ ~To hear you speak is to see a passion that I hope one day to find myself.~ EXTERN VPLEIB 241
 ++ ~Leina, your words show you to be a very passionate woman and I can not help but feel that you have too much to give not to love again.~ EXTERN VPLEIB 244


CHAIN VPLEIB 244
~I have loved but once <CHARNAME> and I gave my heart and my soul to that love. He tore them apart and discarded them as you would the entrails of rabbit you were preparing to cook, music filled and rebuilt what he left. Because my heart, my soul are built of music, there will only ever be room for music in them.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",3)~ EXIT


CHAIN VPLEIB 245
~When a song is ready to be born, it will not wait. As soon as the first words or part of a melody comes into being, it will give me no peace until the two are one and are released. Every spark is a possible song, and therefore, very important to me <CHARNAME>.~ // Then CH.10-12.
 ++ ~Born, that is an odd term to apply to a song.~ EXTERN VPLEIB 239
 ++ ~You liken a new song to a new babe when you say born. Is it also, metaphorically speaking, conceived?~ EXTERN VPLEIB 239
 ++ ~This all sounds very romantic Leina, the joining together and becoming one. Yet you say you have no need for romance in your life.~ EXTERN VPLEIB 243


CHAIN VPLEIB 246
~When a song comes to me, it is usually born through my own feelings and not what some one else would like to hear. I am not asking you to listen <CHARNAME>, after all, the song is mine to sing! If it is not to your taste then please, take your self out of earshot.~ // Then CH.20-23.
 ++ ~I would have move an awful long way to be out of earshot of your despondent mutterings.~ EXTERN VPLEIB 247
 ++ ~Why should I distant myself? You are the one constantly beating up on the world and love.~ EXTERN VPLEIB 247
 ++ ~We would all listen if you put some of that passion you say you have for your music into your songs.~ EXTERN VPLEIB 249
 ++ ~Where is this passion you speak of Leina, all I hear are words of sorrow and pain?~ EXTERN VPLEIB 249


CHAIN VPLEIB 247
~My eyes and my heart are my soul's guide to the music it releases <CHARNAME>. I can not sing of what I no longer believe in nor can I fool myself that the world is anything other than what I see.~
EXTERN VPLEIB 248


CHAIN VPLEIB 248
~If I feel joy I sing of it, if I feel sorrow I sing of it, but I no longer feel the joy of love, so I no longer sing of it. I am sorry but that is how my music is born and I can not alter it nor would I wish to. (*She turns away.*)~
DO ~SetGlobal("VP_LoveTalk","LOCALS",3)~ EXIT


CHAIN VPLEIB 249
~Real passion isn't instantaneous <CHARNAME>. It simmers slowly until it comes to the boil, it is the same with music. The passion will be there for all to feel but only after the subtle strains of the beginning.~ // Then CH.24-27.
 ++ ~I have yet to hear that in anything you sing Leina.~ EXTERN VPLEIB 250
 ++ ~How about when next you sing, you give me nod when you get to the part with the passion, that way I'll not miss it.~ EXTERN VPLEIB 251
 ++ ~I see that we definite passion differently Leina.~ EXTERN VPLEIB 252
 ++ ~Then I suppose if I want to feel some of this passion of yours, I will have to force myself to stick around past your opening strains Leina.~ EXTERN VPLEIB 253


CHAIN VPLEIB 250
~(*Smiles*) Then I guess there is neither music nor passion in your soul <CHARNAME>.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",3)~ EXIT


CHAIN VPLEIB 251
~I don't prompt my audience <CHARNAME>, there has never been a need. I suggest instead, that you open your ears and close your eyes when next you hear my song. Let what you hear bring the image to your heart and not what you see.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",3)~ EXIT


CHAIN VPLEIB 252
~I don't think we do. I can see the many faces of passion but you can only see the face that shows itself with love. I once lived my dreams of finding the passion that comes with loving a man but I quickly discovered that pain walks hand in hand with your sort of passion, something I hope you never discover for yourself <CHARNAME>.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",3)~ EXIT


CHAIN VPLEIB 253
~(*Laughs softly*) That might help <CHARNAME>. After all who can tell what surprises the end of a book brings if you read but the first couple of chapters. A song is after all a story that is told and not read.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",3)~ EXIT


CHAIN VPLEIB 254
~I think that can be arranged <CHARNAME>, after all music is to be enjoyed by all. Whereas my own songs are born of my own feelings, I have learnt others from bards I have met and sang with. Yes, I think it would do us all good to shake off the doom and gloom of the road for a while, but only if we make camp under the stars. The dance is never as merry under a roof as it is around the fire.~ // Then CH.28-30.
 ++ ~Then we shall all eat, drink dance and make merry tonight as though we have no tomorrow. Providing we can buy the ale that is.~ EXTERN VPLEIB 255
 ++ ~Then let us hope for a clement night so that we are not sent scurrying for the shelter of an inn.~ EXTERN VPLEIB 256
 ++ ~This could be fun Leina. Maybe I should command that we all take part in the dance and those that refuse... well we shall just have to dance over them as they lay in their bed rolls.~ EXTERN VPLEIB 257
 ++ ~To dance under the stars by firelight, and here's me thinking that you had no time for romance Leina?~ EXTERN VPLEIB 258


CHAIN VPLEIB 255
~(*Smiles*) If it is the will of the gods there will be a tomorrow <CHARNAME>, so let us not forget that with it brings the need to be alert and awake. If we are staggering the road holding our heads, there will definitely not be another tomorrow for us ever again.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",3) SetGlobal("VP_We_Want_ToDance","LOCALS",1)~ EXIT


CHAIN VPLEIB 256
~(*Laughs*) We will have no need for an inn <CHARNAME>. For if the night is cold we will dance to keep warm and if it should rain, its refreshing touch will take away the heat of the dance.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",3) SetGlobal("VP_We_Want_ToDance","LOCALS",1)~ EXIT


CHAIN VPLEIB 257
~There will always be them that prefer the ale to the dance <CHARNAME> no matter how you command.. So maybe we should first hide all the bedrolls, that way there will be none for sleeping in nor dancing over.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",3) SetGlobal("VP_We_Want_ToDance","LOCALS",1)~ EXIT


CHAIN VPLEIB 258
~When it comes to the romance of the dance <CHARNAME>, I have all the time in the world.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",3) SetGlobal("VP_We_Want_ToDance","LOCALS",1)~ EXIT


CHAIN VPLEIB 259
~(*Sighs*) I wish you could have heard the same melody sung by my mother <CHARNAME>. There were many such songs she knew, how many I wonder took their melodies from the songs of the birds.~
EXTERN VPLEIB 260


CHAIN VPLEIB 260
~She was elven born as you know and when she sang the words of her people it was truly as if she sang with the birds. I learnt all that all that I know listening to her. My father always said that she was blessed by the gods, but if that were true, why then did they take her from us so cruelly!~
END
 ++ ~She sounds like she was a very special lady Leina, all mothers are special in their way. I only wish I could have known mine.~ EXTERN VPLEIB 111
 ++ ~It is no easy thing to face Leina, but we all know that there will come a time when our parents leave us, those fortunate to know their parents that is. It is the order of things and cannot be changed.~ EXTERN VPLEIB 111
 ++ ~What happened Leina? She could not have lived one quarter of her lifespan when she died.~ EXTERN VPLEIB 115
 ++ ~I can see her death has effected you greatly but I feel there is more than grief here, there is also anger. Anger at who Leina, her for dying or the world you are forced to live in without her?~ EXTERN VPLEIB 115


IF ~Global("VP_LoveTalk","LOCALS",5) Gender(Player1,MALE)~ THEN VPLEIB PCM2Leina1
~I... I will never get used to the sight of so much blood after a battle. It is... we are splattered with the life fluid of others, it covers our clothes, our weapons even our hands. Look at us <CHARNAME>!~
END
 ++ ~I know Leina, and I hate the killing as much as you, but it is better that their blood is spilled on us, than ours over them.~ EXTERN VPLEIB PCM2Leina2
 ++ ~Every time I am forced to kill, it sickens me to think that I have taken the one thing that can not be given back, the single most precious gift of all, life.~ EXTERN VPLEIB PCM2Leina2
 ++ ~It was them or us Leina, it always is.~ EXTERN VPLEIB PCM2Leina9
 ++ ~I can not be blamed for every fool who loses his life trying to take mine.~ EXTERN VPLEIB PCM2Leina9
 ++ ~You need to toughen up Leina. I feel that my road to Irenicus will be stained with a lot more blood before he is found.~ EXTERN VPLEIB PCM2Leina11


CHAIN VPLEIB PCM2Leina2
~I can see that <CHARNAME>, and clearly you are not your father's son, but given that your father was the god of murder, how do you distance yourself from the legacy that flows through your body? Surely there is some part of him fighting for recognition inside you?~
END
 ++ ~I have to distance myself, if I was to give in even for a second and take pleasure in the death of one seeking mine, then I would start to become all that he was.~ EXTERN VPLEIB PCM2Leina3
 ++ ~I did not ask for this life, but it is the only one I have and I am trying to live it in a way that is best for who I am and not who my father was.~ EXTERN VPLEIB PCM2Leina4
 ++ ~Bhaal gave me life but there is nothing of him inside me. I know that it is wrong to take a life, but if someone tries to take mine, then it is inevitable that one will be forfeit, that is survival.~ EXTERN VPLEIB PCM2Leina4
 ++ ~There is more of Gorion in me than Bhaal. It was Gorion who played the father and it was Gorion who gave me the values I have today.~ EXTERN VPLEIB PCM2Leina5


CHAIN VPLEIB PCM2Leina3
~(*She shivers visibly*) It can not be easy to deny that which flows through your every fibre. More so as it was a god's intention that it would not be denied and yet, you deny it every time you are forced to kill. Not once have I ever seen a spark of pleasure in you eyes when you are forced to act.~
EXTERN VPLEIB PCM2Leina3a


CHAIN VPLEIB PCM2Leina3a
~No son is forced to take on the mantle of his father if it is not within him and murder is not within you <CHARNAME>.~
END
 ++ ~Clearly I am not the only one shaken by death Leina. Here let my arm steady you, help drive away those shivers.~ EXTERN VPLEIB PCM2Leina6
 ++ ~Death in battle is neither pretty nor is it clean Leina. Come, let me wipe the blood from your face... (*You take a cloth and start to clean her blood stained face*)~ EXTERN VPLEIB PCM2Leina7
 ++ ~I hope you are right Leina and the day never dawns that I do become my father's son. Should I begin to relish in bringing murder and grief to the world, then I will have failed Gorion and all that he taught me.~ EXTERN VPLEIB PCM2Leina8
 ++ ~I will not be like him Leina. I look back at the litter of bodies behind me and I take no pleasure in what I see. I just keep hoping that each time another falls that it will be the last.~ EXTERN VPLEIB PCM2Leina8


CHAIN VPLEIB PCM2Leina4
~Non of us ask to be born, that was our parents decision, or not as the case may be, and once we know how sweet life is, then nothing is greater than the instinct to survive. You fight to protect yourself and your friends, but that does not mean you enjoy having to deal out death.~
EXTERN VPLEIB PCM2Leina4a


CHAIN VPLEIB PCM2Leina4a
~I can see that it does not come easy to you <CHARNAME>, just as I can see that murder is not in you, Bhaal has no hold on you... (*She shivers visibly at the mention of the dead god's name*)~
END
 ++ ~Clearly I am not the only one shaken by death Leina. Here let my arm steady you, help drive away those shivers.~ EXTERN VPLEIB PCM2Leina6
 ++ ~Death in battle is neither pretty nor is it clean Leina. Come, let me wipe the blood from your face... (*You take a cloth and start to clean her blood stained face*)~ EXTERN VPLEIB PCM2Leina7
 ++ ~I hope you are right Leina and the day never dawns that I do become my father's son. Should I begin to relish in bringing murder and grief to the world, then I will have failed Gorion and all that he taught me.~ EXTERN VPLEIB PCM2Leina8
 ++ ~I will not be like him Leina. I look back at the litter of bodies behind me and I take no pleasure in what I see. I just keep hoping that each time another falls that it will be the last.~ EXTERN VPLEIB PCM2Leina8


CHAIN VPLEIB PCM2Leina5
~Gorion may have taught you but he could not have done so if you had not chosen to listen. Even now, knowing the nature of your true father, you refuse to acknowledge the legacy that he has left within you.~
EXTERN VPLEIB PCM2Leina5a


CHAIN VPLEIB PCM2Leina5a
~You deplore the taking of life and that is what makes you different to Bhaal... (*She shivers visibly at the mention of the dead god's name*)... and will always set you apart from him.~
END
 ++ ~Clearly I am not the only one shaken by death Leina. Here let my arm steady you, help drive away those shivers.~ EXTERN VPLEIB PCM2Leina6
 ++ ~Death in battle is neither pretty nor is it clean Leina. Come, let me wipe the blood from your face... (*You take a cloth and start to clean her blood stained face*)~ EXTERN VPLEIB PCM2Leina7
 ++ ~I hope you are right Leina and the day never dawns that I do become my father's son. Should I begin to relish in bringing murder and grief to the world, then I will have failed Gorion and all that he taught me.~ EXTERN VPLEIB PCM2Leina8
 ++ ~I will not be like him Leina. I look back at the litter of bodies behind me and I take no pleasure in what I see. I just keep hoping that each time another falls that it will be the last.~ EXTERN VPLEIB PCM2Leina8


CHAIN VPLEIB PCM2Leina6
~(*Taking a firm hold of your arm*) I will never get used to the sight of wasted lives <CHARNAME>, but the touch and warmth of your arm at least reminds me that we are alive and we should be grateful that it is not our lives that were wasted this day.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",6)~ EXIT


CHAIN VPLEIB PCM2Leina7
~(*Her face relaxes and a smile comes to her lips*) When you have done rubbing my face away with that rough cloth <CHARNAME>, give it to me for your own face is difficult to see under so much grime.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",6)~ EXIT


CHAIN VPLEIB PCM2Leina8
~Then as long as you feel and understand the pain and sorrow that comes with dealing out death, you will never become that which your father was. You carry his blood but that is not all that makes a man, your heart and your soul are your own. Be true to them and you will be true to yourself.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",6)~ EXIT


CHAIN VPLEIB PCM2Leina9
~And does that excite you <CHARNAME>, the thought that you have to kill in order to survive, or are your words meant only as an excuse to kill?~
END
 ++ ~I deplore all this killing and wasting of lives Leina, and do you know what I deplore even more... the fact that it is my hand that is dealing it!~ EXTERN VPLEIB PCM2Leina10
 ++ ~There is no excitement in fighting for my life every day Leina, I am sick of it!~ EXTERN VPLEIB PCM2Leina10
 ++ ~I need no excuse to take the lives of those who seek to take mine.~ EXTERN VPLEIB PCM2Leina11
 ++ ~Yes, there is excitement in the fight Leina and excitement when I emerge triumphant from it. If it as at the cost of another's life then it only proves that the better man won.~ EXTERN VPLEIB PCM2Leina11


CHAIN VPLEIB PCM2Leina10
~I am sorry, I should have looked closer before I asked. I can see in your eyes that dealing out death brings you no pleasure.~
EXTERN VPLEIB PCM2Leina10a


CHAIN VPLEIB PCM2Leina10a
~It was wrong of me to presume that because your father was Bhaal, you had taken on his mantle... (*She shivers visibly at the mention of the dead god's name*)... You carry his blood but there is no murder in you <CHARNAME>, you are not your father's son.~
END
 ++ ~Clearly I am not the only one shaken by death Leina. Here let my arm steady you, help drive away those shivers.~ EXTERN VPLEIB PCM2Leina6
 ++ ~Death in battle is neither pretty nor is it clean Leina. Come, let me wipe the blood from your face... (*You take a cloth and start to clean her blood stained face*)~ EXTERN VPLEIB PCM2Leina7
 ++ ~I hope you are right Leina and the day never dawns that I do become my father's son. Should I begin to relish in bringing murder and grief to the world, then I will have failed Gorion and all that he taught me.~ EXTERN VPLEIB PCM2Leina8
 ++ ~I will not be like him Leina. I look back at the litter of bodies behind me and I take no pleasure in what I see. I just keep hoping that each time another falls that it will be the last.~ EXTERN VPLEIB PCM2Leina8


CHAIN VPLEIB PCM2Leina11
~I am beginning to see the father in the son. Tell me <CHARNAME>, is the legacy that Bhaal has left you... (*She shivers visibly at the mention of the dead god's name*)... truly the way of your own heart?~
END
 ++ ~It is who I am and who I am proud to be.~ EXTERN VPLEIB PCM2Leina12
 ++ ~My father gave me life solely to continue his work after his death and I will not disappoint him.~ EXTERN VPLEIB PCM2Leina12
 ++ ~I fought Sarevok for the right to take my father's place and I will fight any who challenge my right to be here. Does that answer your question?~ EXTERN VPLEIB PCM2Leina12


CHAIN VPLEIB PCM2Leina12
~We are not forced to take on the mantle of our parents, but I see that you have chosen to do so.~
EXTERN VPLEIB PCM2Leina12a


CHAIN VPLEIB PCM2Leina12a
~I have no idea of what being touched by a god does to a man, so I do not know whether it is Bhaal's spark that has forced this choice on you or whether it is the way of your own heart. What I do know is that it is a cruel mantle you have donned and not one that I would wear with pride.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",6) SetGlobal("VP_MyFlirt_Is_Over","LOCALS",1)~ EXIT


IF ~Global("VP_LoveTalk","LOCALS",5) Gender(Player1,FEMALE) Global("VP_We_Want_ToDance","LOCALS",1)~ THEN VPLEIB PCF2Leina1a
~(*Leina stands dressed in scarlet skirts and a white bodice. Tied around her trim waist is a bright blue sash*)~
DO ~SetGlobal("VP_LoveTalk","LOCALS",6)~ EXTERN VPLEIB PCF2LeinaA


IF ~Global("VP_LoveTalk","LOCALS",5) Gender(Player1,FEMALE) Global("VP_We_Want_ToDance","LOCALS",0)~ THEN VPLEIB PCF2Leina1b
~(*Leina stands dressed in scarlet skirts and a white bodice. Tied around her trim waist is a bright blue sash*)~
DO ~SetGlobal("VP_LoveTalk","LOCALS",6)~ EXTERN VPLEIB PCF2LeinaB


CHAIN VPLEIB PCF2LeinaA
~The bard has been asked to play a rousing tune to get your feet a dancing. She has also been told to let it be known that we are all to take part in this merriment. No creeping off to ones bed roll, the order was *all*.~
END
 IF ~True()~ THEN EXTERN VPLEIB PCF2Leina2a
 IF ~InParty("Yoshimo")~ THEN EXTERN BYOSHIM NEJ9
 IF ~InParty("Jaheira")~ THEN EXTERN BJAHEIR NEJ497
 IF ~InParty("Nalia")~ THEN EXTERN BNALIA NEJ58
 IF ~InParty("Mazzy")~ THEN EXTERN BMAZZY NEJ1
 IF ~InParty("Anomen")~ THEN EXTERN BANOMEN NEJ1
 IF ~InParty("Keldorn")~ THEN EXTERN BKELDOR NEJ1
 IF ~InParty("Viconia")~ THEN EXTERN BVICONI NEJ0
 IF ~InParty("Korgan")~ THEN EXTERN BKORGAN NEJ0
 IF ~InParty("Valygar")~ THEN EXTERN BVALYGA NEJ156
 IF ~InParty("Edwin")~ THEN EXTERN BEDWIN NEJ109
 IF ~InParty("Jan")~ THEN EXTERN BJAN NEJ1
 IF ~InParty("Aerie")~ THEN EXTERN BAERIE NEJ454
 IF ~InParty("njdar")~ THEN EXTERN NJDARB 127
 IF ~InParty("njhroth")~ THEN EXTERN NJHROB 85
 IF ~InParty("Minsc")~ THEN EXTERN BMINSC NEJ137
 IF ~!InParty("njtaffic") InParty("njmelora")~ THEN EXTERN NJMELB 55
 IF ~InParty("njtaffic") !InParty("njmelora")~ THEN EXTERN NJTAFB 6
 IF ~InParty("njtaffic") InParty("njmelora")~ THEN EXTERN NJMELB 48


CHAIN VPLEIB PCF2LeinaB
~This is a fine evening, see how the stars shine and the moon is full, a night such as this should not be wasted sleeping. We have fine ale and the bard shall sing a fine tune guaranteed to get your feet a dancing.~
END
 IF ~True()~ THEN EXTERN VPLEIB PCF2Leina2a
 IF ~InParty("Yoshimo")~ THEN EXTERN BYOSHIM NEJ9
 IF ~InParty("Jaheira")~ THEN EXTERN BJAHEIR NEJ497
 IF ~InParty("Nalia")~ THEN EXTERN BNALIA NEJ58
 IF ~InParty("Mazzy")~ THEN EXTERN BMAZZY NEJ1
 IF ~InParty("Anomen")~ THEN EXTERN BANOMEN NEJ1
 IF ~InParty("Keldorn")~ THEN EXTERN BKELDOR NEJ1
 IF ~InParty("Viconia")~ THEN EXTERN BVICONI NEJ0
 IF ~InParty("Korgan")~ THEN EXTERN BKORGAN NEJ0
 IF ~InParty("Valygar")~ THEN EXTERN BVALYGA NEJ156
 IF ~InParty("Edwin")~ THEN EXTERN BEDWIN NEJ109
 IF ~InParty("Jan")~ THEN EXTERN BJAN NEJ1
 IF ~InParty("Aerie")~ THEN EXTERN BAERIE NEJ454
 IF ~InParty("njdar")~ THEN EXTERN NJDARB 127
 IF ~InParty("njhroth")~ THEN EXTERN NJHROB 85
 IF ~InParty("Minsc")~ THEN EXTERN BMINSC NEJ137
 IF ~!InParty("njtaffic") InParty("njmelora")~ THEN EXTERN NJMELB 55
 IF ~InParty("njtaffic") !InParty("njmelora")~ THEN EXTERN NJTAFB 6
 IF ~InParty("njtaffic") InParty("njmelora")~ THEN EXTERN NJMELB 48


CHAIN VPLEIB PCF2Leina2a
~(*She starts to play a rousing tune and then as she starts to sing her feet and body start to move in time to the rhythm.*)~
END
 ++ ~(*You get to your feet, mug in hand and start your own dance*)...~ EXTERN VPLEIB PCF2Leina3a
 ++ ~(*You carry on drinking your ale preferring not to dance*)...~ EXTERN VPLEIB PCF2Leina3a


CHAIN VPLEIB PCF2Leina3a
~Come this is a night made for rejoicing and for being glad we are alive.~
END
 ++ ~Now this is more like it Leina, you should sing such songs more often.~ EXTERN VPLEIB PCF2Leina4a
 ++ ~Promise me Leina, no more songs of sorrow and pain. Use this wonderful gift of yours to sing of hope for the future and not of the pain of the past.~ EXTERN VPLEIB PCF2Leina8a
 ++ ~The bard is right, let us enjoy tonight and worry not what tomorrow may bring.~ EXTERN VPLEIB PCF2Leina11a
 ++ ~I am not about to prance about like some performing bear. I'll just sit, enjoy the ale, the song and hope that tomorrow will be kind to us.~ EXTERN VPLEIB PCF2Leina13a


CHAIN VPLEIB PCF2Leina4a
~(*As she picks up the tempo she skips nearer the fire, her face alive with her song and aglow in the light of the fire. She changes the rhythm and she whirls faster, causing her skirts to fly wide. Then laughing, she stops to answer you.*)~
EXTERN VPLEIB PCF2Leina5a


CHAIN VPLEIB PCF2Leina5a
~You forget <CHARNAME>. This is not a song of mine. I can sing the songs of others and revel in the way they make me feel alive, but they do not reflect the truth of what is in my heart, only my own songs can do that.~
EXTERN VPLEIB PCF2Leina6a


CHAIN VPLEIB PCF2Leina6a
~(*Smiling*) That doesn't mean I get no enjoyment in a song such as this, all music excites me, whether I believe in it or not. (*Then laughing she whirls away to finish her song.*)~
EXTERN VPLEIB PCF2Leina7a


CHAIN VPLEIB PCF2Leina7a
~And so the dance ends <CHARNAME>. It has been too long since I have enjoyed such a night. No matter what the song is, to sing and play for friends, brings a warmth that eludes me when I play for strangers.~
END
 ++ ~Leina you must promise to play for us again another night.~ EXTERN VPLEIB PCF2Leina14a
 ++ ~Do you not think that some day in the future, your heart will lose some of its pain and you will have such songs waiting to be born in your heart Leina?~ EXTERN VPLEIB PCF2Leina15a
 ++ ~I see you following as your heart guides Leina and it brings you happiness. I wonder if the world would be a better place if more people followed their hearts instead of their heads.~ EXTERN VPLEIB PCF2Leina16a
 ++ ~I can see from the glow about you that you are truly happy Leina. You are lucky, for many who seek happiness never find it.~ EXTERN VPLEIB PCF2Leina17a


CHAIN VPLEIB PCF2Leina8a
~(*As she picks up the tempo she skips nearer the fire, her face alive with her song and aglow in the light of the fire. She changes the rhythm and she whirls faster, causing her skirts to fly wide. Then laughing, she stops to answer you.*)~
EXTERN VPLEIB PCF2Leina9a


CHAIN VPLEIB PCF2Leina9a
~That I can not do <CHARNAME>. I can sing the songs of others but they are meaningless words to me. I feel the excitement in their music but it is my own songs which reflect that which is inside of me.~
EXTERN VPLEIB PCF2Leina10a


CHAIN VPLEIB PCF2Leina10a
~To remain true to myself, I have to play my music, my own music and if you can not understand that then you do not understand me. (*Then laughing she whirls away to finish her song.*)~
EXTERN VPLEIB PCF2Leina7a


CHAIN VPLEIB PCF2Leina11a
~(*As she picks up the tempo she skips nearer the fire, her face alive with her song and aglow in the light of the fire. She changes the rhythm and she whirls faster, causing her skirts to fly wide. Then laughing, she stops to answer you.*)~
EXTERN VPLEIB PCF2Leina12a


CHAIN VPLEIB PCF2Leina12a
~If we are not more frugal with the ale <CHARNAME>, we may find ourselves sleeping through tomorrow and missing whatever it had planned for us altogether. (*Then laughing she whirls away to finish her song.*)~
END
 ++ ~We must make a point of doing this again Leina, and soon. Thank you for lifting our spirits tonight.~ EXTERN VPLEIB PCF2Leina14a
 ++ ~Nothing like a mix of ale and fine music to lull one towards sleep. Let us hope tomorrow arrives gently and doesn't make us pay for tonight.~ EXTERN VPLEIB PCF2Leina13a
 ++ ~I am not going to worry about tomorrow until it arrives. Which looking at the sky it will be upon us soon, so we should get some whilst we can. Good night Leina.~ EXTERN VPLEIB PCF2Leina18a
 ++ ~Tomorrow will be upon us soon enough, and the trials that come with it. We should rest now for the few hours that are left to us. Sleep well Leina.~ EXTERN VPLEIB PCF2Leina18a
 ++ ~So our playtime ends, for tomorrow we must be adults again. How sad that we forget how to play when we grow up, it is good to be reminded, thank you for Leina.~ EXTERN VPLEIB PCF2Leina19a


CHAIN VPLEIB PCF2Leina13a
~(*Laughs*) Tomorrow will arrive as it always does. The sun will rise and it will not listen to our pleas for a few more hours of darkness to ease our eyes and our heads. It shows no consideration nor compassion for our own over indulgences. Let us hope with some sleep we will be better prepared to face the glare of the morning.~
END
 IF ~True()~ THEN EXTERN VPLEIB PCF2Leina38a
 IF ~InParty("njmelora") InParty("njtaffic")~ THEN EXTERN NJMELB 53
 IF ~InParty("Jan")~ THEN EXTERN BJAN NEJ0
 IF ~InParty("vpkachi")~ THEN EXTERN VPKACB NEJ0
 IF ~InParty("Mazzy")~ THEN EXTERN BMAZZY NEJ0
 IF ~InParty("Nalia")~ THEN EXTERN BNALIA NEJ57
 IF ~InParty("Keldorn")~ THEN EXTERN BKELDOR NEJ0
 IF ~InParty("Anomen")~ THEN EXTERN BANOMEN NEJ0
 IF ~InParty("njdar")~ THEN EXTERN NJDARB 126
 IF ~InParty("njhroth")~ THEN EXTERN NJHROB 84


CHAIN VPLEIB PCF2Leina14a
~<CHARNAME>, I will play for as many nights as you wish, I never need asking twice to sing... or dance if it comes to that. However, we have had the best of this evening so I am to my bed.~
END
 IF ~True()~ THEN EXTERN VPLEIB PCF2Leina38a
 IF ~InParty("njmelora") InParty("njtaffic")~ THEN EXTERN NJMELB 53
 IF ~InParty("Jan")~ THEN EXTERN BJAN NEJ0
 IF ~InParty("vpkachi")~ THEN EXTERN VPKACB NEJ0
 IF ~InParty("Mazzy")~ THEN EXTERN BMAZZY NEJ0
 IF ~InParty("Nalia")~ THEN EXTERN BNALIA NEJ57
 IF ~InParty("Keldorn")~ THEN EXTERN BKELDOR NEJ0
 IF ~InParty("Anomen")~ THEN EXTERN BANOMEN NEJ0
 IF ~InParty("njdar")~ THEN EXTERN NJDARB 126
 IF ~InParty("njhroth")~ THEN EXTERN NJHROB 84


CHAIN VPLEIB PCF2Leina15a
~I am more than content with the songs that are in my heart. If the audience want a rousing tune I will sing it gladly and take delight in it, but those tunes are plentiful <CHARNAME>, there is no need for me to add to them. Now we must rest for tomorrow is almost upon us.~
END
 IF ~True()~ THEN EXTERN VPLEIB PCF2Leina38a
 IF ~InParty("njmelora") InParty("njtaffic")~ THEN EXTERN NJMELB 53
 IF ~InParty("Jan")~ THEN EXTERN BJAN NEJ0
 IF ~InParty("vpkachi")~ THEN EXTERN VPKACB NEJ0
 IF ~InParty("Mazzy")~ THEN EXTERN BMAZZY NEJ0
 IF ~InParty("Nalia")~ THEN EXTERN BNALIA NEJ57
 IF ~InParty("Keldorn")~ THEN EXTERN BKELDOR NEJ0
 IF ~InParty("Anomen")~ THEN EXTERN BANOMEN NEJ0
 IF ~InParty("njdar")~ THEN EXTERN NJDARB 126
 IF ~InParty("njhroth")~ THEN EXTERN NJHROB 84


CHAIN VPLEIB PCF2Leina16a
~I believe it would be <CHARNAME>. Many a war has been started by head strong stubborn men. Maybe if they listened to and took notice of the truth that the heart speaks, a lot of the bloodshed could have been avoided. Now, let us not end the evening on a sour note, I am to my bed whilst I still feel joy in my own heart.~
END
 IF ~True()~ THEN EXTERN VPLEIB PCF2Leina38a
 IF ~InParty("njmelora") InParty("njtaffic")~ THEN EXTERN NJMELB 53
 IF ~InParty("Jan")~ THEN EXTERN BJAN NEJ0
 IF ~InParty("vpkachi")~ THEN EXTERN VPKACB NEJ0
 IF ~InParty("Mazzy")~ THEN EXTERN BMAZZY NEJ0
 IF ~InParty("Nalia")~ THEN EXTERN BNALIA NEJ57
 IF ~InParty("Keldorn")~ THEN EXTERN BKELDOR NEJ0
 IF ~InParty("Anomen")~ THEN EXTERN BANOMEN NEJ0
 IF ~InParty("njdar")~ THEN EXTERN NJDARB 126
 IF ~InParty("njhroth")~ THEN EXTERN NJHROB 84


CHAIN VPLEIB PCF2Leina17a
~Yes, I consider my self very fortunate, for there are also those who because the search seems endless give up and settle for second best. Never knowing that if they searched that little bit further real happiness was waiting to be found. Now <CHARNAME> we must rest for tomorrow is almost upon us.~
END
 IF ~True()~ THEN EXTERN VPLEIB PCF2Leina38a
 IF ~InParty("njmelora") InParty("njtaffic")~ THEN EXTERN NJMELB 53
 IF ~InParty("Jan")~ THEN EXTERN BJAN NEJ0
 IF ~InParty("vpkachi")~ THEN EXTERN VPKACB NEJ0
 IF ~InParty("Mazzy")~ THEN EXTERN BMAZZY NEJ0
 IF ~InParty("Nalia")~ THEN EXTERN BNALIA NEJ57
 IF ~InParty("Keldorn")~ THEN EXTERN BKELDOR NEJ0
 IF ~InParty("Anomen")~ THEN EXTERN BANOMEN NEJ0
 IF ~InParty("njdar")~ THEN EXTERN NJDARB 126
 IF ~InParty("njhroth")~ THEN EXTERN NJHROB 84


CHAIN VPLEIB PCF2Leina18a
~Sleep well yourself <CHARNAME> and make the most of the few hours that are left between tonight and tomorrow. I fear tomorrow will not take into account are own over indulgences when it sets our toils for the day.~
END
 IF ~True()~ THEN EXTERN VPLEIB PCF2Leina38a
 IF ~InParty("njmelora") InParty("njtaffic")~ THEN EXTERN NJMELB 53
 IF ~InParty("Jan")~ THEN EXTERN BJAN NEJ0
 IF ~InParty("vpkachi")~ THEN EXTERN VPKACB NEJ0
 IF ~InParty("Mazzy")~ THEN EXTERN BMAZZY NEJ0
 IF ~InParty("Nalia")~ THEN EXTERN BNALIA NEJ57
 IF ~InParty("Keldorn")~ THEN EXTERN BKELDOR NEJ0
 IF ~InParty("Anomen")~ THEN EXTERN BANOMEN NEJ0
 IF ~InParty("njdar")~ THEN EXTERN NJDARB 126
 IF ~InParty("njhroth")~ THEN EXTERN NJHROB 84


CHAIN VPLEIB PCF2Leina19a
~We should always make time to play in our lives <CHARNAME>, even if our games are different to those which we played as children. Life would be very mundane and weary if it were nothing but toil.~
EXTERN VPLEIB PCF2Leina20a


CHAIN VPLEIB PCF2Leina20a
~I believe a lot of those who opt out of living do so because their lives have become one long grind and they see nothing to look forward to from one day to the next. They have forgotten how to play and their souls have become melancholy, living only for when death claims them, but come, let us not end the evening on so black a note.~
EXTERN VPLEIB PCF2Leina21a


CHAIN VPLEIB PCF2Leina21a
~I am to my rest whilst my own soul is still light.~
END
 IF ~True()~ THEN EXTERN VPLEIB PCF2Leina38a
 IF ~InParty("njmelora") InParty("njtaffic")~ THEN EXTERN NJMELB 53
 IF ~InParty("Jan")~ THEN EXTERN BJAN NEJ0
 IF ~InParty("vpkachi")~ THEN EXTERN VPKACB NEJ0
 IF ~InParty("Mazzy")~ THEN EXTERN BMAZZY NEJ0
 IF ~InParty("Nalia")~ THEN EXTERN BNALIA NEJ57
 IF ~InParty("Keldorn")~ THEN EXTERN BKELDOR NEJ0
 IF ~InParty("Anomen")~ THEN EXTERN BANOMEN NEJ0
 IF ~InParty("njdar")~ THEN EXTERN NJDARB 126
 IF ~InParty("njhroth")~ THEN EXTERN NJHROB 84


CHAIN VPLEIB PCF2Leina22a
~As you wish Taffic, but please try and remember whereas you may be small, we are not carrying you tomorrow.~
END
 IF ~True()~ THEN EXTERN VPLEIB PCF2Leina2a
 IF ~InParty("Yoshimo")~ THEN EXTERN BYOSHIM NEJ9
 IF ~InParty("Jaheira")~ THEN EXTERN BJAHEIR NEJ497
 IF ~InParty("Nalia")~ THEN EXTERN BNALIA NEJ58
 IF ~InParty("Mazzy")~ THEN EXTERN BMAZZY NEJ1
 IF ~InParty("Anomen")~ THEN EXTERN BANOMEN NEJ1
 IF ~InParty("Keldorn")~ THEN EXTERN BKELDOR NEJ1
 IF ~InParty("Viconia")~ THEN EXTERN BVICONI NEJ0
 IF ~InParty("Korgan")~ THEN EXTERN BKORGAN NEJ0
 IF ~InParty("Valygar")~ THEN EXTERN BVALYGA NEJ156
 IF ~InParty("Edwin")~ THEN EXTERN BEDWIN NEJ109
 IF ~InParty("Jan")~ THEN EXTERN BJAN NEJ1
 IF ~InParty("Aerie")~ THEN EXTERN BAERIE NEJ454
 IF ~InParty("njdar")~ THEN EXTERN NJDARB 127
 IF ~InParty("njhroth")~ THEN EXTERN NJHROB 85
 IF ~InParty("Minsc")~ THEN EXTERN BMINSC NEJ137


CHAIN VPLEIB PCF2Leina23a
~I am not one for the jig Melora, but as long as you have fun what the dance is doesn't matter.~
END
 IF ~True()~ THEN EXTERN VPLEIB PCF2Leina2a
 IF ~InParty("Yoshimo")~ THEN EXTERN BYOSHIM NEJ9
 IF ~InParty("Jaheira")~ THEN EXTERN BJAHEIR NEJ497
 IF ~InParty("Nalia")~ THEN EXTERN BNALIA NEJ58
 IF ~InParty("Mazzy")~ THEN EXTERN BMAZZY NEJ1
 IF ~InParty("Anomen")~ THEN EXTERN BANOMEN NEJ1
 IF ~InParty("Keldorn")~ THEN EXTERN BKELDOR NEJ1
 IF ~InParty("Viconia")~ THEN EXTERN BVICONI NEJ0
 IF ~InParty("Korgan")~ THEN EXTERN BKORGAN NEJ0
 IF ~InParty("Valygar")~ THEN EXTERN BVALYGA NEJ156
 IF ~InParty("Edwin")~ THEN EXTERN BEDWIN NEJ109
 IF ~InParty("Jan")~ THEN EXTERN BJAN NEJ1
 IF ~InParty("Aerie")~ THEN EXTERN BAERIE NEJ454
 IF ~InParty("njdar")~ THEN EXTERN NJDARB 127
 IF ~InParty("njhroth")~ THEN EXTERN NJHROB 85
 IF ~InParty("Minsc")~ THEN EXTERN BMINSC NEJ137


CHAIN VPLEIB PCF2Leina23c
~Then take your boots off Minsc, go bare foot as shall I.~
EXTERN BMINSC NEJ138


CHAIN VPLEIB PCF2Leina24a
~In case you had not noticed Hrothgar we are in the great outdoors, that should be enough space even for you.~
END
 IF ~True()~ THEN EXTERN VPLEIB PCF2Leina2a
 IF ~InParty("Yoshimo")~ THEN EXTERN BYOSHIM NEJ9
 IF ~InParty("Jaheira")~ THEN EXTERN BJAHEIR NEJ497
 IF ~InParty("Nalia")~ THEN EXTERN BNALIA NEJ58
 IF ~InParty("Mazzy")~ THEN EXTERN BMAZZY NEJ1
 IF ~InParty("Anomen")~ THEN EXTERN BANOMEN NEJ1
 IF ~InParty("Keldorn")~ THEN EXTERN BKELDOR NEJ1
 IF ~InParty("Viconia")~ THEN EXTERN BVICONI NEJ0
 IF ~InParty("Korgan")~ THEN EXTERN BKORGAN NEJ0
 IF ~InParty("Valygar")~ THEN EXTERN BVALYGA NEJ156
 IF ~InParty("Edwin")~ THEN EXTERN BEDWIN NEJ109
 IF ~InParty("Jan")~ THEN EXTERN BJAN NEJ1
 IF ~InParty("Aerie")~ THEN EXTERN BAERIE NEJ454
 IF ~InParty("njdar")~ THEN EXTERN NJDARB 127


CHAIN VPLEIB PCF2Leina25a
~(*Laughing*) Dar, I told you your name would be known in future times. I can see I have more to add to your life, 'Dar the first half orc person to dance'.~
EXTERN NJDARB 128


CHAIN VPLEIB PCF2Leina26a
~I forget how much of a toll the road takes on your legs Aerie, but maybe dancing will help strengthen those calves of yours, put some muscle on them.~
EXTERN BAERIE NEJ455


CHAIN VPLEIB PCF2Leina27a
~Jan, if that is the case then you can lead.~
EXTERN BJAN NEJ2


CHAIN VPLEIB PCF2Leina28a
~Edwin... forget it!~
END
 IF ~True()~ THEN EXTERN VPLEIB PCF2Leina2a
 IF ~InParty("Yoshimo")~ THEN EXTERN BYOSHIM NEJ9
 IF ~InParty("Jaheira")~ THEN EXTERN BJAHEIR NEJ497
 IF ~InParty("Nalia")~ THEN EXTERN BNALIA NEJ58
 IF ~InParty("Mazzy")~ THEN EXTERN BMAZZY NEJ1
 IF ~InParty("Anomen")~ THEN EXTERN BANOMEN NEJ1
 IF ~InParty("Keldorn")~ THEN EXTERN BKELDOR NEJ1
 IF ~InParty("Viconia")~ THEN EXTERN BVICONI NEJ0
 IF ~InParty("Korgan")~ THEN EXTERN BKORGAN NEJ0
 IF ~InParty("Valygar")~ THEN EXTERN BVALYGA NEJ156


CHAIN VPLEIB PCF2Leina29a
~No lady is pulling your strings Valygar. You are a fine figure of a man and I am sure any lady here would be proud to dance with you but none are going to pull your strings in order to.~
END
 IF ~True()~ THEN EXTERN VPLEIB PCF2Leina2a
 IF ~InParty("Yoshimo")~ THEN EXTERN BYOSHIM NEJ9
 IF ~InParty("Jaheira")~ THEN EXTERN BJAHEIR NEJ497
 IF ~InParty("Nalia")~ THEN EXTERN BNALIA NEJ58
 IF ~InParty("Mazzy")~ THEN EXTERN BMAZZY NEJ1
 IF ~InParty("Anomen")~ THEN EXTERN BANOMEN NEJ1
 IF ~InParty("Keldorn")~ THEN EXTERN BKELDOR NEJ1
 IF ~InParty("Viconia")~ THEN EXTERN BVICONI NEJ0
 IF ~InParty("Korgan")~ THEN EXTERN BKORGAN NEJ0


CHAIN VPLEIB PCF2Leina30a
~I'll ignore the lewd suggestion behind that remark dwarf... for now!~
END
 IF ~True()~ THEN EXTERN VPLEIB PCF2Leina2a
 IF ~InParty("Yoshimo")~ THEN EXTERN BYOSHIM NEJ9
 IF ~InParty("Jaheira")~ THEN EXTERN BJAHEIR NEJ497
 IF ~InParty("Nalia")~ THEN EXTERN BNALIA NEJ58
 IF ~InParty("Mazzy")~ THEN EXTERN BMAZZY NEJ1
 IF ~InParty("Anomen")~ THEN EXTERN BANOMEN NEJ1
 IF ~InParty("Keldorn")~ THEN EXTERN BKELDOR NEJ1
 IF ~InParty("Viconia")~ THEN EXTERN BVICONI NEJ0


CHAIN VPLEIB PCF2Leina31a
~I have no idea what you said Viconia, and as it's come out of your mouth I have no desire to know.~
END
 IF ~True()~ THEN EXTERN VPLEIB PCF2Leina2a
 IF ~InParty("Yoshimo")~ THEN EXTERN BYOSHIM NEJ9
 IF ~InParty("Jaheira")~ THEN EXTERN BJAHEIR NEJ497
 IF ~InParty("Nalia")~ THEN EXTERN BNALIA NEJ58
 IF ~InParty("Mazzy")~ THEN EXTERN BMAZZY NEJ1
 IF ~InParty("Anomen")~ THEN EXTERN BANOMEN NEJ1
 IF ~InParty("Keldorn")~ THEN EXTERN BKELDOR NEJ1


CHAIN VPLEIB PCF2Leina32a
~Come Keldorn, Maria will not think any less of you for we all dance together as friends this night and not as lovers.~
EXTERN BKELDOR NEJ2


CHAIN VPLEIB PCF2Leina33a
~(*Smiling at the paladin's flustered face*) Keldorn, I would stop there before you put your foot in it any further.~
END
 IF ~True()~ THEN EXTERN VPLEIB PCF2Leina2a
 IF ~InParty("Yoshimo")~ THEN EXTERN BYOSHIM NEJ9
 IF ~InParty("Jaheira")~ THEN EXTERN BJAHEIR NEJ497
 IF ~InParty("Nalia")~ THEN EXTERN BNALIA NEJ58
 IF ~InParty("Mazzy")~ THEN EXTERN BMAZZY NEJ1
 IF ~InParty("Anomen")~ THEN EXTERN BANOMEN NEJ1


CHAIN VPLEIB PCF2Leina34a
~Anomen, if you as gifted in dance as you in the tall stories then I fear you will steal my audience from me tonight.~
END
 IF ~True()~ THEN EXTERN VPLEIB PCF2Leina2a
 IF ~InParty("Yoshimo")~ THEN EXTERN BYOSHIM NEJ9
 IF ~InParty("Jaheira")~ THEN EXTERN BJAHEIR NEJ497
 IF ~InParty("Nalia")~ THEN EXTERN BNALIA NEJ58
 IF ~InParty("Mazzy")~ THEN EXTERN BMAZZY NEJ1


CHAIN VPLEIB PCF2Leina35a
~(*Smiling at the hafling*) That is up to you Mazzy, seldom does a girl get the chance to wear other than her armour these days.~
END
 IF ~True()~ THEN EXTERN VPLEIB PCF2Leina2a
 IF ~InParty("Yoshimo")~ THEN EXTERN BYOSHIM NEJ9
 IF ~InParty("Jaheira")~ THEN EXTERN BJAHEIR NEJ497
 IF ~InParty("Nalia")~ THEN EXTERN BNALIA NEJ58


CHAIN VPLEIB PCF2Leina36a
~Then tonight we shall all dance in Khalid's memory. Instead of mourning his death Jaheira it is now time to celebrate his life.~
EXTERN BJAHEIR NEJ498


CHAIN VPLEIB PCF2Leina37a
~I wonder Nalia, how much your aunt's fear for you were due to the circumstances of your mother's death and how much was due to her own escapades as a young girl.~
EXTERN BNALIA NEJ59


CHAIN VPLEIB PCF2Leina38a
~Sleep well <CHARNAME>.~
DO ~RestParty()~ EXIT


IF ~Global("VP_LoveTalk","LOCALS",8) Gender(Player1,FEMALE)~ THEN VPLEIB PCF3Leina1
~I... I will never get used to the sight of so much blood after a battle. It is... we are splattered with the life fluid of others, it covers our clothes, our weapons even our hands. Look at us <CHARNAME>!~
END
 ++ ~I know Leina, and I hate the killing as much as you, but it is better that their blood is spilled on us, than ours over them.~ EXTERN VPLEIB PCF3Leina2
 ++ ~Every time I am forced to kill, it sickens me to think that I have taken the one thing that can not be given back, the single most precious gift of all, life.~ EXTERN VPLEIB PCF3Leina2
 ++ ~It was them or us Leina, it always is.~ EXTERN VPLEIB PCF3Leina9
 ++ ~I can not be blamed for every fool who loses his life trying to take mine.~ EXTERN VPLEIB PCF3Leina9
 ++ ~You need to toughen up Leina. I feel that my road to Irenicus will be stained with a lot more blood before he is found.~ EXTERN VPLEIB PCF3Leina11


CHAIN VPLEIB PCF3Leina2
~I can see that <CHARNAME>, and clearly you are not your father's daughter. I look into your face and I still can not reconcile that the gentle woman I see is the offspring of the god of murder. How do you distance yourself from his legacy, how do you deny that which is surely fighting for recognition within you?~
END
 ++ ~I have to distance myself, if I was to give in even for a second and take pleasure in the death of one seeking mine, then I would start to become all that he was.~ EXTERN VPLEIB PCF3Leina3
 ++ ~I did not ask for this life, but it is the only one I have and I am trying to live it in a way that is best for who I am and not who my father was.~ EXTERN VPLEIB PCF3Leina4
 ++ ~Bhaal gave me life but there is nothing of him inside me. I know that it is wrong to take a life, but if someone tries to take mine, then it is inevitable that one will be forfeit, that is survival.~ EXTERN VPLEIB PCF3Leina4
 ++ ~There is more of Gorion in me than Bhaal. It was Gorion who played the father and it was Gorion who gave me the values I have today.~ EXTERN VPLEIB PCF3Leina5


CHAIN VPLEIB PCF3Leina3
~(*She shivers visibly*) It can not be easy to deny that which flows through your every fibre. More so as it was a god's intention that it would not be denied and yet, you deny it every time you are forced to kill. I see regret, not pleasure in your eyes every time you are forced to act.~
EXTERN VPLEIB PCF3Leina3a


CHAIN VPLEIB PCF3Leina3a
~Yours is a life touched by murder and yet I do not believe that it has touched your soul.~
END
 ++ ~What are we like Leina! Two woman forced to the road through no fault of our own and neither of us is truly equipped to face the horror that comes with it.~ EXTERN VPLEIB PCF3Leina6
 ++ ~Death in battle is neither pretty nor is it clean Leina. I for one can not wait to submerse myself in the first river we across in order to wash away its stench.~ EXTERN VPLEIB PCF3Leina7
 ++ ~I hope you are right Leina, for if the day ever dawned that I should relish in bringing murder and grief to the world, then I will have failed Gorion and all that he taught me.~ EXTERN VPLEIB PCF3Leina8
 ++ ~I will not be like him. I look back at the litter of bodies behind me and I take no pleasure in what I see. I just keep hoping that each time another falls that it will be the last.~ EXTERN VPLEIB PCF3Leina8


CHAIN VPLEIB PCF3Leina4
~Non of us ask to be born, that was our parents decision, or not as the case may be, and once we know how sweet life is, then nothing is greater than the instinct to survive. You fight to protect yourself and your friends, but that does not mean you enjoy having to deal out death.~
EXTERN VPLEIB PCF3Leina4a


CHAIN VPLEIB PCF3Leina4a
~I can see that it does not come easy to you <CHARNAME>, just as I can see that murder is not in you, Bhaal has no hold on you... (*She shivers visibly at the mention of the dead god's name*)~
END
 ++ ~What are we like Leina! Two woman forced to the road through no fault of our own and neither of us is truly equipped to face the horror that comes with it.~ EXTERN VPLEIB PCF3Leina6
 ++ ~Death in battle is neither pretty nor is it clean Leina. I for one can not wait to submerse myself in the first river we across in order to wash away its stench.~ EXTERN VPLEIB PCF3Leina7
 ++ ~I hope you are right Leina, for if the day ever dawned that I should relish in bringing murder and grief to the world, then I will have failed Gorion and all that he taught me.~ EXTERN VPLEIB PCF3Leina8
 ++ ~I will not be like him. I look back at the litter of bodies behind me and I take no pleasure in what I see. I just keep hoping that each time another falls that it will be the last.~ EXTERN VPLEIB PCF3Leina8


CHAIN VPLEIB PCF3Leina5
~Gorion may have taught you but he could not have done so if you had not chosen to listen. Even now, knowing the nature of your true father, you refuse to acknowledge the legacy that he has left within you.~
EXTERN VPLEIB PCF3Leina5a


CHAIN VPLEIB PCF3Leina5a
~You deplore the taking of life and that is what makes you different to Bhaal... (*She shivers visibly at the mention of the dead god's name*)... and will always set you apart from him.~
END
 ++ ~What are we like Leina! Two woman forced to the road through no fault of our own and neither of us is truly equipped to face the horror that comes with it.~ EXTERN VPLEIB PCF3Leina6
 ++ ~Death in battle is neither pretty nor is it clean Leina. I for one can not wait to submerse myself in the first river we across in order to wash away its stench.~ EXTERN VPLEIB PCF3Leina7
 ++ ~I hope you are right Leina, for if the day ever dawned that I should relish in bringing murder and grief to the world, then I will have failed Gorion and all that he taught me.~ EXTERN VPLEIB PCF3Leina8
 ++ ~I will not be like him. I look back at the litter of bodies behind me and I take no pleasure in what I see. I just keep hoping that each time another falls that it will be the last.~ EXTERN VPLEIB PCF3Leina8


CHAIN VPLEIB PCF3Leina6
~But we are both survivors <CHARNAME>, and although I will never get used to the blood and death, we both do that which we must in order to survive.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",9)~ EXIT


CHAIN VPLEIB PCF3Leina7
~(*Looking at her blood stained armour*) The armour will wash <CHARNAME>, but I will always be aware of the stain it leaves on my hands and the sight of it in my eyes.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",9)~ EXIT


CHAIN VPLEIB PCF3Leina8
~You feel and understand the pain and sorrow that comes with dealing out death too much to become like your father. You carry his blood but it is the heart and the soul that makes the woman. Be true to them and you will be true to yourself.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",9)~ EXIT


CHAIN VPLEIB PCF3Leina9
~And does that excite you <CHARNAME>, the thought that you have to kill in order to survive, or are your words meant only as an excuse to kill?~
END
 ++ ~I deplore all this killing and wasting of lives Leina, and do you know what I deplore even more... the fact that it is my hand that is dealing it!~ EXTERN VPLEIB PCF3Leina10
 ++ ~There is no excitement in fighting for my life every day Leina, I am sick of it!~ EXTERN VPLEIB PCF3Leina10
 ++ ~I need no excuse to take the lives of those who seek to take mine.~ EXTERN VPLEIB PCF3Leina11
 ++ ~Yes, there is excitement in the fight Leina and excitement when I emerge triumphant from it. If it as at the cost of another's life then it only proves I am the better woman!~ EXTERN VPLEIB PCF3Leina11


CHAIN VPLEIB PCF3Leina10
~I am sorry, I should have looked closer before I asked. I can see in your eyes that dealing out death brings you no pleasure.~
EXTERN VPLEIB PCF3Leina10a


CHAIN VPLEIB PCF3Leina10a
~It was wrong of me to presume that because your father was Bhaal, you had taken on his mantle... (*She shivers visibly at the mention of the dead god's name*)... You carry his blood but there is no murder in you <CHARNAME>.~
END
 ++ ~What are we like Leina! Two woman forced to the road through no fault of our own and neither of us is truly equipped to face the horror that comes with it.~ EXTERN VPLEIB PCF3Leina6
 ++ ~Death in battle is neither pretty nor is it clean Leina. I for one can not wait to submerse myself in the first river we across in order to wash away its stench.~ EXTERN VPLEIB PCF3Leina7
 ++ ~I hope you are right Leina, for if the day ever dawned that I should relish in bringing murder and grief to the world, then I will have failed Gorion and all that he taught me.~ EXTERN VPLEIB PCF3Leina8
 ++ ~I will not be like him. I look back at the litter of bodies behind me and I take no pleasure in what I see. I just keep hoping that each time another falls that it will be the last.~ EXTERN VPLEIB PCF3Leina8


CHAIN VPLEIB PCF3Leina11
~I am beginning to see the father in the daughter. Tell me <CHARNAME>, is the legacy that Bhaal has left you... (*She shivers visibly at the mention of the dead god's name*)... truly the way of your own heart?~
END
 ++ ~It is who I am and who I am proud to be.~ EXTERN VPLEIB PCF3Leina12
 ++ ~My father gave me life solely to continue his work after his death and I will not disappoint him.~ EXTERN VPLEIB PCF3Leina12
 ++ ~I fought Sarevok for the right to take my father's place and I will fight any who challenge my right to be here. Does that answer your question?~ EXTERN VPLEIB PCF3Leina12


CHAIN VPLEIB PCF3Leina12
~We are not forced to take on the mantle of our parents, but I see that you have chosen to do so.~
EXTERN VPLEIB PCF3Leina12a


CHAIN VPLEIB PCF3Leina12a
~I have no idea of what being touched by a god does to a person, so I do not know whether it is Bhaal's spark that has forced this choice on you or whether it is the way of your own heart. What I do know is that it is a cruel mantle you have donned and not one that I would wear with pride.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",9) SetGlobal("VP_MyFlirt_Is_Over","LOCALS",1)~ EXIT


IF ~Global("VP_LoveTalk","LOCALS",8) Gender(Player1,MALE)~ THEN VPLEIB PCM3Leina1
~Do you believe in ghosts? I mean ghosts of the past, not the undead spirits we battle in crypts and tombs.~
END
 ++ ~Yes, I think certain events can be traumatic, and along with our actions at the given time, they can return to haunt us long after they occurred.~ EXTERN VPLEIB PCM3Leina2
 ++ ~The past is a time Leina, how can time possibly be a restless spirit?~ EXTERN VPLEIB PCM3Leina16
 ++ ~I believe only what I can see Leina and if the past cannot be seen then how can it have ghosts?~ EXTERN VPLEIB PCM3Leina16
 ++ ~What kind of fool question is that Leina?~ EXTERN VPLEIB PCM3Leina16
 ++ ~What is past is past and as such, the past is the best place to let it lie.~ EXTERN VPLEIB PCM3Leina18


CHAIN VPLEIB PCM3Leina2
~Then how does a person go about laying these ghosts to rest <CHARNAME>, and if you say time will see to it, I will feed you to the next hungry beast that we meet?~
END
 ++ ~At the risk of being some creature's next meal, that is the only answer I have. Time will gradually fade these memories, or ghosts as you call them, as new and more important events occur.~ EXTERN VPLEIB PCM3Leina3
 ++ ~As I do not want to end up as some creature's dinner, I have to say that I have no answer for you.~ EXTERN VPLEIB PCM3Leina4
 ++ ~You just have to keep facing them until they see they no longer have a hold on you and then they give up bothering you.~ EXTERN VPLEIB PCM3Leina5
 ++ ~Talking sometimes helps to show things in their true light. It is often that which we are afraid to name that scares and haunts us Leina.~ EXTERN VPLEIB PCM3Leina5


CHAIN VPLEIB PCM3Leina3
~(*Sighs*) Then I guess I will have to bear my ghosts until those important events replace those which bring them.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",9)~ EXIT


CHAIN VPLEIB PCM3Leina4
~(*Laughs softly*) A wise answer <CHARNAME>, although I suspect you were in no danger. Most creatures like meat on their bones and not bones on their meat when it comes to their dinner.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",9)~ EXIT


CHAIN VPLEIB PCM3Leina5
~(*Sighs*) I know you are right but they are not easy to face alone and more difficult to find someone prepared to listen. You <CHARNAME>, are the first person I have felt enough at ease to talk with... would this perhaps be a good time to maybe talk a little more?~
END
 ++ ~Not really, and besides, I believe the only one able to work through troubles of the mind is the troubled person herself.~ EXTERN VPLEIB PCM3Leina6
 ++ ~No it isn't Leina, and nor will there ever be a good time. I am not a baby sitter, so please, sort your ghosts or keep them to yourself.~ EXTERN VPLEIB PCM3Leina6
 ++ ~The road seems peaceful enough, so yes, I guess we can talk.~ EXTERN VPLEIB PCM3Leina7
 ++ ~As long as we are not going to have a sit down discussion Leina. We still have a lot of road to put behind us today.~ EXTERN VPLEIB PCM3Leina7


CHAIN VPLEIB PCM3Leina6
~(*Sighs*) I should have expected such an answer from you <CHARNAME>, but I had hoped that... never mind, I will not bother you further with my ghosts.~
EXTERN VPLEIB PCM3Leina6a


CHAIN VPLEIB PCM3Leina6a
~I hope you never have cause to ask for help in laying ghosts of your own someday, because you may just get the same response from others that you have given me.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",9)~ EXIT


CHAIN VPLEIB PCM3Leina7
~You already know of my childhood, cosseted in my father's house, away from the prejudices of the real world and you know a little of my mother's death, well as much as I know myself. What I have not spoken of is my life after I left Athkatla, after I married and discovered that happy ever afters are only story book endings.~
END
 ++ ~You can not know that Leina, after only experiencing love once. There are I am sure, numerous couples out there prepared to argue that with you.~ EXTERN VPLEIB PCM3Leina8
 ++ ~If not for your mother's untimely death, would you not say that your parents were on the way to a happy ever after life?~ EXTERN VPLEIB PCM3Leina8
 ++ ~This is the real world Leina, people read those books to escape the harsh reality of it and of life itself.~ EXTERN VPLEIB PCM3Leina8
 ++ ~To have based your expectations on the imaginings of writers was a sure way of setting yourself up for a fall.~ EXTERN VPLEIB PCM3Leina8


CHAIN VPLEIB PCM3Leina8
~Maybe so, but... As I saying... when I met Bjorn, he was everything I had read about, everything I had dreamed the man I would love would be and he loved me with the same passion that my father loved my mother... or so he had me believe.~
EXTERN VPLEIB PCM3Leina8a


CHAIN VPLEIB PCM3Leina8a
~Like me he had a great love for music and was a gifted bard. He told me tales of the joy that love between a man and a woman brings, he spoke to me in words that I had often heard my father say to my mother, how could I not love such a gentle and caring man.~
EXTERN VPLEIB PCM3Leina8b


CHAIN VPLEIB PCM3Leina8b
~I did not know the way of the world or of men but he was patient, taking the time to win my heart and my soul before taking my body... and then only after we were wed.~
END
 ++ ~This Bjorn was wrong to deceive you as he did, but could you not see the emptiness of his words when you looked closer into his face?~ EXTERN VPLEIB PCM3Leina9
 ++ ~A bard is gifted with his use of words Leina, but as often as not they reflect his ego and not his heart.~ EXTERN VPLEIB PCM3Leina9
 ++ ~Bard's and their pretty words have broken many hearts Leina. You are not the first and you most certainly will not be the last.~ EXTERN VPLEIB PCM3Leina9


CHAIN VPLEIB PCM3Leina9
~It wasn't only his words <CHARNAME>, his eyes shone with what I thought was love... of course now I see that it was my dowry I saw reflected in them.~
EXTERN VPLEIB PCM3Leina9a


CHAIN VPLEIB PCM3Leina9a
~We were happy, blissfully happy, he coached me in my music and we played and danced each day until the sun went down.~
EXTERN VPLEIB PCM3Leina9b


CHAIN VPLEIB PCM3Leina9b
~Then at night we would fall into each others arms oblivious to everything but the joy that only comes from two becoming one and when spent, we would fall asleep exhausted but content. However it was not enough, when my dowry ran out... so did he.~
END
 ++ ~Surely you can see now that he was a man only interested in his own comforts and not a man worthy of love?~ EXTERN VPLEIB PCM3Leina901
 ++ ~Men like him are no more than parasites. They take until there is no more to be taken, but they are shallow and empty inside and have nothing to give in return.~ EXTERN VPLEIB PCM3Leina901
 ++ ~His will be the sadder life when he can no longer charm a woman into keeping him Leina. I am sure his thoughts will then turn to the one who truly loved him and what he carelessly threw away.~ EXTERN VPLEIB PCM3Leina901


CHAIN VPLEIB PCM3Leina901
~I know that now but then... as I said, he took my heart and my soul before he took me, they were no longer my own. When he left, he took them with him. I loved and trusted him so completely that I had given him everything that was me.~
 = ~I lived in darkness and despair for a long time until I realised I still had a heart, or what there was left of it, beating in my breast... but it was enough. So I took my music, the one thing he had not taken... and the rest you know.~
END
 ++ ~Yes but why the ghosts Leina? You found the strength to re-build your life, why not use the same strength to lay those ghosts to rest?~ EXTERN VPLEIB PCM3Leina10
 ++ ~You gave your love to man not deserving of it Leina, why let his memory spoil your future?~ EXTERN VPLEIB PCM3Leina10
 ++ ~But your heart has recovered, your music is proof of that so why is it so difficult for you to let go?~ EXTERN VPLEIB PCM3Leina10
 ++ ~A tale worthy of any bard Leina, but a tad melodramatic don't you think?~ EXTERN VPLEIB PCM3Leina15


CHAIN VPLEIB PCM3Leina10
~Have you not heard anything of what I just said? Bjorn still has that which he took from me.~
 = ~I gave myself so completely to him that it was impossible to completely unravel that which I gave to him from that which is him. The shadows they lessen, yes but I will never be free of them, he will always haunt me for as long as part of me is within him.~
END
 ++ ~I wish I could help you Leina , but I don't know where to begin.~ EXTERN VPLEIB PCM3Leina11
 ++ ~That sounds too complex for me. Apart from finding the guy and killing him I can not see how you are going to sort this one.~ EXTERN VPLEIB PCM3Leina12
 ++ ~Maybe if you were to allow love into your life again, that new love would replace that which Bjorn took from you.~ EXTERN VPLEIB PCM3Leina13
 ++ ~To love so completely and then to loose that love often leaves a feeling of emptiness, a feeling that a part of oneself was taken by the other, but you soon discover that it isn't so. The pain passes and suddenly you are free of all ghosts. Until then, know that I have a strong shoulder should these ghosts become too much for you to bear.~ EXTERN VPLEIB PCM3Leina14
 ++ ~I am sorry Leina, your ghosts are not the sort of ghosts I can help you with, but I can offer you a friendly shoulder should they become too much for you to bear. Come walk beside me a little further, we will speak no more of ghosts and if you prefer, we can walk in silence.~ EXTERN VPLEIB PCM3Leina14


CHAIN VPLEIB PCM3Leina11
~(*Sighs*) No and neither do I, but thank you for listening <CHARNAME>.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",9)~ EXIT


CHAIN VPLEIB PCM3Leina12
~(*Sighs*) I don't wish him dead <CHARNAME>! I can not wish anyone dead no matter what they have done. Death is too final and anyway, his spirit would continue to haunt me so I would gain nothing. Still, I thank you for listening.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",9)~ EXIT


CHAIN VPLEIB PCM3Leina13
~(*Hotly*) It was because I loved that I am fighting ghosts now! It was because of love that I carry the guilt of not being able to save my mother, although I hope to deal with that one in the future. No, love has done me no favours nor has it brought me much pleasure, I would be a fool to trust it again. (*She turns and walks away.*)~
DO ~SetGlobal("VP_LoveTalk","LOCALS",9)~ EXIT


CHAIN VPLEIB PCM3Leina14
~(*She takes your hand and squeezes it lightly. You are taken aback by her move and yet you marvel at how small and fragile her hand feels in your own*)~
 = ~To find comfort in the touch of another will not lay my ghosts to rest, but it is a comfort I find I still need at times and it is most welcome. Thank you <CHARNAME>.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",9)~ EXIT


CHAIN VPLEIB PCM3Leina15
~(*Angrily*) I am not given to melodrama <CHARNAME>! You were the one who said to talk about and face one's ghosts was the best way to lay them to rest. I can see now you were probably just humouring me.~
 = ~Well I am sorry but my ghosts are very real to me and I do not need a delusional would be godling calling me a drama queen. (*She turns and walks away.*)~
DO ~SetGlobal("VP_LoveTalk","LOCALS",9)~ EXIT


CHAIN VPLEIB PCM3Leina16
~You clearly have no understanding of what I am saying, do you <CHARNAME>? If you had you would not have needed to ask that question. (*She starts to turn away*)...~
END
 ++ ~Then help me to understand Leina, tell me of these ghosts of yours?~ EXTERN VPLEIB PCM3Leina7
 ++ ~I said I didn't believe in them, but that does not make them any less real to you. Tell me why they persist in haunting you?~ EXTERN VPLEIB PCM3Leina7
 ++ ~Bard's are notorious romantics Leina, your ghosts are likely to be nothing more than memories or feelings of guilt that you refuse to address.~ EXTERN VPLEIB PCM3Leina17
 ++ ~Sort your feelings of guilt and rejection Leina and you might find your ghosts have disappeared.~ EXTERN VPLEIB PCM3Leina17


CHAIN VPLEIB PCM3Leina17
~If it were that simple don't you think I would have done it? Do you think I enjoy counting the stars whilst the rest of you are asleep, oblivious to how dark or how lonely the night can be for those who sleep refuses to come?~
 = ~You yourself have sat up through the long hours because sleep has evaded you so I had hoped that at least you might understand some of what I have said... but I see I was wrong I will not bother you further <CHARNAME>.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",9)~ EXIT


CHAIN VPLEIB PCM3Leina18
~And if the ghosts refuse to stay in the past, how can they be made to?~
END
 ++ ~Your ghosts are likely to be nothing more than memories or feelings of guilt that you refuse to confront. Address these feelings, make them stay in the past.~ EXTERN VPLEIB PCM3Leina17
 ++ ~Sort your feelings of guilt and rejection Leina and you may find that your ghosts will return to the past for good.~ EXTERN VPLEIB PCM3Leina17
 ++ ~By pulling yourself together and refusing to give in to something that can not be changed.~ EXTERN VPLEIB PCM3Leina17


IF ~Global("VP_LoveTalk","LOCALS",11) Gender(Player1,FEMALE)~ THEN VPLEIB PCF4Leina1
~Do you believe in ghosts? I mean ghosts of the past, not the undead spirits we battle in crypts and tombs.~
END
 ++ ~Yes, I think certain events can be traumatic, and along with our actions at the given time, they can return to haunt us long after they occurred.~ EXTERN VPLEIB PCF4Leina2
 ++ ~The past is a time Leina, how can time possibly be a restless spirit?~ EXTERN VPLEIB PCF4Leina17
 ++ ~I believe only what I can see Leina and if the past cannot be seen then how can it have ghosts?~ EXTERN VPLEIB PCF4Leina17
 ++ ~What kind of fool question is that Leina?~ EXTERN VPLEIB PCF4Leina17
 ++ ~What is past is past and as such, the past is the best place to let it lie.~ EXTERN VPLEIB PCF4Leina19


CHAIN VPLEIB PCF4Leina2
~Then how does a person go about laying these ghosts to rest <CHARNAME>, and if you say time will see to it, I will feed you to the next hungry beast that we meet?~
END
 ++ ~At the risk of being some creature's next meal, that is the only answer I have. Time will gradually fade these memories, or ghosts as you call them, as new and more important events occur.~ EXTERN VPLEIB PCF4Leina3
 ++ ~As I do not want to end up as some creature's dinner, I have to say that I have no answer for you.~ EXTERN VPLEIB PCF4Leina4
 ++ ~You just have to keep facing them until they see they no longer have a hold on you and then they give up bothering you.~ EXTERN VPLEIB PCF4Leina5
 ++ ~Talking sometimes helps to show things in their true light. It is often that which we are afraid to name that scares and haunts us Leina.~ EXTERN VPLEIB PCF4Leina5


CHAIN VPLEIB PCF4Leina3
~(*Sighs*) Then I guess I will have to bear my ghosts until those important events replace those which bring them.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",12)~ EXIT


CHAIN VPLEIB PCF4Leina4
~(*Laughs softly*) A wise answer <CHARNAME>, although I suspect you were in no danger. The rest of the group are hardly about to let me feed you as fodder to some hungry beast.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",12)~ EXIT


CHAIN VPLEIB PCF4Leina5
~(*Sighs*) I know you are right, but it is not always easy to find one who will listen. You are a busy woman <CHARNAME> and perhaps you do not have the time for the problems of others but I will ask as we seem to have a quiet moment, might this be a good time to maybe talk a little more?~
END
 ++ ~Not really, and besides, I believe the only one able to work through troubles of the mind is the troubled person herself.~ EXTERN VPLEIB PCF4Leina6
 ++ ~No it isn't Leina, and nor will there ever be a good time. I am not a baby sitter, so please, sort your ghosts or keep them to yourself.~ EXTERN VPLEIB PCF4Leina6
 ++ ~The road seems peaceful enough, so yes, I guess we can talk.~ EXTERN VPLEIB PCF4Leina7
 ++ ~As long as we are not going to have a sit down discussion Leina. We still have a lot of road to put behind us today.~ EXTERN VPLEIB PCF4Leina7


CHAIN VPLEIB PCF4Leina6
~(*Sighs*) I should have expected such an answer from you <CHARNAME>, but I had hoped that... well as one woman to another... but never mind, I will not bother you further with my ghosts.~
 = ~I hope you never have cause to ask for help in laying ghosts of your own someday, because you may just get the same response from others that you have given me.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",12)~ EXIT


CHAIN VPLEIB PCF4Leina7
~You already know of my childhood, cosseted in my father's house, away from the prejudices of the real world and you know a little of my mother's death, well as much as I know myself. What I have not spoken of is my life after I left Athkatla, after I married and discovered that happy ever afters are only story book endings.~
END
 ++ ~You can not know that Leina, after only experiencing love once. There are I am sure, numerous couples out there prepared to argue that with you.~ EXTERN VPLEIB PCF4Leina8
 ++ ~If not for your mother's untimely death, would you not say that your parents were on the way to a happy ever after life?~ EXTERN VPLEIB PCF4Leina8
 ++ ~I have never had the time for such books myself Leina. Even as a girl growing up in Candlekeep I preferred to read of the deeds of real people and not the stories of some writers imaginings.~ EXTERN VPLEIB PCF4Leina8
 ++ ~I was also closeted as a girl and it wasn't until I left Candlekeep that the harshness of the world became known to me, but its people still surprise me sometimes.~ EXTERN VPLEIB PCF4Leina8


CHAIN VPLEIB PCF4Leina8
~Maybe so, but... As I was saying... when I met Bjorn, he was everything I had read about, everything I had dreamed the man I would love would be and he loved me with the same passion that my father loved my mother... or so he had me believe.~
 = ~Like me he had a great love for music and was a gifted bard. He told me tales of the joy that love between a man and a woman brings, he spoke to me in words that I had often heard my father say to my mother, how could I not love such a gentle and caring man.~
 = ~I did not know the way of the world or of men but he was patient, taking the time to win my heart and my soul before taking my body... and then only after we were wed.~
END
 ++ ~Ah, your husband was a bard. I too have heard the pretty words which fall from a bard's lips, they are infamous for their glib tongues.~ EXTERN VPLEIB PCF4Leina9
 ++ ~This Bjorn was wrong to deceive you as he did, but could you not see the emptiness of his words when you looked into his face?~ EXTERN VPLEIB PCF4Leina9
 ++ ~Bards! They seem to know just the right words to use at just the right time and they play a girl's heart as easily as they strum their harps.~ EXTERN VPLEIB PCF4Leina9
 ++ ~A bard is great at boosting a girl's ego Leina but he should never be trusted with her heart.~ EXTERN VPLEIB PCF4Leina9


CHAIN VPLEIB PCF4Leina9
~It wasn't only his words <CHARNAME>, his eyes shone with what I thought was love... of course now I see that it was my dowry I saw reflected in them.~
 = ~We were happy, blissfully happy, he coached me in my music and we played and danced each day until the sun went down.~
 = ~Then at night we would fall into each others arms oblivious to everything but the joy that only comes from two becoming one and when spent, we would fall asleep exhausted but content. However it was not enough, when my dowry ran out... so did he.~
END
 ++ ~He was a selfish man, interested only in his own comforts and not worthy of a girl's love.~ EXTERN VPLEIB PCF4Leina10
 ++ ~Men like him are no more than parasites. They take until there is no more to be taken, but they are shallow and empty inside and have nothing to give in return.~ EXTERN VPLEIB PCF4Leina10
 ++ ~Men such as Bjorn will never find happiness Leina. In time they lose their charm, their good looks and then where will he find a girl to pay for his comforts I ask?~ EXTERN VPLEIB PCF4Leina10


CHAIN VPLEIB PCF4Leina10
~I know that now, but then... as I said, he took my heart and my soul before he took me, they were no longer my own. When he left, he took them with him. I loved and trusted him so completely that I had given him everything that was me.~
 = ~I lived in darkness and despair for a long time until I realised I still had a heart, or what there was left of it, beating in my breast... but it was enough. So I took my music, the one thing he had not taken... and the rest you know.~
END
 ++ ~Yes but why the ghosts Leina? You found the strength to re-build your life, why not use the same strength to lay those ghosts to rest?~ EXTERN VPLEIB PCF4Leina11
 ++ ~You gave your love to man not deserving of it Leina, why let his memory spoil your future?~ EXTERN VPLEIB PCF4Leina11
 ++ ~And you proved yourself stronger, your heart has recovered, your music is proof of that so why is it so difficult for you to let go?~ EXTERN VPLEIB PCF4Leina11
 ++ ~A tale worthy of any bard Leina, but a tad melodramatic don't you think?~ EXTERN VPLEIB PCF4Leina16


CHAIN VPLEIB PCF4Leina11
~Have you not heard anything of what I just said? Bjorn still has that which he took from me.~
 = ~I gave myself so completely to him that it was impossible to completely unravel that which I gave to him from that which is him. The shadows they lessen, yes but I will never be free of them, he will always haunt me for as long as part of me is within him.~
END
 ++ ~I wish I could help you Leina , but I don't know where to begin.~ EXTERN VPLEIB PCF4Leina12
 ++ ~That sounds too complex for me. Apart from finding and killing Bjorn I can not see how you are going to sort this one.~ EXTERN VPLEIB PCF4Leina13
 ++ ~Maybe if you were to allow love into your life again, that new love would replace that which Bjorn took from you.~ EXTERN VPLEIB PCF4Leina14
 ++ ~To love so completely and then to loose that love often leaves a feeling of emptiness, a feeling that a part of oneself was taken by the other, but you soon discover that it isn't so. The pain passes and suddenly you are free of all ghosts.~ EXTERN VPLEIB PCF4Leina15


CHAIN VPLEIB PCF4Leina12
~(*Sighs*) No and neither do I, but thank you for listening <CHARNAME>.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",12)~ EXIT


CHAIN VPLEIB PCF4Leina13
~(*Sighs*) I don't wish him dead <CHARNAME>! I can not wish anyone dead no matter what they have done. Death is too final and anyway, his spirit would continue to haunt me so I would gain nothing. Still, I thank you for listening.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",12)~ EXIT


CHAIN VPLEIB PCF4Leina14
~(*Hotly*) It was because I loved that I am fighting ghosts now! It was because of love that I carry the guilt of not being able to save my mother, although I hope to deal with that one day in the future. No, love has done me no favours nor has it brought me much pleasure, I would be a fool to trust it again. (*She turns and walks away.*)~
DO ~SetGlobal("VP_LoveTalk","LOCALS",12)~ EXIT


CHAIN VPLEIB PCF4Leina15
~To listen to your words it is as though you too have known the pain of loving a man so completely as only a woman can and then losing him, however I will not intrude. Perhaps there is a story there and perhaps there is not, but my ear is yours if you should wish to tell it. Thank you for listening <CHARNAME>.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",12)~ EXIT


CHAIN VPLEIB PCF4Leina16
~(*Angrily*) I am not given to melodrama <CHARNAME>! You were the one who said to talk about and face one's ghosts was the best way to lay them to rest. I can see now you were probably just humouring me.~
 = ~Well I am sorry but my ghosts are very real to me and I do not need a delusional would be godling calling me a drama queen. (*She turns and walks away.*)~
DO ~SetGlobal("VP_LoveTalk","LOCALS",12)~ EXIT


CHAIN VPLEIB PCF4Leina17
~You clearly have no understanding of what I am saying, do you <CHARNAME>? If you had you would not have needed to ask that question. (*She starts to turn away*)~
END
 ++ ~Then help me to understand Leina, tell me of these ghosts of yours?~ EXTERN VPLEIB PCF4Leina7
 ++ ~I said I didn't believe in them, but that does not make them any less real to you. Tell me why they persist in haunting you?~ EXTERN VPLEIB PCF4Leina7
 ++ ~Bard's are notorious romantics Leina, your ghosts are likely to be nothing more than memories or feelings of guilt that you refuse to address.~ EXTERN VPLEIB PCF4Leina18
 ++ ~Sort your feelings of guilt and rejection Leina and you might find your ghosts have disappeared.~ EXTERN VPLEIB PCF4Leina18


CHAIN VPLEIB PCF4Leina18
~If it were that simple don't you think I would have done it? Do you think I enjoy counting the stars whilst the rest of you are asleep, oblivious to how dark or how lonely the night can be for those who sleep refuses to come?~
 = ~You yourself have sat up through the long hours because sleep has evaded you so I had hoped that at least you might understand some of what I have said... but I see I was wrong I will not bother you further <CHARNAME>.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",12)~ EXIT


CHAIN VPLEIB PCF4Leina19
~And if the ghosts refuse to stay in the past, how can they be made to?~
END
 ++ ~Your ghosts are likely to be nothing more than memories or feelings of guilt that you refuse to confront. Address these feelings, make them stay in the past.~ EXTERN VPLEIB PCF4Leina18
 ++ ~Sort your feelings of guilt and rejection Leina and you may find that your ghosts will return to the past for good.~ EXTERN VPLEIB PCF4Leina18
 ++ ~By pulling yourself together and refusing to give in to something that can not be changed.~ EXTERN VPLEIB PCF4Leina18


IF ~Global("VP_Danicng_Queen","GLOBAL",1) Gender(Player1,MALE)~ THEN VPLEIB PCM4Leina1
~Ah, some respite from the road. Come I have spoken to the barkeep and he has agreed to let me sing. Now I will show you where real passion comes from <CHARNAME>... no arguments just prepare yourself to be... well just be prepared.~
END
 ++ ~We are not here to make merry Leina. So you can tell the barkeep to find another entertainer.~ EXTERN VPLEIB PCM4Leina2
 ++ ~Leina please, we do not want to drive the good barkeep's customers away.~ EXTERN VPLEIB PCM4Leina2
 ++ ~Are you sure the patrons here are prepared for you Leina?~ EXTERN VPLEIB PCM4Leina2
 ++ ~Ok, as long as it's not one of your somebody done Leina wrong songs.~ EXTERN VPLEIB PCM4Leina3
 ++ ~This should be good.~ EXTERN VPLEIB PCM4Leina3


CHAIN VPLEIB PCM4Leina2
~(*Laughing*) Ah, but the song is promised now, and the barkeep will not have his patrons disappointed. See they have even made room should any of you wish to join me in the dance.~
END
 IF ~True()~ THEN EXTERN VPLEIB PCM4Leina2b
 IF ~InParty("Yoshimo")~ THEN EXTERN BYOSHIM NEJ9
 IF ~InParty("Jaheira")~ THEN DO ~SetGlobal("VP_JahiNoDancing","LOCALS",1)~ EXTERN BJAHEIR NEJ497
 IF ~InParty("Nalia")~ THEN EXTERN BNALIA NEJ60
 IF ~InParty("Mazzy")~ THEN EXTERN BMAZZY NEJ1
 IF ~InParty("Anomen")~ THEN EXTERN BANOMEN NEJ1
 IF ~InParty("Keldorn")~ THEN EXTERN BKELDOR NEJ1
 IF ~InParty("Viconia")~ THEN DO ~SetGlobal("VP_VickyNoDancing","LOCALS",1)~ EXTERN BVICONI NEJ0
 IF ~InParty("Korgan")~ THEN EXTERN BKORGAN NEJ0
 IF ~InParty("Valygar")~ THEN EXTERN BVALYGA NEJ156
 IF ~InParty("Edwin")~ THEN EXTERN BEDWIN NEJ109
 IF ~InParty("Jan")~ THEN EXTERN BJAN NEJ1
 IF ~InParty("Aerie")~ THEN DO ~SetGlobal("VP_AerieNoDancing","LOCALS",1)~ EXTERN BAERIE NEJ454
 IF ~InParty("njdar")~ THEN EXTERN NJDARB 127
 IF ~InParty("njhroth")~ THEN EXTERN NJHROB 85
 IF ~!InParty("njtaffic") InParty("njmelora")~ THEN EXTERN NJMELB 55
 IF ~InParty("njtaffic") !InParty("njmelora")~ THEN EXTERN NJTAFB 6
 IF ~InParty("njtaffic") InParty("njmelora")~ THEN EXTERN NJMELB 48


CHAIN VPLEIB PCM4Leina3
~(*Laughing*) Oh, I think you are going to enjoy this one. See, they have even made room should any of you wish to join me in the dance.~
END
 IF ~True()~ THEN EXTERN VPLEIB PCM4Leina2b
 IF ~InParty("Yoshimo")~ THEN EXTERN BYOSHIM NEJ9
 IF ~InParty("Jaheira")~ THEN DO ~SetGlobal("VP_JahiNoDancing","LOCALS",1)~ EXTERN BJAHEIR NEJ497
 IF ~InParty("Nalia")~ THEN EXTERN BNALIA NEJ60
 IF ~InParty("Mazzy")~ THEN EXTERN BMAZZY NEJ1
 IF ~InParty("Anomen")~ THEN EXTERN BANOMEN NEJ1
 IF ~InParty("Keldorn")~ THEN EXTERN BKELDOR NEJ1
 IF ~InParty("Viconia")~ THEN DO ~SetGlobal("VP_VickyNoDancing","LOCALS",1)~ EXTERN BVICONI NEJ0
 IF ~InParty("Korgan")~ THEN EXTERN BKORGAN NEJ0
 IF ~InParty("Valygar")~ THEN EXTERN BVALYGA NEJ156
 IF ~InParty("Edwin")~ THEN EXTERN BEDWIN NEJ109
 IF ~InParty("Jan")~ THEN EXTERN BJAN NEJ1
 IF ~InParty("Aerie")~ THEN DO ~SetGlobal("VP_AerieNoDancing","LOCALS",1)~ EXTERN BAERIE NEJ454
 IF ~InParty("njdar")~ THEN EXTERN NJDARB 127
 IF ~InParty("njhroth")~ THEN EXTERN NJHROB 85
 IF ~!InParty("njtaffic") InParty("njmelora")~ THEN EXTERN NJMELB 55
 IF ~InParty("njtaffic") !InParty("njmelora")~ THEN EXTERN NJTAFB 6
 IF ~InParty("njtaffic") InParty("njmelora")~ THEN EXTERN NJMELB 48


CHAIN VPLEIB PCM4Leina2a
~The question is... are you ready <CHARNAME>?~
END
 ++ ~I will sit and I will listen but I don't dance Leina.~ EXTERN VPLEIB PCM4Leina4
 ++ ~I thought you were going to sing, (*groans*) I am already beginning to regret coming in here.~ EXTERN VPLEIB PCM4Leina4
 ++ ~That will depend on whether the song stirs the feet Leina.~ EXTERN VPLEIB PCM4Leina4
 ++ ~Are we talking or are we singing?~ EXTERN VPLEIB PCM4Leina4
 ++ ~Come bard, your audience is getting restless.~ EXTERN VPLEIB PCM4Leina4


CHAIN VPLEIB PCM4Leina2b
~And what of you <CHARNAME>?~
END
 ++ ~I will sit and I will listen but I don't dance Leina.~ EXTERN VPLEIB PCM4Leina4
 ++ ~I thought you were going to sing, (*groans*) I am already beginning to regret coming in here.~ EXTERN VPLEIB PCM4Leina4
 ++ ~That will depend on whether the song stirs the feet Leina.~ EXTERN VPLEIB PCM4Leina4
 ++ ~Are we talking or are we singing?~ EXTERN VPLEIB PCM4Leina4
 ++ ~Come bard, your audience is getting restless.~ EXTERN VPLEIB PCM4Leina4


CHAIN VPLEIB PCM4Leina4
~(*Tossing her head and laughing as she skips away from you*) Leina has never disappointed an audience yet. Just give me a moment to prepare and the bard will begin.~
EXTERN VPLEIB PCM4Leina401


CHAIN VPLEIB PCM4Leina401
~(*She disappears only to return few moments later dressed in scarlet skirts and a white bodice. Tied around her trim waist is a bright blue sash. This is clearly a Leina you haven't seen before!*)~
EXTERN VPLEIB PCM4Leina402


CHAIN VPLEIB PCM4Leina402
~What... you expected me to stomp around in my armour <CHARNAME>?~
END
 ++ ~Leina please...~ EXTERN VPLEIB PCM4Leina403


CHAIN VPLEIB PCM4Leina403
~(*Before you can say another word, she starts to sing, slowly and softly at first, her body swaying rhythmically to the slow pace, but as her voice starts to lift, the pace of the beat also picks up, as do the rhythmical movements of her body.*)~
EXTERN VPLEIB PCM4Leina404


CHAIN VPLEIB PCM4Leina404
~(*The slow swaying suddenly changes as she starts to move deftly around the floor. Weaving slowly in and out of the tables and chairs she makes her way towards you, her large eyes bright and her face heightened with colour as the song takes her over*)...~
EXTERN VPLEIB PCM4Leina5


CHAIN VPLEIB PCM4Leina5
~Come, dance with me <CHARNAME>... (*She unties the sash from her waist and wraps it around you neck, playfully pulling you towards her*)... Come feel the music.~
END
 ++ ~Uh... I... I don't dance.~ EXTERN VPLEIB PCM4Leina6
 ++ ~Leina, stop this nonsense, now!~ EXTERN VPLEIB PCM4Leina6
 ++ ~(*You slowly move to join her reaching for her hand*) Look out for your toes Leina.~ EXTERN VPLEIB PCM4Leina6
 ++ ~(*Grinning broadly you leap to your feet to join her, trying to slip your arm around her waist*) It's been a while since I've been in a position to dance with a lovely lady.~ EXTERN VPLEIB PCM4Leina6
 ++ ~(*You look at her appreciatively*) The bard certainly knows how to move.~ EXTERN VPLEIB PCM4Leina6


CHAIN VPLEIB PCM4Leina6
~(*She tilts her head back and laughs. She deftly steps away from you before you can reach her. Twirling away her skirts fly, giving you just a glimpse of her well toned limbs. She leaves the sash still draped around your neck.*)~
EXTERN VPLEIB PCM4Leina601


CHAIN VPLEIB PCM4Leina601
~So <CHARNAME>, is there enough passion in my music for you now, enough to entrance and bemuse the enemy do you think?~
END
 ++ ~(*You look at her, not at all sure of her intentions behind her little performance*)...~ EXTERN VPLEIB PCM4Leina7
 ++ ~What do you want me to say Leina, that yes your music does incite passion in a man?~ EXTERN VPLEIB PCM4Leina7
 ++ ~Are you teasing me bard?~ EXTERN VPLEIB PCM4Leina7
 ++ ~I said your music lacked passion Leina, whereas you obviously don't.~ EXTERN VPLEIB PCM4Leina8
 ++ ~So much passion is wasted on music Leina, it will not bring you comfort when you can no longer dance and sing.~ EXTERN VPLEIB PCM4Leina9


CHAIN VPLEIB PCM4Leina7
~(*As she steps lightly towards you again, you notice a definite twinkle in her eye. You also notice, that unlike yourself, she has hardly broken a sweat.*)~
EXTERN VPLEIB PCM4Leina701


CHAIN VPLEIB PCM4Leina701
~I merely try to show you why music incites a passion within me, a passion that will only be quenched by the release of the song. Unlike the risk of pain which the love and desire for a man can bring, music gives only joy in return... it is the only joy that I will ever need.~
EXTERN VPLEIB PCM4Leina702


CHAIN VPLEIB PCM4Leina702
~Now, as I look into your face I can see that the music has touched you as I promised you it would.~
EXTERN VPLEIB PCM4Leina703


CHAIN VPLEIB PCM4Leina703
~(*Then turning, she laughs softly as she whirls away to finish her song. Once again causing her skirts to fly, giving you another glimpse of those limbs of hers and leaving you slightly bemused*)...~
EXTERN VPLEIB PCM4Leina704


CHAIN VPLEIB PCM4Leina704
~Oh, and please <CHARNAME>, keep the sash, I have others.~
END
 IF ~True()~ THEN DO ~SetGlobal("VP_Danicng_Queen","GLOBAL",2)~ EXIT
 IF ~InParty("njmelora") InParty("njtaffic")~ THEN EXTERN NJMELB 56
 IF ~InParty("Jan")~ THEN EXTERN BJAN NEJ0
 IF ~InParty("vpkachi")~ THEN EXTERN VPKACB NEJ0
 IF ~InParty("Mazzy")~ THEN EXTERN BMAZZY NEJ0
 IF ~InParty("Nalia")~ THEN EXTERN BNALIA NEJ57
 IF ~InParty("Keldorn")~ THEN EXTERN BKELDOR NEJ0
 IF ~InParty("Anomen")~ THEN EXTERN BANOMEN NEJ0
 IF ~InParty("njdar")~ THEN EXTERN NJDARB 126
 IF ~InParty("njhroth")~ THEN EXTERN NJHROB 84
 IF ~InParty("Minsc")~ THEN EXTERN BMINSC NEJ139


CHAIN VPLEIB PCM4Leina8
~(*As she steps lightly towards you again, you notice a definite twinkle in her eye. You also notice, that unlike yourself, she has hardly broken a sweat.*)~
 = ~Do not mistake what you see in me as my own passion, what you see comes from the music, if there were no music then there would be no passion.~
 = ~Deny it all you want but I see that you have been touched by the music, the excitement that I feel, you have felt. Perhaps you understand a little more now how music incites such a passion within me, a passion that will only be quenched by the release of the song.~
 = ~(*Then turning, she laughs softly as she whirls away to finish her song. Once again causing her skirts to fly, giving you another glimpse of those limbs of hers and leaving you slightly bemused*)...~
 = ~Oh, and please <CHARNAME>, keep the sash, I have others.~
END
 IF ~True()~ THEN DO ~SetGlobal("VP_Danicng_Queen","GLOBAL",2)~ EXIT
 IF ~InParty("njmelora") InParty("njtaffic")~ THEN EXTERN NJMELB 56
 IF ~InParty("Jan")~ THEN EXTERN BJAN NEJ0
 IF ~InParty("vpkachi")~ THEN EXTERN VPKACB NEJ0
 IF ~InParty("Mazzy")~ THEN EXTERN BMAZZY NEJ0
 IF ~InParty("Nalia")~ THEN EXTERN BNALIA NEJ57
 IF ~InParty("Keldorn")~ THEN EXTERN BKELDOR NEJ0
 IF ~InParty("Anomen")~ THEN EXTERN BANOMEN NEJ0
 IF ~InParty("njdar")~ THEN EXTERN NJDARB 126
 IF ~InParty("njhroth")~ THEN EXTERN NJHROB 84
 IF ~InParty("Minsc")~ THEN EXTERN BMINSC NEJ139


CHAIN VPLEIB PCM4Leina9
~(*As she steps lightly towards you again, you notice a definite twinkle in her eye. You also notice, that unlike yourself, she has hardly broken a sweat.*)~
 = ~When I can no longer dance and sing, then I shall turn my hand to writing or teaching others of the joy to found in music.~
 = ~Music has become my life and it will not desert me because my face gathers a few lines or my body is no longer pert and young. Whereas a man's love, all too often fades when the woman's beauty can only be seen in the faces of her daughters.~
 = ~Ah, but what is this I see in your face... you have heard the music and you have been touched by its excitement.~
 = ~(*Then turning, she laughs softly as she whirls away to finish her song. Once again causing her skirts to fly, giving you another glimpse of those limbs of hers and leaving you slightly bemused*)...~
 = ~Oh, and please <CHARNAME>, keep the sash, I have others.~
END
 IF ~True()~ THEN DO ~SetGlobal("VP_Danicng_Queen","GLOBAL",2)~ EXIT
 IF ~InParty("njmelora") InParty("njtaffic")~ THEN EXTERN NJMELB 56
 IF ~InParty("Jan")~ THEN EXTERN BJAN NEJ0
 IF ~InParty("vpkachi")~ THEN EXTERN VPKACB NEJ0
 IF ~InParty("Mazzy")~ THEN EXTERN BMAZZY NEJ0
 IF ~InParty("Nalia")~ THEN EXTERN BNALIA NEJ57
 IF ~InParty("Keldorn")~ THEN EXTERN BKELDOR NEJ0
 IF ~InParty("Anomen")~ THEN EXTERN BANOMEN NEJ0
 IF ~InParty("njdar")~ THEN EXTERN NJDARB 126
 IF ~InParty("njhroth")~ THEN EXTERN NJHROB 84
 IF ~InParty("Minsc")~ THEN EXTERN BMINSC NEJ139


CHAIN VPLEIB PCM4Leina22a
~As you wish Taffic, but please try and remember whereas you may be small, we are not carrying you tomorrow.~
END
 IF ~True()~ THEN EXTERN VPLEIB PCM4Leina2b
 IF ~InParty("Yoshimo")~ THEN EXTERN BYOSHIM NEJ9
 IF ~InParty("Jaheira")~ THEN DO ~SetGlobal("VP_JahiNoDancing","LOCALS",1)~ EXTERN BJAHEIR NEJ497
 IF ~InParty("Nalia")~ THEN EXTERN BNALIA NEJ60
 IF ~InParty("Mazzy")~ THEN EXTERN BMAZZY NEJ1
 IF ~InParty("Anomen")~ THEN EXTERN BANOMEN NEJ1
 IF ~InParty("Keldorn")~ THEN EXTERN BKELDOR NEJ1
 IF ~InParty("Viconia")~ THEN DO ~SetGlobal("VP_VickyNoDancing","LOCALS",1)~ EXTERN BVICONI NEJ0
 IF ~InParty("Korgan")~ THEN DO ~SetGlobal("VP_KorganNoDancing","LOCALS",1)~ EXTERN BKORGAN NEJ0
 IF ~InParty("Valygar")~ THEN EXTERN BVALYGA NEJ156
 IF ~InParty("Edwin")~ THEN EXTERN BEDWIN NEJ109
 IF ~InParty("Jan")~ THEN EXTERN BJAN NEJ1
 IF ~InParty("Aerie")~ THEN DO ~SetGlobal("VP_AerieNoDancing","LOCALS",1)~ EXTERN BAERIE NEJ454
 IF ~InParty("njdar")~ THEN EXTERN NJDARB 127
 IF ~InParty("njhroth")~ THEN EXTERN NJHROB 85


CHAIN VPLEIB PCM4Leina23a
~I am not one for the jig Melora, but as long as you have fun what the dance is doesn't matter.~
END
 IF ~True()~ THEN EXTERN VPLEIB PCM4Leina2b
 IF ~InParty("Yoshimo")~ THEN EXTERN BYOSHIM NEJ9
 IF ~InParty("Jaheira")~ THEN DO ~SetGlobal("VP_JahiNoDancing","LOCALS",1)~ EXTERN BJAHEIR NEJ497
 IF ~InParty("Nalia")~ THEN EXTERN BNALIA NEJ60
 IF ~InParty("Mazzy")~ THEN EXTERN BMAZZY NEJ1
 IF ~InParty("Anomen")~ THEN EXTERN BANOMEN NEJ1
 IF ~InParty("Keldorn")~ THEN EXTERN BKELDOR NEJ1
 IF ~InParty("Viconia")~ THEN DO ~SetGlobal("VP_VickyNoDancing","LOCALS",1)~ EXTERN BVICONI NEJ0
 IF ~InParty("Korgan")~ THEN DO ~SetGlobal("VP_KorganNoDancing","LOCALS",1)~ EXTERN BKORGAN NEJ0
 IF ~InParty("Valygar")~ THEN EXTERN BVALYGA NEJ156
 IF ~InParty("Edwin")~ THEN EXTERN BEDWIN NEJ109
 IF ~InParty("Jan")~ THEN EXTERN BJAN NEJ1
 IF ~InParty("Aerie")~ THEN DO ~SetGlobal("VP_AerieNoDancing","LOCALS",1)~ EXTERN BAERIE NEJ454
 IF ~InParty("njdar")~ THEN EXTERN NJDARB 127
 IF ~InParty("njhroth")~ THEN EXTERN NJHROB 85


CHAIN VPLEIB PCM4Leina24a
~I am sure the kindly barkeep will remove some more tables if there is not enough room for you Hrothgar.~
END
 IF ~True()~ THEN EXTERN VPLEIB PCM4Leina2b
 IF ~InParty("Yoshimo")~ THEN EXTERN BYOSHIM NEJ9
 IF ~InParty("Jaheira")~ THEN DO ~SetGlobal("VP_JahiNoDancing","LOCALS",1)~ EXTERN BJAHEIR NEJ497
 IF ~InParty("Nalia")~ THEN EXTERN BNALIA NEJ60
 IF ~InParty("Mazzy")~ THEN EXTERN BMAZZY NEJ1
 IF ~InParty("Anomen")~ THEN EXTERN BANOMEN NEJ1
 IF ~InParty("Keldorn")~ THEN EXTERN BKELDOR NEJ1
 IF ~InParty("Viconia")~ THEN DO ~SetGlobal("VP_VickyNoDancing","LOCALS",1)~ EXTERN BVICONI NEJ0
 IF ~InParty("Korgan")~ THEN DO ~SetGlobal("VP_KorganNoDancing","LOCALS",1)~ EXTERN BKORGAN NEJ0
 IF ~InParty("Valygar")~ THEN EXTERN BVALYGA NEJ156
 IF ~InParty("Edwin")~ THEN EXTERN BEDWIN NEJ109
 IF ~InParty("Jan")~ THEN EXTERN BJAN NEJ1
 IF ~InParty("Aerie")~ THEN DO ~SetGlobal("VP_AerieNoDancing","LOCALS",1)~ EXTERN BAERIE NEJ454
 IF ~InParty("njdar")~ THEN EXTERN NJDARB 127


CHAIN VPLEIB PCM4Leina28a
~Edwin... forget it!~
END
 IF ~True()~ THEN EXTERN VPLEIB PCM4Leina2b
 IF ~InParty("Yoshimo")~ THEN EXTERN BYOSHIM NEJ9
 IF ~InParty("Jaheira")~ THEN DO ~SetGlobal("VP_JahiNoDancing","LOCALS",1)~ EXTERN BJAHEIR NEJ497
 IF ~InParty("Nalia")~ THEN EXTERN BNALIA NEJ60
 IF ~InParty("Mazzy")~ THEN EXTERN BMAZZY NEJ1
 IF ~InParty("Anomen")~ THEN EXTERN BANOMEN NEJ1
 IF ~InParty("Keldorn")~ THEN EXTERN BKELDOR NEJ1
 IF ~InParty("Viconia")~ THEN DO ~SetGlobal("VP_VickyNoDancing","LOCALS",1)~ EXTERN BVICONI NEJ0
 IF ~InParty("Korgan")~ THEN DO ~SetGlobal("VP_KorganNoDancing","LOCALS",1)~ EXTERN BKORGAN NEJ0
 IF ~InParty("Valygar")~ THEN EXTERN BVALYGA NEJ156


CHAIN VPLEIB PCM4Leina29a
~No lady is pulling your strings Valygar. You are a fine figure of a man and I am sure any lady here would be proud to dance with you but none are going to pull your strings in order to.~
END
 IF ~True()~ THEN EXTERN VPLEIB PCM4Leina2b
 IF ~InParty("Yoshimo")~ THEN EXTERN BYOSHIM NEJ9
 IF ~InParty("Jaheira")~ THEN DO ~SetGlobal("VP_JahiNoDancing","LOCALS",1)~ EXTERN BJAHEIR NEJ497
 IF ~InParty("Nalia")~ THEN EXTERN BNALIA NEJ60
 IF ~InParty("Mazzy")~ THEN EXTERN BMAZZY NEJ1
 IF ~InParty("Anomen")~ THEN EXTERN BANOMEN NEJ1
 IF ~InParty("Keldorn")~ THEN EXTERN BKELDOR NEJ1
 IF ~InParty("Viconia")~ THEN DO ~SetGlobal("VP_VickyNoDancing","LOCALS",1)~ EXTERN BVICONI NEJ0
 IF ~InParty("Korgan")~ THEN DO ~SetGlobal("VP_KorganNoDancing","LOCALS",1)~ EXTERN BKORGAN NEJ0


CHAIN VPLEIB PCM4Leina30a
~I'll ignore the lewd suggestion behind that remark dwarf... for now!~
END
 IF ~True()~ THEN EXTERN VPLEIB PCM4Leina2b
 IF ~InParty("Yoshimo")~ THEN EXTERN BYOSHIM NEJ9
 IF ~InParty("Jaheira")~ THEN DO ~SetGlobal("VP_JahiNoDancing","LOCALS",1)~ EXTERN BJAHEIR NEJ497
 IF ~InParty("Nalia")~ THEN EXTERN BNALIA NEJ60
 IF ~InParty("Mazzy")~ THEN EXTERN BMAZZY NEJ1
 IF ~InParty("Anomen")~ THEN EXTERN BANOMEN NEJ1
 IF ~InParty("Keldorn")~ THEN EXTERN BKELDOR NEJ1
 IF ~InParty("Viconia")~ THEN DO ~SetGlobal("VP_VickyNoDancing","LOCALS",1)~ EXTERN BVICONI NEJ0


CHAIN VPLEIB PCM4Leina31a
~I have no idea what you said Viconia, and as it's come out of your mouth I have no desire to know.~
END
 IF ~True()~ THEN EXTERN VPLEIB PCM4Leina2b
 IF ~InParty("Yoshimo")~ THEN EXTERN BYOSHIM NEJ9
 IF ~InParty("Jaheira")~ THEN DO ~SetGlobal("VP_JahiNoDancing","LOCALS",1)~ EXTERN BJAHEIR NEJ497
 IF ~InParty("Nalia")~ THEN EXTERN BNALIA NEJ60
 IF ~InParty("Mazzy")~ THEN EXTERN BMAZZY NEJ1
 IF ~InParty("Anomen")~ THEN EXTERN BANOMEN NEJ1
 IF ~InParty("Keldorn")~ THEN EXTERN BKELDOR NEJ1


CHAIN VPLEIB PCM4Leina33a
~(*Smiling at the paladin's flustered face*) Keldorn, I would stop there before you put your foot in it any further.~
END
 IF ~True()~ THEN EXTERN VPLEIB PCM4Leina2b
 IF ~InParty("Yoshimo")~ THEN EXTERN BYOSHIM NEJ9
 IF ~InParty("Jaheira")~ THEN DO ~SetGlobal("VP_JahiNoDancing","LOCALS",1)~ EXTERN BJAHEIR NEJ497
 IF ~InParty("Nalia")~ THEN EXTERN BNALIA NEJ60
 IF ~InParty("Mazzy")~ THEN EXTERN BMAZZY NEJ1
 IF ~InParty("Anomen")~ THEN EXTERN BANOMEN NEJ1


CHAIN VPLEIB PCM4Leina34a
~Anomen, if you as gifted in dance as you in the tall stories then I fear you will steal my audience from me tonight.~
END
 IF ~True()~ THEN EXTERN VPLEIB PCM4Leina2b
 IF ~InParty("Yoshimo")~ THEN EXTERN BYOSHIM NEJ9
 IF ~InParty("Jaheira")~ THEN DO ~SetGlobal("VP_JahiNoDancing","LOCALS",1)~ EXTERN BJAHEIR NEJ497
 IF ~InParty("Nalia")~ THEN EXTERN BNALIA NEJ60
 IF ~InParty("Mazzy")~ THEN EXTERN BMAZZY NEJ1


CHAIN VPLEIB PCM4Leina35a
~(*Smiling at the hafling*) That is up to you Mazzy, seldom does a girl get the chance to wear other than her armour these days.~
END
 IF ~True()~ THEN EXTERN VPLEIB PCM4Leina2b
 IF ~InParty("Yoshimo")~ THEN EXTERN BYOSHIM NEJ9
 IF ~InParty("Jaheira")~ THEN DO ~SetGlobal("VP_JahiNoDancing","LOCALS",1)~ EXTERN BJAHEIR NEJ497
 IF ~InParty("Nalia")~ THEN EXTERN BNALIA NEJ60


IF ~Global("VP_KorganNoDancing","LOCALS",6)~ THEN VPLEIB PCM4bKorgan1
~That dwarf has to be the most odious creature I have met! He even rates one ahead of that slime ball I called husband.~
END
 ++ ~I'm glad to see you can hold your own Leina, because I need a good fighter a lot more than I need a bard.~ EXTERN VPLEIB PCM4bKorgan2
 ++ ~You ok Leina or do want me to get rid of him and his nasty little mind.~ EXTERN VPLEIB PCM4bKorgan3
 ++ ~He is a loathsome beggar and I need his skills with the axe, but if he bothers you Leina I'll get rid him now.~ EXTERN VPLEIB PCM4bKorgan3
 ++ ~You certainly sent him off with flea in his ear, good on you.~ EXTERN VPLEIB PCM4bKorgan3
 ++ ~I felt the blood rise within me when I heard him speak as he did to you Leina. I was about to step in and shut that foul mouth of his for good... but you appeared to be holding your own so I stayed my hand.~ EXTERN VPLEIB PCM4bKorgan5


CHAIN VPLEIB PCM4bKorgan2
~As long as he keeps away from me, there will be no reason to lose either of us but if he comes near me again with so much as a smirk on his face, he'll see that I wasn't joking about using my sword. When I am through with him, you'll still have your fighter <CHARNAME>, but he'll not pose a threat to another female!~
DO ~SetGlobal("VP_KorganNoDancing","LOCALS",7)~ EXIT


CHAIN VPLEIB PCM4bKorgan3
~I can handle the likes of him <CHARNAME>. I know that you would not tolerate his presence in the group if you didn't think him necessary to your mission, so please, don't worry on my behalf because I meant what I said about my sword and him singing opera.~
END
 ++ ~Korgan isn't one to take threats lightly Leina, and as much as I need his axe, I am also beginning to appreciate my bard's value as well.~ EXTERN VPLEIB PCM4bKorgan7
 ++ ~If you are sure, but if you ever feel unsafe around him, do not hesitate to come to me. He will be out of here before he can blink that lecherous eye of his.~ EXTERN VPLEIB PCM4bKorgan4
 ++ ~I know how that nasty little mind of his thinks, so please, never allow yourself to be lured out of the earshot of myself or the group.~ EXTERN VPLEIB PCM4bKorgan4


CHAIN VPLEIB PCM4bKorgan4
~I thank you for your concern <CHARNAME>. I will heed your words but I feel that the dwarf and I have come to an understanding. If not then the next time that mouth of his spouts lurid proposals my way, well... (*Smiling*) it will be his loss but at least he will understand!~
DO ~SetGlobal("VP_KorganNoDancing","LOCALS",7)~ EXIT


CHAIN VPLEIB PCM4bKorgan5
~(*Laughs softly*) Ah, it is as I feared, chivalry is dead my not so gallant champion.~
END
 ++ ~If I had believed you to be in any danger from the dwarf, he would not be standing now.~ EXTERN VPLEIB PCM4bKorgan6
 ++ ~I was enjoying the sight of the little runt squirm under your sword Leina. I apologise if my manner appeared off hand. Then Leina~ EXTERN VPLEIB PCM4bKorgan6
 ++ ~I didn't think you would thank me for interfering.~ EXTERN VPLEIB PCM4bKorgan6
 ++ ~I am sorry Leina. I didn't see you as a woman needing a champion to defend her honour.~ EXTERN VPLEIB PCM4bKorgan6


CHAIN VPLEIB PCM4bKorgan6
~(*She puts her hand on your arm, a gesture she seems to be making a habit of and laughs softly*)~
 = ~I was jesting my dear <CHARNAME>, you did right not to intervene. If the dwarf thinks me incapable of holding my own, he will give me no piece from that obscene tongue of his until he does feel the edge of my sword. This way he knows that I'll have none of his innuendos and you get to keep your fighter and your bard.~
END
 ++ ~Leina, you are worth 100 beserker dwarves!~ EXTERN VPLEIB PCM4bKorgan7
 ++ ~Leina, if I should have to choose between a beautiful, intelligent bard and a chaotic, beserker dwarf, I know who I would be prefer to have at my side.~ EXTERN VPLEIB PCM4bKorgan7
 ++ ~The dwarf is an impressive fighter, but I will not have him intimidating any member of this group. Please remember this if he should bother you again.~ EXTERN VPLEIB PCM4bKorgan3
 ++ ~Just be careful Leina, I know how the dwarf's mind thinks.~ EXTERN VPLEIB PCM4bKorgan3


CHAIN VPLEIB PCM4bKorgan7
~(*She looks up into your face, but looks away again quickly leaving you a little bewildered by the intensity of the look you see in those large almond shaped eyes of hers. When she speaks her voice is low with a hint of laughter.*)~
 = ~You are too kind my good sir and the lady thanks you for the compliment. (*She chuckles and drops a curtsy... as best her armour will allow*.)~
DO ~SetGlobal("VP_KorganNoDancing","LOCALS",7)~ EXIT


IF ~Global("VP_LoveTalk","LOCALS",11) Gender(Player1,MALE)~ THEN VPLEIB PCM5Leina1
~As the child of a god, do you think the other gods take any interest in your life <CHARNAME>?~
END
 ++ ~No, I suspect they are too caught up in their own affairs to worry about me.~ EXTERN VPLEIB PCM5Leina2
 ++ ~I doubt it, after all I am no threat to them.~ EXTERN VPLEIB PCM5Leina2
 ++ ~It is not for us to second guess what the gods do for amusement Leina.~ EXTERN VPLEIB PCM5Leina2
 ++ ~I believe the gods watch everyone Leina. My being a child of a god does not give me a monopoly on their attention.~ EXTERN VPLEIB PCM5Leina3
 ++ ~It is possible. I really have not given it much thought.~ EXTERN VPLEIB PCM5Leina3


CHAIN VPLEIB PCM5Leina2
~Then you don't believe they visit us or make their presence known in our darkest hour or when we are in need of guidance and aid?~
END
 ++ ~No, but I get the feeling that you do.~ EXTERN VPLEIB PCM5Leina5
 ++ ~Do you?~ EXTERN VPLEIB PCM5Leina5
 ++ ~No, as I see it they set us upon this world and then lost interest, leaving us to make of it what we will.~ EXTERN VPLEIB PCM5Leina4
 ++ ~I neither know nor do I care what the gods do or do not do.~ EXTERN VPLEIB PCM5Leina4


CHAIN VPLEIB PCM5Leina3
~So you believe that it is possible, that yes, they do come to our aid in our darkest hour and when we are in need of guidance?~
END
 ++ ~Whether they come to help or to hinder is debatable, but your face tells me that you believe it to be so.~ EXTERN VPLEIB PCM5Leina5
 ++ ~Do you ask because you have reason to believe that they do?~ EXTERN VPLEIB PCM5Leina5
 ++ ~As I have never had any god come to my aid, and I have certainly called on them on many occasions, I am sceptical about their benevolence. Why the question?~ EXTERN VPLEIB PCM5Leina5


CHAIN VPLEIB PCM5Leina4
~Seeing as how you were given life due the interference of a god, I thought you might have been curious enough to have given it some thought. Clearly I was wrong and I will not press you further, instead I will walk beside you and enjoy the company. It is better to walk in silent company than to walk alone.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",12) SetGlobal("VP_NoRomantics","LOCALS",1)~ EXIT


CHAIN VPLEIB PCM5Leina5
~I am not sure what I believe. Recently I have had cause to remember the tales my mother told me of the goddess Melira Taralen *The Songstress*, the goddess of half eleven bards and elven minstrels... daughter of Hanali Celani *Lady Goldenheart*.~
 = ~Her stories told of a woman with pale golden hair, robed in the brightest of blue and with eyes to match, always a sword in one hand and a lute in her other.~
 = ~Two nights past when sleep evaded me, I would swear such a woman came to me <CHARNAME>.~
END
 ++ ~We have spoken recently of your mother Leina, could this not perhaps be the stirring of happy memories that you associate with her?~ EXTERN VPLEIB PCM5Leina6
 ++ ~You say you are not sure yourself, so maybe you had fallen asleep and she was a dream?~ EXTERN VPLEIB PCM5Leina7
 ++ ~Maybe you were hallucinating due to lack of sleep Leina? The brain can play tricks on us if it does not get enough rest.~ EXTERN VPLEIB PCM5Leina7
 ++ ~Did she speak to you, give you a reason to believe in her?~ EXTERN VPLEIB PCM5Leina8


CHAIN VPLEIB PCM5Leina6
~I hadn't thought of that. I know that talking of my mother has brought the memory of things I had forgotten to mind, good memories and not the bitter angry ones that I have harboured for so long. It is difficult to know what to believe <CHARNAME>.~
END
 ++ ~Did she speak to you, give you a reason for her presence?~ EXTERN VPLEIB PCM5Leina8
 ++ ~Sounds spooky to me. Does she say what she wanted?~ EXTERN VPLEIB PCM5Leina8
 ++ ~What do you suggest, that maybe we should get a priest to perform an exorcism before we next rest Leina?~ EXTERN VPLEIB PCM5Leina10


CHAIN VPLEIB PCM5Leina7
~I... I don't know. I am sure it was no dream or hallucination because when she appeared I was nowhere near ready for sleep to claim me, nor had I removed my armour or readied myself for sleep. It is difficult to know what to believe <CHARNAME>.~
END
 ++ ~Did she speak to you, give you a reason for her presence?~ EXTERN VPLEIB PCM5Leina8
 ++ ~Sounds spooky to me. Does she say what she wanted?~ EXTERN VPLEIB PCM5Leina8
 ++ ~What do you suggest, that maybe we should get a priest to perform an exorcism before we next rest Leina?~ EXTERN VPLEIB PCM5Leina10


CHAIN VPLEIB PCM5Leina8
~She was only there for a few minutes and all she did was to raise her hand, smile at me, nod her head and then she was gone. Simple gestures and yet when she left, I feel safe and warm. I had the feeling that she came to reassure me and yet, not a word passed her lips.~
END
 ++ ~That's gods for you, if she is a goddess that is. They seldom show themselves and when they do, they like to be all mysterious and creepy.~ EXTERN VPLEIB PCM5Leina9
 ++ ~Does it matter who or what she was Leina? If she brought comfort to you I don't think she meant you any harm.~ EXTERN VPLEIB PCM5Leina901
 ++ ~If it bothers you Leina, I will sit with you tonight and then if she appears, we can confront this goddess together, maybe encourage her to speak.~ EXTERN VPLEIB PCM5Leina11


CHAIN VPLEIB PCM5Leina9
~She was mysterious yes, but there was nothing creepy about her. Whether she was a memory surfaced through my reminiscences or the true goddess come to reassure me I don't know. All I know is that the light she left behind lessened the cold and darkness of the night and I was grateful for that.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",12) SetGlobal("VP_NoRomantics","LOCALS",1)~ EXIT


CHAIN VPLEIB PCM5Leina901
~Whether she was the true goddess or not, all I know is when she left she replaced much of the cold and darkness of the night with a measure of warmth and light. A comfort I will always be grateful for.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",12) SetGlobal("VP_NoRomantics","LOCALS",1)~ EXIT


CHAIN VPLEIB PCM5Leina10
~That will not be necessary, she gave me no reason to fear her. She didn't stay very long , just long enough to raise her hand, smile and nod her head. Leaving me with the feeling that she approved, a good warm feeling and yet ... her true reasons for her appearance was left unsaid.~
END
 ++ ~That's gods for you, if she is a goddess that is. They seldom show themselves and when they do, they like to be all mysterious and creepy.~ EXTERN VPLEIB PCM5Leina9
 ++ ~Does it matter who or what she was Leina? If she brought comfort to you I don't think she meant you any harm.~ EXTERN VPLEIB PCM5Leina901
 ++ ~If it bothers you Leina, I will sit with you tonight and then if she appears, we can confront this goddess together, maybe encourage her to speak.~ EXTERN VPLEIB PCM5Leina11


CHAIN VPLEIB PCM5Leina11
~(*She looks up into your face, but looks away again quickly. Leaving you a little bewildered by the bemused look you see in those large almond shaped eyes of hers*)~
 = ~Your company will be most welcome <CHARNAME>, but if her appearance is solely to bring me comfort or even my own mind's way of dealing with the long nights, then I feel we will be waiting in vain, but we shall see.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",12) SetGlobal("VP_LookAtStars","LOCALS",1)~ EXIT


IF ~Global("VP_LoveTalk","LOCALS",14) Gender(Player1,FEMALE)~ THEN VPLEIB PCF6Leina1
~As the child of a god, do you think the other gods take any interest in your life <CHARNAME>?~
END
 ++ ~No, I suspect they are too caught up in their own affairs to worry about me.~ EXTERN VPLEIB PCF6Leina2
 ++ ~I doubt it, after all I am no threat to them.~ EXTERN VPLEIB PCF6Leina2
 ++ ~It is not for us to second guess what the gods do for amusement Leina.~ EXTERN VPLEIB PCF6Leina2
 ++ ~I believe the gods watch everyone Leina. My being a child of a god does not give me a monopoly on their attention.~ EXTERN VPLEIB PCF6Leina3
 ++ ~It is possible. I really have not given it much thought.~ EXTERN VPLEIB PCF6Leina3


CHAIN VPLEIB PCF6Leina2
~Then you don't believe they visit us or make their presence known in our darkest hour or when we are in need of guidance and aid?~
END
 ++ ~No, but I get the feeling that you do.~ EXTERN VPLEIB PCF6Leina5
 ++ ~Do you?~ EXTERN VPLEIB PCF6Leina5
 ++ ~No, as I see it they set us upon this world and then lost interest, leaving us to make of it what we will.~ EXTERN VPLEIB PCF6Leina4
 ++ ~I neither know nor do I care what the gods do or do not do.~ EXTERN VPLEIB PCF6Leina4


CHAIN VPLEIB PCF6Leina3
~So you believe that it is possible, that yes, they do come to our aid in our darkest hour and when we are in need of guidance?~
END
 ++ ~Whether they come to help or to hinder is debatable, but your face tells me that you believe it to be so.~ EXTERN VPLEIB PCF6Leina5
 ++ ~Do you ask because you have reason to believe that they do?~ EXTERN VPLEIB PCF6Leina5
 ++ ~As I have never had any god come to my aid, and I have certainly called on them on many occasions, I am sceptical about their benevolence. Why the question?~ EXTERN VPLEIB PCF6Leina5


CHAIN VPLEIB PCF6Leina4
~Seeing as how you were given life due interference of a god, I thought you might have been curious enough to have given it some thought. Clearly I was wrong and I will trouble you no further <CHARNAME>.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",15)~ EXIT


CHAIN VPLEIB PCF6Leina5
~I am not sure what I believe. Recently I have had cause to remember the tales my mother told me of the goddess Melira Taralen *The Songstress*, the goddess of half eleven bards and elven minstrels... daughter of Hanali Celani *Lady Goldenheart*.~
 = ~Her stories told of a woman with pale golden hair, robed in the brightest of blue and with eyes to match, always a sword in one hand and a lute in her other.~
 = ~Two nights past when sleep evaded me, I would swear such a woman came to me <CHARNAME>.~
END
 ++ ~We have spoken recently of your mother Leina, could this not perhaps be the stirring of happy memories that you associate with her?~ EXTERN VPLEIB PCF6Leina6
 ++ ~You say you are not sure yourself, so maybe you had fallen asleep and she was a dream?~ EXTERN VPLEIB PCF6Leina7
 ++ ~Maybe you are hallucinating due to lack of sleep Leina? The brain can play tricks on us if it does not get enough rest.~ EXTERN VPLEIB PCF6Leina7
 ++ ~Did she to speak to you, give you a reason to believe in her?~ EXTERN VPLEIB PCF6Leina8


CHAIN VPLEIB PCF6Leina6
~I hadn't thought of that. I know that talking of my mother has brought the memory of things I had forgotten to mind, good memories and not the bitter angry ones that I have harboured for so long. It is difficult to know what to believe <CHARNAME>.~
END
 ++ ~Did she speak to you, give you a reason for her presence?~ EXTERN VPLEIB PCF6Leina8
 ++ ~Sounds spooky to me. Does she say what she wants?~ EXTERN VPLEIB PCF6Leina8
 ++ ~What do you suggest, that maybe we should get a priest to perform an exorcism before we next rest Leina?~ EXTERN VPLEIB PCF6Leina10


CHAIN VPLEIB PCF6Leina7
~I... I don't know. I am sure it was no dream or hallucination because when she appeared I was nowhere near ready for sleep to claim me, nor had I removed my armour or readied myself for sleep. It is difficult to know what to believe <CHARNAME>.~
END
 ++ ~Did she speak to you, give you a reason for her presence?~ EXTERN VPLEIB PCF6Leina8
 ++ ~Sounds spooky to me. Does she say what she wanted?~ EXTERN VPLEIB PCF6Leina8
 ++ ~What do you suggest, that maybe we should get a priest to perform an exorcism before we next rest Leina?~ EXTERN VPLEIB PCF6Leina10


CHAIN VPLEIB PCF6Leina8
~She was only there for a few minutes and all she did was to raise her hand, smile at me, nod her head and then she was gone. Simple gestures and yet when she left, I felt safe and warm. I had the feeling that she came to reassure me and yet, not a word passed her lips.~
END
 ++ ~That's gods for you, if she is a goddess that is. They seldom show themselves and when they do, they like to be all mysterious and creepy.~ EXTERN VPLEIB PCF6Leina9
 ++ ~Does it matter who or what she was Leina? If she brought comfort to you I don't think she meant you any harm.~ EXTERN VPLEIB PCF6Leina901
 ++ ~I recall a time when Imoen told me of a ghost she'd seen in old Winthrop's inn and how we sat up all night in order to confront it. Maybe we should do the same and confront this mysterious lady of yours Leina.~ EXTERN VPLEIB PCF6Leina11


CHAIN VPLEIB PCF6Leina9
~She was mysterious yes, but there was nothing creepy about her. Whether she was a memory surfaced through my reminiscences or the true goddess come to reassure me I don't know. All I know is that the light she left behind lessened the cold and darkness of the night and I was grateful for that.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",15)~ EXIT


CHAIN VPLEIB PCF6Leina901
~Whether she was the true goddess or not , all I know is when she left she replaced much of the cold and darkness of the night with a measure of warmth and light. A comfort I will always be grateful for.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",15)~ EXIT


CHAIN VPLEIB PCF6Leina10
~That will not be necessary, she gave me no reason to fear her. She didn't stay very long , just long enough to raise her hand, smile and nod her head. Leaving me with the feeling that she approved, a good warm feeling and yet ... her true reasons for her appearance was left unsaid.~
END
 ++ ~That's gods for you, if she is a goddess that is. They seldom show themselves and when they do, they like to be all mysterious and creepy.~ EXTERN VPLEIB PCF6Leina9
 ++ ~Does it matter who or what she was Leina? If she brought comfort to you I don't think she meant you any harm.~ EXTERN VPLEIB PCF6Leina901
 ++ ~If it bothers you Leina, I will sit with you tonight and then if she appears, we can confront this goddess together, maybe encourage her to speak.~ EXTERN VPLEIB PCF6Leina11


CHAIN VPLEIB PCF6Leina11
~Did you get to see your ghost?~
END
 ++ ~No we didn't but I wasn't at all surprised, Imoen always did have an over active imagination.~ EXTERN VPLEIB PCF6Leina12
 ++ ~No we didn't, we fell asleep and were caught by Winthrop the next morning. or at least I was, Imoen always manages to disappear at the first sign of trouble. He went, to Gorion, told him he'd caught me sampling his ales. I blame her over active imagination for my troubles that day.~ EXTERN VPLEIB PCF6Leina12
 ++ ~No but, knowing old Winthrop, Imoen's ghost was more than likely him creeping into some elven lady's bed. Imoen would not have it, said that was disgusting on account of Winthrop being so old. I still say it was either that, or her over active imagination.~ EXTERN VPLEIB PCF6Leina12


CHAIN VPLEIB PCF6Leina12
~(*Laughing*) I think I am going to like your Imoen when I eventually get to meet her.~
 = ~You think maybe my goddess is a ghost of my overactive imagination, like your Imoen's?~
 = ~You could be right of course and if her sole purpose is bring comfort to me through the long night then she is not going to appear if I am in company, but I thank you all the same for the offer <CHARNAME>.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",15)~ EXIT


IF ~Global("VP_LookAtStars","LOCALS",2) Gender(Player1,MALE)~ THEN VPLEIB PCM6Leina1
~So, once again we count the stars together <CHARNAME>... (*She fidgets slightly*) I am not distracting you from your rest am I?~
END
 ++ ~No of course you aren't. Anyway, I volunteered if you remember.~ EXTERN VPLEIB PCM6Leina2
 ++ ~If you are then I am enjoying the distraction.~ EXTERN VPLEIB PCM6Leina2
 ++ ~Stop worrying Leina, it's not like I had anything else planned for tonight.~ EXTERN VPLEIB PCM6Leina2
 ++ ~Reminds me when Imoen swore she saw a ghost in old Winthrop's inn. We crept from our beds intending to sit up all night to confront it.~ EXTERN VPLEIB PCM6Leina9


CHAIN VPLEIB PCM6Leina2
~I have been giving some thought to your words and I think I understand why I feel the need to have the reassurance of *The Songstress*.~
END
 ++ ~Why is that, surely you are not doubting your own abilities?~ EXTERN VPLEIB PCM6Leina3
 ++ ~Why do you say that you feel you need reassurance Leina, you are a very confident lady in my eyes?~ EXTERN VPLEIB PCM6Leina3
 ++ ~I am pleased my words were of some help.~ EXTERN VPLEIB PCM6Leina3


CHAIN VPLEIB PCM6Leina3
~You have to understand that my life has turned out so different to how I expected it to be <CHARNAME>, so much so that I can not be sure whether I am following my rightful path or the path that was thrust upon me in order to survive.~
END
 ++ ~You are doing ok Leina, anyone can see how dedicated you are to your music, how it has become your life.~ EXTERN VPLEIB PCM6Leina4
 ++ ~Your music brings you great happiness, and as you say, contentment, so how can it be wrong for you?~ EXTERN VPLEIB PCM6Leina4
 ++ ~Can you honestly see your life without music Leina?~ EXTERN VPLEIB PCM6Leina4
 ++ ~I can not see you as anyone other than Leina the bard, but tell me, what path would you have chosen for yourself had circumstances been different?~ EXTERN VPLEIB PCM6Leina5


CHAIN VPLEIB PCM6Leina4
~(*Sighs*) I love my music, I love the excitement when a new song is born. It's just not what I envisioned for myself. If somebody had told me when I left Athkatla for the first time, that I would be travelling the road, me Leina Vulova-Katuron, a travelling bard, I would have laughed and told them that their brains were addled.~
END
 ++ ~And how did you see yourself, married and cosseted in your husband's house instead of your father's?~ EXTERN VPLEIB PCM6Leina5
 ++ ~I can not see you as anyone other than Leina the bard, but tell me, what path would you have chosen for yourself had circumstances been different?~ EXTERN VPLEIB PCM6Leina5
 ++ ~Then tell me of your dreams Leina, what were your hopes then?~ EXTERN VPLEIB PCM6Leina5
 ++ ~If someone had told me I would be travelling backwards and forwards in time searching for an insane wizard and a couple of mystical keys, I too would have laughed and told them that their brains were addled, but here I am doing just that.~ EXTERN VPLEIB PCM6Leina501


CHAIN VPLEIB PCM6Leina5
~I now see how narrow my selfish dreams were. I have learnt a lot since leaving my father's house. Whilst I lived there, oblivious to the real world, all I could dream of was the love of a good man and to live in his love for the rest of my days.~
 = ~Now I enjoy being plain Leina the bard, all I want is to build my life around music and show others the joy it can bring them. Quite different to the daydreams I once used to escape into.~
END
 ++ ~Leina, you were born to sing and to dance. Yours is a joy that is meant to be shared and it seems to me that you are doing exactly what you should be doing.~ EXTERN VPLEIB PCM6Leina6
 ++ ~Does it matter if our dreams change as long as we get to achieve them and find fulfilment?~ EXTERN VPLEIB PCM6Leina6
 ++ ~Believe me there is nothing plain about you Leina, you are very beautiful and very gifted. You should never doubt that you are anywhere other than where you should be.~ EXTERN VPLEIB PCM6Leina6
 ++ ~Leina, you bring joy to everyone who hears your song, you have a gift to be proud of, not to doubt. Remember, life has a way of placing us right where we need to be, regardless of whether we feel it is right or not.~ EXTERN VPLEIB PCM6Leina6
 ++ ~Leina, I may tease you about your music but that is because I know so little myself, but I believe that like me, you are exactly where you should be.~ EXTERN VPLEIB PCM6Leina6


CHAIN VPLEIB PCM6Leina501
~(*Smiles*) So we are both following unexpected roads, perhaps it is our brains that are addled. At least I can see the horizon now and have a much wider view than the narrow selfish daydreams I had as a girl, waiting for my story book life to begin.~
 = ~Now I enjoy being plain Leina the bard, all I want is to build my life around music and show others the joy it can bring them.~
END
 ++ ~Leina, you were born to sing and to dance. Yours is a joy that is meant to be shared and it seems to me that you are doing exactly what you should be doing.~ EXTERN VPLEIB PCM6Leina6
 ++ ~Does it matter if our dreams change as long as we get to achieve them and find fulfilment?~ EXTERN VPLEIB PCM6Leina6
 ++ ~Believe me there is nothing plain about you Leina, you are very beautiful and very gifted. You should never doubt that you are anywhere other than where you should be.~ EXTERN VPLEIB PCM6Leina6
 ++ ~Leina, you bring joy to everyone who hears your song, you have a gift to be proud of, not to doubt. Remember, life has a way of placing us right where we need to be, regardless of whether we feel it is right or not.~ EXTERN VPLEIB PCM6Leina6


CHAIN VPLEIB PCM6Leina6
~(*She looks up at you, and not for the first time you notice a bemused look in those beautiful large eyes of hers.*)~
 = ~You are right. My foolish dreams as a girl were all about what I wanted and what I thought I would have. Whereas now I want only to share my own happiness with others.~
 = ~We do not live in the idyllic place that I once thought the world to be, but with a good song and good friends to enjoy it, it isn't half bad. (*She stands up to leave*)...~
 = ~Thank you for your time but I don't believe my goddess will be here tonight nor any other night. Sleep well <CHARNAME>.~
END
 ++ ~(*You catch her hand as she turns to leave*) Leina... you don't have to leave, please, sit a while longer?~ EXTERN VPLEIB PCM6Leina7
 ++ ~(*You catch her hand as she turns to leave*) She isn't here but I am. Please, you don't have to leave just yet... do you Leina?~ EXTERN VPLEIB PCM6Leina7
 ++ ~My pleasure Leina. I hope you sleep well.~ EXTERN VPLEIB PCM6Leina8
 ++ ~Then maybe you will accept at last that you are who you are destined to be and you sleep undisturbed tonight.~ EXTERN VPLEIB PCM6Leina8
 ++ ~Let us hope you are right Leina and your nights become a little less troubled. Good night Leina.~ EXTERN VPLEIB PCM6Leina8
 ++ ~Now perhaps you can see that she was only a memory, awakened with other memories. Sleep well Leina.~ EXTERN VPLEIB PCM6Leina8


CHAIN VPLEIB PCM6Leina7
~(*She looks down at your hand and turning it over she scrutinises your palm. After a couple of seconds she turns it back over and releases it. Then smiling, she looks up into your face.*)~
 = ~But I do <CHARNAME>... for tonight anyway. Sleep well.~
DO ~SetGlobal("VP_LookAtStars","LOCALS",3) SetGlobalTimer("VP_LoveTalkN_Timer","GLOBAL",ONE_DAY) RestParty()~ EXIT


CHAIN VPLEIB PCM6Leina8
~We shall see <CHARNAME>. Sleep well yourself.~
DO ~SetGlobal("VP_LookAtStars","LOCALS",3) SetGlobalTimer("VP_LoveTalkN_Timer","GLOBAL",ONE_DAY) RestParty()~ EXIT


CHAIN VPLEIB PCM6Leina9
~Did your ghost appear?~
END
 ++ ~No it didn't but I wasn't surprised, Imoen always did have an over active imagination!~ EXTERN VPLEIB PCM6Leina10
 ++ ~I do not know, we fell asleep and were caught by Winthrop the next morning. or at least I was, Imoen always manages to disappear at the first sign of trouble. He went, to Gorion, told him he'd caught me sampling his ales. I blame her over active imagination for my troubles that day.~ EXTERN VPLEIB PCM6Leina10
 ++ ~No but, knowing old Winthrop, Imoen's ghost was more than likely him creeping into some elven lady's bed. Imoen would not have it, said that was disgusting on account of Winthrop being so old. I still say it was either that, or her over active imagination.~ EXTERN VPLEIB PCM6Leina10


CHAIN VPLEIB PCM6Leina10
~(*Laughs*) I just know that I am going to like your Imoen when I eventually get to meet her <CHARNAME>.~
 = ~You think maybe my goddess is a ghost of my overactive imagination, like your Imoen's? I am also thinking that she may be, you see I have been giving some thought to your words and you could be right. I believe I understand at last why I feel the need for the assurance of *The Songstress*.~
END
 ++ ~Why is that, surely you are not doubting your own abilities?~ EXTERN VPLEIB PCM6Leina3
 ++ ~Why do you say that you feel you need reassurance Leina, you are a very confident lady in my eyes?~ EXTERN VPLEIB PCM6Leina3
 ++ ~I am pleased my words were of some help.~ EXTERN VPLEIB PCM6Leina3


IF ~Global("VP_LoveTalk","LOCALS",14) Gender(Player1,MALE)~ THEN VPLEIB PCM7Leina1
~(*Leina walks up you and plants a kiss on your mouth*) Thank you.~
 = ~(*You are taken aback by the sudden feel of soft warm lips on your own*)~
END
 ++ ~You're welcome Leina, but tell me, what have I done to deserve so pleasurable a reward?~ EXTERN VPLEIB PCM7Leina2
 ++ ~Mmm... tell me what I did and I'll do it again?~ EXTERN VPLEIB PCM7Leina2
 IF ~OR(6) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ THEN REPLY ~Please Leina, we don't want to give anyone the wrong impression?~ DO ~SetGlobal("VP_MyFlirt_Is_Over","LOCALS",1)~ EXTERN VPLEIB PCM7Leina11
 IF ~!Global("JaheiraRomanceActive","GLOBAL",1) !Global("JaheiraRomanceActive","GLOBAL",2) !Global("AerieRomanceActive","GLOBAL",1) !Global("AerieRomanceActive","GLOBAL",2) !Global("ViconiaRomanceActive","GLOBAL",1) !Global("ViconiaRomanceActive","GLOBAL",2)~ THEN REPLY ~Please Leina, we don't want to give anyone the wrong impression?~ EXTERN VPLEIB PCM7Leina12
 ++ ~Leina, I didn't know you cared... does this mean we are engaged?~ EXTERN VPLEIB PCM7Leina13


CHAIN VPLEIB PCM7Leina2
~You have helped me to get my head straightened out, or at least helped me to get it straighter than it has been for a while now... and for that I am grateful.~
 = ~(*She looks up into your face as if to kiss you again but smiles and kisses her finger and presses it to your lips instead.*)~
END
 ++ ~Always ready to help a lady straighten her head, especially when it happens to be such a pretty head.~ EXTERN VPLEIB PCM7Leina3
 ++ ~(*You kiss her finger before she can remove it from your lips*)... To see the spring return to your step and to know that I have brought this about is all the thanks I need.~ EXTERN VPLEIB PCM7Leina6
 ++ ~(*You press her finger to your mouth and make as if to nibble it*)... Mmm... so much sweetness in so small a part. Can a man be blamed if he yearns to taste the whole of such sweetness?~ EXTERN VPLEIB PCM7Leina7


CHAIN VPLEIB PCM7Leina3
~I still have no idea whether I saw my lady The Songstress or whether it was a vision my mind conjured in order to convince me of my path in this life. All I do know is that talking to you and bringing my doubts to the surface gave me the chance to look closer at them... close enough for me to deal with them.~
END
 ++ ~That is good to hear Leina, and does this mean that I still have my bard to cheer the dark days that still lie ahead of us?~ EXTERN VPLEIB PCM7Leina4
 ++ ~I hope this doesn't mean you are considering a change in career Leina. I already have the necessary skills I need for my mission and if you decide you are no longer a bard then I will have to let you go.~ EXTERN VPLEIB PCM7Leina4
 ++ ~Leina, please don't say that you no longer see yourself as a bard and wish to leave my side! Your skills are needed... as are you. It's no secret how dear you have become to me.~ EXTERN VPLEIB PCM7Leina5
 ++ ~I am pleased that you have found your way at last, but at the same time I'm afraid to ask your decision... afraid that I will lose my bard.~ EXTERN VPLEIB PCM7Leina5


CHAIN VPLEIB PCM7Leina4
~I am and always will be a bard <CHARNAME>... how can I be anything else when I have so great a love for music!~
 = ~I didn't choose music as a career, it chose me from the moment I first drew breath. It has just taken me a long time to see, that to be able to give birth to a song, to a melody, is a gift and not a skill a person learns.~
 = ~Whereas it is true anyone can learn to sing or play an instrument, not everyone can bring a melody and words together and create something as beautiful as music.~
 = ~Leina is a bard and she is content.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",15) SetGlobal("VP_Enable_Flirts","LOCALS",4)~ EXIT


CHAIN VPLEIB PCM7Leina5
~(*A frown crosses her forehead for a second*)...~
 = ~I... that is... you are very special to me too <CHARNAME> and I don't want to leave the group, but none of us here know what tomorrow holds... there may come a time when parting is unavoidable.~
 = ~As for my career... well, I now know that I am and always will be a bard. It has just taken me a long time to see, that to be able to give birth to a song, to a melody is a gift and not a skill a person learns.~
 = ~Whereas it is true anyone can learn to sing or play an instrument, not everyone can bring a melody and words together and create something as beautiful as music.~
 = ~Your bard is still a bard and she is content.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",15) SetGlobal("VP_Enable_Flirts","LOCALS",4)~ EXIT


CHAIN VPLEIB PCM7Leina6
~(*She draws her hand back from your lips... allowing it to caress your face lightly as she does so*)...~
 = ~Yes <CHARNAME>... it was your words that made me look more closely at my doubts and in doing so I was able to deal with them... and discover who I am.~
 = ~I still have no idea whether I saw my lady The Songstress or not, but now and for some reason I can't explain, I no longer feel the need to know... I know my way.~
END
 ++ ~That is good to hear Leina, and does this mean that I still have my bard to cheer the dark days that still lie ahead of us?~ EXTERN VPLEIB PCM7Leina4
 ++ ~I hope this doesn't mean you are considering a change in career Leina. I already have the necessary skills I need for my mission and if you decide you are no longer a bard then I will have to let you go.~ EXTERN VPLEIB PCM7Leina4
 ++ ~Leina, please don't say that you no longer see yourself as a bard and wish to leave my side! Your skills are needed... as are you. It's no secret how dear you have become to me.~ EXTERN VPLEIB PCM7Leina5
 ++ ~I am pleased that you have found your way at last, but at the same time I'm afraid to ask your decision... afraid that I will lose my bard.~ EXTERN VPLEIB PCM7Leina5


CHAIN VPLEIB PCM7Leina7
~(*She laughs as she draws her finger from your mouth and gently across your cheek*)...~
 = ~No, a man can not be blamed, for it is in the nature of a woman to ensure that many a man tastes but a sample of the honey, before she decides which man she gives the sweetest of delicacies to...~
 = ~Many a man is left yearning for that which he will never taste... whereas others acquire a sweet tooth too soon, and fail to recognise the delicacy for what it is when it is given.~
END
 ++ ~Then perhaps the lady would be interested to know that this man does not have a sweet tooth and seldom seeks the honey pot. For him to express a desire for honey, it must be a very special honey that he seeks.~ EXTERN VPLEIB PCM7Leina8
 ++ ~Because I admit to having had a sweet tooth in the past Leina, am I to take it that you look upon me as shallow and insensitive?~ EXTERN VPLEIB PCM7Leina9
 ++ ~Is it not possible for a man to taste many delicacies and then eventually find one that once tasted spoils his taste there after for everything else?~ EXTERN VPLEIB PCM7Leina10


CHAIN VPLEIB PCM7Leina8
~(*She looks at you puzzled but the twinkle in her eye gives away the ruse*)~
 = ~Now why would you think that little snippet would be of interest to me I wonder!~
 = ~(*She kisses her finger and presses it to your lips again before turning away.*)~
DO ~SetGlobal("VP_LoveTalk","LOCALS",15) SetGlobal("VP_Enable_Flirts","LOCALS",4)~ EXIT


CHAIN VPLEIB PCM7Leina9
~You are too quick to think I am pointing the finger because I say it is true of some. Could it be that you have regrets over some aspects of your past <CHARNAME>?~
 = ~As for how you appear in my eyes, I would never presume to judge another by their conduct in the past. I know you for who you are now and that to me is what counts...~
 = ~(*She gently touches your face again before turning away.*)~
DO ~SetGlobal("VP_LoveTalk","LOCALS",15) SetGlobal("VP_Enable_Flirts","LOCALS",4)~ EXIT


CHAIN VPLEIB PCM7Leina10
~I have no doubt that it is <CHARNAME>, but it also true that after tasting many delicacies the taste buds lose their ability to distinguish one from another, and when that one special taste finally presents itself, it often goes unnoticed... lost forever...~
 = ~(*A look of sadness comes to her eyes as she gently touches your face before turning away*)...~
 = ~Of course it can also be said, that if the first taste is of the rarest of delicacies, then this spoils everything that may follow.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",15) SetGlobal("VP_Enable_Flirts","LOCALS",4)~ EXIT


CHAIN VPLEIB PCM7Leina11
~(*She laughs softly*) I am sorry, that wasn't very discreet of me I know, a spur of the moment thank you to a dear friend.~
 = ~I may not seek love for myself but I am not against those who do, nor would I deliberately set out to spoil it for those who believe they have found it. I have noticed how your eyes brighten when she is close by, we all have.~
 = ~If she brings a song to your heart then be happy and treasure her and every moment that you spend together, for today is a but a brief moment in time and tomorrow comes all too soon.~
 = ~Mine was but a kiss from a friend, to say thank you for taking the time to help me get my head straight again.~
END
 ++ ~Then I take it you have decided whether to be a bard or not to be a bard?~ EXTERN VPLEIB PCM7Leina4
 ++ ~That is good to hear Leina, and does this mean that the group can look forward you cheering us all through the dark days that still lie ahead of us?~ EXTERN VPLEIB PCM7Leina4
 ++ ~I hope this doesn't mean you are considering a change in career Leina. I already have the necessary skills I need for my mission and if you decide you are no longer a bard then I will have to let you go.~ EXTERN VPLEIB PCM7Leina4


CHAIN VPLEIB PCM7Leina12
~(*She laughs softly*) I am sorry <CHARNAME>, that wasn't very discreet of me I know and I didn't mean to embarrass you, but I see nothing wrong in one friend giving another dear friend a kiss as way of saying thank you.~
 = ~You have helped me to get my head straightened out, or at least helped me to get it straighter than it has been for a while now... and for that I am grateful...~
 = ~(*She looks up into your face as if to kiss you again but smiles and kisses her finger and holds it to your lips instead*)... Thank you <CHARNAME>.~
END
 ++ ~Always ready to help a lady straighten her head, especially when it happens to be such a pretty head.~ EXTERN VPLEIB PCM7Leina3
 ++ ~(*You kiss her finger before she can remove it from your lips*)... To see the spring return to your step and to know that I have brought this about is all the thanks I need.~ EXTERN VPLEIB PCM7Leina6
 ++ ~(*You press her finger to your mouth and make as if to nibble it*)... Mmm... so much sweetness in so small a part. Can a man be blamed if he yearns to taste the whole of such sweetness?~ EXTERN VPLEIB PCM7Leina7


CHAIN VPLEIB PCM7Leina13
~(*She puts her hand to her mouth and feigns shock*)... <CHARNAME>... what sort of a girl do you take me for... I never engage after a first kiss!~
END
 ++ ~Ah... and it was such a tender kiss my lovely Leina. Here I was hoping, that if we were betrothed, we would share many more such moments.~ EXTERN VPLEIB PCM7Leina14
 ++ ~Then if it takes two, please... (*Pursing your lips and closing your eyes you lean towards her*)...~ EXTERN VPLEIB PCM7Leina14
 ++ ~More's the pity for me. If not to announce our betrothal, then tell me, what have I done to deserve so pleasurable a reward?~ EXTERN VPLEIB PCM7Leina2


CHAIN VPLEIB PCM7Leina14
~(*She looks up into your face as if to kiss you again but smiles and kisses her finger and presses it to your lips instead*)...~
 = ~Let's not complicate our friendship with long term thoughts and wishes <CHARNAME>, even if they are spoken in jest.~
 = ~You have helped me to get my head straightened out, or at least helped me to get it straighter than it has been for a while now... and for that I am grateful.~
 = ~Thank you <CHARNAME>.~
END
 ++ ~Always ready to help a lady straighten her head, especially when it happens to be such a pretty head.~ EXTERN VPLEIB PCM7Leina3
 ++ ~(*You kiss her finger before she can remove it from your lips*)... To see the spring return to your step and to know that I have brought this about is all the thanks I need.~ EXTERN VPLEIB PCM7Leina6
 ++ ~(*You press her finger to your mouth and make as if to nibble it*)... Mmm... so much sweetness in so small a part. Can a man be blamed if he yearns to taste the whole of such sweetness?~ EXTERN VPLEIB PCM7Leina7


IF ~Global("VP_LoveTalk","LOCALS",17) Gender(Player1,MALE)~ THEN VPLEIB PCM8Leina1
~(*She grabs your hand and points excitedly to the sky*)... Quickly <CHARNAME>, make a wish!~
END
 ++ ~A wish, what are you babbling about girl?~ EXTERN VPLEIB PCM8Leina2
 ++ ~I have made many a wish on many a night such as this, why should this one be any different?~ EXTERN VPLEIB PCM8Leina2
 ++ ~I have only one wish in my heart, and if it should be granted me... it will not be by the grace of the gods nor by fate herself.~ EXTERN VPLEIB PCM8Leina7
 ++ ~Superstitious nonsense! I didn't take you as a believer in superstition Leina.~ EXTERN VPLEIB PCM8Leina11


CHAIN VPLEIB PCM8Leina2
~(*She points to the sky again*)... See, not only is there a full moon tonight but a star is falling as well... two omens that bring good luck if wished upon, but you must be quick, before the star touches the ground.~
END
 ++ ~Then I wish good health to Leina, so that she may continue to bring the joy to the world that she has brought to me.~ EXTERN VPLEIB PCM8Leina3
 ++ ~I wish only for happiness to come your way Leina, "...and may she one day take the time to look closer to home and see that there is one who cares and wishes only to see her happy."~ EXTERN VPLEIB PCM8Leina3
 ++ ~If the gods grant me just the one wish, then I wish for a speedy end to this nightmare so's I can set about making my life my own once more.~ EXTERN VPLEIB PCM8Leina5
 ++ ~I ask only one thing... that the gods lift this curse from me and I become simply, <CHARNAME> of Candlekeep once again.~ EXTERN VPLEIB PCM8Leina5
 ++ ~Superstitious nonsense! I didn't take you as a believer in superstition Leina.~ EXTERN VPLEIB PCM8Leina11


CHAIN VPLEIB PCM8Leina3
~(*She looks up at you, surprise on her face*)... With all that's going on in your life, you give your wish to me? You are truly a remarkable person <CHARNAME>.~
 = ~It's just as well that I wished for a future free of conflict and persecution for you... seeing as how you didn't.~
END
 ++ ~(*You touch the hand, that is still held firmly by your own, to your lips*)... I thank the lady for her kind thoughts and her wish.~ EXTERN VPLEIB PCM8Leina4
 ++ ~Let us hope the gods grant both our wishes and we both get to live long, happy lives.~ EXTERN VPLEIB PCM8Leina4
 ++ ~If the gods grant but one wish per falling star, then I hope they look favourably upon mine.~ EXTERN VPLEIB PCM8Leina4


CHAIN VPLEIB PCM8Leina4
~(*Sadly*) Look, the star, it is no more! Is it not sad that its brilliance is lost to us forever... no more will it shine for us to stare up and wonder at its beauty?~
 = ~Now, we must be patient, because neither the gods nor fate will rush themselves on our behalf.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",18)~ EXIT


CHAIN VPLEIB PCM8Leina5
~"My own wish will be for you also...
Star light, star bright,
I wish I may, I wish I might,
have the wish I wish tonight..."~
 = ~May the gods look favourably upon <CHARNAME> and grant him his wish for a life free of conflict and persecution.~
END
 ++ ~(*You touch the hand, that is still held firmly by your own, to your lips*)... I thank the lady for her kind thoughts and her wish.~ EXTERN VPLEIB PCM8Leina4
 ++ ~I thank you... you have been generous with your wishes. Surely with you wishing on my behalf, the gods will look upon it as a selfless act and in granting you yours, give me mine also.~ EXTERN VPLEIB PCM8Leina4
 ++ ~Why thank you Leina, that is very thoughtful of you.~ EXTERN VPLEIB PCM8Leina4
 ++ ~Now I feel like a cad! I thought only of myself and how I want a change in my life, whilst you use your wish selflessly. I can not take it back but the next time a star falls, we will both wish for Leina's happiness.~ EXTERN VPLEIB PCM8Leina6


CHAIN VPLEIB PCM8Leina6
~I have had time to contemplate my life and whereas there are parts I would change, on a whole I am content.~
 = ~I have a couple of issues still to work through but I am confident that when I confront them, I now have the strength to resolve them without the aid of wishes...~
 = ~...but look <CHARNAME>, the star, it is no more! Is it not sad that its brilliance is lost to us forever... no more will it shine for us to stare up and wonder at its beauty?~
 = ~Now, we must be patient, because neither the gods nor fate will rush themselves on our behalf.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",18)~ EXIT


CHAIN VPLEIB PCM8Leina7
~You can't know that <CHARNAME>, no one knows how much the gods or even fate take a hand in our lives.~
 = ~(*She points to the sky again*)... Come, make your wish, see, not only is there a full moon tonight but a star is falling as well... two omens that bring luck if wished upon, but you must be quick, before the star touches the ground.~
END
 ++ ~I wish only for happiness to come your way Leina, "...and may she one day take the time to look closer to home and see that there is one who cares and wishes only to see her happy".~ EXTERN VPLEIB PCM8Leina3
 ++ ~Then I wish good health to Leina, may she always be at my side and continue to be my own bright star, shining through and giving me hope whenever I fall or feel despair.~ EXTERN VPLEIB PCM8Leina8
 ++ ~I will make my wish but it will remain here in my heart. If the gods see fit to grant it me, then you, Leina, will be the first to know. (*Now is not the time for her to know that all I wish for, is that she will one day, look at me and see the truth that she has blinded herself to.*)~ EXTERN VPLEIB PCM8Leina9


CHAIN VPLEIB PCM8Leina8
~(*She laughs*)... I thank you for your wish <CHARNAME>, but I think it is not as selfless as it first appears.~
 = ~It has often been told to me that when it comes to raising one's moral there is nothing like a good hearty song and who better to deliver the song than a bard.~
 = ~Don't worry that I have seen through your ruse, for this bard is more than content to remain in the company of those who appreciate her melodies.~
 = ~After all, what is music for if not to enrich the lives of others and to bring hope to everyone.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",18)~ EXIT


CHAIN VPLEIB PCM8Leina9
~Aha! Me thinks <CHARNAME> has a secret fantasy, or maybe a secret desire he is too shy to share.~
 = ~Maybe he has his eye on a lady and he needs the gods intervention in getting her to look his way? What a wasted wish that would be, for if the lady has not looked your way on her own accord, and the gods force her head around, could you be sure that her feelings are true and not put in her heart by them?~
END
 ++ ~Don't be daft Leina!~ EXTERN VPLEIB PCM8Leina10
 ++ ~Oho... you are good Leina, but there is no way you will wheedle it out of me with your idle questions.~ EXTERN VPLEIB PCM8Leina10
 ++ ~Remember the fate of the cat who let curiosity get the better of it Leina?~ EXTERN VPLEIB PCM8Leina10


CHAIN VPLEIB PCM8Leina10
~Then it is a shame that the star is no more, for I would have wished to know what it was that you wished so secretly for, but the moment is gone.~
 = ~As brilliantly as it shines as it travels across the skies, it is sad when a star falls for it is lost to us forever... no more will it shine for us to stare up and wonder at its beauty.~
 = ~I hope you get your wish, whatever it was, but for now we must be patient, because neither the gods nor fate will rush themselves on our behalf.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",18)~ EXIT


CHAIN VPLEIB PCM8Leina11
~I don't normally. I am well aware that the moon has her cycles and is regularly seen shining in all her splendour... I have even, on occasion, stood and watched a star as it dies and plunges to the ground, but I have never been witness to both events happening in the same sky.~
 = ~If there was a time to believe in omens then tonight is such a time.~
 = ~Come, before the star touches the ground, throw caution to the wind and make a wish.~
END
 ++ ~Forget it, such nonsense is for lovers and bards.~ EXTERN VPLEIB PCM8Leina12
 ++ ~I don't believe in omens, and as for wishes, I have yet to meet someone whom the gods have looked on fondly enough to grant them a wish, but don't let me stop you.~ EXTERN VPLEIB PCM8Leina13
 ++ ~It is because I have been touched by a god that my life is as troubled as it is. I am not about to risk being touched again by begging for some boon from them.~ EXTERN VPLEIB PCM8Leina14
 ++ ~Let me guess, you are going to ask the gods to miraculously turn back time so's you can put everything right and live happily ever after?~ EXTERN VPLEIB PCM8Leina17


CHAIN VPLEIB PCM8Leina12
~You forget <CHARNAME>, I am a bard, so maybe I will just go ahead and do the bardic nonsense thing. (*She turns her attention back to the skies.*)~
DO ~SetGlobal("VP_LoveTalk","LOCALS",18)~ EXIT


CHAIN VPLEIB PCM8Leina13
~Just because you haven't met them it doesn't mean they aren't out there. Maybe there are those who prefer to keep their good fortune to themselves, fearing the consequence if they let it be known that they have been favoured by the gods.~
 = ~You yourself should understand the implications of letting the world know you have been touched by a god.~
 = ~I know nothing of omens but maybe just this once I will throw caution to the wind and make my wish. (*Turning her back on you she looks once again to the skies.*)~
DO ~SetGlobal("VP_LoveTalk","LOCALS",18)~ EXIT


CHAIN VPLEIB PCM8Leina14
~There is but one god to blame for your troubles and he is dead. Regardless of your connection to Bhaal, who's to say the others won't look upon you favourable... make your wish, what have you to lose?~
END
 ++ ~Forget it, such nonsense is for lovers and bards.~ EXTERN VPLEIB PCM8Leina12
 ++ ~If the gods grant me just the one wish, then I wish for a speedy end to this nightmare so's I can get on with my life unmolested.~ EXTERN VPLEIB PCM8Leina15
 ++ ~Then I wish for the gods to protect me from bards and their childish notions.~ EXTERN VPLEIB PCM8Leina16


CHAIN VPLEIB PCM8Leina15
~I will wish for you too. Who knows, with both of us wishing...~
 = ~"Star light, star bright,
I wish I may, I wish I might,
have the wish I wish tonight..."~
 = ~May the gods look favourably upon <CHARNAME> and grant him his wish for a life free of conflict and persecution.~
 = ~Now all we need is patience and we will see if the gods have favoured us tonight.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",18)~ EXIT


CHAIN VPLEIB PCM8Leina16
~Done! That is one wish you will not have to wait for the favour of the gods, as from this moment you will not be bothered by this bard. She will keep her notions to herself and her presence at a distance in future.~
 = ~Now, please leave me to reflect on the last moments of that star's beauty before it is lost forever. (*Turning her back on you she looks once again to the skies.*)~
DO ~SetGlobal("VP_LoveTalk","LOCALS",18) SetGlobal("VP_MyFlirt_Is_Over","LOCALS",1)~ EXIT


CHAIN VPLEIB PCM8Leina17
~I have had time to contemplate my life and whereas it has not been easy and I have a lot of regrets, I think I have grown into who I am because of them.~
 = ~To change things now would undoubtably change me and whose to say I would like the person I became.~
 = ~No, I will not ask the gods to tamper with time, I am confident that I will work out any remaining issues I have without the aid of wishes.~
 = ~I am happy and have no need to ask for a happy ever after life... as for my wish, that I will keep to myself, now if you'll excuse me... (*Turning her back on you she looks once again to the skies.*)~
DO ~SetGlobal("VP_LoveTalk","LOCALS",18)~ EXIT


IF WEIGHT #-1 ~Global("VP_Ric_ClericQuest","LOCALS",1)~ THEN VPLEIB ClericQuest1
~(*Breathing in deeply*) Oh at last, the sweet smell of fresh air!~ [mute]
END
 IF ~True()~ THEN EXTERN VPLEIB ClericQuest2
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN BMINSC NEJ140
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB 58
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB 129
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB 86


CHAIN VPLEIB ClericQuest2
~Just look at the filth on my boots <CHARNAME>! I don't think we would be welcome at the Mithrest Inn this day, but we could clean up at the Five Flagons, Samuel will understand. What say you?~
END
 ++ ~Leina it can wait. Let's collect our reward and get out of here.~ EXTERN VPLEIB ClericQuest3
 ++ ~To me, you look just as cute when dirty as you do clean, so let's get our reward first.~ EXTERN VPLEIB ClericQuest3
 ++ ~I'm in charge here.. and I don't recall asking for your opinion! So put a clamp on it until I do!~ EXTERN VPLEIB ClericQuest6
 ++ ~Sounds like a great idea. What say you Leina, is it ale and rest for our weary bones now or later?~ EXTERN VPLEIB ClericQuest7


CHAIN VPLEIB ClericQuest3
~I don't think you're looking past your nose, or should that be not smelling with it right now.~
END
 ++ ~Enough of your wise cracks, let's get to the temple!~ EXTERN VPLEIB ClericQuest4
 ++ ~I smell with it just fine. Anyway, you should look in a mirror now and then.~ EXTERN VPLEIB ClericQuest5


CHAIN VPLEIB ClericQuest4
~(*Sighing*) When will <PRO_HESHE> ever learn that making the effort to be a little more presentable goes a long way with folk!~
DO ~SetGlobal("VP_Ric_ClericQuest","LOCALS",2)~ EXIT


CHAIN VPLEIB ClericQuest5
~(*Sighing*) Yes, well I'm guessing you don't have a clue which way the wind is blowing right now.~
DO ~SetGlobal("VP_Ric_ClericQuest","LOCALS",2)~ EXIT


CHAIN VPLEIB ClericQuest6
~I'm not challenging your right to lead, so there's no need for you to be getting so testy!~
DO ~SetGlobal("VP_Ric_ClericQuest","LOCALS",2)~ EXIT


CHAIN VPLEIB ClericQuest7
~After our bath and rub down with fluffy towels, how better to end the day than by drinking ale and singing into the wee hours of the morning?~
END
 ++ ~Hmm... never one to say no to a bit of carousing and whatever else may follow!~ EXTERN VPLEIB ClericQuest8
 ++ ~I might hum a little but I will certainly enjoy *watching* the show more.~ EXTERN VPLEIB ClericQuest8
 ++ ~Ale and plenty of it... guaranteed to help one lose ones inhibitions eh?~ EXTERN VPLEIB ClericQuest8
 ++ ~I'm more than ready for a hot bath Leina but carousing after such a hard day... let's just see how it goes.~ EXTERN VPLEIB ClericQuest8a


CHAIN VPLEIB ClericQuest8
~(*Laughing softly*) All types show up at the Five Flagons <CHARNAME>, who knows, you may get lucky.~
DO ~SetGlobal("VP_Ric_ClericQuest","LOCALS",6)~ EXIT


CHAIN VPLEIB ClericQuest8a
~(*Laughing softly*) Maybe a hot bath and the luxury of a fluffy towel around you will awaken your senses to the need to relax, to enjoy the company of good friends and to rejoice at having got through another perilous day <CHARNAME>.~
DO ~SetGlobal("VP_Ric_ClericQuest","LOCALS",6)~ EXIT


IF WEIGHT #-2 ~Global("VP_Ric_ClericQuest","LOCALS",3)~ THEN VPLEIB ClericQuest9
~Uh, please wait up a moment <CHARNAME>, I have something very important to ask you.~
END
 ++ ~It can wait Leina... preferably until after we've concluded our business here.~ EXTERN VPLEIB ClericQuest11
 ++ ~I'm tired Leina, I'm not in the mood for twenty questions so let it rest.~ EXTERN VPLEIB ClericQuest10
 ++ ~You're going to ask me no matter what so let's get this over with now.~ EXTERN VPLEIB ClericQuest15
 ++ ~Shhhh... not so loud! We're in a temple so keep your voice down. Now, what is it?~ EXTERN VPLEIB ClericQuest16


CHAIN VPLEIB ClericQuest10
~Hmm, maybe some other time then.~
DO ~SetGlobal("VP_Ric_ClericQuest","LOCALS",4)~ EXIT


CHAIN VPLEIB ClericQuest11
~No it can not wait. Unless of course you care little about what you do, or the impression you make on others!~
END
 ++ ~I care about what I do but your constant chattering gets annoying sometimes.~ EXTERN VPLEIB ClericQuest12
 ++ ~I wouldn't be here if it didn't matter to me what I do.~ EXTERN VPLEIB ClericQuest12
 ++ ~I'm not here to worry about appearances...anyway after what we've just gone through I think we all look pretty impressive.~ EXTERN VPLEIB ClericQuest12


CHAIN VPLEIB ClericQuest12
~Still, may I make a suggestion before we go any farther?~
END
 ++ ~In about five minutes you can, after we've collected our reward that is.~ EXTERN VPLEIB ClericQuest13
 ++ ~Oh and now it changes from a question to a suggestion... do you think that just because you use different words you're going to get your way, missy?~ EXTERN VPLEIB ClericQuest14


CHAIN VPLEIB ClericQuest13
~If that is what you want to do then so be it but do try to remember that we are in a temple and a little decorum wouldn't go amiss.~
DO ~SetGlobal("VP_Ric_ClericQuest","LOCALS",4)~ EXIT


CHAIN VPLEIB ClericQuest14
~Whatever, but you may do well to remember it's not always about hack, slash and get your reward. We are after all in a temple and little decorum might not go amiss.~
DO ~SetGlobal("VP_Ric_ClericQuest","LOCALS",4)~ EXIT


CHAIN VPLEIB ClericQuest15
~Shhh, keep your voice down... we are in a temple, not some rag-tag tavern. Now since you didn't listen to me when we were outside. Are you going to hush now?~
END
 ++ ~Listen, if I want to yell I'll yell! Now, are you going to tell me what it is you want or not?~ EXTERN VPLEIB ClericQuest15a
 ++ ~Listen, you, along with everyone else here thought this quest was a good idea! I know how we got here and why, so just spit out whatever it is you want or shut up!~ EXTERN VPLEIB ClericQuest15a


CHAIN VPLEIB ClericQuest16
~Don't tell me to shush when your yelling enough to waken the dead yourself! Whose fault is it anyway we're in this mess and we stink to high heaven?~
END
 ++ ~Listen, if I want to yell I'll yell! Now, are you going to tell me what it is you want or not?~ EXTERN VPLEIB ClericQuest15a
 ++ ~Listen, you, along with everyone else here thought this quest was a good idea! I know how we got here and why, so just spit out whatever it is you want or shut up!~ EXTERN VPLEIB ClericQuest15a


CHAIN VPLEIB ClericQuest15a
~Keep your voice done!~
END
 IF ~True()~ EXTERN VPLEIB ClericQuest17
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB 8
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB 130
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB 59
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN BMINSC NEJ141
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN BJAHEIR NEJ499
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB 87


CHAIN VPLEIB ClericQuest17
~If you would just stop and hear me out here <CHARNAME>, we can get out of here with a little dignity and without stinking the place out.~
END
 ++ ~Look, all I want is to get done here and to get to an inn as quickly as possible.~ EXTERN VPLEIB ClericQuest18
 ++ ~Yes Leina, I know that we stink in more ways then one so let's conclude our business and get out of here.~ EXTERN VPLEIB ClericQuest18


CHAIN VPLEIB ClericQuest18
~Yes that is just it. If you won't be so darn hard headed, we could go to an inn first and come back when we have made ourselves a little more presentable.~
END
 ++ ~Why do we need to go to an in first... why traipse across the city only to have to traipse all the way back? We may as well finish up here first, save our legs.~ EXTERN VPLEIB ClericQuest19
 ++ ~Don't you call me hard headed, you who is as stubborn as a mule herself! Let's finish our business and then we can go to the inn... I may even let you pick which one!~ EXTERN VPLEIB ClericQuest19


CHAIN VPLEIB ClericQuest19
~Your nose may not be working, but are you blind as well as deaf? Look at the mess on the carpet and the sewer grime on our clothes. We will make a better impression if we partake in a hot bath and the luxury of warm fluffy warm towels first.~
 = ~The job is done the reward can wait, and please, keep your voice down.~
END
 ++ ~Look who is calling the kettle black, just keep YOUR voice down and we'll get to an inn soon enough.~ EXTERN VPLEIB ClericQuest19a
 ++ ~You'll get to your bath soon enough! The reward first and then we can enjoy more of what the inn has to offer.~ EXTERN VPLEIB ClericQuest19a


CHAIN VPLEIB ClericQuest19a
~(*Sighs*) Ah, heavenly... and you can of course down a tankard of ale or whatever takes your fancy.~
END
 IF ~True()~ THEN EXTERN VPLEIB ClericQuest21
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB 88
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN BMAZZY NEJ2
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN BJAHEIR NEJ500
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN BKORGAN NEJ1
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB 9
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB 60
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN BMINSC NEJ142
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB 131


CHAIN VPLEIB ClericQuest20
~Then let us away to the Five Flagons, Samuel will understand and have hot water for us all in no time.~
DO ~SetGlobal("VP_Ric_ClericQuest","LOCALS",4)~ EXIT


CHAIN VPLEIB ClericQuest21
~(*Leina laughs softly and touches your arm*) What are we like?~
END
 ++ ~(*You put your hand over hers as it rests on your arm*) What's so funny?~ EXTERN VPLEIB ClericQuest22
 ++ ~You push her hand away... Enough of this, we'll talk after we get our reward.~ EXTERN VPLEIB ClericQuest22a
 ++ ~What is it that you find so amusing?~ EXTERN VPLEIB ClericQuest22


CHAIN VPLEIB ClericQuest22
~Look at us, stood here arguing in a temple and smelling like sewer rats. I think we really need to have hot baths with warm fluffy towels before we speak to anyone... after all, we don't want to over power the incense.~
END
 ++ ~You're right... we may even get a better reward. So it's off to The Five Flagons then?~ EXTERN VPLEIB ClericQuest23
 ++ ~It will serve them right to get a wiff of what we have had to endure.~ EXTERN VPLEIB ClericQuest22a


CHAIN VPLEIB ClericQuest22a
~If that is what you want to do then so be it but do try to remember it's not always about hack, slash and get your reward. We are after all in a temple and little decorum might not go amiss.~
DO ~SetGlobal("VP_Ric_ClericQuest","LOCALS",4) SetGlobal("VP_MyFlirt_Is_Over","LOCALS",1)~ EXIT


CHAIN VPLEIB ClericQuest23
~I think you'll clean up just fine. We'll sneak in the back way so's we don't put Samuels patrons off their ale.~
DO ~SetGlobal("VP_Ric_ClericQuest","LOCALS",4)~ EXIT


IF WEIGHT #-3 ~Global("VP_Ric_ClericQuest","LOCALS",5)~ THEN VPLEIB ClericQuest24
~<CHARNAME>, are you satisfied now?~
END
 ++ ~Leina please, what now? You've got your wish we are now heading for the inn.~ EXTERN VPLEIB ClericQuest25
 ++ ~Look, I'm tired and we all smell, I know, but I am trying to be civil and it is hard. So will you spit out what ever it is that is bugging you and get it over with!~ EXTERN VPLEIB ClericQuest26


CHAIN VPLEIB ClericQuest25
~(*Thinking aloud*) Mmm... I think I will call this one "The ballad of <CHARNAME> the smelly grouch".~
DO ~SetGlobal("VP_Ric_ClericQuest","LOCALS",6)~ EXIT


CHAIN VPLEIB ClericQuest26
~You say you don't want people to always be looking at you as a curiosity, so if you would stop once in awhile to listen to others we might be able to change that image of yours.~
END
 ++ ~Can't this conversation wait until after we've had an ale or two?~ EXTERN VPLEIB ClericQuest26
 ++ ~Your right of course, but can't this conversation wait until we're out of the temple?~ EXTERN VPLEIB ClericQuest27


CHAIN VPLEIB ClericQuest27
~No, because this is the best place for this example. We are in a temple and look at how you have just behaved.~
END
 ++ ~Yes we have smashed an evil cult and gotten our reward so what?~ EXTERN VPLEIB ClericQuest28
 ++ ~I have just collected what was due and now we can have some fun time tonight, what's so wrong in that?~ EXTERN VPLEIB ClericQuest28


CHAIN VPLEIB ClericQuest28
~It is not about the quest or the reward. We are in this elegant temple and you march us in here as if it were a pig sty!~
 = ~I can see by the puzzled look you don't understand. We have just come from the sewers, what do you think we smell like and who do you think left those tracks on the clean floor?~
END
 ++ ~I see in your point another reason I need to keep you in the group. So what do you suggest we do?~ EXTERN VPLEIB ClericQuest29
 ++ ~I see and your point being we best get out of here before they try and make us clean it up, yes?~ EXTERN VPLEIB ClericQuest32
 ++ ~I really don't care what these people think. I'm a Bhaalspawn and I deserve the fear they have of me.~ EXTERN VPLEIB ClericQuest31


CHAIN VPLEIB ClericQuest29
~I suggest we get out of here as quickly as possible before they ask us to clean it up... lets high tail it across to the Five Flagons for ale, hot bath, fluffy towels all round and song.~
END
 ++ ~I think we should wipe our feet on the carpet and then run for it?~ EXTERN VPLEIB ClericQuest30
 ++ ~Why go to an Inn we could jump in the water outside. Perhaps we should have done that in the first place.~ EXTERN VPLEIB ClericQuest30
 ++ ~I am sure they have workers to deal with such messes and the Five flagons sounds good to me... I'm sure, after all we've done for them, they'll forgive our hasty departure.~ EXTERN VPLEIB ClericQuest33


CHAIN VPLEIB ClericQuest30
~I despair of you <CHARNAME>, I can only think that you want to be sent to Asylum permanently.~
DO ~SetGlobal("VP_Ric_ClericQuest","LOCALS",6)~ EXIT


CHAIN VPLEIB ClericQuest31
~You maybe a Bhaalspawn and deserve to be feared but that's no excuse to go around smelling like a sewer rat... that'll only give people cause to avoid you, not fear you.~
DO ~SetGlobal("VP_Ric_ClericQuest","LOCALS",6)~ EXIT


CHAIN VPLEIB ClericQuest32
~My point exactly, let's go to the Five Flagons for a hot bath, fluffy towels all round and ale.~
DO ~SetGlobal("VP_Ric_ClericQuest","LOCALS",6)~ EXIT


CHAIN VPLEIB ClericQuest33
~(*Sighing*) I am sure they have, but we could have been a little more considerate and not brought the mess in with us to start with... still, what is done is done.~
 = ~Let us away to the Five Flagons for a hot bath, fluffy towels all round and ale, better late than never I say.~
DO ~SetGlobal("VP_Ric_ClericQuest","LOCALS",6)~ EXIT


IF WEIGHT #-4 ~Global("VP_Ric_DeArnise","LOCALS",1) Global("PCKeepOwner","GLOBAL",1)~ THEN VPLEIB DeArnise1
~<CHARNAME>, are you in a hurry to leave?~ [mute]
 ++ ~Yes we need to get on with business.~ EXTERN VPLEIB DeArnise2
 ++ ~Yes, I am. We are not drudges you know, the servants can handle everything from here on.~ EXTERN VPLEIB DeArnise3
 ++ ~Yes, we need to get a move on it before they think we are here to help clean this mess up.~ EXTERN VPLEIB DeArnise4


CHAIN VPLEIB DeArnise2
~(*She tips her head and softens her voice*) Are you sure we can not just have a moment... please?~
END
 ++ ~OK, you have your moment Leina.~ EXTERN VPLEIB DeArnise4
 ++ ~Well, since you put it that way I will hear you out.~ EXTERN VPLEIB DeArnise4a
 ++ ~No, when I say it's time to go, then it's time to go. I'm the leader here!~ EXTERN VPLEIB DeArnise4


CHAIN VPLEIB DeArnise3
~Hummmm... Let me have a look at you... not so sure about that, put a broom in one hand, a bucket in the other... (*She laughs softly*)... seriously, since you have just taken on the responsibility of the Keep do you think it such a good idea just to run off quite so soon?~
END
 ++ ~I don't need think swinging a sword and a broom are the same thing.~ EXTERN VPLEIB DeArnise5
 ++ ~I just make the mess I don't clean it up.~ EXTERN VPLEIB DeArnise6
 ++ ~Do you really think they need us around to tell them what goes where... I'm hopeless at organizing?~ EXTERN VPLEIB DeArnise6
 ++ ~Yes we have other things to do and that is final.~ EXTERN VPLEIB DeArnise4a


CHAIN VPLEIB DeArnise4
~Since you have just taken on the responsibility of running of the Keep do you think it is a good idea to leave so quickly?~
END
 ++ ~I just make the mess I don't clean it up.~ EXTERN VPLEIB DeArnise6
 ++ ~Do you really think they need us around to tell them what goes where... I'm hopeless at organizing?~ EXTERN VPLEIB DeArnise6
 ++ ~Yes we have other things to do and that is final.~ EXTERN VPLEIB DeArnise4a


CHAIN VPLEIB DeArnise4a
~(*She drops a curtsey*) Yes my leader... whatever my leader says...~
EXTERN VPLEIB DeArnise4b


CHAIN VPLEIB DeArnise4b
~(*Then screwing up her nose and to hide a smile, she turns away*)... And when you my dear <CHARNAME>, find yourself leading whilst the rest of us follow downwind and at a distance, you may well wish you'd taken advantage of the luxuries the keep has to offer... Life is about to get lonely at the front.~
DO ~SetGlobal("VP_Ric_DeArnise","LOCALS",2)~ EXIT


CHAIN VPLEIB DeArnise5
~(*A gleam comes to her eye*) Mmmm... an interesting thought. Now that you mention it, you do swing a sword a lot like a broom... Ooops... couldn't resist that one <CHARNAME>. Anyway, I was just talking to Nalia and...~
END
 ++ ~Flattery will get you nowhere missy.~ EXTERN VPLEIB DeArnise7
 ++ ~Oh are you going to bore me with some girl talk?~ EXTERN VPLEIB DeArnise7
 ++ ~So Nalia and you run our group now?~ EXTERN VPLEIB DeArnise7
 ++ ~(*You fail to see the humour in her words*) Enough bard! It's time to go, follow my lead or not, it's up to you!~ EXTERN VPLEIB DeArnise4a


CHAIN VPLEIB DeArnise6
~(*A gleam comes to her eye*) I can tell. It really hasn't done you any good to have been raised by all those men at Candlekeep. Nary a women around to balance you out, and your color co-ordination won't win you any awards either. Now don't you go getting upset at me for speaking as I see. Anyway, I was just talking to Nalia and...~
END
 ++ ~Flattery will get you nowhere missy.~ EXTERN VPLEIB DeArnise7
 ++ ~Oh are you going to bore me with some girl talk?~ EXTERN VPLEIB DeArnise7
 ++ ~So Nalia and you run our group now?~ EXTERN VPLEIB DeArnise7
 ++ ~(*You fail to see the humour in her words*) Enough bard! It's time to go, follow my lead or not, it's up to you!~ EXTERN VPLEIB DeArnise4a


CHAIN VPLEIB DeArnise7
~If that is your best attempt at humour, then I think you best stick to dungeon crawling... and speaking of dungeon crawling, we did touch those nasty trolls and all. Since we are here in the Keep Nalia has assured me that the servants whom you saved will gladly provide us with hot water and fluffy towels. What say you?~
END
 ++ ~You know, that sounds good after all we deserve it after what we did for 'em.~ EXTERN VPLEIB DeArnise30
 ++ ~You're absolutely right good as time as any for a little down time.~ EXTERN VPLEIB DeArnise30
 ++ ~(*You raise your eyebrows and smile at Leina*) Hummm.... that sounds pretty good, all of us in one big hot tub I think I like this place, no wonder Nalia wanted to keep it.~ EXTERN VPLEIB DeArnise31
 ++ ~The hot water sounds good but what ya trying to do, make a sissy out of me? Fluffy towels!~ EXTERN VPLEIB DeArnise32
 ++ ~Leina we really don't have time for this, we must be on our way.~ EXTERN VPLEIB DeArnise29


IF WEIGHT #-5 ~Global("VP_Ric_DeArnise","LOCALS",1) Global("RoenalControl","GLOBAL",1) InParty("Korgan") !Dead("Korgan")~ THEN VPLEIB DeArnise8
~Korgan, do your kin have such fine elegant buildings such as these?~
EXTERN BKORGAN LeiDear1


CHAIN VPLEIB DeArnise9
~We shall not! It's not only your mind that stinks, so does your body!~
EXTERN BKORGAN LeiDear2


CHAIN VPLEIB DeArnise10
~No matter how one tries to be civil to you, you always turn it to the sewer. If something in your past hasd made you this way then it is nothing to do withe me, nor anyone else in this group so why do you continue to berate everyone?~
EXTERN BKORGAN LeiDear3


CHAIN VPLEIB DeArnise11
~(*Smiles*) Believe me <CHARNAME>, I've had to endure and put down far odious creatures than him, but thank you anyway...~
EXTERN VPLEIB DeArnise11a


CHAIN VPLEIB DeArnise11a
~Now, I was just talking with Nalia and she says it would be nice to have the servants draw hot water for all of us.~
END
 ++ ~Leina, we don't have time for this we need to prepare for Irenicus.~ EXTERN VPLEIB DeArnise29
 ++ ~Leina we... ah well, what's the harm if they have enough ale to go around.~ EXTERN VPLEIB DeArnise30
 ++ ~Oh, and how grateful is she?~ EXTERN VPLEIB DeArnise31


IF WEIGHT #-6 ~Global("VP_Ric_DeArnise","LOCALS",1) Global("RoenalControl","GLOBAL",1) InParty("Mazzy") !Dead("Mazzy") OR(2) !InParty("Korgan") Dead("Korgan")~ THEN VPLEIB DeArnise12
~Mazzy, I was wondering would you ever want to be in charge of protecting a keep such as this?~
EXTERN BMAZZY LeiDear1


CHAIN VPLEIB DeArnise13
~I understand what you mean. Though it is indeed nice for a time, I am a bard and not just a singer. Songs do not come from crowds who drink too much or pomp with its luxuries. Tales are made in the song of a bird, the zing of an arrow and the clash of sword touching sword. They come from the heart and are brought forth after much nurturing.~
EXTERN BMAZZY LeiDear2


CHAIN VPLEIB DeArnise14
~Yes, Mazzy I have noticed you in battle and you are a worthy adversary to all we meet. Hummm... me thinks you are bringing a tale to my notes. Which reminds me, don't you think it would do us good to rest the night here?~
EXTERN BMAZZY LeiDear3


CHAIN VPLEIB DeArnise15
~My idea exactly. I was just talking with Nalia and she is willing to have the servants draw hot water for all of us.~
END
 ++ ~Leina, we don't have time for this we need to prepare for Irenicus.~ EXTERN VPLEIB DeArnise29
 ++ ~Leina we... ah well, what's the harm if they have enough ale to go around.~ EXTERN VPLEIB DeArnise30
 ++ ~Oh, and how grateful is she?~ EXTERN VPLEIB DeArnise31


IF WEIGHT #-7 ~Global("VP_Ric_DeArnise","LOCALS",1) Global("RoenalControl","GLOBAL",1) InParty("njhroth") !Dead("njhroth") OR(2) !InParty("Korgan") Dead("Korgan") OR(2) !InParty("Mazzy") Dead("Mazzy")~ THEN VPLEIB DeArnise16
~Hrothgar in all your adventuring days were you ever able to acquire such a fine estate as this?~
EXTERN NJHROB LeiDear1


CHAIN VPLEIB DeArnise17
~These hamlets of yours Hrothgar, I take it they were not primitive, used to the little things that bring joy to life?~
EXTERN NJHROB LeiDear2


CHAIN VPLEIB DeArnise18
~(*She starts to whistle a tune... softly, and suddenly you feel you should be paying more attention to what the bard is saying*)... Just curious, Hrothgar. By the way did you have galas, summer parties and such like, or were such gatherings more of the eat, drink and roll off to bed sort?~
EXTERN NJHROB LeiDear3


CHAIN VPLEIB DeArnise19
~(*Turning to Dar*) Dar, tell me, did they teach you to wash behind your ears at the temple when you were young?~
EXTERN NJDARB LeiDear1


CHAIN VPLEIB DeArnise20
~Dar, my most apologies. I did not mean to offend you, you are a most worthy friend one of whom I would gladly share a dance with were we to have a party.~
EXTERN NJDARB LeiDear2


CHAIN VPLEIB DeArnise21
~Dar, nothing can be as bad as <CHARNAME>'s singing. Trust me, I am a bard and know, that with the right music you can float like a butterfly.~
END
 ++ ~(*The group stifle their chuckles and you decide enough is enough*) Excuse me, excuse me. Not only am I alive here but also in possession of a good pair of ears.~ EXTERN VPLEIB DeArnise26
 ++ ~(*The group stifle their chuckles and you decide enough is enough*) Now you just wait a minute there you two. I'm not some dead person to be ignored here.~ EXTERN VPLEIB DeArnise26
 ++ ~(*The group stifle their chuckles and you decide enough is enough*) I can not believe my ears. Are you saying I can not carry a tune? I am not dead yet!~ EXTERN VPLEIB DeArnise26
 ++ ~(*The group stifle their chuckles and you decide enough is enough*) Am I dead, please some one pinch me. I am alive aren't I?~ EXTERN VPLEIB DeArnise26


CHAIN VPLEIB DeArnise22
~Minsc when you were in Rasheman did they have Keeps such as this? And did they throw parties or festivals?~
EXTERN BMINSC LeiDear1


CHAIN VPLEIB DeArnise23
~Then Minsc we must stay here so you can enjoy a feast and sing merry songs.~
EXTERN BMINSC LeiDear2


CHAIN VPLEIB DeArnise24
~Minsc you make me laugh! No, we shall sing better then <CHARNAME>, now that brings terror into even a bards heart.~
EXTERN BMINSC LeiDear3


CHAIN VPLEIB DeArnise25
~Ssssh... Minsc you should not be so loud, <CHARNAME> might think you are making fun of <PRO_HIMHER>.~
EXTERN BMINSC LeiDear4


CHAIN VPLEIB DeArnise25a
~(*Smiling and feigns a puzzled look as she looks at you*)...~
END
 ++ ~(*The group stifle their chuckles and you decide enough is enough*) Excuse me, excuse me. Not only am I alive here but also in possession of a good pair of ears.~ EXTERN VPLEIB DeArnise26
 ++ ~(*The group stifle their chuckles and you decide enough is enough*) Now you just wait a minute there you two. I'm not some dead person to be ignored here.~ EXTERN VPLEIB DeArnise26
 ++ ~(*The group stifle their chuckles and you decide enough is enough*) I can not believe my ears. Are you saying I can not carry a tune? I am not dead yet!~ EXTERN VPLEIB DeArnise26
 ++ ~(*The group stifle their chuckles and you decide enough is enough*) Am I dead, please some one pinch me. I am alive aren't I?~ EXTERN VPLEIB DeArnise26


CHAIN VPLEIB DeArnise26
~<CHARNAME>, what ever is the matter... having a bad dream? Calm yourself, we can all see you... be assured, you're alive and well.~
EXTERN VPLEIB DeArnise27


CHAIN VPLEIB DeArnise27
~Now, I was just talking with Nalia and she says it would be nice to have the servants draw hot water for all of us.~
END
 ++ ~Leina, we don't have time for this we need to prepare for Irenicus.~ EXTERN VPLEIB DeArnise29
 ++ ~Leina we... ah well, what's the harm if they have enough ale to go around.~ EXTERN VPLEIB DeArnise30
 ++ ~Oh, and how grateful is she?~ EXTERN VPLEIB DeArnise31


CHAIN VPLEIB DeArnise28
~(*Turning to you*) I was just talking with Nalia and she says it would be nice to have the servants draw hot water for all of us.~
END
 ++ ~Leina, we don't have time for this we need to prepare for Irenicus.~ EXTERN VPLEIB DeArnise29
 ++ ~Leina we... ah well, what's the harm if they have enough ale to go around.~ EXTERN VPLEIB DeArnise30
 ++ ~Oh, and how grateful is she?~ EXTERN VPLEIB DeArnise31


CHAIN VPLEIB DeArnise29
~If you don't bathe Irenicus isn't going to need magic you know you are coming, or are you perhaps hoping to kill him with the stench... a stink cloud has nothing on you <CHARNAME>.~
END
 ++ ~I'll ignore that, you would think the world revolved around a fluffy towel but as it doesn't, we leave immediately in the morning.~ EXTERN VPLEIB DeArnise33
 ++ ~What? You know what I think... that maybe 'she' would be more tolerable with an ale or two in her.~ EXTERN VPLEIB DeArnise35
 ++ ~So you think that if we smell like roses we can get any closer to our quarry?~ EXTERN VPLEIB DeArnise36


CHAIN VPLEIB DeArnise30
~Then I'll instruct Nalia not to give you any ale until you've bathed.~
END
 ++ ~I'll ignore that, you would think the world revolved around a fluffy towel but as it doesn't, we leave immediately in the morning.~ EXTERN VPLEIB DeArnise33
 ++ ~What? You know what I think... that maybe 'she' would be more tolerable with an ale or two in her.~ EXTERN VPLEIB DeArnise35
 ++ ~So you think that if we smell like roses we can get any closer to our quarry?~ EXTERN VPLEIB DeArnise36


CHAIN VPLEIB DeArnise31
~(*Rolls her eyes*) <CHARNAME>, manners please! If you don't want us thinking you no better than a troll, you would do well to get your mind out of the privy!!~
END
 ++ ~I'll ignore that, you would think the world revolved around a fluffy towel but as it doesn't, we leave immediately in the morning.~ EXTERN VPLEIB DeArnise33
 ++ ~What? You know what I think... that maybe 'she' would be more tolerable with an ale or two in her.~ EXTERN VPLEIB DeArnise35
 ++ ~So you think that if we smell like roses we can get any closer to our quarry?~ EXTERN VPLEIB DeArnise36


CHAIN VPLEIB DeArnise32
~Sissy... I think not, but a show of some manners won't go amiss.~
END
 ++ ~I'll ignore that, you would think the world revolved around a fluffy towel but as it doesn't, we leave immediately in the morning.~ EXTERN VPLEIB DeArnise33
 ++ ~What? You know what I think... that maybe 'she' would be more tolerable with an ale or two in her.~ EXTERN VPLEIB DeArnise35
 ++ ~So you think that if we smell like roses we can get any closer to our quarry?~ EXTERN VPLEIB DeArnise36


CHAIN VPLEIB DeArnise33
~Stop talking my lines! We're not leaving until you have a bathe.~
EXTERN VPLEIB DeArnise34


CHAIN VPLEIB DeArnise34
~Oh, and we need to keep on the best of terms with the locals so you they need to know that all the trolls are gone and that includes the stench.~
DO ~SetGlobal("VP_Ric_DeArnise","LOCALS",2)~ EXIT


CHAIN VPLEIB DeArnise35
~Didn't Gorion teach you anything about decorum?~
EXTERN VPLEIB DeArnise34


CHAIN VPLEIB DeArnise36
~Take a bathe, and for tomorrow we celebrate tomorrow. The locals need to know that all the trolls are gone and that includes the stench. Dungeon crawlers, do you think <PRO_HESHE> will ever be the first to take a bath?~
DO ~SetGlobal("VP_Ric_DeArnise","LOCALS",2)~ EXIT


IF WEIGHT #-8 ~Global("VP_Ric_Sphere","LOCALS",1)~ THEN VPLEIB Sphere1
~(*Looking puzzled*) I feel that there's something... I don't know, strange about all this.~
END
 ++ ~Why so puzzled Leina?~ EXTERN VPLEIB Sphere2
 ++ ~Is there something on your mind?~ EXTERN VPLEIB Sphere2
 ++ ~(*You wonder at her words and thinking to yourself*) [I have this feeling if I don't ask I could be missing something]... (*You shrug off the feeling*) Hey, everyone let's be off.~ EXTERN VPLEIB Sphere30
 ++ ~(*You wonder at her words and thinking to yourself*) [I have this feeling if I don't ask I could be missing something]... (*After a few minutes, you decide to ask her what's on her mind*) Out with it Leina, what's bothering you now?~ EXTERN VPLEIB Sphere2
 ++ ~(*You wonder at her words and thinking to yourself*) [I have this feeling if I don't ask I could be missing something]... (*After a few minutes, you decide to ask her what's on her mind*) Why so puzzled Leina?~ EXTERN VPLEIB Sphere2
 ++ ~(*You wonder at her words and thinking to yourself*) [I have this feeling if I don't ask I could be missing something]... (*After a few minutes, you decide to ask her what's on her mind*) You look troubled Leina, come, tell me what is amiss?~ EXTERN VPLEIB Sphere2


CHAIN VPLEIB Sphere2
~I was wondering about the oddness of what has just happened inside the sphere?~
END
 ++ ~Do you mean the task we just carried out?~ EXTERN VPLEIB Sphere3
 ++ ~Me thinks you're day dreaming again? When has anything we've done been normal?~ EXTERN VPLEIB Sphere4
 ++ ~Are you again in one of your flighty moods?~ EXTERN VPLEIB Sphere30


CHAIN VPLEIB Sphere3
~No, it's the sphere, doesn't the size of it... well make you curious?~
END
 ++ ~There you go again talking again before you say anything.~ EXTERN VPLEIB Sphere5
 ++ ~So what... haven't you seen a ball that big before?~ EXTERN VPLEIB Sphere6
 ++ ~Leina, I have no idea what you are talking about? Please be a little more specific.~ EXTERN VPLEIB Sphere5


CHAIN VPLEIB Sphere4
~At times I wish it was normal instead of pop here and popping there but doesn't the size of the sphere... well doesn't it make you curious?~
END
 ++ ~There you go again talking again before you say anything.~ EXTERN VPLEIB Sphere5
 ++ ~So what... haven't you seen a ball that big before?~ EXTERN VPLEIB Sphere6
 ++ ~Leina, I have no idea what you are talking about? Please be a little more specific.~ EXTERN VPLEIB Sphere5


CHAIN VPLEIB Sphere5
~Oh, I'm sorry. I was just observing the size of the sphere as we stand here.~
END
 ++ ~Yeah, so?~ EXTERN VPLEIB Sphere7
 ++ ~Ok?~ EXTERN VPLEIB Sphere7
 ++ ~Yeah, it is about the size of those two houses it has crushed. So?~ EXTERN VPLEIB Sphere7


CHAIN VPLEIB Sphere6
~<CHARNAME> sometimes you can be so irritatingly rude!~
END
 ++ ~Well, my sweet little petunia you aren't making any sense right now. It doesn't take a genius to see how big the thing is?~ EXTERN VPLEIB Sphere7
 ++ ~Look whose talking I can see the giant ball is as big as two houses so what?~ EXTERN VPLEIB Sphere7


CHAIN VPLEIB Sphere7
~That's just it. The size we see on the outside is just that... about two houses. Doesn't it seem strange to you that the distance we walked on the inside was much further then down the hall? For instance take where we fought the dwarves it was like a huge cave and their huts were in it also.~
END
 IF ~InParty("Korgan") !Dead("Korgan") Gender(Player1,MALE)~ THEN REPLY ~Who really cares? All I'm interested in is gold, ale, power and a warm body to crawl on.~ EXTERN VPLEIB Sphere8
 IF ~OR(2) !InParty("Korgan") Dead("Korgan") Gender(Player1,FEMALE)~ THEN REPLY ~Who really cares? All I'm interested in is gold, ale, power and a warm body to crawl on.~ EXTERN VPLEIB Sphere9
 ++ ~Can we speed this up? I have other things that need attending to.~ EXTERN VPLEIB Sphere10
 ++ ~Now that you mention it, you are right. We have been teleported so much I do not so much as watch my steps as lookout for who we are about to meet as we pop out.~ EXTERN VPLEIB Sphere11


CHAIN VPLEIB Sphere8
~(*Her finger tips start to glow, but then she thinks better of it*)...~
EXTERN BKORGAN LeiSpher1


CHAIN VPLEIB Sphere8a
~I am not a side of beef for the two of you or anyone to haggle over. Don't expect me to watch your back for the blade when next we battle for our lives!~
DO ~SetGlobal("VP_Ric_Sphere","LOCALS",2) SetGlobal("VP_MyFlirt_Is_Over","LOCALS",1)~ EXIT


CHAIN VPLEIB Sphere9
~<CHARNAME>, I see that your hearts is truly black... you haven't a care for those you help, greed alone is what drives you! I did agree to help you and I will but remember, when the quest is done I never want to see your face again.~
DO ~SetGlobal("VP_Ric_Sphere","LOCALS",2) SetGlobal("VP_MyFlirt_Is_Over","LOCALS",1)~ EXIT


CHAIN VPLEIB Sphere10
~I see you have no interest in what I have to say so let us be on our way.~
DO ~SetGlobal("VP_Ric_Sphere","LOCALS",2)~ EXIT


CHAIN VPLEIB Sphere11
~I understand that and appreciate your vigilance but since I do not lead the group I look to the sides and to the back which allows me some time to ponder on our surroundings.~
END
 ++ ~Excuse me there missy. Are you telling me now, after all this time, that you are sightseeing whilst we venture into the unknown?~ EXTERN VPLEIB Sphere13
 ++ ~I'll be damned if you continue another step with us. I'll not have you endangering the party any more.~ EXTERN VPLEIB Sphere13
 ++ ~I hope your mind wandering isn't the reason I took an arrow from behind. If it was through such day dreaming then I will have no choice but to ask you to leave... I can not allow such behaviour to endanger the others.~ EXTERN VPLEIB Sphere13


CHAIN VPLEIB Sphere13
~Oh, please <CHARNAME>, you have miss interpreted my comment wrongly!~
END
 IF ~True()~ THEN EXTERN VPLEIB Sphere13a
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN BKORGAN LeiSpher3
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN BEDWIN LeiSpher1


CHAIN VPLEIB Sphere13a
~I would no more endanger the party then put my own life in peril. I am very fond of the friends I have made in this group. Believe me, I only let my attention wander when the danger has passed and never in unknown territory or during battle.~
END
 ++ ~I think you have just said that to save your dismissal but still I must think on it. Anyway back to this sphere. What is it you have to say.~ EXTERN VPLEIB Sphere14
 ++ ~I believe you, I have no reason to mistrust you. So, what is troubling you about this sphere?~ EXTERN VPLEIB Sphere14
 ++ ~That is a relief to hear. Now back to what has gotten your curiosity up about this sphere. It surely is not just the two surroundings.~ EXTERN VPLEIB Sphere14


CHAIN VPLEIB Sphere14
~Well, I am becoming a little more used to the idea of us being teleported around. What is tickling my brain is a random thought I am trying to remember about something else being bigger on the inside then the outside.~
END
 ++ ~I have heard of a brain freeze but a brain tickle... that is one for the books. Does the memory of it make your brain laugh?~ EXTERN VPLEIB Sphere16
 ++ ~If your having a hard time remembering then it surely could not be a bard's tale, so is it about a book you have read?~ EXTERN VPLEIB Sphere17
 ++ ~If your having a hard time remembering then surely it is not a song that is tickling your brain or you would remember it. So is it some place you have visited?~ EXTERN VPLEIB Sphere17


CHAIN VPLEIB Sphere15
~Dar, that is one that we will have to explain later. Right now I am trying to remember an object that is bigger on the outside then on the inside.~
END
 IF ~OR(2) !InParty("njhroth") Dead("njhroth")~ THEN REPLY ~An Inn?~ EXTERN VPLEIB Sphere18
 IF ~OR(2) !InParty("njhroth") Dead("njhroth")~ THEN REPLY ~A Windmill?~ EXTERN VPLEIB Sphere18
 IF ~OR(2) !InParty("njhroth") Dead("njhroth")~ THEN REPLY ~A Dungeon?~ EXTERN VPLEIB Sphere18
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiSpher1


CHAIN VPLEIB Sphere16
~Please stop side tracking me and think of an object that is bigger on the outside then on the inside for me.~
END
 IF ~OR(2) !InParty("njhroth") Dead("njhroth") OR(2) !InParty("njdar") Dead("njdar")~ THEN REPLY ~An Inn?~ EXTERN VPLEIB Sphere18
 IF ~OR(2) !InParty("njhroth") Dead("njhroth") OR(2) !InParty("njdar") Dead("njdar")~ THEN REPLY ~A Windmill?~ EXTERN VPLEIB Sphere18
 IF ~OR(2) !InParty("njhroth") Dead("njhroth") OR(2) !InParty("njdar") Dead("njdar")~ THEN REPLY ~A Dungeon?~ EXTERN VPLEIB Sphere18
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiSpher1
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiSpher1


CHAIN VPLEIB Sphere17
~Not a book or a place I visited but it has to do with a song for I keep getting this tune in my head, now what I need is an object that is bigger on the inside then outside.~
END
 IF ~OR(2) !InParty("njhroth") Dead("njhroth") OR(2) !InParty("njdar") Dead("njdar")~ THEN REPLY ~An Inn?~ EXTERN VPLEIB Sphere18
 IF ~OR(2) !InParty("njhroth") Dead("njhroth") OR(2) !InParty("njdar") Dead("njdar")~ THEN REPLY ~A Windmill?~ EXTERN VPLEIB Sphere18
 IF ~OR(2) !InParty("njhroth") Dead("njhroth") OR(2) !InParty("njdar") Dead("njdar")~ THEN REPLY ~A Dungeon?~ EXTERN VPLEIB Sphere18
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiSpher1
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiSpher1


CHAIN VPLEIB Sphere18
~Oh no it is much, much smaller then anything like that.~
END
 IF ~OR(2) !InParty("Yoshimo") Dead("Yoshimo") OR(2) !InParty("Minsc") Dead("Minsc") OR(2) !InParty("Edwin") Dead("Edwin") OR(2) !InParty("Jaheira") Dead("Jaheira") OR(2) !InParty("Korgan") Dead("Korgan") OR(2) !InParty("Nalia") Dead("Nalia") OR(2) !InParty("Valygar") Dead("Valygar") OR(2) !InParty("njdar") Dead("njdar") OR(2) !InParty("njmelora") Dead("njmelora") OR(2) !InParty("njtaffic") Dead("njtaffic")~ THEN REPLY ~A gem bag?~ EXTERN VPLEIB Sphere19
 IF ~OR(2) !InParty("Yoshimo") Dead("Yoshimo") OR(2) !InParty("Minsc") Dead("Minsc") OR(2) !InParty("Edwin") Dead("Edwin") OR(2) !InParty("Jaheira") Dead("Jaheira") OR(2) !InParty("Korgan") Dead("Korgan") OR(2) !InParty("Nalia") Dead("Nalia") OR(2) !InParty("Valygar") Dead("Valygar") OR(2) !InParty("njdar") Dead("njdar") OR(2) !InParty("njmelora") Dead("njmelora") OR(2) !InParty("njtaffic") Dead("njtaffic")~ THEN REPLY ~A flask?~ EXTERN VPLEIB Sphere19
 IF ~OR(2) !InParty("Yoshimo") Dead("Yoshimo") OR(2) !InParty("Minsc") Dead("Minsc") OR(2) !InParty("Edwin") Dead("Edwin") OR(2) !InParty("Jaheira") Dead("Jaheira") OR(2) !InParty("Korgan") Dead("Korgan") OR(2) !InParty("Nalia") Dead("Nalia") OR(2) !InParty("Valygar") Dead("Valygar") OR(2) !InParty("njdar") Dead("njdar") OR(2) !InParty("njmelora") Dead("njmelora") OR(2) !InParty("njtaffic") Dead("njtaffic")~ THEN REPLY ~A clay jar?~ EXTERN VPLEIB Sphere19
 IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN BYOSHIM LeiSpher2
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN BMINSC LeiSpher2
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN BEDWIN LeiSpher3
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN BJAHEIR LeiSpher2
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN BKORGAN LeiSpher5
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN BNALIA LeiSpher2
 IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN BVALYGA LeiSpher2
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiSpher3
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiSpher3
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiSpher2


CHAIN VPLEIB Sphere19
~Now don't be silly I said smaller, not tiny or teeny-weeny. It is not as big as a house nor is it as small as a mouse. It has to be big enough for you to get into. So it is about the dimensions to easily hold a person.~
END
 IF ~OR(2) !InParty("Yoshimo") Dead("Yoshimo") OR(2) !InParty("Minsc") Dead("Minsc") OR(2) !InParty("Edwin") Dead("Edwin") OR(2) !InParty("Jaheira") Dead("Jaheira") OR(2) !InParty("Korgan") Dead("Korgan") OR(2) !InParty("Nalia") Dead("Nalia") OR(2) !InParty("Valygar") Dead("Valygar") OR(2) !InParty("njdar") Dead("njdar") OR(2) !InParty("njmelora") Dead("njmelora") OR(2) !InParty("njtaffic") Dead("njtaffic")~ THEN REPLY ~A box?~ EXTERN VPLEIB Sphere20
 IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN BYOSHIM LeiSpher3
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN BMINSC LeiSpher3
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN BEDWIN LeiSpher4
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN BJAHEIR LeiSpher3
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN BKORGAN LeiSpher6
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN BNALIA LeiSpher3
 IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN BVALYGA LeiSpher3
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiSpher4
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiSpher4
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiSpher3


CHAIN VPLEIB Sphere20
~That's it, that's it. It's a box!!!~
END
 ++ ~Are you sure? That is to simple to say just a box.~ EXTERN VPLEIB Sphere21
 ++ ~I think you have lost it now. A box???~ EXTERN VPLEIB Sphere21
 ++ ~Do expect us to really believe you've been tickled by a box?~ EXTERN VPLEIB Sphere21


CHAIN VPLEIB Sphere21
~Oh yes, yes, yes. Now I remember the ballad or at least part of it. A friend of my father's use to make me laugh when I was little by singing it.~
END
 ++ ~I would like to hear this ballad or what you remember since it held your attention for so long.~ EXTERN VPLEIB Sphere22
 ++ ~Leina... I do believe this is the first real smile we have seen since you joined our group... and what a pretty a smile it is. Please, I would be delighted to hear this silly little song of yours.~ EXTERN VPLEIB Sphere22
 ++ ~I tire of these games Leina, maybe some other time... right now I think an ale would do us all some good.~ EXTERN VPLEIB Sphere27


CHAIN VPLEIB Sphere22
~Let's see I remember I would always hoot back at him like an owl going who, who, who.~
END
 ++ ~(*You give a half smile and...*)~ EXTERN VPLEIB Sphere23
 ++ ~(*You smirk and shake your head...*)~ EXTERN VPLEIB Sphere23


CHAIN VPLEIB Sphere23
~It was about a bard that met a man who had a box that was bigger on the inside then out. The tale speaks of out of no where a box appeared with a strange noise and out steps a strangely clothed wizard whom no one can remember his name.~
END
 ++ ~Why is it that no one knows his name? Did he not tell anyone... who and why would he keep it a secret?~ EXTERN VPLEIB Sphere24
 ++ ~The tales of bards are given more fantasy then to fact. No wonder it is so goofy.~ EXTERN VPLEIB Sphere24


CHAIN VPLEIB Sphere24
~Well that is what made the song so silly. It joked of the bard gone mad by a wizard who never said his name that lived in a box with many rooms. Then in the song I was asked can you tell me who was his name? I would chant back excitedly, who, who, who was his name don't know who, who, who he is, please tell me who, who, who was his name.~
END
 ++ ~Well that surely must have been silly for a child. I think I would need about a keg in me before I would start chanting like an owl in public.~ EXTERN VPLEIB Sphere25
 ++ ~You must have sounded daft... hooting like an owl.~ EXTERN VPLEIB Sphere25


CHAIN VPLEIB Sphere25
~Oh, <CHARNAME>, that is just it. It is no more then a silly song but it does make me wonder now if part of it could be true after seeing this sphere.~
END
 IF ~True()~ THEN EXTERN VPLEIB Sphere26
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN BJAHEIR LeiSpher4
 IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN BVALYGA LeiSpher4
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiSpher2


CHAIN VPLEIB Sphere26
~Oh <CHARNAME> can I ask one more question? (*She touches your arm to get your attention*)~
END
 ++ ~I don't see why not?~ EXTERN VPLEIB Sphere27
 ++ ~If it has nothing to do with that song go ahead.~ EXTERN VPLEIB Sphere27
 ++ ~Not if it involves big and little boxes.~ EXTERN VPLEIB Sphere27


CHAIN VPLEIB Sphere27
~Since you said you needed a tankard and the Copper Coronet is right there and there is so little left to do in the sphere right now.~
END
 ++ ~Your quite right an ale... and a wench... would loosen up my muscles right now.~ EXTERN VPLEIB Sphere28
 ++ ~An ale and the delights of the Coronet, I think you're understanding me at last Leina.~ EXTERN VPLEIB Sphere28
 ++ ~(*Smiling*) An ale and some sensible conversation certainly wouldn't go amiss.~ EXTERN VPLEIB Sphere28


CHAIN VPLEIB Sphere28
~Well, I was thinking more of a hot bath and a warm fluffy towel to wrap up in. What say you... (*As Leina jumps down from the porch and races away, you hear...*) Last one pays.~
END
 ++ ~(*You follow her*) We'll see...~ EXTERN VPLEIB Sphere29
 ++ ~I'll never understand that girl!~ EXTERN VPLEIB Sphere29
 ++ ~All she had to do was ask...~ EXTERN VPLEIB Sphere29


CHAIN VPLEIB Sphere29
~(*Glancing back*) I heard that... admit it, you were all intrigued by my little tale back there.~
DO ~SetGlobal("VP_Ric_Sphere","LOCALS",2)~ EXIT


CHAIN VPLEIB Sphere30
~Oh, <CHARNAME> I'm sorry my thoughts were else where what did you say?~
END
 ++ ~Leina, you were away with the elves. Girl, someday you'll lose your head... I said let's go.~ EXTERN VPLEIB Sphere31
 ++ ~Girl if you don't pay more attention. You'll be the death of us all.~ EXTERN VPLEIB Sphere31
 ++ ~I said you have a nice toush.~ EXTERN VPLEIB Sphere33


CHAIN VPLEIB Sphere31
~Give me some credit, I am quite aware of the dangers of my surroundings. Now, don't you think it is time for an ale?~
END
 ++ ~Now that you mention it, that is a great idea.~ EXTERN VPLEIB Sphere32
 ++ ~Ale? Is that all that is on your mind?~ EXTERN VPLEIB Sphere32
 ++ ~Ale and a hot meal sounds great.~ EXTERN VPLEIB Sphere32


CHAIN VPLEIB Sphere32
~Besides the ale, I was thinking a hot bath and a warm fluffy towel would be just so fine. Hey, and the last one to the Coronet pays. (*Leina leaps over the edge and is off before you can respond.*)~
DO ~SetGlobal("VP_Ric_Sphere","LOCALS",2)~ EXIT


CHAIN VPLEIB Sphere33
~(*She spins around*) Um... do you think so... better than The Coronet's best ale do you reckon? I'm thinking now would be a good time to put that to the test. What do you say?~
END
 ++ ~Now that you mention it, that is a great idea.~ EXTERN VPLEIB Sphere32
 ++ ~Ale? Is that all that is on your mind?~ EXTERN VPLEIB Sphere32
 ++ ~Ale and a hot meal sounds great.~ EXTERN VPLEIB Sphere32


IF WEIGHT #-9 ~Global("VP_LoveTalk","LOCALS",20)~ THEN VPLEIB PCM9Leina1
~(*Dropping her backpack to the ground, she sits down opposite you and begins rubbing her shoulders)... Ah, sweet relief... it's good to sit at last! I swear that pack gets heavier by the hour.~
END
 ++ ~You'll survive... a little muscle ache never killed anyone. I recommend you get some rest... it'll be awhile before we can offload and lighten our packs.~ DO ~SetGlobal("VP_LoveTalk","LOCALS",21)~ EXTERN VPLEIB PCM9Leina2
 ++ ~Oooh... that looks good! How's about coming over here and giving mine a bit of a rub when you're done?~ DO ~SetGlobal("VP_LoveTalk","LOCALS",21)~ EXTERN VPLEIB PCM9Leina3
 ++ ~(*You begin rubbing your own shoulders*)... Mmm... I know what you mean, still, eight hours rest should see us right.~ DO ~SetGlobal("VP_LoveTalk","LOCALS",21)~ EXTERN VPLEIB PCM9Leina3
 ++ ~(*You begin rubbing your own shoulders*)... I know what you mean. What do you think... maybe someone is slipping stuff in our packs when we're not looking?~ DO ~SetGlobal("VP_LoveTalk","LOCALS",21)~ EXTERN VPLEIB PCM9Leina13
 ++ ~If the lady will permit... I'm a dab hand at the easing of tired shoulders, or so I've been told?~ DO ~SetGlobal("VP_LoveTalk","LOCALS",21)~ EXTERN VPLEIB PCM9Leina14


CHAIN VPLEIB PCM9Leina2
~A while you say... then if it's all the same to you, I'll make my bed right here where I dropped the darned thing. I don't see any point in picking it up again just to lug another couple of feet... here will do just fine for me. Sleep well <CHARNAME>.~
EXIT


CHAIN VPLEIB PCM9Leina3
~(*Standing up, she walks across and puts her hands on the back of your neck*)... Here let me, a person needs to be a contortionist to reach the parts that ache the most.~
END
 ++ ~(*Shrugging her hands away*) This isn't necessary Leina, we should be thinking about getting some sleep.~ EXTERN VPLEIB PCM9Leina4
 ++ ~(*You're surprised to find your body responding to her touch*) Mmm... that feels so good Leina!~ EXTERN VPLEIB PCM9Leina5
 ++ ~(*You open your mouth to protest, but the touch of her hand ties your tongue in knots*) Mmm... uh...~ EXTERN VPLEIB PCM9Leina5
 ++ ~(*You feel your body tense at her touch*) Leina please... what are you doing?~ EXTERN VPLEIB PCM9Leina12


CHAIN VPLEIB PCM9Leina4
~(*Looking up at you, she lets her hands fall to her sides*)... Sleep of course, what was I thinking of.... (*She turns away*) I hope you sleep well <CHARNAME>.~
EXIT


CHAIN VPLEIB PCM9Leina5
~(*She spends a few minutes expertly applying just the right amount of pressure to your aching muscles and soon you find yourself feeling more relaxed*)... It feels like these shoulders have been carrying the weight of the world around all day... not a mere backpack. Now, how does that feel?~
END
 ++ ~Don't stop... I can feel them starting to seize up again!~ EXTERN VPLEIB PCM9Leina6
 ++ ~Just a little to the left Leina... now down a bit...~ EXTERN VPLEIB PCM9Leina6
 ++ ~Like I've been trampled over by an angry bear! I guess first watch is mine now, seeing as how you've pummelled me into wakefulness.~ EXTERN VPLEIB PCM9Leina6
 ++ ~Like I've gone two rounds with an angry bear... only joking! (*Taking her hands in yours*) You have the most amazing hands Leina.~ EXTERN VPLEIB PCM9Leina8
 ++ ~Me thinks the bard has great magic in her hands as well as her song.~ EXTERN VPLEIB PCM9Leina8


CHAIN VPLEIB PCM9Leina6
~(*Laughing softly, she prods you playfully between your shoulder blades*)... The idea is to relax you <CHARNAME>, to bring sleep more readily to your weary body, not to awaken it!~
END
 ++ ~(*Reaching out, you grasp her hands*) It's very difficult to feel anything but awake with you standing so close to me. The scent of you beside me... it pervades my senses, permeates every fibre of my body... Leina, you are so beautiful!~ EXTERN VPLEIB PCM9Leina7
 ++ ~(*Reaching out, you grasp her hands*) If sleep is the lady's intention, then perhaps the lady shouldn't be standing quite so close. Surely she is not so blind that she cannot see how the smell of her hair, her smile, the nearness of her sets my heart racing!~ EXTERN VPLEIB PCM9Leina7
 ++ ~(*Reaching out, you grasp her hands*) You take my breath away Leina and yet, you really have no idea of the turmoil you stir within me when you are standing so close beside me... it's all I can do to stop myself from sweeping you in my arms and losing myself in you!~ EXTERN VPLEIB PCM9Leina11
 ++ ~Yes, well... I'm sure that if you stop prodding my shoulders, sleep will come eventually.~ EXTERN VPLEIB PCM9Leina4
 ++ ~(*Reaching out, you grasp her hands*) Damn you Leina! Can't you see how darned difficult it is for me to think of sleep with you standing this close beside me. If sleep was what the lady had in mind then she should have tried a lullaby... not her hands!~ EXTERN VPLEIB PCM9Leina9


CHAIN VPLEIB PCM9Leina7
~(*She touches your hands to her face for a second... then lets them drop*)... I can not deny it, I find myself drawn to you in much the same way the compass needle is drawn to ever point north... and yet, I can not give you love <CHARNAME>. I promised my heart it would never be asked to risk such pain again.~
 = ~Instead, it has filled itself with the joy of music, and in doing so, has shown me a love that surpasses any passion of a materialistic nature... a love that is safe and will never hurt either me, or my heart again. That is all the love I shall ever need.~
 = ~(*Then, putting her finger to your lips*)... Please, say no more for now, all I ask is for you to be honest with your own heart... if you are seeking love, and you feel that what I can give you is not enough, then we need say no more...~
 = ~(*Before turning and making her way to her own bed, she kisses you all too briefly on your mouth*)... Sleep well my dear <CHARNAME>.~
EXIT


CHAIN VPLEIB PCM9Leina8
~(*Untwining her fingers from yours, she turns them over and pretends to examine them... then, laughing softly*)... Must be the spell casting that does it... it leaves a little of the magic behind, but not enough magic, to bring rest to the weary body, eh <CHARNAME>?~
END
 ++ ~(*Reaching out, you grasp her hands*) It's very difficult to feel anything but awake with you standing so close to me. The scent of you beside me... it pervades my senses, permeates every fibre of my body... Leina, you are so beautiful!~ EXTERN VPLEIB PCM9Leina7
 ++ ~(*Reaching out, you grasp her hands*) If sleep is the lady's intention, then perhaps the lady shouldn't be standing quite so close. Surely she is not so blind that she cannot see how the smell of her hair, her smile, the nearness of her sets my heart racing!~ EXTERN VPLEIB PCM9Leina7
 ++ ~(*Reaching out, you grasp her hands*) You take my breath away Leina and yet, you really have no idea of the turmoil you stir within me when you are standing so close beside me... it's all I can do to stop myself from sweeping you in my arms and losing myself in you!~ EXTERN VPLEIB PCM9Leina11
 ++ ~Yes, well... I'm sure that if you stop prodding my shoulders, sleep will come eventually.~ EXTERN VPLEIB PCM9Leina4
 ++ ~(*Reaching out, you grasp her hands*) Damn you Leina! Can't you see how darned difficult it is for me to think of sleep with you standing this close beside me. If sleep was what the lady had in mind then she should have tried a lullaby... not her hands!~ EXTERN VPLEIB PCM9Leina9


CHAIN VPLEIB PCM9Leina9
~(*Untwining her fingers from yours*)... So, what do you suggest, the next time your shoulders complain, I sing to them... and what sort of a melody do you think they would prefer <CHARNAME>?~
END
 ++ ~Quit being coy Leina! If all you have in mind is to tease a man, then I ask that you find another to play with!~ EXTERN VPLEIB PCM9Leina10
 ++ ~Leina please, you are not so naive as not to follow my meaning!~ EXTERN VPLEIB PCM9Leina10
 ++ ~My words were not meant to amuse you... as you well you know!~ EXTERN VPLEIB PCM9Leina10


CHAIN VPLEIB PCM9Leina10
~(*Taking your hands once more in hers*) I am sorry, I didn't mean to sound so flippant...~
EXTERN VPLEIB PCM9Leina7


CHAIN VPLEIB PCM9Leina11
~It wasn't my intention to bring further turmoil into your life <CHARNAME>, I thought only to ease your weariness...~
EXTERN VPLEIB PCM9Leina7


CHAIN VPLEIB PCM9Leina12
~Relax <CHARNAME>, I'm just trying to release some of this tension. Trust me... your shoulders will thank me by the time I am done here.~
END
 ++ ~(*Shrugging her hands away*) This isn't necessary Leina, we should be thinking about getting some sleep.~ EXTERN VPLEIB PCM9Leina4
 ++ ~(*You're surprised to find your body responding to her touch*) Mmm... that feels so good Leina!~ EXTERN VPLEIB PCM9Leina5
 ++ ~(*You open your mouth to protest, but the touch of her hand ties your tongue in knots*) Mmm... uh...~ EXTERN VPLEIB PCM9Leina5


CHAIN VPLEIB PCM9Leina13
~Now there's a thought! (*Looking around and deliberately raising her voice*) Woe betide you filler of backpacks, whoever you are... for the next store we visit, we may perchance enquire as to the availability of mousetraps.~
EXTERN VPLEIB PCM9Leina3


CHAIN VPLEIB PCM9Leina14
~(*She laughs softly and as she does so, a gleam of mischief comes to her eyes*)... Maybe the lady should enquire, as to how <CHARNAME> discovered this dab hand that he has been so highly complimented on... before the lady gives her permission?~
END
 ++ ~Forget it Leina! If you feel the need to question my integrity, then you'd benefit more by getting some rest to ease your weariness.~ EXTERN VPLEIB PCM9Leina15
 ++ ~The lady may ask, but a gentleman never tells.~ EXTERN VPLEIB PCM9Leina16
 ++ ~Trust me... if I say I am good... I am good!~ EXTERN VPLEIB PCM9Leina16
 ++ ~It's a Bhaal thing... a gift you might say.~ EXTERN VPLEIB PCM9Leina17


CHAIN VPLEIB PCM9Leina15
~I am sorry... my words were meant as a jest, not an insult. As you say, we should probably call it a day... the rest of the group have already retired and we would both benefit from some rest. I apologise once again for my flippancy... I hope you sleep well.~
EXIT


CHAIN VPLEIB PCM9Leina16
~(*Standing up, she walks across... settling herself beside you*)... In that case, I am going to have to judge for myself... permission granted...~
 = ~(*You place your hands on the nape of the neck offered you, and you begin to gently massage Leina's tired muscles. As you feel the tension begin to leave them, you move to her shoulders*)...~
 = ~(*After a few minutes, you sense her body relax under your hands, she gives a sigh of contentment... making you suddenly aware of your own body as it responds to the scent and the closeness of Leina*)...~
END
 ++ ~(*Reaching out, you grasp her hands*) It's very difficult to feel anything but awake with you standing so close to me. The scent of you beside me... it pervades my senses, permeates every fibre of my body... Leina, you are so beautiful!~ EXTERN VPLEIB PCM9Leina7
 ++ ~(*Reaching out, you grasp her hands*) If sleep is the lady's intention, then perhaps the lady shouldn't be standing quite so close. Surely she is not so blind that she cannot see how the smell of her hair, her smile, the nearness of her sets my heart racing!~ EXTERN VPLEIB PCM9Leina7
 ++ ~(*Reaching out, you grasp her hands*) You take my breath away Leina and yet, you really have no idea of the turmoil you stir within me when you are standing so close beside me... it's all I can do to stop myself from sweeping you in my arms and losing myself in you!~ EXTERN VPLEIB PCM9Leina11


CHAIN VPLEIB PCM9Leina17
~(*Standing up, she walks across... settling herself beside you*)... The lady is not at all sure she should trust a gift given by the god of murder, but on the other hand, she trusts the man who was granted the gift. So the lady grants her permission...~
 = ~(*You place your hands on the nape of the neck offered you, and you begin to gently massage Leina's tired muscles. As you feel the tension begin to leave them you move to her shoulders*)...~
 = ~(*After a few minutes, you sense her body relax under your hands, she gives a sigh of contentment... making you suddenly aware of your own body as it responds to the scent and the closeness of Leina*)...~
END
 ++ ~(*You fingers continue to gently knead Leina's shoulders... only a little more slowly*)... So, how is it, am I good... or am I good?~ EXTERN VPLEIB PCM9Leina18
 ++ ~(*You fingers continue to gently knead Leina's shoulders... only a little more slowly*)... I take it the lady is feeling much better now?~ EXTERN VPLEIB PCM9Leina18
 ++ ~(*You suddenly feel flushed and awkward... quickly you drop your hands*)... I... um... er... perhaps that is enough for now.~ EXTERN VPLEIB PCM9Leina18
 ++ ~(*You fingers continue to gently knead Leina's shoulders... only a little more slowly*)... Wow, I don't know about you Leina, but I'm feeling pretty good!~ EXTERN VPLEIB PCM9Leina18


CHAIN VPLEIB PCM9Leina18
~You have wonderful hands <CHARNAME>! I find it hard to believe that the taint of murder runs through them... they feel such good, gentle hands.~
 = ~(*She yawns and smiles at you mischievously*) I feel so deliciously relaxed and tired now... yet, I see you are very much awake. Maybe a lullaby <CHARNAME>... to ease your way to sleep as you have eased mine?~
END
 ++ ~(*Reaching out, you grasp her hands*) It's very difficult to feel anything but awake with you standing so close to me. The scent of you beside me... it pervades my senses, permeates every fibre of my body... Leina, you are so beautiful!~ EXTERN VPLEIB PCM9Leina7
 ++ ~(*Reaching out, you grasp her hands*) If sleep is the lady's intention, then perhaps the lady shouldn't be standing quite so close. Surely she is not so blind that she cannot see how the smell of her hair, her smile, the nearness of her sets my heart racing!~ EXTERN VPLEIB PCM9Leina7
 ++ ~(*Reaching out, you grasp her hands*) You take my breath away Leina and yet, you really have no idea of the turmoil you stir within me when you are standing so close beside me... it's all I can do to stop myself from sweeping you in my arms and losing myself in you!~ EXTERN VPLEIB PCM9Leina11


IF WEIGHT #-10 ~Global("VP_LoveTalk","LOCALS",23)~ THEN VPLEIB PCM10Leina1
~(*Looking at the object in her hand, she sighs and starts to walk away from the group*)...~
END
 ++ ~(*You glimpse the bard's back and note her leaving, but you are too exhausted to follow her.*)~ DO ~SetGlobal("VP_LoveTalk","LOCALS",24)~ EXIT
 ++ ~(*Suddenly aware that Leina is alone, you push all feelings of exhaustion from your body and you follow her*)...~ DO ~SetGlobal("VP_LoveTalk","LOCALS",24)~ EXTERN VPLEIB PCM10Leina2
 ++ ~(*You are irritated by her thoughtlessness at putting herself at risk and going off alone, you stomp off after her*)... Now what the blazes is she up too, damn fool girl!)~ DO ~SetGlobal("VP_LoveTalk","LOCALS",24)~ EXTERN VPLEIB PCM10Leina2
 ++ ~(*You are irritated by her thoughtlessness at putting herself at risk and going off alone*)... If she's foolish enough to creep off alone, then she can't expect me to chase after her... I've done enough baby sitting for one day! (*You make your way to your own bed*).~ DO ~SetGlobal("VP_LoveTalk","LOCALS",24)~ EXIT


CHAIN VPLEIB PCM10Leina2
~(*You find Leina standing by the river. As you approach she looks again at the object she is holding, and then raising her hand, she hurls whatever it was she was holding into the middle of the rushing waters... she sighs*) It is done.~
END
 ++ ~You ok. Leina?~ EXTERN VPLEIB PCM10Leina3
 ++ ~Leina, it isn't safe to be out here alone. Please, return with me to the group.~ EXTERN VPLEIB PCM10Leina3
 ++ ~IF I'm not intruding, I thought you might like some company?~ EXTERN VPLEIB PCM10Leina3
 ++ ~You crazy or something bard, putting us both in danger by making me chase all the way out here after you!~ EXTERN VPLEIB PCM10Leina3


CHAIN VPLEIB PCM10Leina3
~(*At the sound of your voice, she jumps and makes a grab for her sword... you'd swear you could just make out tears drying on her cheeks*)...~
 = ~What! Oh, it's you <CHARNAME>, I didn't realise anyone had followed me. I am sorry, I hadn't meant to disturb your rest.~
END
 ++ ~I didn't mean to startle you. You look kinda funny, you sure you are ok?~ EXTERN VPLEIB PCM10Leina4
 ++ ~I was taking a stroll myself when I heard your voice... it sounded kind of strange. You ok?~ EXTERN VPLEIB PCM10Leina4
 ++ ~Woa... put that darn sword away! I only came out here to stop you from getting yourself killed. What do you mean by wandering off alone?~ EXTERN VPLEIB PCM10Leina4
 ++ ~Hey steady up there... yes it's only me. You going to tell me what you're doing out here by yourself?~ EXTERN VPLEIB PCM10Leina5


CHAIN VPLEIB PCM10Leina4
~Thank you for your concern, but I am fine, truly I am. There was something that needed doing, something that would symbolise the finality of my life with Bjorn... and now, it is done.~
END
 ++ ~I saw you throw something into the river... something Bjorn gave you?~ EXTERN VPLEIB PCM10Leina6
 ++ ~I thought you'd closed that chapter when you confronted Bjorn. What has caused the tears to return?~ EXTERN VPLEIB PCM10Leina6
 ++ ~To see tears return to eyes I had hoped never to see cry again, brings sadness to my own Leina. Please tell me that by throwing whatever it was you just threw into the river, there'll be no more tears for a man not worthy of them?~ EXTERN VPLEIB PCM10Leina7
 ++ ~Good because not only am I exhausted, I'm freezing my butt off standing here. Now can we please get back to the warmth and safety of our beds.~ EXTERN VPLEIB PCM10Leina10


CHAIN VPLEIB PCM10Leina5
~Something I should have done a long time ago and now it is done. The final link that held me to Bjorn is now lies where my eyes need never look upon it again. Yes... it is done and I am content.~
END
 ++ ~I saw you throw something into the river... something Bjorn gave you?~ EXTERN VPLEIB PCM10Leina6
 ++ ~I thought you'd closed that chapter when you confronted Bjorn. What has caused the tears to return?~ EXTERN VPLEIB PCM10Leina6
 ++ ~To see tears return to eyes I had hoped never to see cry again, brings sadness to my own Leina. Please tell me that by throwing whatever it was you just threw into the river, there'll be no more tears for a man not worthy of them?~ EXTERN VPLEIB PCM10Leina7
 ++ ~Good because not only am I exhausted, I'm freezing my butt off standing here. Now can we please get back to the warmth and safety of our beds.~ EXTERN VPLEIB PCM10Leina10


CHAIN VPLEIB PCM10Leina6
~The last symbol of my life as wife to Bjorn. The wedding ring he gave to me, a symbol he said of his everlasting love and devotion, which instead, proved to be a symbol of false love and deceit...~
 = ~...well now it lies deep in the mud of the river, a fitting place for it. With it gone there is nothing left to stir the memories of the foolish hopes I once had for the future.~
 = ~Now that I have accepted music is my future, my heart is at last free.~
END
 ++ ~(*You take her hand and looking into her eyes*) Leina, you can never be sure that which you are content to accept today, you will be content to accept tomorrow... no one can.~ EXTERN VPLEIB PCM10Leina8
 ++ ~(*You take her hand and looking into her eyes*) You have buried the past in the river, let now be the start of your future. Come, we will walk one step at a time as we greet it.~ EXTERN VPLEIB PCM10Leina9
 ++ ~Then I am pleased for you. You have fought hard to find the happiness that evaded your heart for so long. Now come we, are not safe so far from the group.~ EXTERN VPLEIB PCM10Leina10
 ++ ~I'm glad we have got that straightened out. Now, can we please get back to the warmth and safety of our beds, I'm freezing my butt off standing here.~ EXTERN VPLEIB PCM10Leina10


CHAIN VPLEIB PCM10Leina7
~(*She touches her hand to your face... a small enough gesture, and yet the slight touch of her hand sets your heart racing*)...~
 = ~Dear <CHARNAME>, the last thing I want is to bring sadness upon you, and yet I fear, through no intention on my part, it has already begun.~
 = ~(*She traces the contours of your face with her fingertips and then slowly withdraws her hand*)... There will be no more tears or thoughts for Bjorn.~
 = ~The wedding ring he gave me, a symbol, proof he said of his everlasting love and devotion, now lies deep in the mud of the river. A fitting resting place for a thing which came to symbolise deceit and false love.~
 = ~With it lies the memories of the foolish hopes I once had for the future... now I have accepted that music is my future my heart is at last free.~
END
 ++ ~(*You take her hand and looking into her eyes*) Leina, you can never be sure that which you are content to accept today, you will be content to accept tomorrow... no one can.~ EXTERN VPLEIB PCM10Leina8
 ++ ~(*You take her hand and looking into her eyes*) You have buried the past in the river, let now be the start of your future. Come, we will walk one step at a time as we greet it.~ EXTERN VPLEIB PCM10Leina9
 ++ ~Then I am pleased for you. You have fought hard to find the happiness that evaded your heart for so long. Now come we, are not safe so far from the group.~ EXTERN VPLEIB PCM10Leina10
 ++ ~I'm glad we have got that straightened out. Now, can we please get back to the warmth and safety of our beds, I'm freezing my butt off standing here.~ EXTERN VPLEIB PCM10Leina10


CHAIN VPLEIB PCM10Leina8
~(*She returns your gaze for a moment and then moves as if to take her hand from yours, but instead, she entwines her fingers with yours*)...~
 = ~That is true and something for you to also consider <CHARNAME>, but come we need not make any decisions hastily.~
 = ~(*Then, taking a final look at the murky waters, she gently pulls you after her*)... let us just enjoy the walk back.~
EXIT


CHAIN VPLEIB PCM10Leina9
~(*She returns your gaze for a moment. Then, taking a final look at the murky waters, she clasps your hand more firmly and gently pulls you after her*)...~
 = ~Yes, the past is buried and the future begins. Instead of rushing to bring it to us, let us walk slowly as we greet it, as we let it bring to us what it will.~
 = ~Now, before the group start up a search party for us, let us make our way back.~
EXIT


CHAIN VPLEIB PCM10Leina10
~(*Taking a final look at the murky waters before turning to follow you, she sighs*)... Yes it is done... the past is buried and today the future begins.~
EXIT


IF WEIGHT #-11 ~Global("VP_LoveTalk","LOCALS",25)~ THEN VPLEIB PCM11L1
~(*Turning her pendant over in her hand she looks up as she senses your approach*) Hello <CHARNAME>, a moment to fix this and then I'll be ready to move.~
END
 ++ ~Here let me... (*You take the pendant from her, brushing your hand against her skin as you place it about her neck*)~ EXTERN VPLEIB PCM11L2
 ++ ~(*Holding your hand out to her*) May I?~ EXTERN VPLEIB PCM11L3
 ++ ~Take your time, we've a few moments yet.~ EXTERN VPLEIB PCM11L4
 ++ ~Then get on with it, we don't have all day to wait while you adorn yourself with baubles.~ EXTERN VPLEIB PCM11L5


CHAIN VPLEIB PCM11L2
~(*She shivers slightly at your touch*) Thank you <CHARNAME>. These things are so awkward to fix by oneself.~
END
 ++ ~(*As you gently move her hair from her neck, you allow your fingers to linger, to feel the smoothness of her skin*) Mmm, beautiful. Leina, isn't it time you looked to the future and let go of the past?~ EXTERN VPLEIB PCM11L7
 ++ ~There it is done. It's very beautiful Leina, but not as beautiful as the neck it lays around. I only wish its beauty wasn't tied to the past and the cause of so much sadness to you.~ EXTERN VPLEIB PCM11L7
 ++ ~Are you cold? Come, let me fasten your cloak about you.~ EXTERN VPLEIB PCM11L11
 ++ ~There, now can we move out?~ EXTERN VPLEIB PCM11L6
 ++ ~I haven't the time to mess with adornments. Either fix it yourself or put it in your pack, just be quick about it!~ EXTERN VPLEIB PCM11L6


CHAIN VPLEIB PCM11L3
~(*Looking at your outstretched hand and then at the pendant, she hesitates a moment, and then hands it to you*) Thank you <CHARNAME>. These things are so awkward to fix by oneself.~
END
 ++ ~(*As you gently move her hair from her neck, you allow your fingers to linger, to feel the smoothness of her skin*) Mmm, beautiful. Leina, isn't it time you looked to the future and let go of the past?~ EXTERN VPLEIB PCM11L7
 ++ ~There it is done. It's very beautiful Leina, but not as beautiful as the neck it lays around. I only wish its beauty wasn't tied to the past and the cause of so much sadness to you.~ EXTERN VPLEIB PCM11L7
 ++ ~Are you cold? Come, let me fasten your cloak about you.~ EXTERN VPLEIB PCM11L11
 ++ ~There, now can we move out?~ EXTERN VPLEIB PCM11L6
 ++ ~I haven't the time to mess with adornments. Either fix it yourself or put it in your pack, just be quick about it!~ EXTERN VPLEIB PCM11L6


CHAIN VPLEIB PCM11L4
~(*Holding out the pendant to you*) Then if you'd be so kind, these things are so awkward to fix by oneself?~
END
 ++ ~(*As you gently move her hair from her neck, you allow your fingers to linger, to feel the smoothness of her skin*) Mmm, beautiful. Leina, isn't it time you looked to the future and let go of the past?~ EXTERN VPLEIB PCM11L7
 ++ ~There it is done. It's very beautiful Leina, but not as beautiful as the neck it lays around. I only wish its beauty wasn't tied to the past and the cause of so much sadness to you.~ EXTERN VPLEIB PCM11L7
 ++ ~Are you cold? Come, let me fasten your cloak about you.~ EXTERN VPLEIB PCM11L11
 ++ ~There, now can we move out?~ EXTERN VPLEIB PCM11L6
 ++ ~I haven't the time to mess with adornments. Either fix it yourself or put it in your pack, just be quick about it!~ EXTERN VPLEIB PCM11L6


CHAIN VPLEIB PCM11L5
~I'm sorry it wasn't my intention to delay the group. (*Quickly fastening the clasp about her neck*) There, I'm ready.~
END
 ++ ~Good, now let's hit the road.~ EXTERN VPLEIB PCM11L6
 ++ ~Good, and in future, try not to keep us waiting... there's little need to tart yourself up for the road.~ EXTERN VPLEIB PCM11L6
 ++ ~Good...now if you stop dreaming about the past, we may just make some decent headway in the present!~ EXTERN VPLEIB PCM11L6


CHAIN VPLEIB PCM11L6
~(*Sighing she tucks the pendant inside her armour*) I don't think this is the life my parents envisioned for me, nor I for myself. Still, it may not be my dream, but it is now my choice.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",26)~ EXIT


CHAIN VPLEIB PCM11L7
~(*Taking your hand, she touches it lightly to the pendant now hanging about her neck*) You think this pendant holds me in the past <CHARNAME>?~
 = ~It is the single most precious thing I own, it is all I have left to remind me of my parents love. Memories of their love for each other and their love for me, their daughter.~
 = ~They had such hopes for me and what have I become...nothing more than a vagabond, a wandering minstrel.~
 = ~No, the past is as it should be, past, but for as long as I draw breath the memories tied to this pendant will live on in my heart.~
END
 ++ ~(*Clasping both her hands a little tighter you gently draw her closer*) A very beautiful vagabond, an asset to this group and a woman any man would be proud to have walk beside him through this life. Leina I...~ EXTERN VPLEIB PCM11L8
 ++ ~(*Clasping both her hands a little tighter you gently draw her closer*) You have become your own woman Leina and a very beautiful one at that. Your parents would be proud of whom their daughter has become. Leina I...~ EXTERN VPLEIB PCM11L8
 ++ ~(*Clasping both her hands a little tighter*) Leina you are a beautiful and capable woman, a woman any man would be proud to walk beside and it is my hope that one day...~ EXTERN VPLEIB PCM11L8
 ++ ~(*Smiling*) A vagabond, surely not! How did such a rogue manage to infiltrate my group. Let me look again, unless my eyes deceive me I see no vagabond here, only an angel with a dirty face.~ EXTERN VPLEIB PCM11L9


CHAIN VPLEIB PCM11L8
~(*Smiling she reaches up and before wriggling from your clasp, kisses you long and hard on your mouth. You find your own mouth yielding to the softness of hers, but all too soon she lets you go.*)~
 = ~Shush, later <CHARNAME>, this is not the time. The future has need of you and we must make the most of the day ahead.~
 = ~(*Then laughing softly*) Besides, the group are eyeing us and I am sure they wondering whether they should sit down again or to make a start without us.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",26)~ EXIT


CHAIN VPLEIB PCM11L9
~(*Smiling she hands you a rag*) If you'd be so kind... I doubt my face is the only one in need of a wash this morning. After yesterday's hard march, we all fell abed the minute you called a halt.~
END
 ++ ~(*Wiping the dirt from her face*) There, no more dirty face angel. In fact... (*Before you can help yourself you gently draw her closer and kiss the tip of her nose*) I... I'm sorry I...~ EXTERN VPLEIB PCM11L8
 ++ ~There... now just one spot left and I believe this rag is too dirty, so I'll just have to... (*You gently draw her closer and kiss the tip of her nose*) There much better.~ EXTERN VPLEIB PCM11L8
 ++ ~There scrubbed clean enough for me to see my face in... well almost.~ EXTERN VPLEIB PCM11L10
 ++ ~There, no more dirty face angel and no sign of this vagabond you spoke of either. I am not even sure I recognise what it is we do have here.~ EXTERN VPLEIB PCM11L10
 ++ ~Aha, what do we have here? Why it's neither angel nor vagabond but our own Leina!~ EXTERN VPLEIB PCM11L10


CHAIN VPLEIB PCM11L10
~(*Laughing, she takes the rag from your hand and gently swats you with it*) Very funny, <CHARNAME>. Now go away and clean your own face. I would offer to do it for you but I shudder at what losing the grime may reveal.~
 = ~Could it be that <CHARNAME> fears the revelation himself and that is why he prefers his dirty face?~
 = ~(*Before you have time to respond, she tosses the rag at you and skips lightly away, leaving you with just the echo of her laughter.*)~
DO ~SetGlobal("VP_LoveTalk","LOCALS",26)~ EXIT


CHAIN VPLEIB PCM11L11
~No, not cold, <CHARNAME>. The touch of your hand, it... it was a little cold on my neck. (*Taking your hand, she touches it lightly to the pendant now hanging about her neck.*)~
 = ~This... this pendant is the single most precious thing I own, it is all I have left to remind me of my parents love. Their love for each other and their love for me, their daughter.~
 = ~They had such hopes for me and what have I become? Nothing more than a vagabond, a wandering minstrel.~
END
 ++ ~(*Clasping both her hands a little tighter you gently draw her closer*) A very beautiful vagabond, an asset to this group and a woman any man would be proud to have walk beside him through this life. Leina I...~ EXTERN VPLEIB PCM11L8
 ++ ~(*Clasping both her hands a little tighter you gently draw her closer*) You have become your own woman Leina and a very beautiful one at that. Your parents would be proud of whom their daughter has become. Leina I...~ EXTERN VPLEIB PCM11L8
 ++ ~(*Clasping both her hands a little tighter*) Leina you are a beautiful and capable woman, a woman any man would be proud to walk beside and it is my hope that one day...~ EXTERN VPLEIB PCM11L8
 ++ ~(*Smiling*) A vagabond, surely not! How did such a rogue manage to infiltrate my group. Let me look again, unless my eyes deceive me I see no vagabond here, only an angel with a dirty face.~ EXTERN VPLEIB PCM11L9


CHAIN VPLEIB heist7
~She's ok Melora, we both are no thanks to you! Why did you have to be so greedy and open that other chest?~
EXTERN NJMELB heist11


CHAIN VPLEIB heist8
~I am not sure myself. I did as you said and distracted the two guards, pretty easy really. Men... all it takes is the sight of a comely face and figure and they're distracted.~
 = ~Anyway, after you two wacked them on the head and left me to watch the door, the next thing I remember was *BOOM*, bits of chest were flying everywhere, and me with them. The rest I know from Imoen.~
 = ~Look, there she is, ask her yourself. (*Leina waves at Imoen, beckoning her over.*)~
EXTERN BIMOEN2 heist5


CHAIN VPLEIB heist9
~That's ok Melora, I am sure it will all come back to you soon.~
 = ~Myself, I am wondering how the two guards are going to explain to their lord how they came to be so distracted and left their post, allowing three women to make off with his gold. Now that's a wall I'd love to be a fly on.~
EXTERN BIMOEN2 heist9


CHAIN VPLEIB heist10
~(*Laughs softly*) Very true Melora, you... well you just be Melora.~
EXIT


CHAIN VPLEIB 20A
~You seek revenge <CHARNAME>, do you truly believe that the pain you inflict back will erase the memory of the pain received? Only time will do that and then never completely. You will always carry with you some of the scars, that I know to be true.~
END
 ++ ~Your words may be true, but I will gain immense satisfaction in exacting my revenge. That in itself will suffice.~ EXTERN VPLEIB 23
 ++ ~I could probably forego revenge for what I suffered but I will never forgive him for what he did to Imoen. She is the gentlest and most generous of people I know. We are of the same age but she is still a child in so many ways. She did not deserve the abuse she suffered at Irenicus's hand and that is what he must and will pay for!~ EXTERN VPLEIB 23


IF WEIGHT #-99 ~Global("VP_Ric_TheatrQuest","LOCALS",1)~ THEN VPLEIB TheatrQ0
~<CHARNAME>, wow, that was sure some trip. Traveling with you is really an adventure. One minute we are here in our time and the next we are who knows where?~ [mute]
 ++ ~Slow down Leina. What we do is no sightseeing trip.~ DO ~SetGlobal("VP_Ric_TheatrQuest","LOCALS",2)~ EXTERN VPLEIB TheatrQ1
 ++ ~Leina, I don't know if being popped from one place to another is all that grand.~ DO ~SetGlobal("VP_Ric_TheatrQuest","LOCALS",2)~ EXTERN VPLEIB TheatrQ2
 ++ ~Hold on a minute, am I hearing you correctly here? You, who gave such a squeal when we were teleported to who knows where... now thinks it was a big adventure?~ DO ~SetGlobal("VP_Ric_TheatrQuest","LOCALS",2)~ EXTERN VPLEIB TheatrQ3


CHAIN VPLEIB TheatrQ1
~Oh <CHARNAME>, once in awhile you just have to lighten up. You're so tense all the time. Sometimes you should just sit back and feel the adventure.~
END
 ++ ~Feel the adventure... in case it had escaped your notice, our enemies use very sharp blades, not butter knives!~ EXTERN VPLEIB TheatrQ5
 ++ ~So you think I should just stick me head in the clouds and let some maniac hack at us when we pop out from teleportation?~ EXTERN VPLEIB TheatrQ5
 ++ ~Listen here, I am responsible for this group and I take that seriously. One wrong move and some of us could die permanently.~ EXTERN VPLEIB TheatrQ4


CHAIN VPLEIB TheatrQ2
~What? It must be because you seem to have done it so often. To me this is all new. Even if I get use to being teleported, where we go is going to be new. Some times you need to slow down and stop thinking everything is hack and slash.~
END
 ++ ~So you think I should just stick me head in the clouds and let some maniac hack at us when we pop out from teleportation?~ EXTERN VPLEIB TheatrQ5
 ++ ~Listen here, I am responsible for this group and I take that seriously. One wrong move and some of us could die permanently.~ EXTERN VPLEIB TheatrQ4
 ++ ~I don't think hack and slash. When we enter a new place I'm not going to look to see if there are doilies or fluffy pillows in the room. I will always draw my weapon because I don't want my arm laying on the floor when some bushwacking maniac swings first.~ EXTERN VPLEIB TheatrQ4


CHAIN VPLEIB TheatrQ3
~(*A twinkle comes to her eye*) It wasn't so much the fear, more the tingling sensation transportation gives a body that brought about the squeal.~
END
 ++ ~Oh sure, now the rich kid knows what it's like to spill blood and it gives her a thrill.~ EXTERN VPLEIB TheatrQ6
 ++ ~How in the world can you think *ooh this tickles*, when the next second a dagger could be thrust in your side?~ EXTERN VPLEIB TheatrQ9
 ++ ~(*You laugh*) Well, you need to learn to change your facial expressions... by the look of your face I thought you were about to pee your pants.~ EXTERN VPLEIB TheatrQ6


CHAIN VPLEIB TheatrQ4
~Slow down there, we're being a bit overzealous aren't we? I'm not only talking about when it is time to battle, even with an ale in your hand you always seem as taut as the strings on my violin. Don't you ever pause to take in the uniqueness of where we are or where we've been?~
END
 ++ ~You know your right so let's knock off this conversations and get ourselves an ale.~ EXTERN VPLEIB TheatrQ8
 ++ ~Do you know something, that is the smartest thing to come out of your mouth... ever.~ EXTERN VPLEIB TheatrQ7
 ++ ~Leina, the group has just been through a tough battle can we just rest for now, please?~ EXTERN VPLEIB TheatrQ8


CHAIN VPLEIB TheatrQ5
~Oh my, aren't we tetchy and so tense. Learn to take it easy, after all the battle is over and I'm on your side remember. What I'm trying to say is that when the battle's won, you need to relax a little and chill out. You really are in need a tankard and a song.~
END
 ++ ~You know your right so let's knock off this conversations and get ourselves an ale.~ EXTERN VPLEIB TheatrQ8
 ++ ~Do you know something, that is the smartest thing to come out of your mouth... ever.~ EXTERN VPLEIB TheatrQ7
 ++ ~Leina, the group has just been through a tough battle can we just rest for now, please?~ EXTERN VPLEIB TheatrQ8


CHAIN VPLEIB TheatrQ6
~Well, there's no call for you to be so crude! (*She walks away*)~
EXIT


CHAIN VPLEIB TheatrQ7
~You must be hard of hearing is all I can say... that, or I suggest you clean out those ears of yours the next time you bathe. Might help you hear all the smart talk that's been going around you!~
 = ~Now, if you'll excuse me, I think you should treat the group to a couple of ales. I am going to speak to Samuel.~
END
 ++ ~Leina... Leina, wait up a moment, I want to ask you some thing!~ EXTERN VPLEIB TheatQ13
 ++ ~Oh that wench, I'll have her hide one of these days.~ EXTERN VPLEIB TheatQ13
 ++ ~Hey I have an idea.~ EXTERN VPLEIB TheatQ13


CHAIN VPLEIB TheatrQ8
~(*Her eyes light up and she gives you a quick hug*) Oh, this is wonderful, it gives me the chance to talk with Samuel whilst you buy the first round. Thank you <CHARNAME>.~
END
 ++ ~Leina... Leina, wait up a moment, I want to ask you some thing!~ EXTERN VPLEIB TheatQ13
 ++ ~Oh that wench, I'll have her hide one of these days.~ EXTERN VPLEIB TheatQ13
 ++ ~Hey I have an idea.~ EXTERN VPLEIB TheatQ13


CHAIN VPLEIB TheatrQ9
~(*A mischievous glint comes to her eye and she makes as if to tickle you*) I didn't say it tickled, I said it tingled.~
 = ~So you do feel your surroundings... it tickles you, hummmm. I must remember that. The big bad adventurer gets all ticklish!~
END
 ++ ~Hey I'm not made of stone nor am I a troll...I do have feelings!~ EXTERN VPLEIB TheatQ10
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN REPLY ~I swear you lay one finger on me and you'll wish you hadn't.~ EXTERN BIMOEN2 theatr
 IF ~OR(2) !InParty("Imoen2") Dead("Imoen2")~ THEN REPLY ~I swear you lay one finger on me and you'll wish you hadn't.~ EXTERN VPLEIB TheatQ11
 ++ ~Er... weren't we suppose to be having an ale about now.~ EXTERN VPLEIB TheatQ12


CHAIN VPLEIB TheatQ9a
~(*Laughing softly*) Imoen, we must talk soon, I see there is much to learn about the both of you.~
 = ~First, see if you can get <CHARNAME> to buy the first round of ale for everyone, I must speak to Samuel for a minute.~
END
 ++ ~Leina... Leina, wait up a moment, I want to ask you some thing!~ EXTERN VPLEIB TheatQ13
 ++ ~Oh that wench, I'll have her hide one of these days.~ EXTERN VPLEIB TheatQ13
 ++ ~Hey I have an idea.~ EXTERN VPLEIB TheatQ13


CHAIN VPLEIB TheatQ10
~Oh I don't know, some of that slimy stuff we walked thru in the other plane didn't smell to good and it is still on your boots. So you are close to smelling like a troll. Any way, if you'll excuse me, you can buy everyone an ale whilst I speak with Samuel.~
END
 ++ ~Leina... Leina, wait up a moment, I want to ask you some thing!~ EXTERN VPLEIB TheatQ13
 ++ ~Oh that wench, I'll have her hide one of these days.~ EXTERN VPLEIB TheatQ13
 ++ ~Hey I have an idea.~ EXTERN VPLEIB TheatQ13


CHAIN VPLEIB TheatQ11
~Oh my, is the big adventurer afraid of little ol' me?~
 = ~Now, whilst I go speak with Samuel, you can buy everyone a tankard.~
END
 ++ ~Leina... Leina, wait up a moment, I want to ask you some thing!~ EXTERN VPLEIB TheatQ13
 ++ ~Oh that wench, I'll have her hide one of these days.~ EXTERN VPLEIB TheatQ13
 ++ ~Hey I have an idea.~ EXTERN VPLEIB TheatQ13


CHAIN VPLEIB TheatQ12
~I tell you, the time it takes you to finally get around to taking care of the group, they'd die of thirst waiting for you to finish nattering.~
 = ~See how patiently they are waiting for you...now whilst you spend some of that gold we've bagged on a round or two for everyone, I am going to talk to Samuel.~
END
 ++ ~Leina... Leina, wait up a moment, I want to ask you some thing!~ EXTERN VPLEIB TheatQ13
 ++ ~Oh that wench, I'll have her hide one of these days.~ EXTERN VPLEIB TheatQ13
 ++ ~Hey I have an idea.~ EXTERN VPLEIB TheatQ13


CHAIN VPLEIB TheatQ13
~(*Ignoring you, she hurries over to Samuel*) Samuel, Samuel!~
EXTERN ~FFBART~ theatr1


CHAIN VPLEIB TheatQ14
~(*She shudders but laughs at her friend's words*) Heavens no... no Samuel, never again you know that but <CHARNAME> has just agreed to take on the running of the theatre. Isn't that exciting news, now I will be around more often to see you and to sing for your patrons.~
EXTERN ~FFBART~ theatr2


CHAIN VPLEIB TheaQ14a
~(*She shudders but laughs at her friend's words*) Heavens no... no Samuel, never again you know that but since I am back for a little while, how would you like me to sing for your patrons tonight?~
EXTERN ~FFBART~ theatr2


CHAIN VPLEIB TheatQ15
~(*As you approach Leina excitedly spins around*) This is so exciting! Tomorrow I will be able to sing some of the ballads I have written about you for Samuel's patrons!~
EXTERN VPLEIB TheatQ16


CHAIN VPLEIB TheaQ151
~(*As the group approaches Leina excitedly spins around*) Everyone, this is so exciting! Tomorrow I will be able to sing some of the ballads I have written about you for Samuel's patrons!~
END
 IF ~True()~ THEN EXTERN VPLEIB TheaQ161
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiThea2
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN BMAZZY LeiThea2
 IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN BKELDOR LeiThea2
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN BJAN LeiThea2
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN BHAERDA LeiThea2
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN BEDWIN LeiThea2
 IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN BANOMEN LeiThea2
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN BKORGAN LeiThea2
 IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN BAERIE LeiThea2
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN BIMOEN2 LeiThea2
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN BJAHEIR LeiThea2
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiThea2
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiThea2
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiThea2
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiThea2
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN BMINSC LeiThea2


CHAIN VPLEIB TheatQ16
~<CHARNAME>, have you nothing to say? Cat go your tongue?~
END
 ++ ~(*You look at Leina confidently... certain you have caught her at her own game. Smile smugly, but say nothing*)~ EXTERN VPLEIB TheatQ17
 ++ ~(*You look at Leina confidently... certain you have caught her at her own game*) I am sure your songs will enthral one and all... they always do.~ EXTERN VPLEIB TheatQ17
 ++ ~(*You look at Leina confidently... certain you have caught her at her own game*) I need no more ballads, you know that Leina.~ EXTERN VPLEIB TheatQ17
 ++ ~(*You look at Leina confidently... certain you have caught her at her own game*) I see you have only your music on your mind, how could I possibly compete with that!~ EXTERN VPLEIB TheatQ17


CHAIN VPLEIB TheaQ161
~And you, <CHARNAME>, have you nothing to say? Cat go your tongue?~
END
 ++ ~(*You look at Leina confidently... certain you have caught her at her own game. Smile smugly, but say nothing*)~ EXTERN VPLEIB TheaQ171
 ++ ~(*You look at Leina confidently... certain you have caught her at her own game*) I am sure your songs will enthral one and all... they always do.~ EXTERN VPLEIB TheaQ171
 ++ ~(*You look at Leina confidently... certain you have caught her at her own game*) I need no more ballads, you know that Leina.~ EXTERN VPLEIB TheaQ171
 ++ ~(*You look at Leina confidently... certain you have caught her at her own game*) I see you have only your music on your mind, how could I possibly compete with that!~ EXTERN VPLEIB TheaQ171


CHAIN VPLEIB TheatQ17
~(*Turning to Samuel*) Samuel, can I have ale for <CHARNAME>?~
EXTERN VPLEIB TheaQ17a


CHAIN VPLEIB TheaQ17a
~(*Then back to you*) Well, are you going to let me take the stage or are you going to entertain the patrons, and whilst you do so... drive them away? (*She laughs softly*)~
END
 ++ ~Why do you always do that... insinuate I can not sing?~ EXTERN VPLEIB TheatQ18
 ++ ~After an ale I would gladly serenade you.~ EXTERN VPLEIB TheatQ18
 ++ ~It is for theatre, acting you know not for the singing of ballads.~ EXTERN VPLEIB TheatQ19
 ++ ~I would that you would sing every night but alas we, or I, do have a quest to finish.~ EXTERN VPLEIB TheatQ20


CHAIN VPLEIB TheaQ171
~(*Turning to Samuel*) Samuel, can I have ale for all my companions?~
EXTERN VPLEIB TheaQ17a


CHAIN VPLEIB TheatQ18
~<CHARNAME>, I might be able to endure the noise you make but only because I like you, but Samuel has a business to run and needs his customers.~
END
 ++ ~Oh, Leina you do make me laugh. I know my singing leaves much to be desired but admit it, I do make a joyful noise!~ EXTERN VPLEIB TheaQ181
 ++ ~Who would know what I sound like with all the racket in here?~ EXTERN VPLEIB TheaQ182


CHAIN VPLEIB TheaQ181
~You most definitely have me on that one, for I can not deny the joy on your face as you do make your noise as you call it. But I don't know... I think if word got around you would not be taken very seriously as an adventurer.~
END
 ++ ~(*Suddenly you remember*) Ah, I have a question for you Leina.~ EXTERN VPLEIB TheatQ22
 ++ ~(*Suddenly you remember*) Leina, please stop your prattling, I have something to ask you!~ EXTERN VPLEIB TheatQ22


CHAIN VPLEIB TheaQ182
~(*Laughing*) So, you wish to sing but only under the safety of not being heard above the noise of the rabble rousers here? Dear <CHARNAME>, I am sure that voice of yours would top even the loudest of the carousers.~
END
 ++ ~(*Suddenly you remember*) Ah, I have a question for you Leina.~ EXTERN VPLEIB TheatQ22
 ++ ~(*Suddenly you remember*) Leina, please stop your prattling, I have something to ask you!~ EXTERN VPLEIB TheatQ22


CHAIN VPLEIB TheatQ19
~So tell me, when did you ever see a play that didn't have a song or two, or should I ask, have you seen a play at all?~
END
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN REPLY ~Just becasue it seems we are always on the road doesn't mean we haven't taken in the traveling shows we have crossed paths with along the way... we do have more important issues to address.~ EXTERN VPLEIB TheatQ20
 IF ~OR(2) !InParty("njhroth") Dead("njhroth")~ THEN REPLY ~Just becasue it seems we are always on the road doesn't mean we haven't taken in the traveling shows we have crossed paths with along the way... we do have more important issues to address.~ EXTERN VPLEIB TheaQ201
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN REPLY ~When do we have no time to dally with the fantasies of bards... there are more important issues to address.~ EXTERN VPLEIB TheatQ20
 IF ~OR(2) !InParty("njhroth") Dead("njhroth")~ THEN REPLY ~When do we have no time to dally with the fantasies of bards... there are more important issues to address.~ EXTERN VPLEIB TheaQ201


CHAIN VPLEIB TheatQ20
~(*Pretending to pout*) <CHARNAME>, I was not about to give up helping you to finish your quest nor to aiding Hrothgar to whatever end he seeks. The road may be hard but it is that which brings song and music to my lips, to my heart. You would not ask me to leave right now would you? If you should, it would sorely break my heart.~
END
 ++ ~I would not ask you to part company with us. Your songs brighten the nights and our hearts on the hard road we tread.~ EXTERN VPLEIB TheatQ21
 ++ ~Never in a heartbeat would I ask that you leave. You have proven to be a truly valuable companion to our group.~ EXTERN VPLEIB TheatQ21


CHAIN VPLEIB TheaQ201
~<CHARNAME>, I was not about to give up helping you to finish your quest. The road may be hard but it is that which brings song and music to my lips, to my heart. You would not ask me to leave right now would you? If you should, it would sorely break my heart.~
END
 IF ~NumInPartyGT(2)~ THEN REPLY ~I would not ask you to part company with us. Your songs brighten the nights and our hearts on the hard road we tread.~ EXTERN VPLEIB TheatQ21
 IF ~NumInPartyGT(2)~ THEN REPLY ~Never in a heartbeat would I ask that you leave. You have proven to be a truly valuable companion to our group.~ EXTERN VPLEIB TheatQ21
 IF ~NumInPartyLT(3)~ THEN REPLY ~I would not ask you to part company with me. Your songs brighten the nights and my heart on the hard road we tread.~ EXTERN VPLEIB TheaQ21a
 IF ~NumInPartyLT(3)~ THEN REPLY ~Never in a heartbeat would I ask that you leave. You have proven to be a truly valuable companion to our group.~ EXTERN VPLEIB TheaQ21a


CHAIN VPLEIB TheatQ21
~Oh, <CHARNAME>, that is why I enjoy traveling with you so much. Each one of us blends with the other to make us a formidable team for any foe to take on.~
END
 ++ ~(*Suddenly you remember*) Ah, I have a question for you Leina.~ EXTERN VPLEIB TheatQ22
 ++ ~(*Suddenly you remember*) Leina, please stop your prattling, I have something to ask you!~ EXTERN VPLEIB TheatQ22


CHAIN VPLEIB TheaQ21a
~Oh, <CHARNAME> that is why I enjoy traveling with this group so much. Each one of us blends with the other to make us a formidable group for any foe to take on.~
END
 ++ ~(*Suddenly you remember*) Ah, I have a question for you Leina.~ EXTERN VPLEIB TheatQ22
 ++ ~(*Suddenly you remember*) Leina, please stop your prattling, I have something to ask you!~ EXTERN VPLEIB TheatQ22


CHAIN VPLEIB TheatQ22
~(*With a twinkle in her eye she ignores your request. Instead she looks around for Samuel*) Samuel, now where is that man, I asked him to bring more ale to us, you do want more ale, don't you, <CHARNAME>?~
END
 ++ ~(*She continues to avoid your eye. You begin to suspect she is doing so deliberately. You grab her arm*) Leina, excuse me, LEINA!~ EXTERN VPLEIB TheatQ23
 ++ ~(*She continues to avoid your eye. You begin to suspect she is doing so deliberately. Gently catching her arm*) Leina please, this will only take a moment!~ EXTERN VPLEIB TheatQ23
 ++ ~(*She continues to avoid your eye. You begin to suspect she is doing so deliberately. You grab her arm*) Damn you girl, can't you see I want to talk to you?~ EXTERN VPLEIB TheatQ23


CHAIN VPLEIB TheatQ23
~(*You spy Samuel give her a nod and then she turns to you*) Oh, <CHARNAME>, I am so sorry. Forgive me but you know how carried away I get when it comes to my music. Now I am all yours, what is it you wish to say?~
END
 IF ~NumInPartyGT(2)~ THEN REPLY ~(*Smiling, satisfied that due to her distraction, you have finally caught her out*) Leina, isn't about time we all took a bath and had dinner?~ EXTERN VPLEIB TheatQ24
 IF ~NumInPartyGT(2)~ THEN REPLY ~(*Smiling, satisfied that due to her distraction, you have finally caught her out*) Surely Leina, we could all use a bath if you intend getting up before an audience?~ EXTERN VPLEIB TheatQ24
 IF ~NumInPartyGT(2)~ THEN REPLY ~(*Smiling, satisfied that due to her distraction, you have finally caught her out*) If I may suggest, we could all do with a bath... that is if you do not wish to chase Samuel's patrons away?~ EXTERN VPLEIB TheatQ24
 IF ~NumInPartyGT(2)~ THEN REPLY ~(*Smiling, satisfied that due to her distraction, you have finally caught her out*) At last... I am trying to say we all need a bath, but you are too wrapped up in your damn music to hear what I am saying!~ EXTERN VPLEIB TheatQ24
 IF ~NumInPartyLT(3)~ THEN REPLY ~(*Smiling, satisfied that due to her distraction, you have finally caught her out*) Leina, isn't about time we took a bath and had dinner?~ EXTERN VPLEIB TheaQ24b
 IF ~NumInPartyLT(3)~ THEN REPLY ~(*Smiling, satisfied that due to her distraction, you have finally caught her out*) Surely Leina, I could use a bath if you intend getting up before an audience?~ EXTERN VPLEIB TheaQ24b
 IF ~NumInPartyLT(3)~ THEN REPLY ~(*Smiling, satisfied that due to her distraction, you have finally caught her out*) If I may suggest, I could do with a bath... that is if you do not wish to chase Samuel's patrons away?~ EXTERN VPLEIB TheaQ24b
 IF ~NumInPartyLT(3)~ THEN REPLY ~(*Smiling, satisfied that due to her distraction, you have finally caught her out*) At last... I am trying to say I need a bath, but you are too wrapped up in your damn music to hear what I am saying!~ EXTERN VPLEIB TheaQ24b


CHAIN VPLEIB TheatQ24
~(*Opening her eyes wide... feigning surprise*) Are you sure, <CHARNAME>, I was just being polite. I thought you all wanted to talk... although I was wondering way you wanted to stand around with all that grime and sweat on you.~
 = ~Never mind, I have already had Samuel prepare a bath for each of you and I have been so patient... wouldn't you agree, waiting for my own warm fluffy towel?~
 = ~Ah there, Samuel has signalled that your rooms and hot water are ready, so finish your ale and take your baths before they get cold. I will see you shortly for dinner, after I have bathed and refreshed myself. Oh, and don't forget to thank Samuel, he has reserved his thickest and fluffiest towels for you all.~
 = ~(*She jumps up and scampers to her room*)~
END
 ++ ~(*Shaking your head in disbelief*) What the... what has just happened here? Didn't we agree at the stairs that we were going to demand a bath? How is it now she has turned the tables on us? Asking us why *we* want to sit around talking, drinking and smelling like sweat instead of taking a bathe first since we are in an Inn? I'll not let her dangle an ale in my face again!~ EXTERN VPLEIB TheaQ24a
 ++ ~(*Shaking your head in disbelief*) What the... why that little minx was one step ahead of us yet again! I swear I'll get her, maybe not today, maybe not tomorrow but I'll get her one day!~ EXTERN VPLEIB TheaQ24a
 ++ ~(*Shaking your head in disbelief*) What the... why that cheeky wench! Well, I'm damned if I'm going to take a bath now... on principal!~ EXTERN VPLEIB TheaQ24a


CHAIN VPLEIB TheaQ24a
~(*Samuel walks over and interrupts you*)~
EXTERN ~FFBART~ theatr4


CHAIN VPLEIB TheaQ24b
~(*Opening her eyes wide... feigning surprise*) Are you sure, <CHARNAME>, I was just being polite. I thought you wanted to talk... although I was wondering way you wanted to stand around with all that grime and sweat on you.~
 = ~Never mind, I have already had Samuel prepare a bath for you and I have been so patient... wouldn't you agree, waiting for my own warm fluffy towel?~
 = ~Ah there, Samuel has signalled that you room and hot water are ready, so finish your ale and take your baths before they get cold. I will see you shortly for dinner, after I have bathed and refreshed myself. Oh, and don't forget to thank Samuel, he has reserved his thickest and fluffiest towels for you.~
 = ~(*She jumps up and scampers to her room*)~
END
 ++ ~(*Shaking your head in disbelief*) What the... what has just happened here? Didn't we agree at the stairs that I was going to demand a bath? How is it now she has turned the tables on me? Asking me why *I* want to sit around talking, drinking and smelling like sweat instead of taking a bathe first since we are in an Inn? I'll not let her dangle an ale in my face again!~ EXTERN VPLEIB TheaQ24a
 ++ ~(*Shaking your head in disbelief*) What the... why that little minx was one step ahead of me yet again! I swear I'll get her, maybe not today, maybe not tomorrow but I'll get her one day!~ EXTERN VPLEIB TheaQ24a
 ++ ~(*Shaking your head in disbelief*) What the... why that cheeky wench! Well, I'm damned if I'm going to take a bath now... on principal!~ EXTERN VPLEIB TheaQ24a


IF WEIGHT #-98 ~Global("VP_Ric_RadianQuest","LOCALS",2)~ THEN VPLEIB RadianQ0
~Arrrrgggg... Yea gods!~ [mute]
 ++ ~What the... what in the nine hells is the matter now Leina?~ EXTERN VPLEIB RadianQ3
 ++ ~(*You look at Leina and think better of asking her what the matter is for she is looking annoyed over something*) Not now Leina. I'm not in the mood for a heated discussion!~ EXTERN VPLEIB RadiaQE
 ++ ~Steady up there Leina. What has just caused such an outburst this time?~ EXTERN VPLEIB RadianQ3
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN REPLY ~Korgan! You making free with your hands again?!~ EXTERN BKORGAN RadianQ1


CHAIN VPLEIB RadiaQE
~Sorry, <CHARNAME>, just me thinking aloud again.~
DO ~SetGlobal("VP_Ric_RadianQuest","LOCALS",3)~ EXIT


CHAIN VPLEIB RadianQ2
~No, <CHARNAME>, no he did not touch me. It is that accursed dragon that is annoying me.~
END
 IF ~OR(2) Global("SPRITE_IS_DEADfirkra02","GLOBAL",1) Global("SPRITE_IS_DEADfirkra04","GLOBAL",1)~ THEN REPLY ~Yes, a most despicable specimen of his kind I admit. So, what got you so annoyed about Firkraag?~ EXTERN VPLEIB RadianQ8
 IF ~OR(2) Global("SPRITE_IS_DEADfirkra02","GLOBAL",1) Global("SPRITE_IS_DEADfirkra04","GLOBAL",1)~ THEN REPLY ~Most dragons are of the evil vile type, so why so steamed up over that one?~ EXTERN VPLEIB RadianQ8
 IF ~PartyHasItem("FAMFAIR") OR(2) Global("SPRITE_IS_DEADfirkra02","GLOBAL",1) Global("SPRITE_IS_DEADfirkra04","GLOBAL",1)~ THEN REPLY ~(*Laughing heartily*) So my little pet has upset up. I must tell him to be nicer. Now tell me, what is it that he must change so as not to annoy you so much?~ EXTERN VPLEIB RadianQ7
 IF ~!PartyHasItem("FAMFAIR") OR(2) Global("SPRITE_IS_DEADfirkra02","GLOBAL",1) Global("SPRITE_IS_DEADfirkra04","GLOBAL",1)~ THEN REPLY ~(*Laughing heartily*) So my little pet has upset up. I must tell him to be nicer. Now tell me, what is it that he must change so as not to annoy you so much?~ EXTERN VPLEIB RadiaQ7a
 ++ ~I don't think I would talk that way about him just yet. We are probably still within ear shot of the overgrown lizard. So tell me, what is it about this dragon that has annoyed you so much?~ EXTERN VPLEIB RadianQ9


CHAIN VPLEIB RadianQ3
~Oh, I'm sorry but I can not believe what just transpired.~
END
 ++ ~What do you mean? Garren has just been very kind to us and offered his hospitality any time?~ EXTERN VPLEIB RadianQ4
 ++ ~What are you referring to? At least The Radiant Heart will no longer be hunting us.~ EXTERN VPLEIB RadianQ5
 ++ ~What in Faerun are you talking about girl?~ EXTERN VPLEIB RadianQ6


CHAIN VPLEIB RadianQ4
~Oh! I don't mean Garren for he has been most kind to us. (*Angrily*) It is that accursed dragon!~
END
 IF ~OR(2) Global("SPRITE_IS_DEADfirkra02","GLOBAL",1) Global("SPRITE_IS_DEADfirkra04","GLOBAL",1)~ THEN REPLY ~Yes, a most despicable specimen of his kind I admit. So, what got you so annoyed about Firkraag?~ EXTERN VPLEIB RadianQ8
 IF ~OR(2) Global("SPRITE_IS_DEADfirkra02","GLOBAL",1) Global("SPRITE_IS_DEADfirkra04","GLOBAL",1)~ THEN REPLY ~Most dragons are of the evil vile type, so why so steamed up over that one?~ EXTERN VPLEIB RadianQ8
 IF ~PartyHasItem("FAMFAIR") OR(2) Global("SPRITE_IS_DEADfirkra02","GLOBAL",1) Global("SPRITE_IS_DEADfirkra04","GLOBAL",1)~ THEN REPLY ~(*Laughing heartily*) So my little pet has upset up. I must tell him to be nicer. Now tell me, what is it that he must change so as not to annoy you so much?~ EXTERN VPLEIB RadianQ7
 IF ~!PartyHasItem("FAMFAIR") OR(2) Global("SPRITE_IS_DEADfirkra02","GLOBAL",1) Global("SPRITE_IS_DEADfirkra04","GLOBAL",1)~ THEN REPLY ~(*Laughing heartily*) So my little pet has upset up. I must tell him to be nicer. Now tell me, what is it that he must change so as not to annoy you so much?~ EXTERN VPLEIB RadiaQ7a
 ++ ~I don't think I would talk that way about him just yet. We are probably still within ear shot of the overgrown lizard. So tell me, what is it about this dragon that has annoyed you so much?~ EXTERN VPLEIB RadianQ9


CHAIN VPLEIB RadianQ5
~Oh, I am not worried about The Radiant Heart. It is that accursed dragon!~
END
 IF ~OR(2) Global("SPRITE_IS_DEADfirkra02","GLOBAL",1) Global("SPRITE_IS_DEADfirkra04","GLOBAL",1)~ THEN REPLY ~Yes, a most despicable specimen of his kind I admit. So, what got you so annoyed about Firkraag?~ EXTERN VPLEIB RadianQ8
 IF ~OR(2) Global("SPRITE_IS_DEADfirkra02","GLOBAL",1) Global("SPRITE_IS_DEADfirkra04","GLOBAL",1)~ THEN REPLY ~Most dragons are of the evil vile type, so why so steamed up over that one?~ EXTERN VPLEIB RadianQ8
 IF ~PartyHasItem("FAMFAIR") OR(2) Global("SPRITE_IS_DEADfirkra02","GLOBAL",1) Global("SPRITE_IS_DEADfirkra04","GLOBAL",1)~ THEN REPLY ~(*Laughing heartily*) So my little pet has upset up. I must tell him to be nicer. Now tell me, what is it that he must change so as not to annoy you so much?~ EXTERN VPLEIB RadianQ7
 IF ~!PartyHasItem("FAMFAIR") OR(2) Global("SPRITE_IS_DEADfirkra02","GLOBAL",1) Global("SPRITE_IS_DEADfirkra04","GLOBAL",1)~ THEN REPLY ~(*Laughing heartily*) So my little pet has upset up. I must tell him to be nicer. Now tell me, what is it that he must change so as not to annoy you so much?~ EXTERN VPLEIB RadiaQ7a
 ++ ~I don't think I would talk that way about him just yet. We are probably still within ear shot of the overgrown lizard. So tell me, what is it about this dragon that has annoyed you so much?~ EXTERN VPLEIB RadianQ9


CHAIN VPLEIB RadianQ6
~Oh, <CHARNAME>, it is that accursed dragon, Firkraag!~
END
 IF ~OR(2) Global("SPRITE_IS_DEADfirkra02","GLOBAL",1) Global("SPRITE_IS_DEADfirkra04","GLOBAL",1)~ THEN REPLY ~Yes, a most despicable specimen of his kind I admit. So, what got you so annoyed about Firkraag?~ EXTERN VPLEIB RadianQ8
 IF ~OR(2) Global("SPRITE_IS_DEADfirkra02","GLOBAL",1) Global("SPRITE_IS_DEADfirkra04","GLOBAL",1)~ THEN REPLY ~Most dragons are of the evil vile type, so why so steamed up over that one?~ EXTERN VPLEIB RadianQ8
 IF ~PartyHasItem("FAMFAIR") OR(2) Global("SPRITE_IS_DEADfirkra02","GLOBAL",1) Global("SPRITE_IS_DEADfirkra04","GLOBAL",1)~ THEN REPLY ~(*Laughing heartily*) So my little pet has upset up. I must tell him to be nicer. Now tell me, what is it that he must change so as not to annoy you so much?~ EXTERN VPLEIB RadianQ7
 IF ~!PartyHasItem("FAMFAIR") OR(2) Global("SPRITE_IS_DEADfirkra02","GLOBAL",1) Global("SPRITE_IS_DEADfirkra04","GLOBAL",1)~ THEN REPLY ~(*Laughing heartily*) So my little pet has upset up. I must tell him to be nicer. Now tell me, what is it that he must change so as not to annoy you so much?~ EXTERN VPLEIB RadiaQ7a
 ++ ~I don't think I would talk that way about him just yet. We are probably still within ear shot of the overgrown lizard. So tell me, what is it about this dragon that has annoyed you so much?~ EXTERN VPLEIB RadianQ9


CHAIN VPLEIB RadianQ7
~Oh that cute little dragon familiar you have could never upset me. He is so cuddly and if you don't watch it he might just leave you for me.~
 = ~All jesting aside, didn't the way Firkraag manipulated Garren and us bother you in the slightest?~
END
 ++ ~I hate to be manipulated probably more so than anyone but other then causing us to think we were fighting monsters instead of Paladins I don't think he took any choices away from us. Besides which, we've already extracted quite enough restitution from Firkraag for his manipulations, and left him rotting in a heap for his efforts.~ EXTERN VPLEIB RadiaQ12
 ++ ~Hey, what kind of a group do you think we are? We're in this to see blood flow, so I don't care how the battle starts just as long as it does and it is challenging. Firkraag and his manipulating merely helped open that door.~ EXTERN VPLEIB RadiQ101
 ++ ~What makes you think we didn't have a choice in what we did?~ EXTERN VPLEIB RadiaQ12
 ++ ~The only one that is manipulating me is that jackass with the mouse and if they can not do a better job I just might have to stick it to them. Don't believe me huh? Well just click here and find out.~ EXTERN VPLEIB RadiaQ21


CHAIN VPLEIB RadiaQ7a
~Jest if you must but I doubt any dragon, would take too kindly to being referred to as a pet. The power they wield is immense.~
 = ~All jesting aside didn't it bother you that Firkraag manipulated Garren and you into doing things without giving you a choice?~
END
 ++ ~I hate to be manipulated probably more so than anyone but other then causing us to think we were fighting monsters instead of Paladins I don't think he took any choices away from us. Besides which, we've already extracted quite enough restitution from Firkraag for his manipulations, and left him rotting in a heap for his efforts.~ EXTERN VPLEIB RadiaQ12
 ++ ~Hey, what kind of a group do you think we are? We're in this to see blood flow, so I don't care how the battle starts just as long as it does and it is challenging. Firkraag and his manipulating merely helped open that door.~ EXTERN VPLEIB RadiQ101
 ++ ~What makes you think we didn't have a choice in what we did?~ EXTERN VPLEIB RadiaQ12
 ++ ~The only one that is manipulating me is that jackass with the mouse and if they can not do a better job I just might have to stick it to them. Don't believe me huh? Well just click here and find out.~ EXTERN VPLEIB RadiaQ21


CHAIN VPLEIB RadianQ8
~It makes my blood boil when I see how low dragons will sink in order to manipulate people.~
END
 ++ ~I hate to be manipulated probably more so than anyone but other then causing us to think we were fighting monsters instead of Paladins I don't think he took any choices away from us. Besides which, we've already extracted quite enough restitution from Firkraag for his manipulations, and left him rotting in a heap for his efforts.~ EXTERN VPLEIB RadiaQ12
 ++ ~Hey, what kind of a group do you think we are? We're in this to see blood flow, so I don't care how the battle starts just as long as it does and it is challenging. Firkraag and his manipulating merely helped open that door.~ EXTERN VPLEIB RadiQ101
 ++ ~What makes you think we didn't have a choice in what we did?~ EXTERN VPLEIB RadiaQ12
 ++ ~The only one that is manipulating me is that jackass with the mouse and if they can not do a better job I just might have to stick it to them. Don't believe me huh? Well just click here and find out.~ EXTERN VPLEIB RadiaQF


CHAIN VPLEIB RadianQ9
~Do you honestly think he really cares what we say? He is so arrogant that he thinks he will be able to manipulate us the next time we meet and that I find so infuriating!~
END
 ++ ~Then his arrogance shall be his undoing. Meantime, we have more pressing matters to attend to.~ EXTERN VPLEIB RadiaQ11


CHAIN VPLEIB RadiQ101
~<CHARNAME>...~
END
 IF ~True()~ THEN EXTERN VPLEIB RadiaQ10
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN BKORGAN RadianQA
 IF ~InParty("Sharteel") !Dead("Sharteel")~ THEN EXTERN VPSHAB RadianQ


CHAIN VPLEIB RadiaQF
~Ha-ha, you just couldn't resist could you! This is what is called manipulation 'cause now you're going to be in a loop with no way out other than to go back and pick something else... and to make sure you don't do it again you only get three choices.~
END
 ++ ~I hate to be manipulated probably more so than anyone but other then causing us to think we were fighting monsters instead of Paladins I don't think he took any choices away from us. Besides which, we've already extracted quite enough restitution from Firkraag for his manipulations, and left him rotting in a heap for his efforts.~ EXTERN VPLEIB RadiaQ12
 ++ ~Hey, what kind of a group do you think we are? We're in this to see blood flow, so I don't care how the battle starts just as long as it does and it is challenging. Firkraag and his manipulating merely helped open that door.~ EXTERN VPLEIB RadiQ101
 ++ ~What makes you think we didn't have a choice in what we did?~ EXTERN VPLEIB RadiaQ12


CHAIN VPLEIB RadiaQ10
~I don't know why I stay in this group or why you keep me around, <CHARNAME>? Do you mean you don't care whether you are manipulated into action or not?~
END
 ++ ~Look Leina, I don't give a rats butt how the fight starts. I love the challenge of and seeing my foes laying in their own blood and better still, to be close enough to see the terror in their eyes when they know there is no tomorrow for them!~ EXTERN VPLEIB RadiaQ11
 ++ ~Now you look here, you've been with the group long enough to know that it's never been my way to go and kiss up to some imbecile because they don't know their butt from the end of their sword. Any who get in my way, you included, and I'll hack off an arm first and then ask the questions.~ EXTERN VPLEIB RadiaQ11
 ++ ~Look, I always have a choice and I choose to fight, not back away. So who cares how I get there.~ EXTERN VPLEIB RadiaQ11
 IF ~InParty("Korgan") !Dead("Korgan") OR(2) Global("SPRITE_IS_DEADfirkra02","GLOBAL",1) Global("SPRITE_IS_DEADfirkra04","GLOBAL",1)~ THEN REPLY ~Leina, of course I care whether I'm manipulated into action or not. The dragon's dead for his manipulation. Let it go, already! And lighten up a little bit. Korgan's just funning with you.~ EXTERN VPLEIB RadiaQ11
 IF ~OR(2) !InParty("Korgan") Dead("Korgan") OR(2) Global("SPRITE_IS_DEADfirkra02","GLOBAL",1) Global("SPRITE_IS_DEADfirkra04","GLOBAL",1)~ THEN REPLY ~Leina, of course I care whether I'm manipulated into action or not. The dragon's dead for his manipulation. Let it go, already! And lighten up a little bit.~ EXTERN VPLEIB RadiaQ11
 IF ~Global("SPRITE_IS_DEADfirkra02","GLOBAL",0) Global("SPRITE_IS_DEADfirkra04","GLOBAL",0) InParty("Korgan") !Dead("Korgan")~ THEN REPLY ~Leina, of course I care whether I'm manipulated into action or not. Let it go, already! And lighten up a little bit. Korgan's just funning with you.~ EXTERN VPLEIB RadiaQ11
 IF ~Global("SPRITE_IS_DEADfirkra02","GLOBAL",0) Global("SPRITE_IS_DEADfirkra04","GLOBAL",0) OR(2) !InParty("Korgan") Dead("Korgan")~ THEN REPLY ~Leina, of course I care whether I'm manipulated into action or not. Let it go, already! And lighten up a little bit.~ EXTERN VPLEIB RadiaQ11


CHAIN VPLEIB RadiaQ11
~(*Clearly disturbed by your words*) How ever did I come to allow myself to become involved with such a person?~
 = ~I beg you Melira Taralen, my lady *The Songstress*, goddess of all half-elven bard's, help me for it would seem my life hangs by he who blinks first. I must think more on where my future lies.~
DO ~SetGlobal("VP_Ric_RadianQuest","LOCALS",3)~ EXIT


CHAIN VPLEIB RadiaQ12
~What? Can't you see that he caused us to fight those paladins knowing, that if we didn't make amends for our mistake we would have been hunted down by their order.~
END
 ++ ~I think it all comes down to in what you mean by manipulate.~ EXTERN VPLEIB RadiaQ13
 ++ ~I think we all could be accused of manipulating at one time or another.~ EXTERN VPLEIB RadiaQ13


CHAIN VPLEIB RadiaQ13
~Now don't you try and change the subject when you know full well what I mean when I say manipulated.~
 = ~Firkraag used shrewd means to tamper with things in order to make us do something we wouldn't have done had we been able to see the truth of it.~
END
 ++ ~You mean defending ourselves is something we shouldn't have done?~ EXTERN VPLEIB RadiaQ14
 ++ ~Of course, how silly of me, we should have let the illusions, the monsters, stroke, paladins, slaughter us?~ EXTERN VPLEIB RadiaQ14
 ++ ~Yes, Firkraag altered appearances and we defended ourselves but all it did was provide added experience for when the next battles comes.~ EXTERN VPLEIB RadiaQ15


CHAIN VPLEIB RadiaQ14
~You're right we had to defend ourselves but his altering their appearances was deception. Doesn't that give you cause for concern as you venture into these tasks, quests or whatever you call them?~
END
 ++ ~Leina, I take these tasks to help others and when I do so I expect my foe to alter, by devious means, every situation that we encounter. That is what makes all this so challenging for me.~ EXTERN VPLEIB RadiaQ16
 ++ ~Leina, I don't think we would be needed if it weren't to protect the weak from those who to control them.~ EXTERN VPLEIB RadiaQ16
 ++ ~Leina, the world is not, and never has been a paradise. I guess you might say I enjoy eliminating such manipulating creatures from this realm. The more they use foul means to harm others the more it fuels my desire for the final battle.~ EXTERN VPLEIB RadiaQ16


CHAIN VPLEIB RadiaQ15
~So it does bother you that there are times when you are manipulated into action?~
END
 ++ ~Leina, I take these tasks to help others and when I do so I expect my foe to alter, by devious means, every situation that we encounter. That is what makes all this so challenging for me.~ EXTERN VPLEIB RadiaQ16
 ++ ~Leina, I don't think we would be needed if it weren't to protect the weak from those who to control them.~ EXTERN VPLEIB RadiaQ16
 ++ ~Leina, the world is not, and never has been a paradise. I guess you might say I enjoy eliminating such manipulating creatures from this realm. The more they use foul means to harm others the more it fuels my desire for the final battle.~ EXTERN VPLEIB RadiaQ16
 ++ ~Leina, manipulation is a matter of perception. What appears as manipulation to one person may only be another's normal means of functioning. Everyone has a goal to achieve or to be stopped from achieving. As long as we stay true to ourselves, with the knowledge we have available to us to base our decisions upon, I find no fault in this.~ EXTERN VPLEIB RadiaQ16


CHAIN VPLEIB RadiaQ16
~I suppose I have been looking at this from a different point of view. It is good to hear another's perspective on things, you have taught me well in this little lesson. I shall enter future battles more alert to expecting the worst.~
END
 ++ ~Leina, no need to fill that pretty head of yours with too many evil thoughts. Let me do that.~ EXTERN VPLEIB RadiaQ17
 ++ ~Leina, I wouldn't want you to be thinking about so much evil. So let me think about what diabolical plans ours foes may have in place for us.~ EXTERN VPLEIB RadiaQ18
 ++ ~Actually, Leina I think you have been doing just fine. I would suggest that you don't really look for the worst but keep doing what you have been doing, looking for the unexpected. Since we already know our foes won't be looking to give us a hug, unless it is a hug of death.~ EXTERN VPLEIB RadiaQ18


CHAIN VPLEIB RadiaQ17
~(*A twinkle comes to her eye*) Um... evil thoughts you say. Now there's nothing wrong with having a few wicked thoughts being put into one's mind but please we have no need of evil here. So tell me <CHARNAME>, what wicked thoughts does that mind of yours harbour?~
END
 IF ~True()~ THEN EXTERN VPLEIB RadiQ19A
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI RadianQ
 IF ~InParty("Sharteel") !Dead("Sharteel")~ THEN EXTERN VPSHAB RadianQ1
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN BKORGAN RadiaQ13


CHAIN VPLEIB RadiaQ18
~So, even though I sing of a man's evil doing, you think that I am incapable of thinking of evil plots for myself do you?~
END
 IF ~True()~ THEN EXTERN VPLEIB RadiQ19A
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI RadianQ
 IF ~InParty("Sharteel") !Dead("Sharteel")~ THEN EXTERN VPSHAB RadianQ1
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN BKORGAN RadiaQ13


CHAIN VPLEIB RadiQ19A
~<CHARNAME>...~
END
 ++ ~Hey now, I think we need to stop here and leave this conversation where it belongs... in the gutter.~ EXTERN VPLEIB RadiaQ19
 ++ ~Hey, we're in the wrong place for this conversation to continue. I'm ending it now!~ EXTERN VPLEIB RadiaQ19
 IF ~NumInPartyGT(2)~ THEN REPLY ~Excuse me folks, but we seem to be attracting the sort of attention we don't want right now.~ EXTERN VPLEIB RadiaQ19
 IF ~NumInPartyLT(3)~ THEN REPLY ~Excuse me, but we seem to be attracting the sort of attention we don't want right now.~ EXTERN VPLEIB RadiaQ19


CHAIN VPLEIB RadiaQ19
~(*She laughs softly*) What's this? You mean to say the champion of the Sword Coast shies away from a few incurious looks?~
END
 IF ~!Global("PaladinOrder","GLOBAL",0) AreaCheck("AR0903")~ THEN EXTERN VPLEIB RadiaNew
 IF ~Global("PaladinOrder","GLOBAL",0) OR(11) AreaCheck("AR0020") AreaCheck("AR0300") AreaCheck("AR0400") AreaCheck("AR0500") AreaCheck("AR0700") AreaCheck("AR0800") AreaCheck("AR0900") AreaCheck("AR1000") AreaCheck("AR1304") AreaCheck("AR1900") AreaCheck("AR2000")~ THEN REPLY ~I am used to being gawked at but I don't like drawing any more attention to myself than is necessary.~ EXTERN VPLEIB RadiaQ20


CHAIN VPLEIB RadiaNew
~No matter, I have a better idea to show you how perceptive I am.~
 = ~Have you noticed how even though they have female paladins in here, the overall design of this place is definitely overly masculine?~
END
 ++ ~I am used to being gawked at but here is somewhere I don't like drawing any more attention to myself than is necessary. As for this place, it is built with fighters in mind, not to look like a ladies boudoir! So what's your point?~ EXTERN VPLEIB RadiaQ20
 ++ ~This place is just fine, built solid and designed for the warriors it houses. So what is that matter with it?~ EXTERN VPLEIB RadiaQ20
 ++ ~I know you better then that Leina, you don't care about the decor of a place so what is it that you're after now?~ EXTERN VPLEIB RadiaQ20


CHAIN VPLEIB RadiaQ20
~Well, you know how you are our leader and have to decide on our battle strategy. I just thought it would be nice to finally go to an inn to split a keg or two. It would so soothe the muscles to have a nice hot bath as well, but as I pointed out these over righteous warriors don't indulge in either so why don't we make our way over to Samuel's?~
END
 IF ~OR(2) !InParty("Minsc") Dead("Minsc") OR(2) !InParty("Edwin") Dead("Edwin") OR(2) !InParty("Imoen2") Dead("Imoen2") OR(2) !InParty("Korgan") Dead("Korgan") OR(2) !InParty("Viconia") Dead("Viconia") OR(2) !InParty("njhroth") Dead("njhroth") OR(2) !InParty("njdar") Dead("njdar") OR(2) !InParty("njmelora") Dead("njmelora") OR(2) !InParty("njtaffic") Dead("njtaffic") OR(2) !InParty("Sharteel") Dead("Sharteel")~ THEN REPLY ~You know Leina, you're right we did have a rough go and since Samuel's is your favorite spot let's get on over there.~ EXTERN VPLEIB RadiaQ21
 IF ~OR(2) !InParty("Minsc") Dead("Minsc") OR(2) !InParty("Edwin") Dead("Edwin") OR(2) !InParty("Imoen2") Dead("Imoen2") OR(2) !InParty("Korgan") Dead("Korgan") OR(2) !InParty("Viconia") Dead("Viconia") OR(2) !InParty("njhroth") Dead("njhroth") OR(2) !InParty("njdar") Dead("njdar") OR(2) !InParty("njmelora") Dead("njmelora") OR(2) !InParty("njtaffic") Dead("njtaffic") OR(2) !InParty("Sharteel") Dead("Sharteel")~ THEN REPLY ~I don't know about Samuel's, the pickings are getting too familiar over there. The ale's great but a little variety does a body good.~ EXTERN VPLEIB RadiaQ22
 IF ~OR(2) !InParty("Minsc") Dead("Minsc") OR(2) !InParty("Edwin") Dead("Edwin") OR(2) !InParty("Imoen2") Dead("Imoen2") OR(2) !InParty("Korgan") Dead("Korgan") OR(2) !InParty("Viconia") Dead("Viconia") OR(2) !InParty("njhroth") Dead("njhroth") OR(2) !InParty("njdar") Dead("njdar") OR(2) !InParty("njmelora") Dead("njmelora") OR(2) !InParty("njtaffic") Dead("njtaffic") OR(2) !InParty("Sharteel") Dead("Sharteel")~ THEN REPLY ~When we get there I'm gonna ask Samuel to make a special tub to fit my size better. You know, we must be his best customers so me thinks he shouldn't be charging us rent.~ EXTERN VPLEIB RadiaQ23
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN VPLEIB RadiQ21A
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN VPLEIB RadiQ21A
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN VPLEIB RadiQ21A
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN VPLEIB RadiQ21A
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN VPLEIB RadiQ21A
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN VPLEIB RadiQ21A
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN VPLEIB RadiQ21A
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN VPLEIB RadiQ21A
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN VPLEIB RadiQ21A
 IF ~InParty("Sharteel") !Dead("Sharteel")~ THEN EXTERN VPLEIB RadiQ21A


CHAIN VPLEIB RadiQ21A
~Samuel will be so happy to see us all.~
END
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiRadia
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiRadia
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiRadia
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN BMINSC LeiRadia
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN BEDWIN LeiRadia
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN BKORGAN LeiRadia
 IF ~InParty("Sharteel") !Dead("Sharteel")~ THEN EXTERN VPSHAB LeiRadia
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN BIMOEN2 LeiRadia
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiRadia
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiRadia


CHAIN VPLEIB RadiQ21B
~Thank you for your comments. I shall sing of our latest adventures and I can just feel that warm fluffy towel right now.~
END
 ++ ~You know Leina, you're right we did have a rough go and since Samuel's is your favorite spot let's get on over there.~ EXTERN VPLEIB RadiaQ23
 ++ ~I don't know about Samuel's, the pickings are getting too familiar over there. The ale's great but a little variety does a body good.~ EXTERN VPLEIB RadiaQ22
 ++ ~When we get there I'm gonna ask Samuel to make a special tub to fit my size better. You know, we must be his best customers so me thinks he shouldn't be charging us rent.~ EXTERN VPLEIB RadiaQ23


CHAIN VPLEIB LeiRadE1
~(*Leina turns and her usually warm elven eyes glare icy cold*) That'll be a no you libidinous megalomaniac! A warning, when talking to yourself, make sure that no elf is standing nearby. (*She turns her back on him*)~
EXTERN BEDWIN LeiRadi2


CHAIN VPLEIB RadiaQ21
~Samuel will be so happy to see us all. I shall sing of our latest adventures and I can just feel that warm fluffy towel right now.~
DO ~SetGlobal("VP_Ric_RadianQuest","LOCALS",3)~ EXIT


CHAIN VPLEIB RadiaQ22
~Oh <CHARNAME>, you know Samuel has the best ale and not to mention the warmest, fluffiest towels around. Besides you can pick up what you want along the way.~
 = ~(*She skips lightly away, leaving you with these words*) As always, last one there gets the ale in.~
DO ~SetGlobal("VP_Ric_RadianQuest","LOCALS",3)~ EXIT


CHAIN VPLEIB RadiaQ23
~Skin flint! Oh alright I will buy the first round of ale and oh how wonderful, the thought of his warm fluffy towels feels. That is unless, of course, how energetic are you feeling?~
 = ~(*She skips lightly away, leaving you with these words*) ...because, as always, last one there gets the ale in.~
DO ~SetGlobal("VP_Ric_RadianQuest","LOCALS",3)~ EXIT


CHAIN VPLEIB N65
~Why? Why you considered his life yours to take? Why you murdered a man you knew nothing about?~
END
 ++ ~It is easy to kill when the victim is a stranger. I saw your father only as an obstacle to be removed from my path to you.~ EXTERN VPLEIB N66
 ++ ~It was as I said, your father attacked me before I had chance to reason with him.~ EXTERN VPLEIB N74


CHAIN VPLEIB N71
~Do not act so facetiously <CHARNAME>, you know full well what I meant! I am asking why did you murder an innocent stranger?~
END
 ++ ~It is easy to kill when the victim is a stranger. I saw your father only as an obstacle to be removed from my path to you.~ EXTERN VPLEIB N66
 ++ ~It was as I said, your father attacked me before I had chance to reason with him.~ EXTERN VPLEIB N74


CHAIN VPLEIB N72
~I cannot believe the coldness I hear in your voice when you say *a means, nothing more*! You actually believe your needs are what counts above all else, even the sanctity of life. Tell me, how can you condone what you have done?~
END
 ++ ~It is easy to kill when the victim is a stranger. I saw your father only as an obstacle to be removed from my path to you.~ EXTERN VPLEIB N66
 ++ ~It was as I said, your father attacked me before I had chance to reason with him.~ EXTERN VPLEIB N74


CHAIN VPLEIB N66
~(*Angrily*) And you believe that to be reason enough to commit cold blooded murder? Do you know or even care how heartless your words show you to be, <CHARNAME>.~
END
 ++ ~I choose my words to suit my mood. I will do whatever is necessary to achieve my goals.~ EXTERN VPLEIB N67
 ++ ~I cannot help how you or others perceive me Leina, I am who I am.~ EXTERN VPLEIB N67


CHAIN VPLEIB N74
~How can I believe that? You burst into my father's home and now he is dead, his blood is on your hands.~
END
 ++ ~I thought only to resque you, Leina.~ EXTERN VPLEIB 76
 ++ ~Yes his blood is on my hands, but they are hands that he forced by refusing to heed my words.~ EXTERN VPLEIB 82


CHAIN VPLEIB N67
~I see no remorse, only coldness reflected in your eyes. I see no room for compassion in your heart and it is for that reason I show none to you and your cause. I cannot forgive this wanton disregard for life that I see in you, it sickens me and as such I refuse to aid you further.~
END
 ++ ~Think for a second, if it were not for me you would still be a prisoner of your insane father, or worse married to the likes of Govan Duvaine. A little gratitude would not go amiss here!~ EXTERN VPLEIB 69
 ++ ~That is your choice. Your talents, or lack of them will not be missed.~ EXTERN VPLEIB 69
 ++ ~You ungrateful wench! Is this the thanks I get for risking my neck to rescue you?~ EXTERN VPLEIB 69


CHAIN VPLEIB N77
~He was not a happy man, his own grief had engulfed him completely. I can no more be certain of his reactions than I can of your intentions that day, so it does not give me the right to judge you <CHARNAME>.~
EXTERN VPLEIB N78


CHAIN VPLEIB N78
~I can only hope my father found some release in death and that he gained more than he lost. I will hold the memory of the man I knew as my father before his grief took hold of his mind in my heart always. Now the matter is truly closed and we will speak no more of it.~
END
 ++ ~And it will remain closed if that is your wish.~ EXTERN VPLEIB 79
 ++ ~A sensible decision. Loss is a private thing and we must all find our own way of dealing with it.~ EXTERN VPLEIB 79
 ++ ~The loss of a loved one always leaves the need to speak of them for a time. Let us not close the conversation completely Leina, but merely delay further words lest you need to talk some more at a future time.~ EXTERN VPLEIB 80


//Third Path, AR1000
IF WEIGHT #1 ~GlobalLT("VP_BPC","LOCALS",12) OR(2) Global("VP_Break_Point","LOCALS",2) Global("VP_MyFatherIsDead","LOCALS",3)~ THEN VPLEIB N64
~<CHARNAME>, I cannot continue further with you until I know the truth of my my father's death.~
END
 IF ~Global("BodhiJob","GLOBAL",2)~ THEN REPLY ~What do you want to hear Leina?~ DO ~SetGlobal("VP_Break_Point","LOCALS",2)~ EXTERN VPLEIB 65
 IF ~Global("BodhiJob","GLOBAL",0) Global("VP_Guild_Attacked","GLOBAL",1)~ THEN REPLY ~What do you want to hear Leina?~ DO ~SetGlobal("VP_Break_Point","LOCALS",2)~ EXTERN VPLEIB N65
 IF ~Global("BodhiJob","GLOBAL",2)~ THEN REPLY ~You want a description, the details of his dying Leina, is that what you are asking me to tell?~ DO ~SetGlobal("VP_Break_Point","LOCALS",2)~ EXTERN VPLEIB 71
 IF ~Global("BodhiJob","GLOBAL",0) Global("VP_Guild_Attacked","GLOBAL",1)~ THEN REPLY ~You want a description, the details of his dying Leina, is that what you are asking me to tell?~ DO ~SetGlobal("VP_Break_Point","LOCALS",2)~ EXTERN VPLEIB N71
 IF ~Global("BodhiJob","GLOBAL",2)~ THEN REPLY ~I have already told you, it was a means to an end Leina, nothing more.~ DO ~SetGlobal("VP_Break_Point","LOCALS",2)~ EXTERN VPLEIB 72
 IF ~Global("BodhiJob","GLOBAL",0) Global("VP_Guild_Attacked","GLOBAL",1)~ THEN REPLY ~I have already told you, it was a means to get to you Leina, nothing more.~ DO ~SetGlobal("VP_Break_Point","LOCALS",2)~ EXTERN VPLEIB N72


/////////////////////////CHAINS//////////////////////

CHAIN
IF ~Global("VP_JahiNoDancing","LOCALS",3)~ THEN VPLEIB PCM4aJahi
~Why the disapproving eye Jaheira? How have I offended you this time?~
DO ~SetGlobal("VP_JahiNoDancing","LOCALS",4)~
== BJAHEIR ~You haven't offended me Leina, but you have embarrassed yourself and <CHARNAME> with your wanton display.~
== VPLEIB ~(*Laughs*) Come off it Jaheira, the only person put out by my *wanton* display is yourself. Could it be that you didn't like that <CHARNAME> had his eye in my direction and not yours? If so, I could show you a few steps that might bring his eye back.~
== BJAHEIR ~Do you seriously think that such a shameless display by one who is no better than she should be, would be enough to capture his heart? Catch his eye maybe because he is after all a man, but never his heart.~
== VPLEIB ~(*Chuckles softly*) And who said it was his heart that I am interested in Jaheira?~
== BJAHEIR ~You play a dangerous game when you play with the emotions of men my girl. There are those who don't take kindly to girls who lead them on only to find themselves rejected.~
== VPLEIB ~Then you have nothing to worry about Jaheira, for I have never led a man on if my intention was to reject him.~
== BJAHEIR ~Have you no shame girl? <CHARNAME> deserves better than a wanton hussy who has no pride in herself.~
== VPLEIB ~I would watch that mouth of yours Jaheira, I am no hussy. In fact I can count the number of lovers I have taken since my husband deserted me on half a hand.~
= ~I may not have room for love in my life but I still take pleasure in the smell of a man's skin and the warmth of a man's embrace.~
= ~I never promise love nor do I cause pain, unlike numerous men who swear their love and then leave with the dawn.~
== BJAHEIR ~Then if you can not love <CHARNAME>, leave him to find one who can.~
== VPLEIB ~You mean one like yourself? Is this what this is about, and you only recently widowed? Where is *your* shame Jaheira?~
== BJAHEIR ~Khalid is and always will be in my heart, but it doesn't mean I can not make room for another. It is more than big enough to allow me to love again when the time is right.~
= ~That is something you will never understand because your own heart is like ice. Even though you profess it to be warm and alive with music but if truth be known it is a cold thing, devoid of love.~
= ~So play your games Leina, pretend you are happy, but in the end it is only yourself that you are fooling.~
== VPLEIB ~How little you know me Jaheira, I am content. How many people today can say that and mean it. I seldom hear *you* laugh, which gives me cause to suspect that you have never known how. So maybe the way I conduct my life isn't so wrong after all, because the way I see it, I am happy and you are not.~
EXIT

CHAIN
IF ~Global("VP_AerieNoDancing","LOCALS",3)~ THEN VPLEIB PCM4aAerie
~Aerie, I couldn't help but notice you enjoying the dance, why didn't you join me?~
DO ~SetGlobal("VP_AerieNoDancing","LOCALS",4)~
== BAERIE ~Oh no Leina, I couldn't. You moved so beautifully, and your feet... so sure of the steps. I am so clumsy, still trying to find my feet when walking let alone dancing.~
== VPLEIB ~I could teach you if you wanted, maybe dancing will help with your balance. I am sure that is all your clumsiness is, you were caged for so long after losing your wings you never had the chance to get used to walking on your feet.~
== BAERIE ~(*She looks wistful at the mention of her wings and then her face lights up*) Could you Leina, and would... men look at me and think me beautiful, the same way they look at you?~
== VPLEIB ~Aerie, if I teach you to dance it will be for yourself, for your own enjoyment. I seldom dance as I did because I know how it incites passion in my audience. They watch me yes but their thoughts are not of how graceful or how light I am on my feet.~
== BAERIE ~But you looked ... you were glowing Leina, you were beautiful, how could they have not seen? I want people to look at me and see past my deformity and think me beautiful.~
== VPLEIB ~(*Laughs*) That was the love of what I was doing shining through me Aerie. I love my music, I am passionate about it and when I am performing, all that love and passion overflows into me and this is what you saw.~
== BAERIE ~(*Sighs*) I am not gifted in the same way as you are. Maybe if I can not find this passion within me it will be a waste of both our times and <CHARNAME> will never look at me the way he looked at you.~
== VPLEIB ~(*Laughs softly*) So it is <CHARNAME> that Aerie wishes to dance for is it.~
== BAERIE ~(*Blushing*) I... um... yes...~
== VPLEIB ~Aerie please, you are beautiful, any man would have to be blind not to see it. Dancing in the way you want to is only going to make <CHARNAME> or any man see you as thing to be desired, not a beautiful, caring girl to love.~
= ~If <CHARNAME> wants you, let him discover his love in his own time. Desire and love do not automatically follow each other.~
= ~Then, if he is blind and chooses another, you still have your dance to share with one who does love you when you meet him.~
== BAERIE ~But you didn't seem to mind being desired when you danced, so why should I?~
== VPLEIB ~Oh, Aerie, the purpose of my dance was to show <CHARNAME> the passion he failed to see in music, not the passion in me.~
= ~(*Smiling broadly*) I think I did that a little too well don't you?~
== BAERIE ~(*Giggles*) I think you did too. I saw him stuff your sash inside his shirt when he thought no-one was looking.~
= ~I would still like to learn to dance, for myself, if you will teach me Leina?~
== VPLEIB ~Of course I will, but we will do it quietly and away from the others when we next rest.~
EXIT

CHAIN
IF ~Global("VP_VickyNoDancing","LOCALS",3)~ THEN VPLEIB PCM4aVicky
~Ok Viconia, spit it out, I can see you are dying to say something.~
DO ~SetGlobal("VP_VickyNoDancing","LOCALS",4)~
== BVICONI ~Then I will speak freely and say that I was disgusted to se a female flaunt and demean herself for the pleasure of the male eye. Do you have no pride in your sex, or is this decadence an acceptable part of you surfacers society?~
== VPLEIB ~This *decadence* as you call it, is what we surfacers call entertainment and there is nothing demeaning in dancing.~
== BVICONI ~Entertainment! You call inciting the male ego and giving them cause to think themselves worthy of such an abandoned display, entertainment? Bah, where is your female pride half elf?~
== VPLEIB ~Inciting anyone's ego or anything else for that matter has nothing to do with how or why I dance Viconia. I take great pride in my music and in return it brings me a great deal of pleasure.~
== BVICONI ~Drow have their music, but no female would use it to please a male, after all it is the males place to pleasure the female, that is, providing he is worthy enough to be chosen.~
== VPLEIB ~Life on the surface is a lot less cruel. We realise that none can choose their gender and as such none should be penalised for their birth. Life is sacred to all and we give respect to those we deem worthy of respect, regardless of sex.~
== BVICONI ~Yes reproduction does have it flaws. How much simpler it would be if we could choose the ratio of male female births that suited our requirements, say a healthy but small number for breeding and pleasure and enough to make up a strong army. That would rid us of so much waste.~
== VPLEIB ~And in the meantime your people give those not up to your standards to Lolth to become the monstrosities you call driders.~
= ~I can see why your kind are, and always will be, shunned by all surface dwellers whether elf or other, there is no place here for the cruel and sadistic nature of the Drow.~
== BVICONI ~By other do you mean your kind half elf, and how do you see yourself? You are neither elf nor human. It is this indiscriminate breeding that brings your kind into being that weakens the blood line of all surface elves. We Drow see this for what it is, a portend that the surface elves are doomed and Drow will reign supreme.~
== VPLEIB ~You show so much contempt I have to wonder why you chose to come to the surface at all Viconia. Your kind will never be accepted, <CHARNAME> should have left you to burn on your pyre.~
== BVICONI ~Bah! That was <CHARNAME>'s decision, not yours and for a male he showed good sense. As for my place here, that is a matter between <CHARNAME> and myself.~
= ~Your lack of female pride brings naught but contempt from me and if you have no respect for who you are then you will get no respect from me. You are dismissed.~
== VPLEIB ~(*Laughs*) I take no orders from you Drow, nor do I want your respect, that I can live well enough without. I will however repay the complement before I leave and say that there is nothing in you that will ever earn my respect either.~
EXIT

CHAIN
IF ~Global("VP_KorganNoDancing","LOCALS",3)~ THEN VPLEIB PCM4aKorgan
~Ok Korgan, spit it out....~
DO ~SetGlobal("VP_KorganNoDancing","LOCALS",4)~
== BKORGAN ~That wer some dance yer did elf. Care to give Korgan here a private show tonight?~
== VPLEIB ~Sorry Korgan, I don't do private shows.~
== BKORGAN ~P'raps yer should, one on one eh elf? That way none goes home frustrated or left to take care of hisself, if you get me meaning!~
== VPLEIB ~I get your meaning you disgusting, repulsive, little runt! Now take that filthy mouth of yours out of my sight before I fill it with a fireball!~
== BKORGAN ~(*Grins licentiously *) Feisty eh... nothing wrong with feisty. Tells yer what, hows about we toss and see who gets to fill who's mouth with what... what yer say elf?~
== VPLEIB ~(*Furiously, she pulls her sword *) I'll tell you what dwarf, let's not! Instead, how's about you getting out of my range quickly before you end up singing opera at my next show!~
== BKORGAN ~So yer thinks you can put yer wares on the counter and then shut up shop before a man's finished browsing does yer... (*He makes a move towards her*)~
== VPLEIB ~(*She stands her ground, looks down at him and in a threatening manner, she lowers her sword*) Dwarf...~
== BKORGAN ~(*Stops in his stride*) So, yer got the drop on the dwarf this time elf, but next time yer gets a dwarf all hot under 'is belt, we'll see who gets to drop who.~
EXIT

CHAIN
IF ~Global("VP_BJan","LOCALS",2)~ THEN VPLEIB BanterJan
~Jan, you have so many amusing tales of your family, have you never thought to put them into a book? A lot of people would get a great deal of pleasure and enjoyment from your stories.~
DO ~SetGlobal("VP_BJan","LOCALS",3)~
== BJAN ~Ah, but Leina my girl, would there be enough paper in Amn to cover all of the Jansen clan? More to the point, could I remember them all because if I was to write about some and not others Jan Jansen would be ostracised and sent to Coventry, wherever Coventry is. Only one other Jansen has been sent there and that was when...~
== VPLEIB ~Now that is exactly what I mean Jan, someone in your family has done just about everything a person can think of and somethings that no-one would want to think of. You would be famous Jan.~
== BJAN ~Jan Jansen the author and the inventor, now I like the sound of that.~
= ~The question is what to call this book of mine that is going to make me and the Jansen family famous... maybe "The Lord Of The Turnip Field" or... "The Importance Of Being Jansen", or maybe even... "Three Gnomes In A Boat".~
= ~Then again, perhaps I should go for something simpler like... "The Life And Times Of The Jansens"? What do you think Leina?~
== VPLEIB ~I would think there are enough tales for you to write several books Jan. Choose which title you like best, you already have your plot or plots and away you go. I can see you will soon have enough books to fill Candlekeep library twice over.~
== BJAN ~Um! We'd have to change that for starters. Candlekeep is no name for the Jansen's library to be housed!~
= ~Jankeep or Jansenkeep. Umm, now I like that. In fact that would be a first, no Jansen has ever had a place named after them.~
= ~Of course it's not as grand as the city old Balduran got named after himself but it'll do for a Jansen.~
== VPLEIB ~(*Laughs*) I think you are getting a bit carried away Jan. First you have write your book and then you have to market it.~
== BJAN ~With the Jansen contacts marketing is easy, we have contacts in the black market, white market or any colour market you like.~
= ~Who to write first is the thing. I could start with great-great-great uncle Henry... but then I would have to write about his wives, all of them and I'm not sure I'd remember all their names.~
= ~It might be best to start with great-great-great grandad Arty and a tale of "The Knights Of The Dinner Table". This story sort of reminds me...~
== VPLEIB ~Oh dear, perhaps this was not such a good idea after all.~
EXIT

CHAIN
IF ~Global("VP_BAnomen","LOCALS",2)~ THEN VPLEIB BanterAnomen
~Anomen please stop pacing. The night is long enough without you keeping us from our sleep.~
DO ~SetGlobal("VP_BAnomen","LOCALS",3)~
== BANOMEN ~I am sorry my lady. I do not mean to inconvenient anyone with my restlessness, but I see no reason to take to my bed when sleep evades me.~
== VPLEIB ~Then try and sit or at least pace quietly, the morning is a long way off.~
== BANOMEN ~I cannot sit when my mind is plagued with thoughts of my father.~
= ~What if he should be right my lady, what if I am striving for a goal beyond my capability? Surely none know us better than those who raised us?~
== VPLEIB ~No other knows us better than we know ourselves Anomen. Only you can look into your heart and know what lies within.~
= ~Your dreams are yours and whether they are important enough for you to strive to attain is your choice.~
== BANOMEN ~But my lady, how can I be sure that the things which I strive for are really what I want and not just the dreams of a boy desperate to be free of a hard father!~
== VPLEIB ~Look into yourself, and be honest with what you see is all I can suggest.~
= ~Then decide if what you discover is worth all this angst that I see in you.~
== BANOMEN ~That is what bothers me so. This desire of mine to become a knight is causing me so much turmoil I begin to think that if I do not think myself worthy, how can I expect others to judge me as such?~
== VPLEIB ~It seems that your dilemma comes from your dreams being scorned and derided by your father. It was having to listen to him scoff at your aspirations when you were a boy that has made you doubt your own worthiness.~
= ~After all, if a person is told something often enough then he will come to believe it.~
= ~You have to forget his scathing words and look to yourself, see your own self worth , then and only then will you be content with your decision.~
== BANOMEN ~You are right my lady. I thank you for your council and I am sorry that I have kept you from your rest. Sleep well my lady.~
EXIT

CHAIN
IF ~Global("VP_BMazzy","LOCALS",2)~ THEN VPLEIB BanterMazzy
~Mazzy, please may I see it?~
DO ~SetGlobal("VP_BMazzy","LOCALS",3)~
== BMAZZY ~Oh... hello Leina, it's you! You startled me for a moment, I nearly jumped out of my boots.~
== VPLEIB ~I'm sorry I did not mean to make you jump. You often take that stone out and look at it and it is easy to see the shadow that passes before your eyes as you gaze upon it. May I see it please?~
== BMAZZY ~(*She hesitantly hands Leina the stone she is holding*)~
== VPLEIB ~How unusual, it's almost in the shape of a heart and very smooth to the touch, not rough and cold like most pebbles. Where did you find such an exquisite thing Mazzy?~
== BMAZZY ~I... I did not find it, Patrick gave it to me.~
= ~He found it and gave it to me for safe keeping, he said he could not physically give me his heart but this pebble, as you call it, was very much like it symbolically speaking.~
= ~Silly children's ideas really.~
== VPLEIB ~Not so Mazzy. Your Patrick obviously thought you worthy to take care of his heart for him to make such a gesture.~
= ~If only I had given my own heart to a man more worthy than I did, then it would not be like a stone in my breast.~
== BMAZZY ~It is easy to let our hearts lead when our heads know that we should not follow.~
= ~You are not the first nor will you be the last to let a handsome face and pretty words. Carry you away.~
= ~Patrick was not the most handsome of men but his words were always truth I never knew him to speak what he did not mean to anyone in all the time that I knew him.~
== VPLEIB ~Then you were fortunate to have known such a man, for they are few and far between. I do not think you will find the likes of your Patrick again.~
== BMAZZY ~Maybe not Leina, but there are a lot of good men in the world deserving of love and who are not afraid to love in return.~
= ~Patrick will always have a place in my heart but one day there may be room for another to dwell there alongside him, as I am sure there will be for you... given time.~
== VPLEIB ~There will never be room in my heart for a man!~
= ~Music fills it to overflowing and I will never forsake that which has given me back my life.~
= ~No, I will not ask my heart to make room for that which has caused it so much pain before.~
= ~Here, take your Patrick's gift and treasure it for you may not get a gift as precious again.~
== BMAZZY ~(*She takes the stone and sighs*) This simple stone will always be the single, most precious thing I own, no matter what comes to me in the future and that is because of the reason it was given.~
= ~(*She puts the stone back in her pocket*) Now, no more reminiscing Leina, we must get back to the affairs of today and leave those of the past for a more suitable day.~
EXIT

CHAIN
IF ~Global("VP_Leina_HaerDalis","LOCALS",2)~ THEN VPLEIB haerdal
~I can hear you well enough Haer'Dalis. You have no need to practise your scales quite this close to my ear.~
DO ~SetGlobal("VP_Leina_HaerDalis","LOCALS",3)~
== BHAERDA ~Leina my little firefly, do you not think that our two voices compliment each other? We should think of combining our talents.~
== VPLEIB ~You have the glib tongue of the bard, I will give you that Haer'Dalis but you seem more at ease with your swords than any harp.~
== BHAERDA ~(*Feigning to be hurt*) My firefly, do you mean for your words to wound so deeply, do I not sing as well as any nightjar?~
== VPLEIB ~(*Smiling*) Nightjar Haer'Dalis? I do not think I have ever heard a voice compared to a nightjar before. It is not the most melodic of song birds.~
== BHAERDA ~Ah! But perchance you are right my sweet, in which case this bard needs to place himself in your capable hands and together we will make magic.~
== VPLEIB ~Magic? I thought you said it was music you had in mind to make.~
== BHAERDA ~Do not tease me my firefly, together our music will create magic. We must rehearse tonight whilst the others are at their rest.~
= ~What say you? We will meet when the stars gather to greet the moon, they alone shall be our audience.~
== VPLEIB ~(*Laughs softly) I think not Haer'Dalis. I have seen that glint in your eye too many times in the eyes of others not to recognise the intent behind it. I suspect you have something more than the making of music in mind.~
== BHAERDA ~(*Putting his hand to his breast) Oh! That you should suspect such a thing of me my firefly, it cuts to my heart.~
= ~Then tonight I fear the stars will miss a magical performance for I must entertain them alone. Perchance I could cheer them with the promise of another night my sweet?~
== VPLEIB ~(*Still smiling*) It is not wise to promise that which you cannot deliver, and Haer'Dalis, please try not to keep us all awake tonight with your renditions.~
EXIT

CHAIN
IF ~Global("VP_Leina_Keldorn","LOCALS",2)~ THEN VPLEIB keldorn
~Sir Keldorn, I heard you have two very young daughters. Tell me, do they not miss their father and do you not feel you are missing the opportunity to watch them grow into young women by staying so much on the road?~
DO ~SetGlobal("VP_Leina_Keldorn","LOCALS",3)~
== BKELDOR ~Often Leina, often, but please I much prefer you to call me Keldorn. The sir makes me sound so pompous.~
== VPLEIB ~(*Laughs*) You pompous, never si... Keldorn. Yes you take your duties as a Paladin seriously but you also find time to talk to and to advise all who seek your wisdom regardless of their station in life.~
== BKELDOR ~Ah! If only all those who sought my wisdom actually heeded it Leina, but I suppose my own wisdom has come with age and so it will be for others.~
= ~We learn as we grow and we therefore expect to learn more the longer we live. Whereas it is true for some, sadly not for all, so I will always be needed to help those who have fallen to find their path again and to fight for those oppressed by the less godly.~
== VPLEIB ~And what of Keldorn the man, surely he has done all that his god could expect of him? Do you not wish that he would now give you leave to finish your life away from the battlefield and in the bosom of your family?~
== BKELDOR ~If it were for me to decide I would gladly retire and spend what years I have left with my Maria, and be there to watch my daughters grow into their own lives, but I pledged my service to Torm long before I married Maria.~
= ~As long as he has a need for an old Paladin such as myself I am sworn to do his work and follow whatever path he sets before me.~
== VPLEIB ~You are not old Keldorn, You may have the years of the mature man but your mind and your spirit has the vitality of a youth half your age. I am sure that Torm also sees this in you and that is why he is reluctant to let go of so faithful a servant.~
== BKELDOR ~(*Smiling*) You have made an old Paladin happy with your words Leina. For one so young you have a very sensible and knowing head on your shoulders. This I have observed in you many times as you speak to those around you.~
== VPLEIB ~No, Keldorn. I would not say that my head is sensible for what I have learned has been through being very unsensible, a hard and painful way to learn and not a way I would recommend.~
= ~I only wish I had been more sensible, more open to the words of others far wiser than myself. Perhaps I could have saved myself a lot of that pain.~
== BKELDOR ~Ah, but then maybe you would not be the same young woman that you are today.~
= ~You are talented, beautiful and your heart is good, be proud of who you are and what your experiences have taught you. Never let others persuade you that you are anything less than what you are.~
== VPLEIB ~I am not about to let my heart be swayed again Keldorn, not ever. I am content with my life as it is, I have my music and I am safe in the knowledge that it can never hurt me.~
== BKELDOR ~Not ever is a very long time Leina, too long to be sure of anything, especially for one with a life span such as your own.~
= ~Live each day as it unfolds, give thanks for whatever it brings but always look forward to tomorrow and delight in the anticipation of the unknown.~
== VPLEIB ~(*Laughs softly*) And is that the philosophy of Sir Keldorn? Seriously, your words carry your wisdom Keldorn, and I thank you for sharing them with me.~
EXIT

//If the group has taken not taken care of Daniel Trebois then begin melora1. If Trebois is dead then begin melora1a.

CHAIN
IF ~Global("VP_BMelora","LOCALS",2) Global("SPRITE_IS_DEADTrebois","LOCALS",0)~ THEN VPLEIB melora1
~Melora, do you never relax? We are well out of the reach of bounty hunters here?~
DO ~SetGlobal("VP_BMelora","LOCALS",3)~
== NJMELB ~I have lived on my wits long enough to know never to relax or let my guard down, for that is when the enemy shows himself.~
== VPLEIB ~Come you are safe among friends, none here will allow harm to befall you. Take a little time to enjoy the day, once it is gone we cannot bring it back.~
== NJMELB ~What a daft thing to say Leina! I have yet to know a day that I would want to bring back and live through again!~
== VPLEIB ~(*Laughs*) Melora, I was talking about the time the day takes from our lives, not the day itself.~
== NJMELB ~I knew that, I am a half*ling* not a half*wit* bard!!~
== VPLEIB ~Hold there one minute Melora! I did not imply that you were a halfwit, please, you have no cause to be so defensive. I am not the enemy here.~
== NJMELB ~Maybe not, but you do persist in acquiring arcane knowledge. Why do you do that when your talent as a bard brings joy to all and magic is so dark?~
== VPLEIB ~Music is my life, my only passion that is true. Whereas magic to me is just another useful skill I find I can master easily, but it does not hold the same lure for me as it does to a wizard.~
== NJMELB ~Then why do you need it if as you say music is your only passion? Is it that magic fills some need that your music does not?~
= ~Maybe you like the sense of power that comes with knowing you can hurl a fireball or call down a bolt of lightning to strike those who oppose you?~
== VPLEIB ~That is not fair Melora, what of your skills? Do you not set traps and then lure those who oppose you into them, causing just as much pain and harm as any lightning bolt that I can call down?~
= ~Does it not give you a sense of power, knowing that you can do this?~
== NJMELB ~I...~
== VPLEIB ~You what Melora? You did not think of that? Well perhaps next time you will think before you start condemning the harm magic does. Now, if you cannot hold a civil conversation, I will leave you to ponder my words.~
EXIT

CHAIN
IF ~Global("VP_BMelora","LOCALS",2) Global("SPRITE_IS_DEADTrebois","LOCALS",1)~ THEN VPLEIB melora1a
~Melora, do you never relax? Trebois cannot bother you any more.~
DO ~SetGlobal("VP_BMelora","LOCALS",3)~
== NJMELB ~Trebois no, but there is always another waiting to take his place. Hoping to collect the pittance of gold that my head will bring them.~
== VPLEIB ~ With Trebois dead, other bounty hunters know you to be a force to be reckoned with and will leave you alone surely? Come, relax a little Melora, take the time to enjoy the day. For once it is gone, we cannot bring it back.~
== NJMELB ~What a daft thing to say Leina! I have yet to know a day that I would want to bring back and live through again!~
== VPLEIB ~(*Laughs*) Melora, I was talking about the time the day takes from our lives, not the day itself.~
== NJMELB ~I knew that, I am a half*ling* not a half*wit* bard!!~
== VPLEIB ~Hold there one minute Melora! I did not imply that you were a halfwit, please, you have no cause to be so defensive. I am not the enemy here.~
== NJMELB ~Maybe not, but you do persist in acquiring arcane knowledge. Why do you do that when your talent as a bard brings joy to all and magic is so dark?~
== VPLEIB ~Music is my life, my only passion that is true. Whereas magic to me is just another useful skill I find I can master easily, but it does not hold the same lure for me as it does to a wizard.~
== NJMELB ~Then why do you need it if as you say music is your only passion? Is it that magic fills some need that your music does not?~
= ~Maybe you like the sense of power that comes with knowing you can hurl a fireball or call down a bolt of lightning to strike those who oppose you?~
== VPLEIB ~That is not fair Melora, what of your skills? Do you not set traps and then lure those who oppose you into them, causing just as much pain and harm as any lightning bolt that I can call down?~
= ~Does it not give you a sense of power, knowing that you can do this?~
== NJMELB ~I...~
== VPLEIB ~You what Melora? You did not think of that? Well perhaps next time you will think before you start condemning the harm magic does. Now, if you cannot hold a civil conversation, I will leave you to ponder my words.~
EXIT

CHAIN
IF ~Global("VP_BMelora","LOCALS",5)~ THEN VPLEIB melora2
~Melora, a moment please.~
DO ~SetGlobal("VP_BMelora","LOCALS",6)~
== NJMELB ~What is it this time Leina?~
== VPLEIB ~I wish to apologise, our last conversation ended badly. I am sorry I did not mean my words to be so harsh.~
== NJMELB ~Then I guess I am sorry too Leina. I know you are a good person but sometimes it is difficult for me to see past the magic.~
== VPLEIB ~Do you want to tell me what it is that makes you burn with so much hatred for magic?~
== NJMELB ~It is not so much the magic I abhor but the conceit of all magic users. The power they wield is terrible and they know it.~
= ~As often as not to the point of arrogance and then, when their own self importance takes them over, all other beings are seen as inferior in their eyes.~
== VPLEIB ~But that is not true! Yes, there are those that believe as you say, but is that not true of all people?~
= ~Most magic users respect their craft and the power that comes with it, often only resorting to magic when all else fails.~
== NJMELB ~(*Scornfully*) I do not speak of what I have not seen Leina. My father is a mage, if father is the correct word to use here!~
= ~He took my mother, used her and discarded her when she gave birth to me. I was his daughter, but no more worthy of his notice than an ant under his boot!~
= ~As for my mother, she loved me for a while but she also discarded me when a profitable marriage appeared on the horizon. Turns out she was as selfish as he.~
= ~I used to hate him and feel sorrow for her, but now I just hate them both!~
== VPLEIB ~I am sorry Melora. It would appear we have both been let down by the men in our lives. You by your father and me by the bastard I loved and called husband.~
= ~Maybe this gives us some common ground for us to work on towards becoming friends. What do you say Melora, shall we start again?~
== NJMELB ~Maybe... if you promise I won't have to learn magic in order to be deemed suitable as friend material for a user of magic.~
== VPLEIB ~(*Laughs softly*) No, I promise, no learning of magic required, but maybe... just maybe, this bard come magic user can, in time, teach you that it is not a thing to despise and fear so much.~
== NJMELB ~How many years does a half elf have Leina?~
EXIT

APPEND BIMOEN2

CHAIN BIMOEN2 theatr
~Hey Leina, any time you want, I'll fill you in on all <PRO_HISHER> weak spots. One poke and it's usually all over but for the cry for mercy.~
EXTERN VPLEIB TheatQ9a

APPEND BHAERDA

CHAIN BHAERDA LeiTheat
~(*Looking knowingly towards Leina*) Ah my little fire fly, I believe you are somewhat responsible for this idea of <CHARNAME>'s.~
END
 IF ~OR(2) !InParty("Imoen2") Dead("Imoen2") OR(2) !InParty("Jaheira") Dead("Jaheira") OR(2) !InParty("Jan") Dead("Jan") OR(2) !InParty("Keldorn") Dead("Keldorn") OR(2) !InParty("Korgan") Dead("Korgan") OR(2) !InParty("Mazzy") Dead("Mazzy") OR(2) !InParty("Nalia") Dead("Nalia") OR(2) !InParty("Valygar") Dead("Valygar") OR(2) !InParty("Viconia") Dead("Viconia") OR(2) !InParty("njhroth") Dead("njhroth") OR(2) !InParty("njdar") Dead("njdar") OR(2) !InParty("njmelora") Dead("njmelora") OR(2) !InParty("njtaffic") Dead("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ EXTERN VPLEIB LeiThea1
 IF ~OR(2) !InParty("Imoen2") Dead("Imoen2") OR(2) !InParty("Jaheira") Dead("Jaheira") OR(2) !InParty("Jan") Dead("Jan") OR(2) !InParty("Keldorn") Dead("Keldorn") OR(2) !InParty("Korgan") Dead("Korgan") OR(2) !InParty("Mazzy") Dead("Mazzy") OR(2) !InParty("Nalia") Dead("Nalia") OR(2) !InParty("Valygar") Dead("Valygar") OR(2) !InParty("Viconia") Dead("Viconia") OR(2) !InParty("njhroth") Dead("njhroth") OR(2) !InParty("njdar") Dead("njdar") OR(2) !InParty("njmelora") Dead("njmelora") OR(2) !InParty("njtaffic") Dead("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ EXTERN VPLEIB LeiThea1
 IF ~OR(2) !InParty("Imoen2") Dead("Imoen2") OR(2) !InParty("Jaheira") Dead("Jaheira") OR(2) !InParty("Jan") Dead("Jan") OR(2) !InParty("Keldorn") Dead("Keldorn") OR(2) !InParty("Korgan") Dead("Korgan") OR(2) !InParty("Mazzy") Dead("Mazzy") OR(2) !InParty("Nalia") Dead("Nalia") OR(2) !InParty("Valygar") Dead("Valygar") OR(2) !InParty("Viconia") Dead("Viconia") OR(2) !InParty("njhroth") Dead("njhroth") OR(2) !InParty("njdar") Dead("njdar") OR(2) !InParty("njmelora") Dead("njmelora") OR(2) !InParty("njtaffic") Dead("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ EXTERN VPLEIB LeiThea1
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiTheat
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiTheat
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiTheat
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiTheat
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiTheat
 IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN BVALYGA LeiTheat
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN BNALIA LeiTheat
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN BMAZZY LeiTheat
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN BKORGAN LeiTheat
 IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN BKELDOR LeiTheat
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN BJAN LeiTheat
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN BJAHEIR LeiTheat
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN BIMOEN2 LeiTheat


CHAIN BHAERDA LeiThea3
~(*Looks towards Leina*) I wonder... who has who my little fire fly!~
END
 IF ~OR(2) !InParty("Imoen2") Dead("Imoen2") OR(2) !InParty("Jaheira") Dead("Jaheira") OR(2) !InParty("Jan") Dead("Jan") OR(2) !InParty("Keldorn") Dead("Keldorn") OR(2) !InParty("Korgan") Dead("Korgan") OR(2) !InParty("Mazzy") Dead("Mazzy") OR(2) !InParty("Nalia") Dead("Nalia") OR(2) !InParty("Valygar") Dead("Valygar") OR(2) !InParty("Viconia") Dead("Viconia") OR(2) !InParty("njhroth") Dead("njhroth") OR(2) !InParty("njdar") Dead("njdar") OR(2) !InParty("njmelora") Dead("njmelora") OR(2) !InParty("njtaffic") Dead("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ EXTERN VPLEIB LeiThea1
 IF ~OR(2) !InParty("Imoen2") Dead("Imoen2") OR(2) !InParty("Jaheira") Dead("Jaheira") OR(2) !InParty("Jan") Dead("Jan") OR(2) !InParty("Keldorn") Dead("Keldorn") OR(2) !InParty("Korgan") Dead("Korgan") OR(2) !InParty("Mazzy") Dead("Mazzy") OR(2) !InParty("Nalia") Dead("Nalia") OR(2) !InParty("Valygar") Dead("Valygar") OR(2) !InParty("Viconia") Dead("Viconia") OR(2) !InParty("njhroth") Dead("njhroth") OR(2) !InParty("njdar") Dead("njdar") OR(2) !InParty("njmelora") Dead("njmelora") OR(2) !InParty("njtaffic") Dead("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ EXTERN VPLEIB LeiThea1
 IF ~OR(2) !InParty("Imoen2") Dead("Imoen2") OR(2) !InParty("Jaheira") Dead("Jaheira") OR(2) !InParty("Jan") Dead("Jan") OR(2) !InParty("Keldorn") Dead("Keldorn") OR(2) !InParty("Korgan") Dead("Korgan") OR(2) !InParty("Mazzy") Dead("Mazzy") OR(2) !InParty("Nalia") Dead("Nalia") OR(2) !InParty("Valygar") Dead("Valygar") OR(2) !InParty("Viconia") Dead("Viconia") OR(2) !InParty("njhroth") Dead("njhroth") OR(2) !InParty("njdar") Dead("njdar") OR(2) !InParty("njmelora") Dead("njmelora") OR(2) !InParty("njtaffic") Dead("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ EXTERN VPLEIB LeiThea1
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiThea3
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiThea3
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiThea3
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiThea3
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiThea3
 IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN BVALYGA LeiThea3
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN BNALIA LeiThea3
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN BMAZZY LeiThea3
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN BKORGAN LeiThea3
 IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN BKELDOR LeiThea3
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN BJAN LeiThea3
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN BJAHEIR LeiThea3
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN BIMOEN2 LeiThea3


CHAIN BHAERDA LeiThea4
~(*Looks towards Leina*) Ah my bright, beautiful fire fly, have you perchance flown a little to close to the fire this time?~
END
 IF ~OR(2) !InParty("Imoen2") Dead("Imoen2") OR(2) !InParty("Jaheira") Dead("Jaheira") OR(2) !InParty("Jan") Dead("Jan") OR(2) !InParty("Keldorn") Dead("Keldorn") OR(2) !InParty("Korgan") Dead("Korgan") OR(2) !InParty("Mazzy") Dead("Mazzy") OR(2) !InParty("Nalia") Dead("Nalia") OR(2) !InParty("Valygar") Dead("Valygar") OR(2) !InParty("Viconia") Dead("Viconia") OR(2) !InParty("njhroth") Dead("njhroth") OR(2) !InParty("njdar") Dead("njdar") OR(2) !InParty("njmelora") Dead("njmelora") OR(2) !InParty("njtaffic") Dead("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ EXTERN VPLEIB LeiThea1
 IF ~OR(2) !InParty("Imoen2") Dead("Imoen2") OR(2) !InParty("Jaheira") Dead("Jaheira") OR(2) !InParty("Jan") Dead("Jan") OR(2) !InParty("Keldorn") Dead("Keldorn") OR(2) !InParty("Korgan") Dead("Korgan") OR(2) !InParty("Mazzy") Dead("Mazzy") OR(2) !InParty("Nalia") Dead("Nalia") OR(2) !InParty("Valygar") Dead("Valygar") OR(2) !InParty("Viconia") Dead("Viconia") OR(2) !InParty("njhroth") Dead("njhroth") OR(2) !InParty("njdar") Dead("njdar") OR(2) !InParty("njmelora") Dead("njmelora") OR(2) !InParty("njtaffic") Dead("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ EXTERN VPLEIB LeiThea1
 IF ~OR(2) !InParty("Imoen2") Dead("Imoen2") OR(2) !InParty("Jaheira") Dead("Jaheira") OR(2) !InParty("Jan") Dead("Jan") OR(2) !InParty("Keldorn") Dead("Keldorn") OR(2) !InParty("Korgan") Dead("Korgan") OR(2) !InParty("Mazzy") Dead("Mazzy") OR(2) !InParty("Nalia") Dead("Nalia") OR(2) !InParty("Valygar") Dead("Valygar") OR(2) !InParty("Viconia") Dead("Viconia") OR(2) !InParty("njhroth") Dead("njhroth") OR(2) !InParty("njdar") Dead("njdar") OR(2) !InParty("njmelora") Dead("njmelora") OR(2) !InParty("njtaffic") Dead("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ EXTERN VPLEIB LeiThea1
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiThea4
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiThea4
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiThea4
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiThea4
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiThea4
 IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN BVALYGA LeiThea4
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN BNALIA LeiThea4
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN BMAZZY LeiThea4
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN BKORGAN LeiThea4
 IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN BKELDOR LeiThea4
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN BJAN LeiThea4
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN BJAHEIR LeiThea4
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN BIMOEN2 LeiThea4


CHAIN BHAERDA LeiThea1
~I wonder, has my firefly really forgotten or does she only pretend to have?~
END
 IF ~True()~ THEN EXTERN VPLEIB TheaQ151
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiThea1
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiThea1
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiThea1
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiThea1
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiThea1
 IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN BVALYGA LeiThea1
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN BNALIA LeiThea1
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN BMAZZY LeiThea1
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN BKORGAN LeiThea1
 IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN BKELDOR LeiThea1
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN BJAN LeiThea1
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN BJAHEIR LeiThea1
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN BIMOEN2 LeiThea1


CHAIN BHAERDA LeiThea2
~Ha, ha, I like you even more my little firefly. You have won my heart most fair of all women. Oh yes, sing of the great Haer Dalis and his lady the fair Leina.~
END
 IF ~True()~ THEN EXTERN VPLEIB TheaQ161
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiThea2
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN BMAZZY LeiThea2
 IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN BKELDOR LeiThea2
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN BJAN LeiThea2

APPEND ~FFBART~

CHAIN FFBART theatr1
~(*The hafling's face lights up at the sight of Leina heading towards him*) Leina, whatever has delighted you so lass? Come, tell Samuel what brings this glow to your face... have you found yourself a man? You know there's nothing that would please me more than to hear you have found a man worthy of you at last.~
END
 IF ~!Global("Playhouse","GLOBAL",0)~ THEN EXTERN VPLEIB TheatQ14
 IF ~Global("Playhouse","GLOBAL",0)~ THEN EXTERN VPLEIB TheaQ14a


CHAIN FFBART theatr2
~Leina, of course lass, my patrons remember your sweet voice and ask about you often. Tell me, your songs, they will be about your travels and your adventures with <CHARNAME>, yes?~
 = ~It will be a splendid time, just like old times. We must make ready for your performance, your old room is exactly as you left it.~
END
 IF ~NumInParty(1)~ THEN REPLY ~(*Having watched Leina race off to Samuel, you smile*) I have an idea.~ EXTERN VPLEIB theatr3a
 IF ~NumInParty(1)~ THEN REPLY ~(*Having watched Leina race off to Samuel, you smile*) I think I have her this time.~ EXTERN VPLEIB theatr3a
 IF ~NumInPartyGT(1)~ THEN REPLY ~(*Having watched Leina race off to Samuel, you smile to the group*) I have an idea.~ EXTERN VPLEIB theatr3b
 IF ~NumInPartyGT(1)~ THEN REPLY ~(*Having watched Leina race off to Samuel, you smile to the group*) I think we have her this time.~ EXTERN VPLEIB theatr3c
 IF ~NumInPartyGT(1)~ THEN REPLY ~(*Having watched Leina race off to Samuel, you smile to the group*) Are you with me, we will get Leina this time.~ EXTERN VPLEIB theatr3d


CHAIN FFBART theatr3a
~<CHARNAME>...~
EXTERN VPLEIB TheatQ15


CHAIN FFBART theatr3b
~<CHARNAME>...~
END
 IF ~True()~ THEN EXTERN VPLEIB TheatQ15
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiTheat
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiTheat
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiTheat
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiTheat
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiTheat
 IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN BVALYGA LeiTheat
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN BNALIA LeiTheat
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN BMAZZY LeiTheat
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN BKORGAN LeiTheat
 IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN BKELDOR LeiTheat
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN BJAN LeiTheat
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN BJAHEIR LeiTheat
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN BIMOEN2 LeiTheat
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN BHAERDA LeiTheat
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN BCERND LeiTheat
 IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN BANOMEN LeiTheat
 IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN BAERIE LeiTheat
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN BEDWIN LeiTheat
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN BMINSC LeiTheat
 IF ~InParty("vpkachi") !Dead("vpkachi")~ THEN EXTERN VPKACB LeiTheaB
 IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN BYOSHIM LeiTheat


CHAIN FFBART theatr3c
~<CHARNAME>...~
END
 IF ~True()~ THEN EXTERN VPLEIB TheatQ15
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiThea3
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiThea3
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiThea3
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiThea3
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiThea3
 IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN BVALYGA LeiThea3
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN BNALIA LeiThea3
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN BMAZZY LeiThea3
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN BKORGAN LeiThea3
 IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN BKELDOR LeiThea3
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN BJAN LeiThea3
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN BJAHEIR LeiThea3
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN BIMOEN2 LeiThea3
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN BHAERDA LeiThea3
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN BCERND LeiThea3
 IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN BANOMEN LeiThea3
 IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN BAERIE LeiThea3
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN BEDWIN LeiThea3
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN BMINSC LeiThea3
 IF ~InParty("vpkachi") !Dead("vpkachi")~ THEN EXTERN VPKACB LeiThea3
 IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN BYOSHIM LeiThea3


CHAIN FFBART theatr3d
~<CHARNAME>...~
END
 IF ~True()~ THEN EXTERN VPLEIB TheatQ15
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiThea4
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiThea4
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiThea4
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiThea4
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiThea4
 IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN BVALYGA LeiThea4
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN BNALIA LeiThea4
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN BMAZZY LeiThea4
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN BKORGAN LeiThea4
 IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN BKELDOR LeiThea4
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN BJAN LeiThea4
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN BJAHEIR LeiThea4
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN BIMOEN2 LeiThea4
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN BHAERDA LeiThea4
 IF ~InParty("Cernd") !Dead("Cernd")~ THEN EXTERN BCERND LeiThea4
 IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN BANOMEN LeiThea4
 IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN BAERIE LeiThea4
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN BEDWIN LeiThea4
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN BMINSC LeiThea4
 IF ~InParty("vpkachi") !Dead("vpkachi")~ THEN EXTERN VPKACB LeiThea4
 IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN BYOSHIM LeiThea4

CHAIN FFBART theatr4
~(*A huge grin covering his face*) That's my Leina, and if truth be told, I doubt you would have the lass any other way!~
EXIT