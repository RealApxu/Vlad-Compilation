BEGIN ~KRPRELAT~

IF ~Global("VP_Kr_Funneral","GLOBAL",5)~ THEN BEGIN 0
  SAY ~Please accept my condolences, sir Keldorn.~
  	IF ~~ THEN DO ~SetGlobal("VP_Kr_Funneral","GLOBAL",6)~ EXTERN ~KELDORJ~ Funeral0
END

IF ~~ THEN BEGIN 1
  SAY ~(With a sigh) Keldorn... I have known you for quite some years, my friend. You are one of the senior officers of the Order. You had every right to settle this matter yourself. You also showed mercy for your wife which has not gone unnoticed... We tried your case, paladin Keldorn Firecam, and we decided that you have done everything in your power to save this woman's soul.~
  	IF ~~ THEN EXTERN ~KELDORJ~ Funeral1
END

IF ~~ THEN BEGIN 2
  SAY ~I take it you will stay in the city only long enough to formulise the divorce?~
  	IF ~~ THEN EXTERN ~KELDORJ~ Funeral2
END

IF ~~ THEN BEGIN 3
  SAY ~Yes. After such disgraceful behaviour, she simply can not remain the wife of a paladin. Your marriage is annulled.~
  	IF ~~ THEN EXTERN ~KELDORJ~ Funeral3
END

IF ~~ THEN BEGIN 4
  SAY ~You have nothing to blame yourself for Keldorn. Continue your travelling with <CHARNAME>, but do not stay here long... soon the gossip will quieten down and it will be over and done with. We will insist that Maria leaves Amn, and soon.~
  	IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("KRCut03")~ JOURNAL ~Keldorn's daughters have passed away, his marriage is dissolved. I must do my best to ease the pain of my paladin.~ EXIT
END