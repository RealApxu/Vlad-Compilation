ADD_TRANS_TRIGGER FINSOL01 28 ~!Global("VP_ToB_KrBanters","GLOBAL",1)~ DO 0 1 2 3 //reply options 0 1 2 3 (start with 0) EXTEND_BOTTOM FINSOL01 28
  IF ~Global("VP_ToB_KrBanters","GLOBAL",1)~ THEN GOTO KR1
END

EXTEND_BOTTOM FINSOL01 27
//IF ~InParty("Coran")~ THEN EXTERN ~CORAN25J~ 0
//IF ~InParty("Dynaheir")~ THEN EXTERN ~DYNA25J~ 0
  IF ~InParty("vpkachi")~ THEN EXTERN VPKAC25J 3
  IF ~InParty("Yoshimo")~ THEN EXTERN YOSHJ TS231
  IF ~InParty("Sime") Global("SimeRomanceActive","GLOBAL",2) Gender(Player1,MALE)~ THEN EXTERN VPSIMJ TSTOB7
  IF ~InParty("Sime") OR(2) !Global("SimeRomanceActive","GLOBAL",2) Gender(Player1,FEMALE)~ THEN EXTERN VPSIMJ TSTOB6
  IF ~InParty("vpleina") Gender(Player1,MALE) Global("VP_LeinaRomanceAct","GLOBAL",2)~ THEN EXTERN VPLEIJ TSTOB7
  IF ~InParty("vpleina") Gender(Player1,FEMALE)~ THEN EXTERN VPLEIJ TSTOB6
END

EXTEND_BOTTOM FINSOL01 29
  IF ~InParty("Sime") Global("SimeRomanceActive","GLOBAL",2) Gender(Player1,MALE)~ THEN EXTERN VPSIMJ TSTOB8
  IF ~InParty("vpleina") Gender(Player1,MALE) Global("VP_LeinaRomanceAct","GLOBAL",2)~ THEN EXTERN VPLEIJ TSTOB8
END

EXTEND_BOTTOM FINSOL01 30
  IF ~InParty("Sime") Global("SimeRomanceActive","GLOBAL",2) Gender(Player1,MALE)~ THEN EXTERN VPSIMJ TSTOB8
  IF ~InParty("vpleina") Gender(Player1,MALE) Global("VP_LeinaRomanceAct","GLOBAL",2)~ THEN EXTERN VPLEIJ TSTOB8
END

EXTEND_BOTTOM FINSOL01 31
  IF ~InParty("Sime") Global("SimeRomanceActive","GLOBAL",2) Gender(Player1,MALE)~ THEN EXTERN VPSIMJ TSTOB8
  IF ~InParty("vpleina") Gender(Player1,MALE) Global("VP_LeinaRomanceAct","GLOBAL",2)~ THEN EXTERN VPLEIJ TSTOB8
END

EXTEND_BOTTOM FINSOL01 32
  IF ~InParty("Sime") Global("SimeRomanceActive","GLOBAL",2) Gender(Player1,MALE)~ THEN EXTERN VPSIMJ TSTOB9
  IF ~InParty("vpleina") Gender(Player1,MALE) Global("VP_LeinaRomanceAct","GLOBAL",2)~ THEN EXTERN VPLEIJ TSTOB9
END

APPEND FINSOL01

IF ~~ THEN BEGIN KR0
  SAY ~You are carrying a Bhaal's legacy too, paladin. Are you ready to let it go?~
  IF ~~ THEN EXTERN KELDO25J KREND_1
END

IF ~~ THEN BEGIN KR1
  SAY ~(Words from Keldorn, words from Solar, words from anyone else, the necessity to make the decision - stay with Keldorn and be mortal or become a god - frightens you. Your groom is right: you should decide for yourself, no matter how hard it is.)~
  = ~(A song you heard once in an elven tavern suddenly springs forth from the back of your mind:

You are on the earth, so near to I,
Yet heart of yours coming back to the sky,
Above a place of sins, height, so high,
Or down, down near dear mine

Asylum can anyone find in there,
Yet not for you lady death comes today,
I know how you walk - edge and fringe,
Angels don't die - they just sail away

When we shall be gone, becoming ashes and dust,
And our souls flying in haven's distance,
But you are still here, stranger for their and for mine,
For you is it fine? For me is it fine?

For you is it fine? For me is it fine.)~
  = ~(Your soul has responded. And, despite of being strange, it helped you to make a decision.)~
  IF ~Global("VP_Kr_She_Pregnant","GLOBAL",1)~ THEN REPLY ~(You have firmly looked into the Solar's golden eyes) But my child, Solar... Why do I need Bhaal's throne, if I have my child? He is most important to me now. I can't deprive him of his mother, or his father. I am staying, Solar. Take my legacy. I have dreamed the most of marrying Keldorn Firecam. I am carrying his child, I can't refuse him now? No, never. I love him and I will stay with him.~ GOTO KR2
  IF ~GlobalLT("PPEvilChoices","GLOBAL",2) Global("VP_Kr_She_Pregnant","GLOBAL",1)~ THEN REPLY ~I... I... I must! I must take my father's throne and defeat the evil. Forgive me, my love, forgive me! But it is my duty. You have always taught me of a duty and I am acting now as a worthy student! I must sacrifice myself, Keldorn, my love... My child will be born in time, and you will see him, beloved. And I... I won't leave you forever.~ GOTO KR3_1
  IF ~GlobalGT("PPEvilChoices","GLOBAL",1) GlobalLT("PPEvilChoices","GLOBAL",4) Global("VP_Kr_She_Pregnant","GLOBAL",1)~ THEN REPLY ~I... I... I must! I must take my father's throne and defeat the evil. Forgive me, my love, forgive me! But it is my duty. You have always taught me of a duty and I am acting now as a worthy student! I must sacrifice myself, Keldorn, my love... My child will be born in time, and you will see him, beloved. And I... I won't leave you forever.~ GOTO KR3_2
  IF ~GlobalGT("PPEvilChoices","GLOBAL",3) GlobalLT("PPEvilChoices","GLOBAL",6) Global("VP_Kr_She_Pregnant","GLOBAL",1)~ THEN REPLY ~I... I... I must! I must take my father's throne and defeat the evil. Forgive me, my love, forgive me! But it is my duty. You have always taught me of a duty and I am acting now as a worthy student! I must sacrifice myself, Keldorn, my love... My child will be born in time, and you will see him, beloved. And I... I won't leave you forever.~ GOTO KR3_3
  IF ~!Global("VP_Kr_She_Pregnant","GLOBAL",1)~ THEN REPLY ~(You have firmly looked into the Solar's golden eyes) Don't you already know my answer, Solar? Let Kelemvor take what should be mine - he will make better use of it. I am nothing but a simple girl, daughter of a simple woman, so who am I to be a goddess? I am happy to be Countess Firecam. How can I wish for anything more? Deprive me from my legacy without any doubt, Solar.~ GOTO KR4
  IF ~GlobalLT("PPEvilChoices","GLOBAL",2) !Global("VP_Kr_She_Pregnant","GLOBAL",1)~ THEN REPLY ~(With the tears in your eyes) I am coming, Solar. Forgive me, Keldorn, but, all the same, I am not worthy of you.~ GOTO KR5_1
  IF ~GlobalGT("PPEvilChoices","GLOBAL",1) GlobalLT("PPEvilChoices","GLOBAL",4) !Global("VP_Kr_She_Pregnant","GLOBAL",1)~ THEN REPLY ~(With the tears in your eyes) I am coming, Solar. Forgive me, Keldorn, but, all the same, I am not worthy of you.~ GOTO KR5_2
  IF ~GlobalGT("PPEvilChoices","GLOBAL",3) GlobalLT("PPEvilChoices","GLOBAL",6) !Global("VP_Kr_She_Pregnant","GLOBAL",1)~ THEN REPLY ~(With the tears in your eyes) I am coming, Solar. Forgive me, Keldorn, but, all the same, I am not worthy of you.~ GOTO KR5_3
END

IF ~~ THEN BEGIN KR2
  SAY #68071 /* ~Then you shall begin life anew, mortal, without the taint of your sire upon your soul... and the essence of Bhaal shall forever be hidden.  You have done well, and freedom shall be your reward.~ [SOLAR106] */
  IF ~~ THEN EXTERN KELDO25J KRENDst1
END

IF ~~ THEN BEGIN KR3_1
  SAY #68070 /* ~As you wish.  You have proven to us all that the power in your blood is yours to command... it does not command you.  I shall be proud to stand by you in a place of power among the heavens.~ [SOLAR105] */
  IF ~~ THEN EXTERN KELDO25J KRENDst2
END

IF ~~ THEN BEGIN KR3_2
  SAY #68069 /* ~As you wish... though the thought of you succumbing to the temptations of Bhaal's foul taint brings me no pleasure.  We shall see what manner of power you become, in time.~ [SOLAR104] */
  IF ~~ THEN EXTERN KELDO25J KRENDst2
END

IF ~~ THEN BEGIN KR3_3
  SAY #68068 /* ~As you wish, though it brings me no pleasure to unleash such an evil onto the cosmos.  You are wicked, Bhaalspawn, and your time as a power will be a difficult one, I swear.~ [SOLAR103] */
  IF ~~ THEN EXTERN KELDO25J KRENDst2
END

IF ~~ THEN BEGIN KR4
  SAY #68071 /* ~Then you shall begin life anew, mortal, without the taint of your sire upon your soul... and the essence of Bhaal shall forever be hidden.  You have done well, and freedom shall be your reward.~ [SOLAR106] */
  IF ~~ THEN EXTERN KELDO25J KRENDst3
END

IF ~~ THEN BEGIN KR5_1
  SAY #68070 /* ~As you wish.  You have proven to us all that the power in your blood is yours to command... it does not command you.  I shall be proud to stand by you in a place of power among the heavens.~ [SOLAR105] */
  IF ~~ THEN EXTERN KELDO25J KRENDst4
END

IF ~~ THEN BEGIN KR5_2
  SAY #68069 /* ~As you wish... though the thought of you succumbing to the temptations of Bhaal's foul taint brings me no pleasure.  We shall see what manner of power you become, in time.~ [SOLAR104] */
  IF ~~ THEN EXTERN KELDO25J KRENDst4
END

IF ~~ THEN BEGIN KR5_3
  SAY #68068 /* ~As you wish, though it brings me no pleasure to unleash such an evil onto the cosmos.  You are wicked, Bhaalspawn, and your time as a power will be a difficult one, I swear.~ [SOLAR103] */
  IF ~~ THEN EXTERN KELDO25J KRENDst4
END

//Epilogue 1 - Pregnant, stayed with Keldorn
//Global("VP_Kr_Epilogue","GLOBAL",1) IF ~~ THEN BEGIN KR6
  SAY ~(Suddenly, in that moment, when Solar attempts to take your divine legacy, you hear the voice: "Don't you dare! You are going to be sorry about this!".)~
  = ~(You feel a sharp pain that forces you to double over. You don't understand what's happening to you. It's as if someone is raking your entrails with steel claws and crying: "I won't give it up! It's mine! Don't you dare try to take it from me!")~
  = ~I can't take your legacy, your daughter won't give it to me. Allow me to kill her or otherwise she will kill you.~
  IF ~~ THEN DO ~SetGlobal("VP_ToB_Kr_Kelemvor","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("KRCut32")~ EXIT
END

IF ~~ THEN BEGIN KR7
  SAY ~No, paladin. The child will be born in time, and you are going to be informed of it. Moreover, you will take part in his education. Maybe the child will become a new god and will help his mother.~
  IF ~True()~ THEN EXTERN FINSOL01 KR8
  IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN IMOEN25J KRst7
  IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN JAHEI25J KRst5
  IF ~InParty("Sarevok") !Dead("Sarevok")~ THEN EXTERN SAREV25J KRst4
END

//Epilogue 2 - Pregnant, ascended to the Throne
IF ~~ THEN BEGIN KR8
  SAY ~(Suddenly you hear the voice: "Good girl. I am glad my efforts were not in vain.")~
  IF ~~ THEN DO ~SetGlobal("VP_Kr_Epilogue","GLOBAL",2)~ EXTERN FINSOL01 33
END

//Epilogue 3 - Not pregnant, stayed with Keldorn
IF ~~ THEN BEGIN KR9
  SAY ~(Suddenly you hear the voice: "You idiot! All that has been achieved now is in vain! Oh...")~
  IF ~~ THEN DO ~SetGlobal("VP_Kr_Epilogue","GLOBAL",3)~ EXTERN FINSOL01 33
END

//Epilogue 4 - Not pregnant, ascended to the Throne
IF ~~ THEN BEGIN KR10
  SAY ~(Suddenly you hear the voice: "I am proud of you! You did well! And Cyric will regret he crossed paths with you.")~
  IF ~~ THEN DO ~SetGlobal("VP_Kr_Epilogue","GLOBAL",4)~ EXTERN FINSOL01 33
END

END