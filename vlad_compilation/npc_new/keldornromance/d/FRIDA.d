BEGIN FRIDA

CHAIN FRIDA 0
~Sir, people do not make d�colletage's on bridal gowns... even if they did, your fianc�e certainly has no need of one.~
EXTERN BKELDOR TK_st3

CHAIN FRIDA 1
~Those who usually wear d�colletage's do so in order to hide flaws in the face.~
EXTERN BKELDOR TK_st4

CHAIN FRIDA 2
~(Softly) Then my lord, it means that there is possibly a flaw in the soul.~
EXTERN LADYALIA 4

CHAIN FRIDA 3
~My lady, I have also made underwear for you, let the count have a quick look. I hope he likes lace done by my hand.~
END
 ++ ~(Taking one of the chemises in her hands) Oh, Frida, I have never seen anything so exquisite in all my life! I wonder how you ever found the time to do all this.~ EXTERN FRIDA 4

CHAIN FRIDA 4
~A wedding is the most wonderful event in a girl's life. I wouldn't have dared not to be done in time.~
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("KRCut23")~
EXIT