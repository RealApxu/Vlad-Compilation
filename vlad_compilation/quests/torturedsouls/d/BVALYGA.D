// Reply to Kachiko
CHAIN BVALYGA TS149
~It's no concern of yours, Kachiko~
EXTERN VPKACB 21

CHAIN BVALYGA TS150
~Kachiko, I was never interested in romances. Women are vain, their tears are lies, and their words are poison for a man's heart.~
EXTERN VPKACB 22

CHAIN BVALYGA TS151
~Really? Nobles, trying to marry off their silly daughters to the last Corthala told me this one too. I have seen plenty of these daughters, all looking sweet and na've, and all talking "love at the first sight"... only to run away as soon as they calculated that the last Corthala is worth no more than his name and a hunting cabin. No, I will not play these games! If I could, I would write it across my forehead: "Broke. Not marriage material."~
EXTERN VPKACB 23

CHAIN BVALYGA TS152
~(*moans and walks away*)~
EXIT

CHAIN BVALYGA TS153
~(*quietly*) Yes, I wish he would be around... may be then I would not have to put up with this squire nonsense... My patience is wearing thin...~
EXTERN VPKACB 64

CHAIN BVALYGA TS154
~Grrr! Ahem... We'll talk about it some other time, Mazzy...~
EXTERN VPKACB 65

CHAIN BVALYGA TS155
~(*whispers back*): Kachiko, dear, wonderful, sweet, precious Kachiko, would you please, please SHUT UP!~
EXTERN VPKACB 66

// Valygar Romance
CHAIN
IF WEIGHT #-99 ~Global("VP_MerellaJournal","GLOBAL",1)~ THEN BVALYGA TS156
~<CHARNAME>, I was wondering if you would allow me to carry Merella's journal?~
END
 ++ ~Of course. Take it.~ EXTERN BVALYGA TS157
 ++ ~And what do you need it for, Valygar?~ EXTERN BVALYGA TS158
 ++ ~Do you know Merella then, Valygar?~ EXTERN BVALYGA TS162

CHAIN BVALYGA TS157
~Thank you, friend, I appreciate it.~
DO ~SetGlobal("VP_MerellaJournal","GLOBAL",2) TakePartyItem("BOOK92")~
EXIT

CHAIN BVALYGA TS158
~I've known Merella for many years. I wish to return the journal to her if we find her alive. And to keep it in her memory, if against all hope, she is dead.~
END
 ++ ~I see. Well, you are the best person to keep the journal then. Take it Valygar.~ EXTERN BVALYGA TS157
 ++ ~I will give it to you if you tell me the whole story. I bet that Merella was more than just a childhood friend.~ EXTERN BVALYGA TS159
 IF ~Global("ValygarMatch","GLOBAL",1)~ THEN REPLY ~No, Valygar, I do not think I should give it to you.~ EXTERN BVALYGA TS160
 IF ~!Global("ValygarMatch","GLOBAL",1)~ THEN REPLY ~No, Valygar, I do not think I should give it to you.~ EXTERN BVALYGA TS161

CHAIN BVALYGA TS159
~I do not wish to discuss it.~
DO ~SetGlobal("VP_MerellaJournal","GLOBAL",2)~
EXIT

CHAIN BVALYGA TS160
~As you wish.~
DO ~SetGlobal("VP_MerellaJournal","GLOBAL",2) SetGlobal("ValygarRomanceActive","GLOBAL",3)~
EXIT

CHAIN BVALYGA TS161
~As you wish.~
DO ~SetGlobal("VP_MerellaJournal","GLOBAL",2)~
EXIT

CHAIN BVALYGA TS162
~Yes, I do. She was a childhood friend.~
END
 ++ ~I see. Well, you are the best person to keep the journal then. Take it Valygar.~ EXTERN BVALYGA TS157
 ++ ~I will give it to you if you tell me the whole story. I bet that Merella was more than just a childhood friend.~ EXTERN BVALYGA TS159
 IF ~Global("ValygarMatch","GLOBAL",1)~ THEN REPLY ~No, Valygar, I do not think I should give it to you.~ EXTERN BVALYGA TS160
 IF ~!Global("ValygarMatch","GLOBAL",1)~ THEN REPLY ~No, Valygar, I do not think I should give it to you.~ EXTERN BVALYGA TS161

CHAIN
IF WEIGHT #-98 ~Global("VP_Merella_Dies","GLOBAL",1)~ THEN BVALYGA TS163
~Merella... (*he kneels and takes her hand*)... Shh... It's not important...~
DO ~SetGlobal("VP_Merella_Dies","GLOBAL",2)~
EXTERN UHRANG01 N2

CHAIN
IF WEIGHT #-97 ~Global("VP_Merella_Dies","GLOBAL",3)~ THEN BVALYGA TS164
~Go in peace, my friend... (*his eyes blur with tears*)~
END
 IF ~Global("ValygarMatch","GLOBAL",1)~ THEN REPLY ~Valygar... You look lost... I wish I could comfort you, but I am afraid that I would be intruding. If you wish to talk about Merella...~ EXTERN BVALYGA TS165
 IF ~!Global("ValygarMatch","GLOBAL",1)~ THEN REPLY ~Valygar... I'm sorry...~ EXTERN BVALYGA TS165
 ++ ~So what was this lovely neighbor of yours apologizing for? Do I smell a love story?~ EXTERN BVALYGA TS166

CHAIN BVALYGA TS165
~You are intruding. Please leave me be.~
END
 IF ~Global("ValygarMatch","GLOBAL",1)~ THEN DO ~SetGlobal("ValygarRomanceActive","GLOBAL",1) SetGlobal("VP_Merella_Dies","GLOBAL",5) SetGlobal("LoveTalk","LOCALS",1) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0) ~ EXIT
 IF ~!Global("ValygarMatch","GLOBAL",1)~ THEN DO ~SetGlobal("VP_Merella_Dies","GLOBAL",5)~
EXIT

CHAIN BVALYGA TS166
~That is none of your concern. I do not wish to be sullied by your base suspicion.~
END
 IF ~Global("ValygarMatch","GLOBAL",1)~ THEN DO ~SetGlobal("LoveTalk","LOCALS",1) SetGlobal("VP_Merella_Dies","GLOBAL",5) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0) ~ EXIT
 IF ~!Global("ValygarMatch","GLOBAL",1)~ THEN DO ~SetGlobal("VP_Merella_Dies","GLOBAL",5)~
EXIT

CHAIN
IF WEIGHT #-96 ~Global("LoveTalk","LOCALS",2)~ THEN BVALYGA TS167
~<CHARNAME>, I feel bad about snapping at you when you asked me about Merella.~
END
 ++ ~Valygar, I am more than pleased with your loyalty to me; you may keep your past to yourself.~ EXTERN BVALYGA TS168
 ++ ~I was overly curious, Valygar. It's a rare thing to see a man like you in pain... I feel that you cared deeply for her and merely wanted to offer my condolences...~ EXTERN BVALYGA TS169
 ++ ~Oh, no problem. I didn't take offence. I could see you were upset, and I should not have asked you stupid questions.~ EXTERN BVALYGA TS170

CHAIN BVALYGA TS168
~The last thing I wanted was to alienate you like that, <CHARNAME>. I loved Merella when I was very young...~
END
 ++ ~The romance went badly I presume?~ EXTERN BVALYGA TS171

CHAIN BVALYGA TS169
~I know. I loved Merella once. She returned my feelings it seemed, but then I had to go away by my parents bidding. Two years is long time when you are sixteen. When I came back Merella was involved with one of the Immensvale's lads. It was very painful at the time.~
END
 ++ ~Valygar, it's normal to have a broken heart at that age... The only terrible thing is when that causes people to shut down their feelings in the future. I hope that's didn't happen in your case.~ EXTERN BVALYGA TS172
 ++ ~If she did not wait for you, then clearly she did not love you enough and did not deserve you. Throw her out of your mind and move on; find yourself someone more worthy of your love.~ EXTERN BVALYGA TS172

CHAIN BVALYGA TS170
~You are a wonderful and kind friend. You know, I loved Merella once. She returned my feelings it seemed, but then I had to go away by my parents bidding. Two years is long time when you are sixteen. When I came back Merella was involved with one of the Immensvale's lads. It was very painful at the time.~
END
 ++ ~Valygar, it's normal to have a broken heart at that age... The only terrible thing is when that causes people to shut down their feelings in the future. I hope that's didn't happen in your case.~ EXTERN BVALYGA TS172
 ++ ~If she did not wait for you, then clearly she did not love you enough and did not deserve you. Throw her out of your mind and move on; find yourself someone more worthy of your love.~ EXTERN BVALYGA TS172

CHAIN BVALYGA TS171
~Yes, my perceptive Lady. She returned my feelings it seemed, but then I had to go away by my parents bidding. Two years is long time when you are sixteen. When I came back Merella was involved with one of the Immensvale's lads. It was very painful at the time.~
END
 ++ ~Valygar, it's normal to have a broken heart at that age... The only terrible thing is when that causes people to shut down their feelings in the future. I hope that's didn't happen in your case.~ EXTERN BVALYGA TS172
 ++ ~If she did not wait for you, then clearly she did not love you enough and did not deserve you. Throw her out of your mind and move on; find yourself someone more worthy of your love.~ EXTERN BVALYGA TS172

CHAIN BVALYGA TS172
~I wonder why you would encourage me to make a fool of myself again?~
DO ~SetGlobal("LoveTalk","LOCALS",3) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN
IF WEIGHT #-95 ~Global("LoveTalk","LOCALS",4)~ THEN BVALYGA TS173
~<CHARNAME>, I can see you are tired. Please allow me to carry your backpack for a while.~
END
 IF ~InParty("Anomen") See("Anomen")~ THEN EXTERN BANOMEN TS594
 IF ~OR(2) !InParty("Anomen") !See("Anomen")~ THEN REPLY ~Valygar, really I am fine. I was just thinking about my accursed heritage and it is an exhausting business.~ EXTERN BVALYGA TS175
 IF ~OR(2) !InParty("Anomen") !See("Anomen")~ THEN REPLY ~Valygar, I am perfectly capable of carrying my backpack. Rangers, ha! Always trying to protect you against over exertion, over eating, fighting dragons on your own and everything else harmful on the face of Toril...~ EXTERN BVALYGA TS175
 IF ~OR(2) !InParty("Anomen") !See("Anomen")~ THEN REPLY ~It was very nice of you to offer, but I will manage. Thank you, Valygar.~ EXTERN BVALYGA TS176

CHAIN BVALYGA TS174
~There is no harm in asking.~
END
 ++ ~Valygar, really I am fine. I was just thinking about my accursed heritage and it is an exhausting business.~ EXTERN BVALYGA TS175
 ++ ~Valygar, I am perfectly capable of carrying my backpack. Rangers, ha! Always trying to protect you against over exertion, over eating, fighting dragons on your own and everything else harmful on the face of Toril...~ EXTERN BVALYGA TS175
 ++ ~It was very nice of you to offer, but I will manage. Thank you, Valygar.~ EXTERN BVALYGA TS176

CHAIN BVALYGA TS175
~Well, nothing exhausts your sense of humor at least.~
DO ~SetGlobal("LoveTalk","LOCALS",5) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS176
~I wish that you were not so stubborn, <CHARNAME>.~
DO ~SetGlobal("LoveTalk","LOCALS",5) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN
IF WEIGHT #-94 ~Global("LoveTalk","LOCALS",6) Global("BValygar8","LOCALS",0)~ THEN BVALYGA TS122
~Tell me... what kind of family did you have?~ [VALYGA68]
 ++ ~I was raised by Gorion in Candlekeep. He's the only father I've known.~ DO ~SetGlobal("BValygar8","LOCALS",1) SetGlobal("LoveTalk","LOCALS",7) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~ EXTERN BVALYGA 123
 ++ ~My family is... best not discussed.~ DO ~SetGlobal("BValygar8","LOCALS",1) SetGlobal("LoveTalk","LOCALS",7) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~ EXTERN BVALYGA 124
 ++ ~Why do you ask?~ DO ~SetGlobal("BValygar8","LOCALS",1) SetGlobal("LoveTalk","LOCALS",7) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~ EXTERN BVALYGA 125
 ++ ~This is no time to talk, Valygar.~ DO ~SetGlobal("BValygar8","LOCALS",1) SetGlobal("LoveTalk","LOCALS",7) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~ EXTERN BVALYGA 126

CHAIN
IF WEIGHT #-93 ~Global("LoveTalk","LOCALS",6) !Global("BValygar8","LOCALS",0)~ THEN BVALYGA TS179A
~<CHARNAME> I am not interested in gossip, but there is one rumour, which I cannot lay aside... I have heard people whispering that you are not an ordinary mortal. I find myself almost believing it... You wield strange powers and the look in your eyes is different somehow...~
END
 ++ ~Valygar, you should not listen to nonsense like that. I am a plain girl from Candlekeep... I was raised by a powerful mage; maybe it rubbed off on me? Who knows...~ EXTERN BVALYGA TS180
 ++ ~You are an observant man, Valygar. I am no ordinary mortal, but a demigod.~ EXTERN BVALYGA TS186
 ++ ~Valygar, you will find out in time what I really am, if you gain my trust and confidence. But now I do not want to speak about it.~ EXTERN BVALYGA TS184
 ++ ~Go on, listen to rumours. You will be told many things about me. I have heard a thing or two about Necromancers from the Corthala family too...~ EXTERN BVALYGA TS187

CHAIN
IF WEIGHT #-92 ~Global("LoveTalk","LOCALS",8)~ THEN BVALYGA TS179B
~<CHARNAME> I am not interested in gossip, but there is one rumour, which I cannot lay aside... I have heard people whispering that you are not an ordinary mortal. I find myself almost believing it... You wield strange powers and the look in your eyes is different somehow...~
END
 ++ ~Valygar, you should not listen to nonsense like that. I am a plain girl from Candlekeep... I was raised by a powerful mage; maybe it rubbed off on me? Who knows...~ EXTERN BVALYGA TS180
 ++ ~You are an observant man, Valygar. I am no ordinary mortal, but a demigod.~ EXTERN BVALYGA TS186
 ++ ~Valygar, you will find out in time what I really am, if you gain my trust and confidence. But now I do not want to speak about it.~ EXTERN BVALYGA TS184
 ++ ~Go on, listen to rumours. You will be told many things about me. I have heard a thing or two about Necromancers from the Corthala family too...~ EXTERN BVALYGA TS187

CHAIN BVALYGA TS180
~You said: "was raised"... so, you are an orphan? And you were raised by a MAGE? Not that my childhood was happy, but at least they were my parents... It must have been terrible for you to grow up alone with a cold, old man instead of a family...~
END
 ++ ~Gorion was not a cold man, Valygar. I know you do not like mages, but Gorion was the best father one could have. He loved me as his own... And I was not alone. Imoen has been my best friend for as long as I can remember, so it's almost like having a sister.~ EXTERN BVALYGA TS181
 ++ ~Yes, my childhood was lonely and cold. But I control my own destiny now, and let the past bury its dead...~ EXTERN BVALYGA TS185
 ++ ~Hmm... Do we really need to talk about it? Or about anything else?~ EXTERN BVALYGA TS184

CHAIN BVALYGA TS181
~Maybe he was your father then?~
END
 ++ ~Unfortunately not. I owe my life to Bhaal, the Lord of Murder, strange as it might sound...~ EXTERN BVALYGA TS182
 ++ ~No he was not. My family tree is no concern of yours or anybody else for that matter.~ EXTERN BVALYGA TS184

CHAIN BVALYGA TS182
~Bhaal... I am sorry that I have been so persistent. Forgive me, <CHARNAME>, it must have been very upsetting for you...~
DO ~SetGlobal("LoveTalk","LOCALS",9) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

//CHAIN BVALYGA TS183
//~~
//EXIT
//

CHAIN BVALYGA TS184
~I am sorry... I should not have intruded on you like that. You can keep your secrets.~
DO ~SetGlobal("LoveTalk","LOCALS",9) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS185
~You know, that's my feeling exactly, but unfortunately in my family past does not always stay dead.~
DO ~SetGlobal("LoveTalk","LOCALS",9) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS186
~A... demigod? I am not surprised... You have the grace of Sune's daughter... or are you Eight's Sister, a child of Mystra?~
END
 ++ ~Ah, yes, Sune mothered me.~ EXTERN BVALYGA TS184
 ++ ~You got it, Mystra's blood flows in my veins.~ EXTERN BVALYGA TS184
 ++ ~Unfortunately, neither Sune, nor Mystra are my parents. The god of Murder was my father.~ EXTERN BVALYGA TS182

CHAIN BVALYGA TS187
~I am sorry... I should not have intruded on you like that. You can keep your secrets.~
END
 ++ ~You will find out sooner or later anyway. I am Bhaal's cursed spawn.~ EXTERN BVALYGA TS182

CHAIN
IF WEIGHT #-91 ~Global("LoveTalk","LOCALS",10) Global("BValygar8","LOCALS",0) Global("BValygar9","LOCALS",0)~ THEN BVALYGA TS91A
~I am curious. How much experience have you had with magic?~ [VALYGA67]
 IF ~Class(Player1,MAGE)~ THEN REPLY ~I am a mage, Valygar. My experience with magic is quite thorough, I assure you. Why do you ask?~ DO ~SetGlobal("BValygar8","LOCALS",1) SetGlobal("LoveTalk","LOCALS",11) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~ EXTERN BVALYGA 92
 IF ~Class(Player1,CLERIC)~ THEN REPLY ~As a cleric I gain my magic through the worship of my god. Why do you ask?~ DO ~SetGlobal("BValygar8","LOCALS",1) SetGlobal("LoveTalk","LOCALS",11) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0) ~ EXTERN BVALYGA 93
 ++ ~I have had considerable encounters with magic throughout my travels, Valygar, if that's what you mean.~ DO ~SetGlobal("BValygar8","LOCALS",1) SetGlobal("LoveTalk","LOCALS",11) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~ EXTERN BVALYGA 94
 ++ ~This is no time for chatter, Valygar.~ DO ~SetGlobal("BValygar7","LOCALS",1) SetGlobal("LoveTalk","LOCALS",11) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~ EXTERN BVALYGA 95

CHAIN
IF WEIGHT #-90 ~Global("LoveTalk","LOCALS",10) !Global("BValygar8","LOCALS",0) Global("BValygar9","LOCALS",0)~ THEN BVALYGA TS91B
~May I ask you for your opinion on something?~ [VALYGA69]
 ++ ~If you wish.~ DO ~SetGlobal("BValygar9","LOCALS",1) SetGlobal("LoveTalk","LOCALS",13) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0) ~ EXTERN BVALYGA 140
 ++ ~We haven't time for this, Valygar.~ DO ~SetGlobal("BValygar9","LOCALS",1) SetGlobal("LoveTalk","LOCALS",13) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0) ~ EXTERN BVALYGA 141

CHAIN
IF WEIGHT #-89 ~Global("LoveTalk","LOCALS",10) !Global("BValygar8","LOCALS",0) !Global("BValygar9","LOCALS",0) OR(3) Class(Player1,BARD) Class(Player1,MAGE) Class(Player1,SORCERER)~ THEN BVALYGA TS91C
~You have all a mortal can wish for. You are beautiful beyond belief, your aim is true and your mind is sharp. Yet you search for arcane knowledge. Do you not think that is too much of power for one person?~
END
 ++ ~No power is enough for me, Valygar. I can feel that one day I shall walk among gods as an equal.~ EXTERN BVALYGA TS189
 ++ ~You are exaggerating, Valygar. My only talent is magic and I work hard to develop it...~ EXTERN BVALYGA TS190
 ++ ~I had no choice in the matter really. Magic manifests itself through me...~ EXTERN BVALYGA TS191
 ++ ~I never put all my eggs in one basket... I am a mage by day, a minstrel in the eve and a thief by night... I need many trades in order to survive. Life is harsh, Valygar...~ EXTERN BVALYGA TS192
 ++ ~I cannot agree more! I should have been made a RANGER! But that button pusher by the keyboard made me a MAGE! Tell you what, Valygar, let's imagine we are in NWN and I am dualed to a ranger? What do you think?~ EXTERN BVALYGA TS193
 ++ ~There is nothing wrong with studying the Arcane if one does not abuse power.~ EXTERN BVALYGA TS195

CHAIN
IF WEIGHT #-88 ~Global("LoveTalk","LOCALS",10) !Global("BValygar8","LOCALS",0) !Global("BValygar9","LOCALS",0) !Class(Player1,BARD) !Class(Player1,MAGE) !Class(Player1,SORCERER)~ THEN BVALYGA TS91D
~I have been watching you fight. You are a very brave woman and you make wise choices. Yet, considering your heritage, the passion I see in you disturbs me.~
END
 ++ ~I do not need a lecture on moral issues, Valygar. In fact, I find your attention to everything I do annoying.~ EXTERN BVALYGA TS197
 ++ ~You think so?~ EXTERN BVALYGA TS198
 ++ ~I do not see how I am different from anyone else. Maybe you are confused.~ EXTERN BVALYGA TS202

CHAIN
IF WEIGHT #-87 ~Global("LoveTalk","LOCALS",12) Global("BValygar9","LOCALS",0)~ THEN BVALYGA TS139A
~May I ask you for your opinion on something?~ [VALYGA69]
 ++ ~If you wish.~ DO ~SetGlobal("BValygar9","LOCALS",1) SetGlobal("LoveTalk","LOCALS",13) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0) ~ EXTERN BVALYGA 140
 ++ ~We haven't time for this, Valygar.~ DO ~SetGlobal("BValygar9","LOCALS",1) SetGlobal("LoveTalk","LOCALS",13) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0) ~ EXTERN BVALYGA 141

CHAIN
IF WEIGHT #-86 ~Global("LoveTalk","LOCALS",12) !Global("BValygar9","LOCALS",0) OR(3) Class(Player1,BARD) Class(Player1,MAGE) Class(Player1,SORCERER)~ THEN BVALYGA TS139B
~You have all a mortal can wish for. You are beautiful beyond belief, your aim is true and your mind is sharp. Yet you search for arcane knowledge. Do you not think that is too much of power for one person?~
END
 ++ ~No power is enough for me, Valygar. I can feel that one day I shall walk among gods as an equal.~ EXTERN BVALYGA TS189
 ++ ~You are exaggerating, Valygar. My only talent is magic and I work hard to develop it...~ EXTERN BVALYGA TS190
 ++ ~I had no choice in the matter really. Magic manifests itself through me...~ EXTERN BVALYGA TS191
 ++ ~I never put all my eggs in one basket... I am a mage by day, a minstrel in the eve and a thief by night... I need many trades in order to survive. Life is harsh, Valygar...~ EXTERN BVALYGA TS192
 ++ ~I cannot agree more! I should have been made a RANGER! But that button pusher by the keyboard made me a MAGE! Tell you what, Valygar, let's imagine we are in NWN and I am dualed to a ranger? What do you think?~ EXTERN BVALYGA TS193
 ++ ~There is nothing wrong with studying the Arcane if one does not abuse power.~ EXTERN BVALYGA TS195

CHAIN
IF WEIGHT #-85 ~Global("LoveTalk","LOCALS",12) !Global("BValygar9","LOCALS",0) !Class(Player1,BARD) !Class(Player1,MAGE) !Class(Player1,SORCERER)~ THEN BVALYGA TS139C
~I have been watching you fight. You are a very brave woman and you make wise choices. Yet, considering your heritage, the passion I see in you disturbs me.~
END
 ++ ~I do not need a lecture on moral issues, Valygar. In fact, I find your attention to everything I do annoying.~ EXTERN BVALYGA TS197
 ++ ~You think so?~ EXTERN BVALYGA TS198
 ++ ~I do not see how I am different from anyone else. Maybe you are confused.~ EXTERN BVALYGA TS202

CHAIN
IF WEIGHT #-84 ~Global("LoveTalk","LOCALS",14) OR(3) Class(Player1,BARD) Class(Player1,MAGE) Class(Player1,SORCERER)~ THEN BVALYGA TS188
~You have all a mortal can wish for. You are beautiful beyond belief, your aim is true and your mind is sharp. Yet you search for arcane knowledge. Do you not think that is too much of power for one person?~
END
 ++ ~No power is enough for me, Valygar. I can feel that one day I shall walk among gods as an equal.~ EXTERN BVALYGA TS189
 ++ ~You are exaggerating, Valygar. My only talent is magic and I work hard to develop it...~ EXTERN BVALYGA TS190
 ++ ~I had no choice in the matter really. Magic manifests itself through me...~ EXTERN BVALYGA TS191
 ++ ~I never put all my eggs in one basket... I am a mage by day, a minstrel in the eve and a thief by night... I need many trades in order to survive. Life is harsh, Valygar...~ EXTERN BVALYGA TS192
 ++ ~I cannot agree more! I should have been made a RANGER! But that button pusher by the keyboard made me a MAGE! Tell you what, Valygar, let's imagine we are in NWN and I am dualed to a ranger? What do you think?~ EXTERN BVALYGA TS193
 ++ ~There is nothing wrong with studying the Arcane if one does not abuse power.~ EXTERN BVALYGA TS195

CHAIN BVALYGA TS189
~I see. Well, just do not hurt yourself when you will be plunged down from the skies... dreamer.~
DO ~SetGlobal("LoveTalk","LOCALS",15) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",30) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS190
~And that's what worries me. You are already a master of your trade, what could you become?~
DO ~SetGlobal("LoveTalk","LOCALS",15) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",30) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS191
~I... I feel sorry for you then.~
DO ~SetGlobal("LoveTalk","LOCALS",15) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",30) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS192
~Let's hear you singing then, my dear friend. May be your infatuation with magic will not last.~
DO ~SetGlobal("LoveTalk","LOCALS",15) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",30) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS193
~I do not understand...~
END
 ++ ~Never mind, let's just go, RANGER!~ EXTERN BVALYGA TS194

CHAIN BVALYGA TS194
~You're right. I won't bother you any longer.~
DO ~SetGlobal("LoveTalk","LOCALS",15) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",30) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS195
~Oh, you will be surprised how easy it is to overstep the boundaries.~
DO ~SetGlobal("LoveTalk","LOCALS",15) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",30) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN
IF WEIGHT #-83 ~Global("LoveTalk","LOCALS",14) !Class(Player1,BARD) !Class(Player1,MAGE) !Class(Player1,SORCERER)~ THEN BVALYGA TS196
~I have been watching you fight. You are a very brave woman and you make wise choices. Yet, considering your heritage, the passion I see in you disturbs me.~
END
 ++ ~I do not need a lecture on moral issues, Valygar. In fact, I find your attention to everything I do annoying.~ EXTERN BVALYGA TS197
 ++ ~You think so?~ EXTERN BVALYGA TS198
 ++ ~I do not see how I am different from anyone else. Maybe you are confused.~ EXTERN BVALYGA TS202

CHAIN BVALYGA TS197
~You're right. I won't bother you any longer.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",3)~
EXIT

CHAIN BVALYGA TS198
~I am not sure. I avoid interfering with the business of gods, yet I would not like the taint to change you into a merciless killing machine. I've spent many years fighting my family's calling to necromancy and arcane magic in myself. It must be a much harder battle for you.~
END
 ++ ~I fear it myself Valygar and I watch my heart carefully. I will not let the Bhaal essence take over.~ EXTERN BVALYGA TS199
 ++ ~What's your problem, ranger? I am Bhaal's spawn and I am not as shy of the callings of my blood as you are.~ EXTERN BVALYGA TS200
 ++ ~You are being too grim. I do not notice any evil influences in me. Surely men point their fingers and call me names, and maniacs like Irenicus hunt me, and I have nightmares sometimes... Hmmm, maybe there is something evil around me, but it is not of my making. ~ EXTERN BVALYGA TS201

CHAIN BVALYGA TS199
~I am surely glad to hear that.~
DO ~SetGlobal("LoveTalk","LOCALS",15) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",30) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS200
~Indeed, my advice was useless then.~
DO ~SetGlobal("LoveTalk","LOCALS",15) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",30) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS201
~I think I worried needlessly. You are far too cheerful to be consumed by the God of Murder.~
DO ~SetGlobal("LoveTalk","LOCALS",15) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",30) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS202
~I hope so. Magical energies are very subtle. They penetrate and poison your soul before you are aware of it. I've spent many years fighting my family's calling to necromancy and the arcane magic in my blood. It must be a much harder battle for you. I would not want the taint to change you into a merciless killing machine.~
END
 ++ ~I fear it myself Valygar and I watch my heart carefully. I will not let the Bhaal essence take over.~ EXTERN BVALYGA TS199
 ++ ~What's your problem, ranger? I am Bhaal's spawn and I am not as shy of the callings of my blood as you are.~ EXTERN BVALYGA TS200
 ++ ~You are being too grim. I do not notice any evil influences in me. Surely men point their fingers and call me names, and maniacs like Irenicus hunt me, and I have nightmares sometimes... Hmmm, maybe there is something evil around me, but it is not of my making. ~ EXTERN BVALYGA TS201

CHAIN
IF WEIGHT #-82 ~Global("LoveTalk","LOCALS",16)~ THEN BVALYGA TS203
~You shiver? Here, I'd make the fire burn higher. Move closer, <CHARNAME>, and the chill will pass. Let me warm you hands up, they look positively blue...~
END
 ++ ~There is no need, Valygar. I am quite comfortable, thank you.~ EXTERN BVALYGA TS204
 ++ ~Valygar, it's very... helpful to have you around. And your hands are so warm...~ EXTERN BVALYGA TS205
 ++ ~Ranger, stop rushing around like a mad hen. I am going dizzy from your jolting back and forth. And your hands are too rough! You have scratched me already. Be gone.~ EXTERN BVALYGA TS324

CHAIN BVALYGA TS204
~I do not think so, <CHARNAME>. But suit yourself.~
DO ~SetGlobal("LoveTalk","LOCALS",17) SetGlobal("VP_CityTalk","LOCALS",1) RealSetGlobalTimer("VP_ValygarCityTime","GLOBAL",900) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RestParty()~
EXIT

CHAIN BVALYGA TS205
~I am just doing my job, looking after a traveler in need... Are you feeling better? Yes, I can feel your fingers are not cold any longer. Look, the water is boiling... I'd make you a mug of a nice herbal brew...~
END
 ++ ~I feel like I just got a grandma, I never had...~ EXTERN BVALYGA TS206
 IF ~InParty("Jaheira")~ THEN REPLY ~Herbal brew? I do not know... Last time Jaheira made one, I had to accidentally spill it...~ EXTERN BVALYGA TS211
 ++ ~I want nothing, thank you. I think I will call it a day. Good night.~ EXTERN BVALYGA TS207

CHAIN BVALYGA TS206
~Be a good girl then, drink up the tea, your old granny Valygar made for you and then go sleep, and I will tuck the blankets around you...~
END
 ++ ~...and do not forget a lullaby... Thank you, Valygar, and good night to you...~ EXTERN BVALYGA TS207
 ++ ~Slow down, Valygar. You are not coming near my bedroll...~ EXTERN BVALYGA TS208
 ++ ~Oups... I am so clumsy... I spilt the tea... What a waste, it was really good...~ EXTERN BVALYGA TS209

CHAIN BVALYGA TS207
~Good night, <CHARNAME>.~
DO ~SetGlobal("LoveTalk","LOCALS",17) SetGlobal("VP_CityTalk","LOCALS",1) RealSetGlobalTimer("VP_ValygarCityTime","GLOBAL",900) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RestParty()~
EXIT

CHAIN BVALYGA TS208
~You're right. I won't bother you any longer.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",3) RestParty()~
EXIT

CHAIN BVALYGA TS209
~What a waste! It was exceptionally good. But it's too late to boil another pot, so my advice would be for you to get under your warmest blanket and sleep peacefully through the night.~
END
 ++ ~I will try, Valygar. I will really try.~ EXTERN BVALYGA TS210
 ++ ~Thank you, Valygar. Good night.~ EXTERN BVALYGA TS207

CHAIN BVALYGA TS210
~I hope your nightmares will leave you be tonight.~
DO ~SetGlobal("LoveTalk","LOCALS",17) SetGlobal("VP_CityTalk","LOCALS",1) RealSetGlobalTimer("VP_ValygarCityTime","GLOBAL",900) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RestParty()~
EXIT

CHAIN BVALYGA TS211
~Well... But it's good for you. Be a good girl then, drink up the tea... Here we go, not that bad, was it? Now, my advice would be for you to get under your warmest blanket and sleep peacefully through the night.~
END
 ++ ~I will try, Valygar. I will really try.~ EXTERN BVALYGA TS210
 ++ ~Thank you, Valygar. Good night.~ EXTERN BVALYGA TS207

CHAIN
IF WEIGHT #-81 ~Global("VP_CityTalk","LOCALS",3)~ THEN BVALYGA TS212
~I wish we'd spend less time in the city. I keep thinking I am going to run into some empty-headed noble who will try to involve me in endless, trivial small talk.~
END
 ++ ~Fear not, my friend, we are leaving very soon for better places than this cramped over-grown village. By the way Valygar, speaking of the nobility, what is your proper title?~ EXTERN BVALYGA TS213
 ++ ~I rather enjoy the city. Small talk is no big danger. By the way Valygar, speaking of the nobility, what's your proper title?~ EXTERN BVALYGA TS215
 ++ ~Valygar, can you stop complaining for once? Next thing you're gonna say is that the evil magic users are ruling Athkatla.~ EXTERN BVALYGA TS217

CHAIN BVALYGA TS213
~That would be pleasant. As for your question, I am a Count.~
END
 ++ ~Count Valygar Corthala? I am honored to have you in my party, your Lordship.~ EXTERN BVALYGA TS214

CHAIN BVALYGA TS214
~I'd be grateful if you'd spare me this nonsense. I am a woodsman, not a ballroom twit.~
DO ~SetGlobal("VP_CityTalk","LOCALS",4) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS215
~We all have our peculiarities. If you really need to know, I am a Count.~
END
 ++ ~How grand! Count Valygar Corthala and humble <CHARNAME> have left the sewers and are proceeding to the Copper Coronet to mix with the refined society there.~ EXTERN BVALYGA TS216

CHAIN BVALYGA TS216
~I knew that you would make fun of it. Well, at least my useless title puts a smile on your face.~
DO ~SetGlobal("VP_CityTalk","LOCALS",4) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS217
~(*He looks surprised*) Indeed they are, my friend. Their tentacles worm their way into every aspects of life in Amn.~
END
 ++ ~Oh, shut up. I am bored already.~ DO ~SetGlobal("ValygarRomanceActive","GLOBAL",3)~ EXIT

CHAIN
IF WEIGHT #-80 ~Global("LoveTalk","LOCALS",20)~ THEN BVALYGA TS218
~Where is the distinction between a mercenary and a great hero? When people listen to a bard's tale they forget how they tend to avoid those called "adventurers" at all costs in normal life. I look at you and I see that you live minute by minute. You rarely have time to stop and enjoy your life. They call you a hero; is it enough for you? Is it what you live for?~
END
 ++ ~What is a hero but a person without a choice? I wish I had never been thrown out on the road, but I am a survivor and I did my best under the circumstances. If they call me a hero for that - so be it. I would be much happier in Candlekeep. On the other hand, if it hadn't been for me fighting Saverok, Candlekeep might have been destroyed in the war my half-brother was devising.~ EXTERN BVALYGA TS219
 ++ ~What else is there to live for, Valygar? The quiet lifestyle is not for me! I am no commoner. I was destined for great deeds. I always knew that one day my name would be known by all. I would rather have it praised than cursed.~ EXTERN BVALYGA TS220
 ++ ~I am not a hero, Valygar. I am trying to set things right, that's all. I am very tired of that, but if not me - then who? I sincerely hope that among the endless battles I will not become a bloodthirsty monster, enjoying death and bringing it to everyone in my wake, friend and foe alike.~ EXTERN BVALYGA TS221
 ++ ~Let them ramble, Valygar. I care for one thing only: the spoils of victory. Those who are not with me are against me - it's as simple as that. Why over-complicate the matter?~ EXTERN BVALYGA TS222

CHAIN BVALYGA TS219
~Then you have done marvelously, my friend. I am proud to know you. One day you might get back to the candlelight, soft music, old books and solitude. I hope that will make you happier, than the dreary roads and bloody battles.~
END
 ++ ~It will never be the same, Valygar. Gorion is dead. I made and lost many friends. I discovered my true nature. I cannot go back as if nothing has happened.~ EXTERN BVALYGA TS223
 ++ ~Yes, Valygar, that's what I'll do eventually. I will try to forget the adventures, the dirt, the blood and the chanced road companions, as if it was a nightmare.~ EXTERN BVALYGA TS224
 ++ ~Solitude? Why did you say that? I knew many interesting people back home.~ EXTERN BVALYGA TS225
 ++ ~Valygar, you put me in a rotten mood. I do not want to talk about that or anything else with you.~ EXTERN BVALYGA TS226

CHAIN BVALYGA TS220
~Do you believe in fate?~
END
 ++ ~Yes I do. I have all reason to. I came to this world by the will of a dead god. My life is affected by prophecy.~ EXTERN BVALYGA TS227
 ++ ~Not really, but I believe that I was given the means to become a hero. Now I can refute it or I can take it and use it. I say, use it. I might get help from that mage, Irenicus and then...~ EXTERN BVALYGA TS228
 ++ ~Do you?~ EXTERN BVALYGA TS229

CHAIN BVALYGA TS221
~My friend, I am proud to know you. I sincerely hope that the monster does not overtake your beautiful soul.~
END
 ++ ~Quit this, Valygar. You embarrass me.~ EXTERN BVALYGA TS230
 ++ ~Your support means a lot to me. You are a valiant man and I value your friendship.~ EXTERN BVALYGA TS231
 ++ ~What do you know of my soul? You act like we have been friends for ages!~ EXTERN BVALYGA TS230

CHAIN BVALYGA TS222
~Why indeed? Thank you for being honest.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",3)~
EXIT

CHAIN BVALYGA TS223
~I know what you mean, <CHARNAME>. I cannot walk past the Corthala's former house without shivering. After what happened with my parents even happy memories hurt me. But you look sad now and I do not want to upset you even further. Just know that I will do anything I can to help you to get your peace.~
DO ~SetGlobal("LoveTalk","LOCALS",23) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",30) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS224
~I am glad to hear that...~
DO ~SetGlobal("LoveTalk","LOCALS",23) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",30) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS225
~Of course. My mistake. I imagined Candlekeep as a very secluded place. A nice person like you must have friends everywhere she goes.~
DO ~SetGlobal("LoveTalk","LOCALS",23) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",30) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS226
~I-I'm sorry, <CHARNAME>...I didn't mean to bother you. I'll talk to somebody else, instead.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",3)~
EXIT

CHAIN BVALYGA TS227
~(*smiles*) You have reason, indeed. So you are a hero against your own will. But you look sad now and I do not want to upset you even further. Just know that I will do anything I can to help you to get your peace.~
DO ~SetGlobal("LoveTalk","LOCALS",23) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",30) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS228
~Well, if it is the help of the evil wizard you are seeking, do not expect much of compassion from me.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",3)~
EXIT

CHAIN BVALYGA TS229
~(*laughs*) Cheater! When I think of the way we met, I start believing in fate. But I guess you are in no mood for more questions. I'll leave you be then.~
DO ~SetGlobal("LoveTalk","LOCALS",23) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",30) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS230
~I feel that way, <CHARNAME>. Indeed, it is not warranted by the short time I spent adventuring in your company, but I think of you as of one of my closest friends. I have to confess that I was studying you. I have compiled the most full collection of your faults and sins. But I also notice the emptiness and monotony of the other people. I will not hide that I seek your friendship.~
END
 ++ ~That's outrageous! I forbid you to spy on me.~ EXTERN BVALYGA TS232
 ++ ~I guess all I can do is to give you a nervous smile. But try not to spy on me too much, Stalker.~ EXTERN BVALYGA TS233
 ++ ~Your interest... flatters me somehow. I do not know why. You must be a very discrete man, since I have not noticed your prying.~ EXTERN BVALYGA TS233
 ++ ~(*smile mischievously*) So what is my greatest sin?~ EXTERN BVALYGA TS234

CHAIN BVALYGA TS231
~I am glad to hear that, <CHARNAME>. My loyalty to you is not the blind loyalty of a soldier. It is the loyalty of a friend.~
DO ~SetGlobal("LoveTalk","LOCALS",23) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",30) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS232
~I--I'm sorry, I didn't mean to bring it up that way.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",3)~
EXIT

CHAIN BVALYGA TS233
~Please, do not think that I spy on you, <CHARNAME>. I cannot help but notice what you say and what you do.~
DO ~SetGlobal("LoveTalk","LOCALS",23) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",30) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS234
~Being so incredibly beautiful that it makes me dizzy, of course.~
DO ~SetGlobal("LoveTalk","LOCALS",23) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",30) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN
IF WEIGHT #-79 ~Global("VP_TempleTalk","LOCALS",1)~ THEN BVALYGA TS235
~Wherever we go there are temples... So much effort to build houses for those who do not need homes. I cannot deny the beauty of it, but it pains me to see people placing their hopes in gods instead of taking charge of their own destiny.~
END
 ++ ~You are too harsh. Gods are part of our world and their patronage is important. A paladin in his righteous charge calls for Torm, a fierce Northerner dies with Tempus' name on his lips and the poor find much consolation in Ilmater's embrace.~ EXTERN BVALYGA TS236
 ++ ~You are a ranger, aren't you supposed to worship Mielikki?~ EXTERN BVALYGA TS240
 ++ ~I am not in a mood for a spiritual discussion.~ EXTERN BVALYGA TS243
 ++ ~May be... may be not.~ EXTERN BVALYGA TS244

CHAIN BVALYGA TS236
~And Cyric would enjoy the destruction, Gond will encourage an inventor of a destructive weapon, capable of killing thousands innocent on a spot, Lloth had turned a whole race into her slaves and she is ever on the look out for new victims... How are gods better than we are? They are capricious, corrupt and cruel. All they ever seek is power and thralls.~
END
 ++ ~Valygar, the gods are part of the balance of the realms. If you wish, then do not worship, but do not deny others the guidance and support of their chosen god.~ EXTERN BVALYGA TS237
 ++ ~You think you have all the answers don't you? I won't want to listen to your miserable meanderings again.~ EXTERN BVALYGA TS238
 ++ ~This dispute is better left for another time. Let's hurry now, Valygar.~ EXTERN BVALYGA TS239

CHAIN BVALYGA TS237
~I think, you are right... I have been arrogant. You are wiser than I, my friend, am.~
DO ~SetGlobal("VP_TempleTalk","LOCALS",2) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS238
~You're right. I won't bother you any longer.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",3) SetGlobal("VP_TempleTalk","LOCALS",2) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS239
~You're right. I won't bother you any longer.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",3) SetGlobal("VP_TempleTalk","LOCALS",2) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS240
~Supposed? I owe nothing to gods! I do not worship Mielikki. Many of my fellow rangers worship the Lady of the Forest out of loneliness. Even the strongest person needs company sometimes and prayer becomes a substitute for a friendship and conversation. But I am luckier, for I have a beautiful Lady by my side; real flesh and blood. And her heart is kind and open to the complaints of a humble woodsman.~
END
 ++ ~Why does it always come back to me, no matter where your conversation started?~ EXTERN BVALYGA TS241
 ++ ~Fascinating! But let's get moving...~ EXTERN BVALYGA TS242
 ++ ~This conversation is becoming too odd... I'd rather not know why lonely rangers in the woods worship Meilikki.~ EXTERN BVALYGA TS243

CHAIN BVALYGA TS241
~Truly, I wonder why myself.~
DO ~SetGlobal("VP_TempleTalk","LOCALS",2) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS242
~Of course, <CHARNAME>, I apologize.~
DO ~SetGlobal("VP_TempleTalk","LOCALS",2)~
EXIT

CHAIN BVALYGA TS243
~Sorry to bother you then.~
DO ~SetGlobal("VP_TempleTalk","LOCALS",2) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS244
~The way you said it... as if I am a child, who dares to talk of things he does not rightly understand. Your connection with divine runs deeper than mine. I can see that I have annoyed you. Forgive me, <CHARNAME>... I meant no disrespect.~
DO ~SetGlobal("VP_TempleTalk","LOCALS",2) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN
IF WEIGHT #-78 ~Global("LoveTalk","LOCALS",24)~ THEN BVALYGA TS245
~I have seen this look before. Why are you surprised that I keep a book in my backpack? Not much to compare to the former glory of the Corthala's library of course, but I cherish it and I would not be without it.~
END
 ++ ~I was not surprised that you have a book with you, I was just pondering on what book it might be.~ EXTERN BVALYGA TS246
 ++ ~Book? What book?~ EXTERN BVALYGA TS250
 ++ ~You can read?~ EXTERN BVALYGA TS251

CHAIN BVALYGA TS246
~It's a collection of stories about mariners and explorers... About those "whose chest is saturated not with the dust of the lost scrolls, but with the salt of the Seas. Of those who marks with a needle their dare route on a worn map..."~
END
 ++ ~The Corthala's did have a library... What a beautiful passage. Who said it?~ EXTERN BVALYGA TS249
 ++ ~I should have guessed. It suits your character. I will leave you to your reading then.~ EXTERN BVALYGA TS247
 ++ ~Slow down, Corthala. I have seen enough books in Candelkeep to last a lifetime.~ EXTERN BVALYGA TS248

CHAIN BVALYGA TS247
~As you wish.~
DO ~SetGlobal("LoveTalk","LOCALS",25) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",30) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RestParty()~
EXIT

CHAIN BVALYGA TS248
~In this case, we have nothing to discuss. Good night, <CHARNAME>.~
DO ~SetGlobal("LoveTalk","LOCALS",25) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",30) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RestParty()~
EXIT

CHAIN BVALYGA TS249
~A man of great virtue, I am sure. Unfortunately, I do not know his name. My father used to read me the whole poem, but I remember only few lines. My father... he became a mage, but he dreamt of something gentler before my mother dominated his mind entirely...~
DO ~SetGlobal("LoveTalk","LOCALS",25) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",30) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RestParty()~
EXIT

CHAIN BVALYGA TS250
~Oh, I am sorry, I thought you were looking my way.~
END
 ++ ~No, I was not.~ EXTERN BVALYGA TS248
 ++ ~No, I did not notice it, but now after you brought it up, I am curious what sort of book would Valygar Corthala carry with him?~ EXTERN BVALYGA TS246

CHAIN BVALYGA TS251
~Yes, I can.~
END
 ++ ~It was a bad joke, do not get offended, please. So, what book was it?~ EXTERN BVALYGA TS246
 ++ ~Amazing! I learn something new about you every day.~ EXTERN BVALYGA TS248

CHAIN
IF WEIGHT #-77 ~Global("LoveTalk","LOCALS",26)~ THEN BVALYGA TS252
~I can never get used to seeing you without your fighting gear. My fearless leader, ready for anything and seemingly knowing no doubts. Yet you suddenly look soft and gentle and so beautiful...~
END
 ++ ~But I still am your leader, and as such I order you to shut your mouth and get lost!~ EXTERN BVALYGA TS253
 ++ ~What was that? A compliment? Or are you accusing me of destroying your image of me?~ EXTERN BVALYGA TS254
 ++ ~Valygar, what were you drinking at dinner?~ EXTERN BVALYGA TS260

CHAIN BVALYGA TS253
~I did not mean to anger you, <CHARNAME>. I just wanted to say... Oh well, never mind. I am no good at this.~
DO ~SetGlobal("LoveTalk","LOCALS",27) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RestParty()~
EXIT

CHAIN BVALYGA TS254
~It's the truth. You are a beautiful woman and a leader I am proud to follow.~
END
 ++ ~That was a compliment then? Valygar, I was not expecting one from you. I didn't think that you were a lady's man.~ EXTERN BVALYGA TS255
 ++ ~Valygar, I am sorry... it was a bad joke. Your words made me feel vulnerable for some reason.~ EXTERN BVALYGA TS258
 ++ ~Actually it was a very sweet thing to say. I should have thanked you instead of exercising my wit. Can I compensate with an "I'm sorry" kiss?~ EXTERN BVALYGA TS259

CHAIN BVALYGA TS255
~I am not. But you are an unusual lady...~
END
 ++ ~Unusual lady? You mean all that Child of Bhaal stuff?~ EXTERN BVALYGA TS256
 ++ ~(*You roll your eyes and groan audibly.*) Valygar, this conversation... I do not like where it is leading. Let's stop right here.~ EXTERN BVALYGA TS257

CHAIN BVALYGA TS256
~No, not Bhaal. I think that you are much braver, and more honest, kind and intelligent then any woman I have met before.~
DO ~SetGlobal("LoveTalk","LOCALS",27) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RestParty()~
EXIT

CHAIN BVALYGA TS257
~If you say so.~
DO ~SetGlobal("LoveTalk","LOCALS",27) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RestParty()~
EXIT

CHAIN BVALYGA TS258
~You should not be shy... I think that you are much braver, more honest, kind and intelligent then any woman I have met before, and as such you should be used to compliments by now.~
DO ~SetGlobal("LoveTalk","LOCALS",27) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RestParty()~
EXIT

CHAIN BVALYGA TS259
~You do not have to... No, no... Kissing on a forehead is reserved for grandpas; people of our age should kiss with their lips... mmmgh...~
DO ~SetGlobal("LoveTalk","LOCALS",27) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RestParty()~
EXIT

CHAIN BVALYGA TS260
~Only water.~
END
 ++ ~That was a compliment then? Valygar, I was not expecting one from you. I didn't think that you were a lady's man.~ EXTERN BVALYGA TS255
 ++ ~Valygar, I am sorry... it was a bad joke. Your words made me feel vulnerable for some reason.~ EXTERN BVALYGA TS258
 ++ ~Actually it was a very sweet thing to say. I should have thanked you instead of exercising my wit. Can I compensate with an "I'm sorry" kiss?~ EXTERN BVALYGA TS259

CHAIN
IF WEIGHT #-76 ~Global("LoveTalk","LOCALS",28)~ THEN BVALYGA TS261
~I feel so free and yet strangely empty, now that Lavok is dead... What did you think of him, <CHARNAME>?~
END
 ++ ~I liked the old man... After all he was a Corthala, and I think Corthala males are the most handsome of men. Lavok would have been my prime choice for a lover. Too bad, he is pushing up daisies now.~ EXTERN BVALYGA TS262
 ++ ~Lavok was your nemesis, Valygar, and he nearly finished us all. I pitied him, but I was relieved when he died. We shall forget the dead monster and try to remember the man he once was...~ EXTERN BVALYGA TS266
 ++ ~Nothing really... He was your adversary, not mine. I am focusing all my thoughts on Irenicus.~ EXTERN BVALYGA TS269

CHAIN BVALYGA TS262
~What? What are you talking about? Woman, are you ever serious?~
END
 ++ ~If I was serious, I'd have to hang myself this very minute. I am hunting a mad wizard of immense power, Imoen is missing, my former companions are dead...~ EXTERN BVALYGA TS263
 ++ ~I can be serious. When I sleep. That's when I have nightmares...~ EXTERN BVALYGA TS263
 ++ ~Do you really want me to be serious?~ EXTERN BVALYGA TS263

CHAIN BVALYGA TS263
~I am an idiot. Of course, after all you went through, it's a miracle that you can still laugh and try to cheer up others. Who cares about a dead lich anyway? Forget I asked. But what was that about Corthala males?~
END
 ++ ~I said I think Corthala males are very handsome, Valygar... but I guess now only one remains...~ EXTERN BVALYGA TS264
 ++ ~You are a wonderful person, Valygar. If I were not seriously involved already, I would fall for you on the spot...~ EXTERN BVALYGA TS264
 ++ ~Nothing Valygar.~ EXTERN BVALYGA TS265

CHAIN BVALYGA TS264
~Hmph!~
DO ~SetGlobal("LoveTalk","LOCALS",29) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS265
~If you say so.~
DO ~SetGlobal("LoveTalk","LOCALS",29) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS266
~I do not know. I hated him, I loathed him and now I do not know. He was so pitiful, pleading for death... I think I created my own menace. As for enjoying life... I think I am finally starting to live.~
END
 ++ ~I am glad to hear that...~ EXTERN BVALYGA TS267
 ++ ~Whatever, let's just keep moving.~ EXTERN BVALYGA TS268

CHAIN BVALYGA TS267
~Thank you, <CHARNAME>, you are a great comfort.~
DO ~SetGlobal("LoveTalk","LOCALS",29) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS268
~Oh. Of...of course, my <LADYLORD>. As you wish.~
DO ~SetGlobal("LoveTalk","LOCALS",29) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS269
~Yes, of course. You helped me to enter the Sphere and defeat Lavok, and for that I am grateful. I cannot expect you to help me in my soul searching as well.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",3)~
EXIT

CHAIN
IF WEIGHT #-75 ~Global("LoveTalk","LOCALS",30)~ THEN BVALYGA TS346
~It is a sad day for me. Some years ago on this day my friend had fallen in battle. He was a wonderful man and he was so full of life. I wailed that day in pain, I felt as if my skin was ripped off me and I could not stop asking myself: why it was not I that met the arrow?~
END
 ++ ~Some of my friends died, some left my side... It is scary how difficult it is to find true friends and how easy it is to loose them. And the pain is terrible.~ EXTERN BVALYGA TS347
 ++ ~Sorry to hear that Valygar. But on the battlefield people fall. It is inevitable.~ EXTERN BVALYGA TS347
 ++ ~Valygar, I have no interest in this gruesome story.~ EXTERN BVALYGA TS353

CHAIN BVALYGA TS347
~Yes. He died in one of those pointless skirmishes on the border. It was not an orcish arrow that cut him down. A human, like myself, let it fly. A human who could have been my friend. I chased him in the battle, I sought him out and I attacked him that day.~
END
 ++ ~Valygar, you do not have to continue...~ EXTERN BVALYGA TS348
 ++ ~Did you kill him?~ EXTERN BVALYGA TS349
 ++ ~Ranger, I am in no mood for this, leave me be. ~ EXTERN BVALYGA TS353

CHAIN BVALYGA TS348
~I wanted to tell you that. Can I?~
END
 ++ ~If that will make you feel better, yes.~ EXTERN BVALYGA TS349
 ++ ~Sure thing. Good stuff. ~ EXTERN BVALYGA TS352
 ++ ~No, I do not want to hear another word from you.~ EXTERN BVALYGA TS353

CHAIN BVALYGA TS349
~I did not kill him. I could not. I thought that it would only multiply grief in the world, and it would not console me. He may still have a scar on the base of his neck, where my blade stopped. Next day I quit the army service. I will fight monsters, I will fight those who endanger the innocent, but I refuse to kill simply because I am ordered to.~
END
 ++ ~You take my orders to kill.~ EXTERN BVALYGA TS350
 ++ ~Even your own parents?~ EXTERN BVALYGA TS351
 ++ ~There is no thing worse and crueller than a sword wielded mindlessly. I praise your choice, Count Corthala.~ EXTERN BVALYGA TS355
 ++ ~You were weak. But I can understand that your friend's death grieved you.~ EXTERN BVALYGA TS355

CHAIN BVALYGA TS350
~That I do. I know what is your cause. It is a noble one: to rescue your friend from the Cowled Wizards. I would not follow you if I was not sure of that.~
DO ~SetGlobal("LoveTalk","LOCALS",31) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS351
~Apparently.~
END
 ++ ~Oh, Valygar, I am sorry. I did not mean to cause you more pain. Every time I look at you I cannot chase away the scary thoughts. I keep hearing in my head "Yet each man kills the thing he loves..." ~ EXTERN BVALYGA TS354
 ++ ~Good. A sign of a true fighter for goodness. Justice is blind.~ EXTERN BVALYGA TS357
 ++ ~Just do not start telling me that story all over again. One time was enough.~ EXTERN BVALYGA TS356

CHAIN BVALYGA TS352
~I do not think that my story is what you are thinking it is. I did not kill the man. And I quit the army the next day. I am ready to fight monsters, I am ready to fight those who endanger the innocent, but I refuse to kill simply because I am ordered to.~
END
 ++ ~You take my orders to kill.~ EXTERN BVALYGA TS350
 ++ ~Even your own parents?~ EXTERN BVALYGA TS351
 ++ ~There is no thing worse and crueller than a sword wielded mindlessly. I praise your choice, Count Corthala.~ EXTERN BVALYGA TS355
 ++ ~You were weak. But I can understand that your friend's death grieved you.~ EXTERN BVALYGA TS355

CHAIN BVALYGA TS353
~I-I'm sorry, <CHARNAME>...I didn't mean to bother you. I'll talk to somebody else, instead.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",3)~
EXIT

CHAIN BVALYGA TS354
~And so do I. <CHARNAME> trust me, I thought it over thousand times and I can neither forget, nor forgive myself. Valygar Corthala, the man who killed his parents and walked away unpunished. It's a contradiction, just like everything else in my life: I am a Count without inheritance, a noble without a family, a soldier without an army, a murderer without a crime.~
END
 ++ ~Valygar, there is no thing worse and crueller than a sword wielded mindlessly. I cannot imagine the pain nested in your soul. May be that's why you do not trust the gods? But I accept your choices, Count Corthala. I think so should you.~ EXTERN BVALYGA TS355
 ++ ~I cannot bear this nonsense anymore. You are a good fighter, but all that psycho-babble is unnerving me. Can you talk less?~ EXTERN BVALYGA TS356

CHAIN BVALYGA TS355
~I knew you would understand. My gentle friend, the more I know you, the more I admire you.~
DO ~SetGlobal("LoveTalk","LOCALS",31) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS356
~I do not think I shall talk to you again at all.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",3)~
EXIT

CHAIN BVALYGA TS357
~You think so? I do not.~
DO ~SetGlobal("LoveTalk","LOCALS",31) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN
IF WEIGHT #-74 ~Global("LoveTalk","LOCALS",32)~ THEN BVALYGA TS270
~Do you miss Candlekeep? I guess what I mean to ask is do you think of Candlekeep as of your home? A place you would want to return eventually?~
END
 ++ ~No way. I never liked living in Candlekeep with its funny, bookish monks and the narrow outlook of a small town.~ EXTERN BVALYGA TS271
 ++ ~Yes, I would. In Candlekeep my childhood memories live on... is Gorion's grave is nearby. Imoen and I dug it together... I feel connected to it and I will return.~ EXTERN BVALYGA TS279
 ++ ~I have no particular feeling. But it's a pleasant enough place. Folks are kindly. But you would not like it there.~ EXTERN BVALYGA TS282

CHAIN BVALYGA TS271
~Was there any place you felt like you belong too?~
END
 ++ ~Large cities full of people, like Athkatla or Baldur's Gate attract me. I think that after adventuring days are over, I'll find a nice house with an ocean view and settle there for good.~ EXTERN BVALYGA TS272
 ++ ~Wilderness of course. I could never understand why would one need other people around. Trees, beasts and birds are all the company I seek and I am happy with them.~ EXTERN BVALYGA TS275
 ++ ~I never gave it a thought, and I am not about to start now.~ EXTERN BVALYGA TS278

CHAIN BVALYGA TS272
~My family used to own a mansion in the Government district. I did not like it that much. I do not like cities... however Athkatla... Athkatla is different. Its streets are narrow as animal's trails and people act like beasts... (*laughs*)... I wouldn't say that I liked Athkatla, but I'm fond of it in a way. It is strange, that me a big city boy prefers small places far from the madding crowd and you, coming from just such a place would want to live in a big city. My door will always be open for you if you want to stay with me for a time.~
END
 ++ ~Thank you Valygar, it's very nice of you to invite me.~ EXTERN BVALYGA TS273
 ++ ~Valygar, I would not want to associate with you after our adventures are over. I have different plans.~ EXTERN BVALYGA TS274

CHAIN BVALYGA TS273
~It is my pleasure, as always.~
DO ~SetGlobal("LoveTalk","LOCALS",40) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS274
~As you wish.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",3)~
EXIT

CHAIN BVALYGA TS275
~You are my soul mate then? But sometimes the loneliness of the woods is too much for a person to bear... Trust me, I know. One needs friends even if he chooses solitude.~
END
 ++ ~I know Valygar. I am glad to have trusted companions with me. I would imagine some would come by to trade a tale or two in my humble lodge.~ EXTERN BVALYGA TS276
 ++ ~Solitude is fine with me. I never feel lonely. And I am so tired of your prattling.~ EXTERN BVALYGA TS277

CHAIN BVALYGA TS276
~I know that I would.~
DO ~SetGlobal("LoveTalk","LOCALS",40) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS277
~If you say so.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",3)~
EXIT

CHAIN BVALYGA TS278
~As you wish. I was merely curious.~
DO ~SetGlobal("LoveTalk","LOCALS",40) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS279
~The Umar Hills are like that for me... Though both of my parents are buried in Athkatla... But my father used to go hunting with me in the Hills. He was not capable of shooting an arrow straight, yet he did it for my sake... He was very kind and gentle person. I think of him and of the happy times we shared when I go there. I guess that's the same feeling you have for Candlekeep. I think I'd like to visit it one day.~
END
 ++ ~You would not like Candlekeep, Valygar . It's full of mages and life revolves around the library.~ EXTERN BVALYGA TS280
 ++ ~Why not? But it is difficult to gain an entry. You have to pay 10,000 gold pieces or carry a book of particular value... It is a really peculiar rule, but it is effective in keeping almost everyone out and in expanding the library.~ EXTERN BVALYGA TS281

CHAIN BVALYGA TS280
~May be... may be not.~
DO ~SetGlobal("LoveTalk","LOCALS",40) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS281
~If you lived there maybe you could help me to scale the wall or something... That's my only hope, because the Corthala's book collection is gone and I do not own much.~
DO ~SetGlobal("LoveTalk","LOCALS",40) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS282
~Why? Because the place is full of mages? I guess I've managed to create a negative impression on you, haven't I? I can manage to stay civil and not rush to kill every spellcaster in sight... if they are peaceful... or dead. I guess you are right, the place is not for me.~
DO ~SetGlobal("LoveTalk","LOCALS",40) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

// Spellhold - after Slayer's transformation

CHAIN
IF WEIGHT #-73 ~Global("VP_SlayerBanter","LOCALS",2)~ THEN BVALYGA TS283
~I never was one to pray to gods, but after what has happened to you I wish I could ask for someone more powerful than I to protect you, <CHARNAME>. I would not beg for my own empty soul, the soul of a wanderer without relations, but I would beg for the defense of this innocent girl, tormented by Bhaal. Is there no spirit warm and kind enough in this world to protect you?~
END
 ++ ~Thank... thank you. The shadow has passed and I pray that it will never happen again. I am so scared, Valygar.~ EXTERN BVALYGA TS284
 ++ ~Cut it out! Look at yourself: you are pale and tremble like a leaf in the wind. I am no innocent, you idiot! Power is coming to me. I do not know how to control it yet, but soon enough I will.~ EXTERN BVALYGA TS287
 ++ ~Valygar, gods are of no help, do not call for them. Help me chase down Irenicus and rip MY soul out of his body and I shall be whole again.~ EXTERN BVALYGA TS285
 ++ ~Protect me? Protect me against whom or what? From myself? I am a Bhaalspawn (*you laugh bitterly*).~ EXTERN BVALYGA TS288

CHAIN BVALYGA TS284
~My dear... It hurts me to see you like this. Nobody should have to go through torture like this and you in particular. I wait impatiently for the day when that evil mage pays for his crimes against you.~
END
 ++ ~That day will come soon, I swear. And when it comes I will be glad to have a trusted companion like you by my side.~ EXTERN BVALYGA TS285
 ++ ~Irenicus has committed many crimes. He has killed and tortured so many. He will pay for all of them when at last we confront him.~ EXTERN BVALYGA TS285
 ++ ~Valygar, I can see that you are upset, but please, calm down.~ EXTERN BVALYGA TS286

CHAIN BVALYGA TS285
~That's what I am here for, <CHARNAME>.~
DO ~SetGlobal("VP_SlayerBanter","LOCALS",3) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS286
~Yes, well, we should be going. I am fine now. Thank you.~
DO ~SetGlobal("VP_SlayerBanter","LOCALS",3) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS287
~Then the Evil got its grip on you...~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",3) SetGlobal("VP_SlayerBanter","LOCALS",3) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS288
~Come here and let me hold you for a moment. I know it's just an illusion but I feel like I am protecting you from the evils of the world.~
END
 ++ ~I am glad you're feeling better. Men are all alike.~ EXTERN BVALYGA TS289
 ++ ~Now that you have mentioned that, I do have the feeling of being protected... It is very safe here within your strong arms, Valygar.~ EXTERN BVALYGA TS285
 ++ ~(*whisper*) Are you mad? What would the others think?~ EXTERN BVALYGA TS290

CHAIN BVALYGA TS289
~If you say so.~
DO ~SetGlobal("VP_SlayerBanter","LOCALS",3) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS290
~Do you really care?~
END
 ++ ~No, let them talk... (*let Valygar hold you*)~ EXTERN BVALYGA TS291
 ++ ~Yes! (*you walk away from Valygar*)~ EXTERN BVALYGA TS292

CHAIN BVALYGA TS291
~Oh, <CHARNAME>, nothing is clear to me anymore...~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",2) SetGlobal("VP_SlayerBanter","LOCALS",3) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS292
~As you wish, <CHARNAME>.~
DO ~SetGlobal("VP_SlayerBanter","LOCALS",3) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN
IF WEIGHT #-72 ~Global("VP_DrowBanter","LOCALS",1)~ THEN BVALYGA TS293
~Oh, most powerful mistress, might a humble servant address you with a word of praise?~
END
 ++ ~(*loudly*) Silence, male! (*quietly*) Are you out of your mind? You will get us all killed.~ EXTERN BVALYGA TS294
 ++ ~I am willing to listen, but it'd better be a good one or I'll throw you to the spiders.~ EXTERN BVALYGA TS295
 IF ~!InParty("Viconia")~ THEN REPLY ~Mmmmgh... (*quietly*) Who knows how a typical female drow would react? Oh, what the heck... (*loudly*) Out with it, male!~ EXTERN BVALYGA TS295

CHAIN BVALYGA TS294
~(*Bows low and retreats to his place in line*)~
DO ~SetGlobal("VP_DrowBanter","LOCALS",2) RealSetGlobalTimer("VP_DrowBanterTimer","GLOBAL",10) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS295
~My most powerful mistress, your prowess in battle is unparalleled. The shine of your hair is brighter than mithril, your grace is unrivaled...~
END
 ++ ~Shut up male. One more word and you are a drider.~ EXTERN BVALYGA TS294
 ++ ~Nice, but I've had enough, Valygar.~ EXTERN BVALYGA TS296
 ++ ~You are stupid... but you amuse me. Your insolence is forgiven. Now fall back in line.~ EXTERN BVALYGA TS294

CHAIN BVALYGA TS296
~Really? But I've only just started.~
DO ~SetGlobal("VP_DrowBanter","LOCALS",2) RealSetGlobalTimer("VP_DrowBanterTimer","GLOBAL",10) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN
IF WEIGHT #-71 ~Global("VP_DrowBanter","LOCALS",3)~ THEN BVALYGA TS297
~You breath differently when you sleep... I am not surprised that your sleep is disturbed, with the terrifying events of the past few days on your mind. It is strange, but among all our troubles, what worries me the most is being a drow... I am afraid that the change is not just cosmetic.~
END
 ++ ~Valygar, I am not alone here if you take my meaning, please, go away.~ EXTERN BVALYGA TS298
 ++ ~Not cosmetic? You mean you are turning into a real drow? That could be dangerous.~ EXTERN BVALYGA TS299
 ++ ~Hmm, Valygar, I am not sure I follow you. Maybe if you rest, you will feel better? You know, we need to pretend to be drow if there is any hope to get to Irenicus.~ EXTERN BVALYGA TS306

CHAIN BVALYGA TS298
~Yes, yes, I understand. I am sorry. I shall go now and I will try not to bother you with words of this sort.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",3) SetGlobal("VP_DrowBanter","LOCALS",4) RestParty()~
EXIT

CHAIN BVALYGA TS299
~Dangerous? I am not sure it is dangerous to anyone but myself. When I look at you I start thinking like a drow would think of a female, a powerful, attractive female... And I wonder: what if...~
END
 ++ ~What if... what?~ EXTERN BVALYGA TS300
 ++ ~I am not sure I follow...~ EXTERN BVALYGA TS305
 ++ ~I have heard enough, please leave me be.~ EXTERN BVALYGA TS298

CHAIN BVALYGA TS300
~What if I could extend my hand and touch your cheek? What if I could hold you in my arms and kiss you? I dream about you. These caverns, they are so narrow and dark, and the air is stifling. I must be hallucinating...~
END
 ++ ~Ouch, that's bad. Must be cavern air for sure. Listen, soon we will be out of here. Let me know if your sickness does not diminish after we leave the Underdark. We will get some priest to take a look at you...~ EXTERN BVALYGA TS301
 ++ ~So you think it's some sort of madness? Maybe if you do what you were thinking of you will feel better?~ EXTERN BVALYGA TS302
 ++ ~(*Stay silent*)~ EXTERN BVALYGA TS303
 ++ ~Valygar, we are in Ust Natha. We cannot talk about things like that, someone might hear and our disguise would fail. Can we talk about it after we are back on the surface?~ EXTERN BVALYGA TS304

CHAIN BVALYGA TS301
~Yes, I will. Thank you for talking to me about this.~
DO ~SetGlobal("VP_DrowBanter","LOCALS",4) RestParty()~
EXIT

CHAIN BVALYGA TS302
~No, that would be real madness. I found in you a friend and a person I trust and respect. I cannot destroy it by acting like a foolish boy who knows no restraint. I shall go now and I will try not to bother you with words of this sort.~
DO ~SetGlobal("VP_DrowBanter","LOCALS",4) RestParty()~
EXIT

CHAIN BVALYGA TS303
~Yes, I understand, and you cannot reply to my madness. But the true madness would be for me to hide this from you and look at you and hope... Passion is silent. When it is dressed in words, it does not seem so unconquerable. I found in you a friend and a person I can trust and respect. I cannot destroy it by acting like a foolish boy who knows no restraint. I shall go now and I will try not to bother you with words of this sort.~
DO ~SetGlobal("VP_DrowBanter","LOCALS",4) RestParty()~
EXIT

CHAIN BVALYGA TS304
~Yes, yes, I understand. I am sorry. I shall go now and I will try not to bother you with words of this sort.~
DO ~SetGlobal("VP_DrowBanter","LOCALS",4) RestParty()~
EXIT

CHAIN BVALYGA TS305
~I dream about you. I see you with me, and I embrace you and kiss you... These caverns, they are so narrow and dark, and the air is stifling. I must be hallucinating.~
END
 ++ ~Ouch, that's bad. Must be cavern air for sure. Listen, soon we will be out of here. Let me know if your sickness does not diminish after we leave the Underdark. We will get some priest to take a look at you...~ EXTERN BVALYGA TS301
 ++ ~So you think it's some sort of madness? Maybe if you do what you were thinking of you will feel better?~ EXTERN BVALYGA TS302
 ++ ~(*stay silent*)~ EXTERN BVALYGA TS303
 ++ ~Valygar, we are in Ust Natha. We cannot talk about things like that, someone might hear and our disguise would fail. Can we talk about it after we are back on the surface?~ EXTERN BVALYGA TS304

CHAIN BVALYGA TS306
~I know that. Our companions are fast asleep; I see no spying eyes around us for once, so I can speak. Besides, my emotions are strange, and they are quite fitting to our disguise. When I look at you I start thinking like a drow would think of a female, a powerful, attractive female... and I wonder: what if...~
END
 ++ ~What if... what?~ EXTERN BVALYGA TS300
 ++ ~I am not sure I follow...~ EXTERN BVALYGA TS305
 ++ ~I have heard enough, please leave me be.~ EXTERN BVALYGA TS298

CHAIN
IF WEIGHT #-70 ~Global("VP_DrowBanter","LOCALS",6)~ THEN BVALYGA TS307
~I must tell you, <CHARNAME>, how sorry I feel about our last conversation. Please, do not avoid me. I should not have told you so much, but it was the only way I could stop myself from throwing myself at your feet and begging for your favour. Now away from the Underdark, I am in control of myself again.~
END
 ++ ~Apology accepted. We were cooped up in the drow city, it's understandable that you spoke out of turn. But watch your tongue from now on.~ EXTERN BVALYGA TS308
 ++ ~Valygar, it really did not offend me, I am already in a serious stable relationship, and what other men think does not bother me.~ EXTERN BVALYGA TS308
 ++ ~So in other words I am just a traveling companion once more and you have no clue why in the Nine Hells you could have been attracted to me. I am so flattered, Valygar!~ EXTERN BVALYGA TS309
 ++ ~You know, if that is what it takes for you to be honest about your feelings then you should have stayed in Ust Natha. Think about moving there, Valygar.~ EXTERN BVALYGA TS311
 ++ ~No harm done. I am still thinking about what you have said, and it makes me blush... but really, no harm done. We are still friends.~ EXTERN BVALYGA TS312

CHAIN BVALYGA TS308
~Thank you, my friend. I appreciate you being so considerate. However, I am a rough woodsman, a man on the run, a fugitive from the law... The Cowled Wizards would never forgive me slaying one of their... I will never be able to live anywhere openly in Amn. I have nothing worthy to throw to your feet. How can I even dare to ask for your attention?~
DO ~SetGlobal("VP_DrowBanter","LOCALS",7)~
EXIT

CHAIN BVALYGA TS309
~No, I did not mean it like that. You are a wonderfully beautiful and intelligent woman... Any man would loose his head from your slightest smile. And you deserve the most beautiful and precious things in life, you deserve boundless adoration and love... and stability... And what am I? A rough woodsman, a man on the run, a fugitive from the law... The Cowled Wizards will never forgive me slaying one of their own... I will never be able to live anywhere openly in Amn. I have nothing worthy to throw to your feet. How can I even dare to ask for your attention?~
END
 ++ ~Hmm, Valygar...~ EXTERN BVALYGA TS310

CHAIN BVALYGA TS310
~(*Valygar takes hold of your hand and kisses it. He shakes his head negatively and walks away before you can say anything*)~
DO ~SetGlobal("VP_DrowBanter","LOCALS",7)~
EXIT

CHAIN BVALYGA TS311
~My true feelings? Do you really want to know how I feel? A rough woodsman, a man on the run, a fugitive from the law... The Cowled Wizards would never forgive me slaying one of their... I will never be able to live anywhere openly in Amn. I have nothing worthy to throw to your feet. How can I even dare to ask for your attention? (*Valygar storms away*)~
DO ~SetGlobal("VP_DrowBanter","LOCALS",7)~
EXIT

CHAIN BVALYGA TS312
~Thank you, my friend. I appreciate you being so considerate. However, I am a rough woodsman, a man on the run, a fugitive from the law... The Cowled Wizards would never forgive me slaying one of their... I will never be able to live anywhere openly in Amn. I have nothing worthy to throw to your feet. How can I even dare to ask for your attention?~
END
 ++ ~Listen, Valygar...~ EXTERN BVALYGA TS310

CHAIN
IF WEIGHT #-69 ~Global("LoveTalk","LOCALS",42)~ THEN BVALYGA TS313
~You know, I keep this trinket... This necklace should be worn by a young and beautiful lady, not be stuffed in a dirty backpack. Would you take it?~
END
 ++ ~You own a string of pearls? No end of surprises from you ranger. Is it not a bit... awkward for the strong and silent type?~ EXTERN BVALYGA TS314
 ++ ~Just sell it; we need money for more important things than beads on a string... beautiful as they may be...~ EXTERN BVALYGA TS317
 ++ ~Thank you Valygar, it's very beautiful... It feels unusual, is it magical?~ EXTERN BVALYGA TS314

CHAIN BVALYGA TS314
~It belonged to Abyssina Corthala, my mother. I sold everything, but this after my parents passed away. I remember playing with it when I was very small, and when she was not yet completely oblivious to my existence. It's magical of course.~
END
 ++ ~It is an important family relic for you. I cannot accept it, Valygar.~ EXTERN BVALYGA TS315
 ++ ~It might be useful. Do you mind though if I give it to someone else... depending on what it does, I might not be the right person to wear it.~ EXTERN BVALYGA TS316

CHAIN BVALYGA TS315
~I want you to have it. Here, stand still, while I fasten it... It looks beautiful on you, <CHARNAME>. If you do not want to wear it yourself... I guess you can give it back to me... or lend it to someone else... it's yours. Do what you wish with it.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",2) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",30) SetGlobal("LoveTalk","LOCALS",43) DestroyItem("ValNeck1") GiveItemCreate("ValNeck2",Protagonist,0,0,0) RestParty()~
EXIT

CHAIN BVALYGA TS316
~Well, yes, it's yours, do what you wish with it. Yet it would look beautiful on you.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",3) DestroyItem("ValNeck1") GiveItemCreate("ValNeck2",Protagonist,0,0,0) RestParty()~
EXIT

CHAIN BVALYGA TS317
~Yes, it's beautiful. It belonged to Abyssina Corthala, my mother, and it is magical. I'd rather keep it if you do not want it.~
END
 ++ ~It is an important family relic for you. I cannot accept it, Valygar.~ EXTERN BVALYGA TS315
 ++ ~It might be useful. Do you mind though if I give it to someone else... depending on what it does, I might not be the right person to wear it.~ EXTERN BVALYGA TS316

CHAIN
IF WEIGHT #-68 ~Global("LoveTalk","LOCALS",44)~ THEN BVALYGA TS318
~You know what fascinates me when I look at the brave adventuring ladies?~
END
 ++ ~No, and I have no use for your opinion anyway.~ EXTERN BVALYGA TS319
 ++ ~No, but please tell me, Valygar.~ EXTERN BVALYGA TS320

CHAIN BVALYGA TS319
~I...I must seem very foolish to you, I suppose. I will not bother you again, <CHARNAME>.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",3) RestParty()~
EXIT

CHAIN BVALYGA TS320
~We fight the same battles, we walk the same roads, yet the ladys' hair is always neatly braided. When and how they do it is beyond me.~
END
 ++ ~Ever heard of a haircut, Valygar?~ EXTERN BVALYGA TS321
 ++ ~(*smile*) Is this a masqueraded plea for help? Come, sit down, I'll see what can be done with your unruly mane, ranger.~ EXTERN BVALYGA TS322
 ++ ~Really? I have never noticed any difference after helmets are on.~ EXTERN BVALYGA TS323

CHAIN BVALYGA TS321
~Yes, and I so yearn for it.~
DO ~SetGlobal("LoveTalk","LOCALS",45) SetGlobal("VP_OutdoorTalk","LOCALS",1) RealSetGlobalTimer("VP_ValygarOutdoorT","GLOBAL",900) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RestParty()~
EXIT

CHAIN BVALYGA TS322
~You are going to braid my hair? Whom do you think I am, an effete elf? Nay, I'll just tie them all up with a leather band.~
DO ~SetGlobal("LoveTalk","LOCALS",45) SetGlobal("VP_OutdoorTalk","LOCALS",1) RealSetGlobalTimer("VP_ValygarOutdoorT","GLOBAL",900) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RestParty()~
EXIT

CHAIN BVALYGA TS323
~I guess. Are demigods ever wrong?~
DO ~SetGlobal("LoveTalk","LOCALS",45) SetGlobal("VP_OutdoorTalk","LOCALS",1) RealSetGlobalTimer("VP_ValygarOutdoorT","GLOBAL",900) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0) RestParty()~
EXIT

CHAIN BVALYGA TS324
~Yes, yes, I understand. I am sorry. I shall go now and I will try not to bother you with words of this sort.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",3) RestParty()~
EXIT

CHAIN
IF WEIGHT #-67 ~Global("VP_OutdoorTalk","LOCALS",3)~ THEN BVALYGA TS412
~A strange thing has happened this morning, I was walking about and found these little purple flowers. Before I knew what I was doing I had picked a bunch and I don't have the heart to throw them away. Yet, before anybody else sees me carrying them around, would you mind taking the flowers? To save me the embarrassment?~
END
 ++ ~Those are violets. I wonder where did you manage to find them this time of the year? I would wear them, but my attire is hardly fitting...~ EXTERN BVALYGA TS413
 ++ ~Valygar, would you mind giving it to somebody else? It's not that I do not like the flowers, but...~ EXTERN BVALYGA TS415
 ++ ~Now you are bringing me flowers... What's next? Are you going to ask to hold my hand before our next battle?~ EXTERN BVALYGA TS416

CHAIN BVALYGA TS413
~Still more fitting then mine... Of course I can try to arrange them in the seam of my armour or attach them to my helmet... But <CHARNAME> please, do not make me do it...~
END
 ++ ~All right, I'll try to find a place for them... near my heart of course.~ EXTERN BVALYGA TS414
 ++ ~No way. I will look just as ridiculous as you. I am an adventurer after all. Would you mind giving the flowers to someone else instead?~ EXTERN BVALYGA TS415

CHAIN BVALYGA TS414
~Thank you, <CHARNAME>.~
DO ~SetGlobal("VP_OutdoorTalk","LOCALS",4) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS415
~Of course, forgive my stupidity.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",3)~
EXIT

CHAIN BVALYGA TS416
~No, no, do not worry about that. I am a woodsman, not a ballroom twit or a paladin... And I am fighting with you, not participating in some silly jousting competition. I assure you, taking the flowers would not be followed by bad poetry reciting or piling dragonheads at your feet. Will you take the flowers?~
END
 ++ ~No way. I will look just as ridiculous as you. I am an adventurer after all. Would you mind giving the flowers to someone else instead?~ EXTERN BVALYGA TS415
 ++ ~All right, I'll try to find a place for them... near my heart of course... And I see no harm in couple of dragon heads or perhaps a very short poem, just don't go overboard.~ EXTERN BVALYGA TS414


CHAIN
IF WEIGHT #-66 ~Global("LoveTalk","LOCALS",48)~ THEN BVALYGA TS417
~Hmm, say <CHARNAME> if you were to... love a man, what kind of a man that would be?~
END
 ++ ~A silent one.~ EXTERN BVALYGA TS418
 IF ~InParty("Anomen")~ THEN REPLY ~Valygar, are you deaf and blind? Are you the only one who does not know? See this man over there? I love him and I am practically married to him. I hope that answers your question~ EXTERN BVALYGA TS418
 ++ ~Since my childhood I have read about brave knights in shining armour... One day I'll fall for one of those noble paladins, for sure.~ EXTERN BVALYGA TS419
 ++ ~A strong man, who can win any battle and who has considerable bravery. I'd have to do the thinking though.~ EXTERN BVALYGA TS420
 ++ ~A man of the wild, may be a bit sombre. A man who is capable, if a little shy of his emotions.~ EXTERN BVALYGA TS421
 ++ ~A person with a golden tongue and light character.~ EXTERN BVALYGA TS422
 ++ ~A man who can wield magical energies and cast spells.~ EXTERN BVALYGA TS423
 ++ ~A rogue, travelling Faerun, believing that all he sees can be his.~ EXTERN BVALYGA TS425
 ++ ~A man who is close to nature and strives to maintain the balance.~ EXTERN BVALYGA TS426
 ++ ~A man who speaks to gods.~ EXTERN BVALYGA TS427

CHAIN BVALYGA TS418
~Oh...of course, <CHARNAME>. I didn't mean to bother you.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",3)~
EXIT

CHAIN BVALYGA TS419
~(*smiles*) That is a wise choice, <CHARNAME>.~
DO ~SetGlobal("LoveTalk","LOCALS",49) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS420
~ Surely.~
DO ~SetGlobal("LoveTalk","LOCALS",49) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS421
~Oh...~
END
 ++ ~Do not get your hopes too high though, I was speaking in general terms.~ EXTERN BVALYGA TS420
 ++ ~And a man who I have never before seen blush.~ EXTERN BVALYGA TS420

CHAIN BVALYGA TS422
~You cannot be serious.~
DO ~SetGlobal("LoveTalk","LOCALS",49) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS423
~I must caution you against such a choice. Mages... they are just too consumed by their studies to really love and have family...~
END
 ++ ~Valygar, look at sorcerers, they just channel energies through themselves and do not have to study at all!~ EXTERN BVALYGA TS424
 ++ ~Well, that's what I want!~ EXTERN BVALYGA TS420

CHAIN BVALYGA TS424
~They are just as consumed by the lust for power as mages.~
DO ~SetGlobal("LoveTalk","LOCALS",49) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS425
~I would not have expected that from you.~
DO ~SetGlobal("LoveTalk","LOCALS",49) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS426
~Balance is a noble goal... but neutrality is often achieved by sacrificing passions and personal attachments.~
DO ~SetGlobal("LoveTalk","LOCALS",49) RealSetGlobalTimer("VP_ValygarRomance","GLOBAL",1200) SetGlobal("VP_LoveTalkDelay","LOCALS",0)~
EXIT

CHAIN BVALYGA TS427
~They are the strange sort, but may be piety is what your blood demands.~
END
 ++ ~Hmm, may be. But I think I am more attracted to their spirituality, than to the possibility of being converted to their faith.~ EXTERN BVALYGA TS424
 ++ ~You got it.~ EXTERN BVALYGA TS420

CHAIN
IF WEIGHT #-65 ~Global("LoveTalk","LOCALS",50)~ THEN BVALYGA TS428
~You know everything shines about you... your eyes, your lips, your teeth, your hair... I think that in the night time one does not need a torch when you are around...~
END
 ++ ~Oh, that's such a lovely thing to say, thank you Valygar.~ EXTERN BVALYGA TS429
 IF ~OR(3) Class(Player1,FIGHTER) Class(Player1,CLERIC) Class(Player1,PALADIN)~ THEN REPLY ~Yeah, and so does my armour.~ EXTERN BVALYGA TS430
 ++ ~Sounds like I can apply for a job with a lighthouse...~ EXTERN BVALYGA TS431
 ++ ~Valygar, you know, it is a bit out of place to say such things to a group leader... May I ask you not to do so again?~ EXTERN BVALYGA TS431

CHAIN BVALYGA TS429
~My pleasure... You are a delight to look upon.~
DO ~SetGlobal("LoveTalk","LOCALS",51)~
EXIT

CHAIN BVALYGA TS430
~Yes, it does... Woman, do you have any flaws?~
DO ~SetGlobal("LoveTalk","LOCALS",51)~
EXIT

CHAIN BVALYGA TS431
~I was never good with words... I just wanted to tell you...~
END
 ++ ~I know what you meant to say. And you said it very well.~ EXTERN BVALYGA TS432
 ++ ~The words are fine, Valygar, I just do not wish to hear them from you.~ EXTERN BVALYGA TS433
 ++ ~Well, just do not try to make it as a bard, you'd soon starve...~ EXTERN BVALYGA TS434

CHAIN BVALYGA TS432
~(*laughs*) You have made my day, <CHARNAME>.~
DO ~SetGlobal("LoveTalk","LOCALS",51)~
EXIT

CHAIN BVALYGA TS433
~Oh... of course, <CHARNAME>. I didn't mean to bother you.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",3)~
EXIT

CHAIN BVALYGA TS434
~No, why would I? I am not mad enough to ask people to pay money to listen to me sing.~
DO ~SetGlobal("LoveTalk","LOCALS",51)~
EXIT

CHAIN BVALYGA TS435
~You remind me of a nightingale I heard singing last morn. It was high above the Toril, but yet not so high so that his song couldn't reach the ground anymore... That's how you are. You are above us mortals, but you are still among us. Your power grows and my heart tells me that you are one of those who might walk among the gods one day. Would you fly high into the sky, given the choice?~
END
 ++ ~It's meaningless to ponder about such things before the choice is offered, Valygar. I am a mortal woman for now, and as such I do not know what the future has in store for me. I care only of staying alive from dawn to dawn.~ EXTERN BVALYGA TS436
 ++ ~I would, Valygar.~ EXTERN BVALYGA TS437
 ++ ~Me, a goddess? No, I am not applying for a job like that. I'd die from overexertion trying to do things right. A group of five-six people I can manage, but an army of power-hungry priests, fanatical devotees and annoying avatars? Nope, I want no part of it.~ EXTERN BVALYGA TS438
 ++ ~I was born mortal and I will stay mortal. I wish to take all I can from life. Adventure, romance, may be family and quiet retirement one day.~ EXTERN BVALYGA TS440

CHAIN BVALYGA TS436
~I understand... You are a very sensible person <CHARNAME>. I hope you will not fly too far away one day.~
DO ~SetGlobal("LoveTalk","LOCALS",51)~
EXIT

CHAIN BVALYGA TS437
~So you have decided already. I see. Very well, do what you need to do. But remember that from so far away you will be just a speck to those you loved and who loved you. Their voices will be lost in the constant stream of your devotee's prayers.~
END
 ++ ~On second thought you may be right, Valygar. I should think more on that.~ EXTERN BVALYGA TS438
 ++ ~And that's the way I want it. ~ EXTERN BVALYGA TS439

CHAIN BVALYGA TS438
~I hope you are serious. I can never tell it with you.~
DO ~SetGlobal("LoveTalk","LOCALS",51)~
EXIT

CHAIN BVALYGA TS439
~Fine. Do what you want...it's got nothing to do with me.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",3)~
EXIT

CHAIN BVALYGA TS440
~Really? You want all those things? But that's wonderful! Well, I mean, it's great that you know so well what you want.~
DO ~SetGlobal("LoveTalk","LOCALS",51)~
EXIT

CHAIN BVALYGA TS441
~When I walk over the fallen leaves I often think that those are the past days of my life. Some are bright, some dark, some half-rotten... But it does not matter any more. The past is the past and future we know not. What we need to worry about is today. Do you agree, <CHARNAME>?~
END
 ++ ~Melancholy does not suit you, Valygar. But you are right: who gives a damn about the past? And what is the point to try to guess what is in store for us? Today is real. Let's try to make it a great day.~ EXTERN BVALYGA TS442
 ++ ~Both the past and the future are important. Today is the consequence of yesterday's doings. Tomorrow is what we are looking forward to, when the things get rough.~ EXTERN BVALYGA TS446
 ++ ~(*sigh*): The desires of my siblings are about to come true: I am going to die of boredom, talking to you. Is that what you want?~ EXTERN BVALYGA TS447

CHAIN BVALYGA TS442
~I guess, I'll try to be more cheerful to please you next time I speak to you. As of late I do not care much for anything in my past that was not connected to you. I do not care what is in store for tomorrow as long as I can be around you.~
END
 ++ ~I... I do not know what to say...~ EXTERN BVALYGA TS443
 ++ ~Valygar, let's not continue this conversation. Do not walk on the thin ice, for you might fall through it and drown.~ EXTERN BVALYGA TS444
 ++ ~(*stay silent*)~ EXTERN BVALYGA TS443
 ++ ~I feel the same way, Valygar.~ EXTERN BVALYGA TS445

CHAIN BVALYGA TS443
~Say nothing then.~
DO ~SetGlobal("LoveTalk","LOCALS",51)~
EXIT

CHAIN BVALYGA TS444
~I am not easily frightened, <CHARNAME>.~
DO ~SetGlobal("LoveTalk","LOCALS",51)~
EXIT

CHAIN BVALYGA TS445
~You give me hope that one day there will be more to our lives than swords and spells... But... even now we need to go.~
EXIT

CHAIN BVALYGA TS446
~Maybe... I am nearing thirty and all that has passed cannot be washed away from my soul by soap or by ale. But as of late I do not care much for anything in my past that was not connected to you. I do not care what is in store for tomorrow as long as I can be around you.~
END
 ++ ~I... I do not know what to say...~ EXTERN BVALYGA TS443
 ++ ~Valygar, let's not continue this conversation. Do not walk on the thin ice, for you might fall through it and drown.~ EXTERN BVALYGA TS444
 ++ ~(*stay silent*)~ EXTERN BVALYGA TS443
 ++ ~I feel the same way Valygar.~ EXTERN BVALYGA TS445

CHAIN BVALYGA TS447
~I-I'm sorry, <CHARNAME>...I didn't mean to bother you. I'll talk to somebody else, instead.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",3)~
EXIT

CHAIN BVALYGA TS448
~I was dreaming of the ocean, <CHARNAME>. And of my mother. All I have left of her is the name of the village in northern Zakhara that she came from. She used to promise me that one day we'd take a ship and voyage to Zakhara... It never came to be.~
END
 ++ ~That's so sad. May be one day you can travel there on your own and see your people.~ EXTERN BVALYGA TS449
 ++ ~Where is Zakhara? What was your mother's name? How did she end up in Faerun? Why...~ EXTERN BVALYGA TS459
 ++ ~Well, you cannot do anything about it now, can you? You mother is, ah, dead, is she not?~ EXTERN BVALYGA TS460

CHAIN BVALYGA TS449
~Maybe. You know, I dream sometimes about building a ship and sailing to Zakhara.~
END
 ++ ~Ranger on the high seas... Valygar, do hire professional help, if you go for it, won't you? ~ EXTERN BVALYGA TS450
 ++ ~That sounds so romantic...~ EXTERN BVALYGA TS457
 ++ ~Yeah, sure. Whatever you say.~ EXTERN BVALYGA TS458

CHAIN BVALYGA TS450
~Are you worried about me? I would hire help to build the ship, of course... But I also thought about help of another kind... Do you think that one day, when your quest is over, you might want to come along? I will steer the ship and you will sing to the winds and waves to make our passage a pleasure.~
END
 ++ ~Hmm, I must tell you that I have other obligations after my quest is done... Sorry Valygar, it seems that you will have to go on your own, but I wish you the very best of luck.~ EXTERN BVALYGA TS451
 ++ ~No, I would not. I am sure you will find someone else to sit under the white sails of your ship, Valygar.~ EXTERN BVALYGA TS451
 ++ ~I... I would. But only if your navigational skills are better then my singing... Otherwise we'd drown before lifting the anchor.~ EXTERN BVALYGA TS452
 ++ ~I will come with you Valygar. But I am afraid that day may be far away...~ EXTERN BVALYGA TS456

CHAIN BVALYGA TS451
~Oh...of course, <CHARNAME>. I didn't mean to bother you.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",3)~
EXIT

CHAIN BVALYGA TS452
~We can both learn... Or if we are hopeless, we can take a merchant ship... It might not be so beautiful, but...~
END
 ++ ~Do finish the sentence, Valygar. ~ EXTERN BVALYGA TS453

CHAIN BVALYGA TS453
~...but we would still be together.~
END
 ++ ~I knew you would say that. I like that idea.~ EXTERN BVALYGA TS454
 IF ~InParty("Anomen")~ THEN REPLY ~Well, some of our companions may join in the venture.~ EXTERN BVALYGA TS455
 ++ ~Glad you pointed that out. On the second thought I changed my mind. I do not want to go anywhere alone with you.~ EXTERN BVALYGA TS451

CHAIN BVALYGA TS454
~You are kind to say so, my lady. Thank you.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",2) SetGlobal("LoveTalk","LOCALS",51)~
EXIT

CHAIN BVALYGA TS455
~As you wish. Let my cold silence be your companion, then.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",3)~
EXIT

CHAIN BVALYGA TS456
~It does not matter how far away that day is. The plans are laid and I will do my best to help you through the terrible mess your heritage turned your life into. Just stay alive and I will wait as long as is required.~
END
 ++ ~You take care of yourself too, Valygar.~ EXTERN BVALYGA TS454

CHAIN BVALYGA TS457
~(*coughs*) Do you think that one day, when your quests are over, you'd want to come along? I will steer the ship and you will sing to the winds and waves to make our passage a pleasure?~
END
 ++ ~Hmm, I must tell you that I have other obligations after my quests are done... Sorry Valygar, it seems that you would have to go on your own, but I wish you the very best of luck.~ EXTERN BVALYGA TS451
 ++ ~No, I would not. I am sure you will find someone else to sit under the white sails of your ship, Valygar.~ EXTERN BVALYGA TS451
 ++ ~I... I would. But only if your navigational skills are better then my singing... Otherwise we'd drown before lifting the anchor.~ EXTERN BVALYGA TS452
 ++ ~I will come with you Valygar. But I am afraid that day may be far away...~ EXTERN BVALYGA TS456

CHAIN BVALYGA TS458
~Oh, well that's okay, then.~
DO ~SetGlobal("ValygarRomanceActive","GLOBAL",3)~
EXIT

CHAIN BVALYGA TS459
~I did not know that my past is so interesting to you. Abyssina is my mother's name... as I told you before. As far as I know she was a war mage on a ship which stopped in Athkatla... and that's how she met my father... Zakhara is a large land south from Faerun and that's where my mother came from. You know, I dream sometimes about building a ship and sailing to Zakhara...~
END
 ++ ~Ranger on the high seas... Valygar, do hire professional help, if you go for it, won't you? ~ EXTERN BVALYGA TS450
 ++ ~That sounds so romantic...~ EXTERN BVALYGA TS457
 ++ ~Yeah, sure. Whatever you say.~ EXTERN BVALYGA TS458

CHAIN BVALYGA TS460
~You mean I killed her? Not her, an undead monster she became... still, it's always haunted me. I never really knew her. She was always too busy to talk to me when I was growing up. Then I stopped trying. But I dream sometimes about building a ship and sailing to Zakhara.~
END
 ++ ~Ranger on the high seas... Valygar, do hire professional help, if you go for it, will you? ~ EXTERN BVALYGA TS450
 ++ ~That sounds so romantic.~ EXTERN BVALYGA TS457
 ++ ~Yeah, sure. Whatever you say.~ EXTERN BVALYGA TS458

// Banters

CHAIN
IF WEIGHT #-64 ~Global("VP_BValygar1","LOCALS",2)~ THEN BVALYGA TS325
~I look at you and at <CHARNAME> and I cannot stop wondering. You are so similar and yet so different... Both flamboyant, both capable of what few man could hope to accomplish, both so spirited...~
DO ~SetGlobal("VP_BValygar1","LOCALS",3)~ EXTERN BIMOEN2 2

CHAIN BVALYGA TS326
~This question, my gorgeous goddess, is one I will answer only with my advocate present.~
EXTERN BIMOEN2 3

CHAIN BVALYGA TS327
~Is that true? Did she blush?~
EXTERN BIMOEN2 4

CHAIN BVALYGA TS328
~Then you know more of the matter than I do.~
EXTERN BIMOEN2 5

CHAIN
IF WEIGHT #-63 ~Global("VP_BValygar2","LOCALS",2)~ THEN BVALYGA TS329
~(*Whistles some tune and looks thoughtful. From time to time his gaze stops at you and he sighs.*)~
DO ~SetGlobal("VP_BValygar2","LOCALS",3)~ EXTERN BMAZZY TS132

CHAIN BVALYGA TS330
~(*He is too deep in thought to hear, or he is ignoring Mazzy*.)~
END
 ++ ~Valygar, I think Mazzy would like to speak to you.~ EXTERN BMAZZY TS133
 ++ ~Mazzy, I think it had been a very long and tiring day. May be you can wait till next morning to talk to him?~ EXTERN BMAZZY TS136

CHAIN BVALYGA TS331
~Mazzy, she did not say anything to deserve this outburst from you. And I have a name.~
EXTERN BMAZZY TS134

CHAIN BVALYGA TS332
~Mazzy you make absolutely no sense. Valygar Corthala is my name and to that will I answer. While I appreciate the special... ahem... attention you have shown me in selecting me as your squire, I still do not fully understand why don't you pick someone more... willing.~
EXTERN BMAZZY TS135

CHAIN BVALYGA TS333
~Mazzy, I really do not want to debate this issue any longer.~
EXIT

CHAIN BVALYGA TS334
~Mazzy, <CHARNAME> is right, the night is grown too late for talking. I would listen to what you have to say on the morn.~
EXTERN BMAZZY TS137

CHAIN BVALYGA TS335
~Precisely, Lady Fentan.~
EXTERN BMAZZY TS138

CHAIN BVALYGA TS336
~I am tired, just like <CHARNAME> had noticed... so gently...~
EXTERN BMAZZY TS139

CHAIN BVALYGA TS337
~I do not belittle the value of your friendship, Mazzy. And I give you mine freely. But I would appreciate if you'd allow me some space.~
EXTERN BMAZZY TS140

CHAIN BVALYGA TS338
~Good night, Lady Fentan.~
EXIT

CHAIN
IF WEIGHT #-62 ~Global("VP_BValygar3","LOCALS",2)~ THEN BVALYGA TS339
~Sometimes you seem to have a great sadness about you Mazzy and you keep your own council for hours. Does anything trouble you? Are you sick?~
DO ~SetGlobal("VP_BValygar3","LOCALS",3)~ EXTERN BMAZZY TS141

CHAIN BVALYGA TS340
~Are you sure? I know you well enough to see that something is amiss.~
EXTERN BMAZZY TS142

CHAIN BVALYGA TS341
~He sounds like a halfing of exceptional valour, Mazzy.~
EXTERN BMAZZY TS143

CHAIN BVALYGA TS342
~A human?~
EXTERN BMAZZY TS144

CHAIN BVALYGA TS343
~No Mazzy, not strange...~
EXTERN BMAZZY TS145

CHAIN BVALYGA TS344
~Mazzy, you are wrong. I see nothing strange in the fact that Patrick loved you. It's just... I think because Patrick was a human ranger... Maybe that's the reason you place more trust in me than in others among our group.~
EXTERN BMAZZY TS146

CHAIN BVALYGA TS345
~ I did not, Mazzy. You know very well, that I am not interested in romance...~
EXTERN BMAZZY TS147

CHAIN
IF WEIGHT #-61 ~Global("VP_BValygar4","LOCALS",2)~ THEN BVALYGA TS358
~Yes, Minsc, is something wrong?~
DO ~SetGlobal("VP_BValygar4","LOCALS",3)~ EXTERN BMINSC TS104

CHAIN BVALYGA TS359
~Um... he is? Why that is... wonderful Minsc. Let him know that I am truly honored.~
EXTERN BMINSC TS105

CHAIN
IF WEIGHT #-60 ~Global("VP_BValygar5","LOCALS",2)~ THEN BVALYGA TS360
~Minsc, is something amiss?~
DO ~SetGlobal("VP_BValygar5","LOCALS",3)~ EXTERN BMINSC TS106

CHAIN BVALYGA TS361
~Why... er... how does he..?~
EXTERN BMINSC TS107

CHAIN BVALYGA TS362
~I'm sorry Minsc, in this case he is mistaken - there is no special attraction between <CHARNAME> and I.~
EXTERN BMINSC TS108

CHAIN
IF WEIGHT #-59 ~Global("VP_BValygar15","LOCALS",2)~ THEN BVALYGA TS363
~Arrgh, what is that! I - ugh! Minsc what in the name of all that is holy is your damned hamster doing in my leggings? (*He holds Boo by the tail.*)~
DO ~SetGlobal("VP_BValygar15","LOCALS",3)~ EXTERN BMINSC TS109

CHAIN BVALYGA TS364
~I'm sorry Minsc, but you must keep your pet away from my personal belongings.~
EXTERN BMINSC TS110

CHAIN BVALYGA TS365
~Virginal???? (moans...) Why in the Nine Hells are you concerned about my... ahem... virginity?~
EXTERN BMINSC TS111

CHAIN BVALYGA TS366
~I am lost for words, Minsc. <CHARNAME> and I, we are not... Just keep your hamster out of my clothing... and... never mind, Minsc... never mind...~
EXIT

CHAIN
IF WEIGHT #-58 ~Global("VP_BValygar6","LOCALS",2)~ THEN BVALYGA TS367
~I am in no mood to listen to your never-ending scolding Jaheira. The last woman who pointed out my faults was my mother, before I was old enough to walk out on her. I doubt you'd give up so easily... What have I done wrong this time? Let me guess: my katana is too dull? Should I buy some armor polish from the Order of the Radiant Heart?~
DO ~SetGlobal("VP_BValygar6","LOCALS",3)~ EXTERN BJAHEIR TS466

CHAIN BVALYGA TS368
~I should emphasize Jaheira that I told it to <CHARNAME> in a private conversation. Should I want your opinion, I would address my remark to you.~
EXTERN BJAHEIR TS467

CHAIN BVALYGA TS369
~Jaheira, <CHARNAME> is a kind of person who makes up her own mind. I assure you, that I cannot change her opinion on family or anything else.~
EXTERN BJAHEIR TS468

CHAIN BVALYGA TS370
~Because I'd like her to be my friend, why else?~
EXIT

CHAIN
IF WEIGHT #-57 ~Global("VP_BValygar7","LOCALS",2)~ THEN BVALYGA TS371
~Jaheira, I had been wrong about you and I want to apologize. I thought the criticism you bestow on everyone is a sign of a bad temper, but then I have noticed that you do it out of love you have for your friends. Take <CHARNAME>... I have seen you to treat her with almost motherly tenderness, yet it is she who gets the most of your... ahem... advice.~
DO ~SetGlobal("VP_BValygar7","LOCALS",3)~ EXTERN BJAHEIR TS469

CHAIN BVALYGA TS372
~Indeed. I guess, what I wanted to say is that you have been a very good friend of <CHARNAME> and I understand why she is so fond of you...~
EXTERN BJAHEIR TS470

CHAIN BVALYGA TS373
~She is exceptional... yes. I could never imagine that I would meet a person like her...~
EXIT

CHAIN
IF WEIGHT #-56 ~Global("VP_BValygar16","LOCALS",2)~ THEN BVALYGA TS374
~I feel strange, healer... Sort of sad and restless. I wondered yesterday why the stars were placed on the sky. I am afraid my concentration would be impaired by this strange mood. Do you have a potion or something?~
DO ~SetGlobal("VP_BValygar16","LOCALS",3)~ EXTERN BJAHEIR TS471

CHAIN BVALYGA TS375
~May be it is infectious? Jaheira, are you well yourself?~
EXTERN BJAHEIR TS472

CHAIN BVALYGA TS376
~Jaheira... I heard that Khalid was a good man and I mourn his death. I am sorry that I have stirred your pain... I'll pick up a potion from the pack at random and mix it up with ale... That never failed to help me before against every wound or illness...~
EXTERN BJAHEIR TS473

CHAIN BVALYGA TS377
~I think I'd skip the potion bit. Strong dwarven ale will do just fine on its own... Love... bah...~
EXIT

CHAIN
IF WEIGHT #-55 ~Global("VP_BValygar8","LOCALS",2)~ THEN BVALYGA TS378
~Anomen, I do not know why is that you think that I can help you in your lovelife... I suggest you would seek guidance from the Order of the Radiant Heart on how to handle your affection.~
DO ~SetGlobal("VP_BValygar8","LOCALS",3)~ EXTERN BANOMEN TS595

CHAIN BVALYGA TS379
~<CHARNAME>? Oh... I see. Indeed, Anomen, I do not think you would please the Order by making advances at the child of Bhaal. I have heard that the Order is very... ahem... conservative.~
EXTERN BANOMEN TS596

CHAIN BVALYGA TS380
~Anomen, if you are serious enough to propose marriage, then why in Nine Hells do you care for what the Order might say? And why it is me who was graced by the title of your confidant? I have no interest whatsoever in what is going on between you and <CHARNAME>. Leave me be!~
EXIT

CHAIN
IF WEIGHT #-54 ~Global("VP_BValygar9","LOCALS",2)~ THEN BVALYGA TS381
~What is it, Anomen? Are you searching for another advice? Please, I am hardly fit for giving directions to women's hearts. I had one disastrous experience after another.~
DO ~SetGlobal("VP_BValygar9","LOCALS",3)~ EXTERN BANOMEN TS597

CHAIN BVALYGA TS382
~Listen Anomen, my first love dumped me for a local smith a week after I went to the military service.~
EXTERN BVALYGA TS571

CHAIN BVALYGA TS383
~No, Anomen, I did not. I had no luck in finding a soul mate and with my family heritage it's for the best. I do not sing under ladies' balconies any more.~
EXTERN BANOMEN TS599

CHAIN BVALYGA TS384
~Indeed she is. Now leave me alone.~
EXIT

CHAIN
IF WEIGHT #-53 ~Global("VP_BValygar10","LOCALS",2)~ THEN BVALYGA TS385
~I will never be able to express my gratitude to you for reversing the curse of vampirism <CHARNAME>.~
DO ~SetGlobal("VP_BValygar10","LOCALS",3)~ EXTERN BANOMEN TS600

CHAIN BVALYGA TS386
~I know that my resurrection slowed our progress. And I feel guilty that my plight has inadvertently caused death of those we could have protected. But we all are fighting the same enemy, Anomen... I hope we are. As for <CHARNAME>'s attempt to save me... I am sure she would do that for any of us.~
EXTERN BANOMEN TS601

CHAIN BVALYGA TS387
~Let's leave it at that. No hard feelings.~
EXIT

CHAIN BVALYGA TS388
~Indeed, <CHARNAME>. (*quietly*) I am sorry, my dear friend for stirring up his temper.~
EXIT

CHAIN BVALYGA TS389
~Of cause she would! You are being ridiculous Anomen.~
EXTERN BANOMEN TS605

CHAIN BVALYGA TS390
~Anomen, get a grip on yourself at last... You cannot let your temper get out of hand and allow anger to run your life.~
EXTERN BANOMEN TS606

CHAIN
IF WEIGHT #-52 ~Global("VP_BValygar11","LOCALS",2)~ THEN BVALYGA TS391
~Viconia, your glance bothers me.~
DO ~SetGlobal("VP_BValygar11","LOCALS",3)~ EXTERN BVICONI TS579

CHAIN BVALYGA TS392
~Well, I am not, Viconia.~
EXTERN BVICONI TS580

CHAIN BVALYGA TS393
~I am not interested in a lecture on drow psychology, Viconia. I do not know what is happening in your narrow dirty mind, but <CHARNAME> is thankfully not like you. She is a kind, valiant and well-meaning woman, who struggles to overcome her tragic heritage. I would be proud if <CHARNAME> took an interest in me, but she would never torment any person, let alone her friend. And that's what we are: friends.~
EXTERN BVICONI TS581

CHAIN BVALYGA TS394
~Good riddance...~
EXIT

CHAIN
IF WEIGHT #-51 ~Global("VP_BValygar12","LOCALS",2)~ THEN BVALYGA TS395
~Drow, I am not pleased by you standing so close to me. Move away.~
DO ~SetGlobal("VP_BValygar12","LOCALS",3)~ EXTERN BVICONI TS582

CHAIN BVALYGA TS396
~We are not in Menzoberranzan. And I have no desire...~
EXTERN BVICONI TS583

CHAIN BVALYGA TS397
~Think what you want.~
EXTERN BVICONI TS584

CHAIN BVALYGA TS398
~Uh-huh. (*tries to walk away*)~
EXTERN BVICONI TS585

CHAIN BVALYGA TS399
~Find yourself another toy, drow. (*shakes her off*)~
EXTERN BVICONI TS586

CHAIN BVALYGA TS400
~Yeah, yeah. I will watch out for a poisoned dart from now on.~
EXIT

CHAIN
IF WEIGHT #-50 ~Global("VP_BValygar13","LOCALS",2)~ THEN BVALYGA TS401
~I heard you singing yesterday evening. It sounded so sad and beautiful. I thought that it was the tongue of Kara-Tur.~
DO ~SetGlobal("VP_BValygar13","LOCALS",3)~ EXTERN VPKACB 76

CHAIN BVALYGA TS402
~I know. But it does not happen often to me. What the song was about?~
EXTERN VPKACB 77

CHAIN BVALYGA TS403
~Love... You seem almost too young for love. I am too old for it, and still a song about love captures our hearts.~
EXTERN VPKACB 78

CHAIN BVALYGA TS404
~Very close, dear Kachiko. I am slightly younger. But that's if you count age in years. My heart is older, for I told myself once that I should not love again.~
EXTERN VPKACB 79

CHAIN BVALYGA TS405
~My family carries a curse, Kachiko. The Corthalas themselves, and almost everyone mad enough to become involved with Corthalas, end up wasting their lives in pursuit of forbidden magical knowledge. I cannot imagine bringing such a grief to a person dear to me. Thus I shall not get involved.~
EXTERN VPKACB 80

CHAIN BVALYGA TS406
~Not if it becomes a dark obsession, the only passion a person knows. It is scary, Kachiko.~
EXIT

CHAIN
IF WEIGHT #-49 ~Global("VP_BValygar14","LOCALS",2)~ THEN BVALYGA TS407
~The grim reality of our lives does not touch you, Kachiko. There is always a smile on your face and your words are friendly to anyone. What is the secret?~
DO ~SetGlobal("VP_BValygar14","LOCALS",3)~ EXTERN VPKACB 81

CHAIN BVALYGA TS408
~I envy you.~
EXTERN VPKACB 82

CHAIN BVALYGA TS409
~Because killing and loving are two different things.~
EXTERN VPKACB 83

CHAIN BVALYGA TS410
~No. I feel like a man who wishes to jump off the cliff to enjoy a moment of flight and does not care that he will die as a result.~
EXTERN BYOSHIM TS112

CHAIN BVALYGA TS411
~I realize that Kachiko's heart is beyond reach, Yoshimo. I shall go then, Kachiko. Seems that Yoshimo have to speak to you in private.~
EXTERN BYOSHIM TS113

CHAIN
IF WEIGHT #-48 ~Global("VP_BValygar17","LOCALS",2)~ THEN BVALYGA TS461
~What is it this time, Anomen?~
DO ~SetGlobal("VP_BValygar17","LOCALS",3)~ EXTERN BANOMEN TS607

CHAIN BVALYGA TS462
~Trying what?~
EXTERN BANOMEN TS608

CHAIN BVALYGA TS463
~It would help greatly if you elaborate. I am trying many things. One of them not to start laughing. I thought you were a wordy sort before.~
EXTERN BANOMEN TS609

CHAIN BVALYGA TS464
~You want me to cast a healing spell on you, priest of Helm?~
EXTERN BANOMEN TS610

CHAIN BVALYGA TS465
~As you say.~
EXTERN BANOMEN TS611

CHAIN BVALYGA TS466
~Watch me.~
EXIT

CHAIN
IF WEIGHT #-47 ~Global("VP_BValygar18","LOCALS",2)~ THEN BVALYGA TS467
~Anomen?~
DO ~SetGlobal("VP_BValygar18","LOCALS",3)~ EXTERN BANOMEN TS612

CHAIN BVALYGA TS468
~<CHARNAME> is not yours, neither is she mine. She is a person in her own right and she chooses whom to spend her time with.~
EXTERN BANOMEN TS613

CHAIN BVALYGA TS469
~Been eavesdropping lately, Anomen?~
EXTERN BANOMEN TS614

CHAIN BVALYGA TS470
~Be careful with your words, Anomen. You have no reason to speak of treachery. You never loved her...~
EXTERN BANOMEN TS615

CHAIN BVALYGA TS471
~I dare. When you love someone, you wish her to be happy. Even if she is far away and out of reach...~
EXTERN BANOMEN TS616

CHAIN BVALYGA TS472
~Grow up, Anomen. This conversation is over.~
EXTERN BANOMEN TS617

CHAIN BVALYGA TS473
~Leave her alone! Just you try to tell her any of this nonsense...~
EXTERN BANOMEN TS618

CHAIN BVALYGA TS474
~Yes.~
EXIT

CHAIN
IF WEIGHT #-46 ~Global("VP_BValygar19","LOCALS",2)~ THEN BVALYGA TS475
~Viconia?~
DO ~SetGlobal("VP_BValygar19","LOCALS",3)~ EXTERN BVICONI TS587

CHAIN BVALYGA TS476
~Viconia, I pretty much got the impression that you hate my guts. This feeling is mutual.~
EXTERN BVICONI TS588

CHAIN BVALYGA TS477
~Everything. By the Nine Hells, I do not believe I participate in a conversation like this! It's insane. You hate me, I hate you. Our feelings prevent us from becoming lovers. At least among surfacers they do.~
EXTERN BVICONI TS589

CHAIN BVALYGA TS478
~Yes, Viconia. Logical. Simple.~
EXTERN BVICONI TS590

CHAIN BVALYGA TS479
~Because... well... because...~
EXTERN BVICONI TS591

CHAIN BVALYGA TS480
~No!~
EXTERN BVICONI TS592

CHAIN BVALYGA TS481
~Not to my knowledge, unless she hears this conversation.~
EXTERN BVICONI TS593

CHAIN BVALYGA TS482
~So what, Viconia? The world does not consist of love and hate, drow. There are many shades in between... There is friendship, respect... other things you have no idea about.~
EXTERN BVICONI TS594

CHAIN BVALYGA TS483
~No, Viconia, that's not going to happen.~
EXIT

CHAIN
IF WEIGHT #-45 ~Global("VP_BValygar20","LOCALS",2)~ THEN BVALYGA TS484
~Oh, no, not again! Was I not clear enough the last ten times? Viconia, I am not interested in anything you have to offer.~
DO ~SetGlobal("VP_BValygar20","LOCALS",3)~ EXTERN BVICONI TS595

CHAIN BVALYGA TS485
~I doubt that.~
EXTERN BVICONI TS596

CHAIN BVALYGA TS486
~Uh-huh.~
EXTERN BVICONI TS597

CHAIN BVALYGA TS487
~I think I am getting a headache, Viconia. Now if you'd kindly shut up.~
EXTERN BVICONI TS598

CHAIN BVALYGA TS488
~Somehow I knew it would come to that. Are you trying to encourage me to be with another woman? Why? What is in it for you?~
EXTERN BVICONI TS599

CHAIN BVALYGA TS489
~Get away from me, you evil witch!~
EXTERN BVICONI TS600

CHAIN BVALYGA TS490
~Whatever...~
EXIT

CHAIN
IF WEIGHT #-44 ~Global("VP_BValygar21","LOCALS",2)~ THEN BVALYGA TS491
~I have little patience for your ramblings! Leave me be.~
DO ~SetGlobal("VP_BValygar21","LOCALS",3)~ EXTERN BJAN TS120

CHAIN BVALYGA TS492
~What scar are you referring to, Jan?~
EXTERN BJAN TS121

CHAIN BVALYGA TS493
~This is mud! We're all covered in the stuff, even you gnome.~
EXTERN BJAN TS122

CHAIN BVALYGA TS494
~(*rolls his eyes and stay silent*)~
EXIT

CHAIN
IF WEIGHT #-43 ~Global("VP_BValygar22","LOCALS",2)~ THEN BVALYGA TS495
~No, gnome, you are not going to feed me yet another tale about a trice removed cousin of your brother-in-law from you grandmother's side. I will not listen to more tall tales about turnip pies!~
DO ~SetGlobal("VP_BValygar22","LOCALS",3)~ EXTERN BJAN TS123

CHAIN BVALYGA TS496
~Oh, no...~
EXTERN BJAN TS124

CHAIN BVALYGA TS497
~How ingenious!~
EXTERN BJAN TS125

CHAIN BVALYGA TS498
~My heart bleeds for you...~
EXTERN BJAN TS126

CHAIN BVALYGA TS499
~That is a huge relief. I must go now.~
EXIT

CHAIN
IF WEIGHT #-42 ~Global("VP_BValygar23","LOCALS",2)~ THEN BVALYGA TS500
~Jan, I must tell you that I admire your loyalty to Lissa. Your actions were worthy of the noblest paladins.~
DO ~SetGlobal("VP_BValygar23","LOCALS",3)~ EXTERN BJAN TS127

CHAIN BVALYGA TS501
~I know Jan. I was sickened at the bastard who dared to curse his own child! I wish we could remove him from Lissa's life. It is obvious he is cruel to her.~
EXTERN BJAN TS128

CHAIN BVALYGA TS502
~Women make curious choices sometimes.~
EXTERN BJAN TS129

CHAIN BVALYGA TS503
~Oh... Jan, I am sure it is a wonderful story, but I have to go...~
EXTERN BJAN TS130

CHAIN BVALYGA TS504
~You know Jan; sometimes wish I were shorter. Maybe then you would take less notice of me.~
EXTERN BJAN TS131

CHAIN BVALYGA TS505
~Very enterprising. A woman with the true spirit of the Jansens.~
EXTERN BJAN TS132

CHAIN BVALYGA TS506
~Alas indeed... Sorry, Jan, gotta run.~
EXIT

CHAIN
IF WEIGHT #-41 ~Global("VP_BValygar24","LOCALS",2)~ THEN BVALYGA TS507
~What is it Aerie? Men far stronger than I could not stay silent at the behest of those puppy eyes. Do you need any help? Do you need to talk?~
DO ~SetGlobal("VP_BValygar24","LOCALS",3)~ EXTERN BAERIE TS453

CHAIN BVALYGA TS508
~Why are you so sad?~
EXTERN BAERIE TS454

CHAIN BVALYGA TS509
~Well yes, I suppose so. I miss the carefree hunting trips I'd spend with my father and there were times when my mother could be gentle...~
EXTERN BAERIE TS455

CHAIN BVALYGA TS510
~No matter Aerie. Like you, I fear my pain is never far away.~
EXIT

CHAIN
IF WEIGHT #-40 ~Global("VP_BValygar25","LOCALS",2)~ THEN BVALYGA TS511
~Careful! Aerie! Keep an eye on where you step. I swear it is more difficult to keep you from stumbling than to make a red dragon to share his treasures. Oh, your eyes are watering again, what is it?~
DO ~SetGlobal("VP_BValygar25","LOCALS",3)~ EXTERN BAERIE TS456

CHAIN BVALYGA TS512
~Now, why is that? We are all friends here.~
EXTERN BAERIE TS458

CHAIN BVALYGA TS513
~Do you want to return to the circus? Why won't you talk with <CHARNAME>? <CHARNAME> would understand if you left the group to return back, I am sure...~
EXTERN BAERIE TS459

CHAIN BVALYGA TS514
~I see. Helping people in need and protecting them is something rangers do, Aerie. I will help a stranded traveller or a peaceful merchant besieged by bandits. I care for everyone who belongs to this group, including you. But I gather from your tone that you seek something more than a mere bodyguard.~
EXIT

CHAIN BVALYGA TS515
~<NO TEXT>~
EXIT

CHAIN
IF WEIGHT #-39 ~Global("VP_BValygar26","LOCALS",2)~ THEN BVALYGA TS516
~Yoshimo, I am trying to read. Reading is something one practices in solitude.~
DO ~SetGlobal("VP_BValygar26","LOCALS",3)~ EXTERN BYOSHIM TS116

CHAIN BVALYGA TS517
~I'm sorry Yoshimo; I am not in the mood for tale telling.~
EXTERN BYOSHIM TS117

CHAIN BVALYGA TS518
~Do what you may.~
EXIT

CHAIN
IF WEIGHT #-38 ~Global("VP_BValygar27","LOCALS",2)~ THEN BVALYGA TS519
~What is it?~
DO ~SetGlobal("VP_BValygar27","LOCALS",3)~ EXTERN BYOSHIM TS118

CHAIN BVALYGA TS520
~There are indeed, but none that I would care to share with companions around a campfire.~
EXTERN BYOSHIM TS119

CHAIN BVALYGA TS521
~Perhaps not, but the tales my mother told me still cause me to awake in terror on occasion. Do not ask me to repeat them.~
EXTERN BYOSHIM TS120

CHAIN BVALYGA TS522
~Indeed. Good night.~
DO ~RestParty()~
EXIT

CHAIN
IF WEIGHT #-37 ~Global("VP_BValygar28","LOCALS",2)~ THEN BVALYGA TS523
~Sir Firecam, you wish to speak to me?~
DO ~SetGlobal("VP_BValygar28","LOCALS",3)~ EXTERN BKELDOR TS154

CHAIN BVALYGA TS524
~Keldorn, I believe that I knew my parents well enough to understand what happened between them.~
EXTERN BKELDOR TS155

CHAIN BVALYGA TS525
~What are you implying, Keldorn?~
EXTERN BKELDOR TS156

CHAIN BVALYGA TS526
~Whispers! You want me to believe your recollection of rumors, rather than what I saw with my own eyes year after year?~
EXTERN BKELDOR TS157

CHAIN BVALYGA TS527
~It is too late for forgiving, Keldorn. They both are dead.~
EXIT

CHAIN
IF WEIGHT #-36 ~Global("VP_BValygar29","LOCALS",2)~ THEN BVALYGA TS528
~Keldorn, these rumors you mentioned, the rumors about my parents...~
DO ~SetGlobal("VP_BValygar29","LOCALS",3)~ EXTERN BKELDOR TS158

CHAIN BVALYGA TS529
~Yes, I wish to know. I hope... I hope that it won't be just another story about a crazed Corthala, burning villages to the ground attempting to cast prohibited spells. You look surprised? I have heard plenty of those tales! I hear them everywhere I go in Amn.~
EXTERN BKELDOR TS159

CHAIN BVALYGA TS530
~I should have guessed. Oh, well, go ahead.~
EXTERN BKELDOR TS160

CHAIN BVALYGA TS531
~Plenty to make all of Athkatla dance with joy and extend a jubilant welcome...~
EXTERN BKELDOR TS161

CHAIN BVALYGA TS532
~My father...~
EXTERN BKELDOR TS162

CHAIN BVALYGA TS533
~That's definitely a very different Corthala story. Thank you, Keldorn.~
EXIT

CHAIN
IF WEIGHT #-35 ~Global("VP_BValygar30","LOCALS",2)~ THEN BVALYGA TS534
~The Corthala name will die with me, Keldorn. I decided on that long ago and I will not change my mind.~
DO ~SetGlobal("VP_BValygar30","LOCALS",3)~
EXTERN BKELDOR TS163

CHAIN BVALYGA TS535
~I hope that she will understand my reasons.~
EXTERN BKELDOR TS164

CHAIN BVALYGA TS536
~How valuable is your advice on family values Keldorn?~ // How valuable is your advice on family values Keldorn? Your children forgot you and your wife sought comfort in the arms of another.
EXTERN BKELDOR TS165

CHAIN BVALYGA TS537
~I am sorry, Keldorn, I should not have snapped at you. I do not like to be lectured.~
EXIT

CHAIN
IF WEIGHT #-34 ~Global("VP_BValygar31","LOCALS",2)~ THEN BVALYGA TS538
~And so we met with your infamous aunt, Lady Delcia.~
DO ~SetGlobal("VP_BValygar31","LOCALS",3)~
EXTERN BNALIA TS54

CHAIN BVALYGA TS539
~Do you mean Athkatla's Slums?~
EXTERN BNALIA TS55

CHAIN BVALYGA TS540
~She might have forgotten Slums, Nalia. But the Slums remember her.~
EXTERN BNALIA TS56

CHAIN BVALYGA TS541
~Twenty years ago or so, Lady Delcia was a young spirited girl, keen on helping those less fortunate. Much to the distress of her family she spent more of her time among commoners than in the keep.~
EXTERN BNALIA TS57

CHAIN BVALYGA TS542
~It happened that one day a pack of vampiric wolves settled in the forest surrounding the Keep terrorizing the villagers. Lady Delcia bade a man, rumored to be a slave gladiator from Slums to help De'Arnise. She bought his freedom. Your Grandfather promised the man Lady Delcia's hand if he would kill the wolves.~
EXTERN BNALIA TS58

CHAIN BVALYGA TS543
~No, he laughed at the Duke's offer and said that a barrel of ale from De'Arnise's cellars would do. After he killed the wolves he got his ale and run off. Since then Lady Delcia adopted an avid hatred of lowlife people...~
EXTERN BNALIA TS59

CHAIN BVALYGA TS544
~That's what I have heard, Nalia. But people in the Slums are not the most reliable source.~
EXIT

CHAIN
IF WEIGHT #-33 ~Global("VP_BValygar32","LOCALS",2)~ THEN BVALYGA TS545
~Nalia, why do you keep complaining that we are not helping the poor? We are not on a charitable mission, we are helping <CHARNAME> to regain her soul.~
DO ~SetGlobal("VP_BValygar32","LOCALS",3)~ EXTERN BNALIA TS60

CHAIN BVALYGA TS546
~Do it, Nalia. I am sure <CHARNAME> would not mind. <CHARNAME>?~
END
 ++ ~Nalia, we are sort of short on cash right now. I promise you, that as soon as we will have some money I will make a donation. ~ EXTERN BVALYGA TS547
 ++ ~Here, Nalia, take these 500 gold pieces and give them to the temple. It is a small contribution, but it may give a starving child a supper or a desperate man a shelter.~ EXTERN BVALYGA TS548
 ++ ~Nalia, we are doing enough by clearing the place from monsters of all sorts to help people. So quit whining. And I am very disappointed in you, Valygar.~ EXTERN BVALYGA TS549

CHAIN BVALYGA TS547
~Worry not, Nalia, once we have some money to spare, <CHARNAME> will donate some to a temple. For now, we are killing enough monsters to help people out.~
EXIT

CHAIN BVALYGA TS548
~That was very generous of you, my friend.~
EXIT

CHAIN BVALYGA TS549
~There is a measure of truth in your words.~
EXIT

CHAIN
IF WEIGHT #-32 ~Global("VP_BValygar33","LOCALS",2)~ THEN BVALYGA TS550
~I told you not to bother <CHARNAME> with your foolishness, Anomen.~
DO ~SetGlobal("VP_BValygar33","LOCALS",3)~ EXTERN BANOMEN TS619

CHAIN BVALYGA TS551
~Like the Nine Hells it is! I will not leave you alone with her.~
EXTERN BANOMEN TS620

CHAIN BVALYGA TS552
~(*sighs*) I am not jealous. I am worried that in your current state you are capable of hurting her.~
EXTERN BANOMEN TS621

CHAIN BVALYGA TS553
~(*laughs*) Of course milady. I erred. I shall not bother you and your lover any longer.~
DO ~LeaveParty() EscapeArea()~
EXIT

CHAIN BVALYGA TS554
~As Lady commands.~
EXTERN BANOMEN TS622

CHAIN BVALYGA TS555
~You heard what she said. It was quite clear.~
EXTERN BVALYGA TS557

CHAIN BVALYGA TS556
~Anomen...~
EXTERN BANOMEN TS624

CHAIN BVALYGA TS557
~Anomen... (*Anomen turns slowly away... tears drop onto his polished armour suit*)~
END
 ++ ~Anomen, stop crying... you are knight after all...~ DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~ EXTERN BANOMEN TS623
 ++ ~Anomen, shame on you... you are knight after all...~ DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~ EXTERN BANOMEN TS623

CHAIN BVALYGA TS558
~Well, I am afraid you will not have your answer.~
EXTERN BANOMEN TS625

CHAIN BVALYGA TS559
~You are not going after <CHARNAME>, you are not yourself. Anomen!~
EXTERN BANOMEN TS626

CHAIN BVALYGA TS560
~I am afraid you will have to choose sooner or later.~
EXIT

CHAIN BVALYGA TS561
~I do not deny faith. But I do not have love for gods and I do not worship them.~
EXTERN VPSIMB 28

CHAIN BVALYGA TS562
~A shaky support and a false hope.~
EXTERN VPSIMB 29

CHAIN BVALYGA TS563
~If I choose to worship, I'll worship Shaundakul if that's what you want to know.~
EXTERN VPSIMB 30

CHAIN BVALYGA TS564
~I do not like looking at woman above the leaping fire, Sime. It brings ill memories.~
EXTERN VPSIMB 32

CHAIN BVALYGA TS565
~You will be disappointed. It was only a childhood nightmare.~
EXTERN VPSIMB 33

CHAIN BVALYGA TS566
~(*shrugs*)~
EXTERN VPSIMB 34

CHAIN BVALYGA TS567
~You will have the tale, or I will not have rest?~
EXTERN VPSIMB 35

CHAIN BVALYGA TS568
~Very well. I was a boy of eight years and I played around Corthala's mansion. By chance I went through a secret entrance...~
EXTERN VPSIMB 36

CHAIN BVALYGA TS569
~Accidentally. It lead to a room my mother used for summoning. I saw her, standing against flames, crying out the words of the spell in agony... Then the demon appeared in the flames. It growled and pointed at me, mocking my fear, asking mother if I was to be killed. Mother managed to control the demon, but her anger was so terrible, that I thought I'd prefer to be eaten by the demon...~
EXTERN VPSIMB 37

CHAIN BVALYGA TS570
~I know now. I did not know then. You heard the tale, now you think you will go sleep and leave me alone?~
EXTERN VPSIMB 38

CHAIN BVALYGA TS571
~Then there was an actress, who thought that a liaison with an infamous cursed Corthala can be quite dramatic. Not to mention that she firmly believed that I was rich, and she nearly fainted when I told her the truth of Corthala's wealth.~
EXTERN BVALYGA TS572

CHAIN BVALYGA TS572
~Lastly, the beautiful Suna. Suna Seni, who wished to become a ranger-protector so much. Who was looking at me with her charming eyes and asking: "Valygar, how long should I aim? Valygar, how can you track a beast if it run across the stream and I lost its footprints?" And my heart melted.~
EXTERN BVALYGA TS573

CHAIN BVALYGA TS573
~Too bad that dear Suna was a thrill-seeker and had little idea on the difference between a bandit and a ranger. Last time I have seen her she was hanging out with the bandits hunting people down and selling them into slavery.~
EXTERN BANOMEN TS598

REPLACE_STATE_TRIGGER UHRANG01 0
~!InParty("Valygar")~

CHAIN
IF ~InParty("Valygar")~ THEN UHRANG01 N1
~Uh... freedom from his domination... Valygar? Is that you? I... always wanted to tell you... I am so sorry...~
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutV01")~
EXIT

CHAIN UHRANG01 N2
~Thank y... (*Merella's words trail off. She is dead.*)~
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutV02")~
EXIT