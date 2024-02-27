ADD_STATE_TRIGGER VALYGARP 19
~!Global("AnomenValygarFight","GLOBAL",3)~

REPLACE_STATE_TRIGGER VALYGARP 16 ~!Global("LavokDead","GLOBAL",0)
OR(2)
Global("ValygarHome","GLOBAL",1)
Global("KickedOut","LOCALS",1)
OR(2)
Dead("lavok01")
Dead("lavok02")~

APPEND ~VALYGARP~

IF WEIGHT #0 ~Global("ValygarVampire","GLOBAL",5)~ THEN BEGIN TS22
  SAY ~What is it? A beautiful dream among many nightmares? I feel alive and I see you standing so near. I can almost extend my hand and touch you...~
  IF ~~ THEN REPLY ~You are alive, Valygar. No touching, though! Oh, what the hell! Glad to have you back, ranger. Come, let me hug you. Flesh and blood again and blushing too... That's more like it, no more pale complexion, promise?~ DO ~EraseJournalEntry(32084)
EraseJournalEntry(32085)
EraseJournalEntry(16351)
EraseJournalEntry(7002)
EraseJournalEntry(3716)
EraseJournalEntry(5814)
EraseJournalEntry(16331)
EraseJournalEntry(11864)
EraseJournalEntry(3374)
EraseJournalEntry(3377)
EraseJournalEntry(3927)
EraseJournalEntry(15710)
EraseJournalEntry(6589)
EraseJournalEntry(59529)
SetGlobal("ValygarVampire","GLOBAL",6)~ GOTO TS23
  IF ~~ THEN REPLY ~Welcome back to the world of living, Valygar. I found a way to force you to keep me company for a tad longer...~ DO ~EraseJournalEntry(32084)
EraseJournalEntry(32085)
EraseJournalEntry(16351)
EraseJournalEntry(7002)
EraseJournalEntry(3716)
EraseJournalEntry(5814)
EraseJournalEntry(16331)
EraseJournalEntry(11864)
EraseJournalEntry(3374)
EraseJournalEntry(3377)
EraseJournalEntry(3927)
EraseJournalEntry(15710)
EraseJournalEntry(6589)
EraseJournalEntry(59529)
SetGlobal("ValygarVampire","GLOBAL",6)~ GOTO TS24
  IF ~~ THEN REPLY ~Valygar, that's me, <CHARNAME>! You are going to be alright! Breathe deeply and here is some elven water for you to drink...~ DO ~EraseJournalEntry(32084)
EraseJournalEntry(32085)
EraseJournalEntry(16351)
EraseJournalEntry(7002)
EraseJournalEntry(3716)
EraseJournalEntry(5814)
EraseJournalEntry(16331)
EraseJournalEntry(11864)
EraseJournalEntry(3374)
EraseJournalEntry(3377)
EraseJournalEntry(3927)
EraseJournalEntry(15710)
EraseJournalEntry(6589)
EraseJournalEntry(59529)
SetGlobal("ValygarVampire","GLOBAL",6)~ GOTO TS25
END

IF ~~ THEN BEGIN TS23
  SAY ~No more pale complexion... I am bloody glad to see you... Ahem, sorry, VERY glad to see you.~
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN TS24
  SAY ~I will stay by your side as long as you have a need of me, my dear friend.~
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN TS25
  SAY ~Right. I am now sufficiently soaked in holy water to wake up. I am bloody glad to see you... Ahem, sorry, VERY glad to see you.~
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF WEIGHT #6 ~Global("KickedOut","LOCALS",0)
Global("AnomenValygarFight","GLOBAL",3)~ THEN BEGIN TS26
  SAY ~(*Valygar takes hold of your trembling hand and looks into your pale, shocked face.*)

I'm so sorry that you had to see that, <CHARNAME>... I couldn't reason with him and he turned on me... I was fearful for your life and for the safety of the group. <CHARNAME>, can you ever forgive me? I'll understand if you wish me to leave!~
  IF ~~ THEN DO ~SetGlobal("AnomenValygarFight","GLOBAL",4)~ GOTO TS27
END

IF ~~ THEN BEGIN TS27
  SAY ~(*You look up into Valygar's eyes. You see the remorse and anguish in them.*)~
  IF ~~ THEN REPLY ~(*You tighten your grip on his hand.*)

There is nothing to forgive Valygar. I do not blame you. That last outburst of his frightened me too. I agree his obsessiveness could have become a danger to us all. I only wish that he could have been made to see reason before it came to this. I was so scared that he was going to hurt you, I couldn't bear to lose you, not now. Please Valygar, stay with me. Please?~ GOTO TS28
  IF ~~ THEN REPLY ~(*Your hand closes tightly around his.*)

I had no idea that he felt as he did. I swear to you Valygar, I gave him no encouragement. I sought only to reassure him of his ability to make a fine Knight. If he misinterpreted my words, then maybe I am to blame. Through my actions I almost lost you and that scares me more than anything. Your loss would be unbearable for me. Please Valygar, stay with me. Please?~ GOTO TS28
  IF ~~ THEN REPLY ~(*You squeeze his hand.*)

I wish you had let me handle that Ranger! I can well take care of myself and could, I'm sure, have reasoned with him. We could have avoided this mess and bloody outcome. A valuable ally is now lost to us, but what is done cannot be undone... I am however relieved that it is you standing beside me still and not Anomen. I couldn't bear to lose you, not now. Please Valygar, stay. ~ GOTO TS28
  IF ~~ THEN REPLY ~(*Tightening your hold on his hand.*)

You suprise me yet again my sombre ranger. I didn't realise that you harbour such passion. Seems Anomen underestimated you as well, and has payed dearly. I hope you have saved some of that passion for when we eventually come up against our real enemies. What is done cannot be undone, he had become irrational so I blame no one. Come Valygar, we must all continue on.~ GOTO TS28
  IF ~~ THEN REPLY ~(*Holding his hand firmly and without a second glance at the body of Anomen.*)

I was wondering which one of us would eventually put an end to his constant mewing, but I didn't expect it to be you my sombre ranger! I bow to you Count Corthala for relieving me of the task. I lay no blame on you, the pompous twit brought it upon himself.~ GOTO TS28
  IF ~~ THEN REPLY ~(*You reluctanly let go of Valygar's hand.*)

Valygar, look at the faces of your companions. See in their eyes how they are now more than a little afraid of you. It is not what I want that matters now, I must do what is best for them. Our survival depends on knowing that we can rely on each other in any situation. We trust each other with our lives. If there's a continual need to watch in case some word or action may provoke such a reaction again, soon, someone else will die. I cannot take that risk. I'm sorry Valygar, but for the safety of the group, I think it's best that you leave.~ GOTO TS29
  IF ~~ THEN REPLY ~(*You take your hand from Valygar's.*)

It's not enough to have to watch our backs continuously, but we now fight amongst ourselves. One man lies dead and I need to be sure that it doesn't happen again. Anomen was hotheaded I agree, but you, Valygar, I thought above his provoking. I cannot blame one more than the other but Anomen has paid dearly. I can no longer trust you to keep your head in any given situation, so for the safety of the group I agree that it is best if you leave.~ GOTO TS29
  IF ~~ THEN REPLY ~(*You snatch your hand angrily away from Valygar's.*)

Valygar, I am not an object to be fought over! You disappoint me, I truly thought you're mature and wise enough not to be provoked by the words of an immature youth. It matters not who struck first, you could have stayed your weapon when you had the upper hand. If you cannot be trusted to keep your head in any given situation then I fear another life will be lost. I see no option other than to insist that you leave!~ GOTO TS29
  IF ~~ THEN REPLY ~(*You snatch your hand angrily away from Valygar's.*)

What in the Nine Hells were you thinking of ranger! Who gave you leave to step in and cause this mess? I was more than capable of handling the situation and in a far less bloody manner! If I truly thought that Anomen had become a danger, I would have insisted that he leave. Now, thanks to you, a fine cleric lies dead! I don't even think that resurrection is possible so I cannot undo what you have done. If you cannot be trusted to keep your head in any given situation, then all our lives are at risk and I will not put this group in jeopardy. It is best that you leave ranger, now!~ GOTO TS29
END

IF ~~ THEN BEGIN TS28
  SAY ~(*The worried look on Valygar's face becomes one of relief.*)

Thank you, <CHARNAME>. I truly regret what has occurred here today. I'll not give you cause to be sorry that you decided to give me another chance to prove my fealty to you, I can promise you that.

(*He reaffirms his grip on you hand as you turn and re-join the group.*)~
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN TS29
  SAY ~(*Valygar looks sorrowfully at you.*)

As you wish, <CHARNAME>. I want you to know that I truly regret what has occurred here today and that I'll never forget our time together or all that I have learnt from you. Keep yourself safe, <CHARNAME>.

(*Without another word, he looks down at his empty hand, turns and not looking back, he walks slowly away. You turn to the group and no-one says anything more as you continue on.*)~
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END
END