BEGIN VPKAC25B

CHAIN
IF WEIGHT #-9 ~Global("ExpLoveTalk","LOCALS",2)~ THEN VPKAC25B 0
~It has been a long day... I am glad <CHARNAME> finally decided to rest.~
EXTERN VPYOS25B TS121

CHAIN VPKAC25B 1
~So you think that a helpless girl, who does not know the ways of the world is a more fitting personality for this body?~ [KACHIL08]
EXTERN VPYOS25B TS122

CHAIN VPKAC25B 2
~Yoshimo, you are unlike any other man I met among our kin as well. I am afraid that we are together not because we are so right for each other, but because we are so wrong for anyone else...~
DO ~SetGlobal("ExpLoveTalk","LOCALS",3) SetGlobalTimer("VP_KachikoRomance","GLOBAL",TWO_DAYS) RestParty()~
EXIT

CHAIN
IF WEIGHT #-8 ~Global("ExpLoveTalk","LOCALS",4)~ THEN VPKAC25B 3
~Yoshimo?~
EXTERN VPYOS25B TS123

CHAIN VPKAC25B 4
~What?~
EXTERN VPYOS25B TS124

CHAIN VPKAC25B 5
~Dragon Tongue, I am quite capable of fending off any attack be it in the day or nighttime... I appreciate the thought though.~ [KACHIL09]
EXTERN VPYOS25B TS125

CHAIN VPKAC25B 6
~Sometimes I wish you had two masks Yoshimo, like in a theatre: a funny mask and a sincere mask...~ [KACHIL29]
EXTERN VPYOS25B TS126

CHAIN VPKAC25B 7
~Yoshimo... I love you too and I want us to be together. Please, stay with me...~
DO ~SetGlobal("ExpLoveTalk","LOCALS",5) SetGlobalTimer("VP_KachikoRomance","GLOBAL",TWO_DAYS) RestParty()~
EXIT

CHAIN
IF WEIGHT #-7 ~Global("ExpLoveTalk","LOCALS",6)~ THEN VPKAC25B 8
~Can I open my eyes now?~ [KACHIL10]
EXTERN VPYOS25B TS127

CHAIN VPKAC25B 9
~A swallow? Where did you get the bird, Yoshimo Hashimoto?~ [KACHIL1L]
EXTERN VPYOS25B TS128

CHAIN VPKAC25B 10
~As old fools, our ancestors taught us?~
EXTERN VPYOS25B TS129

CHAIN VPKAC25B 11
~Fly little singer and bring joy to the heart of the Sky Emperor and the Immortals.~
EXTERN VPYOS25B TS130

CHAIN VPKAC25B 12
~How can one who has power to give freedom to at least one being be unhappy? I am so happy Yoshimo. This is the most marvelous gift I ever received.~
DO ~SetGlobal("ExpLoveTalk","LOCALS",7)~
EXIT

CHAIN VPKAC25B 13
~Eventually. Well, will you come?~
EXTERN BVALYG25 TS141

CHAIN VPKAC25B 14
~And you will bring <CHARNAME> along?~
EXTERN BVALYG25 TS142

CHAIN VPKAC25B 15
~(*Smiles*)~
EXTERN BVALYG25 TS143

CHAIN VPKAC25B 16
~Valygar, of course! You know well enough that Yoshimo�s soul was redeemed with her help and we cannot imagine our wedding without <CHARNAME> as our most honored guest, but I was hoping you would come together...~
EXTERN BVALYG25 TS144

CHAIN VPKAC25B 17
~How long can I watch you sighing? How long can I watch her giving you secret glances?~
EXTERN BVALYG25 TS145

CHAIN VPKAC25B 18
~When will she need support and love more than now? Valygar, you are taming your heart needlessly.~
EXTERN BVALYG25 TS146

CHAIN VPKAC25B 19
~(*Hugs Valygar*)~
EXTERN BVALYG25 TS148

CHAIN VPKAC25B 20
~Of course I do not!~
EXTERN VPYOS25B TS132

CHAIN VPKAC25B 21
~Oh, you are right, Dragon Tongue.~
EXTERN BVALYG25 TS149

CHAIN VPKAC25B 22
~Sorry, Valygar. It is impossible not to notice.~
EXTERN BVALYG25 TS151

CHAIN VPKAC25B 23
~One, who does not take risk, will never win.~
DO ~RestParty()~
EXIT