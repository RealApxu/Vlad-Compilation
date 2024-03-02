ADD_TRANS_TRIGGER ANOMENJ 262 ~!InParty("Sime")
See("ppsime")~ DO 0

EXTEND_BOTTOM ANOMENJ 262
  IF ~InParty("Sime")~ THEN EXTERN ~SIMEJ~ 20
END

APPEND ~ANOMENJ~

IF ~~ THEN BEGIN TS311
  SAY ~Love of God is a higher calling, then an earthly passion, but still there is a measure of truth in your words, Najoki.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Kr_WarTk
  SAY ~As a Knight of the Order and a priest of Helm, it is my duty to be there.~
  	IF ~True()~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("KRCut04")~ EXIT
  	IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kr_WarTk
  	IF ~InParty("Yoshimo")~ THEN EXTERN ~YOSHJ~ Kr_WarTk
  	IF ~InParty("Jan")~ THEN EXTERN ~JANJ~ Kr_WarTk
  	IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ Kr_WarTk
  	IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ Kr_WarTk
  	IF ~InParty("Mazzy")~ THEN EXTERN ~MAZZYJ~ Kr_WarTk
  	IF ~InParty("HaerDalis")~ THEN EXTERN ~HAERDAJ~ Kr_WarTk
  	IF ~InParty("Korgan")~ THEN EXTERN ~KORGANJ~ Kr_WarTk
  	IF ~InParty("Cernd")~ THEN EXTERN ~CERNDJ~ Kr_WarTk
  	IF ~InParty("Nalia")~ THEN EXTERN ~NALIAJ~ Kr_WarTk
  	IF ~InParty("Aerie")~ THEN EXTERN ~AERIEJ~ Kr_WarTk
  	IF ~InParty("Valygar")~ THEN EXTERN ~VALYGARJ~ Kr_WarTk
END

IF ~~ THEN BEGIN Kr_Curse
  SAY ~I believe Keldorn has been struck by Cyric's curse and he will most certainly die if any attempt is made to remove it. Only the gods themselves in their mercy can revoke the curse.~
  	IF ~~ THEN DO ~SetGlobal("VP_Kr_CyricPlot","GLOBAL",4)
ClearAllActions()
StartCutSceneMode()
StartCutScene("KRCut10")~ EXIT
END

IF ~~ THEN BEGIN Kelem0
	SAY ~So... I am dead and it would appear I have been murdered. Hold... my beloved approaches...~
		IF ~~ THEN REPLY ~Anomen! I... I did not mean this to happen. It was that damned ring, I did not listen to Keldorn and I have paid dearly for that. Please, forgive me, my friend!~ GOTO Kelem1
		IF ~~ THEN REPLY ~Yes, I have acted very unwisely. I should have listened to Keldorn, but I was so afraid that he would die, I had to do something! Even you, a priest, could do nothing.~ GOTO Kelem2
END

IF ~~ THEN BEGIN Kelem1
	SAY ~I understand. You rushed to save him forgetting everything else. Damn, I am so jealous of him... but I am not angry with you. It is almost poetic that I should die by your hand, my love.~
		IF ~~ THEN REPLY ~(Pale) Anomen, don't say that, please! I can not leave you here, it is unfair! I would miss you, my friend... I need you!~ GOTO Kelem3
		IF ~~ THEN REPLY ~I... I don't know what to say. I can't force you to be happy, and I can not return your love. Maybe you are right. I want you to come back, but if you do not want to, I will not insist.~ GOTO Kelem4
END

IF ~~ THEN BEGIN Kelem2
	SAY ~No, I did nothing! Would you have preferred that I tried to remove the curse and killed him in the attempt? Though he be my rival for your affections, I do not wish his death.~
=
~I am a priest, <CHARNAME>, I am obliged to help, and I failed, I did not have the necessary knowledge. This was all my fault... my failing <CHARNAME>.~
		IF ~~ THEN REPLY ~Stop talking nonsense, Anomen, you have nothing to blame yourself for! Only Kelemvor could have helped Keldorn. Kelemvor and only Kelemvor! Fool such as I am, I failed to guess whom it was I should have sent my prayers to.~ GOTO Kelem5
		IF ~~ THEN REPLY ~Yes, you are a priest, and as such, you should have guessed that neither Helm nor Lathander had the power to help in such circumstances! You must have known that only Kelemvor could help us.~ GOTO Kelem6
END

IF ~~ THEN BEGIN Kelem3
	SAY ~(Sadly) You need me... even now when it was that you required my help and I failed  you? Well... you have asked me, so I will come with you.~
  	IF ~True()~ THEN EXTERN ~KELEMVOR~ 4A
  	IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kelem0
  	IF ~InParty("Kachiko")~ THEN EXTERN ~KACHIJ~ Kelem0
  	IF ~InParty("Yoshimo")~ THEN EXTERN ~YOSHJ~ Kelem0
  	IF ~InParty("Viconia")~ THEN EXTERN ~VICONIJ~ Kelem0
  	IF ~InParty("Jan")~ THEN EXTERN ~JANJ~ Kelem0
  	IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ Kelem0
  	IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ Kelem0
  	IF ~InParty("Mazzy")~ THEN EXTERN ~MAZZYJ~ Kelem0
  	IF ~InParty("HaerDalis")~ THEN EXTERN ~HAERDAJ~ Kelem0
  	IF ~InParty("Korgan")~ THEN EXTERN ~KORGANJ~ Kelem0
  	IF ~InParty("Cernd")~ THEN EXTERN ~CERNDJ~ Kelem0
  	IF ~InParty("Nalia")~ THEN EXTERN ~NALIAJ~ Kelem0
  	IF ~InParty("Aerie")~ THEN EXTERN ~AERIEJ~ Kelem0
  	IF ~InParty("Sime")~ THEN EXTERN ~SIMEJ~ Kelem0
  	IF ~InParty("Valygar")~ THEN EXTERN ~VALYGARJ~ Kelem0
END

IF ~~ THEN BEGIN Kelem4
	SAY ~(Lowering his eyes) I do not want... I do not want to have to watch and see you love another. It is too cruel so under other circumstances I would bid you fare thee well, but I do not want... I do not want to leave you without my help. Let's go my lady.~
  	IF ~True()~ THEN EXTERN ~KELEMVOR~ 4A
  	IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kelem0
  	IF ~InParty("Kachiko")~ THEN EXTERN ~KACHIJ~ Kelem0
  	IF ~InParty("Yoshimo")~ THEN EXTERN ~YOSHJ~ Kelem0
  	IF ~InParty("Viconia")~ THEN EXTERN ~VICONIJ~ Kelem0
  	IF ~InParty("Jan")~ THEN EXTERN ~JANJ~ Kelem0
  	IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ Kelem0
  	IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ Kelem0
  	IF ~InParty("Mazzy")~ THEN EXTERN ~MAZZYJ~ Kelem0
  	IF ~InParty("HaerDalis")~ THEN EXTERN ~HAERDAJ~ Kelem0
  	IF ~InParty("Korgan")~ THEN EXTERN ~KORGANJ~ Kelem0
  	IF ~InParty("Cernd")~ THEN EXTERN ~CERNDJ~ Kelem0
  	IF ~InParty("Nalia")~ THEN EXTERN ~NALIAJ~ Kelem0
  	IF ~InParty("Aerie")~ THEN EXTERN ~AERIEJ~ Kelem0
  	IF ~InParty("Sime")~ THEN EXTERN ~SIMEJ~ Kelem0
  	IF ~InParty("Valygar")~ THEN EXTERN ~VALYGARJ~ Kelem0
END

IF ~~ THEN BEGIN Kelem5
	SAY ~(Claps his forehead in vexation) Kelemvor... I should have known! All right, my lady, I will return with you and from henceforth I promise to be wiser.~
  	IF ~True()~ THEN EXTERN ~KELEMVOR~ 4A
  	IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kelem0
  	IF ~InParty("Kachiko")~ THEN EXTERN ~KACHIJ~ Kelem0
  	IF ~InParty("Yoshimo")~ THEN EXTERN ~YOSHJ~ Kelem0
  	IF ~InParty("Viconia")~ THEN EXTERN ~VICONIJ~ Kelem0
  	IF ~InParty("Jan")~ THEN EXTERN ~JANJ~ Kelem0
  	IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ Kelem0
  	IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ Kelem0
  	IF ~InParty("Mazzy")~ THEN EXTERN ~MAZZYJ~ Kelem0
  	IF ~InParty("HaerDalis")~ THEN EXTERN ~HAERDAJ~ Kelem0
  	IF ~InParty("Korgan")~ THEN EXTERN ~KORGANJ~ Kelem0
  	IF ~InParty("Cernd")~ THEN EXTERN ~CERNDJ~ Kelem0
  	IF ~InParty("Nalia")~ THEN EXTERN ~NALIAJ~ Kelem0
  	IF ~InParty("Aerie")~ THEN EXTERN ~AERIEJ~ Kelem0
  	IF ~InParty("Sime")~ THEN EXTERN ~SIMEJ~ Kelem0
  	IF ~InParty("Valygar")~ THEN EXTERN ~VALYGARJ~ Kelem0
END

IF ~~ THEN BEGIN Kelem6
	SAY ~Kelemvor, I should have known! Forgive me my lady, I did not justify your faith in me, and this is my fault that your beloved lies dead.~
		IF ~~ THEN REPLY ~That I am not certain, Anomen, Kelemvor did not tell me everything.~ GOTO Kelem7
END

IF ~~ THEN BEGIN Kelem7
	SAY ~That matters not. I am guilty but next time I will be wise.~
  	IF ~True()~ THEN EXTERN ~KELEMVOR~ 4A
  	IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kelem0
  	IF ~InParty("Kachiko")~ THEN EXTERN ~KACHIJ~ Kelem0
  	IF ~InParty("Yoshimo")~ THEN EXTERN ~YOSHJ~ Kelem0
  	IF ~InParty("Viconia")~ THEN EXTERN ~VICONIJ~ Kelem0
  	IF ~InParty("Jan")~ THEN EXTERN ~JANJ~ Kelem0
  	IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ Kelem0
  	IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ Kelem0
  	IF ~InParty("Mazzy")~ THEN EXTERN ~MAZZYJ~ Kelem0
  	IF ~InParty("HaerDalis")~ THEN EXTERN ~HAERDAJ~ Kelem0
  	IF ~InParty("Korgan")~ THEN EXTERN ~KORGANJ~ Kelem0
  	IF ~InParty("Cernd")~ THEN EXTERN ~CERNDJ~ Kelem0
  	IF ~InParty("Nalia")~ THEN EXTERN ~NALIAJ~ Kelem0
  	IF ~InParty("Aerie")~ THEN EXTERN ~AERIEJ~ Kelem0
  	IF ~InParty("Sime")~ THEN EXTERN ~SIMEJ~ Kelem0
  	IF ~InParty("Valygar")~ THEN EXTERN ~VALYGARJ~ Kelem0
END
END