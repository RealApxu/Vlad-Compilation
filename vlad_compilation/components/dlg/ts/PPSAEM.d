///////////////////////////////////////////////
// Arrival to TS Island
///////////////////////////////////////////////
APPEND ~PPSAEM~

IF WEIGHT #7 ~Global("Start_Island","GLOBAL",1) Global("Saemon_Mistake","GLOBAL",0)~ THEN BEGIN TS3
  SAY ~Ahem... dear <SIRMAAM> we had arrived it seems...~
  IF ~~ THEN REPLY ~Where? ~ DO ~SetGlobal("Saemon_Mistake","GLOBAL",1)~ GOTO TS4
END

IF ~~ THEN BEGIN TS4
  SAY ~Uhm, that�s not Brinnlaw, I am positive... Maybe it is some part of Kara-Tur. You have couple locals among your ranks they would know better than I.~
  IF ~~ THEN EXTERN ~YOSHJ~ TS168
END

IF ~~ THEN BEGIN TS5
  SAY ~We�d have to wait for the night to fall, to be able to tell our position from the stars. Meanwhile, the crew will inspect the ship and repair what we can. The journey ahead of us might be long and harsh.~
  IF ~Global("ThiefGroup","GLOBAL",0)~ THEN REPLY ~Then I suggest we go ashore and see if we can find some provisions or any clues to where we are.~ DO ~SetGlobal("Island_War","GLOBAL",1)~ EXIT
  IF ~!InParty("Sime") Global("ThiefGroup","GLOBAL",1)~ THEN REPLY ~Then I suggest we go ashore and see if we can find some provisions or any clues to where we are. What about you, my trusty advisor?~ DO ~SetGlobal("Island_War","GLOBAL",1)~ EXTERN ~PPSIME~ TS0
  IF ~InParty("Sime") Global("ThiefGroup","GLOBAL",1)~ THEN REPLY ~Then I suggest we go ashore and see if we can find some provisions or any clues to where we are. What about you, my trusty advisor?~ DO ~SetGlobal("Island_War","GLOBAL",1)~ EXTERN ~SIMEJ~ 4
  IF ~Global("ThiefGroup","GLOBAL",2)~ THEN REPLY ~Then I suggest we go ashore and see if we can find some provisions or any clues to where we are. What about you, Bodhi?~ DO ~SetGlobal("Island_War","GLOBAL",1)~ EXTERN ~PPBODHI3~ TS23
END

IF WEIGHT #8 ~GlobalLT("Kachiko_Saved","GLOBAL",2) GlobalGT("Island_War","GLOBAL",0)~ THEN BEGIN TS6
  SAY ~We need to cut more timber to repair the ship. Please, come back later.~
  IF ~~ THEN EXIT
END

IF WEIGHT #9 ~Global("VP_OnIsland","GLOBAL",1) Global("End_Island","GLOBAL",2)~ THEN BEGIN TS29
  SAY ~The good news is that the ship is ready to sail. The bad news is that we are far to the south from Athkatla, and I am not sure if we will see Amn�s shores again.~
  = ~I have no knowledge of these waters and I am reluctant to start out without more information... What is your command, my <PRO_LADYLORD>?~
  IF ~~ THEN REPLY ~Well, I�d trade you my good news! I got a map, showing a magical portal, which can teleport our ship back to our lands, and a wardstone, which makes possible to restore our time-space continuum.~ DO ~SetGlobal("End_Island","GLOBAL",3)~ GOTO TS30
END

IF ~~ THEN BEGIN TS30
  SAY ~Magical portal? Time wardstone? Sounds just as good as the Fog of Fate spell... Let me see the sea charts you get...~
  = ~Hmm, looks like it was made with skill. I have a feeling it�s genuine.~
  = ~I suggest that we go to Athkatla and then sail to Brinnlaw in a more traditional way, because the area miles around Brinnlaw is heavily warded against magical travels... Rig up, crew!~
  IF ~Global("ThiefGroup","GLOBAL",0)~ THEN DO ~StartCutSceneMode() StartCutScene("Cut41krS")~ EXIT
  IF ~Global("ThiefGroup","GLOBAL",1) InParty("Sime")~ THEN DO ~StartCutSceneMode() StartCutScene("Cut41dYS")~ EXIT
  IF ~Global("ThiefGroup","GLOBAL",1) !InParty("Sime")~ THEN DO ~StartCutSceneMode() StartCutScene("Cut41dNS")~ EXIT
  IF ~Global("ThiefGroup","GLOBAL",2)~ THEN DO ~StartCutSceneMode() StartCutScene("Cut41cB")~ EXIT
END

END

///////////////////////////////////////////////
// Arrival to Brynnlaw
///////////////////////////////////////////////
REPLACE ~PPSAEM~

IF WEIGHT #5 ~Global("AsylumPlot","GLOBAL",1) OR(2)  Global("ThiefGroup","GLOBAL",0)  Global("ThiefGroup","GLOBAL",1) OR(2)  Global("VP_SailTo_Brynnlaw","GLOBAL",0)  Global("VP_SailTo_Brynnlaw","GLOBAL",3)~ THEN BEGIN 53
  SAY #43683 /* ~We have arrived, and in good time, I might add. Congratulatory remarks for all the crew, and to our visitors for their delightful company.~ [PPSAEM02] */
  IF ~Global("ThiefGroup","GLOBAL",1) !InParty("Sime") OR(2)  See("ppsime")  Global("Sime_Meet","GLOBAL",0)~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",2)~ JOURNAL #20632 FLAGS 128 EXTERN ~PPSIME~ 1
  IF ~Global("ThiefGroup","GLOBAL",1) InParty("Sime") !Dead("Sime")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",2)~ JOURNAL #20632 FLAGS 128 EXTERN ~SIMEJ~ 14
  IF ~Global("ThiefGroup","GLOBAL",0) !Dead("Nalia") InParty("Nalia")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",2)~ EXTERN ~NALIAJ~ 272
  IF ~Global("ThiefGroup","GLOBAL",1) !Dead("Nalia") InParty("Nalia")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",2)~ JOURNAL #20632 FLAGS 128 EXTERN ~NALIAJ~ 272
  IF ~Global("ThiefGroup","GLOBAL",0) !Dead("Jan") InParty("Jan")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",2)~ EXTERN ~JANJ~ 150
  IF ~Global("ThiefGroup","GLOBAL",1) !Dead("Jan") InParty("Jan")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",2)~ JOURNAL #20632 FLAGS 128 EXTERN ~JANJ~ 150
  IF ~Global("ThiefGroup","GLOBAL",0) !Dead("Yoshimo") InParty("Yoshimo")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",2)~ EXTERN ~YOSHJ~ 92
  IF ~Global("ThiefGroup","GLOBAL",1) !Dead("Yoshimo") InParty("Yoshimo")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",2)~ JOURNAL #20632 FLAGS 128 EXTERN ~YOSHJ~ 92
  IF ~Global("ThiefGroup","GLOBAL",0) !Dead("Korgan") InParty("Korgan")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",2)~ EXTERN ~KORGANJ~ 117
  IF ~Global("ThiefGroup","GLOBAL",1) !Dead("Korgan") InParty("Korgan")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",2)~ JOURNAL #20632 FLAGS 128 EXTERN ~KORGANJ~ 117
END

IF ~~ THEN BEGIN 54
  SAY #43776
  IF ~!InParty("Sime")  OR(2) See("ppsime") Global("Sime_Meet","GLOBAL",0)~ THEN EXTERN ~PPSIME~ 2
  IF ~InParty("Sime")~ THEN EXTERN ~SIMEJ~ 15
END

IF ~~ THEN BEGIN 56
  SAY #43927 /* ~Regardless, we have arrived. I leave you to your mission, whatever it may be. It has been a pleasure sailing in your company, but now, I take my leave.~ */
  IF ~Global("ThiefGroup","GLOBAL",1) !InParty("Sime") See("ppsime")~ THEN DO ~SetAreaRestFlag(0) StartCutSceneMode() StartCutScene("Cut41e")~ EXIT
  IF ~Global("ThiefGroup","GLOBAL",1) InParty("Sime")~ THEN DO ~SetAreaRestFlag(0) StartCutSceneMode() StartCutScene("CUT41EYS")~ EXIT
  IF ~Global("ThiefGroup","GLOBAL",1) !InParty("Sime") See("Sime")~ THEN DO ~SetAreaRestFlag(0) StartCutSceneMode() StartCutScene("CUT41EYS")~ EXIT
  IF ~Global("ThiefGroup","GLOBAL",0) InParty("Keldorn")~ THEN DO ~SetAreaRestFlag(0) SetGlobal("VP_SailTo_Brynnlaw","GLOBAL",4) SetGlobal("AsylumPlot","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("CUT41tke")~ EXIT
  IF ~Global("ThiefGroup","GLOBAL",0) !InParty("Keldorn")~ THEN DO ~SetAreaRestFlag(0) SetGlobal("VP_SailTo_Brynnlaw","GLOBAL",4) SetGlobal("AsylumPlot","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("CUT41te")~ EXIT
END

IF ~~ THEN BEGIN 59
  SAY #43939 /* ~You will recognize those that face you now. I do hope they make short work of this encounter; I have no tolerance for violence, really.~ */
  IF ~True()~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",3) CreateCreature("ppvalen",[790.2031],12) CreateCreature("ppparis",[599.2212],12) CreateCreature("ppdel",[542.2326],12) ReallyForceSpell(Myself,DRYAD_TELEPORT)~ UNSOLVED_JOURNAL #15794 EXIT
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",3) CreateCreature("ppvalen",[790.2031],12) CreateCreature("ppparis",[599.2212],12) CreateCreature("ppdel",[542.2326],12) ReallyForceSpell(Myself,DRYAD_TELEPORT)~ UNSOLVED_JOURNAL #15794 EXTERN ~MINSCJ~ 159
  IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",3) CreateCreature("ppvalen",[790.2031],12) CreateCreature("ppparis",[599.2212],12) CreateCreature("ppdel",[542.2326],12) ReallyForceSpell(Myself,DRYAD_TELEPORT)~ UNSOLVED_JOURNAL #15794 EXTERN ~KELDORJ~ 191
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",3) CreateCreature("ppvalen",[790.2031],12) CreateCreature("ppparis",[599.2212],12) CreateCreature("ppdel",[542.2326],12) ReallyForceSpell(Myself,DRYAD_TELEPORT)~ UNSOLVED_JOURNAL #15794 EXTERN ~MAZZYJ~ 168
  IF ~InParty("Anomen") !Dead("Anomen")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",3) CreateCreature("ppvalen",[790.2031],12) CreateCreature("ppparis",[599.2212],12) CreateCreature("ppdel",[542.2326],12) ReallyForceSpell(Myself,DRYAD_TELEPORT)~ UNSOLVED_JOURNAL #15794 EXTERN ~ANOMENJ~ 261
END

END

REPLACE ~KORGANJ~

IF ~~ THEN BEGIN 117
  SAY #55669 /* ~Bah!  Well I have no intention of being pleasant!  I've heaved up enough of me guts on this trip to leave me emptier than a halfling's head!  Never will ye get me aboard a ship again!~ */
  IF ~True()~ THEN EXTERN ~PPSAEM~ 56
  IF ~Global("ThiefGroup","GLOBAL",2)~ THEN EXTERN ~PPBODHI3~ 12
  IF ~Global("ThiefGroup","GLOBAL",1) !InParty("Sime") OR(2)  See("ppsime")  Global("Sime_Meet","GLOBAL",0)~ THEN EXTERN ~PPSIME~ 1
  IF ~Global("ThiefGroup","GLOBAL",1) InParty("Sime") !Dead("Sime")~ THEN EXTERN ~SIMEJ~ 14
  IF ~Global("ThiefGroup","GLOBAL",1) !InParty("Sime") See("Sime")~ THEN EXTERN ~PPSIME~ 15
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN ~NALIAJ~ 272
  IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN ~JANJ~ 150
  IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN ~YOSHJ~ 92
  IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ 453
  IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN ~VICONIJ~ 124
END

IF ~~ THEN BEGIN 118
  SAY #77552 /* ~Hmph.  I would respond to yer comment with me axe if the mere thought of movin' didn't make me stomach roil.  Begone, and count yerself lucky this time!~ */
  IF ~True()~ THEN EXTERN ~PPSAEM~ 56
  IF ~Global("ThiefGroup","GLOBAL",2)~ THEN EXTERN ~PPBODHI3~ 12
  IF ~Global("ThiefGroup","GLOBAL",1) !InParty("Sime") OR(2)  See("ppsime")  Global("Sime_Meet","GLOBAL",0)~ THEN EXTERN ~PPSIME~ 1
  IF ~Global("ThiefGroup","GLOBAL",1) InParty("Sime") !Dead("Sime")~ THEN EXTERN ~SIMEJ~ 14
  IF ~Global("ThiefGroup","GLOBAL",1) !InParty("Sime") See("Sime")~ THEN EXTERN ~PPSIME~ 15
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN ~NALIAJ~ 272
  IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN ~JANJ~ 150
  IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN ~YOSHJ~ 92
END

END

REPLACE ~YOSHJ~

IF ~~ THEN BEGIN 92 // from:
  SAY #55667 /* ~We had to make the best of it. I, myself, managed to win a fair amount of coin from your crew... they seemed to think they were the only ones who knew how to play cards, oddly.~ */
  IF ~True()~ THEN EXTERN ~PPSAEM~ 56
  IF ~Global("ThiefGroup","GLOBAL",2)~ THEN EXTERN ~PPBODHI3~ 12
  IF ~Global("ThiefGroup","GLOBAL",1) !InParty("Sime") OR(2)  See("ppsime")  Global("Sime_Meet","GLOBAL",0)~ THEN EXTERN ~PPSIME~ 1
  IF ~Global("ThiefGroup","GLOBAL",1) InParty("Sime") !Dead("Sime")~ THEN EXTERN ~SIMEJ~ 14
  IF ~Global("ThiefGroup","GLOBAL",1) !InParty("Sime") See("Sime")~ THEN EXTERN ~PPSIME~ 15
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN ~NALIAJ~ 272
  IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN ~JANJ~ 150
END

END

REPLACE ~JANJ~

IF ~~ THEN BEGIN 150
  SAY #55665 /* ~Yes, that was quite the voyage, wasn't it?  All the swaying to and fro, and then there was that storm two days ago and the close brush with the dragon turtle, there.  The food reminded me of the time Ma Jansen went on her trip to Smurtlepuss and Uncle Scratchy did all the cooking, too.  Ahhhh, smell the air!  Feel the invigoration!~ */
  IF ~True()~ THEN EXTERN ~PPSAEM~ 56
  IF ~Global("ThiefGroup","GLOBAL",2)~ THEN EXTERN ~PPBODHI3~ 12
  IF ~Global("ThiefGroup","GLOBAL",1) !InParty("Sime") OR(2)  See("ppsime")  Global("Sime_Meet","GLOBAL",0)~ THEN EXTERN ~PPSIME~ 1
  IF ~Global("ThiefGroup","GLOBAL",1) InParty("Sime") !Dead("Sime")~ THEN EXTERN ~SIMEJ~ 14
  IF ~Global("ThiefGroup","GLOBAL",1) !InParty("Sime") See("Sime")~ THEN EXTERN ~PPSIME~ 15
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN ~NALIAJ~ 272
END

END

REPLACE ~NALIAJ~

IF ~~ THEN BEGIN 272
  SAY #55663 /* ~Delightful company?  This ship is filthy, falling apart, and your crew has been nothing less than boorish.  Ick... I've never felt so in need of a good bath!~ */
  IF ~True()~ THEN EXTERN ~PPSAEM~ 56
  IF ~Global("ThiefGroup","GLOBAL",2)~ THEN EXTERN ~PPBODHI3~ 12
  IF ~Global("ThiefGroup","GLOBAL",1) !InParty("Sime") OR(2)  See("ppsime")  Global("Sime_Meet","GLOBAL",0)~ THEN EXTERN ~PPSIME~ 1
  IF ~Global("ThiefGroup","GLOBAL",1) InParty("Sime") !Dead("Sime")~ THEN EXTERN ~SIMEJ~ 14
  IF ~Global("ThiefGroup","GLOBAL",1) !InParty("Sime") See("Sime")~ THEN EXTERN ~PPSIME~ 15
END

END