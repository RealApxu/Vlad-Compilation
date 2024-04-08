CHAIN
IF ~Global("VP_STB_Jaheira","LOCALS",2)~ THEN BSHART STB_Jaheira
~J-J-Jaheira  m-m-my dear...~
DO ~SetGlobal("VP_STB_Jaheira","LOCALS",3)~
== BJAHEIR ~You heartless harpy! I've no time for your flippancy, get away from me!~
== BSHART ~B-b-but you d-d-don't know what I-I-I'm going to say...~
== BJAHEIR ~Nor do I wish to either! To the abyss with you!~
= ~Damn and blast <CHARNAME>, why ever did <PRO_HESHE> let that heinous hellcat into this group! I warned that she would be trouble, her and that blood thirsty mind of hers.~
== BSHART ~Go to hell yourself Druid! I pledged my sword to <CHARNAME>'s cause <PRO_HESHE> bested me fair and square. So here I am and either you accept it or... or... go make a nest in that tree of Kuldahar's and become one with your beloved nature.~
= ~Tell you what half-elf, if we find that man of yours we'll get Irenicus to open a portal and we'll send the bumbling twerp through to you... how's that sound?~
== BJAHEIR ~You'll not be rid of me that easy. I also gave my oath to aid and protect <CHARNAME>, so thanks all the same but I feel I'll be reunited with Khalid soon enough.~
== BSHART ~(*Scoffs*) You think so? You must have heard the torture Irenicus put <CHARNAME> through. I know I did, I thought the roof was going to cave in with all the ruckus <PRO_HESHE> was making.~
= ~May be you heard the imbecile ranger say what happened to the witch Dynaheir... do you really think that wimp of a husband of yours fared any better?~
== BJAHEIR ~If Khalid was dead I would know it... I would! There is a bond that comes when two have been paired for as long as Khalid and I have, a bond that you couldn't possibly begin to understand. Maybe if you stopped deriding men and opened your heart a little you'd understand how it is with male and female... how one is made to compliment the other.~
== BSHART ~Male compliment female, yea gods what rainbow did you slide down druid!?~
= ~Everyone knows the female is by far the stronger sex. It's just a case of getting the males to admit it but of course, their egos are far too big for that. Ask yourself, if it were left to men to birth the babies, how soon before  all life became extinct?~
== BJAHEIR ~This is becoming tiresome Shar-Teel. I can only think something must have gone dreadfully awry in your past to turn such a pretty girl into such a harridan... perhaps I should pity you instead of berating you?~
== BSHART ~(*Sneers*) You know nothing about me! If any one is worthy of pity half elf it's you! I've watched you and it's obvious that your lack of prowess as a fighter is why you compensate with a few paltry spells to back you up. Must say it suits you, half elf... half fighter...~
= ~Keep your pity druid, take it, along with your imbecile husband to the abyss with you. (*She strides away*)~
EXIT

CHAIN
IF ~Global("VP_STB_Accalia","LOCALS",2)~ THEN BSHART STB_Accalia
~A question Accalia... what in the nine hells makes a woman of obvious intelligence become servile to a god? A goddess I could just about understand, what with her probably being more powerful and all that, but a god... sheesh there's nothing more pathetic than to see a woman on her knees to a male, even if that male is a god!~
DO ~SetGlobal("VP_STB_Accalia","LOCALS",3)~
== BACCALI ~It is a calling Shar-Teel, not just something a person wakes up one day and decides to do. It is an honour to be called by one's god or goddess to do their will.~
== BSHART ~Yea right, this male materialises out of thin air and says he's your god. Then, with a click of his fingers you fall at his feet ready to do anything he asks! Could just as easily been a demon you know, devious blighters are demons, always looking to make fools of us mortals. That is, those without the sense to see through them.~
== BACCALI ~That's where faith comes into it, but to be honest with you Shar-Teel, because of your prideful attitude I doubt I could explain it in such a way you'd accept. This conversation is a waste of both our time. (*She turns away*)...~
== BSHART ~Hey we aren't done yet! What's wrong with a little friendly banter between girls... surely if it's as strong as you make out, your faith can withstand a little inquiry?~
== BACCALI ~My faith in Tempus is unshakable, it's your inability to make an unbiased judgement when the subject under discussion involves a male... be he a god or mortal. Tell me Shar-Teel, if I were the chosen of a goddess, would we be having this conversation?~
== BSHART ~Chosen, is that how you see yourself? More like enslaved. You said yourself that you would prefer to be on the battlefield than serving in the temple and yet, where did we find you... in the temple serving under and answerable to yet another male!~
= ~You believe you are strong, but in reality it's men who pull your strings... you are just another weak woman, priestess of Tempus and you're right, this conversation has been a waste of time.~
EXIT

CHAIN
IF ~Global("VP_In_Halruaa_Talk","LOCALS",1)~ THEN BSHART halruaa
~This tiptoeing around these mages is getting us nowhere! I say we grab one of them and get what we need straight from the horses mouth. Then we can get back to our own reality before we die of old age here!~
DO ~SetGlobal("VP_In_Halruaa_Talk","LOCALS",2)~
== BHROTH ~No one is going to die of old age. For one, Ulcaster doesn't have that long and for another, nor does what you call our reality.~
= ~In case you have not noticed, we are at a very serious disadvantage here, we are lacking both in numbers and in weaponry, or at least weapons we can wield safely.~
= ~Stealth is the only way if we plan to leave here as a group.~
== BSHART ~In case *YOU* haven't noticed, doing it your way hasn't turned up anything of significance. Time for a new plan as I...~
== BHROTH ~(*His voice becomes stern as he interrupts her*) No, Shar-Teel! We continue in the way I say. I am not about to risk discovery because you want to hasten things a little.~
= ~The blood you are so anxious to see could well be ours if we do as you suggest. Forget it!~
== BSHART ~(*Shrugging her shoulders*) So, one or two of you die. If this so important mission is so important, surely it's better to sacrifice the one, or maybe even two, to save the many?~
== BHROTH ~There will be no sacrificing of any, not whilst I draw breath, do you understand? The safety of...~
= ~(*He hesitates and surreptitiously glances your way and then he quickly averts his gaze from yours*) The safety of all in this group is as imperative to my mission as is the mission itself.~
= ~I can not, will not risk one single life through rash decisions. Though, nor will I hesitate to take to task any whom I believe to be jeopardising that safety, and I mean anyone!~
== BSHART ~(*Snarles*) Yea gods man, I was only planning on taking one insignificant mage, not all of them! Still, if you're all too cowardly, then you'd best get on skulking in the shadows like the mice you are!~
= ~(*Yea gods, to think I pledged my sword to such a cowardly bunch, it makes me want to throw up.*)~
== BHROTH ~Insignificant you say. Look around, how would you choose who is significant here?~
= ~A Tutor or Senior staff member would most certainly be missed, and as for a student, I doubt very much they have been told what is afoot here. So who is there left for you to grab as you put it?~
= ~No one, so you see, it's not a very good plan Shar-Teel, not if you want to remain in one piece. As you say, we will continue as silent as mice and be on our guard that no wizards familiars spy us out, especially if that familiar is a cat or an owl.~
EXIT