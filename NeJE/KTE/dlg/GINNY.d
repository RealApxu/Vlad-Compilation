BEGIN ~GINNY~

IF ~Dead("DeathK")~ THEN BEGIN 0
  SAY ~Who?! No...Stay back! Stay away!~
  IF ~~ THEN REPLY ~Calm down, child. We are here to help you.~ GOTO 1
  IF ~~ THEN REPLY ~Suck it up, child! The big bad monster is dead and we don't tolerate no crybabies!~ JOURNAL ~I have rescued a young lady from the very clutches of this place. She will live, but not without some lasting effects, I am sure. She had to kill her own double, and came very close to death herself. She is young... she will survive.~ GOTO 2
  IF ~Global("Therella","GLOBAL",1)~ THEN REPLY ~Your name? Is it Ginny? Your mother sent us to find you. Your mother Therella.~ JOURNAL ~I have found and rescued her daughter as Therella wished. Her fellows are dead, but she will live.  ~ GOTO 3
  IF ~~ THEN REPLY ~Relax, girl. This is all just a bad dream and you'll wake up tomorrow right as rain.~ JOURNAL ~I have rescued a young lady from the very clutches of this place. She will live, but not without some lasting effects, I am sure. She had to kill her own double, and came very close to death herself. She is young... she will survive.~ GOTO 5
  IF ~~ THEN REPLY ~Get out of here, girl! It ain't safe! Get movin'!~ JOURNAL ~I have rescued a young lady from the very clutches of this place. She will live, but not without some lasting effects, I am sure. She had to kill her own double, and came very close to death herself. She is young... she will survive.~ GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY ~I don't believe! It all hurts here! Everything! You too!~
  IF ~~ THEN REPLY ~Run then! Run from this place and don't look back!~ JOURNAL ~I have rescued a young lady from the very clutches of this place. She will live, but not without some lasting effects, I am sure. She had to kill her own double, and came very close to death herself. She is young... she will survive.~ GOTO 4
  IF ~~ THEN REPLY ~No, child, I am here to help. Nothing will harm you now.~ JOURNAL ~I have rescued a young lady from the very clutches of this place. She will live, but not without some lasting effects, I am sure. She had to kill her own double, and came very close to death herself. She is young... she will survive.~ GOTO 6
  IF ~Global("Therella","GLOBAL",1)~ THEN REPLY ~Your mother sent me to find you; your mother Therella.~ JOURNAL ~I have found and rescued her daughter as Therella wished. Her fellows are dead, but she will live.  ~ GOTO 3
  IF ~~ THEN REPLY ~Aw shut-up, nothing is gonna hurt you now.~ JOURNAL ~I have rescued a young lady from the very clutches of this place. She will live, but not without some lasting effects, I am sure. She had to kill her own double, and came very close to death herself. She is young... she will survive.~ GOTO 2
  IF ~~ THEN REPLY ~I don't care what you believe. If you're too stupid to recognize that you've been rescued you can stay here for all I care.~ JOURNAL ~I have rescued a young lady from the very clutches of this place. She will live, but not without some lasting effects, I am sure. She had to kill her own double, and came very close to death herself. She is young... she will survive.~ GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY ~AHHHHHH!!!! You're here to hurt too! Gotta run! GOTTA RUN!~
  IF ~~ THEN DO ~SetGlobal("Therella","GLOBAL",2)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY ~My... she... she sent you? Oh thank the gods and all that's good! I just wanna... I just wanna go home.~
  IF ~~ THEN REPLY ~Then get moving! The way is clear behind us. Stay calm and you'll get out just fine.~ GOTO 4
  IF ~~ THEN REPLY ~Yeah, whatever. Get out of here, girl. I've cleaned up your mess and you should be safe if you leave now. Get going.~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY ~Gotta go...gotta go NOW!! AAAAHHHHHH!!!~
  IF ~~ THEN DO ~SetGlobal("Therella","GLOBAL",2)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~Just a... just a bad dream... gotta run outta here... gotta wake up! GOTTA RUN!~
  IF ~~ THEN DO ~SetGlobal("Therella","GLOBAL",2)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY ~You're n-not gonna hurt? You... you've come to rescue! Praise the gods! ~
  IF ~~ THEN REPLY ~Yes, girl, calm down. We met one of your fellows and she told us of your plight. You should go now. The way is fairly clear, and you should be safe.~ GOTO 4
  IF ~~ THEN REPLY ~Yeah, whatever. Get out of here, girl. I've cleaned up your mess and you should be safe if you leave now. Get going.~ GOTO 4
END