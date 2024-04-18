BEGIN WOLF

CHAIN
IF ~!CharName("Sime",LastTalkedToBy)~ THEN WOLF 0
~Veter looks at you with suspicion, and after a moment's inspection, it turns and gives you full view of its rear while it strolls to Sime.~
DO ~MoveToObject("Sime")~
EXIT

CHAIN
IF ~CharName("Sime",LastTalkedToBy)~ THEN WOLF 1
~Veter looks at Sime, its nose is twitching slightly, and its tail is shuddering...~
END
 ++ ~Veter, come here...~ EXTERN WOLF 2

CHAIN WOLF 2
~*Sime strokes Veter's head gently, and it suddenly turns into the figurine.*~
DO ~GiveItemCreate("Wolf","Sime",0,0,0) SetGlobal("VP_Veter","GLOBAL",1) SetGlobal("VP_VeterRest","GLOBAL",0) DestroySelf()~
EXIT