REPLACE_STATE_TRIGGER KELDORJ 41
~Global("LadyMaria","GLOBAL",3)
Global("VP_LoveTalk","LOCALS",8)
GlobalTimerExpired("VP_KrRomance_Timer","GLOBAL")~

ALTER_TRANS KELDORJ // file name
BEGIN 40  // state number (can be more than one)
BEGIN 0  // transition number (can be more than one)
BEGIN // list of changes, see below for flags
 "ACTION" ~EraseJournalEntry(34660)
EraseJournalEntry(34661)
EraseJournalEntry(34662)
EraseJournalEntry(34663)
EraseJournalEntry(34664)
EraseJournalEntry(34665)
EraseJournalEntry(34666)
EraseJournalEntry(34667)
EraseJournalEntry(48002)
EraseJournalEntry(48003)
SetGlobal("KeldornFamilyGone","GLOBAL",1)
SetGlobal("KeldornLeave","GLOBAL",4)
SetGlobal("KeldornSpawnEstateTimer","GLOBAL",1)
SetGlobal("KeldornSpawnEstate","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("KrCut33")~

ALTER_TRANS KELDORJ // file name
BEGIN 47 49  // state number (can be more than one)
BEGIN 0  // transition number (can be more than one)
BEGIN // list of changes, see below for flags
 "ACTION" ~EraseJournalEntry(34660)
EraseJournalEntry(34661)
EraseJournalEntry(34662)
EraseJournalEntry(34663)
EraseJournalEntry(34664)
EraseJournalEntry(34665)
EraseJournalEntry(34666)
EraseJournalEntry(34667)
EraseJournalEntry(48002)
EraseJournalEntry(48003)
SetGlobal("KeldornLeave","GLOBAL",5)
SetGlobal("LadyMaria","GLOBAL",5)
SetGlobal("KeldornSpawnEstate","GLOBAL",1)
SetGlobal("KeldornFamilyGone","GLOBAL",1)
SetGlobalTimer("KeldornSpawnEstateTimer","GLOBAL",ONE_DAY)
ClearAllActions()
StartCutSceneMode()
StartCutScene("KrCut33")~

APPEND KELDORJ

//LT2
CHAIN
IF WEIGHT #-1 ~Global("VP_LoveTalk","LOCALS",1)~ THEN KELDORJ LT2_st0
~(Takes off his helmet) My lady, allow me to pose a question. Forgive my directness, but... is my understanding correct that you are a daughter of Bhaal?~
END
 ++ ~Does it matter for our partnership?~ DO ~SetGlobal("VP_LoveTalk","LOCALS",2)~ EXTERN KELDORJ LT2_st1
 ++ ~Hmm, can't you feel his essence in me?~ DO ~SetGlobal("VP_LoveTalk","LOCALS",2)~ EXTERN KELDORJ LT2_st2
 ++ ~I... did not choose my parents, sir Keldorn, and Gorion did not tell me anything. I thought him to be my real father. Believe me, it was only after reading the letter I discovered after his death that revealed my true parentage and now I would be glad to be rid of this 'gift'!~ DO ~SetGlobal("VP_LoveTalk","LOCALS",2)~ EXTERN KELDORJ LT2_st3

CHAIN KELDORJ LT2_st1
~No... not at all my lady. I just thought to clarify the truth that is all. Tell me, what are your plans now?~
END
 IF ~Global("VP_Guild_Attacked","GLOBAL",0) Global("WorkingForAran","GLOBAL",0) Global("WorkingForBodhi","GLOBAL",0)~ THEN REPLY ~Really I haven't got a clue. All I know is that I need to raise enough gold to pay for Imoen's rescue.~ EXTERN KELDORJ LT2_st41
 IF ~!Global("VP_Guild_Attacked","GLOBAL",0)~ THEN REPLY ~Really I haven't got a clue. All I know is that I was requested to raise a hefty amount of gold to pay for Imoen's rescue, but the contact is dead now.~ EXTERN KELDORJ LT2_st61
 IF ~Global("VP_Guild_Attacked","GLOBAL",0) Global("WorkingForAran","GLOBAL",0) Global("WorkingForBodhi","GLOBAL",0)~ THEN REPLY ~Finding opportunities to earn some gold mostly. I was promised some help in finding Imoen, but help does not come free.~ EXTERN KELDORJ LT2_st41
 IF ~OR(2) Global("WorkingForAran","GLOBAL",1) Global("WorkingForBodhi","GLOBAL",1)~ THEN REPLY ~We must find Imoen, of course. In the meantime, I hired a group of people who promised to help me, but not only that they took fifteen thousands gold from me, I still have to perform a lot of errands for them before for their promise to find my friend!~ EXTERN KELDORJ LT2_new1

CHAIN KELDORJ LT2_st41
~How much gold are we speaking of here?~
END
 ++ ~Twenty thousand.~ EXTERN KELDORJ LT2_st6

CHAIN KELDORJ LT2_st6
~That is quite a sum my lady! Be assured, you have my aid for as long as it is needed.~
DO ~SetGlobal("VP_KrRomanceActive","GLOBAL",1) RealSetGlobalTimer("VP_KrRomance_Timer","GLOBAL",1200)~
JOURNAL ~I became acquainted with sir Keldorn Firecam, whom I knew from the tales of my good friend Ajantis. He agreed to accompany me without any hesitation even knowing about my heritage. Or could that be the reason he has agreed to help? Anyway the help of an experienced warrior and a man possessed with the wisdom of years will come in very handy. I wonder, just how old is he?~
EXIT

CHAIN KELDORJ LT2_st61
~Be assured, my lady, you have my aid for as long as it is needed.~
DO ~SetGlobal("VP_KrRomanceActive","GLOBAL",1) RealSetGlobalTimer("VP_KrRomance_Timer","GLOBAL",1200)~
JOURNAL ~I became acquainted with sir Keldorn Firecam, whom I knew from the tales of my good friend Ajantis. He agreed to accompany me without any hesitation even knowing about my heritage. Or could that be the reason he has agreed to help? Anyway the help of an experienced warrior and a man possessed with the wisdom of years will come in very handy. I wonder, just how old is he?~
EXIT

CHAIN KELDORJ LT2_new1
~That is quite a sum my lady! Who are these people who are engaged in extortion?~
END
 IF ~Global("WorkingForAran","GLOBAL",1)~ THEN REPLY ~Shadow Thieves.~ EXTERN KELDORJ LT2_new2
 IF ~Global("WorkingForBodhi","GLOBAL",1)~ THEN REPLY ~Vampires.~ EXTERN KELDORJ LT2_new3

CHAIN KELDORJ LT2_new2
~Thieves... (Sighs) Be carefull, my lady, in dealig with that organisation. I can not associate myself with thieves but I'll stay with you and try to keep you safe from them.~
DO ~SetGlobal("VP_KrRomanceActive","GLOBAL",1) RealSetGlobalTimer("VP_KrRomance_Timer","GLOBAL",1200)~
JOURNAL ~I became acquainted with sir Keldorn Firecam, whom I knew from the tales of my good friend Ajantis. He agreed to accompany me without any hesitation even knowing about my heritage. Or could that be the reason he has agreed to help? Anyway the help of an experienced warrior and a man possessed with the wisdom of years will come in very handy. I wonder, just how old is he?~
EXIT

CHAIN KELDORJ LT2_new3
~What? Vampires? How can you consort yourself with such pure evil! I am a paladin, my lady, and there is no way I associate myself with evil creatures! Never!~
DO ~EscapeArea()~
EXIT

CHAIN KELDORJ LT2_st2
~My lady... I am but a humble paladin, I can sense evil that is true, but I do not sense evil within you. Now, if I may ask, where is our next destination to be?~
END
 IF ~Global("VP_Guild_Attacked","GLOBAL",0) Global("WorkingForAran","GLOBAL",0) Global("WorkingForBodhi","GLOBAL",0)~ THEN REPLY ~Really I haven't got a clue. All I know is that I need to raise enough gold to pay for Imoen's rescue.~ EXTERN KELDORJ LT2_st41
 IF ~!Global("VP_Guild_Attacked","GLOBAL",0)~ THEN REPLY ~Really I haven't got a clue. All I know is that I was requested to raise a hefty amount of gold to pay for Imoen's rescue, but the contact is dead now.~ EXTERN KELDORJ LT2_st61
 IF ~Global("VP_Guild_Attacked","GLOBAL",0) Global("WorkingForAran","GLOBAL",0) Global("WorkingForBodhi","GLOBAL",0)~ THEN REPLY ~Finding opportunities to earn some gold mostly. I was promised some help in finding Imoen, but help does not come free.~ EXTERN KELDORJ LT2_st41
 IF ~OR(2) Global("WorkingForAran","GLOBAL",1) Global("WorkingForBodhi","GLOBAL",1)~ THEN REPLY ~We must find Imoen, of course. In the meantime, I hired a group of people who promised to help me, but not only that they took fifteen thousands gold from me, I still have to perform a lot of errands for them before for their promise to find my friend!~ EXTERN KELDORJ LT2_new1

CHAIN KELDORJ LT2_st3
~I do believe you... now, what is your next move?~
END
 IF ~Global("VP_Guild_Attacked","GLOBAL",0) Global("WorkingForAran","GLOBAL",0) Global("WorkingForBodhi","GLOBAL",0)~ THEN REPLY ~Really I haven't got a clue. All I know is that I need to raise enough gold to pay for Imoen's rescue.~ EXTERN KELDORJ LT2_st42
 IF ~!Global("VP_Guild_Attacked","GLOBAL",0)~ THEN REPLY ~Really I haven't got a clue. All I know is that I was requested to raise a hefty amount of gold to pay for Imoen's rescue, but the contact is dead now.~ EXTERN KELDORJ LT2_st61
 IF ~Global("VP_Guild_Attacked","GLOBAL",0) Global("WorkingForAran","GLOBAL",0) Global("WorkingForBodhi","GLOBAL",0)~ THEN REPLY ~Finding opportunities to earn some gold mostly. I was promised some help in finding Imoen, but help does not come free.~ EXTERN KELDORJ LT2_st42
 IF ~OR(2) Global("WorkingForAran","GLOBAL",1) Global("WorkingForBodhi","GLOBAL",1)~ THEN REPLY ~We must find Imoen, of course. In the meantime, I hired a group of people who promised to help me, but not only that they took fifteen thousands gold from me, I still have to perform a lot of errands for them before for their promise to find my friend!~ EXTERN KELDORJ LT2_new1

CHAIN KELDORJ LT2_st42
~How much gold are we speaking of here?~
END
 ++ ~Twenty thousand.~ EXTERN KELDORJ LT2_st5

CHAIN KELDORJ LT2_st5
~That's a lot of gold my lady... where did the offer come from?~
END
 ++ ~I don't know. But I suspect that it involves some thieves. I have had some experience of dealing with them.~ EXTERN KELDORJ LT2_st8

CHAIN KELDORJ LT2_st8
~Thieves... (Sighs) I'm sorry, my lady, but I can not associate myself with thieves. We must find another way to save your friend and we will find it, I'm sure. I promised you my aid my lady, and I will make good on my word.~
DO ~SetGlobal("VP_KrRomanceActive","GLOBAL",1) RealSetGlobalTimer("VP_KrRomance_Timer","GLOBAL",1200)~
JOURNAL ~I became acquainted with sir Keldorn Firecam, whom I knew from the tales of my good friend Ajantis. He agreed to accompany me without any hesitation even knowing about my heritage. Or could that be the reason he has agreed to help ? Anyway the help of an experienced warrior and a man possessed with the wisdom of years will come in very handy. I wonder, just how old is he?~
EXIT

//LT8
CHAIN
IF WEIGHT #-2 ~Global("VP_LoveTalk","LOCALS",7)~ THEN KELDORJ LT8_st0
~<CHARNAME>, I... Let us sit here awhile, I must think the things through...~
END
 ++ ~Sir Keldorn, if you'd like to return home ' and I think that Sir William has convinced you to, I would release you from my service. I can't let your family be destroyed because of me.~ EXTERN KELDORJ LT8_st1
 ++ ~If you'd like to stay home ' please, do so. I will find a replacement for you; not a companion as valuable as you are, but a replacement nonetheless.~ EXTERN KELDORJ LT8_st2
 ++ ~(Decisively) Sir Keldorn, I should not say this, but... (Take a deep breath in...) I don't believe Sir William.~ EXTERN KELDORJ LT8_st3
 ++ ~Oh sir, you must be broken-hearted!~ EXTERN KELDORJ LT8_st4

CHAIN KELDORJ LT8_st1
~(Makes a dismissive gesture) It's already destroyed. After what I have heard today I'll not be able to look upon her in the same way again. I cannot do anything on that account.~
EXTERN KELDORJ LT8_st1_1

CHAIN KELDORJ LT8_st1_1
~(Bitterly) The whole of Athkatla knows that I have been cuckolded. No, reconciliation is impossible. There is no more to be said. Let us be on our way.~
DO ~SetGlobalTimer("VP_KrRomance_Timer","GLOBAL",TWO_DAYS) SetGlobal("VP_LoveTalk","LOCALS",8)~
JOURNAL ~We have visited sir Keldorn's Estate where I witnessed a confrontation between Keldorn and his wife (Oh God, what a beauty she is!) My faithful paladin was terribly distraught, it seemed to me that tears had been shed, on his part, for a love gone wrong. He seemed to be so sure of his wife. It was a sad, sad thing to see. He loves his wife and daughters so much, and they don't seem to have any affection for him at all. My heart felt for poor sir Keldorn!~
EXIT

CHAIN KELDORJ LT8_st2
~I did not say that, <CHARNAME>, so it is up to you to decide if you require my services or not.~
DO ~SetGlobalTimer("VP_KrRomance_Timer","GLOBAL",TWO_DAYS) SetGlobal("VP_LoveTalk","LOCALS",8)~
JOURNAL ~We have visited sir Keldorn's Estate where I witnessed a confrontation between Keldorn and his wife (Oh God, what a beauty she is!) My faithful paladin was terribly distraught, it seemed to me that tears had been shed, on his part, for a love gone wrong. He seemed to be so sure of his wife. It was a sad, sad thing to see. He loves his wife and daughters so much, and they don't seem to have any affection for him at all. My heart felt for poor sir Keldorn!~
EXIT

CHAIN KELDORJ LT8_st3
~(He looks into your eyes for a long moment and then asks softly) Why do you say this?~
END
 ++ ~I don't think he would have told you otherwise. He... he is no warrior, sir, and he was afraid that you could challenge him to a duel. But, don't listen to me, sir, I have no experience in such matters.~ EXTERN KELDORJ LT8_st5

CHAIN KELDORJ LT8_st5
~I wouldn't say that you are far off the mark. Let us go forthwith.~
DO ~SetGlobalTimer("VP_KrRomance_Timer","GLOBAL",TWO_DAYS) SetGlobal("VP_LoveTalk","LOCALS",8)~
JOURNAL ~We have visited sir Keldorn's Estate where I witnessed a confrontation between Keldorn and his wife (Oh God, what a beauty she is!) My faithful paladin was terribly distraught, it seemed to me that tears had been shed, on his part, for a love gone wrong. He seemed to be so sure of his wife. It was a sad, sad thing to see. He loves his wife and daughters so much, and they don't seem to have any affection for him at all. My heart felt for poor sir Keldorn!~
EXIT

CHAIN KELDORJ LT8_st4
~(Shoots a quick glance at you) Let us go.~
DO ~SetGlobalTimer("VP_KrRomance_Timer","GLOBAL",TWO_DAYS) SetGlobal("VP_LoveTalk","LOCALS",8)~
JOURNAL ~We have visited sir Keldorn's Estate where I witnessed a confrontation between Keldorn and his wife (Oh God, what a beauty she is!) My faithful paladin was terribly distraught, it seemed to me that tears had been shed, on his part, for a love gone wrong. He seemed to be so sure of his wife. It was a sad, sad thing to see. He loves his wife and daughters so much, and they don't seem to have any affection for him at all. My heart felt for poor sir Keldorn!~
EXIT

//LT10a
CHAIN
IF WEIGHT #-3 ~Global("VP_LoveTalk","LOCALS",9)~ THEN KELDORJ LT10a_st0_1
~<CHARNAME>, I'd like to speak with you. I apologize if this comes as an unpleasant surprise. Please trust me when I say that it was not easy for me to make this choice.~
EXTERN KELDORJ LT10a_st0_2

CHAIN KELDORJ LT10a_st0_2
~I am a man of my word, and I have promised to help you rescue Imoen. It is my own fault, as I should not have placed the burden of decision upon your shoulders. You are young and inexperienced, and do not yet understand, that one should follow the spirit of the law, not what's writ. I am becoming wordy in my dotage, don't you think?~
EXTERN KELDORJ LT10a_st0_3

CHAIN KELDORJ LT10a_st0_3
~To summarize, my wife is in jail, and my daughters are left without a guardian. I cannot allow them to be sent to an orphanage while I am still alive. I would like to return home, <CHARNAME>, and I'd like us to part the ways amicably. Would you give me your leave in good faith?~
EXTERN KELDORJ LT10a_st0_4

CHAIN KELDORJ LT10a_st0_4
~Besides, I have decided to retire from the Order. Most probably, I will take the girls to Esmeltaran, to my mother's estate. I hope that I will be able to regain their confidence, their trust... their love even. Perhaps we may become a family once again.~
END
 ++ ~I cannot hold you back, Sir Keldorn. I should have listened to you and trust your experience. You are... (very softly) free. Fare thee well, good sir.~ DO ~SetGlobal("VP_LoveTalk","LOCALS",10)~ EXTERN KELDORJ LT10a_st1
 ++ ~Very well, I understand... now I understand. I release you from your vow. You are free to go. Be happy as much as you can.~ DO ~SetGlobal("VP_LoveTalk","LOCALS",10)~ EXTERN KELDORJ LT10a_st1
 ++ ~No. This is an order.~ DO ~SetGlobal("VP_LoveTalk","LOCALS",10)~ EXTERN KELDORJ LT10a_st2
 ++ ~Sir Keldorn, I can see your dilemma. But you've promised to help me, and I think that you would be in the wrong if you were to break your word to me.~ DO ~SetGlobal("VP_LoveTalk","LOCALS",10)~ EXTERN KELDORJ LT10a_st3

CHAIN KELDORJ LT10a_st1
~Thank you, <CHARNAME>. It is most unfortunate that things have come to pass the way they have. I thought we could become good friends. Farewell. Good luck and take care of yourself, if you will... If you ever happen to pass through Esmeltaran, please stop for a visit. Our castle is located off the town site, at the lakeshore.~
DO ~SetGlobal("VP_KrRomanceActive","GLOBAL",3) ChangeAIScript("",DEFAULT) SetLeavePartyDialogueFile() LeaveParty() EscapeArea()~
JOURNAL ~It was a foolish decision to insist on the lawful resolution of the conflict between sir Keldorn and his wife. Now he's left me... For good.~
EXIT

CHAIN KELDORJ LT10a_st2
~(Squinting) An order? And since when do you issue my orders, m'lady? Do you think that you outrank me, a Senior Officer of the Order, because you are a daughter of the Lord of Murder? This will not be! Farewell, my lady. It is a pity, that we failed to part in good faith.~
DO ~SetGlobal("VP_KrRomanceActive","GLOBAL",3) ChangeAIScript("",DEFAULT) SetLeavePartyDialogueFile() LeaveParty() EscapeArea()~
JOURNAL ~It was a foolish decision to insist on the lawful resolution of the conflict between sir Keldorn and his wife. Now he's left me... For good.~
EXIT

CHAIN KELDORJ LT10a_st3
~You have the right of it, my lady. Indeed I cannot break my sworn word. Well, let it be as you wish. I shall stay.~
DO ~SetGlobal("VP_KrRomanceActive","GLOBAL",3)~
JOURNAL ~It was a foolish decision to insist on the lawful resolution of the conflict between sir Keldorn and his wife. Despite his desire to return home I insisted that he stayed on. Alas, our friendship has come to an end.~
EXIT

CHAIN KELDORJ AV#KR90a
~Yes, I am he. Who is it whom wishes to speak with me?~
EXTERN AV#MESS AV#MESS2

CHAIN KELDORJ AV#KR90b
~(Runs his eyes over the letter) Oh, Torm! No! No! This can not be!~
END
 ++ ~What... what has happened?~ EXTERN KELDORJ AV#KR903
 ++ ~Your wife has done something again?~ EXTERN KELDORJ AV#KR903

CHAIN KELDORJ AV#KR903
~(Pale) My daughters have perished. I... I must go back for.. the funeral.~
END
 ++ ~I'll go with you!~ EXTERN KELDORJ AV#KR904
 ++ ~The funeral? Now? Can it not wait for a bit?~ EXTERN KELDORJ AV#KR905

CHAIN KELDORJ AV#KR904
~Thank you... I am not certain it is needed though.~
END
 ++ ~Keldorn, I beg you! Allow me to be beside you!~ EXTERN KELDORJ AV#KR906
 ++ ~Have it your way, Keldorn. But I do not think you can manage it all by yourself.~ EXTERN KELDORJ AV#KR907

CHAIN KELDORJ AV#KR906
~(Handing you Maria's letter) Here, read this. I do not comprehend everything here, you explain to me later... later.~
DO ~SetGlobal("VP_Kr_Funneral","GLOBAL",1) SetGlobal("KeldornFamilyGone","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("KRCut01")~
EXIT

// The GLOBAL variable "KeldornFamilyGone" is set to 1 in order to remove Keldorn's family from AR1003
// Then in AR1003.BCS, there is a block, which changes "KeldornFamilyGone" to 2 and destroy all CREs there
// After that new CRE "Maria" will be created and variable "VP_Kr_Funneral" changes to 2 in the same area script

CHAIN KELDORJ AV#KR907
~I... know nothing.~
END
 ++ ~Keldorn, please! Allow me to be beside you!~ EXTERN KELDORJ AV#KR906

CHAIN KELDORJ AV#KR905
~Wait? My beloved daughters are dead and you ask me to wait to lay them to rest? That is it... I am leaving. You are a steel-hearted creature, <CHARNAME>.~
DO ~SetGlobal("VP_KrRomanceActive","GLOBAL",3) SetGlobal("VP_Kr_Funneral","GLOBAL",1) SetGlobal("KeldornFamilyGone","GLOBAL",1) ActionOverride("av#mess",EscapeArea()) ChangeAIScript("",DEFAULT) SetLeavePartyDialogueFile() LeaveParty() EscapeArea()~
EXIT

CHAIN
IF WEIGHT #-99 ~Global("VP_Kr_Funneral","GLOBAL",3)~ THEN KELDORJ MariTk1
~(Gloomy) Maria? I await explanation... the full story! How could it be that the girls were alone at home?~ [mute]
DO ~SetGlobal("VP_Kr_Funneral","GLOBAL",4)~
EXTERN MARIA MariTk1

CHAIN KELDORJ MariTk2
~Some? And where were you? I demand an answer!~
EXTERN MARIA MariTk2

CHAIN KELDORJ MariTk3
~We had enough people for both escorting and guarding the mansion.~
EXTERN MARIA MariTk3

CHAIN KELDORJ MariTk4
~(Tartly) And you what? You took every single one of them?~
EXTERN MARIA MariTk4

CHAIN KELDORJ MariTk5
~Go on.~
EXTERN MARIA MariTk5

CHAIN KELDORJ MariTk6
~(Covers his face with his hands and keeps silence for a very long time... then he pronounces hollowly) What you are saying here is that you left for an assignation with your lover, taking all our guards with you and leaving our daughters helpless... is that not so?~
EXTERN MARIA MariTk6

CHAIN KELDORJ MariTk7
~(Furiously) And where else would you possibly go at such an hour? Decent ladies do not pay calls on a night! I... I contravened the law and not to say my duty when I did not bring you to justice, when I should have!~
EXTERN KELDORJ MariTk7_B

CHAIN KELDORJ MariTk7_B
~Now our precious daughters have paid the price for your folly. You will surely be imprisoned for what you have allowed to come about! I have condoned you and you, if I remember rightly, pledged your love for me... Why? You have never felt even the slightest compassion for me.~
EXTERN MARIA MariTk7

CHAIN KELDORJ MariTk8
~Tell me Maria, why did you agree to marry me? No one was forcing you into this marriage.~
EXTERN MARIA MariTk8

CHAIN KELDORJ MariTk9
~Go on...~
EXTERN MARIA MariTk9

CHAIN KELDORJ MariTk10
~Go on...~
EXTERN MARIA MariTk10

CHAIN KELDORJ MariTk11
~Finally... After so many years I am going to learn the truth.~
EXTERN MARIA MariTk11

CHAIN KELDORJ MariTk12
~He was indeed... I often wonder myself how I managed to slay him with such a wound. <CHARNAME>, remember I was telling you? You have seen the scar on my left side?~
END
 ++ ~Right, a horrible scar.~ EXTERN KELDORJ MariTk13

CHAIN KELDORJ MariTk13
~As a matter of fact it is very deep too. I really do not know how I survived.~
END
 ++ ~Gods did not require you dead, Keldorn. (Put a hand on his shoulder) Let us move along, my friend. You have nothing more to do here.~ EXTERN KELDORJ MariTk14

CHAIN KELDORJ MariTk14
~Yes, you are right, dear.~
EXTERN MARIA MariTk12

CHAIN KELDORJ MariTk15
~(Angrily) Shut your black mouth, Maria!~
EXTERN MARIA MariTk13

CHAIN KELDORJ MariTk16
~Maria!~ [KELDOR91]
EXTERN MARIA MariTk14

CHAIN KELDORJ MariTk17
~(Furious) You are outwearing my patience, Maria!~
END
 ++ ~Keldorn, let us move along, I beg you! Let's go and pray for your girls' souls, come now.~ EXTERN KELDORJ MariTk18

CHAIN KELDORJ MariTk18
~You are right, we must go to the temple. Your thoughtfulness has reminded me what is important here... (Hangs upon your shoulder) Come along.~
EXTERN MARIA MariTk15

CHAIN KELDORJ MariTk19
~Open your eyes woman, I am not hugging her, I'm holding on to her... You are a bitter, selfish woman, Maria, I do not understand how I could have been so blind for so long... Go sue for divorce, I'll agree to any terms. You can keep the house, I wouldn't be able to... stay here anyway.~
EXTERN MARIA MariTk16

CHAIN KELDORJ MariTk20
~Isn't this what you have striven for, why you tried to cause so much mayhem?~
EXTERN MARIA MariTk17

CHAIN KELDORJ MariTk21
~(Glumly) I see... you were hoping that I would kill sir William and as member of the Order, I would face the executioners axe myself... I pity you Maria... petition your divorce, I'll not stand in your way. Come <CHARNAME>, this place holds nothing for me now.~
DO ~ActionOverride("Maria",EscapeArea()) StartCutSceneMode() StartCutScene("KRCut02")~
EXIT

CHAIN KELDORJ Funeral0
~I thank you, prelate. I... am to blame. I violated the law. I did not bring my wife to justice and I am ready to accept my sentence.~
EXTERN KRPRELAT 1

CHAIN KELDORJ Funeral1
~Prelate...~
EXTERN KRPRELAT 2

CHAIN KELDORJ Funeral2
~That is settled then?~
EXTERN KRPRELAT 3

CHAIN KELDORJ Funeral3
~(Gazes upon the crypt and sighs grievously) I can at least take comfort in the fact that they died my children, and not some bastard's.~
EXTERN KRPRELAT 4

//LT14
CHAIN
IF WEIGHT #-100 ~Global("VP_Kr_Funneral","GLOBAL",8)~ THEN KELDORJ LTfuner0
~(Coming to himself after sad thoughts) <CHARNAME>, you may find this most strange, but I'd like to pay a visit to lady Bylanna. The more I think about the attack at the mansion, the more convinced I become that it was not haphazard. Trust me, I do not intend revenge, I do not have such thoughts on my mind, but I want to know who did this foul deed and for what reason.~
END
 ++ ~Keldorn... people are sometimes killed without any reason. Just remember how often we have been attacked in some dark alleys!~ DO ~SetGlobal("VP_Kr_Funneral","GLOBAL",9)~ EXTERN KELDORJ LTfuner1
 ++ ~I do not know what to say, honestly. On one hand those responsible were definitely thieves, not mercenaries, on the other hand those thieves were a little too bold. They were not in the least bit perturbed by the fact that your house faced the government mansion or that there were crowds of soldiers in the street.~ DO ~SetGlobal("VP_Kr_Funneral","GLOBAL",9)~ EXTERN KELDORJ LTfuner2
 ++ ~Well, looking at the exteriors of the house you would not know if there was anything of great value inside. Perhaps, they counted on lady Maria's jewellery?~ DO ~SetGlobal("VP_Kr_Funneral","GLOBAL",9)~ EXTERN KELDORJ LTfuner3
 ++ ~We can, of course, why not? But I think you are exaggerating. Those responsible were just thieves and anything else was just coincidental.~ DO ~SetGlobal("VP_Kr_Funneral","GLOBAL",9)~ EXTERN KELDORJ LTfuner4

CHAIN KELDORJ LTfuner1
~I am sure you are right my lady... but I need to put away any doubts. Please let us visit Bylanna if we happen to be nearby.~
END
 ++ ~All right, we'll do that.~ EXTERN KELDORJ LTfuner5

CHAIN KELDORJ LTfuner2
~A truer word was never spoken. I too found the story suspicious. Let us go to Bylanna, this will not take up too much of our time.~
END
 ++ ~All right, we'll do that.~ EXTERN KELDORJ LTfuner5

CHAIN KELDORJ LTfuner3
~They must have been outsiders then. One can hardly disguise anything in this city. Maria possesses one and only one necklace and that she only takes off when she sleeps. There was once a lot of joking on that account... Back to my request, I still want to ask you to find a way to visit Bylanna.~
END
 ++ ~All right, we'll do that.~ EXTERN KELDORJ LTfuner5

CHAIN KELDORJ LTfuner4
~All is possible though... I do not know. I beg you, please do me this favour.~
END
 ++ ~All right, we'll do that.~ EXTERN KELDORJ LTfuner5

CHAIN KELDORJ LTfuner5
~(Keldorn nods his head in silence and sinks deep in his thoughts)~
EXIT

// Chill out. Keldorn won't leave you even if you don't rush to Bylanna at once. Take your time. The romance will continue only after Keldorn talk to Bylanna.

CHAIN
IF WEIGHT #-101 ~Global("VP_Kr_Funneral","GLOBAL",9) Global("VP_Talk_Bylanna","GLOBAL",1)~ THEN KELDORJ Bylanna1
~Lady Bylanna, I would ask you if there is any knowledge as to the identities of murderers of my daughters? I have an uneasy feeling that it was done intentionally. I have strong doubts that out-of-town thieves would rob a house in this district, more so one so close to the prison.~
DO ~SetGlobal("VP_Kr_Funneral","GLOBAL",10)~
EXTERN BYLANNA Keldorn1

CHAIN KELDORJ Bylanna2
~(With a wince) Lady Bylanna, the terms "punitive action" and "Order of Radiant Heart" are incongruous... No, our interests have not conflicted of late. I thank you for the information, my lady.~
EXIT

//LT18
CHAIN
IF WEIGHT #-102 ~Global("VP_Kr_Funneral","GLOBAL",11) Global("VP_Kr_Quest","LOCALS",1)~ THEN KELDORJ QT_st0
~<CHARNAME>, I'd like to have a look at that hayloft. I do not believe we will find anything there, most likely it was but a rendezvous venue, but still who knows.~
END
 ++ ~I doubt it. I suspect the neighbours have thoroughly examined the place.~ EXTERN KELDORJ QT_st1
 ++ ~What do you hope to find there? Their headquarters' address? I guess, it's a fools' errand.~ EXTERN KELDORJ QT_st2
 ++ ~Have you come across any Cyric people before, Keldorn?~ EXTERN KELDORJ QT_st3

CHAIN KELDORJ QT_st1
~Neighbours... I do not enjoy the closeness of the thieves' guild. And you wonder why I am unkind to thieves! Please, let us go there and look around. Even if we do not find anything, I... I just want to do it.~
END
 ++ ~All right, let's have it your way.~ EXTERN KELDORJ QT_st4
 ++ ~Just to clear off your conscience? All right, let's go there.~ EXTERN KELDORJ QT_st5
 ++ ~But we will find nothing!~ EXTERN KELDORJ QT_st6

CHAIN KELDORJ QT_st2
~(With a sigh) Then I must go alone for it is something I have to do.~
END
 ++ ~All right, let's go there.~ EXTERN KELDORJ QT_st4
 ++ ~Keldorn... I did not say I refused, just expressed my doubts. If you need that so badly, we'll go there. We can do that right now.~ EXTERN KELDORJ QT_st5
 ++ ~But we will find nothing!~ EXTERN KELDORJ QT_st6

CHAIN KELDORJ QT_st3
~(First deep in thought, but then shakes his head) It's been so long now, and I would not call this incident an encounter. Just one of the missions, where a couple of Cyric Priests just happened to be among the enemy.~
END
 ++ ~Then I do not understand. OK, let's go there.~ EXTERN KELDORJ QT_st4
 ++ ~(You shrug your shoulders) Well, then they should not have any claims to you. It must be a coincidence, Keldorn... and our visit won't change anything. But we can go there if it makes you feel better.~ EXTERN KELDORJ QT_st5
 ++ ~But we will find nothing!~ EXTERN KELDORJ QT_st6

CHAIN KELDORJ QT_st4
~Thank you, <CHARNAME>.~
DO ~SetGlobal("VP_Kr_Quest","LOCALS",2)~
EXIT

CHAIN KELDORJ QT_st5
~Please, do not take me wrong, it's not that I took an oath or something. I need to know! I can not understand for the life of me why this sudden interest in me from the followers of Cyric now. That priest... he addressed you, not me... let us go, we must at least take a look around.~
DO ~SetGlobal("VP_Kr_Quest","LOCALS",2)~
EXIT

CHAIN KELDORJ QT_st6
~(Sharply) I am going right now. Will you accompany me... or not <CHARNAME>?~
END
 ++ ~(You take him by his hand softly) Please take my apologies. I will go with you.~ EXTERN KELDORJ QT_st4
 ++ ~No.~ EXTERN KELDORJ QT_st7

CHAIN KELDORJ QT_st7
~I... do not know what to say. You seemed to treat me with compassion and understanding. I must have deceived myself.~
DO ~SetGlobal("VP_KrRomanceActive","GLOBAL",3)
LeaveParty()
EscapeArea()~
EXIT

// The same is as above. There is no timer, and Keldorn won't leave you even if you don't rush to the Docks. The romance will continue only after you visit the hayloft in the Docks.

CHAIN
IF WEIGHT #-103 ~Global("VP_Kr_Quest","LOCALS",3)~ THEN KELDORJ Ring_st0
~(In a tense voice) <CHARNAME>, look...~
EXTERN KELDORJ Ring_st0_B

CHAIN KELDORJ Ring_st0_B
~(There is a small ring on his palm) This is Leona's ring. She was always fighting with the boys, and this ring helped to make her more dexterous and wiser... Please, you must have it. There are no more traces here, alas!~
END
 ++ ~Keldorn... I can't, this is your daughter's ring. It's precious to you. You must have it with you.~ EXTERN KELDORJ Ring_st1
 ++ ~Did you give it to Leona?~ EXTERN KELDORJ Ring_st2

CHAIN KELDORJ Ring_st1
~It won't fit my finger, but it will yours. Besides, it could easily get misplaced and is far too precious to leave in a dark backpack.~
EXTERN KELDORJ Ring_st1_B

CHAIN KELDORJ Ring_st1_B
~I beg you, <CHARNAME>, it will please me to see it on your hand and it will be easier for me that way, believe me. Please let me put it on your finger.~
DO ~GiveItemCreate("kring111",Player1,0,0,0) SetGlobal("VP_Kr_Quest","LOCALS",4) SetGlobalTimer("VP_KrRomance_GTime","GLOBAL",ONE_DAY)~ JOURNAL ~We found Leona's ring. Keldorn insisted that I should have it. I wanted so much to give him a hug and cheer him up, I just do not know how I managed to contain myself.~ EXIT

CHAIN KELDORJ Ring_st2
~I did. Please... I do not want it to lie on the bottom of my bag. Please take it.~
END
 ++ ~Very well, Keldorn. Have it your way.~ EXTERN KELDORJ Ring_st3

CHAIN KELDORJ Ring_st3
~Please let me put it on your finger.~
DO ~GiveItemCreate("kring111",Player1,0,0,0) SetGlobal("VP_Kr_Quest","LOCALS",4) SetGlobal("VP_AnomenJealous","GLOBAL",2) SetGlobalTimer("VP_KrRomance_GTime","GLOBAL",ONE_DAY)~
JOURNAL ~We found Leona's ring. Keldorn insisted that I should have it. I wanted so much to give him a hug and cheer him up, I just do not know how I managed to contain myself.~
EXIT

//Kamir & Risa
CHAIN
IF WEIGHT #-104 ~Global("VP_Kr_Kamir_Talk","LOCALS",2)~ THEN KELDORJ Kamir_st0
~(Sigh) That's a hard task that he has committed to, and proof of that is seen by the fate of his previous foster child.~
= ~A paladin can not stay home all the time; his duties constantly call him up... and a child can not be left alone. Nor can a paladin take a child with him. That's why we have orphanages and abbeys.~
= ~Many parents send their children there to be taken care of when they are incapable of doing so themselves.~
= ~My father was a cleric. I was supposed to follow in his steps, but I wanted to become a paladin from since I was a child, <CHARNAME>, and my parents sent me to such a monastery into care.~
= ~And Kamir... by blindly following paladin's rules, he committed an even worse misdemeanour.~
= ~Most likely this girl will suffer the same fate as Stephan or even worse. He should not have kept the boy, but sent him to the asylum, and by doing so he would not have broken his oath to the boy's mother.~
= ~His misfortune is that he interpreted his oath incorrectly. Though... what if I'm wrong, what if Risa were to remain safe and live to serve Kamir as a comfort in his old days. (Sigh)~
DO ~SetGlobal("VP_Kr_Kamir_Talk","LOCALS",3)~
EXIT

//Garren
CHAIN
IF WEIGHT #-105 ~Global("VP_Kr_Garren_Talk","LOCALS",2)~ THEN KELDORJ Garren_st0
~(Softly) <CHARNAME>, do not blame yourself. You could not help it, believe me. I know how you feel, I know it only too well. But I also know that revenge will not make you feel better.~
= ~Eventually your heart will lighten, trust me... you and I will remember Ajantis, and we will talk about him later. Now come pull yourself together my lady... do not let anger win over reason. Garren Windspear awaits us.~
DO ~SetGlobal("VP_Kr_Garren_Talk","LOCALS",3)~
EXIT

//Carsomyr
CHAIN
IF WEIGHT #-106 ~Global("VP_Kr_CarsomyrTalk","LOCALS",1)~ THEN KELDORJ Carsomyr_st0
~<CHARNAME>, look! Holy Avenger! A sword that was granted by Tyr! See how the power within causes it to shimmer!~
END
 ++ ~Keldorn, take it!~ EXTERN KELDORJ Carsomyr_st1
 ++ ~It is mine!~ EXTERN KELDORJ Carsomyr_st3

CHAIN KELDORJ Carsomyr_st1
~(With awe) Oh, no, you can't mean that! The Order sent you to take it from the dragon, I have no right to even touch it.~
END
 ++ ~Keldorn... you do not have a right... you, paladin of Torm? If there are hands on this earth worthy of this sword, they are your hands. The Order will understand and welcome my decision. That I am sure of!~ EXTERN KELDORJ Carsomyr_st2
 ++ ~I really do not know, Keldorn. I'd like you to own it.~ EXTERN KELDORJ Carsomyr_st3

CHAIN KELDORJ Carsomyr_st2
~Carsomyr... you... you really want me to have it...~
END
 ++ ~Yes! I'm asking you, please...~ EXTERN KELDORJ Carsomyr_st4

CHAIN KELDORJ Carsomyr_st3
~I have my own, a gift from Torm and it is the only sword I will ever need. Come, take it!~
END
 ++ ~No-no. This chatterbox is not bad either.~ EXTERN KELDORJ Carsomyr_st6
 ++ ~As you wish, let it be so.~ EXTERN KELDORJ Carsomyr_st7

CHAIN KELDORJ Carsomyr_st4
~I... (Keldorn gets down on one knee and carefully puts his hand under the blade of the sword. As soon as Carsomyr touches his hands, it flashes with bright light, illuminating the gloomy cave of Firkraag. You see Keldorn's shining eyes, his face seems to be lit by some inner light and at this moment you realize that you made the right decision.)~
END
 ++ ~I told you, you were made for each other.~ EXTERN KELDORJ Carsomyr_st5

CHAIN KELDORJ Carsomyr_st5
~(Touching the blade with his lips) You know, I suddenly feel as if the burden of years has slipped from my shoulders... I feel like a man renewed. Thank you, <CHARNAME>. You can not imagine how grateful I am that you ... insisted.~
DO ~SetGlobal("VP_Kr_CarsomyrTalk","LOCALS",2)~
EXIT

CHAIN KELDORJ Carsomyr_st6
~It does not give you headaches? It's babbling such nonsense.~
END
 ++ ~I'm not listening. Come on, Keldorn, take it.~ EXTERN KELDORJ Carsomyr_st4

CHAIN KELDORJ Carsomyr_st7
~(With a wink) You will let me hold it from time to time though, promise?~
DO ~SetGlobal("VP_Kr_CarsomyrTalk","LOCALS",2)~
EXIT

//War has been declared
CHAIN KELDORJ War_st0
~What has happened, sir?~
EXTERN KRWARMES KRWARM2

CHAIN KELDORJ War_st1
~<CHARNAME>, I'm liable for military service and I may not disobey the order. Please, we must follow the Knight.~
END
 IF ~True()~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("KRCut04")~ EXIT
 IF ~InParty("Edwin")~ THEN EXTERN EDWINJ Kr_WarTk
 IF ~InParty("Yoshimo")~ THEN EXTERN YOSHJ Kr_WarTk
 IF ~InParty("Jan")~ THEN EXTERN JANJ Kr_WarTk
 IF ~InParty("Minsc")~ THEN EXTERN MINSCJ Kr_WarTk
 IF ~InParty("Jaheira")~ THEN EXTERN JAHEIRAJ Kr_WarTk
 IF ~InParty("Mazzy")~ THEN EXTERN MAZZYJ Kr_WarTk
 IF ~InParty("HaerDalis")~ THEN EXTERN HAERDAJ Kr_WarTk
 IF ~InParty("Korgan")~ THEN EXTERN KORGANJ Kr_WarTk
 IF ~InParty("Cernd")~ THEN EXTERN CERNDJ Kr_WarTk
 IF ~InParty("Nalia")~ THEN EXTERN NALIAJ Kr_WarTk
 IF ~InParty("Aerie")~ THEN EXTERN AERIEJ Kr_WarTk
 IF ~InParty("Valygar")~ THEN EXTERN VALYGARJ Kr_WarTk
 IF ~InParty("Anomen")~ THEN EXTERN ANOMENJ Kr_WarTk

CHAIN KELDORJ War_st2
~Are you staying with us then mage? You do surprise me.~
EXTERN EDWINJ Kr_WarT4

CHAIN KELDORJ War_st3
~What's your interest in this war? If you are hoping to get rich on its trophies, THEN you'd be wise to remember that we will be joining with another army... you do understand what it is I am saying don't you?~
EXTERN EDWINJ Kr_WarT5

CHAIN KELDORJ War_st4
~What does it matter to you that she is a daughter of Bhaal? It was important in Baldur's Gate, that I understand, but now...~
EXTERN EDWINJ Kr_WarT6

CHAIN KELDORJ War_st5
~(Interrupting) ... and guided I might add. I know this Edwin.~
EXTERN EDWINJ Kr_WarT7

CHAIN KELDORJ KRVIWAR1
~(Hollowly) Yes. I admit my previous words were... well, they matter no more. You have fought by our side, your dark goddess has nursed our wounds, and I no longer have reason to mistrust you. Though, your anxiety is understandable.~
EXTERN VICONIJ Kr_WarT4

CHAIN KELDORJ KRVIWAR2
~(Wincing) Viconia please, do not call me that, I beg you.~
EXTERN VICONIJ Kr_WarT5

CHAIN KELDORJ KRVIWAR3
~(His voice becomes conciliatory) Worry not, if we stay close together, nobody will say a word against you. To be sure, it would be best if you kept that hood of yours up at all times.~
DO ~SetGlobal("VP_Kr_ViccyWarTalk","GLOBAL",2)~
EXIT

CHAIN KELDORJ Prelate_st0
~I remember you expressing your admiration for Drizzt DoUrden, prelate, if I remember correctly, he is a drow.~
EXTERN HPRELATE GotoWar1

CHAIN KELDORJ Prelate_st1
~(Putting a hand on Viconia's shoulder) She is an old friend of <CHARNAME>...~
EXTERN HPRELATE GotoWar2

CHAIN KELDORJ adjutant
~Mmm... now I wonder what the general needs of me? Come <CHARNAME>, let us find out.~
EXIT

CHAIN KELDORJ craumer
~General... I'm not sure that the duke of Esmeltaran will agree to this. The city would be left defenseless.~
EXTERN CRAUMER 1

CHAIN KELDORJ kelemring_st0
~(Bitterly) I imagine this priest has died. There is a letter and a ring here, <CHARNAME>.~
= ~"Dear Count, You know that the Temple was a place of safe keeping for an artifact ' the ring of Cyric. The great Kelemvor made it clear that this ring should not fall into the hands of followers of the Prince of Lies, and I have seen many of them among the enemy.~
= ~Unfortunately the ring's abilities are yet unknown to me, it is said that mere mortals are not permitted to learn of them. Hide this ring count Firecam I beg you. Keep it from those who covet it for their evil lord! The supreme priest of Kelemvor, Doomguide Marrius."~
END
 ++ ~(Taking the ring) I believe I understand the power of the ring. It causes the transposition of divine and human essences.~ EXTERN KELDORJ kelemring_st1

CHAIN KELDORJ kelemring_st1
~(Fearfully) Then I beg you, please, on no account must you ever don that ring... it will destroy you, that I am sure!~
DO ~GiveItemCreate("kelring",Player1,0,0,0) SetGlobal("VP_Kr_Casle_Siege","GLOBAL",1) RealSetGlobalTimer("VP_Kr_CasleSiege_T","GLOBAL",30)~
JOURNAL ~I've learned so much today! My Keldorn turned out to be a count, and he has a splendid family castle. His mother is so nice I didn't imagine that she would still be alive... and looking so elegant for her age! But that's not the half of it, the ring of Cyric that fell into my hands showed me a strange and horrible place with odd creatures, pillars of skulls... the vision sent a chill through my very soul... hopefully Keldorn didn't notice.~
EXIT

CHAIN
IF WEIGHT #-107 ~Global("VP_Kr_CyricPlot","GLOBAL",11)~ THEN KELDORJ Rest0
~<CHARNAME>, my dear friend, I am so grateful to you. You see, this business did not take up too much of our time, and we can continue our journey whenever you are ready.~
EXTERN KELDORJ Rest0_B

CHAIN KELDORJ Rest0_B
~Firstly you must take a long rest, get a good nights sleep, who knows when we will have another opportunity. Breakfast is always served in our rooms, that is our custom, but I would like us to have breakfast together tomorrow.~
EXTERN KELDORJ Rest0_C

CHAIN KELDORJ Rest0_C
~I will come for you my lady, when you are awake. Good night, my dearest girl (kisses you tenderly on your cheek).~
DO ~SetGlobal("VP_Kr_CyricPlot","GLOBAL",12) SetGlobal("VP_LoveTalk","LOCALS",19) ClearAllActions() StartCutSceneMode() Wait(4) RestParty() EndCutSceneMode()~
EXIT

//LT22 (renumerated)
CHAIN
IF WEIGHT #-7 ~Global("VP_LoveTalk","LOCALS",20)~ THEN KELDORJ morning
~Good morning to you! You look lovely, and that dress is so becoming on you my lady. (Holding out his hand) Come, breakfast awaits.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",22) ClearAllActions() StartCutSceneMode() StartCutScene("KRCut18")~
EXIT //the value of 21 is skipped to follow the original numbering

CHAIN KELDORJ Imoen0
~Miss Imoen, I am truely glad that we have finally found you. At last you are safe and free from the clutches of that evil sorcerer!~
EXTERN IMOEN2 MeetKr0

CHAIN KELDORJ Imoen1
~Yes, it is forbidden to use magic in the city without the permission of the authorities, but I believe child, that Irenicus would have found a way to steal you law or no law...~
EXTERN IMOEN2 MeetKr1

CHAIN KELDORJ Imoen2
~No, no, of course I did not mean that... please forgive me if I have offended you unwittingly. What I meant to say was that I am very pleased to meet you, but alas I've done so rather awkwardly. I ask you once again, please forgive me.~
EXTERN IMOEN2 MeetKr2

CHAIN KELDORJ LT24_st1
~(Tenderly touching your cheek with his lips) But I ask you, <CHARNAME>, please. If Bodhi has made up her mind to end things here, you can be sure she will do her damndest no matter what. You need to be prepared for that meeting.~
END
 ++ ~(Whisper) All right, let it be as you wish, but please talk to me, don't be silent.~ EXTERN KELDORJ LT24_st2
 ++ ~And what if I fall asleep? No, it's no good, we have to get out of here.~ EXTERN KELDORJ LT24_st3

CHAIN KELDORJ LT24_st2
~(He quickly prepares a place for you to sleep) Here, this should be comfortable, come lay yourself down. Now what do you want to talk about?~
END
 ++ ~I do not know... You have been silent since we left Esmeltaran! You have something on your mind and it's almost as if you regret that I brought you back to life.~ EXTERN KELDORJ LT24_st4
 ++ ~I get the impression that you are hiding something from me!~ EXTERN KELDORJ LT24_st4

CHAIN KELDORJ LT24_st3
~(Quietly. His voice sounding a little hurt) Does my request mean absolutely nothing to you? Tell me <CHARNAME>, how often is it that I ask anything of you?~
END
 ++ ~Oh, you are so touchy! All right, all right, I'll do as you say but will you talk to me?~ EXTERN KELDORJ LT24_st2
 ++ ~No, not often but often when I do something you have not asked of me... it turns bad. You did not ask me to resurrect you, and now I find myself thinking that it was all for naught!~ EXTERN KELDORJ LT24_st4

CHAIN KELDORJ LT24_st4
~(Patting your cheek) It was naive of me to hope that I could conceal my... doubts. No use trying to deceive the eyes of a loving woman. You are right... to some extent, but not that I begrudge that I have returned with you, no. Kelemvor did not erase my memories of that quiet world. I don't know not why but he didn't.~
EXTERN KELDORJ LT24_st4_1

CHAIN KELDORJ LT24_st4_1
~(Keldorn's eyes are lit with unfamiliar light) I remember it and it will always be with me, can you understand that? I wanted to return with you yes, but at the same time, part of me longed to stay there, and I can't help that, <CHARNAME>.~
EXTERN KELDORJ LT24_st4_2

CHAIN KELDORJ LT24_st4_2
~You see, death will always be at my side. Despite numerous assassination attempts on your own life you are still unable to understand it! You are not a mere mortal, your death is different.~
EXTERN KELDORJ LT24_st4_3

CHAIN KELDORJ LT24_st4_3
~Forgive me my dear, I should not be having this conversation with you. I should be encouraging you, giving you strength, but instead my words bring only gloom. (Keldorn gives you a sad smile.)~
END
 ++ ~I do not know what to say. I understand what you mean. Kelemvor gave me a real lecture before allowing me to talk with you, I... I should have guessed the truth myself.~ EXTERN KELDORJ LT24_st5
 ++ ~I know what death is Keldorn, I bestow it on people and whilst Kelemvor stands at my back, I know I have nothing to fear.~ EXTERN KELDORJ LT24_st6

CHAIN KELDORJ LT24_st5
~You do not have to say anything. I will try to make things right. (Bends down and kisses your forehead.) For now, you must rest my dear.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",25) ClearAllActions() StartCutSceneMode() Wait(4) RestParty() EndCutSceneMode()~
EXIT

CHAIN KELDORJ LT24_st6
~(With a sigh) That is not what I meant. No matter, forget it and rest for now.~
DO ~SetGlobal("VP_LoveTalk","LOCALS",25) ClearAllActions() StartCutSceneMode() Wait(4) RestParty() EndCutSceneMode()~
EXIT

CHAIN KELDORJ slayerat
~You are shivering, my dear. I will stoke the fire, though I fear your chill is not a fault of the air.~
END
 ++ ~No, it isn't. Stand back, Keldorn, I don't know if I can protect you from this.~ DO ~SetGlobal("EndangerLovedOne","GLOBAL",7)~ EXTERN KELDORJ slayer1
 ++ ~You endanger yourself being here. Move, for your own good.~ DO ~SetGlobal("EndangerLovedOne","GLOBAL",7)~ EXTERN KELDORJ slayer1
 ++ ~Get away from me, fool. You endanger your worthless life!~ DO ~SetGlobal("EndangerLovedOne","GLOBAL",7)~ EXTERN KELDORJ slayer1

CHAIN KELDORJ slayer1
~Your lips move, but no sound emerges. Are you sure you are well... <CHARNAME>? By the gods, <CHARNAME>!!~
DO ~ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))~
EXIT

//Bodhi Ambush - Taking Keldorn
CHAIN KELDORJ vampamb0
~Stay away from her, vampire! You and your murderous bastard of a brother had taken too many lives as is. I will not allow you to harm <CHARNAME>...~
EXTERN BODHIAMB vampamb1

CHAIN KELDORJ Alia0
~Mother please, is not our hasty decision a surprise and a bother to you?~
EXTERN LADYALIA 2

CHAIN KELDORJ Alia1
~(Smiles) Why so?~
EXTERN LADYALIA 3

/*
CHAIN
IF WEIGHT #-109 ~Global("VP_LoveTalk","LOCALS",33)~ THEN KELDORJ LT36_st31
~Demon!~ [letgo]
EXTERN SLAYERDR S5
*/

CHAIN KELDORJ LT36_st32
~How dare you!~
EXTERN SLAYERDR S6

CHAIN KELDORJ LT36_st33
~(Perplexedly) You mean to say that the wedding...~
EXTERN SLAYERDR S7

CHAIN KELDORJ LT36_st34
~I don't believe you, demon! Wait...~
DO ~SetGlobal("VP_LoveTalk","LOCALS",35) SetGlobal("Kr_SlayerTalk_Fix2","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("KRCut25")~
JOURNAL ~That is it. The end of my happiness, my love, my dreams. I will never become his wife. Maybe if I manage to get rid of this curse, only then. I do not know! And nobody knows, even Great Kelemvor. Why? What have I done to deserve it?~
EXIT

//Last SoA talk - good ending
CHAIN KELDORJ LT38_st0
~(Embracing him and touching his cheek with your lips you feel that it is wet.)~ [ifyougo]
END
 ++ ~Keldorn, you... you are crying? You have not slept at all?~ EXTERN KELDORJ LT38_st23
 ++ ~You... have heard everything? Why then did you not stop me?~ EXTERN KELDORJ LT38_st24

CHAIN KELDORJ LT38_st23
~If you had not taken the ring from my finger, I probably would not have woken.~
END
 ++ ~So you... why did you not say anything? Why did you not stop me?~ EXTERN KELDORJ LT38_st24

CHAIN KELDORJ LT38_st24
~(Surprised) Why... what would it have changed? The decision had to be yours <CHARNAME>.~
= ~Remember what I said to you: "Whatever happens, know this - I love you", remember? Do you believe me now my love?~
END
 ++ ~Yes.~ EXTERN KELDORJ LT38_st25
 ++ ~Is it not frightening to love a girl such as I?~ EXTERN KELDORJ LT38_st26

CHAIN KELDORJ LT38_st25
~(Sighs) At last... please give me back the ring. Now tell me, why did you take it from me?~
END
 ++ ~(Quietly) What if I had left... for good?~ EXTERN KELDORJ LT38_st27
 ++ ~I still do not understand, how can you love me? Is it not frightening to you?~ EXTERN KELDORJ LT38_st26

CHAIN KELDORJ LT38_st27
~"What if..."? What do you want to hear, that I would commit suicide rather than live without you? No my love, that I would never do. I would wait for you to change your mind, if necessary, wait until time itself ran out.~
END
 ++ ~(A sob escapes from your throat) Don't say that... I am not worthy of you.~ EXTERN KELDORJ LT38_st28

CHAIN KELDORJ LT38_st28
~<CHARNAME> do you truly think that I could fall in love with an unworthy woman?~
END
 ++ ~("But you did" comes to your mind, but you wisely keep your thoughts to yourself.) I am such a fool. Forgive me.~ EXTERN KELDORJ LT38_st29

CHAIN KELDORJ LT38_st26
~Frightening? Yes... because I am so afraid that you will be taken from me, afraid that you may be made to take your place as a goddess!~
= ~What should I do then? I will probably be afraid now and for the rest of my life.~
EXTERN SLAYERDR S9

CHAIN KELDORJ LT38_st29
~(Embracing you tightly) Hush now, no more crying, otherwise your eyes will become red and swollen... not very becoming on such a beautiful face.~
= ~Come, give me a hug my darling and never, never run away from me again!~
EXTERN SLAYERDR S9

CHAIN KELDORJ AnomLeav
~(In a low voice) I am to blame. By Torm I should have interfered and persuaded you to put him off his plan! I knew no good would come of it.~
END
 ++ ~I... I feel as though I have killed him with my own hands. Oh Keldorn, why is that... why do I feel so responsible?~ EXTERN KELDORJ AnLv_st1

CHAIN KELDORJ AnLv_st1
~(Stroking your back) Being tormented with remorse is a quality inherent in every man of honour. To see you so distressed brings a heaviness to my own heart.~
EXTERN BANOMEN AnomBye

IF ~Global("ThiefGroup","GLOBAL",0) Global("AsylumPlot","GLOBAL",2) Global("VP_SailTo_Brynnlaw","GLOBAL",4) Global("VP_SaemonSuspected","LOCALS",0)~ THEN KELDORJ Brynn0
#43928 /* ~I do not trust this pirate, <CHARNAME>. His manner is that of a fool, but his behavior during the voyage betrays a cunning mind beneath.~ */
END
 ++ #43929 /* ~He has delivered us as promised. There are more important things to worry about.~ */ DO ~SetGlobal("VP_SaemonSuspected","LOCALS",1) SetGlobal("SaemNoBodhi","GLOBAL",1)~ EXTERN KELDORJ Brynn1
 ++ #43930 /* ~Kill him if you wish. I don't care either way.~ */ DO ~SetGlobal("VP_SaemonSuspected","LOCALS",1) SetGlobal("SaemNoBodhi","GLOBAL",1)~ EXTERN KELDORJ Brynn2
 ++ #43931 /* ~He seems amiable enough to me. Come, you'll feel better once off the ship.~ */ DO ~SetGlobal("VP_SaemonSuspected","LOCALS",1) SetGlobal("SaemNoBodhi","GLOBAL",1)~ EXTERN KELDORJ Brynn1

CHAIN KELDORJ Brynn1
#43932 /* ~Agreed. Be prepared, this place is dangerous enough even without my suspicions of Saemon.~ */
DO ~MoveToPoint([863.2422])~
EXIT

CHAIN KELDORJ Brynn2
#43933 /* ~We may need his ship for our return. No, just be on your guard. He is probably the least of our worries in this place.~ */
DO ~MoveToPoint([863.2422])~
EXIT

CHAIN
IF WEIGHT #-250 ~Global("VP_Spy_Letter","GLOBAL",2)~ THEN KELDORJ morning
~I think I know what it is. Riatavin wanted to go under Tethyr, but the negotiations failed. Perhaps they want to hide that?~
= ~But it's pointless! Why is to kill the refugees? What is it possibly that they could tell that diplomats do not know?~
DO ~SetGlobal("VP_Spy_Letter","GLOBAL",3)~
EXIT

CHAIN KELDORJ siege
~Getharic! I'm glad to see you, cousin. We'll join the defence forces at once. Right, <CHARNAME>?~
END
 ++ ~Of course, Keldorn, let's go to the gate.~ EXTERN KELDORJ siege1
 ++ ~It seems we don't have much choice here.~ EXTERN KELDORJ siege2
 ++ ~Keldorn, we cannot go fighting unprepared. Let's take up arms, prepare potions and spells.~ EXTERN KELDORJ siege3

CHAIN KELDORJ siege1
~Thank you <CHARNAME>.~
EXIT

CHAIN KELDORJ siege2
~Of course, you have a choice, <CHARNAME>. You may stay inside the castle walls and avoid being hurt.~
END
 ++ ~Sorry, Keldorn. Let's go to the gate.~ EXTERN KELDORJ siege1
 ++ ~Keldorn, we cannot go fighting unprepared. Let's take up arms, prepare potions and spells.~ EXTERN KELDORJ siege3

CHAIN KELDORJ siege3
~Okay, <CHARNAME>, in your time.~
EXIT