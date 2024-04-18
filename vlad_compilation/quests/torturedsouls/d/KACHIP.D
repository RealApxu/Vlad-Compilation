BEGIN VPKACP

// Joining party, Yoshimo initiates

CHAIN VPKACP 0
~I think it is a good idea! Better than staying in this barbaric tavern and listening to drunkard sailors!~
DO ~SetGlobal("Kicked_Out","LOCALS",0) ActionOverride("Yoshimo",JoinParty()) JoinParty()~
EXIT

CHAIN VPKACP 1
~If that is what you wish.~
DO ~SetGlobal("Kicked_Out","LOCALS",0) ActionOverride("Yoshimo",JoinParty()) JoinParty()~
EXIT

CHAIN
IF WEIGHT #5 ~Global("Kicked_Out","LOCALS",0)~ THEN VPKACP 2
~Shall we continue on, or has this ended our travels?~
END
 IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN REPLY ~Perhaps we should go separate ways.~ EXTERN VPKACP 3
 IF ~OR(2) !InParty("Yoshimo") Dead("Yoshimo")~ THEN REPLY ~Perhaps we should go separate ways.~ EXTERN VPKACP 4
 ++ ~We go on as before. Let�s go.~ DO ~JoinParty()~ EXIT

CHAIN VPKACP 3
~Where should we meet if you were to change your mind?~
END
 IF ~!AreaCheck("AR0601") !AreaCheck("AR0602") !AreaCheck("AR0603") !AreaCheck("AR0410") !AreaCheck("AR0411") !AreaCheck("AR0412") !AreaCheck("AR0413") !AreaCheck("AR0414") !AreaCheck("AR1512") !AreaCheck("AR1513") !AreaCheck("AR1514") !AreaCheck("AR1515") !AreaCheck("AR1516") !AreaCheck("AR1501") !AreaCheck("AR1502") !AreaCheck("AR1503") !AreaCheck("AR1504") !AreaCheck("AR1505") !AreaCheck("AR1506") !AreaCheck("AR1507") !AreaCheck("AR1508") !AreaCheck("AR1509") !AreaCheck("AR1510") !AreaCheck("AR1511") !AreaCheck("AR2100") !AreaCheck("AR2101") !AreaCheck("AR2102") !AreaCheck("AR2200") !AreaCheck("AR2202") !AreaCheck("AR2203") !AreaCheck("AR2204") !AreaCheck("AR2205") !AreaCheck("AR2206") !AreaCheck("AR2207") !AreaCheck("AR2208") !AreaCheck("AR2209") !AreaCheck("AR2210") !AreaCheck("AR2300") !AreaCheck("AR2400") !AreaCheck("AR2401") !AreaCheck("AR2402") !AreaCheck("AR2900") !AreaCheck("AR2901") !AreaCheck("AR2902") !AreaCheck("AR2903") !AreaCheck("AR2904") !AreaCheck("AR2905") !AreaCheck("AR2906") !InWatchersKeep() GlobalLT("Chapter","GLOBAL",7) Global("VP_OnIsland","GLOBAL",0) Global("VP_InHalruaa","GLOBAL",0)~ THEN REPLY ~Meet us at the Sea Bounty Tavern.~ DO ~SetGlobal("Kicked_Out","LOCALS",1)~ EXTERN YOSHJ TS216
 IF ~!AreaCheck("AR0301") !AreaCheck("AR0302") !AreaCheck("AR0303") !AreaCheck("AR0304") !AreaCheck("AR0305") !AreaCheck("AR0306") !AreaCheck("AR0307") !AreaCheck("AR0509") !AreaCheck("AR0510") !AreaCheck("AR0511") !AreaCheck("AR1102") !AreaCheck("AR1107") !AreaCheck("AR0801") !AreaCheck("AR0803") !AreaCheck("AR1300") !AreaCheck("AR1301") !AreaCheck("AR1302") !AreaCheck("AR1303") !AreaCheck("AR0601") !AreaCheck("AR0602") !AreaCheck("AR0603") !AreaCheck("AR0604") !AreaCheck("AR0605") !AreaCheck("AR0606") !AreaCheck("AR1512") !AreaCheck("AR1513") !AreaCheck("AR1514") !AreaCheck("AR1515") !AreaCheck("AR1516") !AreaCheck("AR1501") !AreaCheck("AR1502") !AreaCheck("AR1503") !AreaCheck("AR1504") !AreaCheck("AR1505") !AreaCheck("AR1506") !AreaCheck("AR1507") !AreaCheck("AR1508") !AreaCheck("AR1509") !AreaCheck("AR1510") !AreaCheck("AR1511") !InWatchersKeep() Global("VP_OnIsland","GLOBAL",0)~ THEN REPLY ~Just wait right here and we�ll come back for you later.~ DO ~SetGlobal("Kicked_Out","LOCALS",1)~ EXTERN YOSHJ TS217
 IF ~Global("VP_OnIsland","GLOBAL",0) Global("VP_InHalruaa","GLOBAL",0)~ THEN REPLY ~I don�t know. If you can, try and wait at a major tavern or inn.~ DO ~SetGlobal("Kicked_Out","LOCALS",1)~ EXTERN YOSHJ TS215
 IF ~Global("VP_OnIsland","GLOBAL",1)~ THEN REPLY ~Please, come back to the ship, and stay around there.~ DO ~SetGlobal("Kicked_Out","LOCALS",1)~ EXTERN YOSHJ TS214
 ++ ~Find your own way. We won�t meet again.~ DO ~SetGlobal("Kicked_Out","LOCALS",1)~ EXTERN YOSHJ TS214

CHAIN VPKACP 4
~If that is what you wish.~
DO ~EscapeArea()~
EXIT

CHAIN
IF WEIGHT #2 ~Global("Kicked_Out","LOCALS",0) !InParty("Yoshimo") Global("VP_YoshimoIsFound","GLOBAL",0) GlobalGT("VP_YoshimoSearch","GLOBAL",0) GlobalLT("VP_YoshimoSearch","GLOBAL",4) Global("VP_OnIsland","GLOBAL",0) Global("VP_KachikoInTavern","GLOBAL",0)~ THEN VPKACP 5
~You lied to me. You have no intention to lead me to Yoshimo! I do not need your help! I�ll find Yoshimo eventually! I SWEAR I�ll find him! There has to be somewhere I haven�t looked!~
DO ~SetGlobal("VP_KachikoInTavern","GLOBAL",1) EscapeAreaMove("AR0313",784,333,8)~
EXIT

CHAIN
IF WEIGHT #3 ~Global("Kicked_Out","LOCALS",1) Global("VP_OnIsland","GLOBAL",0) GlobalLT("Chapter","GLOBAL",4)~ THEN VPKACP 6
~It is good to see you again. I had hoped you would return. We still have not managed to get a ship. Do you need our help?~
END
 ++ ~Yes.~ EXTERN VPKACP 7
 ++ ~No.~ EXTERN VPKACP 8

CHAIN VPKACP 7
~Good. Not another word, then.~
DO ~ActionOverride("Yoshimo",SetGlobal("Kicked_Out","LOCALS",0)) ActionOverride("Yoshimo",JoinParty() SetGlobal("Kicked_Out","LOCALS",0) JoinParty()~
EXIT

CHAIN VPKACP 8
~If that is what you wish.~
EXIT

CHAIN
IF WEIGHT #1 ~Global("Kachiko_Reborn","GLOBAL",1)~ THEN VPKACP 9
~Who... who calls for me?~ [KACHIQ09]
DO ~SetGlobal("Kachiko_Reborn","GLOBAL",2)~
EXTERN YOSHJ TS198

CHAIN VPKACP 10
~It �s so dreadfully dark in here, I cannot see...~
EXTERN YOSHJ TS199

CHAIN VPKACP 11
~Yoshimo... I dreamt that I was walking a long trail between the mountains towards the exit from the valley bathed in a bright light... and I was walking and walking and it was so far... I grew tired and then I heard a voice, calling... I was not sure it was you, but I hoped it was.~ [KACHIQ10]
EXTERN YOSHJ TS200

CHAIN VPKACP 12
~Where am I? It looks like... It looks like a coffin. Oh, mine! It is a tomb, is not it? My tomb. Now I remember. Yoshimo, you saved me! Despite everything, you have come for me.~
EXTERN YOSHJ TS201

CHAIN VPKACP 13
~Yoshimo, I love you too... Let�s get out of this cold, terrible place.~
DO ~JoinParty()~
EXIT

CHAIN VPKACP 14
~Yoshimo? What is the meaning of that? How dare you to disturb my rest? How dare you to come here, blood of my family on your hands? You are a fool and a pathetic liar, Yoshimo!~ [KACHIQ11]
EXTERN YOSHJ TS205

CHAIN VPKACP 15
~All Hashimoto are liars! I was so blind and you almost fooled me, just like you fooled Naoko! I can see it all so clearly now... Masaki was right about you... you know, it was him, who discovered Naoko�s treachery and punished i~
EXTERN YOSHJ TS206

CHAIN VPKACP 16
~Yes, and he alerted the wizard who had helped us to get away from Kara-Tur to this blessed Island about your whereabouts. So even if you flee you�d have to face Joneleth, the great mage, who champions Nakanishi�s case.~
EXTERN YOSHJ TS207

CHAIN VPKACP 17
~Liar! I will not listen to you any longer! Masaki! Father! Brothers! Let�s kill them all! For Nakanishi�s honor!~
DO ~SetGlobal("Kachiko_Saved","GLOBAL",3) StartCutScene("TTcutBad")~
EXIT

CHAIN
IF WEIGHT #4 ~Global("Kicked_Out","LOCALS",1) !InParty("Yoshimo") See("Yoshimo") GlobalGT("Chapter","GLOBAL",3)~ THEN VPKACP 18
~It is good to see you again. Was there something that you wished?~
END
 ++ ~Maybe you can join my party?~ EXTERN VPKACP 7
 ++ ~No.~ EXTERN VPKACP 8

CHAIN
IF WEIGHT #0 ~Global("VP_Yoshimo_Dies","GLOBAL",1) !Global("Kachiko_Reborn","GLOBAL",1)~ THEN VPKACP 19
~Sorry, <CHARNAME>, I cannot stay with you any longer. Without Yoshimo, I have nothing to do in your party. I must go back to Kozakura. Good luck to you.~
DO ~EscapeArea()~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("VP_KachikoInTavern","GLOBAL",1) !InParty(Myself) !InParty("Yoshimo") !See("Yoshimo")~ THEN VPKACP N20
~It is good to see you again. Was there something that you wished?~
END
 ++ ~Maybe you can join my party?~ EXTERN VPKACP N21
 ++ ~No.~ EXTERN VPKACP 8

CHAIN VPKACP N21
~Good. Not another word, then.~
DO ~SetGlobal("VP_KachikoInTavern","GLOBAL",0) SetGlobal("Kicked_Out","LOCALS",0) JoinParty()~
EXIT

// Waiting in Sea Bounty and detecting Yoshimo
CHAIN
IF WEIGHT #-2 ~Global("VP_KachikoInTavern","GLOBAL",1) !InParty(Myself) InParty("Yoshimo") Detect("Yoshimo")~ THEN VPKACP N22
~Ah, here you are, bastard! You thought you could flee far enough? I promised to find you even in Nine Hells! Prepare to die!~
EXTERN YOSHJ SB01

CHAIN VPKACP N23
~Yoshimo, you sound sincere... Hmm... If what you say is true, we must come back to Kara-Tur and try to convince my family that you�re not the murderer. But if you lied... <CHARNAME>, we have to leave for Kara-Tur immediately.~
END
 ++ ~Kachiko, are you going back on your offer to help me?~ EXTERN VPKACP N24
 ++ ~Of course, Kachiko, I understand. Farewell.~ EXTERN YOSHJ SB05

CHAIN VPKACP N24
~Of course, <CHARNAME>. At least I can keep an eye on Yoshimo and bring him back to Kara-Tur when time comes.~
EXTERN YOSHJ SB04

CHAIN VPKACP N25
~You will not get away that easily! Sorry, <CHARNAME>, but I have to go after him!~
EXTERN YOSHJ SB05

CHAIN VPKACP N26
~Don�t lie to me. You won�t escape again. I�ll watch you even if I have to break my word to <CHARNAME>.~
DO ~SetGlobal("VP_KachikoInTavern","GLOBAL",0) SetGlobal("Kicked_Out","LOCALS",0) JoinParty()~
EXIT