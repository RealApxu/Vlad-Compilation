CHAIN YOSHJ Kr_WarTk
~War? Well, maybe that is preferable to sailing to Spellhold.~
END
 ++ ~What did you say, Yoshimo?~ EXTERN YOSHJ Kr_WarT2

CHAIN YOSHJ Kr_WarT2
~Oh, nothing. I have nothing against taking action with the military. My skills will be of great use to you.~
END
 IF ~True()~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("KRCut04")~ EXIT
 IF ~InParty("Edwin")~ THEN EXTERN EDWINJ Kr_WarTk
 IF ~InParty("vpkachi")~ THEN EXTERN VPKACJ Kr_WarTk

CHAIN YOSHJ Kelem0
~No, this can't be happening. It is not my time to die yet, I haven't fulfilled my duties.~
END
 ++ ~What duties Yoshimo?~ EXTERN YOSHJ Kelem1
 ++ ~Not your time? How can you know? Do you know the hour of your death Yoshimo?~ EXTERN YOSHJ Kelem2

CHAIN YOSHJ Kelem1
~I promised you aid to solve the riddle of who imprisoned you and for what reason, remember? We have discovered who but not yet why.~
END
 ++ ~True, but I have killed you, and now I need you to forgive me.~ EXTERN YOSHJ Kelem3

CHAIN YOSHJ Kelem2
~No-no... I do not know! I was so surprised that you killed me, but I do concede that you could not control your actions. I have not wronged you my friend.~
END
 ++ ~Forgive me, my friend.~ EXTERN YOSHJ Kelem3

CHAIN YOSHJ Kelem3
~Forgive you? Of course I will, you are not a bad girl, <CHARNAME>.~
END
 IF ~True()~ THEN EXTERN KELEMVOR 4A
 IF ~InParty("Edwin")~ THEN EXTERN EDWINJ Kelem0
 IF ~InParty("vpkachi")~ THEN EXTERN VPKACJ Kelem0