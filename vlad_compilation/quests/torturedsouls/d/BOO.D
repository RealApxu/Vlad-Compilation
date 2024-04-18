BEGIN VPBOO
BEGIN VPBOO2

CHAIN
IF ~!CharName("Minsc",LastTalkedToBy)~ THEN VPBOO2 Boo1
~(You grab Boo and give 'him' to Minsc.)~ [BOOHL]
DO ~GiveItemCreate("vpboo2","Minsc",0,0,0) RealSetGlobalTimer("VP_NoBoo","GLOBAL",6) DestroySelf()~
EXIT

CHAIN
IF ~CharName("Minsc",LastTalkedToBy)~ THEN VPBOO2 Boo2
~(Minsc grabs Boo and places 'him' on his shoulder.)~ [BOOHL]
DO ~GiveItemCreate("vpboo2","Minsc",0,0,0) RealSetGlobalTimer("VP_NoBoo","GLOBAL",6) DestroySelf()~
EXIT

CHAIN VPBOO N0
~(A pitiful shriek) Yes, Sime. You did not forget me, Lady who smells of the forest? (*shriek*) You are not embarrassed to talk to a hamster?~ [BOO01]
EXTERN VPSIMB 237

CHAIN VPBOO N1
~At least I make a hamster of intellect and wit remarkable. I wonder if a spell can be cast by a hamster? (*shrieks*) No, I have tried already. My paws are too short to go through the proper movements and I lack spell components. Giving advice to Minsc, that�s all I am good for.~
EXTERN VPSIMB 238

CHAIN VPBOO 2
~(Shrieks) Try to be a hamster for a day, Sime, and you will find explaining to Minsc a meaning of word "poignant" a pleasant and stimulating pastime.~
EXTERN VPSIMB 239

CHAIN VPBOO 3
~(Sighs) Not yet, but we are getting there. In another fortnight you will hear Minsc using the word. Or you would know that I gave up. The most accursed word in the Common Tongue it is! I should tried panopticum.~
EXTERN VPSIMB 240

CHAIN VPBOO 4
~I am a hamster, not deaf.~ [BOO02]
EXTERN BMINSC TS135

CHAIN VPBOO 5
~poignant...~
EXTERN BMINSC TS136

CHAIN VPBOO 6
~(Exasperated shriek)~
EXTERN VPSIMB 242

CHAIN VPBOO 7
~(Shrieks) It will snow in Nine Hells before he will consider the possibility. And grateful I am for this.~ [BOO04]
EXTERN VPSIMB 246

CHAIN VPBOO 8
~He is laughed at enough as is, talking to a hamster. What if he will call the hamster Dynaheir?~
EXTERN VPSIMB 247

CHAIN VPBOO 9
~You do. But do not you know my dajemma brother well enough? Will he not announce proudly: "It is my Giant Space Hamster Witch" at every corner?~
EXTERN VPSIMB 248

CHAIN VPBOO 10
~Minsc is a ranger and he knows how to determine the difference, no worse than you and I. My spirit is that of a female, but this furry body alas is not.~
EXTERN VPSIMB 249

CHAIN VPBOO 11
~(Shrieks) It is funny, is not it? It is his death that will free me from this pathetic form, so why will I guard his life?~
EXTERN VPSIMB 250

CHAIN VPBOO 12
~(Shrieks)~
EXTERN BMINSC TS139

CHAIN VPBOO 13
~(Shrieks) You did not. I indeed love Minsc. Not Minsc you know, but the man he once was, is what I love.~ [BOO03]
EXTERN VPSIMB 253

CHAIN VPBOO 14
~Do not stare, the woman of the forest. I am only a hamster in love with a dimwit. Minsc was not always an imbecile. He was the greatest battle mage Rasheman produced. But once Minsc went ranging and did not return. Or I thought he did not return.~
EXTERN VPSIMB 254

CHAIN VPBOO 15
~Oh, yes, he was very different. When I saw him in few years on a fare ground, fighting for a coin, I did not recognize him either. Bulky, ugly and his wit and charm were both lost. I hoped it would return. That was not to be. And he had that rat, I hated so much and whose hide I am wearing now.~
EXTERN VPSIMB 255

CHAIN VPBOO 16
~Unbelievable? Indeed. Laugh Sime it was a joke. (*shrieks*)~
EXTERN BMINSC TS140

CHAIN VPBOO 17
~Do not ask. Oh, too late.~ [BOO05]
EXTERN BMINSC TS141

CHAIN VPBOO 18
~(Unhappy shriek)~
EXTERN VPSIMB 258

CHAIN VPBOO 19
~Just a knight, Sime. But of high renown.~
EXTERN VPSIMB 259

CHAIN VPBOO 20
~In Cormyr. Apparently Boo was purchased in Cormyr. I still cannot get it out of him how did he come to be in Cormyr.~
EXTERN BMINSC TS144

CHAIN VPBOO 21
~A jostling competition at the Court.~
EXTERN BMINSC TS145

CHAIN VPBOO 22
~(Shrieks)~
EXTERN BMINSC TS146

CHAIN VPBOO 23
~He was badly wounded.~
EXTERN BMINSC TS147

CHAIN VPBOO 24
~That was the king�s fool, not the king. They gave him the hamster and he was showing it to everyone and shouting that it was the tournament�s winner. Until he sold it to Minsc who thought that it was the bravest animal in the Realms.~
EXTERN VPSIMB 260