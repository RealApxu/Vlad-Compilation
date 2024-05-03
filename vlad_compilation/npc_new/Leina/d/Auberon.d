BEGIN AUBERON

CHAIN AUBERON 0
~Govan! What are these people doing here, barging in uninvited and issuing thrteats?~
EXTERN GOVAN3 5

CHAIN AUBERON 1
~Shut up, Govan!~
EXTERN AUBERON 2

CHAIN AUBERON 2
~I would like to hear your story, Leina.~
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutL02")~
EXIT

CHAIN
IF ~Global("VP_LeinaAppears","GLOBAL",3)~ THEN AUBERON 3
~I am ashamed of you, Govan. Your treatment of this young woman has been worse than barbaric.~
DO ~SetGlobal("VP_LeinaAppears","GLOBAL",3)~
EXTERN AUBERON 4

CHAIN AUBERON 4
~I cannot believe a son of mine capable of such things. What have we raised?~
END
 ++ ~Not forgetting his deal with Killian concerning my welfare. He is some lad this boy of yours!~ EXTERN AUBERON 5
 ++ ~It gets better, what of the deal you made with Killian, Duvaine, are you going to finish the story for Leina?~ EXTERN AUBERON 5

CHAIN AUBERON 5
~You hold your tongue, <CHARNAME>, you are no better than my son, Leina has also told me of your part in all this.~
EXTERN AUBERON 6

CHAIN AUBERON 6
~And you, Govan, have dealings with that low-life Killian? After the trouble he brought upon the Duvaine family, what sort of a son are you, Govan?~
END
 ++ ~Let me interrupt a moment here, I should have remembered, Killian has sent you and your wife a message, Duke, he says to say *hi*. You see, I am not only here for your son, I am also a messenger for Killian if you get my meaning.~ EXTERN AUBERON 7
 ++ ~I almost forgot. I have a message for you and your wife, Duke. Killian says to say *hi* to you both and the rest is etched in steel here somewhere, I will deliver it after I have dealt with your son.~ EXTERN AUBERON 7
 ++ ~Who has been a naughty boy, Govan. Playing with the bad guys behind daddy's back? Oh, incidently, Killian says *hi* to you, Duke, and also to your lady wife here. I will deliver the message in full shortly. I have unfinished business with your son first.~ EXTERN AUBERON 7

CHAIN AUBERON 7
~There is no need for further bloodshed. Leina is unharmed and I am quite prepared to deal with my son's shameful behaviour myself.~
EXTERN AUBERON 8

CHAIN AUBERON 8
~We, <CHARNAME>, have no quarrel with each other. That low-life Killian your deal is with, is naught but a hired assassin. What say we end this now?~
END
 ++ ~Your son has played me for a fool, no one has done that and lived to boast of it. I am as sure as hell not going to let him be the first!~ SOLVED_JOURNAL ~Trouble at The Five Flagons Inn.

I should have realised... no one gives 20,000 gold away for so simple a task. Still, Duvaine may have been a pathetic excuse for a man in life, but in death he has proven to be a very profitable commodity to me. My purse is now heavier... and I rescued the bard as well. A most satisfactory outcome for all... except for the Duvaine's of course, but one can not please everyone.~ DO ~EraseJournalEntry(%Trouble at The Five Flagons Inn.

After entering the secret room at the rear of Vulova's home and fighting my way through a warren full of his henchmen I finally found myself in what looked to be a guild house of sorts. I was surprised to also find the bard Leina, frightened but unhurt... It appears that her father had kidnapped her in order to force her into a marriage with one Govan Duvaine, a spoilt, rich boy from one of Athkatla's most affluent families... who sought to become even richer by joining Leina's family fortune with his own inheritance. It would seem that the untimely death of his wife, Leina's mother, had so deranged her father's mind that he sought to keep her near him... she being the only link he had left to his dead wife. He believed the marriage would keep her in the city. A sad and lonely man true but the death of a loved one effects us all in different ways. Duvaine then appeared and offered me 20,000 gold to hand the girl over to him... 20,000 gold! All I had to do was tell the old barkeep that Leina had decided to marry Duvaine and then meet with one of the financial advisors to the Duvaine's, a man named Killian, on the roof of The Copper Coronet. He would cash the draft for me... easy gold!%)~ EXTERN AUBERON 9
 ++ ~My quarrel is with your son, if you step aside I may spare you and your wife when I have finished with him. I might not of course, but that is a chance you will have to take.~ SOLVED_JOURNAL ~Trouble at The Five Flagons Inn.

I should have realised... no one gives 20,000 gold away for so simple a task. Still, Duvaine may have been a pathetic excuse for a man in life, but in death he has proven to be a very profitable commodity to me. My purse is now heavier... and I rescued the bard as well. A most satisfactory outcome for all... except for the Duvaine's of course, but one can not please everyone.~ DO ~EraseJournalEntry(%Trouble at The Five Flagons Inn.

After entering the secret room at the rear of Vulova's home and fighting my way through a warren full of his henchmen I finally found myself in what looked to be a guild house of sorts. I was surprised to also find the bard Leina, frightened but unhurt... It appears that her father had kidnapped her in order to force her into a marriage with one Govan Duvaine, a spoilt, rich boy from one of Athkatla's most affluent families... who sought to become even richer by joining Leina's family fortune with his own inheritance. It would seem that the untimely death of his wife, Leina's mother, had so deranged her father's mind that he sought to keep her near him... she being the only link he had left to his dead wife. He believed the marriage would keep her in the city. A sad and lonely man true but the death of a loved one effects us all in different ways. Duvaine then appeared and offered me 20,000 gold to hand the girl over to him... 20,000 gold! All I had to do was tell the old barkeep that Leina had decided to marry Duvaine and then meet with one of the financial advisors to the Duvaine's, a man named Killian, on the roof of The Copper Coronet. He would cash the draft for me... easy gold!%)~ EXTERN AUBERON 9
 ++ ~How much is the life of this worthless scum you call a son to you?~ EXTERN AUBERON 11
 ++ ~True, I have no quarrel with you or your wife. My deal with Killian was purely for financial gain, mine of course. Now, should another offer be made to me I have been known to be reasonable?~ EXTERN AUBERON 11

CHAIN AUBERON 9
~He may not be much of a man, but he is my son, and I will not stand by and watch him murdered.~
EXTERN AUBERON 10

CHAIN AUBERON 10
~You have behaved no better than he has, <CHARNAME>, therefore, whatever punishment you see fitting to deal out to my son, you also deserve.~
DO ~SetGlobal("VP_DuvainesAttack","GLOBAL",1)
SetGlobalTimer("VP_Duvaines_Spawn","GLOBAL",ONE_DAY)
ActionOverride("Beatrice",EscapeArea())
ActionOverride("Govan3",Enemy())
CreateCreatureObjectOffScreen("DuvGuard",Player1,0,0,0)
CreateCreatureObjectOffScreen("DuvGuard",Player1,0,0,0)
CreateCreatureObjectOffScreen("DuvGuard",Player1,0,0,0)
CreateCreatureObjectOffScreen("DuvGuard",Player1,0,0,0)
CreateCreatureObjectOffScreen("DuvGuard",Player1,0,0,0)
Shout(89)
Enemy()~
EXIT

CHAIN AUBERON 11
~If you won't do this for moral outrage, I will compensate your mercenary side. Is 10,000 gold pieces enough to satisfy?~
END
 ++ ~10,000 gold pieces it is, now take your worthless progeny and get him out of here. Make sure he never crosses paths with me again.~ SOLVED_JOURNAL ~Trouble at The Five Flagons Inn.

I should have realised... no one gives 20,000 gold away for so simple a task. Still, Duvaine may be a worthless son of a bitch but he has certainly proven to be a very profitable commodity to me. My purse is now heavier ... and I rescued the bard as well. A most satisfactory outcome for all... except for Duvaine of course, but one can not please everyone.~ DO ~EraseJournalEntry(%Trouble at The Five Flagons Inn.

After entering the secret room at the rear of Vulova's home and fighting my way through a warren full of his henchmen I finally found myself in what looked to be a guild house of sorts. I was surprised to also find the bard Leina, frightened but unhurt... It appears that her father had kidnapped her in order to force her into a marriage with one Govan Duvaine, a spoilt, rich boy from one of Athkatla's most affluent families... who sought to become even richer by joining Leina's family fortune with his own inheritance. It would seem that the untimely death of his wife, Leina's mother, had so deranged her father's mind that he sought to keep her near him... she being the only link he had left to his dead wife. He believed the marriage would keep her in the city. A sad and lonely man true but the death of a loved one effects us all in different ways. Duvaine then appeared and offered me 20,000 gold to hand the girl over to him... 20,000 gold! All I had to do was tell the old barkeep that Leina had decided to marry Duvaine and then meet with one of the financial advisors to the Duvaine's, a man named Killian, on the roof of The Copper Coronet. He would cash the draft for me... easy gold!%)~ EXTERN AUBERON 12
 ++ ~It is a handsome enough sum, and will pay for you and your wife's lives but Govan here, he has another method of payment more to my liking.~ SOLVED_JOURNAL ~Trouble at The Five Flagons Inn.

I should have realised... no one gives 20,000 gold away for so simple a task. Still, Duvaine may have been a pathetic excuse for a man in life, but in death he has proven to be a very profitable commodity to me. My purse is now heavier... and I rescued the bard as well. A most satisfactory outcome for all... except for the Duvaine's of course, but one can not please everyone.~ DO ~EraseJournalEntry(%Trouble at The Five Flagons Inn.

After entering the secret room at the rear of Vulova's home and fighting my way through a warren full of his henchmen I finally found myself in what looked to be a guild house of sorts. I was surprised to also find the bard Leina, frightened but unhurt... It appears that her father had kidnapped her in order to force her into a marriage with one Govan Duvaine, a spoilt, rich boy from one of Athkatla's most affluent families... who sought to become even richer by joining Leina's family fortune with his own inheritance. It would seem that the untimely death of his wife, Leina's mother, had so deranged her father's mind that he sought to keep her near him... she being the only link he had left to his dead wife. He believed the marriage would keep her in the city. A sad and lonely man true but the death of a loved one effects us all in different ways. Duvaine then appeared and offered me 20,000 gold to hand the girl over to him... 20,000 gold! All I had to do was tell the old barkeep that Leina had decided to marry Duvaine and then meet with one of the financial advisors to the Duvaine's, a man named Killian, on the roof of The Copper Coronet. He would cash the draft for me... easy gold!%)~ EXTERN AUBERON 9

CHAIN AUBERON 12
~Take your gold, <CHARNAME>. Be assured, I will think of a suitable way of dealing with my son.~
DO ~GiveGoldForce(10000)~
EXTERN AUBERON 13

CHAIN AUBERON 13
~He has brought dishonour to the name Duvaine, so it will be for him to find a way of restoring it.~
EXTERN AUBERON 14

CHAIN AUBERON 14
~Govan, move!~
DO ~SetGlobal("VP_AuberonBribesMe","GLOBAL",1) ActionOverride("Govan3",EscapeArea()) ActionOverride("Beatrice",EscapeArea()) EscapeArea()~
EXIT

CHAIN
IF WEIGHT #0 ~Global("VP_DuvainesRevenge","GLOBAL",3)~ THEN AUBERON 15
~I found you at last. I am Auberon Duvaine, there is no need to introduce yourself, I know full well who you are.~
EXTERN AUBERON 16

CHAIN AUBERON 16
~It has taken me a while to identify the murderer of my son, Govan, but I am a patient as well as a wealthy man <CHARNAME>.~
EXTERN AUBERON 17

CHAIN AUBERON 17
~People will talk if the price is right. Did you seriously expect me not to uncover the truth?~
END
 IF ~InParty("vpleina") !Dead("vpleina")~ THEN EXTERN VPLEIJ 23
 IF ~OR(2) !InParty("vpleina") Dead("vpleina")~ THEN REPLY ~Your son Duvaine, abducted a young woman by the name of Leina Vulova-Katuron, with the intentions of forcing a marriage between them. Not because he was crazy with love for this Leina, but for the wealth her fortune would bring to him.~ EXTERN AUBERON 18
 IF ~OR(2) !InParty("vpleina") Dead("vpleina")~ THEN REPLY ~Your son tried to force a marriage between himself and a young woman by the name of Leina Vulova-Katuron by abducting and holding her against her will. He had some idea that wealth afforded him the privilege to force his will on others.~ EXTERN AUBERON 18
 IF ~OR(2) !InParty("vpleina") Dead("vpleina")~ THEN REPLY ~He was a bad lot, Duvaine. I cannot honestly believe that your coin did not uncover the reason your son is dead. Or do you choose to ignore the crime of kidnapping and unlawful imprisonment?~ EXTERN AUBERON 18

CHAIN AUBERON 18
~My son's conduct may have been wrong, but the matter should have been brought straight to me. I would have reprimanded Govan most severely myself for such abominable behaviour.~
EXTERN AUBERON 19

CHAIN AUBERON 19
~He was my responsibility and it was therefore my duty to deal with him not yours.~
END
 ++ ~Duty, and what would you have done, Duvaine, slapped his wrist and told him not to be a naughty boy again?~ EXTERN AUBERON 20
 ++ ~There was no time, Duvaine, your son came upon me at the same time that I found Leina and when I would not release her to him he turned nasty.~ EXTERN AUBERON 20
 ++ ~I had no proof Govan was involved, Duvaine. It was not until he confronted me after I had freed Leina, that he admitted his involvement. I tried to make him see reason but he would not listen, he set upon me without provocation.~ EXTERN AUBERON 20
 ++ ~He is dead, Duvaine. Your death or mine here will not alter that. Accept that he was not an honourable man and died as such. Let it go, Duvaine.~ EXTERN AUBERON 20

CHAIN AUBERON 20
~No matter the circumstances, my son is dead. His conduct may have been less than honourable but his crime was not deserving of death. He has paid bitterly for his conduct and I cannot and will not let his murderer go unpunished.~
EXTERN AUBERON 21

CHAIN AUBERON 21
~A plea of self defence may sit well with the courts, <CHARNAME>, but that is not the justice I want for my boy. I have had my say, now I will have my justice.~
DO ~SetGlobal("VP_DuvainesRevenge","GLOBAL",4) CreateCreatureObjectOffScreen("VPGuard",Player1,0,0,0) CreateCreatureObjectOffScreen("VPGuard",Player1,0,0,0) CreateCreatureObjectOffScreen("VPGuard",Player2,0,0,0) CreateCreatureObjectOffScreen("VPGuard",Player2,0,0,0) CreateCreatureObjectOffScreen("VPGuard",Player3,0,0,0) CreateCreatureObjectOffScreen("VPGuard",Player3,0,0,0) Shout(89) Enemy()~
EXIT