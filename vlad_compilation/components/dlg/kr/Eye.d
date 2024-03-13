BEGIN ~EYE~

IF ~OR(2) NumTimesTalkedTo(0) Global("VP_Talk_To_Keldorn","LOCALS",1)~ THEN BEGIN 0
  SAY ~What brings you here, mortal? Why do you intrude upon our peace?~
  IF ~~ THEN DO ~SetGlobal("VP_Talk_To_Keldorn","LOCALS",2)~ REPLY ~Do you know how do I get out of here... how do I return to my own world?~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY ~Yes, I know a lot... but I do not share my knowledge for free, the price depends on your question.~
  IF ~OR(5) PartyHasItem("chocquas") PartyHasItem("kidsoil") PartyHasItem("darkdrop") PartyHasItem("lightdrp") PartyHasItem("daggerfr")~ THEN GOTO 1A
  IF ~!PartyHasItem("chocquas") !PartyHasItem("kidsoil") !PartyHasItem("darkdrop") !PartyHasItem("lightdrp") !PartyHasItem("daggerfr")~ THEN REPLY ~No, thank you... on second thoughts I will find an answer myself.~ EXIT
END

IF ~~ THEN BEGIN 1A
  SAY ~You have collected some things, but you know not their value. I can take some of them from you as payment.~
  IF ~~ THEN REPLY ~Can I learn what these things are?~ GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY ~You give one of them, you learn about the rest. Tell me first what you give, then you will get your answer.~
  IF ~PartyHasItem("chocquas")~ THEN REPLY ~Chocolate quasit.~ DO ~TakePartyItem("chocquas") DestroyItem("chocquas")~ GOTO MinusCQ
  IF ~PartyHasItem("kidsoil")~ THEN REPLY ~Oil.~ DO ~TakePartyItem("kidsoil") DestroyItem("kidsoil")~ GOTO MinusKO
  IF ~PartyHasItem("lightdrp")~ THEN REPLY ~Light drops.~ GOTO 3
  IF ~PartyHasItem("darkdrop")~ THEN REPLY ~Dark drops.~ DO ~TakePartyItem("darkdrop") DestroyItem("darkdrop")~ GOTO MinusDD
  IF ~PartyHasItem("daggerfr")~ THEN REPLY ~Dagger.~ GOTO 4
  IF ~~ THEN REPLY ~No, thank you... on second thoughts, I will find an answer myself.~ EXIT
END

IF ~~ THEN BEGIN MinusCQ
  SAY ~Kid's oil... it is not the oil for children, it is oil of children. You'll become more dexterous, but you'll lose some wisdom.~
  = ~Dark drops are tears of Kelemvor, they will give you wisdom on one hand, on the other... well... intelligence was never Kelemvor's strong side.~
  = ~Light drops are tears of Mystra, they will give you intelligence, but take strength.~
  = ~Dagger... Well, dagger is dagger.~
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN MinusKO
  SAY ~Chocolate quasit used to be alive, but it was turned into a piece of chocolate. If you eat it, you'll become stronger, but clumsier.~
  = ~Dark drops are tears of Kelemvor, they will give you wisdom on one hand, on the other... well... intelligence was never Kelemvor's strong side.~
  = ~Light drops are tears of Mystra, they will give you intelligence, but take strength.~
  = ~Dagger... Well, dagger is dagger.~
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN MinusDD
  SAY ~Chocolate quasit used to be alive, but it was turned into a piece of chocolate. If you eat it, you'll become stronger, but clumsier.~
  = ~Kid's oil... it is not the oil for children, it is oil of children. You'll become more dexterous, but you'll lose some wisdom.~
  = ~Light drops are tears of Mystra, they will give you intelligence, but take strength.~
  = ~Dagger... Well, dagger is dagger.~
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 3
  SAY ~We doubt Kelemvor will approve that decision of yours. No, you must give something else.~
  IF ~PartyHasItem("chocquas")~ THEN REPLY ~Chocolate quasit.~ DO ~TakePartyItem("chocquas") DestroyItem("chocquas")~ GOTO MinusCQ
  IF ~PartyHasItem("kidsoil")~ THEN REPLY ~Oil.~ DO ~TakePartyItem("kidsoil") DestroyItem("kidsoil")~ GOTO MinusKO
  IF ~PartyHasItem("darkdrop")~ THEN REPLY ~Dark drops.~ DO ~TakePartyItem("darkdrop") DestroyItem("darkdrop")~ GOTO MinusDD
  IF ~PartyHasItem("daggerfr")~ THEN REPLY ~Dagger.~ GOTO 4
  IF ~~ THEN REPLY ~No, thank you... on second thoughts, I will find an answer myself.~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY ~Dagger... No, you must give something else.~
  IF ~PartyHasItem("chocquas")~ THEN REPLY ~Chocolate quasit.~ DO ~TakePartyItem("chocquas") DestroyItem("chocquas")~ GOTO MinusCQ
  IF ~PartyHasItem("kidsoil")~ THEN REPLY ~Oil.~ DO ~TakePartyItem("kidsoil") DestroyItem("kidsoil")~ GOTO MinusKO
  IF ~PartyHasItem("darkdrop")~ THEN REPLY ~Dark drops.~ DO ~TakePartyItem("darkdrop") DestroyItem("darkdrop")~ GOTO MinusDD
  IF ~PartyHasItem("lightdrp")~ THEN REPLY ~Light drops.~ GOTO 3
  IF ~~ THEN REPLY ~No, thank you... on second thoughts, I will find an answer myself.~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~Anything else, mortal?~
  IF ~~ THEN REPLY ~Can I continue with my questions?~ GOTO 6
  IF ~~ THEN REPLY ~On second thoughts, I will find an answer myself.~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY ~Ask.~
  IF ~~ THEN REPLY ~How to get out of here?~ GOTO 7
  IF ~~ THEN REPLY ~How to return?~ GOTO 10
  IF ~~ THEN REPLY ~How to resurrect my friends?~ GOTO 12
  IF ~~ THEN REPLY ~How to save my sir Keldorn?~ GOTO 13
  IF ~~ THEN REPLY ~How to find Imoen?~ GOTO 15
  IF ~~ THEN REPLY ~No thank you... on second thoughts I will find an answer myself.~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY ~There is no exit as such.~
  IF ~~ THEN REPLY ~You mean, one may not simply walk out of here?~ GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY ~Is this a question? Then pay.~
  IF ~PartyHasItem("chocquas")~ THEN REPLY ~Chocolate quasit.~ DO ~TakePartyItem("chocquas") DestroyItem("chocquas")~ GOTO 9
  IF ~PartyHasItem("kidsoil")~ THEN REPLY ~Oil.~ DO ~TakePartyItem("kidsoil") DestroyItem("kidsoil")~ GOTO 9
  IF ~PartyHasItem("lightdrp")~ THEN REPLY ~Light drops.~ GOTO 9A
  IF ~PartyHasItem("darkdrop")~ THEN REPLY ~Dark drops.~ DO ~TakePartyItem("darkdrop") DestroyItem("darkdrop")~ GOTO 9
  IF ~PartyHasItem("daggerfr")~ THEN REPLY ~Dagger of freedom.~ GOTO 9B
  IF ~~ THEN REPLY ~No thank you... on second thoughts I will find an answer myself.~ EXIT
  IF ~~ THEN REPLY ~No, I'll try to solve it myself. I have other questions.~ GOTO 6
END

IF ~~ THEN BEGIN 9
  SAY ~No, one may not walk out of this place. As simple as it can be, ultimate death is the only exit from here.~
  IF ~~ THEN REPLY ~Can I continue with my questions?~ GOTO 9C
  IF ~~ THEN REPLY ~Then I will find an answer myself.~ EXIT
END

IF ~~ THEN BEGIN 9A
  SAY ~We doubt Kelemvor will approve that decision of yours. No, you must give something else.~
  IF ~PartyHasItem("chocquas")~ THEN REPLY ~Chocolate quasit.~ DO ~TakePartyItem("chocquas") DestroyItem("chocquas")~ GOTO 9
  IF ~PartyHasItem("kidsoil")~ THEN REPLY ~Oil.~ DO ~TakePartyItem("kidsoil") DestroyItem("kidsoil")~ GOTO 9
  IF ~PartyHasItem("darkdrop")~ THEN REPLY ~Dark drops.~ DO ~TakePartyItem("darkdrop") DestroyItem("darkdrop")~ GOTO 9
  IF ~PartyHasItem("daggerfr")~ THEN REPLY ~Dagger.~ GOTO 9B
  IF ~~ THEN REPLY ~No, thank you... on second thoughts, I will find an answer myself.~ EXIT
END

IF ~~ THEN BEGIN 9B
  SAY ~Dagger... No, you must give something else.~
  IF ~PartyHasItem("chocquas")~ THEN REPLY ~Chocolate quasit.~ DO ~TakePartyItem("chocquas") DestroyItem("chocquas")~ GOTO 9
  IF ~PartyHasItem("kidsoil")~ THEN REPLY ~Oil.~ DO ~TakePartyItem("kidsoil") DestroyItem("kidsoil")~ GOTO 9
  IF ~PartyHasItem("darkdrop")~ THEN REPLY ~Dark drops.~ DO ~TakePartyItem("darkdrop") DestroyItem("darkdrop")~ GOTO 9
  IF ~PartyHasItem("lightdrp")~ THEN REPLY ~Light drops.~ GOTO 9A
  IF ~~ THEN REPLY ~No, thank you... on second thoughts, I will find an answer myself.~ EXIT
END

IF ~~ THEN BEGIN 9C
  SAY ~Ask.~
  IF ~~ THEN REPLY ~How to return?~ GOTO 10
  IF ~~ THEN REPLY ~How to resurrect my friends?~ GOTO 12
  IF ~~ THEN REPLY ~How to save my sir Keldorn?~ GOTO 13
  IF ~~ THEN REPLY ~How to find Imoen?~ GOTO 15
  IF ~~ THEN REPLY ~No thank you... on second thoughts I will find an answer myself.~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY ~To answer this question we will take the ring of Cyric.~
  IF ~~ THEN REPLY ~I'm afraid I cannot give it to you. It brought me here, and I think I'll need it to get out of this place.~ GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY ~Then there is no answer. You have another question?~
  IF ~~ THEN REPLY ~How to get out of here?~ GOTO 7
  IF ~~ THEN REPLY ~How to resurrect my friends?~ GOTO 12
  IF ~~ THEN REPLY ~How to save my sir Keldorn?~ GOTO 13
  IF ~~ THEN REPLY ~How to find Imoen?~ GOTO 15
  IF ~~ THEN REPLY ~No thank you... on second thoughts I will find an answer myself.~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY ~Address Kelemvor. You are leaving already... no more questions?~
  IF ~~ THEN REPLY ~How to get out of here?~ GOTO 7
  IF ~~ THEN REPLY ~How to return?~ GOTO 10
  IF ~~ THEN REPLY ~How to save my sir Keldorn?~ GOTO 13
  IF ~~ THEN REPLY ~How to find Imoen?~ GOTO 15
  IF ~~ THEN REPLY ~No thank you... on second thoughts I will find an answer myself.~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY ~Ha-ha-ha! What do you need the old paladin for? Pay if you are so desperate to know.~
  IF ~PartyHasItem("chocquas")~ THEN REPLY ~Chocolate quasit.~ DO ~TakePartyItem("chocquas") DestroyItem("chocquas")~ GOTO 14
  IF ~PartyHasItem("kidsoil")~ THEN REPLY ~Oil.~ DO ~TakePartyItem("kidsoil") DestroyItem("kidsoil")~ GOTO 14
  IF ~PartyHasItem("lightdrp")~ THEN REPLY ~Light drops.~ GOTO 14A
  IF ~PartyHasItem("darkdrop")~ THEN REPLY ~Dark drops.~ DO ~TakePartyItem("darkdrop") DestroyItem("darkdrop")~ GOTO 14
  IF ~PartyHasItem("daggerfr")~ THEN REPLY ~Dagger of freedom.~ GOTO 14B
  IF ~~ THEN REPLY ~No thank you... on second thoughts I will find an answer myself.~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY ~Kelemvor possesses the power for that. You want to know something else?~
  IF ~~ THEN REPLY ~How to get out of here?~ GOTO 7
  IF ~~ THEN REPLY ~How to return?~ GOTO 10
  IF ~~ THEN REPLY ~How to resurrect my friends?~ GOTO 12
  IF ~~ THEN REPLY ~How to find Imoen?~ GOTO 15
  IF ~~ THEN REPLY ~No thank you... on second thoughts I will find an answer myself.~ EXIT
END

IF ~~ THEN BEGIN 14A
  SAY ~We doubt Kelemvor will approve that decision of yours. No, you must give something else.~
  IF ~PartyHasItem("chocquas")~ THEN REPLY ~Chocolate quasit.~ DO ~TakePartyItem("chocquas") DestroyItem("chocquas")~ GOTO 14
  IF ~PartyHasItem("kidsoil")~ THEN REPLY ~Oil.~ DO ~TakePartyItem("kidsoil") DestroyItem("kidsoil")~ GOTO 14
  IF ~PartyHasItem("darkdrop")~ THEN REPLY ~Dark drops.~ DO ~TakePartyItem("darkdrop") DestroyItem("darkdrop")~ GOTO 14
  IF ~PartyHasItem("daggerfr")~ THEN REPLY ~Dagger.~ GOTO 14B
  IF ~~ THEN REPLY ~No, thank you... on second thoughts, I will find an answer myself.~ EXIT
END

IF ~~ THEN BEGIN 14B
  SAY ~Dagger... No, you must give something else.~
  IF ~PartyHasItem("chocquas")~ THEN REPLY ~Chocolate quasit.~ DO ~TakePartyItem("chocquas") DestroyItem("chocquas")~ GOTO 14
  IF ~PartyHasItem("kidsoil")~ THEN REPLY ~Oil.~ DO ~TakePartyItem("kidsoil") DestroyItem("kidsoil")~ GOTO 14
  IF ~PartyHasItem("darkdrop")~ THEN REPLY ~Dark drops.~ DO ~TakePartyItem("darkdrop") DestroyItem("darkdrop")~ GOTO 14
  IF ~PartyHasItem("lightdrp")~ THEN REPLY ~Light drops.~ GOTO 14A
  IF ~~ THEN REPLY ~No, thank you... on second thoughts, I will find an answer myself.~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY ~You are not bored with her yet? She is in Spellhold, and you can not reach it without help of outsiders. If you give the ring of Cyric, we will transfer you there.~
  IF ~~ THEN REPLY ~I'm afraid I cannot give it to you. It brought me here, and I think I'll need it to get out of this place.~ GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY ~Then you will get no assistance from us. You have another question?~
  IF ~~ THEN REPLY ~How to get out of here?~ GOTO 7
  IF ~~ THEN REPLY ~How to return?~ GOTO 10
  IF ~~ THEN REPLY ~How to resurrect my friends?~ GOTO 12
  IF ~~ THEN REPLY ~How to save my sir Keldorn?~ GOTO 13
  IF ~~ THEN REPLY ~No thank you... on second thoughts I will find an answer myself.~ EXIT
END

IF ~NumTimesTalkedToGT(0) OR(4) PartyHasItem("chocquas") PartyHasItem("kidsoil") PartyHasItem("darkdrop") PartyHasItem("lightdrp")~ THEN BEGIN 17
  SAY ~Are you still here?~
  IF ~~ THEN REPLY ~I have questions.~ GOTO 6
  IF ~~ THEN REPLY ~Can I learn what these things are?~ GOTO 2
  IF ~PartyHasItem("daggerfr")~ THEN REPLY ~How do I use that dagger?~ GOTO 19
END

IF ~NumTimesTalkedToGT(0) !PartyHasItem("chocquas") !PartyHasItem("kidsoil") !PartyHasItem("darkdrop") !PartyHasItem("lightdrp")~ THEN BEGIN 18
  SAY ~Are you still here?~
  IF ~~ THEN REPLY ~I have questions.~ GOTO 6
  IF ~PartyHasItem("daggerfr")~ THEN REPLY ~How do I use that dagger?~ GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY ~Bah! You are stupid child of Bhaal! You need to stab yourself with it.~
  IF ~~ THEN REPLY ~Damn! I should have guessed that myself.~ DO ~SetGlobal("VP_Kr_CyricPlot","GLOBAL",5) ClearAllActions() StartCutSceneMode() StartCutScene("KRCut11")~ EXIT
END