BEGIN ~ADJUTANT~

IF ~NumTimesTalkedTo(0)
Global("VP_Kr_TheWar","GLOBAL",6)~ THEN BEGIN 0
	SAY ~Count Firecam! His Excellency general Craumerdaun asks, that at your earliest convenience to please find time to speak with him... and you my lady, are invited as well.~
		IF ~~ THEN EXTERN ~KELDORJ~ adjutant
END

IF ~!NumTimesTalkedTo(0)~ THEN BEGIN 1
	SAY ~Please speak with general Craumerdaun.~
		IF ~~ THEN EXIT
END