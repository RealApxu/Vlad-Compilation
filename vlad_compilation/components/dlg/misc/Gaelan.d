REPLACE_STATE_TRIGGER GAELAN 20
~~

//_____________________________________________________//
//                                                     //
//         Melora interjects with Gaelan Bayle         //
//_____________________________________________________//
//                                                     //

REPLACE_STATE_TRIGGER GAELAN 19
~!NumTimesTalkedTo(0) Global("RefusedGaelan","GLOBAL",1) Global("Linvail","GLOBAL",0)~

REPLACE_STATE_TRIGGER GAELAN 41
~!NumTimesTalkedTo(0) Global("ShadowWork","GLOBAL",0) Global("Linvail","GLOBAL",0)~

APPEND ~GAELAN~

IF ~~ THEN BEGIN NEJ2
  SAY #20855 /* ~Coo!  You'd be the one I be looking for, if I not be mistaken.  <CHARNAME> be yer name, aye?~ [GAELEN02] */
  IF ~~ THEN REPLY #20856 /* ~Well, I'm afraid you are mistaken.~ */ DO ~SetGlobalTimer("ImoenDream1","GLOBAL",ONE_DAY)~ GOTO 1
  IF ~~ THEN REPLY #20857 /* ~Yes, I am <HESHE>.  What is it that you want?~ */ DO ~SetGlobalTimer("ImoenDream1","GLOBAL",ONE_DAY)~ GOTO 2
END

IF WEIGHT #-1 ~Global("Attacked","LOCALS",1)~ THEN BEGIN N20
  SAY ~Ye're more of a fool than I be thinkin', me <LADYLORD>. Learn what happens to fools who double-cross the Shadow Thieves!~
  IF ~~ THEN DO ~AddXPObject(Player1,45000) AddXPObject(Player2,45000) AddXPObject(Player3,45000) AddXPObject(Player4,45000) AddXPObject(Player5,45000) AddXPObject(Player6,45000) SetGlobal("Attacked","LOCALS",2) SetGlobal("VP_Guild_Attacked","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("VPThirdP")~ EXIT
END

END

EXTEND_BOTTOM GAELAN 26 27 33
  IF ~!Global("ShadowWork","GLOBAL",0)~ THEN REPLY ~I'll better kill you now and then deal with your friends than to pay such an outrageous sum.~ GOTO N20
END

EXTEND_BOTTOM GAELAN 29
  IF ~!Global("ShadowWork","GLOBAL",0)~ THEN REPLY ~'The thing to be done lightly' is to kill you now and then deal with your friends. Prepare to die scum.~ GOTO N20
END

EXTEND_BOTTOM GAELAN 30
  IF ~!Global("ShadowWork","GLOBAL",0)~ THEN REPLY ~Oh, you misunderstand the situation. You will help me whether you want it or not. I'll kill you first and then deal with your friends.~ GOTO N20
END

EXTEND_BOTTOM GAELAN 32
  IF ~!Global("ShadowWork","GLOBAL",0)~ THEN REPLY ~I'm tired of this nonsense. I'll better kill you now and then deal with your friends directly.~ GOTO N20
END

REPLACE_STATE_TRIGGER GAELAN 42
~!NumTimesTalkedTo(0) Global("Linvail","GLOBAL",0) Global("ShadowWork","GLOBAL",1) PartyGoldLT(5000) Global("BodiWork","GLOBAL",0)~

EXTEND_BOTTOM GAELAN 42 49 51
  IF ~~ THEN REPLY ~I have changed my mind. I'll better kill you now and then deal with your friends than to pay such an outrageous sum. Prepare to die scum.~ GOTO N20
END

REPLACE_STATE_TRIGGER GAELAN 49
~!NumTimesTalkedTo(0) Global("Linvail","GLOBAL",0) Global("ShadowWork","GLOBAL",1) PartyGoldGT(4999) PartyGoldLT(15000) Global("BodiWork","GLOBAL",0)~

REPLACE_STATE_TRIGGER GAELAN 51
~!NumTimesTalkedTo(0) Global("Linvail","GLOBAL",0) Global("ShadowWork","GLOBAL",1) PartyGoldGT(14999) Global("BodiWork","GLOBAL",0)~

ADD_TRANS_TRIGGER GAELAN 64 ~OR(3) !InParty("Keldorn") Dead("Keldorn") !See("Keldorn")~ DO 0

EXTEND_BOTTOM GAELAN 64
  IF ~InParty("Keldorn") !Dead("Keldorn") See("Keldorn")~ THEN EXTERN ~KELDORJ~ LT2_new4
END

EXTEND_BOTTOM GAELAN 86
  IF ~!Global("ShadowWork","GLOBAL",0)~ THEN REPLY ~I'm not happy with the price and I don't trust anyone of you. I'll better kill you now and then deal with your friends. Prepare to die scum.~ GOTO N20
END

APPEND ~KELDORJ~

IF ~~ THEN BEGIN LT2_new4
  SAY ~This man works for the Shadow Thieves. Were the life of your friend not at stake, I would not tolerate it for a moment.~
  IF ~~ THEN EXIT
END

END