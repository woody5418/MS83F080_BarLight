opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 10920"

opt pagewidth 120

	opt pm

	processor	16F685
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNCALL	_main,_System_init
	FNCALL	_main,_GPIO_Init
	FNCALL	_main,_ADC_Init
	FNCALL	_main,_GetADCValue
	FNCALL	_main,_Delay_xms
	FNCALL	_main,_LED_Contrl
	FNCALL	_ADC_Init,_Delay_xms
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_ADC_Class
	global	_PSTRCON
psect	text89,local,class=CODE,delta=2
global __ptext89
__ptext89:
_PSTRCON	set	413
	DABS	1,413,1	;_PSTRCON

	global	_SRCON
_SRCON	set	414
	DABS	1,414,1	;_SRCON

	global	_C1SEN
_C1SEN	set	3317
	DABS	1,414,1	;_C1SEN

	global	_C2REN
_C2REN	set	3316
	DABS	1,414,1	;_C2REN

	global	_EEPGD
_EEPGD	set	3175
	DABS	1,396,1	;_EEPGD

	global	_PULSR
_PULSR	set	3314
	DABS	1,414,1	;_PULSR

	global	_PULSS
_PULSS	set	3315
	DABS	1,414,1	;_PULSS

	global	_SR0
_SR0	set	3318
	DABS	1,414,1	;_SR0

	global	_SR1
_SR1	set	3319
	DABS	1,414,1	;_SR1

	global	_STRA
_STRA	set	3304
	DABS	1,413,1	;_STRA

	global	_STRB
_STRB	set	3305
	DABS	1,413,1	;_STRB

	global	_STRC
_STRC	set	3306
	DABS	1,413,1	;_STRC

	global	_STRD
_STRD	set	3307
	DABS	1,413,1	;_STRD

	global	_STRSYNC
_STRSYNC	set	3308
	DABS	1,413,1	;_STRSYNC

	global	_WREN
_WREN	set	3170
	DABS	1,396,1	;_WREN

	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_WDTCON
_WDTCON	set	24
	global	_ADFM
_ADFM	set	255
	global	_ADON
_ADON	set	248
	global	_CHS0
_CHS0	set	250
	global	_CHS1
_CHS1	set	251
	global	_CHS2
_CHS2	set	252
	global	_CM0
_CM0	set	200
	global	_CM1
_CM1	set	201
	global	_CM2
_CM2	set	202
	global	_GO_DONE
_GO_DONE	set	249
	global	_PA0
_PA0	set	40
	global	_PA1
_PA1	set	41
	global	_PA6
_PA6	set	46
	global	_PC1
_PC1	set	57
	global	_PC3
_PC3	set	59
	global	_VCFG0
_VCFG0	set	253
	global	_ADRESL
_ADRESL	set	158
	global	_OPTION
_OPTION	set	129
	global	_OSCCON
_OSCCON	set	143
	global	_ADCS0
_ADCS0	set	1276
	global	_ADCS1
_ADCS1	set	1277
	global	_ADCS2
_ADCS2	set	1278
	global	_ANSEL0
_ANSEL0	set	1160
	global	_ANSEL1
_ANSEL1	set	1161
	global	_ANSEL2
_ANSEL2	set	1162
	global	_ANSEL3
_ANSEL3	set	1163
	global	_ANSEL4
_ANSEL4	set	1164
	global	_ANSEL5
_ANSEL5	set	1165
	global	_ANSEL6
_ANSEL6	set	1166
	global	_ANSEL7
_ANSEL7	set	1167
	global	_DIVS
_DIVS	set	1279
	global	_TRISA0
_TRISA0	set	1064
	global	_TRISA1
_TRISA1	set	1065
	global	_TRISA6
_TRISA6	set	1070
	global	_TRISC1
_TRISC1	set	1081
	global	_TRISC2
_TRISC2	set	1082
	global	_TRISC3
_TRISC3	set	1083
	global	_WPDA4
_WPDA4	set	1100
	global	_WPDC1
_WPDC1	set	1099
	global	_WPDC2
_WPDC2	set	1098
	global	_WPDC3
_WPDC3	set	1097
	global	_WPUA0
_WPUA0	set	1192
	global	_WPUA1
_WPUA1	set	1193
	global	_WPUA6
_WPUA6	set	1198
	global	_WPUC1
_WPUC1	set	1089
	global	_WPUC2
_WPUC2	set	1090
	global	_WPUC3
_WPUC3	set	1091
	file	"ms83f080_barlight.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_ADC_Class:
       ds      2

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_System_init
?_System_init:	; 0 bytes @ 0x0
	global	?_GPIO_Init
?_GPIO_Init:	; 0 bytes @ 0x0
	global	?_ADC_Init
?_ADC_Init:	; 0 bytes @ 0x0
	global	?_LED_Contrl
?_LED_Contrl:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_ISR
?_ISR:	; 0 bytes @ 0x0
	global	??_ISR
??_ISR:	; 0 bytes @ 0x0
	ds	2
	global	??_System_init
??_System_init:	; 0 bytes @ 0x2
	global	??_GPIO_Init
??_GPIO_Init:	; 0 bytes @ 0x2
	global	?_Delay_xms
?_Delay_xms:	; 0 bytes @ 0x2
	global	??_LED_Contrl
??_LED_Contrl:	; 0 bytes @ 0x2
	global	?_GetADCValue
?_GetADCValue:	; 2 bytes @ 0x2
	global	LED_Contrl@num_t
LED_Contrl@num_t:	; 1 bytes @ 0x2
	global	Delay_xms@x
Delay_xms@x:	; 2 bytes @ 0x2
	ds	2
	global	??_GetADCValue
??_GetADCValue:	; 0 bytes @ 0x4
	global	??_Delay_xms
??_Delay_xms:	; 0 bytes @ 0x4
	global	GetADCValue@ADC_num
GetADCValue@ADC_num:	; 2 bytes @ 0x4
	ds	2
	global	Delay_xms@i
Delay_xms@i:	; 2 bytes @ 0x6
	ds	2
	global	??_ADC_Init
??_ADC_Init:	; 0 bytes @ 0x8
	global	??_main
??_main:	; 0 bytes @ 0x8
;;Data sizes: Strings 0, constant 0, data 0, bss 2, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8      10
;; BANK0           80      0       0
;; BANK1           32      0       0

;;
;; Pointer list with targets:

;; ?_GetADCValue	unsigned short  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_Delay_xms
;;   _ADC_Init->_Delay_xms
;;
;; Critical Paths under _ISR in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK1
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0      90
;;                        _System_init
;;                          _GPIO_Init
;;                           _ADC_Init
;;                        _GetADCValue
;;                          _Delay_xms
;;                         _LED_Contrl
;; ---------------------------------------------------------------------------------
;; (1) _ADC_Init                                             0     0      0      30
;;                          _Delay_xms
;; ---------------------------------------------------------------------------------
;; (1) _Delay_xms                                            6     4      2      30
;;                                              2 COMMON     6     4      2
;; ---------------------------------------------------------------------------------
;; (1) _LED_Contrl                                           1     1      0      15
;;                                              2 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _GetADCValue                                          4     2      2      15
;;                                              2 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; (1) _GPIO_Init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _System_init                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (3) _ISR                                                  2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _System_init
;;   _GPIO_Init
;;   _ADC_Init
;;     _Delay_xms
;;   _GetADCValue
;;   _Delay_xms
;;   _LED_Contrl
;;
;; _ISR (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      8       A       1       71.4%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;BITBANK0            50      0       0       3        0.0%
;;BANK0               50      0       0       4        0.0%
;;BITBANK1            20      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BANK1               20      0       0       6        0.0%
;;ABS                  0      0       A       7        0.0%
;;DATA                 0      0       C       8        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 28 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_System_init
;;		_GPIO_Init
;;		_ADC_Init
;;		_GetADCValue
;;		_Delay_xms
;;		_LED_Contrl
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"main.c"
	line	28
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	29
	
l5407:	
# 29 "main.c"
clrwdt ;#
psect	maintext
	line	30
	
l5409:	
;main.c: 30: System_init();
	fcall	_System_init
	line	31
	
l5411:	
;main.c: 31: GPIO_Init();
	fcall	_GPIO_Init
	line	32
	
l5413:	
;main.c: 32: ADC_Init();
	fcall	_ADC_Init
	line	34
	
l5415:	
# 34 "main.c"
clrwdt ;#
psect	maintext
	line	35
	
l5417:	
;main.c: 35: ADC_Class = GetADCValue();
	fcall	_GetADCValue
	movf	(1+(?_GetADCValue)),w
	movwf	(_ADC_Class+1)
	movf	(0+(?_GetADCValue)),w
	movwf	(_ADC_Class)
	line	36
	
l5419:	
;main.c: 36: Delay_xms(1);
	clrf	(?_Delay_xms)
	incf	(?_Delay_xms),f
	clrf	(?_Delay_xms+1)
	fcall	_Delay_xms
	line	37
	
l5421:	
;main.c: 37: if((ADC_Class >= 0)&&(ADC_Class < 200)) LED_Contrl(0);
	movlw	high(0C8h)
	subwf	(_ADC_Class+1),w
	movlw	low(0C8h)
	skipnz
	subwf	(_ADC_Class),w
	skipnc
	goto	u171
	goto	u170
u171:
	goto	l5425
u170:
	
l5423:	
	movlw	(0)
	fcall	_LED_Contrl
	line	38
	
l5425:	
;main.c: 38: if((ADC_Class >= 200)&&(ADC_Class < 250)) LED_Contrl(1);
	movlw	high(0C8h)
	subwf	(_ADC_Class+1),w
	movlw	low(0C8h)
	skipnz
	subwf	(_ADC_Class),w
	skipc
	goto	u181
	goto	u180
u181:
	goto	l5431
u180:
	
l5427:	
	movlw	high(0FAh)
	subwf	(_ADC_Class+1),w
	movlw	low(0FAh)
	skipnz
	subwf	(_ADC_Class),w
	skipnc
	goto	u191
	goto	u190
u191:
	goto	l5431
u190:
	
l5429:	
	movlw	(01h)
	fcall	_LED_Contrl
	line	39
	
l5431:	
;main.c: 39: if((ADC_Class >= 250)&&(ADC_Class < 450)) LED_Contrl(2);
	movlw	high(0FAh)
	subwf	(_ADC_Class+1),w
	movlw	low(0FAh)
	skipnz
	subwf	(_ADC_Class),w
	skipc
	goto	u201
	goto	u200
u201:
	goto	l5437
u200:
	
l5433:	
	movlw	high(01C2h)
	subwf	(_ADC_Class+1),w
	movlw	low(01C2h)
	skipnz
	subwf	(_ADC_Class),w
	skipnc
	goto	u211
	goto	u210
u211:
	goto	l5437
u210:
	
l5435:	
	movlw	(02h)
	fcall	_LED_Contrl
	line	40
	
l5437:	
;main.c: 40: if((ADC_Class >= 450)&&(ADC_Class < 600)) LED_Contrl(3);
	movlw	high(01C2h)
	subwf	(_ADC_Class+1),w
	movlw	low(01C2h)
	skipnz
	subwf	(_ADC_Class),w
	skipc
	goto	u221
	goto	u220
u221:
	goto	l5443
u220:
	
l5439:	
	movlw	high(0258h)
	subwf	(_ADC_Class+1),w
	movlw	low(0258h)
	skipnz
	subwf	(_ADC_Class),w
	skipnc
	goto	u231
	goto	u230
u231:
	goto	l5443
u230:
	
l5441:	
	movlw	(03h)
	fcall	_LED_Contrl
	line	41
	
l5443:	
;main.c: 41: if((ADC_Class >= 600)&&(ADC_Class < 800)) LED_Contrl(4);
	movlw	high(0258h)
	subwf	(_ADC_Class+1),w
	movlw	low(0258h)
	skipnz
	subwf	(_ADC_Class),w
	skipc
	goto	u241
	goto	u240
u241:
	goto	l5449
u240:
	
l5445:	
	movlw	high(0320h)
	subwf	(_ADC_Class+1),w
	movlw	low(0320h)
	skipnz
	subwf	(_ADC_Class),w
	skipnc
	goto	u251
	goto	u250
u251:
	goto	l5449
u250:
	
l5447:	
	movlw	(04h)
	fcall	_LED_Contrl
	line	42
	
l5449:	
;main.c: 42: if((ADC_Class >= 800)&&(ADC_Class <= 1024)) LED_Contrl(5);
	movlw	high(0320h)
	subwf	(_ADC_Class+1),w
	movlw	low(0320h)
	skipnz
	subwf	(_ADC_Class),w
	skipc
	goto	u261
	goto	u260
u261:
	goto	l5415
u260:
	
l5451:	
	movlw	high(0401h)
	subwf	(_ADC_Class+1),w
	movlw	low(0401h)
	skipnz
	subwf	(_ADC_Class),w
	skipnc
	goto	u271
	goto	u270
u271:
	goto	l5415
u270:
	
l5453:	
	movlw	(05h)
	fcall	_LED_Contrl
	goto	l5415
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	44
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_ADC_Init
psect	text90,local,class=CODE,delta=2
global __ptext90
__ptext90:

;; *************** function _ADC_Init *****************
;; Defined at:
;;		line 18 in file "MyAdc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Delay_xms
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text90
	file	"MyAdc.c"
	line	18
	global	__size_of_ADC_Init
	__size_of_ADC_Init	equ	__end_of_ADC_Init-_ADC_Init
	
_ADC_Init:	
	opt	stack 5
; Regs used in _ADC_Init: [wreg+status,2+status,0+pclath+cstack]
	line	20
	
l5387:	
;MyAdc.c: 20: TRISC2=1;
	bsf	(1082/8)^080h,(1082)&7
	line	21
;MyAdc.c: 21: ANSEL6=1;
	bsf	(1166/8)^080h,(1166)&7
	line	24
;MyAdc.c: 24: DIVS=0;
	bcf	(1279/8)^080h,(1279)&7
	line	25
;MyAdc.c: 25: ADCS0=0;ADCS1=0;ADCS2=0;
	bcf	(1276/8)^080h,(1276)&7
	bcf	(1277/8)^080h,(1277)&7
	bcf	(1278/8)^080h,(1278)&7
	line	27
	
l5389:	
;MyAdc.c: 27: ADCON0=0B10000001;
	movlw	(081h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(31)	;volatile
	line	28
	
l5391:	
;MyAdc.c: 28: VCFG0=0;
	bcf	(253/8),(253)&7
	line	29
	
l5393:	
;MyAdc.c: 29: CHS2=1;CHS1=1;CHS0=0;
	bsf	(252/8),(252)&7
	
l5395:	
	bsf	(251/8),(251)&7
	
l5397:	
	bcf	(250/8),(250)&7
	line	30
	
l5399:	
;MyAdc.c: 30: ADFM=1;
	bsf	(255/8),(255)&7
	line	31
	
l5401:	
;MyAdc.c: 31: ADON=1;
	bsf	(248/8),(248)&7
	line	33
	
l5403:	
;MyAdc.c: 33: Delay_xms(1);
	clrf	(?_Delay_xms)
	incf	(?_Delay_xms),f
	clrf	(?_Delay_xms+1)
	fcall	_Delay_xms
	line	35
	
l5405:	
;MyAdc.c: 35: GO_DONE=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7
	line	36
	
l2160:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Init
	__end_of_ADC_Init:
;; =============== function _ADC_Init ends ============

	signat	_ADC_Init,88
	global	_Delay_xms
psect	text91,local,class=CODE,delta=2
global __ptext91
__ptext91:

;; *************** function _Delay_xms *****************
;; Defined at:
;;		line 47 in file "myconfiguration.c"
;; Parameters:    Size  Location     Type
;;  x               2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  i               2    6[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         2       0       0
;;      Locals:         2       0       0
;;      Temps:          2       0       0
;;      Totals:         6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_ADC_Init
;; This function uses a non-reentrant model
;;
psect	text91
	file	"myconfiguration.c"
	line	47
	global	__size_of_Delay_xms
	__size_of_Delay_xms	equ	__end_of_Delay_xms-_Delay_xms
	
_Delay_xms:	
	opt	stack 6
; Regs used in _Delay_xms: [wreg+status,2+status,0]
	line	49
	
l5377:	
;myconfiguration.c: 48: unsigned int i;
;myconfiguration.c: 49: for(i=0;i<x;i++){
	clrf	(Delay_xms@i)
	clrf	(Delay_xms@i+1)
	goto	l5385
	line	50
	
l5379:	
;myconfiguration.c: 50: _delay((unsigned long)((1)*(16000000/4000.0)));
	opt asmopt_off
movlw	6
movwf	((??_Delay_xms+0)+0+1),f
	movlw	48
movwf	((??_Delay_xms+0)+0),f
u287:
	decfsz	((??_Delay_xms+0)+0),f
	goto	u287
	decfsz	((??_Delay_xms+0)+0+1),f
	goto	u287
	clrwdt
opt asmopt_on

	line	51
	
l5381:	
# 51 "myconfiguration.c"
clrwdt ;#
psect	text91
	line	49
	
l5383:	
	incf	(Delay_xms@i),f
	skipnz
	incf	(Delay_xms@i+1),f
	
l5385:	
	movf	(Delay_xms@x+1),w
	subwf	(Delay_xms@i+1),w
	skipz
	goto	u165
	movf	(Delay_xms@x),w
	subwf	(Delay_xms@i),w
u165:
	skipc
	goto	u161
	goto	u160
u161:
	goto	l5379
u160:
	line	53
	
l3243:	
	return
	opt stack 0
GLOBAL	__end_of_Delay_xms
	__end_of_Delay_xms:
;; =============== function _Delay_xms ends ============

	signat	_Delay_xms,4216
	global	_LED_Contrl
psect	text92,local,class=CODE,delta=2
global __ptext92
__ptext92:

;; *************** function _LED_Contrl *****************
;; Defined at:
;;		line 21 in file "myled.c"
;; Parameters:    Size  Location     Type
;;  num_t           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  num_t           1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         1       0       0
;;      Temps:          0       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text92
	file	"myled.c"
	line	21
	global	__size_of_LED_Contrl
	__size_of_LED_Contrl	equ	__end_of_LED_Contrl-_LED_Contrl
	
_LED_Contrl:	
	opt	stack 6
; Regs used in _LED_Contrl: [wreg-fsr0h+status,2+status,0]
;LED_Contrl@num_t stored from wreg
	movwf	(LED_Contrl@num_t)
	line	22
	
l5367:	
;myled.c: 22: switch(num_t)
	goto	l5371
	line	24
;myled.c: 23: {
;myled.c: 24: case 1:
	
l4309:	
	line	25
;myled.c: 25: PC1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	26
;myled.c: 26: PA1=PA0=PA6=PC3=1;
	bsf	(59/8),(59)&7
	btfsc	(59/8),(59)&7
	goto	u21
	goto	u20
	
u21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(46/8),(46)&7
	goto	u34
u20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(46/8),(46)&7
u34:
	btfsc	(46/8),(46)&7
	goto	u31
	goto	u30
	
u31:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(40/8),(40)&7
	goto	u44
u30:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
u44:
	btfsc	(40/8),(40)&7
	goto	u41
	goto	u40
	
u41:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(41/8),(41)&7
	goto	u54
u40:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(41/8),(41)&7
u54:
	line	27
;myled.c: 27: break;
	goto	l4316
	line	28
;myled.c: 28: case 2:
	
l4311:	
	line	29
;myled.c: 29: PC1=PA1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(41/8),(41)&7
	bcf	(57/8),(57)&7
	line	30
;myled.c: 30: PA0=PA6=PC3=1;
	bsf	(59/8),(59)&7
	btfsc	(59/8),(59)&7
	goto	u61
	goto	u60
	
u61:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(46/8),(46)&7
	goto	u74
u60:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(46/8),(46)&7
u74:
	btfsc	(46/8),(46)&7
	goto	u71
	goto	u70
	
u71:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(40/8),(40)&7
	goto	u84
u70:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
u84:
	line	31
;myled.c: 31: break;
	goto	l4316
	line	32
;myled.c: 32: case 3:
	
l4312:	
	line	33
;myled.c: 33: PC1=PA1=PA0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	bcf	(41/8),(41)&7
	bcf	(57/8),(57)&7
	line	34
;myled.c: 34: PA6=PC3=1;
	bsf	(59/8),(59)&7
	btfsc	(59/8),(59)&7
	goto	u91
	goto	u90
	
u91:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(46/8),(46)&7
	goto	u104
u90:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(46/8),(46)&7
u104:
	line	35
;myled.c: 35: break;
	goto	l4316
	line	36
;myled.c: 36: case 4:
	
l4313:	
	line	37
;myled.c: 37: PC1=PA1=PA0=PA6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(46/8),(46)&7
	bcf	(40/8),(40)&7
	bcf	(41/8),(41)&7
	bcf	(57/8),(57)&7
	line	38
;myled.c: 38: PC3=1;
	bsf	(59/8),(59)&7
	line	39
;myled.c: 39: break;
	goto	l4316
	line	40
;myled.c: 40: case 5:
	
l4314:	
	line	41
;myled.c: 41: PC1=PA1=PA0=PA6=PC3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	bcf	(46/8),(46)&7
	bcf	(40/8),(40)&7
	bcf	(41/8),(41)&7
	bcf	(57/8),(57)&7
	line	42
;myled.c: 42: break;
	goto	l4316
	line	43
;myled.c: 43: default :
	
l4315:	
	line	44
;myled.c: 44: PC1=PA1=PA0=PA6=PC3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	btfsc	(59/8),(59)&7
	goto	u111
	goto	u110
	
u111:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(46/8),(46)&7
	goto	u124
u110:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(46/8),(46)&7
u124:
	btfsc	(46/8),(46)&7
	goto	u121
	goto	u120
	
u121:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(40/8),(40)&7
	goto	u134
u120:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
u134:
	btfsc	(40/8),(40)&7
	goto	u131
	goto	u130
	
u131:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(41/8),(41)&7
	goto	u144
u130:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(41/8),(41)&7
u144:
	btfsc	(41/8),(41)&7
	goto	u141
	goto	u140
	
u141:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u154
u140:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u154:
	line	45
;myled.c: 45: break;
	goto	l4316
	line	22
	
l5371:	
	movf	(LED_Contrl@num_t),w
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 1 to 5
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           14     9 (fixed)
; simple_byte           16     9 (average)
; jumptable            263     9 (fixed)
;	Chosen strategy is direct_byte

	addlw	-1
	skipc
goto l4315
	movwf fsr
	movlw	5
	subwf	fsr,w
skipnc
goto l4315
movlw high(S5475)
movwf pclath
	movlw low(S5475)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
S5475:
	ljmp	l4309
	ljmp	l4311
	ljmp	l4312
	ljmp	l4313
	ljmp	l4314
psect	text92

	line	47
	
l4316:	
	return
	opt stack 0
GLOBAL	__end_of_LED_Contrl
	__end_of_LED_Contrl:
;; =============== function _LED_Contrl ends ============

	signat	_LED_Contrl,4216
	global	_GetADCValue
psect	text93,local,class=CODE,delta=2
global __ptext93
__ptext93:

;; *************** function _GetADCValue *****************
;; Defined at:
;;		line 46 in file "MyAdc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ADC_num         2    4[COMMON] unsigned short 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned short 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         2       0       0
;;      Locals:         2       0       0
;;      Temps:          0       0       0
;;      Totals:         4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text93
	file	"MyAdc.c"
	line	46
	global	__size_of_GetADCValue
	__size_of_GetADCValue	equ	__end_of_GetADCValue-_GetADCValue
	
_GetADCValue:	
	opt	stack 6
; Regs used in _GetADCValue: [wreg+status,2]
	line	47
	
l5357:	
;MyAdc.c: 47: unsigned short int ADC_num=0;
	clrf	(GetADCValue@ADC_num)
	clrf	(GetADCValue@ADC_num+1)
	line	49
	
l5359:	
;MyAdc.c: 49: if(GO_DONE==0){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(249/8),(249)&7
	goto	u11
	goto	u10
u11:
	goto	l2163
u10:
	line	50
	
l5361:	
;MyAdc.c: 50: ADC_num=ADRESH;
	movf	(30),w	;volatile
	movwf	(GetADCValue@ADC_num)
	clrf	(GetADCValue@ADC_num+1)
	line	51
;MyAdc.c: 51: ADC_num=ADC_num<<8;
	movf	(GetADCValue@ADC_num),w
	movwf	(GetADCValue@ADC_num+1)
	clrf	(GetADCValue@ADC_num)
	line	52
;MyAdc.c: 52: ADC_num=ADC_num|ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	iorwf	(GetADCValue@ADC_num),f
	line	53
	
l5363:	
;MyAdc.c: 53: GO_DONE=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(249/8),(249)&7
	line	54
	
l2163:	
	line	55
;MyAdc.c: 54: }
;MyAdc.c: 55: return ADC_num;
	movf	(GetADCValue@ADC_num+1),w
	movwf	(?_GetADCValue+1)
	movf	(GetADCValue@ADC_num),w
	movwf	(?_GetADCValue)
	line	56
	
l2164:	
	return
	opt stack 0
GLOBAL	__end_of_GetADCValue
	__end_of_GetADCValue:
;; =============== function _GetADCValue ends ============

	signat	_GetADCValue,90
	global	_GPIO_Init
psect	text94,local,class=CODE,delta=2
global __ptext94
__ptext94:

;; *************** function _GPIO_Init *****************
;; Defined at:
;;		line 23 in file "myconfiguration.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/20
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text94
	file	"myconfiguration.c"
	line	23
	global	__size_of_GPIO_Init
	__size_of_GPIO_Init	equ	__end_of_GPIO_Init-_GPIO_Init
	
_GPIO_Init:	
	opt	stack 6
; Regs used in _GPIO_Init: []
	line	25
	
l5355:	
;myconfiguration.c: 25: TRISA0=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1064/8)^080h,(1064)&7
	line	26
;myconfiguration.c: 26: TRISA1=0;
	bcf	(1065/8)^080h,(1065)&7
	line	27
;myconfiguration.c: 27: TRISA6=0;
	bcf	(1070/8)^080h,(1070)&7
	line	29
;myconfiguration.c: 29: TRISC1=0;
	bcf	(1081/8)^080h,(1081)&7
	line	30
;myconfiguration.c: 30: TRISC2=0;
	bcf	(1082/8)^080h,(1082)&7
	line	31
;myconfiguration.c: 31: TRISC3=0;
	bcf	(1083/8)^080h,(1083)&7
	line	33
;myconfiguration.c: 33: CM0=1;CM1=1;CM2=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(200/8),(200)&7
	bsf	(201/8),(201)&7
	bsf	(202/8),(202)&7
	line	37
;myconfiguration.c: 37: ANSEL0=0;ANSEL1=0;ANSEL2=0;ANSEL3=0;ANSEL4=0;ANSEL5=0;ANSEL6=0;ANSEL7=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1160/8)^080h,(1160)&7
	bcf	(1161/8)^080h,(1161)&7
	bcf	(1162/8)^080h,(1162)&7
	bcf	(1163/8)^080h,(1163)&7
	bcf	(1164/8)^080h,(1164)&7
	bcf	(1165/8)^080h,(1165)&7
	bcf	(1166/8)^080h,(1166)&7
	bcf	(1167/8)^080h,(1167)&7
	line	39
;myconfiguration.c: 39: WPUA0=1;WPUA1=1;WPUA6=1;
	bsf	(1192/8)^080h,(1192)&7
	bsf	(1193/8)^080h,(1193)&7
	bsf	(1198/8)^080h,(1198)&7
	line	41
;myconfiguration.c: 41: WPUC1=1;WPUC2=0;WPUC3=1;
	bsf	(1089/8)^080h,(1089)&7
	bcf	(1090/8)^080h,(1090)&7
	bsf	(1091/8)^080h,(1091)&7
	line	43
;myconfiguration.c: 43: WPDA4=0;WPDC1=0;WPDC2=0;WPDC3=0;
	bcf	(1100/8)^080h,(1100)&7
	bcf	(1099/8)^080h,(1099)&7
	bcf	(1098/8)^080h,(1098)&7
	bcf	(1097/8)^080h,(1097)&7
	line	44
	
l3237:	
	return
	opt stack 0
GLOBAL	__end_of_GPIO_Init
	__end_of_GPIO_Init:
;; =============== function _GPIO_Init ends ============

	signat	_GPIO_Init,88
	global	_System_init
psect	text95,local,class=CODE,delta=2
global __ptext95
__ptext95:

;; *************** function _System_init *****************
;; Defined at:
;;		line 14 in file "myconfiguration.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text95
	file	"myconfiguration.c"
	line	14
	global	__size_of_System_init
	__size_of_System_init	equ	__end_of_System_init-_System_init
	
_System_init:	
	opt	stack 6
; Regs used in _System_init: [wreg+status,2]
	line	16
	
l5349:	
;myconfiguration.c: 16: OPTION = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(129)^080h	;volatile
	line	17
	
l5351:	
;myconfiguration.c: 17: OSCCON = 0B01110000;
	movlw	(070h)
	movwf	(143)^080h	;volatile
	line	18
	
l5353:	
;myconfiguration.c: 18: WDTCON = 0B00001001;
	movlw	(09h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(24)	;volatile
	line	19
	
l3234:	
	return
	opt stack 0
GLOBAL	__end_of_System_init
	__end_of_System_init:
;; =============== function _System_init ends ============

	signat	_System_init,88
	global	_ISR
psect	text96,local,class=CODE,delta=2
global __ptext96
__ptext96:

;; *************** function _ISR *****************
;; Defined at:
;;		line 53 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: FFFFF/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          2       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text96
	file	"main.c"
	line	53
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 5
; Regs used in _ISR: []
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+0)
	movf	pclath,w
	movwf	(??_ISR+1)
	ljmp	_ISR
psect	text96
	line	55
	
i1l1091:	
	movf	(??_ISR+1),w
	movwf	pclath
	swapf	(??_ISR+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
;; =============== function _ISR ends ============

	signat	_ISR,88
psect	text97,local,class=CODE,delta=2
global __ptext97
__ptext97:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
