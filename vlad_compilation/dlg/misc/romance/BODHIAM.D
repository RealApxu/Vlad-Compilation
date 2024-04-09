EXTEND_BOTTOM BODHIAMB 5
  IF ~Global("ValygarRomanceActive","GLOBAL",2) InParty("Valygar")~ THEN EXTERN BODHIAMB TS20
  IF ~Global("VP_KrRomanceActive","GLOBAL",2) InParty("Keldorn")~ THEN EXTERN BODHIAMB vampamb0
  IF ~Gender(Player1,MALE) InParty("vpleina") Global("VP_LeinaRomanceAct","GLOBAL",2)~ THEN EXTERN BODHIAMB vampamb7
  IF ~Global("SimeRomanceActive","GLOBAL",2) InParty("Sime") Gender(Player1,MALE)~ THEN EXTERN BODHIAMB TS22
END

APPEND BODHIAMB

IF ~~ THEN BEGIN TS20
  SAY ~You follow in the hopes of retrieving something dear to you. I say that the longer you keep this up, the more you will lose. Consider the somber Valygar. It is so disappointing to lose something, which you were only starting to dream of...~
  IF ~OR(2) !InPartyAllowDead("Valygar") Dead("Valygar")~ THEN GOTO 6
  IF ~InPartyAllowDead("Valygar") !Dead("Valygar")~ THEN EXTERN ~VALYGARJ~ TS126
END

IF ~~ THEN BEGIN TS21
  SAY ~Harm as in bodily injury and death? No, Valygar. That would be too crude... I am not a student of the art of torture, but a professor... Follow me further, <CHARNAME>, and you will lose more than you can imagine. Starting now!~
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCut53e")~ JOURNAL ~The Final Battle with Bodhi.

Bodhi appeared in an ambush shortly before I reached her haven, warning me that she was aware of my pursuit and stealing from me my trusted friend: Valygar.  Before she vanished and unleashed more of her undead creations upon me, Bodhi warned me that if I continue I will lose even more than I thought possible.  I cannot give up on the Rhynn Lanthorn... but now the life and immortal soul of the one I love is at stake, as well! I love? Yes, of cause I love Valygar. As a friend... oh, I found the best possible moment to get entangled in my own feelings! I should get going, no matter how hurt I am; I should get going.~ EXIT
END

IF ~~ THEN BEGIN TS22
  SAY ~You follow in the hopes of retrieving something dear to you. I say that the longer you keep this up, the more you will lose.~
  IF ~~ THEN GOTO TS23
END

IF ~~ THEN BEGIN TS23
  SAY ~Consider the thief�s daughter by your side. It is so disappointing to lose something, which you were only starting to dream of...~
  IF ~OR(2) !InPartyAllowDead("Sime") Dead("Sime")~ THEN GOTO 6
  IF ~InPartyAllowDead("Sime") !Dead("Sime")~ THEN EXTERN ~SIMEJ~ 111
END

IF ~~ THEN BEGIN TS24
  SAY ~You misunderstand me completely, Sime. I am going to leave him his pathetic life. But yours I shall have, Linvails� daughter. Follow me further <CHARNAME>, and you will lose more than you can imagine. Starting now!~
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCut53f")~ JOURNAL ~The Final Battle with Bodhi.

Bodhi appeared in an ambush shortly before I reached her haven, warning me that she was aware of my pursuit and stealing from me my love, my dear Sime. Before she vanished and unleashed more of her undead creations upon me, Bodhi warned me that if I continue I will lose even more than I thought possible. I cannot give up on the Rhynn Lanthorn... but now the life and immortal soul of the one I love is at stake, as well!  I should get going, no matter how hurt I am; I should get going...~ EXIT
END

IF ~~ THEN BEGIN vampamb0
  SAY ~You follow in the hopes of retrieving something dear to you. I say that the longer you keep this up, the more you will lose. Consider your beloved Keldorn whom you pulled away from the abyss. It is so disappointing to lose something, which you were only starting to dream of...~
  IF ~OR(2) !InPartyAllowDead("Keldorn") Dead("Keldorn")~ THEN GOTO 6
  IF ~InPartyAllowDead("Keldorn") !Dead("Keldorn")~ THEN EXTERN ~KELDORJ~ vampamb0
END

IF ~~ THEN BEGIN vampamb1
  SAY ~Harm as in bodily injury and death? No, Keldorn. That would be too crude... I am not a student of the art of torture, but a professor... Follow me further, <CHARNAME>, and you will lose more than you can imagine. Starting now!~
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCut53g")~ JOURNAL ~The Final Battle with Bodhi.

Bodhi appeared in an ambush shortly before I reached her haven, warning me that she was aware of my pursuit and stealing from me my Keldorn. Before she vanished and unleashed more of her undead creations upon me, Bodhi warned me that if I continue I will lose even more than I thought possible. I cannot give up on the Rhynn Lanthorn... but now the life and immortal soul of the one I love is at stake, as well! I love? Yes, of cause I love Keldorn. As a friend... oh, I found the best possible moment to get entangled in my own feelings! I should get going, no matter how hurt I am; I should get going.~ EXIT
END

IF ~~ THEN BEGIN vampamb7
  SAY ~You follow in the hopes of retrieving something dear to you. I say that the longer you keep this up, the more you will lose. Consider the Vulova's daughter by your side. It is so disappointing to lose something, which you were only starting to dream of...~
  IF ~OR(2) !InPartyAllowDead("vpleina") Dead("vpleina") !Global("VP_LeinaRomanceAct","GLOBAL",2)~ THEN GOTO 6
  IF ~InPartyAllowDead("vpleina") !Dead("vpleina") Global("VP_LeinaRomanceAct","GLOBAL",2)~ THEN EXTERN VPLEIJ vampamb0
END

IF ~~ THEN BEGIN vampamb
  SAY ~You misunderstand me completely, bard. I am going to leave him his pathetic life. But yours I shall have. Follow me further <CHARNAME>, and you will lose more than you can imagine. Starting now!~
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCut53s")~ JOURNAL ~The Final Battle with Bodhi.

Bodhi appeared in an ambush shortly before I reached her haven, warning me that she was aware of my pursuit and stealing from me my love, my dear Leina. Before she vanished and unleashed more of her undead creations upon me, Bodhi warned me that if I continue I will lose even more than I thought possible. I cannot give up on the Rhynn Lanthorn... but now the life and immortal soul of the one I love is at stake, as well!  I should get going, no matter how hurt I am... I should get going.~ EXIT
END

END