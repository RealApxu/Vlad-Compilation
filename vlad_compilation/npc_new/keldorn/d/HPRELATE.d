CHAIN
IF WEIGHT #-99 ~Global("VP_Kr_ViccyWarTalk","GLOBAL",3) Global("VP_Kr_TheWar","GLOBAL",4)~ THEN HPRELATE GotoWar0
~Keldorn, <CHARNAME>? Your group is re... what, what is this? You have a drow in your group?~
DO ~SetGlobal("VP_Kr_ViccyWarTalk","GLOBAL",4)~
EXTERN KELDORJ Prelate_st0

CHAIN HPRELATE GotoWar1
~That is Drizzt DoUrden! This... this is...~
EXTERN VICONIJ Prelate_st0

CHAIN HPRELATE GotoWar2
~...and I suppose <CHARNAME> answers for her. (Casting a glance at Keldorn) You have changed greatly, Keldorn.~
DO ~SetGlobal("VP_Kr_TheWar","GLOBAL",5) ClearAllActions() StartCutSceneMode() StartCutScene("KRCut06")~
JOURNAL ~Thus, I was mobilized, along with the rest of my party. I wish I knew why I am being drawn into this damned war and what awaits me?~
EXIT

CHAIN
IF WEIGHT #-98 ~Global("VP_Kr_ViccyWarTalk","GLOBAL",4) Global("VP_Kr_TheWar","GLOBAL",4)~ THEN HPRELATE GotoWar3
~Keldorn, <CHARNAME>, I see your group is ready. Go then and serve the cause. You will join the forces of general Craumerdaun in Eshpurta. May Torm bless you!~
DO ~SetGlobal("VP_Kr_TheWar","GLOBAL",5) ClearAllActions() StartCutSceneMode() StartCutScene("KRCut06")~
JOURNAL ~Thus, I was mobilized, along with the rest of my party. I wish I knew why I am being drawn into this damned war and what awaits me?~
EXIT