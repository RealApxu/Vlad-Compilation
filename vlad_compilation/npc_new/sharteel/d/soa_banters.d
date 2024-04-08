////////////////////////////////
//  CHAINs  //
////////////////////////////////

CHAIN
IF ~Global("VP_STB_Minsc","LOCALS",2)~ THEN BSHART STB_Minsc
~*Shar-Teel, being the first to rise, stands apart from the group and is readying herself for the day's battles by practising her thrust and parry skills against an invisible foe. After a while she notices Minsc the ranger watching her...*~
= ~(*Pointing her sword at him and speaking gruffly*) You want something ranger?~
DO ~SetGlobal("VP_STB_Minsc","LOCALS",3)~
== BMINSC ~Ooh please, do not point your sword at Minsc. Shar-Teel looks wonderful the way she dances with her blade and I only wish to stand and admire the dance.~
== BSHART ~(*Still pointing her sword*) This isn't a side show you know, so if you've finished admiring... go away!~
== BMINSC ~Side show... what is this side show? Is that where you go to learn to do this... this sword fighting?~
== BSHART ~(*Sneers*) Imbecile ranger! It's plain to see why in battle you miss more than you hit. Flaying about and out of control like a lunatic, I'm surprised you haven't stuck yourself with your own sword!~
== BMINSC ~Minsc is no lunatic! He is a berserker, a warrior of great skill and cunning. When evil hears my berserker battle cry, it brings great terror to its heart because evil then knows Minsc is on its tail and a mighty righteous butt kicking is coming its way... right Boo?~
= ~(*Squeak*)~ [BOONEJ1]
== BSHART ~Not to say any in your path will also get to feel this righteous ass kicking! There's nothing skilful in charging in blindly swinging your sword in hopes of hitting something. That is why my skill makes me the superior fighter to you... to any man.~
== BMINSC ~(*He puts out his large hand and pushes the point of her sword away from him*)... Pooh... do you hear that Boo? Such pride Minsc has never seen before and lots of prideful evil have felt the force of Minsc's boot heels or fallen to the edge of his sword.~
= ~Come Boo, this pride will also come to a fall soon... we will watch and see.~
== BSHART ~I've heard some daft things come out of the mouths of men in my time but that half wit ranger takes the cake.~
EXIT

CHAIN
IF ~Global("VP_STB_Hrothgar","LOCALS",2)~ THEN BSHART STB_Hrothgar
~Ho you, paladin...~
DO ~SetGlobal("VP_STB_Hrothgar","LOCALS",3)~
== BHROTH ~(*Sighing*) Please Shar-Teel, I have no objections to you using my name. Perhaps you'll show a little less distain if you use it and forget the paladin in me.~
== BSHART ~(*Gruffly*) Huh, if you lost some of those holier than thou airs and graces that you put on, we might all forget the paladin in you. All this goody goody, "I'm superior to you and you can't possibly live up to my example" is sickening! Admit it, you're a prude 'paladin'?~
== BHROTH ~There is nothing prudish in the way I conduct my life. It is my choice and although it saddens me to see the way some choose to live, I have never set myself up as an example, nor do I expect everyone to agree with my code. Only the gods have the right to expect man to follow by their example.~
== BSHART ~Ha... so as long as we live by the example set by a god, regardless of which god we choose to follow, then we can not be condemned for our actions... it is a god's way!~
== BHROTH ~(*Smiling*) So, by inferring that to follow the example of one of the less than righteous members of our pantheon one can not be condemned for evil deeds, you think you have me do you young lady?~
== BSHART ~You got it in one! In your own words... man chooses his god, his god sets his demands,  man follows. Oh, and be careful how you address me paladin or I'll show you just how unladylike I can be!~
== BHROTH ~(*Bows slightly*) Forgive my impertinence... Shar-Teel.~
= ~It is because of the differing alignments of the gods that good, evil and impartiality will always be a part of our world...~
= ~We can not change it, it is the way. Just as it will always be the way for the priests of one god to strive to convert all those aligned to another to their own faith. Each will condemn the other saying theirs is the right way but in the end, each and every man has free will to make his own choices in this life.~
= ~Now supposing, just supposing I were to...~
== BSHART ~(*She slants her eyes and her face darkens*) Stop right there! There's no supposing anything... I'm not standing here and listening to you go into the spiel of one of those damned converting priests yourself! I'm exercising some of that free will and ending this conversation now!~
== BHROTH ~That is your prerogative. Now, what was it you hailed me for?~
== BSHART ~Forget it! You'll only turn it into another sermon... you just can't help yourself!~
EXIT

CHAIN
IF ~Global("VP_STB_Dar","LOCALS",2)~ THEN BSHART STB_Dar
~Yes, big fella?~
DO ~SetGlobal("VP_STB_Dar","LOCALS",3)~
== BDAR ~Shar-Teel... if I may presume to use your name? I hope that now we have fought side by side you do not still perceive me as quite as burdensome to the group as you first thought?~
== BSHART ~It is my name, if needs must you may use it!~
= ~You fight well enough half orc... for your kind but that's no excuse to approach me and speak to me as if you were my equal... that you will never be!~
== BDAR ~You misunderstand, I never expected to be considered equal in the world of men. I only hope, one day, to gain acceptance and recognition for the skills I bring to it... that is the most I dare hope to dream of.~
== BSHART ~(*Scoffs*) <CHARNAME> brought you into this group, you should be telling <PRO_HIMHER> of you hopes... they are of no interest to me. I can't imagine why you think they are!~
= ~You're an abomination, not only as a half-orc but also as a male! Your kind are savages, your own birth is proof enough. That poor wretch of a woman you call mother, should have castrated your father as soon as he dropped his breeches. Me, I wouldn't have hesitated... him and any others who thought to try their luck.~
= ~Seems to me, a man can't go raping decent women if he's nothing in his breeches!~
== BDAR ~(*Sadly*) Yours is the attitude I have come to expect and have learnt to accept in this life. I should have realised that I have no right to presume to speak with you, nor to impose my thoughts and expectations on you. I am sorry... forgive me.~
== BSHART ~Yeah... well in future half orc, keep that ugly great head of yours away from me and we'll get on just fine!~
EXIT

CHAIN
IF ~Global("VP_STB_Imoen","LOCALS",2) InParty("Imoen") Global("VP_STB_TalkToImmy","LOCALS",1)~ THEN BSHART STB_Imoen
~(*She grabs Imoen's hand*) Ha, caught you! Sneaking around again are you thief?~
DO ~SetGlobal("VP_STB_Imoen","LOCALS",3)~
== IMOENJ ~Let go of me, Shar-Teel!~
== BSHART ~Not until you tell me why you're sneaking about here when everyone else is sleeping?~
== IMOENJ ~(*She snarls*) It's none of your business, so just let go of me!~
== BSHART ~Look here you snotty nosed tyke, when I see some one rifling through my stuff then it becomes my business! I'll not ask again, so unless you want those thieving hands of yours to hit the ground, what are you doing?~
== IMOENJ ~(*Looking suprised*) Your stuff! What in the nine hells do you think I would want with your stuff... I wouldn't touch "your stuff" with a ten foot pole. Here look for yourself...~
== BSHART ~Bah... all these bags look the same. Hey, just a minute, isn't that the paladin's bag you've got there?~
== IMOENJ ~(*Snatching it back from her gaze*) Yea, why, you wanna make something of it?~
== BSHART ~(*Scoffs*) Why you little snotling! You think you've got what it takes?~
== IMOENJ ~(*Drawing her sword*) You don't scare me... maybe it's time you got to see your own blood bleeding out!~
== BSHART ~(*Seeing the resolution on Imoen's face she bursts out laughing*)... Oh grow up you pathetic little girl... you seriously think I'd take on a kid with only a 'dirk' to play with!~
= ~You're out of your league kiddo... go back to your rifling, and don't worry, I'll not tell the paladin about your little midnight foray... I despise his kind more than you!~
= ~(*She grabs her own bag and shaking her head she turns back to her bed, mumbling as she goes*)... Insolent little guttersnipe... she actually thinks she could best me... pathetic!~
== IMOENJ ~What was it Gorion said... something about "the bigger they are the harder they fall"?~
= ~Well, judging by the size of that one's head, she's in for one hell of a fall one day. (*She starts to giggle*)~
= ~I only hope I'm around to see it... (*Then thoughtfully*)... Mmm I wonder what she's hiding in her bag that's got her knickers all in a twist... later maybe...~
= ~(*She turns her attention back to the bag in her hand*)... Mmm, now what do we have in here... surely he must have some keepsake bestowed upon him by a lady love. I can't believe he's got as old as he has and not fallen under the spell of some beautiful woman. He has the word tragedy written all over his face.~
EXIT

CHAIN
IF ~Global("VP_STB_Imoen","LOCALS",2) InParty("Imoen2") Global("VP_STB_TalkToImmy2","LOCALS",1)~ THEN BSHART STB_Imoen
~(*She grabs Imoen's hand*) Ha, caught you! Sneaking around again are you thief?~
DO ~SetGlobal("VP_STB_Imoen","LOCALS",3)~
== IMOEN2J ~Let go of me, Shar-Teel!~
== BSHART ~Not until you tell me why you're sneaking about here when everyone else is sleeping?~
== IMOEN2J ~(*She snarls*) It's none of your business, so just let go of me!~
== BSHART ~Look here you snotty nosed tyke, when I see some one rifling through my stuff then it becomes my business! I'll not ask again, so unless you want those thieving hands of yours to hit the ground, what are you doing?~
== IMOEN2J ~(*Looking suprised*) Your stuff! What in the nine hells do you think I would want with your stuff... I wouldn't touch "your stuff" with a ten foot pole. Here look for yourself...~
== BSHART ~Bah... all these bags look the same. Hey, just a minute, isn't that the paladin's bag you've got there?~
== IMOEN2J ~(*Snatching it back from her gaze*) Yea, why, you wanna make something of it?~
== BSHART ~(*Scoffs*) Why you little snotling! You think you've got what it takes?~
== IMOEN2J ~(*Drawing her sword*) You don't scare me... maybe it's time you got to see your own blood bleeding out!~
== BSHART ~(*Seeing the resolution on Imoen's face she bursts out laughing*)... Oh grow up you pathetic little girl... you seriously think I'd take on a kid with only a 'dirk' to play with!~
= ~You're out of your league kiddo... go back to your rifling, and don't worry, I'll not tell the paladin about your little midnight foray... I despise his kind more than you!~
= ~(*She grabs her own bag and shaking her head she turns back to her bed, mumbling as she goes*)... Insolent little guttersnipe... she actually thinks she could best me... pathetic!~
== IMOEN2J ~What was it Gorion said... something about "the bigger they are the harder they fall"?~
= ~Well, judging by the size of that one's head, she's in for one hell of a fall one day. (*She starts to giggle*)~
= ~I only hope I'm around to see it... (*Then thoughtfully*)... Mmm I wonder what she's hiding in her bag that's got her knickers all in a twist... later maybe...~
= ~(*She turns her attention back to the bag in her hand*)... Mmm, now what do we have in here... surely he must have some keepsake bestowed upon him by a lady love. I can't believe he's got as old as he has and not fallen under the spell of some beautiful woman. He has the word tragedy written all over his face.~
EXIT

CHAIN
IF ~Global("VP_STB_Melora","LOCALS",2)~ THEN BSHART STB_Melora
~You're not half bad with that blade of yours thief. A big improvement on that other milksop of a wimp I've had to put up with. The gods only know why in the nine hells <CHARNAME> suffered her simpering face for this long.~
DO ~SetGlobal("VP_STB_Melora","LOCALS",3)~
== BMELORA ~Imoen isn't it? Strange that... everyone else keeps saying how brave she is. I haven't heard one bad word against her... until now.~
= ~Stranger still that the sorcerer thought her important enough to ensure she was taken along with himself... even more important then even <CHARNAME>... any ideas why?~
== BSHART ~Hey, when the gods answer your prayers, you don't turn around and ask why! Good riddance to the snooty bitch is what I say.~
== BMELORA ~Oh now come on... surely even you can show some compassion for the unfortunate girl? The sorcerer has already tortured her relentlessly, she must be scared out of her wits to find herself at his mercy once again.~
== BSHART ~(*Scoffs*) Compassion, for a little sneak thief whose idea of fighting is a quick stab in the back and then to run away and hide. Often as not leaving us to finish the poor bastard off... she seldom managed a clean kill! I have only contempt for her kind!~
== BMELORA ~That is so typical of those with brawn and no brain! Just as the world has many races, so are its people born with different abilities.~
= ~The tall and strong find it easy to wield weapons... my kind are born with nimbleness of both mind and body... and if were not for the dexterity of the one you deride, you may well be still rotting in a cell!~
= ~We are all gifted differently, but that is no reason to deride those not like yourself!~
== BSHART ~(*Sneers*) My... quite the little people lover aren't we! Tell me Melora, what of the one who uses his gifts to wield magic, what of the wizard Melora... is he also included in your warm and fuzzy we must love all people philosophy?~
== BMELORA ~(*Looking coldly at Shar-Teel*) Don't even go there Shar-Teel, that is personal and none of your damn business!~
= ~I know about the foul arts of magic and of those who wield them, so I can empathise with Imoen's friends... understand how they fear for her and the fate which has befallen her.~
= ~Yet you... you who fought beside her gloat at her misfortune as though the gods themselves had done this in answer to your plea. You are as cold as the steel in that blade you carry!~
== BSHART ~I tell it like it is and if you don't like it then don't listen... simple as that. Better still, reserve your judgment until after you meet the little snotling... that is providing we rescue her before Irenicus finishes what he started and leaves us nothing to rescue!~
== BMELORA ~You'd better watch your mouth... There's those here who, hearing you talk like that, would be only to happy to shut it for you. Have a care Shar-Teel!~
== BSHART ~Do I look worried? Believe me, many have tried and many have fallen because they objected to my... shall we say, plain speaking! As for you... you stunted half breed, what are you going to do... run and tell them what the big bad Shar-Teel said about their darling Imoen?~
= ~I never back away from the chance to get in some more killing. So please, do me a favour and go tell them.~
== BMELORA ~(*Pulling herself up to her full height and glaring at the fighter*) I'm not intimidated by you, I've knocked down bigger and better than you... you foul mouthed harpy!~
= ~You're the pits you really are and I am sickened to find myself in cahoots with such evil. I've no need to tell tales, you'll drop yourself in it sooner or later... your kind always do.~
= ~(*She begins to walk away, but then she turns and looks squarely at Shar-Teel*)... Be wary of the shadows, you never can be sure of what lurks just out of sight!~
EXIT

CHAIN
IF ~Global("VP_SharTeel_Leina","LOCALS",2)~ THEN BSHART leina
~(*Clapping Leina on the shoulder*) Good on you girl!~
DO ~SetGlobal("VP_SharTeel_Leina","LOCALS",3)~
== BLEINA ~(*Spluttering from the unexpected touch of the fighter's hand*) Wha... what! Oh Shar-Teel it's you... yea gods you gave me a fright girl!~
== BSHART ~Didn't mean to scare you, I just wanted to say good on you for standing up to your father. Better to die than be forced to submit and share the bed of a man you so obviously despise, or any man if it comes to that!~
= ~Where do men get off thinking they have the right to dictate what's best for us women!~
== BLEINA ~It wasn't quite like that you know. My father, he... he wasn't himself.~
= ~A mystery still shrouds my mother death and I believe he blamed himself thinking it was revenge for an error of judgement on his part, that he had wronged someone in his dealings and she was made to pay for his mistake.~
= ~He feared for my safety and to him it was the only way he could see to keep me close.~
== BSHART ~(*Scoffs*) Here I was just thinking you had some back bone. Talk about being naive... Of course noooo one would think it had anything to do with both your families being rich and this was a nice way to increase his own wealth and power.~
= ~No wonder that husband of yours was able to walk all over you. What did you do, lie down and let him use you as a doormat?  What were you thinking with wench, your brain or your...~
== BLEINA ~(*Interrupts angrily*) Now hold it right there! One minute you're clapping me on the back and congratulating me and the next you're belittling me for something I had no control over.~
= ~Yes, I chose badly but at least I had the guts to take a chance in the first place and now, thanks to my experience, I have the strength to avoid such mistakes again.~
= ~You... I look at you and I see a woman so scared of her own emotions that she deliberately derides all so that none will venture close.~
== BSHART ~(*Gruffly*) You do, do you? Then you need to get yourself some new glasses bard and quick! Those you wear sometimes are distorting your vision so badly, soon you'll not be able to recognise friend from foe.~
= ~Meanwhile, watch you don't stumble onto your own sword by mistake... unless of course I'm watching, I'd hate to miss it by having my back turned. I need a good laugh.~
EXIT

CHAIN
IF ~Global("VP_SharTeel_Taffic","LOCALS",2)~ THEN BSHART taffic
~So Taffic the gnome has graced us with his company yet again.~
DO ~SetGlobal("VP_SharTeel_Taffic","LOCALS",3)~
== BTAFFIC ~What do you mean by that remark? You expecting me to disappear or something?~
== BSHART ~No, I'm just getting tired of hearing about this big hero that never makes an appearance, all that shows up is a gutless gnome.~
= ~You know... one day the gnome goes to bed a gnome and the next, *poof*, wakes up a... well still a runty gnome it would seem today.~
== BTAFFIC ~*POOF*... *POOF*... What do you mean by *POOF*? Bah, you're as ignorant as the rest of this rag tag group and like them, you will eat your words when my day comes! *Poof* indeed!~
== BSHART ~*POOF*, yes you know like *poof*... you wave your hands, say a few words and instantly the enemy lies dead, fire erupts from your fingers or whatever, as I said *poof* the deed is done!~
= ~Not a very sporting way to kill a person! It's about as gutless as a backstabbing thief! Hell, where's the glory he's dead before he can acknowledge your superiority over him.~
= ~Still, it can be just as painful and as bloody a death as death by the blade.~
== BTAFFIC ~Why waste time and risk your neck dancing with your foe when you can get the drop on him with a quick spell I say!~
== BSHART ~It's quick I'll give you that, but half the fun is making him sweat, to look into his eyes, to see the fear in them when he realises he's out mastered and all he can hope for is a quick death.~
= ~(*Her eyes start to glaze over*) The smell of his fear, the stench of his sweat, to know that you hold his life in your hands, to know that one more thrust is all it needs to send him into oblivion.~
= ~The power that surges through your body at that point... it's intoxicating! I love bloodshed!~
== BTAFFIC ~(*Seeing the coldness in her eyes, he takes a step back*) You like your killing too much!~
= ~I don't mind killing those who need killing or those who get in my way but you... I reckon you'd kill your own mother and father just to see the colour of their blood!~
== BSHART ~(*Gruffly*) Hmm, maybe I would, maybe I have... does that scare you? (*A self satisfied sneer comes to her face when she sees the sweat break out on his brow.*)~
== BTAFFIC ~(*Taking another step back he laughs nervously*) Ha, it'll take more than a crazy girl and a big sword to scare Taffic the hero.~
= ~However it's time I was getting along, it's been nice talking to you and all that but there are lots more things need doing before I face my destiny. Be seeing you Shar-Teel.~
== BSHART ~(*Laughing as she watches him scurry away*) So much for Taffic the hero! I doubt either magic or destiny will help him. Once a gnome always a gnome! Males of all races really are pathetic!~
EXIT

CHAIN
IF ~Global("VP_STB_Dar","LOCALS",5)~ THEN BSHART darbantr
~You there, Priest of Ilmater?~
DO ~SetGlobal("VP_STB_Dar","LOCALS",6)~
== BDAR ~If you are speaking to me, I have a name and it's not *you there*.~
== BSHART ~(*Scoffs*) A name, you mean they've given you a name? The ugly brute wishes to be called by his name? Well I can think of many to call you but I doubt you'd answer to them either.~
== BDAR ~I am ugly it's true but I am civilised and no brute so I consider myself worthy of a name. If you would afford me the courtesy of using it I will be pleased to speak with you. If not then I will continue to my bed.~
== BSHART ~Oh you will, will you! Ok, Dar is it? I have been watching you, well a girl has to be sure of who's protecting her back when she's in the fray, and you amuse me half-or... Dar.~
== BDAR ~Amuse you? There is nothing amusing about Dar, I can assure you. I am simply as you see.~
== BSHART ~From where I stand you're very amusing to watch as you try to integrate yourself into the group, your attempts to worm your way into their affections... what did you call it, gaining acceptance?~
= ~I have to say it really is painful to see. Pitiful but amusing.~
== BDAR ~Then you stand too far away Shar-Teel, for if you were to stand closer you would see that I have gained not only the respect of the members of this group, but also their acceptance and their friendship.~
= ~Because of who I am I know I will never gain yours, and to be honest, having watched you it's not something I need,or desire.~
= ~I admire you as a skilled warrior but there is evil in your heart, evil and wanton pride, two traits that are abhorrent to me.~
= ~I will fight beside you and I will tend your wounds but we will never be friends... comrades in arms, but never friends.~
== BSHART ~(*Angrily she spits out her next words*) Why you sanctimonious heap of green manure! I don't recall asking for your friendship nor would I accept it were it offered!~
= ~You and those who dared to rear the abomination that you are, should be eviscerated for their transgression against nature and their souls left to burn in the fires of the abyss for eternity!~
= ~For your insolence, be heedful that it is not me who sends you there!~
== BDAR ~I am always careful. I have spent most of life being careful and watching my back. You will not find me an easy target, for I now have reasons to live.~
= ~Before coming to your world I was ready to accept death with each day that dawned, but this world has shown me that I have as much right as you to live in it.~
= ~My life is in Ilmater's hands, not yours. Sleep well Shar-Teel.~
EXIT