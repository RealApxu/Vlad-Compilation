BEGIN ADJUTANT

CHAIN
IF ~NumTimesTalkedTo(0) Global("VP_Kr_TheWar","GLOBAL",6)~ THEN ADJUTANT 0
~Count Firecam! His Excellency general Craumerdaun asks, that at your earliest convenience to please find time to speak with him... and you my lady, are invited as well.~
EXTERN KELDORJ adjutant

CHAIN
IF ~!NumTimesTalkedTo(0)~ THEN ADJUTANT 1
~Please speak with general Craumerdaun.~
EXIT