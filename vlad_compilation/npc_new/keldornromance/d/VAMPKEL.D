BEGIN VAMPKEL

CHAIN VAMPKEL 0
~As you desire, Mistress... (Suddenly the hiss of the vampire is interrupted by the voice you know so well)... You are mistaken, demon. It's not easy to enslave a paladin. You tainted me with your vampire curse, but you have no power over me!~
EXTERN C6BODHI vampamb3

CHAIN VAMPKEL 1
~Yes, mistress... (Keldorn twitches with pain, then slowly regains his composure)... I... I f-found a target... m-more to my liking...~
EXTERN C6BODHI vampamb4

CHAIN
IF ~Global("VP_KeldVamp_Alive","GLOBAL",1)~ THEN VAMPKEL 2
END
~So it is done! There is but one thing left my darling... you must kill me. I know it is difficult for you to find it in your heart to do this but I am dead already. Or is it your wish that I should remain a vampire?~
 ++ ~No, no! You mustn't say this. (You throw your arms around him and then shocked, you quickly jump away from his touch) Oh Keldorn, you are so... so cold.~ EXTERN VAMPKEL 3
 ++ ~Kill? Again? What then... ask Kelemvor to return you once again? He would not do it, he can't interfere.~ EXTERN VAMPKEL 4
 ++ ~No, there must be something... we will find a way? I will ask Kelemvor.~ EXTERN VAMPKEL 5

CHAIN VAMPKEL 3
~(Sadly) Look at me <CHARNAME>, can you not see that I am naught but a walking corpse? Save me. I beg you, kill me.~
END
 ++ ~I... all right but what if you were to die for good this time?~ EXTERN VAMPKEL 6

CHAIN VAMPKEL 4
~No, my darling, I will not die. I will only sleep, so I doubt I will arrive at Kelemvor's.~
END
 ++ ~(The tears stream down your cheeks) Yea gods... my love.~ EXTERN VAMPKEL 6

CHAIN VAMPKEL 5
~No, my love. You must not bother so great a god about trifles. I am sure that a skilled priest will be able to tell you how to recall me back to life.~
END
 ++ ~I... I can't. What if you were to die for good?~ EXTERN VAMPKEL 6

CHAIN VAMPKEL 6
~<CHARNAME>. I don't recognize you! Where does all this indecision come from? Worry not all will be well. Let death pass between us once again, and then we will be together forever!~
DO ~SetGlobal("VP_KeldornVampire","GLOBAL",3) SetGlobal("VP_KeldVamp_Alive","GLOBAL",2) Kill(Myself)~
EXIT