ADD_TRANS_TRIGGER YOSHJ 129
~Global("VP_Guild_Attacked","GLOBAL",0)~ DO 0

EXTEND_BOTTOM YOSHJ 129
    IF ~Global("VP_Guild_Attacked","GLOBAL",1)~ THEN GOTO KR101
END

REPLACE_TRIGGER_TEXT YOSHJ ~Global("TalkedToRenal","GLOBAL",0)~
~Global("TalkedToRenal","GLOBAL",0)
Global("VP_Guild_Attacked","GLOBAL",0)~

APPEND ~YOSHJ~

//KR
IF ~~ THEN BEGIN KR101
  SAY ~This is Shadow Thief territory... They will shoot you on the first sight for what you have done to them.~
  IF ~~ THEN DO ~SetGlobal("YoshimoMentionsRenal","LOCALS",1)~ EXIT
END

IF WEIGHT #-1 ~GlobalTimerExpired("YoshimoRemindsRenal","GLOBAL")
Global("TalkedToRenal","GLOBAL",0)
Global("VP_Guild_Attacked","GLOBAL",1)
AreaType(OUTDOOR)
AreaType(CITY)
!AreaCheck("AR2000")
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
GlobalLT("YoshimoReminder","LOCALS",2)~ THEN BEGIN KR102
  SAY ~Hmmmm. I would suggest we stay away from the Docks district. We are now the perfect target of all the Shadow Thieves and their supporters around.~
  IF ~~ THEN DO ~SetGlobal("YoshimoReminder","LOCALS",2)~ EXIT
END

//TS
IF ~~ THEN BEGIN TS152
  SAY ~Kachiko, stop threatening me! I am not alone, and I will not give up so easily.~
  IF ~~ THEN EXTERN ~KACHIKO~ 1
END

IF ~~ THEN BEGIN TS153
  SAY ~<CHARNAME>, what are you doing? I'm not going to participate in this slaughter! She is my countrywoman, despite all our differences and I shall stand on her side.~
  IF ~~ THEN DO ~ActionOverride("Kachiko",Enemy())
LeaveParty()
Enemy()~ EXIT
END

IF ~~ THEN BEGIN TS154
  SAY ~Kachiko, calm down and listen to me...~
  IF ~~ THEN EXTERN ~KACHIKO~ 5
END

IF ~~ THEN BEGIN TS155
  SAY ~Kachiko, I won't draw my sword against you. Sorry, <CHARNAME>, but I have to leave. I'll see you later.~
  IF ~~ THEN DO ~SetGlobal("Kicked_Out","LOCALS",1)
SetGlobal("VP_YoshimoEscapes","GLOBAL",1)
ActionOverride("Kachiko",Enemy())
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
EscapeAreaMove("AR0406",1368,1922,0)~ EXIT
END

IF ~~ THEN BEGIN TS156
  SAY ~I didn't kill him, and you know that! Your family accused me just because I am Hashimoto. Yes, I saw your brother die. No, I did not kill him. I had no choice but to escape; otherwise your family would kill me...~
  IF ~~ THEN REPLY ~Yoshimo, what's this all about?~ GOTO TS157
END

IF ~~ THEN BEGIN TS157
  SAY ~<CHARNAME>, it's a long bloodshed between clans in Kozakura. We call it Hojo War. God knows how it all started... Her eldest brother, Naoko, was my best friend since childhood. We hoped that one day we might strike peace... I do not know who has assassinated him. I saw just a shadow on the wall. I mourn his loss...~
  IF ~~ THEN REPLY ~Yoshimo, why didn't you tell me that before?~ GOTO TS158
END

IF ~~ THEN BEGIN TS158
  SAY ~I thought you wouldn't believe me. Look at Kachiko chasing me from Kara-Tur to Amn. Why should she trust me, indeed? I am Hashimoto and that makes me guilty. Even if I kill myself I would not resurrect my friend and her brother, and I would not put an end to this ridiculous feud...~
  IF ~~ THEN EXTERN ~KACHIKO~ 6
END

IF ~~ THEN BEGIN TS159
  SAY ~Kachiko, it's too late... I cannot go back to Kara-Tur.~
  IF ~~ THEN EXTERN ~KACHIKO~ 7
END

IF ~~ THEN BEGIN TS160
  SAY ~*Grin* You know I can take care of myself... But I cannot come back, since I promised to help <CHARNAME> first.~
  IF ~~ THEN REPLY ~Yoshimo, you may go with Kachiko. I don't want to hold you. Your troubles are no less serious than those of mine.~ GOTO TS161
  IF ~~ THEN REPLY ~Yes, you're right. You cannot leave the group right now.~ EXTERN ~KACHIKO~ 8
  IF ~~ THEN REPLY ~Get out of my sight, both of you.~ EXTERN ~KACHIKO~ 9
END

IF ~~ THEN BEGIN TS161
  SAY ~I cannot come back to Kara-Tur right now. I... <CHARNAME>, I want to help you to discover what happend in this dungeon...~
  IF ~~ THEN EXTERN ~KACHIKO~ 8
END

IF ~~ THEN BEGIN TS162
  SAY ~Kachiko, I promise to come back to Kara-Tur as soon as possible.~
  IF ~~ THEN EXTERN ~KACHIKO~ 10
END

IF ~~ THEN BEGIN TS163
  SAY ~<CHARNAME>, I am sorry, but I shall go with Kachiko. Perhaps both you and I still have a chance. Believe me, it's the best choice I have ever made in my life. If you change your mind in a few days, you will find us in the Sea Bounty Tavern near docks. We will look for a ship to Kara-Tur.~
  IF ~~ THEN DO ~SetGlobal("Kicked_Out","LOCALS",1)
SetGlobal("VP_YoshFollowsKach","GLOBAL",1)
ActionOverride("Kachiko",EscapeAreaMove("AR0313",784,333,8))
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
LeaveParty()
EscapeAreaMove("AR0313",723,319,14)~ EXIT
END

IF ~~ THEN BEGIN TS164
  SAY ~<CHARNAME>, I am really sorry, but I shall go with Kachiko. Perhaps both you and I still have a chance. Believe me, it's the best choice I have ever made in my life.~
  IF ~~ THEN DO ~SetGlobal("Kicked_Out","LOCALS",1)
ActionOverride("Kachiko",EscapeArea())
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
DestroyItem("NPSW02")
GivePartyAllEquipment()
LeaveParty()
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN TS165
  SAY ~Welcome on board, my friend.~
  IF ~~ THEN EXTERN ~KACHIKO~ 13
END

IF ~~ THEN BEGIN TS168
  SAY ~No, I had spent several years sailing around Kara-Tur. This place reminds nothing of what I have seen and with a bay like that it would be a lively port be it in Kara-Tur. The spell went astray, I suppose... I am very sorry <CHARNAME>.~
  IF ~~ THEN REPLY ~We are neither at Spellhold, nor Kara-Tur. Damn you, Harkle Harpel and the whole mad family of yours! But we have to deal with our plight here now. I heard you are resourceful, Saemon. Any suggestions?~ EXTERN ~PPSAEM~ TS5
END


IF WEIGHT #6 ~Global("Dead_Bodies","GLOBAL",1)~ THEN BEGIN TS169
  SAY ~Dead bodies? Here? Must be another group stranded on this piece of land. We must step carefully.~
  IF ~~ THEN DO ~SetGlobal("Dead_Bodies","GLOBAL",2)~ EXTERN ~KACHIJ~ N17
END

IF ~~ THEN BEGIN TS170
  SAY ~Kachiko, I can see the resemblance, but that cannot be. Otako was wearing a pendant in a shape of a crescent moon... just like this one... Oh, no! I must be dreaming! Otako...~
  IF ~~ THEN REPLY ~What? What are you both talking about? The dead man is one of your family, Yoshimo? Are you sure we are not in Kara Tur?~ GOTO TS171
END

IF ~~ THEN BEGIN TS171
  SAY ~I am afraid he is... he was my nephew, yes. But I have no idea how he came to this place and got killed; neither do I know where this place is...~
  IF ~~ THEN EXTERN ~KACHIJ~ N18
END

IF ~~ THEN BEGIN TS172
  SAY ~Thank you, <CHARNAME>.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TS173
  SAY ~Otako?!!!! I am pleased to see you... if a bit surprised. I saw a corpse on the road, which was so very much like you, that I thought you were dead... What kind of a sick joke was that?~
  IF ~~ THEN EXTERN ~OTAKO~ 1
END

IF ~~ THEN BEGIN TS174
  SAY ~Stand back! Kachiko is under my protection while I live! I will not allow her to be hurt by anyone as MY honor dictates me.~
  IF ~~ THEN EXTERN ~OTAKO~ 2
END

IF ~~ THEN BEGIN TS175
  SAY ~And you should remember that "one should aim not to hurt a reasoning being." Our ancestors were wise people and did not approve of mindless killing. I see it's indeed a time for me to talk to my father. ~
  IF ~~ THEN EXTERN ~OTAKO~ 3
END

IF ~~ THEN BEGIN TS176
  SAY ~Cherry blossom, I am neither afraid of you, nor do I wish to fight you. If that offends you, sorry, but I can do little to help it. <CHARNAME>, would you come with me to my family stronghold? I can feel that madness has overcome my family and they do need help...~
  IF ~~ THEN REPLY ~I'd rather go on a nature hike and observe the flora and fauna of this island. However, I can see that you are eager for a reunion, so we'll follow you.~ EXIT
  IF ~~ THEN REPLY ~Onward! We must investigate what's happening!~ EXIT
  IF ~~ THEN REPLY ~Sure, but let's explore the area first. May be we can find someone from Kachiko's family also? ~ EXIT
END

IF WEIGHT #7 ~Global("Kachiko_Kidnapped","GLOBAL",1)~ THEN BEGIN TS177
  SAY ~No! Kachiko... No! I will kill them all! If they harm her in any way, I swear I will kill them all!~
  IF ~~ THEN DO ~SetGlobal("Kachiko_Kidnapped","GLOBAL",2)
RealSetGlobalTimer("NKensais_Spawn","GLOBAL",10)~ EXIT
END

IF ~~ THEN BEGIN TS178
  SAY ~Father, forgive me if I am not respectful, but would you be able to explain me what is happening? Why are you on this desolate Island? Why there are so many dead bodies around?~
  IF ~~ THEN EXTERN ~AINO~ 1
END

IF ~~ THEN BEGIN TS179
  SAY ~That's terrible, father. Is there a way to escape from this island?~
  IF ~~ THEN EXTERN ~AINO~ 5
END

IF ~~ THEN BEGIN TS180
  SAY ~I do not know... It's confused. Hmm... What do you think, <CHARNAME>?~
  IF ~~ THEN REPLY ~I think I am having yet another nightmare. Nevertheless, if we have to kill all of the Nakanishi to get the wardstone, then we shall.~ EXTERN ~KACHIJ~ N29
  IF ~~ THEN REPLY ~Do you know of any other way, Aino? I have no desire to kill scores of innocent people.~ EXTERN ~AINO~ 6
  IF ~~ THEN REPLY ~I say we kill this scheming bastard, take the wardstone and get outta here.~ GOTO TS181
END

IF ~~ THEN BEGIN TS181
  SAY ~That I cannot allow.~
  IF ~~ THEN EXTERN ~KACHIJ~ N30
END

IF ~~ THEN BEGIN TS182
  SAY ~I love you my brave Kachiko! How could I ever trust a foreigner?~
  IF ~~ THEN EXTERN ~AINO~ 7
END

IF ~~ THEN BEGIN TS183
  SAY ~Nanny, how are you?~
  IF ~~ THEN EXTERN ~NANNY~ 1
END

IF ~~ THEN BEGIN TS184
  SAY ~Leave me be child! Did not they tell you that Hashimoto eat little girls like you?~
  IF ~~ THEN EXTERN ~ALOME~ 1
END

IF ~~ THEN BEGIN TS185
  SAY ~Brave little one... No, I do not. I just need to talk with your uncle Hayashi and I am angry that I cannot find him. Do you know where he is?~
  IF ~~ THEN EXTERN ~ALOME~ 2
END

IF ~~ THEN BEGIN TS186
  SAY ~Do you know where these caves are?~
  IF ~~ THEN EXTERN ~ALOME~ 3
END

IF ~~ THEN BEGIN TS187
  SAY ~A very nice girl, just like you...~
  IF ~~ THEN EXTERN ~ALOME~ 4
END

IF ~~ THEN BEGIN TS188
  SAY ~Kachiko is near very bad people now. The bad fate might accidentally miss and grab her. And you do not want that to happen, do you?~
  IF ~~ THEN EXTERN ~ALOME~ 5
END

IF ~~ THEN BEGIN TS189
  SAY ~Najoki-san, I have heard that you are wise and noble woman. Do the rumors err? Why is the lunatic Hayashi ruining your lives, why is he allowed to kidnap your daughter?~
  IF ~~ THEN EXTERN ~NAJOKI~ 1
END

IF ~~ THEN BEGIN TS190
  SAY ~What! I beg you to have pity on me! Please, Najoki-san, please... where is Kachiko? I will hurt none of your family, I will just take her away from this terrible man... Surely you do not want Masaki to wed your daughter?~
  IF ~~ THEN EXTERN ~NAJOKI~ 2
END

IF ~~ THEN BEGIN TS191
  SAY ~Yes, Najoki-san.~
  IF ~~ THEN EXTERN ~NAJOKI~ 3
END

IF ~~ THEN BEGIN TS192
  SAY ~My friends... Uhm... Najoki-san, I do not command my friends... I need to ask <CHARNAME> if they'd help me... <CHARNAME>?~
  IF ~~ THEN REPLY ~Yoshimo, your father said that the only way for everyone to be freed of the curse is to kill one of the families during a single day. Every person...~ EXTERN ~NAJOKI~ 4
  IF ~~ THEN REPLY ~I am with you, Yoshimo! We have to save Kachiko! Let's go!~ DO ~GiveItemCreate("SCRL63",Player1,0,0,0)
~ EXIT
  IF ~~ THEN REPLY ~I am not sure... Najoki, would you give me any practical help, like giving us directions back to civilization if I go save your daughter?~ EXTERN ~NAJOKI~ 7
END

IF ~~ THEN BEGIN TS193
  SAY ~I do not care but for one Nakanishi. Release Kachiko, and we will be gone... You are laughing... well, we shall see who will be the last one to laugh!~
  IF ~~ THEN EXTERN ~MASAKI~ 11
END

IF ~~ THEN BEGIN TS194
  SAY ~My friend and I come to do my father's bidding. Nakanishi shall be no more before the dawn breaks... You are laughing... well, we shall see who will be the last one to laugh!~
  IF ~~ THEN EXTERN ~MASAKI~ 11
END

IF ~~ THEN BEGIN TS195
  SAY ~You! Stay here and fight! I am getting tired of you talking!~
  IF ~~ THEN EXTERN ~MASAKI~ 13
END

IF ~~ THEN BEGIN TS196
  SAY ~Are you so eager to battle us? We are strong...~
  IF ~~ THEN EXTERN ~HITOMI~ 2
END

IF ~~ THEN BEGIN TS197
  SAY ~<CHARNAME>, I should warn you that in such a combat only two weapons are allowed: a noble katana and your hand, and no armor is to cover the fighter's body. And no one is permitted to leave the fighting arena until the fight is over... I am ready and willing to answer the challenge, but it's your decision who shall fight.~
  IF ~InParty(Player2)
See(Player2)
!StateCheck(Player2,STATE_SLEEPING)~ THEN REPLY ~<PLAYER2> would represent us.~ DO ~StartCutSceneMode()
StartCutScene("TTcut02")~ EXIT
  IF ~InParty(Player3)
See(Player3)
!StateCheck(Player3,STATE_SLEEPING)~ THEN REPLY ~<PLAYER3> shall face him now.~ DO ~StartCutSceneMode()
StartCutScene("TTcut03")~ EXIT
  IF ~InParty(Player4)
See(Player4)
!StateCheck(Player4,STATE_SLEEPING)~ THEN REPLY ~<PLAYER4> is ready to answer your challenge.~ DO ~StartCutSceneMode()
StartCutScene("TTcut04")~ EXIT
  IF ~InParty(Player5)
See(Player5)
!StateCheck(Player5,STATE_SLEEPING)~ THEN REPLY ~<PLAYER5> shall be our champion.~ DO ~StartCutSceneMode()
StartCutScene("TTcut05")~ EXIT
  IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)~ THEN REPLY ~I, myself, shall answer your challenge.~ DO ~StartCutSceneMode()
StartCutScene("TTcut01")~ EXIT
  IF ~InParty(Player6)
See(Player6)
!StateCheck(Player6,STATE_SLEEPING)~ THEN REPLY ~<PLAYER6>, go ahead.~ DO ~StartCutSceneMode()
StartCutScene("TTcut06")~ EXIT
END

IF ~~ THEN BEGIN TS198
  SAY ~Kachiko... oh, Kachiko. She is so pale and cold... ~
  IF ~!Global("TT_Evil_Path","GLOBAL",2)
!Dead("Najoki")~ THEN EXTERN ~KACHIP~ 10
  IF ~OR(2)
Global("TT_Evil_Path","GLOBAL",2)
Dead("Najoki")~ THEN EXTERN ~KACHIP~ 14
END

IF ~~ THEN BEGIN TS199
  SAY ~It's me, Kachiko, Yoshimo...~
  IF ~~ THEN EXTERN ~KACHIP~ 11
END

IF ~~ THEN BEGIN TS200
  SAY ~Of course, Kachiko it was me, whom else? How can I let you to run away so far and alone?~
  IF ~~ THEN EXTERN ~KACHIP~ 12
END

IF ~~ THEN BEGIN TS201
  SAY ~Kachiko, from the moment I saw you there in Athkatla, I knew that I would not allow any evil to come to you. I love you, Kachiko, and nothing could stop me. I would go to Nine Hells after you if I have to. With you around I feel like I have never been... I... I can be a better person... ~
  IF ~~ THEN DO ~ChangeAlignment(Myself,CHAOTIC_GOOD)
AddXPObject(Myself,80000)
ActionOverride("Kachiko",ChangeAlignment(Myself,CHAOTIC_GOOD))
ActionOverride("Kachiko",AddXPObject(Myself,80000))~ EXTERN ~KACHIP~ 13
END

IF ~~ THEN BEGIN TS202
  SAY ~Father, I do not wish to leave without you.~
  IF ~~ THEN EXTERN ~AINO~ 12
END

IF ~~ THEN BEGIN TS203
  SAY ~I am afraid it's too late. Kachiko is dead and she was my only reason to be unstained by treachery...~
  IF ~~ THEN REPLY ~What are you talking about Yoshimo?~ GOTO TS204
END

IF ~~ THEN BEGIN TS204
  SAY ~Nothing, <CHARNAME>. You were right, we should not have come here. Now, let's go rescue your friend.~
  IF ~~ THEN DO ~SetGlobal("TT_Evil_Path","GLOBAL",3)
ChangeAlignment(Myself,CHAOTIC_EVIL)
StartCutScene("TTcutFi2")~ EXIT
END

IF ~~ THEN BEGIN TS205
  SAY ~I never lied to you...~
  IF ~~ THEN EXTERN ~KACHIP~ 15
END

IF ~~ THEN BEGIN TS206
  SAY ~Masaki killed Naoko?~
  IF ~~ THEN EXTERN ~KACHIP~ 16
END

IF ~~ THEN BEGIN TS207
  SAY ~As well as Hashimoto's it seems. My father told me that a mage named Joneleth made an offer of help to him also.~
  IF ~~ THEN EXTERN ~KACHIP~ 17
END

IF WEIGHT #8 ~Global("Kachiko_Saved","GLOBAL",1)
~ THEN BEGIN TS208
  SAY ~<CHARNAME>, please cast the scroll. I cannot see her dead...~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TS209
  SAY ~N-No, Master Irenicus...~
  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",0)~ THEN EXTERN ~PPIRENI1~ 47
  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",1)~ THEN EXTERN ~PPIRENI2~ N18
END

IF ~~ THEN BEGIN TS210
  SAY ~I... I am not cursed anymore.~
  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",0)~ THEN EXTERN ~PPIRENI1~ 48
  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",1)~ THEN EXTERN ~PPIRENI2~ N68
END

IF ~~ THEN BEGIN TS211
  SAY ~There are circumstances that you are not aware of...~
  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",0)~ THEN EXTERN ~PPIRENI1~ 49
  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",1)~ THEN EXTERN ~PPIRENI2~ N69
END

IF ~~ THEN BEGIN TS212
  SAY ~Our deal is closed, Irenicus. The war is over, and my family is saved.~
  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",0)~ THEN EXTERN ~PPIRENI1~ 51
  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",1)~ THEN EXTERN ~PPIRENI2~ N72
END

IF ~~ THEN BEGIN TS213
  SAY ~(*Tears appear in his eyes.*) W-What? Y-you k-knew that? You knew that... and you arranged our meeting to persuade me to sell my soul to you! You devil!~
  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",0)~ THEN EXTERN ~PPIRENI1~ 52
  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",1)~ THEN EXTERN ~PPIRENI2~ N73
END

IF ~~ THEN BEGIN TS214
  SAY ~Sorry, <CHARNAME>. I cannot leave her alone. We must continue our mission.~
  IF ~~ THEN DO ~SetGlobal("VP_Kachiko_Yoshimo","GLOBAL",3)
SetGlobal("Kicked_Out","LOCALS",1)
ActionOverride("Kachiko",EscapeAreaMove("TT0102",165,727,8))
LeaveParty()
EscapeAreaMove("TT0102",225,683,8)~ EXIT
END

IF ~~ THEN BEGIN TS215
  SAY ~Sorry, <CHARNAME>. I cannot leave Kachiko alone. I must take a care of her. Farewell.~
  IF ~~ THEN DO ~SetGlobal("Kicked_Out","LOCALS",1)
ActionOverride("Kachiko",EscapeAreaMove("AR0406",1368,1922,0))
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
LeaveParty()
EscapeAreaMove("AR0406",1381,1959,1)~ EXIT
END

IF ~~ THEN BEGIN TS216
  SAY ~<CHARNAME>, I am sorry, but I shall go with Kachiko.~
  IF ~~ THEN DO ~SetGlobal("Kicked_Out","LOCALS",1)
ActionOverride("Kachiko",EscapeAreaMove("AR0313",723,319,14))
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
LeaveParty()
EscapeAreaMove("AR0313",784,333,8)~ EXIT
END

IF ~~ THEN BEGIN TS217
  SAY ~<CHARNAME>, I am sorry, but I shall stay with Kachiko.~
  IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("Kicked_Out","LOCALS",1)
LeaveParty()~ EXIT
END

IF ~~ THEN BEGIN TS218
  SAY ~Your wish is my command. I shall leave the group. I cannot say how much I am sorry for allowing Irenicus to capture me in the moment of my weakness. Fare thee well <CHARNAME>.~
  IF ~~ THEN DO ~SetGlobal("Kicked_Out","LOCALS",1)~ EXTERN ~KACHIJ~ N36
END

IF ~~ THEN BEGIN TS219
  SAY ~You have no rights! The deal is closed.~
  IF ~~ THEN EXTERN ~YOSHIMOA~ 1
END

IF ~~ THEN BEGIN TS220
  SAY ~You won't get anything from me! I won't give up!~
  IF ~~ THEN EXTERN ~YOSHIMOA~ 2
END

IF ~~ THEN BEGIN TS221
	SAY ~Irenicus is my sworn enemy. I am eager to fight him.~
  IF ~True()~ THEN EXTERN ~PLAYER1~ 53
  IF ~InParty("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 52
  IF ~InParty("Aerie")
Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 51
  IF ~InParty("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 50
  IF ~InParty("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 49
  IF ~InParty("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 48
  IF ~InParty("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 47
  IF ~InParty("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 46
  IF ~InParty("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 45
  IF ~InParty("Cernd")~ THEN EXTERN ~PLAYER1~ 44
  IF ~InParty("Nalia")~ THEN EXTERN ~PLAYER1~ 43
  IF ~InParty("Korgan")~ THEN EXTERN ~PLAYER1~ 42
  IF ~InParty("HaerDalis")~ THEN EXTERN ~PLAYER1~ 40
  IF ~InParty("Edwin")~ THEN EXTERN ~PLAYER1~ 39
  IF ~InParty("Jan")~ THEN EXTERN ~PLAYER1~ 38
  IF ~InParty("Mazzy")~ THEN EXTERN ~PLAYER1~ 37
  IF ~InParty("Valygar")~ THEN EXTERN ~PLAYER1~ 36
  IF ~InParty("Minsc")~ THEN EXTERN ~PLAYER1~ 35
  IF ~InParty("Imoen2")~ THEN EXTERN ~PLAYER1~ 34
  IF ~InParty("Sime")
OR(2)
Global("SimeRomanceActive","GLOBAL",1)
Global("SimeRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ TS60
  IF ~InParty("Sime")
OR(2)
Global("SimeRomanceActive","GLOBAL",0)
Global("SimeRomanceActive","GLOBAL",3)~ THEN EXTERN ~PLAYER1~ TS56
	IF ~InParty("Kachiko")~ THEN EXTERN ~PLAYER1~ TS55
END

IF ~~ THEN BEGIN TS222
	SAY ~I side with the one, whose wise council brought Kachiko back to life and granted my family eternal peace. Do not fear, <CHARNAME> my blade will not backstab you.~
  IF ~True()~ THEN EXTERN ~PLAYER1~ 53
  IF ~InParty("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 52
  IF ~InParty("Aerie")
Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 51
  IF ~InParty("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 50
  IF ~InParty("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 49
  IF ~InParty("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 48
  IF ~InParty("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 47
  IF ~InParty("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 46
  IF ~InParty("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 45
  IF ~InParty("Cernd")~ THEN EXTERN ~PLAYER1~ 44
  IF ~InParty("Nalia")~ THEN EXTERN ~PLAYER1~ 43
  IF ~InParty("Korgan")~ THEN EXTERN ~PLAYER1~ 42
  IF ~InParty("HaerDalis")~ THEN EXTERN ~PLAYER1~ 40
  IF ~InParty("Edwin")~ THEN EXTERN ~PLAYER1~ 39
  IF ~InParty("Jan")~ THEN EXTERN ~PLAYER1~ 38
  IF ~InParty("Mazzy")~ THEN EXTERN ~PLAYER1~ 37
  IF ~InParty("Valygar")~ THEN EXTERN ~PLAYER1~ 36
  IF ~InParty("Minsc")~ THEN EXTERN ~PLAYER1~ 35
  IF ~InParty("Imoen2")~ THEN EXTERN ~PLAYER1~ 34
  IF ~InParty("Sime")
OR(2)
Global("SimeRomanceActive","GLOBAL",1)
Global("SimeRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ TS60
  IF ~InParty("Sime")
OR(2)
Global("SimeRomanceActive","GLOBAL",0)
Global("SimeRomanceActive","GLOBAL",3)~ THEN EXTERN ~PLAYER1~ TS56
	IF ~InParty("Kachiko")~ THEN EXTERN ~PLAYER1~ TS55
END

IF WEIGHT #0 ~Global("VP_Kachiko_Dies","GLOBAL",3)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN TS223
  SAY ~<CHARNAME>, it's my fault. I couldn't save Kachiko... And she was my only reason to live in this damned world... No, I have no rights to continue this miserable existance... I am very sorry, <CHARNAME>... (*Suddenly, the blick of Yoshimo's katana, and... *) ~
  IF ~~ THEN DO ~SetGlobal("VP_Kachiko_Dies","GLOBAL",4)
StartCutSceneMode()
StartCutScene("TSCutK03")~ EXIT
END

//IF ~~ THEN BEGIN TS224
//  SAY ~Kuku, what are you doing here?~
//  IF ~~ THEN EXTERN ~YOSHMESS~ 1
//END

//IF ~~ THEN BEGIN TS225
//  SAY ~Yes, I know... We depart right now... Kachiko, my darling...~
//  IF ~~ THEN EXTERN ~KACHIJ~ 41
//END

//IF ~~ THEN BEGIN TS226
//  SAY ~Ahem, <CHARNAME>, I will have to travel on my own for a time. I cannot give you a reason, for it is not my secret. I dread to leave you in such a plight, but I made a promise and I shall honor it.~
//  IF ~~ THEN REPLY ~I need an explanation! You are not quitting when we are just about to face Irenicus! ~ GOTO TS227
//  IF ~~ THEN REPLY ~No way. ~ GOTO TS228
//  IF ~~ THEN REPLY ~I see... And will Kachiko go with you?~ GOTO TS229
//  IF ~~ THEN REPLY ~Do what you must, Yoshimo. You have proven your loyalty to me and I cannot force you to break your word. ~ GOTO TS230
//END

//IF ~~ THEN BEGIN TS227
//  SAY ~I cannot tell you much. One very important person entrusted me a delicate mission. He was an old beneficiary of mine and today is the day I have to travel to a specified location in order to complete the task. That's all I can divulge. I am sorry, <CHARNAME>.~
//  IF ~~ THEN REPLY ~No way. ~ GOTO TS228
//  IF ~~ THEN REPLY ~I see... And will Kachiko go with you?~ GOTO TS229
//  IF ~~ THEN REPLY ~Do what you must, Yoshimo. You have proven your loyalty to me and I cannot force you to break your word. ~ GOTO TS230
//END

//IF ~~ THEN BEGIN TS228
//  SAY ~I am afraid, I have to insist. I hope you will forgive me. I entrust Kachiko to your care and I will catch up with you later. If I am to live. Fare thee well.~
//  IF ~~ THEN DO ~SetGlobal("VP_YoshimoEscapes","GLOBAL",2)
//ActionOverride("yoshmess",EscapeArea())
//LeaveParty()
//GivePartyAllEquipment()
//MoveGlobal("AR5003","Yoshimo",[1181.979])~ EXTERN ~KACHIJ~ 42
//END

//IF ~~ THEN BEGIN TS229
//  SAY ~I cannot take Kachiko with me, <CHARNAME>. It is too dangerous and a secret I was entrusted with should not be shared even with her. I entrust Kachiko to your care and I will catch up with you later. If I am to live. Fare thee well.~
//  IF ~~ THEN DO ~SetGlobal("VP_YoshimoEscapes","GLOBAL",2)
//ActionOverride("yoshmess",EscapeArea())
//LeaveParty()
//GivePartyAllEquipment()
//MoveGlobal("AR5003","Yoshimo",[1181.979])~ EXTERN ~KACHIJ~ 42
//END

//IF ~~ THEN BEGIN TS230
//  SAY ~Thank you, my friend. I cannot take Kachiko with me, <CHARNAME>. It is too dangerous and a secret I was entrusted with should not be shared even with her. I entrust Kachiko to your care and I will catch up with you later. If I am to live. Fare thee well.~
//  IF ~~ THEN DO ~SetGlobal("VP_YoshimoEscapes","GLOBAL",2)
//ActionOverride("yoshmess",EscapeArea())
//LeaveParty()
//GivePartyAllEquipment()
//MoveGlobal("AR5003","Yoshimo",[1181.979])~ EXTERN ~KACHIJ~ 42
//END

IF ~~ THEN BEGIN TS231
  SAY ~Say the word you think is proper. But be you god or be you mortal, always remember that Yoshimo is your friend.~
  IF ~True()~ THEN EXTERN ~FINSOL01~ 28
  IF ~InParty("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYG25J~ 3
  IF ~InParty("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~ANOME25J~ 11
  IF ~InParty("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~VICON25J~ 8
  IF ~InParty("Aerie")
Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~AERIE25J~ 9
  IF ~InParty("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~JAHEI25J~ 9
  IF ~InParty("Valygar")
!Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYG25J~ 2
  IF ~InParty("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~ANOME25J~ 10
  IF ~InParty("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~VICON25J~ 6
  IF ~InParty("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~AERIE25J~ 7
  IF ~InParty("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~JAHEI25J~ 7
  IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN25J~ 15
  IF ~InParty("Sarevok")
!Alignment("Sarevok",MASK_EVIL)~ THEN EXTERN ~SAREV25J~ 2
  IF ~InParty("Sarevok")
Alignment("Sarevok",MASK_EVIL)~ THEN EXTERN ~SAREV25J~ 3
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSC25J~ 0
  IF ~InParty("Nalia")~ THEN EXTERN ~NALIA25J~ 1
  IF ~InParty("HaerDalis")~ THEN EXTERN ~HAERD25J~ 1
  IF ~InParty("Jan")~ THEN EXTERN ~JAN25J~ 3
  IF ~InParty("Cernd")~ THEN EXTERN ~CERND25J~ 0
  IF ~InParty("Mazzy")~ THEN EXTERN ~MAZZY25J~ 0
  IF ~InParty("Edwin")~ THEN EXTERN ~EDWIN25J~ 0
  IF ~InParty("Korgan")~ THEN EXTERN ~KORGA25J~ 2
  IF ~InParty("Keldorn")~ THEN EXTERN ~KELDO25J~ 0
//  IF ~InParty("Coran")~ THEN EXTERN ~CORAN25J~ 0
//  IF ~InParty("Dynaheir")~ THEN EXTERN ~DYNA25J~ 0
  IF ~InParty("Kachiko")~ THEN EXTERN ~KACHI25J~ 3
END

IF ~~ THEN BEGIN Kr_WarTk
  SAY ~War? Well, maybe that is preferable to sailing to Spellhold.~
  	IF ~~ THEN REPLY ~What did you say, Yoshimo?~ GOTO Kr_WarT2
END

IF ~~ THEN BEGIN Kr_WarT2
  SAY ~Oh, nothing. I have nothing against taking action with the military. My skills will be of great use to you.~
  	IF ~True()~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("KRCut04")~ EXIT
  	IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kr_WarTk
  	IF ~InParty("Kachiko")~ THEN EXTERN ~KACHIJ~ Kr_WarTk
END

IF ~~ THEN BEGIN Kelem0
  SAY ~No, this can't be happening. It is not my time to die yet, I haven't fulfilled my duties.~
  	IF ~~ THEN REPLY ~What duties Yoshimo?~ GOTO Kelem1
  	IF ~~ THEN REPLY ~Not your time? How can you know? Do you know the hour of your death Yoshimo?~ GOTO Kelem2
END

IF ~~ THEN BEGIN Kelem1
  SAY ~I promised you aid to solve the riddle of who imprisoned you and for what reason, remember? We have discovered who but not yet why.~
  	IF ~~ THEN REPLY ~True, but I have killed you, and now I need you to forgive me.~ GOTO Kelem3
END

IF ~~ THEN BEGIN Kelem2
  SAY ~No-no... I do not know! I was so surprised that you killed me, but I do concede that you could not control your actions. I have not wronged you my friend.~
  	IF ~~ THEN REPLY ~Forgive me, my friend.~ GOTO Kelem3
END

IF ~~ THEN BEGIN Kelem3
  SAY ~Forgive you? Of course I will, you are not a bad girl, <CHARNAME>.~
	IF ~True()~ THEN EXTERN ~KELEMVOR~ 4A
  	IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kelem0
  	IF ~InParty("Kachiko")~ THEN EXTERN ~KACHIJ~ Kelem0
END

IF ~~ THEN BEGIN SB01
  SAY ~Whoa! Kachiko Nakanishi, stop threatening me! I will not give up so easily. <CHARNAME>, what's going on now?~
  IF ~~ THEN REPLY ~Kachiko told me that you had killed her brother. Is that true?~ GOTO SB02
  IF ~~ THEN REPLY ~Shut up, Yoshimo, you are about to die for your crimes!~ GOTO SB03
END

IF ~~ THEN BEGIN SB02
  SAY ~<CHARNAME>, it's a long bloodshed between clans in Kozakura. We call it Hojo War. God knows how it all started... Her eldest brother, Naoko, was my best friend since childhood. We hoped that one day we might strike peace... I do not know who has assassinated him. I saw just a shadow on the wall. I mourn his loss... And, Kachiko, please, believe me, I did not kill him.~
  IF ~~ THEN EXTERN ~KACHIP~ N23
END

IF ~~ THEN BEGIN SB03
  SAY ~Kachiko, I won't draw my sword against you. I do not know what she told you, <CHARNAME>, but I have no quarrel with you either. I have to leave. I'll see you later... Maybe.~
  IF ~~ THEN EXTERN ~KACHIP~ N25
END

IF ~~ THEN BEGIN SB04
  SAY ~Kachiko, I promise to come back to Kara-Tur as soon as possible on my own.~
  IF ~~ THEN EXTERN ~KACHIP~ N26
END

IF ~~ THEN BEGIN SB05
  SAY ~<CHARNAME>, it seems I have no choice in this matter. I must return to Kara-Tur with Kachiko so I can find who is a real murderer of Naoko and prove my innocence. Perhaps both you and I still have a chance. Believe me, it's the best choice I have ever made in my life.~
  IF ~~ THEN DO ~SetGlobal("VP_KachikoInTavern","GLOBAL",0)
ActionOverride("Kachiko",EscapeArea())
SetGlobal("Kicked_Out","LOCALS",1)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
LeaveParty()
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN SB06
  SAY ~Whoa! Kachiko Nakanishi, stop threatening me! I will not give up so easily. <CHARNAME>, what's going on now?~
  IF ~~ THEN REPLY ~Kachiko told me that you had killed her brother. Is that true?~ GOTO SB07
  IF ~~ THEN REPLY ~Shut up, Yoshimo, you are about to die for your crimes!~ GOTO SB08
END

IF ~~ THEN BEGIN SB07
  SAY ~<CHARNAME>, it's a long bloodshed between clans in Kozakura. We call it Hojo War. God knows how it all started... Her eldest brother, Naoko, was my best friend since childhood. We hoped that one day we might strike peace... I do not know who has assassinated him. I saw just a shadow on the wall. I mourn his loss... And, Kachiko, please, believe me, I did not kill him.~
  IF ~~ THEN EXTERN ~KACHIKO~ N32
END

IF ~~ THEN BEGIN SB08
  SAY ~Kachiko, I won't draw my sword against you. I do not know what she told you, <CHARNAME>, but I have no quarrel with you either. I have to leave. I'll see you later... Maybe.~
  IF ~~ THEN EXTERN ~KACHIKO~ N34
END

IF ~~ THEN BEGIN SB09
  SAY ~Kachiko, I promise to come back to Kara-Tur as soon as possible on my own.~
  IF ~~ THEN EXTERN ~KACHIKO~ N35
END

IF ~~ THEN BEGIN SB10
  SAY ~<CHARNAME>, it seems I have no choice in this matter. I must return to Kara-Tur with Kachiko so I can find who is a real murderer of Naoko and prove my innocence. Perhaps both you and I still have a chance. Believe me, it's the best choice I have ever made in my life.~
  IF ~~ THEN DO ~SetGlobal("VP_KachikoInTavern","GLOBAL",0)
ActionOverride("Kachiko",EscapeArea())
SetGlobal("Kicked_Out","LOCALS",1)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
LeaveParty()
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN NEJ152
  SAY ~You intend to let this man Hrothgar take you from your search for your Imoen? Any delay which leaves her at the mercy of that lunatic mage cannot be good. He may even now be putting her through more pain and torture, but it is of course your choice my friend.~
  IF ~True()~ THEN EXTERN ~HROTHJ~ 60
  IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ546
  IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ260
  IF ~InParty("Kachiko")
!Dead("Kachiko")~ THEN EXTERN ~KACHIJ~ NEJ57
END

IF ~~ THEN BEGIN NEJ153
  SAY ~We are going into the past, my friend, to change what has been! Ah! If only Yoshimo could do such a thing for himself.~
  IF ~True()~ THEN EXTERN ~TILORN~ 19
  IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ261
  IF ~InParty("Kachiko")
InParty("Yoshimo")
!Dead("Kachiko")~ THEN EXTERN ~KACHIJ~ NEJ59
END

IF ~~ THEN BEGIN NEJ154
  SAY ~This cannot not be allowed my friend. We must do what is necessary to prevent it.~
  IF ~True()~ THEN EXTERN ~TERTIA~ 5
  IF ~InParty("Hrothgar")
!Dead("Hrothgar")~ THEN EXTERN ~HROTHJ~ 62
  IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ262
END

IF ~~ THEN BEGIN NEJ155
  SAY ~I am behind you, <CHARNAME>. I have no wish to face more wizards than is necessary!~
  IF ~True()~ THEN EXTERN ~RAYVON~ 2
  IF ~InParty("Hrothgar")
!Dead("Hrothgar")~ THEN EXTERN ~HROTHJ~ rayvon2
  IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~EDWINJ~ rayvon
END

IF ~~ THEN BEGIN NEJ156
  SAY ~I would counsel you to think before you do this thing my friend and this comes from one who has done many shameful things to in order survive.~
	IF ~True()~ THEN EXIT
	IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~KORGANJ~ NEJ224
	IF ~InParty("Jan")
!Dead("Jan")~ THEN EXTERN ~JANJ~ NEJ200
	IF ~InParty("Valygar")
!Dead("Valygar")~ THEN EXTERN ~VALYGARJ~ NEJ166
	IF ~InParty("Anomen")
!Dead("Anomen")~ THEN EXTERN ~ANOMENJ~ NEJ312
	IF ~InParty("Keldorn")
!Dead("Keldorn")~ THEN EXTERN ~KELDORJ~ NEJ255
	IF ~InParty("Dar")
!Dead("Dar")~ THEN EXTERN ~DARJ~ 70
	IF ~InParty("Sime")
!Dead("Sime")~ THEN EXTERN ~SIMEJ~ NEJ119
	IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~EDWINJ~ NEJ199
	IF ~InParty("Nalia")
!Dead("Nalia")~ THEN EXTERN ~NALIAJ~ NEJ333
	IF ~InParty("Aerie")
!Dead("Aerie")~ THEN EXTERN ~AERIEJ~ NEJ235
	IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ331
END

IF ~~ THEN BEGIN tranfail
  SAY ~It was very brave of you to even try on your own Kachiko. My stomach had butterflies doing somersaults inside me until I saw the beautiful Kachuko standing before me again. You must not let <CHARNAME> send you off alone again, or at least not without me.~
  IF ~~ THEN EXTERN ~TUMALV~ 24
END

IF ~~ THEN BEGIN tafficuh
  SAY ~So gnome, tell me, how do you intend getting out of this snare?~
 IF ~True()~ THEN EXTERN ~TAFFICP~ umberhk3
 IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ tafficuh
 IF ~InParty("Kachiko")
InParty("Yoshimo")
!Dead("Kachiko")~ THEN EXTERN ~KACHIJ~ tafficuh
END

IF ~~ THEN BEGIN transmut
  SAY ~<CHARNAME>, please, you can't let Kachiko do this alone. At least not without knowing more about this guardian. Please?~
  IF ~~ THEN REPLY ~Kachiko?~ GOTO transmu1
END

IF ~~ THEN BEGIN transmu1
  SAY ~Kachiko, please...~
  IF ~~ THEN EXTERN ~KACHIJ~ NEJ701
END
END