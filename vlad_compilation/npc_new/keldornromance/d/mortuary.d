////////////////////////////////////////////////////////////////////////////
//                                                                        //
//  Additional interjections in Mortuary for Keldorn Romance              //
//                                                                        //
////////////////////////////////////////////////////////////////////////////

APPEND NJMELJ

IF ~~ THEN BEGIN Kelem0
  SAY ~So we are... I tried to escape from the bounty hunters, but instead turned out to be dead!~
  IF ~~ THEN REPLY ~Melora, you shouldn't blame yourself. This is my fault... I lost my mind. I am really sorry, we must leave this place as soon as possible.~ GOTO Kelem1
END

IF ~~ THEN BEGIN Kelem1
  SAY ~Just curious how often it happens to you to lose your mind.~
  IF ~~ THEN REPLY ~Do not worry, I hope this won't happen again. Let's go!~ GOTO Kelem2
END

IF ~~ THEN BEGIN Kelem2
  SAY ~Of course. There is nothing to do here.~
  IF ~True()~ THEN EXTERN ~KELEMVOR~ 4A
  IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kelem0
  IF ~InParty("vpkachi")~ THEN EXTERN ~KACHIJ~ Kelem0
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
  IF ~InParty("Anomen")~ THEN EXTERN ~ANOMENJ~ Kelem0
  IF ~InParty("njhroth")~ THEN EXTERN NJHROJ Kelem0
  IF ~InParty("njdar")~ THEN EXTERN ~DARJ~ Kelem0
  IF ~InParty("njtaffic")~ THEN EXTERN ~TAFFICJ~ Kelem0
  IF ~InParty("Sharteel")~ THEN EXTERN ~SHARTJ~ Kelem0
  IF ~InParty("vpleina")~ THEN EXTERN VPLEIJ Kelem0
END

END

APPEND VPLEIJ

IF ~~ THEN BEGIN Kelem0
  SAY ~I ... I do not understand. Where I am? What is this horrible place?~
  IF ~~ THEN REPLY ~This... This is the place where you should not be. Let's leave it.~ GOTO Kelem1
END

IF ~~ THEN BEGIN Kelem1
  SAY ~But how did we get here?~
  IF ~~ THEN REPLY ~You're dead and I'm not. But I'm taking you out of here, let's go.~ GOTO Kelem2
END

IF ~~ THEN BEGIN Kelem2
  SAY ~Dead? It explains everything. I'll think about it later. Now let's go.~
  IF ~True()~ THEN EXTERN ~KELEMVOR~ 4A
  IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kelem0
  IF ~InParty("vpkachi")~ THEN EXTERN ~KACHIJ~ Kelem0
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
  IF ~InParty("Anomen")~ THEN EXTERN ~ANOMENJ~ Kelem0
  IF ~InParty("njhroth")~ THEN EXTERN NJHROJ Kelem0
  IF ~InParty("njdar")~ THEN EXTERN ~DARJ~ Kelem0
  IF ~InParty("njtaffic")~ THEN EXTERN ~TAFFICJ~ Kelem0
  IF ~InParty("Sharteel")~ THEN EXTERN ~SHARTJ~ Kelem0
END

END

APPEND ~SHARTJ~

IF ~~ THEN BEGIN Kelem0
  SAY ~What the hell... Damn it, <CHARNAME>, where we are?~
  IF ~~ THEN REPLY ~You won't believe... I killed you.~ GOTO Kelem1
END

IF ~~ THEN BEGIN Kelem1
  SAY ~What?! What are you talking about? How did you kill me? How could you do that?~
  IF ~~ THEN REPLY ~You remember who my father is, Shar-Teel? His spirit consumed me, and I... I slayed you.~ GOTO Kelem2
END

IF ~~ THEN BEGIN Kelem2
  SAY ~But how did that happen?~
  IF ~~ THEN REPLY ~Ring of Cyric. I put it on... I thought I could save Keldorn.~ GOTO Kelem3
END

IF ~~ THEN BEGIN Kelem3
  SAY ~Stupid girl! Oh, gods! How can you waste such a divine gift!~
  IF ~~ THEN REPLY ~Come on! We are allowed to leave, let's go.~ GOTO Kelem4
END

IF ~~ THEN BEGIN Kelem4
  SAY ~Yes? This is good news indeed. Just no foolish things anymore!~
  IF ~True()~ THEN EXTERN ~KELEMVOR~ 4A
  IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kelem0
  IF ~InParty("vpkachi")~ THEN EXTERN ~KACHIJ~ Kelem0
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
  IF ~InParty("Anomen")~ THEN EXTERN ~ANOMENJ~ Kelem0
  IF ~InParty("njhroth")~ THEN EXTERN NJHROJ Kelem0
  IF ~InParty("njdar")~ THEN EXTERN ~DARJ~ Kelem0
  IF ~InParty("njtaffic")~ THEN EXTERN ~TAFFICJ~ Kelem0
END

END

APPEND ~TAFFICJ~

IF ~~ THEN BEGIN Kelem0
  SAY ~What? What's that? My dream has come true? I'm great and invincible?~
  IF ~~ THEN REPLY ~You could say that.~ GOTO Kelem1
END

IF ~~ THEN BEGIN Kelem1
  SAY ~Who is that? Is that you? How did you do that?~
  IF ~~ THEN REPLY ~Very simple. I killed you. You are now the immortal spirit.~ GOTO Kelem2
END

IF ~~ THEN BEGIN Kelem2
  SAY ~No, no, we did not agree on such terms! I'm still a gnome!~
  IF ~~ THEN REPLY ~Taffic, you wanted to change, didn't you? You have changed. What's wrong with you now?~ GOTO Kelem3
END

IF ~~ THEN BEGIN Kelem3
  SAY ~That I am dead!~
  IF ~~ THEN REPLY ~Believe me, this is not the worst thing that could happen to you. But enough with this chatter, we should get out of here.~ GOTO Kelem4
END

IF ~~ THEN BEGIN Kelem4
  SAY ~And you will help me to fulfill my dream? Let's go, and remember, you owe me!~
  IF ~True()~ THEN EXTERN ~KELEMVOR~ 4A
  IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kelem0
  IF ~InParty("vpkachi")~ THEN EXTERN ~KACHIJ~ Kelem0
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
  IF ~InParty("Anomen")~ THEN EXTERN ~ANOMENJ~ Kelem0
  IF ~InParty("njhroth")~ THEN EXTERN NJHROJ Kelem0
  IF ~InParty("njdar")~ THEN EXTERN ~DARJ~ Kelem0
END

END

APPEND ~DARJ~

IF ~~ THEN BEGIN Kelem0
  SAY ~So, my life is over. Do I regret? Hardly. I can no longer wear the word of Ilmater and that makes me sad. Only that.~
  IF ~~ THEN REPLY ~Oh, I'm sorry, my friend, I didn't think I'd kill you too.~ GOTO Kelem1
END

IF ~~ THEN BEGIN Kelem1
  SAY ~<CHARNAME>? What has happend to you? How can Dar the Halforc help you?~
  IF ~~ THEN REPLY ~Help me? Can you forgive my stupidity and come back with me?~ GOTO Kelem2
END

IF ~~ THEN BEGIN Kelem2
  SAY ~What did you do, my friend?~
  IF ~~ THEN REPLY ~Dar, I did not listen to Keldorn and put the Ring of Cyric!~ GOTO Kelem3
END

IF ~~ THEN BEGIN Kelem3
  SAY ~<CHARNAME>! How could you... You should not do that!~
  IF ~~ THEN REPLY ~I know, Dar... already know. Let's go, please.~ GOTO Kelem4
END

IF ~~ THEN BEGIN Kelem4
  SAY ~Of course, <CHARNAME>. You do not need to ask me twice. I am going with you.~
  IF ~True()~ THEN EXTERN ~KELEMVOR~ 4A
  IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kelem0
  IF ~InParty("vpkachi")~ THEN EXTERN ~KACHIJ~ Kelem0
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
  IF ~InParty("Anomen")~ THEN EXTERN ~ANOMENJ~ Kelem0
  IF ~InParty("njhroth")~ THEN EXTERN NJHROJ Kelem0
END

END

APPEND NJHROJ

IF ~~ THEN BEGIN Kelem0
  SAY ~Great. I fear such an outcome nobody in the Brotherhood could foresee.~
  IF ~~ THEN REPLY ~Hrothgar, Hrothgar, I...~ GOTO Kelem1
END

IF ~~ THEN BEGIN Kelem1
  SAY ~I should have been more cautious asking for your help. But I did not know you are the child of Bhaal.~
  IF ~~ THEN REPLY ~This is the only thing that you regret you did?~ GOTO Kelem2
END

IF ~~ THEN BEGIN Kelem2
  SAY ~I was not planning to die like that.~
  IF ~~ THEN REPLY ~Like that? Do you mean from my hand? It was not me, it was Bhaal in me!~ GOTO Kelem3
END

IF ~~ THEN BEGIN Kelem3
  SAY ~It's all the ring? Right?~
  IF ~~ THEN REPLY ~Yes.~ GOTO Kelem4
END

IF ~~ THEN BEGIN Kelem4
  SAY ~Being your friend is very dangerous. But being your lover... I am happy that I have passed this cup.~
  IF ~~ THEN REPLY ~Are you kidding? That's good, and it's time to come back. I'm glad you're not mad at me.~ GOTO Kelem5
END

IF ~~ THEN BEGIN Kelem5
  SAY ~I am ready to go.~
  IF ~True()~ THEN EXTERN ~KELEMVOR~ 4A
  IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ Kelem0
  IF ~InParty("vpkachi")~ THEN EXTERN ~KACHIJ~ Kelem0
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
  IF ~InParty("Anomen")~ THEN EXTERN ~ANOMENJ~ Kelem0
END

END