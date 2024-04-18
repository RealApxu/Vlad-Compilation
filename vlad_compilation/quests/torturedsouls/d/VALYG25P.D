BEGIN VALYG25P

CHAIN
IF ~Global("KickedOut","LOCALS",0) !Global("ValygarRomanceActive","GLOBAL",2)~ THEN VALYG25P 0
~I'm not averse to being on my own for awhile, if that's what you want. Your decision.~ [VALY2518]
END
 ++ ~No, stay with the group for now.~ DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
 IF ~AreaCheck("AR4500")~ THEN REPLY ~Just wait here, then.~ DO ~SetGlobal("KickedOut","LOCALS",1) MoveToPointNoInterrupt([1543.1721]) Face(0)~ EXTERN VALYG25P 1
 IF ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ THEN REPLY ~I'll send you back to the pocket plane...wait there.~ DO ~SetGlobal("KickedOut","LOCALS",1) CreateVisualEffectObject("SPDIMNDR",Myself) Wait(2) MoveBetweenAreas("AR4500",[1543.1721],0)~ EXIT
 IF ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ THEN REPLY ~Just wait here, then.~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXTERN VALYG25P 1

CHAIN VALYG25P 1
~Alright. I hope to see you later.~
EXIT

CHAIN
IF ~Global("KickedOut","LOCALS",0) Global("ValygarRomanceActive","GLOBAL",2)~ THEN VALYG25P 2
~Are...are you sure you want to part ways? I'd hate it if anything happened to you and I wasn't there.~
END
 ++ ~Stay with the group, then, my mistake.~ DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
 IF ~AreaCheck("AR4500")~ THEN REPLY ~Just wait here awhile, I'll be back.~ DO ~SetGlobal("KickedOut","LOCALS",1) MoveToPointNoInterrupt([1543.1721]) Face(0)~ EXTERN VALYG25P 3
 IF ~!AreaCheck("AR4500") !AreaCheck("AR4000")~ THEN REPLY ~I'll send you back to the pocket plane...wait for me there.~ DO ~SetGlobal("KickedOut","LOCALS",1) CreateVisualEffectObject("SPDIMNDR",Myself) Wait(2) MoveBetweenAreas("AR4500",[1543.1721],0)~ EXIT
 IF ~!AreaCheck("AR4500") !AreaCheck("AR4000")~ THEN REPLY ~Just wait here awhile, I'll be back.~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXTERN VALYG25P 3

CHAIN VALYG25P 3
~See you soon, then. Take care of yourself.~
EXIT

CHAIN
IF ~Global("KickedOut","LOCALS",1) !Global("ValygarRomanceActive","GLOBAL",2)~ THEN VALYG25P 4
~Good to see you again. Do you need me back in the group?~ [VALY2519]
END
 ++ ~Yes, let's go.~ DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
 ++ ~Not yet. Wait here awhile longer.~ EXTERN VALYG25P 6

IF ~Global("KickedOut","LOCALS",1) Global("ValygarRomanceActive","GLOBAL",2)~ THEN VALYG25P 5
~I'm relieved to see you still well. I hate to admit it, but I worry about you. Do you need me to rejoin you, yet?~
END
 ++ ~Yes, let's go.~ DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
 ++ ~Not yet, wait here awhile longer.~ EXTERN VALYG25P 6

CHAIN VALYG25P 6
~No problem. I'll be fine.~
EXIT

IF ~Global("KickedOut","LOCALS",0) Global("AnomenValygarFight","GLOBAL",3)~ THEN VALYG25P 7
~(*Valygar takes hold of your trembling hand and looks into your pale, shocked face.*)
I'm so sorry that you had to see that, <CHARNAME>... I couldn't reason with him and he turned on me... I was fearful for your life and for the safety of the group. <CHARNAME>, can you ever forgive me? I'll understand if you wish me to leave!~
DO ~SetGlobal("AnomenValygarFight","GLOBAL",4)~
EXTERN VALYG25P 8

CHAIN VALYG25P 8
~(*You look up into Valygar's eyes. You see the remorse and anguish in them.*)~
END
 ++ ~(*You tighten your grip on his hand.*)
There is nothing to forgive Valygar. I do not blame you. That last outburst of his frightened me too. I agree his obsessiveness could have become a danger to us all. I only wish that he could have been made to see reason before it came to this. I was so scared that he was going to hurt you, I couldn't bear to lose you, not now. Please Valygar, stay with me. Please?~ EXTERN VALYG25P 9
 ++ ~(*Your hand closes tightly around his.*)
I had no idea that he felt as he did. I swear to you Valygar, I gave him no encouragement. I sought only to reassure him of his ability to make a fine Knight. If he misinterpreted my words, then maybe I am to blame. Through my actions I almost lost you and that scares me more than anything. Your loss would be unbearable for me. Please Valygar, stay with me. Please?~ EXTERN VALYG25P 9
 ++ ~(*You squeeze his hand.*)
I wish you had let me handle that Ranger! I can well take care of myself and could, I'm sure, have reasoned with him. We could have avoided this mess and bloody outcome. A valuable ally is now lost to us, but what is done cannot be undone... I am however relieved that it is you standing beside me still and not Anomen. I couldn't bear to lose you, not now. Please Valygar, stay. ~ EXTERN VALYG25P 9
 ++ ~(*Tightening your hold on his hand.*)
You suprise me yet again my sombre ranger. I didn't realise that you harbour such passion. Seems Anomen underestimated you as well, and has payed dearly. I hope you have saved some of that passion for when we eventually come up against our real enemies. What is done cannot be undone, he had become irrational so I blame no one. Come Valygar, we must all continue on.~ EXTERN VALYG25P 9
 ++ ~(*Holding his hand firmly and without a second glance at the body of Anomen.*)
I was wondering which one of us would eventually put an end to his constant mewing, but I didn't expect it to be you my sombre ranger! I bow to you Count Corthala for relieving me of the task. I lay no blame on you, the pompous twit brought it upon himself.~ EXTERN VALYG25P 9
 ++ ~(*You reluctanly let go of Valygar's hand.*)
Valygar, look at the faces of your companions. See in their eyes how they are now more than a little afraid of you. It is not what I want that matters now, I must do what is best for them. Our survival depends on knowing that we can rely on each other in any situation. We trust each other with our lives. If there's a continual need to watch in case some word or action may provoke such a reaction again, soon, someone else will die. I cannot take that risk. I'm sorry Valygar, but for the safety of the group, I think it's best that you leave.~ EXTERN VALYG25P 10
 ++ ~(*You take your hand from Valygar's.*)
It's not enough to have to watch our backs continuously, but we now fight amongst ourselves. One man lies dead and I need to be sure that it doesn't happen again. Anomen was hotheaded I agree, but you, Valygar, I thought above his provoking. I cannot blame one more than the other but Anomen has paid dearly. I can no longer trust you to keep your head in any given situation, so for the safety of the group I agree that it is best if you leave.~ EXTERN VALYG25P 10
 ++ ~(*You snatch your hand angrily away from Valygar's.*)
Valygar, I am not an object to be fought over! You disappoint me, I truly thought you're mature and wise enough not to be provoked by the words of an immature youth. It matters not who struck first, you could have stayed your weapon when you had the upper hand. If you cannot be trusted to keep your head in any given situation then I fear another life will be lost. I see no option other than to insist that you leave!~ EXTERN VALYG25P 10
 ++ ~(*You snatch your hand angrily away from Valygar's.*)
What in the Nine Hells were you thinking of ranger! Who gave you leave to step in and cause this mess? I was more than capable of handling the situation and in a far less bloody manner! If I truly thought that Anomen had become a danger, I would have insisted that he leave. Now, thanks to you, a fine cleric lies dead! I don't even think that resurrection is possible so I cannot undo what you have done. If you cannot be trusted to keep your head in any given situation, then all our lives are at risk and I will not put this group in jeopardy. It is best that you leave ranger, now!~ EXTERN VALYG25P 10

CHAIN VALYG25P 9
~(*The worried look on Valygar's face becomes one of relief.*)
Thank you, <CHARNAME>. I truly regret what has occurred here today. I'll not give you cause to be sorry that you decided to give me another chance to prove my fealty to you, I can promise you that.

(*He reaffirms his grip on you hand as you turn and re-join the group.*)~
DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~
EXIT

CHAIN VALYG25P 10
~(*Valygar looks sorrowfully at you.*)
As you wish, <CHARNAME>. I want you to know that I truly regret what has occurred here today and that I'll never forget our time together or all that I have learnt from you. Keep yourself safe, <CHARNAME>.

(*Without another word, he looks down at his empty hand, turns and not looking back, he walks slowly away. You turn to the group and no-one says anything more as you continue on.*)~
DO ~EscapeArea()~
EXIT