APPEND ~JAHEI25J~

IF ~~ THEN BEGIN KRst0
  SAY ~So you actually dared to do it, Keldorn?~
  IF ~~ THEN EXTERN ~KELDO25J~ LT12_Jh0
END

IF ~~ THEN BEGIN KRst1
  SAY ~Keldorn!~
  IF ~~ THEN EXTERN ~KELDO25J~ LT12_Jh1
END

IF ~~ THEN BEGIN KRst2
  SAY ~Am I judging you? No. You have answered the call of Nature, and as a servant of nature, I see nothing shameful in it.~
  IF ~~ THEN EXTERN ~KELDO25J~ LT12_Jh2
END

IF ~~ THEN BEGIN KRst3
  SAY ~That I approve of your action, but only asking: please, be more careful with my girl.~
  IF ~~ THEN EXTERN ~KELDO25J~ LT12_Jh3
END

IF ~~ THEN BEGIN KRst4
    SAY ~Ah, if only Khalid was here with us, he would have been so happy for you, so proud of you. And... I will tell you honestly, I am dying to see your child!~
    IF ~True()~ THEN EXTERN ~FINSOL01~ KR6
    IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN ~IMOEN25J~ KRst8
END

IF ~~ THEN BEGIN KRst5
    SAY ~You think you can keep the balance? I heard, lord Ao was very disturbed by its perversion. It is necessary for you to stay neutral, as Kelemvor does, in order not to break the fragile balance between good and evil. I wish you success in this. Your task is not an easy one: to fight evil and think about preserving the balance.~
    IF ~True()~ THEN EXTERN ~FINSOL01~ KR8
    IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN ~IMOEN25J~ KRst7
END

IF ~~ THEN BEGIN KRst6
    SAY ~Ah, if only Khalid was here with us, he would have been so happy for you, so proud of you. And... I will tell you honestly, I am dying to see your child!~
    IF ~True()~ THEN EXTERN ~FINSOL01~ KR9
    IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN ~IMOEN25J~ KRst5
END

IF ~~ THEN BEGIN KRst7
    SAY ~You think you can keep the balance? I heard, lord Ao is very disturbed by its perversion. It is necessary for you to stay neutral, as Kelemvor does, in order not to break the fragile balance between good and evil. I wish you success in this. Your task is not an easy one: to fight evil and preserve the balance.~
    IF ~True()~ THEN EXTERN ~FINSOL01~ KR10
    IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN ~IMOEN25J~ KRst4
END

END