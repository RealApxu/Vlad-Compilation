//Not a fix
REPLACE VAELASA

IF ~~ THEN BEGIN 8
 SAY ~Thank you, <CHARNAME>. The forest welcomes you. I am so grateful to you for your help that I want other dryads, that you can meet on your way, to know that you are a good friend of ours. Please, take this to remember us by. There has been evil near here and I pray for your safety as you travel. Good bye! (She takes off her necklace)~
 IF ~OR(2)
!InParty("vpshart")
Dead("vpshart")~ THEN DO ~SetGlobal("frLeaveDryads","ar1200",1)
GiveItemCreate("kamul111",Player1,0,0,0)
EraseJournalEntry(34092)
EraseJournalEntry(34093)
EscapeArea()~ SOLVED_JOURNAL ~Helping Irenicus' captive dryads.

I have returned their acorns to the Fairy Queen, Vaelasa, and the dryads captive in Irenicus' dungeon have been freed. All have left to plant the acorns and allow their trees to grow once again, and Vaelasa herself expressed both her welcome and gratitude for my deed.~ EXIT
END

END