REPLACE_STATE_TRIGGER WMART2 0
~!Global("VP_I_Know_Taffic","LOCALS",1)
!Global("VP_Find_Rithelium","GLOBAL",1)
NumTimesTalkedTo(0)~

APPEND ~WMART2~

IF ~Global("VP_I_Know_Taffic","LOCALS",1)
!Global("VP_Find_Rithelium","GLOBAL",1)~ THEN BEGIN 2
  SAY ~Taffic... my little forest gnome. I had a feeling I would be seeing you as soon as news of my return got out. Surely you could have at least let me hang up my cloak before descending on me... I find travelling wearies me more and more with each passing season.~
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY ~I suppose I will soon have to give up the more conventional modes of transport and resort to magical transportation, but I believe half the joy in visiting people is in the journey that gets one there and I will so miss it. Now Taffic, remind me again... what was it we were to speak of on my return?~
  IF ~~ THEN DO ~SetGlobal("VP_I_Know_Taffic","LOCALS",2)~ EXTERN ~TAFFICJ~ 9
END

IF ~~ THEN BEGIN 4
  SAY ~Ah, yes that was it. You must forgive my memory it is not what it used to be... one of the disadvantages that comes with the passing of the years.~
  IF ~~ THEN EXTERN ~TAFFICJ~ 10
END

IF ~~ THEN BEGIN 5
  SAY ~Patience my little friend. Firstly my absence had nothing to do with my seeking information concerning your destiny, I have always known whom it is you must speak with. However, like you I am searching for something and will follow every lead that comes my way, but once again I find myself coming away empty handed.~
  IF ~~ THEN EXTERN ~TAFFICJ~ 11
END

IF ~~ THEN BEGIN 6
  SAY ~I never said that I had to speak to anyone on your behalf, that was your assumption and not my words. It was for myself that I had to journey and speak with another and now that my search has once more drawn a blank, I have a request to make of you. In exchange for my information I need you to find something for me.~
  IF ~~ THEN EXTERN ~TAFFICJ~ 12
END

IF ~~ THEN BEGIN 7
  SAY ~(*Turning to you*) Ah, so this is <CHARNAME>... the infamous Child of Bhaal! I have heard much about your exploits from the lips of bards in my travels. Yes I know much about your life but more importantly, I know there is still much you have to learn before your destiny becomes reality.~
  IF ~~ THEN REPLY ~Many people know of my life and try to bend my will to their own advantage. If this is a ploy on your part solely to gain my aid, you may find yourself wishing that you had never heard my name.~ GOTO 8
  IF ~~ THEN REPLY ~Then how about you teaching me some of what I have to learn... say in exchange for you life?~ GOTO 9
  IF ~~ THEN REPLY ~If you know of my destiny then you must surely have knowledge that could prove invaluable to me. Please, tell what it is that you know, any hint that would make my road to Imoen swifter would be welcome.~ GOTO 10
  IF ~~ THEN REPLY ~If you have some insight into what lies ahead then I will gladly pay you for such information.~ GOTO 11
END

IF ~~ THEN BEGIN 8
  SAY ~This is no ploy <CHARNAME>, I have the information that your little gnome here wants. However I want something from him in return, as payment shall we say. The fact that he travels with you should make the task easier for him, you see I know some of what lies ahead for you and what I am asking is nowhere near as perilous as the journey to your destiny will be.~
  IF ~~ THEN EXTERN ~TAFFICJ~ 13
END

IF ~~ THEN BEGIN 9
  SAY ~It is not my place to teach you <CHARNAME>. Your road is set and you will learn what you need as you travel along it. I have lived many years with death just a step behind me, I do not fear it but neither do I welcome it. Neither of us will gain from my dying today, certainly your destiny will not be changed by it but what of Taffic's here?~
  IF ~~ THEN EXTERN ~TAFFICJ~ 13
END

IF ~~ THEN BEGIN 10
  SAY ~I can not help you <CHARNAME>, I feel for your friend but her path is designed to entwine with yours and as such they will cross again. It is not for me to divulge that which is to come, for if I was to do so I would never know whether it was my words or you choices that shaped your destiny. That is all I will say, now are we or are we not going to help each other here for Taffic's peace of mind?~
  IF ~~ THEN EXTERN ~TAFFICJ~ 13
END

IF ~~ THEN BEGIN 11
  SAY ~I have no need of your gold <CHARNAME>. I lost the need for material things many years ago, now I seek only the knowledge and secrets of the past... to learn the truth of the many wondrous rumours that abound throughout this land of ours. My shop may look modest to you but it is adequate enough to enable me to keep body and soul together. As for insight into what lies ahead, your destiny is set to follow the path of your own choosing, even I dare not interfere with so much as a word.~
  IF ~~ THEN EXTERN ~TAFFICJ~ 13
END

IF ~~ THEN BEGIN 12
  SAY ~Your questions will be wasted <CHARNAME>, there is no more that I can tell you. I have studied many of the prophecies of the past and those that tell of the future. I have spoken to many wise and intelligent scholars in my travels. All interpret what they read in their own way and it is these many interpretations that make it difficult to single out who is closest to the truth, so it is always best to allow our futures to unfold in their own time.~
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY ~It was my thirst for knowledge of all that has been forgotten that brought to my attention that which I am about to ask you to find for me.~
  IF ~~ THEN EXTERN ~TAFFICJ~ 14
END

IF ~~ THEN BEGIN 14
  SAY ~I have a fair idea where it might be found. One of the rumours I heard on my travels told of an unknown piece of ore turning up in a shipment of ancient artifacts that were being smuggled through Athkatla by the Shadow Thieves.~
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY ~The artifacts were quickly fenced but they were unable to find anyone who could identify the ore and as such, they have been unable to find a market for it in all the years that it has been in their possession. I believe it to be rithtellium, a very old and very rare ore. It is this ore that I wish you to obtain for me.~
  IF ~~ THEN REPLY ~This rithtellium, must be worth something if it is as rare as you say?~ GOTO 16
  IF ~~ THEN REPLY ~What would you, a magic user, be wanting with a piece of ore... rare or otherwise?~ GOTO 16
  IF ~~ THEN REPLY ~If you know where it is, why not approach the Shadow Thieves and offer to buy it from them yourself?~ GOTO 17
END

IF ~~ THEN BEGIN 16
  SAY ~Rithtellium itself is valueless without the secrets of its forging which have become lost over time. The ore was discovered many years ago and due to there being very few mines, those that were discovered were quickly stripped bare. It is said that if forged by both mage and smith, the weapons that result are capable of cutting through many of the defensive spells deployed by wizards. It is also rumoured that these powerful weapons can be wielded by any magic user lucky enough to own one.~
  IF ~~ THEN REPLY ~Then why not approach the Shadow Thieves and make them an offer for this valueless ore? Surely they will be glad to be rid of it after all this time?~ GOTO 17
  IF ~~ THEN REPLY ~I take you want me to steal this rithtellium or you would have approached the Shadow Thieves yourself?~ GOTO 17
  IF ~~ THEN REPLY ~Seems like a simple piece of trade between you and the Shadow Thieves is all that is called for here. Why do you need me?~ GOTO 17
  IF ~~ THEN REPLY ~If you don't have the knowledge to forge the ore what possible use can you have for it?~ GOTO 21
END

IF ~~ THEN BEGIN 17
  SAY ~I did approach them but they got very suspicious as to why I should want a lump of ore that no one else has shown any interest in. When I explained that it could only be forged by means of secrets long forgotten they didn't believe me and asked for an exorbitant amount of gold for it.~
  IF ~~ THEN GOTO 18
END
  	
IF ~~ THEN BEGIN 18
  SAY ~I can only surmise that they know my reputation for looking into the past and thought I had already discovered the secrets. When in fact my only interest in the rithtellium is as a collector of all things past... one day I hope to learn of its forging but I do not believe the piece they have is big enough to make a weapon of any kind.~
  IF ~~ THEN REPLY ~I fail to see why you need me for simple burglary.~ GOTO 19
  IF ~~ THEN REPLY ~Surely, with your magic, you are more than capable of entering their guild house and taking it yourself?~ GOTO 19
  IF ~~ THEN REPLY ~There must be more to this otherwise you would not be asking for my aid here. So where is the catch... what aren't you telling me Deidre?~ GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY ~The Shadow Thieves are no fools <CHARNAME>, they know very well that I am more than capable of taking the rithtellium. To prevent me from doing so, they have set wards around their guild house, wards that even I cannot break. They have powerful wizards in their employ and they have cast joint warding spells that I would have to unravel individually in order to gain access. I also suspect that they have managed to trap the wards should anyone attempt to tamper with them.~
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY ~Very few not of the guild are ever invited into their quarters... you however they are interested in and I believe safe entry will be afforded you if it has not yet already been given. As the wards are attuned to prevent entry from any not authorised, you would be safe. You can see my dilemma, so in exchange for my information you will retrieve the rithtellium for me.~
  IF ~PartyHasItem("rithtel")
!PartyHasItem("rithore")~ THEN REPLY ~I happen to have some ore that I found and I have not been able to identify it. Could this perhaps be rithtellium?~ DO ~TakePartyItemAll("rithtel")~ GOTO 22
  IF ~!PartyHasItem("rithtel")
PartyHasItem("rithore")~ THEN REPLY ~I happen to have some ore that I found and I have not been able to identify it. Could this perhaps be rithtellium?~ DO ~TakePartyItemAll("rithore")~ GOTO 22
  IF ~PartyHasItem("rithtel")
PartyHasItem("rithore")~ THEN REPLY ~I happen to have some ore that I found and I have not been able to identify it. Could this perhaps be rithtellium?~ DO ~TakePartyItemAll("rithore")~ GOTO 22
  IF ~~ THEN REPLY ~That seems easy enough, I'll be back with your ore shortly.~ GOTO 24
  IF ~~ THEN REPLY ~A small price to pay if it stops the gnome's whining... I still say it will take a miracle not magic to turn him into something he is not.~ GOTO 24
  IF ~~ THEN REPLY ~From what I hear the Shadow Thieves are a very powerful organisation and the last thing I need is to have them assaulting me every time I turn a corner... (*Turning to Taffic*) I am sorry Taffic, but I am not going to do this.~ EXTERN ~TAFFICJ~ 19
  IF ~~ THEN REPLY ~I am not about to incur the wrath of the Shadow Thieves for a piece of useless ore. I think you will give Taffic here the information he seeks in exchange for your life... now that is more than a fair price wouldn't you agree?~ GOTO 25
END

IF ~~ THEN BEGIN 21
  SAY ~My interest in the rithtellium is purely as a collector of all things past... one day I hope to learn the secrets of its forging but for now I will be content to have the ore solely for the reason that it is part of an era of forgotten  magic.~
  IF ~~ THEN REPLY ~Then why not approach the Shadow Thieves and make them an offer for this valueless ore? Surely they will be glad to be rid of it after all this time?~ GOTO 17
  IF ~~ THEN REPLY ~I take you want me to steal this rithtellium or you would have approached the Shadow Thieves yourself?~ GOTO 17
  IF ~~ THEN REPLY ~Seems like a simple piece of trade between you and the Shadow Thieves is all that is called for here. Why do you need me?~ GOTO 17
END

IF ~~ THEN BEGIN 22
  SAY ~(*Excitedly*) Yes... yes I do believe this is what I have been searching for! It's exquisite, see... it has a shimmer even before it is touched by magic. I had almost given up hope of ever holding such a rare, and if legend speaks truth, so priceless a thing. Might I ask how you came by it <CHARNAME>?~
  IF ~~ THEN REPLY ~How I came by it is not important but before you ask, I will say that this is the only piece there was... now please, how can you help Taffic?~ GOTO 23
  IF ~~ THEN REPLY ~It's suffice to say that this was all there was to be found... now, you have something for Taffic in exchange?~ GOTO 23
  IF ~~ THEN REPLY ~Well, there isn't anymore of it if that's what you were hoping to hear. You have your rithtellium ... what news do you have for Taffic?~ GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY ~Of course... forgive my exuberance, I never really expected to see, let alone hold such a rare commodity in my hand. Thank you <CHARNAME>. As for Taffic's dream, I wasn't able to learn anything that I could do for him myself but here, take this letter which was given to me by a very dear friend of mine, it will tell you all that you need to know. It might also help you gain an audience with the man mentioned. Now, if you will excuse me I have much to do.~
  IF ~~ THEN REPLY ~I have met this Thalantyr, pompous fellow... calls himself mighty mage of Beregost or at least he did when first I met him. A meeting which involved me aiding him transform a chicken named Melicamp back into its human form, but that is another story, still, maybe Thalantyr will remember the incident and me.~ DO ~SetGlobal("VP_Find_Rithelium","GLOBAL",2)
GiveItemCreate("tafflet1","Taffic",0,0,0)~ EXTERN ~TAFFICJ~ 15
  IF ~~ THEN REPLY ~So Taffic, it seems we have yet another journey to make before we can put this nonsense out of your head for good.~ DO ~SetGlobal("VP_Find_Rithelium","GLOBAL",2)
GiveItemCreate("tafflet1","Taffic",0,0,0)~ EXTERN ~TAFFICJ~ 15
  IF ~~ THEN REPLY ~I am sorry Taffic but this nonsense stops here. If we have reason to visit Beregost then I will speak to Thalantyr, but for the moment it is too far out of my way.~ DO ~SetGlobal("VP_Find_Rithelium","GLOBAL",2)
GiveItemCreate("tafflet1","Taffic",0,0,0)~ EXTERN ~TAFFICJ~ 17
  IF ~~ THEN REPLY ~Beregost! Forget it Taffic, there is no way I am journeying that distance only to be told that which I already know ... that your dream is naught but the fantasy of your egotistical mind.~ DO ~SetGlobal("VP_Find_Rithelium","GLOBAL",2)
GiveItemCreate("tafflet1","Taffic",0,0,0)~ EXTERN ~TAFFICJ~ 17
END

IF ~~ THEN BEGIN 24
  SAY ~Return here when you have the rithtellium and I will then share with you all that I have learnt about your friend's plight.~
  IF ~~ THEN DO ~SetGlobal("VP_Find_Rithelium","GLOBAL",1)
SetGlobal("VP_Taffic_Grumbles","GLOBAL",1)
RealSetGlobalTimer("VP_TfGrumblesDelay","GLOBAL",1800)~ EXIT
END

IF ~~ THEN BEGIN 25
  SAY ~You are foolish and arrogant to threaten me <CHARNAME>! You may carry the blood of a god but you do not have the power that comes with true godhood.~
  IF ~~ THEN GOTO 24
END

IF ~Global("VP_Find_Rithelium","GLOBAL",1)~ THEN BEGIN 26
  SAY ~You return, does this mean you have the rithtellium?~
  IF ~PartyHasItem("rithtel")
!PartyHasItem("rithore")~ THEN REPLY ~I believe I do Deidre. Here is this rithtellium?~ DO ~TakePartyItemAll("rithtel")~ GOTO 27
  IF ~!PartyHasItem("rithtel")
PartyHasItem("rithore")~ THEN REPLY ~I believe I do Deidre. Here is this rithtellium?~ DO ~TakePartyItemAll("rithore")~ GOTO 27
  IF ~PartyHasItem("rithtel")
PartyHasItem("rithore")~ THEN REPLY ~I believe I do Deidre. Here is this rithtellium?~ DO ~TakePartyItemAll("rithore")~ GOTO 27
  IF ~~ THEN REPLY ~No I have not been able to find it. Is it possible that the Shadow Thieves have found themselves a buyer after all?~ GOTO 29
  IF ~~ THEN REPLY ~No I have not Deidre and I am not prepared to spend the time necessary to look further. I suggest instead that you give Taffic the information that he seeks in exchange for your life... now that is more than a fair price wouldn't you agree?~ GOTO 25
END

IF ~~ THEN BEGIN 27
  SAY ~(*Excitedly*) Yes... yes I do believe this is what I have been searching for! It's exquisite, see... it has a shimmer even before it is touched by magic. I knew that if anyone could wrest it from the hands of the Shadow Thieves it would be you <CHARNAME>. You have done well and I thank you... but my thanks is not what you are here for is it?~
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY ~Here, take this letter which was given to me by a very dear friend of mine, it will tell you all that you need to know. It might also help you gain an audience with the man mentioned. I am only sorry that I can do nothing to help Taffic myself... now, if you will excuse me I have much to do.~
  IF ~~ THEN REPLY ~I have met this Thalantyr, pompous fellow... calls himself mighty mage of Beregost or at least he did when first I met him. A meeting which involved me aiding him transform a chicken named Melicamp back into its human form, but that is another story, still, maybe Thalantyr will remember the incident and me.~ DO ~SetGlobal("VP_Find_Rithelium","GLOBAL",2)
GiveItemCreate("tafflet1","Taffic",0,0,0)~ EXTERN ~TAFFICJ~ 15
  IF ~~ THEN REPLY ~So Taffic, it seems we have yet another journey to make before we can put this nonsense out of your head for good.~ DO ~SetGlobal("VP_Find_Rithelium","GLOBAL",2)
GiveItemCreate("tafflet1","Taffic",0,0,0)~ EXTERN ~TAFFICJ~ 15
  IF ~~ THEN REPLY ~I am sorry Taffic but this nonsense stops here. If we have reason to visit Beregost then I will speak to Thalantyr, but for the moment it is too far out of my way.~ DO ~SetGlobal("VP_Find_Rithelium","GLOBAL",2)
GiveItemCreate("tafflet1","Taffic",0,0,0)~ EXTERN ~TAFFICJ~ 17
  IF ~~ THEN REPLY ~Beregost! Forget it Taffic, there is no way I am journeying that distance only to be told that which I already know... that your dream is naught but the fantasy of your egotistical mind.~ DO ~SetGlobal("VP_Find_Rithelium","GLOBAL",2)
GiveItemCreate("tafflet1","Taffic",0,0,0)~ EXTERN ~TAFFICJ~ 17
END

IF ~~ THEN BEGIN 29
  SAY ~It is always possible that my having told them of the rithtellium they have found another prepared to pay their price for it. Curses, I should have moved sooner! Is there any chance that you can look into who has purchased it <CHARNAME> or if maybe they have moved it to another location... in exchange for my information?~
  IF ~~ THEN REPLY ~No I am sorry, I am done with this gnome's nonsense. You will have to find another to continue your search for you. Farewell Deidre.~ EXTERN ~TAFFICJ~ 20
  IF ~~ THEN REPLY ~I no longer have the time to spend on this nonsense. However, if I do come across any strange ore on my travels that I think may be rithtellium, then I know where to find you Deidre. Until then, this is farewell.~ EXTERN ~TAFFICJ~ 20
END

IF ~~ THEN BEGIN 30
  SAY ~You are foolish and arrogant gnome! As for <CHARNAME> here, return here when you have the rithtellium and I will then share with you all that I have learnt about your friend's plight.~
  IF ~~ THEN DO ~SetGlobal("VP_Find_Rithelium","GLOBAL",1)~ EXIT
END

IF ~!Global("VP_I_Know_Taffic","LOCALS",1)
!Global("VP_Find_Rithelium","GLOBAL",1)
!NumTimesTalkedTo(0)~ THEN BEGIN 31
  SAY ~Greetings adventurer, would you be interested in taking a look at my wares?~
  IF ~~ THEN REPLY ~Yes.~ DO ~StartStore("wmart2",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY ~Not at the moment.~ EXIT
END
END  