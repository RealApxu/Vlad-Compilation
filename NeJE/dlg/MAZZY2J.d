APPEND ~MAZZY25J~

IF ~~ THEN BEGIN KRst0
  SAY ~(Irresolutely) Sir Keldorn, will you allow me to speak with you?~
  	IF ~~ THEN EXTERN ~KELDO25J~ LT12_Mz0 
END

IF ~~ THEN BEGIN KRst1
  SAY ~(More resolutely) Keldorn, I wish to speak with a paladin, whom I admire. You always were a good example for me.~
  	IF ~~ THEN EXTERN ~KELDO25J~ LT12_Mz1 
END  
  
IF ~~ THEN BEGIN KRst2
  SAY ~(Even more resolutely) Keldorn! You and <CHARNAME> are not married yet, are you?~
  	IF ~~ THEN EXTERN ~KELDO25J~ LT12_Mz2 
END    
  
IF ~~ THEN BEGIN KRst3
  SAY ~But this night you were...~
  	IF ~~ THEN EXTERN ~KELDO25J~ LT12_Mz3 
END     
  
IF ~~ THEN BEGIN KRst4
  SAY ~(Confused) I... I do not have the right, but my thoughts were that you shouldn't as a paladin...~
  	IF ~~ THEN EXTERN ~KELDO25J~ LT12_Mz4
END     
  
IF ~~ THEN BEGIN KRst5
  SAY ~(Perplexed) Yes...~
  	IF ~~ THEN EXTERN ~KELDO25J~ LT12_Mz5
END   
  
IF ~~ THEN BEGIN KRst6
  SAY ~Had to? Oh, Arvoreen! I do understand. Forgive me, Keldorn, for being uncertain about you. You remain a fine example of a paladin, both wise and compassionate. Please forgive my doubts.~
  	IF ~~ THEN EXTERN ~KELDO25J~ LT12_Mz6
END    
END