REPLACE ~OUBLEK~

IF WEIGHT #4 ~Global("Greywolf","GLOBAL",0)~ THEN BEGIN 9 // from:
  SAY ~Ahh, my fine and honest friend.  What can I do for you today?~ /* #4602 */
  IF ~PartyHasItem("MISC65")~ THEN REPLY ~I've come to turn in a bounty, and collect the reward that is duly mine.~ /* #4611 */ GOTO 8
  IF ~PartyHasItem("MISC43")
Global("OublekBounty2","GLOBAL",0)~ THEN REPLY ~I've come to turn in a bounty, and collect the reward that is duly mine.~ /* #4627 */ GOTO 4
  IF ~~ THEN REPLY ~What do you do here, exactly?~ /* #4626 */ GOTO 11
  IF ~Global("OublekBounty1","GLOBAL",0)
Global("OublekBounty2","GLOBAL",1)~ THEN REPLY ~What bounties are currently unclaimed?~ /* #4645 */ GOTO 26
  IF ~!PartyHasItem("MISC65")
!PartyHasItem("MISC43")~ THEN REPLY ~I've come to turn in a bounty, and collect the reward that is duly mine.~ /* #4647 */ GOTO 15
  IF ~Global("OublekBounty1","GLOBAL",1)
Global("OublekBounty2","GLOBAL",0)~ THEN REPLY ~What bounties are currently unclaimed?~ /* #2007 */ DO ~~ GOTO 27
  IF ~Global("OublekBounty1","GLOBAL",0)
Global("OublekBounty2","GLOBAL",0)~ THEN REPLY ~What bounties are currently unclaimed?~ /* #8438 */ DO ~~ GOTO 28
  IF ~Global("OublekBounty1","GLOBAL",1)
Global("OublekBounty2","GLOBAL",1)~ THEN REPLY ~What bounties are currently unclaimed?~ /* #12737 */ DO ~~ GOTO 29
END

IF WEIGHT #3 ~Global("Greywolf","GLOBAL",1)~ THEN BEGIN 10 // from:
  SAY ~Best you state your business and go!~ /* #84747 */
  IF ~Global("BroughtBounty","GLOBAL",0)~ THEN REPLY ~I've come to turn in a bounty, and collect the reward that is duly mine.~ /* #11108 */ DO ~SetGlobal("BroughtBounty","GLOBAL",1)~ GOTO 5
  IF ~PartyHasItem("MISC65")
Global("BroughtBounty","GLOBAL",1)~ THEN REPLY ~I've come to turn in a bounty, and collect the reward that is duly mine.~ /* #11108 */ GOTO 14
  IF ~ReactionGT(LastTalkedToBy(Myself),NEUTRAL_UPPER)~ THEN REPLY ~What do you do here, exactly?~ /* #84745 */ GOTO 11
  IF ~ReactionLT(LastTalkedToBy(Myself),FRIENDLY_LOWER)~ THEN REPLY ~What do you do here, exactly?~ /* #84745 */ GOTO 6
  IF ~Global("OublekBounty1","GLOBAL",0)
Global("OublekBounty2","GLOBAL",1)~ THEN REPLY ~What bounties are currently unclaimed?~ /* #84746 */ GOTO 26
  IF ~!PartyHasItem("MISC65")
!PartyHasItem("MISC43")
Global("BroughtBounty","GLOBAL",1)~ THEN REPLY ~I've come to turn in a bounty, and collect the reward that is duly mine.~ /* #11108 */ GOTO 15
  IF ~Global("OublekBounty1","GLOBAL",1)
Global("OublekBounty2","GLOBAL",0)~ THEN REPLY ~What bounties are currently unclaimed?~ /* #84746 */ GOTO 27
  IF ~Global("OublekBounty1","GLOBAL",0)
Global("OublekBounty2","GLOBAL",0)~ THEN REPLY ~What bounties are currently unclaimed?~ /* #84746 */ GOTO 28
  IF ~Global("OublekBounty1","GLOBAL",1)
  Global("OublekBounty2","GLOBAL",1)~ THEN REPLY ~What bounties are currently unclaimed?~ /* #84746 */ GOTO 29
  IF ~PartyHasItem("MISC43")
Global("BroughtBounty","GLOBAL",1)
Global("OublekBounty2","GLOBAL",0)~ THEN REPLY ~I've come to turn in a bounty, and collect the reward that is duly mine.~ /* #11108 */ GOTO 14
END
END

SET_WEIGHT OUBLEK 9 #4
SET_WEIGHT OUBLEK 10 #3