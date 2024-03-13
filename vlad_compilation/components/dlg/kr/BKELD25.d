ADD_STATE_TRIGGER BKELDO25 26 ~Global("VP_ToB_KrBanters","GLOBAL",0)~
ADD_STATE_TRIGGER BKELDO25 37 ~Global("VP_ToB_KrBanters","GLOBAL",0)~

APPEND ~BKELDO25~

//LT8-TOB
IF WEIGHT #-3 ~Global("VP_Kr_GorionWard","GLOBAL",2)~ THEN BEGIN LT8_st0
  SAY ~(Speaks to himself) Leona was right, I have killed her. Her and Vesper. I cannot build my happiness on their grief... the Gods have punished me. I should not have been tempted by my weaknesses!~
  = ~I am a paladin, I should have persevered... I should have stayed home! Stayed home... (his voice falling down to a whisper) and never see her face again, never hear her voice, smell her sweet aroma, and only ask Torm to send me into battle, where I might find a quick death.~
  IF ~~ THEN REPLY ~(take his face in your hands): Do not torment yourself so... Nothing would have changed, my love. You would not have remained at home, and the murderer's knife would have found Leona and Vesper all the same. Alas, you can't run from your destiny.~ GOTO LT8_st1
  IF ~~ THEN REPLY ~But this is not your children, Keldorn! These are just ghosts, like Gorion! Or should I cry now too? Or do you think that I do not feel guilty about my stepfather's death? He threw me into the bushes like a doll and he took the entire blow himself! And I could've helped him.~ GOTO LT8_st2
  IF ~~ THEN REPLY ~Yes. So be it. But, can you honestly admit, Keldorn: you wouldn't have remained at home, you would've ran away in the next two or three days! Am I not right?~ GOTO LT8_st3
END

IF ~~ THEN BEGIN LT8_st1
  SAY ~Destiny? Am I not fighting with destiny, with this curse of Alaundo everyday, always trying to drag you away from the throne of Bhaal? Or is this all pointless? Why are we even here, then, <CHARNAME>?~
  IF ~~ THEN REPLY ~(Grin) Yes, you are right. We are fighting destiny. But your daughters have nothing to do with it, Keldorn. They... forgive me, but they are merely random victims!~ GOTO LT8_st4
  IF ~~ THEN REPLY ~Why do you see Alaundo's prophecy as a curse?~ GOTO LT8_st5
  IF ~~ THEN REPLY ~Have you ever asked yourself this question: do I want to fight my father's legacy?~ GOTO LT8_st6
END

IF ~~ THEN BEGIN LT8_st2
  SAY ~(Gloomy) If Gorion had not done this Sarevok would have killed you.~
  IF ~~ THEN REPLY ~(Emotionally) Death would have been much better then such a life as this! I am so tired of being afraid, tired of fighting.~ GOTO LT8_st7
  IF ~~ THEN REPLY ~(Perplexed) Maybe you are right. Forgive me for upsetting you so. (Hugs him).~ GOTO LT8_st8
  IF ~~ THEN REPLY ~I am not sure. I killed him after all, as you can see... And he begged me for a piece of my soul.~ GOTO LT8_st9
END

IF ~~ THEN BEGIN LT8_st3
  SAY ~(Grins sadly) Haven't I said the same, haven't I? It was far beyond my power to leave you, <CHARNAME>.~
  IF ~~ THEN REPLY ~(Hug him) Keldorn...~ GOTO LT8_st8
  IF ~~ THEN REPLY ~I... I dreamed of hearing that, you know?~ GOTO LT8_st10
  IF ~~ THEN REPLY ~And I could not leave without you. I do not even know, what I would do, if you did not come with me.~ GOTO LT8_st11
END

IF ~~ THEN BEGIN LT8_st4
  SAY ~(Sadly) Yes, I know. They were random victims. I understand that nobody can find the murderers and nobody ever will. They saw the empty house and made their attack. Maybe the thought that the children might be in the house didn't even cross their minds.~
  = ~(He hugs you and hides his face on your shoulder) I know, dear, and it is not any easier for me.~
  IF ~~ THEN DO ~SetGlobal("VP_Kr_GorionWard","GLOBAL",3) SetGlobal("VP_Kr_NextTalk","GLOBAL",6) RealSetGlobalTimer("VP_ToB_Kr_RTimer","GLOBAL",1800)~ EXIT
END

IF ~~ THEN BEGIN LT8_st5
  SAY ~Why haven't I seen anybody, who would have been happy to have this "gift"?~
  IF ~~ THEN DO ~SetGlobal("VP_Kr_GorionWard","GLOBAL",3) SetGlobal("VP_Kr_NextTalk","GLOBAL",6) RealSetGlobalTimer("VP_ToB_Kr_RTimer","GLOBAL",1800)~ EXIT
END

IF ~~ THEN BEGIN LT8_st6
  SAY ~(Turning pale) You want to take your place on your father's throne! Oh no, <CHARNAME>, please!~
  IF ~~ THEN DO ~SetGlobal("VP_Kr_GorionWard","GLOBAL",3) SetGlobal("VP_Kr_NextTalk","GLOBAL",6) RealSetGlobalTimer("VP_ToB_Kr_RTimer","GLOBAL",1800)~ EXIT
END

IF ~~ THEN BEGIN LT8_st7
  SAY ~(Hugs you) I know, my dear, I know. Forgive me for upsetting you with my problems; you have many of your own.~
  IF ~~ THEN DO ~SetGlobal("VP_Kr_GorionWard","GLOBAL",3) SetGlobal("VP_Kr_NextTalk","GLOBAL",6) RealSetGlobalTimer("VP_ToB_Kr_RTimer","GLOBAL",1800)~ EXIT
END

IF ~~ THEN BEGIN LT8_st8
  SAY ~(Hugs you silently in answer).~
  IF ~~ THEN DO ~SetGlobal("VP_Kr_GorionWard","GLOBAL",3) SetGlobal("VP_Kr_NextTalk","GLOBAL",6) RealSetGlobalTimer("VP_ToB_Kr_RTimer","GLOBAL",1800)~ EXIT
END

IF ~~ THEN BEGIN LT8_st9
  SAY ~(Raises an eyebrow) You have grown more powerful. You are a leader, you draw people to your cause, and they go to their deaths happily for your cause. Even Sarevok, as you can see, could not withstand your charm.~
  IF ~~ THEN DO ~SetGlobal("VP_Kr_GorionWard","GLOBAL",3) SetGlobal("VP_Kr_NextTalk","GLOBAL",6) RealSetGlobalTimer("VP_ToB_Kr_RTimer","GLOBAL",1800)~ EXIT
END

IF ~~ THEN BEGIN LT8_st10
  SAY ~I love you.~
  IF ~~ THEN DO ~SetGlobal("VP_Kr_GorionWard","GLOBAL",3) SetGlobal("VP_Kr_NextTalk","GLOBAL",6) RealSetGlobalTimer("VP_ToB_Kr_RTimer","GLOBAL",1800)~ EXIT
END

IF ~~ THEN BEGIN LT8_st11
  SAY ~(He becomes hoarse suddenly) I... I don't know, what to say, my love... I... No woman has ever told me these words.~
  IF ~~ THEN DO ~SetGlobal("VP_Kr_GorionWard","GLOBAL",3) SetGlobal("VP_Kr_NextTalk","GLOBAL",6) RealSetGlobalTimer("VP_ToB_Kr_RTimer","GLOBAL",1800)~ EXIT
END

//LT10-TOB
IF WEIGHT #-4 ~Global("VP_Kr_YagaSh_Dead","LOCALS",2)~ THEN BEGIN LT10_st0
  SAY ~I know, what you are feeling right now, <CHARNAME>. I still can hear the roar of falling walls and the screams of the people being crushed under the debris.~
  = ~Lazarus the mage, sister Farielle from the temple of Waukeen, the boy whose father you raised from the dead, poor young bardess, who sang so beautifully, countess Santele and her child Ardic, his friend Mateo and even Volo... they are all dead. We couldn't save them, though we have killed Yaga-Shura.~
  IF ~~ THEN REPLY ~Keldorn! Please, don't... don't.~ GOTO LT10_st1
  IF ~~ THEN REPLY ~Volo? No, he managed to save himself, I hope.~ GOTO LT10_st2
  IF ~~ THEN REPLY ~(Sadly) Another corpses in my wake. God of Murder's daughter! Oh, Keldorn, why is this happening to me, why?!~ GOTO LT10_st3
END

IF ~~ THEN BEGIN LT10_st1
  SAY ~Forgive me, I shouldn't say that. You are sad enough. I must support you, not expostulate you. You did everything you could! Somebody must have been rescued, we saw town's folk, remember? They were running towards us.~
  IF ~~ THEN REPLY ~(With hope) Yes, you are right, my friend! We can only hope that they managed to rescue themselves.~ GOTO LT10_st4
  IF ~~ THEN REPLY ~(Sadly) So, we can do nothing, but amuse ourselves with the hope, that we did not doom everybody. What about you? What do you feel?~ GOTO LT10_st5
  IF ~~ THEN REPLY ~Do not try to calm me! I could have saved them, but I didn't. I should've... I should've made haste!~ GOTO LT10_st6
END

IF ~~ THEN BEGIN LT10_st2
  SAY ~Why are you so sure, <CHARNAME>?~
  IF ~~ THEN REPLY ~(With a smile) I am not sure, I just know. Volo will not be gone.~ GOTO LT10_st7
  IF ~~ THEN REPLY ~I do not know. But I feel that we haven't heard the last of Volo.~ GOTO LT10_st7
  IF ~~ THEN REPLY ~(Shrugs) Tymora smiles on bards. Remember the predicaments Volo has gotten himself into, and not just him, but all bards get themselves into... nasty situations, and they almost always come out on top! We will hear more from him... if we are still alive.~ GOTO LT10_st7
END

IF ~~ THEN BEGIN LT10_st3
  SAY ~(Shakes his head) You are paying the price for your legacy. Even when you are rescuing somebody, your still the one who gets all the blame. Our tortures won't stop until you manage to make yourself free from Bhaal's blood.~
  IF ~~ THEN DO ~SetGlobal("VP_Kr_YagaSh_Dead","LOCALS",3) SetGlobal("VP_Kr_NextTalk","GLOBAL",7) SetGlobalTimer("VP_ToB_Kr_Timer","GLOBAL",ONE_DAY)~ EXIT
END

IF ~~ THEN BEGIN LT10_st4
  SAY ~(He smiles sadly) yes, we can only hope.~
  IF ~~ THEN DO ~SetGlobal("VP_Kr_YagaSh_Dead","LOCALS",3) SetGlobal("VP_Kr_NextTalk","GLOBAL",7) SetGlobalTimer("VP_ToB_Kr_Timer","GLOBAL",ONE_DAY)~ EXIT
END

IF ~~ THEN BEGIN LT10_st5
  SAY ~(Being restive) I... I'm having strange dreams. But I want to interpret them myself, let us speak about this another time.~
  IF ~~ THEN DO ~SetGlobal("VP_Kr_YagaSh_Dead","LOCALS",3) SetGlobal("VP_Kr_NextTalk","GLOBAL",7) SetGlobalTimer("VP_ToB_Kr_Timer","GLOBAL",ONE_DAY)~ EXIT
END

IF ~~ THEN BEGIN LT10_st6
  SAY ~(Shakes his head disapprovingly) I don't think so. I am afraid, that the fate of Saradush has been predetermined long before your appearance. I am no fatalist, but when I saw Yaga-Shura's army outside the Saradush walls, I understood, that this city was doomed, and nothing could possibly save him. Even with Yaga-Shura's death.~
  = ~All my battlefield experience is telling me this. The siege was planned carefully, and the death of the war chief would not solve anything.~
  IF ~~ THEN DO ~SetGlobal("VP_Kr_YagaSh_Dead","LOCALS",3) SetGlobal("VP_Kr_NextTalk","GLOBAL",7) SetGlobalTimer("VP_ToB_Kr_Timer","GLOBAL",ONE_DAY)~ EXIT
END

IF ~~ THEN BEGIN LT10_st7
  SAY ~(He laughs) You are infecting me with your confidence, dear! I am glad, that you do not surrender to believing in good luck.~
  IF ~~ THEN DO ~SetGlobal("VP_Kr_YagaSh_Dead","LOCALS",3) SetGlobal("VP_Kr_NextTalk","GLOBAL",7) SetGlobalTimer("VP_ToB_Kr_Timer","GLOBAL",ONE_DAY)~ EXIT
END

IF WEIGHT #-5 ~Global("VP_ToB_LoveTalk","LOCALS",5)~ THEN BEGIN LT12_st0
  SAY ~I need your advice, my love. Something is going on with me... I am feeling it. I am  becoming more powerful and younger, <CHARNAME>! Do you understand?~
  = ~It frightens me... That blood, which you did give me in order to leave Kelemvor's kingdom, affects me more and more!~
  = ~I am having dreams, I see rivers of blood, and then comes this light, <CHARNAME>, not blinding, but radiant and warming, and the rivers change their color, become brighter with  time.~
  IF ~~ THEN REPLY ~Keldorn, Irenicus has not taken away your essence of Bhaal, and now it is evolving. But I honestly do not know why you are seeing a light! Maybe it is the light of your soul, Keldorn, and it is capable of defeating Bhaal's darkness!~ GOTO LT12_st1
  IF ~~ THEN REPLY ~(Laughing) You are becoming younger? This is really good news, Keldorn, considering the fact that I hope to marry you some day.~ GOTO LT12_st2
  IF ~~ THEN REPLY ~(Smile) You are wrong to be afraid, my dear, but I understand... You have seen the slayer. No, you are not in danger. I am sure.~ GOTO LT12_st3
END

IF ~~ THEN BEGIN LT12_st1
  SAY ~You think I can defeat this darkness on my own? And help you? I think I've learned how to heal the wounds.~
  IF ~~ THEN REPLY ~Of course, you will! But how can you help me? It will be harder for me to keep my human essence while the blood of Bhaal is flowing through my veins.~ GOTO LT12_st4
  IF ~~ THEN REPLY ~Are you really not tempted by all this power, Keldorn?~ GOTO LT12_st5
  IF ~~ THEN REPLY ~(Laughing) And you are saying, that powers of Bhaal bring only harm!~ GOTO LT12_st6
END

IF ~~ THEN BEGIN LT12_st2
  SAY ~(Confused) Well... I did not feel so good myself for a long time. My old wounds pain me no longer, my body became flexible and obedient, and I am not as tired from long travels and fights.~
  = ~(He draws you closer and you sit on his lap) I want to kiss you, to hug you, to caress you. Do you remember, what I said to you in the Underdark? And I still want you to marry me.~
  = ~I understand... they are offering your father's throne to you, and what can I possibly give you, except for my love?~
  IF ~~ THEN REPLY ~You think that your love is not enough for me? I have dreamt of your love for so long, since the first times our eyes met. I dreamed about the day, when you would say: "I love you". So why do you think that your love is not enough? Why do I need the throne, when I have you?~ GOTO LT12_st7
  IF ~~ THEN REPLY ~(Half joking, half seriously) Well, you also have a castle! Do not laugh! I have always dreamed of living in a castle.~ GOTO LT12_st8
  IF ~~ THEN REPLY ~I want to be with you, no matter where it will be: here or there. Only, just to be with you.~ GOTO LT12_st9
END

IF ~~ THEN BEGIN LT12_st3
  SAY ~(Uncertainly) You think so? Of course, you do have more experience. And Torm would've warned me, were I'm in danger of falling. So be it, I will try not to worry.~
  IF ~~ THEN DO ~SetGlobal("VP_ToB_LoveTalk","LOCALS",6) RealSetGlobalTimer("VP_Kr_DelayTimer","GLOBAL",5) RestParty()~ EXIT
END

IF ~~ THEN BEGIN LT12_st4
  SAY ~I can! If you allow me... (irresolutely, faltering) to remove the bonds of your virginity. I had hoped that you would marry me, and we would be able to do this within the terms of the law. However... I am more than ready to fulfill your desires.~
  IF ~~ THEN REPLY ~Breaking the law, and your oaths as a paladin? No, I will not ask this sacrifice of you. I know you can control your desires, and remain firm in your resolve. I will not chastise you for your strength.~ GOTO LT12st10
  IF ~~ THEN REPLY ~I... I understand you. I can see you suffer. I love you and I do not think I should preserve my virginity so adamantly. I will belong to you alone, or no one at all.~ GOTO LT12st11
  IF ~~ THEN REPLY ~(Hug and kiss him) And I want you to do this.~ GOTO LT12st11
END

IF ~~ THEN BEGIN LT12_st5
  SAY ~Power? This is the power of a demon, <CHARNAME>! How can I wish to have it? I am dreaming of the day when I will finally be free of her!~
  IF ~~ THEN DO ~SetGlobal("VP_ToB_LoveTalk","LOCALS",6) RealSetGlobalTimer("VP_Kr_DelayTimer","GLOBAL",5) RestParty()~ EXIT
END

IF ~~ THEN BEGIN LT12_st6
  SAY ~(He smiles and kisses you) You are right. I can use it for now, but I will give it away freely, when the opportunity arises.~
  IF ~~ THEN DO ~SetGlobal("VP_ToB_LoveTalk","LOCALS",6) RealSetGlobalTimer("VP_Kr_DelayTimer","GLOBAL",5) RestParty()~ EXIT
END

IF ~~ THEN BEGIN LT12_st7
  SAY ~(He hugs and caresses you) My love! Are you really ready to exchange the throne of a goddess for the love of an old man? I haven't got much time left for me; you understand that, aren't you? Even if you don't, Kelemvor will always remind you of it.~
  IF ~~ THEN REPLY ~You know, when Ajantis had been telling me about you, he said so much. But he never mentioned how handsome you were. I found myself breathless, when first I saw you. I swore that moment, that I wouldn't settle for any other man.~ GOTO LT12st12
  IF ~~ THEN REPLY ~Well, so be it! The time we have left is all ours, despite how much of it there is. After that... maybe Kelemvor will grant us his mercy. And, you do know that I want to be with you.~ GOTO LT12st11
  IF ~~ THEN REPLY ~I love you. Nothing else matters, my dear.~ GOTO LT12st13
END

IF ~~ THEN BEGIN LT12_st8
  SAY ~(Laughing) How can I talk seriously after that? You will be living in a castle, I promise.~
  IF ~~ THEN DO ~SetGlobal("VP_ToB_LoveTalk","LOCALS",6) RealSetGlobalTimer("VP_Kr_DelayTimer","GLOBAL",5) RestParty()~ EXIT
END


IF ~~ THEN BEGIN LT12_st9
  SAY ~(He smiles sadly) You cannot be with me "there", my love.~
  IF ~~ THEN DO ~SetGlobal("VP_ToB_LoveTalk","LOCALS",6) RealSetGlobalTimer("VP_Kr_DelayTimer","GLOBAL",5) RestParty()~ EXIT
END


IF ~~ THEN BEGIN LT12st10
  SAY ~(He hangs) Of course, I can... You are right, you have a clear mind, unlike me.~
  IF ~~ THEN DO ~SetGlobal("VP_ToB_LoveTalk","LOCALS",6) RealSetGlobalTimer("VP_Kr_DelayTimer","GLOBAL",5) RestParty()~ EXIT
END


IF ~~ THEN BEGIN LT12st11
  SAY ~(His eyes are glowing) Really? Are you sure? We shouldn't delay it, then.~
  IF ~~ THEN DO ~SetGlobal("VP_ToB_LoveTalk","LOCALS",7) SetGlobal("VP_ToB_Kr_HadSex","LOCALS",1) RealSetGlobalTimer("VP_Kr_DelayTimer","GLOBAL",5) RestParty()~ EXIT
END

IF ~~ THEN BEGIN LT12st12
  SAY ~Thank you, my love. I have not heard such words from a young and beautiful woman in a very long time. Your words have made me very happy.~
  IF ~~ THEN REPLY ~I love you. Nothing else matters, my dear.~ GOTO LT12st13
  IF ~~ THEN REPLY ~(nestling to him) I want to sleep with you.~ GOTO LT12st11
  IF ~~ THEN REPLY ~We are  a beautiful couple, aren't we? Will you be proud of me?~ GOTO LT12st14
END

IF ~~ THEN BEGIN LT12st13
  SAY ~(Hugs you silently) I believe you, my dear.~
  IF ~~ THEN DO ~SetGlobal("VP_ToB_LoveTalk","LOCALS",6) RealSetGlobalTimer("VP_Kr_DelayTimer","GLOBAL",5) RestParty()~ EXIT
END

IF ~~ THEN BEGIN LT12st14
  SAY ~(With a smile on his face) Am I not proud already? You would be a bright and shining star at any ball, your beauty would be an inspiration to bards and... (laughingly) I certainly would have a lot of competition.~
  IF ~~ THEN DO ~SetGlobal("VP_ToB_LoveTalk","LOCALS",6) RealSetGlobalTimer("VP_Kr_DelayTimer","GLOBAL",5) RestParty()~ EXIT
END

//LT16-TOB
IF WEIGHT #-6 ~Global("VP_Kr_LastLT","LOCALS",2)~ THEN BEGIN LT16_st0
  SAY ~(Disturbingly) Why are you so pale, beloved? Are you tired? Exhausted? There is only one more fight ahead of us and then it is over. You will finally get your rest (he kisses you).~
  IF ~~ THEN REPLY ~Keldorn, I am deadly tired and that's all. There is no reason to worry. It is going to be over soon and we will rest - both you and me.~ GOTO LT16_st1
  IF ~OR(2) Global("VP_ToB_Kr_HadSex","LOCALS",1) GlobalGT("VP_ToB_LoveTalk","LOCALS",6)~ THEN REPLY ~(Lower your eyes) I... I don't know. I am not feeling good really. I am feeling nauseous, as if I were poisoned.~ GOTO LT16_st2
  IF ~!Global("VP_ToB_Kr_HadSex","LOCALS",1) GlobalLT("VP_ToB_LoveTalk","LOCALS",7)~ THEN REPLY ~Maybe I've been poisoned. How are you feeling? We should ask the others; maybe it was something we ate at the tavern.~ GOTO LT16_st3
  IF ~~ THEN REPLY ~Me? Pale? You are mistaken Keldorn! How can I, the most powerful Bhaalspawn, look tired?~ GOTO LT16_st4
END

IF ~~ THEN BEGIN LT16_st1
  SAY ~(He hugs you gently) My poor girl. It is going to be all right, we will win the last battle, as we should, and after we will go to Esmeltaran so we can finally be married. I hope, you have not changed your mind, hmm?~
  IF ~~ THEN REPLY ~(You hug him too) No! Why should I change my mind? I still want to be your wife.~ GOTO LT16_st5
  IF ~~ THEN REPLY ~I... I do not know, please, don't ask me! What if we all are going to die?~ GOTO LT16_st6
  IF ~~ THEN REPLY ~(Freeing yourself from his embraces) But my father's throne awaits me! Who else will take it, if not me?~ GOTO LT16_st7
END

IF ~~ THEN BEGIN LT16_st2
  SAY ~(Shuddered) Nauseous? Please, tell me, are you always being nauseous or just in the morning, after sleep? And... why didn't you say anything to me about your condition?~
  IF ~InParty("Jaheira")~ THEN REPLY ~I... I thought I was poisoned, so I decided it will go away. But I am being nauseous in the morning, some time at noon, too. I am remembering what Jaheira told me, and it makes me think that I... (your voice become very silent) I'm pregnant.~ GOTO LT16_st8
  IF ~!InParty("Jaheira")~ THEN REPLY ~I... I thought I was poisoned, so I decided it will go away. But I am being nauseous in the morning, some time at noon, too. It makes me think that I... (your voice become very silent) I'm pregnant.~ GOTO LT16_st8
  IF ~~ THEN REPLY ~It always happens randomly, then again maybe it is my power which gives me greater insight into this matter?~ GOTO LT16_st9
  IF ~~ THEN REPLY ~(Moving your head perplexedly) I know nothing, Keldorn. I am feeling bad. But don't you worry, I will gather my strength. We will win our last battle.~ GOTO LT16_st9
END

IF ~~ THEN BEGIN LT16_st3
  SAY ~Me? I am absolutely normal. And I didn't notice any suspicious tavern visitors. You're just tired, my love. But there is nothing wrong. Soon it will be over. You should try and sleep now. Let me summon my healing powers.~
  IF ~~ THEN DO ~SetGlobal("VP_Kr_LastLT","LOCALS",3) ReallyForceSpell(Player1,CLERIC_HEAL)~ EXIT
END

IF ~~ THEN BEGIN LT16_st4
  SAY ~So it just seemed to me? Well, if you're so sure... So be it, forget I said anything.~
  IF ~~ THEN DO ~SetGlobal("VP_Kr_LastLT","LOCALS",3)~ EXIT
END

IF ~~ THEN BEGIN LT16_st5
  SAY ~I am very happy to hear that, <CHARNAME>. To tell the truth, I was worried that the Slayer might persuade you to take Bhaal's throne. I am glad that you are still firm and following the path of the light.~
  IF ~~ THEN DO ~SetGlobal("VP_Kr_LastLT","LOCALS",3)~ EXIT
END

IF ~~ THEN BEGIN LT16_st6
  SAY ~(Seriously) Why shouldn't I ask? And what makes you think we are going to die? Look how easy it was for you to defeat Abazigal and Drakonis! You think you won't defeat Melissan? She is alone, after all! Do not despair my love. We are going to win, in that I am sure.~
  IF ~~ THEN DO ~SetGlobal("VP_Kr_LastLT","LOCALS",3)~ EXIT
END

IF ~~ THEN BEGIN LT16_st7
  SAY ~What? Throne of your father? So, The Slayer has won, after all... he has managed to persuade you.~
  = ~And what is going to happen to me, <CHARNAME>? I won't be able to live without you, I do not want to live without you, do you understand?~
  = ~I am begging you, please, think before you make your choice. I trust in your wisdom, my love.~
  IF ~~ THEN DO ~SetGlobal("VP_Kr_LastLT","LOCALS",3)~ EXIT
END

IF ~~ THEN BEGIN LT16_st8
  SAY ~(Happily) Oh, Torm! (Disturbingly) Oh, Torm.~
  IF ~~ THEN REPLY ~(You grin sadly) So, do you understand? I may give birth to a monster... I do not know, may be it will be better to get rid of him?~ GOTO LT16st10
  IF ~~ THEN REPLY ~Do not be afraid, Keldorn. I trust in Kelemvor to warn me in case something threatens me.~ GOTO LT16st11
  IF ~~ THEN REPLY ~I do not like your reaction. You are not happy to be the father again?~ GOTO LT16st12
END

IF ~~ THEN BEGIN LT16_st9
  SAY ~(Delicately) <CHARNAME>, maybe you are pregnant? Have you thought of that?~
  IF ~~ THEN REPLY ~Pregnant? Now? Do you understand, what that means, Keldorn? You and me - we are both carrying Bhaal's blood in our veins. Do you understand that our child could be a monster? Maybe it will be safer to get rid of him, what do you think?~ GOTO LT16st10
  IF ~~ THEN REPLY ~No, I haven't! It means our child can be a god!~ GOTO LT16st13
  IF ~~ THEN REPLY ~Pregnant... You know, that sounds so unusual. What are your thoughts about this? Aren't you happy to become a father again?~ GOTO LT16st12
  IF ~~ THEN REPLY ~Pregnant? Oh, why do you think that? It is nothing similar, Keldorn. I think it is just something poisonous.~ GOTO LT16st14
END

IF ~~ THEN BEGIN LT16st10
  SAY ~To get rid? Don't you even think about it! This is our child, no matter who he is! Do you understand? Everything is going to be fine, don't worry. Let me comfort you, so you can see how happy I am.~
  = ~Maybe you can ask a Solar if it's going to be a boy or a girl, so we can think of a name (he kisses you).~
  IF ~~ THEN DO ~SetGlobal("VP_Kr_LastLT","LOCALS",3) SetGlobal("VP_Kr_She_Pregnant","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN LT16st11
  SAY ~(With a smile on his face) I am not afraid. I just thought we are going to be free from the divinity, but now divine blood will flow through our baby's veins.~
  IF ~~ THEN DO ~SetGlobal("VP_Kr_LastLT","LOCALS",3) SetGlobal("VP_Kr_She_Pregnant","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN LT16st12
  SAY ~(Being surprised) Not happy? How can I not be happy if my beloved is carrying my child? It is you who disturbs me. How can you fight, being pregnant? Not only you are not feeling well, but you must also protect our unborn child! This is what disturbs me, my love.~
  IF ~~ THEN DO ~SetGlobal("VP_Kr_LastLT","LOCALS",3) SetGlobal("VP_Kr_She_Pregnant","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN LT16st13
  SAY ~God? I am afraid to lose our beloved child. We should persuade Kelemvor to take the divinity from our baby, my dear.~
  IF ~~ THEN DO ~SetGlobal("VP_Kr_LastLT","LOCALS",3) SetGlobal("VP_Kr_She_Pregnant","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN LT16st14
  SAY ~(Being sad) Poison? It might be... What a pity, thinking of your pregnancy had delighted me for the moment. Anyway, that doesn't matter.~
  IF ~~ THEN DO ~SetGlobal("VP_Kr_LastLT","LOCALS",3)~ EXIT
END

END