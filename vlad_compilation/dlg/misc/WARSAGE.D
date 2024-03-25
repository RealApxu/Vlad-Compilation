EXTEND_BOTTOM WARSAGE 0
  IF ~!Dead("c6bodhi") OR(4) Global("ValygarVampire","GLOBAL",2) Global("VP_SimeVampire","GLOBAL",2) Global("VP_KeldornVampire","GLOBAL",2) Global("VP_LeinaVampire","GLOBAL",2)~ THEN REPLY ~A loved one was taken by a vampire. What can I expect when I find them?~ EXTERN WARSAGE 6
END

EXTEND_BOTTOM WARSAGE 0
  IF ~OR(4) PartyHasItem("misc7l") PartyHasItem("miscbsim") PartyHasItem("miscbkel") PartyHasItem("miscblei")~ THEN REPLY ~Someone I care about has fallen to a vampire. Is there any way to save them?~ EXTERN WARSAGE 5
END