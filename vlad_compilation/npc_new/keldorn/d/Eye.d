BEGIN EYE

CHAIN
IF ~OR(2) NumTimesTalkedTo(0) Global("VP_Talk_To_Keldorn","LOCALS",1)~ THEN EYE 0
~What brings you here, mortal? Why do you intrude upon our peace?~
DO ~SetGlobal("VP_Talk_To_Keldorn","LOCALS",2)~
END
 ++ ~Do you know how do I get out of here... how do I return to my own world?~ EXTERN EYE 1

CHAIN EYE 1
~Yes, I know a lot... but I do not share my knowledge for free, the price depends on your question.~
END
 IF ~OR(5) PartyHasItem("chocquas") PartyHasItem("kidsoil") PartyHasItem("darkdrop") PartyHasItem("lightdrp") PartyHasItem("daggerfr")~ THEN EXTERN EYE 1A
 IF ~!PartyHasItem("chocquas") !PartyHasItem("kidsoil") !PartyHasItem("darkdrop") !PartyHasItem("lightdrp") !PartyHasItem("daggerfr")~ THEN REPLY ~No, thank you... on second thoughts I will find an answer myself.~ EXIT

CHAIN EYE 1A
~You have collected some things, but you know not their value. I can take some of them from you as payment.~
END
 ++ ~Can I learn what these things are?~ EXTERN EYE 2


CHAIN EYE 2
~You give one of them, you learn about the rest. Tell me first what you give, then you will get your answer.~
END
 IF ~PartyHasItem("chocquas")~ THEN REPLY ~Chocolate quasit.~ DO ~TakePartyItem("chocquas") DestroyItem("chocquas")~ EXTERN EYE MinusCQ
 IF ~PartyHasItem("kidsoil")~ THEN REPLY ~Oil.~ DO ~TakePartyItem("kidsoil") DestroyItem("kidsoil")~ EXTERN EYE MinusKO
 IF ~PartyHasItem("lightdrp")~ THEN REPLY ~Light drops.~ EXTERN EYE 3
 IF ~PartyHasItem("darkdrop")~ THEN REPLY ~Dark drops.~ DO ~TakePartyItem("darkdrop") DestroyItem("darkdrop")~ EXTERN EYE MinusDD
 IF ~PartyHasItem("daggerfr")~ THEN REPLY ~Dagger.~ EXTERN EYE 4
 ++ ~No, thank you... on second thoughts, I will find an answer myself.~ EXIT

CHAIN EYE MinusCQ
~Kid's oil... it is not the oil for children, it is oil of children. You'll become more dexterous, but you'll lose some wisdom.~
= ~Dark drops are tears of Kelemvor, they will give you wisdom on one hand, on the other... well... intelligence was never Kelemvor's strong side.~
= ~Light drops are tears of Mystra, they will give you intelligence, but take strength.~
= ~Dagger... Well, dagger is dagger.~
EXTERN EYE 5

CHAIN EYE MinusKO
~Chocolate quasit used to be alive, but it was turned into a piece of chocolate. If you eat it, you'll become stronger, but clumsier.~
= ~Dark drops are tears of Kelemvor, they will give you wisdom on one hand, on the other... well... intelligence was never Kelemvor's strong side.~
= ~Light drops are tears of Mystra, they will give you intelligence, but take strength.~
= ~Dagger... Well, dagger is dagger.~
EXTERN EYE 5

CHAIN EYE MinusDD
~Chocolate quasit used to be alive, but it was turned into a piece of chocolate. If you eat it, you'll become stronger, but clumsier.~
= ~Kid's oil... it is not the oil for children, it is oil of children. You'll become more dexterous, but you'll lose some wisdom.~
= ~Light drops are tears of Mystra, they will give you intelligence, but take strength.~
= ~Dagger... Well, dagger is dagger.~
EXTERN EYE 5

CHAIN EYE 3
~We doubt Kelemvor will approve that decision of yours. No, you must give something else.~
END
 IF ~PartyHasItem("chocquas")~ THEN REPLY ~Chocolate quasit.~ DO ~TakePartyItem("chocquas") DestroyItem("chocquas")~ EXTERN EYE MinusCQ
 IF ~PartyHasItem("kidsoil")~ THEN REPLY ~Oil.~ DO ~TakePartyItem("kidsoil") DestroyItem("kidsoil")~ EXTERN EYE MinusKO
 IF ~PartyHasItem("darkdrop")~ THEN REPLY ~Dark drops.~ DO ~TakePartyItem("darkdrop") DestroyItem("darkdrop")~ EXTERN EYE MinusDD
 IF ~PartyHasItem("daggerfr")~ THEN REPLY ~Dagger.~ EXTERN EYE 4
 ++ ~No, thank you... on second thoughts, I will find an answer myself.~ EXIT

CHAIN EYE 4
~Dagger... No, you must give something else.~
END
 IF ~PartyHasItem("chocquas")~ THEN REPLY ~Chocolate quasit.~ DO ~TakePartyItem("chocquas") DestroyItem("chocquas")~ EXTERN EYE MinusCQ
 IF ~PartyHasItem("kidsoil")~ THEN REPLY ~Oil.~ DO ~TakePartyItem("kidsoil") DestroyItem("kidsoil")~ EXTERN EYE MinusKO
 IF ~PartyHasItem("darkdrop")~ THEN REPLY ~Dark drops.~ DO ~TakePartyItem("darkdrop") DestroyItem("darkdrop")~ EXTERN EYE MinusDD
 IF ~PartyHasItem("lightdrp")~ THEN REPLY ~Light drops.~ EXTERN EYE 3
 ++ ~No, thank you... on second thoughts, I will find an answer myself.~ EXIT

CHAIN EYE 5
~Anything else, mortal?~
END
 ++ ~Can I continue with my questions?~ EXTERN EYE 6
 ++ ~On second thoughts, I will find an answer myself.~ EXIT

CHAIN EYE 6
~Ask.~
END
 ++ ~How to get out of here?~ EXTERN EYE 7
 ++ ~How to return?~ EXTERN EYE 10
 ++ ~How to resurrect my friends?~ EXTERN EYE 12
 ++ ~How to save my sir Keldorn?~ EXTERN EYE 13
 ++ ~How to find Imoen?~ EXTERN EYE 15
 ++ ~No thank you... on second thoughts I will find an answer myself.~ EXIT

CHAIN EYE 7
~There is no exit as such.~
END
 ++ ~You mean, one may not simply walk out of here?~ EXTERN EYE 8

CHAIN EYE 8
~Is this a question? Then pay.~
END
 IF ~PartyHasItem("chocquas")~ THEN REPLY ~Chocolate quasit.~ DO ~TakePartyItem("chocquas") DestroyItem("chocquas")~ EXTERN EYE 9
 IF ~PartyHasItem("kidsoil")~ THEN REPLY ~Oil.~ DO ~TakePartyItem("kidsoil") DestroyItem("kidsoil")~ EXTERN EYE 9
 IF ~PartyHasItem("lightdrp")~ THEN REPLY ~Light drops.~ EXTERN EYE 9A
 IF ~PartyHasItem("darkdrop")~ THEN REPLY ~Dark drops.~ DO ~TakePartyItem("darkdrop") DestroyItem("darkdrop")~ EXTERN EYE 9
 IF ~PartyHasItem("daggerfr")~ THEN REPLY ~Dagger of freedom.~ EXTERN EYE 9B
 ++ ~No thank you... on second thoughts I will find an answer myself.~ EXIT
 ++ ~No, I'll try to solve it myself. I have other questions.~ EXTERN EYE 6

CHAIN EYE 9
~No, one may not walk out of this place. As simple as it can be, ultimate death is the only exit from here.~
END
 ++ ~Can I continue with my questions?~ EXTERN EYE 9C
 ++ ~Then I will find an answer myself.~ EXIT

CHAIN EYE 9A
~We doubt Kelemvor will approve that decision of yours. No, you must give something else.~
END
 IF ~PartyHasItem("chocquas")~ THEN REPLY ~Chocolate quasit.~ DO ~TakePartyItem("chocquas") DestroyItem("chocquas")~ EXTERN EYE 9
 IF ~PartyHasItem("kidsoil")~ THEN REPLY ~Oil.~ DO ~TakePartyItem("kidsoil") DestroyItem("kidsoil")~ EXTERN EYE 9
 IF ~PartyHasItem("darkdrop")~ THEN REPLY ~Dark drops.~ DO ~TakePartyItem("darkdrop") DestroyItem("darkdrop")~ EXTERN EYE 9
 IF ~PartyHasItem("daggerfr")~ THEN REPLY ~Dagger.~ EXTERN EYE 9B
 ++ ~No, thank you... on second thoughts, I will find an answer myself.~ EXIT

CHAIN EYE 9B
~Dagger... No, you must give something else.~
END
 IF ~PartyHasItem("chocquas")~ THEN REPLY ~Chocolate quasit.~ DO ~TakePartyItem("chocquas") DestroyItem("chocquas")~ EXTERN EYE 9
 IF ~PartyHasItem("kidsoil")~ THEN REPLY ~Oil.~ DO ~TakePartyItem("kidsoil") DestroyItem("kidsoil")~ EXTERN EYE 9
 IF ~PartyHasItem("darkdrop")~ THEN REPLY ~Dark drops.~ DO ~TakePartyItem("darkdrop") DestroyItem("darkdrop")~ EXTERN EYE 9
 IF ~PartyHasItem("lightdrp")~ THEN REPLY ~Light drops.~ EXTERN EYE 9A
 ++ ~No, thank you... on second thoughts, I will find an answer myself.~ EXIT

CHAIN EYE 9C
~Ask.~
END
 ++ ~How to return?~ EXTERN EYE 10
 ++ ~How to resurrect my friends?~ EXTERN EYE 12
 ++ ~How to save my sir Keldorn?~ EXTERN EYE 13
 ++ ~How to find Imoen?~ EXTERN EYE 15
 ++ ~No thank you... on second thoughts I will find an answer myself.~ EXIT

CHAIN EYE 10
~To answer this question we will take the ring of Cyric.~
END
 ++ ~I'm afraid I cannot give it to you. It brought me here, and I think I'll need it to get out of this place.~ EXTERN EYE 11

CHAIN EYE 11
~Then there is no answer. You have another question?~
END
 ++ ~How to get out of here?~ EXTERN EYE 7
 ++ ~How to resurrect my friends?~ EXTERN EYE 12
 ++ ~How to save my sir Keldorn?~ EXTERN EYE 13
 ++ ~How to find Imoen?~ EXTERN EYE 15
 ++ ~No thank you... on second thoughts I will find an answer myself.~ EXIT

CHAIN EYE 12
~Address Kelemvor. You are leaving already... no more questions?~
END
 ++ ~How to get out of here?~ EXTERN EYE 7
 ++ ~How to return?~ EXTERN EYE 10
 ++ ~How to save my sir Keldorn?~ EXTERN EYE 13
 ++ ~How to find Imoen?~ EXTERN EYE 15
 ++ ~No thank you... on second thoughts I will find an answer myself.~ EXIT

CHAIN EYE 13
~Ha-ha-ha! What do you need the old paladin for? Pay if you are so desperate to know.~
END
 IF ~PartyHasItem("chocquas")~ THEN REPLY ~Chocolate quasit.~ DO ~TakePartyItem("chocquas") DestroyItem("chocquas")~ EXTERN EYE 14
 IF ~PartyHasItem("kidsoil")~ THEN REPLY ~Oil.~ DO ~TakePartyItem("kidsoil") DestroyItem("kidsoil")~ EXTERN EYE 14
 IF ~PartyHasItem("lightdrp")~ THEN REPLY ~Light drops.~ EXTERN EYE 14A
 IF ~PartyHasItem("darkdrop")~ THEN REPLY ~Dark drops.~ DO ~TakePartyItem("darkdrop") DestroyItem("darkdrop")~ EXTERN EYE 14
 IF ~PartyHasItem("daggerfr")~ THEN REPLY ~Dagger of freedom.~ EXTERN EYE 14B
 ++ ~No thank you... on second thoughts I will find an answer myself.~ EXIT

CHAIN EYE 14
~Kelemvor possesses the power for that. You want to know something else?~
END
 ++ ~How to get out of here?~ EXTERN EYE 7
 ++ ~How to return?~ EXTERN EYE 10
 ++ ~How to resurrect my friends?~ EXTERN EYE 12
 ++ ~How to find Imoen?~ EXTERN EYE 15
 ++ ~No thank you... on second thoughts I will find an answer myself.~ EXIT

CHAIN EYE 14A
~We doubt Kelemvor will approve that decision of yours. No, you must give something else.~
END
 IF ~PartyHasItem("chocquas")~ THEN REPLY ~Chocolate quasit.~ DO ~TakePartyItem("chocquas") DestroyItem("chocquas")~ EXTERN EYE 14
 IF ~PartyHasItem("kidsoil")~ THEN REPLY ~Oil.~ DO ~TakePartyItem("kidsoil") DestroyItem("kidsoil")~ EXTERN EYE 14
 IF ~PartyHasItem("darkdrop")~ THEN REPLY ~Dark drops.~ DO ~TakePartyItem("darkdrop") DestroyItem("darkdrop")~ EXTERN EYE 14
 IF ~PartyHasItem("daggerfr")~ THEN REPLY ~Dagger.~ EXTERN EYE 14B
 ++ ~No, thank you... on second thoughts, I will find an answer myself.~ EXIT

CHAIN EYE 14B
~Dagger... No, you must give something else.~
END
 IF ~PartyHasItem("chocquas")~ THEN REPLY ~Chocolate quasit.~ DO ~TakePartyItem("chocquas") DestroyItem("chocquas")~ EXTERN EYE 14
 IF ~PartyHasItem("kidsoil")~ THEN REPLY ~Oil.~ DO ~TakePartyItem("kidsoil") DestroyItem("kidsoil")~ EXTERN EYE 14
 IF ~PartyHasItem("darkdrop")~ THEN REPLY ~Dark drops.~ DO ~TakePartyItem("darkdrop") DestroyItem("darkdrop")~ EXTERN EYE 14
 IF ~PartyHasItem("lightdrp")~ THEN REPLY ~Light drops.~ EXTERN EYE 14A
 ++ ~No, thank you... on second thoughts, I will find an answer myself.~ EXIT

CHAIN EYE 15
~You are not bored with her yet? She is in Spellhold, and you can not reach it without help of outsiders. If you give the ring of Cyric, we will transfer you there.~
END
 ++ ~I'm afraid I cannot give it to you. It brought me here, and I think I'll need it to get out of this place.~ EXTERN EYE 16

CHAIN EYE 16
~Then you will get no assistance from us. You have another question?~
END
 ++ ~How to get out of here?~ EXTERN EYE 7
 ++ ~How to return?~ EXTERN EYE 10
 ++ ~How to resurrect my friends?~ EXTERN EYE 12
 ++ ~How to save my sir Keldorn?~ EXTERN EYE 13
 ++ ~No thank you... on second thoughts I will find an answer myself.~ EXIT

CHAIN
IF ~NumTimesTalkedToGT(0) OR(4) PartyHasItem("chocquas") PartyHasItem("kidsoil") PartyHasItem("darkdrop") PartyHasItem("lightdrp")~ THEN EYE 17
~Are you still here?~
END
 ++ ~I have questions.~ EXTERN EYE 6
 ++ ~Can I learn what these things are?~ EXTERN EYE 2
 IF ~PartyHasItem("daggerfr")~ THEN REPLY ~How do I use that dagger?~ EXTERN EYE 19

CHAIN
IF ~NumTimesTalkedToGT(0) !PartyHasItem("chocquas") !PartyHasItem("kidsoil") !PartyHasItem("darkdrop") !PartyHasItem("lightdrp")~ THEN EYE 18
~Are you still here?~
END
 ++ ~I have questions.~ EXTERN EYE 6
 IF ~PartyHasItem("daggerfr")~ THEN REPLY ~How do I use that dagger?~ EXTERN EYE 19

CHAIN EYE 19
~Bah! You are stupid child of Bhaal! You need to stab yourself with it.~
END
 ++ ~Damn! I should have guessed that myself.~ DO ~SetGlobal("VP_Kr_CyricPlot","GLOBAL",5) ClearAllActions() StartCutSceneMode() StartCutScene("KRCut11")~ EXIT