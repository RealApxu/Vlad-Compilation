APPEND BVALYG25

IF WEIGHT #-31 ~Global("ExpLoveTalk","LOCALS",2)~ THEN BVALYG25 TS152
~You remind me of a nightingale I heard singing last morn. It was high above the Toril, but yet not so high so that his song couldn't reach the ground anymore... That's how you are. You are above us mortals, but you are still among us. Your power grows and my heart tells me that you are one of those who might walk among the gods one day. Would you fly high into the sky, given the choice?~
END
 ++ ~It's meaningless to ponder about such things before the choice is offered, Valygar. I am a mortal woman for now, and as such I do not know what the future has in store for me. I care only of staying alive from dawn to dawn.~ EXTERN BVALYG25 TS153
 ++ ~I would, Valygar.~ EXTERN BVALYG25 TS154
 ++ ~Me, a goddess? No, I am not applying for a job like that. I'd die from overexertion trying to do things right. A group of five-six people I can manage, but an army of power-hungry priests, fanatical devotees and annoying avatars? Nope, I want no part of it.~ EXTERN BVALYG25 TS155
 ++ ~I was born mortal and I will stay mortal. I wish to take all I can from life. Adventure, romance, may be family and quiet retirement one day.~ EXTERN BVALYG25 TS157

CHAIN BVALYG25 TS153
~I understand... You are a very sensible person <CHARNAME>. I hope you will not fly too far away one day.~
DO ~SetGlobal("ExpLoveTalk","LOCALS",3) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",600) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~ 
EXIT

CHAIN BVALYG25 TS154
~So you have decided already. I see. Very well, do what you need to do. But remember that from so far away you will be just a speck to those you loved and who loved you. Their voices will be lost in the constant stream of your devotee's prayers.~
END
 ++ ~On second thought you may be right, Valygar. I should think more on that.~ EXTERN BVALYG25 TS155
 ++ ~And that's the way I want it. ~ EXTERN BVALYG25 TS156

CHAIN BVALYG25 TS155
~I hope you are serious. I can never tell it with you.~
DO ~SetGlobal("ExpLoveTalk","LOCALS",3) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",600) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~ 
EXIT

CHAIN BVALYG25 TS156
~Fine. Do what you want... it's got nothing to do with me.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",3) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~ 
EXIT

CHAIN BVALYG25 TS157
~Really? You want all those things? But that's wonderful! Well, I mean, it's great that you know so well what you want.~
DO ~SetGlobal("ExpLoveTalk","LOCALS",3) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",600) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~ 
EXIT

CHAIN
IF WEIGHT #-30 ~Global("ExpLoveTalk","LOCALS",4)~ THEN BVALYG25 TS158
~When I walk over the fallen leaves I often think that those are the past days of my life. Some are bright, some dark, some half-rotten... But it does not matter any more. The past is the past and future we know not. What we need to worry about is today. Do you agree, <CHARNAME>?~
END
 ++ ~Melancholy does not suit you, Valygar. But you are right: who gives a damn about the past? And what is the point to try to guess what is in store for us? Today is real. Let's try to make it a great day.~ EXTERN BVALYG25 TS159
 ++ ~Both the past and the future are important. Today is the consequence of yesterday's doings. Tomorrow is what we are looking forward to, when the things get rough.~ EXTERN BVALYG25 TS163
 ++ ~(*sigh*): The desires of my siblings are about to come true: I am going to die of boredom, talking to you. Is that what you want?~ EXTERN BVALYG25 TS164

CHAIN BVALYG25 TS159
~I guess, I'll try to be more cheerful to please you next time I speak to you. As of late I do not care much for anything in my past that was not connected to you. I do not care what is in store for tomorrow as long as I can be around you.~
END
 ++ ~I... I do not know what to say...~ EXTERN BVALYG25 TS160
 ++ ~Valygar, let's not continue this conversation. Do not walk on the thin ice, for you might fall through it and drown.~ EXTERN BVALYG25 TS161
 ++ ~(*stay silent*)~ EXTERN BVALYG25 TS160
 ++ ~I feel the same way, Valygar.~ EXTERN BVALYG25 TS162

CHAIN BVALYG25 TS160
~Say nothing then.~
DO ~SetGlobal("ExpLoveTalk","LOCALS",5) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",600) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~ 
EXIT

CHAIN BVALYG25 TS161
~I am not easily frightened, <CHARNAME>.~
DO ~SetGlobal("ExpLoveTalk","LOCALS",5) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",600) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~ 
EXIT

CHAIN BVALYG25 TS162
~You give me hope that one day there will be more to our lives than swords and spells... But... even now we need to go.~
DO ~SetGlobal("ExpLoveTalk","LOCALS",5) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",600) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~ 
EXIT

CHAIN BVALYG25 TS163
~Maybe... I am nearing thirty and all that has passed cannot be washed away from my soul by soap or by ale. But as of late I do not care much for anything in my past that was not connected to you. I do not care what is in store for tomorrow as long as I can be around you.~
END
 ++ ~I... I do not know what to say...~ EXTERN BVALYG25 TS160
 ++ ~Valygar, let's not continue this conversation. Do not walk on the thin ice, for you might fall through it and drown.~ EXTERN BVALYG25 TS161
 ++ ~(*stay silent*)~ EXTERN BVALYG25 TS160
 ++ ~I feel the same way Valygar.~ EXTERN BVALYG25 TS162

CHAIN BVALYG25 TS164
~I-I'm sorry, <CHARNAME>... I didn't mean to bother you. I'll talk to somebody else, instead.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",3) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~ 
EXIT

CHAIN
IF WEIGHT #-29 ~Global("ExpLoveTalk","LOCALS",6)~ THEN BVALYG25 TS165
~I was dreaming of the ocean, <CHARNAME>. And of my mother. All I have left of her is the name of the village in northern Zakhara that she came from. She used to promise me that one day we'd take a ship and voyage to Zakhara... It never came to be.~
END
 ++ ~That's so sad. May be one day you can travel there on your own and see your people.~ EXTERN BVALYG25 TS166
 ++ ~Where is Zakhara? What was your mother's name? How did she end up in Faerun? Why...~ EXTERN BVALYG25 TS176
 ++ ~Well, you cannot do anything about it now, can you? You mother is, ah, dead, is she not?~ EXTERN BVALYG25 TS177

CHAIN BVALYG25 TS166
~Maybe. You know, I dream sometimes about building a ship and sailing to Zakhara.~
END
 ++ ~Ranger on the high seas... Valygar, do hire professional help, if you go for it, won't you? ~ EXTERN BVALYG25 TS167
 ++ ~That sounds so romantic...~ EXTERN BVALYG25 TS174
 ++ ~Yeah, sure. Whatever you say.~ EXTERN BVALYG25 TS175

CHAIN BVALYG25 TS167
~Are you worried about me? I would hire help to build the ship, of course... But I also thought about help of another kind... Do you think that one day, when your quest is over, you might want to come along? I will steer the ship and you will sing to the winds and waves to make our passage a pleasure.~
END
 ++ ~Hmm, I must tell you that I have other obligations after my quest is done... Sorry Valygar, it seems that you will have to go on your own, but I wish you the very best of luck.~ EXTERN BVALYG25 TS168
 ++ ~No, I would not. I am sure you will find someone else to sit under the white sails of your ship, Valygar.~ EXTERN BVALYG25 TS168
 ++ ~I... I would. But only if your navigational skills are better then my singing... Otherwise we'd drown before lifting the anchor.~ EXTERN BVALYG25 TS169
 ++ ~I will come with you Valygar. But I am afraid that day may be far away...~ EXTERN BVALYG25 TS173

CHAIN BVALYG25 TS168
~Oh... of course, <CHARNAME>. I didn't mean to bother you.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",3) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~ 
EXIT

CHAIN BVALYG25 TS169
~We can both learn... Or if we are hopeless, we can take a merchant ship... It might not be so beautiful, but...~
END
 ++ ~Do finish the sentence, Valygar. ~ EXTERN BVALYG25 TS170

CHAIN BVALYG25 TS170
~...but we would still be together.~
END
 ++ ~I knew you would say that. I like that idea.~ EXTERN BVALYG25 TS171
 IF ~InParty("Anomen")~ THEN REPLY ~Well, some of our companions may join in the venture.~ EXTERN BVALYG25 TS172
 ++ ~Glad you pointed that out. On the second thought I changed my mind. I do not want to go anywhere alone with you.~ EXTERN BVALYG25 TS168

CHAIN BVALYG25 TS171
~You are kind to say so, my lady. Thank you.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",2) SetGlobal("ExpLoveTalk","LOCALS",7) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~ 
EXIT

CHAIN BVALYG25 TS172
~As you wish. Let my cold silence be your companion, then.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",3) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~ 
EXIT

CHAIN BVALYG25 TS173
~It does not matter how far away that day is. The plans are laid and I will do my best to help you through the terrible mess your heritage turned your life into. Just stay alive and I will wait as long as is required.~
END
 ++ ~You take care of yourself too, Valygar.~ EXTERN BVALYG25 TS171

CHAIN BVALYG25 TS174
~(*coughs*) Do you think that one day, when your quests are over, you'd want to come along? I will steer the ship and you will sing to the winds and waves to make our passage a pleasure?~
END
 ++ ~Hmm, I must tell you that I have other obligations after my quests are done... Sorry Valygar, it seems that you would have to go on your own, but I wish you the very best of luck.~ EXTERN BVALYG25 TS168
 ++ ~No, I would not. I am sure you will find someone else to sit under the white sails of your ship, Valygar.~ EXTERN BVALYG25 TS168
 ++ ~I... I would. But only if your navigational skills are better then my singing... Otherwise we'd drown before lifting the anchor.~ EXTERN BVALYG25 TS169
 ++ ~I will come with you Valygar. But I am afraid that day may be far away...~ EXTERN BVALYG25 TS174

CHAIN BVALYG25 TS175
~Oh, well that's okay, then.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",3) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~ 
EXIT

CHAIN BVALYG25 TS176
~I did not know that my past is so interesting to you. Abyssina is my mother's name... as I told you before. As far as I know she was a war mage on a ship which stopped in Athkatla... and that's how she met my father... Zakhara is a large land south from Faerun and that's where my mother came from. You know, I dream sometimes about building a ship and sailing to Zakhara...~
END
 ++ ~Ranger on the high seas... Valygar, do hire professional help, if you go for it, won't you? ~ EXTERN BVALYG25 TS167
 ++ ~That sounds so romantic...~ EXTERN BVALYG25 TS174
 ++ ~Yeah, sure. Whatever you say.~ EXTERN BVALYG25 TS175

CHAIN BVALYG25 TS177
~You mean: I killed her? Not her, an undead monster she became... still, it's always haunted me. I never really knew her. She was always too busy to talk to me when I was growing up. Then I stopped trying. But I dream sometimes about building a ship and sailing to Zakhara.~
END
 ++ ~Ranger on the high seas... Valygar, do hire professional help, if you go for it, will you? ~ EXTERN BVALYG25 TS167
 ++ ~That sounds so romantic.~ EXTERN BVALYG25 TS174
 ++ ~Yeah, sure. Whatever you say.~ EXTERN BVALYG25 TS175

CHAIN
IF WEIGHT #-28 ~Global("ExpLoveTalk","LOCALS",8)~ THEN BVALYG25 TS68
~<CHARNAME>, your face shows your emotions so well. You are curious about something and hesitate to ask... Am I right?~
END
 ++ ~Nay, I was just updating the list of my Bhaalspawn half-brothers and sisters. I have to do it every night, lest I forgot somebody.~ EXTERN BVALYG25 TS69
 ++ ~Yes... you are right. I am curious and I have a question that I'm afraid to ask...~ EXTERN BVALYG25 TS71
 ++ ~Good thing you noticed! I'm dying to ask you something...~ EXTERN BVALYG25 TS71

CHAIN BVALYG25 TS69
~I see... the grievances of being a child of a prolific Lord...~
END
 ++ ~Yep. Damn! I lost count again! Do not disturb me!~ EXTERN BVALYG25 TS70
 ++ ~Valygar, do you ever take a break? I am so sick of you!~ EXTERN BVALYG25 TS70
 ++ ~It can wait. May be you would not mind answering a personal question?~ EXTERN BVALYG25 TS71

CHAIN BVALYG25 TS70
~Oh... of course, <CHARNAME>. I didn't mean to bother you.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",3) RestParty()~ 
EXIT

CHAIN BVALYG25 TS71
~I suppose so, what is it you would ask?~
END
 ++ ~Hmm... What is your mother's family name?~ EXTERN BVALYG25 TS72
 ++ ~I was wondering if you have a girl somewhere waiting for you...~ EXTERN BVALYG25 TS74
 ++ ~Forget it. I wanted to ask you something far too personal... Merella, was she the one and only for you? I mean have you been in love since?~ EXTERN BVALYG25 TS74

CHAIN BVALYG25 TS72
~Monroe. Is that all?~
END
 ++ ~Abyssina Monroe. Sounds good.~ EXTERN BVALYG25 TS73
 ++ ~No. On totally unrelated topic: Merella, was she the one and only for you? I mean have you been in love since?~ EXTERN BVALYG25 TS74
 ++ ~Actually I wanted to ask about your love life... but it's not very tactful...~ EXTERN BVALYG25 TS74

CHAIN BVALYG25 TS73
~(*though being confused, he stays silent*)~
DO ~SetGlobal("ExpLoveTalk","LOCALS",9) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) RestParty()~ 
EXIT

CHAIN BVALYG25 TS74
~Oh, I should have expected this after my tactless questions. Yes, I had a lover. No, I am not involved currently. Is that what you wanted to know?~
END
 ++ ~I am sorry. You look upset, I must have touched a nerve... This must have been a painful experience for you...~ EXTERN BVALYG25 TS75
 ++ ~Yes, that satisfies my curiosity completely... Unless you want to tell me more...~ EXTERN BVALYG25 TS75
 ++ ~Thank you. Good night.~ EXTERN BVALYG25 TS77

CHAIN BVALYG25 TS75
~(*recites quietly*):

A fool there was and he made his prayer
To a rag and a bone and a hank of hair
(We called her the woman who did not care),
But the fool he called her his lady fair...~
END
 ++ ~"So some of him lived but the most of him died? " You know, I do not believe that... and I hate this poem. It is so full of despair.~ EXTERN BVALYG25 TS76
 ++ ~Huh, poetry? You are full of surprises ranger.~ EXTERN BVALYG25 TS77
 ++ ~Oh, that's too gloomy for me. Good night.~ EXTERN BVALYG25 TS77

CHAIN BVALYG25 TS76
~I should have known better than trying to impress a child who was brought up in Candlekeep Library... There was a time when I hated this poem also... may be I shall hate it again, who knows?~
DO ~SetGlobal("ExpLoveTalk","LOCALS",9) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) RestParty()~ 
EXIT

CHAIN BVALYG25 TS77
~Good night to you, troublemaker.~
DO ~SetGlobal("ExpLoveTalk","LOCALS",9) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) RestParty()~ 
EXIT

CHAIN
IF WEIGHT #-27 ~Global("ExpLoveTalk","LOCALS",10) Global("ExpBvalygar3","LOCALS",0)~ THEN BVALYG25 TS16
~Something has been troubling me... may I talk to you?~ [VALY2504]
END
 ++ ~Certainly, Valygar. What's on your mind?~ DO ~SetGlobal("ExpBvalygar3","LOCALS",1) SetGlobal("ExpLoveTalk","LOCALS",11) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200)~ EXTERN BVALYG25 18
 ++ ~If you must. Try to make it quick, though.~ DO ~SetGlobal("ExpBvalygar3","LOCALS",1) SetGlobal("ExpLoveTalk","LOCALS",11) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200)~ EXTERN BVALYG25 18
 ++ ~I'm not really in the mood to talk right now.~ DO ~SetGlobal("ExpBvalygar3","LOCALS",1) SetGlobal("ExpLoveTalk","LOCALS",11) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200)~ EXTERN BVALYG25 17

CHAIN
IF WEIGHT #-26 ~Global("ExpLoveTalk","LOCALS",10) !Global("ExpBvalygar3","LOCALS",0)~ THEN BVALYG25 TS82A
~Do you watch the stars often? You look dreamy. Which one attracted your attention? The magnificent Correlian? The best place to see Correlian is from Evereska they say. Or was it Auranamn, the swordsman of the sky?~
END
 ++ ~I do not know what you are talking about. I was just stretching my neck.~ EXTERN BVALYG25 TS83
 ++ ~Auranamn it was. He still guards the elves, and directs them to good, as he did when he sided with Correllon during the great battle with Gruumsh. His spirit will never die. May be he can protect me from my destiny?~ EXTERN BVALYG25 TS96
 ++ ~You are versed in star lore as well?~ EXTERN BVALYG25 TS97
 ++ ~Your voice is different when you talk of the stars. Do you love stargazing?~ EXTERN BVALYG25 TS97

CHAIN
IF WEIGHT #-25 ~Global("ExpLoveTalk","LOCALS",12)~ THEN BVALYG25 TS82B
~Do you watch the stars often? You look dreamy. Which one attracted your attention? The magnificent Correlian? The best place to see Correlian is from Evereska they say. Or was it Auranamn, the swordsman of the sky?~
END
 ++ ~I do not know what you are talking about. I was just stretching my neck.~ EXTERN BVALYG25 TS83
 ++ ~Auranamn it was. He still guards the elves, and directs them to good, as he did when he sided with Correllon during the great battle with Gruumsh. His spirit will never die. May be he can protect me from my destiny?~ EXTERN BVALYG25 TS96
 ++ ~You are versed in star lore as well?~ EXTERN BVALYG25 TS97
 ++ ~Your voice is different when you talk of the stars. Do you love stargazing?~ EXTERN BVALYG25 TS97

CHAIN BVALYG25 TS83
~In that case can I ease your pain? Here, let me massage your neck.~
END
 ++ ~Oh, it's so pleasant. You are sweet. Now what were you talking about?~ EXTERN BVALYG25 TS84
 ++ ~Valygar, I wish you won't offer yourself as a remedy to my every problem.~ EXTERN BVALYG25 TS90
 ++ ~Do not stop, it feels wonderful. Will you stay with me for a while tonight?~ EXTERN BVALYG25 TS91

CHAIN BVALYG25 TS84
~I was talking of the stars, nightingale. The thirteen stars over there represent Correlian, a sacred constellation of elves. And there is Auranamn, the swordsman. It's ironic that the hero has a terrible gem on the pommel of his sword, the Kingslayer - do you see this bright yellow star?~
END
 ++ ~The Kings Coin as humans call it? Valygar, is your arm on my shoulder?~ EXTERN BVALYG25 TS85

CHAIN BVALYG25 TS85
~Does it inconvenience you?~
END
 ++ ~Yes it does. It is a bit too... intimate for my liking. I think this talk is over.~ EXTERN BVALYG25 TS86
 ++ ~No, not at all. I just wanted to know if you knew.~ EXTERN BVALYG25 TS87
 ++ ~(*move closer and do not answer*)~ EXTERN BVALYG25 TS87

CHAIN BVALYG25 TS86
~Of course, nightingale. I am sorry... I was impatient. I will go now and leave you in peace.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",3) RestParty()~ 
EXIT

CHAIN BVALYG25 TS87
~You are like a star yourself, beautiful and mysterious. And you are so close. I hear you breathing and I hear how your heart beats. I wish to be with you more than anything else. Will you be mine tonight, <CHARNAME>? Will you have me?~
END
 ++ ~Oh, will you already stop speaking and kiss me?~ EXTERN BVALYG25 TS88
 ++ ~Yes, Valygar. We both know that it is bound to happen, so why not tonight?~ EXTERN BVALYG25 TS88
 ++ ~No, not tonight. Maybe another time.~ EXTERN BVALYG25 TS89
 ++ ~Are you crazy? I am not that sort of a girl.~ EXTERN BVALYG25 TS89

CHAIN BVALYG25 TS88
~Ohhhh.... Mmmmm......~
DO ~SetGlobal("ExpLoveTalk","LOCALS",13) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) ClearAllActions() StartCutSceneMode() StartCutScene("CUT34A")~ 
EXIT

CHAIN BVALYG25 TS89
~Of course, nightingale. I am sorry... I was impatient. Sleep well.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",3) RestParty()~ 
EXIT

CHAIN BVALYG25 TS90
~I will not. I am sorry.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",3) RestParty()~ 
EXIT

CHAIN BVALYG25 TS91
~I will sit with you for as long as you need me. I will watch over you when you fall asleep and I will guard you.~
END
 ++ ~Guarding was not exactly what I had in mind, Valygar.~ EXTERN BVALYG25 TS92
 ++ ~Well, I will feel very safe and very disappointed then.~ EXTERN BVALYG25 TS95
 ++ ~My personal ranger-protector. Thank you. I will go to sleep then. Good night, Valygar.~ EXTERN BVALYG25 TS89

CHAIN BVALYG25 TS92
~I know. You are so close. I hear you breathing and I hear how your heart beats. I wish to be with you more than anything else. Will you be mine tonight, <CHARNAME>? Will you have me?~
END
 ++ ~Oh, will you already stop speaking and kiss me?~ EXTERN BVALYG25 TS88
 ++ ~Yes, Valygar. We both know that it is bound to happen, so why not tonight?~ EXTERN BVALYG25 TS88
 ++ ~No, not tonight. Maybe another time.~ EXTERN BVALYG25 TS93
 ++ ~Get lost.~ EXTERN BVALYG25 TS94

CHAIN BVALYG25 TS93
~Of course, nightingale. I am sorry... I was impatient. Sleep well.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",3) RestParty()~ 
EXIT

CHAIN BVALYG25 TS94
~Fine, fine. Do not make a habit of teasing men. You are playing with fire.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",3) RestParty()~ 
EXIT

CHAIN BVALYG25 TS95
~Disappointed? May I ask you something? You are so close. I hear you breathing and I hear how your heart beats. I wish to be with you more than anything else. Will you be mine tonight, <CHARNAME>? Will you have me?~
END
 ++ ~Oh, will you already stop speaking and kiss me?~ EXTERN BVALYG25 TS88
 ++ ~Yes, Valygar. We both know that it is bound to happen, so why not tonight?~ EXTERN BVALYG25 TS88
 ++ ~No, not tonight. Maybe another time.~ EXTERN BVALYG25 TS89
 ++ ~Get lost.~ EXTERN BVALYG25 TS94

CHAIN BVALYG25 TS96
~He is too far away, <CHARNAME>. But I am here and I will do my best to protect you. I will die for you, nightingale. If you are feeling unsure, I will sit with you for as long as you need me. I will watch over you when you fall asleep and I will guard you.~
END
 ++ ~Guarding was not exactly what I had in mind, Valygar.~ EXTERN BVALYG25 TS92
 ++ ~Well, I will feel very safe and very disappointed then. ~ EXTERN BVALYG25 TS95
 ++ ~My personal ranger-protector. Thank you. I will go to sleep then. Good night, Valygar. ~ EXTERN BVALYG25 TS89

CHAIN BVALYG25 TS97
~Stars are the best friends of a traveller. Eventually, you are bound to start looking beyond practicality with something as beautiful and mysterious as stars. I love stargazing and I am glad that you do too.~
END
 ++ ~Valygar, is your arm on my shoulder?~ EXTERN BVALYG25 TS85

IF WEIGHT #-24 ~Global("ExpLoveTalk","LOCALS",14)~ THEN BVALYG25 TS98
~Here comes the dawn to steal my happiness. One more kiss, <CHARNAME>, while the night lasts. One more kiss to remember you by. If I only can slow the passage of hours, if I only can hold you in my arms a while longer!~
END
 ++ ~We cannot let passion run our daily life. Here is your kiss, but in five minutes I expect you to be fully dressed, armour shining and ready for whatever battle is in store for us today.~ EXTERN BVALYG25 TS99
 ++ ~We cannot change the passage of hours, but I am not in a hurry to go slaughter someone. I am rather in a mood to stay where I am.~ EXTERN BVALYG25 TS100
 ++ ~There will be another night, Valygar. And I am looking forward to it.~ EXTERN BVALYG25 TS99
 ++ ~No, Valygar, no more kisses. It was a terrible mistake and I regret it now. What's done is done, but I do not love you, ranger.~ EXTERN BVALYG25 TS101

CHAIN BVALYG25 TS99
~Yes, of course.~
DO ~SetGlobal("ExpLoveTalk","LOCALS",15) RestParty()~ 
EXIT

CHAIN BVALYG25 TS100
~Ohhhh.... Mmmmm......~
DO ~SetGlobal("ExpLoveTalk","LOCALS",15) ClearAllActions() StartCutSceneMode() StartCutScene("CUT34A")~ 
EXIT

CHAIN BVALYG25 TS101
~Fine, fine. Do not make a habit of teasing men. You are playing with fire.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",3)~ 
EXIT

//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////
CHAIN
IF ~Global("VP_BExpValygar3","LOCALS",2)~ THEN BVALYG25 TS111
~Mazzy, remember how you asked me if I'd want to join your group after <CHARNAME>'s quest is over?~
DO ~SetGlobal("VP_BExpValygar3","LOCALS",3)~
EXTERN BMAZZY25 TS68

CHAIN BVALYG25 TS112
~I did think about it.~
EXTERN BMAZZY25 TS69

CHAIN BVALYG25 TS113
~Yes. That's settled then. I am sure you will find loyal companions to trail the roads of Faer'n with. You will lead them to heroic deeds. I shall hear a song in an inn about Lady Fentan and her exploits and say with pride, "I was once her squire."~
EXTERN BMAZZY25 TS70

CHAIN BVALYG25 TS114
~Yes?~
EXTERN BMAZZY25 TS71

CHAIN BVALYG25 TS115
~I do not know Mazzy... The plans <CHARNAME> and I have made are up in the air and who knows. Everything is uncertain, and we are not together in the way you suggested we are.~
EXTERN BMAZZY25 TS72

CHAIN BVALYG25 TS116
~I love her Mazzy - that I know. But she has greater things to take care of than a man's heart.~
EXTERN BMAZZY25 TS73

CHAIN BVALYG25 TS117
~Yes, Mazzy.~
EXIT

CHAIN
IF ~Global("VP_BExpValygar4","LOCALS",2)~ THEN BVALYG25 TS118
~What is it, Sarevok?~
END
 IF ~OR(3) Class(Player1,MAGE) Class(Player1,MAGE_ALL) Class(Player1,SORCERER)~ THEN DO ~SetGlobal("VP_BExpValygar4","LOCALS",3)~ EXTERN BSAREV25 TS145
 IF ~!Class(Player1,MAGE) !Class(Player1,MAGE_ALL) !Class(Player1,SORCERER)~ THEN DO ~SetGlobal("VP_BExpValygar4","LOCALS",3)~ EXTERN BSAREV25 TS146

CHAIN BVALYG25 TS119
~I believe so, yes. And I know what I talk about.~
EXTERN BSAREV25 TS147

CHAIN BVALYG25 TS120
~Truly? She is my friend and I cherish her friendship.~
EXTERN BSAREV25 TS148

CHAIN BVALYG25 TS121
~Intentions?~
EXTERN BSAREV25 TS149

CHAIN BVALYG25 TS122
~Intent?~
EXTERN BSAREV25 TS150

CHAIN BVALYG25 TS123
~You... are delusional, Sarevok.~
EXIT

CHAIN
IF ~Global("VP_BExpValygar5","LOCALS",2)~ THEN BVALYG25 TS124
~Aye, Sarevok?~
DO ~SetGlobal("VP_BExpValygar5","LOCALS",3)~
EXTERN BVALYG25 TS125

CHAIN BVALYG25 TS125
~You are going to make a hole in my armor if you keep staring at me with that burning gaze... Spit it out, Anchev.~
EXTERN BSAREV25 TS151

CHAIN BVALYG25 TS126
~Saverok, what is it all about?~
EXTERN BSAREV25 TS152

CHAIN BVALYG25 TS127
~Don't give me the big brother talk. You spent months plotting for her death. You killed her mentor, you pursued her all over the Sword Coast and you now dare to suggest that it is ME who wants to hurt her?~
EXTERN BSAREV25 TS153

CHAIN BVALYG25 TS128
~Really? You are blackmailing her constantly with your common origin, Anchev. One day she will realize that she need have nothing more to do with your filth. I hope that day will come soon.~
EXTERN BSAREV25 TS154

CHAIN BVALYG25 TS129
~You could try, but I doubt you would succeed.~
EXIT

CHAIN
IF ~Global("VP_BExpValygar6","LOCALS",2)~ THEN BVALYG25 TS130
~Saverok, if you want to fight me, then fight me. I love your sister and I am going to seek her favor. Whether you like it or not.~
DO ~SetGlobal("VP_BExpValygar6","LOCALS",3)~
EXTERN BSAREV25 TS155

CHAIN BVALYG25 TS131
~I am not ashamed of anything connected with your sister, Anchev. Except for you.~
EXTERN BSAREV25 TS156

CHAIN BVALYG25 TS132
~Threats again?~
EXTERN BSAREV25 TS157

CHAIN BVALYG25 TS133
~I am scared out of my wits, Anchev.~
EXTERN BSAREV25 TS158

CHAIN BVALYG25 TS134
~I've got the general idea, Saverok. I think for <CHARNAME>'s sake we should try to avoid an open confrontation and arguments like that. She looks at us already. Will you smile?~
EXTERN BSAREV25 TS159

CHAIN BVALYG25 TS135
~I am trying my best.~
EXIT

CHAIN
IF ~Global("VP_BExpValygar7","LOCALS",2)~ THEN BVALYG25 TS136
~I thought we had exhausted our conversations.~
DO ~SetGlobal("VP_BExpValygar7","LOCALS",3)~
EXTERN BSAREV25 TS160

CHAIN BVALYG25 TS137
~Well, go ahead... You will not stop anyway.~
EXTERN BSAREV25 TS161

CHAIN BVALYG25 TS138
~I think I understand how you feel... I have no siblings, but I believe that I would be just as protective as you if I ever had one. Still, there never was a need to threaten me, Sarevok. I am hardly a frivolous type intent on breaking ladies' hearts.~
EXTERN BSAREV25 TS164

CHAIN BVALYG25 TS139
~I am not impressed.~
EXIT

CHAIN
IF ~Global("VP_BExpValygar8","LOCALS",2)~ THEN BVALYG25 TS140
~Is that true? You two are getting married?~
DO ~SetGlobal("VP_BExpValygar8","LOCALS",3)~
EXTERN VPKAC25B 13

CHAIN BVALYG25 TS141
~My congratulations! Of course I will.~
EXTERN VPKAC25B 14

CHAIN BVALYG25 TS142
~Ahem... Aren't you going to invite <CHARNAME>?~
EXTERN VPKAC25B 15

CHAIN BVALYG25 TS143
~Kachiko?~
EXTERN VPKAC25B 16

CHAIN BVALYG25 TS144
~The sweet matchmaker is at work again?~
EXTERN VPKAC25B 17

CHAIN BVALYG25 TS145
~I am afraid your own happiness makes you see the world in rose, Kachiko. Look at <CHARNAME>! She may join the pantheon soon. We are on a mission of meticulously killing her blood relatives. It's just not the right time!~
EXTERN VPKAC25B 18

CHAIN BVALYG25 TS146
~(*sighs*)~
EXIT

CHAIN
IF ~Global("VP_BExpValygar9","LOCALS",2)~ THEN BVALYG25 TS147
~And what makes you so merry, Kachiko?~
DO ~SetGlobal("VP_BExpValygar9","LOCALS",3)~
EXTERN VPKAC25B 19

CHAIN BVALYG25 TS148
~Kachiko, the Kara-Turians are supposed to be a reserved people. Besides, Yoshimo is going to cut my throat shortly.~
EXTERN BYOSHIM TS131

CHAIN BVALYG25 TS149
~What this is all about, lovebirds?~
EXTERN BYOSHIM TS133

CHAIN BVALYG25 TS150
~I did not think the City Crier's had announced that yet.~
EXTERN VPKAC25B 22

CHAIN BVALYG25 TS151
~If something goes wrong I know whom to blame, do not I?~
EXTERN VPKAC25B 23

CHAIN
IF ~Global("VP_BExpValygar10","LOCALS",2)~ THEN BVALYG25 TS178
~I told you not to bother <CHARNAME> with your foolishness, Anomen.~
DO ~SetGlobal("VP_BExpValygar10","LOCALS",3)~
EXTERN BANOME25 TS134

CHAIN BVALYG25 TS179
~Like the Nine Hells it is! I will not leave you alone with her.~
EXTERN BANOME25 TS135

CHAIN BVALYG25 TS180
~(*sighs*) I am not jealous. I am worried that in your current state you are capable of hurting her.~
EXTERN BANOME25 TS136

CHAIN BVALYG25 TS181
~(*laughs*) Of course milady. I erred. I shall not bother you and your lover any longer.~
DO ~LeaveParty() EscapeArea()~ 
EXIT

CHAIN BVALYG25 TS182
~As Lady commands.~
EXTERN BANOME25 TS137

CHAIN BVALYG25 TS183
~You heard what she said. It was quite clear.~
EXTERN BVALYG25 TS185

CHAIN BVALYG25 TS184
~Anomen...~
EXTERN BANOME25 TS139

CHAIN BVALYG25 TS185
~Anomen... (*Anomen turns slowly away... tears drop onto his polished armour suit*)~
END
 ++ ~Anomen, stop crying... you are knight after all...~ DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~ EXTERN BANOME25 TS138
 ++ ~Anomen, shame on you... you are knight after all...~ DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~ EXTERN BANOME25 TS138

CHAIN BVALYG25 TS186
~Well, I am afraid you will not have your answer.~
EXTERN BANOME25 TS140

CHAIN BVALYG25 TS187
~You are not going after <CHARNAME>, you are not yourself. Anomen!~
EXTERN BANOME25 TS141

CHAIN BVALYG25 TS188
~I am afraid you will have to choose sooner or later.~
EXIT

CHAIN
IF ~Global("VP_BExpValygar11","LOCALS",2)~ THEN BVALYG25 TS189
~Now, that's the first time I've seen you smiling Aerie. What is the reason for your merriment?~
DO ~SetGlobal("VP_BExpValygar11","LOCALS",3)~
EXTERN BAERIE25 TS166

CHAIN BVALYG25 TS190
~And what's ill about that?~
EXTERN BAERIE25 TS167

CHAIN BVALYG25 TS191
~Ranger's honour, I will not.~
EXTERN BAERIE25 TS168

CHAIN BVALYG25 TS192
~And my tattered cloak swirls around me as if I am standing on the crossroad where the Twelve Winds meet... Do I look blurry, Aerie?~
EXTERN BAERIE25 TS169

CHAIN BVALYG25 TS193
~One more avatar in this group will be one too many, Aerie. It's <CHARNAME>'s job to be an avatar. Though it scares me when <CHARNAME> is forced to take on the unspeakable form of the Slayer. How can such a lovely person be disfigured so much? It is a heavy cruelty...~
EXTERN BAERIE25 TS170

CHAIN BVALYG25 TS194
~Sorry, what did you just say?~
EXTERN BAERIE25 TS171

CHAIN BVALYG25 TS195
~Alright, let's catch up with the others then, shall we?~
EXIT

CHAIN
IF ~Global("VP_BExpValygar12","LOCALS",2)~ THEN BVALYG25 TS196
~Yes, Yoshimo, my family have had this katana for generations. Apparently my great grandfather, Garcia Corthala, was as much a warrior as a mage. He was a wanderer and he traveled far and wide, fighting his way through as often as teleporting away peacefully.~
DO ~SetGlobal("VP_BExpValygar12","LOCALS",3)~
EXTERN BYOSHIM TS134

CHAIN BVALYG25 TS197
~Indeed.~
EXTERN BYOSHIM TS135

CHAIN BVALYG25 TS198
~Might you know what the symbols etched on the blade mean?~
EXTERN BYOSHIM TS136

CHAIN BVALYG25 TS199
~I thought it would refer to the enchantment somehow.~
EXTERN BYOSHIM TS137

CHAIN BVALYG25 TS200
~I would not know. Garcia died before I was born and my father was too young at the time to listen to his tales of battle, love and power. I regret now that I did not know my great grandfather.~
EXIT

CHAIN
IF ~Global("VP_BExpValygar13","LOCALS",2)~ THEN BVALYG25 TS201
~I like the Pocket Plane no more than you do, Nalia. I do not have troubles sleeping there as you do, but I loathe staying there.~
DO ~SetGlobal("VP_BExpValygar13","LOCALS",3)~ EXTERN BNALIA25 TS59

CHAIN BVALYG25 TS202
~Indeed it is. I wish <CHARNAME> did not have to face the unfortunate consequences of her heritage quite so often.~
EXTERN BNALIA25 TS60

CHAIN BVALYG25 TS203
~Well, may be she would not have to.~
EXTERN BNALIA25 TS61

CHAIN BVALYG25 TS204
~Nalia, what are you talking about? You want to re-decorate the Pocket Plane?~
EXTERN BNALIA25 TS62

CHAIN
IF ~Global("VP_BExpValygar1","LOCALS",2) Global("VP_Banter_Switch","LOCALS",1)~ THEN BVALYG25 TS102
~What's your opinion on marriage?~
END
 ++ ~Marriage? I...~ DO ~SetGlobal("VP_BExpValygar1","LOCALS",3) SetGlobal("VP_Banter_Switch","LOCALS",0)~ EXTERN BIMOEN25 TS112

CHAIN BVALYG25 TS103
~Ahem, I merely asked an abstract question...~
EXTERN BIMOEN25 TS113

CHAIN BVALYG25 TS104
~The biggest temple in Athkatla is the Temple of Talos, Imoen. And we are not getting married...~
EXTERN BIMOEN25 TS114

CHAIN BVALYG25 TS105
~Well, I think I've understood YOUR idea on marriages, Imoen...~
EXIT

CHAIN
IF ~Global("VP_BExpValygar2","LOCALS",2) Global("VP_Banter_Switch","LOCALS",1)~ THEN BVALYG25 TS106
~Our latest exploits made me doubt that a large family is such a good thing after all... Look, your so-called father manifests himself even after his death by transforming <CHARNAME> into some kind of a monster. Maniacal half-siblings of yours do their best to drag your lives into Nine Hells or exterminate you, along with the half of the Sword Coast population for a good measure...~
DO ~SetGlobal("VP_BExpValygar2","LOCALS",3) SetGlobal("VP_Banter_Switch","LOCALS",0)~
EXTERN BIMOEN25 TS117

CHAIN BVALYG25 TS107
~Blood mixes strangely in people... Thank you for your insights, Imoen, what you say is true. Your closeness with <CHARNAME> is enviable. The weariness of the battle made me succumb to my prejudices.~
EXTERN BIMOEN25 TS119

CHAIN BVALYG25 TS108
~True again. Many things that have happened because of <CHARNAME>'s heritage do not make sense to me. I hate the dark power, which she has been bestowed. But I would not betray or desert her...~
EXTERN BIMOEN25 TS120

CHAIN BVALYG25 TS109
~I treasure her friendship.~
EXTERN BIMOEN25 TS121

CHAIN BVALYG25 TS110
~No other reason Imoen.~
EXIT