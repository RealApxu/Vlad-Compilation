REPLACE_SAY ALDETH 27 ~I must thank you for saving my consortium! I will reward all of you greatly for what you have done for me. I hope what I give you now is reward enough. This sword is a family heirloom, and could be useful if you were ever to run into those shapeshifting creatures again. Know that if ever you are in trouble, you can come to the consortium. In addition I will suggest you to browse my personal store and take a look at my special merchandise which I show only to my very special guests. If you wish you may purchase banknotes accepted by any accredited merchant store, our exchange rate will be only 20% for you.~

REPLACE_SAY ALDETH 28 ~I'm sorry, but I have much to do in rebuilding my shattered consortium.~

EXTEND_BOTTOM ALDETH 28
 ++ ~Aldeth, could you show me your special merchandise?~ DO ~StartStore("aldeth",LastTalkedToBy(Myself))~ EXIT
 ++ ~No, nothing at the moment.~ EXIT //BG2 #40098
END