BEGIN KELDORNM

CHAIN
IF ~NumTimesTalkedTo(0)~ THEN KELDORNM 0
~(For a while he stares at you with indifference in his eyes, not recognising you. Then suddenly recognition of whom it is that he sees in front of him flashes in his eyes) <CHARNAME>... you... you have died also? Ah, I failed to aid you... on the contrary, it appears that have I lured you to your doom. Forgive me my lady... forgive me, I have failed you!~ [ifyougo]
END
 ++ ~(Though you try to suppress them, tears start falling down your cheeks) No, my friend, I am alive! Almighty Kelemvor led me to you and here I am. I beg you, please come with me, it's not your time to... to retire. I can't... I don't want to leave you in this dreadful place!~ EXTERN KELDORNM 1
 ++ ~Keldorn, my friend, my mentor! Do not blame yourself for the things that have not yet happened. I am alive, look, but without your help I really will die. I need your firm hand, your light spirit, your wisdom. Please, Keldorn, do not think that you are of no use!~ EXTERN KELDORNM 2
 ++ ~That is all you are regretting? You do not remember anything else? You do not remember that you have friends who need you, a mother who loves you and cares for you? Tell me, how will I look into her eyes... how will I explain to her that her son, the last count Firecam, has chosen eternal peace over his duties to his family? What words am I to find, Keldorn?~ EXTERN KELDORNM 3

CHAIN KELDORNM 1
~You are alive? Of course you are alive, you are crying. Don't, my lady, don't cry for me, I feel so right here, so peaceful. I am so happy that you came, I can say my last farewell to you. I swear <CHARNAME>, I will miss you, you are the last ray of light in my life.~
END
 ++ ~(Choking back the tears) What r-ray? You don't remember a thing, do you Keldorn?!~ EXTERN KELDORNM 9
 ++ ~You remember how I cried on your chest, and you were saying it was too early to mourn you? (More softly) You... you said that I was the nicest girl you had ever met?~ EXTERN KELDORNM 4
 ++ ~You have forgotten about the war? You have forgotten about the siege of your own castle? What will your subjects think of its owner... that he left them at their most desperate hour? What if those creatures win? They will kill all, wipe out all in the search for that damned ring. They do not know that it is already in the hands of Kelemvor!~ EXTERN KELDORNM 5
 ++ ~You haven't even asked how it is I come to be here? Why don't you ask me how you died? Do you not wonder what has become of the ring of Cyric that you were trusted to keep and protect? I can answer you. I put on the ring and found myself in Baator, I talked to the guardian there, I went to Sigil, and Lord Kelemvor took the ring from me.~ EXTERN KELDORNM 6
 ++ ~Do you remember how you died Keldorn? A priest of Cyric cursed you with an unremovable curse to deprive the army of their commander! Yes, I have power enough to withstand the fight and enough dexterity not to get myself killed, but I lack your knowledge and experience to continue the defence. Anyway, your people will see that you are no longer with them them and they... they will be completely and utterly desolated, Keldorn!~ EXTERN KELDORNM 10

CHAIN KELDORNM 2
~(With a sigh) You still need mentors, my child. Am I the only one who can teach you the sense and wisdom of this world? This is of course is my duty... then let it be as you wish.~
DO ~SetGlobal("VP_KrRomanceActive","GLOBAL",3) SetGlobal("VP_Kr_CyricPlot","GLOBAL",9) ClearAllActions() StartCutSceneMode() StartCutScene("KRCut34")~
EXIT

CHAIN KELDORNM 3
~The family was always the last priority for me as you may remember, and my mother will understand perfectly. You have nothing to worry about.~
DO ~SetGlobal("VP_KrRomanceActive","GLOBAL",3) SetGlobal("VP_Kr_CyricPlot","GLOBAL",9) ClearAllActions() StartCutSceneMode() StartCutScene("KRCut13")~
JOURNAL ~I had a vision: defence is breached, goblins and giants conquer Firecam's castle and kill everyone within. Keldorn is dead. I have only a void left in my soul. But I know that I must at least save Imoen. I must resist the dark power that is raging inside me, in memory of Keldorn. To him I own that much... Now, back to Athkatla.~
EXIT

CHAIN KELDORNM 4
~(Looking at you... his eyes not blinking) I... I do remember. How you sat beside me guarding my sleep and trying to conceal it. I remember now, <CHARNAME>! You are right, I had forgotten. This water is the source of oblivion, it strips us of all sufferings without looking into its reasons.~
EXTERN KELDORNM K3

CHAIN KELDORNM 5
~Yea gods, I had not thought of that! How did Kelemvor get hold of the ring?~
END
 ++ ~(Quietly) I...I put it on to save you, then I was in Baator, I talked to the guardian there, and I was returned to Sigil... This is a long story, Keldorn!~ EXTERN KELDORNM 7

CHAIN KELDORNM 6
~Why did you put on the ring?!~
END
 ++ ~To save you!~ EXTERN KELDORNM 7

CHAIN KELDORNM 7
~(Shaking his head) Baator, guardian, Kelemvor... I can not take all of this in right now. However, you are right my lady, I need to return! You have done so much alone whilst I was away.~
EXTERN KELEMVOR K3

CHAIN KELDORNM 8
~Then it looks as though I have deserted the battlefield? Ah, how awry! You are right, we must finish that which we started. How could I leave you now! Come, my dear friend, we must move swiftly.~
EXTERN KELEMVOR K3

CHAIN KELDORNM 9
~No... I do not remember anything. I am very tired, <CHARNAME>, I've lost my family, my friends. No, I have nothing to return to. Please do not try to persuade me, do not disturb my peace. It galls me to have to admit that I failed to aid you, but such was the will of Gods. Farewell, <CHARNAME>, and please my lady... do not cry, I beg you.~
DO ~SetGlobal("VP_KrRomanceActive","GLOBAL",3) SetGlobal("VP_Kr_CyricPlot","GLOBAL",9) ClearAllActions() StartCutSceneMode() StartCutScene("KRCut13")~
JOURNAL ~I had a vision: defence is breached, goblins and giants conquer Firecam's castle and kill everyone within. Keldorn is dead. I have only a void left in my soul. But I know that I must at least save Imoen. I must resist the dark power that is raging inside me, in memory of Keldorn. To him I own that much... Now, back to Athkatla.~
EXIT

CHAIN KELDORNM 10
~Please, don't cry my lady.~
END
 ++ ~(Your tears burn your cheeks with rage) I... I have gotten used to fighting beside you and you knowing that you will always cover my back... So tell me, why are you letting them win?! Why?!~ EXTERN KELDORNM 8

CHAIN KELDORNM K3
~I have told you that it is not within my power to forsake your care, and I will repeat it... I still can not forsake it anymore than I may forsake you.~
= ~(Giving you his hand) I will go with you!~
EXTERN KELEMVOR K3

CHAIN KELDORNM K4
~No, I do not agree! A young girl must not sacrifice herself for my sake... for the sake of an old man! No my lady, I will stay here. You must not pay for my stupidity!~
EXTERN KELEMVOR K5

CHAIN KELDORNM K5
~I will become one of the fallen!~
EXTERN KELEMVOR K6

CHAIN KELDORNM K6
~If you are hesitating, then I am not. I will stay Lord Kelemvor, and my decision is final.~
DO ~SetGlobal("VP_KrRomanceActive","GLOBAL",3) SetGlobal("VP_Kr_CyricPlot","GLOBAL",9) ClearAllActions() StartCutSceneMode() StartCutScene("KRCut13")~
JOURNAL ~I had a vision: defence is breached, goblins and giants conquer Firecam's castle and kill everyone within. Keldorn is dead. I have only a void left in my soul. But I know that I must at least save Imoen. I must resist the dark power that is raging inside me, in memory of Keldorn. To him I own that much... Now, back to Athkatla.~
EXIT