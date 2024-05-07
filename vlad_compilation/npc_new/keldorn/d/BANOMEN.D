CHAIN
IF WEIGHT #2 ~Global("VP_AnomenJealous","GLOBAL",6)~ THEN BANOMEN AHK_st0
~<CHARNAME>! Can we have a word?~
= ~You love him, don't you? Please, do not bother denying it. I see it, I'm losing to him in each and every way.~
= ~I understand... I just have to speak out as it is. Maybe it would be best if I left and kept out of your way?~
END
 ++ ~Anomen, it is your decision. I have no right to forbid you.~ EXTERN BANOMEN AHK_st1
 ++ ~Have it your way. I do not care.~ EXTERN BANOMEN AHK_st1
 ++ ~Yes, it's probably for the best. You should leave.~ EXTERN BANOMEN AHK_st2

CHAIN BANOMEN AHK_st1
~(Becomes thoughtful) What of the group, you will be left without a cleric? Your adventure is full of dangers, <CHARNAME>, and I do not want you to suffer because of my lack of reserve. After all sir Ryan did commission me to accompany you.~
= ~You remember I once told you that you remind me of Moira? Maybe I can start learning to love you as sister, now that there is nothing else left for me.~
DO ~SetGlobal("VP_AnomenJealous","GLOBAL",7)~
EXIT

CHAIN BANOMEN AHK_st2
~Then I'll go to Oisig. Helm shall not forsake me. Farewell, my love.~
DO ~SetGlobal("VP_Anom_Frustrated","GLOBAL",3)
SetGlobal("KickedOut","LOCALS",1)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
EscapeAreaMove("AR0901",705,711,4)~
EXIT

CHAIN
IF WEIGHT #3 ~Global("VP_Anom_Frustrated","GLOBAL",2)~ THEN BANOMEN AFr_st0
~Be so kind and tell *your* Keldorn to leave me in peace! I have lost everything, don't you see? Everything! The dream of my life, my first love...~
END
 ++ ~Anomen, that is not reason enough for you to take your hurt out on Keldorn! After all he is older and wiser than you!~ EXTERN BANOMEN AFr_st1
 ++ ~This is all my fault! I must have talked you out of that. I am so sorry.~ EXTERN BANOMEN AFr_st1

CHAIN BANOMEN AFr_st1
~(Turns sulky) No, my love. I have my own head on my shoulders, but I did my father's bidding. Neither you, nor I have enough experience to have been able to foresee the outcome.~
= ~(In a confused and low voice) I should have listened to Keldorn, but I couldn't stand another of those sermons of his, and this, all of this will come to no good.~
= ~I... I should leave you my love, and disappear forever. It hurts me so much to see your love for another. Please tell him that I still have the greatest respect for him. Farewell.~
END
 ++ ~Where will you go?~ EXTERN BANOMEN AFr_st2

CHAIN BANOMEN AFr_st2
~To Oisig. Helm shall not forsake me.~
EXTERN KELDORJ AnomLeav

CHAIN BANOMEN AnomBye
~Farewell, my love, farewell forever.~
DO ~SetGlobal("VP_Anom_Frustrated","GLOBAL",3)
SetGlobal("KickedOut","LOCALS",1)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
EscapeAreaMove("AR0901",705,711,4)~
EXIT

/////////////CHAINs////////////////

CHAIN
IF WEIGHT #0 ~Global("VP_AnomenJealous","GLOBAL",2)~ THEN BANOMEN AnomenHatred1
~Lord Keldorn! May I have a word with you?~
DO ~SetGlobal("VP_AnomenJealous","GLOBAL",3)~
== BKELDOR ~By all means Anomen, what troubles you?~
== BANOMEN ~Sir Keldorn, it has not escaped my attention that you have frequent and long conversations with <CHARNAME>.~
== BKELDOR ~Anomen, I'm afraid I fail to see your point. Please, be so kind and explain yourself.~
== BANOMEN ~(Losing patience) I fail to understand what your interest is that you choose to pass so much time in her company!~
== BKELDOR ~(Laughing good-naturedly) Anomen... you like our lady. She's a lovely girl, I admit, but that is all and certainly not a reason for you to take your jealousy out on me.~
== BANOMEN ~(Swallowing bitterly) Then please accept my apologizes... it seems I have presumed too much.~
== BKELDOR ~Really, my friend, until now I could not even imagine that you... hm... have set your cap at her ' is that how you young men of today would put it?~
== BANOMEN ~I have spoken to her on several occasions... yes.~
== BKELDOR ~About what my young friend? You were telling her some bits about yourself, some bits about your family. These are but friendly and casual conversations, such as it is between friends. You are concerned about your Test and all your thoughts are with the Order now. This is the right thing, Anomen, this is what is important for you at the moment.~
== BANOMEN ~But what about... l-love?~
== BKELDOR ~Isn't it a little too early to speak of love, Anomen? And trust me the Order is of greater importance. It's good, when love is with you, when it is mutual... love inspires, it gives a special meaning to life. But if there is none, that is no tragedy either. To perform one's duty and to uphold the honour, that's the true path of a would-be knight.~
EXIT

CHAIN
IF WEIGHT #1 ~Global("VP_AnomenJealous","GLOBAL",4)~ THEN BANOMEN AnomenHatred2
~Sir Keldorn! You remember our talk? You said then, that passing the test and becoming a knight of The Order were of the most importance to me.~
DO ~SetGlobal("VP_AnomenJealous","GLOBAL",5)~
== BKELDOR ~And you have accomplished that! I am very pleased for you, Sir Anomen.~
== BANOMEN ~Thank you. But I was talking about another matter.~
== BKELDOR ~(With a sigh) Anomen, even if I ceased talking to her, it would hardly affect your relationship.~
== BANOMEN ~(Lowering his head) I'm afraid you are right, sir Keldorn. She can't take her eyes off you.~
== BKELDOR ~My friend, you exaggerate!~
== BANOMEN ~No. I can see it... me... I'm looking at her all the time and I realize that. I... I perceive that I am no match for you, Sir Keldorn.~
== BKELDOR ~Anomen...~
== BANOMEN ~(With passion) Don't you care? Why do you persist in stringing her along?~
== BKELDOR ~(Meeting his eyes) Of course I care, just as I care for anyone I have sworn to protect. Anomen, this conversation is not leading us anywhere.~
== BANOMEN ~So my jealousy is not groundless after all, eh? Perhaps, I should just leave now, and bother you both no more!~
== BKELDOR ~Where would you go? To your father?~
== BANOMEN ~To Sir Ryan.~
== BKELDOR ~And when he asks why you have abandoned <CHARNAME>. What would you answer? That you have failed to control your emotions?~
== BANOMEN ~I do not know.~
== BKELDOR ~(Gently) Anomen... Please, I beg of you, don't go making any rash decisions.~
EXIT