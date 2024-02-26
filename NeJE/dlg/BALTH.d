ADD_TRANS_TRIGGER BALTH 25 ~OR(2)
!InParty("Keldorn")
Dead("Keldorn")~ DO 0

EXTEND_BOTTOM BALTH 25
  IF ~InParty("Keldorn")
!Dead("Keldorn")~ THEN DO ~EraseJournalEntry(67720)
EraseJournalEntry(67721)
EraseJournalEntry(67722)
EraseJournalEntry(67723)
EraseJournalEntry(66357)~ EXTERN ~KELDO25J~ Bz0
END

APPEND ~BALTH~

IF ~~ THEN BEGIN KR0
	SAY ~Are you going to tell me what my duty is, paladin?~
  		IF ~~ THEN EXTERN ~KELDO25J~ Bz1
END 

IF ~~ THEN BEGIN KR1
	SAY ~Very well. I am listening to you.~
  		IF ~Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN ~KELDO25J~ Bz2
  		IF ~!Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN ~KELDO25J~ Bz2n
END 

IF ~~ THEN BEGIN KR2
	SAY ~(Throwing up his eyes) Your bride? You want to tell me that...~
  		IF ~~ THEN EXTERN ~KELDO25J~ Bz3
END 

IF ~~ THEN BEGIN KR3
	SAY ~She does not want to take her father's throne?~
  		IF ~~ THEN EXTERN ~KELDO25J~ Bz4
END 

IF ~~ THEN BEGIN KR4
	SAY ~But why? I have an absolute trust in myself that I will kill her and then I'll kill myself.~
  		IF ~~ THEN EXTERN ~KELDO25J~ Bz5
END 

IF ~~ THEN BEGIN KR5
	SAY ~I am ready to die, paladin!~
  		IF ~~ THEN EXTERN ~KELDO25J~ Bz6
END 

IF ~~ THEN BEGIN KR6
  SAY ~Death is a necessity, paladin. Further conversation is pointless. I have a task which I must complete.~
  IF ~~ THEN DO ~Shout(ALERT)
Enemy()
EraseJournalEntry(67720)
EraseJournalEntry(67721)
EraseJournalEntry(67722)
EraseJournalEntry(67723)
EraseJournalEntry(66357)~ SOLVED_JOURNAL #67747 /* ~Assault on the Enclaves

Balthazar revealed himself as a Bhaalspawn, and one of the Five - though he never shared their goal of resurrecting Bhaal.  The mad monk wanted to wipe the taint of Bhaal from the world by killing all of Bhaal's children, including himself.
More disturbing were the implications he leveled at the still-absent Melissan.  If his words are true, she has been manipulating me the entire time for her own nefarious purposes.~ */ EXIT
END

/*IF ~~ THEN BEGIN KR6
	SAY ~But how can I be sure...~
  		IF ~~ THEN EXTERN ~KELDO25J~ Bz7
END 

IF ~~ THEN BEGIN KR7
	SAY ~Yes... you are right, paladin. You are right. I have no right to deny her trust.~
  IF ~~ THEN DO ~SetGlobal("VP_Kr_Balth_Left","GLOBAL",1)
EscapeArea()~ SOLVED_JOURNAL ~Assault on the Enclaves

Balthazar revealed himself as a Bhaalspawn, and one of the Five - though he never shared their goal of resurrecting Bhaal. The mad monk wanted to wipe the taint of Bhaal from the world by killing all of Bhaal's children, including himself.
However, Keldorn managed to reason him, and Balthazar left peacefully. More disturbing were the implications he leveled at the still-absent Melissan. If his words are true, she has been manipulating me the entire time for her own nefarious purposes.~ EXIT
END*/
END