APPEND ~BYLANNA~

IF ~~ THEN BEGIN Keldorn1
  SAY ~Yes, sir Keldorn, you are right. We have made some investigations. We failed to learn much, but we did find in the pocket of one of the dead thieves a fragment of the letter that mentions the hayloft next to the Shadow Thieves' Guild in the Docks.~
  IF ~~ THEN REPLY ~Keldorn, you remember? This was near the place where we were attacked by that crazy priest of Cyric!~ GOTO Keldorn2
END

IF ~~ THEN BEGIN Keldorn2
  SAY ~Priest of Cyric? Their sect is very strong here in Athkatla. I just can't understand the reasons their sudden hatred for you, lord Keldorn. To the best of my knowledge the Order has not organized any punitive actions recently, is that so?~
  IF ~~ THEN EXTERN ~KELDORJ~ Bylanna2
END

END