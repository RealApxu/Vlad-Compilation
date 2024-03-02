REPLACE_TRIGGER_TEXT ~CECHALLE~
~Class(Player1,DRUID_ALL)[^!]*
LevelGT(Player1,13)[^!]*
Global("GreatDruid","GLOBAL",0)[^!]*
!Global("GaveTitle","LOCALS",1)~
~Global("DruidLevel14","AR1901",1)
Global("GreatDruid","GLOBAL",0)
!Global("GaveTitle","LOCALS",1)~

REPLACE_TRIGGER_TEXT ~CECHALLE~
~Class(Player1,DRUID_ALL)[^!]*
LevelLT(Player1,14)[^!]*
Global("GreatDruid","GLOBAL",0)[^!]*
!Global("GaveTitle","LOCALS",1)~
~Global("DruidLevel14","AR1901",2)
Global("GreatDruid","GLOBAL",0)
!Global("GaveTitle","LOCALS",1)~

//state #2

