BEGIN ~AINO~ 74548

IF ~NumberOfTimesTalkedTo(0) GlobalLT("Kachiko_Saved","GLOBAL",2) ~ THEN BEGIN 0
  SAY ~My son! Welcome. I have been waiting for you to come.~
  IF ~~ THEN EXTERN ~YOSHJ~ TS178
END

IF ~~ THEN BEGIN 1
  SAY ~I will...I do not understand it well myself, Yoshimo, but I'll tell you what I know. After you fled, the hatred between Nakanishi and Hashimoto became unbearable... Nakanishi tried to accuse you of Naoko�s death in order to have the emperor�s wizards find you and execute you... We used all our influence to prevent it. Then they sent an assassin after you... Kachiko.~
  IF ~~ THEN EXTERN ~KACHIJ~ N28
END

IF ~~ THEN BEGIN 2
  SAY ~What else can I call you? You wanted to kill my son... Then Nakanishi and Hashimoto started picking on each other, playing dirty tricks... Practical jokes, no more at first... Then foul play... Then few serious fights... People in Kozakura started avoiding both families, as they still remember how many lives had been lost during Hojo War... We became almost outlaws.~
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY ~One day a wizard came to see me. Joneleth by name. He said that he could help me to revenge Hashimotos' disgrace. I am sure he said the same to Nakanishi. His words were carefully chosen to pluck at my hatred. He raised it to a huge proportion and soon I could not control it. In my madness, I surrendered my soul to the wizard.~
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY ~Next day we were all on this Island, full of hatred, full of deadly passion. Many were killed this first day. Many. But the next day they walked among us again. Thereafter, it repeats day after day... It seems to me we cannot advance time...~
  IF ~~ THEN EXTERN ~YOSHJ~ TS179
END

IF ~~ THEN BEGIN 5
  SAY ~Yes... I believe there is a way. I believe if each Nakanishi is killed during one day, we, Hashimoto can escape the curse. And there will be a new day... free of Nakanishi. I have a wardstone, a magical wardstone that can lead us away from the Island... But only if we can advance time... This wardstone will be yours if you do it for me.~
  IF ~~ THEN EXTERN ~YOSHJ~ TS180
END

IF ~~ THEN BEGIN 6
  SAY ~I do not know. But try to talk to Najoke, Kachiko's mother. She is a priestess and a mage of great power, she might know of something...~
  IF ~~ THEN REPLY ~No, talking is boring.  If we have to kill all of the Nakanishi to get the wardstone, then we shall.~ EXTERN ~KACHIJ~ N29
  IF ~~ THEN REPLY ~I say we kill YOU, take the wardstone and get outta here. ~ EXTERN ~YOSHJ~ TS181
  IF ~~ THEN REPLY ~We shall talk to Najoki then.~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY ~Well spoken, daughter! Attack the foreigners!~
  IF ~~ THEN DO ~SetGlobal("MyHome_Attacked","GLOBAL",1) SetGlobal("Hashimoto_Attacked","LOCALS",1) SetGlobal("TT_Evil_Path","GLOBAL",1) Enemy()~ EXIT
END

IF ~NumTimesTalkedToGT(0) GlobalLT("Kachiko_Saved","GLOBAL",2)~ THEN BEGIN 8
  SAY ~Please hurry... we don't have much time.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
  SAY ~Our souls were accepted by our gods and we all now rest in peace... Nakanishi and Hashimoto alike. Here is the map, stranger, let the winds and the waves be kind to you and your passage be swift.~
  IF ~~ THEN DO ~GiveItem("TimeWard",Player1)~ GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY ~My son, I am proud of you and you had shown wisdom and strength beyond your years. Your father bows to you with respect.~
  IF ~~ THEN EXTERN ~NAJOKI~ 10
END

IF ~OR(2) Global("Kachiko_Saved","GLOBAL",3) Global("TT_Evil_Path","GLOBAL",2)~ THEN BEGIN 11
  SAY ~My son, your friends and you fought valiantly and I am grateful. Unfortunately, the curse is not lifted, and we will wake up tomorrow to battle Nakanishi once more. They have Kachiko back with them now, but I have no heart to pull you into this madness. Here is the wardstone, which will let you to get away. Run, my son and run swiftly... Farewell.~
  IF ~~ THEN DO ~GiveItem("TimeWard",Player1)~ EXTERN ~YOSHJ~ TS202
END

IF ~~ THEN BEGIN 12
  SAY ~You do not understand. I cannot leave. None of us can leave. We are all dead, long dead. Flee, my son, as you had done once, save your soul untouched by hatred and treachery!~
  IF ~~ THEN DO ~SetGlobal("End_Island","GLOBAL",1)~ EXTERN ~YOSHJ~ TS203
END