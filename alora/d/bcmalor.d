BEGIN ~BCMALOR~

APPEND BCMALOR

IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("PcAloraChat1","LOCALS",0)~ THEN BEGIN apc_chat1
SAY @0 
++ @1 DO ~SetGlobal("PcAloraChat1","LOCALS",1)~ + chatmore
++ @2 DO ~SetGlobal("PcAloraChat1","LOCALS",1)~ + notalk
END

IF ~~ chatmore
SAY @3
++ @4 + rustlock
++ @5 + notalk
END

IF ~~ notalk
SAY @6
IF ~~ EXIT
END

IF ~~ rustlock
SAY @7
++ @8 + meany
++ @9 + okdokey
END

IF ~~ meany
SAY @10
IF ~~ EXIT
END

IF ~~ okdokey
SAY @11
IF ~~ EXIT
END

IF ~See(Player1)
Class(Player1,MAGE)
!StateCheck(Player1,STATE_SLEEPING)
Global("PcAloraChat2","LOCALS",0)~ THEN BEGIN apc_chat2
SAY @12  
++ @13 DO ~SetGlobal("PcAloraChat2","LOCALS",1)~ + yes_really
++ @14 DO ~SetGlobal("PcAloraChat2","LOCALS",1)~ + mage_talk
++ @15 DO ~SetGlobal("PcAloraChat2","LOCALS",1)~ + bye_bye
END

IF ~~ yes_really
SAY @16
IF ~~ GOTO mage_talk
END

IF ~~ mage_talk 
SAY @17
++ @18 + yes_silly
++ @19 + yes_stuffy
END

IF ~~ yes_silly
SAY @20
++ @21 + bye_bye
++ @22 + bye_bye
++ @23 + it_is
END

IF ~~ yes_stuffy
SAY @24
END

IF ~~ bye_bye
SAY @25
IF ~~ EXIT
END

IF ~~ it_is
SAY @26
IF ~~ EXIT
END

IF ~PartyRested()
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("PcAloraChat3","LOCALS",0)~ THEN BEGIN apc_chat3
SAY @27  
++ @28 DO ~SetGlobal("PcAloraChat3","LOCALS",1)~ + happy_happy
++ @29 DO ~SetGlobal("PcAloraChat3","LOCALS",1)~ + grumpy_one
END

IF ~~ happy_happy
SAY @30
++ @31 + why_yes
++ @32 + grumpy_one
END

IF ~~ why_yes
SAY @33
IF ~~ EXIT
END

IF ~~ grumpy_one
SAY @34 
IF ~~ EXIT
END

/* IF ~~ grumpy_one
SAY ~Grumpy one aye? Wake up on the wrong side of the bed <CHARNAME>? Wake up on the right side next time and be happy!~
IF ~~ EXIT
END */

IF ~AreaType(OUTDOOR)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("PcAloraChat4","LOCALS",0)~ THEN BEGIN apc_chat4
SAY @35
++ @36 DO ~SetGlobal("PcAloraChat4","LOCALS",1)~ + bye_bye
++ @37 DO ~SetGlobal("PcAloraChat4","LOCALS",1)~ + u_funny
++ @38 DO ~SetGlobal("PcAloraChat4","LOCALS",1)~ + u_funny
END

IF ~~ u_funny
SAY @39
++ @40 + u_funny2
++ @41 + u_funny2
++ @42 + u_funny3
END

IF ~~ u_funny2
SAY @43
IF ~~ EXIT
END

IF ~~ u_funny3
SAY @44
IF ~~ EXIT
END

IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("PcAloraChat4","LOCALS",1)
Global("PcAloraChat5","LOCALS",0)~ THEN BEGIN apc_chat4
SAY @45 
++ @46 DO ~SetGlobal("PcAloraChat5","LOCALS",1)~ + alora_expl
++ @47 DO ~SetGlobal("PcAloraChat5","LOCALS",1)~ + u_sure
END

IF ~~ u_sure
SAY @48
++ @49 + alora_expl
++ @50 + alora_mad
END

IF ~~ alora_mad
SAY @51
IF ~~ THEN DO ~SetGlobal("AloraMad","LOCALS",1) EscapeArea()
~ EXIT
END

IF ~~ alora_expl
SAY @52
++ @53 + alora_expl2
END

IF ~~ alora_expl2
SAY @54
++ @55 + alora_expl3
END

IF ~~ alora_expl3
SAY @56
++ @57 + alora_expl4
++ @58 + alora_mad
END

IF ~~ alora_expl4
SAY @59
IF ~~ EXIT
END
END 

/*
Continues in ToB
*/

/*
*********************************npc banters yes, yes!*****************
*/

CHAIN IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",STATE_SLEEPING)
Global("AloraYoshi","LOCALS",0)~ THEN BCMALOR alora_yoshi
@60 
DO ~SetGlobal("AloraYoshi","LOCALS",1)~
== BYOSHIM @61
== BCMALOR @62
== BYOSHIM @63
== BCMALOR @64
== BYOSHIM @65
== BCMALOR @66
== BYOSHIM @67
== BCMALOR @68
EXIT

CHAIN IF ~InParty("CMAlora")
See("CMAlora")
!StateCheck("CMAlora",STATE_SLEEPING)
Global("CMAloraJaheira1","LOCALS",0)~ THEN BJAHEIR StickyFingers
@69 DO ~SetGlobal("CMAloraJaheira1","LOCALS",1)~
== BCMALOR
@70
== BJAHEIR @71
== BCMALOR @72
== BJAHEIR @73
== BCMALOR @74
== BJAHEIR @75
EXIT

CHAIN IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
Global("CMAloraJaheira2","LOCALS",0)~ THEN BCMALOR JahsChat
@76 
DO ~SetGlobal("CMAloraJaheira2","LOCALS",1)~
== BJAHEIR @77 
== BCMALOR @78
== BJAHEIR @79 
== BCMALOR @80
== BJAHEIR @81
== BCMALOR @82
== BJAHEIR @83
== BCMALOR @84
== BMINSC IF ~InParty("Minsc")~ THEN @85
== BJAHEIR IF ~InParty("Minsc")~ THEN @86
== BMINSC IF ~InParty("Minsc")~ THEN @87
== BJAHEIR @88
EXIT

CHAIN IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("CMAloraAerie1","LOCALS",0)~ THEN BCMALOR AerieAlora1
@89 DO ~SetGlobal("CMAloraAerie1","LOCALS",1)~
== BAERIE @90
== BCMALOR @91
== BAERIE @92
== BCMALOR @93
EXIT

CHAIN IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("CMAloraAerie1","LOCALS",1)
Global("CMAloraAerie2","LOCALS",0)~ THEN BCMALOR AerieAlora2
@94 DO ~SetGlobal("CMAloraAerie2","LOCALS",1)~
== BAERIE @95
== BCMALOR @96
== BAERIE @97
== BCMALOR @98
== BAERIE @99
EXIT

CHAIN
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",STATE_SLEEPING)
!Class(Player1,PALADIN)
Global("CMAloraKel1","LOCALS",0)~ THEN BCMALOR alora_kel
@100 
DO ~SetGlobal("CMAloraKel1","LOCALS",1)~
== BKELDOR @101
== BCMALOR @102
== BKELDOR @103
== BCMALOR @104
== BKELDOR @105
EXIT

CHAIN IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",STATE_SLEEPING)
Global("CMAloraKel2","LOCALS",0)~ THEN BCMALOR alora_kel2
@106 
DO ~SetGlobal("CMAloraKel2","LOCALS",1)~
== BKELDOR @107
== BCMALOR @108
== BKELDOR @109
== BCMALOR @110
EXIT

CHAIN IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",STATE_SLEEPING)
Global("AloraKorgan1","LOCALS",0)~ THEN BCMALOR alora_korgan1
@111 
DO ~SetGlobal("AloraKorgan1","LOCALS",1)~
== BKORGAN @112
== BCMALOR @113
== BKORGAN @114
== BCMALOR @115
== BKORGAN @116
== BCMALOR @117
== BKORGAN @118
EXIT

CHAIN IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",STATE_SLEEPING)
AreaType(DUNGEON)
Global("AloraKorgan2","LOCALS",0)~ THEN BCMALOR alora_korgan2
@119 
DO ~SetGlobal("AloraKorgan2","LOCALS",1)~
== BKORGAN @120
== BCMALOR @121
== BKORGAN @122
== BCMALOR @123
== BKORGAN @124
== BCMALOR @125
EXIT

CHAIN
IF ~AreaType(OUTDOOR)
InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
Global("AnomenIsKnight","GLOBAL",1)
Global("AloraAno1","LOCALS",0)~ THEN BCMALOR alora_ano
@126
DO ~SetGlobal("AloraAno1","LOCALS",1)~
== BANOMEN @127
== BCMALOR @128
== BANOMEN @129
== BCMALOR @130
== BANOMEN @131
== BCMALOR @132
EXIT

CHAIN IF ~InParty("Anomen")
Global("AnomenIsKnight","GLOBAL",0)
Global("AnomenIsNotKnight","GLOBAL",0)
See("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
Global("AloraAno2","LOCALS",0)~ THEN BCMALOR alora_ano2
@133 
DO ~SetGlobal("AloraAno2","LOCALS",1)~
== BANOMEN @134
== BCMALOR @135
== BANOMEN @136
== BCMALOR @137
EXIT

CHAIN IF ~
AreaType(CITY)
InParty("Anomen")
InParty("Keldorn")
!StateCheck("Anomen",STATE_SLEEPING)
!StateCheck("Keldorn",STATE_SLEEPING)
Global("CMAloraAnonKel","LOCALS",0)~ THEN BCMALOR alora_stuffy
@138 
DO ~SetGlobal("CMAloraAnonKel","LOCALS",1)~
== BANOMEN @139
== BKELDOR @140
== BCMALOR @141
== BANOMEN @142
== BCMALOR @143
== BKELDOR @144
== BANOMEN @145
== BKELDOR @146
== BCMALOR @147
= @148
== BANOMEN @149
== BCMALOR @150
EXIT

CHAIN IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
Global("AloraNalia","LOCALS",0)~ THEN BCMALOR alora_nalia1
@151 DO ~SetGlobal("AloraNalia","LOCALS",1)~
== BNALIA @152
== BCMALOR @153
== BNALIA @154
== BCMALOR @155
EXIT

CHAIN
IF ~InParty("CMAlora")
See("CMAlora")
!StateCheck("CMAlora",STATE_SLEEPING)
Global("AloraNalia2","LOCALS",0)~ THEN BNALIA alora_nalia2
@156 DO ~SetGlobal("AloraNalia2","LOCALS",1)~
== BCMALOR @157
== BNALIA @158
== BCMALOR @159
== BNALIA @160
== BCMALOR @161
== BNALIA @162
== BCMALOR @163
== BNALIA @164
EXIT

CHAIN IF ~InParty("Edwin")
See("Edwin")
GENDER("Edwin",MALE)
!StateCheck("Edwin",STATE_SLEEPING)
Global("CMAloraEdwin1","LOCALS",0)~ THEN BCMALOR EddyAlora1
@165  DO ~SetGlobal("CMAloraEdwin1","LOCALS",1)~
== BEDWIN @166 
== BCMALOR @167  
== BEDWIN @168
== BCMALOR @169
== BEDWIN @170
== BCMALOR @171
== BEDWIN @172
EXIT

CHAIN
IF ~InParty("Edwin")
See("Edwin")
GENDER("Edwin",MALE)
!StateCheck("Edwin",STATE_SLEEPING)
Global("CMAloraEdwin1","LOCALS",1)
Global("CMAloraEdwin2","LOCALS",0)~ THEN BCMALOR EddyAlora2
@173 
DO ~SetGlobal("CMAloraEdwin2","LOCALS",1)~
== BEDWIN @174
== BCMALOR @175
== BEDWIN @176
== BCMALOR @177
== BEDWIN @178
== BCMALOR @179
== BEDWIN @180
EXIT

CHAIN
IF ~InParty("Edwin")
OR(3)
InParty("Jaheira")
InParty("HaerDalis")
InParty("Korgan")
See("Edwin")
GENDER("Edwin",FEMALE)
!StateCheck("Edwin",STATE_SLEEPING)
Global("CMAloraEdwinStickUp","LOCALS",0)~ THEN BCMALOR EddyAloraTrans
@181 
DO ~SetGlobal("CMAloraEdwinStickUp","LOCALS",1)~
== BEDWIN @182
== BAERIE IF ~InParty("Aerie")~ THEN @183
== BJAHEIR IF ~InParty("Jaheira")~ THEN @184
== BHAERDA IF ~InParty("HaerDalis")~ THEN @185
== BEDWIN IF ~InParty("HaerDalis")~ THEN @186
== BKORGAN IF ~InParty("Korgan")~ THEN @187
== BEDWIN IF ~InParty("Korgan")~ THEN @188
== BMINSC IF ~InParty("Minsc")~ THEN @189
== BCMALOR @190
== BEDWIN @191
== BCMALOR @192
EXIT

CHAIN IF ~InParty("CMAlora")
See("CMAlora")
!StateCheck("CMAlora",STATE_SLEEPING)
Global("CMAloraEdwinStickUp","LOCALS",1)
Global("CMAloraEdwin3","LOCALS",0)~ THEN BEDWIN thankyou
@193 DO ~SetGlobal("CMAloraEdwin3","LOCALS",1) IncrementGlobal("AloraEdwinFR","GLOBAL",1)~
== BCMALOR @194
== BEDWIN @195
== BCMALOR @196
== BEDWIN @197
EXIT

CHAIN IF ~InParty("Edwin")
See("Edwin")
CombatCounter(0)
HPPercentLT("Edwin",20)
!HP("Edwin",1)
!StateCheck("Edwin",STATE_SLEEPING)
Global("CMAloraEdwinHurt","LOCALS",0)~ THEN BCMALOR eddyhurt
@198 DO ~SetGlobal("CMAloraEdwinHurt","LOCALS",1)
IncrementGlobal("AloraEdwinFR","GLOBAL",1)~ 
== BEDWIN @199
== BCMALOR @200
== BEDWIN @201
== BCMALOR @202
== BEDWIN @203
EXIT

CHAIN
IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
Global("CMAloraCernd1","LOCALS",0)~ THEN BCMALOR CerndAlora1
@204
DO ~SetGlobal("CMAloraCernd1","LOCALS",1)~
== BCERND @205
== BCMALOR @206
== BCERND @207
== BCMALOR @208
EXIT

CHAIN
IF ~InParty("Cernd")
See("Cernd")
OR(2)
AreaType(FOREST)
AreaCheck("AR1900")
!StateCheck("Cernd",STATE_SLEEPING)
Global("CMAloraCernd2","LOCALS",0)~ THEN BCMALOR CerndAlora2
@209 
DO ~SetGlobal("CMAloraCernd2","LOCALS",1)~
== BCERND @210
== BCMALOR @211
== BCERND @212
== BCMALOR @213
== BCERND @214
EXIT

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
Global("CMAloraMinsc1","LOCALS",0)~ THEN BCMALOR MinscAlora1
@215 
DO ~SetGlobal("CMAloraMinsc1","LOCALS",1)~
== BMINSC @216
== BCMALOR @217
== BMINSC @218
== BCMALOR @219
== BMINSC @220
== BCMALOR @221
== BMINSC @222
== BCMALOR @223
EXIT

CHAIN IF ~PartyRested()                                 
InParty("CMAlora")
See("CMAlora")
!StateCheck("CMAlora",STATE_SLEEPING)
Global("CMAloraMinscBoo","LOCALS",0)~ THEN BMINSC missingboo
@224 DO ~SetGlobal("CMAloraMinscBoo","LOCALS",1)~
== BCMALOR @225
== BMINSC @226
== BJAN IF ~InParty("Jan")~ THEN @227
== BKELDOR IF ~IsValidForPartyDialog("Keldorn")~ THEN @228
== BVICONI IF ~IsValidForPartyDialog("Viconia")~ THEN @229
== BMINSC  IF ~IsValidForPartyDialog("Viconia")~ THEN @230
== BVICONI IF ~IsValidForPartyDialog("Viconia")~ THEN @231
== BMINSC IF ~IsValidForPartyDialog("Viconia")~ THEN @232
== BMAZZY IF ~IsValidForPartyDialog("Mazzy")~ THEN @233
== BANOMEN IF ~IsValidForPartyDialog("Anomen")~ THEN @234
== BCERND IF ~IsValidForPartyDialog("Cernd")~ THEN @235
== BMINSC IF ~IsValidForPartyDialog("Cernd")~ THEN @236
== BCERND IF ~IsValidForPartyDialog("Cernd")~ THEN @237
== BMINSC @238
== BCMALOR @239
= @240 
== BMINSC @241
EXIT

CHAIN IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",STATE_SLEEPING)
Global("AloraHaer1","LOCALS",0)~ THEN BCMALOR A_H1
@242 DO ~SetGlobal("AloraHaer1","LOCALS",1)~
== BHAERDA @243
== BCMALOR @244
== BHAERDA @245
== BCMALOR @246
== BHAERDA @247
EXIT

CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
Global("CMAloraViconia1","LOCALS",0)~ THEN BCMALOR ViconiaAlora1
@248 
DO ~SetGlobal("CMAloraViconia1","LOCALS",1)~
== BVICONI @249
== BCMALOR @250
== BVICONI @251
== BCMALOR @252 
EXIT

CHAIN IF ~InParty("CMAlora")
See("CMAlora")
!StateCheck("CMAlora",STATE_SLEEPING)
Global("CMAloraViconia2","LOCALS",0)~ THEN BVICONI ViconiaAlora2
@253 DO ~SetGlobal("CMAloraViconia2","LOCALS",1)~
== BCMALOR @254
== BVICONI @255
== BCMALOR @256
== BVICONI @257
== BCMALOR @258
== BVICONI @259
== BCMALOR @260
== BVICONI @261
== BCMALOR @262
== BVICONI @263
== BCMALOR @264
EXIT

CHAIN
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",STATE_SLEEPING)
Global("CMAloraMazzy1","LOCALS",0)~ THEN BCMALOR MazzyAlora1
@265 
DO ~SetGlobal("CMAloraMazzy1","LOCALS",1)~
== BMAZZY @266
== BCMALOR @267
== BMAZZY @268
== BCMALOR @269
== BKELDOR IF ~InParty("Keldorn")~ THEN @270
== BCMALOR IF ~InParty("Keldorn")~ THEN @271
== BMAZZY @272
== BCMALOR @273
== BMAZZY @274
EXIT

CHAIN IF ~PartyRested()                                 
InParty("CMAlora")
See("CMAlora")
!StateCheck("CMAlora",STATE_SLEEPING)
Global("CMAloraMazzy1","LOCALS",1)
Global("CMAloraMazzy2","LOCALS",0)~ THEN BMAZZY JokeOnYou
@275 DO ~SetGlobal("CMAloraMazzy2","LOCALS",1)~
== BCMALOR @276
== BMAZZY @277
== BCMALOR @278
== BMAZZY @279
== BCMALOR @280
== BMAZZY @281
== BCMALOR @282
EXIT

CHAIN IF ~InParty("CMAlora")
See("CMAlora")
!StateCheck("CMAlora",STATE_SLEEPING)
Global("CMAloraJan1","LOCALS",0)~ THEN BJAN gotya
@283 DO ~SetGlobal("CMAloraJan1","LOCALS",1)~
== BCMALOR @284
== BJAN @285
== BCMALOR @286
== BJAN @287
== BCMALOR @288
== BJAN @289
== BCMALOR @290
== BJAN @291
== BCMALOR @292
== BJAN @293
== BCMALOR @294
EXIT

CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
Global("AloraImoen1","LOCALS",0)~ THEN BCMALOR happy
@295 DO ~SetGlobal("AloraImoen1","LOCALS",1)~
== IMOEN2J @296
== BCMALOR @297
== IMOEN2 @298
== BCMALOR @299
== IMOEN2 @300
== BCMALOR @301
== IMOEN2 @302
== BCMALOR @303
EXIT

CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
Global("AloraImoen2","LOCALS",0)~ THEN BCMALOR Alora_Immy2
@304 DO ~SetGlobal("AloraImoen2","LOCALS",1)~
== IMOEN2 @305
== BCMALOR @306
== IMOEN2 @307
== BCMALOR @308
== IMOEN2 @309
== BCMALOR @310
== IMOEN2 @311
== BCMALOR @312
EXIT

CHAIN IF ~InParty("CMAlora")
See("CMAlora")
!StateCheck("CMAlora",STATE_SLEEPING)
Global("CMAloraValy1","LOCALS",0)~ THEN BVALYGA Alora_Vaggy1
@313 DO ~SetGlobal("CMAloraValy1","LOCALS",1)~
== BCMALOR @314
== BVALYGA @315
== BCMALOR @316
== BVALYGA @317
== BCMALOR @318
== BVALYGA @319
== BCMALOR @320
== BVALYGA @321
== BCMALOR @322
EXIT

CHAIN IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)
Global("CMAloraValy2","LOCALS",0)~ THEN BCMALOR Alora_Vaggy2
@323 DO ~SetGlobal("CMAloraValy2","LOCALS",1)~
== BVALYGA @324
== BCMALOR @325
== BVALYGA @326
== BCMALOR @327
== BVALYGA @328
== BCMALOR @329
== BVALYGA @330
== BCMALOR @331
EXIT



