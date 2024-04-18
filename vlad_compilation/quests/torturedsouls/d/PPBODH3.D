REPLACE_STATE_TRIGGER PPBODHI3 0
~NumTimesTalkedTo(0) Global("Start_Island","GLOBAL",0)~

CHAIN PPBODHI3 TS23
~I am not for walking in the blazing sun on a deserted beach... I will find some cool quiet place to rest on this accursed Island and then we shall see...~
END
 ++ ~Great, stay with the ship then, I do not fully trust Saemon. It might easily be his own ploy to get the cash and avoid a dangerous sailing to Spellhold.~ EXTERN PPBODHI3 TS24

CHAIN PPBODHI3 TS24
~<CHARNAME>, I sense something very wrong with this island. Please, watch your steps. Perhaps, you will need my assistance yet.~
DO ~EscapeArea()~
EXIT

CHAIN
IF ~GlobalGT("Start_Island","GLOBAL",0) Global("VP_Bodhi_Joins","GLOBAL",1)~ THEN PPBODHI3 TS25
~I see, you come to seek refuge in this 'peaceful' place as well...~
END
 ++ ~Peaceful? Are you mocking me? Bodhi, we are fighting for our lives here! Look, my companions and I carry grievous wounds and Kachiko was taken from us! We have no choice but to fight - that's our only hope to get off this Island!~ EXTERN PPBODHI3 TS26

CHAIN PPBODHI3 TS26
~Ahem... I have also a big problem staying in this dungeon. Those beasties turned to stone all my faithful servants, and I am afraid of my destiny as well... Moreover, I cannot allow you to get yourself killed on this island, can I? I myself shall go with you and see that you will be through it and that all of us can be away from here...~
END
 ++ ~Bodhi, your help would be very timely! Come along!~ EXTERN PPBODHI3 TS27
 ++ ~On the second thought it's better to have no ally, rather than an ally you cannot trust! I do not want your help!~ EXTERN PPBODHI3 TS28

CHAIN PPBODHI3 TS27
~And so I shall. Lead on!~
DO ~SetGlobal("VP_Bodhi_Joins","GLOBAL",2) JoinParty()~
EXIT

CHAIN PPBODHI3 TS28
~As you wish, you proud imbecile. My offer stands. Come back and beg for my help any time.~
DO ~SetGlobal("VP_Bodhi_Joins","GLOBAL",3)~
EXIT

CHAIN
IF ~Global("VP_Bodhi_Joins","GLOBAL",3)~ THEN PPBODHI3 TS29
~Did you come back to beg my assistance?~
END
 ++ ~No, just to check you're okay. I do not need your help.~ EXTERN PPBODHI3 TS28
 ++ ~Bodhi, your help would be very timely! Come along!~ EXTERN PPBODHI3 TS27

CHAIN
IF ~Global("VP_Bodhi_Joins","GLOBAL",4)~ THEN PPBODHI3 TS30
~I must go and check if the treacherous captain and his ship are still on the island... See you later...~
DO ~SetGlobal("VP_Bodhi_Joins","GLOBAL",5) LeaveParty() EscapeArea()~
EXIT