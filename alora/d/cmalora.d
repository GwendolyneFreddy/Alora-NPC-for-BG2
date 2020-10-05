BEGIN CMALORAJ
BEGIN CMALORAD

BEGIN CMALORA

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Heya 
  SAY @0 
	++ @1 + Forgot
	++ @2 + Tricks
END

IF ~~ Forgot
  SAY @3
	IF ~~ THEN DO ~SetGlobal("CMForgot","LOCALS",1) EscapeAreaMove("AR0406",470,1490,0)~ EXIT
END

IF ~~ Tricks
  SAY @4
	++ @5 + MakeOffer
END

IF ~~ MakeOffer
  SAY @6
	++ @7 + Join
	++ @8 + Rejected
END

IF ~~ Join
  SAY @9
	IF ~~ THEN DO ~JoinParty()~ EXIT
END


IF ~~ Rejected
  SAY @10
	IF ~~ THEN DO ~SetGlobal("CMRejected","LOCALS",1) EscapeAreaMove("AR0406",470,1490,0)~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ HelloAgain
  SAY @11
	++ @12 + Join
	++ @8 + Rejected
END


BEGIN ~CMALORAP~

IF ~~ THEN BEGIN rejoin 
  SAY @13 
	IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF WEIGHT #1 ~Global("KickedOut","LOCALS",1)~ THEN BEGIN greet 
  SAY @14
	IF ~~ THEN GOTO IsItU
END

IF ~~ THEN BEGIN IsItU
  SAY @15 
	IF ~~ THEN REPLY @16 GOTO reject
	IF ~~ THEN REPLY @17 GOTO join
END

IF ~~ THEN BEGIN reject 
  SAY @18 
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN join 
  SAY @13 
	IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
END

IF WEIGHT #2 ~HappinessLT(Myself,-290)~ THEN BEGIN mad 
  SAY @19 
	IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN leave 
  SAY @20
	IF ~!AreaCheck("AR0601")
!AreaCheck("AR0602")
!AreaCheck("AR0603")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")
!AreaCheck("AR1509")
!AreaCheck("AR1510")
!AreaCheck("AR1511")
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2300")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")
!AreaCheck("AR2900")
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")
~ THEN REPLY @21 DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("AR0406",470,1490,0)~ EXIT
  IF ~!AreaCheck("AR0301")
!AreaCheck("AR0302")
!AreaCheck("AR0303")
!AreaCheck("AR0304")
!AreaCheck("AR0305")
!AreaCheck("AR0306")
!AreaCheck("AR0307")
!AreaCheck("AR0509")
!AreaCheck("AR0510")
!AreaCheck("AR0511")
!AreaCheck("AR1102")
!AreaCheck("AR1107")
!AreaCheck("AR0801")
!AreaCheck("AR0803")
!AreaCheck("AR1300")
!AreaCheck("AR1301")
!AreaCheck("AR1302")
!AreaCheck("AR1303")
!AreaCheck("AR0601")
!AreaCheck("AR0602")
!AreaCheck("AR0603")
!AreaCheck("AR0604")
!AreaCheck("AR0605")
!AreaCheck("AR0606")
!InWatchersKeep()
~ THEN REPLY @22 DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
  IF ~OR(3)
AreaCheck("AR0601")
AreaCheck("AR0602")
AreaCheck("AR0603")~ THEN REPLY @23 DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("AR0406",470,1490,0)~ EXIT
END

IF WEIGHT #3 ~True()~ THEN BEGIN 8 
  SAY @24 
	IF ~~ THEN REPLY @25 GOTO rejoin
	IF ~~ THEN REPLY @26 GOTO leave
END

