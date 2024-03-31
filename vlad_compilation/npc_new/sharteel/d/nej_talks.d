//Dialogue - Pomab
CHAIN
IF WEIGHT #-3 ~Global("VP_SharT_VsPomab","LOCALS",1)~ THEN VPSHAJ vspomab1
~What do you mean by letting that pile of orc's dung speak to you like that? You should have let me slit the worm's throat the moment he opened his pompous mouth!~ [mute]
DO ~SetGlobal("VP_SharT_VsPomab","LOCALS",2)~
END
 ++ ~Shar-Teel please? He was pompous I agree but we don't want to alienate ourselves so soon after our arrival by killing, possibly, prominent citizen of this town.~ EXTERN VPSHAJ vspomab2
 ++ ~Let's just this once, find out where we are before we go about killing the locals.~ EXTERN VPSHAJ vspomab2
 ++ ~Mm... maybe I should have at that!~ EXTERN VPSHAJ vspomab3
 ++ ~If he crosses us, I promise you you'll get first bags on his head!~ EXTERN VPSHAJ vspomab3

CHAIN VPSHAJ vspomab2
~What's one less male? Besides, if all the males here are as arrogant as that one, we'd be doing this town a favour!~
EXIT

CHAIN VPSHAJ vspomab3
~(*Fingering the hilt of her sword*)... Just give me the word... you know how much I love bloodshed!~
EXIT

//Dialogue - Hrothgar
CHAIN
IF WEIGHT #-4 ~Global("VP_SharT_VsHroth","LOCALS",1)~ THEN VPSHAJ vshroth
~(*Sarcastically and to herself*) Yes sir, no sir... shove your axe where the sun doesn't shine for you sir! Yea gods why couldn't Bhaal have impregnated my mother? This one doesn't have the balls to be worthy of the name *Murder*!~ [mute]
DO ~SetGlobal("VP_SharT_VsHroth","LOCALS",2)~
EXIT

//Dialogue - Arundel
CHAIN
IF WEIGHT #-6 ~Global("VP_SharT_ArunDead","LOCALS",1)~ THEN VPSHAJ arundead1
~Why the mother... we've been duped good and proper!~ [mute]
DO ~SetGlobal("VP_SharT_ArunDead","LOCALS",2)~
= ~Can't say I'm surprised, wasn't I the one who said the old druid looked fit enough to take care of his own town? We should have left him to take his own demon out, but oh no, Mr. goody, bloody goody paladin here...~
== NJHROJ IF ~InParty("njhroth") InMyArea("njhroth") !StateCheck("njhroth",CD_STATE_NOTVALID)~ THEN ~(*Sternly*) Berating each other after the event is not going to change the situation! None here are blessed with foresight so we have to make the most of what is, not what could have been.~
== NJHROJ IF ~InParty("njhroth") InMyArea("njhroth") !StateCheck("njhroth",CD_STATE_NOTVALID)~ THEN ~Now, my concern is for Arundel, we may yet be in time to save him if we move quickly...~
EXIT

//NeJ 1 - Talk 1
CHAIN
IF WEIGHT #0 ~Global("VP_STB_itscoldhere","LOCALS",2)~ THEN BEGIN 0
~By the nine hells <CHARNAME>, it's cold enough here to freeze a brass monkey's...~
DO ~SetGlobal("VP_STB_itscoldhere","LOCALS",3)~
END
 ++ ~(*Interrupting her*) No need to elaborate Shar-Teel, I think we are all in agreement... it's cold here.~ EXTERN VPSHAJ 1
 ++ ~You said it girl... am I glad I'm not a brass monkey!~ EXTERN VPSHAJ 5
 ++ ~Mmm... I believe monkey parts are a delicacy in some parts of the world... any you find could be worth a coin or two. Keep your eyes open people for frozen off cuts of monkey.~ EXTERN VPSHAJ 8

CHAIN VPSHAJ 1
~(*Scoffs*) Oh... I am so sorry! My words not genteel enough for those delicate ears of yours?~
END
 ++ ~Your words are never genteel. Still, given who your father was, I guess it is only to be expected.~ EXTERN VPSHAJ 2
 ++ ~You know, for a woman, you have a very crude tongue!~ EXTERN VPSHAJ 3
 ++ ~Your prowess as a fighter more than makes up for your tongue. Your coarseness I can put up with Shar-Teel.~ EXTERN VPSHAJ 4

CHAIN VPSHAJ 2
~Yea well, he may not have been much of a father but he sure as hell passed some useful skills onto me! I suppose we should both be grateful to him for that.~
= ~Poor bastard... thought I wanted to be like him! Still, I have him to thank, if it wasn't for his... well... if it wasn't for him I'd not be the best damn fighter this side of Faerun.~
EXTERN VPSHAJ 10

CHAIN VPSHAJ 3
~Yea well, you don't get to be the best damn fighter this side of Faerun by mixing with the gentry!~
= ~If you want to be the best then you have to learn from the best. As for the language... that comes with the territory!~
EXTERN VPSHAJ 10

CHAIN VPSHAJ 4
~Glad to see that you appreciate me <CHARNAME>. (*She turns away and strides off haughtily.*)~
EXIT

CHAIN VPSHAJ 5
~Could be you had a narrow escape there. Imagine... how different things could have been if Bhaal had come upon a female brass monkey swinging through the trees. What with the way he was sowing his seed all over the land... sounds to me that as long as it moved and was female... *BANG*... in went the fertiliser!~
END
 ++ ~You know for a woman, you have a very crude tongue!~ EXTERN VPSHAJ 3
 ++ ~(*Looking a little bemused*) I must say, I've never heard it put quite that way before.~ EXTERN VPSHAJ 6
 ++ ~Fertiliser! You make it sound as though he were planting roses!~ EXTERN VPSHAJ 6
 ++ ~Ha, I like your kind of talk and your kind of fighting. You may not be as good as me but a girl after my own heart just the same!~ EXTERN VPSHAJ 7

CHAIN VPSHAJ 6
~(*Sneers*) True, there are more commonly used words I could have used but no matter how you dress it up, ol' Bhaal, in his haste to produce as many bastards as he could before time ran out for him, was a rampant beast!~
= ~He didn't give a damn about those females... they were but incubators for the eggs he fertilised!~
= ~If you want a more clinical description then you are speaking to the wrong girl.~
EXTERN VPSHAJ 10

CHAIN VPSHAJ 7
~(*Sneers*) I say what is on my mind... that's all. You may have bested once in battle but anytime you wanna try again I guarantee you'll ne'er have a tooth left in that fat mouth of yours.~
EXTERN VPSHAJ 10

CHAIN VPSHAJ 8
~(*Gruffly*) So, my words amuse you do they? Would you be just as amused to hear the price necromancers would be willing to pay for <PRO_RACE>'s body parts?~
= ~Mock me again and I'll not only be making myself some serious coin but also several of those unscrupulous creatures that I know very happy!~
EXIT

CHAIN VPSHAJ 10
~(*She turns away and strides off haughtily.*)~
EXIT

//NeJ 1 - Talk 2
CHAIN
IF WEIGHT #-1 ~Global("VP_STB_thishadbetter","LOCALS",2)~ THEN VPSHAJ 15
~This had better end our business with the old druid, I'm sick of being his gopher. Tell me again <CHARNAME>, why are we risking our necks to save a bunch of people who'll be dead as soon as we get out of this time warp?~
DO ~SetGlobal("VP_STB_thishadbetter","LOCALS",3)~
END
 ++ ~Because it's the right thing to do.~ EXTERN VPSHAJ 16
 ++ ~Because this could well be our future if we don't find a way out of here.~ EXTERN VPSHAJ 18
 ++ ~What's the matter Shar-Teel... aren't you enjoying the bloodshed?~ EXTERN VPSHAJ 24
 ++ ~Maybe, but we're richer than we've ever been and the coin plus everything else we have looted will be going back with us!~ EXTERN VPSHAJ 25

CHAIN VPSHAJ 16
~(*Gruffly*) Yea well, one of these times your self righteous "right thing" is going to leap out and stab you in the back.~
= ~Me... I've always considered it's better to do what's right to keep me breathing and to the abyss with the dying in fighting someone else's battle.~
EXIT

CHAIN VPSHAJ 18
~Live in this uncivilised back wood... you've got to be joking! I still ha... you'd better find a way to return us, I am not about to die before I've even been born. A wish, which I'm sure, is very close to your own heart!~
END
 ++ ~Please, finish what you were saying and tell us all what it is you still have waiting for you in our own time? What secret is our hot blooded warrior keeping from us... eh?~ EXTERN VPSHAJ 19
 ++ ~I wish I were. I have no idea where we go once we've delivered the gem to Arundel. I had hoped in our search for it, we'd have found some way of getting home.~ EXTERN VPSHAJ 21
 ++ ~You forget, I too have very good reason not to hang around here for too long but once we get this gem to Arundel, we'll just have to accept our lot and make the best of things until a way can be found.~ EXTERN VPSHAJ 21
 ++ ~The old druid knows more than he is telling. Well, we've done his bidding and now, one way or another, he will tell us what it is he's not saying.~ EXTERN VPSHAJ 23

CHAIN VPSHAJ 19
~(*Gruffly*) None of your damned business... that goes for all of you! I have a life I am anxious to continue so just you concentrate on finding us a way back to it... or you may find yourself dying that death before your birth and trust me, it won't be of old age!~
END
 ++ ~I don't take kindly to threats! I also have reasons to want out of here and if you want to be leaving with me, then I suggest you temper your manners a little... in fact, make that a lot!~ EXTERN VPSHAJ 20
 ++ ~Ha... is that a threat? If so then you should know I don't scare easily.~ EXTERN VPSHAJ 20
 ++ ~You dare to threaten me... a little guttersnipe like you dares to threaten the heir of a god? You must have a death wish or something girly!~ EXTERN VPSHAJ 20

CHAIN VPSHAJ 20
~Threaten... me threaten you? I never make threats <CHARNAME>... only promises, and those I always keep! (*Caressing her sword she turns away.*)~
EXIT

CHAIN VPSHAJ 21
~(*Caressing her sword*) Yea well, he's a sly one is that old druid. He's keeping something from us, I know he is. If this darned gem is as important as he says, I reckon I can make him tell us what ever it is in exchange for it... or not, depending how quickly he co-operates!~
= ~Yea, I'm certainly going to enjoy tortur... uh... getting it out of the son of a bitch!~
EXIT

CHAIN VPSHAJ 23
~(*Caressing her sword*) Yea well, he's a sly one is that old druid and I'm certainly going to enjoy tortur... uh... getting whatever it is out of the son of a bitch!~
EXIT

CHAIN VPSHAJ 24
~(*Looking at you coldly*) There's been enough blood spilt to turn all the seas of Faerun scarlet... but what's the use of it all when there's no one to remember who it was did the spilling?~
EXTERN VPSHAJ 25

CHAIN VPSHAJ 25
~What glory is there in victory here when the minute you return to your own time your name will be lost in the annals of history?~
= ~None, and if you don't want to be remembered as the *lost half god*, you'd do well to get us out of here before you die here in the past... along with your name.~
END
 ++ ~I don't take kindly to threats! I also have reasons to want out of here and if you want to be leaving with me, then I suggest you temper your manners a little... in fact, make that a lot!~ EXTERN VPSHAJ 20
 ++ ~Ha... is that a threat? If so then you should know I don't scare easily.~ EXTERN VPSHAJ 20
 ++ ~You dare to threaten me... a little guttersnipe like you dares to threaten the heir of a god? You must have a death wish or something girly!~ EXTERN VPSHAJ 20

CHAIN VPSHAJ 27
~(*Snarls*) You're not even sure yourself we'll be going back and riches or not, you've got to be joking if you think I'm going to live in this uncivilised back wood. No amount of coin will compensate for what I still ha... let's just say you'd better find a way to return us, as I am not about to die before I've even been born. A wish, which I'm sure, is very close to your own heart!~
EXIT

//NeJ 2 - Talk
CHAIN
IF WEIGHT #-1 ~Global("VP_In_Halruaa_Talk","LOCALS",4)~ THEN VPSHAJ halruaa1
~(*Loudly*) These wizards mouths are as tightly clamped as a bloody virgin's knees, how the hell are we suppose to find anything here?~
DO ~SetGlobal("VP_In_Halruaa_Talk","LOCALS",5)~
END
 ++ ~We keep our ears and our eyes open, that's how.~ EXTERN VPSHAJ halruaa2
 ++ ~By keeping our wits about us and by being prudent with what we say when talking with these mages.~ EXTERN VPSHAJ halruaa6
 ++ ~Not by advertising our presence that's for sure...keep your voice down please.~ EXTERN VPSHAJ halruaa7
 ++ ~We won't if you keep opening that big mouth of yours!~ EXTERN VPSHAJ halruaa7
 IF ~Gender(Player1,MALE)~ THEN REPLY ~The same way you get the virgin to relax those knees of hers. You first gain their trust and then you convince them what you say is truth.~ EXTERN VPSHAJ halruaa8
 IF ~Gender(Player1,FEMALE)~ THEN REPLY ~The same way men get the virgin to relax those knees of hers. They first gain their trust and then they convince them what they say is truth.~ EXTERN VPSHAJ halruaa9

CHAIN VPSHAJ halruaa2
~Everything here is so heavily steeped in magic whatever we're looking for could be right under our noses and we wouldn't see it no matter how wide we opened our eyes!~
= ~Time to stop being civilised and do things my way... I guarantee it'll get us home a bloody sight quicker than all this pussy-footing around!~
END
 ++ ~So, Miss-know-it-all, what do YOU suggest we do?~ EXTERN VPSHAJ halruaa3
 ++ ~I wouldn't mind slitting a few throats either Shar-Teel but it wouldn't do for them to find dead mages laying around. It's not like we can stack them in a corner somewhere. No, we'll just have to look harder. Sooner or later some one is sure to give something away.~ EXTERN VPSHAJ halruaa0
 ++ ~Patience Shar-Teel, patience and perseverance. We know more than we did when we first arrived and soon we will know it all.~ EXTERN VPSHAJ halruaa0
 ++ ~Patience Shar-Teel, patience and perseverance. Once we have learnt what it is we are here to learn, then you can do as you will with those we pass on our way out.~ EXTERN VPSHAJ halruaa0

CHAIN VPSHAJ halruaa3
~Simple <CHARNAME>, we have one of two choices. First, we confront the big boss mage and ask him what's going on. Of course, we may need to threaten him a little bit, but I can do that if you're too squeamish.~
= ~If he tells us then we can high tail it back to this Tilorn with our wondrous news, and if he doesn't... well, we couldn't leave him alive now could we?~
= ~(*Her eyes glaze over slightly, and take on a thousand mile stare, a slight smile of anticipation crosses her lips*) Come to think of it, we couldn't leave him alive if he did talk. Or...~
= ~Second, we stop trying to see past the magic and blow up the academy along with every last one of its bloody conspirators. Ulcaster is triumphant, Tilorn's happy and we get to go home. Now that idea I like!~
== NJMELJ IF ~InParty("Melora") !Dead("Melora")~ THEN ~(*Her little eyes light up*) Sounds good to me. The only good magic academy is a razed magic academy!~
== VPSHAJ IF ~InParty("Melora") !Dead("Melora")~ THEN ~So <CHARNAME>, sounds good?~
END
 ++ ~As appealing as it is, we'd have to take the academy in one fell swoop and we don't have enough fire power to do that. As for confronting a senior mage, he'd chew us up and spit us out in bubbles before we got near him. Bad ideas both of them.~ EXTERN VPSHAJ halruaa4
 ++ ~You really are insane girl! Take on a senior mage, raze the academy! Can't you feel the power pulsing through this place? it would become a hundred fold stronger should we raise arms against it! Bad plan Shar-Teel, very bad plan!~ EXTERN VPSHAJ halruaa4
 ++ ~Both are very bad ideas. I'll not risk the group's survival because you can not control your blood thirsty tendencies!~ EXTERN VPSHAJ halruaa4
 ++ ~You surprise me, I thought your first option would be the extent of your taste, one to one with the mage, just to see how much blood you can force out of him before he dies?~ EXTERN VPSHAJ halruaa5

CHAIN VPSHAJ halruaa4
~(*Shrugging her shoulders*) I take it that's a no <CHARNAME>! So, it's back to crawling and fumbling around in the dark.~
= ~Still, not having any backbone I suppose you're used to crawling, being the pathetic worm you are!~
EXIT

CHAIN VPSHAJ halruaa5
~Why be content with a trickle when you can have a river? So, which is to be <CHARNAME>, the mage or the whole nest of mages?~
DO
 ++ ~As appealing as it is, we'd have to take the academy in one fell swoop and we don't have enough fire power to do that. As for confronting a senior mage, he'd chew us up and spit us out in bubbles before we got near him. Bad ideas both of them.~ EXTERN VPSHAJ halruaa4
 ++ ~You really are insane girl! Take on a senior mage, raze the academy! Can't you feel the power pulsing through this place? It would become a hundred fold stronger should we raise arms against it! Bad plan Shar-Teel, very bad plan!~ EXTERN VPSHAJ halruaa4
 ++ ~Both are very bad ideas. I'll not risk the group's survival because you can not control your blood thirsty notions!~ EXTERN VPSHAJ halruaa4
 ++ ~Yea gods girl haven't you learned anything yet? Get your head back up where it belongs and think! I like to see blood flow as much as you and nothing would give me more pleasure than to prolong our sport but the odds are stacked against us here!~ EXTERN VPSHAJ halruaa4

CHAIN VPSHAJ halruaa6
~These wizards aren't going to tell us anything! Look at us, to them we appear as no more than idiot students. Time to stop being civilised and do things my way. I guarantee it'll get us home a bloody sight quicker than all this pussy footing around!~
END
 ++ ~So, Miss-know-it-all, what do YOU suggest we do?~ EXTERN VPSHAJ halruaa3
 ++ ~I wouldn't mind slitting a few throats either Shar-Teel but it wouldn't do for them to find dead mages laying around. It's not like we can stack them in a corner somewhere. No, we'll just have to look harder. Sooner or later some one is sure to give something away.~ EXTERN VPSHAJ halruaa0
 ++ ~Patience Shar-Teel, patience and perseverance. We know more than we did when we first arrived and soon we will know it all.~ EXTERN VPSHAJ halruaa0

CHAIN VPSHAJ halruaa7
~(*Gruffly*) At least I'm not scared to be heard! Not like you lot, creeping about, afraid your own shadows will give you away... And where's it getting us? No bloody where!~
= ~I say it's time to stop being civilised and do things my way. I guarantee it'll get us home a bloody sight quicker than all this pussy footing around!~
END
 ++ ~So, Miss-know-it-all, what do YOU suggest we do?~ EXTERN VPSHAJ halruaa3
 ++ ~I wouldn't mind slitting a few throats either Shar-Teel but it wouldn't do for them to find dead mages laying around. It's not like we can stack them in a corner somewhere. No, we'll just have to look harder. Sooner or later some one is sure to give something away.~ EXTERN VPSHAJ halruaa0
 ++ ~Patience Shar-Teel, patience and perseverance. We know more than we did when we first arrived and soon we will know it all.~ EXTERN VPSHAJ halruaa0

CHAIN VPSHAJ halruaa8
~(*Snarls*) Men... they never think with their brain! Always believing they're irresistible and that they can sweet talk any girl into their bed!~
= ~Those feeble, pathetic creatures who believe the untruths of men, they make me want to throw up! They are as spineless as the men they lie with and deserve no sympathy when left with the fruits of their folly!~
EXIT

CHAIN VPSHAJ halruaa9
~(*Snidely*) Sounds like you know what you're saying girl. Got sweet talked by a handsome face into relaxing your knees did you?~
= ~I loathe those feeble, pathetic creatures who believe the untruths of men, they make me want to throw up! They are as spineless as the men they lie with and deserve no sympathy when left with the fruits of their folly.~
= ~Still, you seem to have got lucky. I don't see you toting a man's bastard on your hip.~
EXIT

CHAIN VPSHAJ halruaa0
~(*Gruffly*) In the meantime we do what? Sit and knit hose for the poor? These wizards aren't going to give themselves away, at least, not before we have made ourselves enough hose to cover the feet of everyone this side of Faerun.~
= ~I say we grab one of those high and mighty wizards and make him talk, or we simply blow up the academy along with every last one of its bloody conspirators!~
= ~Ulcaster is triumphant, Tilorn's happy and we get to go home. Now that idea I like!~
== NJMELJ IF ~InParty("Melora") !Dead("Melora")~ THEN ~(*Her little eyes light up*) Sounds good to me. The only good magic academy is a razed magic academy!~
== VPSHAJ IF ~InParty("Melora") !Dead("Melora")~ THEN ~So <CHARNAME>, sounds good?~
END
 ++ ~As appealing as it is, we'd have to take the academy in one fell swoop and we don't have enough fire power to do that. As for confronting a senior mage, he'd chew us up and spit us out in bubbles before we got near him. Bad ideas both of them.~ EXTERN VPSHAJ halruaa4
 ++ ~You really are insane girl! Take on a senior mage, raze the academy! Can't you feel the power pulsing through this place? it would become a hundred fold stronger should we raise arms against it! Bad plan Shar-Teel, very bad plan!~ EXTERN VPSHAJ halruaa4
 ++ ~Both are very bad ideas. I'll not risk the group's survival because you can not control your blood thirsty tendencies!~ EXTERN VPSHAJ halruaa4
 ++ ~You surprise me, I thought your first option would be the extent of your taste, one to one with the mage, just to see how much blood you can force out of him before he dies?~ EXTERN VPSHAJ halruaa5