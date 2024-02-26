BEGIN ~NECRIAS~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~I take it you have good reason to be bursting in on me uninvited? I am Necrias and I do not like people interrupting my work. In fact I do not like people at all so I strongly suggest that you leave my abode forthwith.~
  	IF ~~ THEN REPLY ~I will not be taking up much of your time Necrias. I have come to ask you to please stop releasing your creatures into the area when you are done with them.~ GOTO 2
  	IF ~~ THEN REPLY ~I am here on behalf of Thalantyr, it seems your creatures are making the area around his abode unsafe for visitors and he wishes you to cease your experiments.~ GOTO nec7
		IF ~~ THEN REPLY ~I am here to insist that you stop this abominable practise of yours and leave the dead to rest in peace ... as is their right!~ GOTO nec8
END

IF ~~ THEN BEGIN 2
  SAY ~What would you suggest I do with them instead? As you can see, my house is too small to accommodate them all, and besides, who in their right mind would want so many undead living ... no *living* is not correct is it ... let�s say *roaming* freely in their house?~
  	IF ~~ THEN REPLY ~For a start, you could always undo whatever it is that you have done that makes them permanent so that they can be unsummoned once you are done with them.~ GOTO 3
  	IF ~~ THEN REPLY ~Uh ... how about sending them back to their graves?~ GOTO 3
  	IF ~~ THEN REPLY ~I have no idea. They are your responsibility and as such it is for you to ensure that they do not harm any innocent person who enters the area.~ GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY ~That would never do. If I was to do that then I wouldn�t be able to observe their behaviour after I had done my work on them. A total waste of my time and effort, no I need to be able to see what results from my, shall we say modifications to them. Already I can see what formidable fighters they have become, don�t you agree?~
  	IF ~~ THEN REPLY ~That is why I am here, to make sure you stop now before any more people are hurt or killed.~ GOTO 4
  	IF ~~ THEN REPLY ~They are a danger to everyone and that is why I must insist you stop or I will be forced to deal with you myself.~ GOTO 4
  	IF ~~ THEN REPLY ~I have seen what they have become and this abomination will cease now!~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY ~(*Sighs*) This is the very reason that I avoid people. No one understands genius nor the importance of research if progress is to be made. Let me explain something to you, these creatures as you call them, will continue to exist almost indefinitely, barring people like yourself attacking and killing them.~
=
~Now imagine what it would mean if I could do the same for a living body as I have done for a dead one ... the implications are enormous, death would be wiped out completely, apart from the odd murder or accident that is.~
=
~Ok, so a few innocent people die along the way, but sacrifices will always have to be made before any change is perfected. Surely you can see the benefit of what I am doing?~
  	IF ~~ THEN REPLY ~Even if I do, I can not condone the murder and mayhem that your creatures have brought to this place. You must cease these experiments now!~ GOTO nec5
  	IF ~~ THEN REPLY ~No I do not. Death is never acceptable when it is wantonly brought about by another�s selfishness. These creatures of yours kill for no reason other than that they can, it has to stop now!~ GOTO nec5
  	IF ~~ THEN REPLY ~I do not have to understand your reasons, it is enough that your creatures are a plague to this place and I am here to purge it of both them and yourself if you do not cease what you are doing now!~ GOTO nec5
  	IF ~~ THEN REPLY ~What you are doing goes against all that the gods teach, it is after all they that created this world and they who set the rules of life. Therefore I can not allow this abomination to continue.~ GOTO nec6
END

IF ~~ THEN BEGIN nec5
  SAY ~I have no intentions of allowing you to interrupt my work here. Necrias will be a name to be remembered as the man who discovered the secrets of eternal life and if you can not see that what I am doing will benefit all the peoples of this world then I can not allow you to leave and destroy my creations.~
  	IF ~~ THEN DO ~SetGlobal("MAP_GROUP_HOSTILE","MYAREA",1)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN nec6
  SAY ~Gods, what do they care of the world as it is today? They grew tired of their creation a long time ago. At first they were like children with a new toy and we all know how quickly children tire of their toys and look elsewhere for entertainment.~
=
~I have no idea where it is the gods are looking now but you can guarantee it is not in the direction of men. If not for people like myself there would be no progress and life would become stagnant.~
=
~However, I see that you have no concept of what I say and as such I will not allow you to destroy my creations.~
  	IF ~~ THEN DO ~SetGlobal("MAP_GROUP_HOSTILE","MYAREA",1)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN nec7
  SAY ~(*Scoffs*) Thalantyr, what does he know of my work here? He sits up there in that keep of his oblivious to the changes that are going on around him.~
=
~Oh he�ll sell you a potion and a spell or two, he even has the odd artifact that he will let you have at an exorbitant price, but he no longer bothers with the world or the people out side his own little domain, so why should he now be concerned about the safety of those that live in it?~
  	IF ~~ THEN REPLY ~It bothers him that people visit him for trade purposes and are beset by the creatures that you have loosened into the area. This assault on the innocent has to end.~ GOTO 2
  	IF ~~ THEN REPLY ~He is concerned enough to ask me to speak with you and request that you do not continue to release your abominations to roam free in this area.~ GOTO 2
  	IF ~~ THEN REPLY ~He is greatly concerned and has requested, that if you do not cease this practise of allowing your creatures to roam at will, I am to take the necessary steps to stop both them and yourself.~ GOTO 2
END

IF ~~ THEN BEGIN nec8
  SAY ~Rights? What could long dead bodies possibly be wanting with rights? What brains they had have long since turned to gunge and leaked out, so they certainly aren�t going to start thinking for themselves or making demands about these so called rights.~
=
~As for my work being abominable, it may seem distasteful to you, but so are a lot of things connected with research and experimentation.~
  	IF ~~ THEN REPLY ~What research can you possibly be doing that involves waking the dead from their rest?~ GOTO 4
  	IF ~~ THEN REPLY ~I neither know nor do I wish to know what kind of research it is that you are conducting here. My concern is only to rid this place of you and your loathsome creations.~ GOTO 4
  	IF ~~ THEN REPLY ~Your nefarious activities are about to come to an end necromancer. Unless you remove yourself and all your creatures from this area immediately, I will take action and remove you myself.~ GOTO 4
END