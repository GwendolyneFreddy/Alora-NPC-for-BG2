CHAIN IF WEIGHT #-1
~InParty("CMAlora")
See("CMAlora")
!StateCheck("CMAlora",STATE_SLEEPING)
Global("CMAloraRibald","LOCALS",0)~ THEN RIBALD lil_thief
@0 DO ~SetGlobal("CMAloraRibald","LOCALS",1)~
== CMALORAJ @1
== RIBALD @2
== CMALORAJ @3
== RIBALD @4
EXIT

CHAIN IF WEIGHT #-1
~IsGabber("CMAlora")~ THEN RIBALD buzzoff
@5
EXIT

CHAIN IF WEIGHT #-1
~InParty("CMAlora")
See("CMAlora")
!StateCheck("CMAlora",STATE_SLEEPING)
Global("CMAloraThief","LOCALS",0)~ THEN BMTHIEF bmthief
@6 DO ~SetGlobal("CMAloraThief","LOCALS",1)~
== CMALORAJ @7
== BMTHIEF @8
== CMALORAJ @9
== BMTHIEF @10
EXIT

CHAIN IF WEIGHT #-1
~InParty("CMAlora")
See("CMAlora")
!StateCheck("CMAlora",STATE_SLEEPING)
Global("CMAloraMissy","LOCALS",0)~ THEN ARNGRL01 missy
@11 DO ~SetGlobal("CMAloraMissy","LOCALS",1)~
== CMALORAJ @12
== ARNGRL01 @13
EXIT

CHAIN IF WEIGHT #-1
~InParty("CMAlora")
See("CMAlora")
!StateCheck("CMAlora",STATE_SLEEPING)
Global("CMAlorakid3","LOCALS",0)~ THEN URCHIN2 CMAloraurch2
@14
DO ~SetGlobal("CMAlorakid3","LOCALS",1)~
== CMALORAJ @15
== URCHIN2 @16
EXIT

CHAIN  IF WEIGHT #-1
~InParty("CMAlora")
See("CMAlora")
!StateCheck("CMAlora",STATE_SLEEPING)
Global("CMAlorakid2","LOCALS",0)~ THEN URCHIN1 CMAloraurch1
@17
DO ~SetGlobal("CMAlorakid2","LOCALS",1)~
== CMALORAJ @18
== URCHIN1 @19
== CMALORAJ @20
EXIT

CHAIN IF WEIGHT #-1
~InParty("CMAlora")
See("CMAlora")
!StateCheck("CMAlora",STATE_SLEEPING)
Global("CMAlorakid1","LOCALS",0)~ THEN URCHIN3 CMAloraurch3
@21
DO ~SetGlobal("CMAlorakid1","LOCALS",1)~
== CMALORAJ @22
== URCHIN3 @23
== CMALORAJ @24
EXIT

I_C_T BODHI 12 AloraBodhi
== CMALORAJ IF ~IsValidForPartyDialog("CMAlora")~ THEN @25
END

I_C_T AERIE 41 AloraAerieIllusion
== CMALORAJ IF ~IsValidForPartyDialog("CMAlora")~ THEN @26
END

I_C_T ANOMENJ 150 AloraAnomen1
== CMALORAJ IF ~IsValidForPartyDialog("CMAlora")~ THEN
@27
END

I_C_T IMOEN2 22 AloraDontLeaveImoen
== CMALORAJ IF ~IsValidForPartyDialog("CMAlora")~ THEN 
@28
END

I_C_T JAHEIRAJ 112 AloraQuestionsJah
== CMALORAJ IF ~IsValidForPartyDialog("CMAlora")~ THEN
@29
END

I_C_T ISAEA 28 AloraNaliaKidnap
== CMALORAJ IF ~IsValidForPartyDialog("CMAlora")~ THEN
@30
=
@31
END

I_C_T HENDAK 4 AloraHendak
== CMALORAJ IF ~IsValidForPartyDialog("CMAlora")~ THEN
@32
END

I_C_T SURLY 17 AloraSurly
== CMALORAJ IF ~IsValidForPartyDialog("CMAlora")~ THEN
@33
END

I_C_T SAMIA 24 AloraSamia
== CMALORAJ   IF ~IsValidForPartyDialog("CMAlora")~ THEN
 @34
=
@35
== EDWINJ IF ~IsValidForPartyDialog("Edwin")~ THEN
@36
END


I_C_T RENAL 30 AloraRenal1
== CMALORAJ IF ~IsValidForPartyDialog("CMAlora")~ THEN
@40
END

I_C_T RENAL 23 AloraRena2
== CMALORAJ IF ~IsValidForPartyDialog("CMAlora")~ THEN 
@41
END

I_C_T RENAL 69 AloraRenal3
== CMALORAJ IF ~IsValidForPartyDialog("CMAlora")~ THEN
@42
END

I_C_T ARAN 4 AloraAran1
== CMALORAJ IF ~IsValidForPartyDialog("CMAlora")~ THEN 
@43
END

I_C_T ARAN 18 AloraAranDefectors
== CMALORAJ IF ~IsValidForPartyDialog("CMAlora")~ THEN
@44
END

I_C_T ARAN 40 AloraAran2
== CMALORAJ IF ~IsValidForPartyDialog("CMAlora")~ THEN 
@45
END

I_C_T UDSILVER 9 AloraAdalonAmazed
== CMALORAJ IF ~IsValidForPartyDialog("CMAlora")~ THEN @46
END

I_C_T UDSILVER 53 AloraAdalonDrow
== CMALORAJ IF ~IsValidForPartyDialog("CMAlora")~ THEN @47
END

I_C_T YOSHJ 113 AloraDamnedTraitor
== CMALORAJ IF ~IsValidForPartyDialog("CMAlora")~ THEN @48
END

I_C_T HELLJON 7 AloraIrenicus
== CMALORAJ IF ~IsValidForPartyDialog("CMAlora")~ THEN @49 
== HELLJON IF ~IsValidForPartyDialog("CMAlora")~ THEN @50
END

I_C_T HELLJON 8 AloraIrenicus
== CMALORAJ IF ~IsValidForPartyDialog("CMAlora")~ THEN @49 
== HELLJON IF ~IsValidForPartyDialog("CMAlora")~ THEN @50
END

I_C_T HELLJON 9 AloraIrenicus
== CMALORAJ IF ~IsValidForPartyDialog("CMAlora")~ THEN @49 
== HELLJON IF ~IsValidForPartyDialog("CMAlora")~ THEN @50
END

I_C_T HELLJON 10 AloraIrenicus
== CMALORAJ IF ~IsValidForPartyDialog("CMAlora")~ THEN @49 
== HELLJON IF ~IsValidForPartyDialog("CMAlora")~ THEN @50
END

I_C_T PLAYER1 16 AloraIrenicusDead
== CMALORAJ IF ~IsValidForPartyDialog("CMAlora")~ THEN @51
END

APPEND PLAYER1
IF ~~ p1alora33
SAY @52
++ @53 EXTERN CMALORAJ p1a
++ @54 EXTERN CMALORAJ p1b
++ @55 EXTERN CMALORAJ p1c
END
END

APPEND CMALORAJ
IF ~~ p1a
SAY @56
IF ~~ GOTO theend
END

IF ~~ theend
SAY @57
COPY_TRANS PLAYER1 33
END

IF ~~ p1b
SAY @58
IF ~~ GOTO theend
END

IF ~~ p1c
SAY @59
IF ~~ GOTO theend
END
END
