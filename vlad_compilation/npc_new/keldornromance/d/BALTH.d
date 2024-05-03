ADD_TRANS_TRIGGER BALTH 25 ~OR(2) !InParty("Keldorn") Dead("Keldorn")~ DO 0

EXTEND_BOTTOM BALTH 25
 IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN DO ~EraseJournalEntry(67720) EraseJournalEntry(67721) EraseJournalEntry(67722) EraseJournalEntry(67723) EraseJournalEntry(66357)~ EXTERN KELDO25J Bz0
END

CHAIN BALTH KR0
~Are you going to tell me what my duty is, paladin?~
EXTERN KELDO25J Bz1

CHAIN BALTH KR1
~Very well. I am listening to you.~
END
 IF ~Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN KELDO25J Bz2
 IF ~!Global("VP_KrRomanceActive","GLOBAL",2)~ THEN EXTERN KELDO25J Bz2n

CHAIN BALTH KR2
~(Throwing up his eyes) Your bride? You want to tell me that...~
EXTERN KELDO25J Bz3

CHAIN BALTH KR3
~She does not want to take her father's throne?~
EXTERN KELDO25J Bz4

CHAIN BALTH KR4
~But why? I have an absolute trust in myself that I will kill her and then I'll kill myself.~
EXTERN KELDO25J Bz5

CHAIN BALTH KR5
~I am ready to die, paladin!~
EXTERN KELDO25J Bz6

CHAIN BALTH KR6
~Death is a necessity, paladin. Further conversation is pointless. I have a task which I must complete.~
DO ~Shout(ALERT) Enemy() EraseJournalEntry(67720) EraseJournalEntry(67721) EraseJournalEntry(67722) EraseJournalEntry(67723) EraseJournalEntry(66357)~
SOLVED_JOURNAL #67747 /* ~Assault on the Enclaves

Balthazar revealed himself as a Bhaalspawn, and one of the Five - though he never shared their goal of resurrecting Bhaal. The mad monk wanted to wipe the taint of Bhaal from the world by killing all of Bhaal's children, including himself.
More disturbing were the implications he leveled at the still-absent Melissan. If his words are true, she has been manipulating me the entire time for her own nefarious purposes.~ */
EXIT

/*
CHAIN BALTH KR6
~But how can I be sure...~
EXTERN KELDO25J Bz7


CHAIN BALTH KR7
~Yes... you are right, paladin. You are right. I have no right to deny her trust.~
DO ~SetGlobal("VP_Kr_Balth_Left","GLOBAL",1) EscapeArea()~
SOLVED_JOURNAL ~Assault on the Enclaves

Balthazar revealed himself as a Bhaalspawn, and one of the Five - though he never shared their goal of resurrecting Bhaal. The mad monk wanted to wipe the taint of Bhaal from the world by killing all of Bhaal's children, including himself.
However, Keldorn managed to reason him, and Balthazar left peacefully. More disturbing were the implications he leveled at the still-absent Melissan. If his words are true, she has been manipulating me the entire time for her own nefarious purposes.~
EXIT
*/