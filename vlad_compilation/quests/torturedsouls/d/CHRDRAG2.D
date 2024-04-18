BEGIN CHRDRAG2

CHAIN
IF ~NumTimesTalkedTo(0)~ THEN CHRDRAG2 0
~Another knight? Find my cooking book, wenches! I shall feast tonight!~
EXTERN CHDRAG2 1

CHAIN CHDRAG2 1
~Wait, I recognise you... Oh, you are terribly wrong coming back to my lair... Are you crazy?~
END
 ++ ~I came to free the maidens you are unlawfully keeping in your service. Release them and no harm will come to you, Dal!~ EXTERN CHDRAG2 2
 ++ ~Should I be your meal, I hope you break your teeth on me.~ EXTERN CHDRAG2 2
 ++ ~Dalhaleitkazyyr, the Mighty! I am here representing righteousness and...~ EXTERN CHDRAG2 3
 ++ ~Helm�s Beard, that�s one big lizard you have here, Ladies!~ EXTERN CHDRAG2 2
 ++ ~Honor! Duty!~ EXTERN CHDRAG2 4

CHAIN CHDRAG2 2
~Bha-ha-ha-ha... A jester we have here, wenches. But enough of the small talk, I am getting hungry and since you are the main course for my dinner, I do not see the point of delaying cooking!~
DO ~Enemy()~
EXIT

CHAIN CHDRAG2 3
~Oh, you are one of those, paladins, aren�t you? Those are always bad news for a gourmand, such as I... Too bony a head, and too much armor polish. But one cannot be choosy when the dinner is served to his doorstep. I am getting hungry, let us start!~
DO ~Enemy()~
EXIT

CHAIN CHDRAG2 4
~Please, do continue. I have a genuine interest in the amount of multisyllabic words you can yell out as I roast you! My wenches will keep the tally so your whining is not lost to the following generations.~
DO ~Enemy()~
EXIT