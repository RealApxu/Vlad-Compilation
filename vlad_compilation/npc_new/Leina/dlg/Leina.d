BEGIN VPLEINA

CHAIN
IF ~NumTimesTalkedTo(0)~ THEN VPLEINA 0
~Who... who are you people? You are not employees of my father, that much is obvious.~ [leina_01]
END
 ++ ~No, we are not employees of your father, Leina. There is no time to explain, you are free but we must make haste and leave here quickly.~ EXTERN VPLEINA 1
 ++ ~Do not be afraid, Leina, you are free but I am not sure for how long. There may be more of your father's guards about so we should move quickly.~ EXTERN VPLEINA 1
 ++ ~You girl, Leina is it? You have your freedom but I suggest you take it whilst you can.~ EXTERN VPLEINA 1

CHAIN VPLEINA 1
~I will gladly leave this place, but not before I know more of my rescuer and how you came to be here? My father would not have relinquished the key to my prison easily, unless... unless as D'Cai says, he is dead.~ [leina_02]
END
 IF ~Global("VP_Met_FFBarkeep","GLOBAL",1)~ REPLY ~Forgive my manners Leina, I am <CHARNAME>. Samuel Thunderburp, the bartender of The Five Flagons was concerned for your safety and bid us to find you. Further answers will have to wait until we are safely out of here.~ EXTERN VPLEINA 2
 IF ~Global("VP_Met_FFBarkeep","GLOBAL",1)~ REPLY ~I am called <CHARNAME>. We were promised a reward by the old barkeep of The Five Flagons if we found you safe. Well, we have found you and you seem to be unharmed so we guess we have earned our reward.~ EXTERN VPLEINA 2
 ++ ~My name is <CHARNAME>. Forgive my haste, Leina, but this is not the time for questions, I urge you to hurry.~ EXTERN VPLEINA 3

CHAIN VPLEINA 2
~Ah yes, Samuel. I should have realised, he is a good man and knows me well enough to know I would not let him down without good cause. I thank you, <CHARNAME>, for coming to my aid, but what of my father?~ [leina_03]
END
 IF ~Global("VP_Met_FFBarkeep","GLOBAL",1)~ REPLY ~You can thank me later, Leina, and I assure you, that you will have your answers, just not now. For the moment it is safer if you make your way to The Five Flagons. Samuel will be relieved to have you safely under his roof again.~ EXTERN VPLEINA 4
 IF ~Global("VP_Met_FFBarkeep","GLOBAL",1)~ REPLY ~Thanks is all well and good, but my interest is in the reward. When you return to the tavern be sure to tell that old barkeep that I am close behind you.~ EXTERN VPLEINA 4
 IF ~Global("VP_Met_FFBarkeep","GLOBAL",0)~ REPLY ~You can thank me later, Leina, and I assure you, that you will have your answers, just not now. For the moment it is safer if we make our way out of here.~ EXTERN VPLEINA 4
 IF ~Global("VP_Met_FFBarkeep","GLOBAL",0)~ REPLY ~Thanks is all well and good, but we must hurry.~ EXTERN VPLEINA 4

CHAIN VPLEINA 3
~I can well understand your urgency to leave this place, so my questions will wait, however, my appreciation for your aid will not, I thank you, <CHARNAME>.~
END
 IF ~Global("VP_Met_FFBarkeep","GLOBAL",1)~ REPLY ~You can thank me later, Leina, and I assure you, that you will have your answers, just not now. For the moment it is safer if you make your way to The Five Flagons. Samuel will be relieved to have you safely under his roof again.~ EXTERN VPLEINA 4
 IF ~Global("VP_Met_FFBarkeep","GLOBAL",1)~ REPLY ~Thanks is all well and good, but my interest is in the reward. When you return to the tavern be sure to tell that old barkeep that I am close behind you.~ EXTERN VPLEINA 4
 IF ~Global("VP_Met_FFBarkeep","GLOBAL",0)~ REPLY ~You can thank me later, Leina, and I assure you, that you will have your answers, just not now. For the moment it is safer if we make our way out of here.~ EXTERN VPLEINA 11
 IF ~Global("VP_Met_FFBarkeep","GLOBAL",0)~ REPLY ~Thanks is all well and good, but we must hurry.~ EXTERN VPLEINA 11

CHAIN VPLEINA 4
~If I return to the inn, I will not remain there, <CHARNAME>, I should not have stayed as long in Athkatla as I have.~ [leina_04]
== VPLEINA ~My only reason for doing so was the hope of a reconciliation with my father but my mother's death has changed him so, I am not even sure that I want a reconciliation with the man he has become.~ [leina_05]
== VPLEINA ~Nor do I wish to remain at The Five Flagons with the memories of the last few days keeping me from my sleep each night.~ [leina05a]
END
 ++ ~To leave the safety of the inn at this time, do you see that as a wise decision Leina?~ EXTERN VPLEINA 7
 ++ ~What other choice do you have Leina?~ EXTERN VPLEINA 7
 ++ ~Whatever you decide to do is not my concern. Just do not go skipping the city until you have shown yourself to that barkeep, he owes me for your freedom.~ EXTERN VPLEINA 7

CHAIN VPLEINA 7
~I have little choice now, <CHARNAME>, other than to leave Athkatla. My father will not miss me, and Samuel will understand my reasons for going.~ [leina_06]
== VPLEINA ~I would feel much safer in your company if you have room for me in your group, but be it with you or be it alone, either way I will be taking to the road.~ [leina06a]
END
 ++ ~It is an uncertain and hostile road that I travel. One that I feel you will not find easy Leina, but if you are sure that this is the right path for you then you are welcome to join me. I would sleep better knowing that you are safe.~ EXTERN VPLEINA 10
 ++ ~I have no use for a minstrel! The reward is my only concern. Go and take your problems with you. I have enough problems of my own without you adding to them.~ EXTERN VPLEINA 9
 ++ ~I am sorry Leina, I have no room for you at this moment, but before you leave be sure to let Samuel know that you are safe. We will check on you back at the inn.~ EXTERN VPLEINA 9

CHAIN VPLEINA 9
~If that is your final word, I will thank you again for my rescue and return to the inn to assure Samuel that I am safe but I will not remain there for long. Goodbye to you, <CHARNAME>.~ [leina_07]
DO ~SetGlobal("VP_ResqueLeina","GLOBAL",10) EscapeAreaMove("AR0509",313,437,14)~
EXIT

CHAIN VPLEINA 10
~It gives me great comfort to hear you say this. Please, <CHARNAME>, accompany me to the inn so that I may collect my things and we will leave this place together.~ [leina_08]
DO ~SetGlobal("VP_ResqueLeina","GLOBAL",11) JoinParty()~
EXIT

CHAIN VPLEINA 11
~I would feel much safer in your company if you have room for me in your group, but be it with you or be it alone, either way I will be taking to the road.~ [leina_09]
END
 ++ ~It is an uncertain and hostile road that I travel. One that I feel you will not find easy Leina, but if you are sure that this is the right path for you then you are welcome to join me. I would sleep better knowing that you are safe.~ EXTERN VPLEINA 13
 ++ ~I have no use for a minstrel! Go and take your problems with you. I have enough problems of my own without you adding to them.~ EXTERN VPLEINA 12
 ++ ~I am sorry Leina, I have no room for you at this moment.~ EXTERN VPLEINA 12

CHAIN VPLEINA 12
~If that is your final word, I will thank you again for my rescue and return to the Five Flagons Inn, but I will not remain there for long. Goodbye to you, <CHARNAME>.~ [leina_10]
DO ~SetGlobal("VP_ResqueLeina","GLOBAL",12) EscapeAreaMove("AR0509",313,437,14)~
EXIT

CHAIN VPLEINA 13
~It gives me great comfort to hear you say this. Please, <CHARNAME>, accompany me to the Five Flagons Inn, so that I may collect my things and we will leave this place together.~ [leina_08]
DO ~SetGlobal("VP_ResqueLeina","GLOBAL",13) JoinParty()~
EXIT

CHAIN
IF ~Global("VP_ResqueLeina","GLOBAL",10)~ THEN VPLEINA 14
~It is truly good to see you again ,<CHARNAME>. Can I take it that your reappearance here means that you have need of me once more?~
 ++ ~It is good to see you again Leina, and if you are free it is my intention to ask you to join with me once more. Are you free to consider my offer?~ EXTERN VPLEINA 15
 ++ ~I am sorry Leina, I have no room for you at this moment.~ EXTERN VPLEINA 16

CHAIN VPLEINA 15
~I have been hoping that you would pass this way again with such a request. I gladly accept, and I am ready to leave with you now, <CHARNAME>.~
DO ~JoinParty()~
EXIT

CHAIN VPLEINA 16
~That is fine with me, though I will not remain here for long. Goodbye to you, <CHARNAME>.~
EXIT