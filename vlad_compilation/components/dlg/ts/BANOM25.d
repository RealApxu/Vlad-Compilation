APPEND ~BANOME25~

IF ~~ THEN BEGIN TS134
  SAY ~I care not what you told me. My conversation with her is a private one.~
  IF ~~ THEN EXTERN ~BVALYG25~ TS179
END

IF ~~ THEN BEGIN TS135
  SAY ~Jealous? Of course you are jealous! She loves me, not you!~
  IF ~~ THEN EXTERN ~BVALYG25~ TS180
END

IF ~~ THEN BEGIN TS136
  SAY ~What! I love her more than my own life, and I will hurt her? You are going queer, ranger! I just need to talk to her. <CHARNAME>, I beg you to tell me what is going on... Do you like Valygar better than I?~
  IF ~~ THEN REPLY ~That�s enough. Valygar, you have some sort of idea-fix that everyone tries to hurt me and you are the one to save me. Let me remind you, that I am quite capable of taking care of myself. Besides I do not desire to be protected from the love of my life, Anomen... (*give Anomen a sweet smile*)~ EXTERN ~BVALYG25~ TS181
  IF ~~ THEN REPLY ~I think I know the way to solve this conflict: I care for neither of you. But I consider both of you my friends. So do make up and let�s forget about this silly conversation.~ EXTERN ~BVALYG25~ TS182
  IF ~~ THEN REPLY ~Ahem... Anomen. I do not know how you came up with the notion that I like you... I am sorry if I have given you a false hope. I prefer you not to intervene into my relationship with Valygar. ~ EXTERN ~BVALYG25~ TS184
  IF ~~ THEN REPLY ~(*Grin... and stay silent waiting for the next scene*)~ EXTERN ~BVALYG25~ TS186
  IF ~~ THEN REPLY ~(*Cry helplessly*) Fools, I... I love both of you. Please, do not make me choose...~ EXTERN ~BVALYG25~ TS188
END

IF ~~ THEN BEGIN TS137
  SAY ~I cannot believe my own ears!~
  IF ~~ THEN EXTERN ~BVALYG25~ TS183
END

IF ~~ THEN BEGIN TS138
  SAY ~I do not want to hear another word! I have to be alone now.~
  IF ~~ THEN DO ~ChangeAlignment(Myself,CHAOTIC_NEUTRAL)~ EXIT
END

IF ~~ THEN BEGIN TS139
  SAY ~I do not want to hear another word! I have to be alone now.~
  IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN TS140
  SAY ~Let me go talk to her! Or I swear I will kill you!~
  IF ~~ THEN EXTERN ~BVALYG25~ TS187
END

IF ~~ THEN BEGIN TS141
  SAY ~How dare you are...~
  IF ~~ THEN DO ~SetGlobal("AnomenValygarFight","GLOBAL",1) SetLeavePartyDialogFile() LeaveParty() ChangeAIScript("",DEFAULT) ChangeAIScript("useitem",GENERAL) ChangeAIScript("anvsval",SPECIFICS)~ EXIT
END

IF ~~ THEN BEGIN TS142
  SAY ~The gratitude of a lady is what a knight strives for. He is willing to endanger his life in a tournament for her approval and he seeks adventures and glory to gain her favor.~
  IF ~~ THEN EXTERN ~BSIME~ TSTOB15
END

IF ~~ THEN BEGIN TS143
  SAY ~A little wrinkle between your brows indicates that you do not approve. Is that so, Sime?~
  IF ~~ THEN EXTERN ~BSIME~ TSTOB16
END

IF ~~ THEN BEGIN TS144
  SAY ~Is there another sort of love, than falling for a beautiful and cold Lady from afar and fighting for years on end for a hint of a smile?~
  IF ~~ THEN EXTERN ~BSIME~ TSTOB17
END

IF ~~ THEN BEGIN TS145
  SAY ~[*Chuckles*] Indeed my Lady, it is difficult to imagine you indifferent to a battle. I have been a witness to your prowess. But you said my Lady, "while the love lasts". Do you mean that all love expires?~
  IF ~~ THEN EXTERN ~BSIME~ TSTOB18
END

END