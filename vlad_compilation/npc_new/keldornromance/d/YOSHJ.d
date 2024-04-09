APPEND ~YOSHJ~

IF ~~ THEN BEGIN Kr_WarTk
  SAY ~War? Well, maybe that is preferable to sailing to Spellhold.~
  IF ~~ THEN REPLY ~What did you say, Yoshimo?~ GOTO Kr_WarT2
END

IF ~~ THEN BEGIN Kr_WarT2
  SAY ~Oh, nothing. I have nothing against taking action with the military. My skills will be of great use to you.~
  IF ~True()~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("KRCut04")~ EXIT
  IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kr_WarTk
  IF ~InParty("vpkachi")~ THEN EXTERN ~KACHIJ~ Kr_WarTk
END

IF ~~ THEN BEGIN Kelem0
  SAY ~No, this can't be happening. It is not my time to die yet, I haven't fulfilled my duties.~
  IF ~~ THEN REPLY ~What duties Yoshimo?~ GOTO Kelem1
  IF ~~ THEN REPLY ~Not your time? How can you know? Do you know the hour of your death Yoshimo?~ GOTO Kelem2
END

IF ~~ THEN BEGIN Kelem1
  SAY ~I promised you aid to solve the riddle of who imprisoned you and for what reason, remember? We have discovered who but not yet why.~
  IF ~~ THEN REPLY ~True, but I have killed you, and now I need you to forgive me.~ GOTO Kelem3
END

IF ~~ THEN BEGIN Kelem2
  SAY ~No-no... I do not know! I was so surprised that you killed me, but I do concede that you could not control your actions. I have not wronged you my friend.~
  IF ~~ THEN REPLY ~Forgive me, my friend.~ GOTO Kelem3
END

IF ~~ THEN BEGIN Kelem3
  SAY ~Forgive you? Of course I will, you are not a bad girl, <CHARNAME>.~
  IF ~True()~ THEN EXTERN ~KELEMVOR~ 4A
  IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kelem0
  IF ~InParty("vpkachi")~ THEN EXTERN ~KACHIJ~ Kelem0
END

END