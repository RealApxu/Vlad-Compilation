EXTEND_BOTTOM PIRMUR09 15
 ++ ~I need to sail to Athkatla and back. May I book a passage on your ship?~ GOTO N1
END

CHAIN PIRMUR09 N1
~Of course, <CHARNAME>. It will be my pleasure to deliver you safely to the City of Coin. The cost is 20,000 gp for the round trip, and my ship will be yours.~
END
 IF ~PartyGoldGT(19999)~ THEN REPLY ~Sure, here your gold is then.~ EXTERN PIRMUR09 N2
 IF ~PartyGoldLT(20000)~ THEN REPLY #20988 /* ~Very well, I'll be back with the money.~ */ EXTERN PIRMUR09 N3
 ++ ~Sorry, Captain, I cannot make it at the moment.~ EXTERN PIRMUR09 N3

CHAIN PIRMUR09 N2 // from: 68.0 68.1 73.2
~Thank you <CHARNAME>. The journey shall be swift, for I have a good ship and a fine crew, veterans both, and well seasoned. You may scarcely notice the passing of the voyage... Rig up, crew!~
DO ~TakePartyGold(20000) DestroyGold(20000) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutAt")~
EXIT

CHAIN PIRMUR09 N3
~I'll wait for you here.~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("VP_Sail_Athkatla","GLOBAL",1)~ THEN PIRMUR09 N4
~We have arrived safely. I leave you to your mission, whatever it may be. It has been a pleasure sailing in your company, but now, I take my leave. I'll wait for you in the Sea Bounty for sailing back to Brynnlaw.~
DO ~SetGlobal("VP_Sail_Athkatla","GLOBAL",2) EscapeAreaMove("AR0313",784,313,7)~
EXIT

CHAIN
IF WEIGHT #-2 ~Global("VP_Sail_Athkatla","GLOBAL",2)~ THEN PIRMUR09 N5
~Hello, <CHARNAME>. It's nice to see you again. Would you like to sail back to Brynnlaw?~
END
 ++ ~Sure.~ EXTERN PIRMUR09 N6
 ++ ~Please wait a little bit longer.~ EXTERN PIRMUR09 N7

CHAIN PIRMUR09 N6
~Then please follow me to the docks. My boat is ready to bring us to the ship. We are fully staffed and ready to sail. Never a fear nor worry should cross your thoughts this eve, m'<PRO_LADYLORD>. I have traveled this sea a good many times, and I foresee no troubles.~
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutBr")~
EXIT

CHAIN PIRMUR09 N7
~No worries. I'll wait for you here.~
EXIT

CHAIN
IF WEIGHT #-3 ~Global("VP_Sail_Athkatla","GLOBAL",3)~ THEN PIRMUR09 N8
~We have arrived safely and in good time, I might add. Congratulatory remarks for all the crew, and to our respectfull cruise passengers for their delightful company.~
= ~I would be happy to sail with you <CHARNAME>, should you ever need my ship again.~
DO ~SetGlobal("VP_Sail_Athkatla","GLOBAL",0)~
EXIT