CHAIN BANOME25 TS134
~I care not what you told me. My conversation with her is a private one.~
EXTERN BVALYG25 TS179

CHAIN BANOME25 TS135
~Jealous? Of course you are jealous! She loves me, not you!~
EXTERN BVALYG25 TS180

CHAIN BANOME25 TS136
~What! I love her more than my own life, and I will hurt her? You are going queer, ranger! I just need to talk to her. <CHARNAME>, I beg you to tell me what is going on... Do you like Valygar better than I?~
END
 ++ ~That�s enough. Valygar, you have some sort of idea-fix that everyone tries to hurt me and you are the one to save me. Let me remind you, that I am quite capable of taking care of myself. Besides I do not desire to be protected from the love of my life, Anomen... (*give Anomen a sweet smile*)~ EXTERN BVALYG25 TS181
 ++ ~I think I know the way to solve this conflict: I care for neither of you. But I consider both of you my friends. So do make up and let�s forget about this silly conversation.~ EXTERN BVALYG25 TS182
 ++ ~Ahem... Anomen. I do not know how you came up with the notion that I like you... I am sorry if I have given you a false hope. I prefer you not to intervene into my relationship with Valygar. ~ EXTERN BVALYG25 TS184
 ++ ~(*Grin... and stay silent waiting for the next scene*)~ EXTERN BVALYG25 TS186
 ++ ~(*Cry helplessly*) Fools, I... I love both of you. Please, do not make me choose...~ EXTERN BVALYG25 TS188

CHAIN BANOME25 TS137
~I cannot believe my own ears!~
EXTERN BVALYG25 TS183

CHAIN BANOME25 TS138
~I do not want to hear another word! I have to be alone now.~
DO ~ChangeAlignment(Myself,CHAOTIC_NEUTRAL)~
EXIT

CHAIN BANOME25 TS139
~I do not want to hear another word! I have to be alone now.~
DO ~LeaveParty() EscapeArea()~
EXIT

CHAIN BANOME25 TS140
~Let me go talk to her! Or I swear I will kill you!~
EXTERN BVALYG25 TS187

CHAIN BANOME25 TS141
~How dare you are...~
DO ~SetGlobal("AnomenValygarFight","GLOBAL",1) SetLeavePartyDialogFile() LeaveParty() ChangeAIScript("",DEFAULT) ChangeAIScript("useitem",GENERAL) ChangeAIScript("anvsval",SPECIFICS)~
EXIT

CHAIN BANOME25 TS142
~The gratitude of a lady is what a knight strives for. He is willing to endanger his life in a tournament for her approval and he seeks adventures and glory to gain her favor.~
EXTERN VPSIMB TSTOB15

CHAIN BANOME25 TS143
~A little wrinkle between your brows indicates that you do not approve. Is that so, Sime?~
EXTERN VPSIMB TSTOB16

CHAIN BANOME25 TS144
~Is there another sort of love, than falling for a beautiful and cold Lady from afar and fighting for years on end for a hint of a smile?~
EXTERN VPSIMB TSTOB17

CHAIN BANOME25 TS145
~[*Chuckles*] Indeed my Lady, it is difficult to imagine you indifferent to a battle. I have been a witness to your prowess. But you said my Lady, "while the love lasts". Do you mean that all love expires?~
EXTERN VPSIMB TSTOB18