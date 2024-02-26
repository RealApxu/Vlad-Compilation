BEGIN ~KHARESSE~

IF ~Global("VP_Necro_Test","GLOBAL",6)~ THEN BEGIN 0
  SAY ~Hold, you students! I will speak with you.~
  IF ~Dead("Hrothgar")~ THEN REPLY ~Not another mage wanting to speak with us. Still, she seems friendly enough, let us hear her out.~ GOTO 1
  IF ~Dead("Hrothgar")~ THEN REPLY ~Oh heck! What have we done this time!~ GOTO 1
  IF ~Dead("Hrothgar")~ THEN REPLY ~Damn these mages! Why can�t they leave a person to go about their business in peace!~ GOTO 1
  IF ~Dead("Hrothgar")~ THEN REPLY ~Seems the more we try to avoid these mages the more we run into. Let�s see what this one wants.~ GOTO 1
  IF ~!Dead("Hrothgar")~ THEN REPLY ~Not another mage wanting to speak with us. Still, she seems friendly enough, let us hear her out.~ EXTERN ~HROTHJ~ 384
  IF ~!Dead("Hrothgar")~ THEN REPLY ~Oh heck! What have we done this time!~ EXTERN ~HROTHJ~ 384
  IF ~!Dead("Hrothgar")~ THEN REPLY ~Damn these mages! Why can�t they leave a person to go about their business in peace!~ EXTERN ~HROTHJ~ 384
  IF ~!Dead("Hrothgar")~ THEN REPLY ~Seems the more we try to avoid these mages the more we run into. Let�s see what this one wants.~ EXTERN ~HROTHJ~ 384
END

IF ~~ THEN BEGIN 1
  SAY ~Silence whilst I speak! The tomb of one of our most honoured masters has been desecrated, his body stolen for what hellish purpose I can only imagine. His body must be found before the fiend has chance to desecrate it further.~
	IF ~True()~ THEN GOTO 2
  IF ~!Dead("Hrothgar")
InParty("Hrothgar")~ THEN EXTERN ~HROTHJ~ 385
  IF ~!Dead("Leina")
InParty("Leina")~ THEN EXTERN ~LEINAJ~ 130 
END

IF ~~ THEN BEGIN 2
  SAY ~Tell me quickly, have you seen anything that you might perceive as odd or out of place anywhere in the academy area?~
  IF ~~ THEN REPLY ~By odd, I take it you mean someone lugging a body around?~ GOTO 3
  IF ~~ THEN REPLY ~No, and I am sure I would remember having seen some one toting a body on account of it would be a difficult thing to hide especially by the person carrying it.~ GOTO 4 
  IF ~~ THEN REPLY ~No, no-one but us students here.~ GOTO 4
  IF ~~ THEN REPLY ~I did just see Ezekiel the necromancer bending over something that could be a body.~ GOTO 5
END

IF ~~ THEN BEGIN 3
  SAY ~Carrying a body, trying to hide a body or even just behaving furtively. Has anything suspicious caught your eye or your ear?~
  IF ~~ THEN REPLY ~No, sorry.~ GOTO 4
  IF ~~ THEN REPLY ~No, no one trying to hide anything around here.~ GOTO 4
  IF ~~ THEN REPLY ~I have not seen anyone carrying or hiding a body but I did see Ezekiel behaving furtively and bending over what could be a body.~ GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY ~Well, if you should see or hear anything come straight to me, I am Kharesse by the way. I will turn this academy upside down and inside out, I will find the fiend responsible for this sacrilege!~
  IF ~True()~ THEN DO ~EscapeArea()~ EXIT
  IF ~!Dead("Hrothgar")
InParty("Hrothgar")~ THEN EXTERN ~HROTHJ~ 386
  IF ~!Dead("Dar")
InParty("Dar")~ THEN EXTERN ~DARJ~ 89
END

IF ~~ THEN BEGIN 5
  SAY ~Ezekiel, who else! He should have been my first thought! He has gone too far this time, if he does have Kalinor�s body no amount of scheming or lies will keep him from banishment this time. Thank you, you may carry on now.~
  IF ~True()~ THEN DO ~SetGlobal("VP_Necro_Test","GLOBAL",7)
SetGlobalTimer("VP_Confront_Timer","GLOBAL",ONE_DAY)
EscapeArea()~ EXIT
  IF ~!Dead("Hrothgar")
InParty("Hrothgar")~ THEN EXTERN ~HROTHJ~ 387
END

IF ~Global("VP_Necro_Test","GLOBAL",8)~ THEN BEGIN 6
  SAY ~STOP RIGHT THERE! ALL OF YOU, NOW!~
  IF ~~ THEN REPLY ~Did you find the necromancer and your mage�s body?~ GOTO 7
  IF ~~ THEN REPLY ~I take it this means you have spoken to Ezekiel?~ GOTO 7
  IF ~~ THEN REPLY ~No need to screech so loudly! I am stopping, see, no more feet movements.~ GOTO 8
  IF ~~ THEN REPLY ~Seems I was wrong and Ezekiel was able to worm his way around her and convince her after all. I say we stop her before she stops us.~ GOTO 14
END

IF ~~ THEN BEGIN 7
  SAY ~Oh yes, I have spoken to Ezekiel and he was very quick to tell of your part in this whole sordid business. I can only blame my haste and anger for not seeing the lies in your face when I questioned you earlier.~
  IF ~~ THEN REPLY ~Surely you have more intelligence than to believe him? He would say anything to get himself out of trouble, you as good as said so yourself.~ GOTO 9
  IF ~~ THEN REPLY ~You take his word against mine, even though I hear his reputation is questionable? Bah, all you tutors stick together!~ GOTO 9
  IF ~~ THEN REPLY ~How sensible would it have been for me to name Ezekiel knowing full well that he would drop me in it the minute you caught up with him?~ GOTO 13
  IF ~~ THEN REPLY ~Please, credit me with some intelligence! I am hardly likely to name names if it is likely to back fire on me now am I?~ GOTO 13
END

IF ~~ THEN BEGIN 8
  SAY ~Less of the smart mouth, you are enough trouble as it is. From what Ezekiel has told me you are all a disgrace to the name Halruaa and as such face banishment. Had he had more time to desecrate Kalinor�s body further, you would be facing a much more serious charge.~
  IF ~~ THEN REPLY ~Surely you have more intelligence than to believe him? He would say anything to get himself out of trouble, you as good as said so yourself.~ GOTO 9
  IF ~~ THEN REPLY ~You take his word against mine, even though I hear his reputation is questionable? Bah, all you tutors stick together!~ GOTO 9
  IF ~~ THEN REPLY ~How sensible would it have been for me to name Ezekiel knowing full well that he would drop me in it the minute you caught up with him?~ GOTO 13
  IF ~~ THEN REPLY ~Please, credit me with some intelligence! I am hardly likely to name names if it is likely to back fire on me now am I?~ GOTO 13
END

IF ~~ THEN BEGIN 9
  SAY ~Yes, Ezekiel is known for his unorthodox methods, but he is a tutor of this academy in good standing and as such is entitled to the courtesy of being believed, at least until proven differently. So if  you have nothing to hide you won�t mind coming with me and we can quickly clear this up.~
  IF ~~ THEN REPLY ~That is the trouble you see, we do mind...~ GOTO 14
  IF ~~ THEN REPLY ~No I don�t think so. The necromancer is not going to change his story and a tutor will always be believed over a student. So...~ GOTO 14
  IF ~~ THEN REPLY ~Uh... maybe I can follow you later? I am in the middle of something at this precise moment.~ GOTO 10
  IF ~~ THEN REPLY ~Why should you believe me over him, after all, he is the tutor and I am only the student? I guess that this is going to take longer to sort than I have time to spare.~ GOTO 11
END

IF ~~ THEN BEGIN 10
  SAY ~This is more important than anything you could possibly be engaged in at the moment! I will rephrase my request and make it an order... you will come with me and now!~
  IF ~~ THEN REPLY ~That is the trouble you see, we do mind...~ GOTO 14
  IF ~~ THEN REPLY ~Forget it! I am not going anywhere with you.~ GOTO 14
  IF ~~ THEN REPLY ~You have no idea of the importance of what I am doing, but I will tell you that it is vital that I waste no more time talking to you.~ GOTO 12
  IF ~~ THEN REPLY ~It will not take me long to finish what I am doing and then I will be right behind you.~ GOTO 12
END

IF ~~ THEN BEGIN 11
  SAY ~We have our own methods of getting at the truth, it shouldn�t take too long to discover who is lying and who is telling the truth. Whatever you are at present engaged in can wait. Now if you don�t mind we are wasting time, this way please.~
  IF ~~ THEN REPLY ~That is the trouble you see, we do mind...~ GOTO 14
  IF ~~ THEN REPLY ~Forget it! I am not going anywhere with you.~ GOTO 14
  IF ~~ THEN REPLY ~You have no idea of the importance of what I am doing, but I will tell you that it is vital that I waste no more time talking to you.~ GOTO 12
  IF ~~ THEN REPLY ~It will not take me long to finish what I am doing and then I will be right behind you.~ GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY ~Then I have no option but to view your reluctance to co-operate as an admission of guilt. It now becomes no longer necessary to hear your defence.~
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 13
  SAY ~No that would not be very sensible I agree, but it would be a very clever ploy to use in your claim of innocence. Let me assure you, if you have nothing to hide then you have absolutely nothing to fear by coming with me.~
  IF ~~ THEN GOTO 15
END  

IF ~~ THEN BEGIN 14
  SAY ~GUARDS!~
  IF ~~ THEN DO ~SetGlobal("VP_Necro_Test","GLOBAL",9)
SetGlobal("VP_HalruaaHostile","GLOBAL",1)
CreateCreatureObjectOffScreen("TuMage3",Player1,0,0,0)
CreateCreatureObjectOffScreen("TuMage3",Player1,0,0,0)
Shout(99)
Enemy()~ EXIT
END
 
IF ~~ THEN BEGIN 15
  SAY ~In fact your word may help us rid the academy of an unscrupulous mage. To try and shift blame of his actions on to a student is not the conduct we expect of our tutors. So if you don�t mind, we can clear this up without wasting anymore of both our time.~
  IF ~~ THEN REPLY ~That is the trouble you see, we do mind...~ GOTO 14
  IF ~~ THEN REPLY ~Forget it! I am not going anywhere with you.~ GOTO 14
  IF ~~ THEN REPLY ~I would love to help you with this troublesome necromancer but I have an errand I should be seeing to.~ GOTO 12
  IF ~~ THEN REPLY ~As a tutor Ezekiel is your problem and I am not about to get involved with discrediting a tutor because you don�t like his methods.~ GOTO 12
END  