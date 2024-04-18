BEGIN AINO

CHAIN
IF ~NumberOfTimesTalkedTo(0) GlobalLT("Kachiko_Saved","GLOBAL",2) ~ THEN AINO 0
~My son! Welcome. I have been waiting for you to come.~
EXTERN YOSHJ TS178

CHAIN AINO 1
~I will...I do not understand it well myself, Yoshimo, but I'll tell you what I know. After you fled, the hatred between Nakanishi and Hashimoto became unbearable... Nakanishi tried to accuse you of Naoko�s death in order to have the emperor�s wizards find you and execute you... We used all our influence to prevent it. Then they sent an assassin after you... Kachiko.~
EXTERN VPKACJ N28

CHAIN AINO 2
~What else can I call you? You wanted to kill my son... Then Nakanishi and Hashimoto started picking on each other, playing dirty tricks... Practical jokes, no more at first... Then foul play... Then few serious fights... People in Kozakura started avoiding both families, as they still remember how many lives had been lost during Hojo War... We became almost outlaws.~
EXTERN AINO 3

CHAIN AINO 3
~One day a wizard came to see me. Joneleth by name. He said that he could help me to revenge Hashimotos' disgrace. I am sure he said the same to Nakanishi. His words were carefully chosen to pluck at my hatred. He raised it to a huge proportion and soon I could not control it. In my madness, I surrendered my soul to the wizard.~
EXTERN AINO 4

CHAIN AINO 4
~Next day we were all on this Island, full of hatred, full of deadly passion. Many were killed this first day. Many. But the next day they walked among us again. Thereafter, it repeats day after day... It seems to me we cannot advance time...~
EXTERN YOSHJ TS179

CHAIN AINO 5
~Yes... I believe there is a way. I believe if each Nakanishi is killed during one day, we, Hashimoto can escape the curse. And there will be a new day... free of Nakanishi. I have a wardstone, a magical wardstone that can lead us away from the Island... But only if we can advance time... This wardstone will be yours if you do it for me.~
EXTERN YOSHJ TS180

CHAIN AINO 6
~I do not know. But try to talk to Najoke, Kachiko's mother. She is a priestess and a mage of great power, she might know of something...~
END
 ++ ~No, talking is boring. If we have to kill all of the Nakanishi to get the wardstone, then we shall.~ EXTERN VPKACJ N29
 ++ ~Iwe kill YOU, take the wardstone and get outta here. ~ EXTERN YOSHJ TS181
 ++ ~We shall talk to Najoki then.~ EXIT

CHAIN AINO 7
~Well spoken, daughter! Attack the foreigners!~
DO ~SetGlobal("MyHome_Attacked","GLOBAL",1) SetGlobal("Hashimoto_Attacked","LOCALS",1) SetGlobal("TT_Evil_Path","GLOBAL",1) Enemy()~
EXIT

CHAIN
IF ~NumTimesTalkedToGT(0) GlobalLT("Kachiko_Saved","GLOBAL",2)~ THEN AINO 8
~Please hurry... we don't have much time.~
EXIT

CHAIN AINO 9
~Our souls were accepted by our gods and we all now rest in peace... Nakanishi and Hashimoto alike. Here is the map, stranger, let the winds and the waves be kind to you and your passage be swift.~
DO ~GiveItem("TimeWard",Player1)~
EXTERN AINO 10

CHAIN AINO 10
~My son, I am proud of you and you had shown wisdom and strength beyond your years. Your father bows to you with respect.~
EXTERN NAJOKI 10

CHAIN
IF ~OR(2) Global("Kachiko_Saved","GLOBAL",3) Global("TT_Evil_Path","GLOBAL",2)~ THEN AINO 11
~My son, your friends and you fought valiantly and I am grateful. Unfortunately, the curse is not lifted, and we will wake up tomorrow to battle Nakanishi once more. They have Kachiko back with them now, but I have no heart to pull you into this madness. Here is the wardstone, which will let you to get away. Run, my son and run swiftly... Farewell.~
DO ~GiveItem("TimeWard",Player1)~
EXTERN YOSHJ TS202

CHAIN AINO 12
~You do not understand. I cannot leave. None of us can leave. We are all dead, long dead. Flee, my son, as you had done once, save your soul untouched by hatred and treachery!~
DO ~SetGlobal("End_Island","GLOBAL",1)~
EXTERN YOSHJ TS203