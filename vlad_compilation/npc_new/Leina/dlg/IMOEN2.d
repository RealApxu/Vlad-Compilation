ADD_TRANS_TRIGGER IMOEN2 21 ~True()~ DO 0

ALTER_TRANS IMOEN2 // file name
BEGIN 21 END // state number (can be more than one) BEGIN 0  // transition number (can be more than one) BEGIN // list of changes, see below for flags
"ACTION" ~SetGlobal("VP_Imoen_Returns","GLOBAL",1) AddXPObject(Myself,1000000) JoinParty()~
END

EXTEND_BOTTOM IMOEN2 21
 IF ~InParty("vpleina") !Dead("vpleina")~ THEN EXTERN VPLEIJ immy1
END

CHAIN IMOEN2 leina1
~What difference does that make? You think that if <CHARNAME> knew we were related, <PRO_HESHE> wouldn't have spoken so fondly of me?~
EXTERN VPLEIJ immy2

CHAIN IMOEN2 leina2
~Sounds alright to me and if I don't have a problem with it why should you?~
EXTERN VPLEIJ immy3

CHAIN IMOEN2 leina3
~Yea well, we have had a tough time of it, but I hear your own life hasn't been a bed of roses either. Seems we both owe our circumstances to male egotism.~
== IMOEN2 ~Well, in my case a god and a man Bhaal, a power crazed god who thought he could live forever by impregnating every woman he came across, and Irenicus for... well the gods only know what is in his power crazed perverted brain!~
== IMOEN2 ~Still, in some small way I suppose we should sympathise with each other. So, you going to tell me your story so's I can start sympathising?~
EXTERN VPLEIJ immy4

CHAIN IMOEN2 leina4
~(*Her eyes light up but she tries to make her face appear tragic*) Aaw come on girl, I sense a real tale of tragedy here, of love unrequited.~
== IMOEN2 ~Please tell, what manner of beast took your heart and dashed it upon the rocks, leaving it broken, scarred for the whole of eternity?~
EXTERN VPLEIJ immy5

CHAIN IMOEN2 leina5
~(*She looks at Leina, with genuine sadness in her face*) To never love again, how... I mean... never?~
EXTERN VPLEIJ immy6

CHAIN IMOEN2 leina6
~Don't you miss the comfort that comes from being loved back, from knowing that someone thinks you are special?~
EXTERN VPLEIJ immy7

CHAIN IMOEN2 leina7
~(*Sighing*) Surely you don't believe that all men are the same, there are some good honest men in the world... or at least I hope there are.~
== IMOEN2 ~I don't want to die an old maid, never having known the rapture of what it is to love and to be loved.~
EXTERN VPLEIJ immy8

CHAIN IMOEN2 leina8
~Thank you, Leina.~
END
 IF ~True()~ THEN DO ~SetGlobal("VP_Imoen_Returns","GLOBAL",1) AddXPObject(Myself,1000000) JoinParty()~ EXIT
 IF ~Global("Kachiko_Saved","GLOBAL",2) InParty("Yoshimo") !Dead("Yoshimo") InParty("vpkachi") !Dead("vpkachi")~ THEN DO ~SetGlobal("VP_YoshimoExcuse","GLOBAL",1)~ EXTERN VPKACJ N32
 IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1)~ THEN EXTERN KELDORJ Imoen0
 IF ~InParty("njhroth") !Dead("njhroth")~ THEN GOTO hrothg1
 IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN NJTAFJ immy1
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELJ immy1