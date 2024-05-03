BEGIN LADYALIA

CHAIN
IF WEIGHT #0 ~NumTimesTalkedTo(0) Global("VP_Kr_TheWar","GLOBAL",8) Global("VP_Talk_To_Keldorn","LOCALS",1)~ THEN LADYALIA 0
~Keldorn, my darling boy! How glad I am to see you... and you, my sweet <CHARNAME>. Keldorn has written of you many times, telling me how he could not have borne his sorrow without you. Those poor, sweet innocent girls...~
= ~(For a moment, a shadow passes over lady Alia's face as she recalls her grand daughters' fate... then she forced herself to smile at you and continues)~
= ~You know, my dear child, there was a young cleric from temple of Kelemvor asking for you. He left a package for you saying that it was very urgent. Marrius was very anxious that this should be delivered directly into your hands.~
DO ~SetGlobal("VP_Kr_TheWar","GLOBAL",9)~
EXTERN KELDORJ kelemring_st0

CHAIN
IF WEIGHT #-1 ~Global("VP_Talk_To_Keldorn","LOCALS",2)~ THEN LADYALIA 1
~I am so happy for you both! I never dared hope that I would live to see such a joyous day... come, let me give you both a hug!~
EXTERN KELDORJ Alia0

CHAIN LADYALIA 2
~No, not in the least! You made the right decision in choosing not to wait. Now I will not need to worry so much over you.~
EXTERN KELDORJ Alia1

CHAIN LADYALIA 3
~Because you will have a loving and caring wife beside you. Marriage will bring trust in each other, thus making you both stronger.~
DO ~SetGlobal("VP_Talk_To_Keldorn","LOCALS",3) SetGlobal("VP_Castle_Banters","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("KRCut20")~
EXIT

CHAIN LADYALIA 4
~Keldorn! The ladies can manage on their own. Come, I need you son.~
EXTERN FRIDA 3