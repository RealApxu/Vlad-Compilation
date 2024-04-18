APPEND IMOEN25J

IF ~~ THEN BEGIN KRst0
  SAY ~(Annoyingly) <CHARNAME>, <CHARNAME>, so tell me! I saw you sleeping together. So how is he, huh? And how are you? You liked it, didn't ya?~
=
~(Whispering in your ear) Listen, does he really have a beautiful and brawny body, that's what I think, does he? Does he?~
      IF ~~ THEN REPLY ~(Turning red) Imoen! You should be ashamed of yourself. Yes, we slept together, but I'm not going to tell you a thing...you shameless little...~ GOTO KRst1
      IF ~~ THEN REPLY ~(You're looking around in order to check whether Keldorn can hear you) C'mon, let's go where we can talk. Listen, I really did like it! You were right, it was great! (You're looking around again, whispering in to Imoen's ear afterwards) He's much more beautiful without his clothes.~ GOTO KRst2
      IF ~~ THEN REPLY ~What are you up to Imoen? You should take care of yourself, not be spying on others!~ GOTO KRst3
END

IF ~~ THEN BEGIN KRst1
  SAY ~(Making fun of you) Shameless person... It's you who is really shameless. You are not even married to him. And don't be all saints with me, sister.~
      IF ~~ THEN EXTERN KELDO25J LT12_Im0
END

IF ~~ THEN BEGIN KRst2
  SAY ~(Her eyes are glowing brightly) Oh, I so want to see him, at least with one eye! But you are even bathing in your clothes.~
=
~Oh, you can't imagine how much I envy you, <CHARNAME>. There is much more divinity in you, and what a great man you've got for yourself, and look at me... always the younger sister.~
      IF ~~ THEN EXTERN KELDO25J LT12_Im0
END

IF ~~ THEN BEGIN KRst3
  SAY ~(Pouting) You are so mean!~
      IF ~~ THEN EXTERN KELDO25J LT12_Im0
END

IF ~~ THEN BEGIN KRst4
  SAY #68088 /* ~Good luck, <CHARNAME>.  I'll miss ya... although somehow I just know we'll see each other again.  Maybe I'll getcha out of trouble again... ya never know!~ [IMOE2526] */
      IF ~~ THEN EXTERN FINSOL01 KR10
END

IF ~~ THEN BEGIN KRst5
  SAY #68091 /* ~So you're going to stay a mortal?  Wow!  After all that, we're going to end up on the road again.  Must feel good, though, to have your own future ahead of you again, though, no?~ [IMOE2525] */
      IF ~~ THEN GOTO KRst6
END

IF ~~ THEN BEGIN KRst6
  SAY #68092 /* ~It'll be the first time we'll be able to pick our path since we left Candlekeep!  I can't wait!!~ */
      IF ~~ THEN EXTERN FINSOL01 KR9
END

IF ~~ THEN BEGIN KRst7
  SAY #68088 /* ~Good luck, <CHARNAME>.  I'll miss ya... although somehow I just know we'll see each other again.  Maybe I'll getcha out of trouble again... ya never know!~ [IMOE2526] */
      IF ~~ THEN EXTERN FINSOL01 KR8
END

IF ~~ THEN BEGIN KRst8
  SAY #68091 /* ~So you're going to stay a mortal?  Wow!  After all that, we're going to end up on the road again.  Must feel good, though, to have your own future ahead of you again, though, no?~ [IMOE2525] */
      IF ~~ THEN GOTO KRst9
END

IF ~~ THEN BEGIN KRst9
  SAY #68092 /* ~It'll be the first time we'll be able to pick our path since we left Candlekeep!  I can't wait!!~ */
      IF ~~ THEN EXTERN FINSOL01 KR6
END
END