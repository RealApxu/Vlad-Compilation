BEGIN KRRING

CHAIN KRRING R0
~Is this what I taught you, my child?~
END
 ++ ~Go... Gorion?~ EXTERN KRRING R1

CHAIN KRRING R1
~Did you kill your brother only to repeat his mistakes? Were all my lessons in vain?~
= ~I tried so hard to protect you from evil, I was so happy when you found yourself a special companion, that you now have a person in your life capable of giving you everything that you lacked, affection, love, care.~
= ~He protects you from the evil that your damned legacy bears. A fearsome power is within you and you can't let Irenicus acquire it! As a paladin of Torm he was sent to assist and protect you.~
END
 ++ ~Sent? So he does not love me, but is here merely to fulfill his duty?~ EXTERN KRRING R2
 ++ ~I understand now! Oh Gods, I was about to do such a stupid thing.~ EXTERN KRRING R4

CHAIN KRRING R2
~(You quietly slip out of the room, wake up your comrades and you all leave the castle.)~
= ~(Once on the road you turn back... you have a feeling that Keldorn knows everything, that he is standing at the window and looking at you with pain, with longing, with love in his heart.)~
= ~(Desperate, you turn to your comrades but they avert their gaze... you will have to make the decision, to choose between love and power on your own.)~
= ~No, you are wrong! You are choosing between good and evil, remember that!~
END
 ++ ~No! I choose Love and it will help me to win!~ EXTERN KRRING R4
 ++ ~I choose Power and I will be victorious!~ EXTERN KRRING R3

CHAIN KRRING R3
~(You recall Imoen's words: "He showed me this power, sister. He showed me and he took it away", and you stay steadfast in your decision.)~
= ~(Clenching your teeth you drive the sharp, unbearable grief deep inside you until only a constant, unbearable aching pain in your heart remains... forever to be a reminder of your one true love, Keldorn.)~
DO ~SetGlobal("VP_KrRomanceActive","GLOBAL",3) SetGlobal("VP_KrIsOver","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("KRCut27")~
EXIT

CHAIN KRRING R4
~(Carefully you tiptoe back to Keldorn and quietly lie down beside him.)~
EXTERN KELDORJ LT38_st0