CHAIN JAHEI25J KRst0
~So you actually dared to do it, Keldorn?~
EXTERN KELDO25J LT12_Jh0

CHAIN JAHEI25J KRst1
~Keldorn!~
EXTERN KELDO25J LT12_Jh1

CHAIN JAHEI25J KRst2
~Am I judging you? No. You have answered the call of Nature, and as a servant of nature, I see nothing shameful in it.~
EXTERN KELDO25J LT12_Jh2

CHAIN JAHEI25J KRst3
~That I approve of your action, but only asking: please, be more careful with my girl.~
EXTERN KELDO25J LT12_Jh3

CHAIN JAHEI25J KRst4
~Ah, if only Khalid was here with us, he would have been so happy for you, so proud of you. And... I will tell you honestly, I am dying to see your child!~
END
 IF ~True()~ THEN EXTERN FINSOL01 KR6
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN IMOEN25J KRst8

CHAIN JAHEI25J KRst5
~You think you can keep the balance? I heard, lord Ao was very disturbed by its perversion. It is necessary for you to stay neutral, as Kelemvor does, in order not to break the fragile balance between good and evil. I wish you success in this. Your task is not an easy one: to fight evil and think about preserving the balance.~
END
 IF ~True()~ THEN EXTERN FINSOL01 KR8
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN IMOEN25J KRst7

CHAIN JAHEI25J KRst6
~Ah, if only Khalid was here with us, he would have been so happy for you, so proud of you. And... I will tell you honestly, I am dying to see your child!~
END
 IF ~True()~ THEN EXTERN FINSOL01 KR9
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN IMOEN25J KRst5

CHAIN JAHEI25J KRst7
~You think you can keep the balance? I heard, lord Ao is very disturbed by its perversion. It is necessary for you to stay neutral, as Kelemvor does, in order not to break the fragile balance between good and evil. I wish you success in this. Your task is not an easy one: to fight evil and preserve the balance.~
END
 IF ~True()~ THEN EXTERN FINSOL01 KR10
 IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN IMOEN25J KRst4