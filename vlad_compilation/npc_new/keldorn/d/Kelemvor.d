BEGIN KELEMVOR

CHAIN
IF ~NumTimesTalkedTo(0) Global("VP_ToB_Kr_Kelemvor","GLOBAL",0)~ THEN KELEMVOR 0
~(A tall, sombre figure is leering at you, and you realise to whom you've come... this is Kelemvor himself, god of Death) Bhaalspawn... How many foolish things have you rendered! To begin with, please give me the ring. Enough of playing with it.~ [Mortuary]
DO ~TakePartyItem("kelring") DestroyItem("kelring") SetGlobal("VP_Kr_CyricPlot","GLOBAL",6)~
EXTERN KELEMVOR ext

CHAIN
IF ~!NumTimesTalkedTo(0) Global("VP_Kr_CyricPlot","GLOBAL",6) Global("VP_ToB_Kr_Kelemvor","GLOBAL",0)~ THEN KELEMVOR mystrate
~Did you bring me the tears?~
END
 IF ~PartyHasItem("lightdrp")~ THEN REPLY ~(Casting a glance at him) Sure, here they are.~ DO ~TakePartyItem("lightdrp") AddexperienceParty(100000) SetGlobal("VP_Kr_CyricPlot","GLOBAL",7)~ EXTERN KELEMVOR 3
 IF ~PartyHasItem("lightdrp")~ THEN REPLY ~Well, I would never have imagined that the god of Death is sentimental. All right, here they are.~DO ~TakePartyItem("lightdrp") AddexperienceParty(100000) SetGlobal("VP_Kr_CyricPlot","GLOBAL",7)~ EXTERN KELEMVOR 5
 IF ~PartyHasItem("lightdrp")~ THEN REPLY ~But... I want to use them.~ EXTERN KELEMVOR 6
 IF ~!PartyHasItem("lightdrp")~ THEN REPLY ~I've used them.~ EXTERN KELEMVOR 9A
 IF ~!PartyHasItem("lightdrp")~ THEN REPLY ~I didn't pick up them in Baator.~ EXTERN KELEMVOR 9A

CHAIN KELEMVOR ext
~You disappoint me, child of Bhaal, I expected you to find the way out of Baator on your own. The solution was so obvious...~
END
 ++ ~Kelemvor! I was filled with despair. Only a god could have saved my sir Keldorn.~ EXTERN KELEMVOR 1
 ++ ~But... divine intervention was required.~ EXTERN KELEMVOR 2

CHAIN KELEMVOR 1
~(With irony) And so you took it upon yourself to become a god?~
END
 ++ ~(With tears) What else was I supposed to do? I was calling, and nobody was answering.~ EXTERN KELEMVOR 2

CHAIN KELEMVOR 2
~But you did not call me, child of Bhaal! Do you not know that only I, Kelemvor, god of Death, can intervene? Even Mystra can not do the things that I am capable of, but I will give you another chance.~
END
 IF ~OR(4) PartyHasItem("chocquas") PartyHasItem("kidsoil") PartyHasItem("darkdrop") PartyHasItem("lightdrp")~ THEN EXTERN KELEMVOR ext2
 IF ~!PartyHasItem("chocquas") !PartyHasItem("kidsoil") !PartyHasItem("darkdrop") !PartyHasItem("lightdrp")~ THEN EXTERN KELEMVOR ext7

CHAIN KELEMVOR ext2
~I see you have with you some things you have collected in Baator.~
END
 IF ~PartyHasItem("lightdrp")~ THEN EXTERN KELEMVOR ext6
 IF ~PartyHasItem("darkdrop")~ THEN EXTERN KELEMVOR ext5
 IF ~PartyHasItem("kidsoil")~ THEN EXTERN KELEMVOR ext4
 IF ~PartyHasItem("chocquas")~ THEN EXTERN KELEMVOR ext3

CHAIN KELEMVOR ext3
~Chocolate quasit... who decided to turn him into a sweetie, I wonder? It gives power. Are you certain you need it? Bear in mind, these things are filled with evil.~
END
 IF ~True()~ THEN EXTERN KELEMVOR ext7
 IF ~PartyHasItem("lightdrp")~ THEN EXTERN KELEMVOR ext6
 IF ~PartyHasItem("darkdrop")~ THEN EXTERN KELEMVOR ext5
 IF ~PartyHasItem("kidsoil")~ THEN EXTERN KELEMVOR ext4

CHAIN KELEMVOR ext4
~Oil... What a nasty thing!~
END
 IF ~True()~ THEN EXTERN KELEMVOR ext7
 IF ~PartyHasItem("lightdrp")~ THEN EXTERN KELEMVOR ext6
 IF ~PartyHasItem("darkdrop")~ THEN EXTERN KELEMVOR ext5

CHAIN KELEMVOR ext5
~Tears... these are my tears. You know this story, Bhaalspawn? Gorion told it to you, I'm sure.~
END
 IF ~!PartyHasItem("lightdrp")~ THEN EXTERN KELEMVOR ext7
 IF ~PartyHasItem("lightdrp")~ THEN EXTERN KELEMVOR ext6

CHAIN KELEMVOR ext6
~So, you have Mystra's tears... I have a request to you, grant me the tears... I will be very grateful to you.~
END
 ++ ~(Casting a glance at him) Sure, here they are.~ DO ~TakePartyItem("lightdrp") AddXPObject(Player1,35000) SetGlobal("VP_Kr_CyricPlot","GLOBAL",7)~ EXTERN KELEMVOR 3
 ++ ~Well, I would never have imagined that the god of Death is sentimental. All right, here they are.~ DO ~TakePartyItem("lightdrp") AddXPObject(Player1,35000) SetGlobal("VP_Kr_CyricPlot","GLOBAL",7)~ EXTERN KELEMVOR 5
 ++ ~But... I want to use them.~ EXTERN KELEMVOR 6

CHAIN KELEMVOR ext7
~You have supposedly collected Mystra's tears in Baator. Bring me the tears, and we'll talk about your friend.~
END
 ++ ~But I can not see sir Keldorn here! Isn't he dead?~ EXTERN KELEMVOR ext8

CHAIN KELEMVOR ext8
~He is, but he is not here. We will talk about him later. Now you will go.~
EXIT

CHAIN KELEMVOR 3
~Thank you.~
END
 ++ ~I can not see sir Keldorn here! Isn't he dead?~ EXTERN KELEMVOR 4

CHAIN KELEMVOR 4
~He is, but he is not here. We will talk about him later. First, you should take care of your friends.~
END
 IF ~True()~ THEN EXTERN KELEMVOR 4A
 IF ~InParty("Edwin")~ THEN EXTERN EDWINJ Kelem0
 IF ~InParty("vpkachi")~ THEN EXTERN VPKACJ Kelem0
 IF ~InParty("Yoshimo")~ THEN EXTERN YOSHJ Kelem0
 IF ~InParty("Viconia")~ THEN EXTERN VICONIJ Kelem0
 IF ~InParty("Jan")~ THEN EXTERN JANJ Kelem0
 IF ~InParty("Minsc")~ THEN EXTERN MINSCJ Kelem0
 IF ~InParty("Jaheira")~ THEN EXTERN JAHEIRAJ Kelem0
 IF ~InParty("Mazzy")~ THEN EXTERN MAZZYJ Kelem0
 IF ~InParty("HaerDalis")~ THEN EXTERN HAERDAJ Kelem0
 IF ~InParty("Korgan")~ THEN EXTERN KORGANJ Kelem0
 IF ~InParty("Cernd")~ THEN EXTERN CERNDJ Kelem0
 IF ~InParty("Nalia")~ THEN EXTERN NALIAJ Kelem0
 IF ~InParty("Aerie")~ THEN EXTERN AERIEJ Kelem0
 IF ~InParty("Sime")~ THEN EXTERN VPSIMJ Kelem0
 IF ~InParty("Valygar")~ THEN EXTERN VALYGARJ Kelem0
 IF ~InParty("Anomen")~ THEN EXTERN ANOMENJ Kelem0
 IF ~InParty("njhroth")~ THEN EXTERN NJHROJ Kelem0
 IF ~InParty("njdar")~ THEN EXTERN NJDARJ Kelem0
 IF ~InParty("njtaffic")~ THEN EXTERN NJTAFJ Kelem0
 IF ~InParty("Sharteel")~ THEN EXTERN ~SHARTJ~ Kelem0
 IF ~InParty("vpleina")~ THEN EXTERN VPLEIJ Kelem0
 IF ~InParty("njmelora")~ THEN EXTERN NJMELJ Kelem0

CHAIN KELEMVOR 4A
~I hope you have collected all your friends and haven't forgotten anybody.~
= ~Well... now to your sir Keldorn. I told you that he refused to wait here? He said that he'd lived a long enough life, that he is tired and he does not see the need... I couldn't force him to stay.~
END
 ++ ~(Tears well up in your eyes) Why, but why?~ EXTERN KELEMVOR 13
 ++ ~That stubborn paladin, he sees himself as a failure. He doesn't believe that someone may... (your voice drops to a whisper)... need him.~ EXTERN KELEMVOR 13
 ++ ~(Shaking your head) He forgot his duties... that is so unlike him! Please, may I speak with him?~ EXTERN KELEMVOR 14

CHAIN KELEMVOR 5
~(Tartly) Well I never... thank you for returning my memories.~
END
 ++ ~I... I can not see sir Keldorn here! Isn't he dead?~ EXTERN KELEMVOR 4

CHAIN KELEMVOR 5A
~My priest... I'm flattered. This can be done, but let's talk about that later. For now, you need to think about your friends.~
= ~You may revive them, but on one condition: they must forgive you that you murdered them. Those with whom you decide not to talk with will remain forever in the world of the dead.~
END
 ++ ~I... I can not see sir Keldorn here! Isn't he dead?~ EXTERN KELEMVOR 4

CHAIN KELEMVOR 6
~(Frowning) Use them... can a righteous girl use something that has brought grief to another? You believe that by destroying my memories of the love I once had you will become wiser and smarter?~
END
 IF ~PartyHasItem("lightdrp")~ THEN REPLY ~(Shudder) Forgive me, Kelemvor. I... I wasn't thinking. Take them.~ DO ~TakePartyItem("lightdrp") AddexperienceParty(100000) SetGlobal("VP_Kr_CyricPlot","GLOBAL",7)~ EXTERN KELEMVOR 3
 IF ~PartyHasItem("lightdrp")~ THEN REPLY ~The god of Death looks back at his earthly love? How strange... all right, take them.~ DO ~TakePartyItem("lightdrp") AddexperienceParty(100000) SetGlobal("VP_Kr_CyricPlot","GLOBAL",7)~ EXTERN KELEMVOR 5
 IF ~PartyHasItem("darkdrop")~ THEN REPLY ~I give you your tears, but I want to keep those of Mystra.~ EXTERN KELEMVOR 7
 ++ ~I need wisdom Kelemvor... truly I have need of it if I am to continue my god's work!~ EXTERN KELEMVOR 8

CHAIN KELEMVOR 7
~(Bitterly) What selfishness... I doubt sir Keldorn will approve of your actions. My... my memories of the beautiful Midnight ... keep them for I will not take them forcibly from you.~
END
 IF ~PartyHasItem("lightdrp")~ THEN REPLY ~No! I... can't... here, I return your sorrow to you.~ DO ~DestroyItem("lightdrp") AddexperienceParty(100000) SetGlobal("VP_Kr_CyricPlot","GLOBAL",7)~ EXTERN KELEMVOR 3
 ++ ~Isn't it better to forget everything? You are a powerful god, why do you need to remember yourself as you were when mortal?~ EXTERN KELEMVOR 9

CHAIN KELEMVOR 8
~(Bitterly) So, you decide to take them whatever the costs... even if it means depriving me of my last memories of my love?~
END
 IF ~PartyHasItem("lightdrp") !Class(Player1,CLERIC_ALL)~ THEN REPLY ~You... you still remember how it was to be mortal and what it is to suffer? You are a strange god, Kelemvor... If you want to remember, then do so! Here, take your tears.~ DO ~DestroyItem("lightdrp") AddexperienceParty(100000) SetGlobal("VP_Kr_CyricPlot","GLOBAL",7)~ EXTERN KELEMVOR 5
 IF ~PartyHasItem("lightdrp") Class(Player1,CLERIC_ALL)~ THEN REPLY ~You... you still remember how it was to be mortal and what it is to suffer? You are a strange god, Kelemvor... I wish to serve you as your priest. And if you want to remember, then do so! Here, take your tears.~ DO ~DestroyItem("lightdrp") AddexperienceParty(100000) SetGlobal("VP_Kr_CyricPlot","GLOBAL",7)~ EXTERN KELEMVOR 5A
 ++ ~Can a god suffer, must he suffer... does he have the right to suffer? No, I won't give you your memories.~ EXTERN KELEMVOR 9

CHAIN KELEMVOR 9
~(Sighs) It all depends... your friend is here. You can revive him.~
END
 ++ ~I... I can not see sir Keldorn here! Isn't he dead?~ EXTERN KELEMVOR 4

CHAIN KELEMVOR 9A
~(Sighs) Your friend is here. You can revive him.~
END
 ++ ~I... I can not see sir Keldorn here! Isn't he dead?~ EXTERN KELEMVOR 4

CHAIN KELEMVOR 13
~(Dispassionately) You love him.~
END
 ++ ~I... how do you know? Of course you know, how stupid of me... you know everything about us, mortals.~ EXTERN KELEMVOR 15
 ++ ~I... I was afraid to believe it, I feared to dream and I forbade myself to even to think of it! After all it's not right, he is a paladin, he must not know that.~ EXTERN KELEMVOR 16

CHAIN KELEMVOR 14
~Of course. But before you talk to Keldorn, think and think well. Do you really want this? Do you need it? He has made his choice, he's obtained the peace that he strove for, and yet you want him to fight again, to suffer once again.~
= ~His war is over. Look at him, is that your sir Keldorn that you see? He is reconciled with this place, he has forgotten his sufferings, and no longer remembers the horror of death, nor does he remember the pain of losing. All his thoughts are of his soon-to-be meeting with Torm... his god.~
END
 ++ ~No, no, no! I don't want... I can't leave him here. A complacent Keldorn is a wrong Keldorn! All his life he cared about everyone about everything... he was never indifferent! No, you are wrong, he does not belong here!~ EXTERN KELEMVOR 18
 ++ ~(Tears well up in your eyes) I... I do not know what to say. I know you are right, Kelemvor, but I feel that Keldorn will regret his decision. It was made in temper, like so many of his decisions. I need to talk to him, I must give him a chance to reconsider.~ EXTERN KELEMVOR 18
 ++ ~Yes... you are right and you are wise. What can I offer him besides another war, more sufferings, more restless nights? He's made his choice and I will not disturb him... I will let him go, he deserves his peace. Farewell, Keldorn.~ DO ~SetGlobal("VP_KrRomanceActive","GLOBAL",3) SetGlobal("VP_Kr_CyricPlot","GLOBAL",9)TakePartyItem("chocquas") TakePartyItem("kidsoil") TakePartyItem("darkdrop") TakePartyItem("lightdrp") TakePartyItem("daggerfr") ClearAllActions() StartCutSceneMode() StartCutScene("KRCut13")~ JOURNAL ~I had a vision: defence is breached, enemies, monsters and giants conquer Firecam's castle and kill everyone within. Keldorn is dead. I have only a void left in my soul. But I know that I must at least save Imoen. I must resist the dark power that is raging inside me, in memory of Keldorn. To him I own that much... Now, back to Athkatla.~ EXIT

CHAIN KELEMVOR 15
~Not everything. I know the past, but I do not and can not know the future. Don't forget that I deal only with the souls of the dead.~
END
 ++ ~(Timidly) What of...Keldorn?~ EXTERN KELEMVOR 17
 ++ ~Yes, I understand. Can I talk to him?~ EXTERN KELEMVOR 14

CHAIN KELEMVOR 16
~Your reasoning is beyond my understanding. He is a man of no small intelligence, he will see your love. It would be better if you tell him yourself, allow Keldorn to decide whether he needs your love or not.~
END
 ++ ~What of him... what does he feel?~ EXTERN KELEMVOR 17
 ++ ~(Lowering your eyes) I bow my head respectfully to your wisdom, Kelemvor. Please, may I speak with him?~ EXTERN KELEMVOR 14

CHAIN KELEMVOR 17
~You want to know the answer beforehand? I will not tell you, don't even ask.~
END
 ++ ~Please, may I speak with him?~ EXTERN KELEMVOR 14

CHAIN KELEMVOR 18
~If you are so certain that you are right, then go and persuade him.~
DO ~SetGlobal("VP_Kr_CyricPlot","GLOBAL",8) ClearAllActions() StartCutSceneMode() StartCutScene("KRCut12")~
EXIT

CHAIN KELEMVOR K3
~I am surprised, <CHARNAME>. In sending you here I was certain your plan was doomed to fail. You've surpassed my expectations.~
= ~There is however one 'impediment' to your leaving. You see that portal over there... Well, you are a semi-god and you can walk through it easily as many times as you wish without any harm to yourself... Keldorn is but a mere mortal, only one way is open to him... the way here. He may leave this place only by giving some of his life energy to the guard.~
= ~<CHARNAME>, I have no power over that guard, and neither I nor Jergal can do anything. You see I'm not so... almighty.~
END
 ++ ~There is nothing else that can be done? Can I sacrifice some of my own divine blood?~ EXTERN KELEMVOR K4
 ++ ~What will be the cost to Keldorn?~ EXTERN KELEMVOR K7

CHAIN KELEMVOR K4
~Hm... you can, if you are so devoted to your friend, willingly offer up this sacrifice, I can not forbid it.~
EXTERN KELDORNM K4

CHAIN KELEMVOR K5
~Paladin, nobody is asking for you to agree. She, a daughter of Bhaal, wants to make this sacrifice, and you, a paladin of Torm, can not prevent it. It is her right... or is it your fear that the Order will not understand if you allow the blood of God of Murder to run through your veins?~
EXTERN KELDORNM K5

CHAIN KELEMVOR K6
~No, I think not. You are not doing anything that will discredit the paladins' code.~
= ~<CHARNAME>, are you ready? You have not changed your mind?~
END
 ++ ~I am ready.~ EXTERN KELEMVOR K11
 ++ ~Hold, you have not mentioned what the cost will be to Keldorn.~ EXTERN ~KELDORNM~ K6

CHAIN KELEMVOR K7
~He will lose some of his life force. Think carefully whether you really need such a... such a helper.~
END
 ++ ~I do. I will not leave him here!~ EXTERN KELEMVOR K8
 ++ ~Can I sacrifice instead of him?~ EXTERN KELEMVOR K10
 ++ ~You are right. It would be better for him if he stays here.~ EXTERN KELEMVOR K9

CHAIN KELEMVOR K8
~Then let it be as you wish.~
DO ~SetGlobal("VP_Kr_CyricPlot","GLOBAL",10) TakePartyItem("chocquas") TakePartyItem("kidsoil") TakePartyItem("darkdrop") TakePartyItem("lightdrp") TakePartyItem("daggerfr") ClearAllActions() StartCutSceneMode() StartCutScene("KRCut15")~ EXIT

CHAIN KELEMVOR K9
~(Whispers to you) Are you not ashamed? Why do you remind him of his duties? No matter, the decision is made. I believe Keldorn would prefer to remain here anyway.~
DO ~SetGlobal("VP_KrRomanceActive","GLOBAL",3) SetGlobal("VP_Kr_CyricPlot","GLOBAL",9) TakePartyItem("chocquas") TakePartyItem("kidsoil") TakePartyItem("darkdrop") TakePartyItem("lightdrp") TakePartyItem("daggerfr") ClearAllActions() StartCutSceneMode() StartCutScene("KRCut13")~ JOURNAL ~I had a vision: defence is breached, goblins and giants conquer Firecam's castle and kill everyone within. Keldorn is dead. I have only a void left in my soul. But I know that I must at least save Imoen. I must resist the dark power that is raging inside me, in memory of Keldorn. To him I own that much... Now, back to Athkatla.~ EXIT

CHAIN KELEMVOR K10
~You? I suppose you can do that.~
DO ~SetGlobal("VP_Kr_CyricPlot","GLOBAL",10) TakePartyItem("chocquas") TakePartyItem("kidsoil") TakePartyItem("darkdrop") TakePartyItem("lightdrp") TakePartyItem("daggerfr") ClearAllActions() StartCutSceneMode() StartCutScene("KRCut16")~ EXIT

CHAIN KELEMVOR K11
~So... before I revive him, I wish to tell you something. He now has a part Bhaal's blood. I do not know how it will show up. Watch him, and call me immediately should anything strange occur.~
= ~As to your power, the ring of Cyric disturbed the balance, the dark part had the opportunity to break away and is now out of control. Be careful if you do not want it to possess you.~
END
 ++ ~All right. I'll try.~ EXTERN KELEMVOR K12

CHAIN KELEMVOR K12
~And one more thing... Your courage and self-sacrifice touched me. Please take this chain mail as a gift from me. Only those who serve me can wear this armor, but you are an exceptional person.~
= ~You will be able to wear it as well as any of your companions, and it will protect you as a full plate armor, but is much lighter. Now, farewell.~
DO ~SetGlobal("VP_Kr_CyricPlot","GLOBAL",10) TakePartyItem("chocquas") TakePartyItem("kidsoil") TakePartyItem("darkdrop") TakePartyItem("lightdrp") TakePartyItem("daggerfr") GiveItemCreate("KelChan",Player1,0,0,0) ClearAllActions() StartCutSceneMode() StartCutScene("KRCut14")~ EXIT

CHAIN KELEMVOR K13
~Don't listen to him! I beg you, don't listen. I can't interfere.~
EXTERN TORM 0

CHAIN KELEMVOR K14
~Torm. Ao gave strict orders.~
EXTERN TORM 1

CHAIN
IF ~Global("VP_ToB_Kr_Kelemvor","GLOBAL",1)~ THEN KELEMVOR K15
~No need to kill anybody, Solar. I suspected something like this could happen, but I didn't want to scare her earlier. Allow me (Kelemvor moves his hand lengthways towards your body and the pain goes away).~
= ~Now hear me both of you, <CHARNAME>, and you, paladin. Your future daughter is a goddess. This child has a bond with her mother so strong that she will die, should I try to remove her divinity now.~
EXTERN KELDO25J KRENDs1A

CHAIN KELEMVOR K16
~No. It is to your merit, paladin. The light of your soul was strong enough to defeat the evil, which your future wife's legacy was carrying. Your daughter will be of a great help to me, if you will allow her to, of course.~
EXTERN KELDO25J KRENDs1B

CHAIN KELEMVOR K17
~Not now. She must grow up and embrace her power. And you will raise her, teach her about justice, wisdom, and duty. This is your task.~
EXTERN KELDO25J KRENDs1C