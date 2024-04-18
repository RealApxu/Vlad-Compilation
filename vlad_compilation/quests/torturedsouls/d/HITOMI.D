BEGIN HITOMI

CHAIN
IF ~See("Yoshimo") Global("Hitomi_Meet","GLOBAL",0)~ THEN HITOMI 0
~You have come for my daughter, Yoshimo Hashimoto...~
END
 IF ~!Dead("Najoki") !Global("TT_Evil_Path","GLOBAL",2)~ THEN REPLY ~Sir, I am afraid we have terrible misunderstanding here... See, your wife suggested that if Yoshimo is allowed to speak to Kachiko, all of us, Nakanishi, and Hashimoto... we can get away...~ DO ~SetGlobal("Hitomi_Meet","GLOBAL",1)~ EXTERN HITOMI 1
 ++ ~I did not come here to talk. I do Hashimoto's bidding, which is to end your sorry lives!~ DO ~SetGlobal("Hitomi_Meet","GLOBAL",1)~ EXTERN HITOMI 3

CHAIN YOSHJ 1
~You are young and naive. My wife's words are those of a weak woman.~
EXTERN YOSHJ TS196

CHAIN YOSHJ 2
~I am tired of hectic bloodshed. No, if we are to fight we shall fight as honorable ancestors taught us. Choose a champion amongst yourselves and let him fight my sons in one on one combat.~
EXTERN YOSHJ TS197

CHAIN YOSHJ 3
~You are young and naive and I doubt you have any idea of what's happening here... But I am tired of hectic bloodshed. No, if we are to fight, then we shall fight as honorable ancestors taught us. Choose a champion amongst yourselves and let him fight my sons in one on one combat.~
EXTERN YOSHJ TS197

CHAIN
IF ~Global("Player_Against_Michio","GLOBAL",0) Global("Player_Against_Momoko","GLOBAL",3) Global("Nakanishi_Duel","GLOBAL",0)~ THEN HITOMI 4
~I see that Momoko proved the weaker... Who should stand against my elder son, Michio?~
END
 IF ~!StateCheck(Player1,STATE_SLEEPING)~ THEN REPLY ~I, myself, shall answer your challenge.~ DO ~StartCutSceneMode() StartCutScene("TTcut11")~ EXIT
 IF ~InParty(Player2) !StateCheck(Player2,STATE_SLEEPING)~ THEN REPLY ~<PLAYER2> would represent us.~ DO ~StartCutSceneMode() StartCutScene("TTcut12")~ EXIT
 IF ~InParty(Player3) !StateCheck(Player3,STATE_SLEEPING)~ THEN REPLY ~<PLAYER3> shall face him now.~ DO ~StartCutSceneMode() StartCutScene("TTcut13")~ EXIT
 IF ~InParty(Player4) !StateCheck(Player4,STATE_SLEEPING)~ THEN REPLY ~<PLAYER4> is ready to answer your challenge.~ DO ~StartCutSceneMode() StartCutScene("TTcut14")~ EXIT
 IF ~InParty(Player5) !StateCheck(Player5,STATE_SLEEPING)~ THEN REPLY ~<PLAYER5> shall be our champion.~ DO ~StartCutSceneMode() StartCutScene("TTcut15")~ EXIT
 IF ~InParty(Player6) !StateCheck(Player6,STATE_SLEEPING)~ THEN REPLY ~<PLAYER6>, go ahead.~ DO ~StartCutSceneMode() StartCutScene("TTcut16")~ EXIT
 ++ ~I think we need a short break.~ EXIT

CHAIN
IF ~Global("Player_Against_Michio","GLOBAL",0) Global("Player_Against_Momoko","GLOBAL",2) Global("Nakanishi_Duel","GLOBAL",0)~ THEN HITOMI 5
~The battle is over. Momoko stands undefeated. Is there another who would try their skill against my son?~
END
 IF ~!StateCheck(Player1,STATE_SLEEPING)~ THEN REPLY ~I, myself, shall answer your challenge.~ DO ~StartCutSceneMode() StartCutScene("TTcut01")~ EXIT
 IF ~InParty(Player2) !StateCheck(Player2,STATE_SLEEPING)~ THEN REPLY ~<PLAYER2> would represent us.~ DO ~StartCutSceneMode() StartCutScene("TTcut02")~ EXIT
 IF ~InParty(Player3) !StateCheck(Player3,STATE_SLEEPING)~ THEN REPLY ~<PLAYER3> shall face him now.~ DO ~StartCutSceneMode() StartCutScene("TTcut03")~ EXIT
 IF ~InParty(Player4) !StateCheck(Player4,STATE_SLEEPING)~ THEN REPLY ~<PLAYER4> is ready to answer your challenge.~ DO ~StartCutSceneMode() StartCutScene("TTcut04")~ EXIT
 IF ~InParty(Player5) !StateCheck(Player5,STATE_SLEEPING)~ THEN REPLY ~<PLAYER5> shall be our champion.~ DO ~StartCutSceneMode() StartCutScene("TTcut05")~ EXIT
 IF ~InParty(Player6) !StateCheck(Player6,STATE_SLEEPING)~ THEN REPLY ~<PLAYER6>, go ahead.~ DO ~StartCutSceneMode() StartCutScene("TTcut06")~ EXIT
 ++ ~No, I think we will cut our losses this day. ~ EXTERN HITOMI 9
 ++ ~I think we need a short break.~ EXIT

CHAIN
IF ~Global("Player_Against_Michio","GLOBAL",3) Global("Player_Against_Momoko","GLOBAL",3) Global("Nakanishi_Duel","GLOBAL",0)~ THEN HITOMI 6
~I stand alone now between you and my daughter. She is still alive. I sense the presence of her soul...~
END
 IF ~CheckStatGT(LastTalkedToBy(Myself),14,WIS) !Global("TT_Evil_Path","GLOBAL",2)~ THEN REPLY ~Hitomi, please, trust what your wife said. May be her words are true? May be it is our only chance? Besides, we can always fight after we try to bring Kachiko back to life. ~ EXTERN HITOMI 11
 ++ ~Nothing will stand in my way! Be prepared to cower and flee!~ EXTERN HITOMI 12
 ++ ~Do you still want to fight against us?~ EXTERN HITOMI 13

CHAIN
IF ~Global("Player_Against_Michio","GLOBAL",2) Global("Player_Against_Momoko","GLOBAL",3) Global("Nakanishi_Duel","GLOBAL",0)~ THEN HITOMI 7
~The battle is over. Michio stands undefeated. Is there another who would try their skill against my elder son?~
END
 IF ~!StateCheck(Player1,STATE_SLEEPING)~ THEN REPLY ~I, myself, shall answer your challenge.~ DO ~StartCutSceneMode() StartCutScene("TTcut11")~ EXIT
 IF ~InParty(Player2) !StateCheck(Player2,STATE_SLEEPING)~ THEN REPLY ~<PLAYER2> would represent us.~ DO ~StartCutSceneMode() StartCutScene("TTcut12")~ EXIT
 IF ~InParty(Player3) !StateCheck(Player3,STATE_SLEEPING)~ THEN REPLY ~<PLAYER3> shall face him now.~ DO ~StartCutSceneMode() StartCutScene("TTcut13")~ EXIT
 IF ~InParty(Player4) !StateCheck(Player4,STATE_SLEEPING)~ THEN REPLY ~<PLAYER4> is ready to answer your challenge.~ DO ~StartCutSceneMode() StartCutScene("TTcut14")~ EXIT
 IF ~InParty(Player5) !StateCheck(Player5,STATE_SLEEPING)~ THEN REPLY ~<PLAYER5> shall be our champion.~ DO ~StartCutSceneMode() StartCutScene("TTcut15")~ EXIT
 IF ~InParty(Player6) !StateCheck(Player6,STATE_SLEEPING)~ THEN REPLY ~<PLAYER6>, go ahead.~ DO ~StartCutSceneMode() StartCutScene("TTcut16")~ EXIT
 ++ ~No, I'm not ready yet.~ EXIT
 ++ ~No, I think we will cut our losses this day. ~ EXTERN HITOMI 9

CHAIN
IF ~Global("Nakanishi_Duel","GLOBAL",1)~ THEN HITOMI 8
~Don't bother me until the battle is finished.~
EXIT

CHAIN YOSHJ 9
~I assume you would not honor our ancient custom and commit a ritual suicide?~
END
 ++ ~My custom condemns suicide as a sin. I shall fight and die with honor in battle if I am not to win!~ EXTERN HITOMI 10

CHAIN YOSHJ 10
~I shall honor your custom, as you just have honored mine in agreeing to the duel. So be it, let's fight to death.~
DO ~SetGlobal("Hitomi_Attacked","GLOBAL",1)~
EXIT

CHAIN YOSHJ 11
~May be Najoki is right... I can see that you are stronger than me, and I shall not dishonor myself anymore. I love my daughter, but I can do nothing to save her. I am a dead man. My soul cannot find a place outside this damned island. And I have no choice but to trust you... Possibly, you are my last chance... Here is my wardstone. Take it, save my daughter, and find your way outside the island. Now, I beg you to stand back and let me commit my last ritual suicide... Last... (*you don't know why but you feel a great sorrow about this man when you see he smiles*)~
DO ~GiveItem("ExitWard",Player1) StartCutSceneMode() StartCutScene("TTcutHit")~
EXIT

CHAIN YOSHJ 12
~So be it, let's fight to your death.~
DO ~SetGlobal("Hitomi_Attacked","GLOBAL",1)~
EXIT

CHAIN YOSHJ 13
~I can see that you are stronger than me, and I shall not dishonor myself by loosing a battle to a foreigner. Now, I beg you to stand back and let me commit a ritual suicide.~
END
 ++ ~My custom condemns suicide as a sin. Fight and die with honor in battle!~ EXTERN HITOMI 14
 ++ ~*You step back and keep quiet while Hitomi commits harakiri*~ DO ~StartCutSceneMode() StartCutScene("TTcutHit")~ EXIT

CHAIN YOSHJ 14
~I shall honor your custom, as you just have honored mine in agreeing to the duels. So be it, let's fight to your death.~
DO ~SetGlobal("Hitomi_Attacked","GLOBAL",1)~
EXIT

CHAIN
IF ~!See("Yoshimo") Global("Hitomi_Meet","GLOBAL",0)~ THEN HITOMI 15
~Until you bring Yoshimo Hashimoto to me, I have nothing to say to you.~
EXIT