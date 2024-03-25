ADD_TRANS_TRIGGER YOSHJ 129
~Global("VP_Guild_Attacked","GLOBAL",0)~ DO 0

EXTEND_BOTTOM YOSHJ 129
  IF ~Global("VP_Guild_Attacked","GLOBAL",1)~ THEN GOTO KR101
END

REPLACE_TRIGGER_TEXT YOSHJ ~Global("TalkedToRenal","GLOBAL",0)~ ~Global("TalkedToRenal","GLOBAL",0) Global("VP_Guild_Attacked","GLOBAL",0)~

APPEND ~YOSHJ~

//KR
IF ~~ THEN BEGIN KR101
  SAY ~This is Shadow Thief territory... They will shoot you on the first sight for what you have done to them.~
  IF ~~ THEN DO ~SetGlobal("YoshimoMentionsRenal","LOCALS",1)~ EXIT
END

IF WEIGHT #-1 ~GlobalTimerExpired("YoshimoRemindsRenal","GLOBAL") Global("TalkedToRenal","GLOBAL",0) Global("VP_Guild_Attacked","GLOBAL",1) AreaType(OUTDOOR) AreaType(CITY) !AreaCheck("AR2000") See(Player1) !StateCheck(Player1,STATE_SLEEPING) GlobalLT("YoshimoReminder","LOCALS",2)~ THEN BEGIN KR102
  SAY ~Hmmmm. I would suggest we stay away from the Docks district. We are now the perfect target of all the Shadow Thieves and their supporters around.~
  IF ~~ THEN DO ~SetGlobal("YoshimoReminder","LOCALS",2)~ EXIT
END

END