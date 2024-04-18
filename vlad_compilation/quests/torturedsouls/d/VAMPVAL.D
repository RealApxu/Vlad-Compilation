BEGIN VAMPVAL

CHAIN VAMPVAL 0
~As you desire, Mistress... (*suddenly the hiss of the vampire is interrupted by the voice you know so well*)... Nay, Bodhi. I served no god and I served no man willingly. I shall not serve you, bloodthirsty beast!~
EXTERN C6BODHI TS30

CHAIN VAMPVAL 1
~Yes, mistress... (*Valygar twitches with pain, then slowly regains his composure.*)... I... I f-found a target... m-more to my liking...~
EXTERN C6BODHI TS31

CHAIN
IF ~Global("VP_ValygarVamp_Alive","GLOBAL",1)~ THEN VAMPVAL 2
~Do not put your weapons away yet. <CHARNAME>, while I am still capable to fight off the urges of a vampire... While I am still a bit of a human... While I can still stand here and look at you without trying to kill you... kill me.~
END
 ++ ~What? No! I cannot kill you... Vampire, big deal! At least she did not turn you into a giant space hamster or some such. I will take you along and we will travel by night to keep you healthy. With the amount of people we kill on a daily basis you'd have a ready supply of fresh blood... I find that this pale look makes you rather... interesting.~ EXTERN VAMPVAL 3
 ++ ~As you wish.~ EXTERN VAMPVAL 4
 ++ ~Valygar... I... you are asking too much of me. I cannot loose you again.~ EXTERN VAMPVAL 6
 ++ ~I think there is irony somewhere in here... Did not your mother turn vampire and you killed her?~ EXTERN VAMPVAL 7
 ++ ~I would like you to join me as you are right now. I was impressed by your efficiency in battle and I can use a vampire companion.~ EXTERN VAMPVAL 8

CHAIN VAMPVAL 3
~What... what are you talking about? How can you be joking at my misery? Your heart is colder than Bodhi's.~
END
 ++ ~Do not you see that I am crying, not laughing, you idiot? Be it as you wish. Good buy, my dear friend.~ EXTERN VAMPVAL 4
 ++ ~You are hilarious, ranger, just hilarious... (*laugh*)~ EXTERN VAMPVAL 5

CHAIN VAMPVAL 4
~Thank you, <CHARNAME>.~
DO ~SetGlobal("ValygarVampire","GLOBAL",3) SetGlobal("VP_ValygarVamp_Alive","GLOBAL",2) Kill(Myself)~
EXIT

CHAIN VAMPVAL 5
~You know what's funny? I loved you. What's even funnier - I still love you and I cannot hurt you. What are you standing here for? Go, Bhaal's daughter, leave me to my fate.~
DO ~SetGlobal("ValygarVampire","GLOBAL",3) SetGlobal("VP_ValygarVamp_Alive","GLOBAL",2) ReallyForceSpellDead(Myself,VAMPIRE_GAS_FORM_CHANGE)~
EXIT

CHAIN VAMPVAL 6
~You already did. If I was dead, you might have tried to resurrect me, though I doubt that any priest would have succeeded to capture my soul. Kill me my dear friend, I shall feel no pain.~
END
 ++ ~Go away, just go away!~ EXTERN VAMPVAL 5
 ++ ~Valygar, I swear, I will find a way to bring you back... I hate you, Bodhi! I hope you are suffering in the Abyss! Good buy, Valygar.~ EXTERN VAMPVAL 4

CHAIN VAMPVAL 7
~Ironic indeed. What I did brought my mad mother peace at last. I have seen it in her eyes a moment before she died. I beg you to have mercy on me and do what I asked you to do.~
END
 ++ ~I will do the deed then. Good buy, my dear friend.~ EXTERN VAMPVAL 4
 ++ ~You are hilarious, ranger, just hilarious... (*laugh*)~ EXTERN VAMPVAL 5
 ++ ~Complex as always. So your mother had thoroughly enjoyed herself as her son cut her throat. Go away from me, you sick bastard.~ EXTERN VAMPVAL 5

CHAIN VAMPVAL 8
~What... what are you talking about? You want to turn my misery and shame into a weapon? You are no better than Bodhi, <CHARNAME>. I cannot believe that someone I thought to be kind and compassionate is a cruel, egoistic...~
END
 ++ ~Oh, stop it! I was wrong. Mercy killing than. Common, lean your head back, I do not want to cause you more pain than necessary.~ EXTERN VAMPVAL 4
 ++ ~Valygar... I... you are asking too much of me. I cannot loose you again.~ EXTERN VAMPVAL 6
 ++ ~Finally you got it, Valygar! I am Bhaal's daughter, remember? I am to be the Lady of Murder one day... May be I shall start practicing from killing goody-goody delusional rangers...~ EXTERN VAMPVAL 5