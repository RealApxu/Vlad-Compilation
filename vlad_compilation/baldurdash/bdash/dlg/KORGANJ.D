//Fixing Korgan's stutter (Not a fix)
REPLACE_STATE_TRIGGER KORGANJ 2
~Global("KorganTomb","GLOBAL",1)
Global("KorganMummy","GLOBAL",0)
!Dead("Mummy03")
See("Mummy03")~

REPLACE_STATE_TRIGGER KORGANJ 28
~Dead("Mummy03")
AreaCheck("AR0802")
Global("TombEmpty","LOCALS",0)~