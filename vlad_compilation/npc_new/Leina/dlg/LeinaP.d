BEGIN VPLEIP

CHAIN
IF ~Global("KickedOut","LOCALS",0)~ THEN VPLEIP 0
~So, has the time come for our paths to divide, <CHARNAME>?~ [leinap01]
END
 ++ ~Yes Leina, it is time to make our farewells, but it may not be for good.~ EXTERN VPLEIP 1
 ++ ~I was hasty Leina please stay I do still have have need of you.~ EXTERN VPLEIP 2

CHAIN VPLEIP 1
~If that is your final word, I will return to the inn to assure Samuel that I am safe but I will not remain there for long. Goodbye to you, <CHARNAME>.~ [leinap02]
END
 IF ~!AreaCheck("AR0601") !AreaCheck("AR0602") !AreaCheck("AR0603") !AreaCheck("AR0410") !AreaCheck("AR0411") !AreaCheck("AR0412") !AreaCheck("AR0413") !AreaCheck("AR0414") !AreaCheck("AR1512") !AreaCheck("AR1513") !AreaCheck("AR1514") !AreaCheck("AR1515") !AreaCheck("AR1516") !AreaCheck("AR1501") !AreaCheck("AR1502") !AreaCheck("AR1503") !AreaCheck("AR1504") !AreaCheck("AR1505") !AreaCheck("AR1506") !AreaCheck("AR1507") !AreaCheck("AR1508") !AreaCheck("AR1509") !AreaCheck("AR1510") !AreaCheck("AR1511") !AreaCheck("AR2100") !AreaCheck("AR2101") !AreaCheck("AR2102") !AreaCheck("AR2200") !AreaCheck("AR2202") !AreaCheck("AR2203") !AreaCheck("AR2204") !AreaCheck("AR2205") !AreaCheck("AR2206") !AreaCheck("AR2207") !AreaCheck("AR2208") !AreaCheck("AR2209") !AreaCheck("AR2210") !AreaCheck("AR2300") !AreaCheck("AR2400") !AreaCheck("AR2401") !AreaCheck("AR2402") !AreaCheck("AR2900") !AreaCheck("AR2901") !AreaCheck("AR2902") !AreaCheck("AR2903") !AreaCheck("AR2904") !AreaCheck("AR2905") !AreaCheck("AR2906") Global("VP_OnIsland","GLOBAL",0) !Global("VP_InHalruaa","GLOBAL",1)~ THEN REPLY ~Farewell, Leina.~ EXTERN VPLEIP 3
 IF ~!AreaCheck("AR0301") !AreaCheck("AR0302") !AreaCheck("AR0303") !AreaCheck("AR0304") !AreaCheck("AR0305") !AreaCheck("AR0306") !AreaCheck("AR0307") !AreaCheck("AR0509") !AreaCheck("AR0510") !AreaCheck("AR0511") !AreaCheck("AR1102") !AreaCheck("AR1107") !AreaCheck("AR0801") !AreaCheck("AR0803") !AreaCheck("AR1300") !AreaCheck("AR1301") !AreaCheck("AR1302") !AreaCheck("AR1303") !AreaCheck("AR0601") !AreaCheck("AR0602") !AreaCheck("AR0603") !AreaCheck("AR0604") !AreaCheck("AR0605") !AreaCheck("AR0606") !InWatchersKeep()~ THEN REPLY ~You can't go there. I will ask that you remain here for I may have need of you soon.~ EXTERN VPLEIP 4

CHAIN VPLEIP 2
~I am pleased that you do still have need of me <CHARNAME>, let us proceede as we are then.~ [leinap03]
DO ~JoinParty()~
EXIT

CHAIN VPLEIP 3
~Farewell, <CHARNAME>.~ [leinap04]
DO ~SetGlobal("KickedOut","LOCALS",1) MoveGlobal("AR0511","vpleina",[584.1086])~
EXIT

CHAIN VPLEIP 4
~I will stay here, <CHARNAME>, and look for your return. Farewell and may luck be on your side.~ [leinap05]
DO ~SetGlobal("KickedOut","LOCALS",1)~
EXIT

IF ~Global("KickedOut","LOCALS",1) !Global("VP_Leina_Samuel","GLOBAL",7)~ THEN VPLEIP 5
~It is truly good to see you again, <GABBER>. Can I take it that your reappearance here means that you have need of me once more?~ [leinap06]
END
 ++ ~It is good to see you again Leina, and if you are free it is my intention to ask you to join with me once more. Are you free to consider my offer?~ EXTERN VPLEIP 6
 ++ ~I am sorry Leina, I have no room for you at this moment.~ EXTERN VPLEIP 7

CHAIN VPLEIP 6
~I have been hoping that you would pass this way again with such a request. I gladly accept, and I am ready to leave with you now, <GABBER>.~ [leinap07]
DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~
EXIT

CHAIN VPLEIP 7
~That is fine with me, though I will not remain here for long. Goodbye to you, <GABBER>.~ [leinap08]
EXIT

IF ~HappinessLT(Myself,-299)~ THEN VPLEIP 8
~I have closed my eyes to your harsh and ruthless ways, <CHARNAME>, long enough. I was grateful for your part in my release but I can no longer see this as a reason for me to continue to follow your evil ways. I would prefer to sever our ties and leave now.~
END
 ++ ~That is fine with me. I only took you in out of pity Leina, you would not have lasted long on the road by yourself. You have no fighting skills, or any skills that have been of any use to me, so go if you wish.~ EXTERN VPLEIP 9
 ++ ~Leave by all means Leina. You have been of little use to me anyway. That which you call music does appear to be your only talent. so you will, I am sure, find another bartender to take you in. Do as you wish.~ EXTERN VPLEIP 9

CHAIN VPLEIP 9
~It is my wish <CHARNAME>. It is also my wish that we never cross paths again. This is goodbye for ever.~
DO ~SetGlobal("VP_LeftHostile","LOCALS",1) SetGlobal("KickedOut","LOCALS",1) MoveGlobal("AR0511","vpleina",[584.1086])~
EXIT

CHAIN
IF WEIGHT #0 ~Global("VP_LeftHostile","LOCALS",1) Global("KickedOut","LOCALS",1) !Global("VP_Leina_Samuel","GLOBAL",7)~ THEN VPLEIP 10
~I asked you not to ever cross my path again, <GABBER>. I do not think that I have anything more to say to you.~
END
 ++ ~I thought you might be in a more amicable mood if I gave you time to cool down Leina, and that you might reconsider your earlier decision and join with us again. I can see that is not the case but the offer is still there for you to think on.~ EXTERN VPLEIP 11
 ++ ~I had hoped to change your mind and that you would join with us once more. I cannot help that you do not like the person that I am but we do have need of you Leina. If you will consider my offer maybe we can find a compromise and work together once more?~ EXTERN VPLEIP 12

CHAIN VPLEIP 11
~I stand by my first decision, <GABBER>. Your ways sickened me when we travelled together and I do not wish to subject myself to those ways again. I will no longer tolerate your presence. Goodbye, <GABBER>.~
EXIT

CHAIN VPLEIP 12
~Perhaps there is a way for us to work together, <GABBER>. If you truly have need of me then I will work with you once more but for only as long as I see a change in you. I will join you and we shall leave now.~
DO ~SetGlobal("KickedOut","LOCALS",0) SetGlobal("VP_LeftHostile","LOCALS",0) JoinParty()~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("VP_Leina_Is_Betrayed","GLOBAL",1) Global("VP_Govan_Bribes_Me","GLOBAL",0) !Global("VP_Leina_Samuel","GLOBAL",7) Gender(Player1,MALE)~ THEN VPLEIP 13
~You are despicable, <CHARNAME>! To think I foolishly expected some compassion from you. You are no different than the majority of the men in this world, know that I despise you and all that you stand for!~ [leina_14]
DO ~SetGlobal("VP_Govan_Bribes_Me","GLOBAL",1) ActionOverride("Govan2",EscapeArea()) ActionOverride("GovDude",EscapeArea()) ActionOverride("GovBud",EscapeArea()) MoveGlobal("AR0086","vpleina",[300.300])~
EXIT
 //If PC goes to speak with Samuel Thunderburp then => Scenario: The Five Flagons 1

CHAIN
IF WEIGHT #-2 ~Global("VP_Leina_Is_Betrayed","GLOBAL",1) Global("VP_Govan_Bribes_Me","GLOBAL",0) !Global("VP_Leina_Samuel","GLOBAL",7) Gender(Player1,FEMALE)~ THEN VPLEIP 14
~You... you would betray one of your own sex <CHARNAME>. You have as good as sold me to this man, is that not as abhorrent to you as it is to me?~ [leina_15]
EXTERN VPLEIP 15

CHAIN VPLEIP 15
~No, why should it be, you are devoid of compassion, that I can see. You are the same as he, <CHARNAME>.~ [leina_16]
DO ~SetGlobal("VP_Govan_Bribes_Me","GLOBAL",1) ActionOverride("Govan2",EscapeArea()) ActionOverride("GovDude",EscapeArea()) ActionOverride("GovBud",EscapeArea()) MoveGlobal("AR0086","vpleina",[300.300])~
EXIT
 //If PC goes to speak with Samuel Thunderburp then => Scenario: The Five Flagons 1

CHAIN
IF WEIGHT #-3 ~Global("VP_LeinaThanks","GLOBAL",1) !Global("VP_Leina_Samuel","GLOBAL",7)~ THEN VPLEIP 16
~It appears that I have you to thank for my freedom after all, <CHARNAME>.~ [leina_17]
DO ~SetGlobal("VP_LeinaThanks","GLOBAL",2)~
EXTERN VPLEIP 17

CHAIN VPLEIP 17
~Although it is obviously pride and revenge that brought you back here and not concern for my welfare.~ [leina_18]
EXTERN VPLEIP 18

CHAIN VPLEIP 18
~My freedom however, I still owe to you, so I will pay you the courtesy and say thank you.~ [leina_19]
END
 IF ~Global("SPRITE_IS_DEADAuberon","GLOBAL",0) Global("VP_AuberonBribesMe","GLOBAL",0)~ THEN REPLY ~As you say, Leina, I am not here out of concern for your welfare, but you are free. Make the most of it and your future and now be gone.~ EXTERN VPLEIP 19
 IF ~Global("SPRITE_IS_DEADAuberon","GLOBAL",0) Global("VP_AuberonBribesMe","GLOBAL",0)~ THEN REPLY ~You are free, Leina, the circumstances are not important. Just leave and be grateful.~ EXTERN VPLEIP 19
 IF ~OR(2) Global("SPRITE_IS_DEADAuberon","GLOBAL",1) Global("VP_AuberonBribesMe","GLOBAL",1)~ THEN REPLY ~As you say, Leina, I am not here out of concern for your welfare, but you are free. Make the most of it and your future and now be gone.~ EXTERN VPLEIP 22
 IF ~OR(2) Global("SPRITE_IS_DEADAuberon","GLOBAL",1) Global("VP_AuberonBribesMe","GLOBAL",1)~ THEN REPLY ~You are free, Leina, the circumstances are not important. Just leave and be grateful.~ EXTERN VPLEIP 22

CHAIN VPLEIP 19
~Good bye, <CHARNAME>. I will be sure to tell Samuel that I have you to thank for my rescue, he will not know of the diabolical way you have treated me, unless of course he presses me for answers and then I will not lie.~ [leina_20]
DO ~SetGlobal("VP_LeftHostile","LOCALS",1) SetGlobal("KickedOut","LOCALS",1) MoveGlobal("AR0511","vpleina",[584.1086])~
EXIT

CHAIN
IF WEIGHT #-4 ~Global("VP_LeinaAppears","GLOBAL",1) !Global("VP_Leina_Samuel","GLOBAL",7)~ THEN VPLEIP 20
~No, I think I would like to tell the Duvaines what sort of a son they have raised.~
DO ~SetGlobal("VP_LeinaAppears","GLOBAL",2) FaceObject("Govan3")~
EXTERN VPLEIP 21

CHAIN VPLEIP 21
~Hello, *DEAREST*, I guess you forgot to lock the door on your way out, *DARLING*!~ [leina_21]
EXTERN GOVAN3 6

CHAIN VPLEIP 22
~I wish you luck, <CHARNAME>, but you would be wise to make haste and leave the city.~ [leina_22]
EXTERN VPLEIP 23

CHAIN VPLEIP 23
~The Duvaines are very influential people, and it will not take them long to discover who is responsible for the death of the Duke and his family. Farewell.~ [leina_23]
DO ~SetGlobal("KickedOut","LOCALS",1) MoveGlobal("AR0509","vpleina",[365.374])~
EXIT
 //If PC does not follow Leina to the tavern, the group will be attacked at every opportunity. If PC does eventually go to the tavern then => Scenario: The Five Flagons 4

CHAIN
IF WEIGHT #-5 ~Global("VP_LeinaThanks2","GLOBAL",1) !Global("VP_Leina_Samuel","GLOBAL",7)~ THEN VPLEIP 24
~This has got so out of hand, <CHARNAME>, it is all such a horrible mess. I cannot believe that I have been the cause of so much pain and misery.~ [leina_24]
DO ~SetGlobal("VP_LeinaThanks2","GLOBAL",2)~
EXTERN VPLEIP 25

CHAIN VPLEIP 25
~We should talk to Samuel before news of this gets out, he will know what is to be done. I will make my way back to the tavern and talk to Samuel. I suggest you make haste and follow my lead.~ [leina_25]
DO ~SetGlobal("KickedOut","LOCALS",1) MoveGlobal("AR0509","vpleina",[365.374])~
EXIT

CHAIN VPLEIP 26
~(*She kisses the hafling man fondly*)... Then this is goodbye Samuel, thank you for all that you have done... your memory will always hold a place in my heart, you I shall never forget. Goodbye my friend.~
EXTERN VPLEIP 27

CHAIN VPLEIP 27
~(*She looks about the room and sighs*)... This lowly inn has afforded me more comfort and warmth than any place I have called home... I will not stay away long.~
DO ~SetGlobal("KickedOut","LOCALS",0)~
EXTERN FFBART NEJ91

CHAIN VPLEIP 28
~(*A look of disbelief comes to the bard's face*) Samuel... no! I will not travel with the likes of this person, please don't ask me to.~
EXTERN VPLEIP 29

CHAIN VPLEIP 29
~I would prefer to take my chances with whatever I meet on the road than put myself into the hands of a person who believes it is their right to sell the freedom of another for financial gain... I would not have expected such a suggestion from you Samuel!~
EXTERN FFBART NEJ124

CHAIN VPLEIP 30
~(*Defiantly*) I'll not go with them, and you should not have taken it upon yourself to presume that I would!~
EXTERN FFBART NEJ127

CHAIN
IF WEIGHT #-5 ~Global("VP_Leina_Samuel","GLOBAL",7)~ THEN VPLEIP 31
~Hello <CHARNAME>, the Five Flagons welcomes you once again. It has been good to visit Samuel, and to feel once again the warmth, the friendliness this old inn holds.~
EXTERN VPLEIP 32

CHAIN VPLEIP 32
~I see now that I was foolish to allow the bad memories to overshadow the many good ones... memories that Samuel has talked about incessantly since I arrived here.~
EXTERN VPLEIP 33

CHAIN VPLEIP 33
~Now, if you are here to ask for my aid once again, I am ready to resume our journey.~
END
 ++ ~Then join with me and let us away from here. Oh... and welcome back Leina.~ EXTERN VPLEIP 34
 ++ ~Although it was only a brief parting, you have been sorely missed Leina...please, rejoin with me and let us continue.~ EXTERN VPLEIP 34
 ++ ~No, I no longer have need of you bard. You walked out on me and I need allies that I can depend on... I am here for reasons that do not concern you. Goodbye Leina.~ EXTERN VPLEIP 37
 ++ ~I have no need for you at present Leina, but please, spend some more time here with Samuel... the respite has been good for you. I will return if I have need of you again.~ EXTERN VPLEIP 37

 CHAIN VPLEIP 34
~I need but a moment to say my farewells to Samuel... (*She kisses the old barkeep fondly*)... Farewell Samuel, take care and I promise to return as soon as I have seen this task of <CHARNAME>'s through.~
EXTERN FFBART NEJ173

 CHAIN VPLEIP 35
~Do not worry for me my friend. I half hope that Bjorn does find me, it's time to end this unhappy chapter in my life, erase him from it once and for all. New chapters are being written, even as we stand here...~
EXTERN VPLEIP 36

 CHAIN VPLEIP 36
~Now, I must leave you again my friend, farewell... Come <CHARNAME>, let us make a start on those new chapters.~
DO ~SetGlobal("KickedOut","LOCALS",0) SetGlobal("VP_Leina_Samuel","GLOBAL",8) SetGlobal("VP_Errant_Husband","GLOBAL",1) JoinParty()~
EXIT

 CHAIN VPLEIP 37
~I'll not say I am not disappointed, I have missed the adventure and the intrigue that surrounds you <CHARNAME>. I had hoped to learn more of this particular god child.~
EXTERN VPLEIP 38

 CHAIN VPLEIP 38
~Still, I am more than happy to spend more time at The Five Flagons, and with Samuel. Please, I will be here if you find you should have need of me at some future time. Farewell and good luck to you...~
EXTERN VPLEIP 39

 CHAIN VPLEIP 39
~(*As she turns away she picks up her lute*) Come Samuel, let us make some more joyful memories...~
DO ~SetGlobal("VP_Leina_Samuel","GLOBAL",8)~
EXIT

CHAIN
IF WEIGHT #-6 ~Global("VP_LeinaVampire","GLOBAL",5) Global("VP_OnIsland","GLOBAL",0)~ THEN VPLEIP 40
~Is it you, my love? That is a happy dream. I was yearning to dream of you for so long! You are just like I remember you, and you smile... I want to kiss you so much! Please, do not go away until I do. It is strange to beg a dream not to go away. Amazing how we have so little control over our dreams.~
END
 ++ ~It is no dream, Leina. It is for real. I took you away from Bodhi's clutches and I brought you back to life. And you think that after all these troubles I will simply leave you? No way, milady, no way! You are stuck with me now.~ DO ~EraseJournalEntry(32084) EraseJournalEntry(32085) EraseJournalEntry(16351) EraseJournalEntry(7002) EraseJournalEntry(3716) EraseJournalEntry(5814) EraseJournalEntry(16331) EraseJournalEntry(11864) EraseJournalEntry(3374) EraseJournalEntry(3377) EraseJournalEntry(3927) EraseJournalEntry(15710) EraseJournalEntry(6589) EraseJournalEntry(79170) EraseJournalEntry(79181) SetGlobal("VP_LeinaVampire","GLOBAL",6)~ EXTERN VPLEIP 41
 ++ ~A dream? Do dreams kiss like that? (*You give Leina a deep kiss*)~ DO ~EraseJournalEntry(32084) EraseJournalEntry(32085) EraseJournalEntry(16351) EraseJournalEntry(7002) EraseJournalEntry(3716) EraseJournalEntry(5814) EraseJournalEntry(16331) EraseJournalEntry(11864) EraseJournalEntry(3374) EraseJournalEntry(3377) EraseJournalEntry(3927) EraseJournalEntry(15710) EraseJournalEntry(6589) EraseJournalEntry(79170) EraseJournalEntry(79181) SetGlobal("VP_LeinaVampire","GLOBAL",6)~ EXTERN VPLEIP 42
 ++ ~Leina, that's me, <CHARNAME>! Can you hear me? You are going to be alright! Breathe deeply and here is some Elven water for you to drink! You are alive!~ DO ~EraseJournalEntry(32084) EraseJournalEntry(32085) EraseJournalEntry(16351) EraseJournalEntry(7002) EraseJournalEntry(3716) EraseJournalEntry(5814) EraseJournalEntry(16331) EraseJournalEntry(11864) EraseJournalEntry(3374) EraseJournalEntry(3377) EraseJournalEntry(3927) EraseJournalEntry(15710) EraseJournalEntry(6589) EraseJournalEntry(79170) EraseJournalEntry(79181) SetGlobal("VP_LeinaVampire","GLOBAL",6)~ EXTERN VPLEIP 43

CHAIN VPLEIP 41
~I am it seems. I... I am sorry... I am not crying, it is just... well tears pouring out of my eyes. I love you, <CHARNAME>, I love you so much!~
DO ~SetGlobal("Kicked_Out","LOCALS",0) JoinParty()~
EXIT

CHAIN VPLEIP 42
~(*Matches your kiss and embraces you tightly*)~
DO ~SetGlobal("Kicked_Out","LOCALS",0) JoinParty()~
EXIT

CHAIN VPLEIP 43
~Ouch! This holy water is cold! I am awake now, stop pouring it over me! I am bloody glad to see you... Ahem, sorry, very glad to see you.~
DO ~SetGlobal("Kicked_Out","LOCALS",0) JoinParty()~
EXIT