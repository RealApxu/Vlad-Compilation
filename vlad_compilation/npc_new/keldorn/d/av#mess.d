BEGIN AV#MESS

CHAIN
IF ~Global("VP_Talk_To_Keldorn","LOCALS",1)~ THEN AV#MESS AV#MESS1
~Sir Keldorn Firecam! Is there a sir Keldorn here?~
DO ~SetGlobal("VP_Talk_To_Keldorn","LOCALS",2)~
EXTERN KELDORJ AV#KR90a

CHAIN AV#MESS AV#MESS2
~Here's a letter from your wife, sir.~
EXTERN KELDORJ AV#KR90b