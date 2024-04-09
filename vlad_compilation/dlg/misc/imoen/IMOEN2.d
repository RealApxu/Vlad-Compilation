ADD_TRANS_TRIGGER IMOEN2 21 ~True()~ DO 0

ALTER_TRANS IMOEN2 // file name
BEGIN 21 END // state number (can be more than one) BEGIN 0 END // transition number (can be more than one) BEGIN // list of changes, see below for flags
"ACTION" ~SetGlobal("VP_Imoen_Returns","GLOBAL",1) AddXPObject(Myself,1000000) JoinParty()~
END

EXTEND_BOTTOM IMOEN2 21
  IF ~Global("Kachiko_Saved","GLOBAL",2) InParty("Yoshimo") !Dead("Yoshimo") InParty("vpkachi") !Dead("vpkachi")~ THEN DO ~SetGlobal("VP_YoshimoExcuse","GLOBAL",1)~ EXTERN ~KACHIJ~ N32
  IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1)~ THEN EXTERN ~KELDORJ~ Imoen0
  IF ~InParty("njhroth") !Dead("njhroth")~ THEN GOTO hrothg1
  IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN ~TAFFICJ~ immy1
  IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELJ immy1
  IF ~InParty("vpleina") !Dead("vpleina")~ THEN EXTERN VPLEIJ immy1
END

APPEND ~IMOEN2~

IF ~~ THEN BEGIN leina1
  SAY ~What difference does that make? You think that if <CHARNAME> knew we were related, <PRO_HESHE> wouldn't have spoken so fondly of me?~
  IF ~~ THEN EXTERN VPLEIJ immy2
END

IF ~~ THEN BEGIN leina2
  SAY ~Sounds alright to me and if I don't have a problem with it why should you?~
  IF ~~ THEN EXTERN VPLEIJ immy3
END

IF ~~ THEN BEGIN leina3
  SAY ~Yea well, we have had a tough time of it, but I hear your own life hasn't been a bed of roses either. Seems we both owe our circumstances to male egotism.~
  = ~Well, in my case a god and a man Bhaal, a power crazed god who thought he could live forever by impregnating every woman he came across, and Irenicus for... well the gods only know what is in his power crazed perverted brain!~
  = ~Still, in some small way I suppose we should sympathise with each other. So, you going to tell me your story so's I can start sympathising?~
  IF ~~ THEN EXTERN VPLEIJ immy4
END

IF ~~ THEN BEGIN leina4
  SAY ~(*Her eyes light up but she tries to make her face appear tragic*) Aaw come on girl, I sense a real tale of tragedy here, of love unrequited.~
  = ~Please tell, what manner of beast took your heart and dashed it upon the rocks, leaving it broken, scarred for the whole of eternity?~
  IF ~~ THEN EXTERN VPLEIJ immy5
END

IF ~~ THEN BEGIN leina5
  SAY ~(*She looks at Leina, with genuine sadness in her face*) To never love again, how... I mean... never?~
  IF ~~ THEN EXTERN VPLEIJ immy6
END

IF ~~ THEN BEGIN leina6
  SAY ~Don't you miss the comfort that comes from being loved back, from knowing that someone thinks you are special?~
  IF ~~ THEN EXTERN VPLEIJ immy7
END

IF ~~ THEN BEGIN leina7
  SAY ~(*Sighing*) Surely you don't believe that all men are the same, there are some good honest men in the world... or at least I hope there are.~
  = ~I don't want to die an old maid, never having known the rapture of what it is to love and to be loved.~
  IF ~~ THEN EXTERN VPLEIJ immy8
END

IF ~~ THEN BEGIN leina8
  SAY ~Thank you, Leina.~
  IF ~True()~ THEN DO ~SetGlobal("VP_Imoen_Returns","GLOBAL",1) AddXPObject(Myself,1000000) JoinParty()~ EXIT
  IF ~Global("Kachiko_Saved","GLOBAL",2) InParty("Yoshimo") !Dead("Yoshimo") InParty("vpkachi") !Dead("vpkachi")~ THEN DO ~SetGlobal("VP_YoshimoExcuse","GLOBAL",1)~ EXTERN ~KACHIJ~ N32
  IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1)~ THEN EXTERN ~KELDORJ~ Imoen0
  IF ~InParty("njhroth") !Dead("njhroth")~ THEN GOTO hrothg1
  IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN ~TAFFICJ~ immy1
  IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELJ immy1
END

IF ~~ THEN BEGIN melora1
  SAY ~Hey Melora. Not really, we're chalk and cheese <CHARNAME> and me. I must take after my mother, she has to have been far prettier than Bhaal. Still how Irenicus worked it out before we did is one to him.~
  IF ~~ THEN EXTERN NJMELJ immy2
END

IF ~~ THEN BEGIN melora2
  SAY ~Please, don't remind me! I feel sick at the thought of my soul having to endure all the disgusting things that... that creature will force upon it!~
  IF ~~ THEN EXTERN NJMELJ immy3
END

IF ~~ THEN BEGIN melora3
  SAY ~I don't have a choice Melora, without it I'm going to die... or worse, drop right down into hell. I remember the priests in Candlekeep telling us that's where all the evil, soulless people end up.~
  IF ~~ THEN EXTERN NJMELJ immy4
END

IF ~~ THEN BEGIN melora4
  SAY ~(*She grins and for second is the carefree, charming girl, Imoen*) I don't scare easy, and nor do my pants.~
  = ~Ah, if only I could be as certain as you. I just know something real bad will happen to me if my soul isn't put back soon... I just know it!~
  = ~Damn Irenicus, damn Bhaal and his over inflated godly ego, he started all this!~
  IF ~~ THEN EXTERN NJMELJ immy5
END

IF ~~ THEN BEGIN melora5
  SAY ~(*Hope leaps to her eyes*) You know Melora, I'm real glad <CHARNAME> brought you along... me and you, we're like cheese and cheese.~
  = ~We'll show those two hell spawned fiends a fight when we catch up with them. They asked for it and we're going to give it to 'em good and proper.~
  IF ~~ THEN EXTERN NJMELJ immy6
END

IF ~~ THEN BEGIN melora6
  SAY ~Thank you, Melora.~
  IF ~True()~ THEN DO ~SetGlobal("VP_Imoen_Returns","GLOBAL",1) AddXPObject(Myself,1000000) JoinParty()~ EXIT
  IF ~Global("Kachiko_Saved","GLOBAL",2) InParty("Yoshimo") !Dead("Yoshimo") InParty("vpkachi") !Dead("vpkachi")~ THEN DO ~SetGlobal("VP_YoshimoExcuse","GLOBAL",1)~ EXTERN ~KACHIJ~ N32
  IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1)~ THEN EXTERN ~KELDORJ~ Imoen0
  IF ~InParty("njhroth") !Dead("njhroth")~ THEN GOTO hrothg1
  IF ~InParty("njtaffic") !Dead("njtaffic")~ THEN EXTERN ~TAFFICJ~ immy1
END

IF ~~ THEN BEGIN taffic1
  SAY ~For an aspiring hero... I don't see anything inspirational about you either gnome!~
  = ~I am grateful however for your help in getting me out of that place... so for that, I guess I am in your debt. Maybe I'll get to repay the favour sometime.~
  IF ~~ THEN EXTERN ~TAFFICJ~ immy2
END

IF ~~ THEN BEGIN taffic2
  SAY ~It was no picnic for me either you know! Still, I've said I'm grateful and I am sure <CHARNAME> was equally as grateful for your aid in laying low so many foes on the road.~
  = ~I am sure you proved yourself to be a true hero.~
  IF ~~ THEN EXTERN ~TAFFICJ~ immy3
END

IF ~~ THEN BEGIN taffic3
  SAY ~I've said I'm thankful, apart from getting down and kissing your feet, and please, you're not meant to take that literally, what more do you want?~
  IF ~~ THEN EXTERN ~TAFFICJ~ immy4
END

IF ~~ THEN BEGIN taffic4
  SAY ~(*Hurriedly interrupting him*) Eeew!  Believe me, even then there'll still be no kissing of feet. Yea gods, for one so small you sure do have a large ego!~
  IF ~~ THEN EXTERN ~TAFFICJ~ immy5
END

IF ~~ THEN BEGIN taffic5
  SAY ~Phooey! Irenicus has taken all he wants from me and from <CHARNAME> for that matter. Why else do you think he threw us to Bodhi?~
  = ~You don't frighten me with your threats... go, and to use your word, 'zap' someone your own size. I've done had enough of this banter!~
  IF ~~ THEN EXTERN ~TAFFICJ~ immy6
END

IF ~~ THEN BEGIN taffic6
  SAY ~(*Waving her hand dismissively at the gnome*) Whatever!~
  IF ~True()~ THEN DO ~SetGlobal("VP_Imoen_Returns","GLOBAL",1) AddXPObject(Myself,1000000) JoinParty()~ EXIT
  IF ~Global("Kachiko_Saved","GLOBAL",2) InParty("Yoshimo") !Dead("Yoshimo") InParty("vpkachi") !Dead("vpkachi")~ THEN DO ~SetGlobal("VP_YoshimoExcuse","GLOBAL",1)~ EXTERN ~KACHIJ~ N32
  IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1)~ THEN EXTERN ~KELDORJ~ Imoen0
  IF ~InParty("njhroth") !Dead("njhroth")~ THEN GOTO hrothg1
END

IF ~~ THEN BEGIN hrothg1
  SAY ~So Hrothgar, I see you took the scenic route to get here, and after all I did to aid you back in your time! Trudging through all that snow with water leaking into my boots, there's no fun to be had paddling inside your boots you know!~
  = ~Not to mention battling disgusting man eating snake people and storming a tower of dead elves so's you can talk to a lich!~
  = ~Some friend you turned out to be... friends always put their friends safety first, in case you didn't know!~
  IF ~~ THEN EXTERN NJHROJ immy1
END

IF ~~ THEN BEGIN hrothg2
  SAY ~But time was lost, I was lost, and you can't blow this off as some kind of technicality. You may have come back to the same point you left, but still you didn't get here quite as swiftly as you would had you not left in the first place!~
  IF ~~ THEN EXTERN NJHROJ immy2
END

IF ~~ THEN BEGIN hrothg3
  SAY ~You could have got here faster. Did you even try?~
  IF ~~ THEN EXTERN NJHROJ immy3
END

IF ~~ THEN BEGIN hrothg4
  SAY ~Phooey! (*Then mimicking Hrothgar's voice*) We came as and when time necessitated it. Oh, you came alright, but you came too late and not without a stop or two along the way.~
  = ~As I see it here, your own concerns came first, however much you try to gloss it over by saying *time necessitates*.~
  IF ~~ THEN EXTERN NJHROJ immy4
END

IF ~~ THEN BEGIN hrothg5
  SAY ~I'm glad I'm part of that bigger picture, at least you had to come find me to keep me in it, but it doesn't help me much now does it?~
  IF ~~ THEN EXTERN NJHROJ immy5
END

IF ~~ THEN BEGIN hrothg6
  SAY ~(*Angrily, she interrupts him*) So, because you knew that I was going to be ok in the end, it didn't matter what happened in the middle?~
  = ~In effect, my life and my well being came second to some old keys, well thanks a bunch for that... friend!~
  IF ~~ THEN EXTERN NJHROJ immy6
END

IF ~~ THEN BEGIN hrothg7
  SAY ~I sure as hell don't feel anything but second to these blasted keys of yours!~
  IF ~~ THEN EXTERN NJHROJ immy7
END

IF ~~ THEN BEGIN hrothg8
  SAY ~(*Her voice maintaining its tone of anger*) I have every right to be angry! I have just had my soul ripped from my body and all you can say is *Trust me*!~
  = ~I can't believe that you are being so calm over this. You're unbelievable Hrothgar... unbelievable!~
  IF ~~ THEN EXTERN NJHROJ immy8
END

IF ~~ THEN BEGIN hrothg9
  SAY ~(*A few seconds lapse while Imoen has some silent reflection.*) Hrothgar, may we speak?~
  IF ~~ THEN EXTERN NJHROJ immy9
END

IF ~~ THEN BEGIN hrothg10
  SAY ~I... I want to apologise for earlier. I can't help it if I feel that I wasn't your main concern, it's this place that's made this way.~
  = ~I have tried to understand all that you have said, it's not easy and  doesn't make me feel any better, but I can see how maybe you couldn't change things.~
  = ~If, as you say, there is more at stake in this bigger picture, then I don't blame you and I am sorry for getting angry... friends?~
  IF ~~ THEN EXTERN NJHROJ immy10
END

IF ~~ THEN BEGIN hrothg11
  SAY ~(*A small twinkle returns fleetingly to her eyes*) Good, 'cos  it's gonna take more than some deranged sorcerer to put one over this god child! Let's go show him what possessing real divinity means.~
  IF ~~ THEN EXTERN NJHROJ immy11
END

IF ~~ THEN BEGIN hrothg12
  SAY ~I hope so.~
  IF ~True()~ THEN DO ~SetGlobal("VP_Imoen_Returns","GLOBAL",1) AddXPObject(Myself,1000000) JoinParty()~ EXIT
  IF ~Global("Kachiko_Saved","GLOBAL",2) InParty("Yoshimo") !Dead("Yoshimo") InParty("vpkachi") !Dead("vpkachi")~ THEN DO ~SetGlobal("VP_YoshimoExcuse","GLOBAL",1)~ EXTERN ~KACHIJ~ N32
  IF ~InParty("Keldorn") !Dead("Keldorn") Global("VP_KeldornMatch","GLOBAL",1)~ THEN EXTERN ~KELDORJ~ Imoen0
END

IF ~~ THEN BEGIN MeetKr0
  SAY ~(Crossly) Yea, well I can't say I enjoyed being used as bait... it was <CHARNAME> whom he wanted. Who would have guessed that Athkatla has such foolish laws!~
  IF ~~ THEN EXTERN ~KELDORJ~ Imoen1
END

IF ~~ THEN BEGIN MeetKr1
  SAY ~Steal me? Hey, what do you think I am... a scroll from the age of Netheril waiting to be stolen? Yes, I did a stupid thing... wait, what did you mean by that... that I would have done a stupid thing anyway?~
  IF ~~ THEN EXTERN ~KELDORJ~ Imoen2
END

IF ~~ THEN BEGIN MeetKr2
  SAY ~Aw, don't worry sir paladin, I am not one to be crabby for long... I'm sure we'll have lots of chances to get better acquainted.~
  IF ~True()~ THEN DO ~SetGlobal("VP_Imoen_Returns","GLOBAL",1) AddXPObject(Myself,1000000) JoinParty()~ EXIT
  IF ~Global("Kachiko_Saved","GLOBAL",2) InParty("Yoshimo") !Dead("Yoshimo") InParty("vpkachi") !Dead("vpkachi")~ THEN DO ~SetGlobal("VP_YoshimoExcuse","GLOBAL",1)~ EXTERN ~KACHIJ~ N32
END

IF ~~ THEN BEGIN KachiBye
  SAY ~Bye, Kachiko~
  IF ~~ THEN DO ~SetGlobal("VP_Imoen_Returns","GLOBAL",1) ActionOverride("Yoshimo",LeaveParty()) ActionOverride("Yoshimo",EscapeArea()) ActionOverride("vpkachi",LeaveParty()) ActionOverride("vpkachi",EscapeArea()) AddXPObject(Myself,1000000) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN KachiHi
  SAY ~That's good, Kachiko.~
  IF ~~ THEN DO ~SetGlobal("VP_Imoen_Returns","GLOBAL",1) AddXPObject(Myself,1000000) JoinParty()~ EXIT
END

END