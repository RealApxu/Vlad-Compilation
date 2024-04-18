BEGIN CHRDRAG

CHAIN
IF ~NumTimesTalkedTo(0)~ THEN CHRDRAG 0
~It seems to me the Child of Bhaal is intensively looking for his true death... If you are going to live a little bit longer, you must defeat me... (*sadistic laugh*)~
= ~Don't panick. I'm just kidding...(*laughs again*). Now, get out of my sight.~
EXIT

CHAIN
IF ~NumTimesTalkedToGT(0)~ THEN CHRDRAG 2
~I see you're really annoying person. So be it...~
DO ~Enemy()~
  EXIT