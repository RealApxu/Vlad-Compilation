APPEND ~BEDWIN~

IF ~~ THEN BEGIN NEJ106
  SAY ~What is a bit of mud on the hem of a robe? A small price to pay for the honour of protecting such an exquisite flower. (*Besides, I am not about to let any of these imbeciles pluck the petals from this elven beauty.*)~
  IF ~~ THEN EXTERN ~BLEINA~ 217
END

IF ~~ THEN BEGIN NEJ107
  SAY ~But if you are to inspire us with your fiery renditions, then it is for me to watch that no stray arrows or spells should find their way towards you before the fire is fully aflame.~
  IF ~~ THEN EXTERN ~BLEINA~ 218
END 
  
IF ~~ THEN BEGIN NEJ108
  SAY ~Ah, but it is necessary for my piece of mind, so you will not dissuade me from remaining close beside you my elven flower... (*and for the gratitude she will feel she owes me if I do manage to save the arrogant elf’s life.*)~
  IF ~~ THEN EXTERN ~BLEINA~ 219
END

IF ~~ THEN BEGIN NEJ109
  SAY ~(*To himself*) Yet more displays of the buffoonery of these imbeciles. Still, female are always impressed by a man who looks good on the dance floor. Maybe this one will be impressed enough...~
	IF ~Gender(Player1,FEMALE)~ THEN EXTERN ~BLEINA~ PCF2Leina28a
	IF ~Gender(Player1,MALE)~ THEN EXTERN ~BLEINA~ PCM4Leina28a
END

IF ~~ THEN BEGIN LeiSpher1
	SAY ~It is about time you got rid of the nitwit bard. [I shudder to think of her casting spells.]~
	IF ~OR(2)
!InParty("Viconia")
Dead("Viconia")~ THEN EXTERN ~BLEINA~ Sphere13a
	IF ~InParty("Viconia")
!Dead("Viconia")~ THEN EXTERN ~BVICONI~ LeiSpher2
END

IF ~~ THEN BEGIN LeiSpher2
	SAY ~[Oh how did I every join this group there isn’t half a brain here even if you combine them all.]~
	IF ~True()~ THEN EXTERN ~BLEINA~ Sphere18
	IF ~InParty("Yoshimo")
!Dead("Yoshimo")~ THEN EXTERN ~BYOSHIM~ LeiSpher1
	IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~BMINSC~ LeiSpher1
END

IF ~~ THEN BEGIN LeiSpher3
	SAY ~[Now this imbecile wants something small like a peanut.]~
	IF ~True()~ THEN EXTERN ~BLEINA~ Sphere19
	IF ~InParty("Yoshimo")
!Dead("Yoshimo")~ THEN EXTERN ~BYOSHIM~ LeiSpher2
	IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~BMINSC~ LeiSpher2
END

IF ~~ THEN BEGIN LeiSpher4
	SAY ~A coffin. [Just where you should be... inside it and six foot under.]~
	IF ~True()~ THEN EXTERN ~BLEINA~ Sphere20
	IF ~InParty("Yoshimo")
!Dead("Yoshimo")~ THEN EXTERN ~BYOSHIM~ LeiSpher3
	IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~BMINSC~ LeiSpher3
END

IF ~~ THEN BEGIN melora1
	SAY ~You flatter yourself my dear. My eyes would have to be lowered to be looking at you, and Edwin Odesseiron never lowers his eyes to anyone. (*And certainly not to a female of any shape or form.*)~
	  IF ~~ THEN EXTERN ~BMELORA~ edwin2
END

IF ~~ THEN BEGIN melora2
	SAY ~The fear of losing your head to a bounty hunter has made you paranoid hafling... either that or you have delusions above your station.~
	  IF ~~ THEN EXTERN ~BMELORA~ edwin3
END

IF ~~ THEN BEGIN melora3
	SAY ~How certain are you that it wasn’t your mother who ensorceled your father?~
=
~I can’t see any self respecting man, mage or otherwise taking a half woman to his bed when there are so many full bodied, willing females to be had.~ 
=
~Your father was more likely to be the one under a spell. (*That is supposing he wasn’t deformed and this is the result of such a union.*)~ 
	  IF ~~ THEN EXTERN ~BMELORA~ edwin4
END

IF ~~ THEN BEGIN melora4
	SAY ~You’re a feisty one, for all your size! Get that from your mother, do you? That would I suppose explain the attraction your father felt for her.~ 
=
~(*After all, nothing beats having a spirited woman beneath one to heighten the moment.*)~
	  IF ~~ THEN EXTERN ~BMELORA~ edwin5
END

IF ~~ THEN BEGIN melora5
	SAY ~This... this 'female' as she calls herself, accused me of...~
	  IF ~~ THEN EXTERN ~BMELORA~ edwin7
END

IF ~~ THEN BEGIN melora6
	SAY ~For now. (*But later is another time my little harridan.*)~
		IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN melora7
	SAY ~I assure you that this wizard has not the slightest intention of rubbing a de-evolved amoeba up any way!~
	  IF ~~ THEN EXTERN ~BMELORA~ edwin10
END

IF ~~ THEN BEGIN TS106
  SAY ~I do not expect a group of unruly imbeciles to even start to understand my grandeur and finesse. I wish no stupid statements like that in the future from you, wench.~
  IF ~~ THEN EXTERN ~BKACHI~ 56
END

IF ~~ THEN BEGIN TS107
  SAY ~Or I'll destroy you, or yours precious samurai, or both of you (*yawns*).~
  IF ~~ THEN EXTERN ~BYOSHIM~ TS107
END

IF ~~ THEN BEGIN TS108
  SAY ~Fortunately to me, and unfortunately to you, we won't meet again (*finally, I get rid of these fools*).~
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN TS109
  SAY ~You will suffer yet...~
  IF ~~ THEN DO ~LeaveParty()
Enemy()~ EXIT
END

IF ~~ THEN BEGIN TS110
  SAY ~Yes, pretty face, I had noticed you and that should put a smile on any maiden's face. (This one is smarter than she looks. She appreciates me and shows appropriate reverence.)~
  IF ~~ THEN EXTERN ~BSIME~ 139
END

IF ~~ THEN BEGIN TS111
  SAY ~I am coming to the conclusion that mutual attraction is growing between the most attractive and intelligent person in this pathetic troupe and his devoted maid. (Should I have included some compliment for the wench? No, that would be giving her too much. She is gasping in anticipation already.)~
  IF ~~ THEN EXTERN ~BSIME~ 140
END

IF ~~ THEN BEGIN TS112
  SAY ~Sime, you had better sit down, least your happiness takes you off your feet. (Amazing imbecile. Comes of roaming the wilds in the company of beasts, no doubt. I should be more direct with the likes of her. But she can be educated, I hope.)~
  IF ~~ THEN EXTERN ~BSIME~ 141
END

IF ~~ THEN BEGIN TS113
  SAY ~Sime, I had devised that you, poor soul, are deeply taken by my superior charms. While it is clear that you are inferior to me I am willing to condescend and bring the relationship to consummation tonight.~
  IF ~~ THEN EXTERN ~BSIME~ 142
END

IF ~~ THEN BEGIN TS114
  SAY ~Fool woman, my look and style are perfect. How dare you to suggest an imbalance? (And I thought she had a grain of sense!)~
  IF ~~ THEN EXTERN ~BSIME~ 144
END

IF ~~ THEN BEGIN TS115
  SAY ~You do not suggest seriously that I might have pay attention to anything tree-hugging rabble have to say?~
  IF ~~ THEN EXTERN ~BSIME~ 145
END

IF ~~ THEN BEGIN TS116
  SAY ~I do not see how it is relevant to the kiss you were ordered to give me, but indeed I have an intelligent concept of the world's balance (do I even dare to hope that someone can understand a scheme so perfectly devised?)~
  IF ~~ THEN EXTERN ~BSIME~ 146
END

IF ~~ THEN BEGIN TS117
  SAY ~I can see that you are not as hopelessly foolish as I originally thought (I would have to use my charm, the wench is stubborn) but you should not be afraid of my greatness. I am a red-blooded male as well as an intellectual pinnacle of mankind.~
  IF ~~ THEN EXTERN ~BSIME~ 147
END

IF ~~ THEN BEGIN TS118
  SAY ~Elves? An outdated and almost extinct nation. The only true power lies with humans.~
  IF ~~ THEN EXTERN ~BSIME~ 148
END

IF ~~ THEN BEGIN TS119
  SAY ~You had the most annoying outburst of base emotions when I have spoken to you last time. (Must I explain everything to those imbeciles?) I am interested to know if you saw the truth of my words and are ready to apologize for your unspeakable behavior?~
  IF ~~ THEN EXTERN ~BSIME~ 150
END

IF ~~ THEN BEGIN TS120
  SAY ~I fail to understand how you can fight off your attraction to me for so long. It must be very painful to be away from my gorgeous body and not to be a receptacle of my nearly divine wisdom.~
  IF ~~ THEN EXTERN ~BSIME~ 151
END

IF ~~ THEN BEGIN TS121
  SAY ~I have suspected that you with your narrow mind were interested in some stupid joke. (I have a long memory and I shall have revenge.)~
  IF ~~ THEN EXTERN ~BSIME~ 152
END

IF ~~ THEN BEGIN TS122
  SAY ~(Is it not amazing how their attitude can change.) I am coming, wench.~
  IF ~~ THEN EXTERN ~BSIME~ 154
END

IF ~~ THEN BEGIN TS123
  SAY ~Here I am, in all my glorious beauty... What is it? Why are you dressed? And armored? And you hold your mace? Sime, my love...~
  IF ~~ THEN EXTERN ~BSIME~ 155
END

IF ~~ THEN BEGIN TS124
  SAY ~Only for the love of you my queen, my dear elven queen... You would not hurt your humble slave, will you? I am naked and defenseless before you... (*tries to cast a fireball*)~
  IF ~~ THEN EXTERN ~BSIME~ 156
END

IF ~~ THEN BEGIN TS125
  SAY ~But my sweet charming elven beauty... (How many more humiliation the wench wants me to go through?)~
  IF ~~ THEN EXTERN ~BSIME~ 157
END

IF ~~ THEN BEGIN TS126
  SAY ~I... shall... leave Sime alone!~
  IF ~~ THEN EXTERN ~BSIME~ 158
END

IF ~~ THEN BEGIN LeiTheat
  SAY ~Some of your ideas are not that good. (An idea... this simian actually thinks it has a brain!)~
 IF ~!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Jaheira")
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
 IF ~!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Jaheira")
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
 IF ~!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Jaheira")
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
	IF ~InParty("Imoen2")
!Dead("Imoen2")~ THEN EXTERN ~BIMOEN2~ LeiTheat
	IF ~InParty("HaerDalis")
!Dead("HaerDalis")~ THEN EXTERN ~BHAERDA~ LeiTheat
	IF ~InParty("Cernd")
!Dead("Cernd")~ THEN EXTERN ~BCERND~ LeiTheat
	IF ~InParty("Anomen")
!Dead("Anomen")~ THEN EXTERN ~BANOMEN~ LeiTheat
	IF ~InParty("Aerie")
!Dead("Aerie")~ THEN EXTERN ~BAERIE~ LeiTheat
END

IF ~~ THEN BEGIN LeiThea3
  SAY ~Will you be more specific and not beat around the bush! (If any having is to be done, it will certainly not be by this rabble!)~
 IF ~!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Jaheira")
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
 IF ~!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Jaheira")
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
 IF ~!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Jaheira")
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
	IF ~InParty("Imoen2")
!Dead("Imoen2")~ THEN EXTERN ~BIMOEN2~ LeiThea3
	IF ~InParty("HaerDalis")
!Dead("HaerDalis")~ THEN EXTERN ~BHAERDA~ LeiThea3
	IF ~InParty("Cernd")
!Dead("Cernd")~ THEN EXTERN ~BCERND~ LeiThea3
	IF ~InParty("Anomen")
!Dead("Anomen")~ THEN EXTERN ~BANOMEN~ LeiThea3
	IF ~InParty("Aerie")
!Dead("Aerie")~ THEN EXTERN ~BAERIE~ LeiThea3
END

IF ~~ THEN BEGIN LeiThea4
  SAY ~(*His voice barely audible*) Ha, if anyone is getting the girl it certainly won’t be any of this rabble!~
 IF ~!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Jaheira")
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
 IF ~!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Jaheira")
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
 IF ~!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Jaheira")
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
	IF ~InParty("Imoen2")
!Dead("Imoen2")~ THEN EXTERN ~BIMOEN2~ LeiThea4
	IF ~InParty("HaerDalis")
!Dead("HaerDalis")~ THEN EXTERN ~BHAERDA~ LeiThea4
	IF ~InParty("Cernd")
!Dead("Cernd")~ THEN EXTERN ~BCERND~ LeiThea4
	IF ~InParty("Anomen")
!Dead("Anomen")~ THEN EXTERN ~BANOMEN~ LeiThea4
	IF ~InParty("Aerie")
!Dead("Aerie")~ THEN EXTERN ~BAERIE~ LeiThea4
END

IF ~~ THEN BEGIN LeiThea1
  SAY ~I don’t believe it. How did I become party to such infantile behaviour?~
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
	IF ~InParty("Imoen2")
!Dead("Imoen2")~ THEN EXTERN ~BIMOEN2~ LeiThea1
	IF ~InParty("HaerDalis")
!Dead("HaerDalis")~ THEN EXTERN ~BHAERDA~ LeiThea1
	IF ~InParty("Cernd")
!Dead("Cernd")~ THEN EXTERN ~BCERND~ LeiThea1
	IF ~InParty("Anomen")
!Dead("Anomen")~ THEN EXTERN ~BANOMEN~ LeiThea1
	IF ~InParty("Aerie")
!Dead("Aerie")~ THEN EXTERN ~BAERIE~ LeiThea1
END

IF ~~ THEN BEGIN LeiThea2
  SAY ~Bah, you empty-headed girl. Edwin needs no such praise, you insolent woman. Sing of me and I’ll scorch the tongue out of your mouth.~
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
END

IF ~~ THEN BEGIN RadianQ
  SAY ~Look at the kettle calling the pot black, neither of you have a brain cell between you!~
 IF ~True()~ THEN EXTERN ~BLEINA~ RadiQ19A
 IF ~InParty("Viconia")
!Dead("Viconia")~ THEN EXTERN ~BVICONI~ RadianQ  
END

IF ~~ THEN BEGIN LeiRadia
  SAY ~(Hmm... I wonder if the time is right to suggest we save water by sharing a tub. Always nice to have someone on hand to wash those hard to reach places.)~
	IF ~~ THEN EXTERN ~BLEINA~ LeiRadE1
END

IF ~~ THEN BEGIN LeiRadi2
  SAY ~(Elf... She calls herself ELF! Nerve of the girl she is but a half breed and nothing more! Still, I'm not one to hold that against a pretty face when it comes to warming my bed.)~
	IF ~True()~ THEN EXTERN ~BLEINA~ RadiQ21B  
	IF ~InParty("Viconia")
!Dead("Viconia")~ THEN EXTERN ~BVICONI~ LeiRadia
	IF ~InParty("Taffic")
!Dead("Taffic")~ THEN EXTERN ~BTAFFIC~ LeiRadia
	IF ~InParty("Melora")
!Dead("Melora")~ THEN EXTERN ~BMELORA~ LeiRadia
	IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~BMINSC~ LeiRadia
END
END