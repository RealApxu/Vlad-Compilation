BEGIN ~FRIDA~

IF ~~ THEN BEGIN 0
	SAY ~Sir, people do not make décolletage's on bridal gowns... even if they did, your fiancée certainly has no need of one.~
		IF ~~ THEN EXTERN ~BKELDOR~ TK_st3
END

IF ~~ THEN BEGIN 1
	SAY ~Those who usually wear décolletage's do so in order to hide flaws in the face.~
		IF ~~ THEN EXTERN ~BKELDOR~ TK_st4
END

IF ~~ THEN BEGIN 2
	SAY ~(Softly) Then my lord, it means that there is possibly a flaw in the soul.~
		IF ~~ THEN EXTERN ~LADYALIA~ 4
END	
	
IF ~~ THEN BEGIN 3
	SAY ~My lady, I have also made underwear for you, let the count have a quick look. I hope he likes lace done by my hand.~
		IF ~~ THEN REPLY ~(Taking one of the chemises in her hands) Oh, Frida, I have never seen anything so exquisite in all my life! I wonder how you ever found the time to do all this.~ GOTO 4
END

IF ~~ THEN BEGIN 4
	SAY ~A wedding is the most wonderful event in a girl's life. I wouldn't have dared not to be done in time.~
		IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("KRCut23")~ EXIT
END