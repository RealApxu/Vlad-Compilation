BEGIN MASAKI

CHAIN
IF ~NumberOfTimesTalkedTo(0) Global("Kachiko_Kidnapped","GLOBAL",0) Global("Masaki_Meet","GLOBAL",0)~ THEN MASAKI 0
~Kachiko! You have returned and brought the fugitive Yoshimo back. Well done, the spirit of true kensai and true Nakanishi is in you, girl. I am happy to be the first to greet you upon your return.~
DO ~SetGlobal("Masaki_Meet","GLOBAL",1)~
EXTERN VPKACJ N21

CHAIN MASAKI 1
~I had been young and foolish and did not want beautiful Kachiko to wonder far away from those who love her. But your deed honors our family. I would see that you have the privilege of executing the murderer.~
EXTERN VPKACJ N22

CHAIN MASAKI 2
~We are at home my dearest Kachiko, and the better home it is. No silly law is above us here and you do not have to go through the pains of trial and shifty advocates to accuse Yoshimo. Nor can he run. We, Nakanishi ourselves will exact punishment on him for killing our beloved brother, Naoko.~
EXTERN VPKACJ N23

CHAIN MASAKI 3
~All in good time. First, let us get rid of this Hashimoto scum...~
EXTERN VPKACJ N24

CHAIN MASAKI 4
~No, my dear - I defend Nakanishi�s honor. It is you who disgrace your family, consorting with the enemy in the time of dire need. Us, Nakanishi shall stand together against evil Hashimoto clan. Did you forget your duty completely in the foreign parts? Kill him and leave the side of these outlandish mercenaries. No earlier than that will the gates of our house be open for you.~
EXTERN VPKACJ N25

CHAIN MASAKI 5
~That I do, my sweet cousin. You shall bend to my will or we shall treat you as a Hashimoto�s consort. You are Nakanishi no more.~
EXTERN VPKACJ N26

CHAIN MASAKI 6
~Fool girl! Ha-ha-ha... (*laughs threateningly*)~
DO ~EscapeArea()~
EXIT

CHAIN MASAKI 7
~Fool girl! You have been seen entering and leaving Hashimoto�s compound. Do you dare to deny it?~
EXTERN VPKACJ N27

CHAIN MASAKI 8
~I see. These foreigners have brainwashed you. But we are going to return you to your proper place in the family.~
DO ~SetGlobal("Kachiko_Kidnapped","GLOBAL",1) StartCutSceneMode() StartCutScene("TSCutK01")~
EXIT

CHAIN
IF ~Global("Kachiko_Kidnapped","GLOBAL",0) Global("Masaki_Meet","GLOBAL",1) Global("Hashimoto_Visited","GLOBAL",1)~ THEN MASAKI 9
~Fool girl! You have been seen entering and leaving Hashimoto�s compound. Do you dare to deny it?~
EXTERN VPKACJ N27

CHAIN
IF ~Global("Kachiko_Kidnapped","GLOBAL",3) Global("Alome_Meet","GLOBAL",1)~ THEN MASAKI 10
~You are stupid enough to come here? Do not you know that Nakanishi hold the dungeon now?~
END
 IF ~Global("Kachiko_Hostile","GLOBAL",0) Global("TT_Evil_Path","GLOBAL",0)~ THEN DO ~SetGlobal("Kachiko_Kidnapped","GLOBAL",4)~ EXTERN YOSHJ TS193
 IF ~OR(2) Global("Kachiko_Hostile","GLOBAL",1) Global("TT_Evil_Path","GLOBAL",2)~ THEN DO ~SetGlobal("Kachiko_Kidnapped","GLOBAL",4)~ EXTERN YOSHJ TS194

CHAIN MASAKI 11
~Fool! Pathetic fool! For Nakanishi�s honor we shall strike you and the foreigners you aligned yourself with!~
DO ~StartCutSceneMode() ActionOverride(Myself,ForceSpell(Myself,DRYAD_TELEPORT)) ActionOverride(Myself,EndCutSceneMode())~
EXIT

CHAIN
IF ~Global("Kachiko_Kidnapped","GLOBAL",4)~ THEN MASAKI 12
~Doing your best to stay alive? Let me tell you that it is not good enough! You cannot resist Nakanishi for much longer! For Nakanishi�s honor!~
DO ~SetGlobal("Kachiko_Kidnapped","GLOBAL",5)~
EXTERN YOSHJ TS195

CHAIN MASAKI 13
~Me? Fight scum like you? Ha-ha-ha...~
DO ~StartCutSceneMode() ActionOverride(Myself,ForceSpell(Myself,DRYAD_TELEPORT)) ActionOverride(Myself,EndCutSceneMode())~
EXIT

CHAIN
IF ~Global("Kachiko_Kidnapped","GLOBAL",5) ~ THEN MASAKI 14
~I see, that I would have to finish you off...short of doing it yourself, you would never get it done... Defend yourself! For Nakanishi�s honor!~
DO ~SetGlobal("Kachiko_Kidnapped","GLOBAL",6) Enemy()~
EXIT