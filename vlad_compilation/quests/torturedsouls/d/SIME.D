BEGIN VPSIME

CHAIN
IF WEIGHT #-2 ~Global("Sime_Meet","GLOBAL",0)~ THEN BEGIN 0
~Hello, <CHARNAME>. I have heard... things about you, and I am quite impressed. I was wondering if you need another companion? I would be honored if you�d allow me to travel with you.~ [SIMEPC02]
END
 ++ ~Well, may be, but I hate talking to strangers...~ DO ~SetGlobal("Sime_Meet","GLOBAL",1)~ EXTERN VPSIME 1
 ++ ~No chance... I seek to speak only to Aran and I am in a hurry. Away with you!~ DO ~SetGlobal("Sime_Meet","GLOBAL",1)~ EXTERN VPSIME 2
 ++ ~I am sorry, but I have enough people for now. I�d keep you in mind, though...~ DO ~SetGlobal("Sime_Meet","GLOBAL",1)~ EXTERN VPSIME 2
 ++ ~May be, but who are you and what are you capable of doing?~ DO ~SetGlobal("Sime_Meet","GLOBAL",1)~ EXTERN VPSIME 1

CHAIN VPSIME 1
~My name is Sime (*lifts her hood up*)... and as you can see I am a half-elf. I was an apprentice of a wise ranger, Darriel of Tanglewood once, and now I am a ranger in my own right... My faith in Mielikki is strong, and I am fortunate to preach her teaching, so you can regard me as a priestess as well. Apart from that there is little to tell...~ [SIMEPC03]
END
 ++ ~I am sorry, but I have enough people for now. I�d keep you in mind, though.~ EXTERN VPSIME 2
 ++ ~You sound like a valuable companion, Sime. I am glad that you wish to join in with us. I am sure we have more time to chat later on, but now we should hurry! Come along.~ EXTERN VPSIME 5
 ++ ~A ranger? A priestess of Mielikki? What are you doing in the Shadow Thieves compound in the middle of the big city?~ EXTERN VPSIME 3

CHAIN VPSIME 2
~Sure, proceed without me if you are so inclined. I will stay here for the time being and you can always count on my help if you change your mind.~ [SIMEPC04]
DO ~SetGlobal("VP_Sime_Is_Waiting","GLOBAL",1)~
EXIT

CHAIN VPSIME 3
~It has nothing to do with my abilities, I assure you. There are... some very personal reasons for me to be here. I would not want to talk about it right now. But there is nothing... dishonest about it. So, would you want me to travel with you?~ [SIMEPC05]
END
 ++ ~I am sorry, but I have enough people for now. I�d keep you in mind, though.~ EXTERN VPSIME 2
 ++ ~If you do not trust me, why should I trust you? No, I�d do without you. ~ EXTERN VPSIME 2
 ++ ~You sound like a valuable companion, Sime. And I respect your privacy. May be you will tell me your story one day. Now we should hurry! Come along, Sime.~ EXTERN VPSIME 5

CHAIN VPSIME 4
~Sure, proceed without me if you are so inclined. I will stay here for the time being and you can always count on my help if you change your mind.~ [SIMEPC04]
DO ~SetGlobal("VP_Sime_Is_Waiting","GLOBAL",2)~
EXIT

CHAIN VPSIME 5
~Let�s go.~
END
 IF ~OR(2) !InParty("Jaheira") Dead("Jaheira")~ THEN DO ~SetGlobal("VP_MyFlirt","LOCALS",1) RealSetGlobalTimer("VP_SimeFlirtTimer","GLOBAL",1800) JoinParty()~ EXIT
 IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN DO ~SetGlobal("VP_MeetJaheira","LOCALS",1) SetGlobal("VP_MyFlirt","LOCALS",1) RealSetGlobalTimer("VP_SimeFlirtTimer","GLOBAL",1800) JoinParty()~ EXIT