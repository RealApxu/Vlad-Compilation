REPLACE_TRIGGER_TEXT_REGEXP SARCNT01
~IsValidForPartyDialog("Anomen")[^!]*
!Alignment("Anomen",MASK_GOOD)~
~IsValidForPartyDialog("Anomen") Alignment("Anomen",MASK_GOOD)~