BEGIN ~CHESS~

IF ~OR(2)
Global("ENDOFBG1","GLOBAL",2)
!Global("VP_CreateKachiko","GLOBAL",0)~ THEN BEGIN 0
  SAY ~Ah, my dear players. Welcome to the game of Chess. You have come such a long way looking for your souls, and so this is your next stop. I hope your stay with your families has been pleasant, but if you are bored, I have included this game to spice things up somewhat. There are some rules that must be adhered to while playing the game. The first one is to stay on your respective squares. Your King cannot move from his square, your queen may move into any square. The black bishop must stay to the black squares, while the white bishop keeps to the white square. The knights can travel anywhere, but always take the risk of some pain. Once the pawn reaches the last square, it turns into a new queen. If you move into a square that is restricted to you, lightning will be sent to punish your transgression.~
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY ~Remember, when one king falls the game is done. Let me announce the names of today's players. Hashimoto plays white, Nakanishi plays black.~
  IF ~~ THEN DO ~DestroySelf()~ EXIT
END