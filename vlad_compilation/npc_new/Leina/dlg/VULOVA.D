BEGIN VULOVA

CHAIN
IF ~NumTimesTalkedTo(0) ~ THEN BEGIN 0 // from:
~What? Who are you? I demand to know what you are doing in here!~ /* #35084 */
 IF ~Global("BodhiJob","GLOBAL",2)~ THEN REPLY ~Fine. I am here to kill you and to blame your murder on the Shadow Thieves.~ /* #35085 */ EXTERN VULOVA 1
 ++ ~Nothing. Sorry to have disturbed you. I'll be going now.~ /* #35086 */ EXTERN VULOVA 2
 IF ~Global("BodhiJob","GLOBAL",2)~ THEN REPLY ~I have been sent to kill you, but if you hide yourself for a time I may not have to.~ /* #35087 */ EXTERN VULOVA 3
 IF ~Global("BodhiJob","GLOBAL",0) Global("VP_Guild_Attacked","GLOBAL",1)~ THEN REPLY ~I am <CHARNAME>, and I am looking for Leina.~ EXTERN VULOVA 13
 IF ~Global("BodhiJob","GLOBAL",0) Global("VP_Guild_Attacked","GLOBAL",1)~ THEN REPLY ~Are you Senior Armagaran Vulova? Samuel Thunderburp, the bartender of The Five Flagons was concerned for Leina's safety and bid us to find her.~ EXTERN VULOVA 13
 IF ~Global("BodhiJob","GLOBAL",0) Global("VP_Guild_Attacked","GLOBAL",1)~ THEN REPLY ~You must be Armagaran Vulova. We were promised a reward by the old barkeep of The Five Flagons if we found your daughter safe.~ EXTERN VULOVA 13

CHAIN VULOVA 1 // from: 0.0
~Wh-what? But... my guards! They will stop you! ~ /* #35088 */
END
 ++ ~Not likely. They haven't stopped me yet. Consider your options here.~ /* #35090 */ EXTERN VULOVA 4
 ++ ~No one will stop me! You die now!~ /* #35091 */ EXTERN VULOVA 5

CHAIN VULOVA 2 // from: 0.1
~Good that you are. I should hate to have you killed for simple trespassing.~ /* #35094 */
EXIT

CHAIN VULOVA 3 // from: 0.2
~What? What are you talking about? Guards! Expell this fool!~ /* #35096 */
END
 ++ ~That's not likely to happen. They haven't stopped me yet. You have no options.~ /* #35097 */ EXTERN VULOVA 4
 ++ ~Fine! You will die here and now!~ /* #35098 */ EXTERN VULOVA 5

CHAIN VULOVA 4 // from: 3.0 1.0
#35101
END
 ++ ~Calm down. I won't kill you. You hide for awhile, perhaps in some other town.~ /* #35122 */ EXTERN VULOVA 6
 ++ ~Pathetic. No, I'm sorry, but I've no other choice.~ /* #35123 */ EXTERN VULOVA 5
 ++ ~Worthless worm! You will die here and now!~ /* #35124 */ EXTERN VULOVA 5

CHAIN VULOVA 5 // from: 5.2 5.1 3.1 1.1
~No! Guards! To my side! Please!~ /* #35104 */
END
 IF ~GlobalGT("VP_ResqueLeina","GLOBAL",7)~ THEN REPLY ~One moment Vulova, before you turn on me, what of your daughter, what of Leina? Do you deny that she is here?~ EXTERN VULOVA 10
 IF ~GlobalLT("VP_ResqueLeina","GLOBAL",8)~ THEN DO ~Shout(89) CreateCreatureObjectOffScreen("VulGuard",Player1,0,0,0) CreateCreatureObjectOffScreen("VulGuard",Player1,0,0,0) CreateCreatureObjectOffScreen("VulGuard",Player1,0,0,0) Enemy() ~ EXIT

CHAIN VULOVA 6 // from: 5.0
~Thank you ever so much! You won't regret this! You won't!~ /* #35125 */
END
 IF ~GlobalGT("VP_ResqueLeina","GLOBAL",7)~ THEN EXTERN VULOVA 7
 IF ~GlobalLT("VP_ResqueLeina","GLOBAL",8)~ THEN EXTERN VULOVA 9

CHAIN VULOVA 7 // from: 5.0
~This city no longer holds any joy for me. Please my daughter, Leina, she is betrothed to one Govan Duvaine, will you please return her to his care?~
EXTERN VULOVA 8

CHAIN VULOVA 8 // from: 5.0
~You will find her behind that door, but it will not be easy to reach her. Unfortunately, I have no time to clear the path for you.~
EXTERN VULOVA 9

CHAIN VULOVA 9 // from: 7.0
~Guards! Kill them while I run! Now!~ /* #35126 */
DO ~Shout(89) SetGlobal("FailedBodhi2","GLOBAL",1) CreateCreatureObjectOffScreen("VulGuard",Player1,0,0,0) CreateCreatureObjectOffScreen("VulGuard",Player1,0,0,0) CreateCreatureObjectOffScreen("VulGuard",Player1,0,0,0) EscapeArea()~ UNSOLVED_JOURNAL ~Perform Bodhi's tasks to receive her aid.

I decided to give the merchant Vulova a chance to run and hide somewhere, instead of being forced to kill him. He was ungrateful enough to sic his guards on me, but at least he's gone. Now all that remains is to return to Bodhi and hope that she's fooled by my ruse.~ /* #22930 */
EXIT

CHAIN VULOVA 10 // from: 7.0
~Leina? You think to find my daughter and murder her also? You black hearted fiend!~
EXTERN VULOVA 11

CHAIN VULOVA 11 // from: 7.0
~Know that Leina is safe and well guarded. She is where you will never find her. None shall ever find her, she is safe now, forever.~
END
 IF ~Global("VP_Met_FFBarkeep","GLOBAL",1)~ THEN REPLY ~Believe me, I intend her no harm. The barkeep of The Five Flagons is concerned for her safety and has set me the task of returning her to him. That is my only interest in your daughter Vulova. I am here for you, not her, yours is the only life forfeit this day.~ EXTERN VULOVA 12
 IF ~Global("VP_Met_FFBarkeep","GLOBAL",1)~ THEN REPLY ~I am not about to harm your daughter, Vulova. The barkeep of The Five Flagons has offered a reward for her safe return to him. I need her alive in order to collect.~ EXTERN VULOVA 12
 ++ ~Yea gods man! Do you not understand, you are about to die, I am here to end your life! At least be sensible and tell me where your daughter is, give her a chance for life.~ EXTERN VULOVA 12
 ++ ~I really do not want to kill you, Vulova, but your death is the only means of my getting to my own goal. Do not let your daughter also become a victim here.~ EXTERN VULOVA 12
 IF ~Global("VP_Met_FFBarkeep","GLOBAL",1)~ THEN REPLY ~I have no intentions of killing either of you Vulova. Let me at least take Leina to the Five Flagons where she will be safe.~ EXTERN VULOVA 12

CHAIN VULOVA 12 // from: 7.0
~Liar! You take me for a fool! Do you think that I do not know what manner of creature has sent you here, or that your purpose is to ensure that neither I nor my daughter remain alive? You may take me but you will not find Leina!~
DO ~Shout(89) CreateCreatureObjectOffScreen("VulGuard",Player1,0,0,0) CreateCreatureObjectOffScreen("VulGuard",Player1,0,0,0) CreateCreatureObjectOffScreen("VulGuard",Player1,0,0,0) Enemy()~
EXIT

CHAIN VULOVA 13
~Leina? You think to find my daughter?~
EXTERN VULOVA 14

CHAIN VULOVA 14
~Know that Leina is safe and well guarded. She is where you will never find her. None shall ever find her, she is safe now, forever.~
END
 IF ~Global("VP_Met_FFBarkeep","GLOBAL",1)~ THEN REPLY ~Believe me, I intend her no harm. The barkeep of The Five Flagons is concerned for her safety and has set me the task of returning her to him. That is my only interest in your daughter Vulova.~ EXTERN VULOVA 15
 IF ~Global("VP_Met_FFBarkeep","GLOBAL",1)~ THEN REPLY ~I am not about to harm your daughter, Vulova. The barkeep of The Five Flagons has offered a reward for her safe return to him. I need her alive in order to collect.~ EXTERN VULOVA 15
 ++ ~Yea gods man! Be sensible and tell me where your daughter is, give her a chance for life.~ EXTERN VULOVA 15
 ++ ~If your death is the only means of my getting to Leina, I'll kill you, Vulova. Do not let your daughter also become a victim here.~ EXTERN VULOVA 15
 IF ~Global("VP_Met_FFBarkeep","GLOBAL",1)~ THEN REPLY ~I have no intentions of fighting you, Vulova. Let me at least take Leina to the Five Flagons where she will be safe.~ EXTERN VULOVA 15

CHAIN VULOVA 15
~Liar! You take me for a fool! Do you think that I do not know that your purpose is to ensure that neither I nor my daughter remain alive? You may take me but you will not find Leina!~
DO ~Shout(89) CreateCreatureObjectOffScreen("VulGuard",Player1,0,0,0) CreateCreatureObjectOffScreen("VulGuard",Player1,0,0,0) CreateCreatureObjectOffScreen("VulGuard",Player1,0,0,0) Enemy()~
EXIT