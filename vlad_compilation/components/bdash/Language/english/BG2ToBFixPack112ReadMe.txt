2001 - Sept. - 27

---------------------------------------------------------
Baldurdash Throne Of Bhaal Post-Patch FixPack v1.12 ReadMe
---------------------------------------------------------

This self-installing archive package contains many separate fix archives to resolve problems in Baldur's Gate II: Throne Of Bhaal. This readme file has been placed in your Baldur's Gate II folder; you may leave it there or delete it at your discretion.

This file and its accompanying FixPack was obtained from my webpage at http://members.home.com/mrkevvy

The only changes from FixPack 1.1 are that:

1) Tthe IDS files formerly installed into the Script Compiler folder have been removed. A couple of people who write their own scripting indicated that they had customized them, so they will no longer be updated to there. They are still available separately as an archive.

2) I accidentally included a bad version of the PLANEVIL.CRE file (the Fallen Planetar) in the fixes, both separate and here. Casting Summon Dark Planetar would crash the game. This has been resolved now. My apologies for any inconvenience caaused by this.

-------------------------------------------------------------------------
Newly Added/Updated Throne Of Bhaal & Shadows Of Amn Fixes
-------------------------------------------------------------------------
Illithid Control Circlets Preventing Party Members Rejoining Fix

File MISC9X.ITM;  a modified versions of the  item definition for the Illithid Control Circlet, a collar that can be used to dominate just about anything that isn't immune to domination. It resolves a longstanding bug with this item, of which there are only four in the game in the Underdark Illithid lair. Its Charm effect lasted so long as to be considered permanent; in the tens of millions of game seconds. Though their intended use is to dominate Illithid in the Underdark to complete the quests there, players would use them to regain control of party members who had been dominated or charmed by enemies, such as by vampires. 

Because the charm effect was then present in the party member character, and the effect lasted so long, if the character did not die (which removed the effect) and was removed from the party by any method, they could never again rejoin it as the charm would then be active, and talking to them would produce the result "A mind controlled creature cannot speak to you of its own free will." This was most noticeable when restoring vampirized romance characters after Bodhi's death at the ruined temple with their body and Bodhi's heart; the character that appeared would not be able to rejoin the group.

I resolved this for future occurrences by changing the duration of the Charm effect from tens of millions to 1800 game seconds, or 1/4 of a day, or 6 hours. This is long enough to complete the Underdark Illithid quests (by far) and also ensures that if they are used to regain control of a dominated or charmed party member, that overland travel or rest will cause the Charm effect to wear off. A formerly dominated or charmed party member will not become hostile again if the effect wears off while they are in the group.

*** To prevent this problem if you have ever used these circlets to restore party members: Use Shadowkeeper (available at http://www.mud-master.com/shadowkeeper) by loading the affected savegame (the character must be in the party) then switching to the character with the portrait slider. Then, click the Affects tab, look for an effect starting with "Charm" and delete it, then save the game (in a new slot of course, in case there are any side-effects.)

Thanks for Linda Barber for contributing two savegames to track down this problem with!

-------------------------------------------------------------------------
Cowled Enforcers AI Fixes

Files COWENF01-4.BCS;  modified versions of the AI definitions for the Cowled Enforcers, the mages who appear and attack the player/party in Athkatla when wizard spells are cast outdoors, if the warning of the first is not heeded. They resolve a few errors with their AI, whereby they would sometimes attack each other when they had run out of spells, and would also cast some hostile spells on each other, most notably Power Word: Silence, which would hinder their own spellcasting abilities. As well, it appeared to have been forgotten to check if one was silenced whether they knew the spell Vocalize before casting it, so it could be applied unlimited times, and a few other minor errors such as duplication of the routines to cast the spells that they know were fixed.

-------------------------------------------------------------------------
Brother Odren 'No Valid Replies Or Links' & Experience/Reputation Exploit Fixes

File GORODR1.DLG; a modified version of the dialog definition for the priest character named Brother Ordren, found at Watcher's Keep. It resolves two bugs with his dialog. First, if the player chose to not read the Ritual Scroll given by Brother Pol, and sent Demogorgon back to the Abyss, if the player was still in the Shadows Of Amn component of Baldur's Gate II and any of Anomen, Imoen, Keldorn or Mazzy were in the group, on returning to Brother Odren, after the first line of dialog, "No valid replies or links" would be received and the player would be unable to progress. The cause of this was that the possible dialog threads that were not restricted to the Throne Of Bhaal areas were also disallowed from the four NPC's as well through incorrect triggers, so they would start to reply but then the chapter check would block them being able to.

The second bug fixed was an exploit whereby after talking to Brother Odren and receiving the quest experience and reputation increase, he could be talked to as he was leaving, and would give the experience and reputation again, as many times as the player wanted.

Thanks to Fabrice Coudret for contributing a savegame which helped greatly in fixing these bugs!

-------------------------------------------------------------------------
Yakman 'No Valid Replies Or Links' Fix

File GORMAD01.DLG;  a modified version of the dialog definition for the elven madman 'Yakman', found in Watcher's Keep. It resolves a bug with his dialog whereby "No Valid Replies Or Links" would appear on the second conversation with him if Aerie, Keldorn or Viconia were present in the group.

-------------------------------------------------------------------------
Deck Of Many Things Moon Spell Fix

File SPIN618.SPL; a modified version of the Deck Of Many Things spell called Moon. It resolves a bug whereby the ten permanent bonus hit points granted by this spell would be rendered ineffective if the player character using the Deck happened to be wearing the Cloak Of Mirroring.

-------------------------------------------------------------------------
Deck Of Many Things Emperor Spell Fix

File SPIN632.SPL; a modified version of the Baldur's Gate II: Throne Of Bhaal's Deck Of Many Things spell called Emperor. Note that this spell's duration is not permanent, contrary to opinion. It lasts for seven game days. It can also only be obtained legitimately from gambling with the Cambion, not from using the Deck Of Many Things directly.

It resolves the following errors with this spell's definition:

1) The provided Charm protection expired after 0 seconds, instead of 50,400 (seven game days.)
2) The Charm protection resource (with the 0 second duration) was duplicated. I made the second one into a protection against Horror/Fear, as any Mind Shield should provide, with the corrected seven-day duration.
3) The "expiration" sound occurred after 720 seconds, instead of 50,400.

-------------------------------------------------------------------------
Raise Dead Temple Prices Fix

File RAISDEAD.2DA; a modified version of the cost table for Raise Dead at temples. It resolves a few errors with the costs of this service, whose cost increases with the level of character to be raised: for a level 29 character, the price was only 1,500 gold pieces (which is less than that for a level 16 character) due to a typo, and several of the costs in the level table were reversed so it was slightly more expensive to raise a character of slightly less level.

-------------------------------------------------------------------------
Mordenkainen's Sword Amulets & Mind-Control Magic Susceptbility Fixes

Files SWORD01.CRE and IPSION.ITM; edited versions of the creature definition for the summoned magical weapon called Mordenkainen's Sword, and item definition for a specialized Greenstone Amulet. Originally in Shadows Of Amn, Mordekainen's Swords were equipped with this Greenstone Amulet, a device that prevents Fear, Confusion, Feeblemind, Charm, Hold, Stun and several other magical mind-control effects. However, there were two problems with this. First, the amulets were not marked as undroppable, which means players could pick them up if the sword "died," and also sell then and buy/steal them back so that their single charges would turn into fifty. When BioWare was advised of this, the "fix" for Throne Of Bhaal was to mark the amulets as undroppable, which meant that any player that had picked one up previously and kept it had it permanently stuck either in their amulet slot or in an inventory slot. Only Shadowkeeper or some extreme hex-editing could change this.

Secondly, the Greenstone Amulet does not do what it is designed to do. It must be activated through the Use Item button if it is being worn by a player. The Sword does not have the facilities to do this, so the Greenstone Amulet did nothing whatsoever.

To resolve these issues, the Greenstone Amulet (ISPION.ITM) file is included reflagged as droppable for those players who still have one stuck in their inventory. The Mordenkainen's Sword creature file (SWORD01.CRE) no longer wears a Greenstone Amulet. Instead, the immunities that the Amulet was supposed to provide are now encoded directly into the creature definition.

Note that it was confirmed on the Interplay WebBoard by David Gaider that the original problem with the dropping amulets was a legitimate bug with this item.

The update to this fix as of 2001-Sept.-22 restores the AI script to the Sword that it was given in Throne Of Bhaal which prevents it becoming an uncontrollable enemy.

Many thanks to Beige Tangerine for doing the original bugfix for Shadows Of Amn and donating it to my collection!

You can visit Beige Tangerine at http://www.geocities.com/beigetangerine/

-------------------------------------------------------------------------
Triple-Class Mages Missing High-Level Spell Slots Abilities Fix

Files LUABBR.2DA, LUFMC.2DA and LUFMT.2DA; modified versions of the LUA class abbreviations table, and the High-Level Ability table for Fighter/Mage/Cleric and Fighter/Mage/Thief characters. They resolve the oversight whereby F/M/C's and F/M/T's, being restricted from high-level mage ability spells because they cannot reach level 18 in their mage levels and thus cast level 9 spells under the experience point cap, were also restricted from three abilities that do not require 9th level spells: the bonus 6th, 7th and 8th level spell abilities.

Thanks to Bob Davis, aka Noran the Axe, for donating this nice bugfix to my collection!

You can also find it at TeamBG's Custom Files Gallery, at http://www.teambg.net/teambg_com/cgi-bin/YaBB.cgi?board=bg2

-------------------------------------------------------------------------
Tears Of Bhaal Stat. Bonuses Fixes

Files SPIN749.SPL, SPIN750.SPL, and SPIN753.SPL; modified versions of the "spell" definitions for the Tear Of Bhaal rewards that change character stats. They resolve the problem with the stat. changes whereby the change is perpetually in red, as a permanent magically applied effect. This causes problems with other devices or spells that change stats. For example, with the Charisma reward adding 1 to the protagonist's Charisma, wearing the Ring Of Human Influence which is supposed to set Charisma to 18 causes it to go to 19 as the Tear reward adds 1 to it.

-------------------------------------------------------------------------
Anomen Title Lost In Throne Of Bhaal and Wisdom In Red Fixes

Files ANOM25.BCS and SPIN678.SPL; modified versions of the AI script and title "spell" for the NPC Anomen. They resolve two problems with Anomen. Firstly, if his quest to become a knight of the Order Of The Radiant Heart was completed successfully, but the Shadows Of Amn component of Baldur's Gate II was completed without him, when he was summoned in the Abyss he had "forgotten" his title (Wisdom of 12 instead of 16, alignment Lawful Neutral instead of Lawful Good, and name Anomen instead of Sir Anomen.) These changes will now be properly applied.

The second problem resolved by this was that his Wisdom increase from 12 to 16 was showing in red as a magically applied effect rather than in white as a permanent innate change, so Wisdom affecting things (such as the Machine Of Lum The Mad, Potions Of Insight, etc.) would have no effect on him. His Wisdom of 16 will now show in white when he gains his title at the Order or when he is summoned in the Abyssal subplane after Shadows Of Amn if he earned his title there.

-------------------------------------------------------------------------
Gromnir Il-Khan Quest Experience Reward Fix

File XPLIST.2DA; a modified version of the quest experience table. It resolves a bug with the quest experience awarded at the death of the character Gromnir Il-Khan. Although it is supposed to be 30,000 points, the experience points rewarded could occasionally be in the tens of millions. The reason for this was that data was missing from this quest's row, causing a displacement, and the game would read the wrong value. This would only occur if the protagonist was of level 38 or higher.

Thanks to Karzak for pointing out this bug!

-------------------------------------------------------------------------
Planetar Summon Fixes

Files PLANGOOD.CRE and PLANEVIL.CRE; modified versions of the creature definitions for the Planetars summoned by the 9th level High Level Ability wizard spell Summon Planetar and Summon Fallen Planetar respectively. They resolve the following bugs and inconsistencies with them:

1) Though their level was set to 25, their class was "No Class" so the game would treat them as level 0, and the Planetar's Dispel Magic would always fail being cast by a zero-level caster. Their class has been set to "Cleric" as most of their spells are clerical.
2) The Fallen Planetar could not cast Dispel Magic at all, as the resource for the spell "Remove Curse" was erroneously duplicated in its place.
3) The Fallen Planetar only had one instance of Improved Invisibility memorized whereas the Planetar had three. The memorization resources were present but set to 0 instances for the Fallen Planetar. This was changed so that they both have three.
4) The Planetar had only one-fourth the Regeneration rate of the Fallen Planetar.
5) The Fallen Planetar had memorized and could cast the 7th level clerical spell Holy Word, though this may not be cast by evil-aligned beings. This was changed to Unholy Word.

-------------------------------------------------------------------------
Throne Of Bhaal and Updated Shadows Of Amn Fixes From Previous FixPacks
-------------------------------------------------------------------------
Absolute Immunity Duration Fix

File SPWI907.SPL; a modified version of the spell definition for the 9th level wizard spell Absolute Immunity. It resolves a bug with the duration of the spell being slightly too long; though it is listed as 4 rounds, a round consists of 6 seconds, so its effects should have lasted 24 seconds but instead were lasting 28 seconds. The sound for the expiry of the spell, however, was occurring after 24 seconds.

Thanks to Lord Selane for donating this nice bugfix to my collection! (though I had to be a picky and recreate it myself in Hex.) :^)

-------------------------------------------------------------------------
Amkethran Smuggler Duplicated Gem Bags Fix

Files AMSMUG01.STO, AMSMUG02.STO, BAG2J.ITM and BAG2J.STO; modified versions of store definition files for the smuggler Carras of Amkethran, and newly created item definition and store definition files for a Gem Bag. They resolve the bug of one of the Gem Bags sold by Carras being a duplicate of that sold by Gaelan Bayle's associate Arledrian upstairs at Bayle's home, and another being a duplicate of one also available from Carras, as he has two separate sets of inventory, before and after the arrival of Balthazar's monks.

Thanks to Cuvieronius for testing this fix for me!

-------------------------------------------------------------------------
Blade Offensive Spin Ability Fix

File SPCL521.SPL; an edited version of the ability definition file for the Blade (Bard kit) Offensive Spin ability. It resolves two bugs: firstly, a resource bug that omitted the THAC0 bonus of 2 from the ability. The ability now gives the proper THAC0 improvement for the duration, and this can be seen as a decrease by 2 of the base and effective THAC0 on the character sheet.

Note that the ability's Damage improvement of 2 does not appear on the character sheet, but it is there and does work properly.

The second bug resolved for this ability was that the Haste effect provided by it was disabling off-hand attacks while dual-wielding, as Haste has been found to do. To solve this, the Haste effect was removed and added as separate effects that duplicate Hasting (movement rate doubling, and an extra attack per round.) 

-------------------------------------------------------------------------
Cavalier Resist Fear Ability Nagic Resistance Failure Fix

File SPCL222.SPL; a modified version of the spell definition for the Cavalier's Resist Fear special ability. It resolves the bug of this ability not bypassing Magic Resistane, though it is an innate ability and also a beneficial one. The Magic Resistance checks have been removed.

Thanks to Sojourner for contributing this bugfix to my collection!

-------------------------------------------------------------------------
Countess Santele Betrayal Anomen Reaction Fix

File SARCNT01.DLG; a modified version of dialog definition file for Countess Mirnielle Santele, a character found in Saradush. It resolves a bug with her dialog whereby if Anomen is in the player's group, and the player decides to side with Kiser in the kidnapping of her son and murder her, Anomen will only turn on the player if he failed or did not do his knighthood test (is of LN or CN alignment) and will not turn on the player if he passed his knighthood test (is of LG alignment.) The reason for this reversal of expected reaction was a negative check for Anomen's alignment being any good alignment, instead of a positive check, when deciding whether to turn on the player. He now should behave appropriately.

-------------------------------------------------------------------------
Crimson Dart Kensai Usage Fix

File DART08.ITM; a modified version of item definition file for the Crimson Dart, a +3 enchanted dart that returns to the thrower. It resolves the oversight of this dart being usable by Kensai. In Shadows Of Amn, though Kensai and Cavaliers were not supposed to use missile weapons, they were allowed the use of hurled missile weapons (throwing daggers and axes) as restricting this would also restrict the use of their melee capabilities. However, darts were not restricted, possibly due to oversight. In Throne Of Bhaal this was changed; Kensai and Cavaliers cannot use darts anymore, and all darts were restricted from both classes except for this one from Kensai only.

-------------------------------------------------------------------------
Cumulative Effect Spells and Abilities Fixes

The .SPL files SPPR111, SPPR113, SPPR210, SPPR306, SPPR406, SPPR412, SPPR513, SPWI107, SPWI201, SPWI319, SPWI320, SPWI702, SPWI803, SPCL423, SPCL907, SPCL913, SPCL914 and SPCL917 contained in this archive are modified versions of Baldur's Gate 2 spell definitions for the priest spells Armor of Faith, Doom, Resist Fire/Cold, Protection From Fire, Defensive Harmony, Holy Power, Righteous Magic, the wizard spells Friends, Blur, Protection From Fire, Protection From Cold, Protection From The Elements and Protection From Energy, the Assassin Poison Weapon ability, and the high-level Throne Of Bhaal abilities Hardiness (warriors), Evasion, Greater Evasion and Avoid Death (rogues) respectively. They resolve the oversight of these spells being cumulative/stackable; their effects would add up over multiple castings. As verified with BioWare (specifically, Senior Designer David Gaider) spells (especially protection spells) should only be cumulative if explicitly indicated.

As well, other errors with these spells were resolved:
SPPR111 (Armor Of Faith) doubled missile protection relative to the other protections offered as the resource was (accidentally) duplicated
SPPR210 (Resist Fire/Cold) level 20 duration was far too high
SPPR412 (Holy Power) increases were being capped at level 18 rather than 20 as all other spells are
SPPR513 (Righteous Magic) at level 10, its Max. Damage effect was expiring one round early and at level 20 its portrait icon lasted a little too long
SPWI319 (Protection from Fire) increases were capped at level 18 rather than 20, it was providing an extra 25% magic fire resistance to the caster even if cast on someone else (if cast on oneself, Magic Fire resistance would be 75%.) Note that "Magic Resistance" will sometimes be seen casting this one a character with significant Magic Resistance but it does not interfere with the protection effects.
SPWI320 (Protection From Cold) as above: also was capped at level 18; it will also display "Magic Resistance" occasionally but this will not interfere with the protection it provides.

Thanks to Lord Selane for donating all the fixes for cumulative ToB abilities to my collection!

-------------------------------------------------------------------------
Drow Egg Guards Make Ust Natha Hostile Fix

File UDEGGS.BCS; a modified version of the AI scripting for the Drow Egg Guards in the Temple of Lolth in Ust Natha. It resolves a bug whereby the changes in the Drow being able to see invisible creatures in Throne Of Bhaal meant that it was nearly impossible to complete the quest to rescue Adalon's eggs without Ust Natha going hostile. the player is supposed to be able to complete this without killing them by being invisible, taking the eggs and leaving the egg chamber without other party members in their visible range. However with Throne Of Bhaal installed it was noticed that they were alerting Ust Matha and even talking to the player taking the eggs through the closed chamber door. They will now only react if a player character is visible to them nine seconds after the eggs are stolen.

-------------------------------------------------------------------------
Echoey Waukeen's Promenade Fix

File SNDRESRF.2DA; a modified version of the area sound effect resource definition file. It resolves a bug with this definition whereby Waukeen's Promenade (AR0700) was defined as having the area effect of an indoor stone building. This caused the sound effects here to be very echoey, and several players complained that it was annoying. I call this a "bug" as there was no echo in this area in Shadows Of Amn, and the resource that defined it as echoey was differently aligned than the others. It appears that it was a test entry that was forgotten about. It has now been removed.

-------------------------------------------------------------------------
Errard Alignment Fix

File SARMAG01.CRE; a modified version of creature definition file for the mage Errard, found in Saradush. It corrects his alignment, which was originally Lawful Evil, but he is wearing the Robe Of The Good Archmagi (good-aligned mages only can use it,) and he also plays a non-evil role in the Kiser plot that transpires there. His erroneous evil alignment could cause confusion if Detect Evil was used to determine the outcome of the Kiser plot. He has been changed to Lawful Good in alignment.

-------------------------------------------------------------------------
Fairy Dragon Familiar HP/Resistances Fix

File FAMFAI25.CRE; a modified version of the creature definition for the Fairy Dragon familiar, the familiar for Chaotic Good wizard spellcasters. It resolves bugs with the hit points and immunities of this familiar. All familiars' hit points doubled between Shadows Of Amn and Throne Of Bhaal, except this one, and its immunites to fire, magical fire and electicity were also missing, though no other familiars' elemental resistances were.

NOTE: If you are using a current save in Throne Of Bhaal and have a Fairy Dragon familiar already, DO NOT LET IT DIE or you may be unable to summon another one with this fix installed. It will not have any adverse effect if the familiar is summoned after the fix is installed.

-------------------------------------------------------------------------
Full Plate Armours THAC0 & Movement Rate Penalties

Files PLAT19.ITM, PLAT22.ITM and PLAT23.ITM contained in this archive are modified versions of the item definition files for the Limited Wish Full Plate +2 armour created by the wizard spell, Shruppak's Plate armour and Gromnir Il-Khan's Full Plate +2 armour. They removes an erroneous penalty of 1 to THAC0 and 2 to Movement Rate that was not stated in these armours' descriptions. These were all confirmed to be erroneous with BioWare.

-------------------------------------------------------------------------
Gauntlets Of Extraordinary Specialization Fix

File BRAC21.ITM; a modified version of the item definition for the Gauntlets of Extraordinary Specialization. It resolves usability bugs with these gauntlets. Though it is described as usable by fighters, paladins and rangers, dual-classed Assassins and Bounty Hunters to Fighters could not use them though dualled Swashbucklers to Fighters could, and Monks could use them, though  Barbarians, who are far closer to fighters, are restricted.

-------------------------------------------------------------------------
Globes Of Invulnerability Skull Trap Protection

Files SPWI406.SPL and SPWI602.SPL contained in this archive are modified versions of the spell definition files for the 4th and 6th level wizard spells Minor Globe Of Invulnerability and Globe Of Invulnerability respectively. They resolve the omission of these spells not protecting the wizard who cast them from the 3rd level wizard spell spell Skull Trap, either the wizard's own or an enemy's. Minor Globe and Globe Of Invulnerability protect against 3rd and 5th level and less spells respectively, so Skull Trap should not get through. The cause of this was that as area-effect spells do not target the caster, each was separately added in as a spell immunity in the effect tables whereas targeted spells were simply inclusive in the spell level immunity, but Skull Trap (SPWI303) was overlooked from the separate immunities.

Note that the effects of the Wand Of Lightning will not be resisted by the Globes as the effect of this wand is different from that of a cast spell. It only deals electrical damage without a casting level, distinct from a spell. Another thing to note is that though Spell Immunity: Necromancy may seem broken in the same way, it allows only Skull Traps cast by the wizard to be injurious; those from other casters are ineffective. This is due to it only protecting the wizard from spells cast by others; it doesn't prevent mistakes by the wizard. (This can be demonstrated by casting Spell Immunity: Evocation and then casting Magic Missile on the protected caster. They will injure the caster if not resisted by magic resistance.)

Thanks for Jesse M. aka Ghreyfain for donating this nice bugfix to my collection! (with a tiny touch-up from myself.)

-------------------------------------------------------------------------
Grandmaster's Armour Movement Rate Effect Fix

File LEAT24.ITM; a modified version of item definition file for the Grandmaster's Armour +6. It resolves bugs with the movement rate increasing effect of this item, exact the same to the ones that affected the Boots Of Speed. This was caused by the effect being defined internally as a Haste spell. Offhand attacks would be nullified, and backstabs would not work properly as the initiative round was doubled, meaning the character would become visible before the attack took place. As well, a real Haste or Improved Haste cast on the character would be nullified by the permanent Haste of the armour, and they would not receive the extra attacks these spells provide.

-------------------------------------------------------------------------
Imoen's Thieving Skills Fixes

The .CRE files IMOEN10, IMOEN211.CRE, IMOEN213, and IMOEN15 are edited creature definition files of the NPC Imoen, who was present in Baldur's Gate 1 as well at the beginning of the game and would join the protagonist.

In Baldur's Gate 1, she was a thief whose high intelligence made her an excellent choice to dual-class to a mage. In Baldur's Gate II, this has already been done: when first encountered she is a Level 7 thief/Level 8 mage dual-class (meaning that her thieving skills are forevermore locked into place.)

However, her original character profile in the press release before Baldur's Gate II indicated that she would be a Level 6 thief/Level 7 mage when first encountered. It must have been decided to change this but without adding 25 more thieving skills points as would happen when a true-class thief levelled up.

This can be verified by creating a human (important as other races such as halflings and elves receive thieving skills bonuses) thief with a DEX of 18 as Imoen's is. Their total thieving skill points with their high DEX modifying them will be 315 and they will start at Level 8. Imoen's thieving skill points sum to 265 at Level 7, for a difference of 50 or two levels' worth, as if she was still level 6. (There are IMOEN6.CRE and IMOEN.CRE files; the former must have been used as her template as it has the correct total for a 6th level 18 DEX human thief, but they are not used as NPC creature files, only for cutscenes and other game-internal purposes.)

Her thieving skills throughout Baldur's gate 2 are:

Pick Locks: 95%
Find Traps: 85%
Pick Pockets: 25%
Move Silently: 30%
Hide In Shadows: 25%
Detect Illusion: 0%
Set Traps: 5%

In deciding how to allocate the 25 missing points, I made the decision to concentrate on her strengths rather than her weaknesses, literally, as she is a poor choice for stealth & backstab due to her mediocre STR of 9; this can be fixed with a strength girdle but it's making assumptions to expect one. Set Traps would be a waste of points as failure to set them means they injure the character (Yoshimo is soon encountered who is a much better trap setter) and there are wizard/priest spells for getting rid of illusions that will work much better than 25% in Detect Illusion. I settled on finally perfecting her lockpicking with a slight addition (perfection at least in one thing is nice and is what any player-generated character strives for,) improving the life-saving Find Traps but not perfecting it so that there is still that wee bit of risk (no risk, no excitement) and improving Pick Pockets as it is a skill that can also be further improved by potions and devices to make her a viable pickpocket. I hope that these changes are found to be well-decided. The following stats. were changed in these files:

Pick Locks: 100%
Find Traps: 95%
Pick Pockets: 35%

The first update to the original fix also corrects a bug with her THAC0 onjoin at the start of the game being 18. A level 7/8 thief-mage dual is supposed to have a base THAC0 of 17 (this can be demonstrated as well in BG2 by creating a thief, lowering exp. and level to 40000 pts. and 7 respectively, then dualling to mage and levelling up to 8, Imoen's starting level.)

This most recent update for Throne Of Bhaal adds the IMOEN15.CRE file, which is the one used when Imoen is summoned in the Abyssal subplane.

*** NOTE: Installing this fix will NOT change her stats. immediately if she is present in your party. They will change the next time she joins your party from starting a new game, or joining the party at the Spellhold Dungeon or the Copper Coronet tavern.

Many thanks to Ryan B. for pointing this bug out!

-------------------------------------------------------------------------
Throne Of Bhaal Jaheira Romance Fix

File JAHE25.BCS; a modified version of the AI scripting for Jaheira. It resolves a bug with the starting of the Jaheira romance in Throne Of Bhaal. Manveru Telcontar (aka Michael Kurela) has worked the usual magic that he performed on the Shadows Of Amn romance. The initial check for the values of LoveTalk and the romance status carried over from Shadows Of Amn was faulty and is now resolved; the romance should continue correctly.

And many thanks to Manveru for his dedication to the Jaheira romance and the effort he's put into it. You can visit his webpage at http://worldzone.net/games/manveru/

-------------------------------------------------------------------------
Kangaxx Ring of Gaxx Pickpocket Exploit Fix

File HLKANG.CRE; an edited version of the creature definition file for Kangaxx the Lich. This files is intended as a bugfix.

It resolves an oversight leading to an exploit whereby Kangaxx could be pick-pocketed for the Ring Of Gaxx (or more than one, depending on the number of thieves attempting this simultaneously) when he first emerged from the sarcophagus in lich form. When he was then killed in Demi-Lich form after transforming upon the death of his first form, he would drop another Ring Of Gaxx, though this is supposed to be a unique item.

The fix has been somewhat simplified from the original, not requiring a separate item from the unmodified Ring Of Gaxx.

Thanks to Beige Tangerine for donating the first version of this bugfix to my collection!

You may visit Beige Tangerine at http://www.geocities.com/beigetangerine

-------------------------------------------------------------------------
Keldorn's Firecam Full Plate Armour Fix

File NPPLAT.ITM; an edited version of the item definition file for the NPC Keldorn's Firecam Full Plate Armour. It tightens the erroneously lax restrictions on the wearer, as this armour is only supposed to be wearable by Keldorn. It eliminates it being able to be worn by gnomes, half-orc, monks, any alignments but Lawful Good, and characters with WIS less than 16. It also eliminates the INT restrciction, as this could cause problems for Keldorn if Illithid INT Drain is encountered. There is little or nothing in the game that will drain WIS (only one item for players) and the STR requirement of 15 is a property of all Full Plate so was not altered.

-------------------------------------------------------------------------
Multiclass Thieves' Multiple Assassination Abilities Fix

The .2DA files LUBA1, LUBA2, LUCT0, LUFT0, LUMT0, LUTH2 and LUTH3 contained in this archive are modified version of high-level ability allocation files by class. They resolves the bug whereby multi-class thieves, but not single-class thieves, could choose the Assassination high-level ability on more than one level up, and thereby have multiple instances of it available during battles. It was confirmed with Senior Designer David Gaider that this ability is only supposed to be chosen once for both single and multi-class thieves.

-------------------------------------------------------------------------
Pantaloons Rewards Usage Fixes

Files SECRET01-4.ITM contained in this archive are modified versions of item definition files for the Big Metal Rod launcher, Pulse Ammunition, Frag Grenade and Scorcher ammunitions respectively. They resolve errors in usability with these items. As Easter-Egg reward items that require the player (unless cheating takes place) to play through both Baldur's Gate I and II and keep very specific items throughout the games, they are supposed to be usable by all characters, but instead the first two were instead restricted to a small group of classes, and the second two had an Intelligence requirement of 9 whereas the others did not. This was confirmed by Senior Designer David Gaider on the Black Isle General Feedback Forum. The last item of the set (the Big Metal Unit) is properly free of restrictions.

-------------------------------------------------------------------------
Rogue & Wizard Saving Throw Tables Fixes

Files SAVEROG.2DA and SAVEWIZ.2DA contained in this archive are modified versions of saving throw tables for Rogues (thieves and bards, including kits) and Wizards (mages and sorcerors, including kits and specialists.) They resolve the oversight with the saving throws for these classes not decreasing as they are supposed to at level 21. All other classes get their final reductions at level 20 or before, but the original Level 20 Rules set from Baldur's Gate 1 is still in effect, though characters in Shadows Of Amn may reach either level 40 or eight million experience points, whichever is first.

-------------------------------------------------------------------------
Shield Of Harmony Dispellable Protections Fix

File SHLD25.ITM; a modified version of the item definition for the Shield Of Harmony, a shield that protects against mind-control magic. It resolves bugs with the effects provided by this shield having their dispellable flags set. Only spell effects, not held objects, should be dispellable; no other held devices special effects are like this. The result of this was that if the wielder had Dispel Magic cast on them (even from an ally,) was struck with a dispelling weapon, entered a Dead Magic Zone or was hit by a beholder Anti-Magic Ray the protections against mind-control magic would invisiblyt disappear.

-------------------------------------------------------------------------
Short Bow +1 Graphics Fix

File BOW06.ITM; a modified version of item definition file for the Short Bow +1. It corrects bugs with the graphics used by this bow; the icon, held graphic, and description picture were those of the Composite Long Bow +1. This did not affect the bows use in any way. 

-------------------------------------------------------------------------
Baldurdash Shadows Of Amn Fixes Conflict Resolution (SPELL.IDS)

File SPELL.IDS; the original copy of the spell ID # to name mapping table for Baldur's Gate II: Throne Of Bhaal.

It is intended to resolve the problem caused by installing Throne Of Bhaal overtop of the Baldurdash bugfixes without running the Throne Of Bhaal Pre-Install Prep. Uninstaller that I created beforehand.

Since the file creation date on the SPELL.IDS that was inclusive in one of the fixes was newer than that in Throne Of Bhaal, it would not be overwritten when Throne Of Bhaal was installed. All new effects that were defined as spells (Demogorgon's appearance, the Deck Of Many Things, Lum's Machine stats. changes, and more) would therefore not work anymore.

-------------------------------------------------------------------------
Staff Of The Magi Fix

File STAF11.ITM; an edited version of the item definition file for the Staff Of The Magi. It resolves the complete omission of its Protection From Evil equipped ability. Though this is mentioned in the description and the colourglow is there, no Protection From Evil was provided. This was noticed and mentioned by several players who cast demon-summoning spells during battles and wondered why the demons turned on them rather than their enemies. Senior BG2 Designer Dave Gaider on the Interplay WebBoard wasn't able to confirm that this was a bug at present, but did state that it appeared to be an omission that will be passed to those that fix bugs for checking. As the description does mention this ability, I have restored it and I deem it close enough to being a bug to be called one, barring a contrary decision from BioWare.

The update to this item added while creating Throne Of Bhaal bugfixes also fixes the bug with the equipped AC bonus and Protection From Evil ability that they were being dispelled by Dead Magic Zones, beholder Anti-Magic Rays and Dispel Magic.

-------------------------------------------------------------------------
Tears Of Bhaal Fear & Selfish Test Results and Already-Evil Alignment-Shifting Fixes

Files TEARDOOR.BCS, AR2900.BCS, SPIN350.SPL, SPIN747.SPL, SPIN749.SPL, SPIN751.SPL, SPIN751.SPL, and SPIN753.SPL,  are edited (and newly created) versions of the Baldur's Gate 2 script files for the Abyssal Door opened by the Tears Of Bhaal prior to the very final battle with Jon Irenicus and the area script for the main Abyssal area, and "spell" definition files for the abilites granted by the Eyes. They resolve four errors: first, the variable result of the Greed Test was being used for the Fear Test, due to what appears to be an unedited cut-and-paste in the script file, so the path the player took in the Fear Test was inconsequential and never used. 

Second (an addition to the original fix): the Selfish test results were using the wrong variable name, so the "good path" result was always the one being awarded the player, and the player's alignment would not change if the "evil path" were taken.

Third (another addition): The player was not being informed that their alignment had changed to Neutral Evil upon taking the "evil path" to any of the tests, resulting in many players being puzzled why their alignment had suddenly shifted. Now this change will appear in a floating message over Player 1.

Fourth: If the protagonist was already of Evil but not Neutral Evil alignment and took the "evil path" for any of the tests, then alignment would shift to Neutral Evil. This was confirmed by BioWare Senior Designer David Gaider to be not supposed to happen.

Thanks to Beige Tangerine for donating the fix for non-NE Evil protagonists changing alignment to my collection! You can visit Beige Tangerine at http://www.geocities.com/beigetangerine/

Thanks to Eddy L.O. Jansson (who made all my bugfixes possible with his Infinity Engine File Format Hacking Project) for donating the Fear Test component of this nice bugfix to my collection! You can visit Eddy L O Jansson at http://gazonk.org/~eloj/

-------------------------------------------------------------------------
Vhailor's Helm Simulacrum Magic Resistance Failure Fix

File WA2HELM.ITM; a modified version of the item definition for Vhailor's Helm. It resolves the bug of the Simulacrum ability of this helm not bypassing Magic Resistance, though it is an a beneficial ability, and the wizard spell Simulacrum will not fail on a magic-reistant wizard. The Magic Resistance checks have been removed.

-------------------------------------------------------------------------
Watcher's Keep Lowest Level Outdoor Area Trigger Fix

File AR3000.ARE; a modified version of area definition file for the outdoor area containing Watcher's Keep. It resolves a slight bug with the trigger on the lowest-level door out the outside, the door to the Imprisoned one's realm. The trigger area stuck out a few pixels under the door, meaning that it was possible to go directly to this level without going through the rest of the Keep as one is supposed to (several difficult tests are required to enter this area.)

-------------------------------------------------------------------------
Watcher's Keep Temple Level 'Stolen' Halberd Fix

File GORSTA09.CRE; a modified version of creature definition file for one of the "statues" in the temple level of Watcher's Keep. It resolves a slight bug with the +2 Halberd dropped by this statue. If the player attempts to sell it, it will be found to be flagged as shoplifted and cannot be sold. The "statue" that drops it is that of a fighter, not a thief, and this flag is only supposed to be set for items shoplifted from a store.

-------------------------------------------------------------------------
Throne Of Bhaal Weapons Proficiency Table Fix

File WEAPPROF.2DA; a modified version of weapon proficiency allowance table. It resolves the following errors in the weapon proficiency allowances:

Fighter/mage/clerics and ranger/clerics were only being allowed one proficiency point in Two-Handed instead of two, as all other warrior multiclasses are allowed

Cleric/thieves were being allowed a proficiency in darts though any multiclass of cleric cannot use darts

Fighter/druids, fighter/mage/clerics and ranger/clerics were only being allowed two proficiency points in Two-Weapon (dual-wielding) whereas all other fighter multiclasseses are allowed three (rangers also were specifically stated to be the most Two-Weapon class, getting two free proficiencies on character creation)

-------------------------------------------------------------------------
White Dragon Scale Armour Usability Fix

File CHAN20.ITM; a modified version of item definition file for the White Dragon Scale armour. It corrects the usability for this armour, which was erroneously allowed to be used by Shapeshifters, who may not wear armour, and disallowed from Thief/Mages, though they may use thief-compatible armour and this armour is. Even though it is defined as enchanted chainmail, and looks like plate, it was confirmed with Senior Designer David Gaider of BioWare that all other classes than Shapeshifters and Avengers (and single-class wizards of course) are permitted to wear it, including thieves and their multiclasses. 

-------------------------------------------------------------------------
Wild Surge #17 Target Gold Destruction Fix

File SPWM117.ITM; a modified version of spell definition file for Wild Surge # 17. It resolves a bug with the targeting of this Wild Surge, which causes the destruction of gold pieces in inventory, 80% of the current gold. It is supposed to affect the caster, not the target, but due to an incorrect parameter was affecting the target. The result of this was that 80% of party gold could vanish from the effects of the Quasits casting Wild Surges in the Wild Magic Zones in Watcher's Keep, even if no spells were cast by the player/party to avoid unwanted effects such as this.

The caster is listed as the one receiving the effects in the Wild Surge table on page 38 (in the English language version) of the Throne Of Bhaal manual, and this mistargeting was confirmed as a bug by Senior Designer David Gaider of BioWare (who also checked with other BioWare designers on this) on the Black Isle messageboard 2001-Aug.-17.


-------------------------------------------------------------------------
Wish Double-Length Improved Alacrity Fix

File SPWISH17.SPL; a modified version of the spell definition for Wish effect #, a double-length Timestop and Improved Alacrity. It resolves a bug with the Improved Alacrity effect of this spell. An incorrect effect was being used due to an old mapping of this effect number from Shadows Of Amn; rather than erasing the delay between spells to the next round boundary, it was instead lowering spellcasting speed by 10 (to zero if the spell's speed was less than 10) but the same pause between casting to the next round boundary was still present. As well, an extraneous blank message would appear in battletext when the effect took place; this was removed.

Thanks to Lord Selane for donating this nice bugfix to my collection!


-------------------------------------------------------------------------
Shadows Of Amn Fixes Imported Unchanged From Previous FixPacks
-------------------------------------------------------------------------
Acid Arrow Enchantment Fix

File AROW04.ITM; a modified version of the Baldur's Gate 2: item definition for the Acid Arrow, a magical arrow that does acid damage in addition to the normal piercing damage of arrows. This file is intended as a bugfix for this item.

It resolves a bug with the arrow giving a THAC0 and damage bonus of 1, but not being enchanted all, which left it unable to to hit enemies that require +1 enchantment to hit, such as mummies (not greater mummies) and werewolves. Senior designer Dave Gaider confirmed that this was an omission.

Thanks to Beige Tangerine for donating this nice bugfix to my collection!

You may visit Beige Tangerine at http://www.geocities.com/beigetangerine/

-------------------------------------------------------------------------
Adjatha The Drinker Healing Magic Resistance Failure Fix

File SW1H35.ITM; a modified version of the Baldur's Gate 2: Throne Of Bhaal item definition for the longsword Adjatha The Drinker. It resolves an bug whereby the Heal effect of this sword, which heals 1 hit point of damage of the wielder every time the sword strikes an opponent, is subject to the Magic Resistance check and subsequent failure if the wielder has significant Magic Resistance. Beneficial (ie healing) spells are not supposed to be subject to this check.

Note that the "Magic Resistance" message may still appear, but the 1 HP of healing will occur nonetheless.

-------------------------------------------------------------------------
Aerie/Anomen Dialog Loop Fix

File BAERIE.DLG; an edited version of the interaction dialog definition file for the NPC Aerie. It resolves the dialog loop that occurs if both Aerie and Anomen are present in the party, and Anomen has failed his knighthood test.

-------------------------------------------------------------------------
Aerie/Quayle Dialog Loop Fix

File AERIEJ.DLG; an edited version of one of the dialog definition files for the NPC Aerie. It resolves a dialog loop that occurs between Aerie and her "uncle" Quayle, if she is summoned back to the circus by Quayle's request in order to initiate the Raelis Shai quest and at the same time is having a romance with the protagonist (or with Haer'Dalis.)

Thanks to Beige Tangerine for donating this nice bugfix to my collection! (With a little touch-up from myself.) :^)

You can visit Beige Tangerine at http://www.geocities.com/beigetangerine

-------------------------------------------------------------------------
Alignment By Class Table Fix

File ALIGNMNT.2DA is an edited version of the Baldur's Gate 2: Throne Of Bhaal alignment tables of possible alignments for each character class. It resolves an error whereby all multi-class thieves (Fighter/Thief, Fighter/Mage/Thief, Cleric/Thief, and Mage/Thief) were restricted from all Lawful Alignments (Lawful Good/Neutral/Evil) rather than just from that of Lawful Good, as per AD&D standards. Single-class thieves were correctly restricted only from Lawful Good alignment.

Although on first hearing it seems as this should be the case for all thieves (no Lawful alignment) the AD&D definition of Lawful doesn't really count "Lawful" as only the rules of one's government, but also the rules and orders given by one's organization and group, which certainly may not have good intent! If a character follows the orders of his superior over his own, then he is Lawful, if not, he is not Lawful. He is allowed to break those orders and remain Lawful only if he is either Lawful Good or Lawful Evil, and those orders are unquestionably opposite to his good or evil alignment. So if a Lawful Neutral thief was told by her employer to do something a thief does (steal an object, infiltrate a building, or spy invisibly on a character) she would do so as she is Lawful (follows her duties and orders) and Neutral (doesn't care of the morality of them.)

-------------------------------------------------------------------------
Amulet Of Power Usability Fix

File AMUL21.ITM; a edited version of the Baldur's Gate 2: Throne Of Bhaal item definition for the Amulet Of Power. It resolves the bugs of this amulet being wearable by barbarians and monks, who are not spellcasters, but not paladins and rangers, who are. The amulet should be available only for all spellcasting classes (Mage/sorceror, bard, druid, cleric, paladin, and ranger.) This was confirmed by Senior Designer David Gaider on the Black Isle messageboards, who also confirmed that Inquisitor paladins should have access to it though they cannot cast priest spells as their innate abilities are spell-like and they are members of a spellcasting class. Its protection from level drain will not be useful to an Undead Hunter paladin.

-------------------------------------------------------------------------
Aran Linvail Chapter 7 Return To Spellhold & Reputation Check Fix

File ARAN.DLG; an edited version of the Baldur's Gate 2: Throne Of Bhaal dialog file for the character Aran Linvail, Shadowmaster of Athkatla. It resolves two bugs: first that if the player sides with the Shadow Thieves, if Aran Linvail is spoken to in Chapter 7, he will send the player to Brynnlaw again. As there is nothing more to do there, the player is stuck. This was resolved by adding a missing chapter check for 7 in addition to the one for 6 into his dialog.

The second (update) bug fixed concerns the dialog with Aran requesting the Shadow Thieves' assistance fighting Bodhi. If the protagonists' Reaction (combination of Charisma and Reputation) is low, the protagonist can still argue that help should be given, and Aran is then supposed to accept or refuse based on the protagonist's reputation alone (10 or higher is sufficient.) This was mismatched to a second check for Reaction and Aran's response then mentioned Reputation, which was confusing.

Thanks to Beige Tangerine for donating the Chapter 7 fix component to my collection!

You can visit Beige Tangerine at http://www.geocities.com/beigetangerine

Thanks to Reiella Darksythe for pointing out the Reputation/Reaction mismatch bug!

-------------------------------------------------------------------------
Arbane's Short Sword Fix

Files RESUNA.CRE and SW1H27.ITM contained in this archive are edited versions of the creature and item definition files for the character Suna Seni and the Short Sword Of Arbane respectively. They resolve two bugs with Arbane's Short Sword, which Suna Seni carries and drops when killed. When originally found, its daily Haste ability will have 0 charges, which is confusing as it will only be saleable for 1 gold piece, and the player will think that it is broken, though tt will recharge after 1 day. The charge is not being used by her in combat, as it has 0 charges even before this. It now has one charge.

The second bug was that the sword provides some extra immunities while held. It appears that the immunities were copied from the Ring Of Free Action as there were extraneous resources providing immunity to Grease, Web and Entangle, but not the Free Action effect that is also required, so the player could still be stuck in place without the animation indicating why if caught in one of these effects. Note: the sword also provides immunity to Stun, but this does appear to have the proper resources so may have been intentional, but is missing from its description.

-------------------------------------------------------------------------
Area Type Flag Various Fixes

Files AR0303, 305, 307-12, 315-17, 331, 418, 501, 504-8, 512, 521, 526, 601, 606, 706, 804, 1002, 1101, 1106, 1203, 1402, 1501, 1608, 1610, 2002, 2603 and 2901-5 (all end with .ARE extensions) contained in this archive are edited versions of area definition files. They resolve minor errors with the area type listed in the definitions, ie dungeons listed as normal areas and vice versa. These errors did not have any noted effect on gameplay; sometimes they would cause a party member's area reaction to be out of place (one example is Valygar's dungeon reaction going off in his own cabin; he then says "...dark, foul magic is attracted to these pits like flies." and indoor city areas with no one in them would sometimes cause a reaction as if it were noisy and crowded.)

The update to this set of fixes added another fix to AR2603.ARE, which resolves the bug with the Tethir Forest cabin (Coran's) where the entrance was not party-required but the same door exiting was, so if one party member went in they would be stuck until the rest of the group entered and left together. It also merges in the AR2002.ARE file, which is Mazzy's home in Trademeet, which had the same problem.

Thanks to Beige Tangerine for contributing the fix for the first of these (Irenicus' dungeon, AR0601) to my collection!

You can visit Beige Tangering at http://www.geocities.com/beigetangerine

-------------------------------------------------------------------------
Arkanis Gath Infinite Spawn & Spawn When Workng For Bodhi Bugs

Files MVALLY.BCS, MVALLY2.BCS and STDEATH.BCS are edited versions of the AI script files that control the appearance of Arkanis Gath if the player attacks the thieves or otherwise makes an enemy in Mae'Var's Guildhall while on a quest there. This causes Arkanis Gath to appear, and he will kill the player character instantly, ending the game, unless the player character has cast Protection From Magical Weapons on himself. They resolve a bug where Arkanis Gath would continually respawn until there were literally hundreds of copies of him. The reason for this is that as he is designed to kill the protagonist instantly, and it was not planned that the protagonist might cast Protection From Magical Weapons thus becoming immune to Arkanis Gath's attacks, so there was no check done that he had already been spawned, therefore would spawn repeatedly.

They also resolve an error whereby he spawns even when the protagonist has not started officially working for Aran but is doing the thief stronghold quest, but then decides to work for Bodhi. He will even spawn after being killed in one of Bodhi's quests. As he is only present to prevent both avenues to Spellhold from being closed, he should not appear if the protagonist decides to wipe out Mae'Var's guildhall for whatever reason at this point.

Also note that although Arkanis Gath was designed to be unkillable, he can be killed by shapechanging into a Mind Flayer with the scroll of Shapechange or Limited Wish's "I wish to be anything..." option, then casting Protection From Magical Weapons and summoning, then attacking him. However, you could be unable to finish the game by doing this!

Thanks to Karzak for pointing out the second bug!

-------------------------------------------------------------------------
Avenger Shadow Dragon Scale Usability Fix

File LEAT19.ITM; a modified version of the item definition for the Shadow Dragon Armour. This file is intended as a bugfix for this item.

It resolves a bug whereby Avenger druids, who are supposed to be able to wear leather armour or equivalent (excluding studded leather due to the metal components) could not wear this armour, and Shapeshifter druids could, though they may wear no armour at all as a kit restriction. This was confirmed as a bug by senior designer David Gaider on the Black Isle message boards.

Thanks to Beige Tangerine for donating this nice bugfix to my collection!

You may visit Beige Tangerine at http://www.geocities.com/beigetangerine/

-------------------------------------------------------------------------
Azuredge Axe Fixes

File AX1H10.ITM included in this archive is an edited version of the item definition for the weapon Azuredge, a +3 throwing/melee axe intended for slaying undead creatures. Note that this weapon cannot be used by characters of evil or neutral alignment. There were five problems with this item, all as per its description:

1) The item is supposed to destroy undead creatures if they fail a Save Vs. Death, and it didn't for most undead creatures. This was occuring because this ability was defined as the wrong type for undeads; most are immune to it.

2) The Save Vs. Death was supposed to be at a -4 penalty, but there was no penalty.

3) The item did far too much damage against all creatures when thrown, as its throwing damage was set as 3d6 instead of 1d6 as it should have been.

4) The item was supposed to do an extra 4 points of damage to undead that made their saving throws, and it didn't.

5) The item's icons to choose between melee or throwing ability were the same, making it difficult to choose.

I changed the instant-death vs. undead ability to be correct, so that all undead that can be hit by this axe (+3 enchantment level) now have to make the Save Vs. Death. I added the -4 save penalty to match the description. I also dropped the thrown damage to 1D6 as throwing axes are. As the "extra" 4 damage vs. undead cannot be changed as it is hard-coded into an item resource, as this is a +3 axe I changed the melee and thrown damage to 1d6+3 to match other +3 axes. I also changed the icon for thrown use to the standard throwing-axe icon to make it easy to choose between thrown and melee abilities.

-------------------------------------------------------------------------
Barkskin Armour Class Bonus Fix

File SPPR202.SPL; a modified version of the spell definition for the 2nd level priest spell Barkskin. It resolves a bug with the Base Armour Class granted by this spell. This is supposed to decrease by 1 per 4 levels of the caster. Instead, it would decrease at levels divisible by 4, as it is supposed to, but on the next level-up would jump right back to 4 again (which is amount for a priest between levels 8 to 11.) The provided Armour Class bonus is now correct for all levels (it caps at AC 1 at level 20.)

As well, an error with the expiry sound for the spell occurring 42 ticks into it regardless of its duration was fixed, and the spell was made non-cumulative if cast multiple times (the saving throw bonus was cumulative previously.)

-------------------------------------------------------------------------
Beholder Death Ray Spell Fix

File SPIN991.SPL; an edited version of the spell definition file for the Beholder Death Ray. It resolves a bug with this spell whereby it would sneak through a Protection From Magic scroll and disregard Magic Resistance, killing the affected character instantly if they failed a Save. Vs. Death.

-------------------------------------------------------------------------
Berserker Enrage Stun Immunity Fix

File SPCL321.SPL; an edited version of the ability definition for the Berserker's Enrage ability aka Berserk Mode. It resolves the bug of the ability failing to provide immunity to Stun as it is supposed to. This was confirmed by senior designer David Gaider on the Black Isle message board.

-------------------------------------------------------------------------
Blackrazor Portrait Icons Fix

File MISCBC.ITM is an edited version of the item file for the weapon Blackrazor, a +3 longsword with many special abilities. This fix adds the proper icons and text strings for the abilities of Blackrazor. The sword has always had the correct abilities, but it was lacking the portrait icons and text notification that should appear when the effects are activated.

Specifically, the new file adds icons for immunity to charm (i.e. "Mind Shield") and regeneration when the sword is equipped. It also adds portrait icons for the 15% of hits where Blackrazor hastes and strengthens the wielder. Finally, the sword now displays messages for its level draining and healing abilities.

As well, an error with the provided Strength bonus was resolved whereby it was appearing every time the sword struck an enemy rather than the 15% of the time the other effects did, as the effects are always supposed to appear together.

Note that the contrary to rumour, the abilities of this sword were not "nerfed" reduced for the Throne Of Bhaal expansion. Instead, anyone who had been using this version would find that the old one without the icons and message would return, which made it appear as though the abilities were gone as well.

Many thanks to Beige Tangerine for donating this nice bugfix to my collection!

You can visit Beige Tangerine at http://www.geocities.com/beigetangerine/

-------------------------------------------------------------------------
Bodhi's Lair Inaccessible Fix

File AR0800.BCS is an edited version of the area control script file for the Athkatla cemetery area. It is intended as a bugfix for this file.

It resolves a bug whereby if the player sided with Bodhi and performed her first task of retrieving the Shadow Thieves' shipment for her, they were unable to gain access to the underground crypts to deliver the shipment to Bodhi as the door to the underground was unpickably locked.

The reason for this was that if Bodhi was first met underground or in a crypt, anywhere rather than aboveground in the main area, the command to open the door is in her dialog script and only refers to the door's name without its area; therefore the door to unlock and open would then be in a different area so this would not occur.

I added checks to the script for the area the door is in that tests for the game being in the correct chapter(s), whether the player is working for Bodhi and whether the door has been unlocked before, and then unlocks and opens the door if it should be in this situation. It will only do this once so that the player may close the door if desired (it won't lock again if closed.)

*** Note: This fix will take effect immediately on load of the affected savegame.

-------------------------------------------------------------------------
Boots Of Speed Fix

File BOOT01.ITM; a modified version of the item definition for the Boots Of Speed. Several bugs with the effect of these boots are resolved:

1) The item was defined as a permanent Haste spell with some flags altered, which suppressed a real Haste spell from being applied to the wearer
2) The effect doubled the initiative round. This meant that the first attack was wasted; a character with only one attack per round might stand around for up to two rounds before making the first attack
3) Because the doubled initiative round wasted the first attack, a character who tried a backstab would come out of invisibility before the first attack was actually made, leaving them vulnerable with an uninjured enemy
4) The most recently noticed effect: Haste in all forms suppresses off-hand attacks when dual-wielding, so wearing the unfixed Boots eliminated off-hand attacks

Many thanks to Beige Tangerine for improving the Boots fix to give the same movement bonus to all characters!

You can visit Beige Tangerine at http://www.geocities.com/beigetangerine/

-------------------------------------------------------------------------
Brine Potion Wizard Slayer Usability Fix

File MISC9Y.ITM; an edited version of the item definition file for the Brine Potion item. It resolves an omission whereby Wizard Slayers could use this potion. Wizard Slayers are restricted from the use of all magical items including potions, such as this one, other than healing potions (which was a change in Throne Of Bhaal from previous.)

Thanks to Beige Tangerine for donating this nice bugfix to my collection!

You can visit Beige Tangerine at http://www.geocities.com/beigetangerine

-------------------------------------------------------------------------
Captain Arat Dialog Fixes

Files KPCATP01.DLG and AR1300.BCS contained in this archive are edited versions of the dialog definition file for Captain Arat, found in the D'Arnise Keep area, and its area control script respectively. They resolve two bugs: firstly, where he would sometimes react as though the player had opened the drawbridge (and thus liberated the Keep) before anyone actually had, and secondly, the exploit of talking to him unlimited times for Flame Arrows. He will now only give one quoit of 20, though if he is talked to after this he will say he is giving more, but will not do so. You cam pick his pocket for a second quoit.

Thanks to Beige Tangerine for donating the drawbridge component of this bugfix to my collection!

You can visit Beige Tangerine at http://www.geocities.com/beigetangerine/

-------------------------------------------------------------------------
Carsomyr Base Damage Fix

File SW2H10.ITM; an edited version of the item definition file for the Holy Avenger aka Carsomyr two-handed paladin's sword. It resolves a problem with the sword's base damage being 1d10+5, rather than the 1d12+5 that is stated in the description. This is not including strength or other bonuses, such as the 5 points of magical damage it does vs. Chaotic Evil opponents.

Note: When Carsomyr is upgraded in Throne Of Bhaal, its damage becomes correct.

Thanks to Caelestis for pointing this bug out!

-------------------------------------------------------------------------
Cat Familiar No Attacks Fix

File HASTRING.ITM; a modified version of the "item" definition for the Cat familiar's haste device. It resolves a bug with this item that caused the Cat familiar to not have any attacks. A reversed pair of effect resource flags caused the Cat's attacks per round to be set to zero, rather than increased by 1.

-------------------------------------------------------------------------
Chromatic Orb Fixes

Files SPWI118.SPL and SPDR101.SPL contained in this archive are edited versions of the spell definition files for the 1st-level wizard spell and Avenger druid crossover wizard spell Chromatic Orb. They resolve four errors with this spell/ability:
1) The level one Blind effect's Armour Class penalty was being applied to the caster instead of the target
2) The level seven Stun effect bypasses the target's Magic Resistance, and the Stun could not be dispelled
3) The level ten Petrification effect bypassed the target's Magic Resistance
4) The level twelve Slay effect bypassed the target's Magic Resistance

Thanks to Beige Tangerine for donating these nice bugfixes to my collection!

You can visit Beige Tangerine at http://www.geocities.com/beigetangerine

-------------------------------------------------------------------------
City-Of-Caverns Heal Party Magic Resistance Failure Fix

File SPIN923.SPL; a modified version of the spell definition for the the the "Heal Party" spell cast prior to the battle with the Ettin in the City-Of-Caverns. It resolves the problem with this spell not bypassing the Magic Resistance check, so failing on characters with a significant Magic Resistance. Curative and other beneficial spells are not supposed to do this.

Thanks to Beige Tangerine for donating this nice bugfix to my collection!

You may visit Beige Tangerine at http://www.geocities.com/beigetangerine/

-------------------------------------------------------------------------
Cursed Scroll Of Ailment Offensive Use Exploit Fix

File SCRL17.ITM; an edited version of the Cursed Scroll Of Ailment item. It eliminates the exploit of using the scroll as an offensive weapon by "targeting" an opponent with it. The scroll is cursed, and kills its reader in seconds if a Save Vs. Death is failed. This means that any difficult enemy could be brought down instantly with it by failing their Save Vs. Death.

Although this may seem like an unfair restriction against the use if an intelligent tactic: AD&D guidelines on accursed scrolls indicate that their curse can't be targeted against an enemy; they are activated merely by reading the title of the scroll without attempting to cast it as other scrolls are. So this exploit should not be present.

Thanks to Beige Tangerine for donating this nice bugfix to my collection!

You may visit Beige Tangerine at http://www.geocities.com/beigetangerine

-------------------------------------------------------------------------
Detect Evil Magic Resistance Failure Fix

Files SPPR104.SPL, SPCL212.SPL and SPWI202.SPL are edited versions of the priest, special ability and wizard spell definition files of the spell Detect Evil, intended to resolve a bug with its function.

This spell detects emanations of evil from creatures in the area. Because the magic does not enter the creature, it is not supposed to be subject to the Magic Resistance check, whereas the magic of the Know Alignment spell does enter the target and is subject to Magic Resistance, Save. Vs. Spell (at -2 penalty) and being negated by devices or spells that protect against mind-control magic.

However, the Detect Evil spell was internally defined as a modified Know Alignment, returning results of Evil detection only, with no saving throw. This meant that on creatures with high Magic Resistance, it would fail.

I changed the flag for the "friendliness" of the spell (which does not change its effects as even previously casting it would not cause creatures to become hostile and it could be cast from invisibility) so that it now is classed as beneficial magic so is not subject to the check, with the following conditions:

* It will only not fail to Detect Evil due to Magic Resistance for the first six creatures that it tries; after that it checks regardless of alignment. Of course, if they are not Magic Resistant then the spell will work.
* If a non-evil Magic Resistant creature is in the first six, "Magic Resistance" may be returned, but that is a sure sign that the creature is not of Evil alignment.
* Party members will still be checked for Magic Resistance, but of course this doesn't matter as their alignment is known.
* Creatures immune to the spell level (1 for the priest and special ability version, 2 for the wizard version) will not be checked and "Spell Ineffective" will be shown.

However, for checking up to six non-party members without spell immunity, it reports if they are Evil flawlessly regardless of their Magic Resistance, which is a great improvement over what it would do previously. The Priest and Paladin Special Ability version seems to hardly fail due to Magic Resistance at all now.

-------------------------------------------------------------------------
Disappearing Daily Use Figurines Fixes

Files MISC3D.ITM, MISC3E.ITM, MISC3F.ITM and MISC7T.ITM contained in this archive are edited versions of the item definitions for the Golden Lion, Black Spider, Jade Hound and Moon Dog figurines respectively. They resolve the problem with these figurines caused by their temporary disappearance when used. If the character who used them dies before the summoning duration has expired and has not been raised by this time, then the figurine can't return to their inventory and therefore is permanently gone. This was resolved by dispensing with the disappearing effect, as the items use a daily charged ability and therefore can't be used again immediately; this does not change their function at all.

Thanks to Beige Tangerine for donating the first three files in this bugfix set to my collection!

You can visit Beige Tangerine at http://www.geocities.com/beigetangerine

-------------------------------------------------------------------------
Dragonslayer Sword Portrait Icon Fix

File SW1H32.ITM; an edited version of the item definition file for the Dragonslayer sword. It resolves an omission whereby the sword's regeneration ability appeared to not be working because the regeneration portrait icon did not appear when the sword was equipped. In fact the ability does work, now the icon will appear to confirm this.

Thanks to Beige Tangerine for donating this nice bugfix to my collection!

You may visit Beige Tangerine at http://www.geocities.com/beigetangerine

-------------------------------------------------------------------------
Drow Item Usability (and other) Fixes

Files DWBLUN01.ITM, DWCHAN01.ITM, DWCHAN02.ITM, DWCLCK01.ITM, DWHALB01.ITM, DWPLAT01.ITM, DWSHLD01.ITM, DWSPER01.ITM, DWSW1H01.ITM, DWSW1H02.ITM and DWXBOW01.ITM contained in this archive are edited versions of the item definition files for Drow Adamantium weapons and armour. They resolve usability bugs with this items. Specifically:

Flail +3 - Removed Beast Master 
Elven Chain +3 - Removed Archer, Stalker, Beast Master 
Adamantine Chain +5 - Removed Archer, Stalker, Beast Master 
Halberd +3 - Removed Beast Master
Full Plate +5 - Removed Archer, Barbarian, Stalker, Beast Master 
Shield +3 - Removed Monk 
Lance +3 - Removed Beast Master 
Scimitar +3 - Removed Beast Master; Added Monk 
Longsword +3 - Removed Beast Master 
Crossbow of Speed - Removed Kensai, Cavalier 

As well, excess effects from the Drow Scimitar +3 (DWSW1H02.ITM) were removed. This item appears to have been copied from the Shazzelim scimitar as it erroneously provided permament Vocalize protection while equipped, and also the resource whereby any Bard struck with it had to Save Vs. Death or die instantly. The colour effect to the Drow Halberd (DWHALB01.ITM) was also restored.

Note: BioWare addressed the bard-slaying bug of the Scimitar +3 in the 26498 patch, but the bug with Beast Master rangers still being able to use it was not addressed, and the Crossbow of Speed also appeared in the 26498 patch, but this did not fix the usability bug with Kensai being able to use it.

Many thanks to Beige Tangerine for donating these nice bugfixes to my collection!

You can visit Beige Tangerine at http://www.geocities.com/beigetangerine

-------------------------------------------------------------------------
Drow Longsword Protagonist Check Fix

File AR2500.BCS; an edited version of the area script file for Underdark Exit area. It corrects an error that allowed Drow Adamantine Longswords to bypass the removal/replacement check if they were being held by the protagonist.

-------------------------------------------------------------------------
Druid Messenger 'No Valid Replies Or Links' Fix

Files DRUIDAD.BCS and DRUIDAD.CRE contained in this archive are a newly created and modified version respectively of AI and creature definition for the unnamed druid messenger who summons the protagonist to the Druid Grove to become Great Druid. It resolves a rare bug with his dialog. If the level 14 druid player character in the group happens to not speak to him when he appears and leaves the area he is in, becomes Great Druid and returns to speak with him (he will still be at the same place,) the player will get the "No Valid Replies Or Links" dialog response from the messenger. As he only exists to advise the player to obtain the grove, he will now simply disappear if the grove has already been obtained as a stronghold.

-------------------------------------------------------------------------
Druid Multi/Dual-Class Stronghold Fix

Files AR1901.BCS and CECHALLE.DLG contained in this archive are edited versions of the area control and dialog files for the Druid Grove interior and Challenge Master Verthan respectively. They resolve an oversight whereby the dual-classed Fighter/Druid was overlooked in the checks for whether the druid's stronghold of the title of Great Druid and protectorship of the Grove were given. Because the level check of whether the player was level 14 or not checked the first (fighter) class, it was impossible with the level cap within Shadows Of Amn for a dual-classed Fighter/Druid player to have sufficient levels (with the experience point cap in place) to obtain the stronghold.

Fighters dualled to Druids with the experience point cap in place will now be able to obtain the Great Druid title and subsequent stronghold, as will those who have removed the cap and are playing Druids dualled to Fighters, or multi-class Fighter/Druids.

Thanks to Beige Tangerine for donating this nice bugfix to my collection!

You may visit Beige Tangerine at http://www.geocities.com/beigetangerine

-------------------------------------------------------------------------
Dwarven Thrower Usability/Damage Fixes

File HAMM06.ITM is an edited version of the item definition for the weapon called the Dwarven Thrower, a +3 warhammer only usable by Dwarves. It is unique in that it can be thrown as well as used in melee like other hammers. This file is intended as a bugfix for this item. Three issues are resolved:

Though the hammer was only supposed to be for dwarves, tieflings (the NPC Haer'Dalis) and half-orc PC's could use it.

It does 2D4+3 damage when thrown, and was supposed to do 2D4+3 damage in melee, but only did 2D4+2.

The icon for the thrown ability was changed (as the two were the same) to that of a lighter and more throwable hammer, so that the two abilities could be distinguished at a glance.

As well, I did make another version of this hammer that not only incorporates the fix, but also changes the thrown damage type from missile/piercing to blunt. This fix is also included in that file, also available from my webpage below.

Thanks to Beige Tangerine for the usability exploit component of this bugfix!

You can visit Beige Tangerine at http://www.geocities.com/beigetangerine

-------------------------------------------------------------------------
Edwin's Initial Spell Slots Fixes

Files EDWIN7.CRE, EDWIN9.CRE, EDWIN11.CRE, EDWIN12.CRE and EDWIN13.CRE contained in this archive are edited versions of the creature definition files for the NPC Edwin. They resolve an error whereby he had one too many spell memorization slots at each level upon joining the group. This may have been caused by his being a specialist (Conjurer) and therefore having one bonus spell per level, and this being factored into his slots by the developers, whereas the engine will automatically add this in and does giving him one too many spell slots. When he levels up for the first time, he loses spell slots, which is what caused this to be noticed.

-------------------------------------------------------------------------
Edwin's Nether Scroll Quest Fixes

Files EDWINJ.DLG, EDWIN.BCS, SPIN661.SPL, SPIN662.SPL and SPIN664.SPL contained in this archive are edited versions of one of the dialog definition files and the AI script file respectively for the NPC Edwin, and three "spell" files for three transformation effects. They resolve four bugs: first, in his quest to find (and use) the Nether Scroll, when the scroll is found, if the player chooses the second "We all found it, it's party treasure" dialog option when talking to Edwin about the scroll (which has little difference from the first,) then the quest never completes. This was due to a Global/Local variable mismatch.

The second bug resolved is that his tranformation from Edwinna back to Edwin doesn't restore his voice set properly. His Critical Hit and Weapon Ineffective sounds could be heard when merely selecting him.

The third bug resolved is that one of the sounds in the effect that gives Edwin a Lore and Saving Throw bonus has a Save Vs. Death throw allowed, so the effect may show "Save Vs. Death" when it occurs and no sound plays, which is confusing.

The fourth bug resolved is that after transformation, Edwin's animation was not proper. The reason for this was that the spell changing him to a female (and back to a male) stayed in his profile and thus was being constantly applied. This would cause his battle animation to be incorrect, his walking animation to make it look as if he was "floating" from place to place and also prevent the Boots Of Speed from working on him. These effects are unfortunately unavoidable while he is Edwina, but they are now properly removed when he is transformed back, whether by the mage Degardan or when he goes to the Abyss.

*** Note: This fix will prevent the stalled quest error from occurring, but if it has already occurred and the quest is stalled, do the following:

Quit BG2. Edit BALDUR.INI in the BG2 folder (Notepad works for this) and put the line
Debug Mode=1
under the [Program Options] line. Run BG2. Load the savegame. Press Ctrl-Space for a console. Put the pointer over Edwin so that his circle shimmers, then type EXACTLY into the console:
CLUAConsole:SetGlobal("ScrollStudy","LOCALS",1)
and press Enter. This should set the variable properly. Save the game (it's recommended to use a new save slot in case something went wrong.) Quit BG2 and edit BALDUR.INI to remove the line that was just added. Then rerun BG2 and load the save and play normally.

Thanks to Reiella Darksythe for pointing the dialog stalling bug out (and its cause!) Nice work!

-------------------------------------------------------------------------
Ellie The Festhall Cook XP Exploit

File PIRCOR05.DLG; an edited version of Baldur's Gate II dialog definition file for the character Ellie, the cook at Galvena's Festhall. It resolves an exploit whereby she could be repeatedly spoken to for 2,500 exp. points per character after starting the "Sleeping Potion Plot." Now, as her role in the plot is finished at this point, she leaves.

-------------------------------------------------------------------------
Enslaved Genie Pickpocket Exploit & Journal Entry Fixes

Files HELLGEN.CRE and HELLGEN.DLG contained in this archive are edited versions of the creature definition and dialog files, respectively, for the Enslaved Genie in the Abyss. They resolve two bugs. Firstly, an exploit of pickpocketing the genie for the Tear Of Bhaal he was holding, thereby allowing the player to keep the Blackrazor longsword with no repercussions, and secondly, that the journal entry for giving the sword back to the genie didn't appear if this was done, and instead appeared if the player decided to think about what to do first.

-------------------------------------------------------------------------
Flash Master Bruiser Mate Enchantment Fix

File BOLT07.ITM; an edited version of the item definition for the Flasher Master Bruiser Mate "bolt" made by the NPC Jan Jansen. It resolves the omission of this bolt being made by a mage (illusionist) and giving a +1 bonus To Hit, yet not being enchanted. Its enchantment level is now +1, matching its To Hit bonus. This was confirmed by Senior Designer David Gaider on the Interplay WebBoard.

-------------------------------------------------------------------------
Gauntlets Of Crushing Usability Fix

File BRAC19.ITM; a modified version of the item definition for the Gauntlets Of Crushing. It resolves usability errors with these gauntlets, which were flagged as unusable by Druids, though all other classes can use them and they are really only useful to Monks. They are now flagged as unusable by Kensai (who cannot wear gauntlets or bracers) and Wizardslayers (who can only use magical weapons and armour, though boots were considered as armour.)

To use:

Simply unzip the file BRAC19.ITM contained in this archive into the Override folder inside your folder, and quit/restart (if it's already running.)

Thanks to Beige Tangerine for donating this nice bugfix to my collection!

You may visit Beige Tangerine at http://www.geocities.com/beigetangerine/

-------------------------------------------------------------------------
Gauntlets Of Ogre Power Usability Fix

File BRAC06.ITM; an edited version of the Baldur's Gate 2 item file for the Gauntlets Of Ogre Power. It resolves the problem with Bards being unable to wear this item. it was confirmed with senior designer David Gaider that Bards are supposed to be able to use them, as they can wear other gloves that thieves cannot. 

-------------------------------------------------------------------------
Habib's 'Mighty Scimitar' Fix

File SW1H57.ITM; an edited version of the weapon definition file for Habib Khalid Achmed Allifif's "Mighty Scimitar." A bit of background: this character was somehow the winner of the "NPC Contest" held before Baldur's Gate 2 was released. Habib is a thief afraid of capture. If he is met in the temple of Ilmater in Waukeen's promenade, he throws his gold coin donations in and hits a party member for 2 points of damage. This doesn't cause a problem.

If he is met in the Docks district, he exclaims that "I will throw my mighty scimitar at your head" and then throws the weapon, a modified throwing dagger that creates two scimitars when it strikes the character. Whatever weapons they were carrying are replaced with the scimitars. The joke is supposed to be that the target caught them, as he then exclaims "...that usually works..." and leaves.

However, the resource that creates the scimitars is flawed. They only appear in the quick weapon slots in the main game screen. Going into the inventory screen, whatever weapons were there previously still remain, and trying to re-equip them or put any other weapons there to get rid of the scimitars in the game screen does nothing and returns the message "Magical weapon in use." This is the case whether or not the character can use the scimitars.

As the internal game resource is flawed, there is no way around this, so I simply nullifed the reference to the special ability that places the scimitars in the target's inventory.

*** Note: This will not resolve the problem if it has already occurred, but will prevent it from happening again. You can  cast Dispel Magic (temples will do this for a fee) or use Shadowkeeper to remove the scimitars from an affected character.

-------------------------------------------------------------------------
Haer'Dalis Pickpocketing & Spells Fixes

Files HAER10.CRE, HAER11.CRE, HAER13.CRE and HAER15.CRE contained in this archive are edited versions of the Baldur's Gate 2 creature definition files for the NPC Haer'Dalis. They resolve three bugs: first, whereby his Pick Pockets skill was far too low (25% at all levels.) Note that this bug cannot be resolved after he levels up until the T.O.B. expansion is released. The skill levels are now correct for his current level, but when he levels up then they will become far too high (as due to a bug in the kit resources, Blades do not receive 1/2 Pick Pockets skill as they are supposed to.)

The second bug resolved is that if he joined the party at level 15, he had no spells whatsoever memorized or scribed, and no memorization slots (briefly, no magery at all.) He now has a full spellbook that duplicates his next lower defined level (13) with a few bonus spells in the same pattern as his level 13 definition, with some of the more popular mage spells being added (Stoneskin and Lower Resistance being two.) Perhaps this will help to counter the accusation that he is a "weak NPC" as well.

The third bug is that he had one more proficiency (in Long Swords) at level 15 than 13, though rogues only gain proficiencies at levels divisible by 4, meaning that the player should be able to choose a proficiency for him at level 16.

Note: These only affect Haer'Dalis in Shadows Of Amn.

-------------------------------------------------------------------------
Haer'dalis Rescue From Mekrath Fix

File HAERDA.DLG; a modified version of one of the dialog definitions for the NPC Haer'Dalis. It resolves a bug with the rescue of Haer'Dalis from the wizard Mekrath. This can be done by either fighting Mekrath or by completing Mekrath's quest. However, if both occurred (and there is an choice in Mekrath's dialog to fight him after completing his quest) there was no appropriate response in Haer'Dalis' dialog if both the quest was completed and Mekrath was dead, Haer'Dalis would be unresponsive, and the quests involving him and Raelis Shai could not continue (nor could he join the group.)

-------------------------------------------------------------------------
Half-Orc Romance & Drow Item/Avatar Fixes

File BALDUR.BCS is an edited version of one of the main sequence scripts, which among many other things, controls which character races are eligible to become involved in "romances" with the NPC's Aerie, Anomen, Jaheira and Viconia, and is the "master" script for the game, operating no matter what the area, chapter or situation, while in the Shadows Of Amn areas.

Three bugs are fixed by this file:

1) It fixes a bug whereby a male Half-Orc protagonist was supposed to be able to have a romance with Viconia, but was not able to. I had previously noticed the "0" in place of the resource reference check for "HALFORC" but declined to correct this as a bug until BioWare confirmed that it was so, which they did. It could either have been caused by the script being developed before the HALFORC resource was in place, or it being there as "HALF_ORC" when compiled as this is the format "HALF_ELF" is in.

2) It eliminates the exploit of kicking a character out of the party in the Underdark (some can find their way out) loaded with Drow adamantine weapons/armour and then being able to use it when they rejoin the party later. Note that it is possible that the character could leave of their own accord while there.

3) It also restores the character's normal (non-Drow) appearance if they are kicked out and rejoin. This is applied when they join the party.

*** Note: If the character is kicked out while not in Drow form and rejoins outside the Underdark, you will still see the normal-form spell being applied, but this has no effect.  You will also see it just after exiting the Underdark.

The most recent update to this file added the fixes to Mazzy, as she also can find her way out of the Underdark.

-------------------------------------------------------------------------
Hallowed Redeemer Fix

Files KELDORN.SPL and NPSW03.ITM contained in this archive are an edited versions of the spell definition file that controls the spell cast by the NPC Keldorn's sword, Hallowed Redeemer +2, and the sword itself.

If he is injured, his sword casts this spell that does five points of "vengeance damage" against whoever harmed him. It does this without asking and there is no way of disabling it other than dropping the sword, so if he is injured in the streets of Athkatla while holding the sword before the protagonist has purchased the "Magic License" the Cowled Wizards will show up as if a party member cast a wizard spell.

This was resolved by changing the spell type to a Priest spell, which makes sense as Keldorn is a paladin (though only casts True Sight and Dispel Magic an Inquisitor. Note also the irony of Keldorn's Inquisitor paladin kit being designed to deal with unlawful spellcasters and his own sword making him into one.)

The update to NPSW03.ITM, the hallowed Redeemer itself, tightens up its restrictions as other characters were finding that they could use this sword.

Many thanks to Beige Tangerine for donating the spell component of this bugfix to my collection!

You can visit Beige Tangerine at http://www.geocities.com/beigetangerine/

-------------------------------------------------------------------------
Harp Paladin Exploit Fixes

Files MISC3M.ITM and MISC3O.ITM contained in this archive are edited versions of the item files for the Harp Of Discord and Methild's Harp, respectively. They resolve the bug of these bard-only harps being usable by paladins. While some complain that paladins continually harp about good and evil, this should be considered metaphorical. :^)

-------------------------------------------------------------------------
Healing Exploit Items Fixes

Files WA2AMU.ITM and WASPEAR.ITM included in this archive are edited versions of the items Sensate Amulet and Spear Of Kuldahar +3. These files are intended as bugfixes for these items.

Note that these items are only available with the Bonus Merchants, though the updates to this version are available for download on the internet (I mirror them.) If you have not installed this version, you will not be able to purchase or find these items without cheating them into your characters' inventory.

The Sensate Amulet and Spear Of Kuldahar items both give 5 and 8 bonus Hit Points respectively when they are equipped, but don't remove the bonus from the Current hitpoints when they are removed. The result of this is that an injured character can be healed indefinitely by repeatedly equipping and removing them. This is an exploit, players esp. in multiplayer games may want to remove this exploit in the interest of fair play.  The Spear and Amulet were fixed so that only the Maximum hitpoints are affected when it is worn, as the description says.

-------------------------------------------------------------------------
Heartseeker Bow THAC0 Bonus Exploit Fix

File BOW10.ITM; a modified version of the item definition for the Heartseeker Bow. This file is intended as a bugfix for this item.

It resolves a bug with the special ability of this bow with the daily THAC0 bonus ability, which led to an exploit. The THAC0 bonus was affecting all weapons, not just the bow. It has been changed to only affect missile weapons.

Thanks to Beige Tangerine for donating this nice bugfix to my collection!

You may visit Beige Tangerine at http://www.geocities.com/beigetangerine/

-------------------------------------------------------------------------
Helm Of Brilliane Magic Resistance Failure

File HELM16.ITM; a modified version of the item definition for the the Helm Of Brilliance. It resolves the bug whereby the spells cast by this helmet did not bypass the Magic Resistance check, so would fail if the wearer/caster had significant Magic Resistance.

Thanks to Beige Tangerine for donating this nice bugfix to my collection!

You may visit Beige Tangerine at http://www.geocities.com/beigetangerine/
-------------------------------------------------------------------------
Holy Smite Permanent Blindness Fix

File SPPR313.SPL; a modified version of the spell definition for the 3rd level cleric spell Holy Smite. It resolves a bug with the duration of the blindness caused by this spell when it was cast by either a 6th or 7th level cleric caster. The blindness is supposed to last one round, but was instead permanent due to a data type mismatch. This would have a particularly unfortunate effect on party members of evil alignment if they were accidentally hit by it, blinding them until Cure Disease Or Remove Curse was cast on them by a cleric party member or temple, or they were killed and raised.

Thanks to Beige Tangerine for donating this nice bugfix to my collection!

You may visit Beige Tangerine at http://www.geocities.com/beigetangerine/

-------------------------------------------------------------------------
Ihtafeer Pickpocket Exploit Fix

File TRRAK01.CRE; an edited version of the creature definition file for the Rakshasi Ihtafeer. It resolves an exploit whereby the player could pickpocket her and steal her head(!) which was an item that is required to deliver to the Djinn in Trademeet to finish the quest there.

-------------------------------------------------------------------------
Illithid Healing Magic Resistance Failure Fix

File SPIN958.SPL; a modified version of the spell definition for the Illithids' "Heal" spell which they cast on themselves when injured. It resolves the problem with this spell not bypassing the Magic Resistance check, so failing as Illithids all have significant Magic Resistance. Curative and other beneficial spells are not supposed to do this (and it doesn't really make sense that creatures as intelligent as the Illithid would fail to recognize this effect.)

Thanks to Beige Tangerine for donating this nice bugfix to my collection!

You may visit Beige Tangerine at http://www.geocities.com/beigetangerine/

-------------------------------------------------------------------------
Imnesvale Chicken Pickpocket Exploit Fix

File GEMCH02.CRE; a modified version of the creature definition for the chicken in Imnesvale that holds a Berjuril gem. It resolves the somewhat humorous oversight leading to the exploit of being able to pickpocket the chicken for the gem. As chickens lack pockets, purses, packs or any other external carrying cases, and the farmer nearby clearly states that the gem was shoved down the chicken's throat, it is unlikely that the gem could be obtained subtlely from the chicken (especially with both its owners watching) so this minor exploit has been eliminated.

-------------------------------------------------------------------------
Imp Familiar Melee Attack Fix

File IMP.ITM; a modified version of the "item" definition for the Imp familiar's default attack. It resolves the Imp's default melee attack having a leftover Poison resource that did nothing. If an attacked enemy failed its Save Vs. Death, then "Poison" would appear in the battletext, but the enemy wasn't poisoned. This effect appears to have been removed.

-------------------------------------------------------------------------
Improved Invisibility AC/Save Bonus Fix

Files SPWI405.SPL and SPDR401.SPL contained in this archive are modified versions of the spell definitions for the Wizard and Avenger Druid versions repectively of the spell Improved Invisibility. These file are intended as bugfixes.

They resolve the omission of the spells completely missing their stated bonus of 4 to Saving Throws and Armour Class. They are now provided for the spell's duration.

This will also affect most enemies' Improved Invisibility as well. There are three other variants of this spell present in the game, but two appear unused, and one is shared only by the Matron Mother Ardulace (who can't even cast it as it is not present in her AI scripting) and the Moon Dog produced by the figurine of the same name.

Note that these fixes make the spell non-cumulative (as BioWare has confirmed directly that only spells which implicity state that they are cumulative with themselves should be) so multiple sequential castings of this spell will not improve its bonuses.

-------------------------------------------------------------------------
Improved Mace Of Disruption Fix

File BLUN25.ITM; an edited version of the item definition file for the Improved Mace Of Disruption. It corrects the omission of the resources that suppress the "Levels Drained" string when the player wielding it is (succcessfully) protected from Level Drain by the mace. The protection works properly, but the erroneous "Levels Drained" string was confusing as it then appeared the mace wasn't working properly.

-------------------------------------------------------------------------
Inquisitor Hold Person Animation Fix

File SPCL233B.SPL; a modified version of the "spell" definition for the special resistances of the Inquisitor Paladin kit. It resolves an omission whereby although the Inquisitor is immune to Hold Person (this was applied properly) the "spinning circles" animation still shows over the Inquisitor's head when Hold Person is resisted through the immunity (instead of via a successful saving throw.) This caused many players to think that the Hold Person immunity was flawed. Note that this will only fix newly created Inquisitors; existing ones will have to put up with the ignorable flaw.


-------------------------------------------------------------------------
Keldorn Level 9 Proficiencies Fix

File KELDOR9.CRE; an edited version of the creature definition file for the NPC Keldorn. There are 4 creature files for this NPC (paladin Inquisitor kit,) so that his level can be approximately matched to that of the protagonist when he joins the party. However, in this one, his two proficiency points in Long Swords somehow got left out, meaning he only had five in total instead of the seven that he does. I restored the missing Long Swords proficiency points.

*** Note: This will not restore his Long Swords proficiencies if he is already present in your party; it will take effect when he joins the party in the Temple sewers, at the Order or his home.

-------------------------------------------------------------------------
Kuo-Toan Prince Pickpocket Exploit Fix

File UDPRINCE.CRE; an edited version of creature definition file for the Kuo-Toan Prince character. It resolves an exploit whereby this creature could be pickpocketed for the blood "item" that he carries, which would enable completion of the quest without having to do anything else.

-------------------------------------------------------------------------
Lady Delicia Caan Dialog Interruption Fix

File DELCIA.CRE; an edited version of the creature definition file for the character Lady Delcia Caan, aunt of the NPC Nalia D'Arnise. It resolves a problem whereby she would interrupt the dialog of the D'Arnise guard in the same room as her, which would cause the game to call the dialog with him unfinished; this would often cause the game to refuse to save or allow resting afterwards as it would think that dialog was still underway. She now waits at the back of the room.
-------------------------------------------------------------------------
Lilarcor Confusion Immunity Fix

File SW2H14.ITM; an edited version of the item definition file for Lilarcor, the +3 sentient two-handed sword. It resolves a bug with the immunity to Confusion that this sword provides. The duration of the negation of the animation showing a character to be confused was permanent, meaning that if the sword was equipped, at any time afterwards, a Confused character would not show the animation indicating this.

Many thanks to Beige Tangerine for donating these nice bugfixes to my collection!

You can visit Beige Tangerine at http://www.geocities.com/beigetangerine

-------------------------------------------------------------------------
Mace Of Disruption Fix

File BLUN12.ITM included in this archive is an edited version of the weapon Mace Of Disruption +1, a mace intended for slaying undead creatures. This file is intended as a bugfix for this item.

It resolves the bug whereby the item is supposed to destroy undead creatures struck by it if they fail a Save Vs. Death at a -4 penalty, but there was no penalty set in the item tables. The upgraded Mace has the correct save penalty.

-------------------------------------------------------------------------
Mazzy & Valygar Enemies When One Charmed Fix

Files MAZZY.BCS and VALYGAR.BCS contained in this archive are edited versions of the AI scripts for the NPC's Mazzy Fentan and Valygar Corthala in the Shadows Of Amn areas. They resolve an oversight with their AI. If Mazzy has appointed Valygar as her "squire" then they become allied and if one of them becomes an enemy, the other will as well (through disagreement with the protagonist's decisions) and both will irreversibly leave the group and attack. However, the oversight is that if one of them is Charmed or Dominated and becomes an enemy temporarily, they will still both leave the party permanently and attack. These files stop this from happening.

-------------------------------------------------------------------------
Mazzy Level 9 & 12 Weapon Proficiencies Fixes

Files MAZZY9.CRE and MAZZY12.CRE contained in this archive are edited versions of the creature definitions for the NPC Mazzy Fentan. They resolve the bug of her having one too many weapon proficiencies if she joins at either level 9 or 12. As it appears that she was intended to have grandmastery (five profs.) in Short Bow, one Short Sword proficiency has been removed at each level.

*** Note this will not take effect if she is currently or has already been present in your group, as her character file is then contained in your savegame.

-------------------------------------------------------------------------
Mazzy Weapon Usability Exploit Fixes

Files NPBOW.ITM and NPSW01.ITM contained in this archive are edited versions of the item definition files for Mazzy Fentan's Bow Of Arvoreen and Sword Of Arvoreen, respectively. They resolve the bugs where either could be used by Half-Orcs or Tieflings (Haer'Dalis being the only one that could be in the party) and also that the Bow Of Arvoreen could be equipped by Kensai, who may not use launched missile weapons.

Thanks to Beige Tangerine for donating this nice bugfix to my collection!

You can visit Beige Tangerine at http://www.geocities.com/beigetangerine/

-------------------------------------------------------------------------
Minor Quest Item Weapon Usability Exploit Fixes

Files MISC4Q.ITM and MISC4U.ITM contained in this archive are edited versions of the item definition files for the Ogre's Sword and Embarl's Dagger respectively. They resolve minor usability exploits of these items being usable by Beast Masters, who are prohibited from metal weaponry. I call these "minor" exploits as none of these weapons are magical and so would most likely not be used.

Thanks to Beige Tangerine for donating these nice bugfixes to my collection!

You can visit Beige Tangerine at http://www.geocities.com/beigetangerine

-------------------------------------------------------------------------
Minsc Missing Spells Onjoin Fix

Files MINSC8.CRE, MINSC9.CRE, MINSC10.CRE and MINSC12.CRE contained in this archive are edited versions of the Baldur's Gate 2 creature definition files for the NPC Minsc. They resolve the bug of Minsc having no priest spells (as rangers do to a small extent) when he joins the party at level 8 or higher. He would only acquire the full set when he next levelled up. They are now scribed and the allotted number are memorized.

Note: this will not change his lack of spells in Throne Of Bhaal onjoin, as he levels up immediately, so resting would be advisable immediately for all summoned party members as they will be without spells. As well, if he joins at level 7 in Shadows Of Amn he will not have any spells, but this is normal; rangers get their first at level 8.

-------------------------------------------------------------------------
Minsc Enrage Stun Immunity Fix

File SPIN117.SPL; an edited version of the ability definition for the Enrage ability aka Berserk Mode of the NPC Minsc. It resolves the bug of the ability failing to provide immunity to Stun as it is supposed to. This was confirmed by senior designer David Gaider on the Black Isle message board.

Note: Minsc's Enrage is not as complete as a full Berserker's and will not make him immune to Maze, Imprisonment and other high-level effects, but will protect him from Charm, Domination, Stun and a few other things best avoided.

-------------------------------------------------------------------------
Mordenkainen's Sword Invisibility Exploit Fix

File SPWI716.SPL; an edited version of the spell definition file for the 7th level wizard spell Mordenkainen's Sword. It resolves a bug leading to the exploit of being able to cast this spell while invisible and remain invisible. All other summoning spells without exception break invisibility (except for Simulacrum, but this is a bug as well.) This is due to the spells being caster-centred, rather than any-point, which appears to make the engine think that they are defensive. Since this (and Simulacrum) summon allies for offensive combat, they should not allow invisibility to remain.

-------------------------------------------------------------------------
Monk Wizard Scroll Exploit Fixes

Files SCRL3G.ITM, SCRL5G.ITM, SCRL8B.ITM and SCRL8C.ITM contained in this archive are edited versions of the Baldur's Gate 2 scroll definition files for the wizard spells Vocalize, Remove Curse, Summon Nishruu and Stone To Flesh respectively. They resolve the oversight by which Monks can equip these scrolls, meaning that they can cast the spell off the scroll, consuming the scroll in the process. 

-------------------------------------------------------------------------
Multiple Strongholds Exploit Fixes

Files NALIA.DLG and LAVOK.DLG contained in this archive are edited versions of the Nalia d'Arnise and Lavok Corthala dialog files. They resolve two exploits which allowed a multi-classed or dual-classed fighter or mage to gain more than one stronghold, contrary to BioWare's intention that each player receive only one.

The first bug appears if a fighter character who already has a stronghold finishes clearing the de'Arnise keep without Nalia in the party.  When she speaks to the player outside the keep, Nalia "forgets" to check if the protagonist has a stronghold, and any fighter (regardless of other strongholds) can take control of the keep.

The other bug appears if a mage character who already has a stronghold returns the Planar Sphere to Athkatla and refuses to take Lavok outside.  As he dies, Lavok too, "forgets" to check if the protagonist has a stronghold, and any mage (again regardless of other strongholds) can take control of the Planar Sphere.

The fixed versions simply add a check to each dialog to make sure that the player does not have a stronghold before offering ownership of either.

Many thanks to Beige Tangerine for donating these nice bugfixes to my collection!

You can visit Beige Tangerine at http://www.geocities.com/beigetangerine/

-------------------------------------------------------------------------
Nalia Initial Spell Slots Fixes

Files NALIA8.CRE, NALIA10.CRE and NALIA13.CRE contained in this archive are edited versions of the creature definition files for the NPC Nalia D'Arnise. They resolve bugs with her initial spell slots upon joining the group. Nalia8 and Nalia10 are both 9th-level mages, but had 2 5th level spell slots whereas there should only be one. The second was empty. Nalia13 is actually a 12th level mage, but had the same number of spells memorized as a 13th-level mage would, meaning that on several spells levels, one spell actually overflowed outside the memorization slots. Nalia13 also fixes another minor bug: she only had two arrows in her quiver rather than the 40 (two old-limit quoits) the others do.

Thanks to Glenn Christer B. for pointing this bug out!

-------------------------------------------------------------------------
Neb's Nasty Cutter Fix

File NEBDAG.ITM; an edited version of the item definition file for Neb's Nasty Cutter, a dagger usable only by evil-aligned characters. This files is intended as a bugfix.

It resolves a bug with the use of this item. Its description indicates that it is usable as a plain +2 dagger once its poison effect has been exhausted, but once the few (2 or 3 charges on average) remaining poison charges are gone, the dagger no longer works at all. As the Infinity engine does not allow an item that has a special ability that occurs through normal use and runs out leaving the item useful, I changed the dagger to a plain +2 enchanted dagger with no poison effect so that it may be kept and used as long as the player wants.)

Thanks to Kevin Lynch for pointing this bug out!

-------------------------------------------------------------------------
Necromantic Spell Hit Point Bonus Magic Resistance Failure

Files SPWI119.ITM, SPWI314.ITM, SPIN106.ITM, and SPIN104.ITM contained in this archive are edited versions of the spell definition files for Wizard and Innate forms of Larloch's Minor Drain and Vampiric Touch, respectively. They resolve the bug that caused their hit point bonus given to the caster to fail if the caster was Magic Resistant. Only the component that steals hit points from the target is supposed to be subject to the Magic Resistance check and subsequent failure.

Thanks to Beige Tangerine for donating these nice bugfixes to my collection!

You can visit Beige Tangerine at http://www.geocities.com/beigetangerine
-------------------------------------------------------------------------
North Forest Skeleton Warrior Avatar Fix

File AR18SKEL.CRE; a modified version of the creature definition for the Skeleton Warrior found in the North Forest group. It resolves the bug of this character using the same avatar as a normal skeleton. It now uses the Skeleton Warrior avatar. Its behaviour and function is not changed.

Thanks to Beige Tangerine for donating this nice bugfix to my collection!

You may visit Beige Tangerine at http://www.geocities.com/beigetangerine/

-------------------------------------------------------------------------
Outdoor Encounter Areas Flags Fixes

Files AR0041.ARE, AR0042.ARE, AR0044.ARE, AR0045.ARE and AR1607.ARE contained in this archive are edited versions of the area definition files for several outdoor "encounter" areas. They resolve the bug with these areas being marked as indoors, which prevents the druid spell "Call Lightning" from working during battles there, as this spell only functions outside. 

Thanks to Beige Tangerine for donating these bugfixes (other than AR1607.ARE) to my collection!

You can visit Beige Tangerine at http://www.geocities.com/beigetangerine

-------------------------------------------------------------------------
Paladin Harbinger Drives Away Allies In Bodhi Battle Fix

Files C6ERIC.CRE, C6ERIC3.CRE and MISC83.ITM contained in this archive are edited versions of the creature definition files for the paladin Eric Van Straaten and an altered item definition file made into an altered Harbinger +3 respectively. They resolve a bug whereby if the paladins were enlisted to fight Bodhi in Chapter 6, Eric Van Straaten's Harbinger +3 two-handed sword (which has a 5% chance on each strike of detonating a fireball centred on the wielder) would cause the paladins and other allies (Drizzt and friends, or Arkanis and fellow assassins) to think that they had been attacked by the player/party and leave. Harbinger will now not detonate while wielded by Van Straaten, though if he dies and drops it, all of its abilities will be present.

As well, I fixed up a few problems with his character definition (not that it will ever be seen.) His stats. were below the minimum for paladins (his STR was too low to wear his own armour) and his alignment was Lawful Neutral. 

-------------------------------------------------------------------------
Paladin Resting In Stronghold Fix

File AR0903.BCS; an edited version of the area script file for the paladin's stronghold, the Most Noble Order Of The Radiant Heart. It resolves an omission whereby even after being accepted into the Order as a member, a paladin protagonist and party still can't rest there. (This appears to be an oversight as the protagonist is advised that they are receiving their own private room upon joining, and the temples in the Temple District also allow resting if the protagonist is a cleric and has obtained them as strongholds.) 

If the protagonist loses or declines the stronghold, the ability to rest there will also correctly be removed as well.

-------------------------------------------------------------------------
Paladin Tyrianna Assassin Quest Fixes

Files AR0415.BCS and PLGIRL01.CRE are edited versions of a area script and creature file for an area and person (Tyrianna) involved in the paladin's quest for their stronghold, specifically, protecting Tyrianna from assassins. They resolve three bugs with this quest.

1) A leftover AI script reference in Tyrianna's definition file caused her to go hostile if one of the assassins (the elven mage, ironically the only evil-aligned one) was killed in her visible range.

2) If as requested by Tyrianna the player went downstairs after killing the assassins, then went right back up again, this would break the timer prior to the cutscene of her return to the downstairs and the quest would be unfinishable.

3) If the player went right back upstairs after Tyrianna came downstairs, this would break the timer prior to the cutscene of her "godparent" arriving and the quest would be unfinishable.

I removed the erroneous script reference from Tyrianna's definition file and moved the timers inside the cutscenes so that the player can't break them by leaving the area.

-------------------------------------------------------------------------
Planar Sphere Assassins Not Appearing Fix

Files AR0411.BCS and MGTEOS01.DLG contained in this archive are edited versions of the area control script for the (stronghold) Planar Sphere and the Cowled Wizard Teos. They resolve a bug that sometimes would occur in the sequence where the player/party is ambushed by assassins in the Sphere. The "wooden gate" animation would play showing the assassins gating in, but they would never appear. The cause of this seems to be a rare engine bug involving multiple dialog-embedded CreateCreature commands producing overlapping creatures with a full party; this was solved by passing a variable to the area control script to instead run the commands and changing the Create commands to ignore their overlap.

-------------------------------------------------------------------------
Potion Of Freedom Fix

File POTN45.ITM; an edited version of the item definition file for the Potion Of Freedom. It resolves four bugs with this potion:
1) The duration of the Free Action effect was 0, meaning a character who had consumed the potion could still be rendered unable to move by certain effects, though the effect graphic would not show and the player wasn't paralyzed.
2) The duration of the potion is 10 turns, but the duration of the portrait icon was only 2 turns, so it would appear to be running out too quickly.
3) The potion was erroneously protecting against Charm.
4) The potion was failing to make the character immune to Haste, as both the spell and Ring of Free Action do (and the potion is by its own description the equivalent of the spell.)

Thanks to Andy W. for pointing out the Free Action bug (I wouldn't have found the rest otherwise.)

-------------------------------------------------------------------------
Potion Of Storm Giant Strength Magic Resistance Failure Fix

File POTN07.ITM is an edited version of the item definition file for the Potion Of Storm Giant Strength item. It resolves an error whereby the strength-increasing effect of this potion is subject to the Magic Resistance check and will therefore fail on a character with significant Magic Resistance. As none of the other (less potent) Strength potions will do this, it is definitely an oversight.

-------------------------------------------------------------------------
Priestess Of Sekolah Store Prices Exploit Fix

File SHAPR1.STO; an edited version of the store file for the Sahuagin Priestess Of Sekolah found in the City of Caverns. It resolves an exploit whereby her buying price for items was far too high (appears to have been a typo of putting the decimal representation of the standard buying percentage in the the hexadecimal field) so if the gabber's reputation and Charisma were high enough, she would actually by items for less than she would then resell the same items for, so the same expensive item could be rebought and resold indefinitely for unlimited gold, limited only by the patience of the buyer.

-------------------------------------------------------------------------
Protection From Acid Casting Time Fix

File SPWI517.SPL; a modified version of the spell definition for the 5th level wizard spell Protection From Acid. It resolves the bug with this spell's casting time, which is supposed to be 6, but was instead 5.

Thanks to Beige Tangerine for donating this nice bugfix to my collection!

You may visit Beige Tangerine at http://www.geocities.com/beigetangerine/

-------------------------------------------------------------------------
Protection Scrolls Magic Resistance Failure Fixes

Seven .ITM files; modified scrolls items, which have been edited to resolve a bug whereby if they are used on a character with significant Magic Resistance, they fail to work.

The item codes/displayed names of the items included in this archive (all of them have the .ITM extension:)

SCRL03 = Protection from Acid
SCRL04 = Protection from Cold
SCRL05 = Protection from Electricity
SCRL06 = Protection from Fire
SCRL08 = Protection from Poison
SCRL09 = Protection from Undead
SCRL15 = Protection from Petrification

I fixed this by adding an entry into the scrolls' effects tables that sets their target's Magic Resistance to 0 for one second. It is automatically restored to its previous value when the second has elapsed and the scroll has taken effect. Note that this problem did not occur with the Protection From Magic scrolls, but did with all the other ones.

-------------------------------------------------------------------------
Pseudo-Dragon Familiar Magic Resistance Fix

File FAMPSD.CRE; an edited version of the creature definition file for the Pseudo Dragon familiar. It adds the missing 50% Magic Resistance that this familiar is supposed to have as per its description (all familiars have some degree of magic resistance, or resistance to certain types of magical energy such as fire or cold.)

-------------------------------------------------------------------------
Quasit Familiar Blur Ability & Melee Attack Fixes

Files FAMQUAS.CRE and IMPQUA.ITM contained in this archive are modified versions of the creature definition file for the Quasit familiar and the "item" definition for its default attack, respectively. The first bug resolved by them was that the Quasit familiars were not getting their Blur special spell ability. It would appear as an icon in their spell area (beside Horror) but nothing would happen when it was cast. The second bug resolved was that the Quasit's default melee attack had a leftover Poison resource that did nothing. If an attacked enemy failed its Save Vs. Death, then "Poison" would appear in the battletext, but the enemy wasn't poisoned. This effect appears to have been removed.

*** WARNING: If you have a current game with a Quasit familiar and you install this patch, DO NOT LET THE FAMILIAR DIE! You will be unable to summon another one after installing this patch until a new game is started! (The familiar is contained in your savegame file after Find Familiar is cast once.) As well, this fix will NOT resolve a current game if Find Familiar has already been cast. A new game must be started for the Quasit's Blur spell to begin working. ***

-------------------------------------------------------------------------
Regis Amulet Usability Fix

File REGISAMU.ITM; an edited version of the item definition file for the amulet of Regis, the halfling companion of Drizzt Do'Urden. It resolves the oversight of this magical amulet being usable by Wizard Slayers, who are not supposed to be able to use magical amulets at all.

Thanks to Beige Tangerine for donating this nice bugfix to my collection!

You can visit Beige Tangerine at http://www.geocities.com/beigetangerine

-------------------------------------------------------------------------
Restored Slave Lord/Twisted Rune Quest

Files AR0313.BCS, AR0906.BCS, HLKOSHI.CRE, HLSHANG.DLG, SCRL3I.ITM and TRAN1008.BCS are edited versions of several Baldur's Gate 2 area and portal control scripts, a dialog, character and item file.

Without giving too many details away, it restores the broken links and adds an item as a "hint," restoring excised links necessary to make the locations and events leading up to the Twisted Rune confrontation into an actual quest, rather than random encounters. The details, such as dialog options, were already present in BG2 but appear to have been overlooked by the time it was released, leaving the player with no clues.

You will still be able to complete this quest at any stage by random encounter, but now by following the links and clues,  the quest has continuity. Hint: The quest aspect will develop by having Nalia in the group.

A bug is also fixes by these files: when entering a certain door in Athkatla, the game autosaves, but if the save is reloaded, the gemstone "key" will not be present in the save file.

Thanks to all the folks at the BG2 WebBoard for their feedback, and Joni M. for help with one of the items' locations!

-------------------------------------------------------------------------
Reirra Store Prices Exploit Fix

File SUELF10.STO; an edited version of the store definition files for the elven cleric Rierra found in Suldanessellar. This files is intended as a bugfix.

It resolves an exploit whereby her buying price for items was far too high (appears to have been a typo of putting the decimal representation of the standard buying percentage in the the hexadecimal field) so if the gabber's reputation and Charisma were high enough, she would actually by items for less than she would then resell the same items for, so the same expensive item could be rebought and resold indefinitely for unlimited gold, limited only by the patience of the buyer.

-------------------------------------------------------------------------
Ring Of Earth Control Fix

File RING29.ITM; an edited version of the item definition file for the Ring Of Earth Control item. It resolves a bug with the Ring providing a bonus of 1 to Saving Throws, without this being mentioned in its description, as well as its stated abilities of an AC bonus of 1 when worn, and Charm Earth Elemental & Flesh To Stone once per day. It was confirmed by Senior Designer David Gaider on the Interplay WebBoard that this bonus was not intentional.

-------------------------------------------------------------------------
Ring Of Free Action Fix

File RING09.ITM; an edited version of the item definition file for the Ring Of Free Action. It resolves a bug with the Ring's resources whereby its Free Action effect was applied permanently to the character who wore it; it would persist after the Ring was removed.

Thanks to Sze Erh Lee for pointing this bug out, and finding its cause and solution!

-------------------------------------------------------------------------
Ring Of Gaxx Portrait Icons Fix

File RING39.ITM; a modified version of the item definition for the Ring Of Gaxx. It resolves bugs with this ring's provided immunities to Disease and Poison. Though the immunities were properly implemented, the resources to suppress the portrait icons for Disease and Poison were not present, so confused players as it appeared that the immunities were not working.

-------------------------------------------------------------------------
Rings Of Air & Fire Control Saving Throws Fixes

Files RING27.ITM and RING28.ITM contained in this archive are edited versions of the item definition files for the Ring Of Fire Control and Ring Of Air Control respectively. They resolve the bug whereby the rings were missing their saving throws. Fire/Air Elementals are supposed to be entitled to a saving throw at +3 vs. the effects, but were not being allowed one.

Thanks to Beige Tangerine for donating these nice bugfixes to my collection!

You can visit Beige Tangerine at http://www.geocities.com/beigetangerine/

-------------------------------------------------------------------------
Scimitar Usability Fixes

Files SW1H20.ITM, SW1H22.ITM, SW1H23.ITM, SW1H30.ITM, SW1H50.ITM, SW1H52.ITM and SW1H56.ITM contained in this archive are edited version of the item definition files for scimitars. These file are intended as bugfixes.

They prevent the exploit of Beast Master rangers using them, though Beast Masters are specifically prohibited from all metal weaponry. The included previously released Shazzelim (SW1H50.ITM) fix also corrects this scimitar's damage from 1D8+2 to 1D8+1, as stated in the description. This matches its enchantment of +1.

Thanks to Beige Tangerine for donating these nice bugfixes to my collection!

You may visit Beige Tangerine at http://www.geocities.com/beigetangerine/

-------------------------------------------------------------------------
Sime Dialog Loop Fix

File AR1600.BCS is an edited version of the area script file for the town of Brynnlaw, intended to resolve a bug with the character Sime.

If the protagonist sided with the Shadow Thieves, Sime was a Shadow Thief sent by Aran Linvail (the Shadowmaster) as an advisor. Upon landing, the treacherous captain Saemon Havarian would cause the party to be ambushed by three vampires. Sime was supposed to speak immediately after the vampires were killed and give further instructions. However she would often just repeat "Saemon looks nervous. See what he wants." over and over and never break out of this.

The cause of this was that the script was checking whether the vampires were dead (reduced to Gaseous Form) before allowing Sime to continue. If one or more of them happened to be injured to >10 H.P. but not zero or less, it would instead turn into a bat and disappear, but not be counted as dead by the game.

Thanks to Kevin Lynch for donating this bugfix to my collection!

-------------------------------------------------------------------------
Simulacrum Invisibility Exploit Fix

File SPWI804.SPL; an edited version of the spell definition file for the spell Simulacrum. It resolves a bug leading to the exploit of being able to cast this spell while invisible and remain invisible. All other summoning spells without exception break invisibility (except for Mordenkainen's Sword, but this is a bug as well.) This is due to the spells being caster-centred, rather than any-point, which appears to make the engine think that they are defensive. Since this (and Mordenkainen's Sword) summon allies for offensive combat, they should not allow invisibility to remain.

-------------------------------------------------------------------------
Sling Of Everard Fix

File WASLING.ITM; a modified version of the Sling Of Everard item. It eliminates the erroneous Strength bonus to damage that this sling was giving. It was confirmed by David Gaider on the Interplay WebBoard that the only sling that should provide this is the Sling Of Seeking, which can also be noted in its description.

It also corrects the sling's damage from 1D4+2 to 1D4+3, as the description notes that the sling's bullets do "+2 extra damage" whereas a normal sling bullet does 1D4+1.

Note that this sling can only be obtained legitimately through installation of the "bonus merchants" either through download or through installation of the Collector's/Pre-Order Edition of Baldur's Gate 2.

Thanks to Beige Tangerine for donating this nice bugfix to my collection!

You can visit Beige Tangerine at http://www.geocities.com/beigetangerine/

-------------------------------------------------------------------------
Solaufein Phaere Rescue Fix

File UDSOLA01.DLG; an edited version of the dialog file for the character Solaufein, central to the Underdark quests. It resolves a bug whereby in the quest to rescue Phaere from the Illithid, if the player ran off the map while Solaufein was casting, when the player returned, the quest was and all further Ust Natha quests were broken, as the timer for the appearance of the Illithid had gone off while the player was in the wrong area.

This was resolved by moving the casting into the cutscene. 

** Note: If you are used to how this particular episode takes places, as the cutscene now starts when Solaufein casts ensure your party members are in the correct places BEFORE talking to him when he is met outside the Illithid lair! 

*** This file will not resolve the problem if it has already occurred, but will prevent it from happening again. If you are currently suffering from this bug, do the following: quit BG2, enable Debug Mode by adding Debug Mode=1 under the [Program Options] line of BALDUR.INI, then run BG2, load the savegame, then type Ctrl-Space for console. Type the following exactly into the console:
CLUAConsole:SetGlobal("SolNoTalk1","GLOBAL",0)
then press Enter, and then position your party (if you have one,) save the game, then talk to Solaufein, and battle the Illithid and Umber Hulks that arrive. When they are dead, Solaufein and Phaere will leave.

Now save, quit BG2, remove the Debug Mode=1 line you added from BALDUR.INI (it's not a good idea to leave it on all the time,) run BG2 again and load the savegame and play normally.

-------------------------------------------------------------------------
Soul Reaver THAC0 Drain Fix

File SW2H08.ITM; an edited version of the item definition file for Soul Reaver, a two-handed sword not usable by good-aligned characters. It resolves a bug with the special ability effect of this item, where each time an opponent is struck, they receive a cumulative 2 point THAC0 penalty for 20 rounds (if they live that long, which isn't likely.) The ability was being subject to the Magic Resistance check, and would fail on highly Magic Resistant creatures (such as dragons, drow, golems, etc.) This is in contrast to the ability effects of other blades such as Celestial Fury.

-------------------------------------------------------------------------
Spellhold Asylum Entry Trap & Sequence Looping Fix

File AR1515.BCS is an edited version of the scriptfile for the asylum called Spellhold, or the Residence For The Magically Deviant. Two bugs are fixed by this file:

The first bug occurred due to there being two ways to get into this place: either to kill the mage Perth The Adept and take his Wardstone, or for the protagonist to speak to the Pirate Lord Desharik and convince him of the protagonists' (or a party member's) insanity. The problem occurred when the protagonist both refused the Pirate Lord's admittance after speaking to him and also obtained the Wardstone; variables would sometimes be set indicating that the protagonist both had the Wardstone and was sent by the Pirate Lord simultaneously, which confused the script. Upon opening the front door the Wardstone would disappear, there was no one there to greet the protagonist, the inner doors were unpickably locked, and the petrification trap on the bridge the protagonist arrived on would now be active without the Wardstone, so the protagonist would be stuck and the game could not be finished.

I added some missing variable checks to the initialization of this area that resolved this condition. On entering Spellhold  the plot should continue no matter what the method or path chosen to arrive. 

*** NOTE: If you are currently experiencing this bug and saved while inside the Spellhold lobby, just leave and return to resume the plotline. Also, the bug of certain characters being duplicated in the Asylum existed prior to and was not caused by this edited script. It may be fixed by me in future if it is not addressed by the developers, but is minor compared to the game-killer this fix resolves.

The second bug was caused by using the Wardstone to gain entry, and then attacking Irenicus' co-ordinator guise. This is supposed to cause him to disappear and appear in his real form, but depending on the force of the attack, sometimes he would disappear and then talk to the protagonist from the lab without actually dimension-dooring in. Thus the game would count him as not having appeared. When the Spellhold maze was completed, the same area would be entered, and the game, noticing that Irenicus hadn't appeared yet and that he had been attacked, would cause him to appear. However his dialog would now be that of when the protagonist is stuck in the jar, and the whole sequence would partially "loop" ending with the protagonist stuck in the jar and the game unfinishable.

-------------------------------------------------------------------------
Spellhold Irenicus Fixes

Files PPIRENI1.CRE and PPIRENI2.CRE contained in this archive are edited versions of the creature files for Jon Irenicus in his two Spellhold guises (the co-ordinator and himself.) They resolve an oversight whereby, although he is supposed to be unkillable as he must escape Spellhold for the plot to continue, he was susceptible to certain types of instant-death spells such as Disintegrate. If his co-ordinator guise was killed this way, the game was unfinishable. If his real guise was, this would lead to the continuity error of him appearing later, and also Yoshimo would not be sent in to battle the protagonist if he was supposed to be by being present in the party until the arrival at Spellhold. Other than that the game could still be finished in this case.

As well, these files correct Irenicus' alignment to Neutral Evil is it supposed to be (and his race to elf) as he was listed as a Chaotic Good human due to his files being based on those of Elminster, as his stats. are exactly the same. His corrected alignment means that spells that only affect evil-aligned creatures such as Protection From Evil and Holy Word can be used in the battle with him without being useless.

-------------------------------------------------------------------------
Spellhold Return Invisiblity & Bhaalpower Loss Notification Fixes

Files CUT41I.BCS and CUT41J.BCS are edited versions of the Baldur's Gate 2 script files for the "cutscene" that controls the player character's return to the Spellhold laboratory after the "dream sequence Candlekeep" which is encountered after Jon Irenicus drains the character's Bhaal essence. If the player character was invisible when returning to Spellhold, he/she would be stuck in the jar in Irenicus' lab and could not initiate dialog, and the game would have to be reloaded. As well, when then transported to the Spellhold dungeon maze, Bodhi would not be able to initiate dialog with the player character if the invisibility was still active.

This was resolved by changing the dialog target from [PC] to Player1 and moving it just outside the cutscene, in both instances.

I also added a line so that "Loses Bhaal powers" appears over the character's head as well as in the Battletext, as a few players were missing this and wondering where their Bhaalspawn special abilities went.

-------------------------------------------------------------------------
Staff Of Curing Fixes

File STAF10.ITM is an edited version of the Staff Of Curing item definition file. There are three errors with this item. First, the Cure ability is subject to the Magic Resistance check, and will fail if applied to a character with significant Magic Resistance.

Second, the Staff Of Curing also improves all saving throws by 2, but this is not mentioned in the description. After confirming with Senior Designer Dave Gaider on the Interplay WebBoard that this was not planned, this has been removed. It was probably caused by copying the item definition file from a staff that did (Staff of the Magi most likely.)

Third, even though the Staff Of Curing has a THAC0 and damage bonus of 1, and is clearly magical in nature, it had no enchantment. The enchantment was changed to +1 to match the THAC0 and damage bonus.

Thanks to Beige Tangerine for pointing out the Magic Resistance bug!

You can visit Beige Tangerine at http://www.geocities.com/beigetangerine/

-------------------------------------------------------------------------
Staff Of The Woodlands Fixes

File STAF14.ITM; an edited version of the Baldur's Gate 2 item definition file for the Staff Of The Woodlands. It resolves three bugs: firstly, with the Barkskin equipped ability of this Staff. Barkskin sets base Armour Class to 3 (or more or less depending on the caster's level,) with dexterity and magical item bonuses adding to this. Instead, this staff was giving an Armour Class bonus of 3.

The second bug resolved by this is that Rangers could equip and use this Druid-only weapon.

The most recent update also added the +1 bonus to all saves (except Save Vs. Spells) that the Barkskin spell provides that the staff wasn't providing with its permanent Barkskinn effect. This was confirmed with BioWare Senior Designer David Gaider.

Thanks to Beige Tangerine for donating the usability component of this bugfix to my collection!

You can visit Beige Tangerine at http://www.geocities.com/beigetangerine

-------------------------------------------------------------------------
Suldanessellar Irenicus Fixes

File SUJON.CRE; an edited version of the creature definition file for Jon Irenicus as he appears in Suldanessellar. It corrects Irenicus' alignment to Neutral Evil is it supposed to be (and his race to elf) as he was listed as a Chaotic Good human due to his files being based on those of Elminster, as his stats. are exactly the same. His corrected alignment means that spells that only affect evil-aligned creatures such as Protection From Evil and Holy Word can be used in the battle with him without being useless.

-------------------------------------------------------------------------
Summoning Limit Exploit Fixes

Files BEARBLSU.CRE, ETTERCSU.CRE, SUMDJINN.CRE, SWORD02.CRE and WORGSU.CRE contained in this archive are edited version of the creature definition files for the summoned Mountain Bear, Ettercap, Djinn (from the Ring Of Djinni Summoning,) Dancing Sword (from Ras +2) and Worg respectively. They resolve the exploit of these summons not being constrained to the five-creature limit that all others were. This was caused by their creature type being marked as something other than a summon, which would cause the engine to ignore them.

Thanks to Beige Tangerine for donating these nice bugfixes to my collection!

You can visit Beige Tangerine at http://www.geocities.com/beigetangerine/

-------------------------------------------------------------------------
Svirfneblin Patrol Leader's Helmet Usability Exploit Fixes

File MISCA6.ITM; a modified version of the Sverfneblin Patrol Leader's Helmet item. It eliminates the oversight of omitting the class restrictions from the item, leading to the exploit of kensai, bards, mages, thieves and thief/mages being allowed to wear it. The standard helmet class restrictions have been restored.

Thanks to Beige Tangerine for pointing out the Kensai oversight!

You may visit Beige Tangerine at http://www.geocities.com/beigetangerine

-------------------------------------------------------------------------
Tears Of Bhaal Selfish Test Bypass Exploit Fix

File HELLSELF.DLG; an edited version of the dialog definition file for the Tanar'ri called "Selfish" who is found in the Abyssal Selfish test. It prevents the exploit of being able to bypass any losses in this test and get the "Good Path" result by pausing just after Player #2 is taken, then making Player #2 talk to Selfish. Player #2 is now immediately made unselectable until Selfish's Hold spell has a chance to take effect. Solo players must choose to save or destroy a conjured human they have no control over, so this exploit is not available to them.

-------------------------------------------------------------------------
Tears Of Bhaal Tests Paladin & Ranger Falling Fixes

Files AR2901.BCS to AR2905.BCS contained in this archive are edited version of the area control script files for the Abyssal "test" areas. They resolve the bug that if Paladins or Rangers take the "evil path" in any of the tests except the Selfish one, that they do not become Fallen and lose their special abilities, meaning that upon opening the Tear Of Bhaal locks that they will shift to Neutral Evil alignment and still be Paladins or Rangers, with all their benefits and abilities intact.

-------------------------------------------------------------------------
Thieves' Guild Stronghold Outdoor Flags & Resting Fixes

Files AR0321,2,3 and 4 .BCS and .ARE contained in this archive are edited versions of the area control scripts and area definition files respectively for the (stronghold) Thieves' Guild. They resolve bugs of three of the four areas being defined as outdoors to allow resting while the protagonist has the thieves' stronghold. However, the floor with all the beds on it was not flagged as such so could not be rested on. By being marked as outdoors, outdoor encounters could take place within the players' own guarded guildhall (such as being confronted or attacked by the Harpers) and the Druid spell Call Lightning could be cast inside. The proper flag for resting is now set for all four floors via script if the player owns the guild as a stronghold.

-------------------------------------------------------------------------
Tombelthen's Journal Fix

File AR1401.BCS is an edited version of the script file that controls the dungeon known as the Ruined Temple of Amaunator, of which there is another area where the Shadow Dragon can be found, and is intended as a bugfix.

It resolves an error in oversight where the player could find "Tombelthen's Journal (2nd half)" which detailed a treasure cache in the woods outside, but then be unable to find the cache even after hours of searching.

The reason for this is that the cache was only present if the protagonist was a ranger, but the journal was present no matter what the class of the protagonist.

The script was edited such that the journal page will be removed if the protagonist character is not a ranger, and has no possibility of becoming one later in the game through dual-classing.

Many thanks to Beige Tangerine for donating this nice bugfix to my collection!

You can visit Beige Tangerine at http://www.geocities.com/beigetangerine/

-------------------------------------------------------------------------
Trapped In Twisted Rune Lair Fix

File AR1008.BCS; an edited version of the area control script for the Twisted Rune Lair. It resolves a bug whereby if Shangalar the lich is killed before gating his allies in, the player/party is stuck in this location as the "key" out is the central eye of Vaxall the beholder. The allies will now appear upon his death if they haven't already.

Thanks to Beige Tangerine for donating this nice bugfix to my collection!

You can visit Beige Tangerine at http://www.geocities.com/beigetangerine

-------------------------------------------------------------------------
Unseeing Eye Not Appearing Fix

File AR0205.BCS is an edited version of the script file that controls the area of the lair of the Unseeing Eye, a Beholder that is worshipped as a god by a cult that the player enters a quest to destroy. This file is intended as a bugfix for this location.

It resolves the problem that would occur if the protagonist assembled the "Rift Device" that is supposed to be used to kill the Beholder and then saved the game before the it appeared. If the the same save was reloaded, the Unseeing Eye would no longer appear, being summoned after a timer expired that would no longer be running in the reloaded game.

I resolved this problem by placing checks in the area script for whether the Unseeing Eye appeared, and restarting the timer if it didn't.

-------------------------------------------------------------------------
Unstakable Vampires Fix

File AR0801.BCS is an edited version of the area script for the Athkatla cemetery underground, intended to resolve a bug with the plot here.

If the protagonist sides with the Shadow Thieves, he or is sent to clean the vampires out of the cemetery. Three of the vampires (Durst, Gellal, and Lassal) have stakable coffins in a small room at the northwest of the area.

When they are killed and their coffins staked, it is at this time that Bodhi is supposed to appear. However, for some people, though all three vampires were dead, one or more coffins would not be stakable, preventing the game from being finished.

I found one of the causes of this: the Gaseous Forms that the vampires change into are not immune to all damage, and having one hit point, any damage would kill them, sometimes before their scripts had a chance to activate the trigger for the respective coffin. Perhaps there were other causes as well, such as the methods use to kill the vampires.

I resolved this by placing code into the area's script that constantly checks the status of the three vampires and makes their respective coffins stakable if they are dead or reduced to Gaseous Form.

-------------------------------------------------------------------------
Ust Natha Trapping Player & Beholder Quest Fixes

File UDPHAE01.DLG is an edited version of the dialog file that controls the character Phaere, present in Ust Natha and central to the quests there. It resolves a major bug that caused the protagonist/party to be completely trapped inside Ust Natha with the game unfinishable if the components of the quest that take place after the Matron Mother Ardulace seals the city are not completed quickly enough, or the Drow become hostile for any other reason. I term as it as major due to the number of people it affected, and its severity in that many affected people lost several hours of game time, and some who weren't using proper numbers of save slots lost their game completely or had to cheat their way out of it. It was also major in that it took this long to resolve due to it being ambiguous whether it was a bug or not; it could have easily been planned that messing up the Ust Natha quests means the game can't be finished.

The cause of this bug was that when the Matron Mother Ardulace gives the order to seal Ust Natha, Phaere tells the protagonist/party to meet her in her apartment in only one hour's game time, and the Matron Mother walks to the west to prepare for the ritual. Given the time limit, it is natural for the protagonist/party to immediately leave the Temple Of Lolth. If Ardulace hasn't reached her destination point by the time the Autosave starts prior to area transition, the game engine cannot decide where Ardulace should be, so she completely disappears, and can't be killed to break the wards which would allow escape from Ust Natha.

I resolved it by making her transition to her waiting point instantaneous. Not the most aesthetic solution, but it fixes the problem.

This fix also resolves a another bug with the Ust Natha plot, whereby on the quest to destroy a Beholder who is smuggling Adamantine, if Phaere was spoken to twice while at the entrance platform, when arriving at the right area, she and Solaufein would be unresponsive and the Ust Natha plotline was irreparably broken.

This was fixed by Beige Tangerine by setting Phaere's state to busy so that she can't be spoken to after assigning the quest.

*** Note: This fix will not resolve either bug if it has already occurred, but will prevent them from happening again.
If either has already occurred, do the following: quit BG2, enable Debug Mode by adding Debug Mode=1 under the [Program Options] line of BALDUR.INI, then run BG2, load the savegame, then type Ctrl-Space for console.

If you are experiencing the bug of being stuck in a hostile, sealed Ust Natha, type the following exactly into the console:
CLUAConsole:CreateCreature("UDARDUL")
then press Enter, and kill Matron Mother Ardulace. Don't forget to pick up her goodies. :^) Verify you can leave Ust Natha by placing the cursor over the exit and looking for it to change into an exit cursor, or leaving...your choice. Make sure you have Adalon's eggs if you were questing for them before leaving.

If you are experiencing the Beholder quest bug, type the following exactly into the console:
CLUAConsole:SetGlobal("PHAERESPEAKBEHOLD","GLOBAL",0)
then press Enter, and then talk to Phaere, and kill the Beholder that appears.

Now save the game, quit BG2, remove the Debug Mode=1 line you added from BALDUR.INI (it's not a good idea to leave it on all the time,) run BG2 again and load the savegame and play normally.

Many thanks to Beige Tangerine for donating the Beholder quest portion of this bugfix to my collection!

You can visit Beige Tangerine at http://www.geocities.com/beigetangerine/

-------------------------------------------------------------------------
Valygar's Corthala Family Armour Usability Fix

File NPCHAN.ITM; an edited version of the item definition file for the NPC Valygar's Corthala Family Armor. It resolves the bug that though this armour is intended only to be worn by Valygar, many other characters could wear it. It is now only wearable by Neutral Good Human Stalkers with minimum 18 DEX and 11 WIS.

The update to this file also resolves that the armour did not contain the resource to disable mage spellcasting, so in the (now unlikely) occurrence that a multi/dual-class mage spellcaster could wear it, they would be able to cast mage spells in it. This will not affect Valygar's Stalker mage spell selection as they are defined as priest spells.

Thanks to Beige Tangerine for donating the usability component of this bugfix to my collection!

You may visit Beige Tangerine at http://www.geocities.com/beigetangerine

-------------------------------------------------------------------------
Valygar's Corthala Family Blade Backstab & AC Bonus Fixes

File NPSW04.ITM is an edited version of The weapon Corthala Family Blade, Valygar's +2 katana. This file is intended as a bugfix. It resolves two errors:

As per the description, Valygar is supposed to receive a 2 AC bonus vs. slashing weapons while it is equipped, but this was missing.

Unlike other katanas, the Corthala Family Blade reports "Weapon unsuitable for backstab," a particularly annoying trait for the main weapon of a stalker. This problem is caused by the Infinity Engine's method for deciding whether a weapon can be used for a backstab: it simply checks to see if the weapon is usable by thieves. As the developers had limited the katana to use by rangers only (to better prevent characters other than Valygar from using it), the game assumed that it should not be usable for backstabbing.  The new version of this file makes the item usable by thieves, too, thus solving the problem.

In addition, Beige added another limit to the weapon's usablity: it can now  be used only by Neutral-Good aligned characters with at least 14 wisdom, including Valygar. These checks supplement the minimum requirements for strength, dexterity, and constitution that the weapon already had. These limitations should prevent some other characters from using the katana.  However, Beige decided not to add intelligence and charisma requirements, as those abilities can be drained by various items and spells.

If a player character meets the above requirements for the Corthala Family Blade, he will be able to wield the weapon.  This was true of the original file, as well.

Thanks to Beige Tangerine for donating the backstab component of this nice bugfix to my collection!

Thanks also to Mikko V. for pointing out the missing AC bonus!

-------------------------------------------------------------------------
Valygar Missing Spells Onjoin Fix

Files VALYG8.CRE, VALYG9.CRE, VALYG11.CRE and VALYG12.CRE contained in this archive are edited versions of the creature definition files for the NPC Valygar. They resolve the bug of Valygar having no priest spells (as rangers do to a small extent) or his special Stalker mage spells when he joins the party at level 8 or higher. He would only acquire the full set when he next levelled up. They are now scribed and the allotted number are memorized.

Note: this will not change his lack of spells in Throne Of Bhaal onjoin, as he levels up immediately, so resting would be advisable immediately for all summoned party members as they will be without spells.

-------------------------------------------------------------------------
Valygar Ranger Ally Unprovoked Attack

File VALRAN01.DLG; a modified version of the dialog definition for Valygar's ranger ally. It resolves an omission of a check in his dialog. When he confronts the player about whether he is there to find Valygar for the Cowled Wizards, the option "Valygar who?" will cause him to call two companions and attack even if the player hasn't heard of Valygar as the check (which is present in other options) was omitted.

-------------------------------------------------------------------------
Vicionia Weapon Proficiencies Fix

Files VICONI6.CRE, VICONI8.CRE, VICONI9.CRE, VICONI11.CRE and VICONI13.CRE contained in this archive are edited versions of the Baldur's Gate 2 character definition files for the NPC Viconia. They resolve a bug with her weapon proficiencies, where one or more are missing when she joins. It appears that her definition file was copied from the lowest level (6) as a base class, but weapon proficiencies were not added. All other stats. and spell levels appear correct for a cleric of her level. Since a cleric gains a weapon proficiency every four levels, and her possible levels of joining are 8, 9, 11 and 13, she was missing one proficiency at levels 8, 9 and 11, and two proficiences at level 13.

A poll conducted on the Interplay WebBoard indicated that the two proficiencies most desirable for her were Sword And Shield (a defensive proficiency that improves AC vs. missiles when a shield is used) and Flail/Morningstar. Though her STR of 10 is too low to use a Flail (minimum 13) or Morningstar (minimum 11,) players indicated that they consistently equip her with a Giant Strength Girdle so that she can not only wield these weapons, but also wear Full Plate and carry a full-sized shield. As well, her biography mentions that she has lost some of her Underdark powers, and Lolth-provided Strength may well have been one of them. So at levels 8, 9 and 11 the Sword & Shield Proficiency was added, and it as well as Flail/Morningstar at level 13.

*** Note: This will not change Viconia's weapon proficiencies if she is already in your group, but only when she initially joins.

The update as of 2001-July-15 fixes the VICONI9.CRE file; it worked properly in Baldur's Gate 2, but could not be opened in editors such as Shadowkeeper or Infinity Explorer. It should now work properly for them as well.

-------------------------------------------------------------------------
Wands Fixes

Files WAND02.ITM, WAND04.ITM, WAND05.ITM, WAND06.ITM, WAND07.ITM, WAND08.ITM, WAND09.ITM, WAND10.ITM, WAND11.ITM, WAND11.ITM, WAND13.ITM, WAND14.ITM, and WAND15.ITM contained in this archive are edited versions of the Baldur's Gate 2 Wand items. These file are intended as a bugfixes.

Firstly, they resolve an oversight in item definition that allowed Monks to use them. Senior designer David Gaider did confirm that Monks are not suppposed to be able to. The monk class was one of the last additions to Shadows Of Amn and it was neglected to mark the wands as unusable by them.

Secondly, a severely game-unbalancing omission of the Cloudkill effect of the Wand Of Cloudkill bypassing creature Magic Resistance is resolved; this meant that this wand could be used to kill golems, dragons, Illithids and just about anything else with high Magic Reistance with little effort.  Note that the cast version of the Cloudkill spell, which the Wand is supposed to duplicate, does not bypass Magic Resistance. This is definitely a bug, and a large one given that many major battles of the game become extremely easy with it.

Thanks to Beige Tangerine for donating the Monk component of this bugfix to my collection!

You may visit Beige Tangerine at http://www.geocities.com/beigetangerine

-------------------------------------------------------------------------
Welther Respawns When Elgea Freed Fix

Files ELGEA.DLG and AR0400.BCS; edited verions of the dialog file for the character Elgea, a kidnapped noblewoman encountered during the quest to find the kidnappers who buried Tirdir alive, and the area script for the slums district. They resolve an error whereby if the player chose to ransom her at first and then had second thoughts, or if she was freed by Mazzy or Keldorn (who automatically do so if they are in the party) then the contact Welther will still appear in front of the Copper Coronet as if she were not freed, but will not speak and will leave the area, then reappear and leave again, indefinitely.

-------------------------------------------------------------------------
Yoshimo Keep-Alive Exploit Fix

File YOSHIMO.BCS; a modified version of the AI scripting for the NPC Yoshimo. It resolves an oversight leading to an exploit whereby Yoshimo can be kept in the party though he is supposed to either die in Spellhold or due to the geas placed on him by Jon Irenicus when the player returns from there if he was not taken. By pausing the game as the party entered the Copper Coronet and talking to Yoshimo, it would override the scripting command to kill him. He could then be invited to join the group. He would stil die, but could be raised as he was in the group. He will now disappear from the party if he happens to be in it when the geas kills him, making him unraisable.