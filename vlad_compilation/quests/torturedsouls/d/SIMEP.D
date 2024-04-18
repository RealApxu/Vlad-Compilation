BEGIN VPSIMP

CHAIN
IF WEIGHT #1 ~NumTimesTalkedToGT(0) Global("Kicked_Out","LOCALS",1) Global("VP_OnIsland","GLOBAL",0)~ THEN VPSIMP 0
~Hey, you have returned? Have a need of Sime, don�t you?~
END
 ++ ~Yes, Sime, you are right. It was foolish of me to refuse your help. Join in!~ EXTERN VPSIMP 1
 ++ ~No, just wanted to say hi. You are cool, but I am satisfied with my companions for now.~ EXTERN VPSIMP 7

CHAIN VPSIMP 1
~Let�s go.~
DO ~SetGlobal("Kicked_Out","LOCALS",0) JoinParty()~
EXIT

CHAIN
IF WEIGHT #2 ~Global("VP_OnIsland","GLOBAL",1)~ THEN VPSIMP 2
~If you need a hand, I�d gladly come with you, if not - I�ll stay around the ship and keep an eye on the shifty captain for you...~
END
 ++ ~Great, stay with the ship then, I do not fully trust Saemon. It might easily be his own plot to get the cash and avoid a dangerous sailing to Spellhold. Stay right where you are and call if Havarian will be up to no good.~ EXTERN VPSIMP 8
 ++ ~Actually, it was foolish of me to refuse your help. Join in, Sime.~ EXTERN VPSIMP 9

CHAIN
IF WEIGHT #3 ~NumTimesTalkedToGT(0) Global("Kicked_Out","LOCALS",0)~ THEN VPSIMP 3
~I guess the time have come for us to part. Are you sure you do not want my company any longer?~
END
 ++ ~Sime, it is better if we go on separately for now.~ EXTERN VPSIMP 4
 ++ ~Of course I want your company! It was a mistake, Sime, stay with us.~ EXTERN VPSIMP 13

CHAIN VPSIMP 4
~Where should we meet if you were to change your mind?~
END
 IF ~!AreaCheck("AR0601") !AreaCheck("AR0602") !AreaCheck("AR0603") !AreaCheck("AR0410") !AreaCheck("AR0411") !AreaCheck("AR0412") !AreaCheck("AR0413") !AreaCheck("AR0414") !AreaCheck("AR1512") !AreaCheck("AR1513") !AreaCheck("AR1514") !AreaCheck("AR1515") !AreaCheck("AR1516") !AreaCheck("AR1501") !AreaCheck("AR1502") !AreaCheck("AR1503") !AreaCheck("AR1504") !AreaCheck("AR1505") !AreaCheck("AR1506") !AreaCheck("AR1507") !AreaCheck("AR1508") !AreaCheck("AR1509") !AreaCheck("AR1510") !AreaCheck("AR1511") !AreaCheck("AR2100") !AreaCheck("AR2101") !AreaCheck("AR2102") !AreaCheck("AR2200") !AreaCheck("AR2202") !AreaCheck("AR2203") !AreaCheck("AR2204") !AreaCheck("AR2205") !AreaCheck("AR2206") !AreaCheck("AR2207") !AreaCheck("AR2208") !AreaCheck("AR2209") !AreaCheck("AR2210") !AreaCheck("AR2300") !AreaCheck("AR2400") !AreaCheck("AR2401") !AreaCheck("AR2402") !AreaCheck("AR2900") !AreaCheck("AR2901") !AreaCheck("AR2902") !AreaCheck("AR2903") !AreaCheck("AR2904") !AreaCheck("AR2905") !AreaCheck("AR2906") Global("VP_InHalruaa","GLOBAL",0) Global("VP_OnIsland","GLOBAL",0)~ THEN REPLY ~Meet us at the Sea Bounty Tavern.~ EXTERN VPSIMP 10
 IF ~!AreaCheck("AR0301") !AreaCheck("AR0302") !AreaCheck("AR0303") !AreaCheck("AR0304") !AreaCheck("AR0305") !AreaCheck("AR0306") !AreaCheck("AR0307") !AreaCheck("AR0509") !AreaCheck("AR0510") !AreaCheck("AR0511") !AreaCheck("AR1102") !AreaCheck("AR1107") !AreaCheck("AR0801") !AreaCheck("AR0803") !AreaCheck("AR1300") !AreaCheck("AR1301") !AreaCheck("AR1302") !AreaCheck("AR1303") !AreaCheck("AR0601") !AreaCheck("AR0602") !AreaCheck("AR0603") !AreaCheck("AR0604") !AreaCheck("AR0605") !AreaCheck("AR0606") !InWatchersKeep() Global("VP_OnIsland","GLOBAL",0)~ THEN REPLY ~Just wait right here and we�ll come back for you later.~ EXTERN VPSIMP 11
 IF ~Global("VP_InHalruaa","GLOBAL",0) Global("VP_OnIsland","GLOBAL",0)~ THEN REPLY ~I don�t know... If I change my mind, I�ll find you.~ EXTERN VPSIMP 12

CHAIN
IF WEIGHT #4 ~Global("SimeKorganFight","GLOBAL",2) Global("Kicked_Out","LOCALS",0)~ THEN VPSIMP 5
~Bah! The fool isn�t worse a fight. Bastard... If you still need my help, I�d gladly come with you, if not - I�ll find my own way...~
END
 ++ ~Sime, it is better if we go on separately for now.~ EXTERN VPSIMP 6
 ++ ~Join the party again, then.~ EXTERN VPSIMP 17

CHAIN VPSIMP 6
~Where should we meet if you were to change your mind?~
END
 IF ~!AreaCheck("AR0601") !AreaCheck("AR0602") !AreaCheck("AR0603") !AreaCheck("AR0410") !AreaCheck("AR0411") !AreaCheck("AR0412") !AreaCheck("AR0413") !AreaCheck("AR0414") !AreaCheck("AR1512") !AreaCheck("AR1513") !AreaCheck("AR1514") !AreaCheck("AR1515") !AreaCheck("AR1516") !AreaCheck("AR1501") !AreaCheck("AR1502") !AreaCheck("AR1503") !AreaCheck("AR1504") !AreaCheck("AR1505") !AreaCheck("AR1506") !AreaCheck("AR1507") !AreaCheck("AR1508") !AreaCheck("AR1509") !AreaCheck("AR1510") !AreaCheck("AR1511") !AreaCheck("AR2100") !AreaCheck("AR2101") !AreaCheck("AR2102") !AreaCheck("AR2200") !AreaCheck("AR2202") !AreaCheck("AR2203") !AreaCheck("AR2204") !AreaCheck("AR2205") !AreaCheck("AR2206") !AreaCheck("AR2207") !AreaCheck("AR2208") !AreaCheck("AR2209") !AreaCheck("AR2210") !AreaCheck("AR2300") !AreaCheck("AR2400") !AreaCheck("AR2401") !AreaCheck("AR2402") !AreaCheck("AR2900") !AreaCheck("AR2901") !AreaCheck("AR2902") !AreaCheck("AR2903") !AreaCheck("AR2904") !AreaCheck("AR2905") !AreaCheck("AR2906") !AreaCheck("TT0100") !AreaCheck("TT0101") !AreaCheck("TT0102") !AreaCheck("TT0201") !AreaCheck("TT0202") !AreaCheck("TT0203") !AreaCheck("TT0204") !AreaCheck("TT0301") !AreaCheck("TT0302") !AreaCheck("TT0303") !AreaCheck("TT0304") !AreaCheck("TT0305") !AreaCheck("TT0306") !AreaCheck("TT0307") !AreaCheck("TT0308")~ THEN REPLY ~Meet us at the Sea Bounty Tavern.~ EXTERN VPSIMP 14
 IF ~!AreaCheck("AR0301") !AreaCheck("AR0302") !AreaCheck("AR0303") !AreaCheck("AR0304") !AreaCheck("AR0305") !AreaCheck("AR0306") !AreaCheck("AR0307") !AreaCheck("AR0509") !AreaCheck("AR0510") !AreaCheck("AR0511") !AreaCheck("AR1102") !AreaCheck("AR1107") !AreaCheck("AR0801") !AreaCheck("AR0803") !AreaCheck("AR1300") !AreaCheck("AR1301") !AreaCheck("AR1302") !AreaCheck("AR1303") !AreaCheck("AR0601") !AreaCheck("AR0602") !AreaCheck("AR0603") !AreaCheck("AR0604") !AreaCheck("AR0605") !AreaCheck("AR0606") !InWatchersKeep() Global("VP_OnIsland","GLOBAL",0)~ THEN REPLY ~Just wait right here and we�ll come back for you later.~ EXTERN VPSIMP 15
 IF ~Global("VP_InHalruaa","GLOBAL",0) Global("VP_OnIsland","GLOBAL",0)~ THEN REPLY ~I don�t know... If I change my mind, I�ll find you.~ EXTERN VPSIMP 16

CHAIN VPSIMP 7
~As you wish, my friend. See you soon, I hope.~
EXIT

CHAIN VPSIMP 8
~See you soon, then. Take care of yourself.~
DO ~SetGlobal("Kicked_Out","LOCALS",1) DestroyItem("Wolf") DestroyItem("SiLeat") DestroyItem("SiAmul") DestroyItem("HelmSun") GivePartyAllEquipment() LeaveParty() EscapeArea()~
EXIT

CHAIN VPSIMP 9
~I thought as much.~
DO ~SetGlobal("Kicked_Out","LOCALS",0) JoinParty()~
EXIT

CHAIN VPSIMP 10
~See you soon, then. Take care of yourself.~
DO ~SetGlobal("Kicked_Out","LOCALS",1) EscapeAreaMove("AR0313",784,313,7)~
EXIT

CHAIN VPSIMP 11
~As you wish, my friend. See you soon, I hope.~
DO ~SetGlobal("Kicked_Out","LOCALS",1)~
EXIT

CHAIN VPSIMP 12
~I will be staying with my father for a time. You can find me there, if you require my further assistance.~
DO ~SetGlobal("Kicked_Out","LOCALS",1) EscapeAreaMove("AR0307",4642,2000,7)~
EXIT

CHAIN VPSIMP 13
~I thought as much.~
DO ~SetGlobal("Kicked_Out","LOCALS",0) JoinParty()~
EXIT

CHAIN VPSIMP 14
~See you soon, then. Take care of yourself.~
DO ~SetGlobal("Kicked_Out","LOCALS",1) SetGlobal("SimeKorganFight","GLOBAL",3) EscapeAreaMove("AR0313",784,313,7)~
EXIT

CHAIN VPSIMP 15
~As you wish, my friend. See you soon, I hope.~
DO ~SetGlobal("Kicked_Out","LOCALS",1) SetGlobal("SimeKorganFight","GLOBAL",3)~
EXIT

CHAIN VPSIMP 16
~I will be staying with my father for a time. You can find me there, if you require my further assistance.~
DO ~SetGlobal("Kicked_Out","LOCALS",1) SetGlobal("SimeKorganFight","GLOBAL",3) EscapeAreaMove("AR0307",4642,2000,7)~
EXIT

CHAIN VPSIMP 17
~I thought as much.~
DO ~SetGlobal("Kicked_Out","LOCALS",0) SetGlobal("SimeKorganFight","GLOBAL",3) JoinParty()~
EXIT

CHAIN
IF WEIGHT #0 ~Global("VP_SimeVampire","GLOBAL",5) Global("VP_OnIsland","GLOBAL",0)~ THEN VPSIMP 18
~Is it you, my love? That is a happy dream. I was yearning to dream of you for so long! You are just like I remember you, and you smile... I want to kiss you so much! Please, do not go away until I do. It is strange to beg a dream not to go away. Amazing how we have so little control over our dreams...~
END
 ++ ~It is no dream, Sime. It is for real. I took you away from Bodhi�s clutches and I brought you back to life. And you think that after all these troubles I will simply leave you? No way, milady, no way! You are stuck with me now.~ DO ~EraseJournalEntry(32084) EraseJournalEntry(32085) EraseJournalEntry(16351) EraseJournalEntry(7002) EraseJournalEntry(3716) EraseJournalEntry(5814) EraseJournalEntry(16331) EraseJournalEntry(11864) EraseJournalEntry(3374) EraseJournalEntry(3377) EraseJournalEntry(3927) EraseJournalEntry(15710) EraseJournalEntry(6589) EraseJournalEntry(79170) EraseJournalEntry(79181) SetGlobal("VP_SimeVampire","GLOBAL",6)~ EXTERN VPSIMP 19
 ++ ~A dream? Do dreams kiss like that? (*You give Sime a deep kiss*)~ DO ~EraseJournalEntry(32084) EraseJournalEntry(32085) EraseJournalEntry(16351) EraseJournalEntry(7002) EraseJournalEntry(3716) EraseJournalEntry(5814) EraseJournalEntry(16331) EraseJournalEntry(11864) EraseJournalEntry(3374) EraseJournalEntry(3377) EraseJournalEntry(3927) EraseJournalEntry(15710) EraseJournalEntry(6589) EraseJournalEntry(79170) EraseJournalEntry(79181) SetGlobal("VP_SimeVampire","GLOBAL",6)~ EXTERN VPSIMP 20
 ++ ~Sime, that�s me, <CHARNAME>! Can you hear me? You are going to be alright! Breathe deeply and here is some Elven water for you to drink! You are alive!~ DO ~EraseJournalEntry(32084) EraseJournalEntry(32085) EraseJournalEntry(16351) EraseJournalEntry(7002) EraseJournalEntry(3716) EraseJournalEntry(5814) EraseJournalEntry(16331) EraseJournalEntry(11864) EraseJournalEntry(3374) EraseJournalEntry(3377) EraseJournalEntry(3927) EraseJournalEntry(15710) EraseJournalEntry(6589) EraseJournalEntry(79170) EraseJournalEntry(79181) SetGlobal("VP_SimeVampire","GLOBAL",6)~ EXTERN VPSIMP 21

CHAIN VPSIMP 19
~I am it seems. I... I am sorry... I am not crying, it is just... well tears pouring out of my eyes. I love you, <CHARNAME>, I love you so much!~
DO ~SetGlobal("Kicked_Out","LOCALS",0) JoinParty()~
EXIT

CHAIN VPSIMP 20
~(*Matches your kiss and embraces you tightly*)~
DO ~SetGlobal("Kicked_Out","LOCALS",0) JoinParty()~
EXIT

CHAIN VPSIMP 21
~Ouch! This holy water is cold! I am awake now, stop pouring it over me! I am bloody glad to see you... Ahem, sorry, very glad to see you...~
DO ~SetGlobal("Kicked_Out","LOCALS",0) JoinParty()~
EXIT