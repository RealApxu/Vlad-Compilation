APPEND ~JAHEIRAJ~

IF ~~ THEN BEGIN Kr_WarTk
  SAY ~<CHARNAME>, we must help... we can not leave our friends to face such danger!~
  IF ~True()~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("KRCut04")~ EXIT
  IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kr_WarTk
  IF ~InParty("Yoshimo")~ THEN EXTERN ~YOSHJ~ Kr_WarTk
  IF ~InParty("Jan")~ THEN EXTERN ~JANJ~ Kr_WarTk
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ Kr_WarTk
END

IF ~~ THEN BEGIN Kr_Curse
  SAY ~I believe Keldorn has been struck by Cyric's curse and he will most certainly die if any attempt is made to remove it. Only the gods themselves in their mercy can revoke the curse.~
  IF ~~ THEN DO ~SetGlobal("VP_Kr_CyricPlot","GLOBAL",4) ClearAllActions() StartCutSceneMode() StartCutScene("KRCut10")~ EXIT
END

IF ~~ THEN BEGIN Kelem0
  SAY ~I... I am dead. I can be reunited with my Khalid and be with him forever. I can  rest at last... but how can I rest, I have not carried out Gorion's instructions, I have not protected <CHARNAME> well enough, I left her...~
  IF ~~ THEN REPLY ~Jaheira! Jaheira, please, forgive me!~ GOTO Kelem0A
END

IF ~~ THEN BEGIN Kelem0A
  SAY ~Who's calling me? Ah, it is you. Why are you disturbing me? What are you doing here? What do you need of me? You are not dead also, are you?~
  IF ~~ THEN REPLY ~I have come to beg your forgiveness. You were my friend, my elder sister, my protector. You became the mother to me that I never knew, and I have paid you with beggarly thanks! Because of me you lost your husband, your friends, and now I have killed you too! Oh, Jaheira, I need you so badly!~ GOTO Kelem1
  IF ~~ THEN REPLY ~I have come to beg your forgiveness... I come to ask you to return. Jaheira, it is so hard for me to be alone, to be without you. You promised Gorion to take care of me, to teach me sense, to guide me. I need your guidance, please, you must return to me.~ GOTO Kelem2
  IF ~~ THEN REPLY ~What are you doing here, Jaheira? Your place is among the living, not here among the shadows. I killed you accidentally, I was not myself at the time! Forgive me, you know that it is this damned taint that is to blame. You know what I feel for you. Please, please Jaheira, come back to me!~ GOTO Kelem3
END

IF ~~ THEN BEGIN Kelem1
  SAY ~<CHARNAME>, I always believed that you looked upon as nothing more than a governess, as an annoying mentor, and now you are calling me friend, sister... mother even, this surprises me my girl. You know that I am also very attached to you. Do you remember how first we met?~
  IF ~~ THEN REPLY ~(With a smile) I do. You and Khalid were waiting for me in the inn and you took turns sleeping for fear you would miss me.~ GOTO Kelem4
  IF ~~ THEN REPLY ~I do. Imoen and I... we were bitten by wolves, and barely alive when we finally got to you. You were waiting for us in the inn's hall.~ GOTO Kelem5
  IF ~~ THEN REPLY ~I remember everything, Jaheira, everything. Our meeting in the "Friendly Arm", the conversation about the need to go to Nashkel.~ GOTO Kelem5
END

IF ~~ THEN BEGIN Kelem4
  SAY ~Yes. You truly remember, you have forgotten nothing. I will come with you.~
  IF ~True()~ THEN EXTERN ~KELEMVOR~ 4A
  IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kelem0
  IF ~InParty("vpkachi")~ THEN EXTERN ~KACHIJ~ Kelem0
  IF ~InParty("Yoshimo")~ THEN EXTERN ~YOSHJ~ Kelem0
  IF ~InParty("Viconia")~ THEN EXTERN ~VICONIJ~ Kelem0
  IF ~InParty("Jan")~ THEN EXTERN ~JANJ~ Kelem0
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ Kelem0
END

IF ~~ THEN BEGIN Kelem2
  SAY ~I must? Yes, I am obliged to Gorion. Khalid and I promised him we'd look after you. Do you remember our first meeting, <CHARNAME>?~
  IF ~~ THEN REPLY ~We were to meet at the inn.~ GOTO Kelem5
  IF ~~ THEN REPLY ~Was there something special about that meeting?~ GOTO Kelem5
  IF ~~ THEN REPLY ~Yes... oh yes. I remember! You told me that you and Khalid took turns sleeping for fear you would miss me.~ GOTO Kelem4
END

IF ~~ THEN BEGIN Kelem5
  SAY ~Khalid feared that we would miss you.~
  IF ~~ THEN REPLY ~Yes, that is why you took turns sleeping!~ GOTO Kelem4
END

IF ~~ THEN BEGIN Kelem3
  SAY ~Accidentally? I do not think so. Your taint got the better of you, and now you have no more need of me.~
  IF ~~ THEN REPLY ~That is not true. I do need you Jaheira! It was that damn ring, it deprived me of my senses. Please Jaheira, I had to do  something to try to save Keldorn. I could not let him die!~ GOTO Kelem7
  IF ~~ THEN REPLY ~Don't' you know me? If not you, then who knows me better? Remember how we met? How you and Khalid were watching for me and took turns sleeping?~ GOTO Kelem4
END

IF ~~ THEN BEGIN Kelem7
  SAY ~(Smiling) What is this? Has my girl fallen in love? Of course I will not leave you now, let us leave together.~
  IF ~True()~ THEN EXTERN ~KELEMVOR~ 4A
  IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kelem0
  IF ~InParty("vpkachi")~ THEN EXTERN ~KACHIJ~ Kelem0
  IF ~InParty("Yoshimo")~ THEN EXTERN ~YOSHJ~ Kelem0
  IF ~InParty("Viconia")~ THEN EXTERN ~VICONIJ~ Kelem0
  IF ~InParty("Jan")~ THEN EXTERN ~JANJ~ Kelem0
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ Kelem0
END

END