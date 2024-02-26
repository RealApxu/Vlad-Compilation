BEGIN ~BIMOEN2~

IF ~~ THEN BEGIN 0
  SAY ~(Shudders) Yes, Kachiko it was an awful place, run by an insane madman... I thought that I would never be able to sleep peacefully again... ~
  IF ~~ THEN EXTERN ~BKACHI~ 59
END

IF ~~ THEN BEGIN 1
  SAY ~My wounds are deep and my pain is not passing. I just cannot be my old self again. But I am grateful for your kind words. We... we should catch up with the rest of the group, Kachiko.~
  IF ~~ THEN EXTERN ~BKACHI~ 60
END

IF ~~ THEN BEGIN 2
  SAY ~And both are absolutely gorgeous goddesses! And, Valygar, you are leaving out the most interesting part. Which one of us you like the better?~
  IF ~~ THEN EXTERN ~BVALYGA~ TS326
END

IF ~~ THEN BEGIN 3
  SAY ~(Laughs) You do not have to answer. But I am not just gorgeous I am also generous. I will tell you something you will probably be interested in hearing. The lights were bad in Spellhold, but I think I spotted <CHARNAME> blush when she mumbled: "Valygar, the ranger, my new trusted friend..."~
  IF ~~ THEN EXTERN ~BVALYGA~ TS327
END

IF ~~ THEN BEGIN 4
  SAY ~Nope, I just made it up. I wanted to check my theory. I think you got a thing for her...~
  IF ~~ THEN EXTERN ~BVALYGA~ TS328
END

IF ~~ THEN BEGIN 5
  SAY ~Oh, really? How exciting, I know something, which has not happened yet...~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY ~Nope, Sime. I'm fine at last. Just tryin' to shake off the nightmares. I was just thinkin' on how many new faces are around. Yours for instance.~
  IF ~~ THEN EXTERN ~BSIME~ 110
END

IF ~~ THEN BEGIN 7
  SAY ~Must have been complaining about <PRO_HISHER> "little troublemaker" as usual. <CHARNAME> never noticed that I grew up, I am afraid.~
  IF ~~ THEN EXTERN ~BSIME~ 111
END

IF ~~ THEN BEGIN 8
  SAY ~Jaheira says I look silly when I smile. Well, actually her exact words were "sillier than usual".~
  IF ~~ THEN EXTERN ~BSIME~ 112
END

IF ~~ THEN BEGIN 9
  SAY ~(Pssst) I do not steal, Sime, I just look. Don't ya wanna know what each of them might be carrying around in secret?~
  IF ~~ THEN EXTERN ~BSIME~ 114
END

IF ~~ THEN BEGIN 10
  SAY ~Aerie carries a mirror and... blush!~
  IF ~~ THEN EXTERN ~BSIME~ 115
END

IF ~~ THEN BEGIN 11
  SAY ~Korgan carries a a book entitled "How to Make Friends and Influence Other People".~
  IF ~~ THEN EXTERN ~BSIME~ 116
END

IF ~~ THEN BEGIN 12
  SAY ~Guess what our somber ranger carries? A laced lady's glove!~
  IF ~~ THEN EXTERN ~BSIME~ 117
END

IF ~~ THEN BEGIN 13
  SAY ~Nope!~
  IF ~~ THEN EXTERN ~BSIME~ 118
END

IF ~~ THEN BEGIN 14
  SAY ~Oh, my dear Mystra, just look at that! Anomen has...~
  IF ~~ THEN EXTERN ~BSIME~ 119
END

IF ~~ THEN BEGIN 15
  SAY ~Cernd has some sort of seeds here. And bark. And pebbles.~
  IF ~~ THEN EXTERN ~BSIME~ 120
END

IF ~~ THEN BEGIN 16
  SAY ~Jan has a turnip, no two turnips... three... ten...~
  IF ~~ THEN EXTERN ~BSIME~ 121
END

IF ~~ THEN BEGIN 17
  SAY ~Yoshimo has nothing, but his weapons and this other stuff he is carrying for <CHARNAME>.~
  IF ~~ THEN EXTERN ~BSIME~ 122
END

IF ~~ THEN BEGIN 18
  SAY ~Kachiko has a lock of dark hair!~
  IF ~~ THEN EXTERN ~BSIME~ 123
END

IF ~~ THEN BEGIN 19
  SAY ~Nalia has some sort of blueprints. Looks like it is her castle.~
  IF ~~ THEN EXTERN ~BSIME~ 124
END

IF ~~ THEN BEGIN 20
  SAY ~Keldorn has a pipe and smoking weed. But I have never seen him smoking!~
  IF ~~ THEN EXTERN ~BSIME~ 125
END

IF ~~ THEN BEGIN 21
  SAY ~Mazzy has high-heeled shoes!~
  IF ~~ THEN EXTERN ~BSIME~ 126
END

IF ~~ THEN BEGIN 22
  SAY ~Jaheira has a portrait of Khalid.~
  IF ~~ THEN EXTERN ~BSIME~ 127
END

IF ~~ THEN BEGIN 23
  SAY ~Well, he carries Boo, cheese for Boo, peanuts for Boo and carrots for Boo...~
  IF ~~ THEN EXTERN ~BSIME~ 128
END

IF ~~ THEN BEGIN 24
  SAY ~"How I Became an Evil Overlord" by Edwin Odesseiron.~
  IF ~~ THEN EXTERN ~BSIME~ 129
END

IF ~~ THEN BEGIN 25
  SAY ~I am afraid to pick-pocket Viconia. If she wakes up, she'll kill me on spot.~
  IF ~~ THEN EXTERN ~BSIME~ 130
END

IF ~~ THEN BEGIN heist5
  SAY ~(*She looks at the two girls and walks hesitantly towards them*) Hi you two, all ready to hit the road?~
	  IF ~~ THEN EXTERN ~BMELORA~ heist12
END

IF ~~ THEN BEGIN heist6
  SAY ~I... you said there wasn’t as much gold as you were expecting so we should open the other chest, maybe there would be gems or jewels in it. Don’t you remember Melora?~ 
	  IF ~~ THEN EXTERN ~BMELORA~ heist13
END

IF ~~ THEN BEGIN heist7
  SAY ~Yeah... well... whilst you were collecting the gold you told me to go open the other one, we needed more than was in the first. It was trapped, and a pretty nasty one at that.~
=
~The explosion brought the fat lord running in, he was screaming and waving this huge sword about. So I turned us all invisible and we high tailed it out of there!~
=
~You should have seen his face, one minute he thought he’d caught us and the next... *poof*, we were gone.~
	  IF ~~ THEN EXTERN ~BMELORA~ heist14
END

IF ~~ THEN BEGIN heist8
  SAY ~Yep, we dropped it off on our way back, hid it in a flour sack so she should find it soon enough.~
	  IF ~~ THEN EXTERN ~BMELORA~ heist15
END

IF ~~ THEN BEGIN heist9
  SAY ~(*Her face turns a somewhat shade paler*) Yeah, I hope you remember real soon Melora, but don’t push it, these things have to come on their own.~
=
~(*Then shrugging  her shoulders*) Why worry about the guards Leina? I guess what it boils down to, is that they should have been more careful in choosing their employer.~ 
=
~Ooops... <CHARNAME> is looking our way, <PRO_HESHE> has an uncanny knack of knowing when I’m trying to hide something. So lets smile sweetly at <PRO_HIMHER>, girls, and make as if we’re ready to leave.~
	  IF ~~ THEN EXTERN ~BMELORA~ heist16
END

IF ~~ THEN BEGIN heist10
  SAY ~You... you mean you don’t remember anything Melora?~	
	  IF ~~ THEN EXTERN ~BMELORA~ heist18
END

IF ~~ THEN BEGIN heist11
  SAY ~We were doing ok, the guards were down easy as pie, the first chest almost empty then *BOOM*, the second one exploded and you got hit by a lump of flying chest. It must have been trapped, and a pretty nasty one at that.~
	  IF ~~ THEN EXTERN ~BMELORA~ heist19
END

IF ~~ THEN BEGIN heist12
  SAY ~I... you said there wasn’t as much gold as you were expecting so we should open the second chest, maybe there would be gems or jewels in it. Don’t you remember Melora?~ 
	  IF ~~ THEN EXTERN ~BMELORA~ heist20
END

IF ~~ THEN BEGIN heist13
  SAY ~Yeah... well... whilst you were collecting the gold you told me to go open the other one, we needed more than was in the first. It was trapped, and a pretty nasty one at that.~
=
~The explosion brought the fat lord running in, he was screaming and waving this huge sword about. So I turned us both  invisible and we high tailed it out of there!~
=
~You should have seen his face, one minute he thought he’d caught us and the next... *poof*, we were gone.~
	  IF ~~ THEN EXTERN ~BMELORA~ heist21
END

IF ~~ THEN BEGIN heist14
  SAY ~Yep, we dropped it off on our way back, hid it in a flour sack so she should find it soon enough.~
	  IF ~~ THEN EXTERN ~BMELORA~ heist22
END

IF ~~ THEN BEGIN heist15
  SAY ~(*Her face turning a somewhat shade paler*) Yeah, I hope you remember really soon but don’t push it Melora, these things have to come on their own.~
=
~Ooops... <CHARNAME> is looking our way, let’s just smile sweetly at <PRO_HIMHER> and make as if we’re ready to leave.~
	  IF ~~ THEN EXTERN ~BMELORA~ heist23
END

IF ~~ THEN BEGIN heist16
  SAY ~Mmm... maybe we should just keep out of <PRO_HISHER> way for a bit. <CHARNAME> has an uncanny knack of knowing when I’m trying to hide something.~
=
~(*Both girls immediately turn their attention to finishing their packing, confident that they can blend into the shadows and avoid any questions for the next day or two.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LeiTheat
  SAY ~(*Rolling her eyes*) What... you.. an idea?  May the gods protect us.~
 IF ~!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let’s get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn’t said anything yet so let’s do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin’ battle so let’s ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
	IF ~InParty("Taffic")
!Dead("Taffic")~ THEN EXTERN ~BTAFFIC~ LeiTheat
	IF ~InParty("Melora")
!Dead("Melora")~ THEN EXTERN ~BMELORA~ LeiTheat
	IF ~InParty("Dar")
!Dead("Dar")~ THEN EXTERN ~BDAR~ LeiTheat	
	IF ~InParty("Hrothgar")
!Dead("Hrothgar")~ THEN EXTERN ~BHROTH~ LeiTheat
	IF ~InParty("Viconia")
!Dead("Viconia")~ THEN EXTERN ~BVICONI~ LeiTheat
	IF ~InParty("Valygar")
!Dead("Valygar")~ THEN EXTERN ~BVALYGA~ LeiTheat
	IF ~InParty("Nalia")
!Dead("Nalia")~ THEN EXTERN ~BNALIA~ LeiTheat
	IF ~InParty("Mazzy")
!Dead("Mazzy")~ THEN EXTERN ~BMAZZY~ LeiTheat
	IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~BKORGAN~ LeiTheat
	IF ~InParty("Keldorn")
!Dead("Keldorn")~ THEN EXTERN ~BKELDOR~ LeiTheat
	IF ~InParty("Jan")
!Dead("Jan")~ THEN EXTERN ~BJAN~ LeiTheat
	IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~BJAHEIR~ LeiTheat
END

IF ~~ THEN BEGIN LeiThea3
  SAY ~(*Giggles*) That’ll be the day when you get one over on her, <CHARNAME>.~
 IF ~!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let’s get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn’t said anything yet so let’s do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin’ battle so let’s ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
	IF ~InParty("Taffic")
!Dead("Taffic")~ THEN EXTERN ~BTAFFIC~ LeiThea3
	IF ~InParty("Melora")
!Dead("Melora")~ THEN EXTERN ~BMELORA~ LeiThea3
	IF ~InParty("Dar")
!Dead("Dar")~ THEN EXTERN ~BDAR~ LeiThea3	
	IF ~InParty("Hrothgar")
!Dead("Hrothgar")~ THEN EXTERN ~BHROTH~ LeiThea3
	IF ~InParty("Viconia")
!Dead("Viconia")~ THEN EXTERN ~BVICONI~ LeiThea3
	IF ~InParty("Valygar")
!Dead("Valygar")~ THEN EXTERN ~BVALYGA~ LeiThea3
	IF ~InParty("Nalia")
!Dead("Nalia")~ THEN EXTERN ~BNALIA~ LeiThea3
	IF ~InParty("Mazzy")
!Dead("Mazzy")~ THEN EXTERN ~BMAZZY~ LeiThea3
	IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~BKORGAN~ LeiThea3
	IF ~InParty("Keldorn")
!Dead("Keldorn")~ THEN EXTERN ~BKELDOR~ LeiThea3
	IF ~InParty("Jan")
!Dead("Jan")~ THEN EXTERN ~BJAN~ LeiThea3
	IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~BJAHEIR~ LeiThea3
END

IF ~~ THEN BEGIN LeiThea4
  SAY ~(*Her eyes gleam with mischief*) Ooo... at last, we are going to have some fun! Spill the plan, <CHARNAME>?~
 IF ~!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let’s get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn’t said anything yet so let’s do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin’ battle so let’s ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
	IF ~InParty("Taffic")
!Dead("Taffic")~ THEN EXTERN ~BTAFFIC~ LeiThea4
	IF ~InParty("Melora")
!Dead("Melora")~ THEN EXTERN ~BMELORA~ LeiThea4
	IF ~InParty("Dar")
!Dead("Dar")~ THEN EXTERN ~BDAR~ LeiThea4	
	IF ~InParty("Hrothgar")
!Dead("Hrothgar")~ THEN EXTERN ~BHROTH~ LeiThea4
	IF ~InParty("Viconia")
!Dead("Viconia")~ THEN EXTERN ~BVICONI~ LeiThea4
	IF ~InParty("Valygar")
!Dead("Valygar")~ THEN EXTERN ~BVALYGA~ LeiThea4
	IF ~InParty("Nalia")
!Dead("Nalia")~ THEN EXTERN ~BNALIA~ LeiThea4
	IF ~InParty("Mazzy")
!Dead("Mazzy")~ THEN EXTERN ~BMAZZY~ LeiThea4
	IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~BKORGAN~ LeiThea4
	IF ~InParty("Keldorn")
!Dead("Keldorn")~ THEN EXTERN ~BKELDOR~ LeiThea4
	IF ~InParty("Jan")
!Dead("Jan")~ THEN EXTERN ~BJAN~ LeiThea4
	IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~BJAHEIR~ LeiThea4
END

IF ~~ THEN BEGIN LeiThea1
  SAY ~(*Excitedly*) Ooo, yes, let’s! She is so excited about her music, for once she has forgotten about a warm fluffy towel. I can’t wait to see her face when you suggest a bath, <CHARNAME>!~
	IF ~True()~ THEN EXTERN ~BLEINA~ TheaQ151
	IF ~InParty("Taffic")
!Dead("Taffic")~ THEN EXTERN ~BTAFFIC~ LeiThea1
	IF ~InParty("Melora")
!Dead("Melora")~ THEN EXTERN ~BMELORA~ LeiThea1
	IF ~InParty("Dar")
!Dead("Dar")~ THEN EXTERN ~BDAR~ LeiThea1	
	IF ~InParty("Hrothgar")
!Dead("Hrothgar")~ THEN EXTERN ~BHROTH~ LeiThea1
	IF ~InParty("Viconia")
!Dead("Viconia")~ THEN EXTERN ~BVICONI~ LeiThea1
	IF ~InParty("Valygar")
!Dead("Valygar")~ THEN EXTERN ~BVALYGA~ LeiThea1
	IF ~InParty("Nalia")
!Dead("Nalia")~ THEN EXTERN ~BNALIA~ LeiThea1
	IF ~InParty("Mazzy")
!Dead("Mazzy")~ THEN EXTERN ~BMAZZY~ LeiThea1
	IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~BKORGAN~ LeiThea1
	IF ~InParty("Keldorn")
!Dead("Keldorn")~ THEN EXTERN ~BKELDOR~ LeiThea1
	IF ~InParty("Jan")
!Dead("Jan")~ THEN EXTERN ~BJAN~ LeiThea1
	IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~BJAHEIR~ LeiThea1
END

IF ~~ THEN BEGIN LeiThea2
  SAY ~(*Her eyes light up*) Oh yes sing about me... you must. Imoen, the slayer of foul beast, mistress of the bow  and sleight of hand.~
	IF ~True()~ THEN EXTERN ~BLEINA~ TheaQ161
	IF ~InParty("Viconia")
!Dead("Viconia")~ THEN EXTERN ~BVICONI~ LeiThea2
	IF ~InParty("Mazzy")
!Dead("Mazzy")~ THEN EXTERN ~BMAZZY~ LeiThea2
	IF ~InParty("Keldorn")
!Dead("Keldorn")~ THEN EXTERN ~BKELDOR~ LeiThea2
	IF ~InParty("Jan")
!Dead("Jan")~ THEN EXTERN ~BJAN~ LeiThea2
	IF ~InParty("HaerDalis")
!Dead("HaerDalis")~ THEN EXTERN ~BHAERDA~ LeiThea2
	IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~BEDWIN~ LeiThea2
	IF ~InParty("Anomen")
!Dead("Anomen")~ THEN EXTERN ~BANOMEN~ LeiThea2
	IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~BKORGAN~ LeiThea2
	IF ~InParty("Aerie")
!Dead("Aerie")~ THEN EXTERN ~BAERIE~ LeiThea2
END

IF ~~ THEN BEGIN LeiRadia
  SAY ~Leina, I'm liking you more and more. With <CHARNAME> it is always push, push and sleeping in a cave or the mud. That gets pretty hard on a girls nimble fingers, not to mention her other unmentionable parts.~
	IF ~True()~ THEN EXTERN ~BLEINA~ RadiQ21B  
	IF ~InParty("Viconia")
!Dead("Viconia")~ THEN EXTERN ~BVICONI~ LeiRadia
	IF ~InParty("Taffic")
!Dead("Taffic")~ THEN EXTERN ~BTAFFIC~ LeiRadia
	IF ~InParty("Melora")
!Dead("Melora")~ THEN EXTERN ~BMELORA~ LeiRadia
	IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~BMINSC~ LeiRadia
	IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~BEDWIN~ LeiRadia
	IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~BKORGAN~ LeiRadia
 IF ~InParty("Sharteel")
!Dead("Sharteel")~ THEN EXTERN ~BSHART~ LeiRadia  
END

IF ~~ THEN BEGIN LeiRadi2
  SAY ~Minsc, you can tell Boo not to fret, I have just the thing to untangle a girl's hair when it becomes wayward and I am sure it will work just as well on hamster fur.~
	IF ~~ THEN EXTERN ~BMINSC~ LeiRadi2
END		

IF ~~ THEN BEGIN 8A
  SAY ~<CHARNAME> says I look silly when I smile. Well, actually <PRO_HISHER> exact words were "sillier than usual".~
  IF ~~ THEN EXTERN ~BSIME~ 112A
END

//////////////////////////////CHAINS///////////////////////////////////

CHAIN IF ~Global("VP_BLeina","LOCALS",2)~ THEN BIMOEN2 leinlove
  ~So, the bard Leina appears to have stolen my newly found brothers heart.~
DO ~SetGlobal("VP_BLeina","LOCALS",3)~
== BLEINA ~(*She tosses her head back and laughs*) Fear not Imoen, for your brother’s heart is still his own.~
== BIMOEN2 ~(*Studying the bard’s face*) So you telling me that this isn’t love that I sense between you and <CHARNAME>? Pull the other one Leina, I may have lost my soul but I still got my eyes!~
== BLEINA ~(*Her expression becomes serious*) Imoen, know that my love for <CHARNAME> is of the friendship kind, my true love lies with my music.~ 
=
~I will not be so naive as to trust my heart to a man again, my music keeps me content in a way that nothing else can.~
== BIMOEN2 ~(*Her eyes light up but she tries to make her face appear tragic*) Ooh, I sense a real tale of tragedy here, of love unrequited.~
=
~Please tell Leina, what manner of beast took your heart and dashed it upon the rocks, leaving it broken, scarred for the whole of eternity?~
== BLEINA ~(*She smiles at the young girls romantic interpretation of her life*) Ay Imoen, I took a man once, called him husband, loved him, worshipped him, only to have my heart broken, my dreams shattered in return.~ 
=
~When my heart finally became whole again, I promised it I would never allow it to suffer such pain again, I swore an oath never to love or to allow a man’s love to ever touch it again.~
== BIMOEN2 ~(*She looks at Leina, with genuine sadness in her face*) To never love again, how... I mean... never?~
== BLEINA ~(*She looks at Imoen and smiles*) Please Imoen, no sad face for me. Love truly doesn’t interest me anymore, I have all I need in my music. So come, be happy for me.~
== BIMOEN2 ~Don’t you miss the comfort that comes from being loved back, from knowing that someone thinks you are special?~
== BLEINA ~You of all people know the pain of having a part of you torn away. Would you want to risk the same pain when you are finally made whole again?~
=
~If I never again let a man into my heart then I know also that pain and deceit will never enter it either.~
== BIMOEN2 ~But surely you don’t believe that all men are the same, there are some good honest men in the world. <CHARNAME> to name but one.~
== BLEINA ~Ah Imoen, I see this love you hold for your brother is very dear, but I live for my music, and nothing will sway me from that.~
=
~Never again will I be tricked by false feelings and deceit again. No, I will not be fooled twice. Music has the ability to lighten the heart where love has the ability to kill it.~
== BIMOEN2 ~Love can also heal it you know Leina.~
== BLEINA ~You have much trust in love, and no doubt if I had only your happy experiences of it then I would be a different person to who I am today.~
=
~As it is, the strength and wisdom I have gained through my struggle has helped me to see that this thing called love that we all seek, is not destined for us all.~ 
=
~I swore off love to protect my heart and in truth, I have never been happier. You search for love if it is what you dream of Imoen, but do so with open eyes and remember, that  there are none so blind as those blinded by love.~
EXIT