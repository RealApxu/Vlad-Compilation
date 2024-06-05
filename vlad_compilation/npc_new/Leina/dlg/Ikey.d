BEGIN IKEY

CHAIN
IF ~NumTimesTalkedTo(0)~ THEN IKEY 0 // from:
~M'<PRO_LADYLORD>, wait up a moment. I 'ave a message for yer from Samuel Thunderburp, keeper of the Five Flagons. 'E says for yer to come quick if yer be int'rested in making yerselves a bit of gold. 'E 'as a bit of trouble that ye mights be able to 'elp 'im with.~
END
 ++ ~Did this Samuel Thunderburp say what this urgent matter is?~ EXTERN IKEY 2
 ++ ~What could your boss possibly have to say that would interest me boy?~ EXTERN IKEY 2
 ++ ~You picked a bad time to be asking for my aid sonny. Have you any idea what it is he wants?~ EXTERN IKEY 2
 ++ ~Tell me boy, why does this Samuel Thunderburp think I can help him?~ EXTERN IKEY 2
 ++ ~Gold you say, well now that is something I am always ready to discuss. You run along and tell this Samuel Thunderburp that I will be around shortly.~ UNSOLVED_JOURNAL ~Trouble at The Five Flagons Inn.

I was approached today by a young lad requesting me to speak with Samuel Thunderburp. Proprietor of The Five Flagons ... seems this Samuel Thunderburp is offering gold in exchange for my help. I told the lad that to run and tell him I�d be there shortly. I can always find a use for gold.~ EXTERN IKEY 1

CHAIN IKEY 1
~Very well, m'<PRO_LADYLORD>. 'E will be 'appy to 'ear that. I will take yer message straight back to 'im.~
DO ~SetGlobal("VP_ResqueLeina","GLOBAL",1) EscapeArea()~
EXIT

CHAIN IKEY 2
~I don't rightly know, m'<PRO_LADYLORD>` but 'e is sure worried 'bout summit, and 'is customers are complaining 'cause there aint no singer a singing there now. P'raps its summit to do with that.~
END
 ++ ~I suppose I can spare him a few minutes. Okay. Boy, you go tell this barkeep that we will be around shortly to hear his story.~ UNSOLVED_JOURNAL ~Trouble at The Five Flagons Inn.

I was approached today by a young lad requesting me to speak with Samuel Thunderburp. Proprietor of The Five Flagons ... seems this Samuel Thunderburp is offering gold in exchange for my help. I told the lad that to run and tell him I�d be there shortly. I can always find a use for gold.~ EXTERN IKEY 1
 ++ ~Sorry sonny, you will have to go tell this barkeep that I have more important things to see to than to look for his missing minstrel.~ UNSOLVED_JOURNAL ~Trouble at The Five Flagons Inn.

I was approached today by a young lad requesting me to speak with Samuel Thunderburp. Proprietor of The Five Flagons ... seems this Samuel Thunderburp is offering gold in exchange for my help. I have enough troubles of my own without getting caught up in the affairs of others so I declined to help.~ EXTERN IKEY 4
 ++ ~I am sorry lad, I would love to help this Samuel, but I have things far more important of my own to sort at this moment.~ UNSOLVED_JOURNAL ~Trouble at The Five Flagons Inn.

I was approached today by a young lad requesting me to speak with Samuel Thunderburp. Proprietor of The Five Flagons ... seems this Samuel Thunderburp is offering gold in exchange for my help. I have enough troubles of my own without getting caught up in the affairs of others, but I may have time in future to help him out.~ EXTERN IKEY 3

CHAIN IKEY 3
~As you wish, m'<PRO_LADYLORD>. I 'ave been 'lready paid, but yer knows where 'e is if yer changes yer mind. Good day to yer.~
DO ~SetGlobal("VP_ResqueLeina","GLOBAL",1) EscapeArea()~
EXIT

CHAIN IKEY 4
~As you wish, m'<PRO_LADYLORD>. I 'ave been 'lready paid anyway. Good day to yer.~
DO ~EscapeArea()~
EXIT