REPLACE BKORGAN
	IF ~See(Player1)
	!StateCheck(Player1,STATE_SLEEPING)
	Global("BKorgan24","LOCALS",0)~ THEN BEGIN 109
	  SAY #18201
	  IF ~~ THEN REPLY #61034 DO ~SetGlobal("BKorgan24","LOCALS",1)~ GOTO 65
	  IF ~~ THEN REPLY #61035 DO ~SetGlobal("BKorgan24","LOCALS",1)~ GOTO 78
	END
END

APPEND ~BKORGAN~

IF ~~ THEN BEGIN NEJ0
  SAY ~Dwarves aint much fer dancing, but they've nowt against good ale and the sight of dancing females. Must say I appreciate yer making the effort elf.~
	IF ~Gender(Player1,FEMALE)~ THEN EXTERN ~BLEINA~ PCF2Leina30a
	IF ~Gender(Player1,MALE)~ THEN EXTERN ~BLEINA~ PCM4Leina30a
END

IF ~~ THEN BEGIN NEJ1
	SAY ~We aint bringing back nowt they aint seen before... or do they think elves creep in and empty their privies for 'em?~
	IF ~True()~ THEN EXTERN ~BLEINA~ ClericQuest21
	IF ~InParty("Hrothgar")
!Dead("Hrothgar")~ THEN EXTERN ~BHROTH~ 88
	IF ~InParty("Mazzy")
!Dead("Mazzy")~ THEN EXTERN ~BMAZZY~ NEJ2
	IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~BJAHEIR~ NEJ500
END

IF ~~ THEN BEGIN LeiDear1
	SAY ~Aah, ha I knew you were keen on me there lassie. This but a spit bucket to what we dwarves build. Ye can nay  knock ours down so easily. Shall we find us a room?~
	IF ~~ THEN EXTERN ~BLEINA~ DeArnise9	
END

IF ~~ THEN BEGIN LeiDear2
	SAY ~What? Smell never got in the way before we both been rolling in Umberhulk poo or has ye forgot what's on yer boots and what was in the basement we just come from. I wanna mind an ale and a song either.~
	IF ~~ THEN EXTERN ~BLEINA~ DeArnise10	
END

IF ~~ THEN BEGIN LeiDear3
	SAY ~Oi, just the way I like me lassies feisty. Makes the tussle worth it. We could even put on some water and have boiled rat.~
	IF ~Gender(Player1,MALE)~ THEN REPLY ~(*As Leina turns away in disgust you step in having overheard the dwarf's innuendoes*)... Korgan, shut your  filthy mouth!~ GOTO LeiDear4
	IF ~Gender(Player1,MALE)~ THEN REPLY ~(*As Leina turns away in disgust you step in having overheard the dwarf's innuendoes*)... Korgan I agree with you but I think it will take a lot of ale to get her to follow along.~ GOTO LeiDear4
	IF ~Gender(Player1,MALE)~ THEN REPLY ~(*As Leina turns away in disgust you step in having overheard the dwarf's innuendoes*)... Korgan I best think you had better knock off the remarks. I don't like the idea of being the target of a fireball while I sleep.~ GOTO LeiDear4
	IF ~Gender(Player1,MALE)~ THEN REPLY ~(*As Leina turns away in disgust you step in having overheard the dwarf's innuendoes*)... You best stand down now Korgan.~ GOTO LeiDear4
	IF ~Gender(Player1,FEMALE)~ THEN REPLY ~(*As Leina turns away in disgust you step in having overheard the dwarf's innuendoes*)... Korgan, shut your  filthy mouth!~ GOTO LeiDear5a
	IF ~Gender(Player1,FEMALE)~ THEN REPLY ~(*As Leina turns away in disgust you step in having overheard the dwarf's innuendoes*)... Korgan I agree with you but I think it will take a lot of ale to get her to follow along.~ GOTO LeiDear5a
	IF ~Gender(Player1,FEMALE)~ THEN REPLY ~(*As Leina turns away in disgust you step in having overheard the dwarf's innuendoes*)... Korgan I best think you had better knock off the remarks. I don't like the idea of being the target of a fireball while I sleep.~ GOTO LeiDear5a
	IF ~Gender(Player1,FEMALE)~ THEN REPLY ~(*As Leina turns away in disgust you step in having overheard the dwarf's innuendoes*)... You best stand down now Korgan.~ GOTO LeiDear5a
END

IF ~~ THEN BEGIN LeiDear4
	SAY ~Oi, I see I have me a bit of competition here. Want the lassie all to yourself does yer? Let's toss the bow and see who wins... or is it ye wants to toss me out of the group?~
	IF ~~ THEN GOTO LeiDear5
END

IF ~~ THEN BEGIN LeiDear5
	SAY ~(*Muttering to himself as he stomps off*) See if I care, just watch your back is all I say.~
	IF ~~ THEN EXTERN ~BLEINA~ DeArnise11
END

IF ~~ THEN BEGIN LeiDear5a
	SAY ~(*Grinning licentiously*) Oi, I see I have me a bit of competition here... not that Korgan would be one to come between two lassies... unlessing that is we all be taking a tumble together. P'raps we can find that room and toss the bow to see who gets to go first... or is it ye wants to toss me out of the group?~
	IF ~~ THEN GOTO LeiDear5
END

IF ~~ THEN BEGIN LeiSpher1
	SAY ~Yer talkin' me language thar. Gold, ale, the power me axe brings I needs but a warm body to tumble with is always a pleasure too, shall we wrestle for the Bard here?~
	IF ~OR(2)
!InParty("Viconia")
Dead("Viconia")~ THEN REPLY ~Ye thinks ye can best me do ye dwarf? We should head for the pits at the Copper Coronet then?~ GOTO LeiSpher2
	IF ~OR(2)
!InParty("Viconia")
Dead("Viconia")~ THEN REPLY ~I don't know she ain't too meaty. Is it worth it?~ GOTO LeiSpher2
	IF ~InParty("Viconia")
!Dead("Viconia")~ THEN EXTERN ~BVICONI~ LeiSpher1
END

IF ~~ THEN BEGIN LeiSpher2
	SAY ~I doona wanta hurt ya besides she aint got much meat on her for ma liken either, but then worms can be fun... all wiggly like.~
	IF ~~ THEN EXTERN ~BLEINA~ Sphere8a
END

IF ~~ THEN BEGIN LeiSpher3
	SAY ~Ah <CHARNAME>, afore ye dismiss her can I endanger me life with her for awhile longer?~
	IF ~~ THEN EXTERN ~BLEINA~ Sphere13a
END

IF ~~ THEN BEGIN LeiSpher4
	SAY ~Who the blazes cares! Let's have some ale.~
	IF ~True()~ THEN EXTERN ~BLEINA~ Sphere18
	IF ~InParty("Yoshimo")
!Dead("Yoshimo")~ THEN EXTERN ~BYOSHIM~ LeiSpher1
	IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~BMINSC~ LeiSpher1
	IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~BEDWIN~ LeiSpher2
	IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~BJAHEIR~ LeiSpher1
END

IF ~~ THEN BEGIN LeiSpher5
	SAY ~A haystack, ye and me bard a rollin bout and it would soon be bigger inside.~
	IF ~True()~ THEN EXTERN ~BLEINA~ Sphere19
	IF ~InParty("Yoshimo")
!Dead("Yoshimo")~ THEN EXTERN ~BYOSHIM~ LeiSpher2
	IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~BMINSC~ LeiSpher2
	IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~BEDWIN~ LeiSpher3
	IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~BJAHEIR~ LeiSpher2
END

IF ~~ THEN BEGIN LeiSpher6
	SAY ~A bed... even a wee un will be room enough fer the dwarf an the bard.~
	IF ~True()~ THEN EXTERN ~BLEINA~ Sphere20
	IF ~InParty("Yoshimo")
!Dead("Yoshimo")~ THEN EXTERN ~BYOSHIM~ LeiSpher3
	IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~BMINSC~ LeiSpher3
	IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~BEDWIN~ LeiSpher4
	IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~BJAHEIR~ LeiSpher3	
END

IF ~~ THEN BEGIN TS134
  SAY ~Shut your mouth, girl afore I shut it with me fist.~
  IF ~~ THEN EXTERN ~BSIME~ 17
END

IF ~~ THEN BEGIN TS135
  SAY ~Blasted fool! Think you can spit on me cause I take care of meself and not burden me head with worries of nonsense! I remember there was that priest of Ilmater, who thought to convert me...~
  IF ~~ THEN EXTERN ~BSIME~ 18
END

IF ~~ THEN BEGIN TS136
  SAY ~A dimwit more like. I hit low times and I told him, I'd go to his darned church and sleep there. ~
  IF ~~ THEN EXTERN ~BSIME~ 19
END

IF ~~ THEN BEGIN TS137
  SAY ~I did not stay. I slept that night in the best inn!~
  IF ~~ THEN EXTERN ~BSIME~ 20
END

IF ~~ THEN BEGIN TS138
  SAY ~Some miserly Lord came by with a load of coin to donate to the priests. His sins were plugging him. So the idiot decided to give, not to take. I persuaded him to give... to me that is. Low times were over for Korgan. And he went straight to his god's arms, just as he desired.~
  IF ~~ THEN EXTERN ~BSIME~ 21
END

IF ~~ THEN BEGIN TS139
  SAY ~I love when they fight! Come, girl you want it, do not you?~
  IF ~~ THEN EXTERN ~BSIME~ 23
END

IF ~~ THEN BEGIN TS140
  SAY ~A man cannot go fighting without his ale, fool girl. Now, enough talking!~
  IF ~~ THEN EXTERN ~BSIME~ 24
END

IF ~~ THEN BEGIN TS141
  SAY ~Ooh! Yor hit a dwarf on the head! Ha-Ha-Ha! Yor have a lot to learn!~
  IF ~~ THEN EXTERN ~BSIME~ 25
END

IF ~~ THEN BEGIN TS142
  SAY ~Hot stuff!~
  IF ~~ THEN EXTERN ~BSIME~ 26
END

IF ~~ THEN BEGIN TS143
  SAY ~Fast learner! Ouch! That hurts! You're gonna suffer... Where is me axe? (*Tumbles over, hits the floor and starts snoring.*)~
  IF ~~ THEN EXTERN ~BSIME~ 271
END

IF ~~ THEN BEGIN LeiTheat
  SAY ~Idea... Who the blazes cares 'bout ideas when there's ale to be 'ad!~
 IF ~!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
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
END

IF ~~ THEN BEGIN LeiThea3
  SAY ~Music to me ears! What ever yer be planning, the dwarf is with yer.~
 IF ~!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
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
END

IF ~~ THEN BEGIN LeiThea4
  SAY ~Oh, she likes to have fun do she... what'll it be, a roll in the hay?~
 IF ~!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ GOTO LeiThea1
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
END

IF ~~ THEN BEGIN LeiThea1
  SAY ~A BATH... Yer gonna tell 'er yer want a bath! Where be the fun in that? Yer all barmy, that's what yer be, bloody barmy!~
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
END

IF ~~ THEN BEGIN LeiThea2
  SAY ~Aye, ther can never be too many songs 'bout Korgon, but don't yer be forgitting the bit me axe played in all the blood letting bard!~
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
END

IF ~~ THEN BEGIN RadianQ1
  SAY ~What?!? Ye accusing the dwarf of touching little miss perfect here?!~
=
~(*With a lecherous grin*) Ye knows I shan't just want to be touching her backside, nor would I be giving her 	just a little poke for one measly squeal. What I would really like...~
 IF ~~ THEN REPLY ~Korgan, language! Try and remember where we are. Leina, did this dwarf cause you to holler?~ GOTO RadiaQ11
 IF ~~ THEN REPLY ~You're all talk Korgan. I should have known better. You'd be holding a stump right now if you had, and I doubt anyone here would be too willing to sew it back on. So, Leina, why your outburst?~ GOTO RadiaQ12
END

IF ~~ THEN BEGIN RadiaQ11
  SAY ~Holler?~
	IF ~~ THEN EXTERN ~BLEINA~ RadianQ2
END

IF ~~ THEN BEGIN RadiaQ12
  SAY ~Tell <PRO_HIMHER>.~
	IF ~~ THEN EXTERN ~BLEINA~ RadianQ3
END

IF ~~ THEN BEGIN RadianQA
  SAY ~<CHARNAME>, ye be talkin' me language now, so let's ditch the bard and find some ale to celebrate, for any ale that ain't drunk 'as missed it's vocation.~
 IF ~~ THEN EXTERN ~BLEINA~ RadiaQ10
END

IF ~~ THEN BEGIN RadianQB
  SAY ~Shar, ye be a maid after me own heart. If yer not splattered with yer enemy's blood at the end of battle ye ain't had a fight... makes fer a fine toast with fine ale. Now as fer the bard, ye lay off her as I got me eye on that one!~
 IF ~~ THEN EXTERN ~BLEINA~ RadiaQ10
END

IF ~~ THEN BEGIN RadiaQ13
  SAY ~<CHARNAME>, oi let the dwarf help with this. I think a keg be called fer and then we shall all have a blasphemous time.~
 IF ~True()~ THEN EXTERN ~BLEINA~ RadiQ19A
 IF ~InParty("Viconia")
!Dead("Viconia")~ THEN EXTERN ~BVICONI~ RadianQ
 IF ~InParty("Sharteel")
!Dead("Sharteel")~ THEN EXTERN ~BSHART~ RadianQ1
END

IF ~~ THEN BEGIN LeiRadia
  SAY ~Bard ye be only half right. I aint got no use for water but ale and ye on me lap suits me just fine. Let's set about it.~
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
END
END