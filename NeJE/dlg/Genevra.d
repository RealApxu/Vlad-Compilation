BEGIN ~GENEVRA~

IF ~Global("VP_Restore_Ring","GLOBAL",6)
Global("VP_Enhance_Ring","GLOBAL",1)~ THEN BEGIN 0
  SAY ~Hello, I am Genevra, can I assist you?~
  IF ~~ THEN REPLY ~Well met Genevra, I am <GABBER>. You are just the person I seek.~ GOTO 1 
  IF ~~ THEN REPLY ~You most certainly can Genevra. I am <GABBER>.~ GOTO 1
  IF ~~ THEN REPLY ~I am <GABBER>. If you are Genevra fire specialist you can if not, then perhaps you can tell me where I might find her?~ GOTO 1
  IF ~~ THEN REPLY ~My name is <GABBER>. I must say for a fire specialist you do not look that hot Genevra!~ GOTO 13
END

IF ~~ THEN BEGIN 1
  SAY ~<GABBER>? I don�t think I know the name or the face yet you obviously know of me. What reason do you have to seek me out?~
  IF ~~ THEN REPLY ~I have a proposition for an elementalist such as yourself. Are you interested in hearing me out?~ GOTO 2
  IF ~~ THEN REPLY ~I have an artifact in need of a little elemental enhancement and I was told you were the one to ask.~ GOTO 2
  IF ~~ THEN REPLY ~I need an elementalist who is prepared to work, discreetly, on an artifact I have and your name cropped up.~ GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY ~I take it whatever you are about to ask is, shall we say, *illicitus et periculosus?*~
  IF ~~ THEN REPLY ~Uh... very likely, but I hear you are not one to shy away from a little rule bending now and again.~ GOTO 3
  IF ~~ THEN REPLY ~Maybe a little *illicitus* but for a specialist of your calibre not so *periculosus*.~ GOTO 3
  IF ~~ THEN REPLY ~I ask nothing that I would not do myself if I had the necessary skill.~ GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY ~Before you say anymore, let me remind you that there are heavy penalties imposed on those caught breaking Halruaa�s laws. Now, what is you need from me?~
  IF ~~ THEN REPLY ~I require you only to add a small enhancement to this ring for me?~ GOTO 5
  IF ~~ THEN REPLY ~I have in my possession a magical ring that was never fully constructed. I seek only to enhance it, to make it the artifact it was intended to be.~ GOTO 5
  IF ~~ THEN REPLY ~I need your aid as an elementalist to complete a ring, the construction of which was begun by elemental specialists.~ GOTO 5
  IF ~~ THEN REPLY ~It would appear to me that some of Halruaa�s laws are made solely to restrict a student becoming more powerful than the master. All I want from you is your help in adding a little of your own specialist magic to this ring I have here.~ GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY ~I doubt the lack of skill is the only thing that brought you to me. There are other mages here at Halruaa more adept than myself so whatever you have in mind I am guessing they would have no part in. Now, what is it you require of me?~
  IF ~~ THEN REPLY ~I require you only to add a small enhancement to this ring for me?~ GOTO 5
  IF ~~ THEN REPLY ~I have in my possession a magical ring that was never fully constructed. I seek only to enhance it, to make it the artifact it was intended to be.~ GOTO 5
  IF ~~ THEN REPLY ~I need your aid as an elementalist to complete a ring, the construction of which was begun by elemental specialists.~ GOTO 5
  IF ~~ THEN REPLY ~It would appear to me that some of Halruaa�s laws are made solely to restrict a student becoming more powerful than the master. All I want from you is your help in adding a little of your own specialist magic to this ring I have here.~ GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY ~And what sort of a ring might I ask needs specialist treatment from an elementalist and would also be considered a danger to the academy? Only one such artifact comes to mind, would my assumption be right in saying you have a Ring of Might in your hands <GABBER>?~
  IF ~~ THEN REPLY ~Not an actual Ring of Might but a modification of the original rings Genevra.~ GOTO 6 
  IF ~~ THEN REPLY ~It is Genevra, but it is not whole, nor will it ever be. All it can ever be is an enhanced elemental ring, but still a very powerful artifact in its own right.~ GOTO 6
  IF ~~ THEN REPLY ~You are very astute Genevra. You must now see why I find it necessary to come to you.~ GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY ~So, you are asking me to risk my career here at Halruaa and maybe my neck also, to work on an infamous Ring of Might, knowing that to do so is forbidden? Now the question becomes, what are you prepared to pay in order for me to take this risk?~ 
  IF ~PartyGoldGT(7999)~ THEN REPLY ~I believe 8000 gold should more than cover any inconvenience and risk, don�t you?~ GOTO 7
  IF ~~ THEN REPLY ~I will give you 4000 gold, seems fair as it was the same as I paid for the aid of another elementalist.~ GOTO 8
  IF ~~ THEN REPLY ~How does 2000 gold sound to you?~ GOTO 10
END

IF ~~ THEN BEGIN 7
  SAY ~That should cover it yes, but only just. Give me the ring and the gold and meet me here after one day has passed. Now, the only other thing I insist on is that no-one hears of my involvement with you in this matter.~
  IF ~~ THEN DO ~SetGlobal("VP_Enhance_Ring","GLOBAL",2) //Genevra went to enhance the ring
SetGlobalTimer("VP_Genevra_Returns","GLOBAL",ONE_DAY)
TakePartyGold(8000)
TakePartyItem("DeRing2")
EscapeArea()~ EXIT
END  
  
IF ~~ THEN BEGIN 8
  SAY ~I doubt you paid a mere 4000 gold, <GABBER>. I think you can do better than that, especially when you take into account that I am probably the only mage that will touch your accursed ring inside Halruaa. Double your offer and we have a deal.~ 
  IF ~PartyGoldGT(7999)~ THEN REPLY ~You cannot blame me for trying, here take 8000 gold for I will not better my offer. Just be sure I get your best work in return.~ GOTO 7
  IF ~PartyGoldGT(7999)~ THEN REPLY ~You have me there and well you know it! Here take your 8000 gold, and remember, I know who you are should you decide to cross me.~ GOTO 7
  IF ~~ THEN REPLY ~8000 gold, I think not Genevra. I found one unscrupulous mage prepared to aid me, I am sure I can find another who will not be as greedy.~ GOTO 9
  IF ~~ THEN REPLY ~I do not have that amount of gold Genevra. I am sorry to have bothered you.~ GOTO 12
END

IF ~~ THEN BEGIN 9
  SAY ~Then I wish you luck in your search for I will not hang around waiting for you to change your mind. You would do well to heed my advice and not talk to too many people about your ring. Farewell.~
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY ~2000 gold, please, do not insult me or my skills! Tell me, would you put yourself on the line for 2000 gold? I think not <GABBER>.~
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY ~I will tell you my price and then you decide whether you are prepared to meet it or not. I think 8000 gold should cover any expenses and risk I may incur. Now, what do you say to my terms?~
  IF ~PartyGoldGT(7999)~ THEN REPLY ~You cannot blame me for trying, here take 8000 gold for I will not better my offer. Just be sure I get your best work in return.~ GOTO 7
  IF ~PartyGoldGT(7999)~ THEN REPLY ~You have me there and well you know it! Here take your 8000 gold, and remember, I know who you are should you decide to cross me.~ GOTO 7
  IF ~~ THEN REPLY ~8000 gold, I think not Genevra. I found one unscrupulous mage prepared to aid me, I am sure I can find another who will not be as greedy.~ GOTO 9
  IF ~~ THEN REPLY ~I do not have that amount of gold Genevra. I am sorry to have bothered you.~ GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY ~Then I can do nothing for you <GABBER>. Farewell and please, do not look for me again.~
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END
 
IF ~~ THEN BEGIN 13
  SAY ~(*Angrily*) If you are here solely to insult me,  then I suggest you leave immediately before you feel the fury of a fire specialists wrath!~
  IF ~~ THEN REPLY ~Forgive my jest Genevra, of course I did not expect to see you shrouded in flames. It was a tasteless remark on my part, I apologise.~ GOTO 14
  IF ~~ THEN REPLY ~Forgive my senseless remark Genevra. Believe me, I have the greatest respect for your skills.~ GOTO 14
  IF ~~ THEN REPLY ~Ah, so the fire is in your temper is it Genevra! Can we leave it there for the moment and talk?~ GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY ~I will forgive an insult once but know that none have been in a position to ask for forgiveness twice. Now, what do you want with me and be careful how you voice your answer.~
  IF ~~ THEN REPLY ~I have a proposition for an elementalist such as yourself. Are you interested in hearing me out?~ GOTO 2
  IF ~~ THEN REPLY ~I have an artifact in need of a little elemental enhancement and I was told you were the one to ask.~ GOTO 2
  IF ~~ THEN REPLY ~I need an elementalist who is prepared to work, discreetly, on an artifact I have and your name cropped up.~ GOTO 2
END

IF ~Global("VP_Enhance_Ring","GLOBAL",3)~ THEN BEGIN 15
  SAY ~It is good to see you keep good time <GABBER>, I would hate to be found here with your ring in my possession. Here take it quickly before I am seen passing it to you.~
  IF ~~ THEN GOTO 16
END
  
IF ~~ THEN BEGIN 16
  SAY ~I have glimpsed a wonder in that ring of yours, but I am still relieved to be rid of it. Be cautious with any dealings you have with the mages here whilst you carry it on your person. Before I take my leave of you, I remind you again, please do not say that it was I who aided you.~
  IF ~~ THEN REPLY ~Thank you Genevra. I can promise you that no one will know of your part in this, you have my word.~ GOTO 17
  IF ~~ THEN REPLY ~As you wish. Farewell and thank you Genevra.~ GOTO 17
  IF ~~ THEN REPLY ~I thank you Genevra, but I will need to test your workmanship before I decide where the credit for enhancing the ring belongs. If you doubt your work then walk with care. Farewell.~ GOTO 17
END
 
IF ~~ THEN BEGIN 17
  SAY ~Farewell <GABBER>, this has truly been an enlightening experience, but one I will not rush or even wish to repeat again.~
	IF ~~ THEN DO ~GiveItemCreate("DeRing3",LastTalkedToBy,0,0,0)
EscapeArea()~ EXIT 
END //Genevra is granting the enhanced ring (+fire element)  
