BEGIN VPKAC25J

CHAIN
IF ~Global("VP_Yoshimo_Dies","GLOBAL",2) See(Player1) !StateCheck(Player1,STATE_SLEEPING)~ THEN VPKAC25J 0
~Sorry, <CHARNAME>, I cannot stay with you any longer. Without Yoshimo, I have nothing to do in your party. I must go back to Kozakura. Good luck to you.~
DO ~LeaveParty() EscapeArea()~
EXIT

CHAIN VPKAC25J 1
~Oh, my love, I was so worried about you!~
EXIT

CHAIN VPKAC25J 2
~Yes, Yoshimo, let�s go. Sorry, <CHARNAME>... Take care...~
DO ~LeaveParty() EscapeArea()~
EXIT

CHAIN VPKAC25J 3
~There are ten millions immortal spirits we worship in Kara-Tur.~
END
 IF ~Kit(Player1,KENSAI)~ THEN EXTERN VPKAC25J 4
 IF ~!Kit(Player1,KENSAI)~ THEN EXTERN VPKAC25J 5

CHAIN VPKAC25J 4
~You are now offered a destiny each samurai dreams of since his or her first steps on the path. You can join the ranks of the immortals, <CHARNAME>-san. Kachiko Nakanishi bows to you.~
END
 IF ~True()~ THEN EXTERN FINSOL01 28
 IF ~InParty("Valygar") Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN VALYG25J 3
 IF ~InParty("Anomen") Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ANOME25J 11
 IF ~InParty("Viconia") Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN VICON25J 8
 IF ~InParty("Aerie") Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN AERIE25J 9
 IF ~InParty("Jaheira") Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN JAHEI25J 9
 IF ~InParty("Valygar") !Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN VALYG25J 2
 IF ~InParty("Anomen") !Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ANOME25J 10
 IF ~InParty("Viconia") !Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN VICON25J 6
 IF ~InParty("Aerie") !Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN AERIE25J 7
 IF ~InParty("Jaheira") !Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN JAHEI25J 7
 IF ~InParty("Imoen2")~ THEN EXTERN IMOEN25J 15
 IF ~InParty("Sarevok") !Alignment("Sarevok",MASK_EVIL)~ THEN EXTERN SAREV25J 2
 IF ~InParty("Sarevok") Alignment("Sarevok",MASK_EVIL)~ THEN EXTERN SAREV25J 3
 IF ~InParty("Minsc")~ THEN EXTERN MINSC25J 0
 IF ~InParty("Nalia")~ THEN EXTERN NALIA25J 1
 IF ~InParty("HaerDalis")~ THEN EXTERN HAERD25J 1
 IF ~InParty("Jan")~ THEN EXTERN JAN25J 3
 IF ~InParty("Cernd")~ THEN EXTERN CERND25J 0
 IF ~InParty("Mazzy")~ THEN EXTERN MAZZY25J 0
 IF ~InParty("Edwin")~ THEN EXTERN EDWIN25J 0
 IF ~InParty("Korgan")~ THEN EXTERN KORGA25J 2
 IF ~InParty("Keldorn")~ THEN EXTERN KELDO25J 0
//IF ~InParty("Coran")~ THEN EXTERN ~CORAN25J~ 0
//IF ~InParty("Dynaheir")~ THEN EXTERN ~DYNA25J~ 0

CHAIN VPKAC25J 5
~You might become one of them. I bow to your greatness and achievement, <CHARNAME>-san.~
END
 IF ~True()~ THEN EXTERN FINSOL01 28
 IF ~InParty("Valygar") Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN VALYG25J 3
 IF ~InParty("Anomen") Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ANOME25J 11
 IF ~InParty("Viconia") Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN VICON25J 8
 IF ~InParty("Aerie") Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN AERIE25J 9
 IF ~InParty("Jaheira") Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN JAHEI25J 9
 IF ~InParty("Valygar") !Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN VALYG25J 2
 IF ~InParty("Anomen") !Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ANOME25J 10
 IF ~InParty("Viconia") !Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN VICON25J 6
 IF ~InParty("Aerie") !Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN AERIE25J 7
 IF ~InParty("Jaheira") !Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN JAHEI25J 7
 IF ~InParty("Imoen2")~ THEN EXTERN IMOEN25J 15
 IF ~InParty("Sarevok") !Alignment("Sarevok",MASK_EVIL)~ THEN EXTERN SAREV25J 2
 IF ~InParty("Sarevok") Alignment("Sarevok",MASK_EVIL)~ THEN EXTERN SAREV25J 3
 IF ~InParty("Minsc")~ THEN EXTERN MINSC25J 0
 IF ~InParty("Nalia")~ THEN EXTERN NALIA25J 1
 IF ~InParty("HaerDalis")~ THEN EXTERN HAERD25J 1
 IF ~InParty("Jan")~ THEN EXTERN JAN25J 3
 IF ~InParty("Cernd")~ THEN EXTERN CERND25J 0
 IF ~InParty("Mazzy")~ THEN EXTERN MAZZY25J 0
 IF ~InParty("Edwin")~ THEN EXTERN EDWIN25J 0
 IF ~InParty("Korgan")~ THEN EXTERN KORGA25J 2
 IF ~InParty("Keldorn")~ THEN EXTERN KELDO25J 0
//IF ~InParty("Coran")~ THEN EXTERN ~CORAN25J~ 0
//IF ~InParty("Dynaheir")~ THEN EXTERN ~DYNA25J~ 0

/*
CHAIN VPKAC25J 6
~Oh, my love, I was so worried about you!~
DO ~ActionOverride("Yoshimo",JoinParty())~
EXIT

CHAIN VPKAC25J 7
~Yes, Yoshimo, let�s go. Sorry, <CHARNAME>... Take care...~
DO ~ActionOverride("Yoshimo",EscapeArea()) LeaveParty() EscapeArea())~
EXIT
*/