BEGIN ~AV#MESS~

IF ~Global("VP_Talk_To_Keldorn","LOCALS",1)~ THEN BEGIN AV#MESS1
	SAY ~Sir Keldorn Firecam! Is there a sir Keldorn here?~
		IF ~~ THEN DO ~SetGlobal("VP_Talk_To_Keldorn","LOCALS",2)~ EXTERN ~KELDORJ~ AV#KR90a
END

IF ~~ THEN BEGIN AV#MESS2
	SAY ~Here's a letter from your wife, sir.~
		IF ~~ THEN EXTERN ~KELDORJ~ AV#KR90b
END