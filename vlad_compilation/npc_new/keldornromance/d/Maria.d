APPEND ~MARIA~

IF ~~ THEN BEGIN MariTk1
  SAY ~Not alone. Some of the servants were with them.~
  IF ~~ THEN EXTERN KELDORJ MariTk2
END

IF ~~ THEN BEGIN MariTk2
  SAY ~I... wasn't in. Lately bandits have gone completely out of control, so I took more guards with me.~
  IF ~~ THEN EXTERN KELDORJ MariTk3
END

IF ~~ THEN BEGIN MariTk3
  SAY ~I feared to go with only a casual escort.~
  IF ~~ THEN EXTERN KELDORJ MariTk4
END

IF ~~ THEN BEGIN MariTk4
  SAY ~Almost... I... I left two of them at home. I thought they could call for help if they needed to.~
  IF ~~ THEN EXTERN KELDORJ MariTk5
END

IF ~~ THEN BEGIN MariTk5
  SAY ~Thieves do not go singly nowadays you know. They killed the guards at the doors, quietly and fast. The soldiers outside never heard a thing. Leona managed to open a window and called out for help before she was shot by a crossbow. The soldiers ran in when they heard her shouting, but... Vesper was murdered right in her bed. Oh, Keldorn, it was so very dreadful!~
  IF ~~ THEN EXTERN KELDORJ MariTk6
END

IF ~~ THEN BEGIN MariTk6
  SAY ~Keldorn! Why do you say that I...~
  IF ~~ THEN EXTERN KELDORJ MariTk7
END

IF ~~ THEN BEGIN MariTk7
  SAY ~No! You were indifferent to me. But I tried to please you in everything, I was a good mistress, I was bringing up your children... Isn't it enough?~
  IF ~~ THEN EXTERN KELDORJ MariTk8
END

IF ~~ THEN BEGIN MariTk8
  SAY ~(Surprised) My parents told me the paladins' marriages are never contracted for love, and that I would get used to you... Besides you were so... interesting, respected, even my friends were jealous of my good fortune.~
  IF ~~ THEN EXTERN KELDORJ MariTk9
END

IF ~~ THEN BEGIN MariTk9
  SAY ~I also knew that you would not spend too much time at home.~
  IF ~~ THEN EXTERN KELDORJ MariTk10
END

IF ~~ THEN BEGIN MariTk10
  SAY ~Then... Reynold... he...~
  IF ~~ THEN EXTERN KELDORJ MariTk11
END

IF ~~ THEN BEGIN MariTk11
  SAY ~Yes! He made you challenge him... and he was such a fine swordsman!~
  IF ~~ THEN EXTERN KELDORJ MariTk12
END

IF ~~ THEN BEGIN MariTk12
  SAY ~Look here! You have had enough time to turn her head. Ah, this is all so... so romantic, the suffering and wronged hero, a somewhat new role for you Keldorn!~
  IF ~~ THEN EXTERN KELDORJ MariTk15
END

IF ~~ THEN BEGIN MariTk13
  SAY ~What?! I must shut my mouth? You, an old man with grey hair, you leave everything ' me, our girls, your well-beloved Order, ' and you throw yourself after a wench to... hm, what was it that you said? To rescue her playmate! Leaving me to learn from outsiders where you were and who you were with!~
  IF ~~ THEN EXTERN KELDORJ MariTk16
END

IF ~~ THEN BEGIN MariTk14
  SAY ~Don't you 'Maria' me! I have become old, I've cried my eyes out, while wasting my life waiting for you for years... Now when such a horrible thing has happened, I thought you are going to come and comfort me! Instead you have come... with this... semigod! How can you, Keldorn... and you dare to accuse me of infidelity!~
  IF ~~ THEN EXTERN KELDORJ MariTk17
END

IF ~~ THEN BEGIN MariTk15
  SAY ~I fail to remember a single time when you hugged me in public.~
  IF ~~ THEN EXTERN KELDORJ MariTk19
END

IF ~~ THEN BEGIN MariTk16
  SAY ~What? A divorce?~
  IF ~~ THEN EXTERN KELDORJ MariTk20
END

IF ~~ THEN BEGIN MariTk17
  SAY ~Well, not exactly...~
  IF ~~ THEN EXTERN KELDORJ MariTk21
END

END