BEGIN ~TORM~

IF ~~ THEN BEGIN 0
	SAY ~What do you mean you can't interfere, Kelemvor? Who else will protect her then?~
		IF ~~ THEN EXTERN ~KELEMVOR~ K14
END

IF ~~ THEN BEGIN 1
	SAY ~So he did, but this can not continue. I will do it myself. After all, Ao is not watching me.~
		IF ~~ THEN EXTERN ~SLAYERDR~ S3
END

IF ~~ THEN BEGIN 2
	SAY ~(Charging the demon, sword unsheathed) Leave her be. Do you hear me demon leave her be?~
		IF ~~ THEN EXTERN ~SLAYERDR~ S4
END

IF ~~ THEN BEGIN 3
	SAY ~You took a great risk, my paladin. I should punish you. If it were under any other circumstances, I would. You have done well this time, but only in time will we know for sure.~
		IF ~~ THEN EXTERN ~KELDO25J~ LT12Tor1
END

IF ~~ THEN BEGIN 4
	SAY ~I am not sure if you were successful in weakening of this demon. He may find another way to affect her, he's inventive. Nevertheless, I am blessing the joining of your souls in marriage.~
		IF ~~ THEN EXTERN ~KELDO25J~ LT12Tor2
END