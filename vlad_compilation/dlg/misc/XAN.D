APPEND ~XAN~

IF WEIGHT #-3 ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER) GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s0
  SAY ~It was unbearable; waking each morn to the mud and rock instead of the rising sun.  I am Xan, a Greycloak of Evereska, and as proficient in the ways of magic as any man can be.  If you be enemies of Mulahey I would join your cause, hopeless though it is.~
  IF ~~ THEN REPLY ~Certainly you are welcome to join with me.  Another pair of hands can only help, especially when they are proficient in the ways of magic.~ GOTO s5
  IF ~~ THEN REPLY ~It�s hard enough trying to keep our hopes up without you to bring them down.  I�d rather you didn�t join us.~ GOTO s4
  IF ~~ THEN REPLY ~How did you come to be trapped in such an inhospitable place?~ GOTO s2
END

IF WEIGHT #-2 ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER) ReactionGT(LastTalkedToBy,HOSTILE_UPPER) GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s1
  SAY ~At last I am free of my dreary prison; five and eighty days are far too long for one of the fair folk to live as a dwarf.  You look no better off than I, but my appreciation for my liberty bids me add my spells to your cause.  I am Xan; shall we face the impossible together?~
  IF ~~ THEN REPLY ~Certainly you are welcome to join with me.  Another pair of hands can only help, especially when they wield powerful magic.~ GOTO s5
  IF ~~ THEN REPLY ~It�s hard enough trying to keep our hopes up without you to bring them down.  I�d rather you didn�t join us.~ GOTO s4
  IF ~~ THEN REPLY ~How did you come to be trapped in such an inhospitable place?~ GOTO s2
END

IF ~~ THEN BEGIN s2
  SAY ~Alas, I was sent to investigate the strange goings-on about this area and I landed caged for seemingly hopeless weeks on end.  I have not seen the sun almost as long as I have not seen my home.~
  IF ~~ THEN REPLY ~Certainly you are welcome to join with me.  Another pair of hands can only help, especially when they wield powerful magics.~ GOTO s5
  IF ~~ THEN REPLY ~It�s hard enough trying to keep our hopes up without you to bring them down.  I�d rather you didn�t join us.~ GOTO s4
  IF ~~ THEN REPLY ~If that is the case, I don�t want you in my group.  How effective can you be if you were captured by this lot.~ GOTO s6
END

IF WEIGHT #-1 ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER) GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s3
  SAY ~I thank you for my rescue but I must leave quickly.  I wish you well in your struggle, though it is surely lost.~
  IF ~~ THEN DO ~TakePartyItem("SW1H13") MoveToPoint([113.695]) EscapeAreaDestroy(90)~ EXIT
END

IF ~~ THEN BEGIN s4
  SAY ~I understand your decision, for the odds are surely insurmountable.  I shall return unto Evereska and report of these dire straits.~
  IF ~~ THEN DO ~TakePartyItem("SW1H13") MoveToPoint([113.695]) EscapeAreaDestroy(90)~ JOURNAL ~Rescue of Xan in the Nashkel mines.

I rescued an elf named Xan from the mines in Nashkel.  Quite a despondent fellow, actually.  He was investigating the problems in the region just as I am.  We probably could have worked together, but I did not like his manner.~ EXIT
END

IF ~~ THEN BEGIN s5
  SAY ~I thank you.  However ineffective our actions be, I shall not rest until I have made payment to you.  If you have searched through Mulahey�s treasure you may have found a sword among his documents.  The sword is a moonblade and it is my most valued possession.~
  IF ~~ THEN DO ~JoinParty()~ JOURNAL ~Rescue of Xan in the Nashkel mines.

I rescued an elf named Xan from the mines in Nashkel.  Quite a despondent fellow, actually.  He was investigating the problems in the region just as I am, so I accepted his offer to join with me.~ EXIT
END

IF ~~ THEN BEGIN s6
  SAY ~There is no need to be rude.  I will go back to my home in Evereska, and leave the lot of you to your hopeless quest.~
  IF ~~ THEN DO ~TakePartyItem("SW1H13") MoveToPoint([113.695]) EscapeAreaDestroy(90)~ JOURNAL ~Rescue of Xan in the Nashkel mines.

I rescued an elf named Xan from the mines in Nashkel.  Quite a despondent fellow, actually.  He was investigating the problems in the region just as I am.  We probably could have worked together, but I did not like his manner.~ EXIT
END

IF ~~ THEN BEGIN s7
  SAY ~I apologize if I seem abrupt, but I must be leaving, and quickly.~
  IF ~~ THEN EXIT
END

IF WEIGHT #-4 ~StateCheck(Myself,STATE_CHARMED) GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s8
  SAY ~If you are interested friend, I am a Greycloak from Evereksa.  It is my duty to watch over the political events of the human nations along our borders.  From what I have learned so far, there is some sort of mercantile organization known as the Iron Throne that has been trying to cause turmoil along the Sword Coast.  To what end I could not tell you, as I was captured before learning any more.~
  IF ~~ THEN JOURNAL ~Rescue of Xan in the Nashkel mines.

While in the Nashkel mines, I rescued an elf named Xan. When charmed he revealed that there is some sort of mercantile organization known as the Iron Throne that has been trying to cause turmoil along the Sword Coast.  To what end, he could not say.~ EXIT
END

IF ~False()~ THEN BEGIN s9
  SAY ~This whole mission has been a dismal failure from the very start. Consider my debt repaid, friends, as I certainly do.~
  IF ~~ THEN EXIT
END

IF ~False()~ THEN BEGIN s10
  SAY ~While my stay with you was admittedly fruitless, it has, at least, been fun. I might even enjoy sharing another ill-fated adventure with you, should you ever require the use of my considerable talents.~
  IF ~~ THEN EXIT
END

END