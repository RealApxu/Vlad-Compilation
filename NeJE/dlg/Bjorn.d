BEGIN ~Bjorn~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~Leina... thank the gods I have found you! I�ve spent an eternity searching for you... or so it feels to me.~
  IF ~~ THEN DO ~SetGlobal("VP_Errant_Husband","GLOBAL",2)~ EXTERN ~LEINAJ~ 105
END

IF ~~ THEN BEGIN 1
  SAY ~(*Holding his arms out to the bard*)... Yes my sweet... come, let me embrace that I which I thought never to hold close to my heart again...~
  IF ~~ THEN EXTERN ~LEINAJ~ 106
END

IF ~~ THEN BEGIN 2
  SAY ~(*Taking a step forward still holding his arms open*)... Leina my...~
  IF ~~ THEN EXTERN ~LEINAJ~ 107
END

IF ~~ THEN BEGIN 3
  SAY ~Well, what have we here... not exactly the company I expected to see a renown bard such as yourself travelling with Leina? Still, the old barkeep did say you�d left with a group of misfits, seems I happened along just in time to rescue you from this unsavoury bunch.~
  IF ~~ THEN EXTERN ~LEINAJ~ 108
END

IF ~~ THEN BEGIN 4
  SAY ~Leina, please my love... hear me out before you judge the actions of a weak man who failed as a husband to provide for his lady and then, who through shame, did the only thing he could... he left her, knowing she would have a better life without him.~
  IF ~~ THEN EXTERN ~LEINAJ~ 111
END

IF ~~ THEN BEGIN 5
  SAY ~That�s not true... why are you being so cruel? I loved you... still love you more than life itself. Your potential to become a great bard was obvious to me from first we met, but I knew you would never take your music seriously... not whilst I was a distraction in your life.~
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY ~I also knew, that if I loved you I had to let you go, let you find yourself and you have. Leina, without me you have become all that you were meant to be... my sacrifice, my own pain has not been for nothing. I listen with pride when I hear your name spoken and I think, that is my wife, my Leina.~
  IF ~~ THEN EXTERN ~LEINAJ~ 113
END

IF ~~ THEN BEGIN 7
  SAY ~(*He drops to his knees*) I... I didn�t know, I swear to you Leina. I thought you would find your way back to your family, that you would see how much better your life was before I came into it. That is why, when I realised what I had lost, that I couldn�t live another day without you, I looked for you in Athkatla my love... I was sure I would find you at your father�s house.~
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY ~Please Leina... don�t look at me so... your eyes... I can not bear to see disdain where once love shone forth. Leina, my love, I come to you on my knees, please forgive...~
  IF ~~ THEN EXTERN ~LEINAJ~ 118
END

IF ~~ THEN BEGIN 9
  SAY ~(*Getting to his feet*)... Surely you haven�t forgotten so quickly how it was between us?~
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY ~How we played and sang the days away... how, when the night came we would make love, holding on to each other... not wanting the night to end, but eventually sleep would claim us and we�d lie bathed in the warmth of love�s after glow, waiting for the sun to rise... to waken us to another glorious day for us to share. Surely your heart...~
  IF ~~ THEN EXTERN ~LEINAJ~ 120
END

IF ~~ THEN BEGIN 11
  SAY ~Damn you Leina! I haven�t trekked all this way only to leave without you. (*He takes a step towards her*)...~
  IF ~~ THEN EXTERN ~LEINAJ~ 122
END

IF ~~ THEN BEGIN 12
  SAY ~Don�t worry, I�m on my way. I�ve seen all I need to see here... for all her fame, Leina doesn�t seem to be raking in the coin. I guess the stories have exaggerated how good she really is, as stories do.~
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY ~This has been a waste of my time, the only thing in my lady�s pockets is the dust of the road... what comfort does that offer a body on a cold night? I bid you farewell Leina, know that I�ll be thinking of you when I�m... and then again... maybe I won�t. (*He turns and walks away*)...~
  IF ~~ THEN EXTERN ~LEINAJ~ 123
END 

IF ~~ THEN BEGIN 14
  SAY ~I�ve no quarrel with you, or your little group. From what I am seeing, the stories of the lady�s fame have been grossly exaggerated. It�s obvious she hasn�t the coin that I was lead to believe she had made for herself... my life is clearly worth more than she.~
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY ~Still, if she persists on her present road, in the company of this rag-a-tag band of misfits, all she can expect to fill her pockets with is dust... what comfort does that offer a body on a cold night?~
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY ~I bid you farewell Leina, know that I�ll be thinking of you when I�m... and then again... maybe I won�t. (*He turns and walks away*)...~
  IF ~~ THEN EXTERN ~LEINAJ~ 123
END          