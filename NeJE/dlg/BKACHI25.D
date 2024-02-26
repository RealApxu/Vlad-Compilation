BEGIN ~BKACHI25~

IF WEIGHT #-9 ~Global("ExpLoveTalk","LOCALS",2)~ THEN BEGIN 0
  SAY ~It has been a long day... I am glad <CHARNAME> finally decided to rest.~
  IF ~~ THEN EXTERN ~BYOSHIM~ TS121
END

IF ~~ THEN BEGIN 1
  SAY ~So you think that a helpless girl, who does not know the ways of the world is a more fitting personality for this body?~ [KACHIL08]
  IF ~~ THEN EXTERN ~BYOSHIM~ TS122
END

IF ~~ THEN BEGIN 2
  SAY ~Yoshimo, you are unlike any other man I met among our kin as well. I am afraid that we are together not because we are so right for each other, but because we are so wrong for anyone else...~
  IF ~~ THEN DO ~SetGlobal("ExpLoveTalk","LOCALS",3)
SetGlobalTimer("VP_KachikoRomance","GLOBAL",TWO_DAYS)
RestParty()~ EXIT
END

IF WEIGHT #-8 ~Global("ExpLoveTalk","LOCALS",4)~ THEN BEGIN 3
  SAY ~Yoshimo?~
  IF ~~ THEN EXTERN ~BYOSHIM~ TS123
END

IF ~~ THEN BEGIN 4
  SAY ~What?~
  IF ~~ THEN EXTERN ~BYOSHIM~ TS124
END

IF ~~ THEN BEGIN 5
  SAY ~Dragon Tongue, I am quite capable of fending off any attack be it in the day or nighttime... I appreciate the thought though.~ [KACHIL09]
  IF ~~ THEN EXTERN ~BYOSHIM~ TS125
END

IF ~~ THEN BEGIN 6
  SAY ~Sometimes I wish you had two masks Yoshimo, like in a theatre: a funny mask and a sincere mask...~ [KACHIL29]
  IF ~~ THEN EXTERN ~BYOSHIM~ TS126
END

IF ~~ THEN BEGIN 7
  SAY ~Yoshimo... I love you too and I want us to be together. Please, stay with me...~
  IF ~~ THEN DO ~SetGlobal("ExpLoveTalk","LOCALS",5)
SetGlobalTimer("VP_KachikoRomance","GLOBAL",TWO_DAYS)
RestParty()~ EXIT
END

IF WEIGHT #-7 ~Global("ExpLoveTalk","LOCALS",6)~ THEN BEGIN 8
  SAY ~Can I open my eyes now?~ [KACHIL10]
  IF ~~ THEN EXTERN ~BYOSHIM~ TS127
END

IF ~~ THEN BEGIN 9
  SAY ~A swallow? Where did you get the bird, Yoshimo Hashimoto?~ [KACHIL1L]
  IF ~~ THEN EXTERN ~BYOSHIM~ TS128
END

IF ~~ THEN BEGIN 10
  SAY ~As old fools, our ancestors taught us?~
  IF ~~ THEN EXTERN ~BYOSHIM~ TS129
END

IF ~~ THEN BEGIN 11
  SAY ~Fly little singer and bring joy to the heart of the Sky Emperor and the Immortals.~
  IF ~~ THEN EXTERN ~BYOSHIM~ TS130
END

IF ~~ THEN BEGIN 12
  SAY ~How can one who has power to give freedom to at least one being be unhappy? I am so happy Yoshimo. This is the most marvelous gift I ever received.~
  IF ~~ THEN DO ~SetGlobal("ExpLoveTalk","LOCALS",7)~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY ~Eventually. Well, will you come?~
  IF ~~ THEN EXTERN ~BVALYG25~ TS141
END

IF ~~ THEN BEGIN 14
  SAY ~And you will bring <CHARNAME> along?~
  IF ~~ THEN EXTERN ~BVALYG25~ TS142
END

IF ~~ THEN BEGIN 15
  SAY ~(*Smiles*)~
  IF ~~ THEN EXTERN ~BVALYG25~ TS143
END

IF ~~ THEN BEGIN 16
  SAY ~Valygar, of course! You know well enough that Yoshimo’s soul was redeemed with her help and we cannot imagine our wedding without <CHARNAME> as our most honored guest, but I was hoping you would come together...~
  IF ~~ THEN EXTERN ~BVALYG25~ TS144
END

IF ~~ THEN BEGIN 17
  SAY ~How long can I watch you sighing? How long can I watch her giving you secret glances?~
  IF ~~ THEN EXTERN ~BVALYG25~ TS145
END

IF ~~ THEN BEGIN 18
  SAY ~When will she need support and love more than now? Valygar, you are taming your heart needlessly.~
  IF ~~ THEN EXTERN ~BVALYG25~ TS146
END

IF ~~ THEN BEGIN 19
  SAY ~(*Hugs Valygar*)~
  IF ~~ THEN EXTERN ~BVALYG25~ TS148
END

IF ~~ THEN BEGIN 20
  SAY ~Of course I do not!~
  IF ~~ THEN EXTERN ~BYOSHIM~ TS132
END

IF ~~ THEN BEGIN 21
  SAY ~Oh, you are right, Dragon Tongue.~
  IF ~~ THEN EXTERN ~BVALYG25~ TS149
END

IF ~~ THEN BEGIN 22
  SAY ~Sorry, Valygar. It is impossible not to notice.~
  IF ~~ THEN EXTERN ~BVALYG25~ TS151
END

IF ~~ THEN BEGIN 23
  SAY ~One, who does not take risk, will never win.~
  IF ~~ THEN DO ~RestParty()~ EXIT
END