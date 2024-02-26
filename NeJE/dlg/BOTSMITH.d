EXTEND_BOTTOM BOTSMITH 2
  IF ~~ THEN REPLY ~May I rest here?~ GOTO R1
END

EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("sw2h15")~ THEN GOTO N1
  IF ~PartyHasItem("BLACKNIG")~ THEN GOTO N5
  IF ~PartyHasItem("UMHULK")~ THEN GOTO N8
END

APPEND ~BOTSMITH~

IF ~~ THEN BEGIN N1
  SAY ~Ooo!  Such a rare and shining sword...~ 
  IF ~!PartyHasItem("JHOSWD2")
!PartyHasItem("SW2H08")~ THEN GOTO N2
  IF ~PartyHasItem("JHOSWD2")
!Global("StartIWD","GLOBAL",0)~ THEN GOTO N3
  IF ~PartyHasItem("SW2H08")
Global("StartIWD","GLOBAL",0)~ THEN GOTO N4
END

IF ~~ THEN BEGIN N2
  SAY ~Has recipe for polishing your Vorpal even more. I'll give you one sword for two. Needing Restored Blade of Aihonen or Soul Reaver, though, oh yes. No idea where to find one, though.~
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN N3
  SAY ~Has recipe for polishing your Vorpal even more. Is combined with Restored Blade of Aihonen. That and 50,000 gp and I will do it for you. Want you that?~
  IF ~PartyGoldLT(50000)~ THEN REPLY #66594 /* ~I don't have that much money.~ */ GOTO 10
  IF ~PartyGoldGT(49999)~ THEN REPLY #66595 /* ~Sure... put them together.~ */ DO ~SetGlobal("ItemMaker","GLOBAL",99)
TakePartyGold(50000)
TakePartyItemNum("sw2h15",1)
TakePartyItemNum("JHOSWD2",1)
DestroyItem("sw2h15")
DestroyItem("JHOSWD2")
DestroyGold(50000)~ GOTO 11
  IF ~~ THEN REPLY #66597 /* ~No, not really.  Is there anything else?~ */ GOTO 9
END

IF ~~ THEN BEGIN N4
  SAY ~Has recipe for polishing your Vorpal even more. Is combined with Soul Reaver. That and 50,000 gp and I will do it for you. Want you that?~
  IF ~PartyGoldLT(50000)~ THEN REPLY #66594 /* ~I don't have that much money.~ */ GOTO 10
  IF ~PartyGoldGT(49999)~ THEN REPLY #66595 /* ~Sure... put them together.~ */ DO ~SetGlobal("ItemMaker","GLOBAL",99)
TakePartyGold(50000)
TakePartyItemNum("sw2h15",1)
TakePartyItemNum("SW2H08",1)
DestroyItem("sw2h15")
DestroyItem("SW2H08")
DestroyGold(50000)~ GOTO 11
  IF ~~ THEN REPLY #66597 /* ~No, not really.  Is there anything else?~ */ GOTO 9
END

IF ~~ THEN BEGIN N5
  SAY ~Ooo!  A shaddy oriental sword...~ 
  IF ~!PartyHasItem("WUHALTAI")
!PartyHasItem("WUJEN")~ THEN GOTO N6
  IF ~!PartyHasItem("WUJEN")
PartyHasItem("WUHALTAI")~ THEN GOTO N6
  IF ~PartyHasItem("WUJEN")
!PartyHasItem("WUHALTAI")~ THEN GOTO N6
  IF ~PartyHasItem("WUJEN")
PartyHasItem("WUHALTAI")~ THEN GOTO N7
END

IF ~~ THEN BEGIN N6
  SAY ~Has recipe for polishing your Nighty Blade even more. I'll give you one katana for three. Needing the Nighty Blade and two best friends of any samurai: Wujen and Wuhaltai. No idea where to find one, though.~
  IF ~~ THEN GOTO N12
END

IF ~~ THEN BEGIN N7
  SAY ~Has recipe for polishing your Nighty Blade even more. Is combined with two friends: Wujen and Wuhaltai. That and 40,000 gp and I will do it for you. Want you that?~
  IF ~PartyGoldLT(40000)~ THEN REPLY #66594 /* ~I don't have that much money.~ */ GOTO 10
  IF ~PartyGoldGT(39999)~ THEN REPLY #66595 /* ~Sure... put them together.~ */ DO ~SetGlobal("ItemMaker","GLOBAL",98)
TakePartyGold(40000)
TakePartyItemNum("BLACKNIG",1)
TakePartyItemNum("WUJEN",1)
TakePartyItemNum("WUHALTAI",1)
DestroyItem("BLACKNIG")
DestroyItem("WUJEN")
DestroyItem("WUHALTAI")
DestroyGold(40000)~ GOTO 11
  IF ~~ THEN REPLY #66597 /* ~No, not really.  Is there anything else?~ */ GOTO N12
END

IF ~~ THEN BEGIN N8
  SAY ~Ooo!  A green plate made from a diggy monster...~ 
  IF ~!PartyHasItem("BLOOD")
!PartyHasItem("PLATBLK")~ THEN GOTO N9
  IF ~!PartyHasItem("BLOOD")
PartyHasItem("PLATBLK")~ THEN GOTO N9
  IF ~PartyHasItem("BLOOD")
!PartyHasItem("PLATBLK")~ THEN GOTO N9
  IF ~PartyHasItem("BLOOD")
PartyHasItem("PLATBLK")~ THEN GOTO N10
END

IF ~~ THEN BEGIN N9
  SAY ~Has recipe for making it even better. I'll give you a new plate for three. Needing that green plate of yours, a plate of a demon warrior from the North and a bloody plate. No idea where to find one, though.~
  IF ~~ THEN GOTO N11
END

IF ~~ THEN BEGIN N10
  SAY ~Has recipe for making your Umber Hulk Plate much better. Is combined with Kresselack‘s Plate Mail and Bathed-In-Blood. That and 30,000 gp and I will do it for you. Want you that?~
  IF ~PartyGoldLT(30000)~ THEN REPLY #66594 /* ~I don't have that much money.~ */ GOTO 10
  IF ~PartyGoldGT(29999)~ THEN REPLY #66595 /* ~Sure... put them together.~ */ DO ~SetGlobal("ItemMaker","GLOBAL",97)
TakePartyGold(30000)
TakePartyItemNum("UMHULK",1)
TakePartyItemNum("BLOOD",1)
TakePartyItemNum("PLATBLK",1)
DestroyItem("UMHULK")
DestroyItem("BLOOD")
DestroyItem("PLATBLK")
DestroyGold(40000)~ GOTO 11
  IF ~~ THEN REPLY #66597 /* ~No, not really.  Is there anything else?~ */ GOTO N11
END

IF ~~ THEN BEGIN N11
  SAY #66599 /* ~I keep lookings.  You has lots of stuff, you do.  Pack rat, you is.  You going to Hell.~ [BOTSM22] */
  IF ~True()~ THEN GOTO 5
  IF ~PartyHasItem("quiver02")~ THEN GOTO 145
  IF ~OR(2)
PartyHasItem("ring43")
PartyHasItem("compon14")~ THEN GOTO 139
  IF ~PartyHasItem("helm29")~ THEN GOTO 135
  IF ~OR(3)
PartyHasItem("helm31")
PartyHasItem("compon12")
PartyHasItem("compon13")~ THEN GOTO 131
  IF ~OR(2)
PartyHasItem("compon16")
PartyHasItem("compon11")~ THEN GOTO 127
  IF ~PartyHasItem("brac24")~ THEN GOTO 123
  IF ~PartyHasItem("brac22")~ THEN GOTO 120
  IF ~OR(2)
PartyHasItem("compon17")
PartyHasItem("helm27")~ THEN GOTO 116
  IF ~OR(3)
PartyHasItem("tome01")
PartyHasItem("tome02")
PartyHasItem("tome03")~ THEN GOTO 110
  IF ~PartyHasItem("clck02")~ THEN GOTO 106
  IF ~OR(2)
PartyHasItem("compon18")
PartyHasItem("compon19")~ THEN GOTO 101
  IF ~PartyHasItem("chan16")~ THEN GOTO 97
  IF ~PartyHasItem("quiver05")~ THEN GOTO 93
  IF ~PartyHasItem("slng08")~ THEN GOTO 90
  IF ~PartyHasItem("xbow15")
PartyHasItem("compon10")~ THEN GOTO 87
  IF ~PartyHasItem("quiver01")~ THEN GOTO 83
  IF ~PartyHasItem("compon10")~ THEN GOTO 77
  IF ~PartyHasItem("hamm10")~ THEN GOTO 73
  IF ~OR(2)
PartyHasItem("blun14")
PartyHasItem("blun30c")~ THEN GOTO 68
  IF ~PartyHasItem("blun28")~ THEN GOTO 64
  IF ~PartyHasItem("blun26")~ THEN GOTO 60
  IF ~PartyHasItem("sw1h70")~ THEN GOTO 56
  IF ~PartyHasItem("sw1h68")~ THEN GOTO 52
  IF ~PartyHasItem("halb10")~ THEN GOTO 48
  IF ~PartyHasItem("staf21")~ THEN GOTO 44
  IF ~PartyHasItem("ax1h14")~ THEN GOTO 40
  IF ~OR(2)
PartyHasItem("dagg23")
PartyHasItem("sper11")~ THEN GOTO 36
  IF ~PartyHasItem("dagg21")~ THEN GOTO 32
  IF ~PartyHasItem("sw2h10")~ THEN GOTO 28
  IF ~PartyHasItem("sw2h17")~ THEN GOTO 24
  IF ~PartyHasItem("sw1h64")~ THEN GOTO 20
  IF ~PartyHasItem("sw1h62")~ THEN GOTO 16
  IF ~PartyHasItem("sw1h60")~ THEN GOTO 12
  IF ~PartyHasItem("sw2h15")~ THEN GOTO N1
  IF ~PartyHasItem("BLACKNIG")~ THEN GOTO N5
END

IF ~~ THEN BEGIN N12
  SAY #66599 /* ~I keep lookings.  You has lots of stuff, you do.  Pack rat, you is.  You going to Hell.~ [BOTSM22] */
  IF ~True()~ THEN GOTO 5
  IF ~PartyHasItem("quiver02")~ THEN GOTO 145
  IF ~OR(2)
PartyHasItem("ring43")
PartyHasItem("compon14")~ THEN GOTO 139
  IF ~PartyHasItem("helm29")~ THEN GOTO 135
  IF ~OR(3)
PartyHasItem("helm31")
PartyHasItem("compon12")
PartyHasItem("compon13")~ THEN GOTO 131
  IF ~OR(2)
PartyHasItem("compon16")
PartyHasItem("compon11")~ THEN GOTO 127
  IF ~PartyHasItem("brac24")~ THEN GOTO 123
  IF ~PartyHasItem("brac22")~ THEN GOTO 120
  IF ~OR(2)
PartyHasItem("compon17")
PartyHasItem("helm27")~ THEN GOTO 116
  IF ~OR(3)
PartyHasItem("tome01")
PartyHasItem("tome02")
PartyHasItem("tome03")~ THEN GOTO 110
  IF ~PartyHasItem("clck02")~ THEN GOTO 106
  IF ~OR(2)
PartyHasItem("compon18")
PartyHasItem("compon19")~ THEN GOTO 101
  IF ~PartyHasItem("chan16")~ THEN GOTO 97
  IF ~PartyHasItem("quiver05")~ THEN GOTO 93
  IF ~PartyHasItem("slng08")~ THEN GOTO 90
  IF ~PartyHasItem("xbow15")
PartyHasItem("compon10")~ THEN GOTO 87
  IF ~PartyHasItem("quiver01")~ THEN GOTO 83
  IF ~PartyHasItem("compon10")~ THEN GOTO 77
  IF ~PartyHasItem("hamm10")~ THEN GOTO 73
  IF ~OR(2)
PartyHasItem("blun14")
PartyHasItem("blun30c")~ THEN GOTO 68
  IF ~PartyHasItem("blun28")~ THEN GOTO 64
  IF ~PartyHasItem("blun26")~ THEN GOTO 60
  IF ~PartyHasItem("sw1h70")~ THEN GOTO 56
  IF ~PartyHasItem("sw1h68")~ THEN GOTO 52
  IF ~PartyHasItem("halb10")~ THEN GOTO 48
  IF ~PartyHasItem("staf21")~ THEN GOTO 44
  IF ~PartyHasItem("ax1h14")~ THEN GOTO 40
  IF ~OR(2)
PartyHasItem("dagg23")
PartyHasItem("sper11")~ THEN GOTO 36
  IF ~PartyHasItem("dagg21")~ THEN GOTO 32
  IF ~PartyHasItem("sw2h10")~ THEN GOTO 28
  IF ~PartyHasItem("sw2h17")~ THEN GOTO 24
  IF ~PartyHasItem("sw1h64")~ THEN GOTO 20
  IF ~PartyHasItem("sw1h62")~ THEN GOTO 16
  IF ~PartyHasItem("sw1h60")~ THEN GOTO 12
  IF ~PartyHasItem("sw2h15")~ THEN GOTO N1
END

IF ~~ THEN BEGIN R1
  SAY ~Sure. Cespenar is at your service while you rest as always.~
  IF ~~ THEN  DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("VPHealCp")~ EXIT
END
END