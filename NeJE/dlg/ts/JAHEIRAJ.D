//_________________________________________________________________________//
//                                                                         //
//    Additional dialogue as the group walk past the body of Khalid        //
//_________________________________________________________________________//
//                                                                         //

APPEND ~JAHEIRAJ~

IF ~~ THEN BEGIN TS532
  SAY ~Unnatural creatures, unnatural place. What a dread to be here. Yet there seem to be some awkward balance in Nakanishi and Hashimoto's war. <CHARNAME> your command to come here was one of the many leadership errors.~
  IF ~Global("NPCRemark","GLOBAL",1)~ THEN DO ~SetGlobal("NPCRemark","GLOBAL",2)~ EXIT
END

END