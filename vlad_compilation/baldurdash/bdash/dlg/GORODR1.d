//State #44
REPLACE_TRIGGER_TEXT_REGEXP  ~GORODR1~
~!IsValidForPartyDialog("Imoen2")[^!]*
!IsValidForPartyDialog("Mazzy")[^!]*
!IsValidForPartyDialog("Anomen")[^!]*
!IsValidForPartyDialog("Keldorn")~
~~

ALTER_TRANS GORODR1 // file name
BEGIN 39 END // state number (can be more than one)
BEGIN 2 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~StartCutsceneMode()
  SetGlobal("zGarOdr1Job","GLOBAL",2)
  Unlock("Dome01")
  AmbientActivate("AM3000A",TRUE)
  StaticSequence("AM3000A",1)
  SoundActivate("DomeDoor",TRUE)
  OpenDoor("Dome01")
  Lock("Dome01")
  SmallWait(9)
  StaticSequence("AM3000A",3)
  AmbientActivate("AM3000A",FALSE)
  SoundActivate("DomeDoor",FALSE)
  EndCutSceneMode()~
END

ALTER_TRANS GORODR1 // file name
BEGIN 41 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~EraseJournalEntry(62402)
EraseJournalEntry(62423)
EraseJournalEntry(62461)
EraseJournalEntry(62481)
EraseJournalEntry(62987)
EraseJournalEntry(63049)
EraseJournalEntry(63048)
EraseJournalEntry(63091)
AddXP2DA("PLOT01D")
Wait(1)
SetGlobal("CloseDemogorgonTemple","GLOBAL",2)
ActionOverride("shugar01",DialogueInterrupt(FALSE))
ActionOverride("shupol01",DialogueInterrupt(FALSE))
ActionOverride("shugfg01",DialogueInterrupt(FALSE))
ActionOverride("shugmg01",DialogueInterrupt(FALSE))
ActionOverride("shugpr01",DialogueInterrupt(FALSE))
DialogueInterrupt(FALSE)
ActionOverride("shugar01",EscapeArea())
ActionOverride("shupol01",EscapeArea())
ActionOverride("shugfg01",EscapeArea())
ActionOverride("shugmg01",EscapeArea())
ActionOverride("shugpr01",EscapeArea())
EscapeArea()~
END