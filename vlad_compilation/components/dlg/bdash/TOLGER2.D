REPLACE TOLGER2
    IF ~Global("TalkedToTolgerias","GLOBAL",0)
    Dead("Valygar")~ THEN BEGIN 5
      SAY #61300
      IF ~~ THEN DO ~ActionOverride("tolmag01",Enemy())
    Enemy()~ EXIT
    END
END