BEGIN ~KEEPER~

IF ~~ THEN BEGIN 0
  SAY ~I apologize, but I cannot allow you to leave.  Gorion wishes to see you as soon as possible.~
  IF ~~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 1
  SAY ~Hold, travelers!  Before you will be allowed entrance, you must donate a tome of great value to our libraries.~ [AJAN03]
  IF ~~ THEN REPLY ~We don't have a book, but I used to live here.~ GOTO 2
  IF ~  PartyHasItem("BOOK68")
~ THEN REPLY ~I have this Book of Ancient Knowledge.~ DO ~TakePartyItem("BOOK68")
SetGlobal("VP_Inside_CK","GLOBAL",1)
~ GOTO 4
  IF ~  PartyHasItem("BOOKCOR")
~ THEN REPLY ~I have Ancient Lore on Corellon Larethian.~ DO ~TakePartyItem("BOOKCOR")
SetGlobal("VP_Inside_CK","GLOBAL",1)
~ GOTO 4
  IF ~  PartyHasItem("BOOKHIP")
~ THEN REPLY ~I have Hippogriff Riders of the Hand.~ DO ~TakePartyItem("BOOKHIP")
SetGlobal("VP_Inside_CK","GLOBAL",1)
~ GOTO 4
  IF ~  PartyHasItem("BOOKLAB")
~ THEN REPLY ~I have Ancient Lore on Labelas Enoreth.~ DO ~TakePartyItem("BOOKLAB")
SetGlobal("VP_Inside_CK","GLOBAL",1)
~ GOTO 4
  IF ~  PartyHasItem("BOOKMOO")
~ THEN REPLY ~I have Ancient Lore on Sehanine Moonbow.~ DO ~TakePartyItem("BOOKMOO")
SetGlobal("VP_Inside_CK","GLOBAL",1)
~ GOTO 4
  IF ~  PartyHasItem("BOOKMYT")
~ THEN REPLY ~I have Mythal Theory.~ DO ~TakePartyItem("BOOKMYT")
SetGlobal("VP_Inside_CK","GLOBAL",1)
~ GOTO 4
  IF ~  PartyHasItem("BOOKROC")
~ THEN REPLY ~I have this strange book about Rock Eaters.~ DO ~TakePartyItem("BOOKROC")
SetGlobal("VP_Inside_CK","GLOBAL",1)
~ GOTO 4
  IF ~  PartyHasItem("BOOKSHE")
~ THEN REPLY ~I have Ancient Lore on Shevarash.~ DO ~TakePartyItem("BOOKSHE")
SetGlobal("VP_Inside_CK","GLOBAL",1)
~ GOTO 4
  IF ~  PartyHasItem("BOOKSOL")
~ THEN REPLY ~I have Ancient Lore on Solonor Thelandira.~ DO ~TakePartyItem("BOOKSOL")
SetGlobal("VP_Inside_CK","GLOBAL",1)
~ GOTO 4
  IF ~  PartyHasItem("BOOKUNI")
~ THEN REPLY ~I have Ecology of the Unicorn.~ DO ~TakePartyItem("BOOKUNI")
SetGlobal("VP_Inside_CK","GLOBAL",1)
~ GOTO 4
  IF ~  PartyHasItem("BOOKWOR")
~ THEN REPLY ~I have Worship in the Hand of the Seldarine.~ DO ~TakePartyItem("BOOKWOR")
SetGlobal("VP_Inside_CK","GLOBAL",1)
~ GOTO 4
  IF ~  PartyHasItem("BOOKPK")
~ THEN REPLY ~I have Philosophy of Kara-Tur.~ DO ~TakePartyItem("BOOKPK")
SetGlobal("VP_Inside_CK","GLOBAL",1)
~ GOTO 4
  IF ~  PartyHasItem("BOOKBLA")
~ THEN REPLY ~I have Lore of the Bladesingers.~ DO ~TakePartyItem("BOOKBLA")
SetGlobal("VP_Inside_CK","GLOBAL",1)
~ GOTO 4
  IF ~  PartyHasItem("BOOKCOD")
~ THEN REPLY ~I have Code of Training in the Seldarine's Hand.~ DO ~TakePartyItem("BOOKCOD")
SetGlobal("VP_Inside_CK","GLOBAL",1)
~ GOTO 4
  IF ~  PartyHasItem("BOOKFIS")
~ THEN REPLY ~I have Fish on the Sea of Fallen Stars.~ DO ~TakePartyItem("BOOKFIS")
SetGlobal("VP_Inside_CK","GLOBAL",1)
~ GOTO 4
  IF ~  PartyHasItem("BOOKFOL")
~ THEN REPLY ~I have The Folly of Fury.~ DO ~TakePartyItem("BOOKFOL")
SetGlobal("VP_Inside_CK","GLOBAL",1)
~ GOTO 4
  IF ~  PartyHasItem("BOOKIVY")
~ THEN REPLY ~I have Tending Ivy.~ DO ~TakePartyItem("BOOKIVY")
SetGlobal("VP_Inside_CK","GLOBAL",1)
~ GOTO 4
  IF ~  PartyHasItem("BOOKPOT")
~ THEN REPLY ~I have Great Pottery of Lurien.~ DO ~TakePartyItem("BOOKPOT")
SetGlobal("VP_Inside_CK","GLOBAL",1)
~ GOTO 4
  IF ~  PartyHasItem("BOOKSS")
~ THEN REPLY ~I have this book about Secret Societies.~ DO ~TakePartyItem("BOOKSS")
SetGlobal("VP_Inside_CK","GLOBAL",1)
~ GOTO 4
  IF ~  PartyHasItem("BOOKVIO")
~ THEN REPLY ~I have the book On Non-Violence.~ DO ~TakePartyItem("BOOKVIO")
SetGlobal("VP_Inside_CK","GLOBAL",1)
~ GOTO 4
  IF ~  PartyHasItem("BOOKCOM")
~ THEN REPLY ~I have the ancient Elameth's Compendium.~ DO ~TakePartyItem("BOOKCOM")
SetGlobal("VP_Inside_CK","GLOBAL",1)
~ GOTO 4
  IF ~  !PartyHasItem("BOOK68")
!PartyHasItem("BOOKCOR")
!PartyHasItem("BOOKHIP")
!PartyHasItem("BOOKLAB")
!PartyHasItem("BOOKMOO")
!PartyHasItem("BOOKMYT")
!PartyHasItem("BOOKROC")
!PartyHasItem("BOOKSHE")
!PartyHasItem("BOOKSOL")
!PartyHasItem("BOOKUNI")
!PartyHasItem("BOOKWOR")
!PartyHasItem("BOOKPK")
!PartyHasItem("BOOKBLA")
!PartyHasItem("BOOKCOD")
!PartyHasItem("BOOKFIS")
!PartyHasItem("BOOKFOL")
!PartyHasItem("BOOKIVY")
!PartyHasItem("BOOKPOT")
!PartyHasItem("BOOKSS")
!PartyHasItem("BOOKVIO")
!PartyHasItem("BOOKCOM")
~ THEN REPLY ~We have the book you require.~ GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY ~I am sorry friend.  I know that you are the child of Gorion and have dwelt here all your life, but I cannot exempt anyone from the sanctions of the most high Ulraunt.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY ~Don't lie to me child.  You do not possess the proper book.  When you do, you may return, and I will allow you entry.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY ~You have met the requirements to gain entry to our most holy library.  It is fine to see the child of Gorion once again within these hallowed grounds.  Please have your less civilized friends refrain from causing trouble.  We are very strict with the letter of the law, as you well know, <CHARNAME>.~
  IF ~~ THEN DO ~ClearAllActions()
StartCutScene("Ch6cut01")
~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~I hope your time here was fruitful.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY ~You are accused of murdering the leaders of the Iron Throne.  Give yourselves up and stand a chance of a fair trial!~
  IF ~~ THEN REPLY ~I didn't do it, and I'll not surrender for a crime I didn't commit.~ EXIT
  IF ~~ THEN REPLY ~I surrender.~ GOTO 8
END

IF ~~ THEN BEGIN 7
  SAY ~Hold, travelers!  Before you will be allowed entrance, you must donate a tome of great value to our libraries.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY ~You have made a wise decision.~
  IF ~~ THEN EXIT
END