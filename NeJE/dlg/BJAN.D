APPEND ~BJAN~

IF ~~ THEN BEGIN NEJ0
  SAY ~Now that has be marketable! I’ll have to patent it as soon as we get back to the city, call it The turnip stomp.~
  IF ~Gender(Player1,FEMALE)
!InParty("Melora")~ THEN EXTERN ~BLEINA~ PCF2Leina38a
	IF ~Gender(Player1,MALE)
!InParty("Melora")~ THEN DO ~SetGlobal("VP_Danicng_Queen","GLOBAL",2)~ EXIT
	IF ~Gender(Player1,FEMALE)
InParty("Melora")
InParty("Taffic")~ THEN EXTERN ~BMELORA~ 53
	IF ~Gender(Player1,MALE)
InParty("Melora")
InParty("Taffic")~ THEN EXTERN ~BMELORA~ 56
END

IF ~~ THEN BEGIN NEJ1
  SAY ~Ah, now this might be a good time to tell you when Jan Jansen was tavern dance champion for three years running...~
	IF ~~ THEN EXTERN ~BLEINA~ PCF2Leina27a
END

IF ~~ THEN BEGIN NEJ2
  SAY ~Oh... I can do that.~
  IF ~Gender(Player1,FEMALE)~ THEN EXTERN ~BLEINA~ PCF2Leina2a
  IF ~Gender(Player1,MALE)~ THEN EXTERN ~BLEINA~ PCM4Leina2b
	IF ~InParty("Yoshimo")~ THEN EXTERN ~BYOSHIM~ NEJ9
	IF ~InParty("Jaheira")~ THEN DO ~SetGlobal("VP_JahiNoDancing","LOCALS",1)~ EXTERN ~BJAHEIR~ NEJ497
	IF ~InParty("Nalia")
Gender(Player1,FEMALE)~ THEN EXTERN ~BNALIA~ NEJ58
	IF ~InParty("Nalia")
Gender(Player1,MALE)~ THEN EXTERN ~BNALIA~ NEJ60
	IF ~InParty("Mazzy")~ THEN EXTERN ~BMAZZY~ NEJ1
	IF ~InParty("Anomen")~ THEN EXTERN ~BANOMEN~ NEJ1
	IF ~InParty("Keldorn")~ THEN EXTERN ~BKELDOR~ NEJ1
	IF ~InParty("Viconia")~ THEN DO ~SetGlobal("VP_VickyNoDancing","LOCALS",1)~ EXTERN ~BVICONI~ NEJ0
	IF ~InParty("Korgan")~ THEN DO ~SetGlobal("VP_KorganNoDancing","LOCALS",1)~ EXTERN ~BKORGAN~ NEJ0
	IF ~InParty("Valygar")~ THEN EXTERN ~BVALYGA~ NEJ156
	IF ~InParty("Edwin")~ THEN EXTERN ~BEDWIN~ NEJ109
END

IF ~~ THEN BEGIN TS116
  SAY ~I must not forget any detail of what happened on the Island. I have come up with the most potentially profitable business. We are going to make a tourist attraction out of your story, Kachiko. Charge to enter in the crypt, see you there dead... Then Yoshimo comes and gives you that big romantic kiss and you come back to life. And then the families run in bashing each other on the head and crying for the death of both of you. My cousin Willy he'd write good play about that and...~
  IF ~~ THEN EXTERN ~BKACHI~ 68
END

IF ~~ THEN BEGIN TS117
  SAY ~You do not need the Island, girl! That the whole point! We are going to dig some cave near Athkatla and say that it all happened there...~
  IF ~~ THEN EXTERN ~BKACHI~ 69
END

IF ~~ THEN BEGIN TS118
  SAY ~None of course! But we do not need Kara-Turians. Locals like local stories. We'd give you some pretty names like Julia and Romano and your families would be say rival clans... Or may be Harpers and Shadow Thieves? Cousin Willy, he is good at that. Speaking of about cousin Willy, have I ever told you how he wrote his first play? Actually it's funny, because he did not write it... Did I tell you about that?~
  IF ~~ THEN EXTERN ~BKACHI~ 70
END

IF ~~ THEN BEGIN TS119
  SAY ~I do not recall...~
  IF ~~ THEN EXTERN ~BKACHI~ 71
END

IF ~~ THEN BEGIN TS120
  SAY ~I think I have some ointment for that scar you've got. Made from distilled turnips and orc urine - works a treat. Jansen's honour! We'd have you looking lovely in no time at all.~
  IF ~~ THEN EXTERN ~BVALYGA~ TS492
END

IF ~~ THEN BEGIN TS121
  SAY ~What scar? Why the one on your face oozing that brown mucus. Did I ever tell you the story about cousin Gustav and his incredible mucus-hurling machine? It could throw a ten-pound lump almost...~
  IF ~~ THEN EXTERN ~BVALYGA~ TS493
END

IF ~~ THEN BEGIN TS122
  SAY ~Oh mud, of course! Well the offer of the ointment is still open in case you should develop a real scar...~
  IF ~~ THEN EXTERN ~BVALYGA~ TS494
END

IF ~~ THEN BEGIN TS123
  SAY ~Strange that you should mention turnip pie... That remind me about my Aunt Marta...~
  IF ~~ THEN EXTERN ~BVALYGA~ TS496
END

IF ~~ THEN BEGIN TS124
  SAY ~Ma Jansen was never good with pies, you see. We always had to ask my aunt Marta (twice-removed aunt, mind you) to bake turnip pie for the Midwinter feast, as ma's pie usually ended up smelling of fish for some reason. Aunt Marta said once that it was because ma always puts fish in her turnip pie...~
  IF ~~ THEN EXTERN ~BVALYGA~ TS497
END

IF ~~ THEN BEGIN TS125
  SAY ~Ma got very cross because apparently that is her secret ingredient. They parted on the worst of terms and we never had Aunt Marta's turnip pie ever again.~
  IF ~~ THEN EXTERN ~BVALYGA~ TS498
END

IF ~~ THEN BEGIN TS126
  SAY ~But ma's baked turnip, braised turnip, fried turnip, turnip a-la-Rasheman, turnip stuffed with turnip and carrots are all pretty good...~
  IF ~~ THEN EXTERN ~BVALYGA~ TS499
END

IF ~~ THEN BEGIN TS127
  SAY ~See, Valygar, it reminded me the day when Uncle Podger... Oh, well. (*sighs*) It doesn't actually remind me of Uncle Podger at all. I loved... I love Lissa.~
  IF ~~ THEN EXTERN ~BVALYGA~ TS501
END

IF ~~ THEN BEGIN TS128
  SAY ~She loves him... Why, Valygar, why?~
  IF ~~ THEN EXTERN ~BVALYGA~ TS502
END

IF ~~ THEN BEGIN TS129
  SAY ~Yes, I guess so... That reminds me of my cousin Jen-Fer Jansen, who had fallen for this really tall and handsome ranger. But she was really short. She was a gnome, see? Of course he ignored her. So she went to the local witch and got a secret potion.~
  IF ~~ THEN EXTERN ~BVALYGA~ TS503
END

IF ~~ THEN BEGIN TS130
  SAY ~A secret potion to make him shorter.~
  IF ~~ THEN EXTERN ~BVALYGA~ TS504
END

IF ~~ THEN BEGIN TS131
  SAY ~Anyway, in the end she gave the potion to a big yellow dog to try if it worked. The dog had puppies and Jen-Fer made a fortune selling them as ladies' lap-doggies. It became all the rage. She and the witch now have a kennel and ship the puppies as far as Shou Lung.~
  IF ~~ THEN EXTERN ~BVALYGA~ TS505
END

IF ~~ THEN BEGIN TS132
  SAY ~Aye, Jen-Fer is. I wish my monkey smuggling business was as successful, but there is no market for monkeys lately, alas...~
  IF ~~ THEN EXTERN ~BVALYGA~ TS506
END

IF ~~ THEN BEGIN TS133
  SAY ~Now that reminds me my second cousin Amalia...~
  IF ~~ THEN EXTERN ~BSIME~ 51
END

IF ~~ THEN BEGIN TS134
  SAY ~Cousin Amalia? She did not have hair at all and wore a wig. But that did not hinder Amalia. She was a true femme fatale, just like you. You see, she was dreaming to give herself to a true artist, a man of inspiration and vision. "I shall fall in love because I fall in love" she was saying often. "And I can only fall in love with a great artist!" She wedded an old man.~
  IF ~~ THEN EXTERN ~BSIME~ 52
END

IF ~~ THEN BEGIN TS135
  SAY ~No, a turnip merchant. One of the most prominent in the trade, I must say. He had the biggest shop in the whole of Waterdeep and was exporting turnips as far as Rasheman. They eat plenty of turnip there.~
  IF ~~ THEN EXTERN ~BSIME~ 53
END

IF ~~ THEN BEGIN TS136
  SAY ~You see, she adored obstacles. The old rich man was the great obstacle on her way to true love. She was crying and acting all weird and saying that one day she is to find her true love and she will follow her calling for arts but until then she has too many obstacles. So when her husband died...~
  IF ~~ THEN EXTERN ~BSIME~ 54
END

IF ~~ THEN BEGIN TS137
  SAY ~No, she actually met another obstacle, poor soul.~
  IF ~~ THEN EXTERN ~BSIME~ 55
END

IF ~~ THEN BEGIN TS138
  SAY ~Indeed. Which reminds me...~
  IF ~~ THEN EXTERN ~BSIME~ 56
END

IF ~~ THEN BEGIN TS139
  SAY ~I was indeed. That's a craft we, the Jansens, possessed for many generations. This turnip I called Lissa. That pinkish shade on its sides reminds me of Lissa's cheeks. Just as plump too. Lissa was my fianc?e if you wish to know.~
  IF ~~ THEN EXTERN ~BSIME~ 58
END

IF ~~ THEN BEGIN TS140
  SAY ~Oh, poetry. That reminds me of the time Cousin Willy was writing that play of his. He said that the biggest problem is to get a captivating title. Uncle Lero said however that Cousin Willy's play would be just the same no matter what title he uses. So Cousin Willy called it "A Play Without a Name". Which apparently was a captivating title. Or so the critics said.~
  IF ~~ THEN EXTERN ~BSIME~ 59
END

IF ~~ THEN BEGIN TS141
  SAY ~Not exactly, the problem was that the general opinion was that the play failed to deliver what the captivating title promised. People were so mad that Cousin Willy switched the name to "A Lovestory of Teomund and Allastria Which Happened During the Times of Troubles in the Great and Prosperous City of Baldur's Gate Governed by the Most Respectable Dukes".~
  IF ~~ THEN EXTERN ~BSIME~ 60
END

IF ~~ THEN BEGIN TS142
  SAY ~Neither did the spectators. Imagine, they have to add twenty extra pages to the program, which in turn led to the shortage of paper and bread in Neverwinter and huge riots. Unfortunately because of these riots the playhouse was closed and Cousin Willy's play was prohibited.~
  IF ~~ THEN EXTERN ~BSIME~ 61
END

IF ~~ THEN BEGIN LeiTheat
  SAY ~(*A gleam comes to the old gnome’s eye*) Ha, a jest. Us, Jansens, are always up for a bit of fun, providing we’re on the giving and not receiving end that is.~
 IF ~!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let’s get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn’t said anything yet so let’s do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Keldorn")
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
END

IF ~~ THEN BEGIN LeiThea3
  SAY ~A conspiracy eh... Now that’s more like it! Nothing like a good honest conspiracy to inspire the makings of a stirring tale.~
 IF ~!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let’s get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn’t said anything yet so let’s do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Keldorn")
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
END

IF ~~ THEN BEGIN LeiThea4
  SAY ~Trickery is it... I can do that. Illusion and trickery, as you know, <CHARNAME>, is my speciality.~
 IF ~!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Oh enough with your horse play! Leina always wants a hot bath let’s get the jump on her first this time. What say you?~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Hrothgar")
!IsValidForPartyDialogue("Dar")
!IsValidForPartyDialogue("Melora")
!IsValidForPartyDialogue("Taffic")~ THEN REPLY ~Sssssh. Now listen Leina always wants a bath after a battle and she hasn’t said anything yet so let’s do it first.~ GOTO LeiThea1
 IF ~!IsValidForPartyDialogue("Keldorn")
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
END

IF ~~ THEN BEGIN LeiThea1
  SAY ~A bath, and me only having took one a tenday past! Now, if ole Jan here were to cast the illusion that we had already bathed and are all smelling like Petunias that would certainly surprise the little lady.~
=
~Unless of course we end up smelling like aunt Petunia, she has the habit of dousing herself in garlic since... Well, since ole Jan here can remember.~
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
END

IF ~~ THEN BEGIN LeiThea2
  SAY ~Ahh, a ballad about my turnip lotion. I must grow more, business will be brisk.~
	IF ~True()~ THEN EXTERN ~BLEINA~ TheaQ161
	IF ~InParty("Viconia")
!Dead("Viconia")~ THEN EXTERN ~BVICONI~ LeiThea2
	IF ~InParty("Mazzy")
!Dead("Mazzy")~ THEN EXTERN ~BMAZZY~ LeiThea2
	IF ~InParty("Keldorn")
!Dead("Keldorn")~ THEN EXTERN ~BKELDOR~ LeiThea2
END
END