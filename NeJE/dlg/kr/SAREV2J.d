APPEND ~SAREV25J~

IF ~~ THEN BEGIN KRst0
  SAY ~(Offers his hand) Allow me to congratulate you, paladin. I see everything in my sister's happy eyes. I see her shining face, and that is why you will not hear judging words coming out of my mouth.~
  	IF ~~ THEN EXTERN ~KELDO25J~ LT12_Sr0
END

IF ~~ THEN BEGIN KRst1
  SAY ~Did I ever say I was against love, or more importantly, against your love, Keldorn? My only wish was for my sister to be happy.~
  	IF ~~ THEN EXTERN ~KELDO25J~ LT12_Sr1
END

IF ~~ THEN BEGIN KRst2
  SAY ~I am now.~
  	IF ~~ THEN EXTERN ~KELDO25J~ LT12_Sr2
END

IF ~~ THEN BEGIN KRst3
	SAY ~Great, sister! You are right to leave gods to themselves, let them deal with their own problems! This is none of our business. I hope (he winks) that you will allow me to take care of my nephews? I doubt I will have any children of my own, little sister.~
		IF ~True()~ THEN EXTERN ~FINSOL01~ KR6
		IF ~InParty("Imoen2")
!Dead("Imoen2")~ THEN EXTERN ~IMOEN25J~ KRst8
		IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~JAHEI25J~ KRst4
END

IF ~~ THEN BEGIN KRst4
  SAY ~I am no one to judge you, sister. May be you are right. But I am sorry for your paladin. Not only did you make him lie to Balthazar, but you also left him.~
		IF ~True()~ THEN EXTERN ~FINSOL01~ KR8
		IF ~InParty("Imoen2")
!Dead("Imoen2")~ THEN EXTERN ~IMOEN25J~ KRst7
		IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~JAHEI25J~ KRst5
END

IF ~~ THEN BEGIN KRst5
  SAY ~Great, sister! You are right to leave the gods to dealing with their problems themselves! This is none of our business. And I hope (he winks) that you will allow me to take care of my nephews? I doubt I will have children of my own, little sister.~
		IF ~True()~ THEN EXTERN ~FINSOL01~ KR9
		IF ~InParty("Imoen2")
!Dead("Imoen2")~ THEN EXTERN ~IMOEN25J~ KRst5
		IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~JAHEI25J~ KRst6
END

IF ~~ THEN BEGIN KRst6
  SAY ~I am no one to judge you, sister. It may be that you are right. But I am sorry for your paladin. Not only did you make him lie to Balthazar, but you also left him.~
		IF ~True()~ THEN EXTERN ~FINSOL01~ KR10
		IF ~InParty("Imoen2")
!Dead("Imoen2")~ THEN EXTERN ~IMOEN25J~ KRst4
		IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~JAHEI25J~ KRst7
END
END