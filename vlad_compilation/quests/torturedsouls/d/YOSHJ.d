//TS
CHAIN YOSHJ TS152
~Kachiko, stop threatening me! I am not alone, and I will not give up so easily.~
EXTERN VPKACHI 1

CHAIN YOSHJ TS153
~<CHARNAME>, what are you doing? I'm not going to participate in this slaughter! She is my countrywoman, despite all our differences and I shall stand on her side.~
DO ~ActionOverride("vpkachi",Enemy()) LeaveParty() Enemy()~
EXIT

CHAIN YOSHJ TS154
~Kachiko, calm down and listen to me...~
EXTERN VPKACHI 5

CHAIN YOSHJ TS155
~Kachiko, I won't draw my sword against you. Sorry, <CHARNAME>, but I have to leave. I'll see you later.~
DO ~SetGlobal("Kicked_Out","LOCALS",1) SetGlobal("VP_YoshimoEscapes","GLOBAL",1) ActionOverride("vpkachi",Enemy()) ChangeAIScript("",DEFAULT) SetLeavePartyDialogueFile() LeaveParty() EscapeAreaMove("AR0406",1368,1922,0)~
EXIT

CHAIN YOSHJ TS156
~I didn't kill him, and you know that! Your family accused me just because I am Hashimoto. Yes, I saw your brother die. No, I did not kill him. I had no choice but to escape; otherwise your family would kill me...~
END
 ++ ~Yoshimo, what's this all about?~ EXTERN YOSHJ TS157

CHAIN YOSHJ TS157
~<CHARNAME>, it's a long bloodshed between clans in Kozakura. We call it Hojo War. God knows how it all started... Her eldest brother, Naoko, was my best friend since childhood. We hoped that one day we might strike peace... I do not know who has assassinated him. I saw just a shadow on the wall. I mourn his loss...~
END
 ++ ~Yoshimo, why didn't you tell me that before?~ EXTERN YOSHJ TS158

CHAIN YOSHJ TS158
~I thought you wouldn't believe me. Look at Kachiko chasing me from Kara-Tur to Amn. Why should she trust me, indeed? I am Hashimoto and that makes me guilty. Even if I kill myself I would not resurrect my friend and her brother, and I would not put an end to this ridiculous feud...~
EXTERN VPKACHI 6

CHAIN YOSHJ TS159
~Kachiko, it's too late... I cannot go back to Kara-Tur.~
EXTERN VPKACHI 7

CHAIN YOSHJ TS160
~*Grin* You know I can take care of myself... But I cannot come back, since I promised to help <CHARNAME> first.~
END
 ++ ~Yoshimo, you may go with Kachiko. I don't want to hold you. Your troubles are no less serious than those of mine.~ EXTERN YOSHJ TS161
 ++ ~Yes, you're right. You cannot leave the group right now.~ EXTERN VPKACHI 8
 ++ ~Get out of my sight, both of you.~ EXTERN VPKACHI 9

CHAIN YOSHJ TS161
~I cannot come back to Kara-Tur right now. I... <CHARNAME>, I want to help you to discover what happend in this dungeon...~
EXTERN VPKACHI 8

CHAIN YOSHJ TS162
~Kachiko, I promise to come back to Kara-Tur as soon as possible.~
EXTERN VPKACHI 10

CHAIN YOSHJ TS163
~<CHARNAME>, I am sorry, but I shall go with Kachiko. Perhaps both you and I still have a chance. Believe me, it's the best choice I have ever made in my life. If you change your mind in a few days, you will find us in the Sea Bounty Tavern near docks. We will look for a ship to Kara-Tur.~
DO ~SetGlobal("Kicked_Out","LOCALS",1) SetGlobal("VP_YoshFollowsKach","GLOBAL",1) ActionOverride("vpkachi",EscapeAreaMove("AR0313",784,333,8)) ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() LeaveParty() EscapeAreaMove("AR0313",723,319,14)~
EXIT

CHAIN YOSHJ TS164
~<CHARNAME>, I am really sorry, but I shall go with Kachiko. Perhaps both you and I still have a chance. Believe me, it's the best choice I have ever made in my life.~
DO ~SetGlobal("Kicked_Out","LOCALS",1) ActionOverride("vpkachi",EscapeArea()) ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() DestroyItem("NPSW02") GivePartyAllEquipment() LeaveParty() EscapeArea()~
EXIT

CHAIN YOSHJ TS165
~Welcome on board, my friend.~
EXTERN VPKACHI 13

CHAIN YOSHJ TS168
~No, I had spent several years sailing around Kara-Tur. This place reminds nothing of what I have seen and with a bay like that it would be a lively port be it in Kara-Tur. The spell went astray, I suppose... I am very sorry <CHARNAME>.~
END
 ++ ~We are neither at Spellhold, nor Kara-Tur. Damn you, Harkle Harpel and the whole mad family of yours! But we have to deal with our plight here now. I heard you are resourceful, Saemon. Any suggestions?~ EXTERN PPSAEM TS5

CHAIN
IF WEIGHT #6 ~Global("Dead_Bodies","GLOBAL",1)~ THEN YOSHJ TS169
~Dead bodies? Here? Must be another group stranded on this piece of land. We must step carefully.~
DO ~SetGlobal("Dead_Bodies","GLOBAL",2)~
EXTERN VPKACJ N17

CHAIN YOSHJ TS170
~Kachiko, I can see the resemblance, but that cannot be. Otako was wearing a pendant in a shape of a crescent moon... just like this one... Oh, no! I must be dreaming! Otako...~
END
 ++ ~What? What are you both talking about? The dead man is one of your family, Yoshimo? Are you sure we are not in Kara Tur?~ EXTERN YOSHJ TS171

CHAIN YOSHJ TS171
~I am afraid he is... he was my nephew, yes. But I have no idea how he came to this place and got killed; neither do I know where this place is...~
EXTERN VPKACJ N18

CHAIN YOSHJ TS172
~Thank you, <CHARNAME>.~
EXIT

CHAIN YOSHJ TS173
~Otako?!!!! I am pleased to see you... if a bit surprised. I saw a corpse on the road, which was so very much like you, that I thought you were dead... What kind of a sick joke was that?~
EXTERN OTAKO 1

CHAIN YOSHJ TS174
~Stand back! Kachiko is under my protection while I live! I will not allow her to be hurt by anyone as MY honor dictates me.~
EXTERN OTAKO 2

CHAIN YOSHJ TS175
~And you should remember that "one should aim not to hurt a reasoning being." Our ancestors were wise people and did not approve of mindless killing. I see it's indeed a time for me to talk to my father.~
EXTERN OTAKO 3

CHAIN YOSHJ TS176
~Cherry blossom, I am neither afraid of you, nor do I wish to fight you. If that offends you, sorry, but I can do little to help it. <CHARNAME>, would you come with me to my family stronghold? I can feel that madness has overcome my family and they do need help...~
END
 ++ ~I'd rather go on a nature hike and observe the flora and fauna of this island. However, I can see that you are eager for a reunion, so we'll follow you.~ EXIT
 ++ ~Onward! We must investigate what's happening!~ EXIT
 ++ ~Sure, but let's explore the area first. May be we can find someone from Kachiko's family also? ~ EXIT

CHAIN
IF WEIGHT #7 ~Global("Kachiko_Kidnapped","GLOBAL",1)~ THEN YOSHJ TS177
~No! Kachiko... No! I will kill them all! If they harm her in any way, I swear I will kill them all!~
DO ~SetGlobal("Kachiko_Kidnapped","GLOBAL",2) RealSetGlobalTimer("NKensais_Spawn","GLOBAL",10)~
EXIT

CHAIN YOSHJ TS178
~Father, forgive me if I am not respectful, but would you be able to explain me what is happening? Why are you on this desolate Island? Why there are so many dead bodies around?~
EXTERN AINO 1

CHAIN YOSHJ TS179
~That's terrible, father. Is there a way to escape from this island?~
EXTERN AINO 5

CHAIN YOSHJ TS180
~I do not know... It's confused. Hmm... What do you think, <CHARNAME>?~
END
 ++ ~I think I am having yet another nightmare. Nevertheless, if we have to kill all of the Nakanishi to get the wardstone, then we shall.~ EXTERN VPKACJ N29
 ++ ~Do you know of any other way, Aino? I have no desire to kill scores of innocent people.~ EXTERN AINO 6
 ++ ~I say we kill this scheming bastard, take the wardstone and get outta here.~ EXTERN YOSHJ TS181

CHAIN YOSHJ TS181
~That I cannot allow.~
EXTERN VPKACJ N30

CHAIN YOSHJ TS182
~I love you my brave Kachiko! How could I ever trust a foreigner?~
EXTERN AINO 7

CHAIN YOSHJ TS183
~Nanny, how are you?~
EXTERN NANNY 1

CHAIN YOSHJ TS184
~Leave me be child! Did not they tell you that Hashimoto eat little girls like you?~
EXTERN ALOME 1

CHAIN YOSHJ TS185
~Brave little one... No, I do not. I just need to talk with your uncle Hayashi and I am angry that I cannot find him. Do you know where he is?~
EXTERN ALOME 2

CHAIN YOSHJ TS186
~Do you know where these caves are?~
EXTERN ALOME 3

CHAIN YOSHJ TS187
~A very nice girl, just like you...~
EXTERN ALOME 4

CHAIN YOSHJ TS188
~Kachiko is near very bad people now. The bad fate might accidentally miss and grab her. And you do not want that to happen, do you?~
EXTERN ALOME 5

CHAIN YOSHJ TS189
~Najoki-san, I have heard that you are wise and noble woman. Do the rumors err? Why is the lunatic Hayashi ruining your lives, why is he allowed to kidnap your daughter?~
EXTERN NAJOKI 1

CHAIN YOSHJ TS190
~What! I beg you to have pity on me! Please, Najoki-san, please... where is Kachiko? I will hurt none of your family, I will just take her away from this terrible man... Surely you do not want Masaki to wed your daughter?~
EXTERN NAJOKI 2

CHAIN YOSHJ TS191
~Yes, Najoki-san.~
EXTERN NAJOKI 3

CHAIN YOSHJ TS192
~My friends... Uhm... Najoki-san, I do not command my friends... I need to ask <CHARNAME> if they'd help me... <CHARNAME>?~
END
 ++ ~Yoshimo, your father said that the only way for everyone to be freed of the curse is to kill one of the families during a single day. Every person...~ EXTERN NAJOKI 4
 ++ ~I am with you, Yoshimo! We have to save Kachiko! Let's go!~ DO ~GiveItemCreate("SCRL63",Player1,0,0,0) ~ EXIT
 ++ ~I am not sure... Najoki, would you give me any practical help, like giving us directions back to civilization if I go save your daughter?~ EXTERN NAJOKI 7

CHAIN YOSHJ TS193
~I do not care but for one Nakanishi. Release Kachiko, and we will be gone... You are laughing... well, we shall see who will be the last one to laugh!~
EXTERN MASAKI 11

CHAIN YOSHJ TS194
~My friend and I come to do my father's bidding. Nakanishi shall be no more before the dawn breaks... You are laughing... well, we shall see who will be the last one to laugh!~
EXTERN MASAKI 11

CHAIN YOSHJ TS195
~You! Stay here and fight! I am getting tired of you talking!~
EXTERN MASAKI 13

CHAIN YOSHJ TS196
~Are you so eager to battle us? We are strong...~
EXTERN HITOMI 2

CHAIN YOSHJ TS197
~<CHARNAME>, I should warn you that in such a combat only two weapons are allowed: a noble katana and your hand, and no armor is to cover the fighter's body. And no one is permitted to leave the fighting arena until the fight is over... I am ready and willing to answer the challenge, but it's your decision who shall fight.~
END
 IF ~InParty(Player2) See(Player2) !StateCheck(Player2,STATE_SLEEPING)~ THEN REPLY ~<PLAYER2> would represent us.~ DO ~StartCutSceneMode() StartCutScene("TTcut02")~ EXIT
 IF ~InParty(Player3) See(Player3) !StateCheck(Player3,STATE_SLEEPING)~ THEN REPLY ~<PLAYER3> shall face him now.~ DO ~StartCutSceneMode() StartCutScene("TTcut03")~ EXIT
 IF ~InParty(Player4) See(Player4) !StateCheck(Player4,STATE_SLEEPING)~ THEN REPLY ~<PLAYER4> is ready to answer your challenge.~ DO ~StartCutSceneMode() StartCutScene("TTcut04")~ EXIT
 IF ~InParty(Player5) See(Player5) !StateCheck(Player5,STATE_SLEEPING)~ THEN REPLY ~<PLAYER5> shall be our champion.~ DO ~StartCutSceneMode() StartCutScene("TTcut05")~ EXIT
 IF ~See(Player1) !StateCheck(Player1,STATE_SLEEPING)~ THEN REPLY ~I, myself, shall answer your challenge.~ DO ~StartCutSceneMode() StartCutScene("TTcut01")~ EXIT
 IF ~InParty(Player6) See(Player6) !StateCheck(Player6,STATE_SLEEPING)~ THEN REPLY ~<PLAYER6>, go ahead.~ DO ~StartCutSceneMode() StartCutScene("TTcut06")~ EXIT

CHAIN YOSHJ TS198
~Kachiko... oh, Kachiko. She is so pale and cold...~
END
 IF ~!Global("TT_Evil_Path","GLOBAL",2) !Dead("Najoki")~ THEN EXTERN VPKACP 10
 IF ~OR(2) Global("TT_Evil_Path","GLOBAL",2) Dead("Najoki")~ THEN EXTERN VPKACP 14

CHAIN YOSHJ TS199
~It's me, Kachiko, Yoshimo...~
EXTERN VPKACP 11

CHAIN YOSHJ TS200
~Of course, Kachiko it was me, whom else? How can I let you to run away so far and alone?~
EXTERN VPKACP 12

CHAIN YOSHJ TS201
~Kachiko, from the moment I saw you there in Athkatla, I knew that I would not allow any evil to come to you. I love you, Kachiko, and nothing could stop me. I would go to Nine Hells after you if I have to. With you around I feel like I have never been... I... I can be a better person...~
DO ~ChangeAlignment(Myself,CHAOTIC_GOOD) AddXPObject(Myself,80000) ActionOverride("vpkachi",ChangeAlignment(Myself,CHAOTIC_GOOD)) ActionOverride("vpkachi",AddXPObject(Myself,80000))~
EXTERN VPKACP 13

CHAIN YOSHJ TS202
~Father, I do not wish to leave without you.~
EXTERN AINO 12

CHAIN YOSHJ TS203
~I am afraid it's too late. Kachiko is dead and she was my only reason to be unstained by treachery...~
END
 ++ ~What are you talking about Yoshimo?~ EXTERN YOSHJ TS204

CHAIN YOSHJ TS204
~Nothing, <CHARNAME>. You were right, we should not have come here. Now, let's go rescue your friend.~
DO ~SetGlobal("TT_Evil_Path","GLOBAL",3) ChangeAlignment(Myself,CHAOTIC_EVIL) StartCutScene("TTcutFi2")~
EXIT

CHAIN YOSHJ TS205
~I never lied to you...~
EXTERN VPKACP 15

CHAIN YOSHJ TS206
~Masaki killed Naoko?~
EXTERN VPKACP 16

CHAIN YOSHJ TS207
~As well as Hashimoto's it seems. My father told me that a mage named Joneleth made an offer of help to him also.~
EXTERN VPKACP 17

CHAIN
IF WEIGHT #8 ~Global("Kachiko_Saved","GLOBAL",1)~ THEN YOSHJ TS208
~<CHARNAME>, please cast the scroll. I cannot see her dead...~
EXIT

CHAIN YOSHJ TS209
~N-No, Master Irenicus...~
END
 IF ~Global("YoshimoAndHisBetrayal","GLOBAL",0)~ THEN EXTERN PPIRENI1 47
 IF ~Global("YoshimoAndHisBetrayal","GLOBAL",1)~ THEN EXTERN PPIRENI2 N18

CHAIN YOSHJ TS210
~I... I am not cursed anymore.~
END
 IF ~Global("YoshimoAndHisBetrayal","GLOBAL",0)~ THEN EXTERN PPIRENI1 48
 IF ~Global("YoshimoAndHisBetrayal","GLOBAL",1)~ THEN EXTERN PPIRENI2 N68

CHAIN YOSHJ TS211
~There are circumstances that you are not aware of...~
END
 IF ~Global("YoshimoAndHisBetrayal","GLOBAL",0)~ THEN EXTERN PPIRENI1 49
 IF ~Global("YoshimoAndHisBetrayal","GLOBAL",1)~ THEN EXTERN PPIRENI2 N69

CHAIN YOSHJ TS212
~Our deal is closed, Irenicus. The war is over, and my family is saved.~
END
 IF ~Global("YoshimoAndHisBetrayal","GLOBAL",0)~ THEN EXTERN PPIRENI1 51
 IF ~Global("YoshimoAndHisBetrayal","GLOBAL",1)~ THEN EXTERN PPIRENI2 N72

CHAIN YOSHJ TS213
~(*Tears appear in his eyes.*) W-What? Y-you k-knew that? You knew that... and you arranged our meeting to persuade me to sell my soul to you! You devil!~
END
 IF ~Global("YoshimoAndHisBetrayal","GLOBAL",0)~ THEN EXTERN PPIRENI1 52
 IF ~Global("YoshimoAndHisBetrayal","GLOBAL",1)~ THEN EXTERN PPIRENI2 N73

CHAIN YOSHJ TS214
~Sorry, <CHARNAME>. I cannot leave her alone. We must continue our mission.~
DO ~SetGlobal("VP_Kachiko_Yoshimo","GLOBAL",3) SetGlobal("Kicked_Out","LOCALS",1) ActionOverride("vpkachi",EscapeAreaMove("TT0102",165,727,8)) LeaveParty() EscapeAreaMove("TT0102",225,683,8)~
EXIT

CHAIN YOSHJ TS215
~Sorry, <CHARNAME>. I cannot leave Kachiko alone. I must take a care of her. Farewell.~
DO ~SetGlobal("Kicked_Out","LOCALS",1) ActionOverride("vpkachi",EscapeAreaMove("AR0406",1368,1922,0)) ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() LeaveParty() EscapeAreaMove("AR0406",1381,1959,1)~
EXIT

CHAIN YOSHJ TS216
~<CHARNAME>, I am sorry, but I shall go with Kachiko.~
DO ~SetGlobal("Kicked_Out","LOCALS",1) ActionOverride("vpkachi",EscapeAreaMove("AR0313",723,319,14)) ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() LeaveParty() EscapeAreaMove("AR0313",784,333,8)~
EXIT

CHAIN YOSHJ TS217
~<CHARNAME>, I am sorry, but I shall stay with Kachiko.~
DO ~ChangeAIScript("",DEFAULT) SetLeavePartyDialogueFile() SetGlobal("Kicked_Out","LOCALS",1) LeaveParty()~
EXIT

CHAIN YOSHJ TS218
~Your wish is my command. I shall leave the group. I cannot say how much I am sorry for allowing Irenicus to capture me in the moment of my weakness. Fare thee well <CHARNAME>.~
DO ~SetGlobal("Kicked_Out","LOCALS",1)~
EXTERN VPKACJ N36

CHAIN YOSHJ TS219
~You have no rights! The deal is closed.~
EXTERN YOSHIMOA 1

CHAIN YOSHJ TS220
~You won't get anything from me! I won't give up!~
EXTERN YOSHIMOA 2

CHAIN YOSHJ TS221
~Irenicus is my sworn enemy. I am eager to fight him.~
END
 IF ~True()~ THEN EXTERN PLAYER1 53
 IF ~InParty("Anomen") Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 52
 IF ~InParty("Aerie") Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 51
 IF ~InParty("Viconia") Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 50
 IF ~InParty("Jaheira") Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 49
 IF ~InParty("Anomen") !Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 48
 IF ~InParty("Aerie") !Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 47
 IF ~InParty("Viconia") !Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 46
 IF ~InParty("Jaheira") !Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 45
 IF ~InParty("Cernd")~ THEN EXTERN PLAYER1 44
 IF ~InParty("Nalia")~ THEN EXTERN PLAYER1 43
 IF ~InParty("Korgan")~ THEN EXTERN PLAYER1 42
 IF ~InParty("HaerDalis")~ THEN EXTERN PLAYER1 40
 IF ~InParty("Edwin")~ THEN EXTERN PLAYER1 39
 IF ~InParty("Jan")~ THEN EXTERN PLAYER1 38
 IF ~InParty("Mazzy")~ THEN EXTERN PLAYER1 37
 IF ~InParty("Valygar")~ THEN EXTERN PLAYER1 36
 IF ~InParty("Minsc")~ THEN EXTERN PLAYER1 35
 IF ~InParty("Imoen2")~ THEN EXTERN PLAYER1 34
 IF ~InParty("Sime") OR(2) Global("SimeRomanceActive","GLOBAL",1) Global("SimeRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 TS60
 IF ~InParty("Sime") OR(2) Global("SimeRomanceActive","GLOBAL",0) Global("SimeRomanceActive","GLOBAL",3)~ THEN EXTERN PLAYER1 TS56
 IF ~InParty("vpkachi")~ THEN EXTERN PLAYER1 TS55

CHAIN YOSHJ TS222
~I side with the one, whose wise council brought Kachiko back to life and granted my family eternal peace. Do not fear, <CHARNAME> my blade will not backstab you.~
END
 IF ~True()~ THEN EXTERN PLAYER1 53
 IF ~InParty("Anomen") Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 52
 IF ~InParty("Aerie") Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 51
 IF ~InParty("Viconia") Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 50
 IF ~InParty("Jaheira") Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 49
 IF ~InParty("Anomen") !Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 48
 IF ~InParty("Aerie") !Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 47
 IF ~InParty("Viconia") !Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 46
 IF ~InParty("Jaheira") !Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 45
 IF ~InParty("Cernd")~ THEN EXTERN PLAYER1 44
 IF ~InParty("Nalia")~ THEN EXTERN PLAYER1 43
 IF ~InParty("Korgan")~ THEN EXTERN PLAYER1 42
 IF ~InParty("HaerDalis")~ THEN EXTERN PLAYER1 40
 IF ~InParty("Edwin")~ THEN EXTERN PLAYER1 39
 IF ~InParty("Jan")~ THEN EXTERN PLAYER1 38
 IF ~InParty("Mazzy")~ THEN EXTERN PLAYER1 37
 IF ~InParty("Valygar")~ THEN EXTERN PLAYER1 36
 IF ~InParty("Minsc")~ THEN EXTERN PLAYER1 35
 IF ~InParty("Imoen2")~ THEN EXTERN PLAYER1 34
 IF ~InParty("Sime") OR(2) Global("SimeRomanceActive","GLOBAL",1) Global("SimeRomanceActive","GLOBAL",2)~ THEN EXTERN PLAYER1 TS60
 IF ~InParty("Sime") OR(2) Global("SimeRomanceActive","GLOBAL",0) Global("SimeRomanceActive","GLOBAL",3)~ THEN EXTERN PLAYER1 TS56
 IF ~InParty("vpkachi")~ THEN EXTERN PLAYER1 TS55

CHAIN
IF WEIGHT #0 ~Global("VP_Kachiko_Dies","GLOBAL",3) See(Player1) !StateCheck(Player1,STATE_SLEEPING)~ THEN YOSHJ TS223
~<CHARNAME>, it's my fault. I couldn't save Kachiko... And she was my only reason to live in this damned world... No, I have no rights to continue this miserable existance... I am very sorry, <CHARNAME>... (*Suddenly, the blick of Yoshimo's katana, and... *)~
DO ~SetGlobal("VP_Kachiko_Dies","GLOBAL",4) StartCutSceneMode() StartCutScene("TSCutK03")~
EXIT

/*
CHAIN YOSHJ TS224
~Kuku, what are you doing here?~
EXTERN ~YOSHMESS~ 1

CHAIN YOSHJ TS225
~Yes, I know... We depart right now... Kachiko, my darling...~
EXTERN VPKACJ 41

CHAIN YOSHJ TS226
~Ahem, <CHARNAME>, I will have to travel on my own for a time. I cannot give you a reason, for it is not my secret. I dread to leave you in such a plight, but I made a promise and I shall honor it.~
END
 ++ ~I need an explanation! You are not quitting when we are just about to face Irenicus! ~ EXTERN YOSHJ TS227
 ++ ~No way. ~ EXTERN YOSHJ TS228
 ++ ~I see... And will Kachiko go with you?~ EXTERN YOSHJ TS229
 ++ ~Do what you must, Yoshimo. You have proven your loyalty to me and I cannot force you to break your word. ~ EXTERN YOSHJ TS230

CHAIN YOSHJ TS227
~I cannot tell you much. One very important person entrusted me a delicate mission. He was an old beneficiary of mine and today is the day I have to travel to a specified location in order to complete the task. That's all I can divulge. I am sorry, <CHARNAME>.~
END
 ++ ~No way. ~ EXTERN YOSHJ TS228
 ++ ~I see... And will Kachiko go with you?~ EXTERN YOSHJ TS229
 ++ ~Do what you must, Yoshimo. You have proven your loyalty to me and I cannot force you to break your word. ~ EXTERN YOSHJ TS230

CHAIN YOSHJ TS228
~I am afraid, I have to insist. I hope you will forgive me. I entrust Kachiko to your care and I will catch up with you later. If I am to live. Fare thee well.~
DO ~SetGlobal("VP_YoshimoEscapes","GLOBAL",2) //ActionOverride("yoshmess",EscapeArea()) //LeaveParty() //GivePartyAllEquipment() //MoveGlobal("AR5003","Yoshimo",[1181.979])~ EXTERN VPKACJ 42

CHAIN YOSHJ TS229
~I cannot take Kachiko with me, <CHARNAME>. It is too dangerous and a secret I was entrusted with should not be shared even with her. I entrust Kachiko to your care and I will catch up with you later. If I am to live. Fare thee well.~
DO ~SetGlobal("VP_YoshimoEscapes","GLOBAL",2) //ActionOverride("yoshmess",EscapeArea()) //LeaveParty() //GivePartyAllEquipment() //MoveGlobal("AR5003","Yoshimo",[1181.979])~ EXTERN VPKACJ 42

CHAIN YOSHJ TS230
~Thank you, my friend. I cannot take Kachiko with me, <CHARNAME>. It is too dangerous and a secret I was entrusted with should not be shared even with her. I entrust Kachiko to your care and I will catch up with you later. If I am to live. Fare thee well.~
DO ~SetGlobal("VP_YoshimoEscapes","GLOBAL",2) //ActionOverride("yoshmess",EscapeArea()) //LeaveParty() //GivePartyAllEquipment() //MoveGlobal("AR5003","Yoshimo",[1181.979])~ EXTERN VPKACJ 42
*/

CHAIN YOSHJ TS231
~Say the word you think is proper. But be you god or be you mortal, always remember that Yoshimo is your friend.~
END
 IF ~True()~ THEN EXTERN FINSOL01 28
 IF ~InParty("Valygar") Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN VALYG25J 3
 IF ~InParty("Anomen") Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ANOME25J 11
 IF ~InParty("Viconia") Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN VICON25J 8
 IF ~InParty("Aerie") Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN AERIE25J 9
 IF ~InParty("Jaheira") Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN JAHEI25J 9
 IF ~InParty("Valygar") !Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN VALYG25J 2
 IF ~InParty("Anomen") !Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ANOME25J 10
 IF ~InParty("Viconia") !Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN VICON25J 6
 IF ~InParty("Aerie") !Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN AERIE25J 7
 IF ~InParty("Jaheira") !Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN JAHEI25J 7
 IF ~InParty("Imoen2")~ THEN EXTERN IMOEN25J 15
 IF ~InParty("Sarevok") !Alignment("Sarevok",MASK_EVIL)~ THEN EXTERN SAREV25J 2
 IF ~InParty("Sarevok") Alignment("Sarevok",MASK_EVIL)~ THEN EXTERN SAREV25J 3
 IF ~InParty("Minsc")~ THEN EXTERN MINSC25J 0
 IF ~InParty("Nalia")~ THEN EXTERN NALIA25J 1
 IF ~InParty("HaerDalis")~ THEN EXTERN HAERD25J 1
 IF ~InParty("Jan")~ THEN EXTERN JAN25J 3
 IF ~InParty("Cernd")~ THEN EXTERN CERND25J 0
 IF ~InParty("Mazzy")~ THEN EXTERN MAZZY25J 0
 IF ~InParty("Edwin")~ THEN EXTERN EDWIN25J 0
 IF ~InParty("Korgan")~ THEN EXTERN KORGA25J 2
 IF ~InParty("Keldorn")~ THEN EXTERN KELDO25J 0
// IF ~InParty("Coran")~ THEN EXTERN ~CORAN25J~ 0
// IF ~InParty("Dynaheir")~ THEN EXTERN ~DYNA25J~ 0
 IF ~InParty("vpkachi")~ THEN EXTERN VPKAC25J 3

CHAIN YOSHJ SB01
~Whoa! Kachiko Nakanishi, stop threatening me! I will not give up so easily. <CHARNAME>, what's going on now?~
END
 ++ ~Kachiko told me that you had killed her brother. Is that true?~ EXTERN YOSHJ SB02
 ++ ~Shut up, Yoshimo, you are about to die for your crimes!~ EXTERN YOSHJ SB03

CHAIN YOSHJ SB02
~<CHARNAME>, it's a long bloodshed between clans in Kozakura. We call it Hojo War. God knows how it all started... Her eldest brother, Naoko, was my best friend since childhood. We hoped that one day we might strike peace... I do not know who has assassinated him. I saw just a shadow on the wall. I mourn his loss... And, Kachiko, please, believe me, I did not kill him.~
EXTERN VPKACP N23

CHAIN YOSHJ SB03
~Kachiko, I won't draw my sword against you. I do not know what she told you, <CHARNAME>, but I have no quarrel with you either. I have to leave. I'll see you later... Maybe.~
EXTERN VPKACP N25

CHAIN YOSHJ SB04
~Kachiko, I promise to come back to Kara-Tur as soon as possible on my own.~
EXTERN VPKACP N26

CHAIN YOSHJ SB05
~<CHARNAME>, it seems I have no choice in this matter. I must return to Kara-Tur with Kachiko so I can find who is a real murderer of Naoko and prove my innocence. Perhaps both you and I still have a chance. Believe me, it's the best choice I have ever made in my life.~
DO ~SetGlobal("VP_KachikoInTavern","GLOBAL",0) ActionOverride("vpkachi",EscapeArea()) SetGlobal("Kicked_Out","LOCALS",1) ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() LeaveParty() EscapeArea()~
EXIT

CHAIN YOSHJ SB06
~Whoa! Kachiko Nakanishi, stop threatening me! I will not give up so easily. <CHARNAME>, what's going on now?~
END
 ++ ~Kachiko told me that you had killed her brother. Is that true?~ EXTERN YOSHJ SB07
 ++ ~Shut up, Yoshimo, you are about to die for your crimes!~ EXTERN YOSHJ SB08

CHAIN YOSHJ SB07
~<CHARNAME>, it's a long bloodshed between clans in Kozakura. We call it Hojo War. God knows how it all started... Her eldest brother, Naoko, was my best friend since childhood. We hoped that one day we might strike peace... I do not know who has assassinated him. I saw just a shadow on the wall. I mourn his loss... And, Kachiko, please, believe me, I did not kill him.~
EXTERN VPKACHI N32

CHAIN YOSHJ SB08
~Kachiko, I won't draw my sword against you. I do not know what she told you, <CHARNAME>, but I have no quarrel with you either. I have to leave. I'll see you later... Maybe.~
EXTERN VPKACHI N34

CHAIN YOSHJ SB09
~Kachiko, I promise to come back to Kara-Tur as soon as possible on my own.~
EXTERN VPKACHI N35

CHAIN YOSHJ SB10
~<CHARNAME>, it seems I have no choice in this matter. I must return to Kara-Tur with Kachiko so I can find who is a real murderer of Naoko and prove my innocence. Perhaps both you and I still have a chance. Believe me, it's the best choice I have ever made in my life.~
DO ~SetGlobal("VP_KachikoInTavern","GLOBAL",0) ActionOverride("vpkachi",EscapeArea()) SetGlobal("Kicked_Out","LOCALS",1) ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() LeaveParty() EscapeArea()~
EXIT