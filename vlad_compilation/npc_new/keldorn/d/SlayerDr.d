BEGIN SLAYERDR

CHAIN
IF WEIGHT #4 ~Global("Kr_Slayer_Talk","GLOBAL",0) Global("Kr_SlayerTalk_Fix","GLOBAL",1) Global("VP_Kr_PreWedding","GLOBAL",0)~ THEN SLAYERDR S0
~Yes, you are right, it's me. I sense you are afraid of me because of my appearance. After all, appearance means a lot to young girls does it not? Do you like me more now? I believe you do. Trust me because, you see, I know the souls of young maidens.~ [letgo]
= ~Do I frighten you? That is silly you can believe me when I say that I mean you no harm. You are not used to me yet, but I will come more often, and you'll get used to me.~
EXTERN KELDORNC K0

CHAIN SLAYERDR S1
~Listen to me! Your father scattered his divine seed all over Faerun, but only your mother could fully take his gift, she and the mother of Sarevok.~
= ~But he was a fool, that brother of yours, he should have listened to you! Together you would have been invincible, your powers would have magnified ten fold.~
= ~No, he disappointed me terribly surrounded himself with villains, put himself in the hands of wenches, and he lost everything!~
= ~Now you... mmm... you my delicious darling are a good girl, you've saved yourself.~
EXTERN KELDORNC K1

CHAIN SLAYERDR S2
~But now you also are about to spoil everything.~
= ~What do you need this old man for? He'll not be able to endure your gift, your blood will kill him in the end, and the sorcerer, Irenicus, he is a fool as well!~
= ~Mere mortals are not meant to possess the things that are given to Gods. You will kill him and I will help you. Just trust me, melt into me.~
EXTERN KELEMVOR K13

CHAIN SLAYERDR S3
~(Holding you tightly... you find yourself enthralled as you move to the dance.) Don't pay attention to them. They are simply jealous of you. They are afraid of you because you are destined to become the most powerful goddess. If you obey me and don't resist.~
= ~Look, look what happens to those who dare to resist. Imoen. The one that you found in Spellhold, she is not your childhood friend. You were deceived, what you rescued was naught but a copy.~
= ~You longed to save her so badly and perhaps your Imoen could have survived but Irenicus took what he wanted and killed her. So you are also guilty of her death. Yes, you are, as surely as if you had struck the fatal blow yourself.~
EXTERN TORM 2

CHAIN SLAYERDR S4
~What? You... you petty godling, you dare to threaten me with your puny toy sword? You think having killed Bane by a mere chance you can wrest down me?~
END
 ++ ~(Seeing that the God of Duty's sword does not harm the Slayer, you start forward in horror. As soon as your hands touch Torm his strength becomes ten fold and with one stroke his sword cuts the Slayer's paw.)~ EXTERN SLAYERDR S41

CHAIN SLAYERDR S41
~(Cursing you and Torm, the Slayer disappears, you turn joyfully towards Torm and wake up. Keldorn is holding you firmly in his embrace and you are suddenly amazed by the likeness between him and his God... something that until now had slipped your notice.)~
DO ~SetGlobal("Kr_SlayerTalk_Fix","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("MovieKr2")~
EXIT

CHAIN
IF WEIGHT #3 ~Global("Kr_Slayer_Talk","GLOBAL",0) Global("Kr_SlayerTalk_Fix2","GLOBAL",1) !Global("VP_Kr_PreWedding","GLOBAL",0)~ THEN SLAYERDR S5
~Stop, paladin, don't do this!~ [mortuary]
EXTERN KELDORJ LT36_st32

CHAIN SLAYERDR S6
~I do dare! You are stupid, paladin. It is I who preserves her connection with her soul. It is I, a demon, who supports her forces. If it were not for me she would be dead.~
= ~And if you take her virginity now she will lose that connection with me and die! And I will die with her, we are connected too closely.~
EXTERN KELDORJ LT36_st33

CHAIN SLAYERDR S7
~... will kill her! It must not take place, paladin, at least until she gets her soul back.~
= ~And remember! You do not have time. Tomorrow Irenicus will come into force and he himself will cut short the connection with Bhaal's daughter!~
EXTERN KELDORJ LT36_st34

CHAIN
IF WEIGHT #2 ~Global("Kr_Slayer_Talk","GLOBAL",2)~ THEN SLAYERDR S8
~So, are you happy now? Drive me away if you wish, go on drive me away. Without me you will only become weaker.~
= ~Listen to me. Remember the strength that helped you deal with the demons! Remember, "Life is strength", Irenicus knows the truth! Do you really want him to have everything?~
= ~Look. Your so called fiance is an old man, you gave him a drop of your blood and see how much stronger he has become! Are you jealous? I can't believe that you do not envy him... then again, maybe I do not understand anything.~
= ~Run. Run before it is too late. Tomorrow he will make you his wife and you will lose your power forever! He is sleeping, he can't hear you, go now... Go!~
= ~(You get up again and creep on tiptoe toward Keldorn. Run... run from the dearest man who is ready to do anything for you, run from his protection, from the quiet life that he can provide you with.)~
= ~(Bhaal's damned taint is hammering inside your head: "Power is why life is worth living. Take it, you deserve it, it's yours.")~
= ~(Unable to control yourself you carefully take Gorion's ring off Keldorn and approach the door but the ring starts glowing with a soft light and you hear a voice so familiar to you since your childhood.)~
DO ~SetGlobal("Kr_Slayer_Talk","GLOBAL",3)~
EXTERN KRRING R0

CHAIN SLAYERDR S9
~Damn you daughter of Bhaal, I do not want to die!~
= ~You still have a connection with your soul and that is why you still live but tomorrow... tomorrow Irenicus will come to power and he will sever this connection once and for all.~
= ~Then daughter of Bhaal... then you will die and I shall die with you!~
= ~You wish to take the old paladin with you?~
= ~All right, take him, I'll agree to anything but I beg you, go now for there is not a second to lose, go now and kill Irenicus!~
= ~Kill him now, otherwise tomorrow he will kill you!~
DO ~SetGlobal("VP_KrRomanceActive","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("KRCut27")~
JOURNAL ~What have I done to deserve this? When it looks as if everything is behind me and that in the morning I am to be married to Keldorn, I have to cast everything aside and rush after Irenicus. I believe the Slayer speaks the truth because I heard genuine fear in his voice. Keldorn understands and is supporting me. I have no idea how he explained the delay to lady Alia; I only hope he was able to find the right words... knowing Keldorn, I am sure he was truthful with her. Anyway, she blessed me as we departed and the sorrow and tears of my fiance's mother, my mother-in-law-to-be, were really sincere. I ask myself...Will I ever return here? Will I ever put on a wedding gown? Will I ever be happy? Who can answer these and the other one hundred and one questions coursing through my head?~
EXIT

CHAIN
IF WEIGHT #1 ~Global("VP_Slayer_Again","GLOBAL",2)~ THEN SLAYERDR S10
~I do not understand you, daughter of Bhaal. You can become a goddess, but instead you are still sticking to so-called "feelings". What will they possibly give to you?~
= ~Hordes of snotty children, constant fights with the servants, peasants ' all this you, mortals, are calling happiness? Your husband grows decrepit and needs constant care, his relatives, whom you should please.~
= ~You are a daughter of Bhaal! Are you worthy of such a fate? Was it necessary to be born as a daughter of a god only to become a simple mortal?~
= ~If so, why did you resist for so long? Why didn't you allow some mercenary to kill you? You have come so far, you have achieved so much! Now you are ready to give it all up for the sake of very doubtful hap-pi-ness?~
END
 ++ ~How dare you speak so, demon! What do you understand of a mortal's feelings? Nothing, nothing at all! Don't you ever dare to judge us! You could not possibly understand how love could make me refuse the divine throne. Leave me be, fiend.~ EXTERN SLAYERDR S11
 ++ ~Why are you trying to bring back all my doubts, demon? I have just persuaded myself to give up the throne. I love Keldorn, why can't you understand this! However, on the other hand, I must sit on my father's throne; nobody except me can do this.~ EXTERN SLAYERDR S12
 ++ ~Be gone, demon! You will not deceive me with your words about power. I've heard enough of them. I do not want it ' you hear me? ' I have no interest in my father's throne! I dream about the day, when I will finally be free from you, your treacherous manipulations and this curse.~ EXTERN SLAYERDR S13

CHAIN SLAYERDR S11
~I sense doubt in your voice. Think twice before you banish me! I can help you win the throne, I could help you after that. We would defeat your enemy, Cyric! We would have him groveling at your feet.~
= ~How can you be indifferent to all this? How can simple care for a half-ruined castle and its lord be more important to you? Think well, oh daughter of Bhaal.~
DO ~SetGlobal("VP_Slayer_Again","GLOBAL",3) SetGlobal("VP_Kr_NextTalk","GLOBAL",5) RealSetGlobalTimer("VP_ToB_Kr_RTimer","GLOBAL",1800) ClearAllActions() StartCutSceneMode() StartCutScene("KRCut29")~
EXIT

CHAIN SLAYERDR S12
~Your words ring true, child of a god! It is your duty to take the place of your father. And duty must prevail!~
DO ~SetGlobal("VP_Slayer_Again","GLOBAL",3) SetGlobal("VP_Kr_NextTalk","GLOBAL",5) RealSetGlobalTimer("VP_ToB_Kr_RTimer","GLOBAL",1800) ClearAllActions() StartCutSceneMode() StartCutScene("KRCut29")~
EXIT

CHAIN SLAYERDR S13
~How can you be so stupid! Well, I will let your brothers and sisters demonstrate their true power. And, in the end, you will destroy them all like a pack of goblins. Then you will recall my words, daughter of Bhaal.~
DO ~SetGlobal("VP_Slayer_Again","GLOBAL",3) SetGlobal("VP_Kr_NextTalk","GLOBAL",5) RealSetGlobalTimer("VP_ToB_Kr_RTimer","GLOBAL",1800) ClearAllActions() StartCutSceneMode() StartCutScene("KRCut29")~
EXIT

CHAIN
IF WEIGHT #0 ~Global("VP_Slayer_Farewell","GLOBAL",2)~ THEN SLAYERDR S14
~(Hysterically) So you have not sustained, you surrendered. Have you thought about me? I saved your life and this is how you show me your gratitude? Do you remember, what I said? Do you?!~
= ~Now all is lost, all in vain, and for what? Because of some doubtful pleasure! Where is the guarantee that he is not lying to you? Where is the guarantee that he won't repent? Oh, so it was Torm, who blessed you... And why would Torm know anything about it, have you ever thought?~
= ~It is your paladin, who ran to his God begging for mercy, because he could not resist the daughter of Bhaal's charm. He thought he could make me weaker. ME!! What a fool! He made you weaker, not me.~
END
 ++ ~What? How dare you? You, demon! You have no power over me.~ EXTERN SLAYERDR S15
 ++ ~(Turning pale) What... what are you talking about? He repents? No, it can not be so... (tears are starting to fall quickly across your face) He couldn't do that, he loves me!~ EXTERN SLAYERDR S16
 ++ ~(Coldly) Leave your pathetic attempts. I do not believe you. You were trying to save yourself, not me, and don't you dare to demand any gratitude now~ EXTERN SLAYERDR S17

CHAIN SLAYERDR S15
~Oh, I dare! And I will dare more. We are not done, child of Bhaal. You are still not feeling the true power of darkness.~
DO ~SetGlobal("VP_Slayer_Farewell","GLOBAL",3) ClearAllActions() StartCutSceneMode() StartCutScene("KRCut29")~
EXIT

CHAIN SLAYERDR S16
~Loves?! You?! The demon spawn?! Are you out of your mind?! You think a paladin of Torm could seriously fall in love with some daughter of Bhaal? He's watching you, he has a task ' bring you to the li-i-ght. Pff!~
END
 ++ ~(In tears) No, this is not happening. But... you're right, maybe. Oh, Kelemvor, what should I do now?!~ EXTERN SLAYERDR S18
 ++ ~(Covering your ears with your hands) No-no-no! I do not want to hear that! Be silent!~ EXTERN SLAYERDR S19

CHAIN SLAYERDR S17
~Oh, look how she sings now... We will see about that!~
DO ~SetGlobal("VP_Slayer_Farewell","GLOBAL",3) ClearAllActions() StartCutSceneMode() StartCutScene("KRCut29")~
EXIT

CHAIN SLAYERDR S18
~What should you do? You should take the throne of your father, that's what!~
DO ~SetGlobal("VP_Slayer_Farewell","GLOBAL",3) ClearAllActions() StartCutSceneMode() StartCutScene("KRCut29")~
EXIT

CHAIN SLAYERDR S19
~Will my silence change anything? It is not me, a demon, who's trying to persuade you, but yourself, your second entity.~
DO ~SetGlobal("VP_Slayer_Farewell","GLOBAL",3) ClearAllActions() StartCutSceneMode() StartCutScene("KRCut29")~
EXIT