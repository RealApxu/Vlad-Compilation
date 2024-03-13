REPLACE_STATE_TRIGGER GARREN 39
~Global("Kidnap","GLOBAL",4) OR(2) Dead("firkra02") Dead("firkra04") Global("NoXpRepeat","LOCALS",0)~

REPLACE_STATE_TRIGGER GARREN 40
~Global("Kidnap","GLOBAL",4) !Dead("firkra02") !Dead("firkra04") Global("NoXpRepeat","LOCALS",0)~

REPLACE_STATE_TRIGGER GARREN 41
~OR(2) Dead("firkra02") Dead("firkra04") OR(2) Dead("garkid01") Dead("garkid02") Global("NoXpRepeat","LOCALS",0)~

REPLACE_STATE_TRIGGER GARREN 42
~!Dead("firkra02") !Dead("firkra04") OR(2) Dead("garkid01") Dead("garkid02") Global("NoXpRepeat","LOCALS",0)~