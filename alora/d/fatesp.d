// FATE SPIRIT

EXTEND_TOP FATESP %fatesp_state_alora% #%fatesp_transition_alora%
+ ~!Dead("CMAlora") !InMyArea("CMAlora") Global("AloraSummoned","GLOBAL",0)~ + @0 // ~Bring me Alora, the happy-go-lucky thief.~
 	DO ~CreateVisualEffect("SPPORTAL",[1626.1498])
	Wait(2)
	CreateCreature("ALORA25",[1626.1498],1)
	SetGlobal("AloraSummoned","GLOBAL",1)~ GOTO 8
END
