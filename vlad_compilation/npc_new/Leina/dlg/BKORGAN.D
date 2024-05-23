CHAIN BKORGAN NEJ0
~Dwarves aint much fer dancing, but they've nowt against good ale and the sight of dancing females. Must say I appreciate yer making the effort elf.~
END
 IF ~Gender(Player1,FEMALE)~ THEN EXTERN VPLEIB PCF2Leina30a
 IF ~Gender(Player1,MALE)~ THEN EXTERN VPLEIB PCM4Leina30a 

CHAIN BKORGAN NEJ1
~We aint bringing back nowt they aint seen before... or do they think elves creep in and empty their privies for 'em?~
END
 IF ~True()~ THEN EXTERN VPLEIB ClericQuest21
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB 88
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN BMAZZY NEJ2
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN BJAHEIR NEJ500 

CHAIN BKORGAN LeiDear1
~Aah, ha I knew you were keen on me there lassie. This but a spit bucket to what we dwarves build. Ye can nay knock ours down so easily. Shall we find us a room?~
EXTERN VPLEIB DeArnise9 

CHAIN BKORGAN LeiDear2
~What? Smell never got in the way before we both been rolling in Umberhulk poo or has ye forgot what's on yer boots and what was in the basement we just come from. I wanna mind an ale and a song either.~
EXTERN VPLEIB DeArnise10 

CHAIN BKORGAN LeiDear3
~Oi, just the way I like me lassies feisty. Makes the tussle worth it. We could even put on some water and have boiled rat.~
END
 IF ~Gender(Player1,MALE)~ THEN REPLY ~(*As Leina turns away in disgust you step in having overheard the dwarf's innuendoes*)... Korgan, shut your filthy mouth!~ EXTERN BKORGAN LeiDear4
 IF ~Gender(Player1,MALE)~ THEN REPLY ~(*As Leina turns away in disgust you step in having overheard the dwarf's innuendoes*)... Korgan I agree with you but I think it will take a lot of ale to get her to follow along.~ EXTERN BKORGAN LeiDear4
 IF ~Gender(Player1,MALE)~ THEN REPLY ~(*As Leina turns away in disgust you step in having overheard the dwarf's innuendoes*)... Korgan I best think you had better knock off the remarks. I don't like the idea of being the target of a fireball while I sleep.~ EXTERN BKORGAN LeiDear4
 IF ~Gender(Player1,MALE)~ THEN REPLY ~(*As Leina turns away in disgust you step in having overheard the dwarf's innuendoes*)... You best stand down now Korgan.~ EXTERN BKORGAN LeiDear4
 IF ~Gender(Player1,FEMALE)~ THEN REPLY ~(*As Leina turns away in disgust you step in having overheard the dwarf's innuendoes*)... Korgan, shut your filthy mouth!~ EXTERN BKORGAN LeiDear5a
 IF ~Gender(Player1,FEMALE)~ THEN REPLY ~(*As Leina turns away in disgust you step in having overheard the dwarf's innuendoes*)... Korgan I agree with you but I think it will take a lot of ale to get her to follow along.~ EXTERN BKORGAN LeiDear5a
 IF ~Gender(Player1,FEMALE)~ THEN REPLY ~(*As Leina turns away in disgust you step in having overheard the dwarf's innuendoes*)... Korgan I best think you had better knock off the remarks. I don't like the idea of being the target of a fireball while I sleep.~ EXTERN BKORGAN LeiDear5a
 IF ~Gender(Player1,FEMALE)~ THEN REPLY ~(*As Leina turns away in disgust you step in having overheard the dwarf's innuendoes*)... You best stand down now Korgan.~ EXTERN BKORGAN LeiDear5a 

CHAIN BKORGAN LeiDear4
~Oi, I see I have me a bit of competition here. Want the lassie all to yourself does yer? Let's toss the bow and see who wins... or is it ye wants to toss me out of the group?~
EXTERN BKORGAN LeiDear5 

CHAIN BKORGAN LeiDear5
~(*Muttering to himself as he stomps off*) See if I care, just watch your back is all I say.~
EXTERN VPLEIB DeArnise11 

CHAIN BKORGAN LeiDear5a
~(*Grinning licentiously*) Oi, I see I have me a bit of competition here... not that Korgan would be one to come between two lassies... unlessing that is we all be taking a tumble together. P'raps we can find that room and toss the bow to see who gets to go first... or is it ye wants to toss me out of the group?~
EXTERN BKORGAN LeiDear5 

CHAIN BKORGAN LeiSpher1
~Yer talkin' me language thar. Gold, ale, the power me axe brings I needs but a warm body to tumble with is always a pleasure too, shall we wrestle for the Bard here?~
END
 IF ~OR(2) !InParty("Viconia") Dead("Viconia")~ THEN REPLY ~Ye thinks ye can best me do ye dwarf? We should head for the pits at the Copper Coronet then?~ EXTERN BKORGAN LeiSpher2
 IF ~OR(2) !InParty("Viconia") Dead("Viconia")~ THEN REPLY ~I don't know she ain't too meaty. Is it worth it?~ EXTERN BKORGAN LeiSpher2
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiSpher1 

CHAIN BKORGAN LeiSpher2
~I doona wanta hurt ya besides she aint got much meat on her for ma liken either, but then worms can be fun... all wiggly like.~
EXTERN VPLEIB Sphere8a 

CHAIN BKORGAN LeiSpher3
~Ah <CHARNAME>, afore ye dismiss her can I endanger me life with her for awhile longer?~
EXTERN VPLEIB Sphere13a 

CHAIN BKORGAN LeiSpher4
~Who the blazes cares! Let's have some ale.~
END
 IF ~True()~ THEN EXTERN VPLEIB Sphere18
 IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN BYOSHIM LeiSpher1
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN BMINSC LeiSpher1
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN BEDWIN LeiSpher2
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN BJAHEIR LeiSpher1 

CHAIN BKORGAN LeiSpher5
~A haystack, ye and me bard a rollin bout and it would soon be bigger inside.~
END
 IF ~True()~ THEN EXTERN VPLEIB Sphere19
 IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN BYOSHIM LeiSpher2
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN BMINSC LeiSpher2
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN BEDWIN LeiSpher3
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN BJAHEIR LeiSpher2 

CHAIN BKORGAN LeiSpher6
~A bed... even a wee un will be room enough fer the dwarf an the bard.~
END
 IF ~True()~ THEN EXTERN VPLEIB Sphere20
 IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN BYOSHIM LeiSpher3
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN BMINSC LeiSpher3
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN BEDWIN LeiSpher4
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN BJAHEIR LeiSpher3 

CHAIN BKORGAN LeiTheat
~Idea... Who the blazes cares 'bout ideas when there's ale to be 'ad!~
END
 IF ~!IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ EXTERN BKORGAN LeiThea1
 IF ~!IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ EXTERN BKORGAN LeiThea1
 IF ~!IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ EXTERN BKORGAN LeiThea1
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiTheat
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiTheat
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiTheat
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiTheat
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiTheat
 IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN BVALYGA LeiTheat
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN BNALIA LeiTheat
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN BMAZZY LeiTheat 

CHAIN BKORGAN LeiThea3
~Music to me ears! What ever yer be planning, the dwarf is with yer.~
END
 IF ~!IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ EXTERN BKORGAN LeiThea1
 IF ~!IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ EXTERN BKORGAN LeiThea1
 IF ~!IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ EXTERN BKORGAN LeiThea1
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiThea3
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiThea3
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiThea3
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiThea3
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiThea3
 IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN BVALYGA LeiThea3
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN BNALIA LeiThea3
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN BMAZZY LeiThea3 

CHAIN BKORGAN LeiThea4
~Oh, she likes to have fun do she... what'll it be, a roll in the hay?~
END
 IF ~!IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let's get the jump on her first this time. What say you?~ EXTERN BKORGAN LeiThea1
 IF ~!IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn't said anything yet so let's do it first.~ EXTERN BKORGAN LeiThea1
 IF ~!IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Nalia") !IsValidForPartyDialogue("Valygar") !IsValidForPartyDialogue("Viconia") !IsValidForPartyDialogue("njhroth") !IsValidForPartyDialogue("njdar") !IsValidForPartyDialogue("njmelora") !IsValidForPartyDialogue("njtaffic")~ THEN REPLY ~Hey now, listen Leina is always the first to want a bath after a stinkin' battle so let's ask her first for a fluffy towel. What say you?~ EXTERN BKORGAN LeiThea1
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiThea4
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiThea4
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiThea4
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiThea4
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiThea4
 IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN BVALYGA LeiThea4
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN BNALIA LeiThea4
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN BMAZZY LeiThea4 

CHAIN BKORGAN LeiThea1
~A BATH... Yer gonna tell 'er yer want a bath! Where be the fun in that? Yer all barmy, that's what yer be, bloody barmy!~
END
 IF ~True()~ THEN EXTERN VPLEIB TheaQ151
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiThea1
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiThea1
 IF ~InParty("njdar") !Dead("njdar")~ THEN EXTERN NJDARB LeiThea1
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN EXTERN NJHROB LeiThea1
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiThea1
 IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN BVALYGA LeiThea1
 IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN BNALIA LeiThea1
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN BMAZZY LeiThea1 

CHAIN BKORGAN LeiThea2
~Aye, ther can never be too many songs 'bout Korgon, but don't yer be forgitting the bit me axe played in all the blood letting bard!~
END
 IF ~True()~ THEN EXTERN VPLEIB TheaQ161
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiThea2
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN BMAZZY LeiThea2
 IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN BKELDOR LeiThea2
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN BJAN LeiThea2
 IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN EXTERN BHAERDA LeiThea2
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN BEDWIN LeiThea2
 IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN BANOMEN LeiThea2 

CHAIN BKORGAN RadianQ1
~What?!? Ye accusing the dwarf of touching little miss perfect here?!~
= ~(*With a lecherous grin*) Ye knows I shan't just want to be touching her backside, nor would I be giving her just a little poke for one measly squeal. What I would really like...~
END
 ++ ~Korgan, language! Try and remember where we are. Leina, did this dwarf cause you to holler?~ EXTERN BKORGAN RadiaQ11
 ++ ~You're all talk Korgan. I should have known better. You'd be holding a stump right now if you had, and I doubt anyone here would be too willing to sew it back on. So, Leina, why your outburst?~ EXTERN BKORGAN RadiaQ12 

CHAIN BKORGAN RadiaQ11
~Holler?~
EXTERN VPLEIB RadianQ2 

CHAIN BKORGAN RadiaQ12
~Tell <PRO_HIMHER>.~
EXTERN VPLEIB RadianQ3 

CHAIN BKORGAN RadianQA
~<CHARNAME>, ye be talkin' me language now, so let's ditch the bard and find some ale to celebrate, for any ale that ain't drunk 'as missed it's vocation.~
EXTERN VPLEIB RadiaQ10 

CHAIN BKORGAN RadianQB
~Shar, ye be a maid after me own heart. If yer not splattered with yer enemy's blood at the end of battle ye ain't had a fight... makes fer a fine toast with fine ale. Now as fer the bard, ye lay off her as I got me eye on that one!~
EXTERN VPLEIB RadiaQ10 

CHAIN BKORGAN RadiaQ13
~<CHARNAME>, oi let the dwarf help with this. I think a keg be called fer and then we shall all have a blasphemous time.~
END
 IF ~True()~ THEN EXTERN VPLEIB RadiQ19A
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI RadianQ
 IF ~InParty("vpshart") !Dead("vpshart")~ THEN EXTERN VPSHAB RadianQ1 

CHAIN BKORGAN LeiRadia
~Bard ye be only half right. I aint got no use for water but ale and ye on me lap suits me just fine. Let's set about it.~
END
 IF ~True()~ THEN EXTERN VPLEIB RadiQ21B
 IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN BVICONI LeiRadia
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFB LeiRadia
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELB LeiRadia
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN BMINSC LeiRadia
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN BEDWIN LeiRadia