BEGIN ~DCai~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~How in the Nine Hells did you lot find your way here? No matter, you will not be getting out the same way. There will be a lot of reprimands to be handed out once I have dealt with you rabble.~
  IF ~~ THEN REPLY ~Put away your weapons whoever you are. There is no need for more bloodshed.~ GOTO 1
  IF ~~ THEN REPLY ~I am here for Leina, you need not forfeit your own life on her account, just let her come with me.~ GOTO 1
  IF ~~ THEN REPLY ~I have dealt with your lackeys, so there will be need for reprimands now or later. If you do not wish to suffer the same fate, then I suggest you release Leina, now!~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY ~I have my orders. No stranger comes in here unless accompanied by Vulova himself and as I do not see him amongst you, I am going to presume that you have murdered him. If that is the case, you would do well to know that my orders do not change. Men, finish this rabble now!!~
  IF ~~ THEN DO ~Shout(89) Enemy()~ EXIT
END