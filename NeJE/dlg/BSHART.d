BEGIN ~BSHART~

IF WEIGHT #0 ~Global("VP_STB_itscoldhere","LOCALS",2)~ THEN BEGIN 0
 SAY ~By the nine hells <CHARNAME>, it�s cold enough here to freeze a brass monkey�s...~
 IF ~~ THEN REPLY ~(*Interrupting her*) No need to elaborate Shar-Teel, I think we are all in agreement... it�s cold here.~ GOTO 1
 IF ~~ THEN REPLY ~You said it girl... am I glad I�m not a brass monkey!~ GOTO 5
 IF ~~ THEN REPLY ~Mmm... I believe monkey parts are a delicacy in some parts of the world... any you find could be worth a coin or two. Keep your eyes open people for frozen off cuts of monkey.~ GOTO 8
END

IF ~~ THEN BEGIN 1
 SAY ~(*Scoffs*) Oh... I am so sorry! My words not genteel enough for those delicate ears of yours?~
 IF ~~ THEN REPLY ~Your words are never genteel. Still, given who your father was, I guess it is only to be expected.~ GOTO 2
 IF ~~ THEN REPLY ~You know, for a woman, you have a very crude tongue!~ GOTO 3
 IF ~~ THEN REPLY ~Your prowess as a fighter more than makes up for your tongue. Your coarseness I can put up with Shar-Teel.~ GOTO 4
END

IF ~~ THEN BEGIN 2
 SAY ~Yea well, he may not have been much of a father but he sure as hell passed some useful skills onto me! I suppose we should both be grateful to him for that.~
 IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 3
 SAY ~Yea well, you don�t get to be the best damn fighter this side of Faerun by mixing with the gentry!~
 IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 4
 SAY ~Glad to see that you appreciate me <CHARNAME>. (*She turns away and strides off haughtily.*)~
	IF ~~ THEN DO ~SetGlobal("VP_STB_itscoldhere","LOCALS",3)~ EXIT
END

IF ~~ THEN BEGIN 5
 SAY ~Could be you had a narrow escape there. Imagine... how different things could have been if Bhaal had come upon a female brass monkey swinging through the trees. What with the way he was sowing his seed all over the land... sounds to me that as long as it moved and was female... *BANG*... in went the fertiliser!~
 IF ~~ THEN REPLY ~You know for a woman, you have a very crude tongue!~ GOTO 3
 IF ~~ THEN REPLY ~(*Looking a little bemused*) I must say, I�ve never heard it put quite that way before.~ GOTO 6
 IF ~~ THEN REPLY ~Fertiliser! You make it sound as though he were planting roses!~ GOTO 6
 IF ~~ THEN REPLY ~Ha, I like your kind of talk and your kind of fighting. You may not be as good as me but a girl after my own heart just the same!~ GOTO 7
END

IF ~~ THEN BEGIN 6
 SAY ~(*Sneers*) True, there are more commonly used words I could have used but no matter how you dress it up, ol� Bhaal, in his haste to produce as many bastards as he could before time ran out for him, was a rampant beast!~
 IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 7
 SAY ~(*Sneers*) I say what is on my mind... that�s all. You may have bested once in battle but anytime you wanna try again I guarantee you�ll ne�er have a tooth left in that fat mouth of yours.~
 IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 8
 SAY ~(*Gruffly*) So, my words amuse you do they? Would you be just as amused to hear the price necromancers would be willing to pay for <PRO_RACE>�s body parts?~
 IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 9
 SAY ~Poor bastard... thought I wanted to be like him! Still, I have him to thank, if it wasn�t for his... well... if it wasn�t for him I�d not be the best damn fighter this side of Faerun.~
 IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
 SAY ~(*She turns away and strides off haughtily.*)~
	IF ~~ THEN DO ~SetGlobal("VP_STB_itscoldhere","LOCALS",3)~ EXIT
END

IF ~~ THEN BEGIN 11
 SAY ~If you want to be the best then you have to learn from the best. As for  the language... that comes with the territory!~
 IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 12
 SAY ~He didn�t give a damn about those females... they were but incubators for the eggs he fertilised!~
 IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
 SAY ~If you want a more clinical description then you are speaking to the wrong girl.~
 IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 14
 SAY ~Mock me again and I�ll not only be making myself some serious coin but also several of those unscrupulous creatures that I know very happy!~
	IF ~~ THEN DO ~SetGlobal("VP_STB_itscoldhere","LOCALS",3)~ EXIT
END

IF WEIGHT #-1 ~Global("VP_STB_thishadbetter","LOCALS",2)~ THEN BEGIN 15
 SAY ~This had better end our business with the old druid, I�m sick of being his gopher. Tell me again <CHARNAME>, why are we risking our necks to save a bunch of people who�ll be dead as soon as we get out of this time warp?~
 IF ~~ THEN REPLY ~Because it�s the right thing to do.~ GOTO 16
 IF ~~ THEN REPLY ~Because this could well be our future if we don�t find a way out of here.~ GOTO 18
 IF ~~ THEN REPLY ~What�s the matter Shar-Teel... aren�t you enjoying the bloodshed?~ GOTO 24
 IF ~~ THEN REPLY ~Maybe, but we�re richer than we�ve ever been and the coin plus everything else we have looted will be going back with us!~ GOTO 25
END

IF ~~ THEN BEGIN 16
 SAY ~(*Gruffly*) Yea well, one of these times your self righteous "right thing" is going to leap out and stab you in the back.~
 IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
 SAY ~Me... I�ve always considered it�s better to do what�s right to keep me breathing and to the abyss with the dying in fighting someone else�s battle.~
  IF ~~ THEN DO ~SetGlobal("VP_STB_thishadbetter","LOCALS",3)~ EXIT
END

IF ~~ THEN BEGIN 18
 SAY ~Live in this uncivilised back wood... you�ve got to be joking! I still ha... you�d better find a way to return us, I am not about to die before I�ve even been born. A wish, which I�m sure, is very close to your own heart!~
 IF ~~ THEN REPLY ~Please, finish what you were saying and tell us all what it is you still have waiting for you in our own time? What secret is our hot blooded warrior keeping from us... eh?~ GOTO 19
 IF ~~ THEN REPLY ~I wish I were. I have no idea where we go once we�ve delivered the gem to Arundel. I had hoped in our search for it, we�d have found some way of getting home.~ GOTO 21
 IF ~~ THEN REPLY ~You forget, I too have very good reason not to hang around here for too long but once we get this gem to Arundel, we�ll just have to accept our lot and make the best of things until a way can be found.~ GOTO 21
 IF ~~ THEN REPLY ~The old druid knows more than he is telling. Well, we�ve done his bidding and now, one way or another, he will tell us what it is he�s not saying.~ GOTO 23
END

IF ~~ THEN BEGIN 19
 SAY ~(*Gruffly*) None of your damned business... that goes for all of you! I have a life I am anxious to continue so just you concentrate on finding us a way back to it... or you may find yourself dying that death before your birth and trust me, it won�t be of old age!~
 IF ~~ THEN REPLY ~I don�t take kindly to threats! I also have reasons to want out of here and if you want to be leaving with me, then I suggest you temper your manners a little... in fact, make that a lot!~ GOTO 20
 IF ~~ THEN REPLY ~Ha... is that a threat? If so then you should know I don�t scare easily.~ GOTO 20
 IF ~~ THEN REPLY ~You dare to threaten me... a little guttersnipe like you dares to threaten the heir of a god? You must have a death wish or something girly!~ GOTO 20
END

IF ~~ THEN BEGIN 20
 SAY ~Threaten... me threaten you? I never make threats <CHARNAME>... only promises, and those I always keep! (*Caressing her sword she turns away.*)~
  IF ~~ THEN DO ~SetGlobal("VP_STB_thishadbetter","LOCALS",3)~ EXIT
END

IF ~~ THEN BEGIN 21
 SAY ~(*Caressing her sword*) Yea well, he�s a sly one is that old druid. He�s keeping something from us, I know he is. If this darned gem is as important as he says, I reckon I can make him tell us what ever it is in exchange for it... or not, depending how quickly he co-operates!~
 IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
 SAY ~Yea, I�m certainly going to enjoy tortur... uh... getting it out of the son of a bitch!~
  IF ~~ THEN DO ~SetGlobal("VP_STB_thishadbetter","LOCALS",3)~ EXIT
END

IF ~~ THEN BEGIN 23
 SAY ~(*Caressing her sword*) Yea well, he�s a sly one is that old druid and I�m certainly going to enjoy tortur... uh... getting whatever it is out of the son of a bitch!~
  IF ~~ THEN DO ~SetGlobal("VP_STB_thishadbetter","LOCALS",3)~ EXIT
END

IF ~~ THEN BEGIN 24
 SAY ~(*Looking at you coldly*) There�s been enough blood spilt to turn all the seas of Faerun scarlet... but what�s the use of it all when there�s no one to remember who it was did the spilling?~
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
 SAY ~What glory is there in victory here when the minute you return to your own time your name will be lost in the annals of history?~
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
 SAY ~None, and if you don�t want to be remembered as the *lost half god*, you�d do well to get us out of here before you die here in the past... along with your name.~
 IF ~~ THEN REPLY ~I don�t take kindly to threats! I also have reasons to want out of here and if you want to be leaving with me, then I suggest you temper your manners a little... in fact, make that a lot!~ GOTO 20
 IF ~~ THEN REPLY ~Ha... is that a threat? If so then you should know I don�t scare easily.~ GOTO 20
 IF ~~ THEN REPLY ~You dare to threaten me... a little guttersnipe like you dares to threaten the heir of a god? You must have a death wish or something girly!~ GOTO 20
END

IF ~~ THEN BEGIN 27
 SAY ~(*Snarls*) You�re not even sure yourself we�ll be going back and riches or not, you�ve got to be joking if you think I�m going to live in this uncivilised back wood. No amount of coin will compensate for what I still ha... let�s just say you�d better find a way to return us, as I am not about to die before I�ve even been born. A wish, which I�m sure, is very close to your own heart!~
  IF ~~ THEN DO ~SetGlobal("VP_STB_thishadbetter","LOCALS",3)~ EXIT
END

IF ~~ THEN BEGIN LeiSpher1
	SAY ~What do you take me for... I am a warrior not a bloody contestant in your guessing game bard!~
	IF ~True()~ THEN EXTERN ~BLEINA~ Sphere10
	IF ~InParty("Yoshimo")
!Dead("Yoshimo")~ THEN EXTERN ~BYOSHIM~ LeiSpher1
	IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~BMINSC~ LeiSpher1
	IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~BEDWIN~ LeiSpher2
	IF ~InParty("Jaheira")
!Dead("Jaheira")~ THEN EXTERN ~BJAHEIR~ LeiSpher1
	IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~BKORGAN~ LeiSpher4
	IF ~InParty("Nalia")
!Dead("Nalia")~ THEN EXTERN ~BNALIA~ LeiSpher1
	IF ~InParty("Valygar")
!Dead("Valygar")~ THEN EXTERN ~BVALYGA~ LeiSpher1
	IF ~InParty("Viconia")
!Dead("Viconia")~ THEN EXTERN ~BVICONI~ LeiSpher3
	IF ~InParty("Dar")
!Dead("Dar")~ THEN EXTERN ~BDAR~ LeiSpher2	
	IF ~InParty("Melora")
!Dead("Melora")~ THEN EXTERN ~BMELORA~ LeiSpher1	
	IF ~InParty("Taffic")
!Dead("Taffic")~ THEN EXTERN ~BTAFFIC~ LeiSpher1			
END

IF WEIGHT #-1 ~Global("VP_In_Halruaa_Talk","LOCALS",4)~ THEN BEGIN halruaa1
 SAY ~(*Loudly*) These wizards mouths are as tightly clamped as a bloody virgin's knees, how the hell are we suppose to find anything here?~
 	IF ~~ THEN REPLY ~We keep our ears and our eyes open, that's how.~ GOTO halruaa2
 	IF ~~ THEN REPLY ~By keeping our wits about us and by being prudent with what we say when talking with these mages.~ GOTO halruaa6
 	IF ~~ THEN REPLY ~Not by advertising our presence that's for sure...keep your voice down please.~ GOTO halruaa7
 	IF ~~ THEN REPLY ~We won't if you keep opening that big mouth of yours!~ GOTO halruaa7
 	IF ~Gender(Player1,MALE)~ THEN REPLY ~The same way you get the virgin to relax those knees of hers. You first gain their trust and then you convince them what you say is truth.~ GOTO halruaa8
 	IF ~Gender(Player1,FEMALE)~ THEN REPLY ~The same way men get the virgin to relax those knees of hers. They first gain their trust and then they convince them what they say is truth.~ GOTO halruaa9
END

IF ~~ THEN BEGIN halruaa2
 SAY ~Everything here is so heavily steeped in magic whatever we're looking for could be right under our noses and we wouldn't see it no matter how wide we opened our eyes!~
=
~Time to stop being civilised and do things my way... I guarantee it'll get us home a bloody sight quicker than all this pussy-footing around!~
 	IF ~~ THEN REPLY ~So, Miss-know-it-all, what do YOU suggest we do?~ GOTO halruaa3
 	IF ~~ THEN REPLY ~I wouldn't mind slitting a few throats either Shar-Teel but it wouldn't do for them to find dead mages laying around. It's not like we can stack them in a corner somewhere. No, we'll just have to look harder. Sooner or later some one is sure to give something away.~ GOTO halruaa0
 	IF ~~ THEN REPLY ~Patience Shar-Teel, patience and perseverance. We know more than we did when we first arrived and soon we will know it all.~ GOTO halruaa0
 	IF ~~ THEN REPLY ~Patience Shar-Teel, patience and perseverance. Once we have learnt what it is we are here to learn, then you can do as you will with those we pass on our way out.~ GOTO halruaa0
END

IF ~~ THEN BEGIN halruaa3
 SAY ~Simple <CHARNAME>, we have one of two choices. First, we confront the big boss mage and ask him what's going on. Of course, we may need to threaten him a little bit, but I can do that if you're too squeamish.~
=
~If he tells us then we can high tail it back to this Tilorn with our wondrous news, and if he doesn't... well, we couldn't leave him alive now could we?~
=
~(*Her eyes glaze over slightly, and take on a thousand mile stare, a slight smile of anticipation crosses her lips*) Come to think of it, we couldn't leave him alive if he did talk. Or...~
=
~Second, we stop trying to see past the magic and blow up the academy along with every last one of its bloody conspirators. Ulcaster is triumphant, Tilorn's happy and we get to go home. Now that idea I like!~
 	IF ~InParty("Melora")
!Dead("Melora")~ THEN EXTERN ~BMELORA~ halrustb
 	IF ~OR(2)
!InParty("Melora")
Dead("Melora")~ THEN REPLY ~As appealing as it is, we'd have to take the academy in one fell swoop and we don't have enough fire power to do that. As for confronting a senior mage, he'd chew us up and spit us out in bubbles before we got near him. Bad ideas both of them.~ GOTO halruaa4
 	IF ~OR(2)
!InParty("Melora")
Dead("Melora")~ THEN REPLY ~You really are insane girl! Take on a senior mage, raze the academy! Can't you feel the power pulsing through this place? it would become a hundred fold stronger should we raise arms against it! Bad plan Shar-Teel, very bad plan!~ GOTO halruaa4
 	IF ~OR(2)
!InParty("Melora")
Dead("Melora")~ THEN REPLY ~Both are very bad ideas. I'll not risk the group's survival because you can not control your blood thirsty tendencies!~ GOTO halruaa4
 	IF ~OR(2)
!InParty("Melora")
Dead("Melora")~ THEN REPLY ~You surprise me, I thought your first option would be the extent of your taste, one to one with the mage, just to see how much blood you can force out of him before he dies?~ GOTO halruaa5
END

IF ~~ THEN BEGIN halrustb
 SAY ~So <CHARNAME>, sounds good?~
 	IF ~~ THEN REPLY ~As appealing as it is, we'd have to take the academy in one fell swoop and we don't have enough fire power to do that. As for confronting a senior mage, he'd chew us up and spit us out in bubbles before we got near him. Bad ideas both of them.~ GOTO halruaa4
 	IF ~~ THEN REPLY ~You really are insane girl! Take on a senior mage, raze the academy! Can't you feel the power pulsing through this place? It would become a hundred fold stronger should we raise arms against it! Bad plan Shar-Teel, very bad plan!~ GOTO halruaa4
 	IF ~~ THEN REPLY ~Both are very bad ideas. I'll not risk the group's survival because you can not control your blood thirsty tendencies!~ GOTO halruaa4
 	IF ~~ THEN REPLY ~You surprise me, I thought your first option would be the extent of your taste, one to one with the mage, just to see how much blood you can force out of him before he dies?~ GOTO halruaa5
END

IF ~~ THEN BEGIN halruaa4
 SAY ~(*Shrugging her shoulders*) I take it that's a no <CHARNAME>! So, it's back to crawling and fumbling around in the dark.~
=
~Still, not having any backbone I suppose you're used to crawling, being the pathetic worm you are!~
  IF ~~ THEN DO ~SetGlobal("VP_In_Halruaa_Talk","LOCALS",5)~ EXIT
END

IF ~~ THEN BEGIN halruaa5
 SAY ~Why be content with a trickle when you can have a river? So, which is to be <CHARNAME>, the mage or the whole nest of mages?~
 	IF ~~ THEN REPLY ~As appealing as it is, we'd have to take the academy in one fell swoop and we don't have enough fire power to do that. As for confronting a senior mage, he'd chew us up and spit us out in bubbles before we got near him. Bad ideas both of them.~ GOTO halruaa4
 	IF ~~ THEN REPLY ~You really are insane girl! Take on a senior mage, raze the academy! Can't you feel the power pulsing through this place? It would become a hundred fold stronger should we raise arms against it! Bad plan Shar-Teel, very bad plan!~ GOTO halruaa4
 	IF ~~ THEN REPLY ~Both are very bad ideas. I'll not risk the group's survival because you can not control your blood thirsty notions!~ GOTO halruaa4
 	IF ~~ THEN REPLY ~Yea gods girl haven't you learned anything yet? Get your head back up where it belongs and think! I like to see blood flow as much as you and nothing would give me more pleasure than to prolong our sport but the odds are stacked against us here!~ GOTO halruaa4
END

IF ~~ THEN BEGIN halruaa6
 SAY ~These wizards aren't going to tell us anything! Look at us, to them we appear as no more than idiot students. Time to stop being civilised and do things my way. I  guarantee it'll get us home a bloody sight quicker than all this pussy footing around!~
 	IF ~~ THEN REPLY ~So, Miss-know-it-all, what do YOU suggest we do?~ GOTO halruaa3
 	IF ~~ THEN REPLY ~I wouldn't mind slitting a few throats either Shar-Teel but it wouldn't do for them to find dead mages laying around. It's not like we can stack them in a corner somewhere. No, we'll just have to look harder. Sooner or later some one is sure to give something away.~ GOTO halruaa0
 	IF ~~ THEN REPLY ~Patience Shar-Teel, patience and perseverance. We know more than we did when we first arrived and soon we will know it all.~ GOTO halruaa0
END

IF ~~ THEN BEGIN halruaa7
 SAY ~(*Gruffly*) At least I'm not scared to be heard! Not like you lot, creeping about, afraid your own shadows will give you away... And where's it getting us? No bloody where!~
=
~I say it's time to stop being civilised and do things my way. I guarantee it'll get us home a bloody sight quicker than all this pussy footing around!~
 	IF ~~ THEN REPLY ~So, Miss-know-it-all, what do YOU suggest we do?~ GOTO halruaa3
 	IF ~~ THEN REPLY ~I wouldn't mind slitting a few throats either Shar-Teel but it wouldn't do for them to find dead mages laying around. It's not like we can stack them in a corner somewhere. No, we'll just have to look harder. Sooner or later some one is sure to give something away.~ GOTO halruaa0
 	IF ~~ THEN REPLY ~Patience Shar-Teel, patience and perseverance. We know more than we did when we first arrived and soon we will know it all.~ GOTO halruaa0
END

IF ~~ THEN BEGIN halruaa8
 SAY ~(*Snarls*) Men... they never think with their brain! Always believing they're irresistible and that they can sweet talk any girl into their bed!~
=
~Those feeble, pathetic creatures who believe the untruths of men, they make me want to throw up! They are as spineless as the men they lie with and deserve no sympathy when left with the fruits of their folly!~
  IF ~~ THEN DO ~SetGlobal("VP_In_Halruaa_Talk","LOCALS",5)~ EXIT
END

IF ~~ THEN BEGIN halruaa9
 SAY ~(*Snidely*) Sounds like you know what you're saying girl. Got sweet talked by a handsome face into relaxing your knees did you?~
=
~I loathe those feeble, pathetic creatures who believe the untruths of men, they make me want to throw up! They are as spineless as the men they lie with and deserve no sympathy when left with the fruits of their folly.~
=
~Still, you seem to have got lucky. I don't see you toting a man's bastard on your hip.~
  IF ~~ THEN DO ~SetGlobal("VP_In_Halruaa_Talk","LOCALS",5)~ EXIT
END

IF ~~ THEN BEGIN halruaa0
 SAY ~(*Gruffly*) In the meantime we do what? Sit and knit hose for the poor? These wizards aren't going to give themselves away, at least, not before we have made ourselves enough hose to cover the feet of everyone this side of Faerun.~
=
~I say we grab one of those high and mighty wizards and make him talk, or we simply blow up the academy along with every last one of its bloody conspirators!~
=
~Ulcaster is triumphant, Tilorn's happy and we get to go home. Now that idea I like!~
 	IF ~InParty("Melora")
!Dead("Melora")~ THEN EXTERN ~BMELORA~ halrustb
 	IF ~OR(2)
!InParty("Melora")
Dead("Melora")~ THEN REPLY ~As appealing as it is, we'd have to take the academy in one fell swoop and we don't have enough fire power to do that. As for confronting a senior mage, he'd chew us up and spit us out in bubbles before we got near him. Bad ideas both of them.~ GOTO halruaa4
 	IF ~OR(2)
!InParty("Melora")
Dead("Melora")~ THEN REPLY ~You really are insane girl! Take on a senior mage, raze the academy! Can't you feel the power pulsing through this place? it would become a hundred fold stronger should we raise arms against it! Bad plan Shar-Teel, very bad plan!~ GOTO halruaa4
 	IF ~OR(2)
!InParty("Melora")
Dead("Melora")~ THEN REPLY ~Both are very bad ideas. I'll not risk the group's survival because you can not control your blood thirsty tendencies!~ GOTO halruaa4
 	IF ~OR(2)
!InParty("Melora")
Dead("Melora")~ THEN REPLY ~You surprise me, I thought your first option would be the extent of your taste, one to one with the mage, just to see how much blood you can force out of him before he dies?~ GOTO halruaa5
END

IF ~~ THEN BEGIN RadianQ
  SAY ~Finally the stinkin' male is gettin' a brain. Your damn right, <CHARNAME>, who gives a crap who starts it and how. As long as blood flows. So you shut your yammering bard!~
 IF ~True()~ THEN EXTERN ~BLEINA~ RadiaQ10
 IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~BKORGAN~ RadianQB  	
END

IF ~~ THEN BEGIN RadianQ1
  SAY ~I think a snowball has a better chance in hell than this bard being able to change her pie in the sky attitude. For all her, *I've grown* attitude, she still doesn't use her brain!~
 IF ~True()~ THEN EXTERN ~BLEINA~ RadiQ19A
 IF ~InParty("Viconia")
!Dead("Viconia")~ THEN EXTERN ~BVICONI~ RadianQ
 IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~BEDWIN~ RadianQ
END

IF ~~ THEN BEGIN LeiRadia
  SAY ~Oh suck it up bard, who the hell cares where we sit as long as they have ale and hot water. I'll never know how in the nine hells you ever got into this party. You're such a prig!~
	IF ~True()~ THEN EXTERN ~BLEINA~ RadiQ21B
	IF ~InParty("Viconia")
!Dead("Viconia")~ THEN EXTERN ~BVICONI~ LeiRadia
	IF ~InParty("Taffic")
!Dead("Taffic")~ THEN EXTERN ~BTAFFIC~ LeiRadia
	IF ~InParty("Melora")
!Dead("Melora")~ THEN EXTERN ~BMELORA~ LeiRadia
	IF ~InParty("Minsc")
!Dead("Minsc")~ THEN EXTERN ~BMINSC~ LeiRadia
	IF ~InParty("Edwin")
!Dead("Edwin")~ THEN EXTERN ~BEDWIN~ LeiRadia
	IF ~InParty("Korgan")
!Dead("Korgan")~ THEN EXTERN ~BKORGAN~ LeiRadia
END	

/////////////////////////////////
//					CHAINs		  //
////////////////////////////////

CHAIN IF ~Global("VP_STB_Minsc","LOCALS",2)~ THEN BSHART STB_Minsc
	~*Shar-Teel, being the first to rise, stands apart from the group and is readying herself for the day�s battles by practising her thrust and parry skills against an invisible foe. After a while she notices Minsc the ranger watching her...*~
=
	~(*Pointing her sword at him and speaking gruffly*) You want something ranger?~
DO ~SetGlobal("VP_STB_Minsc","LOCALS",3)~
== BMINSC ~Ooh please, do not point your sword at Minsc. Shar-Teel looks wonderful the way she dances with her blade and I only wish to stand and admire the dance.~
== BSHART ~(*Still pointing her sword*) This isn�t a side show you know, so if you�ve finished admiring... go away!~
== BMINSC ~Side show... what is this side show? Is that where you go to learn to do this... this sword fighting?~
== BSHART ~(*Sneers*) Imbecile ranger! It�s plain to see why in battle you miss more than you hit. Flaying about and out of control like a lunatic, I�m surprised you haven�t stuck yourself with your own sword!~
== BMINSC ~Minsc is no lunatic! He is a berserker, a warrior of great skill and cunning. When evil hears my berserker battle cry, it brings great terror to its heart because evil then knows Minsc is on its tail and a mighty righteous butt kicking is coming its way... right Boo?~
=
	~(*Squeak*)~ [BOONEJ1]
== BSHART ~Not to say any in your path will also get to feel this righteous ass kicking! There�s nothing skilful in charging in blindly swinging your sword in hopes of hitting something. That is why my skill makes me the superior fighter to you... to any man.~
== BMINSC ~(*He puts out his large hand and pushes the point of her sword away from him*)... Pooh... do you hear that Boo? Such pride Minsc has never seen before and lots of prideful evil have felt the force of Minsc�s boot heels or fallen to the edge of his sword.~
=
	~Come Boo, this pride will also come to a fall soon... we will watch and see.~
== BSHART ~I�ve heard some daft things come out of the mouths of men in my time but that half wit ranger takes the cake.~
EXIT

CHAIN IF ~Global("VP_STB_Jaheira","LOCALS",2)~ THEN BSHART STB_Jaheira
	~J-J-Jaheira  m-m-my dear...~
DO ~SetGlobal("VP_STB_Jaheira","LOCALS",3)~
== BJAHEIR ~You heartless harpy! I�ve no time for your flippancy, get away from me!~
== BSHART ~B-b-but you d-d-don�t know what I-I-I�m going to say...~

== BJAHEIR ~Nor do I wish to either! To the abyss with you!~
=
~Damn and blast <CHARNAME>, why ever did <PRO_HESHE> let that heinous hellcat into this group! I warned that she would be trouble, her and that blood thirsty mind of hers.~
== BSHART ~Go to hell yourself Druid! I pledged my sword to <CHARNAME>�s cause <PRO_HESHE> bested me fair and square. So here I am and either you accept it or... or... go make a nest in that tree of Kuldahar�s and become one with your beloved nature.~
=
	~Tell you what half-elf, if we find that man of yours we�ll get Irenicus to open a portal and we�ll send the bumbling twerp through to you... how�s that sound?~
== BJAHEIR ~You�ll not be rid of me that easy. I also gave my oath to aid and protect <CHARNAME>, so thanks all the same but I feel I�ll be reunited with Khalid soon enough.~
== BSHART ~(*Scoffs*) You think so? You must have heard the torture Irenicus put <CHARNAME> through. I know I did, I thought the roof was going to cave in with all the ruckus <PRO_HESHE> was making.~
=
	~May be you heard the imbecile ranger say what happened to the witch Dynaheir... do you really think that wimp of a husband of yours fared any better?~
== BJAHEIR ~If Khalid was dead I would know it... I would! There is a bond that comes when two have been paired for as long as Khalid and I have, a bond that you couldn�t possibly begin to understand. Maybe if you stopped deriding men and opened your heart a little you�d understand how it is with male and female... how one is made to compliment the other.~
== BSHART ~Male compliment female, yea gods what rainbow did you slide down druid!?~
=
	~Everyone knows the female is by far the stronger sex. It�s just a case of getting the males to admit it but of course, their egos are far too big for that. Ask yourself, if it were left to men to birth the babies, how soon before  all life became extinct?~
== BJAHEIR ~This is becoming tiresome Shar-Teel. I can only think something must have gone dreadfully awry in your past to turn such a pretty girl into such a harridan... perhaps I should pity you instead of berating you?~
== BSHART ~(*Sneers*) You know nothing about me! If any one is worthy of pity half elf it�s you! I�ve watched you and it�s obvious that your lack of prowess as a fighter is why you compensate with a few paltry spells to back you up. Must say it suits you, half elf... half fighter...~
=
	~Keep your pity druid, take it, along with your imbecile husband to the abyss with you. (*She strides away*)~
EXIT

CHAIN IF ~Global("VP_STB_Hrothgar","LOCALS",2)~ THEN BSHART STB_Hrothgar
	~Ho you, paladin...~
DO ~SetGlobal("VP_STB_Hrothgar","LOCALS",3)~
== BHROTH ~(*Sighing*) Please Shar-Teel, I have no objections to you using my name. Perhaps you�ll show a little less distain if you use it and forget the paladin in me.~
== BSHART ~(*Gruffly*) Huh, if you lost some of those holier than thou airs and graces that you put on, we might all forget the paladin in you. All this goody goody, "I�m superior to you and you can�t possibly live up to my example" is sickening! Admit it, you�re a prude 'paladin'?~
== BHROTH ~There is nothing prudish in the way I conduct my life. It is my choice and although it saddens me to see the way some choose to live, I have never set myself up as an example, nor do I expect everyone to agree with my code. Only the gods have the right to expect man to follow by their example.~
== BSHART ~Ha... so as long as we live by the example set by a god, regardless of which god we choose to follow, then we can not be condemned for our actions... it is a god�s way!~
== BHROTH ~(*Smiling*) So, by inferring that to follow the example of one of the less than righteous members of our pantheon one can not be condemned for evil deeds, you think you have me do you young lady?~
== BSHART ~You got it in one! In your own words... man chooses his god, his god sets his demands,  man follows. Oh, and be careful how you address me paladin or I�ll show you just how unladylike I can be!~
== BHROTH ~(*Bows slightly*) Forgive my impertinence... Shar-Teel.~
=
	~It is because of the differing alignments of the gods that good, evil and impartiality will always be a part of our world...~
=
	~We can not change it, it is the way. Just as it will always be the way for the priests of one god to strive to convert all those aligned to another to their own faith. Each will condemn the other saying theirs is the right way but in the end, each and every man has free will to make his own choices in this life.~
=
	~Now supposing, just supposing I were to...~
== BSHART ~(*She slants her eyes and her face darkens*) Stop right there! There�s no supposing anything... I�m not standing here and listening to you go into the spiel of one of those damned converting priests yourself! I�m exercising some of that free will and ending this conversation now!~
== BHROTH ~That is your prerogative. Now, what was it you hailed me for?~
== BSHART ~Forget it! You�ll only turn it into another sermon... you just can�t help yourself!~
EXIT

CHAIN IF ~Global("VP_STB_Dar","LOCALS",2)~ THEN BSHART STB_Dar
	~Yes, big fella?~
DO ~SetGlobal("VP_STB_Dar","LOCALS",3)~
== BDAR ~Shar-Teel... if I may presume to use your name? I hope that now we have fought side by side you do not still perceive me as quite as burdensome to the group as you first thought?~
== BSHART ~It is my name, if needs must you may use it!~
=
	~You fight well enough half orc... for your kind but that�s no excuse to approach me and speak to me as if you were my equal... that you will never be!~
== BDAR ~You misunderstand, I never expected to be considered equal in the world of men. I only hope, one day, to gain acceptance and recognition for the skills I bring to it... that is the most I dare hope to dream of.~
== BSHART ~(*Scoffs*) <CHARNAME> brought you into this group, you should be telling <PRO_HIMHER> of you hopes... they are of no interest to me. I can�t imagine why you think they are!~
=
	~You�re an abomination, not only as a half-orc but also as a male! Your kind are savages, your own birth is proof enough. That poor wretch of a woman you call mother, should have castrated your father as soon as he dropped his breeches. Me, I wouldn�t have hesitated... him and any others who thought to try their luck.~
=
	~Seems to me, a man can�t go raping decent women if he�s nothing in his breeches!~
== BDAR ~(*Sadly*) Yours is the attitude I have come to expect and have learnt to accept in this life. I should have realised that I have no right to presume to speak with you, nor to impose my thoughts and expectations on you. I am sorry... forgive me.~
== BSHART ~Yeah... well in future half orc, keep that ugly great head of yours away from me and we�ll get on just fine!~
EXIT

CHAIN IF ~Global("VP_STB_Accalia","LOCALS",2)~ THEN BSHART STB_Accalia
	~A question Accalia... what in the nine hells makes a woman of obvious intelligence become servile to a god? A goddess I could just about understand, what with her probably being more powerful and all that, but a god... sheesh there�s nothing more pathetic than to see a woman on her knees to a male, even if that male is a god!~
DO ~SetGlobal("VP_STB_Accalia","LOCALS",3)~
== BACCALI ~It is a calling Shar-Teel, not just something a person wakes up one day and decides to do. It is an honour to be called by one�s god or goddess to do their will.~
== BSHART ~Yea right, this male materialises out of thin air and says he�s your god. Then, with a click of his fingers you fall at his feet ready to do anything he asks! Could just as easily been a demon you know, devious blighters are demons, always looking to make fools of us mortals. That is, those without the sense to see through them.~
== BACCALI ~That�s where faith comes into it, but to be honest with you Shar-Teel, because of your prideful attitude I doubt I could explain it in such a way you�d accept. This conversation is a waste of both our time. (*She turns away*)...~
== BSHART ~Hey we aren�t done yet! What�s wrong with a little friendly banter between girls... surely if it�s as strong as you make out, your faith can withstand a little inquiry?~
== BACCALI ~My faith in Tempus is unshakable, it�s your inability to make an unbiased judgement when the subject under discussion involves a male... be he a god or mortal. Tell me Shar-Teel, if I were the chosen of a goddess, would we be having this conversation?~
== BSHART ~Chosen, is that how you see yourself? More like enslaved. You said yourself that you would prefer to be on the battlefield than serving in the temple and yet, where did we find you... in the temple serving under and answerable to yet another male!~
=
	~You believe you are strong, but in reality it�s men who pull your strings... you are just another weak woman, priestess of Tempus and you�re right, this conversation has been a waste of time.~
EXIT

CHAIN IF ~Global("VP_STB_Imoen","LOCALS",2)
InParty("Imoen")
Global("VP_STB_TalkToImmy","LOCALS",1)~ THEN BSHART STB_Imoen
~(*She grabs Imoen�s hand*) Ha, caught you! Sneaking around again are you thief?~
DO ~SetGlobal("VP_STB_Imoen","LOCALS",3)~
== IMOENJ ~Let go of me, Shar-Teel!~
== BSHART ~Not until you tell me why you�re sneaking about here when everyone else is sleeping?~
== IMOENJ ~(*She snarls*) It�s none of your business, so just let go of me!~		
== BSHART ~Look here you snotty nosed tyke, when I see some one rifling through my stuff then it becomes my business! I�ll not ask again, so unless you want those thieving hands of yours to hit the ground, what are you doing?~
== IMOENJ ~(*Looking suprised*) Your stuff! What in the nine hells do you think I would want with your stuff... I wouldn�t touch "your stuff" with a ten foot pole. Here look for yourself...~
== BSHART ~Bah... all these bags look the same. Hey, just a minute, isn�t that the paladin�s bag you�ve got there?~
== IMOENJ ~(*Snatching it back from her gaze*) Yea, why, you wanna make something of it?~
== BSHART ~(*Scoffs*) Why you little snotling! You think you�ve got what it takes?~
== IMOENJ ~(*Drawing her sword*) You don�t scare me... maybe it�s time you got to see your own blood bleeding out!~
== BSHART ~(*Seeing the resolution on Imoen�s face she bursts out laughing*)... Oh grow up you pathetic little girl... you seriously think I�d take on a kid with only a �dirk� to play with!~
=
	~You�re out of your league kiddo... go back to your rifling, and don�t worry, I�ll not tell the paladin about your little midnight foray... I despise his kind more than you!~
=
	~(*She grabs her own bag and shaking her head she turns back to her bed, mumbling as she goes*)... Insolent little guttersnipe... she actually thinks she could best me... pathetic!~
== IMOENJ ~What was it Gorion said... something about "the bigger they are the harder they fall"?~
=
	~Well, judging by the size of that one�s head, she�s in for one hell of a fall one day. (*She starts to giggle*)~
=
	~I only hope I�m around to see it... (*Then thoughtfully*)... Mmm I wonder what she�s hiding in her bag that�s got her knickers all in a twist... later maybe...~
=
	~(*She turns her attention back to the bag in her hand*)... Mmm, now what do we have in here... surely he must have some keepsake bestowed upon him by a lady love. I can�t believe he�s got as old as he has and not fallen under the spell of some beautiful woman. He has the word tragedy written all over his face.~
EXIT

CHAIN IF ~Global("VP_STB_Imoen","LOCALS",2)
InParty("Imoen2")
Global("VP_STB_TalkToImmy2","LOCALS",1)~ THEN BSHART STB_Imoen
	~(*She grabs Imoen�s hand*) Ha, caught you! Sneaking around again are you thief?~
DO ~SetGlobal("VP_STB_Imoen","LOCALS",3)~
== IMOEN2J ~Let go of me, Shar-Teel!~
== BSHART ~Not until you tell me why you�re sneaking about here when everyone else is sleeping?~
== IMOEN2J ~(*She snarls*) It�s none of your business, so just let go of me!~		
== BSHART ~Look here you snotty nosed tyke, when I see some one rifling through my stuff then it becomes my business! I�ll not ask again, so unless you want those thieving hands of yours to hit the ground, what are you doing?~
== IMOEN2J ~(*Looking suprised*) Your stuff! What in the nine hells do you think I would want with your stuff... I wouldn�t touch "your stuff" with a ten foot pole. Here look for yourself...~
== BSHART ~Bah... all these bags look the same. Hey, just a minute, isn�t that the paladin�s bag you�ve got there?~
== IMOEN2J ~(*Snatching it back from her gaze*) Yea, why, you wanna make something of it?~
== BSHART ~(*Scoffs*) Why you little snotling! You think you�ve got what it takes?~
== IMOEN2J ~(*Drawing her sword*) You don�t scare me... maybe it�s time you got to see your own blood bleeding out!~
== BSHART ~(*Seeing the resolution on Imoen�s face she bursts out laughing*)... Oh grow up you pathetic little girl... you seriously think I�d take on a kid with only a �dirk� to play with!~
=
	~You�re out of your league kiddo... go back to your rifling, and don�t worry, I�ll not tell the paladin about your little midnight foray... I despise his kind more than you!~
=
	~(*She grabs her own bag and shaking her head she turns back to her bed, mumbling as she goes*)... Insolent little guttersnipe... she actually thinks she could best me... pathetic!~
== IMOEN2J ~What was it Gorion said... something about "the bigger they are the harder they fall"?~
=
	~Well, judging by the size of that one�s head, she�s in for one hell of a fall one day. (*She starts to giggle*)~
=
	~I only hope I�m around to see it... (*Then thoughtfully*)... Mmm I wonder what she�s hiding in her bag that�s got her knickers all in a twist... later maybe...~
=
	~(*She turns her attention back to the bag in her hand*)... Mmm, now what do we have in here... surely he must have some keepsake bestowed upon him by a lady love. I can�t believe he�s got as old as he has and not fallen under the spell of some beautiful woman. He has the word tragedy written all over his face.~
EXIT

CHAIN IF ~Global("VP_STB_Melora","LOCALS",2)~ THEN BSHART STB_Melora
	~You�re not half bad with that blade of yours thief. A big improvement on that other milksop of a wimp I�ve had to put up with. The gods only know why in the nine hells <CHARNAME> suffered her simpering face for this long.~
DO ~SetGlobal("VP_STB_Melora","LOCALS",3)~
== BMELORA ~Imoen isn�t it? Strange that... everyone else keeps saying how brave she is. I haven�t heard one bad word against her... until now.~
=
	~Stranger still that the sorcerer thought her important enough to ensure she was taken along with himself... even more important then even <CHARNAME>... any ideas why?~
== BSHART ~Hey, when the gods answer your prayers, you don�t turn around and ask why! Good riddance to the snooty bitch is what I say.~
== BMELORA ~Oh now come on... surely even you can show some compassion for the unfortunate girl? The sorcerer has already tortured her relentlessly, she must be scared out of her wits to find herself at his mercy once again.~
== BSHART ~(*Scoffs*) Compassion, for a little sneak thief whose idea of fighting is a quick stab in the back and then to run away and hide. Often as not leaving us to finish the poor bastard off... she seldom managed a clean kill! I have only contempt for her kind!~
== BMELORA ~That is so typical of those with brawn and no brain! Just as the world has many races, so are its people born with different abilities.~
=
	~The tall and strong find it easy to wield weapons... my kind are born with nimbleness of both mind and body... and if were not for the dexterity of the one you deride, you may well be still rotting in a cell!~
=
	~We are all gifted differently, but that is no reason to deride those not like yourself!~
== BSHART ~(*Sneers*) My... quite the little people lover aren�t we! Tell me Melora, what of the one who uses his gifts to wield magic, what of the wizard Melora... is he also included in your warm and fuzzy we must love all people philosophy?~
== BMELORA ~(*Looking coldly at Shar-Teel*) Don�t even go there Shar-Teel, that is personal and none of your damn business!~
=
	~I know about the foul arts of magic and of those who wield them, so I can empathise with Imoen�s friends... understand how they fear for her and the fate which has befallen her.~
=
	~Yet you... you who fought beside her gloat at her misfortune as though the gods themselves had done this in answer to your plea. You are as cold as the steel in that blade you carry!~
== BSHART ~I tell it like it is and if you don�t like it then don�t listen... simple as that. Better still, reserve your judgment until after you meet the little snotling... that is providing we rescue her before Irenicus finishes what he started and leaves us nothing to rescue!~
== BMELORA ~You�d better watch your mouth... There�s those here who, hearing you talk like that, would be only to happy to shut it for you. Have a care Shar-Teel!~
== BSHART ~Do I look worried? Believe me, many have tried and many have fallen because they objected to my... shall we say, plain speaking! As for you... you stunted half breed, what are you going to do... run and tell them what the big bad Shar-Teel said about their darling Imoen?~
=
	~I never back away from the chance to get in some more killing. So please, do me a favour and go tell them.~
== BMELORA ~(*Pulling herself up to her full height and glaring at the fighter*) I�m not intimidated by you, I�ve knocked down bigger and better than you... you foul mouthed harpy!~
=
	~You�re the pits you really are and I am sickened to find myself in cahoots with such evil. I�ve no need to tell tales, you�ll drop yourself in it sooner or later... your kind always do.~
=
	~(*She begins to walk away, but then she turns and looks squarely at Shar-Teel*)... Be wary of the shadows, you never can be sure of what lurks just out of sight!~
EXIT

CHAIN IF ~Global("VP_SharTeel_Leina","LOCALS",2)~ THEN BSHART leina
	~(*Clapping Leina on the shoulder*) Good on you girl!~
DO ~SetGlobal("VP_SharTeel_Leina","LOCALS",3)~
== BLEINA ~(*Spluttering from the unexpected touch of the fighter's hand*) Wha... what! Oh Shar-Teel it's you... yea gods you gave me a fright girl!~
== BSHART ~Didn't mean to scare you, I just wanted to say good on you for standing up to your father. Better to die than be forced to submit and share the bed of a man you so obviously despise, or any man if it comes to that!~
=
~Where do men get off thinking they have the right to dictate what's best for us women!~
== BLEINA ~It wasn't quite like that you know. My father, he... he wasn't himself.~
=
~A mystery still shrouds my mother death and I believe he blamed himself thinking it was revenge for an error of judgement on his part, that he had wronged someone in his dealings and she was made to pay for his mistake.~
=
~He feared for my safety and to him it was the only way he could see to keep me close.~
== BSHART ~(*Scoffs*) Here I was just thinking you had some back bone. Talk about being naive... Of course noooo one would think it had anything to do with both your families being rich and this was a nice way to increase his own wealth and power.~
=
~No wonder that husband of yours was able to walk all over you. What did you do, lie down and let him use you as a doormat?  What were you thinking with wench, your brain or your...~
== BLEINA ~(*Interrupts angrily*) Now hold it right there! One minute you're clapping me on the back and congratulating me and the next you're belittling me for something I had no control over.~
=
~Yes, I chose badly but at least I had the guts to take a chance in the first place and now, thanks to my experience, I have the strength to avoid such mistakes again.~
=
~You... I look at you and I see a woman so scared of her own emotions that she deliberately derides all so that none will venture close.~
== BSHART ~(*Gruffly*) You do, do you? Then you need to get yourself some new glasses bard and quick! Those you wear sometimes are distorting your vision so badly, soon you'll not be able to recognise friend from foe.~
=
~Meanwhile, watch you don't stumble onto your own sword by mistake... unless of course I'm watching, I'd hate to miss it by having my back turned. I need a good laugh.~
EXIT

CHAIN IF ~Global("VP_SharTeel_Taffic","LOCALS",2)~ THEN BSHART taffic
	~So Taffic the gnome has graced us with his company yet again.~
DO ~SetGlobal("VP_SharTeel_Taffic","LOCALS",3)~
== BTAFFIC ~What do you mean by that remark? You expecting me to disappear or something?~
== BSHART ~No, I'm just getting tired of hearing about this big hero that never makes an appearance, all that shows up is a gutless gnome.~
=
~You know... one day the gnome goes to bed a gnome and the next, *poof*, wakes up a... well still a runty gnome it would seem today.~
== BTAFFIC ~*POOF*... *POOF*... What do you mean by *POOF*? Bah, you're as ignorant as the rest of this rag tag group and like them, you will eat your words when my day comes! *Poof* indeed!~
== BSHART ~*POOF*, yes you know like *poof*... you wave your hands, say a few words and instantly the enemy lies dead, fire erupts from your fingers or whatever, as I said *poof* the deed is done!~
=
~Not a very sporting way to kill a person! It's about as gutless as a backstabbing thief! Hell, where's the glory he's dead before he can acknowledge your superiority over him.~
=
~Still, it can be just as painful and as bloody a death as death by the blade.~
== BTAFFIC ~Why waste time and risk your neck dancing with your foe when you can get the drop on him with a quick spell I say!~
== BSHART ~It's quick I'll give you that, but half the fun is making him sweat, to look into his eyes, to see the fear in them when he realises he's out mastered and all he can hope for is a quick death.~
=
~(*Her eyes start to glaze over*) The smell of his fear, the stench of his sweat, to know that you hold his life in your hands, to know that one more thrust is all it needs to send him into oblivion.~
=
~The power that surges through your body at that point... it's intoxicating! I love bloodshed!~
== BTAFFIC ~(*Seeing the coldness in her eyes, he takes a step back*) You like your killing too much!~
=
~I don't mind killing those who need killing or those who get in my way but you... I reckon you'd kill your own mother and father just to see the colour of their blood!~
== BSHART ~(*Gruffly*) Hmm, maybe I would, maybe I have... does that scare you? (*A self satisfied sneer comes to her face when she sees the sweat break out on his brow.*)~
== BTAFFIC ~(*Taking another step back he laughs nervously*) Ha, it'll take more than a crazy girl and a big sword to scare Taffic the hero.~
=
~However it's time I was getting along, it's been nice talking to you and all that but there are lots more things need doing before I face my destiny. Be seeing you Shar-Teel.~
== BSHART ~(*Laughing as she watches him scurry away*) So much for Taffic the hero! I doubt either magic or destiny will help him. Once a gnome always a gnome! Males of all races really are pathetic!~
EXIT

CHAIN IF ~Global("VP_In_Halruaa_Talk","LOCALS",1)~ THEN BSHART halruaa
	~This tiptoeing around these mages is getting us nowhere! I say we grab one of them and get what we need straight from the horses mouth. Then we can get back to our own reality before we die of old age here!~
DO ~SetGlobal("VP_In_Halruaa_Talk","LOCALS",2)~
== BHROTH ~No one is going to die of old age. For one, Ulcaster doesn't have that long and for another, nor does what you call our reality.~
=
~In case you have not noticed, we are at a very serious disadvantage here, we are lacking both in numbers and in weaponry, or at least weapons we can wield safely.~
=
~Stealth is the only way if we plan to leave here as a group.~
== BSHART ~In case *YOU* haven't noticed, doing it your way hasn't turned up anything of significance. Time for a new plan as I...~
== BHROTH ~(*His voice becomes stern as he interrupts her*) No, Shar-Teel! We continue in the way I say. I am not about to risk discovery because you want to hasten things a little.~
=
~The blood you are so anxious to see could well be ours if we do as you suggest. Forget it!~
== BSHART ~(*Shrugging her shoulders*) So, one or two of you die. If this so important mission is so important, surely it's better to sacrifice the one, or maybe even two, to save the many?~
== BHROTH ~There will be no sacrificing of any, not whilst I draw breath, do you understand? The safety of...~
=
~(*He hesitates and surreptitiously glances your way and then he quickly averts his gaze from yours*) The safety of all in this group is as imperative to my mission as is the mission itself.~
=
~I can not, will not risk one single life through rash decisions. Though, nor will I hesitate to take to task any whom I believe to be jeopardising that safety, and I mean anyone!~
== BSHART ~(*Snarles*) Yea gods man, I was only planning on taking one insignificant mage, not all of them! Still, if you're all too cowardly, then you'd best get on skulking in the shadows like the mice you are!~
=
~(*Yea gods, to think I pledged my sword to such a cowardly bunch, it makes me want to throw up.*)~
== BHROTH ~Insignificant you say. Look around, how would you choose who is significant here?~
=
~A Tutor or Senior staff member would most certainly be missed, and as for a student, I doubt very much they have been told what is afoot here. So who is there left for you to grab as you put it?~
=
~No one, so you see, it's not a very good plan Shar-Teel, not if you want to remain in one piece. As you say, we will continue as silent as mice and be on our guard that no wizards familiars spy us out, especially if that familiar is a cat or an owl.~
EXIT

CHAIN IF ~Global("VP_STB_Dar","LOCALS",5)~ THEN BSHART darbantr
	~You there, Priest of Ilmater?~
DO ~SetGlobal("VP_STB_Dar","LOCALS",6)~
== BDAR ~If you are speaking to me, I have a name and it's not *you there*.~
== BSHART ~(*Scoffs*) A name, you mean they've given you a name? The ugly brute wishes to be called by his name? Well I can think of many to call you but I doubt you'd answer to them either.~
== BDAR ~I am ugly it's true but I am civilised and no brute so I consider myself worthy of a name. If you would afford me the courtesy of using it I will be pleased to speak with you. If not then I will continue to my bed.~
== BSHART ~Oh you will, will you! Ok, Dar is it? I have been watching you, well a girl has to be sure of who's protecting her back when she's in the fray, and you amuse me half-or... Dar.~
== BDAR ~Amuse you? There is nothing amusing about Dar, I can assure you. I am simply as you see.~
== BSHART ~From where I stand you're very amusing to watch as you try to integrate yourself into the group, your attempts to worm your way into their affections... what did you call it, gaining acceptance?~
=
~I have to say it really is painful to see. Pitiful but amusing.~
== BDAR ~Then you stand too far away Shar-Teel, for if you were to stand closer you would see that I have gained not only the respect of the members of this group, but also their acceptance and their friendship.~
=
~Because of who I am I know I will never gain yours, and to be honest, having watched you it's not something I need,or desire.~
=
~I admire you as a skilled warrior but there is evil in your heart, evil and wanton pride, two traits that are abhorrent to me.~
=
~I will fight beside you and I will tend your wounds but we will never be friends... comrades in arms, but never friends.~
== BSHART ~(*Angrily she spits out her next words*) Why you sanctimonious heap of green manure! I don't recall asking for your friendship nor would I accept it were it offered!~
=
~You and those who dared to rear the abomination that you are, should be eviscerated for their transgression against nature and their souls left to burn in the fires of the abyss for eternity!~
=
~For your insolence, be heedful that it is not me who sends you there!~
== BDAR ~I am always careful. I have spent most of life being careful and watching my back. You will not find me an easy target, for I now have reasons to live.~
=
~Before coming to your world I was ready to accept death with each day that dawned, but this world has shown me that I have as much right as you to live in it.~
=
~My life is in Ilmater's hands, not yours. Sleep well Shar-Teel.~
EXIT












          