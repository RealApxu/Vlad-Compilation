BEGIN VPSIMB

/*
CHAIN VPSIMB TS00
~You have about as much appeal as a rutting Owlbear.~
EXTERN VPCORB TS1

CHAIN VPSIMB TS01
~I assume, Coran, that you think your elven charms are considerable. Let me enlighten you: they aren't.~
EXTERN VPCORB TS3

CHAIN VPSIMB TS02
~You think I'd surrender myself to the likes of you, that's a laugh.~
EXIT

CHAIN VPSIMB TS03
~I might find you attractive, Coran, if you weren't so irritating.~
EXIT
*/

// Aerie

CHAIN
IF WEIGHT #-77 ~Global("VP_BSime1","LOCALS",2)~ THEN VPSIMB 4
~Another day of depression is one day too many. Why the sour face, Aerie?~ [SIMEAE01]
DO ~SetGlobal("VP_BSime1","LOCALS",3)~
EXTERN BAERIE TS460

CHAIN VPSIMB 5
~If you say so. But if you'd try to smile you'd look prettier.~
EXTERN BAERIE TS461

CHAIN VPSIMB 6
~Let's see... turn around, Aerie. Well, not completely. If one does not see your face you are quite nice looking. Too fragile and bony may be, but some like it.~
EXTERN BAERIE TS462

CHAIN VPSIMB 7
~Puffy eyes, red twitching nose, trembling lips...~ [SIMEAE02]
EXTERN BAERIE TS463

CHAIN VPSIMB 8
~(*shrugs*) And I thought I was improving things.~
EXIT

CHAIN
IF WEIGHT #-76 ~Global("VP_BSime2","LOCALS",2)~ THEN VPSIMB 9
~Aerie, here you are! Why are you always lagging behind?~ [SIMEAE03]
DO ~SetGlobal("VP_BSime2","LOCALS",3)~
EXTERN BAERIE TS464

CHAIN VPSIMB 10
~Princess, you need not measure your every step. We are not on a raft, you will not slip. And the floor under our feet is not covered with broken glass and spikes.~ [SIMEAE04]
EXTERN BAERIE TS465

CHAIN VPSIMB 11
~Aerie, I reckon that you spent many years on the ground.~
EXTERN BAERIE TS466

CHAIN VPSIMB 12
~I am sorry, Aerie. I could not have imagined that anyone might be uncomfortable on the solid ground.~
EXTERN BAERIE TS467

CHAIN VPSIMB 13
~But why, Aerie?~
EXTERN BAERIE TS468

CHAIN VPSIMB 14
~<CHARNAME>! Do you mind if we walk more slowly? I would rather not be sweating and puffing if we run into an enemy!~
EXTERN BAERIE TS469

CHAIN VPSIMB 15
~Do not look at me!~
EXIT

CHAIN
IF WEIGHT #-75 ~Global("VP_Sime_vs_Aerie","GLOBAL",1)~ THEN VPSIMB 562
~Aerie, what are you doing? What is this? Let me take a look at this vial.~
DO ~SetGlobal("VP_Sime_vs_Aerie","GLOBAL",2)~
EXTERN BAERIE TS470

CHAIN VPSIMB 563
~Give me that vial.~
EXTERN BAERIE TS471

CHAIN VPSIMB 564
~I can see that. No harm in giving me an empty vial, is not it?~
EXTERN BAERIE TS472

CHAIN VPSIMB 565
~(*Sniffs the bottle carefully*)... <CHARNAME>! Hold her! Silly child.~
END
 ++ ~She is... faint?~ EXTERN VPSIMB 566
 ++ ~What, I have nothing better to do than run after hysterical girls? She will come back. Sime, she fainted!~ EXTERN VPSIMB 566

CHAIN VPSIMB 566
~You caught her? Good. Please, hold her tight while I purge her body from poison.~
END
 ++ ~Poison? Aerie poisoned herself? I do not understand. Is not it regarded as a mortal sin among elves? Why, Aerie, why?~ EXTERN VPSIMB 567
 ++ ~As if we do not have enough troubles already. She is unaccustomed to the trials of adventurer's life. I should not have allowed her to follow... us.~ EXTERN VPSIMB 570
 ++ ~Do you think that she did it because of...~ EXTERN VPSIMB 567

CHAIN VPSIMB 567
~It is because of you and me, <CHARNAME>, do not you see? She is in love with you.~
END
 ++ ~I hope she will be alright. I will talk to her and I will try to explain... I do not know how yet, but I will try. I do not wish our future to be clouded by this child's tears.~ EXTERN VPSIMB 568
 ++ ~Because of me? My poor gentle Aerie! Sime, I am sorry, but I think my eyes are finally opened. I love Aerie.~ EXTERN VPSIMB 569

CHAIN VPSIMB 568
~She is waking up. I will leave you now. Whatever you want to say should be said in private. I do not think she would want me around.~
DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)~
EXIT

CHAIN VPSIMB 569
~I see. Know <CHARNAME>, that I will not ask you for your love again. It looks that you find a good place for it. But hid my advice, tell her how I loved you. The foolish ones hold the sense of victory in more esteem than the tenderness of the first days together. When you would spend the last penny of your happiness with your sweetheart, on the night of my triumph, do not come to me! I will not know you. And how will I be able to help? I would not know how to heal the happiness.~
DO ~SetGlobal("SimeRomanceActive","GLOBAL",3) SetGlobal("VP_Sime_vs_Aerie","GLOBAL",3)~
EXIT

CHAIN VPSIMB 570
~To follow YOU, that's what you wanted to say. It is because of you and me, <CHARNAME>, let's face it. She is in love with you.~
END
 ++ ~I hope she will be alright. I will talk to her and I will try to explain... I do not know how yet, but I will try. I do not wish our future to be clouded by this child's tears.~ EXTERN VPSIMB 568
 ++ ~Because of me? My poor gentle Aerie! Sime, I am sorry, but I think my eyes are finally opened. I love Aerie.~ EXTERN VPSIMB 569

CHAIN
IF WEIGHT #-74 ~Global("VP_Sime_vs_Aerie","GLOBAL",5)~ THEN VPSIMB 571
~Aerie, I wanted to talk to you.~
DO ~SetGlobal("VP_Sime_vs_Aerie","GLOBAL",6)~
EXTERN BAERIE TS473

CHAIN VPSIMB 572
~Not enough, I am afraid. I can sense your distress and I want to help you.~
EXTERN BAERIE TS474

CHAIN VPSIMB 573
~I cannot make <CHARNAME> to love you. I cannot make anybody to love anybody. And you cannot either. But love is not a prison, Aerie. Love is wings. Even love which is unreturned.~
EXTERN BAERIE TS475

CHAIN VPSIMB 574
~I do. Listen to me and do not shut your heart. It's like a port: one ship enters while another leaves. In few years you will not be able to remember his name, too much in love with another man to care.~
EXTERN BAERIE TS476

CHAIN VPSIMB 575
~(*smiles*) Of course, dear. But just in case, remember what I told you: do not shut your heart.~
EXIT

// Korgan

CHAIN
IF WEIGHT #-73 ~Global("VP_BSime3","LOCALS",2)~ THEN VPSIMB 16
~Greed and lust, nothing else! Even your bravery is a commendable thing. For it is born in a cold heart.~ [SIMEKO01]
DO ~SetGlobal("VP_BSime3","LOCALS",3)~
EXTERN BKORGAN TS134

CHAIN VPSIMB 17
~Bah! Try it and you may lose your fist.~ [SIMEKO02]
EXTERN BKORGAN TS135

CHAIN VPSIMB 18
~A martyr, no doubt.~
EXTERN BKORGAN TS136

CHAIN VPSIMB 19
~They had to wash the temple with holy water after your visit, I am sure.~
EXTERN BKORGAN TS137

CHAIN VPSIMB 20
~I thought you were low on cash?~
EXTERN BKORGAN TS138

CHAIN VPSIMB 21
~You... killed him? Only out of respect for <CHARNAME> shall I let you be for now. But I warn you: as soon as you are not affiliated with <PRO_HIMHER>, I challenge you to a fight!~
EXIT

CHAIN
IF WEIGHT #-72 ~Global("VP_BSime4","LOCALS",2)~ THEN VPSIMB 22
~Get away from me!~ [SIMEKO03]
DO ~SetGlobal("VP_BSime4","LOCALS",3)~
EXTERN BKORGAN TS139

CHAIN VPSIMB 23
~You are drunk!~
EXTERN BKORGAN TS140

CHAIN VPSIMB 24
~Indeed! (*hits him*)~
EXTERN BKORGAN TS141

CHAIN VPSIMB 25
~(*picks up her mace*)~
EXTERN BKORGAN TS142

CHAIN VPSIMB 26
~(*Hits his knees*)~
EXTERN BKORGAN TS143

CHAIN VPSIMB 271
~(*with disgust*): I loathe the day <CHARNAME> got this bastard to join in with us. I HATE him!~
END
 ++ ~Sime, we need this fighter. I'll talk to him tomorrow and ask him to stop bugging you.~ EXTERN VPSIMB 272
 ++ ~Sime, I think he... likes you. None can resist your charm.~ EXTERN VPSIMB 273
 ++ ~He is out this very moment!~ EXTERN VPSIMB 274

CHAIN VPSIMB 272
~You are an idiot! He does more harm than good. Suit yourself. But know that next time I'll kill the bastard.~ [SIMEKO04]
EXIT

CHAIN VPSIMB 273
~You are mad! He was trying to rape me! I... I will not stay any longer.~
DO ~LeaveParty() EscapeArea()~
EXIT

CHAIN VPSIMB 274
~Thank you, your actions are both wise and proper.~
DO ~SetGlobal("VP_KorganAttacksSime","GLOBAL",1)~
EXIT

// Valygar

CHAIN
IF WEIGHT #-71 ~Global("VP_BSime5","LOCALS",2)~ THEN VPSIMB 27
~I think you are robbing yourself, Valygar, by denying faith.~ [SIMEVA01]
DO ~SetGlobal("VP_BSime5","LOCALS",3)~
EXTERN BVALYGA TS561

CHAIN VPSIMB 28
~Faith gives support and hope.~
EXTERN BVALYGA TS562

CHAIN VPSIMB 29
~As I said, you rob yourself. Is there no deity you feel...close to?~
EXTERN BVALYGA TS563

CHAIN VPSIMB 30
~The Rider of the Winds and the Helping Hand? (*smiles*) I am not surprised in the least.~ [SIMEVA02]
EXIT

CHAIN
IF WEIGHT #-70 ~Global("VP_BSime6","LOCALS",2)~ THEN VPSIMB 31
~Insomnia torments you as well? Valygar! Your katana is as shiny as a looking glass! Stop polishing it. Look at me! Talk to me... I am bored and I am restless.~ [SIMEVA03]
DO ~SetGlobal("VP_BSime6","LOCALS",3)~
EXTERN BVALYGA TS564

CHAIN VPSIMB 32
~Then I shall sit by your side and the fire will not be between us anymore. Now, tell me what I reminded you of.~ [SIMEVA04]
EXTERN BVALYGA TS565

CHAIN VPSIMB 33
~I cannot picture you having nightmares, Valygar.~
EXTERN BVALYGA TS566

CHAIN VPSIMB 34
~So?~
EXTERN BVALYGA TS567

CHAIN VPSIMB 35
~Yes, your guess is right.~
EXTERN BVALYGA TS568

CHAIN VPSIMB 36
~(*smiles*) By chance?~
EXTERN BVALYGA TS569

CHAIN VPSIMB 37
~She was just scared for your life, I am sure.~
EXTERN BVALYGA TS570

CHAIN VPSIMB 38
~Do I have a choice? Good night, Valygar.~
EXIT

// Anomen

CHAIN
IF WEIGHT #-69 ~Global("VP_BSime7","LOCALS",2)~ THEN VPSIMB 39
~Young Lord Delryn, I still do not believe that you have killed twelve giants on your own. Yes, I know you are valiant, but do not you just exaggerate a little bit?~ [SIMEAN01]
DO ~SetGlobal("VP_BSime7","LOCALS",3)~
EXTERN BANOMEN TS627

CHAIN VPSIMB 40
~I must apologize then for calling you a twit.~
EXTERN BANOMEN TS628

CHAIN VPSIMB 41
~Because you are not a twit, my young Lord, but a lunatic. A sweet lunatic, who believes his own lies!~ [SIMEAN02]
EXTERN BANOMEN TS629

CHAIN VPSIMB 42
~Who told you that I am a noble born Lady, Anomen? I am a thief's daughter.~
EXTERN BANOMEN TS630

CHAIN VPSIMB 43
~She was an Elf, Anomen that's all I know. Her origin is a mystery to me.~
EXTERN BANOMEN TS631

CHAIN VPSIMB 44
~I strongly doubt it, Anomen. And frankly, I would not want it.~
EXIT

CHAIN
IF WEIGHT #-68 ~Global("VP_BSime8","LOCALS",2)~ THEN VPSIMB 45
~You look very upset, knight. What is your grievance?~ [SIMEAN03]
DO ~SetGlobal("VP_BSime8","LOCALS",3)~
EXTERN BANOMEN TS632

CHAIN VPSIMB 46
~You do not like our adventuring company?~
EXTERN BANOMEN TS633

CHAIN VPSIMB 47
~You like us... That's very kind and generous of you, my heroic knight. Yet why does it bring you pain to like your comrades at arms?~ [SIMEAN04]
EXTERN BANOMEN TS634

CHAIN VPSIMB 48
~Seems to me that you enjoy adventuring, Anomen. We might not draw from the pool of light, but we do good things...~
EXTERN BANOMEN TS635

CHAIN VPSIMB 49
~I am afraid I cannot agree with you. I would choke if I were a subject to proper discipline and the Order's structure. I'd rather ask my heart what to do, than my superior.~
EXIT

// Jan

CHAIN
IF WEIGHT #-67 ~Global("VP_BSime9","LOCALS",2)~ THEN VPSIMB 50
~(*brushes her long blond hair and looks thoughtful*)~
DO ~SetGlobal("VP_BSime9","LOCALS",3)~
EXTERN BJAN TS133

CHAIN VPSIMB 51
~(*sighs*) Was she a blonde?~
EXTERN BJAN TS134

CHAIN VPSIMB 52
~An old artist?~
EXTERN BJAN TS135

CHAIN VPSIMB 53
~I am afraid you've lost me, Jan. Why would Amalia marry a turnip merchant?~
EXTERN BJAN TS136

CHAIN VPSIMB 54
~She met an artist?~
EXTERN BJAN TS137

CHAIN VPSIMB 55
~Let me guess: another rich old man?~
EXTERN BJAN TS138

CHAIN VPSIMB 56
~Sorry, Jan, I absolutely have to interrupt you. I have a date and I do not want to be late. Good night!~
DO ~RestParty()~
EXIT

CHAIN
IF WEIGHT #-66 ~Global("VP_BSime10","LOCALS",2)~ THEN VPSIMB 57
~Jan, may I see it? I am pretty sure you were carving that turnip.~
DO ~SetGlobal("VP_BSime10","LOCALS",3)~
EXTERN BJAN TS139

CHAIN VPSIMB 58
~Hmm, seems to me that I err in looking at the tall knights and noble rangers for a romance. If you are capable of see a blushing maiden in a highly prosaic vegetable, you must have a heart of a poet, Jan.~
EXTERN BJAN TS140

CHAIN VPSIMB 59
~Good for your Cousin Willy!~
EXTERN BJAN TS141

CHAIN VPSIMB 60
~I get the picture, Jan. How clever! I bet that not a single critic was able to read the whole title from the beginning to the end.~
EXTERN BJAN TS142

CHAIN VPSIMB 61
~Paper and bread? Dare I ask... No, forget it! Let's catch up with the rest, Jan.~
EXIT

CHAIN
IF WEIGHT #-65 ~Global("VP_BSime11","LOCALS",2)~ THEN VPSIMB 62
~Your smile conveys that you know more than you are willing to tell, Yoshimo. Why do you watch me and smile?~ [SIMEYO01]
DO ~SetGlobal("VP_BSime11","LOCALS",3)~
EXTERN BYOSHIM TS138

CHAIN VPSIMB 63
~Mayhap, but no, not this time. I know all sorts of men's glances. Yours is not that of an admirer.~
EXTERN BYOSHIM TS139

CHAIN VPSIMB 64
~I speak my mind openly, Yoshimo and rarely do I play games.~
EXTERN BYOSHIM TS140

CHAIN VPSIMB 65
~More often than not I am afraid to know the thoughts of Aran. My answer to you is that I simply do not know. And it is an honest one. But why should there be any special interest? <CHARNAME> paid for his assistance.~
EXTERN BYOSHIM TS141

CHAIN VPSIMB 66
~You cannot call me Aran's ally! I am no Shadow Thief! I argue with Aran every single minute I spend with him! I disagree with everything he is doing!~ [SIMEYO02]
EXTERN BYOSHIM TS142

CHAIN VPSIMB 67
~True. But it does not mean that he confides in me.~
EXIT

CHAIN
IF WEIGHT #-64 ~Global("VP_BSime12","LOCALS",2)~ THEN VPSIMB 68
~You are a calm and composed man, Yoshimo. A dangerous man. You are one of the best in the profession I have seen.~ [SIMEYO03]
DO ~SetGlobal("VP_BSime12","LOCALS",3)~
EXTERN BYOSHIM TS143

CHAIN VPSIMB 69
~If a compliment, than a watery one. A pity that you chose to be a thief, and did not apply your considerable talents in another field.~ [SIMEYO04]
EXTERN BYOSHIM TS144

CHAIN VPSIMB 70
~Aye, I did. They were dreamers and died quickly. A thief's path is a displeasing one for an honorable person.~
EXTERN BYOSHIM TS145

CHAIN VPSIMB 71
~That's all tales!~
EXTERN BYOSHIM TS146

CHAIN VPSIMB 72
~A very small grain.~
EXIT

// Nalia

CHAIN
IF WEIGHT #-63 ~Global("VP_BSime13","LOCALS",2)~ THEN VPSIMB 73
~I wonder how you could live in that somber place. Do not you ever get chilly? I do not like closed spaces.~ [SIMENA01]
DO ~SetGlobal("VP_BSime13","LOCALS",3)~
EXTERN BNALIA TS61

CHAIN VPSIMB 74
~I am unfortunate when I have a roof over my head, other than starry skies. But tell me, are you going to do something about this guilt or are you going to savor it?~ [SIMENA02]
EXTERN BNALIA TS62

CHAIN VPSIMB 75
~Nalia, this is a brave enterprise. You will need a lot of support, though. Let me know if you can use an extra helping hand.~
EXIT

CHAIN
IF WEIGHT #-62 ~Global("VP_BSime14","LOCALS",2)~ THEN VPSIMB 76
~May be it's for the best that the Castle is gone, Nalia? The Castle was a rather somber place. I would be chilly and lost in those endless dark chambers. I do not like closed spaces.~ [SIMENA03]
DO ~SetGlobal("VP_BSime14","LOCALS",3)~
EXTERN BNALIA TS63

CHAIN VPSIMB 77
~Come, Nalia! Our walls and arches are the tree trunks and our carpet is the glen full of flowers. Do you not breathe easier here? And aren't you surrounded by friends?~
EXTERN BNALIA TS64

CHAIN VPSIMB 78
~Nalia, I am astounded by your plans. Indeed it is a pity that you have not got the time to bring it to life. But you will always be a charitable person, no matter you own a Castle or not. Besides, things turn around and you might get the Castle back yet!~
EXIT

CHAIN
IF WEIGHT #-61 ~Global("VP_BSime15","LOCALS",2)~ THEN VPSIMB 79
~Do I have my cloak inside out, Nalia? Or is it something else about my humble persona that makes you look so puzzled?~ [SIMENA04]
DO ~SetGlobal("VP_BSime15","LOCALS",3)~
EXTERN BNALIA TS65

CHAIN VPSIMB 80
~Oh, you are surprised by my city grab? *Laughs * I find little to my liking in Athkatla, Nalia. I might as well enjoy what I can. Crimson cloak in a forest might serve one purpose only.~
EXTERN BNALIA TS66

CHAIN VPSIMB 81
~It attracts bandits splendidly.~
EXTERN BNALIA TS67

CHAIN VPSIMB 82
~An illusion which does not live long.~ [SIMENA05]
EXIT

// Mazzy

CHAIN
IF WEIGHT #-60 ~Global("VP_BSime16","LOCALS",2)~ THEN VPSIMB 83
~I am most pleased to be introduced to you, Lady Mazzy. I have heard the most favorable things about you and your group.~ [SIMEMA01]
DO ~SetGlobal("VP_BSime16","LOCALS",3)~
EXTERN BMAZZY TS148

CHAIN VPSIMB 84
~I grief with you. I know from my own experiences that one's own wound does not hurt as much as those of friends'.~
EXTERN BMAZZY TS149

CHAIN VPSIMB 85
~I have not always been a loner, Mazzy. Once I roamed the forests and dales with a company of brave friends. We were so young and restless and we almost believed ourselves immortal. But the fates decreed otherwise. So I am a loner now. With a glass of good wine I wish to toast every one of them!~
EXTERN BMAZZY TS150

CHAIN VPSIMB 86
~To Kilendil, whose arrows ever hit the mark!~ [SIMEMA02]
EXTERN BMAZZY TS151

CHAIN
IF WEIGHT #-59 ~Global("VP_BSime17","LOCALS",2)~ THEN VPSIMB 87
~What is your weapon of choice, Mazzy?~ [SIMEMA04]
DO ~SetGlobal("VP_BSime17","LOCALS",3)~
EXTERN BMAZZY TS152

CHAIN VPSIMB 88
~Yes, it is.~
EXTERN BMAZZY TS153

CHAIN VPSIMB 89
~You are right, Mazzy. My clerical persuasion does not allow me to wield a sharpened blade. That does not mean that I cannot appreciate the weapon.~
EXTERN BMAZZY TS154

CHAIN VPSIMB 90
~(*laughs*) Unless it is a Mordenkainen's Sword.~
EXTERN BMAZZY TS155

CHAIN VPSIMB 91
~A dangerous toy nonetheless. Have you ever heard about the wizard who lost control over one of those blades? They say he made three full circles around the city's wall, the sword on his heels, before the blade got dispelled.~ [SIMEMA05]
EXTERN BMAZZY TS156

CHAIN VPSIMB 92
~Yes, sometimes these things have mind of their own. Wondrous nonetheless.~
EXIT

// Viconia

CHAIN
IF WEIGHT #-58 ~Global("VP_BSime18","LOCALS",2)~ THEN VPSIMB 93
~I am the daughter of Aran Linvail, Viconia. His only daughter.~ [SIMEVI01]
DO ~SetGlobal("VP_BSime18","LOCALS",3)~
EXTERN BVICONI TS601

CHAIN VPSIMB 94
~In the Guild there are no inherited positions, Viconia. Should I want to advance I would start to work my way up from the streets and it would be my cunning which would promote me. But I have no desire to be connected with Shadow Thieves.~
EXTERN BVICONI TS602

CHAIN VPSIMB 95
~Those who treat a ranger like rubbish are generally those who cry the loudest for his or her help in the time of need.~ [SIMEVI02]
EXTERN BVICONI TS603

CHAIN VPSIMB 96
~I think this conversation is over, Viconia. You will never understand my motives, I will never understand yours.~
EXIT

CHAIN
IF WEIGHT #-57 ~Global("VP_BSime19","LOCALS",2)~ THEN VPSIMB 97
~You abandoned the way of Lloth. Not for any kinder deity I may say, but still, you did. How many are like you among the Drow, Viconia?~ [SIMEVI03]
DO ~SetGlobal("VP_BSime19","LOCALS",3)~
EXTERN BVICONI TS604

CHAIN VPSIMB 98
~ I heard tales about Drizzt, and you have mentioned that your brother was a deviant as well. You fled to the surface and now live by your own rules. Which leads me to believe that a renegade Drow is not such an uncommon thing. Surely, there are others.~
EXTERN BVICONI TS605

CHAIN VPSIMB 99
~I know your people's "ways"! I have seen babes and women slain without pity by their sharp blades. I have seen the results of a Drow raid! How can a being that presumably has heart to commit deeds of such cruelty?~
EXTERN BVICONI TS606

CHAIN VPSIMB 100
~That would be adopting the way of the Drow, Viconia. Drow who will not hesitate to cut an Elf's throat no question's asked.~ [SIMEVI04]
EXIT

CHAIN
IF WEIGHT #-56 ~Global("VP_Sime_vs_Viconia","GLOBAL",1)~ THEN VPSIMB 576
~(*Wakes up with a startle*)... What is it? Viconia!~
DO ~SetGlobal("VP_Sime_vs_Viconia","GLOBAL",2)~
EXTERN BVICONI TS607

CHAIN VPSIMB 577
~That wicked bitch tried to stab me, that's all.~
EXTERN BVICONI TS608

CHAIN VPSIMB 578
~Well, walk it then, <CHARNAME>, but watch your step. For you might accidentally end up in Abyss.~
DO ~SetGlobal("SimeRomanceActive","GLOBAL",3)~
EXIT

CHAIN VPSIMB 579
~I am not about to cease breathing yet, <CHARNAME>. It left unpleasant taste in my mouth, but for your love I am ready to endure worst things.~
DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3)~
EXIT

//Kachiko

CHAIN
IF WEIGHT #-55 ~Global("VP_BSime20","LOCALS",2)~ THEN VPSIMB 101
~The world is a small place, Kachiko! Could I imagine that I would be talking to a Kara-Turian one day?~ [SIMEKA01]
DO ~SetGlobal("VP_BSime20","LOCALS",3)~
EXTERN VPKACB 87

CHAIN VPSIMB 102
~You are right, of course there are plenty of those for whom stepping over the threshold is an adventure. Not the sort of adventure I dream of.~
EXTERN VPKACB 88

CHAIN VPSIMB 103
~I do not think I would derive satisfaction from a road walked only in my mind.~
EXIT

CHAIN
IF WEIGHT #-54 ~Global("VP_BSime21","LOCALS",2)~ THEN VPSIMB 104
~You grew up in a large family, did you not, Kachiko?~ [SIMEKA02]
DO ~SetGlobal("VP_BSime21","LOCALS",3)~
EXTERN VPKACB 89

CHAIN VPSIMB 105
~I am an only child. I always wanted to have a sibling.~
EXTERN VPKACB 90

CHAIN VPSIMB 106
~My father has been befriending only one certain type of women ever since my mother's death. The sort which do not stay with one man for long and who would not carry a child.~
EXTERN VPKACB 91

CHAIN VPSIMB 107
~I am not bitter, I just. . .I think that Aran believes that it will save him from pain.~ [SIMEKA03]
EXTERN VPKACB 92

CHAIN VPSIMB 108
~No, I do not. He is wedging the knife deeper in his wound and twisting it, causing himself more pain and more sorrow. I told him that many times, but he would not listen. He will understand one day, but it will be too late.~
EXIT

// Imoen

CHAIN
IF WEIGHT #-53 ~Global("VP_BSime22","LOCALS",2)~ THEN VPSIMB 109
~I have been watching you for a time, Imoen. You look troubled. Are you hurting?~ [SIMEIM01]
DO ~SetGlobal("VP_BSime22","LOCALS",3)~
EXTERN BIMOEN2 6

CHAIN VPSIMB 110
~I guess I have an advantage of knowing a lot about you in advance, Imoen. <CHARNAME> spoke often of you.~
EXTERN BIMOEN2 7

CHAIN VPSIMB 111
~On the contrary, <PRO_HESHE> praised your youthful and cheerful spirit, Imoen. I was awaiting to meet you. By Mielikki, we have enough gloom around us. Sad and grim is our business. We can use a ray of sunshine, like your smile.~
END
 IF ~OR(2) InParty("Jaheira") Global("VP_MeetJaheira","LOCALS",1)~ THEN EXTERN BIMOEN2 8
 IF ~!InParty("Jaheira") Global("VP_MeetJaheira","LOCALS",0)~ THEN EXTERN BIMOEN2 8A

CHAIN VPSIMB 112
~Do not listen to Jaheira. She is a bore!~
EXIT

CHAIN
IF WEIGHT #-52 ~Global("VP_BSime23","LOCALS",2)~ THEN VPSIMB 113
~What is it, Imoen? (*whispering*) Ah, what are you doing? Pick-pocketing other's people clothes! You cannot...~ [SIMEIM02]
DO ~SetGlobal("VP_BSime23","LOCALS",3)~
EXTERN BIMOEN2 9

CHAIN VPSIMB 114
~No, not really! Well, may be a little bit. Oh, damn you, Imoen now you've piqued my curiosity. Let me see!~ [SIMEIM03]
END
 IF ~True()~ THEN EXIT
 IF ~InParty("Viconia")~ THEN EXTERN BIMOEN2 25
 IF ~InParty("Edwin")~ THEN EXTERN BIMOEN2 24
 IF ~InParty("Minsc")~ THEN EXTERN BIMOEN2 23
 IF ~InParty("Jaheira")~ THEN EXTERN BIMOEN2 22
 IF ~InParty("Mazzy")~ THEN EXTERN BIMOEN2 21
 IF ~InParty("Keldorn")~ THEN EXTERN BIMOEN2 20
 IF ~InParty("Nalia")~ THEN EXTERN BIMOEN2 19
 IF ~InParty("vpkachi")~ THEN EXTERN BIMOEN2 18
 IF ~InParty("Yoshimo")~ THEN EXTERN BIMOEN2 17
 IF ~InParty("Jan")~ THEN EXTERN BIMOEN2 16
 IF ~InParty("Cernd")~ THEN EXTERN BIMOEN2 15
 IF ~InParty("Anomen")~ THEN EXTERN BIMOEN2 14
 IF ~InParty("Valygar")~ THEN EXTERN BIMOEN2 13
 IF ~InParty("Valygar")~ THEN EXTERN BIMOEN2 12
 IF ~InParty("Korgan")~ THEN EXTERN BIMOEN2 11
 IF ~InParty("Aerie")~ THEN EXTERN BIMOEN2 10

CHAIN VPSIMB 115
~Oh, I thought it was not natural!~
END
 IF ~True()~ THEN EXIT
 IF ~InParty("Viconia")~ THEN EXTERN BIMOEN2 25
 IF ~InParty("Edwin")~ THEN EXTERN BIMOEN2 24
 IF ~InParty("Minsc")~ THEN EXTERN BIMOEN2 23
 IF ~InParty("Jaheira")~ THEN EXTERN BIMOEN2 22
 IF ~InParty("Mazzy")~ THEN EXTERN BIMOEN2 21
 IF ~InParty("Keldorn")~ THEN EXTERN BIMOEN2 20
 IF ~InParty("Nalia")~ THEN EXTERN BIMOEN2 19
 IF ~InParty("vpkachi")~ THEN EXTERN BIMOEN2 18
 IF ~InParty("Yoshimo")~ THEN EXTERN BIMOEN2 17
 IF ~InParty("Jan")~ THEN EXTERN BIMOEN2 16
 IF ~InParty("Cernd")~ THEN EXTERN BIMOEN2 15
 IF ~InParty("Anomen")~ THEN EXTERN BIMOEN2 14
 IF ~InParty("Valygar")~ THEN EXTERN BIMOEN2 13
 IF ~InParty("Valygar")~ THEN EXTERN BIMOEN2 12
 IF ~InParty("Korgan")~ THEN EXTERN BIMOEN2 11

CHAIN VPSIMB 116
~I wonder if he ever read it? He's obviously never read it.~
END
 IF ~True()~ THEN EXIT
 IF ~InParty("Viconia")~ THEN EXTERN BIMOEN2 25
 IF ~InParty("Edwin")~ THEN EXTERN BIMOEN2 24
 IF ~InParty("Minsc")~ THEN EXTERN BIMOEN2 23
 IF ~InParty("Jaheira")~ THEN EXTERN BIMOEN2 22
 IF ~InParty("Mazzy")~ THEN EXTERN BIMOEN2 21
 IF ~InParty("Keldorn")~ THEN EXTERN BIMOEN2 20
 IF ~InParty("Nalia")~ THEN EXTERN BIMOEN2 19
 IF ~InParty("vpkachi")~ THEN EXTERN BIMOEN2 18
 IF ~InParty("Yoshimo")~ THEN EXTERN BIMOEN2 17
 IF ~InParty("Jan")~ THEN EXTERN BIMOEN2 16
 IF ~InParty("Cernd")~ THEN EXTERN BIMOEN2 15
 IF ~InParty("Anomen")~ THEN EXTERN BIMOEN2 14
 IF ~InParty("Valygar")~ THEN EXTERN BIMOEN2 13
 IF ~InParty("Valygar")~ THEN EXTERN BIMOEN2 12

CHAIN VPSIMB 117
~Any initials on it?~
EXTERN BIMOEN2 13

CHAIN VPSIMB 118
~Rats!~
END
 IF ~True()~ THEN EXIT
 IF ~InParty("Viconia")~ THEN EXTERN BIMOEN2 25
 IF ~InParty("Edwin")~ THEN EXTERN BIMOEN2 24
 IF ~InParty("Minsc")~ THEN EXTERN BIMOEN2 23
 IF ~InParty("Jaheira")~ THEN EXTERN BIMOEN2 22
 IF ~InParty("Mazzy")~ THEN EXTERN BIMOEN2 21
 IF ~InParty("Keldorn")~ THEN EXTERN BIMOEN2 20
 IF ~InParty("Nalia")~ THEN EXTERN BIMOEN2 19
 IF ~InParty("vpkachi")~ THEN EXTERN BIMOEN2 18
 IF ~InParty("Yoshimo")~ THEN EXTERN BIMOEN2 17
 IF ~InParty("Jan")~ THEN EXTERN BIMOEN2 16
 IF ~InParty("Cernd")~ THEN EXTERN BIMOEN2 15
 IF ~InParty("Anomen")~ THEN EXTERN BIMOEN2 14

CHAIN VPSIMB 119
~Oh, no big surprise there. Almost every Order member has a set of pornographic drawings.~
END
 IF ~True()~ THEN EXIT
 IF ~InParty("Viconia")~ THEN EXTERN BIMOEN2 25
 IF ~InParty("Edwin")~ THEN EXTERN BIMOEN2 24
 IF ~InParty("Minsc")~ THEN EXTERN BIMOEN2 23
 IF ~InParty("Jaheira")~ THEN EXTERN BIMOEN2 22
 IF ~InParty("Mazzy")~ THEN EXTERN BIMOEN2 21
 IF ~InParty("Keldorn")~ THEN EXTERN BIMOEN2 20
 IF ~InParty("Nalia")~ THEN EXTERN BIMOEN2 19
 IF ~InParty("vpkachi")~ THEN EXTERN BIMOEN2 18
 IF ~InParty("Yoshimo")~ THEN EXTERN BIMOEN2 17
 IF ~InParty("Jan")~ THEN EXTERN BIMOEN2 16
 IF ~InParty("Cernd")~ THEN EXTERN BIMOEN2 15

CHAIN VPSIMB 120
~Always on duty.~
END
 IF ~True()~ THEN EXIT
 IF ~InParty("Viconia")~ THEN EXTERN BIMOEN2 25
 IF ~InParty("Edwin")~ THEN EXTERN BIMOEN2 24
 IF ~InParty("Minsc")~ THEN EXTERN BIMOEN2 23
 IF ~InParty("Jaheira")~ THEN EXTERN BIMOEN2 22
 IF ~InParty("Mazzy")~ THEN EXTERN BIMOEN2 21
 IF ~InParty("Keldorn")~ THEN EXTERN BIMOEN2 20
 IF ~InParty("Nalia")~ THEN EXTERN BIMOEN2 19
 IF ~InParty("vpkachi")~ THEN EXTERN BIMOEN2 18
 IF ~InParty("Yoshimo")~ THEN EXTERN BIMOEN2 17
 IF ~InParty("Jan")~ THEN EXTERN BIMOEN2 16

CHAIN VPSIMB 121
~You are wasting your time counting them! I am sure he has at least two dozens.~
END
 IF ~True()~ THEN EXIT
 IF ~InParty("Viconia")~ THEN EXTERN BIMOEN2 25
 IF ~InParty("Edwin")~ THEN EXTERN BIMOEN2 24
 IF ~InParty("Minsc")~ THEN EXTERN BIMOEN2 23
 IF ~InParty("Jaheira")~ THEN EXTERN BIMOEN2 22
 IF ~InParty("Mazzy")~ THEN EXTERN BIMOEN2 21
 IF ~InParty("Keldorn")~ THEN EXTERN BIMOEN2 20
 IF ~InParty("Nalia")~ THEN EXTERN BIMOEN2 19
 IF ~InParty("vpkachi")~ THEN EXTERN BIMOEN2 18
 IF ~InParty("Yoshimo")~ THEN EXTERN BIMOEN2 17

CHAIN VPSIMB 122
~He must have guessed that you are in a habit of snooping around, Imoen.~
END
 IF ~True()~ THEN EXIT
 IF ~InParty("Viconia")~ THEN EXTERN BIMOEN2 25
 IF ~InParty("Edwin")~ THEN EXTERN BIMOEN2 24
 IF ~InParty("Minsc")~ THEN EXTERN BIMOEN2 23
 IF ~InParty("Jaheira")~ THEN EXTERN BIMOEN2 22
 IF ~InParty("Mazzy")~ THEN EXTERN BIMOEN2 21
 IF ~InParty("Keldorn")~ THEN EXTERN BIMOEN2 20
 IF ~InParty("Nalia")~ THEN EXTERN BIMOEN2 19
 IF ~InParty("vpkachi")~ THEN EXTERN BIMOEN2 18

CHAIN VPSIMB 123
~I am guessing Yoshimo's mane is missing it!~
END
 IF ~True()~ THEN EXIT
 IF ~InParty("Viconia")~ THEN EXTERN BIMOEN2 25
 IF ~InParty("Edwin")~ THEN EXTERN BIMOEN2 24
 IF ~InParty("Minsc")~ THEN EXTERN BIMOEN2 23
 IF ~InParty("Jaheira")~ THEN EXTERN BIMOEN2 22
 IF ~InParty("Mazzy")~ THEN EXTERN BIMOEN2 21
 IF ~InParty("Keldorn")~ THEN EXTERN BIMOEN2 20
 IF ~InParty("Nalia")~ THEN EXTERN BIMOEN2 19

CHAIN VPSIMB 124
~She was saying something about rebuilding the property earlier.~
END
 IF ~True()~ THEN EXIT
 IF ~InParty("Viconia")~ THEN EXTERN BIMOEN2 25
 IF ~InParty("Edwin")~ THEN EXTERN BIMOEN2 24
 IF ~InParty("Minsc")~ THEN EXTERN BIMOEN2 23
 IF ~InParty("Jaheira")~ THEN EXTERN BIMOEN2 22
 IF ~InParty("Mazzy")~ THEN EXTERN BIMOEN2 21
 IF ~InParty("Keldorn")~ THEN EXTERN BIMOEN2 20

CHAIN VPSIMB 125
~He must be one of those who quits, but carries it around to remind himself of the "good old times." I bet it was Lady M. who forced him into quitting!~
END
 IF ~True()~ THEN EXIT
 IF ~InParty("Viconia")~ THEN EXTERN BIMOEN2 25
 IF ~InParty("Edwin")~ THEN EXTERN BIMOEN2 24
 IF ~InParty("Minsc")~ THEN EXTERN BIMOEN2 23
 IF ~InParty("Jaheira")~ THEN EXTERN BIMOEN2 22
 IF ~InParty("Mazzy")~ THEN EXTERN BIMOEN2 21

CHAIN VPSIMB 126
~He-he. At least her problem is partially curable. I would not be able to look a single inch shorter than I already am!~
END
 IF ~True()~ THEN EXIT
 IF ~InParty("Viconia")~ THEN EXTERN BIMOEN2 25
 IF ~InParty("Edwin")~ THEN EXTERN BIMOEN2 24
 IF ~InParty("Minsc")~ THEN EXTERN BIMOEN2 23
 IF ~InParty("Jaheira")~ THEN EXTERN BIMOEN2 22

CHAIN VPSIMB 127
~That is sad.~
END
 IF ~True()~ THEN EXIT
 IF ~InParty("Viconia")~ THEN EXTERN BIMOEN2 25
 IF ~InParty("Edwin")~ THEN EXTERN BIMOEN2 24
 IF ~InParty("Minsc")~ THEN EXTERN BIMOEN2 23

CHAIN VPSIMB 128
~Careful, do not wake up Boo!~
END
 IF ~True()~ THEN EXIT
 IF ~InParty("Viconia")~ THEN EXTERN BIMOEN2 25
 IF ~InParty("Edwin")~ THEN EXTERN BIMOEN2 24

CHAIN VPSIMB 129
~Sweet are the dreams of that man.~
END
 IF ~True()~ THEN EXIT
 IF ~InParty("Viconia")~ THEN EXTERN BIMOEN2 25

CHAIN VPSIMB 130
~Do not do it then. The less I deal with the Dark one, the better.~
EXIT

// Jaheira

CHAIN
IF WEIGHT #-51 ~Global("VP_BSime24","LOCALS",2)~ THEN VPSIMB 131
~Always you act like we all need your constant supervision, Jaheira. Might you lower your guard down for a time?~ [SIMEJH01]
DO ~SetGlobal("VP_BSime24","LOCALS",3)~
EXTERN BJAHEIR TS474

CHAIN VPSIMB 132
~The likes of me? How did I offend, you, druid?~
EXTERN BJAHEIR TS475

CHAIN VPSIMB 133
~You are mistaken, Jaheira. Love is something I take and give with generosity. I did not ruin any man and I was not a traitor to any woman.~ [SIMEJH02]
EXTERN BJAHEIR TS476

CHAIN VPSIMB 134
~You seem to consider men fragile and unable to care for themselves, Jaheira. I wonder why?~
EXIT

CHAIN
IF WEIGHT #-50 ~Global("VP_BSime25","LOCALS",2)~ THEN VPSIMB 135
~Jaheira, I repeat again, the white moss from the tundra is the ingredient needed for this potion. You cannot hope to be successful without it.~ [SIMEJH03]
DO ~SetGlobal("VP_BSime25","LOCALS",3)~ EXTERN BJAHEIR TS477

CHAIN VPSIMB 136
~I walk the wild and I know my herbs. If it interests you I have gathered the moss myself in Icewind Dale and I know its uses very well.~
EXTERN BJAHEIR TS478

CHAIN VPSIMB 137
~I see. I had better write it down then.~
EXIT

CHAIN
IF WEIGHT #-49 ~Global("VP_Sime_vs_Jaheira","GLOBAL",1)~ THEN VPSIMB 580
~Listen, Jaheira, I know that look. Stop nagging at me, just say you are jealous and be done with it.~
DO ~SetGlobal("VP_Sime_vs_Jaheira","GLOBAL",2)~
EXTERN BJAHEIR TS479

CHAIN VPSIMB 581
~So deep, warm and tender that you have remembered them for what? Three days? Before starting to try to entice your former ward?~
EXTERN BJAHEIR TS480

CHAIN VPSIMB 582
~(*laughs*) Oldest, yeah, that's true. But friend?~
END
 ++ ~Eh, Sime. Lay off. Jaheira is a real friend and a loyal companion, I would not have her insulted.~ EXTERN BJAHEIR TS481
 ++ ~Jaheira, pay Sime no heed. She will never understand the true love, such as you and I share.~ EXTERN BJAHEIR TS482
 ++ ~Jaheira, I love Sime. If you are as loyal to me as you always claim to be, you shall accept this. Otherwise, the roads are free for all to use.~ EXTERN BJAHEIR TS483

CHAIN VPSIMB 583
~(*sighs*) I was rude, I am sorry.~
DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)~
EXIT

CHAIN VPSIMB 584
~I see. Know <CHARNAME>, that I will not ask you for your love again. It looks that you find a good place for it. But hid my advice, tell her how I loved you.~
EXTERN VPSIMB 585

CHAIN VPSIMB 585
~The foolish ones hold the sense of victory in more esteem than the tenderness of the first days together. When you would spend the last penny of your happiness with your sweetheart, on the night of my triumph, do not come to me! I will not know you. And how will I be able to help? I would not know how to heal the happiness.~
DO ~SetGlobal("SimeRomanceActive","GLOBAL",3)~
EXIT

CHAIN VPSIMB 586
~Jaheira, you do not have to... I was rude, I am sorry... I am afraid it is too late, <CHARNAME>. Her mind was set on leaving. I am sorry, I did not mean for you to loose your friend.~
DO ~ActionOverride("Jaheira",LeaveParty()) ActionOverride("Jaheira",EscapeArea())~
EXIT

// Edwin

CHAIN
IF WEIGHT #-48 ~Global("VP_BSime26","LOCALS",2)~ THEN VPSIMB 138
~Am I truly blessed? Edwin the Great threw a glance my way! My heart sings with joy.~ [SIMEED01]
DO ~SetGlobal("VP_BSime26","LOCALS",3)~
EXTERN BEDWIN TS110

CHAIN VPSIMB 139
~Indeed, your attention puts a smile on my face. A very wide smile.~
EXTERN BEDWIN TS111

CHAIN VPSIMB 140
~Really? Who might you talking about? Forgive me my Lord, I am exceptionally stupid today.~
EXTERN BEDWIN TS112

CHAIN VPSIMB 141
~Done, I am sitting (*struggles with laughter*)~
EXTERN BEDWIN TS113

CHAIN VPSIMB 142
~You are too precious of an ornament, Edwin, for me to wear tonight. I shall refuse your... ahem... kind offer. Now if you would excuse me, I am retiring to my chambers. (*goes away laughing*)~ [SIMEED02]
EXIT

CHAIN
IF WEIGHT #-47 ~Global("VP_BSime27","LOCALS",2)~ THEN VPSIMB 143
~Shave off your beard, wizard. Then I might consider kissing you. I emphasize: "might".~ [SIMEED03]
DO ~SetGlobal("VP_BSime27","LOCALS",3)~
EXTERN BEDWIN TS114

CHAIN VPSIMB 144
~Imbalance? Have you been befriending druids perchance, Edwin?~
EXTERN BEDWIN TS115

CHAIN VPSIMB 145
~Oh, forgive me, Edwin. Indeed, you are the sort who listens to his own voice exclusively. Let me guess, you have come up with a concept of the world's balance on your own.~
EXTERN BEDWIN TS116

CHAIN VPSIMB 146
~With yourself as a Supreme Ruler of the World?~
EXTERN BEDWIN TS117

CHAIN VPSIMB 147
~How about elvenkind?~
EXTERN BEDWIN TS118

CHAIN VPSIMB 148
~I can take many things from you for amusement's sake, Edwin. But that's it. I am sick of you.~ [SIMEED04]
EXIT

CHAIN
IF WEIGHT #-46 ~Global("VP_BSime28","LOCALS",2)~ THEN VPSIMB 149
~(*yawns*) Edwin, what is it?~ [SIMEED05]
DO ~SetGlobal("VP_BSime28","LOCALS",3)~
EXTERN BEDWIN TS119

CHAIN VPSIMB 150
~No, I am not ready to apologize. And I would never be.~
EXTERN BEDWIN TS120

CHAIN VPSIMB 151
~This game grew boring. I do not like you Edwin. I think you are ridiculous. Now go away.~ [SIMEED06]
EXTERN BEDWIN TS121

CHAIN VPSIMB 152
~I found the joke quite to my satisfaction.~
EXIT

CHAIN
IF WEIGHT #-45 ~Global("VP_BSime29","LOCALS",2)~ THEN VPSIMB 153
~My beloved Edwin! Here you come at last. I can barely control my burning passion, come, hold me close, my lover.~ [SIMEED07]
DO ~SetGlobal("VP_BSime29","LOCALS",3)~
EXTERN BEDWIN TS122

CHAIN VPSIMB 154
~The sweet sound of your voice intensifies my desire. Make haste, my beloved!~
EXTERN BEDWIN TS123

CHAIN VPSIMB 155
~So that WAS a charm spell, you dirty egomaniac!~ [SIMEED08]
EXTERN BEDWIN TS124

CHAIN VPSIMB 156
~You bet I will! (* slaps him off his feet and after a short struggle bounds his hands behinds his back*) Now you cannot cast.~
EXTERN BEDWIN TS125

CHAIN VPSIMB 157
~Shut up! On your knees and repeat after me: " I shall leave Sime alone."~
EXTERN BEDWIN TS126

CHAIN VPSIMB 158
~Good. I will come and unbind you in the morning least you get into any mischief.~
EXIT

// Keldorn

CHAIN
IF WEIGHT #-44 ~Global("VP_BSime30","LOCALS",2)~ THEN VPSIMB 159
~Keldorn, old man, you are a pitiful sight. Why are you on the road instead of sitting by the fireplace and telling your kids stories of old?~ [SIMEKE01]
DO ~SetGlobal("VP_BSime30","LOCALS",3)~
EXTERN BKELDOR TS166

CHAIN VPSIMB 160
~Your first duty is to your family, Keldorn. Nothing is worth taking a father from his children's life and a husband from his wife's thoughts.~
EXTERN BKELDOR TS167

CHAIN VPSIMB 161
~You sound convinced. But does not your heart tell you that you are wrong?~
EXTERN BKELDOR TS168

CHAIN VPSIMB 162
~As you wish.~
EXIT

CHAIN
IF WEIGHT #-43 ~Global("VP_BSime31","LOCALS",2)~ THEN VPSIMB 163
~You want to find a word that rhymes with Maria? Truly, Sir Keldorn, that's a question to ask a bard, not a ranger such as I.~ [SIMEKE02]
DO ~SetGlobal("VP_BSime31","LOCALS",3)~
EXTERN BKELDOR TS169

CHAIN VPSIMB 164
~Why won't you write her what you just told me and add that the only rhymes you can find to Maria is Keldorn?~
EXTERN BKELDOR TS170

CHAIN VPSIMB 165
~My pleasure, Sir Keldorn.~ [SIMEKE03]
EXIT

// Cernd

CHAIN
IF WEIGHT #-42 ~Global("VP_BSime32","LOCALS",2)~ THEN VPSIMB 166
~Do you think, Cernd, that the beasts and birds and plants can dream?~
DO ~SetGlobal("VP_BSime32","LOCALS",3)~
EXTERN BCERND TS100

CHAIN VPSIMB 167
~I believe they do.~
EXTERN BCERND TS101

CHAIN VPSIMB 168
~I like asking questions of those who are quiet. Their answers often both charm and puzzle me. So what do you think? And this time I will not take a question for an answer.~
EXTERN BCERND TS102

CHAIN VPSIMB 169
~Which beast was it?~
EXTERN BCERND TS103

CHAIN VPSIMB 170
~Do tell me!~
EXTERN BCERND TS104

CHAIN VPSIMB 171
~I will.~
EXIT

CHAIN
IF WEIGHT #-41 ~Global("VP_BSime33","LOCALS",2)~ THEN VPSIMB 172
~Would you return to Tethyr one day?~
DO ~SetGlobal("VP_BSime33","LOCALS",3)~
EXTERN BCERND TS105

CHAIN VPSIMB 173
~Druids must have great patience... You have been adventuring with us for quite some time now.~
EXTERN BCERND TS106

CHAIN VPSIMB 174
~Why? Why do you need to be among <CHARNAME>'s associates?~
EXTERN BCERND TS107

CHAIN VPSIMB 175
~You certainly have foresight, druid. But would not you rather watch after your own son, not a stranger with a dark heritage?~
EXTERN BCERND TS108

CHAIN VPSIMB 176
~It always amazes me how one of your calling can be so warm and so chilling at the same time.~
EXIT

// Haer'Dalis

CHAIN
IF WEIGHT #-40 ~Global("VP_BSime34","LOCALS",2)~ THEN VPSIMB 177
~Believe it or not, I tried to become a bard in my youth.~ [SIMEHA01]
DO ~SetGlobal("VP_BSime34","LOCALS",3)~
EXTERN BHAERDA TS169

CHAIN VPSIMB 178
~There is more to the bards' art than the ability to dance and to sing. I do no worse than any intelligent woman can. But I have no true gift.~
EXTERN BHAERDA TS170

CHAIN VPSIMB 179
~I am. I told you I tried. When I want something I do not attempt it half-heartedly. I was very young and I had just begun to understand what sort of business my father is in. He could not shield me from the reality any longer and was even making plans to start my training.~
EXTERN BHAERDA TS171

CHAIN VPSIMB 180
~A single plan. But a lousy one. I run away, hoping to earn money by utilizing all those boring lute lessons I was taught as a child.~ [SIMEHA02]
EXTERN BHAERDA TS172

CHAIN VPSIMB 181
~* Laughs * There was none in the first place, Haer'Dalis. Looking back I think that I was received more warmly than I deserved. But it was a sorry existence. I never knew when next I would eat, but I could not return home.~
EXTERN BHAERDA TS173

CHAIN VPSIMB 182
~A man dragged me off the stage, put me on his saddle and did not stop riding until we were far away. I thought him a bandit, kidnapping me to get back at my father.~
EXTERN BHAERDA TS174

CHAIN VPSIMB 183
~No. He was a ranger. He taught me everything I know of life and of love.~
EXIT

CHAIN
IF WEIGHT #-39 ~Global("VP_BSime35","LOCALS",2)~ THEN VPSIMB 184
~I must have bored you to death with my story. You keep staring at me and you do not speak. I give you my word, I will not start a "History of Sime's Life" next time.~ [SIMEHA03]
DO ~SetGlobal("VP_BSime35","LOCALS",3)~
EXTERN BHAERDA TS175

CHAIN VPSIMB 185
~(*smiles*) But you are faery's child yourself, you should not be so astounded by elven beauty.~
EXTERN BHAERDA TS176

CHAIN VPSIMB 186
~Well said, Haer'Dalis.~
EXIT

CHAIN
IF WEIGHT #-38 ~Global("VP_BSime36","LOCALS",2)~ THEN VPSIMB 187
~That is very impressive! I have never seen anyone juggle with burning torches before. But be careful, Haer'Dalis, you will burn your fingers.~ [SIMEHA04]
DO ~SetGlobal("VP_BSime36","LOCALS",3)~
EXTERN BHAERDA TS177

CHAIN VPSIMB 188
~I shall remind you of those words next time I am healing your body from the burns of a fireball, Haer'Dalis.~ [SIMEHA05]
EXTERN BHAERDA TS178

CHAIN VPSIMB 189
~I will, of course.~
EXIT

CHAIN
IF WEIGHT #-37 ~Global("VP_BSime37","LOCALS",2)~ THEN VPSIMB 190
~It's only me, Haer'Dalis, do not be startled. You were deep in your thoughts, I am sorry for bothering you.~ [SIMEHA06]
DO ~SetGlobal("VP_BSime37","LOCALS",3)~
EXTERN BHAERDA TS179

CHAIN VPSIMB 191
~They say: think of a demon and it will come to your summons.~
EXTERN BHAERDA TS180

CHAIN VPSIMB 192
~I am who I am...~
EXTERN BHAERDA TS181

CHAIN VPSIMB 193
~If you wish, Haer'Dalis.~
EXTERN BHAERDA TS182

CHAIN VPSIMB 194
~Bravo, Haer'Dalis. You almost made me believe that you are a whore.~ [SIMEHA07]
EXIT

CHAIN
IF WEIGHT #-36 ~Global("VP_BSime38","LOCALS",2)~ THEN VPSIMB 195
~The night grows long. Will you cheer me with a song, good bard?~ [SIMEHA08]
DO ~SetGlobal("VP_BSime38","LOCALS",3)~
EXTERN BHAERDA TS183

CHAIN VPSIMB 196
~A pretty song. But I was thinking of a different sort.~
EXTERN BHAERDA TS184

CHAIN VPSIMB 197
~Not tonight nor any other.~
EXIT

CHAIN
IF WEIGHT #-35 ~Global("VP_BSime39","LOCALS",2)~ THEN VPSIMB 198
~Yes, Haer'Dalis, you have treated me to a marvelous performance. The song was sweet and your voice even sweeter.~ [SIMEHA09]
DO ~SetGlobal("VP_BSime39","LOCALS",3)~
EXTERN BHAERDA TS185

CHAIN VPSIMB 199
~I might have. I heard myself singing that's for sure. But my voice lacks the typical chiming silver bell tone.~
EXTERN BHAERDA TS186

CHAIN VPSIMB 200
~I am all ears.~
EXTERN BHAERDA TS187

CHAIN VPSIMB 201
~Oh, not in my opinion. I find that elves sound harsher under the aforementioned circumstances.~ [SIMEHA10]
EXIT

CHAIN
IF WEIGHT #-34 ~Global("VP_BSime40","LOCALS",2)~ THEN VPSIMB 202
~I did not mean to offend you Haer'Dalis. But I prefer to be direct in the matters of heart.~ [SIMEHA11]
DO ~SetGlobal("VP_BSime40","LOCALS",3)~
EXTERN BHAERDA TS188

CHAIN VPSIMB 203
~But I am not playing games, Haer'Dalis. I do not fancy you.~
EXTERN BHAERDA TS189

CHAIN VPSIMB 204
~You can breathe, Haer'Dalis, but you should not hope. At the first moment I meet a man I decide if he is to be my lover or not. I do not change my mind.~
EXTERN BHAERDA TS190

CHAIN VPSIMB 205
~Not really.~
EXTERN BHAERDA TS191

CHAIN VPSIMB 206
~Rest assured, your baby-blue hair has nothing to do with my decision. It is about me, not about you, Haer'Dalis.~
EXIT

// Minsc

CHAIN
IF WEIGHT #-33 ~Global("VP_BSime41","LOCALS",2)~ THEN VPSIMB 207
~I admire your choice of a familiar, Minsc. Indeed, it is not uncommon for a ranger to travel with a dire wolf or with a graceful panther. Yet you choose to give your friendship to a small and pitiful animal. That shows a richness of heart.~ [SIMEMI01]
DO ~SetGlobal("VP_BSime41","LOCALS",3)~
EXTERN BMINSC TS112

CHAIN VPSIMB 208
~I did, Minsc. He is very... fierce.~
EXTERN BMINSC TS113

CHAIN VPSIMB 209
~(*pales*) I saw that. I am guessing it is an acquired taste.~
EXTERN BMINSC TS114

CHAIN VPSIMB 210
~Well, I am glad we had this little chat, Minsc.~
EXIT

CHAIN
IF WEIGHT #-32 ~Global("VP_BSime42","LOCALS",2)~ THEN VPSIMB 211
~Yes, Minsc, Boo is very fluffy. Exceptionally so. He is groomed to perfection.~ [SIMEMI02]
DO ~SetGlobal("VP_BSime42","LOCALS",3)~
EXTERN BMINSC TS115

CHAIN VPSIMB 212
~Boo says that?~
EXTERN BMINSC TS116

CHAIN VPSIMB 213
~Yes, Minsc it was very nice. Boo's, however, was a very non-traditional compliment, fresh and with zest. It would make me wonder about the secret meaning behind it.~
EXTERN BMINSC TS117

CHAIN VPSIMB 214
~I loved what both of you said. You are both incredibly sweet.~
EXIT

CHAIN
IF WEIGHT #-31 ~Global("VP_BSime43","LOCALS",2) Global("VP_Dyna_Appears","GLOBAL",0)~ THEN VPSIMB 215
~Oh, Minsc, I do not know if that's a good idea. It looks like Boo does not want to leave your shoulder.~ [SIMEMI03]
DO ~SetGlobal("VP_BSime43","LOCALS",3)~
EXTERN BMINSC TS118

CHAIN VPSIMB 267
~Here we go. Good hamst... Ouch! It bit me! Where are you going, silly rat? Please, everyone, help me catch it! Minsc! Oh, MY DEAR MIELIKKI! <CHARNAME>! Come here! I do not understand... It was Minsc just a moment ago! Now it is some woman! She is unconscious, but she is alive. I do not understand...~ [SIMEMI04]
DO ~SetGlobal("VP_Dyna_Appears","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutD01")~
EXIT

CHAIN
IF WEIGHT #-21 ~Global("VP_BSime43","LOCALS",3) Global("VP_Dyna_Appears","GLOBAL",1)~ THEN VPSIMB 268
~Who is this black woman? What is going on here?~
END
 ++ ~Dynaheir? DYNAHEIR! Please, wake up!~ EXTERN VPSIMB 269
 ++ ~It is Dynaheir, a witch Minsc was guarding before she was killed. This seems to be some sort of vile joke from Jon Irenicus' depraved mind. It appears that Boo is now an enchanted animal that keeps Minsc in his true form. Here, I got Boo, please put him on her, we shall see if she turns back into Minsc.~ EXTERN VPSIMB 270
 ++ ~I have no idea who this woman is. Let's wait until she wakes up.~ EXTERN VPSIMB 269

CHAIN VPSIMB 269
~She is waking up. May be she can tell her story.~
DO ~SetGlobal("VP_Dyna_Appears","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutD02")~
EXIT

CHAIN VPSIMB 270
~You are right! He is Minsc again.~
DO ~SetGlobal("VP_Dyna_Appears","GLOBAL",3) StartCutSceneMode() StartCutScene("VPCutD03")~
EXIT

CHAIN
IF WEIGHT #-30 ~Global("VP_BSime44","LOCALS",2)~ THEN VPSIMB 216
~Minsc, I warn you; ask anything of me, except that I hold Boo. You have my ear now.~ [SIMEMI05]
DO ~SetGlobal("VP_BSime44","LOCALS",3)~
EXTERN BMINSC TS119

CHAIN VPSIMB 217
~Yes, I suppose we can talk about Boo. After all, we will end up speaking of Boo anyway, no matter what subject we start with.~
EXTERN BMINSC TS120

CHAIN VPSIMB 218
~He was very upset and you fainted.~
EXTERN BMINSC TS121

CHAIN VPSIMB 219
~Yes. There is a tender connection between you and your furry friend. Cherish it, Minsc. Do not let Boo ever leave your side!~
EXTERN BMINSC TS122

CHAIN VPSIMB 220
~Good, otherwise we are all in for a surprise. Your fainting spell I mean.~
EXIT

CHAIN
IF WEIGHT #-29 ~Global("VP_BSime45","LOCALS",2)~ THEN VPSIMB 221
~Minsc, thank you so much for putting my mace in a safe and secret place. Now if you would tell me where this place is...~ [SIMEMI06]
DO ~SetGlobal("VP_BSime45","LOCALS",3)~
EXTERN BMINSC TS123

CHAIN VPSIMB 222
~Yes, but I need my mace. And when I am fighting nobody will take the mace from me, except if I were to be killed.~
EXTERN BMINSC TS124

CHAIN VPSIMB 223
~If you do not want me dead, please, give me my mace.~
EXTERN BMINSC TS125

CHAIN VPSIMB 224
~What if some enemy were to trick the honorable Minsc and attack from the back? Then poor Sime would not be able to defend herself without her mace.~
EXTERN BMINSC TS126

CHAIN VPSIMB 225
~Your backpack is a very safe place indeed. Thank you, my dear Minsc, but in the future, please ask me before trying to help me out.~
EXIT

CHAIN
IF WEIGHT #-28 ~Global("VP_BSime46","LOCALS",2)~ THEN VPSIMB 226
~I have always wondered about Dynaheir, Minsc. Did you say you went on dajemma to accompany her?~ [SIMEMI07]
DO ~SetGlobal("VP_BSime46","LOCALS",3)~
EXTERN BMINSC TS127

CHAIN VPSIMB 227
~Irenicus was far above your capabilities if he captured your former group. I have heard it was a formidable force.~
EXTERN BMINSC TS128

CHAIN VPSIMB 228
~I am not a witch, no.~
EXTERN BMINSC TS129

CHAIN VPSIMB 229
~It is always good when someone watches your back. Thank you for your generous offer Minsc. You will always have my most sincere friendship.~ [SIMEMI08]
EXIT

CHAIN
IF WEIGHT #-27 ~Global("VP_BSime47","LOCALS",2)~ THEN VPSIMB 230
~Hey, Minsc. What are you giving me?~ [SIMEMI09]
DO ~SetGlobal("VP_BSime47","LOCALS",3)~
EXTERN BMINSC TS130

CHAIN VPSIMB 231
~It is a beautiful carrot. Thank you, Boo. Thank you, Minsc.~
EXTERN BMINSC TS131

CHAIN VPSIMB 232
~That depends on the lady. Some like things that are just awful. I have seen ladies dressed like scarecrows. Simply ridiculous!~
EXTERN BMINSC TS132

CHAIN VPSIMB 233
~No, I guess I am an ordinary lady, who likes pretty and sweet things.~ [SIMEMI10]
EXTERN BMINSC TS133

CHAIN VPSIMB 234
~Thank you, Minsc. I will add it to my necklace once we are in town. You are very generous.~
EXIT

CHAIN
IF WEIGHT #-26 ~Global("VP_BSime48","LOCALS",2)~ THEN VPSIMB 235
~Minsc, I want to speak to Boo for a second, can I?~ [SIMEBO01]
DO ~SetGlobal("VP_BSime48","LOCALS",3)~
EXTERN BMINSC TS134

CHAIN VPSIMB 236
~Sure, Minsc. (*whispers*) Dynaheir, can you hear me?~
EXTERN VPBOO N0

CHAIN VPSIMB 237
~Oh, Dynaheir! We all were hiding our chuckles when Minsc was talking to Boo! Yet Boo is the smartest among us! Minsc is wise to listen to you.~
EXTERN VPBOO N1

CHAIN VPSIMB 238
~It is very generous of you to share your wisdom with Minsc.~
EXTERN VPBOO 2

CHAIN VPSIMB 239
~I will admire you even more if you can achieve that, Dynaheir.~
EXTERN VPBOO 3

CHAIN VPSIMB 240
~I shall leave you to your efforts then.~
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutD05")~
EXIT

CHAIN
IF WEIGHT #-25 ~Global("VP_BSime49","LOCALS",2)~ THEN VPSIMB 241
~Pssst, Dynaheir! Dynaheir!~ [SIMEBO02]
DO ~SetGlobal("VP_BSime49","LOCALS",3)~
EXTERN VPBOO 4

CHAIN VPSIMB 242
~Very smart. But I sense that Boo is indisposed to talk right now.~
EXTERN BMINSC TS137

CHAIN VPSIMB 243
~It is fine, Minsc. She... He is just tired. The last battle was very taxing.~
EXTERN BMINSC TS138

CHAIN VPSIMB 244
~I do not doubt.~
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutD05")~
EXIT

CHAIN
IF WEIGHT #-24 ~Global("VP_BSime50","LOCALS",2)~ THEN VPSIMB 245
~Will he ever understand that you are Dynaheir?~ [SIMEBO03]
DO ~SetGlobal("VP_BSime50","LOCALS",3)~
EXTERN VPBOO 7

CHAIN VPSIMB 246
~Why?~
EXTERN VPBOO 8

CHAIN VPSIMB 247
~<CHARNAME> knows. I know. Some of our companions saw you too...~
EXTERN VPBOO 9

CHAIN VPSIMB 248
~Does he ever consider that you are a female? He keeps calling you "he".~
EXTERN VPBOO 10

CHAIN VPSIMB 249
~You sound protective of Minsc, Dynaheir.~
EXTERN VPBOO 11

CHAIN VPSIMB 250
~Might you love him?~
EXTERN VPBOO 12

CHAIN VPSIMB 251
~(*smiles*) Yes.~
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutD05")~
EXIT

CHAIN
IF WEIGHT #-23 ~Global("VP_BSime51","LOCALS",2)~ THEN VPSIMB 252
~I am sorry if I offended you last time, Dynaheir.~ [SIMEBO04]
DO ~SetGlobal("VP_BSime51","LOCALS",3)~
EXTERN VPBOO 13

CHAIN VPSIMB 253
~Hmm?~
EXTERN VPBOO 14

CHAIN VPSIMB 254
~Mage?~
EXTERN VPBOO 15

CHAIN VPSIMB 255
~Your tale, it is too...~
EXTERN VPBOO 16

CHAIN VPSIMB 256
~ I can never understand when you talk seriously and when you are not. But it is an odd joke nonetheless.~
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutD05")~
EXIT

CHAIN
IF WEIGHT #-22 ~Global("VP_BSime52","LOCALS",2)~ THEN VPSIMB 257
~I wonder how did you come up with the name for your hamster, Minsc.~ [SIMEBO05]
DO ~SetGlobal("VP_BSime52","LOCALS",3)~
EXTERN VPBOO 17

CHAIN VPSIMB 258
~So?~
EXTERN BMINSC TS142

CHAIN VPSIMB 259
~In Rasheman?~
EXTERN BMINSC TS143

CHAIN VPSIMB 260
~An amazing story. But Why Boo?~
EXTERN BMINSC TS148

CHAIN VPSIMB 261
~Oh, I see.~
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutD05")~
EXIT

/////////////////////////////////

CHAIN VPSIMB 262
~To Dorian, the man whose smile made my heart race! I shall never forget you!~
END
 ++ ~Shut up you crows! Let the dead be!~ EXTERN VPSIMB 263
 ++ ~I shall join in. To Dynaheir! None could summon a fireball with such a grace! To Khalid, the man who won each battle with due humility!~ EXTERN VPSIMB 264
 ++ ~Your conversation is making me sad. For I have a list of friends lost as well. Would you not drink quietly?~ EXTERN VPSIMB 265
 ++ ~Do not let your sorrow cloud your hearts, friends. We will all die eventually. I say let it be on the battlefield!~ EXTERN VPSIMB 266

CHAIN VPSIMB 263
~Shut up yourself. I am drunk now and I wish to drink to my friends. Each of them was worth ten of your kind!~ [SIMEMA03]
EXIT

CHAIN VPSIMB 264
~To Khalid and Dynaheir!~
EXIT

CHAIN VPSIMB 265
~Why would you not join us instead? Mayhap you would feel better if you tell us of your brave friends who will not join us again.~
EXIT

CHAIN VPSIMB 266
~Let it be. But I cannot chase the sorrow away tonight. I shall be drunk.~
EXIT

// Sime Romance
// LT1
/////////////////////////////////

CHAIN
IF WEIGHT #-99 ~Global("LoveTalk","LOCALS",2) Gender(Player1,MALE)~ THEN VPSIMB 275
~I know who you are, m'<PRO_LADYLORD>. Or rather what you are. If that was a secret, then it was not guarded carefully. Tell me, <CHARNAME>, was it your intention to let the world know that you are Bhaal's child or it was a mishap?~ [SIME1_1]
END
 ++ ~I do not know, Sime. After I defeated Sarevok, my heritage became common knowledge. The rumours in this land spread faster than wildfire. I wonder sometimes what do they pay messengers for?~ EXTERN VPSIMB 276
 ++ ~Bad mishap, Sime. I wish I could keep my Gorion's ward mantle for longer, but it was stripped away from me. By the way, Sime, if you'd stop calling me "m'<PRO_LADYLORD>" that might greatly improve the intimacy of our friendship.~ EXTERN VPSIMB 281
 ++ ~Of course that was my intention! Would you be a demigod, would you hide it?~ EXTERN VPSIMB 285

CHAIN VPSIMB 276
~(*Laughs*) For staying in the inns and getting drunk, while the good folk do their jobs, m'<PRO_LADYLORD>. Indeed, the gossip travels faster than a bird flies and I fail to understand how. May be it is magic?~
END
 IF ~Gender(Player1,MALE)~ THEN REPLY ~Scrying devices you mean? I am afraid that even as we speak some wizened man has nothing better to do than to pry on me.~ EXTERN VPSIMB 277
 IF ~Gender(Player1,MALE)~ THEN REPLY ~Magic or not it is annoying as Nine Hells!~ EXTERN VPSIMB 277
 IF ~Gender(Player1,FEMALE)~ THEN REPLY ~Scrying devices you mean? I am afraid that even as we speak some wizened man has nothing better to do than to pry on me.~ EXTERN VPSIMB 588
 IF ~Gender(Player1,FEMALE)~ THEN REPLY ~Magic or not it is annoying as Nine Hells!~ EXTERN VPSIMB 588
 ++ ~Sime, I do not mean to be disrespectful, but this talk and your attitude upset me.~ EXTERN VPSIMB 280

CHAIN VPSIMB 277
~You think so? (*laughs*) Then let's give them something to look at my <PRO_LADYLORD>!

(*Before you can answer, Sime gives you a deep, long kiss*).~ [SIME1_2]
END
 ++ ~There could be more than one wizard watching, caring soul. Care to repeat the performance to keep them all interested? By the way, Sime, do stop calling me "m'<PRO_LADYLORD>" already! <CHARNAME> will do.~ EXTERN VPSIMB 278
 ++ ~Awww... Good, but not enough. We shall give it another try one day. That's if you would drop that "m'<PRO_LADYLORD>" when talking to me. <CHARNAME> will do.~ EXTERN VPSIMB 278
 ++ ~<CHARNAME>, just <CHARNAME>. But for the gods sake, woman, control yourself!~ EXTERN VPSIMB 279
 ++ ~Sime, I assume that was a joke. But I will not let you off so easily next time. One more escapade like that - and you are out of this group!~ EXTERN VPSIMB 280

CHAIN VPSIMB 278
~<CHARNAME>? I think I rather like your name. Try it again? Why not? You are a good kisser, even when caught unaware.~
DO ~SetGlobal("LoveTalk","LOCALS",3) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 279
~Fear not, <CHARNAME>, I am in full control of what I am doing.~
DO ~SetGlobal("LoveTalk","LOCALS",3) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 280
~My <PRO_LADYLORD>, I was only wishing to cheer you. If you prefer to revel in your grim thoughts, suit yourself.~
DO ~SetGlobal("LoveTalk","LOCALS",3) SetGlobal("VP_LoveTalkDelay","LOCALS",0) SetGlobal("SimeRomanceActive","GLOBAL",3)~
EXIT

CHAIN VPSIMB 281
~Then I shall call you by your name. <CHARNAME>... I like the sound of it. So, <CHARNAME> you would prefer to be incognito?~
END
 ++ ~Yes, Sime. Way too often people expect a heroic feat or a mad <PRO_MANWOMAN>man's act or who knows what else of me, just because I am a Bhaalspawn.~ EXTERN VPSIMB 282
 ++ ~I guess. But really, it is none of your business.~ EXTERN VPSIMB 283
 ++ ~It is not that bad actually. Half of the people run away from me, another half want me to do something, and all that based on the same fact: "because you are a Bhaalspawn". I guess it is funny in a way.~ EXTERN VPSIMB 284

CHAIN VPSIMB 282
~I understand. Or at least I can see why you are aggravated. I cannot stop the fools from gaping at you, but I can promise that I shall think of you as a person, not as something menacing and unusual.~
DO ~SetGlobal("LoveTalk","LOCALS",3) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 283
~(*Shrugs*) If you say so.~
DO ~SetGlobal("LoveTalk","LOCALS",3) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 284
~Funny? You are gifted with a happy character if you find it funny. I cannot stop the fools from gaping at you, but I can promise that I shall think of you as a person, not as something menacing and unusual.~
DO ~SetGlobal("LoveTalk","LOCALS",3) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 285
~I do not know. I am a half-elf, half-human and I've never hid any part of my heritage, like some half-bloods do. May be if I was a demigod, I would not keep it a secret either.~
END
 ++ ~My point exactly. I cannot change who I am and I am not ashamed of my heritage. After all it was my mother, who had peculiar taste in men, not I. And Sime, do call me <CHARNAME>. "My <PRO_LADYLORD>" unnerves me.~ EXTERN VPSIMB 286
 ++ ~Sime, let's not make a big deal out of it.~ EXTERN VPSIMB 287
 ++ ~I would not wish anyone to face the choices I face. I cope, Sime, but it is not easy to carry the burden of my accursed heritage. The crowd's fascination does not help things. Half of the people run away from me, another half want me to do something, and all that based on the same fact: "because you are a Bhaalspawn". Pray Sime, pray hard every night NOT to wake up next morn a demigod and a famous persona in the Realms as it happened to me.~ EXTERN VPSIMB 288

CHAIN VPSIMB 286
~Then I shall call you by your name. <CHARNAME>... I like the sound of it. I think we have something in common: my mother had very unusual tastes where men were concerned it seems. But at least she picked a local murderer and a thief, not the Lord of Murder.~
DO ~SetGlobal("LoveTalk","LOCALS",3) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 287
~We shall not then.~
DO ~SetGlobal("LoveTalk","LOCALS",3) SetGlobal("VP_LoveTalkDelay","LOCALS",0) SetGlobal("SimeRomanceActive","GLOBAL",3)~
EXIT

CHAIN VPSIMB 288
~(*Laughs*) Your warning is belated, m'<PRO_LADYLORD>. I am now Sime Linvail, the one who travels in the company of Bhaalspawn!~
END
 ++ ~Sime, I really do not have time for a small talk.~ EXTERN VPSIMB 289
 ++ ~But I warned you! And Sime, do call me <CHARNAME>. "My <PRO_LADYLORD>" unnerves me.~ EXTERN VPSIMB 290
 ++ ~What have I done! I doomed you! And since we have such an intimate connection as a common curse, would you consider calling me <CHARNAME>?~ EXTERN VPSIMB 291

CHAIN VPSIMB 289
~(*Shrugs*) If you say so.~
DO ~SetGlobal("LoveTalk","LOCALS",3) SetGlobal("VP_LoveTalkDelay","LOCALS",0) SetGlobal("SimeRomanceActive","GLOBAL",3)~
EXIT

CHAIN VPSIMB 290
~Thank you for the warning, <CHARNAME>. I think I rather like your name.~
DO ~SetGlobal("LoveTalk","LOCALS",3) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 291
~<CHARNAME>? I think I rather like your name. I shall use it often.~
DO ~SetGlobal("LoveTalk","LOCALS",3) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN
IF WEIGHT #-98 ~Global("LoveTalk","LOCALS",2) Gender(Player1,FEMALE)~ THEN VPSIMB 587
~I know who you are, m'<PRO_LADYLORD>. Or rather what you are. If that was a secret, then it was not guarded carefully. Tell me, <CHARNAME>, was it your intention to let the world know that you are Bhaal's child or it was a mishap?~
END
 ++ ~I do not know, Sime. After I defeated Sarevok, my heritage became common knowledge. The rumours in this land spread faster than wildfire. I wonder sometimes what do they pay messengers for?~ EXTERN VPSIMB 276
 ++ ~Bad mishap, Sime. I wish I could keep my Gorion's ward mantle for longer, but it was stripped away from me. By the way, Sime, if you'd stop calling me "milord" that might greatly improve the intimacy of our friendship.~ EXTERN VPSIMB 281
 ++ ~Of course that was my intention! Would you be a demigod, would you hide it?~ EXTERN VPSIMB 285

CHAIN VPSIMB 588
~You think so? (*laughs*) Then let's give them something to look at my <PRO_LADYLORD>!

(*Before you can answer, Sime gives you a deep, long kiss*).~
END
 ++ ~There could be more than one wizard watching, caring soul. Care to repeat the performance to keep them all interested? By the way, Sime, do stop calling me "m'<PRO_LADYLORD>" already! <CHARNAME> will do.~ EXTERN VPSIMB 278
 ++ ~Awww... Good, but not enough. We shall give it another try one day. That's if you would drop that "m'<PRO_LADYLORD>" when talking to me. <CHARNAME> will do.~ EXTERN VPSIMB 278
 ++ ~<CHARNAME>, just <CHARNAME>. But for the gods sake, woman, control yourself!~ EXTERN VPSIMB 279
 ++ ~Sime, I assume that was a joke. But I will not let you off so easily next time. One more escapade like that - and you are out of this group!~ EXTERN VPSIMB 280

// Sime Romance
// LT2
/////////////////////////////////

CHAIN
IF WEIGHT #-97 ~Global("LoveTalk","LOCALS",4)~ THEN VPSIMB 292
~I heard you moaning in your sleep another night. It might be that I am intruding, <CHARNAME>, but do you have nightmares?~ [SIME2_1]
END
 ++ ~You are impossible Sime. What I dream of should not concern you.~ EXTERN VPSIMB 293
 ++ ~Yes, Sime. Ever since Gorion died and I was forced to fight for my dear life. I am used to nightmares, Sime, do not worry.~ EXTERN VPSIMB 297
 ++ ~I do not have any bloody nightmares. I was not moaning. It must have been wind or a lovesick cat you have heard.~ EXTERN VPSIMB 298
 ++ ~If you do not mind, I would rather not to discuss it further. Sime, I took you along to fight my battles and I am not interested in discussing my private life with you.~ EXTERN VPSIMB 299

CHAIN VPSIMB 293
~I am a healer, remember? I might be able to help you. You look troubled and you have ill dreams. Even now I can see pain in your eyes. May be a sleeping draught...~
END
 ++ ~No, Sime, no sleeping draught will get rid of my dreams. Ever since Gorion died and I was forced to fight for my dear life I have had those visions. I am used to nightmares by now, do not worry.~ EXTERN VPSIMB 294
 ++ ~Thank you for the thought, but no, I do not need a potion. I will cope.~ EXTERN VPSIMB 294
 ++ ~I know you mean well, but I do not require any help. The nightmares are painful, but they bring me power once in a while.~ EXTERN VPSIMB 295
 ++ ~Sleeping draught? How about a taste of sweet maiden's lips for a potion?~ EXTERN VPSIMB 296

CHAIN VPSIMB 294
~You sound so sure,<CHARNAME>. So be it. But you need only ask for my help, should you change your mind.~
DO ~SetGlobal("LoveTalk","LOCALS",5) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RestParty()~
EXIT

CHAIN VPSIMB 295
~Oh, you are one of those who would go through the worst torture to gain even the smallest grain of knowledge or power? Suit yourself then. But you need only ask for my help, should you change your mind.~
DO ~SetGlobal("LoveTalk","LOCALS",5) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RestParty()~
EXIT

CHAIN VPSIMB 296
~My kisses are known to wake a <PRO_MANWOMAN> up, not to put <PRO_HIMHER> to sleep.~
DO ~SetGlobal("LoveTalk","LOCALS",5) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RestParty()~
EXIT

CHAIN VPSIMB 297
~It is awful. I can see that the nightmares wear you down and there is pain in your eyes. May be a sleeping draught...~ [SIME2_3]
END
 ++ ~No, Sime, a sleeping draught will not save me from my dreams.~ EXTERN VPSIMB 294
 ++ ~Thank you for the thought, but no, I do not need a potion. I will cope.~ EXTERN VPSIMB 294
 ++ ~I know you mean well, but I do not require any help. The nightmares are painful, but they bring me power once in a while.~ EXTERN VPSIMB 295
 ++ ~Sleeping draught? How about a taste of sweet maiden's lips for a potion?~ EXTERN VPSIMB 296

CHAIN VPSIMB 298
~(*Smiles*) Of course. A lovesick cat it was. Should you meet that poor animal, do let me know. I might have a potion or two to help the unfortunate beast to sleep better.~ [SIME2_4]
DO ~SetGlobal("LoveTalk","LOCALS",5) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RestParty()~
EXIT

CHAIN VPSIMB 299
~And that is precisely what I am doing: fighting your battles. Fear cuts deeper than swords, they say. Even now I can see pain in your eyes caused by the ill dreams. I am a healer and a good healer mends souls as often as mending bodies. I can give you a sleeping draught or I can talk to you. Whichever will bring you peace of mind.~
END
 ++ ~No, Sime, no sleeping draught will get rid of my dreams. Ever since Gorion died and I was forced to fight for my dear life I have had those visions. I am used to nightmares by now, do not worry.~ EXTERN VPSIMB 294
 ++ ~Thank you for the thought, but no, I do not need a potion. I will cope.~ EXTERN VPSIMB 294
 ++ ~I know you mean well, but I do not require any help. The nightmares are painful, but they bring me power once in a while.~ EXTERN VPSIMB 295
 ++ ~I said: I do not want to discuss my private life with you.~ EXTERN VPSIMB 300
 ++ ~Sleeping draught? How about a taste of sweet maiden's lips for a potion?~ EXTERN VPSIMB 296

CHAIN VPSIMB 300
~Have it your own way then, you stubborn lout. You will not hear another word from me, but a battle cry.~
DO ~SetGlobal("LoveTalk","LOCALS",5) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RestParty()~
EXIT

CHAIN
IF WEIGHT #-96 ~Global("LoveTalk","LOCALS",6)~ THEN VPSIMB 301
~Do not call me a wise owl, <CHARNAME>. I have had my share of mistakes and silly escapades. Sometimes I think that I am alive only by the will of the gods who guard all fools.~ [SIME3_1]
END
 ++ ~You have done something stupid? I am sorry, Sime, but I will need proof to believe you. Come tell me about at least one thing you have done wrong.~ EXTERN VPSIMB 302
 ++ ~Sure. We all did. But you appear to be a very rational person at present. Care to trade a tale of your apparently crazy youth?~ EXTERN VPSIMB 302
 ++ ~Whatever you say. Sime, we do not have time for arguments. Be a good girl, stop hanging at my every word and turning everything into a discussion!~ EXTERN VPSIMB 307

CHAIN VPSIMB 302
~I will oblige your curiosity. I ran away from the safe home where Aran placed me to when I was young. I wanted no less than to become a famous bard. The grand plan was to collect the folk songs of the Barbarians of the Icewind Dale. I reasoned that I could sustain myself by singing and dancing as I will be making my way up North.~
END
 ++ ~Sounds like a daring enterprise. And I agree, an unwise one. Was your expedition somehow related to Aran?~ EXTERN VPSIMB 303
 ++ ~But that's a brilliant idea! I have never heard Barbarian sagas in the South. Why did not you go through with your plan?~ EXTERN VPSIMB 308
 ++ ~I am convinced, Sime. That was a rather silly escapade.~ EXTERN VPSIMB 309

CHAIN VPSIMB 303
~Of course it was related to Aran. In those days everything I did was in some way connected to my father. I ran away after I finally understood who my father is.~
END
 ++ ~Did he find you then?~ EXTERN VPSIMB 304
 ++ ~What happened next, Sime?~ EXTERN VPSIMB 304
 ++ ~(*Yawn*) Yes, sure thing.~ EXTERN VPSIMB 307

CHAIN VPSIMB 304
~I learned later that my father sent in secret a couple of thugs to watch over me and to give me a coin or two if the things became too rough. Aran knew that interfering directly or arguing with me was useless. He hoped, that I would return back of my own volition and that may be life on the streets would make me less judgmental. He did not foresee that Darriel would walk into a tavern where I was trying to sing for a meal...~
END
 ++ ~Darriel of Tangelwood, the mentor you have mentioned?~ EXTERN VPSIMB 305
 ++ ~Your father has no divination talent then?~ EXTERN VPSIMB 306
 ++ ~(*Yawn*) Yes, sure thing.~ EXTERN VPSIMB 307

CHAIN VPSIMB 305
~Yes, him. Darriel is not among the living any more, <CHARNAME>... I would rather not continue the story now. A sad storyteller would not lift your spirit, and I wish to see you smiling.~
DO ~SetGlobal("LoveTalk","LOCALS",7) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 306
~Do not you try to be smart with me! You know well enough that my father's talents are of different sort than needed for the Arcane Arts devotee. You need not remind me of his true calling.~
DO ~SetGlobal("LoveTalk","LOCALS",7) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 307
~I did not mean to bore you to tears, <CHARNAME>. I shall be quiet from now on.~
DO ~SetGlobal("LoveTalk","LOCALS",7) SetGlobal("VP_LoveTalkDelay","LOCALS",0) SetGlobal("SimeRomanceActive","GLOBAL",3)~
EXIT

CHAIN VPSIMB 308
~Brilliant? <CHARNAME>, you either have a dark sense of humour or you have heard nothing at all about the barbarians of Icewind Dale! I prefer to think the latter. Know that what waited for me, then a young girl incapable to defend herself, were slavery, torture, rape and in best case quick death.~
END
 ++ ~It was a stupid joke, Sime, I am sorry.~ EXTERN VPSIMB 309
 ++ ~Oh, I did not know that. Indeed it is for the best that you did not go. But what happened instead?~ EXTERN VPSIMB 304
 ++ ~(*Shrug*) Whatever...~ EXTERN VPSIMB 310

CHAIN VPSIMB 309
~It was. But all is well that ends well.~
EXTERN VPSIMB 304

CHAIN VPSIMB 310
~I think that talking to a wooden statue is a better than talking to you! At least it is silent. You ARE Bhaal's blood, cold and unfeeling, I know now.~
DO ~SetGlobal("LoveTalk","LOCALS",7) SetGlobal("VP_LoveTalkDelay","LOCALS",0) SetGlobal("SimeRomanceActive","GLOBAL",3)~
EXIT

CHAIN
IF WEIGHT #-95 ~Global("LoveTalk","LOCALS",8)~ THEN VPSIMB 311
~Since we talked last time, I started thinking of Darriel often. You even remind me of him. May be not in looks but in the way you're talking so surely, fight with such valour and you both know mercy and have talent to understand others.~ [SIME4_1]
END
 ++ ~Your words are pleasant enough, Sime, but I feel ill at ease when you compare me to your dead lover.~ EXTERN VPSIMB 312
 ++ ~I gather that Darriel commanded your respect and admiration. (*aside*) Makes me wonder what else he won.~ EXTERN VPSIMB 312
 ++ ~Woman quit your whining. I am not your Darriel reborn from the dead.~ EXTERN VPSIMB 319
 ++ ~There is none like me, Sime. I am Bhaal's heir and you ought to sense my greatness far surpassing anything a mere mortal can master. Do not dare to compare me with some snooty Elf, wench!~ EXTERN VPSIMB 320

CHAIN VPSIMB 312
~Strange, I am almost sure that I can hear jealousy in your voice. Everything Darriel was to me. He was a biter foe when he carried me away and I thought he was my father's hireling. He was a chance comrade and an imprisoned, when I wanted nothing but to escape. He became a friend and a mentor when I discovered the true calling of my heart. But he was never my lover.~ [SIME4_2]
END
 ++ ~Do not reply if you do not want to, but I cannot help but ask why? Another woman? Too much ranging to do, no time for gentle talk? His romantic interests lay elsewhere?~ EXTERN VPSIMB 313
 ++ ~Oh.~ EXTERN VPSIMB 317
 ++ ~I am sorry if I have unintentionally stirred painful memories.~ EXTERN VPSIMB 318
 ++ ~And now he is dead. How tragic. If you do not mind, Sime I have better things to do than talking to you about some rotting corpse.~ EXTERN VPSIMB 316

CHAIN VPSIMB 313
~I think that such curiosity befits a cat or a bored woman, rather than a <PRO_MANWOMAN> grown. But to answer your question, I guess I am a coward of a sort and I was scared of the love and trust I had in him, so I pushed him away. However, was not it for the best? I miss my friend badly, how much worse would it hurt was he my lover?~
END
 ++ ~No worse I think. You will call to your lost friends in your dreams, and you will be tricked for a moment and extend your hands and wake up only to the empty room, the locked doors and the bitter taste of loss.~ EXTERN VPSIMB 314
 ++ ~I did not think that you were one to be afraid to love. Even if it hurts sometimes.~ EXTERN VPSIMB 315
 ++ ~I grow bored, Sime. Let's get going.~ EXTERN VPSIMB 316

CHAIN VPSIMB 314
~Of course, you are right. But no man have I loved like I loved my father, and I was so bitterly disappointed. Since then I have a trapped door on the bottom of my heart and I will not allow any man to enter it. That's why not Darriel.~
DO ~SetGlobal("LoveTalk","LOCALS",9) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 315
~I am not afraid to fall in love <CHARNAME> and I loved many. But no man have I loved like I loved my father, and I was so bitterly disappointed. Since then I have a trapped door on the bottom of my heart and I will not allow any man to enter it. That's why not Darriel.~
DO ~SetGlobal("LoveTalk","LOCALS",9) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 316
~As you wish. I can see that you have little interest in me, so I'll spare you from now on.~
DO ~SetGlobal("LoveTalk","LOCALS",9) SetGlobal("VP_LoveTalkDelay","LOCALS",0) SetGlobal("SimeRomanceActive","GLOBAL",3)~
EXIT

CHAIN VPSIMB 317
~I guess I am a coward of a sort and I was scared have the love and trust I had in him, so I pushed him away. However was not it for the best? I miss my friend badly, how much worse would it hurt was he my lover?~
END
 ++ ~No worse I think. You will call to your lost friends in your dreams, and you will be tricked for a moment and extend your hands and wake up only to the empty room, the locked doors and the bitter taste of loss.~ EXTERN VPSIMB 314
 ++ ~I did not think that you were one to be afraid to love. Even if it hurts sometimes.~ EXTERN VPSIMB 315
 ++ ~I grow bored, Sime. Let's get going.~ EXTERN VPSIMB 316

CHAIN VPSIMB 318
~No, I am actually grateful to you. It feels easier somehow after I said it. No man have I loved like I loved my father, and I was so bitterly disappointed. Since then I have a trapped door on the bottom of my heart and I will not allow any man to enter it. That's why not Darriel.~
DO ~SetGlobal("LoveTalk","LOCALS",9) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 319
~No, you are not. Strange, I am almost sure that I can hear jealousy in your voice. Everything Darriel was to me. He was a biter foe when he carried me away and I thought he was my father's hireling. He was a chance comrade and an imprisoned, when I wanted nothing but to escape. He became a friend and mentor while I discovered the true calling of my heart. But he was never my lover.~
END
 ++ ~Do not reply if you do not want to, but I cannot help but ask why? Another woman? Too much ranging to do, no time for gentle talk? His romantic interests lay elsewhere?~ EXTERN VPSIMB 313
 ++ ~Oh.~ EXTERN VPSIMB 317
 ++ ~I am sorry if I have unintentionally stirred painful memories.~ EXTERN VPSIMB 318
 ++ ~And now he is dead. How tragic! If you do not mind, Sime, I have better things to do than talking to you about some rotting corpse.~ EXTERN VPSIMB 316

CHAIN VPSIMB 320
~May be the god's part of your soul is well fitting what Bhaal had hoped for, but I find that the mortal part of your soul is wanting.~
DO ~SetGlobal("LoveTalk","LOCALS",9) SetGlobal("VP_LoveTalkDelay","LOCALS",0) SetGlobal("SimeRomanceActive","GLOBAL",3)~
EXIT

CHAIN
IF WEIGHT #-94 ~Global("LoveTalk","LOCALS",10)~ THEN VPSIMB 321
~I am troubled by one thought lately, <CHARNAME>. My father, he allowed me to follow you without a protest. I was almost certain that he was actually glad, when I took my leave. Why?~
END
 IF ~Gender(Player1,MALE)~ THEN REPLY ~Sime, I met your father once, I cannot judge his actions. But why should he protest? Do I strike you as a man whom you cannot trust to travel in a company of maidens?~ EXTERN VPSIMB 322
 IF ~Class(Player1,PALADIN_ALL)~ THEN REPLY ~Sime, there is a guild war out there, remember? May be he thinks you are safer by my side?~ EXTERN VPSIMB 323
 ++ ~He did not protest your earlier departures, did he?~ EXTERN VPSIMB 331
 ++ ~You think it is a part of some sinister plan of his? May be I should have accepted Bodhi's offer.~ EXTERN VPSIMB 327
 ++ ~I have a great solution to the problem: you go back to your father and we all will have fewer things to worry about.~ EXTERN VPSIMB 330
 IF ~Class(Player1,RANGER_ALL)~ THEN REPLY ~Sime, there is a guild war out there, remember? May be he thinks you are safer by my side?~ EXTERN VPSIMB 328
 IF ~!Class(Player1,RANGER_ALL) !Class(Player1,PALADIN_ALL)~ THEN REPLY ~Sime, there is a guild war out there, remember? May be he thinks you are safer by my side?~ EXTERN VPSIMB 329

CHAIN VPSIMB 322
~No, <CHARNAME>, you are a decent sort and no maiden would feel endangered in your company. You are even pleasant to look upon and sound like a reasonable man. Still, my father always argued against my ranging.~
END
 IF ~Class(Player1,PALADIN)~ THEN REPLY ~You think that I am a good-looking fellow, flatterer? I am not sure, but I think I might guess his reason. There is a guild war out there, remember? May be he thinks you are safer by my side?~ EXTERN VPSIMB 323
 ++ ~You think it is a part of some sinister plan of his? May be I should have accepted Bodhi's offer.~ EXTERN VPSIMB 327
 ++ ~I have a great solution to the problem: you go back to your father and we all will have fewer things to worry about.~ EXTERN VPSIMB 330
 IF ~Class(Player1,RANGER)~ THEN REPLY ~You think that I am a good-looking fellow, flatterer? I am not sure, but I think I might guess his reason. There is a guild war out there, remember? May be he thinks you are safer by my side?~ EXTERN VPSIMB 328
 IF ~!Class(Player1,RANGER) !Class(Player1,PALADIN)~ THEN REPLY ~You think that I am a good-looking fellow, flatterer? I am not sure, but I think I might guess his reason. There is a guild war out there, remember? May be he thinks you are safer by my side?~ EXTERN VPSIMB 329

CHAIN VPSIMB 323
~My chivalrous warrior, bold and pure, I am sure that he took it into account. Nowhere I am safer than with you and your valorous friends. Still, my father always argued against my ranging.~
END
 ++ ~You worry yourself needlessly, my Lady. Now, let's continue on.~ EXTERN VPSIMB 324
 ++ ~Even if there is some dark design behind Aran's actions, calm yourself. We shall avoid any trap he might be setting.~ EXTERN VPSIMB 325
 ++ ~You are a member of my brave party, Sime, and in my heart I place you among my most cherished friends. Together we shall strike for righteousness! Stay close to me and worry not about Aran's plots.~ EXTERN VPSIMB 326

CHAIN VPSIMB 324
~I guess, you are right. I must be thinking too suspiciously of my father. After all, Aran has never tried to use me in his designs before. Why should he now? I am sorry for wasting your time with my doubts. It is just I would not want to hurt you in any way. The one who is warned is safe, they say.~
DO ~SetGlobal("LoveTalk","LOCALS",11) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 325
~Your words have cheered me up. I must be thinking too low of my father. After all, Aran has never tried to use me in his designs before. Why should he now? I am sorry for wasting your time with my doubts. It is just I would not want to hurt you in any way. The one who is warned is safe, they say.~
DO ~SetGlobal("LoveTalk","LOCALS",11) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 326
~You are very kind. It is just I would not want to hurt you in any way. The one who is warned is safe, they say. And you know what, <CHARNAME>? I would gladly stay very near you.~
DO ~SetGlobal("LoveTalk","LOCALS",11) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 327
~No, you should not have. My father is a dark man, but he has a code of honour of a sort and he is a living being. The rival guild mistress has neither of those qualities. Aran might have some sort of hidden design or he may not. But she is your enemy for sure, an enemy to anybody of flesh and blood. She is hatred incarnate. Fear her, <CHARNAME>.~
END
 IF ~Class(Player1,PALADIN)~ THEN REPLY ~Speaking of Bodhi. Here is a reason for you. There is a guild war out there, remember? May be Aran thinks that you are safer by my side?~ EXTERN VPSIMB 323
 IF ~Class(Player1,RANGER)~ THEN REPLY ~Speaking of Bodhi. Here is a reason for you. There is a guild war out there, remember? May be Aran thinks that you are safer by my side?~ EXTERN VPSIMB 328
 IF ~!Class(Player1,RANGER) !Class(Player1,PALADIN)~ THEN REPLY ~Speaking of Bodhi. Here is a reason for you. There is a guild war out there, remember? May be Aran thinks that you are safer by my side?~ EXTERN VPSIMB 329
 ++ ~I have a great solution to the problem: you go back to your father and we all will have fewer things to worry about.~ EXTERN VPSIMB 330

CHAIN VPSIMB 328
~My noble <PRO_BROTHERSISTER>, I am sure that he took it into account. I am among valiant friends when I travel with you. Still, my father always argued against my ranging.~
END
 ++ ~You worry yourself needlessly, Sime. Now, let's continue on.~ EXTERN VPSIMB 324
 ++ ~Even if there is some dark design behind Aran's actions, calm yourself. We shall avoid any trap he might be setting. Besides, I do not think Aran will use his own daughter as a tool in his games.~ EXTERN VPSIMB 325
 ++ ~Sime, whatever it is, you and I will be able to deal with it in time. I trust you and I know you to be my kindred spirit and a valorous warrior. May be Aran had finally seen that you can take care of yourself and others and that's why he did not argue? Stay close to me, my friend and worry not about Aran's plots.~ EXTERN VPSIMB 326

CHAIN VPSIMB 329
~<CHARNAME>, I am sure that he took it into account. I am among valiant friends when I travel with you. Still, my father always argued against my ranging.~
END
 ++ ~You worry yourself needlessly, Sime. Now, let's continue on.~ EXTERN VPSIMB 324
 ++ ~Even if there is some dark design behind Aran's actions, calm yourself. We shall avoid any trap he might be setting. Besides, I do not think Aran will use his own daughter as a tool in his games.~ EXTERN VPSIMB 325
 ++ ~You are one of my friends, Sime. I know you for a valorous warrior. May be Aran had finally seen that you can take care of yourself and others and that's why he did not argue? In any case, stay close to me, Sime, and worry not about Aran's plots.~ EXTERN VPSIMB 326

CHAIN VPSIMB 330
~If you think that it is a solution, then so be it.~
DO ~SetGlobal("SimeRomanceActive","GLOBAL",3) SetGlobal("VP_LoveTalkDelay","LOCALS",0) SetGlobal("LoveTalk","LOCALS",11) SetGlobal("Kicked_Out","LOCALS",1) ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() LeaveParty() EscapeAreaMove("AR0307",4642,2000,0)~
EXIT

CHAIN VPSIMB 331
~Yes, my father always argued against my ranging.~
END
 IF ~Class(Player1,PALADIN)~ THEN REPLY ~I am not sure, but I think I might guess his reason. There is a guild war out there, remember? May be he thinks you are safer by my side? ~ EXTERN VPSIMB 323
 IF ~Class(Player1,RANGER)~ THEN REPLY ~I am not sure, but I think I might guess his reason. There is a guild war out there, remember? May be he thinks you are safer by my side? ~ EXTERN VPSIMB 328
 IF ~!Class(Player1,RANGER) !Class(Player1,PALADIN)~ THEN REPLY ~I am not sure, but I think I might guess his reason. There is a guild war out there, remember? May be he thinks you are safer by my side?~ EXTERN VPSIMB 329
 ++ ~You think it is a part of some sinister plan of his? May be I should have accepted Bodhi's offer.~ EXTERN VPSIMB 327
 ++ ~I have a great solution to the problem: you go back to your father and we all will have fewer things to worry about.~ EXTERN VPSIMB 330

CHAIN
IF WEIGHT #-93 ~Global("LoveTalk","LOCALS",12)~ THEN VPSIMB 332
~(*Sime stands still for a moment, facing the wind, her locks flying wild around her face. Then she smiles and turns to you.*)
Do you like my new hairdo? I have the best hairdresser in the world.~ [SIME6_1]
END
 ++ ~Sime, all I see is you, facing gusts of wind. Not that you do not look pretty, with your hair flying, but what sort of hairdo is that?~ EXTERN VPSIMB 333
 ++ ~Wind will be your hairdresser then?~ EXTERN VPSIMB 333
 ++ ~Ah? What?~ EXTERN VPSIMB 341
 ++ ~Why do I get a disturbing feeling that the next thing you will ask me will be if you look fat in your armor?~ EXTERN VPSIMB 340

CHAIN VPSIMB 333
~Northern wind hairdo - the style I prefer to any else.~
END
 ++ ~I like your style, Sime. I always wanted to meet a woman who looks lovely without an effort.~ EXTERN VPSIMB 334
 ++ ~Now if you would only cut your hair, make some of those little curls whatever they call them, and put some make up on, then I'd say you improved your appearance. Letting the wind to make a mess of your hair will not do anything for your looks.~ EXTERN VPSIMB 339
 ++ ~Why do I get a disturbing feeling that the next thing you will ask me will be if you look fat in your armor?~ EXTERN VPSIMB 340

CHAIN VPSIMB 334
~I think you have just presented me with a challenge. I should take some time and help you to brush up you skills in gallant talk.~
END
 ++ ~You have my permission to tutor me in gallant matters, Madam.~ EXTERN VPSIMB 335
 ++ ~Sime, I am eloquent enough with ladies who are of interest to me. You are not one of them. Sorry, but at some point I had to be plain, since you do not understand more subtle hints.~ EXTERN VPSIMB 336
 ++ ~That will be not needed, Sime.~ EXTERN VPSIMB 337
 ++ ~I see it as a challenge. I am going to prove you that I have fine knowledge of the science of tender passion and its linguistic applications.~ EXTERN VPSIMB 338

CHAIN VPSIMB 335
~I will take this task very close to my heart, <CHARNAME>.~
DO ~SetGlobal("LoveTalk","LOCALS",13) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 336
~Honesty is one of your finest qualities, <CHARNAME>. Do not worry, I will leave you alone.~
DO ~SetGlobal("SimeRomanceActive","GLOBAL",3) SetGlobal("LoveTalk","LOCALS",13) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 337
~Oh, I see. I think, I get the hint.~
DO ~SetGlobal("SimeRomanceActive","GLOBAL",3) SetGlobal("LoveTalk","LOCALS",13) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 338
~I will be waiting for a demonstration... impatiently.~
DO ~SetGlobal("LoveTalk","LOCALS",13) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 339
~I am afraid we have different idea on beauty.~
DO ~SetGlobal("SimeRomanceActive","GLOBAL",3) SetGlobal("LoveTalk","LOCALS",13) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 340
~I will not, do not worry.~
DO ~SetGlobal("SimeRomanceActive","GLOBAL",3) SetGlobal("LoveTalk","LOCALS",13) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 341
~(*Laughs*) I noticed that you were watching me and I fished for a compliment from you, silly.~
END
 ++ ~Oh, a compliment? The Lady's desire will be granted then. I like your style, Sime. I always wanted to meet a woman who looks lovely without an effort.~ EXTERN VPSIMB 334
 ++ ~Now if you would only cut your hair, make some of those little curls whatever they call them, and put some make up on, then I'd say you improved your appearance. Letting the wind to make a mess of your hair will not do anything for your looks.~ EXTERN VPSIMB 339
 ++ ~Why do I get a disturbing feeling that the next thing you will ask me will be if you look fat in your armor?~ EXTERN VPSIMB 340
 IF ~OR(3) Class(Player1,FIGHTER) Class(Player1,PALADIN) Class(Player1,RANGER)~ THEN REPLY ~Sorry, Sime the rough lips of this warrior are unaccustomed to saying gallant nonsense. ~ EXTERN VPSIMB 334

CHAIN
IF WEIGHT #-92 ~Global("LoveTalk","LOCALS",14)~ THEN VPSIMB 342
~It is a pleasing thing to get some rest at last. The day was long and the battles were many, but it is done, the fire is warm, and no danger is near. Come, sit by me and I shall sooth your hurts and heal your wounds.~
END
 ++ ~I feel quite well, Sime. The day's work is done, but did not we decide to exercise in courtly speech? Shall I start my lesson now?~ EXTERN VPSIMB 343
 ++ ~My wounds are all healed, Sime... do you know what I appreciate about a fire the most... It is the way it softens features and makes our hearts gentler. About our lesson in gallant talk my Lady - is there a better time for it?~ EXTERN VPSIMB 343
 ++ ~Sime, all I need is a good night's sleep. Just leave me where I am.~ EXTERN VPSIMB 354

CHAIN VPSIMB 343
~There will never be better time. So lead the way, <CHARNAME>.~
END
 ++ ~To prove to my Lady that I am skilled in gentle matters I shall sing a song of love and let's see if the Lady can continue. Will you play this little game with me, Sime?~ EXTERN VPSIMB 345
 IF ~Gender(Player1,FEMALE)~ THEN REPLY ~On the second thought it is too taxing. I mean to talk and whatever. Can I just kiss you and buy you a dozen of crimson rodelias if we happen to pass by a flower shop?~ EXTERN VPSIMB 344
 IF ~Gender(Player1,MALE)~ THEN REPLY ~On the second thought it is too taxing. I mean to talk and whatever. Can I just kiss your hand and buy you a dozen of crimson rodelias if we happen to pass by a flower shop?~ EXTERN VPSIMB 344
 IF ~OR(3) Class(Player1,FIGHTER) Class(Player1,PALADIN) Class(Player1,RANGER)~ THEN REPLY ~I am an old soldier and I rarely speak the words of love, but I shall sing a song about it and let's see if you can continue. Will you play this little game with me, Sime?~ EXTERN VPSIMB 345

CHAIN VPSIMB 344
~Rest then, <CHARNAME>. And do not overexert yourself by looking for flowers.~
DO ~SetGlobal("SimeRomanceActive","GLOBAL",3) SetGlobal("LoveTalk","LOCALS",15) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RestParty()~
EXIT

CHAIN VPSIMB 345
~I was starting to wonder when I would hear at last anything more gentle than a battle song from you, <CHARNAME>. You seem to avoid what feeds so many others of your calling. I like the game, <CHARNAME>, it will lighten our hearts and will ease our minds.~
END
 ++ ~The fountains mingle with the river
And the rivers with the ocean,
The winds of heaven mix for ever
With a sweet emotion... ~ EXTERN VPSIMB 346
 ++ ~Ahem... Love, love me do,
You know I love you...~ EXTERN VPSIMB 352
 ++ ~I love a maiden young as spring,
Her eyes bloom as flowers green
Her hair sways as golden wheat
Her lips are rubies sweet as sin.~ EXTERN VPSIMB 348

CHAIN VPSIMB 346
~Nothing in the world is single,
All things by a law divine
In one another's being mingle-
Why not I with thine?

What a lovely song. What will you try next?~
END
 ++ ~Ahem... Love, love me do,
You know I love you...~ EXTERN VPSIMB 347
 ++ ~I love a maiden young as spring
Her eyes bloom as flowers green
Her hair sways as golden wheat
Her lips are rubies sweet as sin.~ EXTERN VPSIMB 348
 ++ ~Nothing. I think I am too tired to continue the game.~ EXTERN VPSIMB 351

CHAIN VPSIMB 347
~I'll always be true,
So please, love me do!

What a lovely song. What will you try next?~
END
 ++ ~I love a maiden young as spring
Her eyes bloom as flowers green
Her hair sways as golden wheat
Her lips are rubies sweet as sin.~ EXTERN VPSIMB 348
 ++ ~Nothing. I think I am too tired to continue the game.~ EXTERN VPSIMB 351

CHAIN VPSIMB 348
~I do not know this song, <CHARNAME>. But I would like to hear the rest of it.~
END
 ++ ~Of course you do not know it! I tricked you, I wrote it myself today. Here is the rest:

To you alone I shall tell
That Lady wears silver bell,
You won't see it when she passes
But you will hear when she laughs.~ EXTERN VPSIMB 349
 ++ ~I guess you lost then, Sime. Do I get a prize?~ EXTERN VPSIMB 350
 ++ ~Never mind, I think I am too tired to continue the game.~ EXTERN VPSIMB 351

CHAIN VPSIMB 349
~Oh, but it is wonderful. Makes me wonder though who the Lady in question might be.~
DO ~SetGlobal("LoveTalk","LOCALS",15) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RestParty()~
EXIT

CHAIN VPSIMB 350
~I think I shall kiss you as a reward. For

...the sunlight clasps the earth,
And the moonbeams kiss the sea-
What are all these kissings worth,
If thou kiss not me?~
DO ~SetGlobal("LoveTalk","LOCALS",15) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RestParty()~
EXIT

CHAIN VPSIMB 351
~Already? I thought we just started. Well, it was amusing and I must admit that you sounded very sweet. Good night, <CHARNAME>.~
DO ~SetGlobal("LoveTalk","LOCALS",15) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RestParty()~
EXIT

CHAIN VPSIMB 352
~I'll always be true,
So please, love me do!

What a lovely song. What will you try next?~
END
 ++ ~The fountains mingle with the river
And the rivers with the ocean,
The winds of heaven mix for ever
With a sweet emotion... ~ EXTERN VPSIMB 353
 ++ ~I love a maiden young as spring
Her eyes bloom as flowers green
Her hair sways as golden wheat
Her lips are rubies sweet as sin.~ EXTERN VPSIMB 348
 ++ ~Nothing. I think I am too tired to continue the game.~ EXTERN VPSIMB 351

CHAIN VPSIMB 353
~Nothing in the world is single,
All things by a law divine
In one another's being mingle-
Why not I with thine?

What a lovely song. What will you try next?~
END
 ++ ~Nothing. I think I am too tired to continue the game.~ EXTERN VPSIMB 351
 ++ ~I love a maiden young as spring
Her eyes bloom as flowers green
Her hair sways as golden wheat
Her lips are rubies sweet as sin.~ EXTERN VPSIMB 348

CHAIN VPSIMB 354
~Sleep tight then.~
DO ~SetGlobal("SimeRomanceActive","GLOBAL",3) SetGlobal("LoveTalk","LOCALS",15) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RestParty()~
EXIT

CHAIN VPSIMB 355
~At least you are honest.~
DO ~SetGlobal("SimeRomanceActive","GLOBAL",3) SetGlobal("LoveTalk","LOCALS",15) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RestParty()~
EXIT

CHAIN VPSIMB 356
~You are my soul mate then? But sometimes loneliness of the woods is too much for a person to bare. Trust me, I know. One needs friends even if he chooses solitude.~
END
 ++ ~I know, Sime. I am glad to have trusted companions with me. I would imagine some would come by to trade a tale or two into my humble abode far away.~ EXTERN VPSIMB 357
 ++ ~Solitude is fine with me, I never feel lonely. And I am so tired of you talking! ~ EXTERN VPSIMB 355

CHAIN VPSIMB 357
~I know, that I would.~
DO ~SetGlobal("LoveTalk","LOCALS",15) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RestParty()~
EXIT

CHAIN VPSIMB 358
~I have no such place. I envy the feeling you have for Candlekeep. Do you think I might visit one day with you there?~
END
 ++ ~You would not like Candlekeep, Sime. It's full of old scholars and the life centers around the library...~ EXTERN VPSIMB 359
 ++ ~Why not? But it is difficult to gain an entry. You have to pay 10,000 gold pieces or carry a book of particular value. It is really a strange rule, but it is effective in keeping almost everyone out and in expanding the library.~ EXTERN VPSIMB 360

CHAIN VPSIMB 359
~I like libraries. I visited once an Edificant library with Darriel and another time we went through Silverymoon. I love the feeling of ages and peoples of old watching you from the shelves. I think I rather fancy the idea to visit Candlekeep.~
DO ~SetGlobal("LoveTalk","LOCALS",15) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RestParty()~
EXIT

CHAIN VPSIMB 360
~If you'd live there maybe you can help me to get over the city wall or something. I do not own much.~
DO ~SetGlobal("LoveTalk","LOCALS",15) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RestParty()~
EXIT

CHAIN VPSIMB 361
~I am not sure. I avoid interfering with the business of gods, yet I would not like the taint to change you into a merciless killing machine. I've become a ranger against my father's will. It must be a much harder battle for you.~
END
 IF ~!Alignment(Player1,CHAOTIC_EVIL) !Alignment(Player1,LAWFUL_EVIL) !Alignment(Player1,NEUTRAL_EVIL)~ THEN REPLY ~I fear it myself Sime and I watch my heart carefully. I will not let Bhaal take over. ~ EXTERN VPSIMB 362
 ++ ~What's your problem, ranger? I am Bhaal's spawn and I am not as shy of the callings of my blood.~ EXTERN VPSIMB 363
 ++ ~You are being too grim. I do not notice any evil influences in me. Surely men point their fingers and call me names, and maniacs like Irenicus hunt me, and I have nightmares sometimes... Oops, I guess there is something evil around me, but I shall be all right.~ EXTERN VPSIMB 364

CHAIN VPSIMB 362
~I am surely glad to hear that.~
DO ~SetGlobal("LoveTalk","LOCALS",15) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RestParty()~
EXIT

CHAIN VPSIMB 363
~Indeed, my advice was useless then.~
DO ~SetGlobal("SimeRomanceActive","GLOBAL",3) SetGlobal("LoveTalk","LOCALS",15) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RestParty()~
EXIT

CHAIN VPSIMB 364
~I think I worried needlessly. You are far too cheerful to be overtaken by the God of Murder.~
DO ~SetGlobal("LoveTalk","LOCALS",15) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RestParty()~
EXIT

CHAIN
IF WEIGHT #-91 ~Global("LoveTalk","LOCALS",16)~ THEN VPSIMB 365
~(*You hear her quiet voice, and suddenly you listen more carefully and you can distinguish her words.*).

Forest Maiden, tonight a thousand of young acolytes will ask for you to cast your glance their way, a hundred of priests dressed in ritual robes will pray to you, a dozen of sturdy rangers will whisper your name among their many toils in hope for your blessing. And among many words that reach your ears tonight, I, Sime Linvail ask you to listen to my plea. Forest Maiden, my prayer is not for me, but for a <PRO_MANWOMAN> of valor, a <PRO_MANWOMAN> tormented. <PRO_HESHE> is cursed often for no other fault than <PRO_HISHER> blood, <PRO_HESHE> has endured many trials, and I fear will face many more before <PRO_HESHE> is through. Bless <PRO_HIMHER>, Mielikki and give <PRO_HIMHER> some hope.~
END
 ++ ~Sime? Were you prayers... for me?~ EXTERN VPSIMB 366
 ++ ~(*Stay silent*)~ EXTERN VPSIMB 374
 ++ ~Sime, what do you think you are doing?~ EXTERN VPSIMB 366

CHAIN VPSIMB 366
~You are awake? (*Laughs*) A stupid question, really. Of course you are. I was praying for you. You... do not mind, do you?~
END
 ++ ~I do not, but it is not really necessary. My god watches over me, Sime.~ EXTERN VPSIMB 367
 ++ ~No, of course not. Thank you, Sime. I did not know you cared so much for me.~ EXTERN VPSIMB 372
 ++ ~Sime, do not you understand? I am not tormented, I am not cursed! I am who I am, a child of Bhaal, and I am ready to face my destiny. I do not need your prayers or your pity!~ EXTERN VPSIMB 371
 ++ ~My kind Lady. Thank you.~ EXTERN VPSIMB 373

CHAIN VPSIMB 367
~I know that, <CHARNAME>. But I fear for you sometimes.~
END
 ++ ~Do you fear for me or do you fear of me?~ EXTERN VPSIMB 368
 ++ ~Do not fear for me, Sime. I am not tormented, I am not cursed! I am who I am, a child of Bhaal, and I am ready to face my destiny. I do not need your prayers or your pity!~ EXTERN VPSIMB 371
 ++ ~You know, that's getting too weird. Let me say you a "good night" and let's forget the whole thing.~ EXTERN VPSIMB 370

CHAIN VPSIMB 368
~I never feared you.~
END
 ++ ~Some will say you should.~ EXTERN VPSIMB 369
 ++ ~I am glad to hear that, Sime. It is pleasant for a change. With all those rumors floating around Athkatla, I guess that I am mentioned more often in a curse than in a prayer.~ EXTERN VPSIMB 369
 ++ ~You know, that's getting too weird. Let me say you a "good night" and let's forget the whole thing.~ EXTERN VPSIMB 370

CHAIN VPSIMB 369
~They can say all they want, those others. Sometimes I wish to cast a silence spell when I hear old crows trading dark stories about you. But I am no crow, I know you and I trust my heart. I am not afraid of you, <CHARNAME>.~
DO ~SetGlobal("LoveTalk","LOCALS",17) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RestParty()~
EXIT

CHAIN VPSIMB 370
~Good night then.~
DO ~SetGlobal("LoveTalk","LOCALS",17) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RestParty()~
EXIT

CHAIN VPSIMB 371
~You cannot forbid me to feel. I did not know that the fact that someone is concerned about your wellbeing would upset you so. But have it your own way.~
DO ~SetGlobal("SimeRomanceActive","GLOBAL",3) SetGlobal("VP_LoveTalkDelay","LOCALS",0) SetGlobal("LoveTalk","LOCALS",17) RestParty()~
EXIT

CHAIN VPSIMB 372
~I do care for you, <CHARNAME>. And I fear for you sometimes.~
END
 ++ ~Do you fear for me or do you fear of me?~ EXTERN VPSIMB 368
 ++ ~Do not fear for me, Sime. I am not tormented, I am not cursed! I am who I am, a child of Bhaal, and I am ready to face my destiny. I do not need your prayers or your pity!~ EXTERN VPSIMB 371
 ++ ~You know, that's getting too weird. Let me say you a "good night" and let's forget the whole thing.~ EXTERN VPSIMB 370

CHAIN VPSIMB 373
~<CHARNAME>, do not thank me. I did nothing out of the ordinary. I am a priest and it is my duty to pray for those I care for and I fear for.~
END
 ++ ~Do you fear for me or do you fear of me?~ EXTERN VPSIMB 368
 ++ ~Do not fear for me, Sime. I am not tormented, I am not cursed! I am who I am, a child of Bhaal, and I am ready to face my destiny. I do not need your prayers or your pity!~ EXTERN VPSIMB 371
 ++ ~You know, that's getting too weird. Let me say you a "good night" and let's forget the whole thing.~ EXTERN VPSIMB 370

CHAIN VPSIMB 374
~(*Sime comes near you and brushes hair aside from your forehead gently*)~
END
 ++ ~(*Catch her hand and squeeze her fingers*) Sime? Were you prayers... for me?~ EXTERN VPSIMB 366
 ++ ~(*Stay silent*)~ EXTERN VPSIMB 375
 ++ ~Sime, that's enough! You are acting like a mother hen! I do not need your prayers or your pity!~ EXTERN VPSIMB 371

CHAIN VPSIMB 375
~(*Sime walks away*)~
DO ~SetGlobal("LoveTalk","LOCALS",17) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RestParty()~
EXIT

CHAIN
IF WEIGHT #-90 ~Global("LoveTalk","LOCALS",18)~ THEN VPSIMB 376
~It is strange how things that are so simple suddenly become more complex. When I was young, the Guild members were men visiting my father, often giving me a passing glance, sometimes joking with me.~ [SIME11_1]
EXTERN VPSIMB 377

CHAIN VPSIMB 377
~Yet now I know that some of them are vicious assassins, others are petty thieves, and the rest are so wicked and lie so often that I do not have a clue how they acquire the coins filling their pockets. I happened to run across some of my father's associates when ranging. It was not pleasant.~
END
 IF ~Class(Player1,THIEF)~ THEN REPLY ~And now you are travelling with one. That is what you are trying to say? You knew it when you joined in with me. What has changed?~ EXTERN VPSIMB 378
 ++ ~Oh, Sime, my poor noble-hearted Sime! I know how you feel. It is not easy to say sometimes, what is a good or is an evil thing to do.~ EXTERN VPSIMB 386
 ++ ~Sime, you do what you must do, no matter if it pleases you or not. You are a ranger, a keeper of law and order, and defender of the weak.~ EXTERN VPSIMB 390
 ++ ~Of course, of course. Simple things are complex, complex things are simple. Can we go now?~ EXTERN VPSIMB 394

CHAIN VPSIMB 378
~What has changed? I have been thinking a lot about you lately. You are... you are different from greedy and merciless assassins, and you do not take the last possessions from the poor. You are furtive, cavalier yet cautious, and your avaricious personality determined your past. But somehow, you are yet unspoiled by the rogue's ways.~
END
 ++ ~I am a rogue, Sime, and probably will always be a rogue.~ EXTERN VPSIMB 379
 ++ ~You are trying to... embellish me?~ EXTERN VPSIMB 383
 ++ ~May be I am a vagabond, but a charming one. You like me no matter what do not you?~ EXTERN VPSIMB 384
 ++ ~Enough of this rubbish, Sime. Let's go.~ EXTERN VPSIMB 385

CHAIN VPSIMB 379
~I know. If there is no hope for you to engage into a more honorable activity, promise me at least that you will not forsake this odd code of honor you now have.~
END
 ++ ~This world is not made for keeping promises, Sime. It changes at every turn of the hourglass. I'd rather not bind myself with empty words.~ EXTERN VPSIMB 380
 ++ ~I will not change, Sime. I promise. With all this talk about my colleagues, who are so prone to make things theirs... Tell me, Sime, did anyone attempt to steal your heart?~ EXTERN VPSIMB 381

CHAIN VPSIMB 380
~You are right, words are empty. It is time for us to deal with something more material.~
DO ~SetGlobal("SimeRomanceActive","GLOBAL",3) SetGlobal("VP_LoveTalkDelay","LOCALS",0) SetGlobal("LoveTalk","LOCALS",19)~
EXIT

CHAIN VPSIMB 381
~Oh, an attempt was made recently, I think.~
EXTERN VPSIMB 382

CHAIN VPSIMB 382
~But do not look for the culprit among the members of the Guild. Look closer... (*Quietly*). You will find <PRO_HIMHER> in the looking glass.~
DO ~SetGlobal("LoveTalk","LOCALS",19) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 383
~I do not. I know that there is no hope for you to engage into a more honorable activity. Promise me at least that you will not forsake this odd code of honor you now have.~
END
 ++ ~This world is not made for keeping promises, Sime. It changes at every turn of the hourglass. I'd rather not bind myself with empty words.~ EXTERN VPSIMB 380
 ++ ~I will not change, Sime. I promise. With all this talk about my colleagues, who are so prone to make things theirs? Tell me, Sime, did anyone attempt to steal your heart?~ EXTERN VPSIMB 381

CHAIN VPSIMB 384
~I like you the way you are now, yes. I know that there is no hope for you to engage into a more honorable activity. Promise me at least that you will not forsake this odd code of honor you now have.~
END
 ++ ~This world is not made for keeping promises, Sime. It changes at every turn of the hourglass. I'd rather not bind myself with empty words.~ EXTERN VPSIMB 380
 ++ ~I will not change, Sime. I promise. With all this talk about my colleagues, who are so prone to make things theirs? Tell me, Sime, did anyone attempt to steal your heart?~ EXTERN VPSIMB 381

CHAIN VPSIMB 385
~Oh, so my opinion is rubbish? How very sweet of you to let me know that. I will make sure that you are not bothered by it anymore.~
DO ~SetGlobal("SimeRomanceActive","GLOBAL",3) SetGlobal("VP_LoveTalkDelay","LOCALS",0) SetGlobal("LoveTalk","LOCALS",19)~
EXIT

CHAIN VPSIMB 386
~You are right, <CHARNAME>. I often do not know if coming to the Guild to see my father is good or bad for me. I think it is a good thing though. I love my father and love can never be a bad thing, can it?~
END
 ++ ~I am no expert on love. Do ask someone else, please. Actually, it will be nice if you direct all of your questions to someone else.~ EXTERN VPSIMB 387
 ++ ~Love can never be a bad thing, Sime. With all this talk about Shadow Thieves, who are so prone to make things theirs, I have meant to ask a question of you for some time... Is it just because of Aran that you visit the Guild? Or did some charming rogue steal your heart?~ EXTERN VPSIMB 388
 ++ ~If I were you, I would not come see Aran. But you are the only one who can decide something like that. With all this talk about Shadow Thieves, who are so prone to make things theirs, I have meant to ask question of you for some time... Is it just because of Aran that you visit the Guild? Or did some charming rogue steal your heart?~ EXTERN VPSIMB 389

CHAIN VPSIMB 387
~I will in the future.~
DO ~SetGlobal("SimeRomanceActive","GLOBAL",3) SetGlobal("VP_LoveTalkDelay","LOCALS",0) SetGlobal("LoveTalk","LOCALS",19)~
EXIT

CHAIN VPSIMB 388
~It comforts me that you think so. As for your question, an attempt was made recently, I think.~
EXTERN VPSIMB 382

CHAIN VPSIMB 389
~I lack your straightforwardness, I am afraid. As for your question, an attempt was made recently, I think.~
EXTERN VPSIMB 382

CHAIN VPSIMB 390
~I am true to my vows to Mielikki. However, I would prefer that it not be my own father and his associates from whom I need to defend people.~
END
 ++ ~May be you should go away from Amn one day and leave the past behind? With some decent man may be? Or... forgive me if I am being too intrusive, but I wonder if it is just because of Aran that you visit the Guild? Or did some charming rogue steal your heart?~ EXTERN VPSIMB 391
 ++ ~Duty is sacred and vows cannot be broken. I am glad we talked about it. If you ever feel like you are about to falter, do seek me out, Sime. Or another loyal friend. But tell me, Sime, is your father your only connection to the Guild? Or did some charming rogue steal your heart and cause you all this pain? Because if one did, I am going to take his head off his shoulders.~ EXTERN VPSIMB 392
 ++ ~Aran is not the best father by far, but you could have gotten worse. Just think, as far as fathers are concerned, compared to me, you definitely lucked out. Oh, you have finally smiled? With all this talk about Shadow Thieves, who are so prone to make things theirs, I have meant to ask a question of you for some time... Is it just because of Aran that you visit the Guild? Or did some charming rogue steal your heart?~ EXTERN VPSIMB 393

CHAIN VPSIMB 391
~I tried so many times, <CHARNAME>. Did not I tell you of my travels? I am tired of running. As for your question, an attempt was made recently, I think.~
EXTERN VPSIMB 382

CHAIN VPSIMB 392
~I will be sure to seek you out, <CHARNAME>. As for your question, an attempt was made recently, I think.~
EXTERN VPSIMB 382

CHAIN VPSIMB 393
~If you can make a joke about your father, then indeed, I should probably learn from you and take it less seriously. After all, I am not my father. As for your question, an attempt was made recently, I think.~
EXTERN VPSIMB 382

CHAIN VPSIMB 394
~Sure, let us go. I am ranting far too much.~
DO ~SetGlobal("LoveTalk","LOCALS",19) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN
IF WEIGHT #-90 ~Global("LoveTalk","LOCALS",20)~ THEN VPSIMB 395
~I cannot believe it! Come, <CHARNAME>, look at this! I have never seen it grow in these parts and never does it bloom at this time of the year. It is a small miracle, this flower.~ [SIME12_1]
END
 IF ~OR(2) Class(Player1,DRUID_ALL) Class(Player1,RANGER_ALL)~ THEN REPLY ~Why, I think it is Suna's Bloom. Is not it? I have not seen one before.~ EXTERN VPSIMB 396
 IF ~OR(2) Class(Player1,MAGE_ALL) Class(Player1,SORCERER)~ THEN REPLY ~Hmm, what do we have here? I believe that it's commonly called "Suna's Blessing" or Solanum Carolinense Eunwoe in Elvish. Dwarves call it a Lay Flower and Forest Gnomes in Tethyr know it under the name of Auglim Leaf. The Halfing name would be... would be...~ EXTERN VPSIMB 408
 ++ ~A nice enough purple flower it is, Sime. But a miracle?~ EXTERN VPSIMB 409
 ++ ~Ahem, what is all this noise about? A couple leaves and few purple buds on a stem? Women!~ EXTERN VPSIMB 409
 ++ ~Sime, has anyone told you before that you have an impossible voice? I, for my part, do not wish to hear it more often than absolutely necessary.~ EXTERN VPSIMB 410

CHAIN VPSIMB 396
~It is a very rare plant. I am surprised you know of it. Do you know why it is called Suna's Bloom?~
END
 IF ~OR(3) Class(Player1,DRUID) Class(Player1,RANGER) Class(Player1,MAGE)~ THEN REPLY ~I have heard tales, Sime. Is it true that a freshly picked flower of Suna's Bloom will make one more attractive to the opposite sex?~ EXTERN VPSIMB 397
 ++ ~So, why it is called Suna's Bloom? Sounds rather intriguing.~ EXTERN VPSIMB 406
 IF ~CheckStatGT(Player1,12,WIS)~ THEN REPLY ~I have a feeling that you will tell me whether I want to know or not. Speak, Sime, I am all ears.~ EXTERN VPSIMB 406
 ++ ~I am not sure I want to know. Suna is not a deity I am prone to worship.~ EXTERN VPSIMB 407

CHAIN VPSIMB 397
~So the scrolls say. We can see if it is true or not. Here, let me pick it and attach it to your cloak. Then I can tell you the effect.~
END
 ++ ~If it is as rare a flower as you say, it is better to leave it growing, Sime. I reckon I am attractive enough without it.~ EXTERN VPSIMB 398
 ++ ~Among our gloomy days full of spilt blood and endless battles, this flower reminds me of the lighter, gentler side of life. I will wear the Bloom, not to appear more attractive, but to honor Love.~ EXTERN VPSIMB 399
 ++ ~Let's see if the scrolls lie.~ EXTERN VPSIMB 399
 ++ ~That sounds like an interesting idea. But the finder is the keeper. Sime shall wear the bloom and I shall see how much more attractive she can become.~ EXTERN VPSIMB 403
 ++ ~My Lady, among our gloomy days full of spilt blood and endless battles, this flower reminds me of the lighter, gentler side of life. And so do you, Sime Linvail. Please, humor me and wear the bloom.~ EXTERN VPSIMB 403

CHAIN VPSIMB 398
~You are as wise as you are handsome, <CHARNAME>. Let the flower grow unharmed.~
DO ~SetGlobal("LoveTalk","LOCALS",21) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 399
~Here, the flower is on your cloak. Now I shall announce my judgement.~
END
 ++ ~So what do you think, my gentle judge? ~ EXTERN VPSIMB 400
 ++ ~Sime, if the effect is too strong, I will take it off. Speak to me!~ EXTERN VPSIMB 400
 ++ ~Eh, how is it?~ EXTERN VPSIMB 400

CHAIN VPSIMB 400
~You always appeared handsome in my eyes, but the scrolls do not lie, <CHARNAME>. You look incredible: there is a glow about your face and your orbs shine; the troubles are wiped from your forehead and even your voice sounds sweeter to me. I am certainly glad the enchantment does not last long.~
END
 ++ ~Why do not you want the enchantment to last, Sime?~ EXTERN VPSIMB 401
 ++ ~I think I will take the flower off then. I feel odd.~ EXTERN VPSIMB 402

CHAIN VPSIMB 401
~I'll let you guess that one on your own.~
DO ~GiveItemCreate("BELADONA",Player1,1,0,0) ActionOverride(Player1,UseItem("BELADONA",Myself)) SetGlobal("LoveTalk","LOCALS",21) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 402
~It is too late. The spell is on you and it cannot be reversed. Do not worry, in few short hours you will be your old self again. And I promise to guard you against any unwanted attention.~
DO ~GiveItemCreate("BELADONA",Player1,1,0,0) ActionOverride(Player1,UseItem("BELADONA",Myself)) SetGlobal("LoveTalk","LOCALS",21) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 403
~If you wish. Watch me very closely, <CHARNAME>. I put the flower on... So?~
END
 ++ ~Words rarely fail me. But so they do every time I look at you. You are beautiful, Sime, with or without the Suna's Bloom.~ EXTERN VPSIMB 404
 ++ ~You look incredible: there is a glow about your face and your orbs shine; the troubles are wiped from your forehead and even your voice sounds sweeter to me.~ EXTERN VPSIMB 404
 ++ ~(*Shrug*) Yeah, some changes are evident. I guess the scrolls speak truly. We shall go now.~ EXTERN VPSIMB 405

CHAIN VPSIMB 404
~Such gentle words, My Lord, are to be rewarded by a grateful maiden. (*She kisses you gently and runs away giggling*)~
DO ~GiveItemCreate("BELADONA",Myself,1,0,0) UseItem("BELADONA",Myself) SetGlobal("LoveTalk","LOCALS",21) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 405
~Good to know that we can trust our scholars. (*Laughs*). Oh, I see you are growing impatient. I am coming!~
DO ~GiveItemCreate("BELADONA",Myself,1,0,0) UseItem("BELADONA",Myself) SetGlobal("LoveTalk","LOCALS",21) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 406
~The scrolls say that a freshly picked flower of Suna's Bloom will make one attractive to the opposite sex. We can see if it is true or not. Here, let me pick it and attach to your cloak. Then I can tell you the effect.~
END
 ++ ~If it is as rare a flower as you say, it is better to leave it growing, Sime. I reckon I am attractive enough without it.~ EXTERN VPSIMB 398
 ++ ~Among our gloomy days full of spilt blood and endless battles, this flower reminds me of the lighter, gentler side of life. I will wear the Bloom, not to appear more attractive, but to honor Love.~ EXTERN VPSIMB 399
 ++ ~Let's see if the scrolls lie.~ EXTERN VPSIMB 399
 ++ ~That sounds like an interesting idea. But the finder is the keeper. Sime shall wear the bloom and I shall see how much more attractive she can become.~ EXTERN VPSIMB 403
 ++ ~My Lady, among our gloomy days full of spilt blood and endless battles, this flower reminds me of the lighter, gentler side of life. And so do you, Sime Linvail. Please, humor me and wear the bloom.~ EXTERN VPSIMB 403

CHAIN VPSIMB 407
~You do not respect Love? Then you are a fool and a servant of Death.~
DO ~SetGlobal("SimeRomanceActive","GLOBAL",3) SetGlobal("VP_LoveTalkDelay","LOCALS",0) SetGlobal("LoveTalk","LOCALS",21)~
EXIT

CHAIN VPSIMB 408
~Do not try to remember: there is no name in Halfling speech for this one. It is a very rare plant. I am surprised you know of it. Do you know why it is called Suna's Bloom?~
END
 IF ~OR(3) Class(Player1,DRUID) Class(Player1,RANGER) Class(Player1,MAGE)~ THEN REPLY ~I have heard tales, Sime. Is it true that a freshly picked flower of Suna's Bloom will make one more attractive to the opposite sex?~ EXTERN VPSIMB 397
 ++ ~So, why it is called Suna's Bloom? Sounds rather intriguing.~ EXTERN VPSIMB 406
 IF ~CheckStatGT(Player1,12,WIS)~ THEN REPLY ~I have a feeling that you will tell me whether I want to know or not. Speak, Sime, I am all ears.~ EXTERN VPSIMB 406
 ++ ~I am not sure I want to know. Suna is not a deity I am prone to worship.~ EXTERN VPSIMB 407

CHAIN VPSIMB 409
~It is a very rare plant. And it is called Suna's Bloom for a reason.~
END
 IF ~OR(3) Class(Player1,DRUID) Class(Player1,RANGER) Class(Player1,MAGE)~ THEN REPLY ~I have heard tales, Sime. Is it true that a freshly picked flower of Suna's Bloom will make one more attractive to the opposite sex?~ EXTERN VPSIMB 397
 ++ ~So, why it is called Suna's Bloom? Sounds rather intriguing.~ EXTERN VPSIMB 406
 IF ~CheckStatGT(Player1,12,WIS)~ THEN REPLY ~I have a feeling that you will tell me whether I want to know or not. Speak, Sime, I am all ears.~ EXTERN VPSIMB 406
 ++ ~I am not sure I want to know. Suna is not a deity I am prone to worship.~ EXTERN VPSIMB 407

CHAIN VPSIMB 410
~You will not.~
DO ~SetGlobal("SimeRomanceActive","GLOBAL",3) SetGlobal("VP_LoveTalkDelay","LOCALS",0) SetGlobal("LoveTalk","LOCALS",21)~
EXIT

CHAIN
IF WEIGHT #-89 ~Global("LoveTalk","LOCALS",22)~ THEN VPSIMB 411
~I am lonely and sad tonight. Faerun feels enormous and cold. See how that little star twinkles and strives to shine, and barely can in this chilly air? So does my heart. It aches because of you. Will you keep me company and warm me up, <CHARNAME>?~
END
 ++ ~You are cold? Here, I'll wrap my cloak around you, it is lined with fur and it is very warm. Sit down closer to the fire and I will get it going in no time. ~ EXTERN VPSIMB 412
 ++ ~I can offer you the comfort of my arms and warmth of my bedroll if you wish, Sime.~ EXTERN VPSIMB 413
 ++ ~Are you trying to say that you... love me? ~ EXTERN VPSIMB 414
 ++ ~I am afraid I cannot Sime. I am sorry, but I am involved with someone else.~ EXTERN VPSIMB 423
 IF ~Gender(Player1,FEMALE)~ THEN REPLY ~I am afraid I cannot Sime. I can offer no spark to set your heart aflame this cold evening... I am sorry...~ EXTERN VPSIMB 423

CHAIN VPSIMB 412
~That is not exactly what I meant, but damn, it is pleasant to have someone to take care of me. You are such a wonderful person! <CHARNAME>, I am attracted to you and it was not your cloak I hoped to have wrapped around my shoulders, but your arms.~
END
 ++ ~I can offer you the comfort of my arms and warmth of my bedroll if you wish.~ EXTERN VPSIMB 413
 ++ ~Are you trying to say that you... love me?~ EXTERN VPSIMB 414
 ++ ~I understood you perfectly, Sime. I hope you will understand me. I am involved with someone else.~ EXTERN VPSIMB 423
 IF ~Gender(Player1,FEMALE)~ THEN REPLY ~I understood you perfectly, Sime. I hope you will understand me... I am sorry... I can offer no spark to set your heart aflame this cold evening.~ EXTERN VPSIMB 423

CHAIN VPSIMB 413
~Then move and let me lay by your side and shower you with kisses, my sweet lover.~
DO ~SetGlobal("SimeRomanceActive","GLOBAL",2) SetGlobal("VP_LoveTalkDelay","LOCALS",0) SetGlobal("VP_SleptSime","GLOBAL",1) SetGlobal("LoveTalk","LOCALS",23) StartCutSceneMode() StartCutScene("Cut34a")~
EXIT

CHAIN VPSIMB 414
~But of course I love you tonight! I fell asleep a moment ago and was dreaming of kissing you when I woke up. I like when my dreams come true in that regard. Is that not enough talk for you, <CHARNAME>? Won't you hold me and kiss me already?~
END
 ++ ~Of course I will. A stone would melt from that devilish look in your eyes, let alone a lover's heart. Come here, beautiful. ~ EXTERN VPSIMB 415
 ++ ~Tonight? What about on the morrow?~ EXTERN VPSIMB 416
 ++ ~ Actually I was going to discuss the origin of magic in Faerun, the nature of Weave and the descent of Dragons with you... Oh, what in Nine Hells I am talking about? Come here this very moment, enchantress, and let's make the heavens shake.~ EXTERN VPSIMB 421
 ++ ~You know, it is very sweet of you to offer but I am just too tired. May be another time...~ EXTERN VPSIMB 422

CHAIN VPSIMB 415
~Now, those are the words I wish to hear! Let me lay by your side and shower you with kisses, my sweet lover.~
DO ~SetGlobal("SimeRomanceActive","GLOBAL",2) SetGlobal("VP_LoveTalkDelay","LOCALS",0) SetGlobal("VP_SleptSime","GLOBAL",1) SetGlobal("LoveTalk","LOCALS",23) StartCutSceneMode() StartCutScene("Cut34a")~
EXIT

CHAIN VPSIMB 416
~Tomorrow will be another day, <CHARNAME>. We will die or we will live. May be we will love each other again, may be not. Why worry about it? We are together now, that is all that matters.~
END
 IF ~Gender(Player1,MALE)~ THEN REPLY ~You are right, dear Sime. But I would prefer that you still love me on the morrow.~ EXTERN VPSIMB 417
 IF ~Gender(Player1,MALE)~ THEN REPLY ~Why get involved with a thought that will be over in a day or two? I am disappointed that you treat me like this. I hoped that there was something special going on between us.~ EXTERN VPSIMB 417
 ++ ~Yes, I feel it as well, that we live, as each day is our last one. And I want to love a maiden on my last day that is for sure. ~ EXTERN VPSIMB 418
 IF ~Gender(Player1,FEMALE)~ THEN REPLY ~You are right, dear Sime. But I would prefer that you still love me on the morrow.~ EXTERN VPSIMB 420
 IF ~Gender(Player1,FEMALE)~ THEN REPLY ~Why get involved with a thought that will be over in a day or two? I am disappointed that you treat me like this. I hoped that there was something special going on between us.~ EXTERN VPSIMB 420

CHAIN VPSIMB 417
~I cannot promise you a life-long commitment, a house full of books, flowers, and little ones with me as your wife, <CHARNAME>. But I can give you a night of passion, which you will remember till the evening dawn of your life. Take it or leave it.~
END
 ++ ~Of course I will take it. A stone would melt from that devilish look in your eyes, let alone a lover's heart. Come here, beautiful.~ EXTERN VPSIMB 418
 ++ ~No, Sime, what you are offering is not enough.~ EXTERN VPSIMB 419

CHAIN VPSIMB 418
~Now, those are the words I wish to hear! Let me lay by your side and shower you with kisses, my sweet lover.~
DO ~SetGlobal("SimeRomanceActive","GLOBAL",2) SetGlobal("VP_LoveTalkDelay","LOCALS",0) SetGlobal("VP_SleptSime","GLOBAL",1) SetGlobal("LoveTalk","LOCALS",23) StartCutSceneMode() StartCutScene("Cut34a")~
EXIT

CHAIN VPSIMB 419
~Then I shall return into my cold bed alone. Only in the tales of heroes-of-old does one get three chances, <CHARNAME>. With Sime it is only one and you missed it. Sleep tight.~
DO ~SetGlobal("SimeRomanceActive","GLOBAL",2) SetGlobal("VP_LoveTalkDelay","LOCALS",0) SetGlobal("LoveTalk","LOCALS",23) RestParty()~
EXIT

CHAIN VPSIMB 420
~I cannot promise you a life-long commitment, a house full of books and flowers, <CHARNAME>. But I can give you a night of passion, which you will remember till the evening dawn of your life. Take it or leave it.~
END
 ++ ~Of course I will take it. A stone would melt from that devilish look in your eyes, let alone a lover's heart. Come here, beautiful.~ EXTERN VPSIMB 418
 ++ ~No, Sime, what you are offering is not enough.~ EXTERN VPSIMB 419

CHAIN VPSIMB 421
~Let me lay by your side and shower you with kisses, my sweet lover.~
DO ~SetGlobal("SimeRomanceActive","GLOBAL",2) SetGlobal("VP_LoveTalkDelay","LOCALS",0) SetGlobal("VP_SleptSime","GLOBAL",1) SetGlobal("LoveTalk","LOCALS",23) StartCutSceneMode() StartCutScene("Cut34a")~
EXIT

CHAIN VPSIMB 422
~Only in the tales of old does a hero get three chances, <CHARNAME>. With Sime it is only one and you missed it. Sleep tight.~
DO ~SetGlobal("SimeRomanceActive","GLOBAL",3) SetGlobal("VP_LoveTalkDelay","LOCALS",0) SetGlobal("LoveTalk","LOCALS",23) RestParty()~
EXIT

CHAIN VPSIMB 423
~I wish you every happiness then.~
DO ~SetGlobal("SimeRomanceActive","GLOBAL",3) SetGlobal("VP_LoveTalkDelay","LOCALS",0) SetGlobal("LoveTalk","LOCALS",23) RestParty()~
EXIT

CHAIN
IF WEIGHT #-88 ~Global("LoveTalk","LOCALS",24)~ THEN VPSIMB 424
~Wake up, m'<PRO_LADYLORD>, the dawn is spreading over the sky! And the woman of the yester eve is up already and her eyes spell trouble for you. Wake up, m'<PRO_LADYLORD>, the world is holding its breath in anticipation of your decisions. Shall we live or shall we not? Shall we love or shan't we?~
END
 ++ ~No-yet still steadfast, still unchangeable,
Pillow'd upon my fair love's ripening breast,
To feel for ever its soft fall and swell,
Awake for ever in a sweet unrest,
Still, still to hear her tender-taken breath,
And so live ever-or else swoon to death.~ EXTERN VPSIMB 425
 ++ ~You know, Sime, the last time a maiden awoke me yelling, it was Imoen and I was caged in Irenicus' Dungeon, after being broken and tortured for months. Spare me bad memories and by all Gods of the Realms, do lower your voice!~ EXTERN VPSIMB 429
 ++ ~I would be up already were not you sitting upon my chest.~ EXTERN VPSIMB 430

CHAIN VPSIMB 425
~Hmm, I take it you liked the pleasures we partook of last evening?~
END
 ++ ~The play between the sheets is play between the sheets, Sime. It was fine, but now we must get moving.~ EXTERN VPSIMB 426
 IF ~Gender(Player1,MALE)~ THEN REPLY ~Sime, my sweet Sime, if I were a god I would make this night last forever. But since I am only a measly demi-god I must put my feelings in words: it was awesome, wonderful, and unforgettable. Kiss me another time to give me small consolation; for I must now take my hands off your body and let you hide it from me under your armor.~ EXTERN VPSIMB 427
 IF ~Gender(Player1,FEMALE)~ THEN REPLY ~Sime, my sweet Sime, if I were a goddess I would make this night last forever. But since I am only a measly demi-goddess I must put my feelings in words: it was awesome, wonderful, and unforgettable. Kiss me another time to give me small consolation; for I must now take my hands off your body and let you hide it from me under your armor.~ EXTERN VPSIMB 589
 ++ ~Sime, I must tell you... It does not feel right. We shall not continue this.~ EXTERN VPSIMB 428

CHAIN VPSIMB 426
~My point exactly, <CHARNAME>. Now, MOVE!~
DO ~SetGlobal("LoveTalk","LOCALS",25) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 427
~I love you even if you are merely a demi-god. But do get up.~
DO ~SetGlobal("LoveTalk","LOCALS",25) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 428
~Fair enough. Take my heart or loose it, <CHARNAME>, as you desire.~
DO ~SetGlobal("LoveTalk","LOCALS",25) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 429
~I hope the analogy does not go any further than my loud voice? Or was last eve torturous for you?~
END
 ++ ~The play between the sheets is play between the sheets, Sime. It was fine, but now we must get moving.~ EXTERN VPSIMB 426
 IF ~Gender(Player1,MALE)~ THEN REPLY ~Sime, my sweet Sime, if I were a god I would make this night last forever. But since I am only a measly demi-god I must put my feelings in words: it was awesome, wonderful, and unforgettable. Kiss me another time to give me small consolation; for I must now take my hands off your body and let you hide it from me under your armor.~ EXTERN VPSIMB 427
 IF ~Gender(Player1,FEMALE)~ THEN REPLY ~Sime, my sweet Sime, if I were a goddess I would make this night last forever. But since I am only a measly demi-goddess I must put my feelings in words: it was awesome, wonderful, and unforgettable. Kiss me another time to give me small consolation; for I must now take my hands off your body and let you hide it from me under your armor.~ EXTERN VPSIMB 589
 ++ ~Sime, I must tell you... It does not feel right. We shall not continue this.~ EXTERN VPSIMB 428

CHAIN VPSIMB 430
~Such a grouch you are in the morning! Pray tell, is it usual for you to grumble after a night of passion, or you are so exclusively with me? Do I love in a way that puts you in a bad spirit?~
END
 ++ ~The play between the sheets is play between the sheets, Sime. It was fine, but now we must get moving.~ EXTERN VPSIMB 426
 IF ~Gender(Player1,MALE)~ THEN REPLY ~Sime, my sweet Sime, if I were a god I would make this night last forever. But since I am only a measly demi-god I must put my feelings in words: it was awesome, wonderful, and unforgettable. Kiss me another time to give me small consolation; for I must now take my hands off your body and let you hide it from me under your armor.~ EXTERN VPSIMB 427
 IF ~Gender(Player1,FEMALE)~ THEN REPLY ~Sime, my sweet Sime, if I were a goddess I would make this night last forever. But since I am only a measly demi-goddess I must put my feelings in words: it was awesome, wonderful, and unforgettable. Kiss me another time to give me small consolation; for I must now take my hands off your body and let you hide it from me under your armor.~ EXTERN VPSIMB 589
 ++ ~Sime, I must tell you... It does not feel right. We shall not continue this.~ EXTERN VPSIMB 428

CHAIN VPSIMB 589
~I love you even if you are merely a demi-goddess. But do get up.~
DO ~SetGlobal("LoveTalk","LOCALS",25) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN
IF WEIGHT #-87 ~Global("LoveTalk","LOCALS",26)~ THEN VPSIMB 431
~<CHARNAME>, I want to make sure that we understand each other. You know what is my credo in love? Do not trust, do not fear, and do not ask.~ [SIME14_1]
END
 ++ ~Ahem, is it about the last night? I mean it was swell and all, but try not to make a big deal out of it.~ EXTERN VPSIMB 432
 ++ ~I never fear, be it in battle or in love. But I do not think I should take without asking and I wish to be able to trust.~ EXTERN VPSIMB 433
 ++ ~Why, Sime? Are you so afraid to get hurt?~ EXTERN VPSIMB 436
 ++ ~In the mad world we are living in, it is a sensible rule. I understand you, Sime.~ EXTERN VPSIMB 440

CHAIN VPSIMB 432
~Well, I see that you have the attitude I desire, even if it was not put in the most gentle of words.~
DO ~SetGlobal("LoveTalk","LOCALS",27) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 433
~Only madmen know no fear, <CHARNAME>. Bravery is in overcoming it, not in denying it.~
END
 ++ ~I am mad. Mad about you. And I am mad at you too, because you are trying to rob our relationship of any meaning.~ EXTERN VPSIMB 434
 ++ ~Then you shall learn to overcome your fear in the matters of love. Are you so much afraid of being hurt, that you would forbid yourself to trust a <PRO_MANWOMAN>, Sime Linvail?~ EXTERN VPSIMB 436
 ++ ~I do not want to argue with you, Sime. I would not want to hurt you. It will be as you wish.~ EXTERN VPSIMB 437

CHAIN VPSIMB 434
~I am not robbing you, I am trying to protect you, <CHARNAME>.~
END
 ++ ~Love and trust are not the things I need to be protected from. I have too little of them in my life as is.~ EXTERN VPSIMB 435
 ++ ~You are not trying to protect me, Sime. You are trying to build walls around your own heart. Are you so much afraid of being hurt, that you forbid yourself to trust a <PRO_MANWOMAN>, Sime Linvail?~ EXTERN VPSIMB 436
 ++ ~I do not want to argue with you, Sime. I would not want to hurt you. It will be as you wish.~ EXTERN VPSIMB 437

CHAIN VPSIMB 435
~I just do not want love to be an obligation! I do not want our love to turn against us or to become a necessity. Look at my parents: they loved each other against all odds and look what it brought them? My mother is dead and my father wasting himself on whores. I... I am getting very upset and I do not like it. I am sorry to have started this conversation.~
DO ~SetGlobal("LoveTalk","LOCALS",27) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 436
~Yes, I am afraid. Look at my parents: they loved each other against all odds and look what it brought them? My mother is dead and my father wasting himself on whores. His love did not protect her from afar. Love me while I am close to you, not when I am away; love me while I am in a good health not when I am frail; and you will always be free, and should you go, I will remember you with a warm smile, not with a scowl. And I expect the same from you.~
END
 ++ ~You are a strange woman, Sime. I am not quite sure what do you want exactly or why do you want it, but be it as you wish. I do not care to argue with you, Sime. I would not want to hurt you. ~ EXTERN VPSIMB 437
 ++ ~For me, love always carries an element of devotion. I will not participate in this weird arrangement.~ EXTERN VPSIMB 438
 ++ ~I hope one day you will feel like I do. I hope you will understand we were meant to be together and that we are true soul mates. I hope you will trust me completely and you will love me without any fear or remorse and you will forget feeling you need to reserve a way out.~ EXTERN VPSIMB 439

CHAIN VPSIMB 437
~You are ever so gentle, my love. Sometimes, it makes me wonder if I can play by my own rules with you.~
DO ~SetGlobal("LoveTalk","LOCALS",27) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 438
~As I said - you are free to go at any time. Let it be now then.~
DO ~SetGlobal("SimeRomanceActive","GLOBAL",3) SetGlobal("LoveTalk","LOCALS",27)~
EXIT

CHAIN VPSIMB 439
~Sometimes I wonder, how could you endure all these trials, and keep your soul so young and gentle. You are truly a noble <PRO_MANWOMAN>. Just remember, it was not me who gave you that hope.~
DO ~SetGlobal("LoveTalk","LOCALS",27) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 440
~I am glad. I hope that we both are sincere right now and we both know what we want. I... would not want to hurt you in any way, <CHARNAME>.~
END
 ++ ~We both do, do not we? No obligations, no questions asked, and we walk free should the time come. This is the only way to avoid hurting each other. ~ EXTERN VPSIMB 441
 ++ ~Sime, I do not know. The heart can change but why worry about it now, while everything is so good?~ EXTERN VPSIMB 441
 ++ ~I would not want to hurt you either, Sime. It will be as you wish.~ EXTERN VPSIMB 437

CHAIN VPSIMB 441
~You are right. Let's continue on our journey. Passion shall rule our nights, but not our day life.~
DO ~SetGlobal("LoveTalk","LOCALS",27) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN
IF WEIGHT #-86 ~Global("LoveTalk","LOCALS",28)~ THEN VPSIMB 442
~You know what I was doing last night? I was counting stars and giving them different names. I even considered calling one after you. Guess which one?~
END
 ++ ~Mystra's star? Though, it's my preference to think about you while watching it: it is so bright, beautiful, and mysterious.~ EXTERN VPSIMB 443
 IF ~OR(2) Class(Player1,MAGE_ALL) Class(Player1,SORCERER)~ THEN REPLY ~I think Mystra's star is the obvious choice.~ EXTERN VPSIMB 448
 ++ ~Ieryn - the star of the North? I know it is sacred to Selunites and you have a deep spiritual connection with your mother. May be you were speaking of me to her while watching the night sky and Ieryn came to your mind?~ EXTERN VPSIMB 449
 ++ ~Shaundral? An erratic star who shines brightest before disaster? Like me, whose coming was foretold in Alaundo's prophesies?~ EXTERN VPSIMB 450
 ++ ~King's Coin? The star of the rulers for Men and the Kingslayer to Elves? Do you think I am destined for greatness or great failure?~ EXTERN VPSIMB 451
 ++ ~I do not know, Sime. Why do not you tell me?~ EXTERN VPSIMB 452

CHAIN VPSIMB 443
~Mystra's star? I love its blue soft light. May be if I had to select one star to name after you I would have chosen it. But you know, when I was looking at the sky yesterday, I suddenly realized that every star reminds me of you.~
EXTERN VPSIMB 444

CHAIN VPSIMB 444
~Then I thought that everything which is fair and dear to my heart is somehow connected to you. You are in my frosted breath in the early morning, and in the tune I whistle when I wake. You are my sun and stars... I am afraid you are becoming my world.~
END
 ++ ~What about your own credo, Sime? The "do not fear" part? You have nothing to be afraid of by my side, me included. Neither you should be afraid of your love for me. I know one day I will harvest those simple words from your lips, undressed and unadorned. I yearn for that day.~ EXTERN VPSIMB 445
 ++ ~Too many fancy words, Sime. Do give me a more material declaration of your feelings for me. The night grows long and we do need some sleep afterwards.~ EXTERN VPSIMB 446
 ++ ~Now you have me wondering what star I shall name for you. I guess I will stay up all night poring over that task. I wonder why the poor and rich alike in these parts stock their bookshelves with endless copies of the "History of the North"? It must have been on sale or something. I'd rather fancy to see a "Star Lore" book somewhere...~ EXTERN VPSIMB 447

CHAIN VPSIMB 445
~And I am yearning for a bedroll right now. Care to join me there? You have not embraced me for far too long, my lazy lover.~
DO ~SetGlobal("LoveTalk","LOCALS",29) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RestParty()~
EXIT

CHAIN VPSIMB 446
~(*Laughs*)... It can be as long or as short as you wish, <CHARNAME>. But I remember that on occasion you are prepared to forsake your sleep. So, what are you waiting for? Care to join me? You for have not embraced me for far too long, and I do not fancy lazy lovers.~
DO ~SetGlobal("LoveTalk","LOCALS",29) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RestParty()~
EXIT

CHAIN VPSIMB 447
~By Mielikki, I have created a monster! If you wish to begin your very own star lore book right now, I can help you I suppose. Alternatively, you may join me in my bedroll. I would like to bring to your attention that you have not embraced me for far too long and that I do not fancy lazy lovers.~
DO ~SetGlobal("LoveTalk","LOCALS",29) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RestParty()~
EXIT

CHAIN VPSIMB 448
~Why, because you are a wizard? I could have chosen it, I guess. But you know, when I was looking at the sky yesterday, I suddenly realized that every star reminds me of you.~
EXTERN VPSIMB 444

CHAIN VPSIMB 449
~The most constant star of the sky? The one who guides my steps when I am lost? I could have chosen it, I guess. But you know, when I was looking at the sky yesterday, I suddenly realized that every star reminds me of you.~
EXTERN VPSIMB 444

CHAIN VPSIMB 450
~Some might say that it is indeed a fitting star for you, <CHARNAME>. But I do not see its ominous light reflected in your eyes. You know, when I was looking at the sky yesterday, I suddenly realized that every star reminds me of you.~
EXTERN VPSIMB 444

CHAIN VPSIMB 451
~You are dramatic as ever. Whatever your destiny, I hope you won't know a great fall. I am too afraid of the darker fame of Kingslayer among the Elves to give it to you. However, when I was looking at the sky yesterday, I suddenly realized that every star reminds me of you.~
EXTERN VPSIMB 444

CHAIN VPSIMB 452
~You are a wise one, <CHARNAME>, for it was a tricky question. When I was looking at the sky yesterday, I suddenly realized that every star reminds me of you.~
EXTERN VPSIMB 444

CHAIN
IF WEIGHT #-85 ~Global("LoveTalk","LOCALS",30)~ THEN VPSIMB 453
~Future? Why do you suddenly want to know about the future? The only certain thing is that we all will die, sooner or later. Though yours might be a different story. You know, I pity seers, the ones who are burdened with knowing what is to come.~ [SIME17_1]
END
 ++ ~Sime, I was not talking about the future of Faerun! I was talking about you. What will you do when my quests are over?~ EXTERN VPSIMB 454
 ++ ~Future is one of your phobias as well?~ EXTERN VPSIMB 462
 ++ ~Why would you pity seers? Theirs is a rare gift and the great ones of the world seek their advice and wisdom.~ EXTERN VPSIMB 472

CHAIN VPSIMB 454
~(*Laughs*)... So you foresee the end of your quests, <CHARNAME>? I do not believe you! Your job is never done, my hero. There will always be a city to save from foes or a maiden to rescue from the clutches of a dragon. And so long as you choose the honorable way, and we do not grow bored of each other's company, I shall walk by your side.~
END
 ++ ~You are anything but boring, Sime. So fear not me leaving you.~ EXTERN VPSIMB 455
 ++ ~Oh, yeah. I love that sort of stuff. Dragons and foes, beware! <CHARNAME> and Sime are coming to get you!~ EXTERN VPSIMB 460
 ++ ~Do not you find that righteous path you are so eager to stay upon a little bit slow and boring? What if we deviate a bit for a while? Kill a couple of fluffy kittens and sweet old ladies? For variety's sake?~ EXTERN VPSIMB 461

CHAIN VPSIMB 455
~Do not you know a mortal's
Short-living love?
A fateful excitement of blood,
But as the days pass blood cools.
Who will resist parting,
temptation of a new beauty,
fatigue and boredom and
despotism of a new dream?~
END
 ++ ~Escape me?
Never-
Beloved!
While I am I, and you are you,
So long as the world contains us both,
Me the loving and you the loth,
While the one eludes, must the other pursue.~ EXTERN VPSIMB 456
 ++ ~If I say me, you will only laugh, right?~ EXTERN VPSIMB 458
 ++ ~Mere mortal - may be. But I am a demi-god, for all it's worth. Mayhap I love differently, Sime.~ EXTERN VPSIMB 459

CHAIN VPSIMB 456
~I went to the bird merchant
And I bought birds
For you, my love
I went to the flower shop
And I bought flowers
For you, my love
I went to the smithy
And I bought chains
Heavy chains
For you my love
And then I went to the slave market
And I was looking for you,
But I could not find you there
My love.~
EXTERN VPSIMB 457

CHAIN VPSIMB 457
~Do not bother to look for me at the slave market, <CHARNAME>. Nothing lasts forever and that is a good thing. It is all the sweeter that way.~
DO ~SetGlobal("LoveTalk","LOCALS",31) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 458
~I will not laugh, but I will smile.~
DO ~SetGlobal("LoveTalk","LOCALS",31) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 459
~Let me hope not. I want the love of a mortal person, the one of flesh and blood, not divine favor. It is the Forest Lady I pray to, not you.~
DO ~SetGlobal("LoveTalk","LOCALS",31) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 460
~And none shall withstand our combined wrath. Speaking of which - it is past time we rejoin the others and press onward.~
DO ~SetGlobal("LoveTalk","LOCALS",31) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 461
~If that will ever be your choice, I will leave your side, <CHARNAME>. If our paths should cross again afterwards, we shall join in battle as bitter foes.~
DO ~SetGlobal("LoveTalk","LOCALS",31) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 462
~I am not afraid of anything that comes my way. I can handle it or I will die. But what I would not want is to know my future in advance. I'd be so bored!~
END
 ++ ~Boredom? That is what you are afraid of? Then you have found a great antidote: my life, and the lives of those who travel with me, is anything but boring. Stick with me and we are going to have loads of fun. There will always be a city to save from foes or a maiden to rescue from the clutches of a dragon.~ EXTERN VPSIMB 463
 ++ ~Why? Do not you want to be forewarned?~ EXTERN VPSIMB 466

CHAIN VPSIMB 463
~I do believe you in that! Your job is never done, my hero. And so long as you choose the honorable way, and we do not grow bored of each other's company, I shall walk by your side.~
END
 ++ ~You are anything but boring, yourself, Sime. So, fear not me leaving you as well.~ EXTERN VPSIMB 455
 ++ ~Dragons and foes, beware! <CHARNAME> and Sime are coming to get you!~ EXTERN VPSIMB 464
 ++ ~Do not you find that righteous path you are so eager to stay upon a little bit slow and boring? What if we deviate a bit for a while? Kill a couple of fluffy kittens and sweet old ladies? For variety's sake?~ EXTERN VPSIMB 465

CHAIN VPSIMB 464
~And none shall withstand our combined wrath. Speaking of which - it is past time we rejoin the others and press onward.~
DO ~SetGlobal("LoveTalk","LOCALS",31) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 465
~If that will ever be your choice, I will leave your side, <CHARNAME>. If our paths should cross again afterwards, we shall join in battle as bitter foes.~
DO ~SetGlobal("LoveTalk","LOCALS",31) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 466
~Forewarned? Guaranteed from making mistakes? No, <CHARNAME>, I do not want my days to be presented in front of me by some fortune teller. I love surprise and I love making decisions on my own. I thought you were the same sort of person.~
END
 ++ ~I was. Then I spent a year roaming the Sword Coast and being chased by every rogue in existence. In those days, I wish I had possessed some idea of what I am and what is my destiny.~ EXTERN VPSIMB 467
 ++ ~Oh, I have bloody forewarning, Sime. Made by Alaundo himself, not some cheap charlatan. Do not you remember: "the Lord of Murder shall perish..." and that entire circus?~ EXTERN VPSIMB 471
 ++ ~My destiny was foretold, Sime. And I feel that I know what is going to happen in the end.~ EXTERN VPSIMB 471

CHAIN VPSIMB 467
~And how much more secure would you feel knowing that you are Lord of the Murder son and that it is your half-brother who is after you? Tell me is that your goal in life, to make Alaundo's prophecy to come true?~
END
 ++ ~No, of course not. I live by the advice of my own heart. But the prophecy... the prophecy explains many things to me about the way I feel and I act. I would be worse off, if I did not know what I am.~ EXTERN VPSIMB 468
 ++ ~Yes. My destiny is clear and I shall take what I was promised.~ EXTERN VPSIMB 469
 ++ ~Sime, please, let us just drop this talk? Or I will damage my jaw yawning.~ EXTERN VPSIMB 470

CHAIN VPSIMB 468
~And that is the only way to live! I am glad to hear you say that. But I think we should rejoin the others and press onward now.~
DO ~SetGlobal("LoveTalk","LOCALS",31) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 469
~(*Quietly*) Was not that how Sarevok felt?~
DO ~SetGlobal("LoveTalk","LOCALS",31) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 470
~We cannot have that, can we? Let us rejoin the others and press onward then.~
DO ~SetGlobal("LoveTalk","LOCALS",31) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 471
~I remember, <CHARNAME>. And I pity you for that. Tell me, is that your life's goal, to make Alaundo's prophecy to come true?~
END
 ++ ~No, of course not. I live by the advice of my own heart. But the prophecy... the prophecy explains many things to me about the way I feel and I act. I would be worse off, if I did not know what I am.~ EXTERN VPSIMB 468
 ++ ~Yes. My destiny is clear and I shall take what I was promised.~ EXTERN VPSIMB 469
 ++ ~Sime, please, let us just drop this talk? Or I will damage my jaw yawning.~ EXTERN VPSIMB 470

CHAIN VPSIMB 472
~Is there wisdom in being an oracle of events which have not yet happened? Is it really a great joy to be questioned constantly by fearful people and know that your answer may not be taken lightly by a Lord you serve? If I was a prophet I would hide from the rich and powerful, that is for sure.~
END
 ++ ~Sime, please, let us just drop this talk? Or I will damage my jaw yawning.~ EXTERN VPSIMB 470
 ++ ~Everyone has a talent, a particular talent. And to fulfill your life it has to be realized. If a seer hid himself and ignored his visions it would drive him mad, I think.~ EXTERN VPSIMB 473
 ++ ~You would rather turn into one of the mad beggars walking the roads and foretelling doom to all?~ EXTERN VPSIMB 473

CHAIN VPSIMB 473
~Going mad may be a wise choice for them. At least then they would not feel responsible for their counsel and not comprehend its consequences.~
END
 ++ ~Then any counselor or a ruler is better off mad, Sime.~ EXTERN VPSIMB 474
 ++ ~Sime, you stopped making any sense.~ EXTERN VPSIMB 475
 ++ ~You are being unreasonable. The prophecy of Alaundo explains many things to me about the way I feel and act. I would be worse off, if I did not know what I am.~ EXTERN VPSIMB 476

CHAIN VPSIMB 474
~A mad Lord will cause great grief to his people. Because of that, I wish no ruler or his courtier to be mad.~
DO ~SetGlobal("LoveTalk","LOCALS",31) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 475
~Let us rejoin the others and press onward then.~
DO ~SetGlobal("LoveTalk","LOCALS",31) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 476
~I know that, <CHARNAME>. And I pity you for it. Tell me, is that your life's goal, to make Alaundo's prophecy to come true?~
END
 ++ ~No, of course not. I live by the advice of my own heart. But the prophecy. . .the prophecy explains many things to me about the way I feel and act. I would be worse off, if I did not know what I am.~ EXTERN VPSIMB 468
 ++ ~Yes. My destiny is clear and I shall take what I was promised.~ EXTERN VPSIMB 469
 ++ ~Sime, please, let us just drop this talk? Or I will damage my jaw yawning.~ EXTERN VPSIMB 470

CHAIN
IF WEIGHT #-84 ~Global("LoveTalk","LOCALS",32)~ THEN VPSIMB 477
~So, tell me of all those ladies you fancied in your past? Is there a maid still waiting for you in Candlekeep? Was there a companion of the road who was dearer to your heart than any other?~
END
 ++ ~Sime, you are the only one for me. I can see the beauty and grace of other women, but I am somehow not attracted to them in the way I am to you. And I never was. I guess I was just waiting for you to come and claim my heart.~ EXTERN VPSIMB 478
 ++ ~Are you in the mood for absolving sins? Yes, I had a girl or two before. ~ EXTERN VPSIMB 479
 ++ ~There was a Northerner, tall and proud, who traveled with me for a time. A true warrior Branwen was, and beautiful beyond belief.~ EXTERN VPSIMB 481
 ++ ~I often had my eyes upon Skie Silvershield, a daughter of a Grand Duke of Baldur's Gate.~ EXTERN VPSIMB 486
 ++ ~Dynaheir, her name was Dynaheir, but I rather not talk about it.~ EXTERN VPSIMB 491
 IF ~!InParty("Sharteel")~ THEN REPLY ~There was a fighter I fancied for a time, Shar Teel by name.~ EXTERN VPSIMB 493

CHAIN VPSIMB 478
~Is that true? Oh, no matter that sounds way too sweet for me to question it.~
DO ~SetGlobal("LoveTalk","LOCALS",33) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 479
~And?~
END
 ++ ~No "and". I wish to keep some sins and some secrets, Sime.~ EXTERN VPSIMB 480
 ++ ~And then I met you. Sime, you are the only one for me now. I can see the beauty and grace of other women, but I am somehow not attracted to them in the way I am to you. No one else matters.~ EXTERN VPSIMB 478
 ++ ~There was a Northerner, tall and proud, who traveled with me for a time. A true warrior Branwen was, and beautiful beyond belief.~ EXTERN VPSIMB 481
 ++ ~I often had my eyes upon Skie Silvershield, a daughter of a Grand Duke in Baldur's Gate.~ EXTERN VPSIMB 486
 ++ ~Dynaheir, her name was Dynaheir, but I would rather not talk about it.~ EXTERN VPSIMB 491
 ++ ~There was a fighter I fancied for a time, Shar Teel by name.~ EXTERN VPSIMB 493

CHAIN VPSIMB 480
~Oh well, I'll let the bards figure it out for their songs.~
DO ~SetGlobal("LoveTalk","LOCALS",33) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 481
~What ever became of her?~
END
 ++ ~My stone maiden she was. It is true, Sime. A lousy mage turned her into stone when she refused to fight unarmed people. I released her from the curse. I sort of thought that would promote a romance. But Branwen had been on her own quest to become a priest of Tempus. It was a position reserved solely for males in her parts, so when she judged that she had gained enough power, and the favor of Tempus was with her, she departed for her homeland to prove herself. I felt that I had to let her go.~ EXTERN VPSIMB 482

CHAIN VPSIMB 482
~That was very noble of you.~
END
 ++ ~I guess. That was what I was kept telling myself for a time. But time heals all wounds.~ EXTERN VPSIMB 483
 ++ ~Noble? May be. That war hammer she was swinging in battle also played a role in my decision.~ EXTERN VPSIMB 484
 ++ ~And then I met you. Sime, you are the only one for me now. I can see the beauty and grace of other women, but I am somehow not attracted to them in the way I am to you. No one else matters.~ EXTERN VPSIMB 485

CHAIN VPSIMB 483
~I find that this sort of wound can only be healed by more radical means. The heart is like a port: as one ship is leaving another is entering. Fear not, <CHARNAME>, I foresee that you will love and be loved many more times.~
DO ~SetGlobal("LoveTalk","LOCALS",33) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 484
~You are never serious, are you? I like that about you.~
DO ~SetGlobal("LoveTalk","LOCALS",33) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 485
~Is that true? Oh, no matter that sounds way too sweet for me to question it.~
DO ~SetGlobal("LoveTalk","LOCALS",33) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 486
~What ever became of her?~
END
 ++ ~She has gone off with her lover, a fortune seeker named Eldoth Kron. She is still trying to persuade Duke Silvershield to recognize their marriage. Until then, they are in hiding. I hope at least, Eldoth does not mistreat her.~ EXTERN VPSIMB 487

CHAIN VPSIMB 487
~Young girls brought up in noble families can be so blind in the ways of the real world. Was there nothing you could do?~
END
 ++ ~Just like her father, I tried to make her to see Eldoth for what he was, but I got no better results than him. It only added to her conviction that the whole world was one big conspiracy against her love for the slimy bard.~ EXTERN VPSIMB 488
 ++ ~Well, all my courting went unnoticed. She considered me to be a lowlife.~ EXTERN VPSIMB 489
 ++ ~I tried but without success. As you said, she was completely oblivious to the way things work in the real world. But, Sime,that is enough of Skie. You are the only one for me now. I can see the beauty and grace of other women, but I am somehow not attracted to them in the way I am to you. No one else matters.~ EXTERN VPSIMB 490

CHAIN VPSIMB 488
~For her sake I hope she will wake up one day and meet someone more honorable. It always saddens me when hearts bleed for an unworthy person.~
DO ~SetGlobal("LoveTalk","LOCALS",33) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~ EXIT

CHAIN VPSIMB 489
~(*Laughs*)... Then she committed a grave mistake. I did never meet a lord more honorable and valiant than you. I would dearly like to have seen you in the beginning of your travels. A bit shabbier you may have been, but with less pain in your eyes, and more starlight and youth.~
DO ~SetGlobal("LoveTalk","LOCALS",33) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 490
~For her sake I hope she will wake up one day and meet someone more honorable. But she will not have you now; I am a greedy woman.~
DO ~SetGlobal("LoveTalk","LOCALS",33) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 491
~It is the name of one of your fallen companions, is not it?~
END
 ++ ~Yes, it is.~ EXTERN VPSIMB 492

CHAIN VPSIMB 492
~I know how it feels to lose a lover to death, <CHARNAME>. That's when our spinning and ringing world of battles and adventures comes to a crashing stop.~
DO ~SetGlobal("LoveTalk","LOCALS",33) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 493
~What ever became of her?~
END
 ++ ~If I only knew... Shar-Teel was a very angry person and trusted no man. Her life was not an easy one, I suspect. She let me have no more than a glance into her soul, which was far more than anyone else ever saw. I suspect that she is fighting some battle somewhere or drinks and laughs with one group of rascals or another.~ EXTERN VPSIMB 494

CHAIN VPSIMB 494
~It does not sound like a happy story, <CHARNAME>.~
END
 ++ ~Wrong people, wrong feelings. Happens all the time.~ EXTERN VPSIMB 495
 ++ ~You want a happy story? Then let us make it. You are the only one for me now. I can see the beauty and grace of other women, but I am somehow not attracted to them in the way I am to you. Nothing else matters.~ EXTERN VPSIMB 496

CHAIN VPSIMB 495
~Yes, but I feel not comforted by that.~
DO ~SetGlobal("LoveTalk","LOCALS",33) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 496
~A worthy idea! And we are hard at it already, do not you think?~
DO ~SetGlobal("LoveTalk","LOCALS",33) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN
IF WEIGHT #-83 ~Global("LoveTalk","LOCALS",34)~ THEN VPSIMB 497
~(*Reads to you from an old tome*)
"And His Grace the King came then upon Sir Knight and his Lady Wife. They were asleep on his cloak shielded by the branches of an ancient oak tree. Sir Knight's great sword lay between them and so the King saw that his honor was not despoiled. His Grace kneeled and slipped his own ring onto his Lady's finger and then he rode off..."~
EXTERN VPSIMB 498

CHAIN VPSIMB 498
~I am not sure I am truly convinced in the efficiency of that sword. Be there a blade between us or not, you will not be safe from my embrace. But I have heard of a ranger who used a direwolf for that purpose. That might be more efficient.~
END
 ++ ~Sounds like a thing Valygar would do. Or may be Kivan if some lady would imagine that she could replace his dear Deheriana. It would be a hamster, not direwolf in Minsc's case, I guess.~ EXTERN VPSIMB 499
 ++ ~That sounds dangerous - a sword in the bedroll. Someone could get hurt.~ EXTERN VPSIMB 506
 ++ ~Ahem, Sime, do you think we can delay the story's ending till tomorrow night? I am afraid my endurance is lacking compare to that of Sir Knight.~ EXTERN VPSIMB 510
 ++ ~That is a tale to warm up a noble heart.~ EXTERN VPSIMB 511

CHAIN VPSIMB 499
~His name was Jon. But, do you imply that it is a typical behavioral pattern for rangers?~
END
 ++ ~In no way. Rangers can be very playful and outgoing. I even know one. Blonde tresses, green eyes, charming smile, and an absolutely irresistible way to kiss.~ EXTERN VPSIMB 500
 IF ~Class(Player1,RANGER_ALL)~ THEN REPLY ~Oh, no. I know that better than anyone else! Rangers are passionate lovers. Do not you agree?~ EXTERN VPSIMB 501
 ++ ~May be. But I can be convinced to reconsider.~ EXTERN VPSIMB 502
 ++ ~I have no opinion on the matter. You were talking about rangers and I remembered all I have met. No, wait I forgot Drizzt Do'Urden! Ahem, bad example, I am afraid.~ EXTERN VPSIMB 503

CHAIN VPSIMB 500
~Now, that you started this talk about kissing, think we can delay the story's ending till tomorrow night? And do some serious research on the ways the rangers love?~
DO ~SetGlobal("LoveTalk","LOCALS",35) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0) StartCutSceneMode() StartCutScene("Cut34a")~
EXIT

CHAIN VPSIMB 501
~Absolutely true, <CHARNAME>. Do you think we can delay the story's ending till tomorrow night? And do some serious research on the ways the rangers love?~
DO ~SetGlobal("LoveTalk","LOCALS",35) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0) StartCutSceneMode() StartCutScene("Cut34a")~
EXIT

CHAIN VPSIMB 502
~I am afraid it can take some significant amount of time. Do you think we can delay the story's ending till tomorrow night? And do some serious research on the ways the rangers love?~
DO ~SetGlobal("LoveTalk","LOCALS",35) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0) StartCutSceneMode() StartCutScene("Cut34a")~
EXIT

CHAIN VPSIMB 503
~Bad example indeed. Have you ever heard about the courtesan in Waterdeep who approached him, thinking he was sufficiently drunk? Not only did he politely refuse her nineteen times, but on the twentieth he set his ale aside, pulled out his diary, and started reading her an excerpt on the Drow's way of love... They say that poor girl refuses to enter that inn ever since.~
END
 ++ ~Sime, that... that cannot be true!~ EXTERN VPSIMB 504
 ++ ~Shall we keep talking about Drow or can we delay it till tomorrow night? I am afraid my endurance is lacking compared to that of Sir Knight or Drizzt.~ EXTERN VPSIMB 505

CHAIN VPSIMB 504
~May be, but I have heard it from a very reliable source. Do you think we can delay this discussion? And do some serious research on the ways the other rangers love?~
DO ~SetGlobal("LoveTalk","LOCALS",35) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0) StartCutSceneMode() StartCutScene("Cut34a")~
EXIT

CHAIN VPSIMB 505
~Am I glad to hear that, <CHARNAME>. I was wondering how long it would take you to figure out that I had not been kissed tonight yet.~
DO ~SetGlobal("LoveTalk","LOCALS",35) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0) StartCutSceneMode() StartCutScene("Cut34a")~
EXIT

CHAIN VPSIMB 506
~A direwolf sounds better to you?~
END
 ++ ~At least it is softer. And warmer.~ EXTERN VPSIMB 507
 ++ ~Where is your familiar?~ EXTERN VPSIMB 508
 ++ ~Depends. Did it work for that ranger?~ EXTERN VPSIMB 509

CHAIN VPSIMB 507
~How about warming up our bed ourselves?~
DO ~SetGlobal("LoveTalk","LOCALS",35) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0) StartCutSceneMode() StartCutScene("Cut34a")~
EXIT

CHAIN VPSIMB 508
~He's off hunting. But at any rate, the werewolf did not work for Jon, why should it work for us?~
DO ~SetGlobal("LoveTalk","LOCALS",35) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0) StartCutSceneMode() StartCutScene("Cut34a")~
EXIT

CHAIN VPSIMB 509
~No, it did not. His lady was just as persistent as I am. I hope you will follow his suit and join me under the covers now.~
DO ~SetGlobal("LoveTalk","LOCALS",35) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0) StartCutSceneMode() StartCutScene("Cut34a")~
EXIT

CHAIN VPSIMB 510
~Am I glad to hear that, <CHARNAME>. I was wondering how long it would take you to figure out that I had not yet been kissed tonight.~
DO ~SetGlobal("LoveTalk","LOCALS",35) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0) StartCutSceneMode() StartCutScene("Cut34a")~
EXIT

CHAIN VPSIMB 511
~How about warming up our bed as well?~
DO ~SetGlobal("LoveTalk","LOCALS",35) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0) StartCutSceneMode() StartCutScene("Cut34a")~
EXIT

CHAIN
IF WEIGHT #-82 ~Global("LoveTalk","LOCALS",36)~ THEN VPSIMB 512
~I am not a mage, <CHARNAME>, and I am not even a mage's apprentice, but there is a spell Darriel once taught me. I can see that you are weary and sad. The spell might put you into lighter mood. Do you want me to cast it?~
END
 ++ ~No, Sime, I do not want any spell cast on me. I will sleep now, and I will be fine once I have rested.~ EXTERN VPSIMB 513
 ++ ~What is the nature of that spell? ~ EXTERN VPSIMB 514
 ++ ~I doubt that a single spell can take away my worries (unless it kills Irenicus), but do cast it Sime. I'd welcome some entertainment.~ EXTERN VPSIMB 515

CHAIN VPSIMB 513
~Sleep tight then, <CHARNAME>.~
DO ~SetGlobal("SimeRomanceActive","GLOBAL",3) SetGlobal("VP_LoveTalkDelay","LOCALS",0) SetGlobal("LoveTalk","LOCALS",37)~
EXIT

CHAIN VPSIMB 514
~That is a... surprise. You like surprises, do not you?~
END
 ++ ~No, Sime, not really. I do not want any spell cast on me. I will sleep now, and I will be fine once I have rested.~ EXTERN VPSIMB 513
 ++ ~It depends... But you said it is going to be something pleasant, did not you? All right then cast your spell and we shall see.~ EXTERN VPSIMB 515
 ++ ~I adore surprises, especially pleasant ones. Cast the spell, Sime Linvail!~ EXTERN VPSIMB 515

CHAIN VPSIMB 515
~Give me your hand, <CHARNAME>...

Kaimeldor panta annonta ten'lle...~
DO ~SetGlobal("VP_Sime_DreamIsland","GLOBAL",1) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0) SetGlobal("LoveTalk","LOCALS",37) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutS01")~
EXIT

CHAIN
IF WEIGHT #-81 ~Global("LoveTalk","LOCALS",38)~ THEN VPSIMB 516
~I am glad to feel the warmth of the sun on my skin and see the light and the shadows play. I have not liked it at all in the caverns of the Underdark and its creepy inhabitants. How do you feel now that we have returned to the Surface? Are you a creature of light?~
END
 ++ ~I am a creature of light, Sime, no matter what they say about me. I have never been as jolly as when we came back under the gaze of the sun. I disliked the Underdark and all the foul creatures that populate it.~ EXTERN VPSIMB 517
 IF ~!Race(Player1,ELF) !Race(Player1,HALF_ELF)~ THEN REPLY ~Dark it is my fair Lady, but many riches are hidden within. I took a look around the mines that those gnomes worked. I say that the rock there might yield clear diamonds and glowing garnet gems. And that was naught but a small corner of the Underdark. Nays, Sime, do not judge the place unlikable too hastily.~ EXTERN VPSIMB 518
 ++ ~I agree with you in that I feel more comfortable on the Surface. But there is a certain beauty in the Underdark. And not all creatures that populate it are foul.~ EXTERN VPSIMB 522
 ++ ~I have to say that I felt fine in the Underdark. Drow are no worse than the snotty Elves in Suldanesselar. Solaufein fellow was quite decent. Deep gnomes are cute... Of course there were few unpleasant meetings, but that's no different than on the Surface. Besides it is always warm there and it does not rain. In fact I am thinking of journeying there again when I will have time.~ EXTERN VPSIMB 523

CHAIN VPSIMB 517
~I am glad we think alike.~
DO ~SetGlobal("LoveTalk","LOCALS",39) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 518
~I did not think about it in that way, <CHARNAME>. But to tell you the truth, I treasure a flower above any jewel, and I like the light of sun above any riches.~
END
 ++ ~Oh, then I can give you wild flowers instead of jewels. How very wise and economic! The only thing that bothers me that I will be seen while picking up flowers, like some effeminate Elf.~ EXTERN VPSIMB 519
 ++ ~Ah, but what of weapons, Sime? Can you make a blade without shiny mithril or dark adamantite?~ EXTERN VPSIMB 520
 ++ ~You talk nonsense, girl. Flowers will wither, but gemstone would shine forever.~ EXTERN VPSIMB 521

CHAIN VPSIMB 519
~I can propose an even more economic solution: give me your love, that's all I need.~
DO ~SetGlobal("LoveTalk","LOCALS",39) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 520
~Here you got me! Well, I guess I was not born to be a miner, but I shall be grateful that others were. Though if there were not any weapons ever made... there wouldn't be fighting. Nay, I am silly. One can fight with wooden weapons, his bare hands or spells if he really wants to.~
DO ~SetGlobal("LoveTalk","LOCALS",39) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 521
~Both flowers and gems are given by nature to us, and they both are beautiful. I am talking nonsense, <CHARNAME>. I guess the fresh air after the stuffiness of the Underdark made me feel queer.~
DO ~SetGlobal("LoveTalk","LOCALS",39) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 522
~Indeed, <CHARNAME>. I am talking nonsense, I am afraid. I guess the fresh air after the stuffiness of the Underdark made me feel queer.~
DO ~SetGlobal("LoveTalk","LOCALS",39) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 523
~I thought that I would never want to part with you, but I doubt that I would like to accompany you back to the Underdark. However... however there is a certain beauty in the Underdark. And not all creatures that populate it are foul. May be we shall go back. After all, I like a good adventure!~
DO ~SetGlobal("LoveTalk","LOCALS",39) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN
IF WEIGHT #-80 ~Global("LoveTalk","LOCALS",40)~ THEN VPSIMB 524
~Irenicus is nearer with every step, <CHARNAME>, we all know... How do you feel about it? Are you nervous?~
END
 ++ ~As I always do when I am about to bring justice to the world! Irenicus is going to be punished for his crimes and the righteousness shall triumph again!~ EXTERN VPSIMB 525
 ++ ~Nothing special really. One more foe to fight, big deal.~ EXTERN VPSIMB 525
 ++ ~I think I am... We have faced Irenicus before, and he is not exactly your commonplace diseased xvart. ~ EXTERN VPSIMB 544

CHAIN VPSIMB 525
~It may sound odd, but do you think Irenicus is a black-hearted villain? That he cannot be redeemed? It is apparent that his capabilities are far above normal. Genius and evil are two things incompatible, a bard said once. Do not you think so?~
END
 ++ ~Sime, Irenicus had overstepped every moral boundary known. Genius he might be, but a genius of evil. He destroys before creating. He is Evil incarnate, Sime, and an unredeemable Evil.~ EXTERN VPSIMB 526
 ++ ~I neither know, nor do I care, if he is apt for redemption, Sime. I have a personal score to settle with Irenicus, and I am bent on sending him to Nine Hells.~ EXTERN VPSIMB 532
 ++ ~There can be redemption for him, Sime, but it is not my part to bring it to him. ~ EXTERN VPSIMB 533

CHAIN VPSIMB 526
~Do you think that he killed or destroyed more than you did?~
END
 ++ ~I killed those who were standing against me ready to fight. I neither tortured my enemies, nor violated someone by stealing his soul. May be I am not exactly what you would call an innocent victim, but you know my sister, Imoen. Do you think anyone, but a heartless monster could put her through the tortures she endured?~ EXTERN VPSIMB 527
 ++ ~If I did, then I am the stronger, and that gives me hope that I can defeat him. He has something of mine and I want it back! Irenicus can do whatever he wants in Abyss after I cast him down there.~ EXTERN VPSIMB 531
 ++ ~Sime, cannot you see the difference between Irenicus and me? It is scary.~ EXTERN VPSIMB 527

CHAIN VPSIMB 527
~Irenicus' crimes are immense, <CHARNAME>. I just hope that it will not be blind hatred and revenge that will guide your striking arm when we will finally meet him.~
END
 ++ ~Revenge is a noble passion. And hatred - I am past hatred I think. I see a man who has to be destroyed lest he renders the Realm into ashes.~ EXTERN VPSIMB 528
 ++ ~Sime, it is strange, but I do not feel hatred, nor I am going into this battle for vengeance. I feel that I am doomed to fight him. I think that he forged our link himself, by stealing my soul - only one of us is to live now. Forgive me if I am egotistical, but I want him to die, not me.~ EXTERN VPSIMB 529
 ++ ~The passions you are speaking about are dark ones, but they make my blood boil in battle. Therefore I allow them to fill what is left of my soul. But I know how to control them now, just like I can control the Slayer in myself.~ EXTERN VPSIMB 530

CHAIN VPSIMB 528
~I am glad that you go into this battle leaving hatred behind, but I urge you to clear your mind of the thought of revenge as well. Have not you seen people obsessed with revenge and how empty their life becomes after the sworn enemy is dead? Please, promise me to reflect on that, <CHARNAME>.~
DO ~SetGlobal("LoveTalk","LOCALS",41) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 529
~(*Smiles and touches your cheek*)... You know that your staying alive will make at least one more person happy, do not you? May be you are right, <CHARNAME>, maybe it is you or him. But be merciful if you should have a chance, will you?~
DO ~SetGlobal("LoveTalk","LOCALS",41) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 530
~Then I admire your strength, <CHARNAME>. For you will be fighting two battles instead of one. But be merciful if you should have a chance, will you?~
DO ~SetGlobal("LoveTalk","LOCALS",41) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 531
~It is, as I feared then. Blind hatred and revenge will guide your striking arm when we will finally meet him.~
END
 ++ ~Revenge is a noble passion. And hatred - I am past hatred I think. I see a man who has to be destroyed lest he renders the Realm into ashes.~ EXTERN VPSIMB 528
 ++ ~Sime, it is strange, but I do not feel hatred, nor I am going into this battle for vengeance. I feel that I am doomed to fight him. I think that he forged our link himself, by stealing my soul - only one of us is to live now. Forgive me if I am egotistical, but I want him to die, not me.~ EXTERN VPSIMB 529
 ++ ~The passions you are speaking about are dark ones, but they make my blood boil in battle. Therefore I allow them to fill what is left of my soul. But I know how to control them now, just like I can control the Slayer in myself.~ EXTERN VPSIMB 530

CHAIN VPSIMB 532
~It is, as I feared then. Blind hatred and revenge will guide your striking arm when we will finally meet him.~
END
 ++ ~Revenge is a noble passion. And hatred - I am past hatred I think. I see a man who has to be destroyed lest he renders the Realm into ashes. ~ EXTERN VPSIMB 528
 ++ ~Sime, it is strange, but I do not feel hatred, nor I am going into this battle for vengeance. I feel that I am doomed to fight him. I think that he forged our link himself, by stealing my soul - only one of us is to live now. Forgive me if I am egotistical, but I want him to die, not me.~ EXTERN VPSIMB 529
 ++ ~The passions you are speaking about are dark ones, but they make my blood boil in battle. Therefore, I allow them to fill what is left of my soul. But I know how to control them now, just like I can control the Slayer in myself.~ EXTERN VPSIMB 530

CHAIN VPSIMB 533
~Why?~
END
 ++ ~Because.~ EXTERN VPSIMB 534
 ++ ~Imoen, Khalid and Dynaheir are my three reasons. It is in my power to forgive him for what he had done to me, but how can I forgive him the torture and death of my friends? He did not give them any chances.~ EXTERN VPSIMB 535
 ++ ~I have judged him and found him guilty. The only mercy I have for him is the mercy of my sword hand. He will die quick and painless if that choice would be given to me, but he will die.~ EXTERN VPSIMB 535
 ++ ~I am not the redeeming type, Sime. He can go to priests of Ilmater for that, not to me.~ EXTERN VPSIMB 539

CHAIN VPSIMB 534
~Oh, that was deep.~
DO ~SetGlobal("LoveTalk","LOCALS",41) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 535
~Irenicus crimes are immense, <CHARNAME>, including the ones he committed against you and your friends. I can understand your anger and your pain. I just hope that it will not be blind hatred and revenge that will guide your striking arm when we will finally meet him.~
END
 ++ ~Revenge is a noble passion. And hatred - I am past hatred I think. I see a man who has to be destroyed lest he renders the Realm into ashes.~ EXTERN VPSIMB 536
 ++ ~Sime, it is strange, but I do not feel hatred, nor I am going into this battle for vengeance. I feel that I am doomed to fight him. I think that he forged our link himself, by stealing my soul - only one of us is to live now. Forgive me if I am egotistical, but I want him to die, not me.~ EXTERN VPSIMB 537
 ++ ~The passions you are speaking about are dark ones, but they make my blood boil in battle. Therefore, I allow them to fill what is left of my soul. But I know how to control them now, just like I can control the Slayer in myself.~ EXTERN VPSIMB 538

CHAIN VPSIMB 536
~I am glad that you go into this battle leaving hatred behind, but I urge you to clear your mind of the thought of revenge as well. Have not you seen people obsessed with revenge and how empty their lives become after the sworn enemy is dead? Please, promise me to reflect on that, <CHARNAME>.~
DO ~SetGlobal("LoveTalk","LOCALS",41) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 537
~(*Smiles and touches your cheek.*)... You know that your staying alive will make at least one more person happy, do not you? May be you are right, <CHARNAME>, maybe it is you or him. But be merciful if you will have a chance, will you?~
DO ~SetGlobal("LoveTalk","LOCALS",41) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 538
~Then I admire your strength, <CHARNAME>. For you will be fighting two battles instead of one. But be merciful if you should have a chance, will you?~
DO ~SetGlobal("LoveTalk","LOCALS",41) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 539
~Care to take one along? Because it is most likely that we will meet with Irenicus before he will have a desire to visit Ilmater's Temple.~
END
 ++ ~He will have the desire as soon as he sees me, I wager.~ EXTERN VPSIMB 540
 ++ ~You are a good enough priest, Sime. Besides, I am sure Irenicus would clutch to his sins, rather than have them absolved.~ EXTERN VPSIMB 541
 ++ ~A whole dozen if that will please my Lady! ~ EXTERN VPSIMB 542
 ++ ~Ahem, do you think they are any good in a fight those beggars?~ EXTERN VPSIMB 543

CHAIN VPSIMB 540
~I doubt it not, <CHARNAME>. You scare even me sometimes. But be merciful if you should have a chance, will you?~
DO ~SetGlobal("LoveTalk","LOCALS",41) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 541
~May be... after all, you know him better than I do. Let it be, then. But be merciful if you should have a chance, will you?~
DO ~SetGlobal("LoveTalk","LOCALS",41) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 542
~<CHARNAME>, pleasing me is not the concern here... By Mielikki, you are grinning! Are you ever serious?~
DO ~SetGlobal("LoveTalk","LOCALS",41) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 543
~You are thinking cannon fodder, are not you? You... you are a beast!~
DO ~SetGlobal("SimeRomanceActive","GLOBAL",3) SetGlobal("VP_LoveTalkDelay","LOCALS",0) SetGlobal("LoveTalk","LOCALS",41)~
EXIT

CHAIN VPSIMB 544
~It is apparent that his capabilities are far above normal, yes. He is a terrifying adversary. <CHARNAME>, I wanted to ask you something. It may sound odd, but do you think Irenicus is a black-hearted villain? That he cannot be redeemed? Genius and evil are two things incompatible, a bard said once. Do not you think so?~
END
 ++ ~Sime, Irenicus had overstepped every moral boundary known. Genius he might be, but a genius of evil. He destroys before creating. He is Evil incarnate, Sime, and an unredeemable Evil.~ EXTERN VPSIMB 526
 ++ ~I neither know, nor do I care, if he is apt for redemption, Sime. I have a personal score to settle with Irenicus, and I am bent on sending him to Nine Hells.~ EXTERN VPSIMB 532
 ++ ~There can be redemption for him, Sime, but it is not my part to bring it to him.~ EXTERN VPSIMB 533

CHAIN
IF WEIGHT #-79 ~Global("LoveTalk","LOCALS",42)~ THEN VPSIMB 545
~Once I thought that I discovered a secret: love was once invented by an idle person, and the whole world believed it out of boredom or envy. My soul was silent since then and sickly.~
END
 ++ ~Why you are telling me that?~ EXTERN VPSIMB 546
 ++ ~But you do not believe it now?~ EXTERN VPSIMB 552
 ++ ~And what I am supposed to say?~ EXTERN VPSIMB 550

CHAIN VPSIMB 546
~Because it was you who have destroyed my blissful ignorance, <CHARNAME>. Because you healed my heart.~
END
 ++ ~Oh... good.~ EXTERN VPSIMB 547
 ++ ~And what I am supposed to say?~ EXTERN VPSIMB 550
 ++ ~So now you are just like everyone else: waiting for a chanced meeting, afraid to part and singing sad songs?~ EXTERN VPSIMB 551

CHAIN VPSIMB 547
~Of course it is good! But sometimes I am angry at you for that.~
END
 ++ ~You are cross with me because you love me? ~ EXTERN VPSIMB 548
 ++ ~I think I will just kiss you and hope for the best.~ EXTERN VPSIMB 549
 ++ ~And what I am supposed to say?~ EXTERN VPSIMB 550

CHAIN VPSIMB 548
~It does not make sense, does it? Oh, Nine Hells, just kiss me, will you?~
DO ~SetGlobal("LoveTalk","LOCALS",43) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 549
~Wonderful idea! That is guaranteed to cheer me up.~
DO ~SetGlobal("LoveTalk","LOCALS",43) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 550
~You are supposed to say "uh-huh" and kiss me.~
DO ~SetGlobal("LoveTalk","LOCALS",43) RealSetGlobalTimer("VP_SimeRomance","GLOBAL",1800) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 551
~Exactly. And it is your entire fault! I am cross with you, <CHARNAME>.~
END
 ++ ~You are cross with me because you love me?~ EXTERN VPSIMB 548
 ++ ~I think I will just kiss you and hope for the best.~ EXTERN VPSIMB 549
 ++ ~And what I am supposed to say?~ EXTERN VPSIMB 550

CHAIN VPSIMB 552
~No, because you destroyed that belief of mine. I am cross with you.~
END
 ++ ~You are cross with me because you love me? ~ EXTERN VPSIMB 548
 ++ ~I think I will just kiss you and hope for the best.~ EXTERN VPSIMB 549
 ++ ~And what I am supposed to say?~ EXTERN VPSIMB 550

CHAIN
IF WEIGHT #-78 ~Global("LoveTalk","LOCALS",44)~ THEN VPSIMB 553
~I have been studying you for so long, <CHARNAME>, that I can write a book about you. You are noble and valiant person. The sort that saves fair maidens from the clutches of evil dragons.~
END
 ++ ~Nay, Sime. There are enough fair maidens in the world and too few dragons. Though of course there is one maiden which is worth fighting a dragon for.~ EXTERN VPSIMB 554
 IF ~Gender(Player1,MALE)~ THEN REPLY ~Sure, I start every day by killing a dragon and saving a maiden. They have a terrifying habit of marrying me as a gesture of gratitude and now I have a harem full of princesses of all sorts, did not you notice?~ EXTERN VPSIMB 560
 ++ ~Sime, where is this conversation leading?~ EXTERN VPSIMB 561

CHAIN VPSIMB 554
~You think so? (*Laughs*)... Care to try?~
END
 ++ ~Sime, you, rangers are supposed to prevent people from doing dangerous things, like fighting dragons for example...~ EXTERN VPSIMB 555
 ++ ~Sime, are you thinking what I think you are thinking?~ EXTERN VPSIMB 556
 ++ ~Sime, I do not want to fight any dragons!~ EXTERN VPSIMB 557

CHAIN VPSIMB 555
~But, we rangers are also supposed to promote good deeds like maiden saving... And I really want to be a damsel in distress for once... Come, give me your hand! Kaimeldor panta annonta ten'lle, <CHARNAME>.~
DO ~SetGlobal("VP_Sime_Dragon","GLOBAL",1) SetGlobal("LoveTalk","LOCALS",45) SetGlobal("VP_LoveTalkDelay","LOCALS",0) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutS03")~
EXIT

CHAIN VPSIMB 556
~Oh, yes! Come, give me your hand! Kaimeldor panta annonta ten'lle, <CHARNAME>.~
DO ~SetGlobal("VP_Sime_Dragon","GLOBAL",1) SetGlobal("LoveTalk","LOCALS",45) SetGlobal("VP_LoveTalkDelay","LOCALS",0) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutS03")~
EXIT

CHAIN VPSIMB 557
~What, not even a tiny one? For me? Please? I really want to be a damsel in distress for once...~
END
 ++ ~No, Sime, not even a baby-dragon. And you are terrible at making puppy eyes.~ EXTERN VPSIMB 558
 ++ ~Alright, alright, where is this beast I am required to slaughter to free my fair Lady?~ EXTERN VPSIMB 559

CHAIN VPSIMB 558
~I will have to practice harder then.~
DO ~SetGlobal("LoveTalk","LOCALS",45) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN VPSIMB 559
~Oh, yes! Come, give me your hand! Kaimeldor panta annonta ten'lle, <CHARNAME>.~
DO ~SetGlobal("VP_Sime_Dragon","GLOBAL",1) SetGlobal("LoveTalk","LOCALS",45) SetGlobal("VP_LoveTalkDelay","LOCALS",0) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutS03")~
EXIT

CHAIN VPSIMB 560
~Is that true? (*Laughs*)... But I have not seen you do that today yet. We cannot leave you without a princess of the day, can we?~
END
 ++ ~Sime, you, rangers are supposed to prevent people from doing dangerous things, like fighting dragons for example...~ EXTERN VPSIMB 555
 ++ ~Sime, are you thinking what I think you are thinking?~ EXTERN VPSIMB 556
 ++ ~Sime, I do not want to fight any dragons!~ EXTERN VPSIMB 557

CHAIN VPSIMB 561
~I thought I might offer you a very exotic entertainment... very romantic too...~
END
 ++ ~Sime, you, rangers are supposed to prevent people from doing dangerous things, like fighting dragons for example...~ EXTERN VPSIMB 555
 ++ ~Sime, are you thinking what I think you are thinking?~ EXTERN VPSIMB 556
 ++ ~Sime, I do not want to fight any dragons!~ EXTERN VPSIMB 557

// TOB

CHAIN
IF ~Global("VP_NewBSime1","LOCALS",2)~ THEN VPSIMB TSTOB0
~I look at you and I see a man who died, went through Nine Hells, and is back. It chills me to the bones, Sarevok, to be around you.~ [SIMESA01]
DO ~SetGlobal("VP_NewBSime1","LOCALS",3)~
EXTERN BSAREV25 TS165

CHAIN VPSIMB TSTOB1
~I believe you, Dark Lord. Even if I did not, one look at those shiny yet empty orbs of yours would convince me.~
EXTERN BSAREV25 TS166

CHAIN VPSIMB TSTOB2
~You are and you know that. But I cannot deny that you have certain attractiveness as well.~ [SIMESA02]
EXTERN BSAREV25 TS167

CHAIN VPSIMB TSTOB3
~Strange compliments we have exchanged.~
EXIT

CHAIN
IF ~Global("VP_NewBSime2","LOCALS",2)~ THEN VPSIMB TSTOB4
~Was it fear that led you to ask <CHARNAME> to bring you back half-way? Or is it redemption that you are seeking?~ [SIMESA03]
DO ~SetGlobal("VP_NewBSime2","LOCALS",3)~
EXTERN BSAREV25 TS168

CHAIN VPSIMB TSTOB5
~So why do you want to return to the world of living?~
EXTERN BSAREV25 TS169

CHAIN VPSIMB TSTOB6
~If you enjoyed it so much, why did you want to become a god who does not have a need for neither women, nor gold, nor wine?~ [SIMESA04]
EXTERN BSAREV25 TS170

CHAIN VPSIMB TSTOB7
~Wild is your blood and you are powerful. Yet you failed. May be you failed because you wanted power too strongly? How will <CHARNAME> fare, I wonder?~
EXIT

CHAIN
IF ~Global("VP_NewBSime3","LOCALS",2)~ THEN VPSIMB TSTOB8
~And you are still here, you stubborn lout! Look, we are moving farther and farther away from Athkatla!~
DO ~SetGlobal("VP_NewBSime3","LOCALS",3)~
EXTERN BKELDO25 TS171

CHAIN VPSIMB TSTOB9
~Indeed. But the love my father and I share is stronger when there are long leagues between us.~
EXTERN BKELDO25 TS172

CHAIN VPSIMB TSTOB10
~On the road I am because I hunger to behold new sights and new people. I am a wanderer. My eyes would start watering from watching the same place every day.~
EXTERN BKELDO25 TS173

CHAIN VPSIMB TSTOB11
~Nay, I will not. I can see my dear friend's faces every waking minute and still wish for more of their company.~
EXTERN BKELDO25 TS174

CHAIN VPSIMB TSTOB12
~Indeed. But a married man is a dead man in Sime's books, Keldorn.~
EXTERN BKELDO25 TS175

CHAIN VPSIMB TSTOB13
~Oh, pardon me, my good Sir. [*Sinkers*]~
EXIT

CHAIN
IF ~Global("VP_NewBSime4","LOCALS",2)~ THEN VPSIMB TSTOB14
~It is good of you my dear Lord Anomen to pick up my glove. I am much obliged.~
DO ~SetGlobal("VP_NewBSime4","LOCALS",3)~ EXTERN BANOME25 TS142

CHAIN VPSIMB TSTOB15
~I am familiar with the concept, Anomen.~
EXTERN BANOME25 TS143

CHAIN VPSIMB TSTOB16
~I am an adept of another sort of love, Anomen.~
EXTERN BANOME25 TS144

CHAIN VPSIMB TSTOB17
~I am not the sort to gaze from afar at boys fighting. There are enemies and monsters abound. If my man is to fight a dragon I am to fight alongside with him. So I profess love of a kind when people share pain and walk together. While the love lasts.~
EXTERN BANOME25 TS145

CHAIN VPSIMB TSTOB18
~Indeed. And then it is time to walk your own way and keep fond memories.~
EXIT

CHAIN VPSIMB 112A
~Do not listen to <PRO_HIMHER>. Sometimes <PRO_HESHE> is a bore!~
EXIT