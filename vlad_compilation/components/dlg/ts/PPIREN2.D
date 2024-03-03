ALTER_TRANS PPIRENI2 // file name
BEGIN 19 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~OR(2)
Global("Kachiko_Saved","GLOBAL",3)
Global("TT_Evil_Path","GLOBAL",3)
OR(2)
!InParty("Yoshimo")
Dead("Yoshimo")~
END

ALTER_TRANS PPIRENI2 // file name
BEGIN 19 END // state number (can be more than one)
BEGIN 1 2 3 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~InParty("Yoshimo")
!Dead("Yoshimo")~
END

EXTEND_TOP PPIRENI2 19
	IF ~OR(2)
Global("Kachiko_Saved","GLOBAL",2)
Global("Kachiko_Saved","GLOBAL",0)
	OR(2)
!InParty("Yoshimo")
Dead("Yoshimo")~ THEN DO ~EraseJournalEntry(15751)
EraseJournalEntry(15752)
EraseJournalEntry(23407)
SetGlobal("AsylumPlot","GLOBAL",25)
StartCutSceneMode()
StartCutScene("cut41zh")~ SOLVED_JOURNAL #16535 EXIT
END

ALTER_TRANS PPIRENI2 // file name
BEGIN 20 22 END // state number (can be more than one)
BEGIN 3 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~See("Yoshimo")
!Dead("Yoshimo")
!InParty("Yoshimo")~
END

ADD_TRANS_TRIGGER PPIRENI2 26
~!Global("VP_Immy_Charming","GLOBAL",1)~ DO 0

EXTEND_BOTTOM PPIRENI2 26
  IF ~Global("VP_Immy_Charming","GLOBAL",1)~ THEN GOTO NEJ69
END

ADD_TRANS_TRIGGER PPIRENI2 28
~!Global("VP_Immy_Charming","GLOBAL",1)~ DO 0

EXTEND_BOTTOM PPIRENI2 28
  IF ~Global("VP_Immy_Charming","GLOBAL",1)~ THEN GOTO NEJ69
END

ADD_TRANS_TRIGGER PPIRENI2 27
~OR(4)
Global("Kachiko_Saved","GLOBAL",3)
Global("TT_Evil_Path","GLOBAL",3)
!InParty("Yoshimo")
Dead("Yoshimo")~ DO 0

EXTEND_BOTTOM PPIRENI2 27
	IF ~Global("Kachiko_Saved","GLOBAL",2)~ THEN DO ~EraseJournalEntry(7252)
EraseJournalEntry(7253)
EraseJournalEntry(22952)
EraseJournalEntry(23306)
SetGlobal("AsylumPlot","GLOBAL",40)
StartCutSceneMode()
StartCutScene("Cut41jn")~ SOLVED_JOURNAL #7255 EXIT
END

ALTER_TRANS PPIRENI2 // file name
BEGIN 45 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~InParty("Yoshimo")
!Dead("Yoshimo")~
END

ALTER_TRANS PPIRENI2 // file name
BEGIN 45 END // state number (can be more than one)
BEGIN 1 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~InParty("Yoshimo")
Dead("Yoshimo")~
END

ALTER_TRANS PPIRENI2 // file name
BEGIN 45 END // state number (can be more than one)
BEGIN 2 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~!InParty("Yoshimo")~
END

ADD_TRANS_TRIGGER PPIRENI2 47
~Global("Kachiko_Saved","GLOBAL",2)~ DO 0

ALTER_TRANS PPIRENI2 // file name
BEGIN 47 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("AsylumPlot","GLOBAL",20)
DisplayString(Myself,50707)
Spell(Myself,DO_NOTHING)
StartCutSceneMode()
StartCutScene("Cut41gN")~
END

EXTEND_BOTTOM PPIRENI2 47
  IF ~OR(2)
!Global("Kachiko_Saved","GLOBAL",2)
Global("TT_Evil_Path","GLOBAL",3)~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",20)
DisplayString(Myself,50707)
Spell(Myself,DO_NOTHING)
StartCutSceneMode()
StartCutScene("Cut41g")~ EXIT
END

ADD_TRANS_TRIGGER PPIRENI2 66
~OR(2)
Global("Kachiko_Saved","GLOBAL",3)
Global("TT_Evil_Path","GLOBAL",3)~ DO 0

EXTEND_BOTTOM PPIRENI2 66
  IF ~Global("Kachiko_Saved","GLOBAL",2)~ THEN EXTERN ~YOSHJ~ TS209
END

APPEND ~PPIRENI2~

IF ~~ THEN BEGIN N18
  SAY ~I don’t understand what are you talking about?~
  IF ~~ THEN EXTERN ~YOSHJ~ TS210
END

IF ~~ THEN BEGIN N68
  SAY ~What did you say? Hmm... And how did you manage to avoid the geas?~
  IF ~~ THEN EXTERN ~YOSHJ~ TS211
END

IF ~~ THEN BEGIN N69
  SAY ~So, <CHARNAME>, you have been much more capable than I thought.~
  IF ~~ THEN REPLY ~I hate to impose, but could you tell me what’s going on here?~ GOTO N71
  IF ~~ THEN REPLY ~What is he talking about, Yoshimo?~ EXTERN ~YOSHJ~ TS212
  IF ~~ THEN REPLY ~I don’t know what’s going on here, but I know I don’t like it...~ GOTO N71
END

IF ~~ THEN BEGIN N71
  SAY ~I knew you were strong, but I couldn’t imagine that you are so powerful... I congratulate you, though I am really disappointed. Yoshimo was my best servant, but now he is betraying me without any obvious reason. We had a deal, and I paid him well... So, Yoshimo, you betrayed me to <CHARNAME>. I thought I had earned your soul...~
  IF ~~ THEN EXTERN ~YOSHJ~ TS212
END

IF ~~ THEN BEGIN N72
  SAY ~Are you serious? Do you think you’ve saved anybody? They are all dead... they were dead long time ago, even before I met you.~
  IF ~~ THEN EXTERN ~YOSHJ~ TS213
END

IF ~~ THEN BEGIN N73
  SAY ~(*He laughs*) No, I would think not. But don’t be so upset, Yoshimo. You couldn’t help them, and believe me they got what they deserved. Remember that, and listen all of you to the words I have to say, since your time is short.~
=
~What is life? Life is a miserable reflection of death. My life, in this world, seems so very distant... the memories clouded like those of a child. And a child I was, then... probing the darkest magic, given glimpses of the truths yet to come. Yes, look at me. And what do you see? A monster? An abomination?~
=
~(*Again he laughs*) I was an elven mage of great power, perhaps the most powerful elven mage who has ever been. For 200 years I studied the magic of Necromancy... the arts of physical and spiritual healing, the resurrection of the souls of the dead... Perhaps it is just the way of humans, but what I had seen and learned was not enough.~
=
~My studies were of the souls of the dead. Once I had seen the darker side of Necromancy, I began to speak with those souls, to animate the soulless, to quench the lives of the living. The bodies I experimented upon were already dead! If I raised their souls to again quench them, who is to say I didn’t have the right?~
=
~I craved knowledge, felt the shadow of my own mortality. And so I looked deeper, and the secrets of Black Necromancy were shown to me, and I reveled in the truths I had uncovered, and I shared them with my people.~
=
~They saw it differently than me, though... (*he laughs to himself*) They didn’t know what to think, and how could they? These were new discoveries, there were no precedents... and they listened to Her over the voice of their own reason, over my voice.~
=
~She had never loved me, She lied to me, She betrayed me, She waited for an opportunity to defame me, and when it came She viciously attacked.~
=
~I’m no monster... I know that the line between good and evil is a gray one, and perhaps all of my actions weren’t necessarily pure, but who are they to judge me? And banishment? Banishment for some questionable experiments?~
=
~They prepared to exile me, to throw me out of their number... but no! Her jealousy turned them against me, forced their hand. Her words became the evidence against me, and they sentenced me to the Void.~
=
~That place has no time as you know it. I’ve been there for years uncounted, and yet I’ve not aged at all... I feel as I did the moment they sent me there, or as when the Dark Elves first called to me.~
=
~Do you now see? Being there I can do everything I did in your world, but I am unfettered by the chains of mortality that time hangs upon us.~
=
~My reasons for returning aren’t what you’d think. I have no aspirations for power or domination like you. I need you powerful living soul to come back and pay an old debt of mine. I need your power to plan my revenge.~
  IF ~~ THEN REPLY ~I have come to the conclusion that you are really insane. This asylum is the most suitable place for you where you may continue planning your revenge... I’ll just take Imoen and be going...~ GOTO N90
  IF ~~ THEN REPLY ~The time for talk is over. Let’s finish this...~ GOTO N91
  IF ~~ THEN REPLY ~Uh... I think that I’m still gonna kill you...~ GOTO N92
END

IF ~~ THEN BEGIN N90
  SAY ~I’m very sorry, but I’m afraid that you’ll be going nowhere...~
  IF ~~ THEN GOTO N93
END

IF ~~ THEN BEGIN N91
  SAY ~Oh, I don’t think so. Perhaps our conversation is coming to an end...~
  IF ~~ THEN GOTO N93
END

IF ~~ THEN BEGIN N92
  SAY ~I suppose you won’t be able to do that...~
  IF ~~ THEN GOTO N93
END

IF ~~ THEN BEGIN N93
  SAY ~Now you will find you are powerless. I have taken precautions that you will not be damaged. Rage would be wasted.~
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN NEJ69 // from: 28.0 26.0
  SAY #44869 /* ~I bid you farewell, child of Bhaal. We shall not meet again.~ [IRENIC52] */
  IF ~~ THEN DO ~EraseJournalEntry(7252)
EraseJournalEntry(7253)
EraseJournalEntry(22952)
EraseJournalEntry(23306)
SetGlobal("AsylumPlot","GLOBAL",40)
StartCutSceneMode()
StartCutScene("Cut41jn")~ SOLVED_JOURNAL #7255 EXIT
END
END