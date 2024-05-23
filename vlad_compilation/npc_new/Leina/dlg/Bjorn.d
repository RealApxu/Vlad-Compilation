BEGIN BJORN

CHAIN
IF ~NumTimesTalkedTo(0)~ THEN BJORN 0
~Leina... thank the gods I have found you! I've spent an eternity searching for you... or so it feels to me.~
DO ~SetGlobal("VP_Errant_Husband","GLOBAL",2)~
== VPLEIJ ~B... Bjorn?~
== BJORN ~(*Holding his arms out to the bard*)... Yes my sweet... come, let me embrace that I which I thought never to hold close to my heart again...~
== VPLEIJ ~(*Taking a step back*)... What do you want Bjorn, and please, you have no need to come any closer... I can hear you just fine from where you stand?~
== BJORN ~(*Taking a step forward still holding his arms open*)... Leina my...~
== VPLEIJ ~I said... *from where you stand*, and so's you know where I stand... I am not your Leina, nor do I any longer consider myself your wife!~
END
 ++ ~You need a hand here Leina?~ EXTERN BJORN 3
 ++ ~Leina?~ EXTERN BJORN 3
 ++ ~You heard the lady!~ EXTERN BJORN 3
 ++ ~The errant husband... I wondered when you'd show up. Give me one good reason why I shouldn't run you through for the misery you brought to Leina?~ EXTERN BJORN 3
 ++ ~The errant husband, I hope this isn't going to degenerate into a domestic... Leina?~ EXTERN VPLEIJ 109

CHAIN VPLEIJ 109
~No domestic <CHARNAME>. A domestic implies that there is a relationship of sorts, Bjorn and I no longer have a relationship... of any *sort*.~
END
 ++ ~Sort it quickly then... we've had enough delays for one day.~ EXTERN VPLEIJ 110
 ++ ~If you're sure, but we are staying right here... just in case.~ EXTERN VPLEIJ 110
 ++ ~Just say the word Leina and we will sort this philanderer out for you.~ EXTERN VPLEIJ 110

CHAIN BJORN 3
~Well, what have we here... not exactly the company I expected to see a renown bard such as yourself travelling with Leina? Still, the old barkeep did say you'd left with a group of misfits, seems I happened along just in time to rescue you from this unsavoury bunch.~
== VPLEIJ ~It's ok <CHARNAME>, Bjorn is one of those ghosts a person has to lay to rest at sometime. This won't take long.~
END
 ++ ~Sort it quickly then... we've had enough delays for one day.~ EXTERN VPLEIJ 110
 ++ ~If you're sure, but we are staying right here... just in case.~ EXTERN VPLEIJ 110
 ++ ~Just say the word Leina and we will sort this philanderer out for you.~ EXTERN VPLEIJ 110

CHAIN VPLEIJ 110
~(*She smiles mockingly*)... If Bjorn has indeed spent so much time searching for me, the least I can do is to spare a little time and hear the story he has painstakingly put together.~
END
 IF ~True()~ THEN EXTERN BJORN 4
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN MINSCJ NEJ340
 IF ~InParty("njmelora") !Dead("njmelora")~ THEN EXTERN NJMELJ 32

CHAIN BJORN 4
~Leina, please my love... hear me out before you judge the actions of a weak man who failed as a husband to provide for his lady and then, who through shame, did the only thing he could... he left her, knowing she would have a better life without him.~
== VPLEIJ ~Bah! You ran because with my dowry spent, your saw the end of your comfortable life... it had nothing to do with shame, more your need to find another to support the easy life that you had become accustomed to.~
== VPLEIJ ~You never loved me Bjorn, it was not the light of desire nor love for me that I saw in your eyes when you looked at me... it was naught but the reflection of a man's love for the life that gold would afford him.~
== BJORN ~That's not true... why are you being so cruel? I loved you... still love you more than life itself. Your potential to become a great bard was obvious to me from first we met, but I knew you would never take your music seriously... not whilst I was a distraction in your life.~
== BJORN ~I also knew, that if I loved you I had to let you go, let you find yourself and you have. Leina, without me you have become all that you were meant to be... my sacrifice, my own pain has not been for nothing. I listen with pride when I hear your name spoken and I think, that is my wife, my Leina.~
== VPLEIJ ~Rats! Yes I have made a place for myself and yes it is probably thanks to you... but not the way you would have me believe!~
== VPLEIJ ~I spent many a dark day, and not to mention a dark night, deep in the pit of despair when you ran out on me... a necessary action of yours in order for me to *find myself* you say!~
== VPLEIJ ~I was alone in my misery, until one morning, I saw a glimpse of the sun as it rose above that dark place I had made my own...~
== VPLEIJ ~I took what little you had left of my heart, crawled my way up towards it's warmth and started to make my way in the world the only way I knew, through the joy of music and song.~
== VPLEIJ ~It was then I knew, that as long as music filled my heart, there would never be room in it for a man's touch... nor will it ever again suffer the pain that often accompanies that touch.~
== BJORN ~(*He drops to his knees*) I... I didn't know, I swear to you Leina. I thought you would find your way back to your family, that you would see how much better your life was before I came into it. That is why, when I realised what I had lost, that I couldn't live another day without you, I looked for you in Athkatla my love... I was sure I would find you at your father's house.~
== BJORN ~Please Leina... don't look at me so... your eyes... I can not bear to see disdain where once love shone forth. Leina, my love, I come to you on my knees, please forgive...~
== VPLEIJ ~Get up Bjorn... you look ridiculous down there grovelling in the mud! (*She smiles for a second, a fleeting gesture of amusement*)... I am sure the lady who bought those fine silken breeches for you will not be too pleased to see how roughly you treat her gifts...~
== VPLEIJ ~(*Her face becomes defiant again*)... please, just go away, whatever I felt for you died in that dark place you abandoned me to!~
== BJORN ~(*Getting to his feet*)... Surely you haven't forgotten so quickly how it was between us?~
== BJORN ~How we played and sang the days away... how, when the night came we would make love, holding on to each other... not wanting the night to end, but eventually sleep would claim us and we'd lie bathed in the warmth of love's after glow, waiting for the sun to rise... to waken us to another glorious day for us to share. Surely your heart...~
== VPLEIJ ~My heart... what do you know of my heart? You who so cruelly wrenched it from my breast and took it with you, along with my dreams, my hopes!~
== VPLEIJ ~The small piece that you left me with no longer has room for you. It knows that the joy which fills it now will never hurt it in the way that you did. Just go away and leave me be! (*She turns away*)...~
== BJORN ~Damn you Leina! I haven't trekked all this way only to leave without you. (*He takes a step towards her*)...~
== VPLEIJ ~You should think twice before you make any hasty moves...~
END
 ++ ~That's exactly what you are going to do! You heard the lady... go back to whatever rock you crawled out from under and leave the lady be!~ EXTERN BJORN 12
 ++ ~I've met the likes of you before bard... your pretty face and pretty words don't wash with me. So I suggest you take that glib tongue of yours far from my sight before I separate it from that pretty face that you value so highly.~ EXTERN BJORN 14
 ++ ~I think the lady made her wishes quite clear... now scram scumbag or as the lady says, you'll be seeing just how personally I take threats made to any member of my group!~ EXTERN BJORN 14
 ++ ~You have some nerve bard, to show up here after all that you put Leina through. She knows you for what you are now, so I suggest you leave whilst you still have some pride left.~ EXTERN BJORN 12
 ++ ~Normally I wouldn't interfere between husband and wife, but as Leina no longer considers herself your wife, then I have no qualms about stepping in on her behalf so, kindly respect the lady's wishes and... get lost!~ EXTERN BJORN 12
 ++ ~As a member of my group Leina, you have my backing... this time, but I swear, this is the last time I take on your quarrels, any more interruptions and you are on your own. Now do you want me to rid you of this vermin once and for all?~ EXTERN BJORN 14

CHAIN BJORN 12
~Don't worry, I'm on my way. I've seen all I need to see here... for all her fame, Leina doesn't seem to be raking in the coin. I guess the stories have exaggerated how good she really is, as stories do.~
== BJORN ~This has been a waste of my time, the only thing in my lady's pockets is the dust of the road... what comfort does that offer a body on a cold night? I bid you farewell Leina, know that I'll be thinking of you when I'm... and then again... maybe I won't. (*He turns and walks away*)...~
EXTERN VPLEIJ 123

CHAIN BJORN 14
~I've no quarrel with you, or your little group. From what I am seeing, the stories of the lady's fame have been grossly exaggerated. It's obvious she hasn't the coin that I was lead to believe she had made for herself... my life is clearly worth more than she.~
== BJORN ~Still, if she persists on her present road, in the company of this rag-a-tag band of misfits, all she can expect to fill her pockets with is dust... what comfort does that offer a body on a cold night?~
== BJORN ~I bid you farewell Leina, know that I'll be thinking of you when I'm... and then again... maybe I won't. (*He turns and walks away*)...~
EXTERN VPLEIJ 123

CHAIN VPLEIJ 123
~(*She sighs*)... Closure at last... facing Bjorn has closed the door forever to that part of my life and his ghost no longer has any hold, nor any part of me. I feel complete for the first time in many a day and it feels good... life is good.~
END
 IF ~Gender(Player1,MALE)~ THEN EXTERN VPLEIJ 124
 IF ~Gender(Player1,FEMALE)~ THEN DO ~ActionOverride("Bjorn",EscapeArea())~ EXIT

CHAIN VPLEIJ 124
~Come <CHARNAME>, I am eager to continue this intriguing quest of yours. (*She looks at you, and as you look into her eyes you wonder... can this new light that you now see in them be... hope?*)~
DO ~ActionOverride("Bjorn",EscapeArea())~
EXIT