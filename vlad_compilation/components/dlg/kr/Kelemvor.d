BEGIN ~KELEMVOR~

IF ~NumTimesTalkedTo(0)
Global("VP_ToB_Kr_Kelemvor","GLOBAL",0)~ THEN BEGIN 0
  SAY ~(A tall, sombre figure is leering at you, and you realise to whom you've come... this is Kelemvor himself, god of Death) Bhaalspawn... How many foolish things have you rendered! To begin with, please give me the ring. Enough of playing with it.~ [Mortuary]
  IF ~~ THEN DO ~TakePartyItem("kelring") DestroyItem("kelring") SetGlobal("VP_Kr_CyricPlot","GLOBAL",6)~ GOTO ext
END

IF ~!NumTimesTalkedTo(0) Global("VP_Kr_CyricPlot","GLOBAL",6) Global("VP_ToB_Kr_Kelemvor","GLOBAL",0)~ THEN BEGIN mystrate
  SAY ~Did you bring me the tears?~
  IF ~PartyHasItem("lightdrp")~ THEN REPLY ~(Casting a glance at him) Sure, here they are.~ DO ~TakePartyItem("lightdrp") AddexperienceParty(100000) SetGlobal("VP_Kr_CyricPlot","GLOBAL",7)~ GOTO 3
  IF ~PartyHasItem("lightdrp")~ THEN REPLY ~Well, I would never have imagined that the god of Death is sentimental. All right, here they are.~DO ~TakePartyItem("lightdrp") AddexperienceParty(100000) SetGlobal("VP_Kr_CyricPlot","GLOBAL",7)~ GOTO 5
  IF ~PartyHasItem("lightdrp")~ THEN REPLY ~But... I want to use them.~ GOTO 6
  IF ~!PartyHasItem("lightdrp")~ THEN REPLY ~I've used them.~ GOTO 9A
  IF ~!PartyHasItem("lightdrp")~ THEN REPLY ~I didn't pick up them in Baator.~ GOTO 9A
END

IF ~~ THEN BEGIN ext
  SAY ~You disappoint me, child of Bhaal, I expected you to find the way out of Baator on your own. The solution was so obvious...~
  IF ~~ THEN REPLY ~Kelemvor! I was filled with despair. Only a god could have saved my sir Keldorn.~ GOTO 1
  IF ~~ THEN REPLY ~But... divine intervention was required.~ GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY ~(With irony) And so you took it upon yourself to become a god?~
  IF ~~ THEN REPLY ~(With tears) What else was I supposed to do? I was calling, and nobody was answering.~ GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY ~But you did not call me, child of Bhaal! Do you not know that only I, Kelemvor, god of Death, can intervene? Even Mystra can not do the things that I am capable of, but I will give you another chance.~
  IF ~OR(4) PartyHasItem("chocquas") PartyHasItem("kidsoil") PartyHasItem("darkdrop") PartyHasItem("lightdrp")~ THEN GOTO ext2
  IF ~!PartyHasItem("chocquas") !PartyHasItem("kidsoil") !PartyHasItem("darkdrop") !PartyHasItem("lightdrp")~ THEN GOTO ext7
END

IF ~~ THEN BEGIN ext2
  SAY ~I see you have with you some things you have collected in Baator.~
  IF ~PartyHasItem("lightdrp")~ THEN GOTO ext6
  IF ~PartyHasItem("darkdrop")~ THEN GOTO ext5
  IF ~PartyHasItem("kidsoil")~ THEN GOTO ext4
  IF ~PartyHasItem("chocquas")~ THEN GOTO ext3
END

IF ~~ THEN BEGIN ext3
  SAY ~Chocolate quasit... who decided to turn him into a sweetie, I wonder? It gives power. Are you certain you need it? Bear in mind, these things are filled with evil.~
  IF ~True()~ THEN GOTO ext7
  IF ~PartyHasItem("lightdrp")~ THEN GOTO ext6
  IF ~PartyHasItem("darkdrop")~ THEN GOTO ext5
  IF ~PartyHasItem("kidsoil")~ THEN GOTO ext4
END

IF ~~ THEN BEGIN ext4
  SAY ~Oil... What a nasty thing!~
  IF ~True()~ THEN GOTO ext7
  IF ~PartyHasItem("lightdrp")~ THEN GOTO ext6
  IF ~PartyHasItem("darkdrop")~ THEN GOTO ext5
END

IF ~~ THEN BEGIN ext5
  SAY ~Tears... these are my tears. You know this story, Bhaalspawn? Gorion told it to you, I'm sure.~
  IF ~!PartyHasItem("lightdrp")~ THEN GOTO ext7
  IF ~PartyHasItem("lightdrp")~ THEN GOTO ext6
END

IF ~~ THEN BEGIN ext6
  SAY ~So, you have Mystra's tears... I have a request to you, grant me the tears... I will be very grateful to you.~
  IF ~~ THEN REPLY ~(Casting a glance at him) Sure, here they are.~ DO ~TakePartyItem("lightdrp") AddXPObject(Player1,35000) SetGlobal("VP_Kr_CyricPlot","GLOBAL",7)~ GOTO 3
  IF ~~ THEN REPLY ~Well, I would never have imagined that the god of Death is sentimental. All right, here they are.~ DO ~TakePartyItem("lightdrp") AddXPObject(Player1,35000) SetGlobal("VP_Kr_CyricPlot","GLOBAL",7)~ GOTO 5
  IF ~~ THEN REPLY ~But... I want to use them.~ GOTO 6
END

IF ~~ THEN BEGIN ext7
  SAY ~You have supposedly collected Mystra's tears in Baator. Bring me the tears, and we'll talk about your friend.~
  IF ~~ THEN REPLY ~But I can not see sir Keldorn here! Isn't he dead?~ GOTO ext8
END

IF ~~ THEN BEGIN ext8
  SAY ~He is, but he is not here. We will talk about him later. Now you will go.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY ~Thank you.~
  IF ~~ THEN REPLY ~I can not see sir Keldorn here! Isn't he dead?~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY ~He is, but he is not here. We will talk about him later. First, you should take care of your friends.~
  IF ~True()~ THEN GOTO 4A
  IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kelem0
  IF ~InParty("Kachiko")~ THEN EXTERN ~KACHIJ~ Kelem0
  IF ~InParty("Yoshimo")~ THEN EXTERN ~YOSHJ~ Kelem0
  IF ~InParty("Viconia")~ THEN EXTERN ~VICONIJ~ Kelem0
  IF ~InParty("Jan")~ THEN EXTERN ~JANJ~ Kelem0
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ Kelem0
  IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ Kelem0
  IF ~InParty("Mazzy")~ THEN EXTERN ~MAZZYJ~ Kelem0
  IF ~InParty("HaerDalis")~ THEN EXTERN ~HAERDAJ~ Kelem0
  IF ~InParty("Korgan")~ THEN EXTERN ~KORGANJ~ Kelem0
  IF ~InParty("Cernd")~ THEN EXTERN ~CERNDJ~ Kelem0
  IF ~InParty("Nalia")~ THEN EXTERN ~NALIAJ~ Kelem0
  IF ~InParty("Aerie")~ THEN EXTERN ~AERIEJ~ Kelem0
  IF ~InParty("Sime")~ THEN EXTERN ~SIMEJ~ Kelem0
  IF ~InParty("Valygar")~ THEN EXTERN ~VALYGARJ~ Kelem0
  IF ~InParty("Anomen")~ THEN EXTERN ~ANOMENJ~ Kelem0
  IF ~InParty("Hrothgar")~ THEN EXTERN ~HROTHJ~ Kelem0
  IF ~InParty("Dar")~ THEN EXTERN ~DARJ~ Kelem0
  IF ~InParty("Taffic")~ THEN EXTERN ~TAFFICJ~ Kelem0
  IF ~InParty("Sharteel")~ THEN EXTERN ~SHARTJ~ Kelem0
  IF ~InParty("Leina")~ THEN EXTERN ~LEINAJ~ Kelem0
  IF ~InParty("Melora")~ THEN EXTERN ~MELORAJ~ Kelem0
END

IF ~~ THEN BEGIN 4A
  SAY ~I hope you have collected all your friends and haven't forgotten anybody.~
  = ~Well... now to your sir Keldorn. I told you that he refused to wait here? He said that he'd lived a long enough life, that he is tired and he does not see the need... I couldn't force him to stay.~
  IF ~~ THEN REPLY ~(Tears well up in your eyes) Why, but why?~ GOTO 13
  IF ~~ THEN REPLY ~That stubborn paladin, he sees himself as a failure. He doesn't believe that someone may...  (your voice drops to a whisper)... need him.~ GOTO 13
  IF ~~ THEN REPLY ~(Shaking your head) He forgot his duties... that is so unlike him! Please, may I speak with him?~ GOTO 14
END

IF ~~ THEN BEGIN 5
  SAY ~(Tartly) Well I never... thank you for returning my memories.~
  IF ~~ THEN REPLY ~I... I can not see sir Keldorn here! Isn't he dead?~ GOTO 4
END

IF ~~ THEN BEGIN 5A
  SAY ~My priest... I'm flattered. This can be done, but let's talk about that later. For now, you need to think about your friends.~
  = ~You may revive them, but on one condition: they must forgive you that you murdered them. Those with whom you decide not to talk with will remain forever in the world of the dead.~
  IF ~~ THEN REPLY ~I... I can not see sir Keldorn here! Isn't he dead?~ GOTO 4
END

IF ~~ THEN BEGIN 6
  SAY ~(Frowning) Use them... can a righteous girl use something that has brought grief to another? You believe that by destroying my memories of the love I once had you will become wiser and smarter?~
  IF ~PartyHasItem("lightdrp")~ THEN REPLY ~(Shudder) Forgive me, Kelemvor. I... I wasn't thinking. Take them.~ DO ~TakePartyItem("lightdrp") AddexperienceParty(100000) SetGlobal("VP_Kr_CyricPlot","GLOBAL",7)~ GOTO 3
  IF ~PartyHasItem("lightdrp")~ THEN REPLY ~The god of Death looks back at his earthly love? How strange... all right, take them.~ DO ~TakePartyItem("lightdrp") AddexperienceParty(100000) SetGlobal("VP_Kr_CyricPlot","GLOBAL",7)~ GOTO 5
  IF ~PartyHasItem("darkdrop")~ THEN REPLY ~I give you your tears, but I want to keep those of  Mystra.~ GOTO 7
  IF ~~ THEN REPLY ~I need wisdom Kelemvor... truly I have need of it if I am to continue my god's work!~ GOTO 8
END

IF ~~ THEN BEGIN 7
  SAY ~(Bitterly) What selfishness... I doubt sir Keldorn will approve of your actions. My... my memories of the beautiful Midnight ... keep them for I will not take them forcibly from you.~
  IF ~PartyHasItem("lightdrp")~ THEN REPLY ~No! I... can't... here, I return your sorrow to you.~ DO ~DestroyItem("lightdrp") AddexperienceParty(100000) SetGlobal("VP_Kr_CyricPlot","GLOBAL",7)~ GOTO 3
  IF ~~ THEN REPLY ~Isn't it better to forget everything? You are a powerful god, why do you need to remember yourself as you were when mortal?~ GOTO 9
END

IF ~~ THEN BEGIN 8
  SAY ~(Bitterly) So, you decide to take them whatever the costs... even if it means depriving me of my last memories of my love?~
  IF ~PartyHasItem("lightdrp") !Class(Player1,CLERIC_ALL)~ THEN REPLY ~You... you still remember how it was to be mortal and what it is to suffer? You are a strange god, Kelemvor... If you want to remember, then do so! Here, take your tears.~ DO ~DestroyItem("lightdrp") AddexperienceParty(100000) SetGlobal("VP_Kr_CyricPlot","GLOBAL",7)~ GOTO 5
  IF ~PartyHasItem("lightdrp") Class(Player1,CLERIC_ALL)~ THEN REPLY ~You... you still remember how it was to be mortal and what it is to suffer? You are a strange god, Kelemvor... I wish to serve you as your priest. And if you want to remember, then do so! Here, take your tears.~ DO ~DestroyItem("lightdrp") AddexperienceParty(100000) SetGlobal("VP_Kr_CyricPlot","GLOBAL",7)~ GOTO 5A
  IF ~~ THEN REPLY ~Can a god suffer, must he suffer... does he have the right to suffer? No, I won't give you your memories.~ GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY  ~(Sighs) It all depends... your friend is here. You can revive him.~
  IF ~~ THEN REPLY ~I... I can not see sir Keldorn here! Isn't he dead?~ GOTO 4
END

IF ~~ THEN BEGIN 9A
  SAY  ~(Sighs) Your friend is here. You can revive him.~
  IF ~~ THEN REPLY ~I... I can not see sir Keldorn here! Isn't he dead?~ GOTO 4
END

IF ~~ THEN BEGIN 13
  SAY  ~(Dispassionately) You love him.~
  IF ~~ THEN REPLY ~I... how do you know? Of course you know, how stupid of me... you know everything about us, mortals.~ GOTO 15
  IF ~~ THEN REPLY ~I... I was afraid to believe it, I feared to dream and I forbade myself to even to think of it! After all it's not right, he is a paladin, he must not know that.~ GOTO 16
END

IF ~~ THEN BEGIN 14
  SAY  ~Of course. But before you talk to Keldorn, think and think well. Do you really want this? Do you need it? He has made his choice, he's obtained the peace that he strove for, and yet you want him to fight again, to suffer once again.~
  = ~His war is over. Look at him, is that your sir Keldorn that you see? He is reconciled with this place, he has forgotten his sufferings, and no longer remembers the horror of death, nor does he remember the pain of losing. All his thoughts are of his soon-to-be meeting with Torm... his god.~
  IF ~~ THEN REPLY ~No, no, no! I don't want... I can't leave him here. A complacent Keldorn is a wrong Keldorn! All his life he cared about everyone about everything... he was never indifferent! No, you are wrong, he does not belong here!~ GOTO 18
  IF ~~ THEN REPLY ~(Tears well up in your eyes) I... I do not know what to say. I know you are right, Kelemvor, but I feel that Keldorn will regret his decision. It was made in temper, like so many of his decisions. I need to talk to him, I must give him a chance to reconsider.~ GOTO 18
  IF ~~ THEN REPLY ~Yes... you are right and you are wise. What can I offer him besides another war, more sufferings, more restless nights? He's made his choice and I will not disturb him... I will let him go, he deserves his peace. Farewell, Keldorn.~ DO ~SetGlobal("VP_KrRomanceActive","GLOBAL",3) SetGlobal("VP_Kr_CyricPlot","GLOBAL",9)TakePartyItem("chocquas") TakePartyItem("kidsoil") TakePartyItem("darkdrop") TakePartyItem("lightdrp") TakePartyItem("daggerfr") ClearAllActions() StartCutSceneMode() StartCutScene("KRCut13")~ JOURNAL ~I had a vision: defence is breached, enemies, monsters and giants conquer Firecam's castle and kill everyone within. Keldorn is dead. I have only a void left in my soul. But I know that I must at least save Imoen. I must resist the dark power that is raging inside me, in memory of Keldorn. To him I own that much... Now, back to Athkatla.~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY  ~Not everything. I know the past, but I do not and can not know the future. Don't forget that I deal only with the souls of the dead.~
  IF ~~ THEN REPLY ~(Timidly) What of...Keldorn?~ GOTO 17
  IF ~~ THEN REPLY ~Yes, I understand. Can I talk to him?~ GOTO 14
END

IF ~~ THEN BEGIN 16
  SAY  ~Your reasoning is beyond my understanding. He is a man of no small intelligence, he will see your love. It would be better if you tell him yourself, allow Keldorn to decide whether he needs your love or not.~
  IF ~~ THEN REPLY ~What of him... what does he feel?~ GOTO 17
  IF ~~ THEN REPLY ~(Lowering your eyes) I bow my head respectfully to your wisdom, Kelemvor. Please, may I speak with him?~ GOTO 14
END

IF ~~ THEN BEGIN 17
  SAY  ~You want to know the answer beforehand? I will not tell you, don't even ask.~
  IF ~~ THEN REPLY ~Please, may I speak with him?~ GOTO 14
END

IF ~~ THEN BEGIN 18
  SAY  ~If you are so certain that you are right, then go and persuade him.~
  IF ~~ THEN DO ~SetGlobal("VP_Kr_CyricPlot","GLOBAL",8) ClearAllActions() StartCutSceneMode() StartCutScene("KRCut12")~ EXIT
END

IF ~~ THEN BEGIN K3
  SAY  ~I am surprised, <CHARNAME>. In sending you here I was certain your plan was doomed to fail. You've surpassed my expectations.~
  = ~There is however one 'impediment' to your leaving. You see that portal over there... Well, you are a semi-god and you can walk through it easily as many times as you wish without any harm to yourself... Keldorn is but a mere mortal, only one way is open to him... the way here. He may leave this place only by giving some of his life energy to the guard.~
  = ~<CHARNAME>, I have no power over that guard, and neither I nor Jergal can do anything. You see I'm not so... almighty.~
  IF ~~ THEN REPLY ~There is nothing else that can be done? Can I sacrifice some of my own divine blood?~ GOTO K4
  IF ~~ THEN REPLY ~What will be the cost to Keldorn?~ GOTO K7
END

IF ~~ THEN BEGIN K4
  SAY  ~Hm... you can, if you are so devoted to your friend, willingly offer up this sacrifice, I can not forbid it.~
  IF ~~ THEN EXTERN KELDORNM K4
END

IF ~~ THEN BEGIN K5
  SAY  ~Paladin, nobody is asking for you to agree. She, a daughter of Bhaal, wants to make this sacrifice, and you, a paladin of Torm, can not prevent it. It is her right... or is it your fear that the Order will not understand if you allow the blood of God of Murder to run through your veins?~
  IF ~~ THEN EXTERN KELDORNM K5
END

IF ~~ THEN BEGIN K6
  SAY  ~No, I think not. You are not doing anything that will discredit the paladins' code.~
  = ~<CHARNAME>, are you ready? You have not changed your mind?~
  IF ~~ THEN REPLY ~I am ready.~ GOTO K11
  IF ~~ THEN REPLY ~Hold, you have not mentioned what the cost will be to Keldorn.~ EXTERN ~KELDORNM~ K6
END

IF ~~ THEN BEGIN K7
  SAY  ~He will lose some of his life force. Think carefully whether you really need such a... such a helper.~
  IF ~~ THEN REPLY ~I do. I will not leave him here!~ GOTO K8
  IF ~~ THEN REPLY ~Can I sacrifice instead of him?~ GOTO K10
  IF ~~ THEN REPLY ~You are right. It would be better for him if he stays here.~ GOTO K9
END

IF ~~ THEN BEGIN K8
  SAY  ~Then let it be as you wish.~
  IF ~~ THEN DO ~SetGlobal("VP_Kr_CyricPlot","GLOBAL",10) TakePartyItem("chocquas") TakePartyItem("kidsoil") TakePartyItem("darkdrop") TakePartyItem("lightdrp") TakePartyItem("daggerfr") ClearAllActions() StartCutSceneMode() StartCutScene("KRCut15")~ EXIT
END

IF ~~ THEN BEGIN K9
  SAY  ~(Whispers to you) Are you not ashamed? Why do you remind him of his duties? No matter, the decision is made. I believe Keldorn would prefer to remain here anyway.~
  IF ~~ THEN DO ~SetGlobal("VP_KrRomanceActive","GLOBAL",3) SetGlobal("VP_Kr_CyricPlot","GLOBAL",9) TakePartyItem("chocquas") TakePartyItem("kidsoil") TakePartyItem("darkdrop") TakePartyItem("lightdrp") TakePartyItem("daggerfr") ClearAllActions() StartCutSceneMode() StartCutScene("KRCut13")~ JOURNAL ~I had a vision: defence is breached, goblins and giants conquer Firecam's castle and kill everyone within. Keldorn is dead. I have only a void left in my soul. But I know that I must at least save Imoen. I must resist the dark power that is raging inside me, in memory of Keldorn. To him I own that much... Now, back to Athkatla.~ EXIT
END

IF ~~ THEN BEGIN K10
  SAY  ~You? I suppose you can do that.~
  IF ~~ THEN DO ~SetGlobal("VP_Kr_CyricPlot","GLOBAL",10) TakePartyItem("chocquas") TakePartyItem("kidsoil") TakePartyItem("darkdrop") TakePartyItem("lightdrp") TakePartyItem("daggerfr") ClearAllActions() StartCutSceneMode() StartCutScene("KRCut16")~ EXIT
END

IF ~~ THEN BEGIN K11
  SAY  ~So... before I revive him, I wish to tell you something. He now has a part Bhaal's blood. I do not know how it will show up. Watch him, and call me immediately should anything strange occur.~
  = ~As to your power, the ring of Cyric disturbed the balance, the dark part had the opportunity to break away and is now out of control. Be careful if you do not want it to possess you.~
  IF ~~ THEN REPLY ~All right. I'll try.~ GOTO K12
END

IF ~~ THEN BEGIN K12
  SAY  ~And one more thing... Your courage and self-sacrifice touched me. Please take this chain mail as a gift from me. Only those who serve me can wear this armor, but you are an exceptional person.~
  = ~You will be able to wear it as well as any of your companions, and it will protect you as a full plate armor, but is much lighter. Now, farewell.~
  IF ~~ THEN DO ~SetGlobal("VP_Kr_CyricPlot","GLOBAL",10) TakePartyItem("chocquas") TakePartyItem("kidsoil") TakePartyItem("darkdrop") TakePartyItem("lightdrp") TakePartyItem("daggerfr") GiveItemCreate("KelChan",Player1,0,0,0) ClearAllActions() StartCutSceneMode() StartCutScene("KRCut14")~ EXIT
END

IF ~~ THEN BEGIN K13
  SAY  ~Don't listen to him! I beg you, don't listen. I can't interfere.~
  IF ~~ THEN EXTERN ~TORM~ 0
END

IF ~~ THEN BEGIN K14
  SAY  ~Torm. Ao gave strict orders.~
  IF ~~ THEN EXTERN ~TORM~ 1
END

IF ~Global("VP_ToB_Kr_Kelemvor","GLOBAL",1)~ THEN BEGIN K15
  SAY ~No need to kill anybody, Solar. I suspected something like this could happen, but I didn't want to scare her earlier. Allow me (Kelemvor moves his hand lengthways towards your body and the pain goes away).~
  = ~Now hear me both of you, <CHARNAME>, and you, paladin. Your future daughter is a goddess. This child has a bond with her mother so strong that she will die, should I try to remove her divinity now.~
  IF ~~ THEN EXTERN ~KELDO25J~ KRENDs1A
END

IF ~~ THEN BEGIN K16
  SAY ~No. It is to your merit, paladin. The light of your soul was strong enough to defeat the evil, which your future wife's legacy was carrying. Your daughter will be of a great help to me, if you will allow her to, of course.~
  IF ~~ THEN EXTERN ~KELDO25J~ KRENDs1B
END

IF ~~ THEN BEGIN K17
  SAY ~Not now. She must grow up and embrace her power. And you will raise her, teach her about justice, wisdom, and duty. This is your task.~
  IF ~~ THEN EXTERN ~KELDO25J~ KRENDs1C
END