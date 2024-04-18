BEGIN YOSHIMOA

CHAIN
IF ~Global("VP_YoshimoExcuse","GLOBAL",3)~ THEN YOSHIMOA 0
~Yoshimo, I came for you... for your black heart... for your soul.~
EXTERN YOSHJ TS219

CHAIN YOSHIMOA 1
~I have a contract for your soul. You cannot live your miserable life with this burden anymore.~
EXTERN YOSHJ TS220

CHAIN YOSHIMOA 2
~I have no choice but to force you to give me your heart and your soul.~
DO ~SetGlobal("VP_YoshimoExcuse","GLOBAL",4) Enemy()~
EXIT