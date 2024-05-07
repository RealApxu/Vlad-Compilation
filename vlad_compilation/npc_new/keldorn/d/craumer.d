BEGIN CRAUMER

CHAIN
IF ~NumTimesTalkedTo(0) Global("VP_Kr_TheWar","GLOBAL",6)~ THEN CRAUMER 0
~Sir, my lady... please accept my apologizes, but I beg your assistance. I was very glad and surprised to learn of your presence here, count. As I see it, you are still very influential in Esmeltaran, and it so happens that we will be requiring reinforcements very soon.~
= ~Scouts report of increasing activity in the Sythillisians troops. I think Esmeltaran are capable of raising an army of 500 warriors and we are to designate Keshla as the rendezvous point.~
DO ~SetGlobal("VP_Kr_TheWar","GLOBAL",7)~
EXTERN KELDORJ craumer

CHAIN CRAUMER 1
~Where, may I ask, is this imaginary enemy that they are to defend the city against going to be coming from? No matter, we will be able to return if needed. Trust me count, you are worrying about nothing.~
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("KRCut07")~
EXIT