BEGIN ~Govan3~

IF ~NumTimesTalkedTo(0) OR(2) GlobalGT("VP_Govan_Bribes_Me","GLOBAL",2) GlobalGT("VP_Killian_Bribes_Me","GLOBAL",1)~ THEN BEGIN 0
  SAY ~What... the... <CHARNAME>!~
  IF ~~ THEN REPLY ~Hello, Duvaine. Do shut your mouth, it is not a very dignified look.~ GOTO 1
  IF ~~ THEN REPLY ~Well, Duvaine, I half expected you to be gone. You must have a lot of confidence in your assassins abilities to risk staying here.~ GOTO 1
  IF ~~ THEN REPLY ~I hope you have not settled too well in here, Duvaine, looks like you will be on the move again. I have a more compact place in mind for you, shall we say about six foot by three foot!~ GOTO 1
  IF ~~ THEN REPLY ~Come, Duvaine, surely you did not think that I would miss your wedding? I was, after all, instrumental in bringing you and your future bride together.~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY ~Now, <CHARNAME>, let us not be too hasty here. I made a mistake, a very foolish mistake, I can see that now.~
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY ~You cannot blame a man for trying, it was after all, a lot of gold I was paying out, but I am good for it. Let me arrange to get it for you, no catches this time. I swear to you.~
  IF ~GlobalGT("VP_Govan_Bribes_Me","GLOBAL",2)~ THEN REPLY ~I do not think so, Duvaine. I prefer to take my payment in other ways seeing as how the first method did not work out.~ SOLVED_JOURNAL ~Trouble at The Five Flagons Inn.

I should have realised...  no one gives 20,000 gold away for so simple a task. Still neither Killian nor Govan Duvaine will try to outsmart me again... nor anyone else for that matter. Duvaine may have been a pathetic excuse for a man in life, but in death he has proven to be a very profitable commodity to me. My purse is now heavier... and I rescued the bard as well. A most satisfactory outcome for all... except for the Duvaine and Killian of course, but one can not please everyone.~ DO ~EraseJournalEntry(%Trouble at The Five Flagons Inn.

After entering the secret room at the rear of Vulova's home and fighting my way through a warren full of his henchmen I finally found myself in what looked to be a guild house of sorts. I was  surprised to also find the bard Leina, frightened but unhurt... It appears that her father had kidnapped her in order to force her into a marriage with one Govan Duvaine, a spoilt, rich boy from one of Athkatla's most affluent families... who sought to become even richer by joining Leina's family fortune with his own inheritance. It would seem that the untimely death of his wife, Leina's mother, had so deranged her father's  mind that he sought to keep her near him... she being the only link he had left to his dead wife. He believed the marriage would keep her in the city. A sad and lonely man true but the death of a loved one effects us all in different ways. Duvaine then appeared and offered me 20,000 gold to hand the girl over to him... 20,000 gold! All I had to do was tell the old barkeep that Leina had decided to marry Duvaine and then meet with one of the financial advisors to the Duvaine's, a man named  Killian, on the roof of The Copper Coronet. He would cash the draft for me... easy gold!%)~ GOTO 3
  IF ~GlobalGT("VP_Govan_Bribes_Me","GLOBAL",2)~ THEN REPLY ~I am sure you are good for it, Duvaine, only you see, I do not want it any more. I have a more interesting method of payment, it involves small installments. You know, a piece at a time?~ SOLVED_JOURNAL ~Trouble at The Five Flagons Inn.

I should have realised...  no one gives 20,000 gold away for so simple a task. Still neither Killian nor Govan Duvaine will try to outsmart me again... nor anyone else for that matter. Duvaine may have been a pathetic excuse for a man in life, but in death he has proven to be a very profitable commodity to me. My purse is now heavier... and I rescued the bard as well. A most satisfactory outcome for all... except for the Duvaine and Killian of course, but one can not please everyone.~ DO ~EraseJournalEntry(%Trouble at The Five Flagons Inn.

After entering the secret room at the rear of Vulova's home and fighting my way through a warren full of his henchmen I finally found myself in what looked to be a guild house of sorts. I was  surprised to also find the bard Leina, frightened but unhurt... It appears that her father had kidnapped her in order to force her into a marriage with one Govan Duvaine, a spoilt, rich boy from one of Athkatla's most affluent families... who sought to become even richer by joining Leina's family fortune with his own inheritance. It would seem that the untimely death of his wife, Leina's mother, had so deranged her father's  mind that he sought to keep her near him... she being the only link he had left to his dead wife. He believed the marriage would keep her in the city. A sad and lonely man true but the death of a loved one effects us all in different ways. Duvaine then appeared and offered me 20,000 gold to hand the girl over to him... 20,000 gold! All I had to do was tell the old barkeep that Leina had decided to marry Duvaine and then meet with one of the financial advisors to the Duvaine's, a man named  Killian, on the roof of The Copper Coronet. He would cash the draft for me... easy gold!%)~ GOTO 3

  IF ~GlobalGT("VP_Govan_Bribes_Me","GLOBAL",2)~ THEN REPLY ~You still trying to take me for a fool, Duvaine. The only fool here is you for thinking you could pull one over on me. Now, if I was to give you another chance, then I would be a fool. Right?~ SOLVED_JOURNAL ~Trouble at The Five Flagons Inn.

I should have realised...  no one gives 20,000 gold away for so simple a task. Still neither Killian nor Govan Duvaine will try to outsmart me again... nor anyone else for that matter. Duvaine may have been a pathetic excuse for a man in life, but in death he has proven to be a very profitable commodity to me. My purse is now heavier... and I rescued the bard as well. A most satisfactory outcome for all... except for the Duvaine and Killian of course, but one can not please everyone.~ DO ~EraseJournalEntry(%Trouble at The Five Flagons Inn.

After entering the secret room at the rear of Vulova's home and fighting my way through a warren full of his henchmen I finally found myself in what looked to be a guild house of sorts. I was  surprised to also find the bard Leina, frightened but unhurt... It appears that her father had kidnapped her in order to force her into a marriage with one Govan Duvaine, a spoilt, rich boy from one of Athkatla's most affluent families... who sought to become even richer by joining Leina's family fortune with his own inheritance. It would seem that the untimely death of his wife, Leina's mother, had so deranged her father's  mind that he sought to keep her near him... she being the only link he had left to his dead wife. He believed the marriage would keep her in the city. A sad and lonely man true but the death of a loved one effects us all in different ways. Duvaine then appeared and offered me 20,000 gold to hand the girl over to him... 20,000 gold! All I had to do was tell the old barkeep that Leina had decided to marry Duvaine and then meet with one of the financial advisors to the Duvaine's, a man named  Killian, on the roof of The Copper Coronet. He would cash the draft for me... easy gold!%)~ GOTO 3

  IF ~GlobalGT("VP_Govan_Bribes_Me","GLOBAL",2)~ THEN REPLY ~Forget it, Duvaine. I grow tired of your lies, and as I see it, the only way to stop them is to remove the tongue that persists in telling them.~ SOLVED_JOURNAL ~Trouble at The Five Flagons Inn.

I should have realised...  no one gives 20,000 gold away for so simple a task. Still neither Killian nor Govan Duvaine will try to outsmart me again... nor anyone else for that matter. Duvaine may have been a pathetic excuse for a man in life, but in death he has proven to be a very profitable commodity to me. My purse is now heavier... and I rescued the bard as well. A most satisfactory outcome for all... except for the Duvaine and Killian of course, but one can not please everyone.~ DO ~EraseJournalEntry(%Trouble at The Five Flagons Inn.

After entering the secret room at the rear of Vulova's home and fighting my way through a warren full of his henchmen I finally found myself in what looked to be a guild house of sorts. I was  surprised to also find the bard Leina, frightened but unhurt... It appears that her father had kidnapped her in order to force her into a marriage with one Govan Duvaine, a spoilt, rich boy from one of Athkatla's most affluent families... who sought to become even richer by joining Leina's family fortune with his own inheritance. It would seem that the untimely death of his wife, Leina's mother, had so deranged her father's  mind that he sought to keep her near him... she being the only link he had left to his dead wife. He believed the marriage would keep her in the city. A sad and lonely man true but the death of a loved one effects us all in different ways. Duvaine then appeared and offered me 20,000 gold to hand the girl over to him... 20,000 gold! All I had to do was tell the old barkeep that Leina had decided to marry Duvaine and then meet with one of the financial advisors to the Duvaine's, a man named  Killian, on the roof of The Copper Coronet. He would cash the draft for me... easy gold!%)~ GOTO 3

  IF ~GlobalGT("VP_Killian_Bribes_Me","GLOBAL",1)~ THEN REPLY ~I do not think so, Duvaine. I prefer to take my payment in other ways seeing as how the first method did not work out.~ EXTERN ~AUBERON~ 0
  IF ~GlobalGT("VP_Killian_Bribes_Me","GLOBAL",1)~ THEN REPLY ~I am sure you are good for it, Duvaine, only you see, I do not want it any more. I have a more interesting method of payment, it involves small installments. You know, a piece at a time?~ EXTERN ~AUBERON~ 0
  IF ~GlobalGT("VP_Killian_Bribes_Me","GLOBAL",1)~ THEN REPLY ~You still trying to take me for a fool, Duvaine. The only fool here is you for thinking you could pull one over on me. Now, if I was to give you another chance, then I would be a fool. Right?~ EXTERN ~AUBERON~ 0
  IF ~GlobalGT("VP_Killian_Bribes_Me","GLOBAL",1)~ THEN REPLY ~Forget it, Duvaine. I grow tired of your lies, and as I see it, the only way to stop them is to remove the tongue that persists in telling them.~ EXTERN ~AUBERON~ 0
END

IF ~~ THEN BEGIN 3
  SAY ~I just knew that you were not going to be reasonable about this, <CHARNAME>. I am not in the least bit intimidated by your threats.~
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY ~I can assure you my guards here are better trained than a group of unruly assassins, let me demonstrate. Men...~
  IF ~~ THEN DO ~CreateCreatureObjectOffScreen("DuvGuard",Player1,0,0,0) CreateCreatureObjectOffScreen("DuvGuard",Player1,0,0,0) CreateCreatureObjectOffScreen("DuvGuard",Player1,0,0,0) Shout(89) Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~You need not concern yourself, father. I can handle this, a business venture gone wrong is that not right, <CHARNAME>?~
  IF ~~ THEN REPLY ~You are right there, Duvaine. How about you explain to your father just how wrong it did go?~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutL01")~ EXIT
  IF ~~ THEN REPLY ~The first truth to come out of that lying mouth of yours, Duvaine. You're going to tell your father the truth of the son he raised or shall I?~DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutL01")~ EXIT
  IF ~~ THEN REPLY ~So, Duvaine, playing happy families are we? Hold, someone is missing, now where is the blushing bride to be? Maybe your parents would like to hear how you courted and won her heart?~DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutL01")~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY ~What?!... Leina... Deare...~
  IF ~~ THEN EXTERN ~AUBERON~ 1
END 