REPLACE_STATE_TRIGGER WSMITH01 0
~NumTimesTalkedTo(0)
!AreaCheck("AR1603")~

ADD_TRANS_ACTION WSMITH01
BEGIN 0 END
BEGIN 0 1 2 3 END
~SetGlobal("VP_Know_Cromwell","GLOBAL",1)~

REPLACE_STATE_TRIGGER WSMITH01 58
~Global("ForgeItem","GLOBAL",0)
!AreaCheck("AR1603")~

CHAIN
IF ~AreaCheck("AR1603")~ THEN WSMITH01 N1 // from:
~A good <DAYNIGHTALL> to ye, me friend. Good to see ye here in Brynnlaw.~
END
 IF ~!Global("VP_Know_Cromwell","GLOBAL",1)~ THEN REPLY #59658 /* ~Who are you?~ */ EXTERN WSMITH01 1
 ++ #59659 /* ~What do you have for sale, here?~ */ EXTERN WSMITH01 2
 IF ~Global("VP_Know_Cromwell","GLOBAL",1)~ THEN REPLY ~Cromwell? What are you doing here?~ EXTERN WSMITH01 N2
 ++ #59661 /* ~No thanks. I'll be on my way.~ */ EXTERN WSMITH01 4


CHAIN WSMITH01 N2
~Visiting me human friend and apprentice. Be there something that ye need?~
END
 IF ~Global("TalkedToCromwell","LOCALS",0)~ THEN REPLY #59803 /* ~What sorts of things do you forge here?~ */ EXTERN WSMITH01 8
 IF ~Global("TalkedToCromwell","LOCALS",0)~ THEN REPLY #59799 /* ~What do you have for sale, here?~ */ EXTERN WSMITH01 2
 IF ~Global("TalkedToCromwell","LOCALS",1)~ THEN REPLY #59800 /* ~What sorts of things would you need in order to make something?~ */ EXTERN WSMITH01 11
 IF ~Global("TalkedToCromwell","LOCALS",1)~ THEN REPLY #59801 /* ~Do I have anything you could forge into an item?~ */ EXTERN WSMITH01 13
 ++ #59802 /* ~No, I don't think so.~ */ EXTERN WSMITH01 12