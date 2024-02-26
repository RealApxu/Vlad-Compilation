BEGIN ~TuMatej~

IF ~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~You appear to be lost. Can I be of help and direct you somewhere?~
  IF ~~ THEN REPLY ~I have only recently arrived and still trying to find my bearings. I am <CHARNAME>.~ JOURNAL ~Halruaa's Internal Affairs.

On stepping inside this impressive building I was greeted by Matej, another young scholar... he seemed surprised that Halruaa was taking in new students. As well as giving me some useful information on the layout of the building he hinted that there was a lack of senior mage presence throughout the academy. Is this an indication that Halruaa has already made its move or is about to... have I arrived too late as did Tilorn before me?~ GOTO 1
  IF ~~ THEN REPLY ~A magnificent building this! So easy to take a wrong corner when first settling in. I am <CHARNAME> by the way, and you are?~ JOURNAL ~Halruaa's Internal Affairs.

On stepping inside this impressive building I was greeted by Matej, another young scholar... he seemed surprised that Halruaa was taking in new students. As well as giving me some useful information on the layout of the building he hinted that there was a lack of senior mage presence throughout the academy. Is this an indication that Halruaa has already made its move or is about to... have I arrived too late as did Tilorn before me?~ GOTO 1
  IF ~~ THEN REPLY ~Good day to you. I am <CHARNAME>. As a newcomer I am exploring the Academy and I am finding it most impressive!~ JOURNAL ~Halruaa's Internal Affairs.

On stepping inside this impressive building I was greeted by Matej, another young scholar... he seemed surprised that Halruaa was taking in new students. As well as giving me some useful information on the layout of the building he hinted that there was a lack of senior mage presence throughout the academy. Is this an indication that Halruaa has already made its move or is about to... have I arrived too late as did Tilorn before me?~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY ~I am Matej, welcome <CHARNAME>. I did not realise that Halruaa was taking new students at the moment, but then there is a lot that I do not know about. Now where is it that you wish to be?~
  IF ~~ THEN REPLY ~Well met, Matej. As there was no one to greet me on my arrival I thought to look around for myself and find someone to give me directions.~ GOTO 4
  IF ~~ THEN REPLY ~Well met, Matej. I would certainly appreciate some direction from here. Maybe you could give me a brief description of the Academy?~ GOTO 4
  IF ~~ THEN REPLY ~Perhaps you can tell me where I can find the person that I need to make my arrival known to Matej?~ GOTO 2
  IF ~~ THEN REPLY ~So, Matej, where do I find whoever is in charge here?~ GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY ~Unfortunately, nearly all of Halruaa's prominent mages are away on other business at the moment. At least I think they are, I have not seen some of them for a while now and you cannot usually walk far without bumping into one of them strutting around doing something or other.~
  IF ~~ THEN GOTO 3
END  
  
IF ~~ THEN BEGIN 3
  SAY ~There appears to be even more secrecy than is normal for even this place. Not that they tell us, students, a lot anyway. There are of course some of the tutors about, perhaps you should seek one of them out.~
  IF ~~ THEN REPLY ~Maybe that is what I will do. Could you possibly give me a brief description of the Academy, Matej? It will save time if I do not keep getting lost.~ GOTO 4
  IF ~~ THEN REPLY ~Thanks, I will do that Matej. Farewell.~ GOTO 6
END

IF ~~ THEN BEGIN 4
  SAY ~As you can see, this is the main building. The Academy itself is made up of several floors, but it is not too difficult to find your way around after a while. However, you may now access only the ground floor... There is usually a few more senior teachers about to make sure you do not get lost, but not today as you can see.~
  IF ~~ THEN GOTO 5
END    
  
IF ~~ THEN BEGIN 5
  SAY ~The much smaller buildings that you passed on your way in are Halruaa's living quarters. You should also probably know that it gets pretty hot during the day so evenings are best suited to outdoor activities.~ 
  IF ~~ THEN REPLY ~Thank you, Matej. You have been most helpful. Farewell.~ GOTO 6
  IF ~~ THEN REPLY ~Thank you, Matej. I will take my leave of you now, I should be able to find my way from here.~ GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY ~You are welcome, <CHARNAME>.~
  IF ~!InParty("Hrothgar")~ THEN GOTO 7
  IF ~InParty("Hrothgar")~ THEN EXTERN ~HROTHJ~ 64
END

IF ~~ THEN BEGIN 7
  SAY ~Farewell, <CHARNAME>. Perhaps we will bump into each other again.~
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END