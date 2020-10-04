EXTEND_TOP FATESP 6 #4
  IF ~!Dead("CMAlora")
!InMyArea("CMAlora")
Global("AloraSummoned","GLOBAL",0)~ THEN
   REPLY @0
    DO ~CreateVisualEffect("SPPORTAL",[1626.1498])
Wait(2)
CreateCreature("ALORA25",[1626.1498],0)
SetGlobal("AloraSummoned","GLOBAL",1)~ GOTO 8
END

BEGIN ~CMALO25A~

IF ~Global("AloraSummoned","GLOBAL",1)~ THEN BEGIN 0 
  SAY @1 
  IF ~~ THEN REPLY @2 DO ~SetGlobal("AloraSummoned","GLOBAL",2)~ GOTO 1
END

IF ~~ THEN BEGIN 1 
  SAY @3 
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
END

IF ~~ THEN BEGIN 3 
  SAY @6 
  IF ~~ THEN REPLY @7 DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @8 GOTO 5
END

IF ~~ THEN BEGIN 4 
  SAY @9 
  IF ~~ THEN REPLY @10 DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @11 GOTO 5
END

IF ~~ THEN BEGIN 5 
  SAY @12 
  IF ~~ THEN DO ~MoveToPointNoInterrupt([1626.1498])
Face(0)~ EXIT
END

IF ~Global("AloraSummoned","GLOBAL",2)~ THEN BEGIN 6
  SAY @13 
  IF ~~ THEN REPLY @14 DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @15 GOTO 7
END

IF ~~ THEN BEGIN 7 
  SAY @16 
  IF ~~ THEN EXIT
END

BEGIN ~CMALO25D~

BEGIN ~CMALO25P~

IF ~Global("KickedOut","LOCALS",0)~ THEN BEGIN 0 
  SAY  @17 
  IF ~~ THEN REPLY @18 DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()~ EXIT
  IF ~AreaCheck("AR4500")~ THEN REPLY @19 DO ~SetGlobal("KickedOut","LOCALS",1)
MoveToPointNoInterrupt([1626.1498])
Face(0)~ GOTO 1
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @20 DO ~SetGlobal("KickedOut","LOCALS",1)
CreateVisualEffectObject("SPDIMNDR",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1626.1498],0)
~ EXIT
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @19 DO ~SetGlobal("KickedOut","LOCALS",1)~ GOTO 1
END

IF ~~ THEN BEGIN 1 
  SAY @21 
  IF ~~ THEN EXIT
END

IF ~Global("KickedOut","LOCALS",1)~ THEN BEGIN 2 
  SAY @22 
  IF ~~ THEN REPLY @23 DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()~ EXIT
  IF ~~ THEN REPLY @24 GOTO 3
END

IF ~~ THEN BEGIN 3 
  SAY @16 
  IF ~~ THEN EXIT
END

BEGIN ~CMALO25J~

I_C_T BAERIE25 159 Alora_AerieBaby
== CMALO25J IF ~InParty("CMAlora")~ THEN
@25
END



BEGIN ~BCMALO25~

IF ~AreaCheck("AR5000")
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("TalkedSarMel01","GLOBAL",1)
Global("PcAloraChatTob1","LOCALS",0)~ THEN BEGIN alora_pc1
SAY @26
++ @27 DO ~SetGlobal("PcAloraChatTob1","LOCALS",1)~ + tob1
++ @28 DO ~SetGlobal("PcAloraChatTob1","LOCALS",1)~ + tob2
++ @29 DO ~SetGlobal("PcAloraChatTob1","LOCALS",1)~ + tob3
END

IF ~~ tob1
SAY @30
IF ~~ THEN EXIT
END

IF ~~ tob2
SAY @31
IF ~~ THEN EXIT
END

IF ~~ tob3
SAY @32
++ @33 + tob4
++ @34 + tob2
END

IF ~~ tob4
SAY @35
++ @36 + tob5
++ @37 + tob6
END

IF ~~ tob5 
SAY @38
IF ~~ THEN EXIT
END


IF ~~ tob6
SAY @39
IF ~~ THEN EXIT
END




CHAIN IF ~InParty("Sarevok")
See("Sarevok")
!StateCheck("Sarevok",STATE_SLEEPING)
Global("AloraSare","LOCALS",0)~ THEN BCMALO25 alora_sare1
@40 DO ~SetGlobal("AloraSare","LOCALS",1)~
== BSAREV25 @41
== BCMALO25 @42
== BSAREV25 @43
EXIT

CHAIN
IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",STATE_SLEEPING)
Global("AloraHaerTob1","GLOBAL",0)~ THEN BCMALO25 Alora_Haer25_1
@44 
DO ~SetGlobal("AloraHaerTob1","GLOBAL",1)~
== BHAERD25 @45
= @46
== BCMALO25 @47
== BHAERD25 @48
== BCMALO25 @49
== BHAERD25 @50
== BCMALO25 @51
== BCMALO25 @52
EXIT

CHAIN
IF ~InParty("CMAlora")
See("CMAlora")
!StateCheck("CMAlora",STATE_SLEEPING)
Global("AloraHaerTob1","GLOBAL",1)
Global("AloraHaerTob2","GLOBAL",0)~ THEN BHAERD25 Alora_Haer25_2
@53 
DO ~SetGlobal("AloraHaerTob2","GLOBAL",1)~
== BCMALO25 @54
== BHAERD25 @55
== BCMALO25 @56
== BHAERD25 @57
== BCMALO25 @58
== BHAERD25 @59
== BCMALO25 @60
EXIT

CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("AloraAerieTob1","GLOBAL",0)
Global("babytalk","GLOBAL",0)
Global("AerieRomanceActive","GLOBAL",2)~ THEN BCMALO25 Alora_Aerie25_1
@61 
DO ~SetGlobal("AloraAerieTob1","GLOBAL",1)~
== BAERIE25 @62
== BCMALO25 @63
EXIT

CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("AloraAerieTob2","GLOBAL",0)
Global("babytalk","GLOBAL",1)
Global("AerieHadBaby","GLOBAL",0)
Global("AerieRomanceActive","GLOBAL",2)~ THEN BCMALO25 Alora_Aerie25_2
@64
DO ~SetGlobal("AloraAerieTob2","GLOBAL",1)~
== BAERIE25 @65
== BCMALO25 @66
== BAERIE25 @67
== BCMALO25 @68
== BAERIE25 @69
== BCMALO25 @70
== BAERIE25 @71
== BCMALO25 @72
EXIT

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
Global("AloraAnomenTob1","GLOBAL",0)
Global("AnomenRomanceActive","GLOBAL",2)~ THEN BCMALO25 Alora_anomen25_1
@73 
DO ~SetGlobal("AloraAnomenTob1","GLOBAL",1)~
== BANOME25 @62
== BCMALO25 @74
EXIT

CHAIN
IF ~InParty("CMAlora")
See("CMAlora")
!StateCheck("CMAlora",STATE_SLEEPING)
Global("AloraEdwinTob1","GLOBAL",0)~ THEN BEDWIN25 Alora_Edwin25_1
@75
DO ~SetGlobal("AloraEdwinTob1","GLOBAL",1)~
== BCMALO25 @76
== BEDWIN25 @77
== BCMALO25 @78
== BEDWIN25 @79
EXIT

CHAIN
IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",STATE_SLEEPING)
AreaType(OUTDOOR)
Global("AloraEdwinTob1","GLOBAL",1)
Global("AloraEdwinTob2","GLOBAL",0)~ THEN BCMALO25 Alora_Edwin25_2
@80
DO ~SetGlobal("AloraEdwinTob2","GLOBAL",1)~
== BEDWIN25 @81
== BCMALO25 @82
== BEDWIN25 @83
== BCMALO25 @84
= @85
== BEDWIN25 @86
== BCMALO25 @87
== BEDWIN25 @88
== BCMALO25 @89
== BEDWIN25 @90
EXIT

CHAIN
IF ~InParty("CMAlora")
See("CMAlora")
CombatCounter(0)
HPPercentLT("CMAlora",20)
!HP("CMAlora",1)
!StateCheck("CMAlora",STATE_SLEEPING)
Global("AloraEdwinTob2","GLOBAL",1)
Global("AloraEdwinFinal","GLOBAL",0)~ THEN BEDWIN25 FinalConfession
@91 DO ~SetGlobal("AloraEdwinFinal","GLOBAL",1)~
== BCMALO25 @92
== BEDWIN25 @93 DO ~ApplySpell("CMAlora",CLERIC_HEAL)~
== BCMALO25 @94
== BEDWIN25 @95
== BCMALO25 @96
== BEDWIN25 @97
== BCMALO25 @98
EXIT





