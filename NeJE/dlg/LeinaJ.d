BEGIN ~LeinaJ~

IF ~~ THEN BEGIN 0
  SAY ~Govan, get out of here! You are not welcome! This is my father's estate and you have no business here.~ [leina_11]
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY ~I gave you my answer to your ludicrous proposal, my father knows my feelings towards you and so the matter ends! Whatever deal you had with him is off.~ [leina_12]
  IF ~Global("SPRITE_IS_DEADVulova","GLOBAL",1)~ THEN EXTERN ~GOVAN2~ 3
  IF ~Global("SPRITE_IS_DEADVulova","GLOBAL",0)~ THEN EXTERN ~GOVAN2~ 21
END

IF ~~ THEN BEGIN 2
  SAY ~Dead? My father is dead!~ [leina_13]
  IF ~~ THEN REPLY ~I am sorry Leina. Your father would not tell me where he had taken you. There was no other way to secure your release.~ EXTERN ~GOVAN2~ 6
  IF ~~ THEN REPLY ~Do not listen to him, Leina, if I had not killed your father, you would have remained here forever. Starvation and dehydration are not pleasant ways to die.~ EXTERN ~GOVAN2~ 6
  IF ~Global("VP_MetGovan","GLOBAL",1)~ THEN REPLY ~He was deranged, Leina, he somehow got it into his head that I was here to kill you. He would not listen and turned violent against us. Duvaine was not there, he knows nothing of the struggle.~ EXTERN ~GOVAN2~ 6
  IF ~Global("VP_MetGovan","GLOBAL",1)~ THEN REPLY ~Duvaine lies to you, Leina. Understand this, your father was not the man you knew. I had to kill him, yes, but you are well rid of him. A father who uses force to instil his will on his child is a tyrant, Leina, not a father.~ EXTERN ~GOVAN2~ 6
  IF ~Global("VP_MetGovan","GLOBAL",1)~ THEN REPLY ~He is dead Leina, that unfortunately was the cost of your freedom, but I did not murder him. Duvaine lies, you know yourself that he is not a man to be trusted.~ EXTERN ~GOVAN2~ 6
  IF ~Global("VP_MetGovan","GLOBAL",0)~ THEN REPLY ~He is dead Leina, that unfortunately was the cost of your freedom, but I did not murder him. Who would you believe me or this man here?~ EXTERN ~GOVAN2~ 6
END

IF ~~ THEN BEGIN 3
  SAY ~Never! Never will I take the name Duvaine nor the name of any man ever again!~
  IF ~~ THEN EXTERN ~GOVAN2~ 9
END

//Stage 1 - After dealing with Govan
//Working for Bodhi
//Third Path - State N4
IF WEIGHT #-6 ~Global("VP_ResqueLeina","GLOBAL",15)
!Global("BodhiJob","GLOBAL",0)~ THEN BEGIN 4
  SAY ~It seems that I am in your debt again, <CHARNAME>. Once more, I thank you for rescuing me.~
  IF ~~ THEN REPLY ~I hope I am not going to have to make a habit of rescuing you, Leina. If that proves to be the case then our acquaintance may be brief.~ DO ~SetGlobal("VP_ResqueLeina","GLOBAL",16)~ GOTO 5
  IF ~~ THEN REPLY ~You need not thank me, Leina. Duvaine was a dishonourable cad. We should leave this place before his family discover he is missing. If luck is on our side that may be a while.~ DO ~SetGlobal("VP_ResqueLeina","GLOBAL",16)~ GOTO 7
  IF ~~ THEN REPLY ~You should make haste to the tavern, Leina, before his family hear of this. Samuel will look after you I am sure.~ DO ~SetGlobal("VP_ResqueLeina","GLOBAL",16)~ GOTO 10
  IF ~~ THEN REPLY ~It would be a good idea if you got yourself back to the tavern, Leina, and do not forget what I said about telling that barkeep that I am behind you looking for my money.~ DO ~SetGlobal("VP_ResqueLeina","GLOBAL",16)~ GOTO 10
END

IF ~~ THEN BEGIN 5
  SAY ~I have no more family ties in Athkatla or anywhere else for that matter, so my travels with you will not be disrupted through any fault of mine, <CHARNAME>.~
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY ~I am anxious to be away from here, but not before letting Samuel know I am safe. Let us make our way to the tavern together.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY ~Govan may have been dishonourable, <CHARNAME>, but I did not wish him dead. He was young and may still have done some good with his life.~
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY ~No one knows what fate has around the corner for us to learn or experience. There was maybe, such a corner waiting for Govan to turn, but now it is too late.~
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY ~Let us leave this place, but if you do not mind, I would like to let Samuel know that I am well before we leave. Let us make our way to the tavern together.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10
  SAY ~I will delay you no more, <CHARNAME>. When I arrive back at the tavern I will be sure to tell Samuel who he has to thank for my rescue. He will have your gold for you. Goodbye <CHARNAME>.~
  IF ~~ THEN DO ~SetGlobal("VP_ResqueLeina","GLOBAL",17)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
MoveGlobal("AR0509","Leina",[313.437])~ EXIT
END //If PC arrives at the Five Flagons after Leina then => Scenario : The Five Flagons 2

//Stage 2 - See Dead Dad
IF WEIGHT #0 ~Global("VP_DadIsDeadEstate","LOCALS",1)~ THEN BEGIN 11
  SAY ~(*As the group exit the maze, Leina's gaze is immediately drawn to the body lying on the floor before them. She cries out and runs to kneel beside, what she instantly recognises as the bloodied figure that was once her beloved father... taking his lifeless hand in her own...*)

Fa... (*sobbing*)... fa... father, I... I miss her too you know. When I left, I... I thought I had found what you and mother had.~
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY ~I truly thought I had found a man who adored me as much as you adored her. How could I have been so blind, so... so foolish.~
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY ~Could I have saved you some of this pain if only my stupid pride had let me come home. If only...~
  IF ~GlobalLT("VP_MyFatherIsDead","LOCALS",3)~ THEN REPLY ~Leina we must leave here quickly, time is not on our side.~ GOTO 14
  IF ~GlobalLT("VP_MyFatherIsDead","LOCALS",3)~ THEN REPLY ~Leina, pull yourself together! This is not the time for what ifs. That is a fruitless road to start going down.~ GOTO 14
  IF ~GlobalLT("VP_MyFatherIsDead","LOCALS",3)~ THEN REPLY ~Leina, our business here is done, now get a grip on yourself and move!~ GOTO 14
  IF ~GlobalLT("VP_MyFatherIsDead","LOCALS",3)~ THEN REPLY ~Look, I am sorry Leina, believe me, I did all that I could to reason with him. In the end it was him or me.~ GOTO 14
  IF ~Global("VP_MyFatherIsDead","LOCALS",3)~ THEN REPLY ~Leina we must leave here quickly, time is not on our side.~ GOTO N14
  IF ~Global("VP_MyFatherIsDead","LOCALS",3)~ THEN REPLY ~Leina, pull yourself together! This is not the time for what ifs. That is a fruitless road to start going down.~ GOTO N14
  IF ~Global("VP_MyFatherIsDead","LOCALS",3)~ THEN REPLY ~Leina, our business here is done, now get a grip on yourself and move!~ GOTO N14
  IF ~Global("VP_MyFatherIsDead","LOCALS",3)~ THEN REPLY ~Look, I am sorry Leina, believe me, I did all that I could to reason with him. In the end it was him or me.~ GOTO N14
END

IF ~~ THEN BEGIN 14
  SAY ~I just needed a moment, <CHARNAME>. I do not blame you in any way for this.~
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY ~My mother's death changed him, he could not face life without her, and I think he sought to keep me here to take her place, but I hope that now he has found some peace.~
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY ~I have no idea how you found me but I will always be grateful that you did. Come, <CHARNAME>, let us begone from here!~
  IF ~Global("VP_DadIsDeadEstate","LOCALS",1)~ THEN DO ~SetGlobal("VP_DadIsDeadEstate","LOCALS",2)
SetGlobal("VP_MyFatherIsDead","LOCALS",2)~ EXIT
  IF ~Global("VP_DadIsDeadStreet","LOCALS",1)~ THEN DO ~SetGlobal("VP_DadIsDeadStreet","LOCALS",2)
SetGlobal("VP_MyFatherIsDead","LOCALS",2)~ EXIT
END //If PC accompanies Leina to the Five Flagons then => Scenario : The Five Flagons 3

IF ~~ THEN BEGIN 17
  SAY ~Never! Never will I take the name Duvaine nor the name of any man ever again!~
  IF ~~ THEN EXTERN ~GOVAN2~ 23
END

IF ~~ THEN BEGIN 18
  SAY ~I am safe Samuel and it is all down to <CHARNAME> here. My... my father sought to marry me to Duvaine to keep me in Athkatla.~
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY ~He was a changed man, Samuel, my mother's death hit him hard and I think he saw me as his last link to her.~
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 20
  SAY ~I cannot stay here Samuel, there are too many memories, too much pain, too much sadness... why does it persist in following me so!~
  IF ~~ THEN EXTERN ~FFBART~ NEJ98
END

IF ~~ THEN BEGIN 21
  SAY ~<CHARNAME> has agreed to take me with <PRO_HIMHER> when <PRO_HESHE> leaves. So this is goodbye, Samuel, your memory will always hold a place in my heart, you I shall never forget.~
  IF ~~ THEN EXTERN ~FFBART~ NEJ72
END

IF ~~ THEN BEGIN 22
  SAY ~Thank you for that, Samuel. It is good to know I have a home here if ever I feel the need. Goodbye, my friend.~
  IF ~Global("VP_Met_FFBarkeep","GLOBAL",1)~ THEN EXTERN ~FFBART~ NEJ74
  IF ~Global("VP_Met_FFBarkeep","GLOBAL",0)~ THEN EXIT
END

IF ~~ THEN BEGIN 23
  SAY ~One moment, Duke, your son abducted me and held me prisoner with the intention of forcing a marriage between himself and I.~
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY ~His death was an unfortunate accident, he refused to see reason and attacked when <CHARNAME> here attempted my rescue.~
  IF ~~ THEN EXTERN ~AUBERON~ 18
END

//Stage 3 - You assassinated my father
//After reporting to Bodhi
//SetGlobal("VP_MyFatherIsDead","LOCALS",3)
IF ~~ THEN BEGIN 25
  SAY ~You... you assassinated my father, <CHARNAME>? You were at the estate on the orders of that... that creature! What are you?~
  IF ~~ THEN REPLY ~Yes, Leina, I went on Bodhi's orders but I hoped for news of your whereabouts as well. Your father thought I had come for you and attacked me, there was no reasoning with him, believe me, I would have spared him.~ GOTO 26
  IF ~~ THEN REPLY ~I had gone there planning only to frighten him, but he would not listen to me, you saw the kind of man he had become, Leina.~ GOTO 26
  IF ~~ THEN REPLY ~It was regrettable. I had no quarrel with your father, but his death was my only means of achieving my own goal and your freedom.~ GOTO 26
  IF ~~ THEN REPLY ~You have your freedom, Leina. If your father were still alive you would probably be wed to Duvaine by now. Is that what you would have wanted?~ GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY ~But you murdered him and had me believe it was necessary for my rescue. What else was a lie, <CHARNAME>? Was he really deranged and attacked you or did you just not give him the chance to speak?~
  IF ~~ THEN REPLY ~Come on, Leina! The man abducted you, he was going to force you into a marriage with a man you detested. Does that sound like the actions of the same man who loved you and raised you?~ GOTO 27
  IF ~~ THEN REPLY ~If he had any thought for your happiness, Leina, would he have done what he did? Would the father you knew and loved do that to you, his own daughter, if he was in his right mind, would he have?~ GOTO 27
  IF ~~ THEN REPLY ~You said yourself he was a changed man, since the death of your mother. Tell me, Leina, would he have behaved so abominably towards you had she been alive? I think not, his grief had twisted him into what he had become.~ GOTO 27
  IF ~~ THEN REPLY ~Be grateful, Leina. You father had become a bitter and twisted man, who selfishly sought for his daughter to fill the place of his wife.~ GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY ~I know what you say is true, <CHARNAME>, but that is no excuse for what you did. You murdered to get what you wanted, that is a thousand times worse than what Duvaine did.~
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY ~My only consolation is that he is now free of his grief and torment, I would not have wished him to continue his life in so much anguish.~
  IF ~!Global("BodhiJob","GLOBAL",0)~ THEN GOTO 29
  IF ~Global("BodhiJob","GLOBAL",0)
Global("VP_Guild_Attacked","GLOBAL",1)~ THEN GOTO N29
END

IF ~~ THEN BEGIN 29
  SAY ~What I cannot forgive is the fact that he died to appease that creature you serve, nor shall I forget it!~
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY ~This is too painful for me to face at this time, <CHARNAME>, for now, I do not wish to speak any further with you.~
  IF ~~ THEN DO ~SetGlobal("VP_MyFatherIsDead","LOCALS",3)~ EXTERN ~BODHI~ 65
END

IF ~~ THEN BEGIN 31
  SAY ~You were at the estate on the orders of that... that creature, <CHARNAME>! What are you?~
  IF ~~ THEN REPLY ~Yes, I went on Bodhi's orders but I hoped for news of your whereabouts as well. Come on, Leina! Your father abducted you, he was going to force you into a marriage with a man you detested. Does that sound like the actions of the same man who loved you and raised you?~ GOTO 32
  IF ~~ THEN REPLY ~You have your freedom, Leina. If your father were still there you would probably be wed to Duvaine by now. Is that what you would have wanted?~ GOTO 32
  IF ~~ THEN REPLY ~Be grateful, Leina. You father had become a bitter and twisted man, who selfishly sought for his daughter to fill the place of his wife. If he had any thought for your happiness, Leina, would he have done what he did? Would the father you knew and loved do that to you, his own daughter, if he was in his right mind, would he have?~ GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY ~I know what you say is true, <CHARNAME>, but that is no excuse for you. You agreed to murder my father to get what you want, that is a thousand times worse than what Duvaine did.~
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33
  SAY ~My only consolation is that my father is alive, but what I cannot forgive is the fact that you act to appease that creature you serve, nor shall I forget it!~
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34
  SAY ~This is too painful for me to face at this time, <CHARNAME>, for now, I do not wish to speak any further with you.~
  IF ~~ THEN EXTERN ~BODHI~ 65
END

IF ~~ THEN BEGIN 35
  SAY ~Ulcaster is naught but a ruin, <CHARNAME>, and so far away. Surely it has been plundered many times? There cannot possibly be anything left to find.~
  IF ~True()~ THEN EXTERN ~HROTHJ~ 60
  IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ546
  IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ260
  IF ~InParty("Kachiko")
InParty("Yoshimo")
!Dead("Kachiko")~ THEN EXTERN ~KACHIJ~ NEJ57
  IF ~InParty("Yoshimo")
InParty("Kachiko")
!Dead("Yoshimo")~ THEN EXTERN ~YOSHJ~ NEJ152
  IF ~InParty("Kachiko")
!InParty("Yoshimo")
!Dead("Kachiko")~ THEN EXTERN ~KACHIJ~ NEJ58
END

IF ~~ THEN BEGIN 36
  SAY ~I marvel at walking beside Hrothgar of Easthaven, and now I have the chance to walk in the past! This is all too much like a dream.~
  IF ~True()~ THEN EXTERN ~TILORN~ 19
  IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ261
  IF ~InParty("Kachiko")
InParty("Yoshimo")
!Dead("Kachiko")~ THEN EXTERN ~KACHIJ~ NEJ59
  IF ~InParty("Yoshimo")
InParty("Kachiko")
!Dead("Yoshimo")~ THEN EXTERN ~YOSHJ~ NEJ153
END

IF WEIGHT #3 ~GlobalGT("VP_Enable_Flirts","LOCALS",0)
GlobalLT("VP_Enable_Flirts","LOCALS",3)
Global("VP_MyFlirt_Is_Over","LOCALS",0)
!Global("VP_Leina_Samuel","GLOBAL",2)
!Global("VP_Leina_Samuel","GLOBAL",4)
!Global("VP_Leina_Samuel","GLOBAL",6)
!Global("VP_InHalruaa","GLOBAL",1)~ THEN BEGIN 37
  SAY ~Yes... you need me for something?~	
/*1*/ IF ~Global("VP_Flirt_Option_1","LOCALS",0)~ THEN REPLY ~(*You deliberately slow your pace so's to fall in alongside Leina.*)~ DO ~SetGlobal("VP_Flirt_Option_1","LOCALS",1)~ GOTO 38  // => Leina response 1.1
/*1*/ IF ~Global("VP_Flirt_Option_1","LOCALS",1)~ THEN REPLY ~(*You deliberately slow your pace so's to fall in alongside Leina.*)~ DO ~SetGlobal("VP_Flirt_Option_1","LOCALS",2)~ GOTO 39 // => Leina response 1.2
/*1*/ IF ~Global("VP_Flirt_Option_1","LOCALS",2)~ THEN REPLY ~(*You deliberately slow your pace so's to fall in alongside Leina.*)~ DO ~SetGlobal("VP_Flirt_Option_1","LOCALS",0)~ GOTO 40 // => Leina response 1.3
/*2*/ IF ~Global("VP_Flirt_Option_2","LOCALS",0)~ THEN REPLY ~(*You start to hum to yourself as you move position so that you end up walking behind Leina.*)~ DO ~SetGlobal("VP_Flirt_Option_2","LOCALS",1)~ GOTO 41 // => Leina response 2.1
/*2*/ IF ~Global("VP_Flirt_Option_2","LOCALS",1)~ THEN REPLY ~(*You start to hum to yourself as you move position so that you end up walking behind Leina.*)~ DO ~SetGlobal("VP_Flirt_Option_2","LOCALS",2)~ GOTO 42 // => Leina response 2.2
/*2*/ IF ~Global("VP_Flirt_Option_2","LOCALS",2)~ THEN REPLY ~(*You start to hum to yourself as you move position so that you end up walking behind Leina.*)~ DO ~SetGlobal("VP_Flirt_Option_2","LOCALS",0)~ GOTO 43 // => Leina response 2.3
/*3*/ IF ~Global("VP_Flirt_Option_3","LOCALS",0)~ THEN REPLY ~(*You flash a smile at Leina and then look away quickly.*)~ DO ~SetGlobal("VP_Flirt_Option_3","LOCALS",1)~ GOTO 44 // => Leina response 3.1
/*3*/ IF ~Global("VP_Flirt_Option_3","LOCALS",1)~ THEN REPLY ~(*You flash a smile at Leina and then look away quickly.*)~ DO ~SetGlobal("VP_Flirt_Option_3","LOCALS",2)~ GOTO 45 // => Leina response 3.2
/*3*/ IF ~Global("VP_Flirt_Option_3","LOCALS",2)~ THEN REPLY ~(*You flash a smile at Leina and then look away quickly.*)~ DO ~SetGlobal("VP_Flirt_Option_3","LOCALS",0)~ GOTO 46 // => Leina response 3.3
/*4*/ IF ~Global("VP_Flirt_Option_4","LOCALS",0)~ THEN REPLY ~(*You flash a smile at Leina and allow your eye to linger a little longer on the beauty of her exotic features.*)~ DO ~SetGlobal("VP_Flirt_Option_4","LOCALS",1)~ GOTO 47 // => Leina response 4.1
/*4*/ IF ~Global("VP_Flirt_Option_4","LOCALS",1)~ THEN REPLY ~(*You flash a smile at Leina and allow your eye to linger a little longer on the beauty of her exotic features.*)~ DO ~SetGlobal("VP_Flirt_Option_4","LOCALS",2)~ GOTO 48 // => Leina response 4.2
/*4*/ IF ~Global("VP_Flirt_Option_4","LOCALS",2)~ THEN REPLY ~(*You flash a smile at Leina and allow your eye to linger a little longer on the beauty of her exotic features.*)~ DO ~SetGlobal("VP_Flirt_Option_4","LOCALS",0)~ GOTO 49 // => Leina response 4.3
/*5*/ IF ~Global("VP_Flirt_Option_5","LOCALS",0)~ THEN REPLY ~(*You whistle appreciatively at Leina.*)~ DO ~SetGlobal("VP_Flirt_Option_5","LOCALS",1)~ GOTO 50 // => Leina response 5.1
/*5*/ IF ~Global("VP_Flirt_Option_5","LOCALS",1)~ THEN REPLY ~(*You whistle appreciatively at Leina.*)~ DO ~SetGlobal("VP_Flirt_Option_5","LOCALS",2)~ GOTO 51 // => Leina response 5.2
/*5*/ IF ~Global("VP_Flirt_Option_5","LOCALS",2)~ THEN REPLY ~(*You whistle appreciatively at Leina.*)~ DO ~SetGlobal("VP_Flirt_Option_5","LOCALS",0)~ GOTO 52 // => Leina response 5.3
/*6*/ IF ~Global("VP_Flirt_Option_6","LOCALS",0)~ THEN REPLY ~Hey Leina, watch this ... *you pull a funny face as she turns around.*~ DO ~SetGlobal("VP_Flirt_Option_6","LOCALS",1)~ GOTO 53 // => Leina response 6.1
/*6*/ IF ~Global("VP_Flirt_Option_6","LOCALS",1)~ THEN REPLY ~Hey Leina, watch this ... *you pull a funny face as she turns around.*~ DO ~SetGlobal("VP_Flirt_Option_6","LOCALS",2)~ GOTO 54 // => Leina response 6.2
/*6*/ IF ~Global("VP_Flirt_Option_6","LOCALS",2)~ THEN REPLY ~Hey Leina, watch this ... *you pull a funny face as she turns around.*~ DO ~SetGlobal("VP_Flirt_Option_6","LOCALS",0)~ GOTO 55 // => Leina response 6.3
/*7*/ IF ~Global("VP_Flirt_Option_7","LOCALS",0)~ THEN REPLY ~(*You wave to Leina.*)~ DO ~SetGlobal("VP_Flirt_Option_7","LOCALS",1)~ GOTO 56 // => Leina response 7.1
/*7*/ IF ~Global("VP_Flirt_Option_7","LOCALS",1)~ THEN REPLY ~(*You wave to Leina.*)~ DO ~SetGlobal("VP_Flirt_Option_7","LOCALS",2)~ GOTO 57 // => Leina response 7.2
/*7*/ IF ~Global("VP_Flirt_Option_7","LOCALS",2)~ THEN REPLY ~(*You wave to Leina.*)~ DO ~SetGlobal("VP_Flirt_Option_7","LOCALS",0)~ GOTO 58 // => Leina response 7.3
/*8*/ IF ~Global("VP_Flirt_Option_8","LOCALS",0)~ THEN REPLY ~Uh... nothing Leina, we should keep walking.~ DO ~SetGlobal("VP_Flirt_Option_8","LOCALS",1)~ GOTO 59 // => Leina response 8.1
/*8*/ IF ~Global("VP_Flirt_Option_8","LOCALS",1)~ THEN REPLY ~Uh... nothing Leina, we should keep walking.~ DO ~SetGlobal("VP_Flirt_Option_8","LOCALS",2)~ GOTO 60 // => Leina response 8.2
/*8*/ IF ~Global("VP_Flirt_Option_8","LOCALS",2)~ THEN REPLY ~Uh... nothing Leina, we should keep walking.~ DO ~SetGlobal("VP_Flirt_Option_8","LOCALS",0)~ GOTO 61 // => Leina response 8.3
END

IF ~~ THEN BEGIN 38
  SAY ~(*She quickens her step*)

Catch me if you can.

(*Then laughing she steps briskly away from you.*)~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 39
  SAY ~(*She looks at you with a bemused look in her eyes*)... So, the pace you have set has become too much for even you to keep up <CHARNAME>.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 40
  SAY ~(*She looks at you inquisitively but says nothing... nor does she alter her step, allowing you continue to walk beside her in silence.*)~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 41
  SAY ~(*Turning to you and laughing, she puts her hands over her ears*)

Please <CHARNAME>... that 'used' to be one of my favourite tunes!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42
  SAY ~(*She turns to you smiling*)

Take my advice <CHARNAME>, never... ever serenade a girl if you wish to win her heart.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 43
  SAY ~Is this a new battle tune I hear? Such a noise will surely instill fear in the heart of the bravest of our foes... assuming that it doesn't deafen them first?~
  IF ~~ THEN EXIT
END
										
IF ~~ THEN BEGIN 44
  SAY ~(*She smiles to herself but says nothing.*)~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 45
  SAY ~Do not be so quick to turn away <CHARNAME>, a friendly smile is always welcome.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 46
  SAY ~(*She chuckles to herself*)

Now that is a wonder to behold, the heir of god afraid to meet the eye of a simple bard.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 47
  SAY ~(*She does a twirl*)

So do you like what you see <CHARNAME>?

(*Then laughing she carries on with what she was doing.*)~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 48
  SAY ~(*Her eyes meet and hold your gaze*)

I find your smile pleasant enough <CHARNAME>, but please, I would appreciate it if you didn't stare quite so hard.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 49
  SAY ~(*She smiles and winks at you*)

Nice smile <CHARNAME>, but did no one teach you that it is rude to stare!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 50
  SAY ~(*A look of distain crosses her face*) Men!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 51
  SAY ~(*To your surprise Leina whistles back at you and tossing her head she turns away chuckling to herself.*)~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 52
  SAY ~(*She laughs as she bobs a curtsey to you*)

The lady takes that as a compliment and says thank you kind sir.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 53
  SAY ~(*Leina sticks out her tongue and wrinkles her nose at you in return*.)~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 54
  SAY ~You do know don't you, that if the wind changes your face will stay like that!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 55
  SAY ~(*She looks at you, trying to contain a smile*) You should seriously consider seeing a healer soon... that looks like a nasty affliction that you have there <CHARNAME>.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 56
  SAY ~(*To your surprise Leina grins broadly and blows you a kiss.*)~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 57
  SAY ~(*Leina quickly checks behind her before she turns and waves back at you.*)~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 58
  SAY ~(*She looks at you with a forlorn look on her face, but she can not disguise the twinkle in those beautiful almond shaped eyes of hers as she waves back*)

You leaving so soon <CHARNAME>? I am going to miss you.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 59
  SAY ~(*Quietly to herself*) Nothing irritates me more than a man who will not say what is on his mind!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 60
  SAY ~I wasn't aware that I had stopped.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 61
  SAY ~(*Smiling to herself*) How quaint... it would appear that <CHARNAME> is the shy retiring  type.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 62
  SAY ~Think before you make any rash decisions <CHARNAME>, for the mages here will not take kindly if one of their bodies goes missing.~
	IF ~True()~ THEN EXIT
	IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~KORGANJ~ NEJ224
	IF ~InParty("Jan")
!Dead("Jan")~ THEN EXTERN ~JANJ~ NEJ200
	IF ~InParty("Valygar")
!Dead("Valygar")~ THEN EXTERN ~VALYGARJ~ NEJ166
	IF ~InParty("Anomen")
!Dead("Anomen")~ THEN EXTERN ~ANOMENJ~ NEJ312
	IF ~InParty("Keldorn")
!Dead("Keldorn")~ THEN EXTERN ~KELDORJ~ NEJ255
	IF ~InParty("Dar")
!Dead("Dar")~ THEN EXTERN ~DARJ~ 70
	IF ~InParty("Sime")
!Dead("Sime")~ THEN EXTERN ~SIMEJ~ NEJ119
	IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~EDWINJ~ NEJ199
	IF ~InParty("Nalia")
!Dead("Nalia")~ THEN EXTERN ~NALIAJ~ NEJ333
	IF ~InParty("Aerie")
!Dead("Aerie")~ THEN EXTERN ~AERIEJ~ NEJ235
	IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ331
	IF ~InParty("Yoshimo")
!Dead("Yoshimo")~ THEN EXTERN ~YOSHJ~ NEJ156
	IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ634
END

IF ~~ THEN BEGIN 63
  SAY ~But just think Melora, it would also be down on our heads and would you really want to be buried along side so many mages?~
  IF ~~ THEN EXTERN ~MELORAJ~ 22
END

IF ~~ THEN BEGIN 64
  SAY ~Then, for Melora's peace of mind we are in agreement. We don't want to bring the academy down around anyone's head today.~
 	IF ~True()~ THEN EXTERN ~HROTHJ~ 323
  IF ~InParty("Taffic")
!Dead("Taffic")~ THEN EXTERN ~TAFFICJ~ 28
END

IF ~~ THEN BEGIN 65
  SAY ~I have never seen the likes of it before <CHARNAME>, not even in our present time. I wonder how such technology comes to be found so far in the past?~
 	IF ~True()~ THEN EXTERN ~HROTHJ~ 335
 	IF ~InParty("Taffic")
!Dead("Taffic")~ THEN EXTERN ~TAFFICJ~ leveler1
 	IF ~InParty("Melora")
!Dead("Melora")~ THEN EXTERN ~MELORAJ~ 25
 	IF ~InParty("Jan")
!Dead("Jan")~ THEN EXTERN ~JANJ~ NEJ201
END

IF ~~ THEN BEGIN 66
  SAY ~It's all turned out so horribly wrong Samuel... Govan... he is dead! He sought to use me to expand his own fortune... but I never wished him dead Samuel!~
  IF ~~ THEN GOTO 67
END

IF ~~ THEN BEGIN 67
  SAY ~You have to believe me... if I'd known my return to Athkatla was going to cause so much heartache, I would never have come back.~
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 68
  SAY ~You are a good man Samuel and it is already agreed that I will travel with this group. I am only sorry I have brought this mess to you door.~
  IF ~~ THEN EXTERN ~FFBART~ NEJ100
END

IF ~~ THEN BEGIN 69
  SAY ~(*She kisses the hafling man fondly*)... Then this is goodbye Samuel, thank you for all that you have done, it is good to know I have a home here if ever I feel the need... your memory will always hold a place in my heart, you I shall never forget. Goodbye my friend.~
  IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 70
  SAY ~(*She looks about the room and sighs*)... This lowly inn has afforded me more comfort and warmth than any place I have called home... I will not stay away long.~
  IF ~~ THEN EXTERN ~FFBART~ NEJ103
END

IF ~~ THEN BEGIN 71
  SAY ~(*She gives Samuel an affectionate hug*)... Always for you my dear friend... it's good to see your smiling face again Samuel.~
  IF ~~ THEN EXTERN ~FFBART~ NEJ157
END

IF ~~ THEN BEGIN 72
  SAY ~(*She laughs softly*) No you needn't fret for me Samuel, I can assure you I am well. In fact, I couldn't wish for better company than this group. If it were not true then the choice to leave would be mine.~
  IF ~~ THEN EXTERN ~FFBART~ NEJ158
END

IF ~~ THEN BEGIN 73
  SAY ~As if I would not come and say hello to the man who has watched and worried over me as though he were my father. Speaking of fathers, have you seen my father Samuel... is he... is he well?~
  IF ~~ THEN EXTERN ~FFBART~ NEJ162
END

IF ~~ THEN BEGIN 74
  SAY ~(*She sighs*) Your words worry me my friend. He was clearly a broken man when last we spoke, he seemed fearful for my life, afraid I would not be safe if he were not there to watch over me.~
  IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 75
  SAY ~I know that he holds my mother's people responsible for her death, and somehow in his deluded mind he thought me to be in danger also... I fear for what he may do in his present state of mind.~
  IF ~~ THEN EXTERN ~FFBART~ NEJ163
END

IF ~~ THEN BEGIN 76
  SAY ~As if I would not come and say hello to the man who has watched and worried over me as though he were my father.~
  IF ~~ THEN GOTO 77
END

IF ~~ THEN BEGIN 77
  SAY ~To be honest Samuel... you became more of a father to me than my own since my return to Athkatla. Even after all that he did, trying to force a marriage with Duvaine, I still find it very painful being here and knowing that he is no longer just across the way.~
  IF ~~ THEN EXTERN ~FFBART~ NEJ163
END

IF ~~ THEN BEGIN 78
  SAY ~(*She pales and then her face takes on a flush of anger*)... Bjorn here... and with the gall to refer to me as his wife! I ceased being wife to that bastard the day he walked out on me...~
  IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 79
  SAY ~I guess someone should have took the time to tell him that! Did he say what business he thought he had with me Samuel?~
  IF ~~ THEN EXTERN ~FFBART~ NEJ165
END

IF ~~ THEN BEGIN 80
  SAY ~It's ok. <CHARNAME>. I have spent many long sleepless nights counting the stars, thinking what I would do if our paths ever crossed again, and now I believe I am ready to confront him.~
  IF ~~ THEN GOTO 81
END

IF ~~ THEN BEGIN 81
  SAY ~I will see him, if only to take back the piece of me that he still holds... this is the only way I will ever be free of him.~
  IF ~~ THEN REPLY ~Then we shall confront him together... let him know that you have friends who do not desert each other when the going gets rough.~ GOTO 82
  IF ~~ THEN REPLY ~You'll not confront him alone Leina. As a valuable ally and part of this group you are entitled to the full support of us all.~ GOTO 82
  IF ~~ THEN REPLY ~I insist on coming with you Leina... there are a few choice words I have of my own to say to this errant husband of yours. Together we will show this Bjorn exactly what he has thrown away and lost because of his own selfish ego.~ GOTO 82
  IF ~~ THEN REPLY ~Then you best be quick about it and hope that we are still here when you are done.~ GOTO 87
END

IF ~~ THEN BEGIN 82
  SAY ~I welcome your support but first I must find out if Samuel knows where I might find Bjorn.~
  IF ~~ THEN GOTO 83
END

IF ~~ THEN BEGIN 83
  SAY ~(*Turning to Samuel*) Tell me Samuel, did Bjorn say where it was that he would be staying whilst he was in the city?~
  IF ~~ THEN EXTERN ~FFBART~ NEJ166
END

IF ~~ THEN BEGIN 84
  SAY ~That I am, but if he has truly fallen on hard times and lost favour with the rich ladies, then I doubt that I have seen the last of him. If he is determined to catch up with me, then I am sure our paths will cross again sooner than later.~
  IF ~~ THEN GOTO 85
END

IF ~~ THEN BEGIN 85
  SAY ~Anyway my friend, as much as I would like to tarry longer, maybe play a tune for these good customers of yours... some I recognise from my happy days spent here... <CHARNAME> has much to do and obligations to meet, so I must wish you farewell Samuel and say it was truly good to see you again.~
  IF ~~ THEN GOTO 86
END

IF ~~ THEN BEGIN 86
  SAY ~(*She gives Samuel a hug*) You take care of yourself.~
  IF ~~ THEN EXTERN ~FFBART~ NEJ168
END

IF ~~ THEN BEGIN 87
  SAY ~If Samuel can tell me where it is that Bjorn is staying I assure you that you will not be hindered by my tardiness.~
  IF ~~ THEN GOTO 83
END

IF ~~ THEN BEGIN 88
  SAY ~You are right <CHARNAME>. I have counted enough stars and lost enough sleep over that man. It is time I confronted him and take back the piece of me that he still holds... this is the only way I will ever be free of him.~
  IF ~~ THEN REPLY ~Then we shall confront him together... let him know that you have friends who do not desert each other when the going gets rough.~ GOTO 82
  IF ~~ THEN REPLY ~You'll not confront him alone Leina. As a valuable ally and part of this group you are entitled to the full support of us all.~ GOTO 82
  IF ~~ THEN REPLY ~I insist on coming with you Leina... there are a few choice words I have of my own to say to this errant husband of yours. Together we will show this Bjorn exactly what he has thrown away and lost because of his own selfish ego.~ GOTO 82
  IF ~~ THEN REPLY ~Then you best be quick about it and hope that we are still here when you are done.~ GOTO 87
END

IF ~~ THEN BEGIN 89
  SAY ~You need not worry <CHARNAME>, my business with Bjorn will take but a moment. I need only the time it takes to take back the piece of me that he still holds and then I will be free of him forever.~
  IF ~~ THEN REPLY ~Then we shall confront him together... let him know that you have friends who do not desert each other when the going gets rough.~ GOTO 82
  IF ~~ THEN REPLY ~You'll not confront him alone Leina. As a valuable ally and part of this group you are entitled to the full support of us all.~ GOTO 82
  IF ~~ THEN REPLY ~I insist on coming with you Leina... there are a few choice words I have of my own to say to this errant husband of yours. Together we will show this Bjorn exactly what he has thrown away and lost because of his own selfish ego.~ GOTO 82
  IF ~~ THEN REPLY ~Then you best be quick about it and hope that we are still here when you are done.~ GOTO 87
END

IF WEIGHT #-1 ~Global("VP_Leina_Samuel","GLOBAL",2)~ THEN BEGIN 90
	SAY ~(*Sighing*)... Ah... Athkatla... I didn't expect to be returning to the city of my birth so soon <CHARNAME>.~
  IF ~~ THEN DO ~SetGlobal("VP_Leina_Samuel","GLOBAL",3)~ GOTO 91
END	
	
IF ~~ THEN BEGIN 91
  SAY ~I know you have your own reasons for being here and the gods know that I don't wish to be detained here any longer than is necessary, but would it be asking too much to spare a little of our time so's I can visit with Samuel... see how he fares?~
  IF ~~ THEN REPLY ~Of course we can Leina, I know how fond you are of the old barkeep. Come, we will make our way to the Five Flagons now and make the visit together.~ GOTO 92
  IF ~~ THEN REPLY ~Let us deal with the purpose of our visit first, and then together we will make our way to the inn.~ GOTO 93
  IF ~~ THEN REPLY ~I know of your fondness for the old barkeep, but we have more pressing matters to attend to. If we have the time after we are done then I will consider a visit to the inn.~ GOTO 93
  IF ~~ THEN REPLY ~I am sorry, but we don't have times to be looking up old friends Leina... perhaps on our next visit we will have more time to spare.~ GOTO 94
  IF ~~ THEN REPLY ~We are not here on a social visit Leina, we have much to do and it doesn't include wasting time in idle chit chat with barkeeps!~ GOTO 94
END

IF ~~ THEN BEGIN 92
  SAY ~(*Her eyes light up*) Thank you <CHARNAME>. Let us make haste to the bridge district, I am eager to say hello to my old friend... I hope in my absence, he hasn't forgotten *his Leina*.~
  IF ~~ THEN DO ~SetGlobalTimer("VP_LetsVisitSamuel","GLOBAL",ONE_DAY)~ EXIT
END

IF ~~ THEN BEGIN 93
  SAY ~You are right, we should of course be about business first and settle the purpose of our return. When we are done, then we will visit Samuel... business before pleasure as always <CHARNAME>.~
  IF ~~ THEN DO ~SetGlobalTimer("VP_LetsVisitSamuel","GLOBAL",ONE_DAY)~ EXIT
END

IF ~~ THEN BEGIN 94
  SAY ~(*Her eyes flash with disappointment*)... I disagree, one should always make time for a friend! I owe much to Samuel, and I am not only talking of his persistence in his search for me when my poor father took it into his head to marry me to Duvaine... he gave me a roof when no other would.~
  IF ~~ THEN GOTO 95
END

IF ~~ THEN BEGIN 95
  SAY ~I am not about to have him hear of my return from another and cause him hurt by having him think I couldn't spare the time, or the courtesy to visit with him.~
  IF ~~ THEN GOTO 96
END

IF ~~ THEN BEGIN 96
  SAY ~When you are done here, you know where to find me, that is, if it is your wish that we continue our journey together. Farewell for now.~
IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
MoveGlobal("AR0509","Leina",[313.437])~ EXIT
END

IF WEIGHT #-2 ~Global("VP_Leina_Samuel","GLOBAL",4)
Global("VP_Leina_In_City","LOCALS",1)~ THEN BEGIN 97
	SAY ~We have been a day in the city and I am certain word has reached Samuel of my return. I must go see him, lest he thinks I can not spare time for him after all that he has done for me...~
  IF ~~ THEN DO ~SetGlobal("VP_Leina_Samuel","GLOBAL",5)~ GOTO 98
END	
	
IF ~~ THEN BEGIN 98
  SAY ~I will not cause him hurt or to have him think me ungrateful. I am leaving for The Five Flagons to see my old friend, will you accompany me <CHARNAME>?~
  IF ~~ THEN REPLY ~I'm sorry Leina, I have so much going on my mind at the moment... I completely forgot your request to see  Samuel. Come, we will leave for the inn immediately.~ GOTO 92
  IF ~~ THEN REPLY ~If I could afford to be one down in numbers, then I would say go visit your barkeep, but as you are needed I will accompany you this one time... if only to ensure you keep your reunion brief!~ GOTO 92
  IF ~~ THEN REPLY ~There is still so much to do, I can not spare the time but we will, I am sure, return soon. You can visit your friend then.~ GOTO 99
  IF ~~ THEN REPLY ~I apologise Leina. I didn't forget your request deliberately, but there is still so much I have to do. Please, you must go visit your friend, I know where to find you should I need you. Farewell for now.~ GOTO 99
  IF ~~ THEN REPLY ~I have neither the inclination nor the time to be visiting this barkeep of yours. Go if you wish but you go alone, just don't expect me to come for you any time soon. Goodbye Leina.~ GOTO 101
END

IF WEIGHT #-3 ~Global("VP_Leina_Samuel","GLOBAL",6)~ THEN BEGIN 99
  SAY ~I am sorry to leave you like this <CHARNAME>, but I will not allow a careless action of mine, or any one else's, bring that sort of hurt to so dear a friend.~
  IF ~~ THEN GOTO 100
END

IF ~~ THEN BEGIN 100
  SAY ~I wish you well, and please, if you have need of me at some future time, look for me at the inn... but first, I have an old friend to visit with. Farewell and good luck.~
IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
SetGlobal("KickedOut","LOCALS",1)
SetGlobal("VP_Leina_Samuel","GLOBAL",7)
LeaveParty()
MoveGlobal("AR0509","Leina",[313.437])~ EXIT
END	
	
IF ~~ THEN BEGIN 101
  SAY ~I am sorry <CHARNAME>, you clearly do not understand the hurt my absence will cause Samuel, and I will not allow a careless action of mine, or any one else's, bring that sort of hurt to so dear a friend.~
  IF ~~ THEN GOTO 102
END

IF ~~ THEN BEGIN 102
  SAY ~For now, I must bid you farewell but know that I wish you luck in your endeavours. If you should reconsider and find you need my aid, you know where I am to be found.~
IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
SetGlobal("KickedOut","LOCALS",1)
SetGlobal("VP_Leina_Samuel","GLOBAL",7)
LeaveParty()
MoveGlobal("AR0509","Leina",[313.437])~ EXIT
END

IF WEIGHT #-4 ~Global("VP_Leina_Samuel","GLOBAL",4)
Global("VP_Leina_Outside","LOCALS",1)~ THEN BEGIN 103
	SAY ~You leave the city as quickly as you entered it <CHARNAME>, and without a thought for my wish to see Samuel before our departure! I am disappointed that you show so little regard for the wishes of your companions... a few minutes was all I asked... was that too much?~
  IF ~~ THEN DO ~SetGlobal("VP_Leina_Samuel","GLOBAL",5)~ GOTO 104
END

IF ~~ THEN BEGIN 104
  SAY ~I am sorry but I must return, I will not have Samuel knowing of my return and thinking I couldn't spare him the courtesy of a visit... I will not cause him hurt or to have him think me ungrateful. Will you accompany me or must I travel alone?~
  IF ~~ THEN REPLY ~I'm sorry Leina, I have so much going on my mind at the moment... I completely forgot your request to see  Samuel. Come, we will leave for the inn immediately.~ GOTO 92
  IF ~~ THEN REPLY ~If I could afford to be one down in numbers, then I would say go visit your barkeep, but as you are needed I will accompany you this one time... if only to ensure you keep your reunion brief!~ GOTO 92
  IF ~~ THEN REPLY ~There is still so much to do, I can not spare the time but we will, I am sure, return soon. You can visit your friend then.~ GOTO 99
  IF ~~ THEN REPLY ~I apologise Leina. I didn't forget your request deliberately, but there is still so much I have to do. Please, you must go visit your friend, I know where to find you should I need you. Farewell for now.~ GOTO 99
  IF ~~ THEN REPLY ~I have neither the inclination nor the time to be visiting this barkeep of yours. Go if you wish but you go alone, just don't expect me to come for you any time soon. Goodbye Leina.~ GOTO 101
END

IF ~~ THEN BEGIN 105
  SAY ~B... Bjorn?~
  IF ~~ THEN EXTERN ~BJORN~ 1
END

IF ~~ THEN BEGIN 106
  SAY ~(*Taking a step back*)... What do you want Bjorn, and please, you have no need to come any closer... I can hear you just fine from where you stand?~
  IF ~~ THEN EXTERN ~BJORN~ 2
END

IF ~~ THEN BEGIN 107
  SAY ~I said... *from where you stand*, and so's you know where I stand... I am not your Leina, nor do I any longer consider myself your wife!~
  IF ~~ THEN REPLY ~You need a hand here Leina?~ EXTERN ~BJORN~ 3
  IF ~~ THEN REPLY ~Leina?~ EXTERN ~BJORN~ 3
  IF ~~ THEN REPLY ~You heard the lady!~ EXTERN ~BJORN~ 3
  IF ~~ THEN REPLY ~The errant husband... I wondered when you'd show up. Give me one good reason why I shouldn't run you through for the misery you brought to Leina?~ EXTERN ~BJORN~ 3
  IF ~~ THEN REPLY ~The errant husband, I hope this isn't going to degenerate into a domestic... Leina?~ GOTO 109
END

IF ~~ THEN BEGIN 108
  SAY ~It's ok <CHARNAME>, Bjorn is one of those ghosts a person has to lay to rest at sometime. This won't take long.~
  IF ~~ THEN REPLY ~Sort it quickly then... we've had enough delays for one day.~ GOTO 110
  IF ~~ THEN REPLY ~If you're sure, but we are staying right here... just in case.~ GOTO 110
  IF ~~ THEN REPLY ~Just say the word Leina and we will sort this philanderer out for you.~ GOTO 110
END

IF ~~ THEN BEGIN 109
  SAY ~No domestic <CHARNAME>. A domestic implies that there is a relationship of sorts, Bjorn and I no longer have a relationship... of any *sort*.~
  IF ~~ THEN REPLY ~Sort it quickly then... we've had enough delays for one day.~ GOTO 110
  IF ~~ THEN REPLY ~If you're sure, but we are staying right here... just in case.~ GOTO 110
  IF ~~ THEN REPLY ~Just say the word Leina and we will sort this philanderer out for you.~ GOTO 110
END

IF ~~ THEN BEGIN 110
  SAY ~(*She smiles mockingly*)... If Bjorn has indeed spent so much time searching for me, the least I can do is to spare a little time and hear the story he has painstakingly put together.~
  IF ~True()~ THEN EXTERN ~BJORN~ 4
  IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ340
  IF ~InParty("Melora")
!Dead("Melora")~ THEN EXTERN ~MELORAJ~ 32
END

IF ~~ THEN BEGIN 111
  SAY ~Bah! You ran because with my dowry spent, your saw the end of your comfortable life... it had nothing to do with shame, more your need to find another to support the easy life that you had become accustomed to.~
  IF ~~ THEN GOTO 112
END

IF ~~ THEN BEGIN 112
  SAY ~You never loved me Bjorn, it was not the light of desire nor love for me that I saw in your eyes when you looked at me... it was naught but the reflection of a man's love for the life that gold would afford him.~
  IF ~~ THEN EXTERN ~BJORN~ 5
END

IF ~~ THEN BEGIN 113
  SAY ~Rats! Yes I have made a place for myself and yes it is probably thanks to you... but not the way you would have me believe!~
  IF ~~ THEN GOTO 114
END

IF ~~ THEN BEGIN 114
  SAY ~I spent many a dark day, and not to mention a dark night, deep in the pit of despair when you ran out on me... a necessary action of yours in order for me to *find myself* you say!~
  IF ~~ THEN GOTO 115
END

IF ~~ THEN BEGIN 115
  SAY ~I was alone in my misery, until one morning, I saw a glimpse of the sun as it rose above that dark place I had made my own...~
  IF ~~ THEN GOTO 116
END

IF ~~ THEN BEGIN 116
  SAY ~I took what little you had left of my heart, crawled my way up towards it's warmth and started to make my way in the world the only way I knew, through the joy of music and song.~
  IF ~~ THEN GOTO 117
END

IF ~~ THEN BEGIN 117
  SAY ~It was then I knew, that as long as music filled my heart, there would never be room in it for a man's touch... nor will it ever again suffer the pain that often accompanies that touch.~
  IF ~~ THEN EXTERN ~BJORN~ 7
END

IF ~~ THEN BEGIN 118
  SAY ~Get up Bjorn... you look ridiculous down there grovelling in the mud! (*She smiles for a second, a fleeting gesture of amusement*)... I am sure the lady who bought those fine silken breeches for you will not be too pleased to see how roughly you treat her gifts...~
  IF ~~ THEN GOTO 119
END

IF ~~ THEN BEGIN 119
  SAY ~(*Her face becomes defiant again*)... please, just go away, whatever I felt for you died in that dark place you abandoned me to!~
  IF ~~ THEN EXTERN ~BJORN~ 9
END

IF ~~ THEN BEGIN 120
  SAY ~My heart... what do you know of my heart? You who so cruelly wrenched it from my breast and took it with you, along with my dreams, my hopes!~
  IF ~~ THEN GOTO 121
END

IF ~~ THEN BEGIN 121
  SAY ~The small piece that you left me with no longer has room for you. It knows that the joy which fills it now will never hurt it in the way that you did. Just go away and leave me be! (*She turns away*)...~
  IF ~~ THEN EXTERN ~BJORN~ 11
END

IF ~~ THEN BEGIN 122
  SAY ~You should think twice before you make any hasty moves...~
  IF ~~ THEN REPLY ~That's exactly what you are going to do! You heard the lady... go back to whatever rock you crawled out from under and leave the lady be!~ EXTERN ~BJORN~ 12
  IF ~~ THEN REPLY ~I've met the likes of you before bard... your pretty face and pretty words don't wash with me. So I suggest you take that glib tongue of yours far from my sight before I separate it from that pretty face that you value so highly.~ EXTERN ~BJORN~ 14
  IF ~~ THEN REPLY ~I think the lady made her wishes quite clear... now scram scumbag or as the lady says, you'll be seeing just how personally I take threats made to any member of my group!~ EXTERN ~BJORN~ 14
  IF ~~ THEN REPLY ~You have some nerve bard, to show up here after all that you put Leina through. She knows you for what you are now, so I suggest you leave whilst you still have some pride left.~ EXTERN ~BJORN~ 12
  IF ~~ THEN REPLY ~Normally I wouldn't interfere between husband and wife, but as Leina no longer considers herself your wife, then I have no qualms about stepping in on her behalf so, kindly respect the lady's wishes and... get lost!~ EXTERN ~BJORN~ 12
  IF ~~ THEN REPLY ~As a member of my group Leina, you have my backing... this time,  but I swear, this is the last time I take on your quarrels, any more interruptions and you are on your own. Now do you want me to rid you of this vermin once and for all?~ EXTERN ~BJORN~ 14
END

IF ~~ THEN BEGIN 123
  SAY ~(*She sighs*)... Closure at last... facing Bjorn has closed the door forever to that part of my life and his ghost no longer has any hold, nor any part of me. I feel complete for the first time in many a day and it feels good... life is good.~
  IF ~Gender(Player1,MALE)~ THEN GOTO 124
  IF ~Gender(Player1,FEMALE)~ THEN DO ~ActionOverride("Bjorn",EscapeArea())~ EXIT
END

IF ~~ THEN BEGIN 124
  SAY ~Come <CHARNAME>, I am eager to continue this intriguing quest of yours. (*She looks at you, and as you look into her eyes you wonder... can this new light that you now see in them be... hope?*)~
  IF ~~ THEN DO ~ActionOverride("Bjorn",EscapeArea())~ EXIT
END

IF ~~ THEN BEGIN 125
 SAY ~(*Smiling*) Well, you know what they about mages <CHARNAME>. You can go forever and not see one then six come along at once.~
 IF ~~ THEN REPLY ~You do come out with the strangest of things sometimes Leina.~ GOTO 126
 IF ~~ THEN REPLY ~If that is true then I count myself lucky only the one has come along this time.~ GOTO 127
 IF ~~ THEN REPLY ~Then let us be prepared for the other five to turn up any moment.~ GOTO 128
 IF ~~ THEN REPLY ~What are you talking about? I have never heard of anything so stupid in all my life.~ GOTO 129
END

IF ~~ THEN BEGIN 126
 SAY ~(*Laughs*) I am a fountain of knowledge <CHARNAME>, stick with me and you will go far.~
 IF ~~ THEN EXTERN ~KHARESSE~ 1
END

IF ~~ THEN BEGIN 127
 SAY ~Even one is one too many given our present predicament <CHARNAME>.~
 IF ~~ THEN EXTERN ~KHARESSE~ 1
END

IF ~~ THEN BEGIN 128
 SAY ~(*Laughs*) A wise precaution indeed <CHARNAME>.~
 IF ~~ THEN EXTERN ~KHARESSE~ 1
END

IF ~~ THEN BEGIN 129
 SAY ~(*Laughs softly*) Then there is still much for you to hear and to learn <CHARNAME>.~
 IF ~~ THEN EXTERN ~KHARESSE~ 1
END

IF ~~ THEN BEGIN 130
  SAY ~I just knew this was going to come back and haunt us <CHARNAME>?~
  IF ~!Dead("Hrothgar")~ THEN EXTERN ~HROTHJ~ 385
  IF ~Dead("Hrothgar")~ THEN EXTERN ~KHARESSE~ 2
END

IF WEIGHT #4 ~GlobalGT("VP_Enable_Flirts","LOCALS",0)
Global("VP_Enable_Flirts","LOCALS",4)
GlobalLT("VP_LoveTalk","LOCALS",24)
Global("VP_MyFlirt_Is_Over","LOCALS",0)
!Global("VP_Leina_Samuel","GLOBAL",2)
!Global("VP_Leina_Samuel","GLOBAL",4)
!Global("VP_Leina_Samuel","GLOBAL",6)
!Global("VP_InHalruaa","GLOBAL",1)~ THEN BEGIN 131
  SAY ~Yes... you need me for something?~	
	IF ~Global("SPRITE_IS_DEADVulova","GLOBAL",1)~ THEN REPLY ~I can't help but notice the shadows that pass before your eyes every time you touch your pendant Leina. Is it thoughts of your father that bring such sadness to those beautiful eyes of yours?~ GOTO LFlirts901
	IF ~Global("SPRITE_IS_DEADVulova","GLOBAL",0)~ THEN REPLY ~I can't help but notice the shadows that pass before your eyes every time you touch your pendant Leina. Is it thoughts of your father that bring such sadness to those beautiful eyes of yours?~ GOTO LFlirts905
	IF ~~ THEN REPLY ~You look tired Leina... maybe now you understand a little of why I tried to warn you of the harshness of a life on the road.~ GOTO LFlirts1001
	IF ~!AreaType(CITY)
OR(2)
AreaType(OUTDOOR)
AreaType(FOREST)~ THEN REPLY ~Leina how would you feel if we were forced to spend a little time in Athkatla again? I know you have bad memories of the place and were in a rush to leave, but I feel we have not yet seen the last of the city?~ GOTO LFlirts1101
	IF ~Global("VP_Flirt_Option_12","LOCALS",0)
GlobalTimerExpired("VP_FlirtPoetry","GLOBAL")~ THEN REPLY ~Leina, would you please honour me with a tale to while away some time whilst it is quiet?~ GOTO LFlirts1201
	IF ~Global("VP_Flirt_Option_12","LOCALS",1)~ THEN REPLY ~Leina, would you please honour me with a tale to while away some time whilst it is quiet?~ GOTO LFlirts1202
	IF ~~ THEN REPLY ~Tell me Leina, does knowing who my father is, influence your feelings towards me?~ GOTO LFlirts1301
	IF ~Global("VP_Flirt_Option_14","LOCALS",0)~ THEN REPLY ~You're looking lovelier than ever today Leina. Is it your hair... are you wearing it differently?~ GOTO LFlirts1401
	IF ~Global("VP_Flirt_Option_14","LOCALS",1)~ THEN REPLY ~You're looking lovelier than ever today Leina. Is it your hair... are you wearing it differently?~ GOTO LFlirts1402
	IF ~Global("VP_Flirt_Option_14","LOCALS",2)~ THEN REPLY ~You're looking lovelier than ever today Leina. Is it your hair... are you wearing it differently?~ GOTO LFlirts1403
END

IF ~~ THEN BEGIN LFlirts901
	SAY ~(*She gives you a faint smile*) It's alright <CHARNAME>, I have come to terms with the events leading to his death. I must now believe that in death he found the peace that evaded him in life.~
	IF ~~ THEN REPLY ~It is good that you have accepted his passing Leina, but what of the shadows that I glimpse briefly as they flit across your face?~ GOTO LFlirts902
	IF ~~ THEN REPLY ~It is a brave man who forces the hand of death Leina. If your father was truly discontent with his life, then by challenging me, maybe he hoped that I would be the instrument that would give death's hand a nudge.~ GOTO LFlirts904
END

IF ~~ THEN BEGIN LFlirts902
	SAY ~We always think that we will have tomorrow, but we never think that maybe there are those close to us that will not. My shadows are more the regrets for taking for granted that there will always be tomorrows and not using the yesterdays to the full.~
	IF ~~ THEN REPLY ~No matter what we did or did not do in our yesterdays, they are lost forever to yesterday and no amount of wishing or regretting will return them to us as todays or tomorrows. There are no second chances in life Leina.~ GOTO LFlirts903
	IF ~~ THEN REPLY ~Sadly, we all discover that to be true too late. We can not imagine the world without our loved ones, so we push these thought away until someone dear to us is lost and then begins the regrets.~ GOTO LFlirts903
END

IF ~~ THEN BEGIN LFlirts903
	SAY ~(*She gently touches her pendant again*) If only we could be certain that death were not so final <CHARNAME>. It would be far easier to accept knowing that those we have lost are not taken from us forever, but merely waiting for us to find them and join them on our road again.~
=
	~Still, I suppose death is the one mystery that we are born seeking the answer to and destined to learn only when the gods decide it is time. (*She sighs and turns away*.)~
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LFlirts904
	SAY ~You only saw the broken man that my father had become <CHARNAME>, not the strong man he once was... a man who loved his family fiercely and would defy any who should seek to hurt those he loved.~
=
	~It would go against all he believed to take his own life, so yes... I can believe that in his grief he saw you as a way to end his pain and a way that he could be re-united with my mother once again.~
	IF ~~ THEN REPLY ~Sometimes, the only way of coming to terms with events that we have no way of discovering the truth of, is to rationalise what we do know leading up to the event and then drawing whatever conclusions we can from that.~ GOTO LFlirts903
	IF ~~ THEN REPLY ~If there were some way that I could take away some of your anguish then I would move the heavens themselves to do so Leina, but I am not good with words... nor do I know any that will help.~ GOTO LFlirts903
END

IF ~~ THEN BEGIN LFlirts905
	SAY ~I feel sadness for my father yes, but not for the man Vulova. He has become a man who has allowed his grief to overwhelm him to the point that he is no longer the man I recognise and call father. Instead, my grief is for my mother and for the time that has been denied us.~
	IF ~~ THEN REPLY ~If it is shadows of grief that I see pass over our face Leina, then I wish I had the means to bring you some comfort... but as is always with grief, comfort is not easy to find nor is it easy to give.~ GOTO LFlirts902
	IF ~~ THEN REPLY ~I am not good with words Leina but I would gladly move the heavens themselves if I thought such an action would bring you some comfort.~ GOTO LFlirts902
END

IF ~~ THEN BEGIN LFlirts1001
	SAY ~It is not so much the harshness of the road <CHARNAME>.... (*then smiling at you*)... although that does give rise to a girl's feet being tired a lot of the time, but the ever alertness that is needed in case of an ambush. Now that I find very wearing on the mind.~
=
	~Has your life always been this precarious?~
	IF ~~ THEN REPLY ~I am afraid so Leina. Many's the time when forced to travel at night that I wish I had the eyes and the ears of the owl.~ GOTO LFlirts1002
	IF ~~ THEN REPLY ~Not always, but since leaving Candlekeep I have been hard pressed to find time to relax and enjoy the world. Wherever I go there is always someone wanting a piece of this offspring of a god.~ GOTO LFlirts1003
	IF ~~ THEN REPLY ~It has... in fact, if it were to ever change for any length of time now, then I would seriously start to think that maybe I were dead and no longer of interest to this world and its people.~ GOTO LFlirts1004
END

IF ~~ THEN BEGIN LFlirts1002
	SAY ~(*She laughs and for a moment the weariness is gone from her face*)... If we are wishing for the attributes of the birds <CHARNAME>, then might I suggest we wish for their wings to bear us away from the ambush... and away from the harsh road that brings so much soreness to the feet!~
	IF ~~ THEN EXIT
END	

IF ~~ THEN BEGIN LFlirts1003
	SAY ~(*She looks at you and smiles but her face takes on a touch of sadness*)... Then <CHARNAME>, when your quest is done and you have found your Imoen, maybe your travels will lead you to a corner of this world that has not heard of Bhaal's legacy, and there you will find the peace that has so long been denied you.~
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LFlirts1004
	SAY ~(*She looks at you and smiles as she speaks*)... You <CHARNAME>... never! Long after your passing the world will remember the child of Bhaal who once walked the land of Faerun, causing mayhem to those who crossed him, and delight to others who deemed themselves fortunate to have known him.~
=
	~No <CHARNAME>... bards will never allow the world to lose sight of who you were, not even in death.~
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LFlirts1101
	SAY ~It is true, I can't help but feel a little apprehensive at the thought of seeing my old home again, and the memories it will stir, but I also have a few fond memories of Athkatla. My life at The Five Flagons for one and the kindness afforded me by Samuel.~
=
	~I would dearly love to see him again, it was after all his concern for my well being that brought you to my rescue <CHARNAME>... I owe my freedom as much to him as I do to you.~
	IF ~~ THEN REPLY ~I don't want to cause you any unnecessary upset and I would hate to lose so trustworthy a companion, but if the time does come and you feel you are not ready to face the city or your memories, then I will understand if you decide not to continue with the group.~ GOTO LFlirts1102
	IF ~~ THEN REPLY ~Then I hope your good memories leave no room for the bad ones because if our returning to Athkatla means that you can longer travel with me, then know that I will miss you greatly Leina. Your charm, your wit and of course your music has lifted the group's spirits on many an occasion.~ GOTO LFlirts1102
	IF ~~ THEN REPLY ~I am sure Samuel would be delighted to see his Leina again and know that she is happy. I am equally as sure that if I were to visit The Five Flagons and his Leina was not with me, I would find neither a welcome nor service from him until I returned with her in tow!~ GOTO LFlirts1103
END

IF ~~ THEN BEGIN LFlirts1102
	SAY ~I thank you for your kind words <CHARNAME>, but I am in no rush to leave your company, so let us wait and see what occurs and leave the thoughts and decisions of tomorrow as and when each tomorrow comes.~
	IF ~~ THEN EXIT
END
	
IF ~~ THEN BEGIN LFlirts1103
	SAY ~(*She tosses her head back and laughs loudly*)... I can well imagine Samuel doing just that <CHARNAME>, but only if you could not convince him that I was alive and well... that you had not left me to languish in some brothel, or worse.~
=
	~Joking aside, he is a good man and looked out for me when I had no one. I will visit Athkatla again, if for no other reason than to see my dear friend Samuel.~
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LFlirts1201
	SAY ~Leave me be <CHARNAME>, I am in no mood for stories today. (*She hurries away from you*).~
	IF ~~ THEN DO ~SetGlobal("VP_Flirt_Option_12","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN LFlirts1202
	SAY ~I am not in the mood for long stories <CHARNAME>, but maybe a couple of verses will pass the time that you are so anxious to pass. What would you like to hear?~
	IF ~~ THEN REPLY ~A verse or two about hope.~ GOTO LFlirts1203
	IF ~~ THEN REPLY ~A verse or two from one who lives in despair.~ GOTO LFlirts1207
	IF ~~ THEN REPLY ~A short ode written by a man in praise of the woman he loves.~ GOTO LFlirts1211
	IF ~~ THEN REPLY ~The pain that accompanies grief and sorrow.~ GOTO LFlirts1215
END

IF ~~ THEN BEGIN LFlirts1203
	SAY ~Then hope it shall be <CHARNAME>...~
=
	~"Dawn
and it feels like the sun is setting.
There is hope ahead, hope abundant,
but can I reach it... is it there for me
or is it there for someone else?
I reach out but there is nothing there
I stretch my hands; still nothing.
My heart is bleeding and my mind wonders why
all that I love has gone away,
has gone to somewhere,
to somewhere out of my reach
Then...
I look into my soul
and I hear a voice, it's such a gentle voice,
the voice of love and caring.
It is the voice I heard as a child;
each time I got hurt
each time my feelings were like open wounds,
this voice would come to comfort me,
these hands would come to hold me close.
I could feel the heart beat so lovingly
as these hands held me close.
But even if those hands are no longer here,
even if these hands no longer wrap themselves around me,
I know that the love is till here
that the heart is still beating for me,
that the warmth and the care are still herewrapped around me
comforting me,
caring for me,
and being the castle that will always protect me."~
	IF ~~ THEN REPLY ~You are a joy to listen to Leina, whether you sing the song or recite the verse. We still have a quiet moment, I would hear another... please.~ GOTO LFlirts1204
	IF ~~ THEN REPLY ~Thank you Leina. Would I be right in thinking that this is one of your compositions... the words have the feel of Leina about them?~ GOTO LFlirts1205
	IF ~~ THEN REPLY ~So typical of a Leina composition, a tale that begins with a bleeding and lonely heart. Still I suppose there was a measure of hope at the end. If the others are as melancholy, then I have heard enough for today thank you Leina.~ GOTO LFlirts1206
END

IF ~~ THEN BEGIN LFlirts1204
	SAY ~I am sorry <CHARNAME>, but I did say a couple of verses are all I am up to today. I promise you will hear the others another time.~
	IF ~~ THEN DO ~SetGlobal("VP_Flirt_Option_12","LOCALS",0)
SetGlobalTimer("VP_FlirtPoetry","GLOBAL",ONE_DAY)~ EXIT
END

IF ~~ THEN BEGIN LFlirts1205
	SAY ~It is true I have taken comfort in the words as I know of the feelings they speak of, but they are not my writings. A bard who hailed from the north by the name of Agusti told them to me, at a time when I was at my lowest ebb and hope had all but gone from my life.~
=
	~He was very talented and I learnt a lot from him as we travelled together. That was until he felt the call to return to his home... how long ago that all seems now.~
=
	~(*She sighs*) Aah... enough of odes and reminiscing for today, the others will keep for another time.~
	IF ~~ THEN DO ~SetGlobal("VP_Flirt_Option_12","LOCALS",0)
SetGlobalTimer("VP_FlirtPoetry","GLOBAL",ONE_DAY)~ EXIT
END

IF ~~ THEN BEGIN LFlirts1206
	SAY ~That was not a composition of mine but one that was told to me by another very talented bard.~
=
	~Still, I take it as a compliment that you likened my work to one whom I hold in very high esteem... now enough, you have had your couple of verses and I can't help but feel the words were wasted on you.~
=
	~If you wish to hear more, ask me again in a day or two.~
	IF ~~ THEN DO ~SetGlobal("VP_Flirt_Option_12","LOCALS",0)
SetGlobalTimer("VP_FlirtPoetry","GLOBAL",ONE_DAY)~ EXIT
END

IF ~~ THEN BEGIN LFlirts1207
	SAY ~Then harken and learn of a loneliness I pray you never feel...~
=
	~"In the gloom of despair
I sat staring at the stars.
Unlimited options
but all were way too far;
too far beyond my reach, and so all that I could do
was to sit there and dream of you.

In the middle of night
I had nowhere to go,
and deep down in my veins
my blood it stopped it's flow,
for I was lost and alone
without a guiding light,
while all that I wanted
was to hold you dear and tight.

From the bottom of my heart
there came a painful cry,
as I screamed out to the emptiness
while wondering why
it is that I suffer,
why I feel all this pain;
why my tears they are falling,
they are falling like rain."~
	IF ~~ THEN REPLY ~For a moment there your eyes lost some of their sparkle, and I felt a sadness that such words should cast so dark a shadow over so much beauty, but come, you have left the darkness behind you so maybe a rhyme of love to brighten the mood?~ GOTO LFlirts1208
	IF ~~ THEN REPLY ~Leina, please forgive me. I would not have asked, had I known it was to be an ode to your own feelings of desolation. I am sorry.~ GOTO LFlirts1209
	IF ~~ THEN REPLY ~Well, I asked for that didn't I? The very title should have told me that I was about to hear of Leina wallowing in self pity... at least it served as a reminder as to why I seldom ask for a song.~ GOTO LFlirts1210
END

IF ~~ THEN BEGIN LFlirts1208
	SAY ~Yes the darkness and gloom are behind me, but still there is always the faint shadow of a memory when I am asked for a certain tale or a certain song.~
=
	~I am afraid the ode to love will have to wait, this bard's renditions are done for today... ask me again tomorrow.~
	IF ~~ THEN DO ~SetGlobal("VP_Flirt_Option_12","LOCALS",0)
SetGlobalTimer("VP_FlirtPoetry","GLOBAL",ONE_DAY)~ EXIT
END

IF ~~ THEN BEGIN LFlirts1209
	SAY ~You have nothing to be sorry for <CHARNAME>. I am asked for tales of pain and grief as often as I am asked to tell of love and joy... it is a bard's lot to tell of every emotion that is possible to touch the heart. What sort of a bard would I be if I shun a tale solely because it has touched my own?~
=
	~So please, it is not necessary to apologise.~
	IF ~~ THEN DO ~SetGlobal("VP_Flirt_Option_12","LOCALS",0)
SetGlobalTimer("VP_FlirtPoetry","GLOBAL",ONE_DAY)~ EXIT
END

IF ~~ THEN BEGIN LFlirts1210
	SAY ~Yes there was a time when I felt sorry for myself, a time when I sank into the very depths of despair, but I have pulled myself back up and now when I tell of gloom, of despair, there are those who take comfort in knowing that I too have been there.~
=
	~Now if you'll excuse me, I will waste no more breath on one who wastes my time.~
	IF ~~ THEN DO ~SetGlobal("VP_Flirt_Option_12","LOCALS",0)
SetGlobalTimer("VP_FlirtPoetry","GLOBAL",ONE_DAY)~ EXIT
END

IF ~~ THEN BEGIN LFlirts1211
	SAY ~A perfect choice and one that I hold dear, for it was one of the few verses I ever heard my father recite to my mother...~
=
	~"Of all the things beautiful, there is none like you.
Of all the things loving, there is none as true.
Of all the things I admire, it is you I cherish the most.
Of all the things I should guard, for you I shall stand at my post.

Of all the emotions in life, my love for you is the strongest.
Of all the emotions in life, my affection will last the longest.
Of all the emotions in life, the thought of you is the dearest.
Of all the emotions in life, to yours my heart stays the nearest."~
	IF ~~ THEN REPLY ~That was beautiful Leina. He must have loved her very much to be so inspired to write so beautifully, and none other than his own daughter could have spoken his words more passionately. Thank you for sharing them with me.~ GOTO LFlirts1212
	IF ~~ THEN REPLY ~You speak with so much passion when you tell of the love embraced by others, so how is it that a heart that is warm and passionate one minute, rejects love and becomes so cold and unfeeling the next?~ GOTO LFlirts1213
	IF ~~ THEN REPLY ~Pretty enough words, it is a shame you haven't inherited your father's style. Your songs would be more enthusiastically received if they weren't so... well... melancholy.~ GOTO LFlirts1214
END

IF ~~ THEN BEGIN LFlirts1212
	SAY ~I don't believe that they were his words <CHARNAME>. I have never known him write and this ode I found whilst I was a prisoner in the house I once called home.~
=
	~It was written on a crumpled piece of parchment and stuffed in the back of a drawer of his desk. I don't think he has looked at it since my mother's death.~
=
	~One thing I am sure of... it was not his hand that wrote the copy I found, but it will always be his voice that I remember whenever I read it. (*She turns away but not before you notice a look of sadness flit momentarily across her eyes.*)~
	IF ~~ THEN DO ~SetGlobal("VP_Flirt_Option_12","LOCALS",0)
SetGlobalTimer("VP_FlirtPoetry","GLOBAL",ONE_DAY)~ EXIT
END

IF ~~ THEN BEGIN LFlirts1213
	SAY ~I have made my feelings clear when it comes to love many times over. I do not desire it, nor do I waste my time pining for it like some giddy female.~
=
	~As for my heart being cold and unfeeling... because there is so much passion for music inside of me, I know that my heart can not be as cold as you say otherwise this passion could not survive... passion is warmth and needs warmth to nurture it, to keep it alive. No, my heart is not without feeling <CHARNAME>.~
	IF ~~ THEN DO ~SetGlobal("VP_Flirt_Option_12","LOCALS",0)
SetGlobalTimer("VP_FlirtPoetry","GLOBAL",ONE_DAY)~ EXIT
END

IF ~~ THEN BEGIN LFlirts1214
	SAY ~My songs are well received by audiences wherever I have played thank you <CHARNAME>! I have no need to inherit *style* as you call it, I have made my way on my own merit and I pride myself in saying, on my individualism.~
=
	~I will sing any song that is asked of me, and it is proof enough that my music is enjoyed as most of what I am asked to sing are my own compositions.~
=
	~I care little for your opinion of me or my music. (*She turns and strides away.*)~
	IF ~~ THEN DO ~SetGlobal("VP_Flirt_Option_12","LOCALS",0)
SetGlobalTimer("VP_FlirtPoetry","GLOBAL",ONE_DAY)
SetGlobal("VP_MyFlirt_Is_Over","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN LFlirts1215
	SAY ~This is a personal expression, written by one who knows how it feels to have unbearable pain and sorrow come into their life...~
=
	~"The pain, the excruciating pain,
that is shattering my heart;
hear it being ripped apart;
and my tears are falling like heavy rain.

The sorrow is tearing asunder my soul
and so heavy I bleed
and there is none who will heed
my cries of despair, my painful call.

And so, now I wish that I was dead and cold
in my grave alone and forgotten,
like my life, my corpse all rotten,
never having the burden of growing old."~
	IF ~~ THEN REPLY ~(*You take her hand*) I can not imagine the sort of pain that would give rise to such harrowing words. Please, tell me that they did not come from your heart Leina... I couldn't bear to think of you hurting so much and seeing death as your only release?~ GOTO LFlirts1216
	IF ~~ THEN REPLY ~I can almost feel the anguish in every word... such feeling, such raw emotion. A pain so different and yet equally as terrible as the pain I suffered at the hands of Irenicus... a pain I will never be able to forget.~ GOTO LFlirts1217
	IF ~~ THEN REPLY ~Yet another of yours Leina? It has the ring of the forsaken woman crying to the world "Look at my poor heart being ripped apart... looking at me hurting, ain't life a bitch?"~ GOTO LFlirts1218
END

IF ~~ THEN BEGIN LFlirts1216
	SAY ~(*She smiles at you*) No, they are not my words, nor have I felt the pain that my friend has spoken of here. Even through my own misery and despair, I never reached the point where I sought death as a means of release and thankfully neither did he.~
=
	~For if he had, the world would have lost many beautiful verses that would not have been written and I would not have found a friend when I was most in need of one.~
	IF ~~ THEN DO ~SetGlobal("VP_Flirt_Option_12","LOCALS",0)
SetGlobalTimer("VP_FlirtPoetry","GLOBAL",ONE_DAY)~ EXIT
END	

IF ~~ THEN BEGIN LFlirts1217
	SAY ~Nor will my friend. He never told me the story behind the words nor did I ask, and the look that passed between us as he spoke them to me, was enough to know that he would not tell me if I did. I guess there are some things that are too personal to ever share, but I am thankful for the many songs that he did share with me, some of which I will share with you, but not today.~
	IF ~~ THEN DO ~SetGlobal("VP_Flirt_Option_12","LOCALS",0)
SetGlobalTimer("VP_FlirtPoetry","GLOBAL",ONE_DAY)~ EXIT
END

IF ~~ THEN BEGIN LFlirts1218
	SAY ~(*Angrily*) No <CHARNAME>, that wasn't about me but another whose soul had suffered unknown pain and grief.~
=
	~I feel privileged to have known a man who was not ashamed to tell the world that men hurt and bleed in the same way a woman does when in pain.~
=
	~Yes, I said *man* and neither I nor those who listened to him thought him any less of a man for his candour in expressing his emotions.~
	IF ~~ THEN DO ~SetGlobal("VP_Flirt_Option_12","LOCALS",0)
SetGlobalTimer("VP_FlirtPoetry","GLOBAL",ONE_DAY)
SetGlobal("VP_MyFlirt_Is_Over","LOCALS",1)~ EXIT
END
							
IF ~~ THEN BEGIN LFlirts1301
	SAY ~(*She laughs as she answers*) I can't recall that I have ever let the circumstance of a man's sire interfere with what I may or may not feel for the man <CHARNAME>.~
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LFlirts1401
	SAY ~I thank you for the compliment <CHARNAME>, but no I haven't altered my hair. It must be the delight I feel at finding myself in such fine company.~
	IF ~~ THEN DO ~SetGlobal("VP_Flirt_Option_14","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN LFlirts1402
	SAY ~I thank you for the compliment but my hair is as it always is <CHARNAME>. Your eagerness to hit the road on rising, leaves little time for a girl to brush her hair... let alone consider a restyle.~
	IF ~~ THEN DO ~SetGlobal("VP_Flirt_Option_14","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN LFlirts1403
	SAY ~(*She laughs*) Now that has to be a first... it takes most men a while to notice when a girl alters her hair, but you <CHARNAME>, you notice a change in a girl's appearance and the first thing you ask about is her hair.~
	IF ~~ THEN DO ~SetGlobal("VP_Flirt_Option_14","LOCALS",0)~ EXIT
END

IF ~~ THEN BEGIN driadsint_lei1
	SAY ~I am sure Melora wasn't including you in her derision Minsc. A pretty face would not find it easy to sway our brave ranger's mind once he had it firmly set and nor could a pretty face that hides an evil heart ever fool his quick mind.~
	IF ~~ THEN EXTERN ~MINSCJ~ driadsint_min2
END

IF ~~ THEN BEGIN driadsint_lei2
	SAY ~Oh... go boil your head Shar-Teel and while you're at it, boil that acerbic tongue of yours as well!~
	IF ~~ THEN GOTO driadsint_lei3
END

IF ~~ THEN BEGIN driadsint_lei3
	SAY ~Minsc has always shown only the highest regard and respect to every female in this group... yourself included. So he doesn't deserve such a scathing tirade from you... although I for one would not blame him if his regard for you were to suddenly change... (*She turns away angrily*)~
	IF ~~ THEN EXTERN ~SHARTJ~ legacy225
END

IF ~~ THEN BEGIN firattak
	SAY ~(*Quietly to herself, her eyes wide with awe*) It's true, all that she told me is true... this one, he's magnificent and so... so haughty!~
	IF ~True()~ THEN EXTERN ~SHARTJ~ legacy406a
	IF ~InParty("Hrothgar")
!Dead("Hrothgar")~ THEN EXTERN ~HROTHJ~ firattak
	IF ~InParty("Viconia")
!Dead("Viconia")~ THEN EXTERN ~VICONIJ~ firattak
	IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~EDWINJ~ firattak
	IF ~InParty("Dar")
!Dead("Dar")~ THEN EXTERN ~DARJ~ firattak
	IF ~InParty("Taffic")
!Dead("Taffic")~ THEN EXTERN ~TAFFICJ~ firattak
END

IF ~Global("VP_Firkrag_Is_Dead","GLOBAL",1)~ THEN BEGIN firkdead1
	SAY ~(*Slowly walking over to Firkraag, she slowly lets her gaze take in the features of the dragon's face. Mesmerized, she reaches out her hand ever so slowly, she lightly touches his face*)... See how... even in death... how glorious he looks...~
	IF ~~ THEN REPLY ~Leina... what is it?~ GOTO firkdead2
	IF ~~ THEN REPLY ~Less intimidating maybe, but I see nothing glorious in the death of any creature.~ GOTO firkdead2
	IF ~~ THEN REPLY ~More glorious than you... look at yourself girl, your hands are covered in its blood!~ GOTO firkdead2
	IF ~~ THEN REPLY ~Ye gods girl, it's just another carcass... come away and leave it to rot!~ GOTO firkdead2
END

IF ~~ THEN BEGIN firkdead2
	SAY ~(*She shakes her head as if to clear her thoughts*) Oh, I was just remembering things I have heard... about dragons... and being so close, I wished to look at this one. Magnificent isn't he!?~
	IF ~~ THEN REPLY ~Looks like an over grown lizard to me.~ GOTO firkdead3
	IF ~~ THEN REPLY ~The only thing I see is the hoard it was sitting on and the gold it's scaly skin will fetch.~ GOTO firkdead3
	IF ~~ THEN REPLY ~Heard? Ah...I suppose you mean the mystery and romance that you bards tell of the beasts and the hero's who seek to kill them.~ GOTO firkdead4
END

IF ~~ THEN BEGIN firkdead3
	SAY ~(*Sighing*) I really shouldn't be surprised at your words. So much is lost on you <CHARNAME>... (*She looks at her blood stained hands and turns sadly away*)... so much!~
	IF ~~ THEN DO ~SetGlobal("VP_Firkrag_Is_Dead","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN firkdead4
	SAY ~No, something more. I have heard that this magnificent creature... some call dragon others call wyrm.... is a composition of features not unlike the changing seasons. Hence it's ability to survive and adapt to our worlds changing climate. Making it one of the oldest creatures known to us... possibly far older than any race we have so far encountered.~
	IF ~~ THEN REPLY ~What nonsense...a dragon is a dragon. That is, it's a very big nasty creature concerned only with it's own self importance and nothing more!~ GOTO firkdead3
	IF ~~ THEN REPLY ~Changing seasons, a stinking foul dragon is all I see! Next you'll be saying you want to bury the thing and spout prayers over it!~ GOTO firkdead4a
	IF ~~ THEN REPLY ~Sounds like some one has been filling your head with romantic nonsense Leina. Come look beyond the romance, is it not a flesh and blood thing you see?~ GOTO firkdead5
	IF ~~ THEN REPLY ~Like the changing of seasons you say. This one looks to me to be nothing more than flesh and blood, no different to any other creature.~ GOTO firkdead5
END

IF ~~ THEN BEGIN firkdead4a
	SAY ~(*Tossing her head angrily*) There is no need for sarcasm... but then I should expect no less from you! So much is lost on you <CHARNAME>... (*She looks at her blood stained hands and turns sadly away.*)~
	IF ~~ THEN DO ~SetGlobal("VP_Firkrag_Is_Dead","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN firkdead5
	SAY ~(*Continuing to gaze at the fallen creature, she carries on speaking... you wonder if she has even heard you*)... It is foremost like a snake that rejuvenates its skin... the origin perhaps of the name wyrm.~
=
	~Then there are it's wings which, like the wings of the bird, give flight to it's spirit as it soars on high. It has the mane of a horse and the fins of a fish... It is even said that those that have beards show a sign of wisdom and the antlers are the emblems of royalty and renewal.~
	IF ~~ THEN REPLY ~I've had enough of this dribble! Look it's just a dragon and a dead one at that so lets grab the treasure and get out of it's stinking lair before we choke on the stench!~ GOTO firkdead3
	IF ~~ THEN REPLY ~This is all very interesting but don't you know something that'll make killing the next one we encounter easier... you know, a weak spot or something?~ GOTO firkdead6
	IF ~~ THEN REPLY ~Fish, horses, birds... Leina, what are you babbling about?~ GOTO firkdead8
	IF ~~ THEN REPLY ~This is very enlightening... what else have you heard?~ GOTO firkdead9
END

IF ~~ THEN BEGIN firkdead6
	SAY ~(*Tossing her head angrily*) Is that all you want to know... how do I kill it? There is so much more about these magnificent creatures than what you see... you have no idea!~
=
	~No, I know nothing of how to kill them easily... what I do know is how to more easily understand them and if I could maybe make you understand, then maybe you would see why I mourn the passing of this one, even though he is one of the most evil of his kind... but I can see that is not what you want to hear.~
	IF ~~ THEN REPLY ~Understand them... what are you some kind of dragon freak?~ GOTO firkdead7
	IF ~~ THEN REPLY ~Understand them... why in the nine hells would I want to understand them?~ GOTO firkdead7
	IF ~~ THEN REPLY ~Tell me Leina... what is this fascination you have with dragons and how come you know so much about them?~ GOTO firkdead12
END

IF ~~ THEN BEGIN firkdead7
	SAY ~(*Sighing... she looks at her blood stained hands*)... I just thought... No matter, it's not important. You would never understand, how could you when you don't know? Perhaps one day you will... but not this one.~
=
	~Come let us go back up to the world of the living and leave the dead to sleep... (*She glances once more at the bloody body of the dragon and then turns sadly away.*)~
	IF ~~ THEN DO ~SetGlobal("VP_Firkrag_Is_Dead","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN firkdead8
	SAY ~I am not babbling. I am trying to tell you what I know, what I have been told about dragons. If you'll shut up and listen to what I have to say, then maybe you'll understand these creatures a little better. Maybe even understand why I mourn the passing of this one, even though he is one of the most evil of his kind.~
	IF ~~ THEN REPLY ~Understand them... what are you some kind of dragon freak?~ GOTO firkdead7
	IF ~~ THEN REPLY ~Understand them... why in the nine hells would I want to understand them?~ GOTO firkdead7
	IF ~~ THEN REPLY ~Tell me Leina... what is this fascination you have with dragons and how come you know so much about them?~ GOTO firkdead12
END

IF ~~ THEN BEGIN firkdead9
	SAY ~Another interesting point about this particular winged lizard is that it is thought, by some, to be a symbol of the unity of the four elements. It breathes fire, can dive down to the deepest depths of the seas, soar through the air to the highest heights and it guards the earth's treasures.~
=
	~Each of the dragon kin are marked by other such tokens, they are numerous, but sadly I was not granted the opportunity to learn more... fate took my teacher... (*Her eyes cloud over for a second and she looks away*)~
	IF ~Gender(Player1,MALE)
Global("VP_MyFlirt_Is_Over","LOCALS",0)~ THEN REPLY ~(*You reach around and touch her face, gently turning it so that she is facing you... then looking into her eyes you speak*) I am sorry Leina, the last thing I wanted was to open up old wounds. Here take my hand, we will leave this place and speak no more of dragons.~ GOTO firkdead10
	IF ~OR(2)
Gender(Player1,FEMALE)
Global("VP_MyFlirt_Is_Over","LOCALS",1)~ THEN REPLY ~I am sorry Leina, I didn't mean to pry.~ GOTO firkdead7
	IF ~OR(2)
Gender(Player1,FEMALE)
Global("VP_MyFlirt_Is_Over","LOCALS",1)~ THEN REPLY ~You were close to this teacher... I am sorry I didn't mean to open up old wounds forgive me.~ GOTO firkdead7
	IF ~OR(2)
Gender(Player1,FEMALE)
Global("VP_MyFlirt_Is_Over","LOCALS",1)~ THEN REPLY ~So these teachers of yours died before they could fill your head with more nonsense. Seems fate did you a favour.~ GOTO firkdead11
END

IF ~~ THEN BEGIN firkdead10
	SAY ~(*She holds your eyes with a look of her own, so intense and so sad that  for a second all you want to do is to take her in your arms, to melt into her, to find and sweep all her past hurts from her forever... instead, oblivious to her blood stained hands, you let her take your hand and press it to her lips*)~
=
	~I... it is nothing <CHARNAME>... You would never understand, how could you when you don't know? Perhaps one day you will... but not this one. Come let us go back up to the world of the living and leave the dead to sleep.~
=
	~(*Still holding your hand, she glances once more at the bloody body of the dragon and then turning sadly she leads you away.*)~
	IF ~~ THEN DO ~SetGlobal("VP_Firkrag_Is_Dead","GLOBAL",2)~ EXIT
END	

IF ~~ THEN BEGIN firkdead11
	SAY ~(*She spins around, her cheeks flushed and her eyes no longer clouded with sadness... instead they flash with anger*) You... who are you to judge what is true and what is nonsense? I have not only been lucky to have had an expert teacher, one who knows the truth of what she speaks, but I have also stood with her and can bear witness to the truth of some of what I know. Though at the time I was too young to fully take in the meaning of that which I was seeing.~
=
	~It was foolish of me to think that... No matter what I thought, it's not important. Clearly you would never understand, how could you when you don't know? Perhaps one day you will... but not this one.... (*She glances once more at the bloody body of the dragon and then turns sadly away.*)~
	IF ~~ THEN DO ~SetGlobal("VP_Firkrag_Is_Dead","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN firkdead12
	SAY ~(*Her eyes take on a distant look*) My interest in dragons began early. I was taught by one who had first hand knowledge of the creatures, but my only regret was that I was not granted the opportunity to learn more... fate took my teacher... (*Her eyes cloud over for a second and she looks away*)~
	IF ~Gender(Player1,MALE)
Global("VP_MyFlirt_Is_Over","LOCALS",0)~ THEN REPLY ~(*You reach around and touch her face, gently turning it so that she is facing you... then looking into her eyes you speak*) I am sorry Leina, the last thing I wanted was to open up old wounds. Here take my hand, we will leave this place and speak no more of dragons.~ GOTO firkdead10
	IF ~OR(2)
Gender(Player1,FEMALE)
Global("VP_MyFlirt_Is_Over","LOCALS",1)~ THEN REPLY ~I am sorry Leina, I didn't mean to pry.~ GOTO firkdead7
	IF ~OR(2)
Gender(Player1,FEMALE)
Global("VP_MyFlirt_Is_Over","LOCALS",1)~ THEN REPLY ~You were close to this teacher... I am sorry I didn't mean to open up old wounds forgive me.~ GOTO firkdead7
	IF ~OR(2)
Gender(Player1,FEMALE)
Global("VP_MyFlirt_Is_Over","LOCALS",1)~ THEN REPLY ~So these teachers of yours died before they could fill your head with more nonsense. Seems fate did you a favour.~ GOTO firkdead11
END

IF ~~ THEN BEGIN rayvon
 SAY ~He knows why we are... I can see it in his eyes. Please <CHARNAME>, I really don't think he is interested in any explanations.~
  IF ~True()~ THEN EXTERN ~RAYVON~ 2
  IF ~InParty("Hrothgar")
!Dead("Hrothgar")~ THEN EXTERN ~HROTHJ~ rayvon2
  IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~EDWINJ~ rayvon
  IF ~InParty("Yoshimo")
!Dead("Yoshimo")~ THEN EXTERN ~YOSHJ~ NEJ155
  IF ~InParty("Kachiko")
!Dead("Kachiko")~ THEN EXTERN ~KACHIJ~ NEJ60
  IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ264
  IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ554
END

IF ~~ THEN BEGIN immy1
 SAY ~(*Smiling affectionately*) Ah the infamous Imoen... at last we get to meet.~
=
~I have heard much from <CHARNAME> about the lovable rogue Imoen, but then of course, neither of you knew you were siblings.~
 	IF ~~ THEN EXTERN ~IMOEN2~ leina1
END

IF ~~ THEN BEGIN immy2
 SAY ~No I... heck I didn't mean that at all Imoen. I just meant that maybe lovable rogue is not a term one would use to describe one's sister.~
 	IF ~~ THEN EXTERN ~IMOEN2~ leina2
END

IF ~~ THEN BEGIN immy3
 SAY ~I don't... Oh dear this is not going at all like it should. Imoen, I just wanted to say that I have heard a lot about <CHARNAME'S> courageous friend.~
=
~I have the greatest respect for you, for what you both have battled through in your short lives, what you are still battling through even now.~
 	IF ~~ THEN EXTERN ~IMOEN2~ leina3
END

IF ~~ THEN BEGIN immy4
 SAY ~(*Laughing softly*) I am not looking for sympathy Imoen.~
=
~Just as you will never be the same girl who left Irenicus's dungeon all that time ago, so have my experiences made me the girl I am today and strange as it may sound, for that I am grateful.~
 	IF ~~ THEN EXTERN ~IMOEN2~ leina4
END

IF ~~ THEN BEGIN immy5
 SAY ~(*She smiles at the young girls romantic interpretation of her life*) Aye Imoen, I took a man once, called him husband, loved him, worshipped him... only to have my heart broken, my dreams shattered in return.~
=
~When my heart finally became whole again, I promised it I would never allow it to suffer such pain again. I swore an oath never to love or to allow a man's love to ever touch it again.~
 	IF ~~ THEN EXTERN ~IMOEN2~ leina5
END

IF ~~ THEN BEGIN immy6
 SAY ~(*She looks at Imoen and smiles*) Please Imoen, no sad face for me. Love truly doesn't interest me anymore, I have all I need in my music. So come, be happy for me.~
 	IF ~~ THEN EXTERN ~IMOEN2~ leina6
END

IF ~~ THEN BEGIN immy7
 SAY ~You of all people know the pain of having a part of you torn away. Would you want to risk the same pain when you are finally made whole again?~
=
~If I never again let a man into my heart then I know also that pain and deceit will never enter it either.~
 	IF ~~ THEN EXTERN ~IMOEN2~ leina7
END

IF ~~ THEN BEGIN immy8
 SAY ~You are still young and yet to experience love in all its terrible reality. The turmoil, the heat of passion and the pain of deceit when those flames die.~
=
~No doubt if I had only your romantic expectations and not the pain of reality, then I would be a different person to who I am today.~
=
~As it is, the strength and wisdom I have gained through my struggle has helped me to see that this thing called love that we all seek, is not destined for us all.~
=
~I swore off love to protect my heart and in truth, I have never been happier.~
=
~You search for love if it is what you dream of Imoen, but do so with open eyes and remember, that  there are none so blind as those blinded by love.~
    IF ~True()~ THEN EXTERN ~IMOEN2~ leina8
  	IF ~InParty("Hrothgar")
!Dead("Hrothgar")~ THEN EXTERN ~IMOEN2~ hrothg1
  	IF ~InParty("Taffic")
!Dead("Taffic")~ THEN EXTERN ~TAFFICJ~ immy1
  	IF ~InParty("Melora")
!Dead("Melora")~ THEN EXTERN ~MELORAJ~ immy1
END

IF ~~ THEN BEGIN tafficuh
  SAY ~I believe the most appropriate expression to use here would be something about pride coming before a fall. Wouldn't you agree Taffic?~
 IF ~True()~ THEN EXTERN ~TAFFICP~ umberhk3
 IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ tafficuh
 IF ~InParty("Kachiko")
InParty("Yoshimo")
!Dead("Kachiko")~ THEN EXTERN ~KACHIJ~ tafficuh
 IF ~InParty("Yoshimo")
InParty("Kachiko")
!Dead("Yoshimo")~ THEN EXTERN ~YOSHJ~ tafficuh
END

IF WEIGHT #5 ~GlobalGT("VP_Enable_Flirts","LOCALS",0)
Global("VP_Enable_Flirts","LOCALS",4)
GlobalGT("VP_LoveTalk","LOCALS",23)
Global("VP_MyFlirt_Is_Over","LOCALS",0)
!Global("VP_Leina_Samuel","GLOBAL",2)
!Global("VP_Leina_Samuel","GLOBAL",4)
!Global("VP_Leina_Samuel","GLOBAL",6)
!Global("VP_InHalruaa","GLOBAL",1)~ THEN BEGIN NewFlirts
  SAY ~Yes... you need me for something?~	
/*15*/ IF ~Global("VP_Flirt_Option_15","LOCALS",0)~ THEN REPLY ~(*You come up behind Leina and gently blow in to the back of her neck.*)~ DO ~SetGlobal("VP_Flirt_Option_15","LOCALS",1)~ GOTO NF1501
/*15*/ IF ~Global("VP_Flirt_Option_15","LOCALS",1)~ THEN REPLY ~(*You come up behind Leina and gently blow in to the back of her neck.*)~ DO ~SetGlobal("VP_Flirt_Option_15","LOCALS",2)~ GOTO NF1502
/*15*/ IF ~Global("VP_Flirt_Option_15","LOCALS",2)~ THEN REPLY ~(*You come up behind Leina and gently blow in to the back of her neck.*)~ DO ~SetGlobal("VP_Flirt_Option_15","LOCALS",0)~ GOTO NF1503
/*16*/ IF ~Global("VP_Flirt_Option_16","LOCALS",0)~ THEN REPLY ~A gold piece for your thoughts Leina? You've been staring at me very intensely for some time now.~ DO ~SetGlobal("VP_Flirt_Option_16","LOCALS",1)~ GOTO NF1601
/*16*/ IF ~Global("VP_Flirt_Option_16","LOCALS",1)~ THEN REPLY ~A gold piece for your thoughts Leina? You've been staring at me very intensely for some time now.~ DO ~SetGlobal("VP_Flirt_Option_16","LOCALS",2)~ GOTO NF1602
/*16*/ IF ~Global("VP_Flirt_Option_16","LOCALS",2)~ THEN REPLY ~A gold piece for your thoughts Leina? You've been staring at me very intensely for some time now.~ DO ~SetGlobal("VP_Flirt_Option_16","LOCALS",0)~ GOTO NF1603
/*17*/ IF ~~ THEN REPLY ~(*Raising a bottle of wine*) Leina, would you care to help me empty this bottle, if for no other reason than to free up space in my backpack?~ GOTO NF17
/*18*/ IF ~Global("VP_Flirt_Option_18","LOCALS",0)~ THEN REPLY ~I was thinking aloud Leina. Your husband was a fool not to recognise the value of the jewel he held in his hand.~ DO ~SetGlobal("VP_Flirt_Option_18","LOCALS",1)~ GOTO NF1801
/*18*/ IF ~Global("VP_Flirt_Option_18","LOCALS",1)~ THEN REPLY ~I was thinking aloud Leina. Your husband was a fool not to recognise the value of the jewel he held in his hand.~ DO ~SetGlobal("VP_Flirt_Option_18","LOCALS",2)~ GOTO NF1802
/*18*/ IF ~Global("VP_Flirt_Option_18","LOCALS",2)~ THEN REPLY ~I was thinking aloud Leina. Your husband was a fool not to recognise the value of the jewel he held in his hand.~ DO ~SetGlobal("VP_Flirt_Option_18","LOCALS",0)~ GOTO NF1803
/*19*/ IF ~~ THEN REPLY ~(*You notice a faraway look in Leina's eyes as you glance her way. Rummaging in your backpack you find a cork and toss it playfully at her.*) Hey Leina, wake up this is no time for daydreaming.~ GOTO NF19
/*20*/ IF ~~ THEN REPLY ~(*You take her right hand and bending forward you gently brush the back of it with your lips.*)~ GOTO NF20
/*21*/ IF ~~ THEN REPLY ~A question for you Leina. What's the difference between making love and archery?~ GOTO NF21
END

IF ~~ THEN BEGIN NF1501
  SAY ~(*She shivers slightly*) Mmm... could there be, I wonder, a tempest brewing from so small a breeze? ~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NF1502
  SAY ~(*She stops abruptly causing you both to fall to the ground in tangled heap*) For a moment there, I feared it was the hot breath of a dragon I felt at my back.~
=
~(*Then sitting up and untangling her arms and legs from yours, she laughs and holds her hand out to you*)  Come <CHARNAME>, help me up before the rest of the group happen upon us in this predicament.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NF1503
  SAY ~If we are breathing down each others backs, then this is one party that doesn't need to be worry whether it is gathered or not in order to move on.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NF1601
  SAY ~A person's thoughts are their own and private <CHARNAME>. If I was to sell them to you they would no longer be mine nor would they be private.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NF1602
  SAY ~Was I? I am sorry <CHARNAME>, I didn't mean to embarrass you. (*She looks away*)~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NF1603
  SAY ~(*A flush comes to her cheeks*) I am sorry <CHARNAME>, it was not my intention to be rude. As for my thoughts, I need to ponder them further myself before I am ready to share them.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NF17
  SAY ~I am always ready to put a good vintage to bed <CHARNAME>, besides, it is sad to see a man drinking alone. Come, we will toast each other's health.~
	IF ~~ THEN REPLY ~(*Taking a swig yourself, you then wipe the bottle top and hand it to her*) I'm sorry I don't have any glasses, my toast will be to Leina, the most beautiful half elf to walk the lands of Faerun and to the day I freed so captivating a captive.~ GOTO NF1702
	IF ~~ THEN REPLY ~(*Taking a swig yourself, you then wipe the bottle top and hand it to her*) My toast will be to Leina, our very own ray of sunshine, even on our rainiest of days.~ GOTO NF1703
	IF ~~ THEN REPLY ~(*Taking a swig yourself, you then wipe the bottle top and hand it to her*) To Leina for... for... for being Leina.~ GOTO NF1703
	IF ~~ THEN REPLY ~(*Taking a swig yourself, you then wipe the bottle top and hand it to her*) And pray tell me pretty bard, how long does a vintage have to wait in order to be tasted and put to bed, by such sweet lips?~ GOTO NF1704
END

IF ~~ THEN BEGIN NF1702
  SAY ~(*She takes a swig herself and hands the bottle back to you*) And this half elf will drink to the bold and handsome hero who so bravely freed the captive.~
	IF ~~ THEN REPLY ~(*You look at the bottle and give it a shake*) Damn brewers, making a person pay the same price whilst they make the bottles smaller these days.~ GOTO NF1705
	IF ~~ THEN REPLY ~(*You look at the bottle and give it a shake*) Strange, I could have sworn we've only had one drink each from this bottle?~ GOTO NF1705
END

IF ~~ THEN BEGIN NF1703
  SAY ~(*She takes a swig herself and hands the bottle back to you*) Such a gallant toast my good sir. My own will be... to <CHARNAME>, a man touched by the gods but whose feet are firmly fixed in the world of mortals.~
	IF ~~ THEN REPLY ~(*You look at the bottle and give it a shake*) Damn brewers, making a person pay the same price whilst they make the bottles smaller these days.~ GOTO NF1705
	IF ~~ THEN REPLY ~(*You look at the bottle and give it a shake*) Strange, I could have sworn we've only had one drink each from this bottle?~ GOTO NF1705
END

IF ~~ THEN BEGIN NF1704
  SAY ~(*Taking a swig and laughing, she hands the bottle back to you*) As long as it isn't allowed to mature too long, retains a good body and fresh bouquet... I would say... as long as it takes <CHARNAME>.~
	IF ~~ THEN REPLY ~(*You look at her sheepishly and then shake the bottle*) You can't blame a man for trying. Strange, I could have sworn we've only had one drink each from this bottle?~ GOTO NF1705
	IF ~~ THEN REPLY ~(*You look at her and sigh before turning your attention back to the bottle*) Ah, how many times have I heard those, or similar words in answer to my questions. Mmm, I could have sworn we've only had one drink each from this bottle?~ GOTO NF1705
END

IF ~~ THEN BEGIN NF1705
  SAY ~(*She touches your hand lightly and laughs softly*) I'll tell you what <CHARNAME>, I will buy the next bottle and I promise not to drink half before asking my friends to join me in a toast.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NF1801
  SAY ~To him a jewel was a thing to be traded, not treasured and kept safe. (*She turns away quickly*)~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NF1802
  SAY ~(*She blushes slightly as she pushes her hair from her face*) Thank you <CHARNAME>, you always seem to know when a girl's moral is in need of a boost.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NF1803
  SAY ~If I am to be likened to a jewel, then you should know that this jewel will not be set and chained in gold, nor will it be fastened so as to adorn any part of a man's anatomy.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NF19
  SAY ~What... (*Too late. To your horror the startled girl stumbles as she looks up at you and you rush to catch her. As she falls into your arms you are suddenly taken aback by the closeness of her and the smell of her hair in your nostrils.*)~
=
~(*Suddenly you become aware of your own body, its feelings and responses, as you hold her against you... Looking into your bewildered face she laughs*) Thank you <CHARNAME>, you can let go of me now.~
	IF ~~ THEN REPLY ~(*She almost falls to the ground as you abruptly let her go*) Of course, are you ok?~ GOTO NF1902
	IF ~~ THEN REPLY ~(*You hold her for a few seconds more and then release her*) Sorry Leina, I didn't mean to startle you. Are you ok?~ GOTO NF1903
	IF ~~ THEN REPLY ~(*You continue holding her, reluctant to let the moment to pass*) Come sit down for a minute or two, we need to make sure that you are ok.~ GOTO NF1904
	IF ~~ THEN REPLY ~(*You pull her a little closer to you*) Mmm, if I'd known how good this was going to feel, I would have thrown something at you sooner.~ GOTO NF1905
END

IF ~~ THEN BEGIN NF1902
  SAY ~(*She laughs as she regains her balance*) Hey steady on, I'm not about to bite the hand of my saviour. And yes I am fine thank you <CHARNAME>. I should have been watching where I was going and not daydreaming.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NF1903
  SAY ~(*She senses your discomfort but makes no attempt to move away. Instead she moves a little closer to you*) Yes I am fine thank you <CHARNAME>. I should have been watching where I was going and not daydreaming.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NF1904
  SAY ~(*Aware of the effect she is having on you, she snuggles in closer, and takes your hand as she allows you to gently sit her down*) Thank you <CHARNAME>. I am fine, a little shaken but nothing for you to worry about. Thank you again.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NF1905
  SAY ~(*She looks up at you and bursts out laughing*) Not the most original way of getting a girl to fall into your arms <CHARNAME>. (*She stays in your embrace for a moment longer, but then pulls herself free and skips away.*)~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NF20
  SAY ~(*She looks at you with a bemused look in those beautiful eyes of hers*) You surprise me <CHARNMAME>. Tell me, what has my hand done to merit such honour and attention?~
	IF ~~ THEN REPLY ~No reason other than it was just there, looking forlorn and obviously in need of a little attention.~ GOTO NF2002
	IF ~~ THEN REPLY ~I didn't mean to appear so forward Leina. I apologise if my action has offended you.~ GOTO NF2002
	IF ~~ THEN REPLY ~I did not wish to appear forward and thought a kiss anywhere other than on the lady's hand might result in the lady taking offense.~ GOTO NF2002
END

IF ~~ THEN BEGIN NF2002
  SAY ~(*She holds up her left hand to you*) Then good sir, please do not offend the other one by failing to give it the same attention.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NF21
  SAY ~(*She looks at you a little baffled*) Now why do I feel I am going to regret answering that one... I have no idea <CHARNAME>.~
	IF ~~ THEN REPLY ~(*Grinning*) In that case, do you want to come and watch me shoot a long bow?~ GOTO NF2102
END

IF ~~ THEN BEGIN NF2102
  SAY ~(*Rolling her eyes*) I walked right into that one didn't I?~
   IF ~~ THEN EXIT
END

IF WEIGHT #6 ~GlobalGT("VP_Enable_Flirts","LOCALS",0)
Global("VP_MyFlirt_Is_Over","LOCALS",0)
!Global("VP_Leina_Samuel","GLOBAL",2)
!Global("VP_Leina_Samuel","GLOBAL",4)
!Global("VP_Leina_Samuel","GLOBAL",6)
Global("VP_InHalruaa","GLOBAL",1)~ THEN BEGIN halruaaf
  SAY ~Yes... you need me for something?~	
	IF ~~ THEN REPLY ~I was thinking Leina, when we return to our own time, you will be able to tell the tale of Halruaa first hand, unlike many bards tales of today.~ GOTO HF101
	IF ~Global("VP_Flirt_Option_H2","LOCALS",0)~ THEN REPLY ~(*You let your eye run appreciatively over Leina*) A wizard's garb is very becoming on you Leina, it's almost a crime to hide so much beauty under armour again.~ DO ~SetGlobal("VP_Flirt_Option_H2","LOCALS",1)~ GOTO HF201
	IF ~Global("VP_Flirt_Option_H2","LOCALS",1)~ THEN REPLY ~(*You let your eye run appreciatively over Leina*) A wizard's garb is very becoming on you Leina, it's almost a crime to hide so much beauty under armour again.~ DO ~SetGlobal("VP_Flirt_Option_H2","LOCALS",2)~ GOTO HF202
	IF ~Global("VP_Flirt_Option_H2","LOCALS",2)~ THEN REPLY ~(*You let your eye run appreciatively over Leina*) A wizard's garb is very becoming on you Leina, it's almost a crime to hide so much beauty under armour again.~ DO ~SetGlobal("VP_Flirt_Option_H2","LOCALS",0)~ GOTO HF203
	IF ~InParty("Dar")
!Dead("Dar")
Global("VP_Flirt_Option_H3","LOCALS",0)~ THEN REPLY ~(*You whisper to Leina softly*) Keep your eye on Dar, Leina. If he trips on his robe once more, I swear he is going to fall flat on his face.~ DO ~SetGlobal("VP_Flirt_Option_H3","LOCALS",1)~ GOTO HF302
	IF ~InParty("Dar")
!Dead("Dar")
Global("VP_Flirt_Option_H3","LOCALS",1)~ THEN REPLY ~(*You whisper to Leina softly*) Keep your eye on Dar, Leina. If he trips on his robe once more, I swear he is going to fall flat on his face.~ DO ~SetGlobal("VP_Flirt_Option_H3","LOCALS",0)~ GOTO HF303
	IF ~Global("VP_Flirt_Option_31","LOCALS",0)
OR(2)
!InParty("Dar")
Dead("Dar")~ THEN REPLY ~(*You whisper to Leina softly*) Keep your eye on Hrothgar, Leina. If he trips his robe once more, I swear he is going to fall flat on his face.~ DO ~SetGlobal("VP_Flirt_Option_31","LOCALS",1)~ GOTO HF301
	IF ~Global("VP_Flirt_Option_31","LOCALS",1)
OR(2)
!InParty("Dar")
Dead("Dar")~ THEN REPLY ~(*You whisper to Leina softly*) Keep your eye on Hrothgar, Leina. If he trips his robe once more, I swear he is going to fall flat on his face.~ DO ~SetGlobal("VP_Flirt_Option_31","LOCALS",2)~ GOTO HF302
	IF ~Global("VP_Flirt_Option_31","LOCALS",2)
OR(2)
!InParty("Dar")
Dead("Dar")~ THEN REPLY ~(*You whisper to Leina softly*) Keep your eye on Hrothgar, Leina. If he trips his robe once more, I swear he is going to fall flat on his face.~ DO ~SetGlobal("VP_Flirt_Option_31","LOCALS",3)~ GOTO HF303
	IF ~~ THEN REPLY ~Don't you find it a little frightening, us here among all these mages and knowing the awesome power that could be turned against us at any time?~ GOTO HF401
END

IF ~~ THEN BEGIN HF101
  SAY ~It doesn't necessarily follow that because I know the truth, that others will believe in it <CHARNAME>. This tale may be a little too fantastic to hold up as true, no matter how it is told.~
	IF ~~ THEN REPLY ~Ah... but my dear Leina, one look at your face and none would expect other than the truth to come from the lips of one so fair.~ GOTO HF102
	IF ~~ THEN REPLY ~Surely as to whether a tale is believed by an audience or not is down to the skill of the bard?~ GOTO HF106
	IF ~~ THEN REPLY ~Bards are notorious for adding more than a little exaggeration, a touch of romance to their tales, often making it difficult to know which parts are truth and which are fantasy. Surely this tale has no need for exaggerations, and this is what will make it credible to audiences?~ GOTO HF110
END

IF ~~ THEN BEGIN HF102
  SAY ~(*You notice the colour rise in her cheek as she laughs softly*) But often it is the beautiful people who find that deception comes more easily for that very reason.~
=
~Do the bards sing of the ugly man deceiving the fair maiden? No, it is always the handsome youth who breaks the girl's heart.~
=
~As it is always the beautiful maiden who uses her wiles to ensnare the unsuspecting man. Who will then chase her every whim for a promise that she never intends to keep. I am thinking that it is the wise woman who chooses the plain husband.~
	IF ~~ THEN REPLY ~And is it also the wise man who chooses the plain bride?~ GOTO HF103
	IF ~~ THEN REPLY ~And what of Leina, will she not allow herself the company of a handsome face or will she only ever trust the word of a plain man?~ GOTO HF104
	IF ~~ THEN REPLY ~And what of the beautiful face of Leina... should I not to trust the girl because of that which nature has generously bestowed upon her?~ GOTO HF105
END

IF ~~ THEN BEGIN HF103
  SAY ~A beautiful woman can be as fickle as a handsome man <CHARNAME>, so maybe if a man wants to be content in the knowledge that his wife's beauty doesn't inflame passion in another man, then yes, he would be wise to choose a homely bride.~
=
~Whether *he* would be content with his choice, now that is another matter.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN HF104
  SAY ~Is <CHARNAME> hoping for a compliment in my answer I ask?~
=
~I enjoy your company as you well know, so I will leave it to how you perceive yourself as to how you answer your own question of whether Leina seeks only the company of the plain man. (*She smiles secretly as she turns away*).~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN HF105
  SAY ~Perhaps it is not so much as whether <CHARNAME> should trust the face of Leina, but whether Leina should trust the glib tongue of <CHARNAME>? (*She turns to walk away but then she stops, turning back she flashes you a smile and turns away again*).~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN HF106
  SAY ~The bard can tell the tale but those who listen are not without minds of their own.~
=
~Whereas they will believe that a man fought and slew a dragon with his bare hands because they know that both dragons and heroes exist, but to travel out of ones time... to them that is the world of writers and dreamers.~
	IF ~~ THEN REPLY ~Ah, but we know that it is not only through ones imagination that it's possible. We have travelled to Halruaa, to some point in the past, we have Hrothgar of Easthaven, a legend of the past come to the future, guiding us... Are we to believe that we are the only people to have such an experience?~ GOTO HF107
	IF ~~ THEN REPLY ~People accept that wizards use spells to teleport themselves and there are even spells that they use to stop time. If men can manipulate these forces, why should it be so hard to believe in travel through time?~ GOTO HF108
	IF ~~ THEN REPLY ~Well, I suppose you could always drag Hrothgar around with you. I can't think of better proof than to be in the company of such a distinguished name from the past. Can you?~ GOTO HF109
END

IF ~~ THEN BEGIN HF107
  SAY ~(*Her brow furrows slightly*) I don't know. It is true there are many fanciful tales that tell of the hero who goes back to the past to save his sweetheart a pain the future brings her, or even in an attempt to save a loved one's life.~
=
~Knowing what I know now, I have to wonder that maybe behind the exaggerations, there is after all, some hidden truth. These days have given me much to think on, and I don't think I will view quite so many tales as fanciful as I once did.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN HF108
  SAY ~People have a tendency to believe only what they have experienced for themselves or have been taught by a trusted scholar or parent.~
=
~Magic is all around us <CHARNAME>, we accept its power because we see the mage casting his spells.~
=
~Even those who do not understand magic, will accept that which they see, but do they see mages flitting back and forth through time, bringing proof of their travels.~
=
~No, and until they do they will never accept it as anything else other than fanciful whims of the story tellers.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN HF109
  SAY ~(*She throws her head back and laughs*) What a wondrous idea <CHARNAME>! I would love nothing more than to have Hrothgar travel with me.~
=
~His tales of the past and of his adventuring days are exactly what bards love to sing of, but unfortunately the man has his own agenda and I don't think travelling the land with a bard, telling his stories is on that agenda.~
=
~Not now, nor any time in the future.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN HF110
  SAY ~Time travel itself is fantasy to the people of today <CHARNAME>, and for that reason alone people will take it to be an exaggeration in itself, nothing more than a bard's romantic ideas of the impossible.~
=
~That is not to say that I will not tell it, I just don't expect it to be taken as anything other than a tale told to entrance its audience.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN HF201
  SAY ~If not for my armour <CHARNAME>, I doubt I would be alive to dress in any sort of garb. So I am not about to trade it for a wizard's robe, no matter how good you say it looks on me.~
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN HF202
  SAY ~Ah, but which is preferable to <CHARNAME>, that he is able to cast that eye of his over Leina alive and wearing armour or Leina looking good but dead in a wizards garb? I know which I prefer. (*Laughing softly she turns away.*)~
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN HF203
  SAY ~Please, with regards to my 'garb', I would appreciate it if you kept your eyes and your thoughts to yourself <CHARNAME>. (*She quickly turns away from your gaze.*)~
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN HF301
  SAY ~(*Trying to stifle a laugh*) <CHARNAME>, don't be so unkind. You can see he's not used to his legs being so restricted the way he keeps trying to stride out.~
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN HF302
  SAY ~(*Trying to stifle a laugh*) I had noticed and thought to offer to take the hem up a little for him, but the thought of seeing even more of those legs of his struggling to walk with some decorum in that robe made me think again.~
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN HF303
  SAY ~(*She slaps you gently on the arm*) Shh, he'll hear you <CHARNAME>. We don't want him feeling any more self conscious than he already is.~
=
~Maybe I'll go walk beside him, be ready to catch him if he does trip. After all, it won't look good if he's splayed out on the floor and a couple of Halruaa's mages happen upon us. Funny maybe, but not good.~
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN HF401
  SAY ~I haven't given it much thought. I've been too busy being intrigued with how we happen to be here to actually think on the reality of where we are.~
=
~We don't stand a cat in hell's chance of getting out of here alive if we are discovered, do we <CHARNAME>?~
	IF ~~ THEN REPLY ~No we don't and it is only now that we are here that I am seeing this.~ GOTO HF402
	IF ~~ THEN REPLY ~No and I can't help thinking I was too hasty in agreeing to Tilorn sending us here. I have put you all in unnecessary danger.~ GOTO HF403
	IF ~~ THEN REPLY ~No we don't and I had no right asking you. Any of you to risk your lives... I am sorry, Leina.~ GOTO HF403
	IF ~~ THEN REPLY ~Damn Tilorn and his crazy ideas, and Hrothgar for listening to him! If anything happens to you Leina, I swear they will both answer to me!~ GOTO HF404
END

IF ~~ THEN BEGIN HF402
  SAY ~Is that not always the way with life <CHARNAME>? If we knew the outcome of every move before we made it, our lives would not be as rich and a lot of life's mysteries would still be mysteries because of our fear to take a chance?~
=
~We are here now and who knows, we may yet do some good, and if I say so myself, we all make pretty darn good mages, so let's put all thoughts of discovery out of our minds and get on with what we came here to do.~
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN HF403
  SAY ~(*She takes your hand and gives it an affectionate squeeze*) Look <CHARNAME>, we are all capable of deciding for ourselves what we do.~
=
~I can't speak for the rest of the group but I believe that both Hrothgar and Tilorn are genuinely worried about something, so much so that they are prepared to alter the past in order to put it right.~
=
~They knew the risks and I don't think they took the decision to send us here without a great deal of thought, at least on Tilorn's side. Hrothgar had very little time to think but he showed no hesitation in doing as Tilorn asked.~
=
~Please, I am here because I want to be and so are the others. I don't recall seeing any twisting of arms. So let's just do what we have to do and trust in Tilorn to get us home when it is done.~
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN HF404
  SAY ~(*She takes your hand and gives it an affectionate squeeze*) I thank you for your concern <CHARNAME>, but please, I am here because I choose to be.~
=
~Not just because I could see the worry in both Hrothgar's and Tilorn's face, when they spoke of the need to change the past in order to change the future, but because I genuinely believe I can be of some help to you.~
=
~And if I should die doing so, please, you have to remember that I came here for you. Neither Hrothgar nor Tilorn influenced my decision, therefore no blame should be laid at their feet.~
=
~Now, no more talk of dying. The quicker we do what we are here to do, then the less chance there is of any one dying.~
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN vampamb0
  SAY ~Stay away from <PRO_HIMHER>, vampire! You and your murderous bastard of a brother had taken too many lives as is. I will not allow you to harm <CHARNAME>...~
  IF ~~ THEN EXTERN ~BODHIAMB~ vampamb
END

IF ~~ THEN BEGIN slayerat
  SAY ~What is it <CHARNAME>? You called out in your slee... your face... what is wrong? (*She tries to rouse you*) Come waken... it is but another bad dream.~
  IF ~~ THEN REPLY ~I... this is no dream Leina. Please, get away from me for I fear I have no control over this moment.~ DO ~SetGlobal("EndangerLovedOne","GLOBAL",7)~ GOTO slayer1
  IF ~~ THEN REPLY ~Leina... no... yea gods no! Go my dearest girl... I beg you, get away from me! Something stirs within and I can not stop it.~ DO ~SetGlobal("EndangerLovedOne","GLOBAL",7)~ GOTO slayer1
END

IF ~~ THEN BEGIN slayer1
  SAY ~(*She screams*) What in the nine... nooo!~
  IF ~~ THEN DO ~ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))~ EXIT
END

IF ~~ THEN BEGIN slayerba
  SAY ~(*Her face ashen and horror stricken*) Wha... what was that beast? It's aura... it was black, murky and so twisted! I have never felt so much hatred emanate from a living creature as was coming from that... that thing?~
  IF ~~ THEN REPLY ~Thank goodness you are not hurt my sweet girl. I could see you, see you all and I wanted to kill, to murder, the urge was too powerful for me to control... what is this thing that I have become?~ GOTO slayer2
  IF ~~ THEN REPLY ~I... what happened, did I hurt anyone? Yea gods Leina, what does this mean, what have I become?~ GOTO slayer2
  IF ~~ THEN REPLY ~The power... Leina it was awesome! I have never before experienced so much energy, so much power. I must learn to control it, for if I had even half the power that creature  possessed then none would dare oppose me again... ever!~ GOTO slayer3
END

IF ~~ THEN BEGIN slayer2
  SAY ~(*She takes your hand and grasping it firmly*) Whatever it was, it wasn't you. I have come to know that which is in your heart, and now I have seen for myself, the terrible thing that you have fought so long to deny.~
=
~Please don't give up the fight, with or with out your soul you are strong enough to hold on to who you are. Together we will end this nightmare and you will be whole again. I promise.~
  IF ~True()~ THEN DO ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)~ EXIT
  IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~MINSCJ~ 203
  IF ~InParty("Cernd")
!Dead("Cernd")~ THEN EXTERN ~CERNDJ~ 130
  IF ~InParty("HaerDalis")
!Dead("HaerDalis")~ THEN EXTERN ~HAERDAJ~ 141
  IF ~InParty("Mazzy")
!Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ 194
  IF ~InParty("Nalia")
!Dead("Nalia")~ THEN EXTERN ~NALIAJ~ 308
  IF ~InParty("Jan")
!Dead("Jan")~ THEN EXTERN ~JANJ~ 178
  IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~KORGANJ~ 177
  IF ~InParty("Keldorn")
!Dead("Keldorn")
!Global("VP_KrRomanceActive","GLOBAL",1)
!Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN ~KELDORJ~ 243
  IF ~InParty("Valygar")
!Dead("Valygar")
!Global("ValygarRomanceActive","GLOBAL",1)
!Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYGARJ~ 103
  IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~EDWINJ~ 149
  IF ~InParty("Anomen")
!Dead("Anomen")~ THEN EXTERN ~ANOMENJ~ 250
  IF ~InParty("Aerie")
!Dead("Aerie")~ THEN EXTERN ~AERIEJ~ 116
  IF ~InParty("Viconia")
!Dead("Viconia")~ THEN EXTERN ~VICONIJ~ 87
  IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ 432
  IF ~InParty("Imoen2")
!Dead("Imoen2")~ THEN EXTERN ~IMOEN2J~ 1
END

IF ~~ THEN BEGIN slayer3
  SAY ~(*Stepping away from you*) I thought I knew you, how could I have got it so wrong again? If that is the sort of power that you lust after, then I want no part of you <CHARNAME>!~
=
~I will help you see this quest of yours through, that much I owe you for my freedom, but if at anytime I feel you are a danger to these or other innocent people, then I will strike you down myself without a moments hesitation. (*She walks briskly away*).~
  IF ~True()~ THEN DO ~SetGlobal("VP_Hrothgar_Slayer","GLOBAL",1)
SetGlobal("VP_LeinaRomanceAct","GLOBAL",3)~ EXIT
  IF ~InParty("Minsc")
!Dead("Minsc")~ THEN DO ~SetGlobal("VP_LeinaRomanceAct","GLOBAL",3)~ EXTERN ~MINSCJ~ 203
  IF ~InParty("Cernd")
!Dead("Cernd")~ THEN DO ~SetGlobal("VP_LeinaRomanceAct","GLOBAL",3)~ EXTERN ~CERNDJ~ 130
  IF ~InParty("HaerDalis")
!Dead("HaerDalis")~ THEN DO ~SetGlobal("VP_LeinaRomanceAct","GLOBAL",3)~ EXTERN ~HAERDAJ~ 141
  IF ~InParty("Mazzy")
!Dead("Mazzy")~ THEN DO ~SetGlobal("VP_LeinaRomanceAct","GLOBAL",3)~ EXTERN ~MAZZYJ~ 194
  IF ~InParty("Nalia")
!Dead("Nalia")~ THEN DO ~SetGlobal("VP_LeinaRomanceAct","GLOBAL",3)~ EXTERN ~NALIAJ~ 308
  IF ~InParty("Jan")
!Dead("Jan")~ THEN DO ~SetGlobal("VP_LeinaRomanceAct","GLOBAL",3)~ EXTERN ~JANJ~ 178
  IF ~InParty("Korgan")
!Dead("Korgan")~ THEN DO ~SetGlobal("VP_LeinaRomanceAct","GLOBAL",3)~ EXTERN ~KORGANJ~ 177
  IF ~InParty("Keldorn")
!Dead("Keldorn")
!Global("VP_KrRomanceActive","GLOBAL",1)
!Global("VP_KrRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("VP_LeinaRomanceAct","GLOBAL",3)~ EXTERN ~KELDORJ~ 243
  IF ~InParty("Valygar")
!Dead("Valygar")
!Global("ValygarRomanceActive","GLOBAL",1)
!Global("ValygarRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("VP_LeinaRomanceAct","GLOBAL",3)~ EXTERN ~VALYGARJ~ 103
  IF ~InParty("Edwin")
!Dead("Edwin")~ THEN DO ~SetGlobal("VP_LeinaRomanceAct","GLOBAL",3)~ EXTERN ~EDWINJ~ 149
  IF ~InParty("Anomen")
!Dead("Anomen")~ THEN DO ~SetGlobal("VP_LeinaRomanceAct","GLOBAL",3)~ EXTERN ~ANOMENJ~ 250
  IF ~InParty("Aerie")
!Dead("Aerie")~ THEN DO ~SetGlobal("VP_LeinaRomanceAct","GLOBAL",3)~ EXTERN ~AERIEJ~ 116
  IF ~InParty("Viconia")
!Dead("Viconia")~ THEN DO ~SetGlobal("VP_LeinaRomanceAct","GLOBAL",3)~ EXTERN ~VICONIJ~ 87
  IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN DO ~SetGlobal("VP_LeinaRomanceAct","GLOBAL",3)~ EXTERN ~JAHEIRAJ~ 432
  IF ~InParty("Imoen2")
!Dead("Imoen2")~ THEN DO ~SetGlobal("VP_LeinaRomanceAct","GLOBAL",3)~ EXTERN ~IMOEN2J~ 1
END

IF ~~ THEN BEGIN inhell
  SAY ~I often said to myself when it was getting rough - it could be worst, it could be Nine Hells... But now I am afraid we are in Nine Hells.~
  IF ~True()~ THEN EXIT
  IF ~InParty("Edwin")
See("Edwin")~ THEN EXTERN ~EDWINJ~ 95
  IF ~InParty("Nalia")
See("Nalia")~ THEN EXTERN ~NALIAJ~ 268
  IF ~InParty("Keldorn")
See("Keldorn")~ THEN EXTERN ~KELDORJ~ 189
  IF ~InParty("Haerdalis")
See("Haerdalis")~ THEN EXTERN ~HAERDAJ~ 100
  IF ~InParty("Anomen")
See("Anomen")~ THEN EXTERN ~ANOMENJ~ 258
  IF ~InParty("Mazzy")
See("Mazzy")~ THEN EXTERN ~MAZZYJ~ 166
  IF ~InParty("Cernd")
See("Cernd")~ THEN EXTERN ~CERNDJ~ 100
  IF ~InParty("Jaheira")
See("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ 450
  IF ~InParty("Yoshimo")
See("Yoshimo")~ THEN EXTERN ~YOSHJ~ 90
  IF ~InParty("Viconia")
See("Viconia")~ THEN EXTERN ~VICONIJ~ 117
  IF ~InParty("Jan")
See("Jan")~ THEN EXTERN ~JANJ~ 147
  IF ~InParty("Korgan")
See("Korgan")~ THEN EXTERN ~KORGANJ~ 115
  IF ~InParty("Valygar")
See("Valygar")~ THEN EXTERN ~VALYGARJ~ 77
  IF ~InParty("Minsc")
See("Minsc")~ THEN EXTERN ~MINSCJ~ 155
  IF ~InParty("Aerie")
See("Aerie")~ THEN EXTERN ~AERIEJ~ 131
  IF ~InParty("Imoen2")
See("Imoen2")~ THEN EXTERN ~IMOEN2J~ 10
  IF ~InParty("Kachiko")
See("Kachiko")~ THEN EXTERN ~KACHIJ~ N55
END

IF ~~ THEN BEGIN TOL21
  SAY ~Irenicus had willfully damaged the Tree of Life. Thus he became an enemy of everyone with elven blood in their veins. I will fight him with you.~
  IF ~True()~ THEN EXTERN ~PLAYER1~ 53
  IF ~InParty("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 52
  IF ~InParty("Aerie")
Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 51
  IF ~InParty("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 50
  IF ~InParty("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 49
  IF ~InParty("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 48
  IF ~InParty("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 47
  IF ~InParty("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 46
  IF ~InParty("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 45
  IF ~InParty("Cernd")~ THEN EXTERN ~PLAYER1~ 44
  IF ~InParty("Nalia")~ THEN EXTERN ~PLAYER1~ 43
  IF ~InParty("Korgan")~ THEN EXTERN ~PLAYER1~ 42
  IF ~InParty("Keldorn")
Global("VP_KrRomanceActive","GLOBAL",0)~ THEN EXTERN ~PLAYER1~ 41
  IF ~InParty("HaerDalis")~ THEN EXTERN ~PLAYER1~ 40
  IF ~InParty("Edwin")~ THEN EXTERN ~PLAYER1~ 39
  IF ~InParty("Jan")~ THEN EXTERN ~PLAYER1~ 38
  IF ~InParty("Mazzy")~ THEN EXTERN ~PLAYER1~ 37
  IF ~InParty("Valygar")~ THEN EXTERN ~PLAYER1~ 36
  IF ~InParty("Minsc")~ THEN EXTERN ~PLAYER1~ 35
  IF ~InParty("Imoen2")~ THEN EXTERN ~PLAYER1~ 34
  IF ~InParty("Kachiko")~ THEN EXTERN ~PLAYER1~ TS55
  IF ~InParty("Yoshimo")~ THEN EXTERN ~PLAYER1~ TS55yosh
  IF ~InParty("Keldorn")
!Global("VP_KrRomanceActive","GLOBAL",0)~ THEN EXTERN ~PLAYER1~ KR_TL0
END

IF ~~ THEN BEGIN TOL22
  SAY ~Give me one good reason why I should run away from a battle with an evil wizard who endangered the whole world in his madness? You are silent? Good. I stand ready to fight.~
  IF ~True()~ THEN EXTERN ~PLAYER1~ 53
  IF ~InParty("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 52
  IF ~InParty("Aerie")
Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 51
  IF ~InParty("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 50
  IF ~InParty("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 49
  IF ~InParty("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 48
  IF ~InParty("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 47
  IF ~InParty("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 46
  IF ~InParty("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 45
  IF ~InParty("Cernd")~ THEN EXTERN ~PLAYER1~ 44
  IF ~InParty("Nalia")~ THEN EXTERN ~PLAYER1~ 43
  IF ~InParty("Korgan")~ THEN EXTERN ~PLAYER1~ 42
  IF ~InParty("Keldorn")
Global("VP_KrRomanceActive","GLOBAL",0)~ THEN EXTERN ~PLAYER1~ 41
  IF ~InParty("HaerDalis")~ THEN EXTERN ~PLAYER1~ 40
  IF ~InParty("Edwin")~ THEN EXTERN ~PLAYER1~ 39
  IF ~InParty("Jan")~ THEN EXTERN ~PLAYER1~ 38
  IF ~InParty("Mazzy")~ THEN EXTERN ~PLAYER1~ 37
  IF ~InParty("Valygar")~ THEN EXTERN ~PLAYER1~ 36
  IF ~InParty("Minsc")~ THEN EXTERN ~PLAYER1~ 35
  IF ~InParty("Imoen2")~ THEN EXTERN ~PLAYER1~ 34
  IF ~InParty("Kachiko")~ THEN EXTERN ~PLAYER1~ TS55
  IF ~InParty("Yoshimo")~ THEN EXTERN ~PLAYER1~ TS55yosh
  IF ~InParty("Keldorn")
!Global("VP_KrRomanceActive","GLOBAL",0)~ THEN EXTERN ~PLAYER1~ KR_TL0
END

IF ~~ THEN BEGIN TOL23
  SAY ~You are right, we do not have time to chat. Just give me a signal to attack.~
  IF ~True()~ THEN EXTERN ~PLAYER1~ 53
  IF ~InParty("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 52
  IF ~InParty("Aerie")
Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 51
  IF ~InParty("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 50
  IF ~InParty("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 49
  IF ~InParty("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 48
  IF ~InParty("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 47
  IF ~InParty("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 46
  IF ~InParty("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 45
  IF ~InParty("Cernd")~ THEN EXTERN ~PLAYER1~ 44
  IF ~InParty("Nalia")~ THEN EXTERN ~PLAYER1~ 43
  IF ~InParty("Korgan")~ THEN EXTERN ~PLAYER1~ 42
  IF ~InParty("Keldorn")
Global("VP_KrRomanceActive","GLOBAL",0)~ THEN EXTERN ~PLAYER1~ 41
  IF ~InParty("HaerDalis")~ THEN EXTERN ~PLAYER1~ 40
  IF ~InParty("Edwin")~ THEN EXTERN ~PLAYER1~ 39
  IF ~InParty("Jan")~ THEN EXTERN ~PLAYER1~ 38
  IF ~InParty("Mazzy")~ THEN EXTERN ~PLAYER1~ 37
  IF ~InParty("Valygar")~ THEN EXTERN ~PLAYER1~ 36
  IF ~InParty("Minsc")~ THEN EXTERN ~PLAYER1~ 35
  IF ~InParty("Imoen2")~ THEN EXTERN ~PLAYER1~ 34
  IF ~InParty("Kachiko")~ THEN EXTERN ~PLAYER1~ TS55
  IF ~InParty("Yoshimo")~ THEN EXTERN ~PLAYER1~ TS55yosh
  IF ~InParty("Keldorn")
!Global("VP_KrRomanceActive","GLOBAL",0)~ THEN EXTERN ~PLAYER1~ KR_TL0
END

IF ~~ THEN BEGIN TOL1
  SAY ~Irenicus had willfully damaged the Tree of Life. Thus he became an enemy of everyone with Elven blood in their veins. Irenicus had hurt and tormented a man I love. How many more reasons do you want me to give you? I am ready to fight, <CHARNAME> and this battle is mine, as well as yours.~
  IF ~True()~ THEN EXTERN ~PLAYER1~ 53
  IF ~InParty("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 52
  IF ~InParty("Aerie")
Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 51
  IF ~InParty("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 50
  IF ~InParty("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 49
  IF ~InParty("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 48
  IF ~InParty("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 47
  IF ~InParty("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 46
  IF ~InParty("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 45
  IF ~InParty("Cernd")~ THEN EXTERN ~PLAYER1~ 44
  IF ~InParty("Nalia")~ THEN EXTERN ~PLAYER1~ 43
  IF ~InParty("Korgan")~ THEN EXTERN ~PLAYER1~ 42
  IF ~InParty("Keldorn")
Global("VP_KrRomanceActive","GLOBAL",0)~ THEN EXTERN ~PLAYER1~ 41
  IF ~InParty("HaerDalis")~ THEN EXTERN ~PLAYER1~ 40
  IF ~InParty("Edwin")~ THEN EXTERN ~PLAYER1~ 39
  IF ~InParty("Jan")~ THEN EXTERN ~PLAYER1~ 38
  IF ~InParty("Mazzy")~ THEN EXTERN ~PLAYER1~ 37
  IF ~InParty("Valygar")~ THEN EXTERN ~PLAYER1~ 36
  IF ~InParty("Minsc")~ THEN EXTERN ~PLAYER1~ 35
  IF ~InParty("Imoen2")~ THEN EXTERN ~PLAYER1~ 34
  IF ~InParty("Kachiko")~ THEN EXTERN ~PLAYER1~ TS55
  IF ~InParty("Yoshimo")~ THEN EXTERN ~PLAYER1~ TS55yosh
  IF ~InParty("Keldorn")
!Global("VP_KrRomanceActive","GLOBAL",0)~ THEN EXTERN ~PLAYER1~ KR_TL0
END

IF ~~ THEN BEGIN TOL2
  SAY ~No. Let's not waste words. I am ready to fight, <CHARNAME> and this battle is mine, as well as yours.~
  IF ~True()~ THEN EXTERN ~PLAYER1~ 53
  IF ~InParty("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 52
  IF ~InParty("Aerie")
Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 51
  IF ~InParty("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 50
  IF ~InParty("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 49
  IF ~InParty("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 48
  IF ~InParty("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 47
  IF ~InParty("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 46
  IF ~InParty("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 45
  IF ~InParty("Cernd")~ THEN EXTERN ~PLAYER1~ 44
  IF ~InParty("Nalia")~ THEN EXTERN ~PLAYER1~ 43
  IF ~InParty("Korgan")~ THEN EXTERN ~PLAYER1~ 42
  IF ~InParty("Keldorn")
Global("VP_KrRomanceActive","GLOBAL",0)~ THEN EXTERN ~PLAYER1~ 41
  IF ~InParty("HaerDalis")~ THEN EXTERN ~PLAYER1~ 40
  IF ~InParty("Edwin")~ THEN EXTERN ~PLAYER1~ 39
  IF ~InParty("Jan")~ THEN EXTERN ~PLAYER1~ 38
  IF ~InParty("Mazzy")~ THEN EXTERN ~PLAYER1~ 37
  IF ~InParty("Valygar")~ THEN EXTERN ~PLAYER1~ 36
  IF ~InParty("Minsc")~ THEN EXTERN ~PLAYER1~ 35
  IF ~InParty("Imoen2")~ THEN EXTERN ~PLAYER1~ 34
  IF ~InParty("Kachiko")~ THEN EXTERN ~PLAYER1~ TS55
  IF ~InParty("Yoshimo")~ THEN EXTERN ~PLAYER1~ TS55yosh
  IF ~InParty("Keldorn")
!Global("VP_KrRomanceActive","GLOBAL",0)~ THEN EXTERN ~PLAYER1~ KR_TL0
END

IF ~~ THEN BEGIN TOL3
  SAY ~I am partaking readily and willingly. You are right, we do not have time to chat. Just give me a signal to attack.~
  IF ~True()~ THEN EXTERN ~PLAYER1~ 53
  IF ~InParty("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 52
  IF ~InParty("Aerie")
Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 51
  IF ~InParty("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 50
  IF ~InParty("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 49
  IF ~InParty("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 48
  IF ~InParty("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 47
  IF ~InParty("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 46
  IF ~InParty("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 45
  IF ~InParty("Cernd")~ THEN EXTERN ~PLAYER1~ 44
  IF ~InParty("Nalia")~ THEN EXTERN ~PLAYER1~ 43
  IF ~InParty("Korgan")~ THEN EXTERN ~PLAYER1~ 42
  IF ~InParty("Keldorn")
Global("VP_KrRomanceActive","GLOBAL",0)~ THEN EXTERN ~PLAYER1~ 41
  IF ~InParty("HaerDalis")~ THEN EXTERN ~PLAYER1~ 40
  IF ~InParty("Edwin")~ THEN EXTERN ~PLAYER1~ 39
  IF ~InParty("Jan")~ THEN EXTERN ~PLAYER1~ 38
  IF ~InParty("Mazzy")~ THEN EXTERN ~PLAYER1~ 37
  IF ~InParty("Valygar")~ THEN EXTERN ~PLAYER1~ 36
  IF ~InParty("Minsc")~ THEN EXTERN ~PLAYER1~ 35
  IF ~InParty("Imoen2")~ THEN EXTERN ~PLAYER1~ 34
  IF ~InParty("Kachiko")~ THEN EXTERN ~PLAYER1~ TS55
  IF ~InParty("Yoshimo")~ THEN EXTERN ~PLAYER1~ TS55yosh
  IF ~InParty("Keldorn")
!Global("VP_KrRomanceActive","GLOBAL",0)~ THEN EXTERN ~PLAYER1~ KR_TL0
END

IF ~~ THEN BEGIN TSTOB6
  SAY ~This is it, then? I cannot believe I am witnessing a mortal becoming a god.~
  IF ~!Alignment(Player1,MASK_EVIL)~ THEN GOTO TSTOB10
  IF ~Alignment(Player1,MASK_EVIL)~ THEN GOTO TSTOB11
END

IF ~~ THEN BEGIN TSTOB7
  SAY ~I will not hold you, <CHARNAME>. I love you, but your destiny... It is beyond any words I have at my disposal. You were destined for greatness, you were born into it. What is one woman's desire to hold you close every night compare to that?~
  IF ~True()~ THEN EXTERN ~FINSOL01~ 28
  IF ~InParty("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYG25J~ 3
  IF ~InParty("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~ANOME25J~ 11
  IF ~InParty("Valygar")
!Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYG25J~ 2
  IF ~InParty("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~ANOME25J~ 10
  IF ~InParty("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~VICON25J~ 6
  IF ~InParty("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~AERIE25J~ 7
  IF ~InParty("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~JAHEI25J~ 7
  IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN25J~ 15
  IF ~InParty("Sarevok")
!Alignment("Sarevok",MASK_EVIL)~ THEN EXTERN ~SAREV25J~ 2
  IF ~InParty("Sarevok")
Alignment("Sarevok",MASK_EVIL)~ THEN EXTERN ~SAREV25J~ 3
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSC25J~ 0
  IF ~InParty("Nalia")~ THEN EXTERN ~NALIA25J~ 1
  IF ~InParty("HaerDalis")~ THEN EXTERN ~HAERD25J~ 1
  IF ~InParty("Jan")~ THEN EXTERN ~JAN25J~ 3
  IF ~InParty("Cernd")~ THEN EXTERN ~CERND25J~ 0
  IF ~InParty("Mazzy")~ THEN EXTERN ~MAZZY25J~ 0
  IF ~InParty("Edwin")~ THEN EXTERN ~EDWIN25J~ 0
  IF ~InParty("Korgan")~ THEN EXTERN ~KORGA25J~ 2
  IF ~InParty("Keldorn")~ THEN EXTERN ~KELDO25J~ 0
  IF ~InParty("Kachiko")~ THEN EXTERN ~KACHI25J~ 3
  IF ~InParty("Yoshimo")~ THEN EXTERN ~YOSHJ~ TS231
END

IF ~~ THEN BEGIN TSTOB8
  SAY ~I must be feeling really special now for sharing the bedroll of the <PRO_LADYLORD> of Murder. Oh, Nine Hells! What's done is done.~
  IF ~True()~ THEN EXTERN ~FINSOL01~ 33
  IF ~InParty("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYG25J~ 11
  IF ~InParty("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~ANOME25J~ 20
  IF ~InParty("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~VICON25J~ 18
  IF ~InParty("Aerie")
Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~AERIE25J~ 20
  IF ~InParty("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~JAHEI25J~ 18
  IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN25J~ 18
  IF ~InParty("Sarevok")
Alignment("Sarevok",MASK_EVIL)~ THEN EXTERN ~SAREV25J~ 4
  IF ~InParty("Sarevok")
!Alignment("Sarevok",MASK_EVIL)~ THEN EXTERN ~SAREV25J~ 6
END

IF ~~ THEN BEGIN TSTOB9
  SAY ~What? You choose to remain mortal? <CHARNAME>, <CHARNAME>, I do not know, I feel like berating you for ultimate stupidity, yet my heart sings. And I think I am crying. I must look silly.~
  IF ~~ THEN REPLY ~You have never looked more beautiful, Leina. I love you, I will not leave you. Not for a crown, not for a godhood, not even for another woman.~ GOTO TSTOB12
  IF ~~ THEN REPLY ~Well, at first I wanted to say something like: "It is not that we will be apart, my beloved Leina, it is only that we won't be together." But then I thought that it is sappy. Since I did not think that: "Oh, Nine Hells!" is not exactly the words you would expect from a person ascending to the godhood, and I could not come up with anything else I decided to stay and... Oh, Nine Hells! I love you, and that's all that matters.~ GOTO TSTOB13
  IF ~~ THEN REPLY ~You thought I'd trade our love for that terrifying piece of used furniture? Not on my life!~ GOTO TSTOB14
  IF ~~ THEN REPLY ~Leina, if I wanted a fountain, I would seriously consider you for the job. Whip your tears and let us rejoice!~ GOTO TSTOB15
  IF ~~ THEN REPLY ~Compare to me, you look a pinnacle of intelligence, Leina. I am not a god, not even a demi-god now. I am a man and I am in love. That is all I know.~ GOTO TSTOB16
END

IF ~~ THEN BEGIN TSTOB10
  SAY ~You are going to ascend, won't you? You have proven a person of goodness and wisdom. Such a person can succeed in changing the dark domain of the Lord of Murder.~
  IF ~True()~ THEN EXTERN ~FINSOL01~ 28
  IF ~InParty("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYG25J~ 3
  IF ~InParty("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~ANOME25J~ 11
  IF ~InParty("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~VICON25J~ 8
  IF ~InParty("Aerie")
Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~AERIE25J~ 9
  IF ~InParty("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~JAHEI25J~ 9
  IF ~InParty("Valygar")
!Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYG25J~ 2
  IF ~InParty("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~ANOME25J~ 10
  IF ~InParty("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~VICON25J~ 6
  IF ~InParty("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~AERIE25J~ 7
  IF ~InParty("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~JAHEI25J~ 7
  IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN25J~ 15
  IF ~InParty("Sarevok")
!Alignment("Sarevok",MASK_EVIL)~ THEN EXTERN ~SAREV25J~ 2
  IF ~InParty("Sarevok")
Alignment("Sarevok",MASK_EVIL)~ THEN EXTERN ~SAREV25J~ 3
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSC25J~ 0
  IF ~InParty("Nalia")~ THEN EXTERN ~NALIA25J~ 1
  IF ~InParty("HaerDalis")~ THEN EXTERN ~HAERD25J~ 1
  IF ~InParty("Jan")~ THEN EXTERN ~JAN25J~ 3
  IF ~InParty("Cernd")~ THEN EXTERN ~CERND25J~ 0
  IF ~InParty("Mazzy")~ THEN EXTERN ~MAZZY25J~ 0
  IF ~InParty("Edwin")~ THEN EXTERN ~EDWIN25J~ 0
  IF ~InParty("Korgan")~ THEN EXTERN ~KORGA25J~ 2
  IF ~InParty("Keldorn")~ THEN EXTERN ~KELDO25J~ 0
  IF ~InParty("Kachiko")~ THEN EXTERN ~KACHI25J~ 3
  IF ~InParty("Yoshimo")~ THEN EXTERN ~YOSHJ~ TS231
END

IF ~~ THEN BEGIN TSTOB11
  SAY ~I know that you have power and blood of a god, but the Lord of Murder's domain is a dark one. I... I hope you will not make it darker still.~
  IF ~True()~ THEN EXTERN ~FINSOL01~ 28
  IF ~InParty("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYG25J~ 3
  IF ~InParty("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~ANOME25J~ 11
  IF ~InParty("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~VICON25J~ 8
  IF ~InParty("Aerie")
Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~AERIE25J~ 9
  IF ~InParty("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~JAHEI25J~ 9
  IF ~InParty("Valygar")
!Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYG25J~ 2
  IF ~InParty("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~ANOME25J~ 10
  IF ~InParty("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~VICON25J~ 6
  IF ~InParty("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~AERIE25J~ 7
  IF ~InParty("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~JAHEI25J~ 7
  IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN25J~ 15
  IF ~InParty("Sarevok")
!Alignment("Sarevok",MASK_EVIL)~ THEN EXTERN ~SAREV25J~ 2
  IF ~InParty("Sarevok")
Alignment("Sarevok",MASK_EVIL)~ THEN EXTERN ~SAREV25J~ 3
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSC25J~ 0
  IF ~InParty("Nalia")~ THEN EXTERN ~NALIA25J~ 1
  IF ~InParty("HaerDalis")~ THEN EXTERN ~HAERD25J~ 1
  IF ~InParty("Jan")~ THEN EXTERN ~JAN25J~ 3
  IF ~InParty("Cernd")~ THEN EXTERN ~CERND25J~ 0
  IF ~InParty("Mazzy")~ THEN EXTERN ~MAZZY25J~ 0
  IF ~InParty("Edwin")~ THEN EXTERN ~EDWIN25J~ 0
  IF ~InParty("Korgan")~ THEN EXTERN ~KORGA25J~ 2
  IF ~InParty("Keldorn")~ THEN EXTERN ~KELDO25J~ 0
  IF ~InParty("Kachiko")~ THEN EXTERN ~KACHI25J~ 3
  IF ~InParty("Yoshimo")~ THEN EXTERN ~YOSHJ~ TS231
END

IF ~~ THEN BEGIN TSTOB12
  SAY ~For a moment I was worried that I was going to loose you. But then your eyes stopped at me. The way you looked at me made thousand of butterflies to be born in my heart. I love you, <CHARNAME>.~
  IF ~~ THEN EXTERN ~FINSOL01~ 33
END

IF ~~ THEN BEGIN TSTOB13
  SAY ~"Oh, Nine Hells" will do. I was silly to ask you for pretty words so often. I do not want any now, I want your love, and I want your kiss.~
  IF ~~ THEN EXTERN ~FINSOL01~ 33
END

IF ~~ THEN BEGIN TSTOB14
  SAY ~I... I always wanted to fall in love for a person who'd call the Throne of Bhaal "a piece of used furniture". Now this dream came true.~
  IF ~~ THEN EXTERN ~FINSOL01~ 33
END

IF ~~ THEN BEGIN TSTOB15
  SAY ~I am trying, <CHARNAME>, but the stupid tears won't stop. But I am rejoicing, and I cry of happiness. I love you so!~
  IF ~~ THEN EXTERN ~FINSOL01~ 33
END

IF ~~ THEN BEGIN TSTOB16
  SAY ~And all I know is that I love you. Let it make us stupid, I do not care.~
  IF ~~ THEN EXTERN ~FINSOL01~ 33
END

//Stage 1 - After dealing with Govan
//Third Path
//SetGlobal("VP_MyFatherIsDead","LOCALS",3)
IF WEIGHT #2 ~Global("VP_ResqueLeina","GLOBAL",15)
Global("BodhiJob","GLOBAL",0)
Global("VP_Guild_Attacked","GLOBAL",1)
!Global("VP_MyFatherIsDead","LOCALS",3)~ THEN BEGIN N4
  SAY ~You... you assassinated my father, <CHARNAME>? Why? What are you?~
  IF ~~ THEN REPLY ~Yes, Leina, I entered the estate but I hoped for news of your whereabouts. Your father thought I had come for you and attacked me, there was no reasoning with him, believe me, I would have spared him.~ GOTO 26
  IF ~~ THEN REPLY ~I had gone there planning only to look for you, but he would not listen to me, you saw the kind of man he had become, Leina.~ GOTO 26
  IF ~~ THEN REPLY ~It was regrettable. I had no quarrel with your father, but his death was my only means of your freedom.~ GOTO 26
  IF ~~ THEN REPLY ~You have your freedom, Leina. If your father were still alive you would probably be wed to Duvaine by now. Is that what you would have wanted?~ GOTO 26
END

IF ~~ THEN BEGIN N29
  SAY ~What I cannot forgive is the fact that he died from your hand, nor shall I forget it!~
  IF ~~ THEN GOTO N30
END

IF ~~ THEN BEGIN N30
  SAY ~This is too painful for me to face at this time, <CHARNAME>, for now, I do not wish to speak any further with you.~
  IF ~~ THEN DO ~SetGlobal("VP_ResqueLeina","GLOBAL",16)
SetGlobal("VP_MyFatherIsDead","LOCALS",3)~ EXIT
END

IF ~~ THEN BEGIN N14
  SAY ~I just needed a moment, <CHARNAME>... My mother's death changed him, he could not face life without her, and I think he sought to keep me here to take her place, but I hope that now he has found some peace... Come, <CHARNAME>, let us begone from here!~
  IF ~Global("VP_DadIsDeadEstate","LOCALS",1)~ THEN DO ~SetGlobal("VP_DadIsDeadEstate","LOCALS",2)~ EXIT
  IF ~Global("VP_DadIsDeadStreet","LOCALS",1)~ THEN DO ~SetGlobal("VP_DadIsDeadStreet","LOCALS",2)~ EXIT
END

IF WEIGHT #-5 ~Global("VP_DadIsDeadStreet","LOCALS",1)~ THEN BEGIN VP11
  SAY ~(*As the group exit Vulova's estate, Leina's gaze is immediately drawn to the body lying on the ground before them. She cries out and runs to kneel beside, what she instantly recognises as the bloodied figure that was once her beloved father... taking his lifeless hand in her own...*)

Fa... (*sobbing*)... fa... father, I... I miss her too you know. When I left, I... I thought I had found what you and mother had.~
  IF ~~ THEN GOTO 12
END 