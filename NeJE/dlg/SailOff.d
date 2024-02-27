REPLACE ~PPSAEM~
/////////////////////////////////////////////
//                                         		//
//          1. Working for Bodhi			//
//                                         		//
/////////////////////////////////////////////
IF ~~ THEN BEGIN 13
  SAY ~Hold fast, the journey begins.~
  IF ~InParty("Kachiko")~ THEN EXTERN ~KACHIJ~ sailoff1
  IF ~!InParty("Kachiko")~ THEN DO ~StartCutSceneMode()
StartCutScene("Cut41c")~ EXIT  // --->  to Brynnlaw with Bodhi (no Kachiko in party)
END
/////////////////////////////////////////////
//                                         		//
//           2. Working for Aran          //
//                                         		//
/////////////////////////////////////////////
/////////////////////////////////////////////
//                                         		//
//          2.1 Sime is in Party           //
//                                         		//
/////////////////////////////////////////////
IF ~~ THEN BEGIN 48
  SAY ~Protection? I was not aware of any such plans. The captain should be consulted on all such matters.~
  IF ~!InParty("Sime")~ THEN EXTERN ~PPARAN2~ 5 // both cases: Sime has been already and has not been yet in party ---> original sequence of dialogues
  IF ~InParty("Sime")~ THEN EXTERN ~PPARAN2~ TS8 // Sime is in party
END
/////////////////////////////////////////////
//                                         		//
//       2.2 Sime is in not in Party 		//
//                                        			//
/////////////////////////////////////////////
IF ~~ THEN BEGIN 52
  SAY ~Hold fast, the journey begins.~
  IF ~InParty("Kachiko")~ THEN EXTERN ~KACHIJ~ sailoff1
  IF ~!InParty("Kachiko")
Global("Sime_Meet","GLOBAL",0)~ THEN DO ~StartCutSceneMode()
StartCutScene("Cut41d")~ EXIT // ---> Kachiko is not in party ---> original cutscene, new in-game Sime is destroyed and re-created
  IF ~!InParty("Kachiko")
Global("Sime_Meet","GLOBAL",1)~ THEN DO ~StartCutSceneMode()
StartCutScene("Cut41dS")~ EXIT  // ---> Kachiko is not in party ---> go directly to Brynnlaw, Sime is joinable and moved to Brynnlaw
END
END
/////////////////////////////////////////////
//                                         		//
//         	 3. Third Path						//
//                                         		//
/////////////////////////////////////////////
REPLACE_TRIGGER_TEXT PPSAEM
~Global("ThiefGroup","GLOBAL",1)[^!]*Global("AsylumPlot","GLOBAL",2)~
~Global("AsylumPlot","GLOBAL",2)
OR(2)
Global("ThiefGroup","GLOBAL",0)
Global("ThiefGroup","GLOBAL",1)~

APPEND ~PPSAEM~

IF ~Global("ThiefGroup","GLOBAL",0)
Global("AsylumPlot","GLOBAL",0)
Global("VP_SailTo_Brynnlaw","GLOBAL",2)~ THEN BEGIN KR0
	SAY ~This is a grand day to see you. You must be <CHARNAME>, the one that Aran Linvail told me about. He said that you would be a very capable help to his course.~
=
~But I don't see Aran here... In fact, I heard very bad rumours that Aran has ultimately passed away and not without your help.~
  IF ~~ THEN REPLY ~Yes, I've killed Aran Livnail and destroyed his guild, and you must be Saemon Havarian, the infamous captain mentioned in this letter. I need your ship to sail to Brynnlaw.~ DO ~SetGlobal("VP_SailTo_Brynnlaw","GLOBAL",3)
AddXPObject(Player1,50000)
AddXPObject(Player2,50000)
AddXPObject(Player3,50000)
AddXPObject(Player4,50000)
AddXPObject(Player5,50000)
AddXPObject(Player6,50000)
TakePartyItem("aranlett")~ GOTO KR1
  IF ~~ THEN REPLY ~Yes, I've killed Aran Livnail and destroyed his guild. Here is the letter I've got from his corpse, but I presume you have been well aware of my soon arrival. I need your ship to sail to Brynnlaw.~ DO ~SetGlobal("VP_SailTo_Brynnlaw","GLOBAL",3)
AddXPObject(Player1,50000)
AddXPObject(Player2,50000)
AddXPObject(Player3,50000)
AddXPObject(Player4,50000)
AddXPObject(Player5,50000)
AddXPObject(Player6,50000)
TakePartyItem("aranlett")~ GOTO KR1
  IF ~~ THEN REPLY ~(*Pretending to be surpsrised*) No, I haven't heard of his death, and if it's true, I am not responsible for that. Aran mentioned that you might be waiting for me in this tavern. I need your ship to sail to Brynnlaw.~ DO ~SetGlobal("VP_SailTo_Brynnlaw","GLOBAL",3)
AddXPObject(Player1,50000)
AddXPObject(Player2,50000)
AddXPObject(Player3,50000)
AddXPObject(Player4,50000)
AddXPObject(Player5,50000)
AddXPObject(Player6,50000)
TakePartyItem("aranlett")~ GOTO KR1
END

IF ~~ THEN BEGIN KR1
  SAY ~Well, frankly speaking, I don't care about Aran Linvail and his guild. If you succeeded to assassinate Aran and destroy his guild in a single blow, I would like to have such a powerful ally on board.~
=
~However, I had a certain deal with Aran which due to his present condition and circumstances behind that he could not respect.~
=
~So, the ship will be yours to the island provided that you now purchase the passage for mere 10,000 gp, as well as the silence of the crew.~
=
~Though a silence more symbolic than anything, as you may well find my men a boisterous lot at all hours. I encourage general revelry.~
	  IF ~PartyGoldGT(9999)~ THEN REPLY ~The personal habits of the crew are your business, Captain. Just as long as they perform as they should and deliver me and my group safely and in good time. Here your gold is then.~ GOTO KR2
	  IF ~PartyGoldGT(9999)~ THEN REPLY ~Sure, here your gold is then.~ GOTO KR2
	  IF ~PartyGoldLT(10000)~ THEN REPLY #20968 GOTO KR3
	  IF ~PartyGoldLT(10000)
AreaCheck("AR0500")~ THEN REPLY #20988 GOTO KR4
	  IF ~PartyGoldLT(10000)
AreaCheck("AR0313")~ THEN REPLY #20988 GOTO KR6
END

IF ~~ THEN BEGIN KR2
  SAY ~Thank you <CHARNAME>. Then we are fully staffed and ready to sail. Never a fear nor worry should cross your thoughts this eve, m'<PRO_LADYLORD>. I have traveled this sea a good many times, and I foresee no troubles.~
=
~Although, I am sure, nothing untoward will happen during our crossing, best that we get underway as soon as possible. Please follow me to the docks where my ship is waiting for us.~
	  IF ~InParty("Kachiko")~ THEN EXTERN ~KACHIJ~ sailoff1
	  IF ~!InParty("Kachiko")~ THEN DO ~TakePartyGold(10000)
DestroyGold(10000)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPMov03B")~ EXIT // --> to Brynnlaw (no Kachiko in party) => VPMov03B => VPMov03D => CUT41td
END

IF ~~ THEN BEGIN KR3
  SAY ~I am sure you have spent as much in the past and will again. Surely there be work in the city for you. Or perhaps some of your expensive goods to sell?~
	  IF ~AreaCheck("AR0500")~ THEN REPLY #20988 GOTO KR4
	  IF ~AreaCheck("AR0313")~ THEN REPLY #20988 GOTO KR6
END

IF ~~ THEN BEGIN KR4
  SAY ~I'll wait for you here.~
	  IF ~~ THEN EXIT
END

IF ~Global("ThiefGroup","GLOBAL",0)
Global("AsylumPlot","GLOBAL",0)
Global("VP_SailTo_Brynnlaw","GLOBAL",3)
Global("Start_Island","GLOBAL",0)
Global("VP_Pay_to_Saemon","GLOBAL",0)~ THEN BEGIN KR5
	SAY ~Hey, <CHARNAME>.  It's nice to see you again. Have you gathered the required fee for me?~
	  IF ~PartyGoldLT(10000)
AreaCheck("AR0500")~ THEN REPLY #21031 GOTO KR4
	  IF ~PartyGoldLT(10000)
AreaCheck("AR0313")~ THEN REPLY #21031 GOTO KR6
	  IF ~PartyGoldGT(9999)~ THEN REPLY #21033 GOTO KR2
END

IF ~Global("ThiefGroup","GLOBAL",0)
Global("AsylumPlot","GLOBAL",0)
Global("VP_SailTo_Brynnlaw","GLOBAL",3)
Global("Start_Island","GLOBAL",0)
Global("VP_Pay_to_Saemon","GLOBAL",1)~ THEN BEGIN KR5
	SAY ~Hey, <CHARNAME>.  It's nice to see you again. Have you gathered the required fee for me?~
	  IF ~PartyGoldLT(15000)
AreaCheck("AR0500")~ THEN REPLY #21031 GOTO KR4
	  IF ~PartyGoldLT(15000)
AreaCheck("AR0313")~ THEN REPLY #21031 GOTO KR6
	  IF ~PartyGoldGT(14999)~ THEN REPLY #21033 GOTO KR21
END

IF ~~ THEN BEGIN KR21
  SAY ~Thank you. Well, then everything is settled. Here is the scroll.~
  IF ~~ THEN REPLY ~Cast your spell, Saemon, and if it fails I will see good old Harkle turned into a frog himself. But if it works, my friends prepare to storm Spellhold this afternoon!.~ EXTERN ~KACHIJ~ sailoff2
  IF ~~ THEN REPLY ~I think you're bluffing. Imoen is too dear to me to trust this suspicious spell. We are sailing to Spellhold.~ EXTERN ~YOSHJ~ TS167
END

IF ~~ THEN BEGIN KR6
  SAY ~I'll wait for you here. I enjoy here my drinks and chatting with friends.~
  IF ~~ THEN EXIT
END

//First reply to Kachiko from State 13 and KR2
IF ~~ THEN BEGIN TS7
  SAY ~Half a year, may be a year... It is a long and dangerous route. Not many ships go that far away, and of those that do few return back.~
  IF ~~ THEN REPLY ~Yoshimo, Kachiko, I am sorry, but I have to haste to Imoen's rescue, her life is at stake! May be after we find Imoen I will go to Kara-Tur with you...~ EXTERN ~YOSHJ~ TS166
END

/////////////////////////////////////////////
//					Reply to Yoshimo			//
/////////////////////////////////////////////
IF ~~ THEN BEGIN TS8
  SAY ~Ahem, if I may interrupt... I think I have a solution for your problem. Recently I run into a... mmh... an arch-mage of great renown, Harkle Harpel. For a minor service, he gave me this scroll. It's called the Harpel's Fog of Fate. If I cast it, my "Gallante" will carry you to the place you destined to be in mere hours, be it Kara-Tur or Spellhold.~
  IF ~True()~ THEN GOTO TS81
  IF ~InParty("Valygar")~ THEN EXTERN ~VALYGARJ~ TS122
  IF ~InParty("Anomen")~ THEN EXTERN ~ANOMENJ~ TS310
  IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ TS531
  IF ~InParty("Keldorn")~ THEN EXTERN ~KELDORJ~ TS252
END

IF ~~ THEN BEGIN TS81
  SAY ~Of course, I would not part with this scroll for less then 5,000 gold.~
  IF ~PartyGoldLT(5000)
Global("ThiefGroup","GLOBAL",0)~ THEN REPLY ~Saemon, it sounds good, but I have not got enough coin.~ DO ~SetGlobal("VP_Pay_to_Saemon","GLOBAL",1)~  GOTO KR3
  IF ~PartyGoldLT(5000)
Global("ThiefGroup","GLOBAL",2)~ THEN REPLY ~Saemon, it sounds good, but I have not got enough coin.~ EXTERN ~PPBODHI3~ TS20 // ---> ... TS2 ... ---> ... TS5
  IF ~PartyGoldLT(5000)
Global("ThiefGroup","GLOBAL",1)
InParty("Sime")~ THEN REPLY ~Saemon, it sounds good, but I have not got enough coin.~ EXTERN ~SIMEJ~ sailoff2
  IF ~PartyGoldLT(5000)
Global("ThiefGroup","GLOBAL",1)
!InParty("Sime")~ THEN REPLY ~Saemon, it sounds good, but I have not got enough coin.~ EXTERN ~PPARAN2~ TS10
  IF ~~ THEN REPLY ~We will pay you, Saemon... if we are to survive this spell.~ GOTO TS0
  IF ~PartyGoldGT(4999)
Global("ThiefGroup","GLOBAL",0)~ THEN REPLY ~Well, what's life if not one big gamble! Take this money and cast your spell, Saemon, and if it fails I will see good old Harkle turned into a frog himself. But if it works, my friends prepare to storm Spellhold this afternoon!~ EXTERN ~KACHIJ~ sailoff2
  IF ~~ THEN REPLY ~On the second thought, this spell seems a way suspicious to trust it. We are sailing to Spellhold.~ EXTERN ~YOSHJ~ TS167
END

IF ~~ THEN BEGIN TS0
  SAY ~That is why I would like to get my payment before I cast the spell.~
  IF ~Global("ThiefGroup","GLOBAL",0)~ THEN REPLY ~Watch you tongue, Saemon. We have already paid you enough!~ GOTO KR12
  IF ~Global("ThiefGroup","GLOBAL",2)~ THEN EXTERN ~PPBODHI3~ TS21
  IF ~Global("ThiefGroup","GLOBAL",1)
InParty("Sime")~ THEN EXTERN ~SIMEJ~ sailoff3
  IF ~Global("ThiefGroup","GLOBAL",1)
!InParty("Sime")~ THEN EXTERN ~PPARAN2~ TS11
END

IF ~~ THEN BEGIN KR12
  SAY ~ You have paid me only for one way to Brynnlaw... Sorry to say, but business is business.~
  IF ~PartyGoldLT(5000)
Global("ThiefGroup","GLOBAL",0)~ THEN REPLY ~But I have not got enough coin.~ DO ~SetGlobal("VP_Pay_to_Saemon","GLOBAL",1)~ GOTO KR3
  IF ~PartyGoldGT(4999)
Global("ThiefGroup","GLOBAL",0)~ THEN REPLY ~Okay, take this money, and try to do your best.~ EXTERN ~KACHIJ~ sailoff2
  IF ~Global("ThiefGroup","GLOBAL",0)~ THEN REPLY ~I think you're bluffing. Imoen is too dear to me to trust this suspicious spell. We are sailing to Spellhold.~ EXTERN ~YOSHJ~ TS167
  IF ~Global("ThiefGroup","GLOBAL",2)~ THEN EXTERN ~PPBODHI3~ TS22
  IF ~Global("ThiefGroup","GLOBAL",1)
InParty("Sime")~ THEN EXTERN ~SIMEJ~ sailoff4
  IF ~Global("ThiefGroup","GLOBAL",1)
!InParty("Sime")~ THEN EXTERN ~PPARAN2~ TS12
END

IF ~~ THEN BEGIN TS2
  SAY ~With pleasure. Well, then everything is settled. Here is the scroll.~
  IF ~Global("ThiefGroup","GLOBAL",2)~ THEN DO ~SetGlobal("Start_Island","GLOBAL",1)
StartCutSceneMode()
StartCutScene("Cut41isb")~ EXIT // --->  to the Island with Bodhi
  IF ~Global("ThiefGroup","GLOBAL",0)~ THEN DO ~TakePartyGold(15000)
DestroyGold(15000)
SetGlobal("Start_Island","GLOBAL",1)
StartCutSceneMode()
StartCutScene("VPMov03I")~ EXIT // ---> to the Island => VPMov03I => VPMov03J => CUT41kri
  IF ~Global("ThiefGroup","GLOBAL",1)
InParty("Sime")~ THEN DO ~SetGlobal("Start_Island","GLOBAL",1)
StartCutSceneMode()
StartCutScene("Cut41is")~ EXIT // --->  to the Island with Sime being in-party
  IF ~Global("ThiefGroup","GLOBAL",1)
!InParty("Sime")
Global("Sime_Meet","GLOBAL",0)~ THEN DO ~SetGlobal("Start_Island","GLOBAL",1)
StartCutSceneMode()
StartCutScene("Cut41isa")~ EXIT // ---> to the Island; in-game Sime is destroyed and re-created
  IF ~Global("ThiefGroup","GLOBAL",1)
!InParty("Sime")
Global("Sime_Meet","GLOBAL",1)~ THEN DO ~SetGlobal("Start_Island","GLOBAL",1)
StartCutSceneMode()
StartCutScene("Cut41isS")~ EXIT // ---> to the Island; Sime is joinable and moved to the Island
END

IF ~~ THEN BEGIN TS9
  SAY #9749
  IF ~Global("ThiefGroup","GLOBAL",2)~ THEN DO ~StartCutSceneMode()
StartCutScene("Cut41cc")~ EXIT // --->  to Brynnlaw with Bodhi
  IF ~Global("ThiefGroup","GLOBAL",0)~ THEN DO ~TakePartyGold(10000)
DestroyGold(10000)
StartCutSceneMode()
StartCutScene("VPMov03K")~ EXIT // --->  to Brynnlaw (the Island is by-passed) => VPMov03K => VPMov03L => CUT41krb
  IF ~Global("ThiefGroup","GLOBAL",1)
InParty("Sime")~ THEN DO ~StartCutSceneMode()
StartCutScene("Cut41da")~ EXIT // --->  to Brynnlaw with Sime being in-party
  IF ~Global("ThiefGroup","GLOBAL",1)
!InParty("Sime")
Global("Sime_Meet","GLOBAL",0)~ THEN DO ~StartCutSceneMode()
StartCutScene("Cut41dd")~ EXIT // --->  to Brynnlaw without Yoshimo/Kachiko; in-game Sime is destroyed and re-created
  IF ~Global("ThiefGroup","GLOBAL",1)
!InParty("Sime")
Global("Sime_Meet","GLOBAL",1)~ THEN DO ~StartCutSceneMode()
StartCutScene("Cut41dSA")~ EXIT  // ---> to Brynnlaw without Yoshimo/Kachiko; Sime is joinable and moved to Brynnlaw
END

//First reply to Aran
IF ~~ THEN BEGIN TS17
  SAY ~Of course.~
  IF ~~ THEN EXTERN ~SIMEJ~ sailoff1
END

IF ~~ THEN BEGIN TS18
  SAY ~As clear as clear could be, m'lady, though I am not sure I approve of your tone. I assure you, nothing untoward will happen during our crossing.~
  IF ~~ THEN EXTERN ~PPARAN2~ TS13
END

IF ~~ THEN BEGIN TS19
  SAY ~Then we are fully staffed and ready to sail. Best that we get underway as soon as possible. Disembark, m'lord, and we shall away.~
  IF ~InParty("Kachiko")~ THEN EXTERN ~KACHIJ~ sailoff1
  IF ~!InParty("Kachiko")~ THEN DO ~StartCutSceneMode()
StartCutScene("Cut41da")~ EXIT // --->  to Brynnlaw with Sime being in-party
END
END

APPEND ~YOSHJ~

IF ~~ THEN BEGIN TS166
  SAY ~No! This is impossible! Eh, no, I'd rather part our ways right now.~
  IF ~~ THEN EXTERN ~PPSAEM~ TS8
END

IF ~~ THEN BEGIN TS167
  SAY ~I understand. I wish you good luck in your dealings with Irenicus and rescuing Imoen. Farewell and do not think ill of us.~
  IF ~~ THEN DO ~SetGlobal("Start_Island","GLOBAL",2)~ EXTERN ~KACHIJ~ sailoff3
END
END

APPEND ~PPBODHI3~

IF ~~ THEN BEGIN TS20
  SAY ~My guild will pay you, Saemon... if we are to survive this spell...~
  IF ~~ THEN EXTERN ~PPSAEM~ TS0
END

IF ~~ THEN BEGIN TS21
  SAY ~Watch you tongue, Saemon. We have already paid you enough!~
  IF ~~ THEN EXTERN ~PPSAEM~ KR12
END

IF ~~ THEN BEGIN TS22
  SAY ~Okay, take this money, and try to do your best.~
  IF ~~ THEN EXTERN ~KACHIJ~ sailoff2
END
END

APPEND ~PPARAN2~

IF ~~ THEN BEGIN TS8
  SAY ~Sime has been travelling with <CHARNAME> for some time. She will attempt to improve the overall safety of the voyage.~
  IF ~~ THEN GOTO TS9
END

IF ~~ THEN BEGIN TS9
  SAY ~She will be staying very close to you, Saemon Havarian. For your safety, of course.~
  IF ~~ THEN EXTERN ~PPSAEM~ TS17
END

IF ~~ THEN BEGIN TS10
  SAY ~My guild will pay you, Saemon... if we are to survive this spell...~
  IF ~~ THEN EXTERN ~PPSAEM~ TS0
END

IF ~~ THEN BEGIN TS11
  SAY ~Watch you tongue, Saemon. We have already paid you enough!~
  IF ~~ THEN EXTERN ~PPSAEM~ KR12
END

IF ~~ THEN BEGIN TS12
  SAY ~Okay, take this money, and try to do your best.~
  IF ~~ THEN EXTERN ~KACHIJ~ sailoff2
END

IF ~~ THEN BEGIN TS13
  SAY ~Sime shall also advise you, <CHARNAME>. She is acquainted with a few of the inhabitants of the island.~
  IF ~~ THEN EXTERN ~PPSAEM~ TS19
END
END

APPEND ~KELDORJ~

IF ~~ THEN BEGIN TS252
  SAY ~<CHARNAME>, Harkle Harpel is no arch-mage, he belongs to a family of lunatics! For what I know of Harpels we might be turned into frogs or some such if you allow Saemon to cast the spell! Be careful!~
  IF ~~ THEN REPLY ~Well, what's life if not one big gamble! Cast your spell, Saemon, and if it fails I will see good old Harkle turned into a frog himself. But if it works, my friends prepare to storm Spellhold this afternoon!~ DO ~SetGlobal("VP_Pay_to_Saemon","GLOBAL",1)~ EXTERN ~PPSAEM~ TS81
  IF ~~ THEN REPLY ~That's exactly what I heard about Harpells. Imoen is too dear to me to trust that this spell is an exception from their customary failures. We are sailing to Spellhold.~ EXTERN ~YOSHJ~ TS167
END
END

APPEND ~JAHEIRAJ~

IF ~~ THEN BEGIN TS531
  SAY ~<CHARNAME>, Harkle Harpel is no arch-mage, he belongs to a family of lunatics! For what I know of Harpels we might be turned into frogs or some such if you allow Saemon to cast the spell! Be careful!~
  IF ~~ THEN REPLY ~Well, what's life if not one big gamble! Cast your spell, Saemon, and if it fails I will see good old Harkle turned into a frog himself. But if it works, my friends prepare to storm Spellhold this afternoon!~ DO ~SetGlobal("VP_Pay_to_Saemon","GLOBAL",1)~ EXTERN ~PPSAEM~ TS81
  IF ~~ THEN REPLY ~That's exactly what I heard about Harpells. Imoen is too dear to me to trust that this spell is an exception from their customary failures. We are sailing to Spellhold.~ EXTERN ~YOSHJ~ TS167
END
END

APPEND ~ANOMENJ~

IF ~~ THEN BEGIN TS310
  SAY ~<CHARNAME>, Harkle Harpel is no arch-mage, he belongs to a family of lunatics! For what I know of Harpels we might be turned into frogs or some such if you allow Saemon to cast the spell! Be careful!~
  IF ~~ THEN REPLY ~Well, what's life if not one big gamble! Cast your spell, Saemon, and if it fails I will see good old Harkle turned into a frog himself. But if it works, my friends prepare to storm Spellhold this afternoon!~ DO ~SetGlobal("VP_Pay_to_Saemon","GLOBAL",1)~ EXTERN ~PPSAEM~ TS81
  IF ~~ THEN REPLY ~That's exactly what I heard about Harpells. Imoen is too dear to me to trust that this spell is an exception from their customary failures. We are sailing to Spellhold.~ EXTERN ~YOSHJ~ TS167
END
END

APPEND ~VALYGARJ~

IF ~~ THEN BEGIN TS122
  SAY ~<CHARNAME>, Harkle Harpel is no arch-mage, he belongs to a family of lunatics! For what I know of Harpels we might be turned into frogs or some such if you allow Saemon to cast the spell! Be careful!~
  IF ~~ THEN REPLY ~Well, what's life if not one big gamble! Cast your spell, Saemon, and if it fails I will see good old Harkle turned into a frog himself. But if it works, my friends prepare to storm Spellhold this afternoon!~ DO ~SetGlobal("VP_Pay_to_Saemon","GLOBAL",1)~ EXTERN ~PPSAEM~ TS81
  IF ~~ THEN REPLY ~That's exactly what I heard about Harpells. Imoen is too dear to me to trust that this spell is an exception from their customary failures. We are sailing to Spellhold.~ EXTERN ~YOSHJ~ TS167
END
END