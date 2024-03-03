BEGIN ~BOO~

IF ~!CharName("Minsc",LastTalkedToBy)~ THEN BEGIN Boo1
  SAY ~(You grab Boo and give 'him' to Minsc.)~ [BOOHL]
  IF ~~ THEN DO ~GiveItemCreate("Boo","Minsc",0,0,0)
RealSetGlobalTimer("VP_NoBoo","GLOBAL",6)
DestroySelf()~ EXIT
END

IF ~CharName("Minsc",LastTalkedToBy)~ THEN BEGIN Boo2
  SAY ~(Minsc grabs Boo and places 'him' on his shoulder.)~ [BOOHL]
  IF ~~ THEN DO ~GiveItemCreate("Boo","Minsc",0,0,0)
RealSetGlobalTimer("VP_NoBoo","GLOBAL",6)
DestroySelf()~ EXIT
END

APPEND ~BOO~

IF ~~ THEN BEGIN N0
  SAY ~(A pitiful shriek) Yes, Sime. You did not forget me, Lady who smells of the forest? (*shriek*) You are not embarrassed to talk to a hamster?~ [BOO01]
  IF ~~ THEN EXTERN ~BSIME~ 237
END

IF ~~ THEN BEGIN N1
  SAY ~At least I make a hamster of intellect and wit remarkable. I wonder if a spell can be cast by a hamster? (*shrieks*) No, I have tried already. My paws are too short to go through the proper movements and I lack spell components. Giving advice to Minsc, that’s all I am good for.~
  IF ~~ THEN EXTERN ~BSIME~ 238
END

IF ~~ THEN BEGIN 2
  SAY ~(Shrieks) Try to be a hamster for a day, Sime, and you will find explaining to Minsc a meaning of word "poignant" a pleasant and stimulating pastime.~
  IF ~~ THEN EXTERN ~BSIME~ 239
END

IF ~~ THEN BEGIN 3
  SAY ~(Sighs) Not yet, but we are getting there. In another fortnight you will hear Minsc using the word. Or you would know that I gave up. The most accursed word in the Common Tongue it is! I should tried panopticum.~
  IF ~~ THEN EXTERN ~BSIME~ 240
END

IF ~~ THEN BEGIN 4
  SAY ~I am a hamster, not deaf.~ [BOO02]
  IF ~~ THEN EXTERN ~BMINSC~ TS135
END

IF ~~ THEN BEGIN 5
  SAY ~poignant...~
  IF ~~ THEN EXTERN ~BMINSC~ TS136
END

IF ~~ THEN BEGIN 6
  SAY ~(Exasperated shriek)~
  IF ~~ THEN EXTERN ~BSIME~ 242
END

IF ~~ THEN BEGIN 7
  SAY ~(Shrieks) It will snow in Nine Hells before he will consider the possibility. And grateful I am for this.~ [BOO04]
  IF ~~ THEN EXTERN ~BSIME~ 246
END

IF ~~ THEN BEGIN 8
  SAY ~He is laughed at enough as is, talking to a hamster. What if he will call the hamster Dynaheir?~
  IF ~~ THEN EXTERN ~BSIME~ 247
END

IF ~~ THEN BEGIN 9
  SAY ~You do. But do not you know my dajemma brother well enough? Will he not announce proudly: "It is my Giant Space Hamster Witch" at every corner?~
  IF ~~ THEN EXTERN ~BSIME~ 248
END

IF ~~ THEN BEGIN 10
  SAY ~Minsc is a ranger and he knows how to determine the difference, no worse than you and I. My spirit is that of a female, but this furry body alas is not.~
  IF ~~ THEN EXTERN ~BSIME~ 249
END

IF ~~ THEN BEGIN 11
  SAY ~(Shrieks) It is funny, is not it? It is his death that will free me from this pathetic form, so why will I guard his life?~
  IF ~~ THEN EXTERN ~BSIME~ 250
END

IF ~~ THEN BEGIN 12
  SAY ~(Shrieks)~
  IF ~~ THEN EXTERN ~BMINSC~ TS139
END

IF ~~ THEN BEGIN 13
  SAY ~(Shrieks) You did not. I indeed love Minsc. Not Minsc you know, but the man he once was, is what I love.~ [BOO03]
  IF ~~ THEN EXTERN ~BSIME~ 253
END

IF ~~ THEN BEGIN 14
  SAY ~Do not stare, the woman of the forest. I am only a hamster in love with a dimwit. Minsc was not always an imbecile. He was the greatest battle mage Rasheman produced. But once Minsc went ranging and did not return. Or I thought he did not return.~
  IF ~~ THEN EXTERN ~BSIME~ 254
END

IF ~~ THEN BEGIN 15
  SAY ~Oh, yes, he was very different. When I saw him in few years on a fare ground, fighting for a coin, I did not recognize him either. Bulky, ugly and his wit and charm were both lost. I hoped it would return. That was not to be. And he had that rat, I hated so much and whose hide I am wearing now.~
  IF ~~ THEN EXTERN ~BSIME~ 255
END

IF ~~ THEN BEGIN 16
  SAY ~Unbelievable? Indeed. Laugh Sime it was a joke. (*shrieks*)~
  IF ~~ THEN EXTERN ~BMINSC~ TS140
END

IF ~~ THEN BEGIN 17
  SAY ~Do not ask. Oh, too late.~ [BOO05]
  IF ~~ THEN EXTERN ~BMINSC~ TS141
END

IF ~~ THEN BEGIN 18
  SAY ~(Unhappy shriek)~
  IF ~~ THEN EXTERN ~BSIME~ 258
END

IF ~~ THEN BEGIN 19
  SAY ~Just a knight, Sime. But of high renown.~
  IF ~~ THEN EXTERN ~BSIME~ 259
END

IF ~~ THEN BEGIN 20
  SAY ~In Cormyr. Apparently Boo was purchased in Cormyr. I still cannot get it out of him how did he come to be in Cormyr.~
  IF ~~ THEN EXTERN ~BMINSC~ TS144
END

IF ~~ THEN BEGIN 21
  SAY ~A jostling competition at the Court.~
  IF ~~ THEN EXTERN ~BMINSC~ TS145
END

IF ~~ THEN BEGIN 22
  SAY ~(Shrieks)~
  IF ~~ THEN EXTERN ~BMINSC~ TS146
END

IF ~~ THEN BEGIN 23
  SAY ~He was badly wounded.~
  IF ~~ THEN EXTERN ~BMINSC~ TS147
END

IF ~~ THEN BEGIN 24
  SAY ~That was the king’s fool, not the king. They gave him the hamster and he was showing it to everyone and shouting that it was the tournament’s winner. Until he sold it to Minsc who thought that it was the bravest animal in the Realms.~
  IF ~~ THEN EXTERN ~BSIME~ 260
END
END