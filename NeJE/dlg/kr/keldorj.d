REPLACE_STATE_TRIGGER KELDORJ 41
~Global("LadyMaria","GLOBAL",3)
Global("VP_LoveTalk","LOCALS",8)
GlobalTimerExpired("VP_KrRomance_Timer","GLOBAL")~

ALTER_TRANS KELDORJ // file name
BEGIN 40 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
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
END

ALTER_TRANS KELDORJ // file name
BEGIN 47 49 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
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
END

APPEND ~KELDORJ~

//LT2
IF WEIGHT #-1 ~Global("VP_LoveTalk","LOCALS",1)~ THEN BEGIN LT2_st0
  SAY ~(Takes off his helmet) My lady, allow me to pose a question. Forgive my directness, but... is my understanding correct that you are a daughter of Bhaal?~
  	IF ~~ THEN REPLY ~Does it matter for our partnership?~ DO ~SetGlobal("VP_LoveTalk","LOCALS",2)~ GOTO LT2_st1
  	IF ~~ THEN REPLY ~Hmm, can't you feel his essence in me?~ DO ~SetGlobal("VP_LoveTalk","LOCALS",2)~ GOTO LT2_st2
  	IF ~~ THEN REPLY ~I... did not choose my parents, sir Keldorn, and Gorion did not tell me anything. I thought him to be my real father. Believe me, it was only after reading the letter I discovered after his death that revealed my true parentage and now I would be glad to be rid of this 'gift'!~ DO ~SetGlobal("VP_LoveTalk","LOCALS",2)~ GOTO LT2_st3
END

IF ~~ THEN BEGIN LT2_st1
  SAY ~No... not at all my lady. I just thought to clarify the truth that is all. Tell me, what are your plans now?~
  	IF ~Global("VP_Guild_Attacked","GLOBAL",0)
Global("WorkingForAran","GLOBAL",0)
Global("WorkingForBodhi","GLOBAL",0)~ THEN REPLY ~Really I haven't got a clue. All I know is that I need to raise enough gold to pay for Imoen's rescue.~ GOTO LT2_st41
  	IF ~!Global("VP_Guild_Attacked","GLOBAL",0)~ THEN REPLY ~Really I haven't got a clue. All I know is that I was requested to raise a hefty amount of gold to pay for Imoen's rescue, but the contact is dead now.~ GOTO LT2_st61
  	IF ~Global("VP_Guild_Attacked","GLOBAL",0)
Global("WorkingForAran","GLOBAL",0)
Global("WorkingForBodhi","GLOBAL",0)~ THEN REPLY ~Finding opportunities to earn some gold mostly. I was promised some help in finding Imoen, but help does not come free.~ GOTO LT2_st41
  	IF ~OR(2)
Global("WorkingForAran","GLOBAL",1)
Global("WorkingForBodhi","GLOBAL",1)~ THEN REPLY ~We must find Imoen, of course. In the meantime, I hired a group of people who promised to help me, but not only that they took fifteen thousands gold from me, I still have to perform a lot of errands for them before for their promise to find my friend!~ GOTO LT2_new1
END

IF ~~ THEN BEGIN LT2_st41
  SAY ~How much gold are we speaking of here?~
  	IF ~~ THEN REPLY ~Twenty thousand.~ GOTO LT2_st6
END

IF ~~ THEN BEGIN LT2_st6
  SAY ~That is quite a sum my lady! Be assured, you have my aid for as long as it is needed.~
		IF ~~ THEN DO ~SetGlobal("VP_KrRomanceActive","GLOBAL",1)
RealSetGlobalTimer("VP_KrRomance_Timer","GLOBAL",1200)~ JOURNAL ~I became acquainted with sir Keldorn Firecam, whom I knew from the tales of my good friend Ajantis. He agreed to accompany me without any hesitation even knowing about my heritage. Or could that be the reason he has agreed to help? Anyway the help of an experienced warrior and a man possessed with the wisdom of years will come in very handy. I wonder, just how old is he?~ EXIT
END

IF ~~ THEN BEGIN LT2_st61
  SAY ~Be assured, my lady, you have my aid for as long as it is needed.~
		IF ~~ THEN DO ~SetGlobal("VP_KrRomanceActive","GLOBAL",1)
RealSetGlobalTimer("VP_KrRomance_Timer","GLOBAL",1200)~ JOURNAL ~I became acquainted with sir Keldorn Firecam, whom I knew from the tales of my good friend Ajantis. He agreed to accompany me without any hesitation even knowing about my heritage. Or could that be the reason he has agreed to help? Anyway the help of an experienced warrior and a man possessed with the wisdom of years will come in very handy. I wonder, just how old is he?~ EXIT
END

IF ~~ THEN BEGIN LT2_new1
  SAY ~That is quite a sum my lady! Who are these people who are engaged in extortion?~
	IF ~Global("WorkingForAran","GLOBAL",1)~ THEN REPLY ~Shadow Thieves.~ GOTO LT2_new2
	IF ~Global("WorkingForBodhi","GLOBAL",1)~ THEN REPLY ~Vampires.~ GOTO LT2_new3
END

IF ~~ THEN BEGIN LT2_new2
  SAY ~Thieves... (Sighs) Be carefull, my lady, in dealig with that organisation. I can not associate myself with thieves but I'll stay with you and try to keep you safe from them.~
	IF ~~ THEN DO ~SetGlobal("VP_KrRomanceActive","GLOBAL",1)
RealSetGlobalTimer("VP_KrRomance_Timer","GLOBAL",1200)~ JOURNAL ~I became acquainted with sir Keldorn Firecam, whom I knew from the tales of my good friend Ajantis. He agreed to accompany me without any hesitation even knowing about my heritage. Or could that be the reason he has agreed to help? Anyway the help of an experienced warrior and a man possessed with the wisdom of years will come in very handy. I wonder, just how old is he?~ EXIT
END

IF ~~ THEN BEGIN LT2_new3
  SAY ~What? Vampires? How can you consort yourself with such pure evil! I am a paladin, my lady, and there is no way I associate myself with evil creatures! Never!~
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN LT2_st2
  SAY ~My lady... I am but a humble paladin, I can sense evil that is true, but I do not sense evil within you. Now, if I may ask, where is our next destination to be?~
  	IF ~Global("VP_Guild_Attacked","GLOBAL",0)
Global("WorkingForAran","GLOBAL",0)
Global("WorkingForBodhi","GLOBAL",0)~ THEN REPLY ~Really I haven't got a clue. All I know is that I need to raise enough gold to pay for Imoen's rescue.~ GOTO LT2_st41
  	IF ~!Global("VP_Guild_Attacked","GLOBAL",0)~ THEN REPLY ~Really I haven't got a clue. All I know is that I was requested to raise a hefty amount of gold to pay for Imoen's rescue, but the contact is dead now.~ GOTO LT2_st61
  	IF ~Global("VP_Guild_Attacked","GLOBAL",0)
Global("WorkingForAran","GLOBAL",0)
Global("WorkingForBodhi","GLOBAL",0)~ THEN REPLY ~Finding opportunities to earn some gold mostly. I was promised some help in finding Imoen, but help does not come free.~ GOTO LT2_st41
  	IF ~OR(2)
Global("WorkingForAran","GLOBAL",1)
Global("WorkingForBodhi","GLOBAL",1)~ THEN REPLY ~We must find Imoen, of course. In the meantime, I hired a group of people who promised to help me, but not only that they took fifteen thousands gold from me, I still have to perform a lot of errands for them before for their promise to find my friend!~ GOTO LT2_new1

END

IF ~~ THEN BEGIN LT2_st3
  SAY ~I do believe you... now, what is your next move?~
  	IF ~Global("VP_Guild_Attacked","GLOBAL",0)
Global("WorkingForAran","GLOBAL",0)
Global("WorkingForBodhi","GLOBAL",0)~ THEN REPLY ~Really I haven't got a clue. All I know is that I need to raise enough gold to pay for Imoen's rescue.~ GOTO LT2_st42
  	IF ~!Global("VP_Guild_Attacked","GLOBAL",0)~ THEN REPLY ~Really I haven't got a clue. All I know is that I was requested to raise a hefty amount of gold to pay for Imoen's rescue, but the contact is dead now.~ GOTO LT2_st61
  	IF ~Global("VP_Guild_Attacked","GLOBAL",0)
Global("WorkingForAran","GLOBAL",0)
Global("WorkingForBodhi","GLOBAL",0)~ THEN REPLY ~Finding opportunities to earn some gold mostly. I was promised some help in finding Imoen, but help does not come free.~ GOTO LT2_st42
  	IF ~OR(2)
Global("WorkingForAran","GLOBAL",1)
Global("WorkingForBodhi","GLOBAL",1)~ THEN REPLY ~We must find Imoen, of course. In the meantime, I hired a group of people who promised to help me, but not only that they took fifteen thousands gold from me, I still have to perform a lot of errands for them before for their promise to find my friend!~ GOTO LT2_new1

END

IF ~~ THEN BEGIN LT2_st42
  SAY ~How much gold are we speaking of here?~
  	IF ~~ THEN REPLY ~Twenty thousand.~ GOTO LT2_st5
END

IF ~~ THEN BEGIN LT2_st5
  SAY ~That's a lot of gold my lady... where did the offer come from?~
  	IF ~~ THEN REPLY ~I don't know. But I suspect that it involves some thieves. I have had some experience of dealing with them.~ GOTO LT2_st8
END

IF ~~ THEN BEGIN LT2_st8
  SAY ~Thieves... (Sighs) I'm sorry, my lady, but I can not associate myself with thieves. We must find another way to save your friend and we will find it, I'm sure. I promised you my aid my lady, and I will make good on my word.~
	IF ~~ THEN DO ~SetGlobal("VP_KrRomanceActive","GLOBAL",1)
RealSetGlobalTimer("VP_KrRomance_Timer","GLOBAL",1200)~ JOURNAL ~I became acquainted with sir Keldorn Firecam, whom I knew from the tales of my good friend Ajantis. He agreed to accompany me without any hesitation even knowing about my heritage. Or could that be the reason he has agreed to help ? Anyway the help of an experienced warrior and a man possessed with the wisdom of years will come in very handy. I wonder, just how old is he?~ EXIT
END

//LT8
IF WEIGHT #-2 ~Global("VP_LoveTalk","LOCALS",7)~ THEN BEGIN LT8_st0
  SAY ~<CHARNAME>, I... Let us sit here awhile, I must think the things through...~
  	IF ~~ THEN REPLY ~Sir Keldorn, if you'd like to return home ' and I think that Sir William has convinced you to, I would release you from my service. I can't let your family be destroyed because of me.~ GOTO LT8_st1
  	IF ~~ THEN REPLY ~If you'd like to stay home ' please, do so. I will find a replacement for you; not a companion as valuable as you are, but a replacement nonetheless.~ GOTO LT8_st2
  	IF ~~ THEN REPLY ~(Decisively) Sir Keldorn, I should not say this, but... (Take a deep breath in...) I don't believe Sir William.~ GOTO LT8_st3
  	IF ~~ THEN REPLY ~Oh sir, you must be broken-hearted!~ GOTO LT8_st4
END

IF ~~ THEN BEGIN LT8_st1
  SAY ~(Makes a dismissive gesture) It's already destroyed. After what I have heard today I'll not be able to look upon her in the same way again. I cannot do anything on that account.~
  IF ~~ THEN GOTO LT8_st1_1
END

IF ~~ THEN BEGIN LT8_st1_1
  SAY ~(Bitterly) The whole of Athkatla knows that I have been cuckolded. No, reconciliation is impossible. There is no more to be said. Let us be on our way.~
		IF ~~ THEN DO ~SetGlobalTimer("VP_KrRomance_Timer","GLOBAL",TWO_DAYS)
SetGlobal("VP_LoveTalk","LOCALS",8)~ JOURNAL ~We have visited sir Keldorn's Estate where I witnessed a confrontation between Keldorn and his wife (Oh God, what a beauty she is!) My faithful paladin was terribly distraught, it seemed to me that tears had been shed, on his part, for a love gone wrong. He seemed to be so sure of his wife. It was a sad, sad thing to see. He loves his wife and daughters so much, and they don't seem to have any affection for him at all. My heart felt for poor sir Keldorn!~ EXIT
END

IF ~~ THEN BEGIN LT8_st2
  SAY ~I did not say that, <CHARNAME>, so it is up to you to decide if you require my services or not.~
		IF ~~ THEN DO ~SetGlobalTimer("VP_KrRomance_Timer","GLOBAL",TWO_DAYS)
SetGlobal("VP_LoveTalk","LOCALS",8)~ JOURNAL ~We have visited sir Keldorn's Estate where I witnessed a confrontation between Keldorn and his wife (Oh God, what a beauty she is!) My faithful paladin was terribly distraught, it seemed to me that tears had been shed, on his part, for a love gone wrong. He seemed to be so sure of his wife. It was a sad, sad thing to see. He loves his wife and daughters so much, and they don't seem to have any affection for him at all. My heart felt for poor sir Keldorn!~ EXIT
END

IF ~~ THEN BEGIN LT8_st3
  SAY ~(He looks into your eyes for a long moment and then asks softly) Why do you say this?~
  	IF ~~ THEN REPLY ~I don't think he would have told you otherwise. He... he is no warrior, sir, and he was afraid that you could challenge him to a duel. But, don't listen to me, sir, I have no experience in such matters.~ GOTO LT8_st5
END
  	
IF ~~ THEN BEGIN LT8_st5
  SAY ~I wouldn't say that you are far off the mark. Let us go forthwith.~
		IF ~~ THEN DO ~SetGlobalTimer("VP_KrRomance_Timer","GLOBAL",TWO_DAYS)
SetGlobal("VP_LoveTalk","LOCALS",8)~ JOURNAL ~We have visited sir Keldorn's Estate where I witnessed a confrontation between Keldorn and his wife (Oh God, what a beauty she is!) My faithful paladin was terribly distraught, it seemed to me that tears had been shed, on his part, for a love gone wrong. He seemed to be so sure of his wife. It was a sad, sad thing to see. He loves his wife and daughters so much, and they don't seem to have any affection for him at all. My heart felt for poor sir Keldorn!~ EXIT
END

IF ~~ THEN BEGIN LT8_st4
  SAY ~(Shoots a quick glance at you) Let us go.~
		IF ~~ THEN DO ~SetGlobalTimer("VP_KrRomance_Timer","GLOBAL",TWO_DAYS)
SetGlobal("VP_LoveTalk","LOCALS",8)~ JOURNAL ~We have visited sir Keldorn's Estate where I witnessed a confrontation between Keldorn and his wife (Oh God, what a beauty she is!) My faithful paladin was terribly distraught, it seemed to me that tears had been shed, on his part, for a love gone wrong. He seemed to be so sure of his wife. It was a sad, sad thing to see. He loves his wife and daughters so much, and they don't seem to have any affection for him at all. My heart felt for poor sir Keldorn!~ EXIT
END

//LT10a
IF WEIGHT #-3 ~Global("VP_LoveTalk","LOCALS",9)~ THEN BEGIN LT10a_st0_1
  SAY ~<CHARNAME>, I'd like to speak with you. I apologize if this comes as an unpleasant surprise. Please trust me when I say that it was not easy for me to make this choice.~
	IF ~~ THEN GOTO LT10a_st0_2
END

IF ~~ THEN BEGIN LT10a_st0_2
  SAY ~I am a man of my word, and I have promised to help you rescue Imoen. It is my own fault, as I should not have placed the burden of decision upon your shoulders. You are young and inexperienced, and do not yet understand, that one should follow the spirit of the law, not what's writ. I am becoming wordy in my dotage, don't you think?~
  IF ~~ THEN GOTO LT10a_st0_3
END

IF ~~ THEN BEGIN LT10a_st0_3
  SAY ~To summarize, my wife is in jail, and my daughters are left without a guardian. I cannot allow them to be sent to an orphanage while I am still alive. I would like to return home, <CHARNAME>, and I'd like us to part the ways amicably. Would you give me your leave in good faith?~
  IF ~~ THEN GOTO LT10a_st0_4
END

IF ~~ THEN BEGIN LT10a_st0_4
  SAY ~Besides, I have decided to retire from the Order. Most probably, I will take the girls to Esmeltaran, to my mother's estate. I hope that I will be able to regain their confidence, their trust... their love even. Perhaps we may become a family once again.~
  	IF ~~ THEN REPLY ~I cannot hold you back, Sir Keldorn. I should have listened to you and trust your experience. You are... (very softly) free. Fare thee well, good sir.~ DO ~SetGlobal("VP_LoveTalk","LOCALS",10)~ GOTO LT10a_st1
  	IF ~~ THEN REPLY ~Very well, I understand... now I understand. I release you from your vow. You are free to go. Be happy as much as you can.~ DO ~SetGlobal("VP_LoveTalk","LOCALS",10)~ GOTO LT10a_st1
  	IF ~~ THEN REPLY ~No. This is an order.~ DO ~SetGlobal("VP_LoveTalk","LOCALS",10)~ GOTO LT10a_st2
  	IF ~~ THEN REPLY ~Sir Keldorn, I can see your dilemma. But you've promised to help me, and I think that you would be in the wrong if you were to break your word to me.~ DO ~SetGlobal("VP_LoveTalk","LOCALS",10)~ GOTO LT10a_st3
END

IF ~~ THEN BEGIN LT10a_st1
  SAY ~Thank you, <CHARNAME>. It is most unfortunate that  things have come to pass the way they have. I thought we could become good friends. Farewell. Good luck and take care of yourself, if you will... If you ever happen to pass through Esmeltaran, please stop for a visit. Our castle is located off the town site, at the lakeshore.~
		IF ~~ THEN DO ~SetGlobal("VP_KrRomanceActive","GLOBAL",3)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
EscapeArea()~ JOURNAL ~It was a foolish decision to insist on the lawful resolution of the conflict between sir Keldorn and his wife. Now he's left me... For good.~ EXIT
END

IF ~~ THEN BEGIN LT10a_st2
  SAY ~(Squinting) An order? And since when do you issue my orders, m'lady? Do you think that you outrank me, a Senior Officer of the Order, because you are a daughter of the Lord of Murder? This will not be! Farewell, my lady. It is a pity, that we failed to part in good faith.~
		IF ~~ THEN DO ~SetGlobal("VP_KrRomanceActive","GLOBAL",3)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
EscapeArea()~ JOURNAL ~It was a foolish decision to insist on the lawful resolution of the conflict between sir Keldorn and his wife. Now he's left me... For good.~ EXIT
END

IF ~~ THEN BEGIN LT10a_st3
  SAY ~You have the right of it, my lady. Indeed I cannot break my sworn word. Well, let it be as you wish. I shall stay.~
		IF ~~ THEN DO ~SetGlobal("VP_KrRomanceActive","GLOBAL",3)~ JOURNAL ~It was a foolish decision to insist on the lawful resolution of the conflict between sir Keldorn and his wife. Despite his desire to return home I insisted that he stayed on. Alas, our friendship has come to an end.~ EXIT
END

IF ~~ THEN BEGIN AV#KR90a
  SAY ~Yes, I am he. Who is it whom wishes to speak with me?~
		IF ~~ THEN EXTERN ~AV#MESS~ AV#MESS2
END

IF ~~ THEN BEGIN AV#KR90b
  SAY ~(Runs his eyes over the letter) Oh, Torm! No! No! This can not be!~
  	IF ~~ THEN REPLY ~What... what has happened?~ GOTO AV#KR903
  	IF ~~ THEN REPLY ~Your wife has done something again?~ GOTO AV#KR903
END

IF ~~ THEN BEGIN AV#KR903
  SAY ~(Pale) My daughters have perished. I... I must go back for.. the funeral.~
  	IF ~~ THEN REPLY ~I'll go with you!~ GOTO AV#KR904
  	IF ~~ THEN REPLY ~The funeral? Now? Can it not wait for a bit?~ GOTO AV#KR905
END

IF ~~ THEN BEGIN AV#KR904
  SAY ~Thank you... I am not certain it is needed though.~
  	IF ~~ THEN REPLY ~Keldorn, I beg you! Allow me to be beside you!~ GOTO AV#KR906
  	IF ~~ THEN REPLY ~Have it your way, Keldorn. But I do not think you can manage it all by yourself.~ GOTO AV#KR907
END

IF ~~ THEN BEGIN AV#KR906
  SAY ~(Handing you Maria's letter) Here, read this. I do not comprehend everything here, you explain to me later... later.~
  	IF ~~ THEN DO ~SetGlobal("VP_Kr_Funneral","GLOBAL",1)
SetGlobal("KeldornFamilyGone","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("KRCut01")~ EXIT
END

// The GLOBAL variable "KeldornFamilyGone" is set to 1 in order to remove Keldorn's family from AR1003
// Then in AR1003.BCS, there is a block, which changes "KeldornFamilyGone" to 2 and destroy all CREs there
// After that new CRE "Maria" will be created and variable "VP_Kr_Funneral" changes to 2 in the same area script

IF ~~ THEN BEGIN AV#KR907
  SAY ~I... know nothing.~
  	IF ~~ THEN REPLY ~Keldorn, please! Allow me to be beside you!~ GOTO AV#KR906
END

IF ~~ THEN BEGIN AV#KR905
  SAY ~Wait? My beloved daughters are dead and you ask me to wait to lay them to rest? That is it... I am leaving. You are a steel-hearted creature, <CHARNAME>.~
		IF ~~ THEN DO ~SetGlobal("VP_KrRomanceActive","GLOBAL",3)
SetGlobal("VP_Kr_Funneral","GLOBAL",1)
SetGlobal("KeldornFamilyGone","GLOBAL",1)
ActionOverride("av#mess",EscapeArea())
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
EscapeArea()~ EXIT
END

IF WEIGHT #-99 ~Global("VP_Kr_Funneral","GLOBAL",3)~ THEN BEGIN MariTk1
  SAY ~(Gloomy) Maria? I await explanation... the full story! How could it be that the girls were alone at home?~ [mute]
  	IF ~~ THEN DO ~SetGlobal("VP_Kr_Funneral","GLOBAL",4)~ EXTERN ~MARIA~ MariTk1
END

IF ~~ THEN BEGIN MariTk2
  SAY ~Some? And where were you? I demand an answer!~
  	IF ~~ THEN EXTERN ~MARIA~ MariTk2
END

IF ~~ THEN BEGIN MariTk3
  SAY ~We had enough people for both escorting and guarding the mansion.~
  	IF ~~ THEN EXTERN ~MARIA~ MariTk3
END

IF ~~ THEN BEGIN MariTk4
  SAY ~(Tartly) And you what? You took every single one of them?~
  	IF ~~ THEN EXTERN ~MARIA~ MariTk4
END

IF ~~ THEN BEGIN MariTk5
  SAY ~Go on.~
  	IF ~~ THEN EXTERN ~MARIA~ MariTk5
END

IF ~~ THEN BEGIN MariTk6
  SAY ~(Covers his face with his hands and keeps silence for a very long time... then he pronounces hollowly) What you are saying here is that you left for an assignation with your lover, taking all our guards with you and leaving our daughters helpless... is that not so?~
  	IF ~~ THEN EXTERN ~MARIA~ MariTk6
END

IF ~~ THEN BEGIN MariTk7
  SAY ~(Furiously) And where else would you possibly go at such an hour? Decent ladies do not pay calls on a night! I... I contravened the law and not to say my duty when I did not bring you to justice, when I should have!~
	IF ~~ THEN GOTO MariTk7_B
END

IF ~~ THEN BEGIN MariTk7_B
  SAY ~Now our precious daughters have paid the price for your folly. You will surely be imprisoned for what you have allowed to come about! I have condoned you and you, if I remember rightly, pledged your love for me... Why? You have never felt even the slightest compassion for me.~
  	IF ~~ THEN EXTERN ~MARIA~ MariTk7
END

IF ~~ THEN BEGIN MariTk8
  SAY ~Tell me Maria, why did you agree to marry me? No one was forcing you into this marriage.~
  	IF ~~ THEN EXTERN ~MARIA~ MariTk8
END

IF ~~ THEN BEGIN MariTk9
  SAY ~Go on...~
  	IF ~~ THEN EXTERN ~MARIA~ MariTk9
END

IF ~~ THEN BEGIN MariTk10
  SAY ~Go on...~
  	IF ~~ THEN EXTERN ~MARIA~ MariTk10
END

IF ~~ THEN BEGIN MariTk11
  SAY ~Finally... After so many years I am going to learn the truth.~
  	IF ~~ THEN EXTERN ~MARIA~ MariTk11
END

IF ~~ THEN BEGIN MariTk12
  SAY ~He was indeed... I often wonder myself how I managed to slay him with such a wound. <CHARNAME>, remember I was telling you? You have seen the scar on my left side?~
		IF ~~ THEN REPLY ~Right, a horrible scar.~ GOTO MariTk13
END

IF ~~ THEN BEGIN MariTk13
  SAY ~As a matter of fact it is very deep too. I really do not know how I survived.~
		IF ~~ THEN REPLY ~Gods did not require you dead, Keldorn. (Put a hand on his shoulder) Let us move along, my friend. You have nothing more to do here.~ GOTO MariTk14
END

IF ~~ THEN BEGIN MariTk14
  SAY ~Yes, you are right, dear.~
  	IF ~~ THEN EXTERN ~MARIA~ MariTk12
END

IF ~~ THEN BEGIN MariTk15
  SAY ~(Angrily) Shut your black mouth, Maria!~
  	IF ~~ THEN EXTERN ~MARIA~ MariTk13
END

IF ~~ THEN BEGIN MariTk16
  SAY ~Maria!~ [KELDOR91]
  	IF ~~ THEN EXTERN ~MARIA~ MariTk14
END

IF ~~ THEN BEGIN MariTk17
  SAY ~(Furious) You are outwearing my patience, Maria!~
		IF ~~ THEN REPLY ~Keldorn, let us move along, I beg you! Let's go and pray for your girls' souls, come now.~ GOTO MariTk18
END
	
IF ~~ THEN BEGIN MariTk18
  SAY ~You are right, we must go to the temple. Your thoughtfulness has reminded me what is important here... (Hangs upon your shoulder) Come along.~
  	IF ~~ THEN EXTERN ~MARIA~ MariTk15
END

IF ~~ THEN BEGIN MariTk19
  SAY ~Open your eyes woman, I am not hugging her, I'm holding on to her... You are a bitter, selfish woman, Maria, I do not understand how I could have been so blind for so long... Go sue for divorce, I'll agree to any terms. You can keep the house, I wouldn't be able to... stay here anyway.~
  	IF ~~ THEN EXTERN ~MARIA~ MariTk16
END

IF ~~ THEN BEGIN MariTk20
  SAY ~Isn't this what you have striven for, why you tried to cause so much mayhem?~
  	IF ~~ THEN EXTERN ~MARIA~ MariTk17
END

IF ~~ THEN BEGIN MariTk21
  SAY ~(Glumly) I see... you were hoping that I would kill sir William and as member of the Order, I would face the executioners axe myself... I pity you Maria... petition your divorce, I'll not stand in your way. Come <CHARNAME>, this place holds nothing for me now.~
  	IF ~~ THEN DO ~ActionOverride("Maria",EscapeArea())
StartCutSceneMode()
StartCutScene("KRCut02")~ EXIT
END

IF ~~ THEN BEGIN Funeral0
  SAY ~I thank you, prelate. I... am to blame. I violated the law. I did not bring my wife to justice and I am ready to accept my sentence.~
  	IF ~~ THEN EXTERN ~KRPRELAT~ 1
END

IF ~~ THEN BEGIN Funeral1
  SAY ~Prelate...~
  	IF ~~ THEN EXTERN ~KRPRELAT~ 2
END

IF ~~ THEN BEGIN Funeral2
  SAY ~That is settled then?~
  	IF ~~ THEN EXTERN ~KRPRELAT~ 3
END

IF ~~ THEN BEGIN Funeral3
  SAY ~(Gazes upon the crypt and sighs grievously) I can at least take comfort in the fact that they died my children, and not some bastard's.~
  	IF ~~ THEN EXTERN ~KRPRELAT~ 4
END

//LT14
IF WEIGHT #-100 ~Global("VP_Kr_Funneral","GLOBAL",8)~ THEN BEGIN LTfuner0
	SAY ~(Coming to himself after sad thoughts) <CHARNAME>, you may find this most strange, but I'd like to pay a visit to lady Bylanna. The more I think about the attack at the mansion, the more convinced I become that it was not haphazard. Trust me, I do not intend revenge, I do not have such thoughts on my mind, but I want to know who did this foul deed and for what reason.~
		IF ~~ THEN REPLY ~Keldorn... people are sometimes killed without any reason. Just remember how often we have been attacked in some dark alleys!~ DO ~SetGlobal("VP_Kr_Funneral","GLOBAL",9)~ GOTO LTfuner1
		IF ~~ THEN REPLY ~I do not know what to say, honestly. On one hand those responsible were definitely thieves, not mercenaries, on the other hand those thieves were a little too bold. They were not in the least bit perturbed by the fact that your house faced the government mansion or that there were crowds of soldiers in the street.~ DO ~SetGlobal("VP_Kr_Funneral","GLOBAL",9)~ GOTO LTfuner2
		IF ~~ THEN REPLY ~Well, looking at the exteriors of the house you would not know if there was anything of great value inside. Perhaps, they counted on lady Maria's jewellery?~ DO ~SetGlobal("VP_Kr_Funneral","GLOBAL",9)~ GOTO LTfuner3
		IF ~~ THEN REPLY ~We can, of course, why not? But I think you are exaggerating. Those responsible were just thieves and anything else was just coincidental.~ DO ~SetGlobal("VP_Kr_Funneral","GLOBAL",9)~ GOTO LTfuner4
END

IF ~~ THEN BEGIN LTfuner1
	SAY ~I am sure you are right my lady... but I need to put away any doubts. Please let us visit Bylanna if we happen to be nearby.~
		IF ~~ THEN REPLY ~All right, we'll do that.~ GOTO LTfuner5
END

IF ~~ THEN BEGIN LTfuner2
	SAY ~A truer word was never spoken. I too found the story suspicious. Let us go to Bylanna, this will not take up too much of our time.~
		IF ~~ THEN REPLY ~All right, we'll do that.~ GOTO LTfuner5
END

IF ~~ THEN BEGIN LTfuner3
	SAY ~They must have been outsiders then. One can hardly disguise anything in this city. Maria possesses one and only one necklace and that she only takes off when she sleeps.  There was once a lot of joking on that account... Back to my request, I still want to ask you to find a way to visit Bylanna.~
		IF ~~ THEN REPLY ~All right, we'll do that.~ GOTO LTfuner5
END

IF ~~ THEN BEGIN LTfuner4
	SAY ~All is possible though... I do not know. I beg you, please do me this favour.~
		IF ~~ THEN REPLY ~All right, we'll do that.~ GOTO LTfuner5
END

IF ~~ THEN BEGIN LTfuner5
	SAY ~(Keldorn nods his head in silence and sinks deep in his thoughts)~
		IF ~~ THEN EXIT
END

// Chill out. Keldorn won't leave you even if you don't rush to Bylanna at once. Take your time. The romance will continue only after Keldorn talk to Bylanna.

IF WEIGHT #-101 ~Global("VP_Kr_Funneral","GLOBAL",9)
Global("VP_Talk_Bylanna","GLOBAL",1)~ THEN BEGIN Bylanna1
  SAY ~Lady Bylanna, I would ask you if there is any knowledge as to the identities of murderers of my daughters? I have an uneasy feeling that it was done intentionally. I have strong doubts that out-of-town thieves would rob a house in this district, more so one so close to the prison.~
  	IF ~~ THEN DO ~SetGlobal("VP_Kr_Funneral","GLOBAL",10)~ EXTERN ~BYLANNA~ Keldorn1
END

IF ~~ THEN BEGIN Bylanna2
  SAY ~(With a wince) Lady Bylanna, the terms "punitive action" and "Order of Radiant Heart" are incongruous... No, our interests have not conflicted of late. I thank you for the information, my lady.~
  	IF ~~ THEN EXIT
END

//LT18
IF WEIGHT #-102 ~Global("VP_Kr_Funneral","GLOBAL",11)
Global("VP_Kr_Quest","LOCALS",1)~ THEN BEGIN QT_st0
  SAY ~<CHARNAME>, I'd like to have a look at that hayloft. I do not believe we will find anything there, most likely it was but a rendezvous venue, but still who knows.~
  	IF ~~ THEN REPLY ~I doubt it. I suspect the neighbours have thoroughly examined the place.~ GOTO QT_st1
  	IF ~~ THEN REPLY ~What do you hope to find there? Their headquarters' address? I guess, it's a fools' errand.~ GOTO QT_st2
  	IF ~~ THEN REPLY ~Have you come across any Cyric people before, Keldorn?~ GOTO QT_st3
END

IF ~~ THEN BEGIN QT_st1
  SAY ~Neighbours... I do not enjoy the closeness of the thieves' guild. And you wonder why I am unkind to thieves! Please, let us go there and look around. Even if we do not find anything, I... I just want to do it.~
  	IF ~~ THEN REPLY ~All right, let's have it your way.~ GOTO QT_st4
  	IF ~~ THEN REPLY ~Just to clear off your conscience? All right, let's go there.~ GOTO QT_st5
  	IF ~~ THEN REPLY ~But we will find nothing!~ GOTO QT_st6
END

IF ~~ THEN BEGIN QT_st2
  SAY ~(With a sigh) Then I must go alone for it is something I have to do.~
  	IF ~~ THEN REPLY ~All right, let's go there.~ GOTO QT_st4
  	IF ~~ THEN REPLY ~Keldorn... I did not say I refused, just expressed my doubts. If you need that so badly, we'll go there. We can do that right now.~ GOTO QT_st5
  	IF ~~ THEN REPLY ~But we will find nothing!~ GOTO QT_st6
END

IF ~~ THEN BEGIN QT_st3
  SAY ~(First deep in thought, but then shakes his head) It's been so long now, and I would not call this incident an encounter. Just one of the missions, where a couple of Cyric Priests just happened to be among the enemy.~
  	IF ~~ THEN REPLY ~Then I do not understand. OK, let's go there.~ GOTO QT_st4
  	IF ~~ THEN REPLY ~(You shrug your shoulders) Well, then they should not have any claims to you. It must be a coincidence, Keldorn... and our visit won't change anything. But we can go there if it makes you feel better.~ GOTO QT_st5
  	IF ~~ THEN REPLY ~But we will find nothing!~ GOTO QT_st6
END

IF ~~ THEN BEGIN QT_st4
  SAY ~Thank you, <CHARNAME>.~
  	IF ~~ THEN DO ~SetGlobal("VP_Kr_Quest","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN QT_st5
  SAY ~Please, do not take me wrong, it's not that I took an oath or something. I need to know! I can not understand for the life of me why this sudden interest in me from the followers of Cyric now. That priest... he addressed you, not me... let us go, we must at least take a look around.~
  	IF ~~ THEN DO ~SetGlobal("VP_Kr_Quest","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN QT_st6
  SAY ~(Sharply) I am going right now. Will you accompany me... or not <CHARNAME>?~
  	IF ~~ THEN REPLY ~(You take him by his hand softly) Please take my apologies. I will go with you.~ GOTO QT_st4
  	IF ~~ THEN REPLY ~No.~ GOTO QT_st7
END

IF ~~ THEN BEGIN QT_st7
  SAY ~I... do not know what to say. You seemed to treat me with compassion and understanding. I must have deceived myself.~
  	IF ~~ THEN DO ~SetGlobal("VP_KrRomanceActive","GLOBAL",3)
LeaveParty()
EscapeArea()~ EXIT
END

// The same is as above. There is no timer, and Keldorn won't leave you even if you don't rush to the Docks. The romance will continue only after you visit the hayloft in the Docks.

IF WEIGHT #-103 ~Global("VP_Kr_Quest","LOCALS",3)~ THEN BEGIN Ring_st0
  SAY ~(In a tense voice) <CHARNAME>, look...~
	IF ~~ THEN GOTO Ring_st0_B
END

IF ~~ THEN BEGIN Ring_st0_B
  SAY ~(There is a small ring on his palm) This is Leona's ring. She was always fighting with the boys, and this ring helped to make her more dexterous and wiser... Please, you must have it. There are no more traces here, alas!~
  	IF ~~ THEN REPLY ~Keldorn... I can't, this is your daughter's ring. It's precious to you. You must have it with you.~ GOTO Ring_st1
  	IF ~~ THEN REPLY ~Did you give it to Leona?~ GOTO Ring_st2
END

IF ~~ THEN BEGIN Ring_st1
  SAY ~It won't fit my finger, but it will yours. Besides, it could easily get misplaced and is far too precious to leave in a dark backpack.~
	IF ~~ THEN GOTO Ring_st1_B
END

IF ~~ THEN BEGIN Ring_st1_B
  SAY ~I beg you, <CHARNAME>, it will please me to see it on your hand and it will be easier for me that way, believe me. Please let me put it on your finger.~
		IF ~~ THEN DO ~GiveItemCreate("kring111",Player1,0,0,0)
SetGlobal("VP_Kr_Quest","LOCALS",4)
SetGlobalTimer("VP_KrRomance_GTime","GLOBAL",ONE_DAY)~ JOURNAL ~We found Leona's ring. Keldorn insisted that I should have it. I wanted so much to give him a hug and cheer him up, I just do not know how I managed to contain myself.~ EXIT
END

IF ~~ THEN BEGIN Ring_st2
  SAY ~I did. Please... I do not want it to lie on the bottom of my bag. Please take it.~
  	IF ~~ THEN REPLY ~Very well, Keldorn. Have it your way.~ GOTO Ring_st3
END

IF ~~ THEN BEGIN Ring_st3
  SAY ~Please let me put it on your finger.~
		IF ~~ THEN DO ~GiveItemCreate("kring111",Player1,0,0,0)
SetGlobal("VP_Kr_Quest","LOCALS",4)
SetGlobal("VP_AnomenJealous","GLOBAL",2)
SetGlobalTimer("VP_KrRomance_GTime","GLOBAL",ONE_DAY)~ JOURNAL ~We found Leona's ring. Keldorn insisted that I should have it. I wanted so much to give him a hug and cheer him up, I just do not know how I managed to contain myself.~ EXIT
END

//Kamir & Risa
IF WEIGHT #-104 ~Global("VP_Kr_Kamir_Talk","LOCALS",2)~ THEN BEGIN Kamir_st0
  SAY ~(Sigh) That's a hard task that he has committed to, and proof of that is seen by the fate of his previous foster child.~
=
~A paladin can not stay home all the time; his duties constantly call him up... and a child can not be left alone. Nor can a paladin take a child with him. That's why we have orphanages and abbeys.~
=
~Many parents send their children there to be taken care of when they are incapable of doing so themselves.~
=
~My father was a cleric. I was supposed to follow in his steps, but I wanted to become a paladin from since I was a child, <CHARNAME>, and my parents sent me to such a monastery into care.~
=
~And Kamir... by blindly following paladin's rules, he committed an even worse misdemeanour.~
=
~Most likely this girl will suffer the same fate as Stephan or even worse. He should not have kept the boy, but sent him to the asylum, and by doing so he would not have broken his oath to the boy's mother.~
=
~His misfortune is that he interpreted his oath incorrectly. Though... what if I'm wrong, what if Risa were to remain safe and live to serve Kamir as a comfort in his old days. (Sigh)~
	IF ~~ THEN DO ~SetGlobal("VP_Kr_Kamir_Talk","LOCALS",3)~ EXIT
END

//Garren
IF WEIGHT #-105 ~Global("VP_Kr_Garren_Talk","LOCALS",2)~ THEN BEGIN Garren_st0
  SAY ~(Softly) <CHARNAME>, do not blame yourself. You could not help it, believe me. I know how you feel, I know it only too well. But I also know that revenge will not make you feel better.~
=
~Eventually your heart will lighten, trust me... you and I will remember Ajantis, and we will talk about him later. Now come pull yourself together my lady... do not let anger win over reason. Garren Windspear awaits us.~
	IF ~~ THEN DO ~SetGlobal("VP_Kr_Garren_Talk","LOCALS",3)~ EXIT
END

//Carsomyr
IF WEIGHT #-106 ~Global("VP_Kr_CarsomyrTalk","LOCALS",1)~ THEN BEGIN Carsomyr_st0
  SAY ~<CHARNAME>, look! Holy Avenger! A sword that was granted by Tyr! See how the power within causes it to shimmer!~
  	IF ~~ THEN REPLY ~Keldorn, take it!~ GOTO Carsomyr_st1
  	IF ~~ THEN REPLY ~It is mine!~ GOTO Carsomyr_st3
END

IF ~~ THEN BEGIN Carsomyr_st1
  SAY ~(With awe) Oh, no, you can't mean that! The Order sent you to take it from the dragon, I have no right to even touch it.~
  	IF ~~ THEN REPLY ~Keldorn... you do not have a right... you, paladin of Torm? If there are hands on this earth worthy of this sword, they are your hands.  The Order will understand and welcome my decision. That I am sure of!~ GOTO Carsomyr_st2
  	IF ~~ THEN REPLY ~I really do not know, Keldorn. I'd like you to own it.~ GOTO Carsomyr_st3
END

IF ~~ THEN BEGIN Carsomyr_st2
  SAY ~Carsomyr... you... you really want  me to have it... ~
  	IF ~~ THEN REPLY ~Yes! I'm asking you, please...~ GOTO Carsomyr_st4
END

IF ~~ THEN BEGIN Carsomyr_st3
  SAY ~I have my own, a gift from Torm and it is the only sword I will ever need. Come, take it!~
  	IF ~~ THEN REPLY ~No-no. This chatterbox is not bad either.~ GOTO Carsomyr_st6
  	IF ~~ THEN REPLY ~As you wish, let it be so.~ GOTO Carsomyr_st7
END

IF ~~ THEN BEGIN Carsomyr_st4
  SAY ~I... (Keldorn gets down on one knee and carefully puts his hand under the blade of the sword. As soon as Carsomyr touches his hands, it flashes with bright light, illuminating the gloomy cave of Firkraag. You see Keldorn's shining eyes, his face seems to be lit by some inner light and at this moment you realize that you made the right decision.)~
  	IF ~~ THEN REPLY ~I told you, you were made for each other.~ GOTO Carsomyr_st5
END

IF ~~ THEN BEGIN Carsomyr_st5
  SAY ~(Touching the blade with his lips) You know, I suddenly feel as if the burden of years has slipped from my shoulders... I feel like a man renewed. Thank you, <CHARNAME>. You can not imagine how grateful I am that you ... insisted.~
		IF ~~ THEN DO ~SetGlobal("VP_Kr_CarsomyrTalk","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN Carsomyr_st6
  SAY ~It does not give you headaches? It's babbling such nonsense.~
  	IF ~~ THEN REPLY ~I'm not listening. Come on, Keldorn, take it.~ GOTO Carsomyr_st4
END

IF ~~ THEN BEGIN Carsomyr_st7
  SAY ~(With a wink) You will let me hold it from time to time though, promise?~
		IF ~~ THEN DO ~SetGlobal("VP_Kr_CarsomyrTalk","LOCALS",2)~ EXIT
END

//War has been declared
IF ~~ THEN BEGIN War_st0
  SAY ~What has happened, sir?~
		IF ~~ THEN EXTERN ~KRWARMES~ KRWARM2
END

IF ~~ THEN BEGIN War_st1
  SAY ~<CHARNAME>, I'm liable for military service and I may not disobey the order. Please, we must follow the Knight.~
  	IF ~True()~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("KRCut04")~ EXIT
  	IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kr_WarTk
  	IF ~InParty("Yoshimo")~ THEN EXTERN ~YOSHJ~ Kr_WarTk
  	IF ~InParty("Jan")~ THEN EXTERN ~JANJ~ Kr_WarTk
  	IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ Kr_WarTk
  	IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ Kr_WarTk
  	IF ~InParty("Mazzy")~ THEN EXTERN ~MAZZYJ~ Kr_WarTk
  	IF ~InParty("HaerDalis")~ THEN EXTERN ~HAERDAJ~ Kr_WarTk
  	IF ~InParty("Korgan")~ THEN EXTERN ~KORGANJ~ Kr_WarTk
  	IF ~InParty("Cernd")~ THEN EXTERN ~CERNDJ~ Kr_WarTk
  	IF ~InParty("Nalia")~ THEN EXTERN ~NALIAJ~ Kr_WarTk
  	IF ~InParty("Aerie")~ THEN EXTERN ~AERIEJ~ Kr_WarTk
  	IF ~InParty("Valygar")~ THEN EXTERN ~VALYGARJ~ Kr_WarTk
  	IF ~InParty("Anomen")~ THEN EXTERN ~ANOMENJ~ Kr_WarTk
END

IF ~~ THEN BEGIN War_st2
  SAY ~Are you staying with us then mage? You do surprise me.~
  	IF ~~ THEN EXTERN ~EDWINJ~ Kr_WarT4
END

IF ~~ THEN BEGIN War_st3
  SAY ~What's your interest in this war? If you are hoping to get rich on its trophies, THEN you'd be wise to remember that we will be joining with another army... you do understand what it is I am saying don't you?~
  	IF ~~ THEN EXTERN ~EDWINJ~ Kr_WarT5
END

IF ~~ THEN BEGIN War_st4
  SAY ~What does it matter to you that she is a daughter of Bhaal? It was important in Baldur's Gate, that I understand, but now...~
  	IF ~~ THEN EXTERN ~EDWINJ~ Kr_WarT6
END

IF ~~ THEN BEGIN War_st5
  SAY ~(Interrupting) ... and guided I might add. I know this Edwin.~
  	IF ~~ THEN EXTERN ~EDWINJ~ Kr_WarT7
END

IF ~~ THEN BEGIN KRVIWAR1
  SAY ~(Hollowly) Yes. I admit my previous words were... well, they matter no more. You have fought by our side, your dark goddess has nursed our wounds, and I no longer have reason to mistrust you. Though, your anxiety is understandable.~
  	IF ~~ THEN EXTERN ~VICONIJ~ Kr_WarT4
END

IF ~~ THEN BEGIN KRVIWAR2
  SAY ~(Wincing) Viconia please, do not call me that, I beg you.~
  	IF ~~ THEN EXTERN ~VICONIJ~ Kr_WarT5
END

IF ~~ THEN BEGIN KRVIWAR3
  SAY ~(His voice becomes conciliatory) Worry not, if we stay close together, nobody will say a word against you. To be sure, it would be best if you kept that hood of yours up at all times.~
  	IF ~~ THEN DO ~SetGlobal("VP_Kr_ViccyWarTalk","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN Prelate_st0
  SAY ~I remember you expressing your admiration for Drizzt DoUrden, prelate, if I remember correctly, he is a drow.~
  	IF ~~ THEN EXTERN ~HPRELATE~ GotoWar1
END

IF ~~ THEN BEGIN Prelate_st1
  SAY ~(Putting a hand on Viconia's shoulder) She is an old friend of <CHARNAME>...~
  	IF ~~ THEN EXTERN ~HPRELATE~ GotoWar2
END

IF ~~ THEN BEGIN adjutant
  SAY ~Mmm... now I wonder what the general needs of me? Come <CHARNAME>, let us find out.~
  	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN craumer
  SAY ~General... I'm not sure that the duke of Esmeltaran will agree to this. The city would be left defenseless.~
  	IF ~~ THEN EXTERN ~CRAUMER~ 1
END

IF ~~ THEN BEGIN kelemring_st0
  SAY ~(Bitterly) I imagine this priest has died. There is a letter and a ring here, <CHARNAME>.~
=
~"Dear Count, You know that the Temple was a place of safe keeping for an artifact ' the ring of Cyric. The great Kelemvor made it clear that this ring should not fall into the hands of followers of the Prince of Lies, and I have seen many of them among the enemy.~
=
~Unfortunately the ring's abilities are yet unknown to me, it is said that mere mortals are not permitted to learn of them. Hide this ring count Firecam I beg you. Keep it from those who covet it for their evil lord! The supreme priest of Kelemvor, Doomguide Marrius."~
  	IF ~~ THEN REPLY ~(Taking the ring) I believe I understand the power of the ring. It causes the transposition of divine and human essences.~ GOTO kelemring_st1
END

IF ~~ THEN BEGIN kelemring_st1
  SAY ~(Fearfully) Then I beg you, please, on no account must you ever don that ring... it will destroy you, that I am sure!~
		IF ~~ THEN DO ~GiveItemCreate("kelring",Player1,0,0,0)
SetGlobal("VP_Kr_Casle_Siege","GLOBAL",1)
RealSetGlobalTimer("VP_Kr_CasleSiege_T","GLOBAL",30)~ JOURNAL ~I've learned so much today! My Keldorn turned out to be a count, and he has a splendid family castle. His mother is so nice I didn't imagine that she would still be alive... and looking so elegant for her age! But that's not the half of it, the ring of Cyric that fell into my hands showed me a strange and horrible place with odd creatures, pillars of skulls... the vision sent a chill through my very soul... hopefully Keldorn didn't notice.~ EXIT
END

IF WEIGHT #-107 ~Global("VP_Kr_CyricPlot","GLOBAL",11)~ THEN BEGIN Rest0
  SAY ~<CHARNAME>, my dear friend, I am so grateful to you. You see, this business did not take up too much of our time, and we can continue our journey whenever you are ready.~
		IF ~~ THEN GOTO Rest0_B
END

IF ~~ THEN BEGIN Rest0_B
  SAY ~Firstly you must take a long rest, get a good nights sleep, who knows when we will have another opportunity. Breakfast is always served in our rooms, that is our custom, but I would like us to have breakfast together tomorrow.~
		IF ~~ THEN GOTO Rest0_C
END

IF ~~ THEN BEGIN Rest0_C
  SAY ~I will come for you my lady, when you are awake. Good night, my dearest girl (kisses you tenderly on your cheek).~
	IF ~~ THEN DO ~SetGlobal("VP_Kr_CyricPlot","GLOBAL",12)
SetGlobal("VP_LoveTalk","LOCALS",19)
ClearAllActions()
StartCutSceneMode()
Wait(4)
RestParty()
EndCutSceneMode()~ EXIT
END

//LT22 (renumerated)
IF WEIGHT #-7 ~Global("VP_LoveTalk","LOCALS",20)~ THEN BEGIN morning
	SAY ~Good morning to you! You look lovely, and that dress is so becoming on you my lady. (Holding out his hand) Come, breakfast awaits.~
		IF ~~ THEN DO ~SetGlobal("VP_LoveTalk","LOCALS",22) //the value of 21 is skipped to follow the original numbering
ClearAllActions()
StartCutSceneMode()
StartCutScene("KRCut18")~ EXIT
END

IF ~~ THEN BEGIN Imoen0
  SAY ~Miss Imoen, I am truely glad that we have finally found you. At last you are safe and free from the clutches of that evil sorcerer!~
    IF ~~ THEN EXTERN ~IMOEN2~ MeetKr0
END

IF ~~ THEN BEGIN Imoen1
  SAY ~Yes, it is forbidden to use magic in the city without the permission of the authorities, but I believe child, that Irenicus would have found a way to steal you law or no law...~
    IF ~~ THEN EXTERN ~IMOEN2~ MeetKr1
END

IF ~~ THEN BEGIN Imoen2
  SAY ~No, no, of course I did not mean that... please forgive me if I have offended you unwittingly. What I meant to say was that I am very pleased to meet you, but alas I've done so rather awkwardly. I ask you once again, please forgive me.~
    IF ~~ THEN EXTERN ~IMOEN2~ MeetKr2
END

IF ~~ THEN BEGIN LT24_st1
	SAY ~(Tenderly touching your cheek with his lips) But I ask you, <CHARNAME>, please. If Bodhi has made up her mind to end things here, you can be sure she will do her damndest no matter what. You need to be prepared for that meeting.~
		IF ~~ THEN REPLY ~(Whisper) All right, let it be as you wish, but please talk to me, don't be silent.~ GOTO LT24_st2
		IF ~~ THEN REPLY ~And what if I fall asleep? No, it's no good, we have to get out of here.~ GOTO LT24_st3
END

IF ~~ THEN BEGIN LT24_st2
	SAY ~(He quickly prepares a place for you to sleep) Here, this should be comfortable, come lay yourself down. Now what do you want to talk about?~
		IF ~~ THEN REPLY ~I do not know... You have been silent since we left Esmeltaran! You have something on your mind and it's almost as if you regret that I brought you back to life.~ GOTO LT24_st4
		IF ~~ THEN REPLY ~I get the impression that you are hiding something from me!~ GOTO LT24_st4
END

IF ~~ THEN BEGIN LT24_st3
	SAY ~(Quietly. His voice sounding a little hurt) Does my request mean absolutely nothing to you? Tell me <CHARNAME>, how often is it that I ask anything of you?~
		IF ~~ THEN REPLY ~Oh, you are so touchy! All right, all right, I'll do as you say but will you talk to me?~ GOTO LT24_st2
		IF ~~ THEN REPLY ~No, not often but often when I do something you have not asked of me... it turns bad. You did not ask me to resurrect you, and now I find myself thinking that it was all for naught!~ GOTO LT24_st4
END

IF ~~ THEN BEGIN LT24_st4
	SAY ~(Patting your cheek) It was naive of me to hope that I could conceal my... doubts. No use trying to deceive the eyes of a loving woman. You are right... to some extent, but not that I begrudge that I have returned with you, no. Kelemvor did not erase my memories of that quiet world. I don't know not why but he didn't.~
		IF ~~ THEN GOTO LT24_st4_1
END

IF ~~ THEN BEGIN LT24_st4_1
	SAY ~(Keldorn's eyes are lit with unfamiliar light) I remember it and it will always be with me, can you understand that? I wanted to return with you yes, but at the same time, part of me longed to stay there, and I can't help that, <CHARNAME>.~
		IF ~~ THEN GOTO LT24_st4_2
END
IF ~~ THEN BEGIN LT24_st4_2
	SAY ~You see, death will always be at my side. Despite numerous assassination attempts on your own life you are still unable to understand it! You are not a mere mortal, your death is different.~
		IF ~~ THEN GOTO LT24_st4_3
END

IF ~~ THEN BEGIN LT24_st4_3
	SAY ~Forgive me my dear, I should not be having this conversation with you. I should be encouraging you, giving you strength, but instead my words bring only gloom. (Keldorn gives you a sad smile.)~
		IF ~~ THEN REPLY ~I do not know what to say. I understand what you mean. Kelemvor gave me a real lecture before allowing me to talk with you, I... I should have guessed the truth myself.~ GOTO LT24_st5
		IF ~~ THEN REPLY ~I know what death is Keldorn, I bestow it on people and whilst Kelemvor stands at my back, I know I have nothing to fear.~ GOTO LT24_st6
END

IF ~~ THEN BEGIN LT24_st5
	SAY ~You do not have to say anything. I will try to make things right. (Bends down and kisses your forehead.) For now, you must rest my dear.~
		IF ~~ THEN DO ~SetGlobal("VP_LoveTalk","LOCALS",25)
ClearAllActions()
StartCutSceneMode()
Wait(4)
RestParty()
EndCutSceneMode()~ EXIT
END

IF ~~ THEN BEGIN LT24_st6
	SAY ~(With a sigh) That is not what I meant. No matter, forget it and rest for now.~
		IF ~~ THEN DO ~SetGlobal("VP_LoveTalk","LOCALS",25)
ClearAllActions()
StartCutSceneMode()
Wait(4)
RestParty()
EndCutSceneMode()~ EXIT
END

IF ~~ THEN BEGIN slayerat
  SAY ~You are shivering, my dear. I will stoke the fire, though I fear your chill is not a fault of the air.~
  IF ~~ THEN REPLY ~No, it isn't. Stand back, Keldorn, I don't know if I can protect you from this.~ DO ~SetGlobal("EndangerLovedOne","GLOBAL",7)~ GOTO slayer1
  IF ~~ THEN REPLY ~You endanger yourself being here. Move, for your own good.~ DO ~SetGlobal("EndangerLovedOne","GLOBAL",7)~ GOTO slayer1
  IF ~~ THEN REPLY ~Get away from me, fool. You endanger your worthless life!~ DO ~SetGlobal("EndangerLovedOne","GLOBAL",7)~ GOTO slayer1
END

IF ~~ THEN BEGIN slayer1
  SAY ~Your lips move, but no sound emerges. Are you sure you are well... <CHARNAME>? By the gods, <CHARNAME>!!~
  IF ~~ THEN DO ~ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))~ EXIT
END

//Bodhi Ambush - Taking Keldorn
IF ~~ THEN BEGIN vampamb0
  SAY ~Stay away from her, vampire! You and your murderous bastard of a brother had taken too many lives as is. I will not allow you to harm <CHARNAME>...~
  	IF ~~ THEN EXTERN ~BODHIAMB~ vampamb1
END

IF ~~ THEN BEGIN Alia0
  SAY ~Mother please, is not our hasty decision a surprise and a bother to you?~
  	IF ~~ THEN EXTERN ~LADYALIA~ 2
END

IF ~~ THEN BEGIN Alia1
  SAY ~(Smiles) Why so?~
  	IF ~~ THEN EXTERN ~LADYALIA~ 3
END

//IF WEIGHT #-109 ~Global("VP_LoveTalk","LOCALS",33)~ THEN BEGIN LT36_st31
//	SAY ~Demon!~ [letgo]
//		IF ~~ THEN EXTERN ~SlayerDr~ S5
//END

IF ~~ THEN BEGIN LT36_st32
	SAY ~How dare you!~
		IF ~~ THEN EXTERN ~SlayerDr~ S6
END

IF ~~ THEN BEGIN LT36_st33
	SAY ~(Perplexedly) You mean to say that the wedding...~
		IF ~~ THEN EXTERN ~SlayerDr~ S7
END

IF ~~ THEN BEGIN LT36_st34
	SAY ~I don't believe you, demon! Wait...~
		IF ~~ THEN DO ~SetGlobal("VP_LoveTalk","LOCALS",35)
SetGlobal("Kr_SlayerTalk_Fix2","GLOBAL",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("KRCut25")~ JOURNAL ~That is it. The end of my happiness, my love, my dreams. I will never become his wife. Maybe if I manage to get rid of this curse, only then. I do not know! And nobody knows, even Great Kelemvor. Why? What have I done to deserve it?~ EXIT
END

//Last SoA talk - good ending
IF ~~ THEN BEGIN LT38_st0
	SAY ~(Embracing him and touching his cheek with your lips you feel that it is wet.)~  [ifyougo]
		IF ~~ THEN REPLY ~Keldorn, you... you are crying? You have not slept at all?~ GOTO LT38_st23
		IF ~~ THEN REPLY ~You... have heard everything? Why then did you not stop me?~ GOTO LT38_st24
END

IF ~~ THEN BEGIN LT38_st23
	SAY ~If you had not taken the ring from my finger, I probably would not have woken.~
		IF ~~ THEN REPLY ~So you... why did you not say anything? Why did you not stop me?~ GOTO LT38_st24
END

IF ~~ THEN BEGIN LT38_st24
	SAY ~(Surprised) Why... what would it have changed? The decision had to be yours <CHARNAME>.~
=
~Remember what I said to you: "Whatever happens, know this - I love you", remember? Do you believe me now my love?~
		IF ~~ THEN REPLY ~Yes.~ GOTO LT38_st25
		IF ~~ THEN REPLY ~Is it not frightening to love a girl such as I?~ GOTO LT38_st26
END

IF ~~ THEN BEGIN LT38_st25
	SAY ~(Sighs) At last... please give me back the ring. Now tell me, why did you take it from me?~
		IF ~~ THEN REPLY ~(Quietly) What if I had left... for good?~ GOTO LT38_st27
		IF ~~ THEN REPLY ~I still do not understand, how can you love me? Is it not frightening to you?~ GOTO LT38_st26
END

IF ~~ THEN BEGIN LT38_st27
	SAY ~"What if..."? What do you want to hear, that I would commit suicide rather than live without you? No my love, that I would never do. I would wait for you to change your mind, if necessary, wait until time itself ran out.~
		IF ~~ THEN REPLY ~(A sob escapes from your throat) Don't say that... I am not worthy of you.~ GOTO LT38_st28
END

IF ~~ THEN BEGIN LT38_st28
	SAY ~<CHARNAME> do you truly think that I could fall in love with an unworthy woman?~
		IF ~~ THEN REPLY ~("But you did" comes to your mind, but you wisely keep your thoughts to yourself.) I am such a fool. Forgive me.~ GOTO LT38_st29
END

IF ~~ THEN BEGIN LT38_st26
	SAY ~Frightening? Yes... because I am so afraid that you will be taken from me, afraid that you may be made to take your place as a goddess!~
=
~What should I do then? I will probably be afraid now and for the rest of my life.~
		IF ~~ THEN EXTERN ~SLAYERDR~ S9
END

IF ~~ THEN BEGIN LT38_st29
	SAY ~(Embracing you tightly) Hush now, no more crying, otherwise your eyes will become red and swollen... not very becoming on such a beautiful face.~
=
~Come, give me a hug my darling and never, never run away from me again!~
		IF ~~ THEN EXTERN ~SLAYERDR~ S9
END

IF ~~ THEN BEGIN AnomLeav
  SAY ~(In a low voice) I am to blame. By Torm I should have interfered and persuaded you to put him off his plan! I knew no good would come of it.~
  	IF ~~ THEN REPLY ~I... I feel as though I have killed him with my own hands. Oh Keldorn, why is that... why do I feel so responsible?~ GOTO AnLv_st1
END

IF ~~ THEN BEGIN AnLv_st1
  SAY ~(Stroking your back) Being tormented with remorse is a quality inherent in every man of honour. To see you so distressed brings a heaviness to my own heart.~
		IF ~~ THEN EXTERN ~BANOMEN~ AnomBye
END

IF ~Global("ThiefGroup","GLOBAL",0)
Global("AsylumPlot","GLOBAL",2)
Global("VP_SailTo_Brynnlaw","GLOBAL",4)
Global("VP_SaemonSuspected","LOCALS",0)~ THEN BEGIN Brynn0
  SAY #43928 /* ~I do not trust this pirate, <CHARNAME>. His manner is that of a fool, but his behavior during the voyage betrays a cunning mind beneath.~ */
  IF ~~ THEN REPLY #43929 /* ~He has delivered us as promised. There are more important things to worry about.~ */ DO ~SetGlobal("VP_SaemonSuspected","LOCALS",1)
SetGlobal("SaemNoBodhi","GLOBAL",1)~ GOTO Brynn1
  IF ~~ THEN REPLY #43930 /* ~Kill him if you wish. I don't care either way.~ */ DO ~SetGlobal("VP_SaemonSuspected","LOCALS",1)
SetGlobal("SaemNoBodhi","GLOBAL",1)~ GOTO Brynn2
  IF ~~ THEN REPLY #43931 /* ~He seems amiable enough to me. Come, you'll feel better once off the ship.~ */ DO ~SetGlobal("VP_SaemonSuspected","LOCALS",1)
SetGlobal("SaemNoBodhi","GLOBAL",1)~ GOTO Brynn1
END

IF ~~ THEN BEGIN Brynn1
  SAY #43932 /* ~Agreed. Be prepared, this place is dangerous enough even without my suspicions of Saemon.~ */
  IF ~~ THEN DO ~MoveToPoint([863.2422])~ EXIT
END

IF ~~ THEN BEGIN Brynn2
  SAY #43933 /* ~We may need his ship for our return. No, just be on your guard. He is probably the least of our worries in this place.~ */
  IF ~~ THEN DO ~MoveToPoint([863.2422])~ EXIT
END

IF WEIGHT #-250 ~Global("VP_Spy_Letter","GLOBAL",2)~ THEN BEGIN morning
	SAY ~I think I know what it is. Riatavin wanted to go under Tethyr, but the negotiations failed. Perhaps they want to hide that?~
=
~But it's pointless! Why is to kill the refugees? What is it possibly that they could tell that diplomats do not know?~
		IF ~~ THEN DO ~SetGlobal("VP_Spy_Letter","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN siege
  SAY ~Getharic! I'm glad to see you, cousin. We'll join the defence forces at once. Right, <CHARNAME>?~
  IF ~~ THEN REPLY ~Of course, Keldorn, let's go to the gate.~ GOTO siege1
  IF ~~ THEN REPLY ~It seems we don't have much choice here.~ GOTO siege2
  IF ~~ THEN REPLY ~Keldorn, we cannot go fighting unprepared. Let's take up arms, prepare potions and spells.~ GOTO siege3
END

IF ~~ THEN BEGIN siege1
  SAY ~Thank you <CHARNAME>.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN siege2
  SAY ~Of course, you have a choice, <CHARNAME>. You may stay inside the castle walls and avoid being hurt.~
  IF ~~ THEN REPLY ~Sorry, Keldorn. Let's go to the gate.~ GOTO siege1
  IF ~~ THEN REPLY ~Keldorn, we cannot go fighting unprepared. Let's take up arms, prepare potions and spells.~ GOTO siege3
END

IF ~~ THEN BEGIN siege3
  SAY ~Okay, <CHARNAME>, in your time.~
  IF ~~ THEN EXIT
END

END