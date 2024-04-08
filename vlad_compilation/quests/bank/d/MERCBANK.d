BEGIN MERCBANK

CHAIN IF ~True()~ THEN MERCBANK 0
~'Allo <LADYLORD>! Would you care to invest into our merchant bank?~
END
 ++ ~Let's see what you have.~ DO ~StartStore("mercbank",LastTalkedToBy())~ EXIT //BG2 #24763
 ++ ~Maybe another time.~ EXTERN MERCBANK 1 //BG2 #14641

CHAIN MERCBANK 1
~As you will. Have a nice <DAYNIGHT>!~ //BG2 #14644
EXIT