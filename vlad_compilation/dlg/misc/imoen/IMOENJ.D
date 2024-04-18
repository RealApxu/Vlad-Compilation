APPEND ~IMOENJ~

IF ~~ THEN BEGIN NEJ71
 SAY ~We've just had some very bad things done to us, but I don't believe the plan was to send us to the northern lands... Let's proceed warily.~
 IF ~InParty("Minsc")~ THEN EXTERN MINSCJ NEJ243
 IF ~!InParty("Minsc")~ THEN EXIT
END

IF ~~ THEN BEGIN NEJ74
 SAY ~We... we are back here! No... no... please no... let this be a dream! <CHARNAME>, please tell me that this is a dream!?~
 IF ~~ THEN REPLY ~I wish I could give you comfort and say that this is indeed a dream, Imoen, but I would be lying. This is all too real. I can promise you that no one is going to hurt you again and that we are going to get out of here. Do you understand this?~ GOTO NEJ75
 IF ~~ THEN REPLY ~Imoen, I too am disappointed at finding ourselves back here, but we will be free believe me, we will!~ GOTO NEJ75
 IF ~~ THEN REPLY ~Together we have faced worse than this, Imoen, and we have come through. Look around you, we have friends to aid us, good reliable friends and with their help we will be out of here very soon. Trust them and me, Imoen.~ GOTO NEJ75
 IF ~~ THEN REPLY ~Pull yourself together, Imoen! We need all our wits about us if we are to flee this hell hole in one piece, any more hysterical outbursts from you and I shall leave you to make your own way out!~ GOTO NEJ75
END

IF ~~ THEN BEGIN NEJ75
 SAY ~I am sorry, <CHARNAME>. A few moments ago we were celebrating our freedom, only to find ourselves trapped in this... this horrible place again! Please, please let us get moving and just get out of here, quickly.~
 IF ~True()~ THEN EXTERN NJHROJ 369
 IF ~InParty("Sharteel")~ THEN EXTERN ~SHARTJ~ comebck1
 IF ~InParty("njdar")~ THEN EXTERN NJDARJ 5
 IF ~InParty("Minsc")~ THEN EXTERN MINSCJ NEJ246
 IF ~InParty("Jaheira")~ THEN EXTERN JAHEIRAJ NEJ534
END

IF WEIGHT #-63 ~Global("TeleportDialog","GLOBAL",2)~ THEN BEGIN NEJ76
 SAY ~Are... are we free <CHARNAME>? Dare we hope? This room it feels different somehow.~
 IF ~True()~ THEN REPLY ~This place does feel different, but we should not get our hopes up nor let our guard down because of the way we feel. One thing is for sure, we will not discover anything standing around here so I suggest we move quickly and prepare ourselves for whoever or whatever lies in wait at the bottom of these stairs.~ GOTO NEJ77
 IF ~InParty("Sharteel")~ THEN EXTERN ~SHARTJ~ nejopen1
 IF ~InParty("Minsc")~ THEN EXTERN MINSCJ NEJ265
 IF ~InParty("Jaheira")~ THEN EXTERN JAHEIRAJ NEJ555
END

IF ~~ THEN BEGIN NEJ77
 SAY ~Oh... <CHARNAME>.~
 IF ~~ THEN DO ~SetGlobal("TeleportDialog","GLOBAL",3)~ EXIT
END

IF WEIGHT #-1 ~Global("VP_BHrothgar","LOCALS",2)~ THEN BEGIN NEJ78
 SAY ~Hrothgar, can I ask why you have so much junk in your otherwise nice house?~
 IF ~~ THEN DO ~SetGlobal("VP_BHrothgar","LOCALS",3)~ EXTERN NJHROJ 94
END

IF ~~ THEN BEGIN NEJ79
 SAY ~Stories you say, but how many times can you hear a story before you get fed up with it and no longer wish to hear it ever again? Get what I mean?~
 IF ~~ THEN EXTERN NJHROJ 95
END

IF ~~ THEN BEGIN NEJ80
 SAY ~Wow, that is so sad Hrothgar, and I bet you don't even know why?~
 IF ~~ THEN EXTERN NJHROJ 96
END

IF ~~ THEN BEGIN NEJ81
 SAY ~Because your house is full of things from the past. Looks to me like you surround yourself with your ju... shall we call them keepsakes, because your life is no longer as exciting as it was when you were young. You have to keep these things to remind you of exciting past times. Right Hrothgar?~
 IF ~~ THEN EXTERN NJHROJ 97
END

IF ~~ THEN BEGIN NEJ82
 SAY ~Hey, don't go getting so uppity. I never said you were old, maybe just a little lonely. Did you never think to marry, bring a little romance and... well... a different sort of excitement to your life?~
 IF ~~ THEN EXTERN NJHROJ 98
END

IF ~~ THEN BEGIN NEJ83
 SAY ~Well, was there such a lady?~
 IF ~~ THEN EXTERN NJHROJ 99
END

IF ~~ THEN BEGIN NEJ84
 SAY ~Wow, I didn't expect to hear your life story Hrothgar. It could definitely do with some more action, what do you say? Maybe this trip will put some into it for you.~
 IF ~~ THEN EXTERN NJHROJ 102
END

IF WEIGHT #-2 ~Global("VP_BAccalia","LOCALS",2)~ THEN BEGIN NEJ85
 SAY ~Hiya Ace. What you doing?~
 IF ~~ THEN DO ~SetGlobal("VP_BAccalia","LOCALS",3)~ EXTERN ~ACCALIJ~ 5
END

IF ~~ THEN BEGIN NEJ86
 SAY ~Right'o' Accalia, just thought Ace sounded a bit more pally. What you doing anyway?~
 IF ~~ THEN EXTERN ~ACCALIJ~ 6
END

IF ~~ THEN BEGIN NEJ87
 SAY ~Aww... very funny. I can see you are writing but what are you writing?~
 IF ~~ THEN EXTERN ~ACCALIJ~ 7
END

IF ~~ THEN BEGIN NEJ88
 SAY ~Oh, a journal... boring. Let me tell you what you should write, help you make it less boring...~
 IF ~~ THEN EXTERN ~ACCALIJ~ 8
END

IF ~~ THEN BEGIN NEJ89
 SAY ~I was going to say... what was that... all of us... you mean I am in your journal? You have to let me read it now Accalia! Please, please can I read it?~
 IF ~~ THEN EXTERN ~ACCALIJ~ 9
END

IF ~~ THEN BEGIN NEJ90
 SAY ~Then you read it to me, you only have to read the parts about me, to me. I have never been written about before. Tell me, you have not forgotten to write how captivating and beguiling young Imoen is, how she turns heads where ever she walks?~
 IF ~~ THEN EXTERN ~ACCALIJ~ 10
END

IF ~~ THEN BEGIN NEJ91
 SAY ~Yeah, whatever, but you could still make it more colourful, by using lots of bright descriptive words.~
 IF ~~ THEN GOTO NEJ92
END

IF ~~ THEN BEGIN NEJ92
 SAY ~You could say for instance, *The sun caught Imoen's hair, causing it to shine lustrously, as she made ready to loosen an arrow from her bow,* or...~
 IF ~~ THEN GOTO NEJ93
END

IF ~~ THEN BEGIN NEJ93
 SAY ~*Imoen's young svelte body flowed gracefully into the shadows as she prepared to scout ahead* or even...~
 IF ~~ THEN EXTERN ~ACCALIJ~ 11
END

IF ~~ THEN BEGIN NEJ94
 SAY ~(*Muttering under her breath as she walks away*)... Hmph! She needn't think I won't find out what she has written, because I will, you can bet on it!~
 IF ~~ THEN EXIT
END

IF WEIGHT #-3 ~Global("VP_BDar","LOCALS",2)~ THEN BEGIN NEJ95
 SAY ~Does this snow ever go away Dar? It looks to me like it is always here.~
 IF ~~ THEN DO ~SetGlobal("VP_BDar","LOCALS",3)~ EXTERN NJDARJ 16
END

IF ~~ THEN BEGIN NEJ96
 SAY ~But it is so... so horribly cold! I thought it looked real pretty at first, but now I find it cold and wet, and it seeps through my boots, making my feet cold and wet too.~
 IF ~~ THEN EXTERN NJDARJ 17
END

IF ~~ THEN BEGIN NEJ97
 SAY ~(*Stamping her feet in a newly fallen area of snow*) It makes such a delicious sound Dar, like stomping on beetles, all crunchy. Here listen! (*She stamps her feet again to demonstrate what she means*). See what I mean.~
 IF ~~ THEN EXTERN NJDARJ 18
END

IF ~~ THEN BEGIN NEJ98
 SAY ~Of course I have, well, maybe not so much of it in all one place. There was this island we were once transported to when some mage asked us to find a cloak for him, but...but that seems such a long time ago now. Anyhow, we were not there very long.~
 IF ~~ THEN EXTERN NJDARJ 19
END

IF ~~ THEN BEGIN NEJ99
 SAY ~But that is not a fun way to walk Dar, no crunchy squashed beetle sounds!~
 IF ~~ THEN EXTERN NJDARJ 20
END

IF ~~ THEN BEGIN NEJ100
 SAY ~Was I complaining? I had not noticed, never mind. Still, I much prefer to be walking this cold place and be free, wet feet and all, than be in that horrible place we have just left. (*Sighs*) I suppose my feet will dry out eventually.~
 IF ~~ THEN EXIT
END

IF WEIGHT #-4 ~Global("VP_BMinsc","LOCALS",2)~ THEN BEGIN NEJ101
 SAY ~We have travelled some rough roads together Minsc, but this must be the strangest. I don't think I will ever see Candlekeep again. Damn Irenicus!~
 IF ~~ THEN DO ~SetGlobal("VP_BMinsc","LOCALS",3)~ EXTERN MINSCJ NEJ266
END

IF ~~ THEN BEGIN NEJ102
 SAY ~I don't want you to be sad Minsc, you have lots to be happy about. Here, in this place Dynaheir is not dead, but if we do get home you will be sad and have to avenge her being dead again.~
 IF ~~ THEN EXTERN MINSCJ NEJ267
END

IF ~~ THEN BEGIN NEJ103
 SAY ~No Minsc, you can't do that! You don't belong here anymore than I do. It's all so unfair! That damn portal dragging us here, I don't care a bit about Hrothgar and his big old evil! I just want to go home, feel the sun on my face instead of trudging through all this cold, horrible snow!~
 IF ~~ THEN EXTERN MINSCJ NEJ268
END

IF ~~ THEN BEGIN NEJ104
 SAY ~Thank you Minsc. I think a big strong arm is just what I need at the moment, only don't go telling the others, they still think of me as the baby here as it is.~
 IF ~~ THEN EXTERN MINSCJ NEJ269
END

IF ~~ THEN BEGIN NEJ105
 SAY ~Right you are Minsc.~
 IF ~~ THEN EXIT
END

IF WEIGHT #-5 ~Global("VP_BPC","LOCALS",2)~ THEN BEGIN NEJ106
 SAY ~(*Tossing a snow ball at you*)... Here <CHARNAME>, catch!~
 IF ~~ THEN REPLY ~For goodness sake Imoen, grow up!~ DO ~SetGlobal("VP_BPC","LOCALS",3)~ GOTO NEJ107
 IF ~~ THEN REPLY ~What the...? Imoen, this is not the time to be lobbing snowballs!~ DO ~SetGlobal("VP_BPC","LOCALS",3)~ GOTO NEJ107
 IF ~~ THEN REPLY ~(*Making and tossing a snowball of your own*)... Catch yourself Imoen. It has been a long time since we last enjoyed such a game. Where did the years go?~ DO ~SetGlobal("VP_BPC","LOCALS",3)~ GOTO NEJ108
END

IF ~~ THEN BEGIN NEJ107
 SAY ~Aaaw... come on <CHARNAME>, lighten up. You used to throw snowballs at me faster than I could make them.~
 IF ~~ THEN REPLY ~We were children then Imoen, without a thought for tomorrow. We left our childhood behind the day we left Candlekeep, now we do not even know if we have a tomorrow.~ GOTO NEJ112
 IF ~~ THEN REPLY ~That was then Imoen. Silly games we played as children may get us killed today, so, cease this foolishness now.~ GOTO NEJ113
 IF ~~ THEN REPLY ~We are not the same innocent children that we were back then Imoen, nor can we ever be again., so let us just concentrate on staying alive for at least another day shall we.~ GOTO NEJ113
END

IF ~~ THEN BEGIN NEJ108
 SAY ~(*Picking up a handfull of fresh snow*)... Sometimes it is difficult to remember the good parts of those years <CHARNAME>. Candlekeep and Gorion, all memories that I do not want to ever loose and yet, I am so afraid that in time I will.~
 IF ~~ THEN GOTO NEJ109
END

IF ~~ THEN BEGIN NEJ109
 SAY ~We have come so far and learnt so much, how can we ever be the same? You discover your father to be the god of murder, you have been hunted by and forced to fight and kill Sarevok, your own power crazed brother.~
 IF ~~ THEN GOTO NEJ110
END

IF ~~ THEN BEGIN NEJ110
 SAY ~I have no brother nor sister, so I can only imagine how awful that had to have been for you <CHARNAME>, not that Sarevok would have made a very nice brother anyway, but still, to have to kill him.~
 IF ~~ THEN GOTO NEJ111
END

IF ~~ THEN BEGIN NEJ111
 SAY ~Now, thanks to this Irenicus, we land up... well, wherever it is we are now! It is just not fair <CHARNAME>! I want my... our life back the way it was before all this child of Bhaal palaver!~
 IF ~~ THEN REPLY ~What is past is past Imoen, for now we have to concentrate on surviving this cold inhospitable land.~ GOTO NEJ116
 IF ~~ THEN REPLY ~It is fruitless to dwell on what has been. We could be here for a very long time, so I suggest you get used to it and make the most of the here and now.~ GOTO NEJ116
 IF ~~ THEN REPLY ~All good memories are worth hanging onto, but that is all they are, memories. Whereas the past will always be with us, we have a future to look to now, even if fate decrees that our futures now lie in this strange land.~ GOTO NEJ117
 IF ~~ THEN REPLY ~Come Imoen this is not the time to relive old memories, and please, put that snowball down, I am quite wet enough thank you.~ GOTO NEJ117
END

IF ~~ THEN BEGIN NEJ112
 SAY ~(*Picking up a handfull of fresh snow*)... Then all the more reason to enjoy today, come <CHARNAME>, we may not be children any more but surely some of those memories are worth hanging onto and reliving, like our excitement at seeing the first snow of winter, right?~
 IF ~~ THEN REPLY ~What is past is past Imoen, for now we have to concentrate on surviving this cold inhospitable land.~ GOTO NEJ116
 IF ~~ THEN REPLY ~It is fruitless to dwell on what has been. We could be here for a very long time, so I suggest you get used to it and make the most of the here and now.~ GOTO NEJ116
 IF ~~ THEN REPLY ~All good memories are worth hanging onto, but that is all they are, memories. Whereas the past will always be with us, we have a future to look to now, even if fate decrees that our futures now lie in this strange land.~ GOTO NEJ117
 IF ~~ THEN REPLY ~Come Imoen this is not the time to relive old memories, and please, put that snowball down, I am quite wet enough thank you.~ GOTO NEJ117
END

IF ~~ THEN BEGIN NEJ113
 SAY ~(*Picking up a handfull of fresh snow*)... I know <CHARNAME>, but it feels so good to be walking free again.~
 IF ~~ THEN GOTO NEJ114
END

IF ~~ THEN BEGIN NEJ114
 SAY ~The snow sort of reminded me of the excitement we felt at seeing the first snow of winter when we were children at Candlekeep.~
 IF ~~ THEN GOTO NEJ115
END

IF ~~ THEN BEGIN NEJ115
 SAY ~For a moment I forgot Irenicus and all those horrible things he did to us. I just thought to relive some of those memories would cheer us both.~
 IF ~~ THEN REPLY ~What is past is past Imoen, for now we have to concentrate on surviving this cold inhospitable land.~ GOTO NEJ116
 IF ~~ THEN REPLY ~It is fruitless to dwell on what has been. We could be here for a very long time, so I suggest you get used to it and make the most of the here and now.~ GOTO NEJ116
 IF ~~ THEN REPLY ~All good memories are worth hanging onto, but that is all they are, memories. Whereas the past will always be with us, we have a future to look to now, even if fate decrees that our futures now lie in this strange land.~ GOTO NEJ117
 IF ~~ THEN REPLY ~Come Imoen this is not the time to relive old memories, and please, put that snowball down, I am quite wet enough thank you.~ GOTO NEJ117
END

IF ~~ THEN BEGIN NEJ116
 SAY ~You never used to take life so seriously <CHARNAME>, if this is what happens when a person grows up, then... then I want no part of it.~
 IF ~~ THEN REPLY ~Imoen, promise me that you will never change? You are the one person in my life that I can rely on to be constant, you keep your memories, no one will force you to grow up if you do not want to.~ GOTO NEJ117
 IF ~~ THEN REPLY ~Whatever Imoen! One of us has to be the adult in all this lest nothing would be achieved.~ GOTO NEJ118
END

IF ~~ THEN BEGIN NEJ117
 SAY ~(*Tosses the snowball at you*)... Then I guess it can not hurt to make a new memory and besides, there is no use in letting a good snowball go to waste now is there?~
 IF ~~ THEN REPLY ~(*Dodging Imoen's snowball*) Imoen! I asked you to put that snowball down. Now, no more childish behaviour or I will leave you here to enjoy the snow on your own! If I behaved as you nothing would ever be achieved!~ GOTO NEJ118
 IF ~~ THEN REPLY ~(*Dodging Imoen's snowball*) No matter how the years pass, to me you will always be Imoen, the innocent rogue with a big heart, and a friend that I know will always put a smile on my face no matter how bad things get. Come my friend, no more snowballs, we are not safe here.~ GOTO NEJ119
 IF ~~ THEN REPLY ~(*Dodging Imoen's snowball*) Imoen! I despair of you. No matter, let us move on before all this ruckuss gets us noticed.~ GOTO NEJ119
END

IF ~~ THEN BEGIN NEJ118
 SAY ~Maybe not <CHARNAME>, but we would have a heck of a lot more fun.~
 IF ~OR(2) Dead("Jaheira") !InParty("Jaheira")~ THEN EXIT
 IF ~!Dead("Jaheira") InParty("Jaheira")~ THEN EXTERN JAHEIRAJ NEJ556
END

IF ~~ THEN BEGIN NEJ119
 SAY ~You got lucky there, bet I get you with my next one!~
 IF ~OR(2) Dead("Jaheira") !InParty("Jaheira")~ THEN EXIT
 IF ~!Dead("Jaheira") InParty("Jaheira")~ THEN EXTERN JAHEIRAJ NEJ556
END

IF ~~ THEN BEGIN NEJ120
 SAY ~And maybe you wouldn't be so grouchy if you put less starch in your knickers Jaheira... (*grinning*) then perhaps Khalid would smile more and stutter less!~
 IF ~~ THEN EXTERN JAHEIRAJ NEJ557
END

IF ~~ THEN BEGIN NEJ121
 SAY ~Well... you should listen to yourself sometimes! You fuss around us like an old mother hen, when in fact you are neither a mother nor an old bird. Lighten up, live your own life and stop finding fault with everyone elses.~
 IF ~~ THEN EXTERN JAHEIRAJ NEJ558
END

IF ~~ THEN BEGIN NEJ122
 SAY ~Why not say faults Jaheira, after all that is what you mean isn't it? If it is my nature to be as I am then surely nature is also responsible for what you call my faults? Now, remind me... who it is that believes we should not mess with nature?~
 IF ~~ THEN EXTERN JAHEIRAJ NEJ559
END

IF ~~ THEN BEGIN NEJ123
 SAY ~Fine by me. I can't think of a more fun way to learn, at least when it comes to talking about a thing, I will know what I am talking about, having *experienced* it.~
 IF ~~ THEN EXTERN JAHEIRAJ NEJ560
END

IF WEIGHT #-6 ~Global("VP_BAccalia","LOCALS",5)~ THEN BEGIN NEJ124
 SAY ~(*Opening and looking at the book in her hands*)... Now let's see what that priest has written that she wants kept so darn private...~
 IF ~~ THEN DO ~SetGlobal("VP_BAccalia","LOCALS",6)~ GOTO NEJ125
END

IF ~~ THEN BEGIN NEJ125
 SAY ~(*She turns a couple of pages*)... Hmp... *Today Hrothgar... Hrothgar said... Hrothgar... Hrothgar, Hrothgar, and more Hrothgar!~
 IF ~~ THEN GOTO NEJ126
END

IF ~~ THEN BEGIN NEJ126
 SAY ~(*Giggles*) It Looks like our lady priest has got a crush on Hrothgar and him being so old... yuck!~
 IF ~InParty("Jaheira")~ THEN GOTO NEJ127
 IF ~!InParty("Jaheira") InParty("Minsc")~ THEN GOTO NEJ129
 IF ~!InParty("Jaheira") !InParty("Minsc")~ THEN GOTO NEJ131
END

IF ~~ THEN BEGIN NEJ127
 SAY ~(*She turns another page*)... Aha... now what's this... *Jaheira seemed a tad cranky today*.~
 IF ~~ THEN GOTO NEJ128
END

IF ~~ THEN BEGIN NEJ128
 SAY ~(*Giggles louder*)... You think she'd know by know that Jaheira is always cranky, in fact Jaheira is another name for cranky.~
 IF ~InParty("Minsc")~ THEN GOTO NEJ129
 IF ~!InParty("Minsc")~ THEN GOTO NEJ131
END

IF ~~ THEN BEGIN NEJ129
 SAY ~(*She turns another page*)... *I wish Tempus would endow me with the means to cure the gentle ranger's head... but perhaps then he would no longer be Minsc and his friends would not thank me for it*.~
 IF ~~ THEN GOTO NEJ130
END

IF ~~ THEN BEGIN NEJ130
 SAY ~(*Hotly*) You can keep your hands off our Minsc lady, we love him just as he is!~
 IF ~~ THEN GOTO NEJ131
END

IF ~~ THEN BEGIN NEJ131
 SAY ~(*She turns another page*)... Now this is more like it... *Imoen, a charming enough rogue*... she actually likes me well I'll be darned...~
 IF ~~ THEN GOTO NEJ132
END

IF ~~ THEN BEGIN NEJ132
 SAY ~(*She reads on*)... *Should really learn to grow up and realise life out here is not a playground*... What!! Why the...~
 IF ~~ THEN EXTERN ~ACCALIJ~ 19
END

IF ~~ THEN BEGIN NEJ133
 SAY ~(*Quickly stuffing her hands behind her back*) Er... no Accalia.~
 IF ~~ THEN EXTERN ~ACCALIJ~ 20
END

IF ~~ THEN BEGIN NEJ134
 SAY ~You do that Accalia... (*Smirking*) Why not ask Hrothgar, he might know?~
 IF ~~ THEN EXTERN ~ACCALIJ~ 21
END

IF ~~ THEN BEGIN NEJ135
 SAY ~(*Quickly holding out her hands for the clasp, dropping the book as she does*) It's beautiful Accalia, thank... ooops!!~
 IF ~~ THEN EXTERN ~ACCALIJ~ 22
END

IF ~~ THEN BEGIN NEJ136
 SAY ~(*Blushing*) What this book... is it yours? I only just found it and haven't had time to find out who it belongs to yet and I certainly have not had enough time to read it. (*Picks up the book and gives it to Accalia.*)~
 IF ~~ THEN EXTERN ~ACCALIJ~ 23
END

IF ~~ THEN BEGIN NEJ137
 SAY ~Right you are Accalia. Thank you for the clasp and I'm glad you got your journal back.~
 IF ~~ THEN EXTERN ~ACCALIJ~ 24
END

IF ~~ THEN BEGIN NEJ138
 SAY ~I would never read your journal Accalia, as you said, it's private.~
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NEJ139
 SAY ~That was scary!!!~
 IF ~True()~ THEN EXTERN NJHROJ 113
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARJ 26
 IF ~InParty("Accalia") !Dead("Accalia")~ THEN EXTERN ~ACCALIJ~ 31
END

IF ~~ THEN BEGIN NEJ140
 SAY ~Then let's get it over with. We can debate the virtue of our decision later over a couple of mugs.~
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NEJ141
 SAY ~Elisia-of-the-Sky's-Mirror... Elisia-of-the-Lake... Sea spirits are such glorious creatures and have such beautiful names.~
 IF ~~ THEN GOTO NEJ142
END

IF ~~ THEN BEGIN NEJ142
 SAY ~I think I may change my name to Imoen-of-the... Imoen-of-the what? Mmm, I am going to have to think some more on this one, after all, it has to reflect the colour of my skin or maybe even my hair.~
 IF ~True()~ THEN EXIT
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN JAHEIRAJ NEJ587
END

IF ~~ THEN BEGIN NEJ143
 SAY ~And how should we know you Jaheira, Jaheira-of-the-Over-Starched-Knickers? (*Giggling uncontrollably*) Oh yes, I like that one, very apt and one I will have to remember.~
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NEJ144
 SAY ~(*Giggles*) Nah, what gave you that idea?~
 IF ~~ THEN EXTERN JAHEIRAJ NEJ588
END

IF ~~ THEN BEGIN NEJ145
 SAY ~Well, at least we won't be bored.~
 IF ~~ THEN DO ~ActionOverride("AcolyteD",Enemy())~ EXIT
END

IF ~~ THEN BEGIN NEJ146
 SAY ~Are you sure Arundel is playing with a full set Hrothgar? Could he not be getting senile, he seemed pretty old to me?~
 IF ~~ THEN EXTERN NJHROJ 130
END

IF ~~ THEN BEGIN NEJ147
 SAY ~Please tell me that is not a real dragon, because if it is some beast a mage has petrified, I really do not want to be inside its belly should someone wake it up again?~
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NEJ148
 SAY ~(*Screwing up her nose*) Ugg! What a horrible thought, those big lizards killing people to feed to slimy snake men!~
 IF ~True()~ THEN EXTERN NJHROJ 273
 IF ~InParty("Accalia") !Dead("Accalia")~ THEN EXTERN ~ACCALIJ~ 59
END

IF ~~ THEN BEGIN NEJ149
 SAY ~Hey, they're already waiting for us... why give 'em more time I say?~
 IF ~True()~ THEN EXTERN NJHROJ 274
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN MINSCJ NEJ292
 IF ~InParty("Accalia") !Dead("Accalia")~ THEN EXTERN ~ACCALIJ~ 60
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN JAHEIRAJ NEJ628
END

IF ~~ THEN BEGIN NEJ150
 SAY ~We'll keep an eye on the big fella. He's family, and we need him around.~
 IF ~~ THEN EXTERN MINSCJ NEJ293
END

IF ~~ THEN BEGIN NEJ151
 SAY ~Yeah. I hate to tell you this big fella, but she's evil.~
 IF ~~ THEN EXTERN MINSCJ NEJ296
END

IF WEIGHT #-7 ~Global("VP_YxunomeiDead","GLOBAL",1)~ THEN BEGIN NEJ152
 SAY ~What the hell was that thing?~
 IF ~~ THEN DO ~SetGlobal("VP_YxunomeiDead","GLOBAL",2)~ EXTERN NJHROJ 148
END

IF ~~ THEN BEGIN NEJ153
 SAY ~(*Smiling a wan smile*) At least we won't be bored.~
 IF ~True()~ THEN EXTERN NJHROJ 280
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARJ 35
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN MINSCJ NEJ297
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN JAHEIRAJ NEJ595
END

IF ~~ THEN BEGIN NEJ154
 SAY ~The nearest Inn I can think of is in Kuldahar, shall we go?~
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NEJ171
 SAY ~Wow... that was some move Hrothgar! Uh... care to tell us how you did it?~
 IF ~True()~ THEN EXTERN NJHROJ 196
 IF ~InParty("njdar")~ THEN EXTERN NJDARJ 43
 IF ~InParty("Minsc")~ THEN EXTERN MINSCJ NEJ314
 IF ~InParty("Accalia")~ THEN EXTERN ~ACCALIJ~ 38
 IF ~InParty("Jaheira")~ THEN EXTERN JAHEIRAJ NEJ611
END

IF ~~ THEN BEGIN NEJ172
 SAY ~I thought we were helping you Hrothgar? Is there really some evil here that you are working with, or are you doing this for Irenicus? Is... is he here somewhere even now laughing at our foolishness in trusting you? Hrothgar, tell me... is he here waiting to torture us some more?~
 IF ~~ THEN EXTERN NJHROJ 196
END

IF ~~ THEN BEGIN NEJ173
 SAY ~It's... it's not like we are being asked to kill real people is it? I mean they were real people once, brave people, but now they are just restless spirits... right?~
 IF ~True()~ THEN DO ~SetGlobal("VP_Astrolabe_Talks","GLOBAL",2) RealSetGlobalTimer("VP_Accalia_Hrothgar","GLOBAL",10)~ EXIT
 IF ~InParty("Sharteel") !Dead("Sharteel")~ THEN EXTERN ~SHARTJ~ kaylsold
 IF ~InParty("Accalia") !Dead("Accalia")~ THEN EXTERN ~ACCALIJ~ 40
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN JAHEIRAJ NEJ613
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN MINSCJ NEJ315
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARJ 44
END

IF ~~ THEN BEGIN NEJ174
 SAY ~You're not alone there Dar. Jaheira is always telling me to be wary and to maintain balance within myself, but do you know what Dar... no matter how wary I am I still find I fall over at times... (*giggles*)... and all this snow doesn't do much for a girl's balance either.~
 IF ~True()~ THEN DO ~SetGlobal("VP_Astrolabe_Talks","GLOBAL",2) RealSetGlobalTimer("VP_Accalia_Hrothgar","GLOBAL",10)~ EXIT
 IF ~InParty("Sharteel") !Dead("Sharteel")~ THEN EXTERN ~SHARTJ~ kaylsold
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROJ 206
 IF ~InParty("Accalia") !Dead("Accalia")~ THEN EXTERN ~ACCALIJ~ 40
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN JAHEIRAJ NEJ614
END

IF ~~ THEN BEGIN NEJ175
 SAY ~When we meet these heroes Minsc, you just have to remember what Kaylessa said, that they are the twisted spirits of what once were heroes. We are putting to rest that which should have been allowed to die a long time ago.~
 IF ~True()~ THEN EXTERN NJHROJ 208
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARJ 46
END

IF ~~ THEN BEGIN NEJ176
    SAY ~I hope this works <CHARNAME>, I really want out of here.~
 IF ~True()~ THEN DO ~SetGlobal("VP_Astrolabe_Talks","GLOBAL",4) ClearAllActions() StartCutSceneMode() StartCutscene("VPCutH07")~ EXIT
 IF ~InParty("Accalia")~ THEN EXTERN ~ACCALIJ~ 42
 IF ~InParty("Minsc")~ THEN EXTERN MINSCJ NEJ317
 IF ~InParty("Jaheira")~ THEN EXTERN JAHEIRAJ NEJ616
END

IF ~~ THEN BEGIN NEJ177
    SAY ~I don't care two hoots about balance Jaheira! It can be tipped upside down and standing on its head for all I care... I just want to go home.~
 IF ~True()~ THEN DO ~SetGlobal("VP_Astrolabe_Talks","GLOBAL",4) ClearAllActions() StartCutSceneMode() StartCutscene("VPCutH07")~ EXIT
 IF ~InParty("Accalia")~ THEN EXTERN ~ACCALIJ~ 42
 IF ~InParty("Minsc")~ THEN EXTERN MINSCJ NEJ317
END

IF ~~ THEN BEGIN NEJ178
 SAY ~Now hold on one darn minute Accalia! Who are you calling coward? You know nothing of our lives before we were thrown here... nothing... do you hear me, nothing?~
 IF ~~ THEN GOTO NEJ179
END

IF ~~ THEN BEGIN NEJ179
 SAY ~So before you begin to judge who is and who is not a coward ask yourself, is there really any point to us staying here, will our aid make a difference or are we wasting time trying to believe that it will?~
 IF ~InParty("Accalia")~ THEN EXTERN ~ACCALIJ~ 46
 IF ~InParty("Minsc")~ THEN EXTERN MINSCJ NEJ319
 IF ~InParty("Jaheira")~ THEN EXTERN JAHEIRAJ NEJ617
END

IF ~~ THEN BEGIN NEJ180
 SAY ~I guess they have said it all for me Accalia. I will miss you and when you meet this big evil, be sure you show him a fight for me.~
 IF ~True()~ THEN EXTERN NJHROJ 233
 IF ~InParty("njdar")~ THEN EXTERN NJDARJ 49
END

IF ~~ THEN BEGIN NEJ181 //3.01
 SAY ~You have to come with us Hrothgar. Why die fighting some evil thing when you don't need to. You can travel with <CHARNAME>, there is a lot of evil even in the future that needs fighting... Come on, what do you say Hrothgar?~
 IF ~~ THEN EXTERN NJHROJ 235 //-->H7.01
END

IF ~~ THEN BEGIN NEJ182 //3.02
 SAY ~You are clever sometimes Minsc. He is right Hrothgar, you can come with us and travel with <CHARNAME>. That's got to be better than staying here and being killed by some evil thing. Come on, what do you say Hrothgar?~
 IF ~~ THEN EXTERN NJHROJ 235 //-->H7.01
END

IF ~~ THEN BEGIN NEJ183
 SAY ~Now hold on one darn minute Accalia! Who are you calling coward? You know nothing of our lives before we were thrown here... nothing... do you hear me, nothing?~
 IF ~~ THEN GOTO NEJ184
END

IF ~~ THEN BEGIN NEJ184
 SAY ~So before you begin to judge who is and who is not a coward ask yourself, is there really any point to us staying here, will our aid make a difference or are we wasting time trying to believe that it will?~
 IF ~InParty("Accalia")~ THEN EXTERN ~ACCALIJ~ 54
 IF ~InParty("Minsc")~ THEN EXTERN MINSCJ NEJ323
 IF ~InParty("Jaheira")~ THEN EXTERN JAHEIRAJ NEJ621
END

IF ~~ THEN BEGIN NEJ185
 SAY ~I guess they have said it all for me Accalia. I will miss you and when you meet this big evil, be sure you show him a fight for me.~
 IF ~True()~ THEN EXTERN NJHROJ 258
 IF ~InParty("njdar")~ THEN EXTERN NJDARJ 59
END

IF ~~ THEN BEGIN NEJ186
 SAY ~Aaaw... quit worrying Hrothgar! <CHARNAME> has never made a wrong decision yet. Have you <CHARNAME>?~
 IF ~~ THEN REPLY ~I am not convinced that my decisions are always right Imoen, but they do have a knack of coming out right in the end.~ DO ~SetGlobal("VP_Astrolabe_Talks","GLOBAL",7) SetGlobal("VP_BackTo_Kuldahar","GLOBAL",2)~ GOTO NEJ187
 IF ~~ THEN REPLY ~Thanks for the vote of confidence Imoen, let's hope this one comes out okay.~ DO ~SetGlobal("VP_Astrolabe_Talks","GLOBAL",7) SetGlobal("VP_BackTo_Kuldahar","GLOBAL",2)~ GOTO NEJ187
 IF ~~ THEN REPLY ~No... and that's why this is the right one too.~ DO ~SetGlobal("VP_Astrolabe_Talks","GLOBAL",7) SetGlobal("VP_BackTo_Kuldahar","GLOBAL",2)~ GOTO NEJ187
END

IF ~~ THEN BEGIN NEJ187
 SAY ~So... what are we waiting for? Let's get out of here!~
 IF ~~ THEN EXTERN NJHROJ 262
END

IF ~~ THEN BEGIN NEJ188
 SAY ~Pretty good magic user though and an ok fellow... if you didn't listen to him too closely that was.~
 IF ~~ THEN REPLY ~It was pretty hard not to listen to him ... why do you think I stuck him at the back of the group all the time? Anyway, enough talk, we must move on before we share Erevain's fate and become a meal for the creatures of this place.~ EXTERN NJHROJ 271
 IF ~~ THEN REPLY ~He had his uses, magic users were in short supply back then... or at least any that were willing to join our inexperienced little group, but that was then and this is now. We can do no more here, let us move on before we share this fools fate.~ EXTERN NJHROJ 271
END

IF ~~ THEN BEGIN NEJ189
 SAY ~Great! Just great! Now we get to be dogs in a dogfight. I wonder how much he has bet on the winner.~
 IF ~OR(2) !InParty("Jaheira") Dead("Jaheira")~ THEN REPLY ~For now, let's just make sure that one of these enemies is unhappy with the outcome.~ EXTERN NJHROJ 284
 IF ~OR(2) !InParty("Jaheira") Dead("Jaheira")~ THEN REPLY ~Each foe we dispatch leaves us one step closer to solving this puzzle.~ EXTERN NJHROJ 284
 IF ~OR(2) !InParty("Jaheira") Dead("Jaheira")~ THEN REPLY ~Ah! Who cares? Lets just plant these vermin!~ EXTERN NJHROJ 284
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN JAHEIRAJ NEJ631
END

IF ~~ THEN BEGIN NEJ190
 SAY ~(*Rolling her eyes*) You two are incorrigible.~
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NEJ191
 SAY ~You have to come with us Hrothgar. Why die fighting some evil thing when you don't need to. You can travel with <CHARNAME>, there is a lot of evil even in the future that needs fighting... Come on, what do you say Hrothgar?~
 IF ~~ THEN EXTERN NJHROJ 287
END

IF ~Global("VP_Imoen_In_IWD","GLOBAL",2)~ THEN BEGIN NEJ192 // 1
 SAY ~What's up <CHARNAME>, you look as though you've seen a ghost?~
  IF ~~ THEN REPLY ~This is not possible! What is going on here?~ DO ~SetGlobal("VP_Imoen_In_IWD","GLOBAL",3)~ GOTO NEJ204 //--> 2
 IF ~~ THEN REPLY ~I... I know that man Imoen... at least I know of him.~ DO ~SetGlobal("VP_Imoen_In_IWD","GLOBAL",3)~ GOTO NEJ193 ////--> 3
 IF ~~ THEN REPLY ~What trick has that wizard played on us this time? I swear I will have his hide for this!~ DO ~SetGlobal("VP_Imoen_In_IWD","GLOBAL",3)~ GOTO NEJ200//--> 10
END

IF ~~ THEN BEGIN NEJ193 // 3
 SAY ~Now you're really scaring me! We've never been here before... I would remember all this snow if we had. How can you know him?~
 IF ~~ THEN REPLY ~I did not say I know him, only I know of him. Hrothgar of Easthaven, the name has become a legend in our time.~ GOTO NEJ194
 IF ~~ THEN REPLY ~There is something very wrong here. Legend says Hrothgar of Easthaven died over 100 years ago!~ GOTO NEJ194
 IF ~~ THEN REPLY ~I remember Gorion telling me stories of great men and women. Legends of heroes who have left their mark on The Realms in some way. Hrothgar of Easthaven was such a man.~ GOTO NEJ194
END

IF ~~ THEN BEGIN NEJ194
 SAY ~Did you hit your head in the portal? I always thought legends were stories of dead heroes... not live ones and Hrothgar didn't look like a ghost to me. Admitted he looked a bit worn around the edges but he was still breathing, you're the one looking all pale and sounding scary.~
 IF ~~ THEN REPLY ~Legend tells of Hrothgar dying at the hand of a demon as he tried to defend his town, the town of Easthaven. You heard the man himself say, this is Easthaven!~ GOTO NEJ195
 IF ~~ THEN REPLY ~My head is fine thank you Imoen. Hrothgar was said to have lost his life defending the town of Easthaven from a demon and yet, here we are in Easthaven and we have spoken to Hrothgar, is it any wonder I seem a little confused.~ GOTO NEJ195
 IF ~~ THEN REPLY ~I no more understand it than you. We are in Easthaven and Hrothgar is very much alive. Somehow we have been sent back in time and I do not mind betting that it is all Irenicus doing!~ GOTO NEJ195
END

IF ~~ THEN BEGIN NEJ195
 SAY ~Irenicus! He's done this on purpose... I just know it! He's had his fun torturing us and now he's sent us back in time to keep us from getting our own back on him, or to make sure we don't tell anyone of all those horrible things he did to us back in that dungeon of his.~
 IF ~~ THEN REPLY ~We are in the past yes, but I am sure if Irenicus merely wanted to rid himself of us, we would be dead. Men like him have no conscience, nor do they fear retribution. No, we are here for a reason, you can be sure of that.~ GOTO NEJ196
 IF ~~ THEN REPLY ~If Irenicus meant for us to be here, then I can only imagine that he hopes we will change the past by some deed or action that will secure the future he wants for himself.~ GOTO NEJ196
 IF ~~ THEN REPLY ~We know how devious and brutal Irenicus is, he would not have had us come here if not for some devious, monstrous plan he has in that twisted head of his!~ GOTO NEJ196
END

IF ~~ THEN BEGIN NEJ196
 SAY ~(*Her face pales*) Even if we discover why he sent us here, we aren't going to help him... are we <CHARNAME>? We'll find a way to get home, and when we do, we are going to pay him back... right?~
 IF ~~ THEN REPLY ~You bet we are Imoen... and when we do find him, I will show him who is the puppet and who is the puppet master!~ GOTO NEJ197
 IF ~~ THEN REPLY ~Even if I have to wait the next hundred years out... I will find him Imoen and when I do, it'll be him caged and tortured in that hell hole of his.~ GOTO NEJ198
 IF ~~ THEN REPLY ~Believe me Imoen, Irenicus's days are numbered even as we stand here. I am not about to let a little thing like where or when we are keep me from cutting out that black heart of his and handing it to him... still beating!~ GOTO NEJ199
END

IF ~~ THEN BEGIN NEJ197
 SAY ~(*Her face brightens a little at your words*) Then what are we waiting for, let's go find us another portal and kick some ass.~
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NEJ198
 SAY ~(*A faint smile crosses her lips at your words*) Let's hope we don't have to wait that long. When we catch up with Irenicus, I want to be able to walk up to him and look him straight in the eye as he gets what's coming to him. Somehow, I don't think the sight of me in a bath chair, struggling to look him in the eye is going to have the impact I am hoping for.~
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NEJ199
 SAY ~(*Her face pales even more at your words*) It... it's nothing more than he deserves after the things he did to us, but in a way, that would make us no better than him. I'll be happy just to get the chance to put an arrow of detonation straight through that torturing heart of his.~
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NEJ200 // 10
 SAY ~What's wrong <CHARNAME>... I don't think I've ever seen you this angry before and it's scaring me?~
 IF ~~ THEN REPLY ~That madman has sent us to the past Imoen! To be be more specific, he has sent us at least 100 years into the past!~ GOTO NEJ201
 IF ~~ THEN REPLY ~He is playing with my head again! To let me think I am free and then to show me that it is only an illusion! Curses on him, he will regret crossing me when I catch up to him!~ GOTO NEJ202
 IF ~~ THEN REPLY ~He cannot do this! He refuses to face me and sends us here instead!~ GOTO NEJ203
END

IF ~~ THEN BEGIN NEJ201
 SAY ~The past! I don't understand... how can we be in the past? <CHARNAME> please, we've only been here a short while, how can you possibly know we are in the past?~
 IF ~~ THEN REPLY ~That man, Hrothgar, I know him or at least I know what legend speaks of him. He died over 100 years ago defending his town from some demon. That town was Easthaven, the very same town that we now find ourselves in.~ GOTO NEJ195
 IF ~~ THEN REPLY ~This has to be another of his accursed experiments, damn this insanity! Legend says that Hrothgar of Easthaven died over 100 years ago Imoen, he died defending this very town!~ GOTO NEJ195
END

IF ~~ THEN BEGIN NEJ202
 SAY ~No, that can't be true <CHARNAME>! He messed with both our heads whilst we were in that horrible dungeon of his, but here we are free of him. Where ever here is, I just know that there is no way he can still be messing with us.~
 IF ~~ THEN REPLY ~How are we free of him Imoen? If this is to be believed, then that damned portal of his has catapulted us back into the past, which probably means only he can return us to our own time.~ GOTO NEJ195
 IF ~~ THEN REPLY ~You think so Imoen? Do you believe Irenicus capable of travelling to the past, because if you believe all this to be real and not in my head, then that is where we are now, in the past.~ GOTO NEJ195
 IF ~~ THEN REPLY ~Free of him you say Imoen, if you say he is not playing with my head, then we have all been sent back into the past. I doubt he would do that so we could be free of him!~ GOTO NEJ195
END

IF ~~ THEN BEGIN NEJ203
 SAY ~Irenicus... you are talking about Irenicus aren't you <CHARNAME>? You think he sent us here don't you? If he did and you know where we are, then we can find our way home again... right?~
 IF ~~ THEN REPLY ~If I am right then home and Irenicus are both a long way away Imoen, or should I say a long way into the future... for we are now in the past. Damn Irenicus and his portal.~ GOTO NEJ195
 IF ~~ THEN REPLY ~I don't know Imoen, somehow that insane mage has transported us back into the past and unless we find another portal then we may never see our own time again.~ GOTO NEJ195
 IF ~~ THEN REPLY ~Oh... I know where we are Imoen, I even know when we are and yes, I believe this is all Irenicus's doing! That damn portal of his has catapulted us into the past, putting him well out of my reach!~ GOTO NEJ195
END

IF ~~ THEN BEGIN NEJ204 // 2
    SAY ~Please, you're beginning to scare me <CHARNAME>. What's not possible... is it something to do with that man, Hrothgar?~
     IF ~~ THEN REPLY ~I... I know that man Imoen... at least I know of him.~ GOTO NEJ193
     IF ~~ THEN REPLY ~Hrothgar! A name I know but this makes no sense!~ GOTO NEJ193
END

IF ~~ THEN BEGIN NEJ205
    SAY ~(*Groans*)... Aargh... another portal! What is it with this mage, doesn't he believe in good old fashioned wooden doors?~
 IF ~~ THEN EXTERN NJHROJ 371
END

IF ~~ THEN BEGIN NEJ206
  SAY ~(*She turns deathly pale and begins shaking*)... Hrothgar please... Irenicus did horrible things to <CHARNAME> and me. He wasn't angry when he did those things, but he will be now and I don't think I could stand it if he caught us again.~
  IF ~~ THEN GOTO NEJ207
END

IF ~~ THEN BEGIN NEJ207
  SAY ~Please Hrothgar, you teleported us once, please do it again... get us out of here... please!~
  IF ~~ THEN EXTERN ~SHARTJ~ imscared
END

IF ~~ THEN BEGIN NEJ208
  SAY ~What ever you say <CHARNAME>, but let's do it quickly because I really want out of here!~
 IF ~~ THEN DO ~SetGlobal("VP_Hrothgar_Interjects","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN NEJ209
  SAY ~(*She shivers and pales slightly*)... We don't really know what's on the other side... do we? It could be another demon, it could be a whole horde of demons! Or worse... it could be Irenicus!~
  IF ~~ THEN GOTO NEJ210
END

IF ~~ THEN BEGIN NEJ210
  SAY ~Please <CHARNAME>, I don't know if I can face going through another portal, not if Irenicus is waiting for us on the other side. There has to be another way, there has to...~
  IF ~~ THEN GOTO NEJ211
END

IF ~~ THEN BEGIN NEJ211
  SAY ~Hrothgar... you... you teleported us once, please do it again... please, get us out of here!~
  IF ~~ THEN EXTERN ~SHARTJ~ imscared
END

IF ~~ THEN BEGIN NEJ212
  SAY ~(*She turns deathly pale and begins shaking*)... Nooo... please <CHARNAME>, if there's the slightest chance that Irenicus is on the other side of this portal, just waiting to torture us some more, I don't want to go that way! Please, don't make me, please...~
  IF ~~ THEN GOTO NEJ211
END

IF ~~ THEN BEGIN nejstart
  SAY ~(*Noticeably a shade paler*)... I... I've seen enough blood thank you! Irenicus has the same fascination with it as you Shar-Teel... only he likes to share his depravity!~
  IF ~~ THEN EXTERN ~SHARTJ~ nejopen2
END

IF ~~ THEN BEGIN sharaval
  SAY ~You are so cruel Shar-Teel! I don't know why <CHARNAME> didn't leave you locked in your cage for Irenicus to play with... but then again, I reckon you might have found an ally in your love of bloodshed!~
    IF ~True()~ THEN EXTERN NJHROJ 401
    IF ~InParty ("Jaheira")~ THEN EXTERN JAHEIRAJ sharaval
END

IF ~~ THEN BEGIN NEJ206fix
  SAY ~(*She turns deathly pale and begins shaking*)... Hrothgar please... Irenicus did horrible things to <CHARNAME> and me. He wasn't angry when he did those things, but he will be now and I don't think I could stand it if he caught us again.~
  IF ~~ THEN GOTO NEJ207fix
END

IF ~~ THEN BEGIN NEJ207fix
  SAY ~Please Hrothgar, you teleported us once, please do it again... get us out of here... please!~
    IF ~~ THEN EXTERN NJHROJ 372
END

IF ~~ THEN BEGIN NEJ209fix
  SAY ~(*She shivers and pales slightly*)... We don't really know what's on the other side... do we? It could be another demon, it could be a whole horde of demons! Or worse... it could be Irenicus!~
  IF ~~ THEN GOTO NEJ210fix
END

IF ~~ THEN BEGIN NEJ210fix
  SAY ~Please <CHARNAME>, I don't know if I can face going through another portal, not if Irenicus is waiting for us on the other side. There has to be another way, there has to...~
  IF ~~ THEN GOTO NEJ211fix
END

IF ~~ THEN BEGIN NEJ211fix
  SAY ~Hrothgar... you... you teleported us once, please do it again... please, get us out of here!~
    IF ~~ THEN EXTERN NJHROJ 372
END

IF ~~ THEN BEGIN NEJ212fix
  SAY ~(*She turns deathly pale and begins shaking*)... Nooo... please <CHARNAME>, if there's the slightest chance that Irenicus is on the other side of this portal, just waiting to torture us some more, I don't want to go that way! Please, don't make me, please...~
  IF ~~ THEN GOTO NEJ211fix
END

IF ~~ THEN BEGIN IWDEREV1
  SAY ~Oh yes, we'll have so much to share with you. Great foods such as mud pies, butterfly wheels, and pixie stuffing!~
    IF ~~ THEN EXTERN ~EREVAINJ~ 4
END

IF ~~ THEN BEGIN IWDEREV2
  SAY ~Oh, don't take everything so literal Erevain. There's so many fun things to experience! You'll love it somewhere warmer.~
    IF ~~ THEN EXTERN ~EREVAINJ~ 5
END
END