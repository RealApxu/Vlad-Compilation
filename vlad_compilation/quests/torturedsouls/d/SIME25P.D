BEGIN VPSIM25P

CHAIN
IF ~Global("Kicked_Out","LOCALS",1)~ THEN VPSIM25P 0
~Hey, you have returned? Have a need of Sime, don�t you?~
END
 ++ ~Yes, Sime, you are right. It was foolish of me to refuse your help. Join in!~ EXTERN VPSIM25P 1
 ++ ~No, just wanted to say hi. You are cool, but I am satisfied with my companions for now.~ EXTERN VPSIM25P 6

CHAIN VPSIM25P 1
~Let�s go.~
DO ~SetGlobal("Kicked_Out","LOCALS",0) JoinParty()~
EXIT

CHAIN
IF ~Global("Kicked_Out","LOCALS",0)~ THEN VPSIM25P 2
~I guess the time have come for us to part. Are you sure you do not want my company any longer?~
END
 IF ~AreaCheck("AR4500")~ THEN REPLY ~Sime, it is better if we go on separately for now.~ EXTERN VPSIM25P 3
 IF ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ THEN REPLY ~Sime, it is better if we go on separately for now.~ EXTERN VPSIM25P 4
 IF ~OR(2) AreaCheck("AR4000") AreaCheck("AR6200")~ THEN REPLY ~Sime, it is better if we go on separately for now.~ EXTERN VPSIM25P 5
 ++ ~Of course I want your company! It was a mistake, Sime, stay with us.~ EXTERN VPSIM25P 8

CHAIN VPSIM25P 3
~I will be staying with my father for a time. You can find me there, if you require my further assistance.~
END
 ++ ~That�s not possible. Why don�t you just wait right here, and if we need you again, we�ll come get you.~ EXTERN VPSIM25P 9

CHAIN VPSIM25P 4
~Where should we meet if you were to change your mind?~
END
 ++ ~I�ll send you back to the pocket plane...wait there.~ EXTERN VPSIM25P 10
 ++ ~Just wait right here and we�ll come back for you later.~ EXTERN VPSIM25P 11
 ++ ~I don�t know... If I change my mind, I�ll find you.~ EXTERN VPSIM25P 7

CHAIN VPSIM25P 5
~Where should we meet if you were to change your mind?~
END
 ++ ~I don�t know... If I change my mind, I�ll find you.~ EXTERN VPSIM25P 7

CHAIN VPSIM25P 6
~As you wish, my friend. See you soon, I hope.~
EXIT

CHAIN VPSIM25P 7
~See you soon, then. Take care of yourself.~
DO ~SetGlobal("Kicked_Out","LOCALS",1) EscapeAreaMove("AR0307",4642,2000,7)~
EXIT

CHAIN VPSIM25P 8
~I thought as much.~
DO ~SetGlobal("Kicked_Out","LOCALS",0) JoinParty()~
EXIT

CHAIN VPSIM25P 9
~See you soon, then. Take care of yourself.~
DO ~SetGlobal("Kicked_Out","LOCALS",1) MoveToPointNoInterrupt([1731.1104]) Face(0)~
EXIT

CHAIN VPSIM25P 10
~As you wish, my friend. See you soon, I hope.~
DO ~SetGlobal("Kicked_Out","LOCALS",1) CreateVisualEffectObject("SPDIMNDR",Myself) Wait(2) MoveBetweenAreas("AR4500",[1731.1104],0)~
EXIT

CHAIN VPSIM25P 11
~See you soon, then. Take care of yourself.~
DO ~SetGlobal("Kicked_Out","LOCALS",1)~
EXIT