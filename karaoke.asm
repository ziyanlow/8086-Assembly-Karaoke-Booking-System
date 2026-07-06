TITLE  KARAOKE SYSTEM					; title directives
.MODEL SMALL						; declare memory model (SMALL)
.STACK 64						; declare STACK segment (64 bytes)
.DATA							; declare DATA segment
		NEWLINE		DB	10,13,"$"	; Break line
		
;=============================== DEFAULT DATA ====================

		EXITCODE		DB		"-1$"
		DEFAULTUSERNAME		DB		"csa$"	; Username for login
		DEFAULTPASSWORD		DB		"csa66$"; Password for login
		
;=============================== PROMPT MSG  ====================

		PROMPTUSERNAME		DB		"Enter the Username (-1 to exit): $"			; Ask for username
		PROMPTPASSWORD		DB		"Enter the Password (-1 to exit): $"			; Ask for password
		PROMPTSTARTORDER	DB		"Do you want to start order? (Y/N): $"			; Ask for start order or not
		PROMPTMEMBERID		DB		"Enter the Member ID (-1 to exit): $"			; Ask for memberID
		PROMPTMEMBERID2		DB		"Enter the Member ID: $"				; Ask for memberID
		PROMPTMEMBERNAME	DB		"Enter the Member Name: $"				; Ask for member name
		PROMPTROOMTYPE		DB		"Enter the Room Type No (-1 to cancel): $"		; Ask for roomtype
		PROMPTAMOUNT		DB		"Enter the Guest Amount (-1 to cancel): $"		; Ask for guest amount
		PROMPTCONFIRMORDER	DB		"Confirm to Order ? (Y/N): $"				; Ask for start order or not
		PROMPTCONTINUE		DB		"Press any key to continue$"				; Ask for continue
		ADDROOM			DB		"Enter room type: $"					; Ask room type
		ADDROOMPRICE		DB		"Enter room price: $"					; Ask room price
		
;============================== ERROR MSG ========================
		
		INVALIDACCOUNT		DB		"***Invalid Username or Password! Please try again.***$"; Invalid username or password
		INVALIDSELECTION	DB		"***Invalid Selection! Please try again.***","$"	; Invalid menu selection
		INVALIDYORNO		DB		"***Invalid Selection. Enter (Y/N) only.***$"		; Invalid yes or no
		INVALIDMEMBERID		DB		"***Invalid Member ID.***$"				; Invalid member ID
		INVALIDROOMTYPE		DB		"***Invalid Room Type.***$"				; Invalid room type
		INVALIDDIGIT		DB		"***Invalid Digit.***$"					; Invalid Digit
		INVALIDCHOOSE		DB		"***Invalid Number Selection! Please try agian.***","$"				
		REACHMAXROOM		DB		"***Error! Reach Maximum Room Type.***$"
		REACHMAXMEMBER		DB		"***Error! Reach Maximum Member.***$"
		
;================================ MSG ===============================
							
		VALIDACCOUNT		DB		"~~~~~~~~~~~Log in successfully~~~~~~~~~~~$"		; valid username or password
		SHUTDOWN		DB		"                ~~~System successfully exit!~~~$"	; program stopped message
		MSGROOMTYPE		DB		"Room Type: $"
		MSGROOMPRICE		DB		"Room Price: $"
		MSGMEMBERID		DB		"Member ID: $"
		MSGMEMBERNAME		DB		"Member Name: $"
		

;================================MENU================================

		MENUHEADER		DB		"========KARAOKE RESERVATION SYSTEM=======","$" ; Display Menu
		MENUORDER		DB		"| 1. Add Order                          |","$"		
		MENUROOM		DB		"| 2. Room Type                          |","$"		
		MENUMEMBER		DB		"| 3. Member                             |","$"			
		MENUEXIT		DB		"|-1. Logout                             |","$"
                LOWERLINE		DB		"=========================================","$"
		MENUASK			DB		"Enter selection: ","$"			 	; Ask for the choosen number
		
;========================== ROOM TYPE MENU ==========================

		PRODUCTMENUHEADER	DB		"=======KARAOKE RESERVATION SYSTEM=======$"	;display room type menu
		PRODUCTMENUHEADER2	DB		"|               ROOM TYPE               |","$"	;display room type
		PRODUCTMENUHEADER3      DB              "ROOM TYPE:","$"
		PRODUCTMENUORDER1	DB		"| 1. Add Room Type                      |$"
		PRODUCTMENUORDER2	DB		"| 2. Display Room Type                  |$"
		PRODUCTMENUEXIT		DB		"|-1. Exit                               |$"
		ROOM1			DB		"[1] Small Private Room 	RM 20","$"	;default room type and price
		ROOM2			DB		"[2] ","$                             "		;display no.2
		RM			DB		"RM","$"					;display RM
		
;============================ MEMBER MENU ===========================

		MEMBERMENUHEADER	DB		"===============MEMBER MENU===============","$" 	; Display Menu
		MENUADDMEMBER		DB		"| 1. Add Member                         |","$"	;- store max 5 record
		MENULISTMEMBER		DB		"| 2. Display Member                     |","$"	;- display max 5 record
		MEMBERMENUEXIT		DB		"|-1. Exit                               |","$"
		

;======================== CURRENT DATA STORAGE ======================

		CURRENTMEMBERID		LABEL	BYTE
		MAXCMEMBERID		DB	30
		ACTCMEMBERID		DB	?
		DATACMEMBERID		DB	30 dup (?)
		
		CURRENTROOMTYPE		LABEL	BYTE
		MAXCROOMTYPE		DB	30
		ACTCROOMTYPE		DB	?
		DATACROOMTYPE		DB	30 dup (?)
		
;============================= STORAGE ==============================

		TEMP			DB	'?'		; Temporary Storage
		
		ROOMTYPECOUNT		DB	'1$'
		ORDERCOUNT		DB	0
		MEMBERCOUNT		DB	'1$'
		
		USERNAME		LABEL	BYTE		; Storage for username
		MAXUSERNAME		DB	30
		ACTUSERNAME		DB	?
		DATAUSERNAME		DB	30 dup (?)
		
		PASSWORD		LABEL	BYTE		; Storage for password
		MAXPASSWORD		DB	30
		ACTPASSWORD		DB	?
		DATAPASSWORD		DB	30 dup (?)
		
		INPUTAMOUNT		LABEL	BYTE
		MAXINPUTAMOUNT		DB	4
		ACTAMOUNT		DB	?
		DATAAMOUNT		DB	4 dup ('$')
		
		INPUTMEMBERID		LABEL	BYTE
		MAXMEMBERID		DB	10
		ACTMEMBERID		DB	?
		DATAMEMBERID		DB	10 dup (?)
		
;========================= MEMNER STORAGE ===========================
		
		MEMBERID		DB	"M0001$"
		MEMBERNAME		DB	"Low Zi Yan$"
		
		MEMBERID2		LABEL	BYTE
		MAXMEMBER2		DB	10
		ACTMEMBER2		DB	?
		DATAMEMBER2		DB	10 dup ('$')
		
		MEMBERID3		LABEL	BYTE
		MAXMEMBER3		DB	10
		ACTMEMBER3		DB	?
		DATAMEMBER3		DB	10 dup ('$')
		
		MEMBERID4		LABEL	BYTE
		MAXMEMBER4		DB	10
		ACTMEMBER4		DB	?
		DATAMEMBER4		DB	10 dup ('$')
		
		MEMBERID5		LABEL	BYTE
		MAXMEMBER5		DB	10
		ACTMEMBER5		DB	?
		DATAMEMBER5		DB	10 dup ('$')
		
		MEMBERNAME2		LABEL	BYTE
		MAXMEMBERNAME2		DB	30
		ACTMEMBERNAME2		DB	?
		DATAMEMBERNAME2		DB	30 dup ('$')
		
		MEMBERNAME3		LABEL	BYTE
		MAXMEMBERNAME3		DB	30
		ACTMEMBERNAME3		DB	?
		DATAMEMBERNAME3		DB	30 dup ('$')
		
		MEMBERNAME4		LABEL	BYTE
		MAXMEMBERNAME4		DB	30
		ACTMEMBERNAME4		DB	?
		DATAMEMBERNAME4		DB	30 dup ('$')
		
		MEMBERNAME5		LABEL	BYTE
		MAXMEMBERNAME5		DB	30
		ACTMEMBERNAME5		DB	?
		DATAMEMBERNAME5		DB	30 dup ('$')
		
;======================== ROOM TYPE STORAGE =========================

		ROOMNUM			DB	"1.$"
		ROOMTYPE		DB	"Small Private Room$"
		ROOMPRICE		DB	"10$"
		
		ROOMNUM2		DB	"2.$"
		
		ROOMTYPE2		LABEL	BYTE
		MAXROOM			DB	50
		ACTROOM			DB	?
		DATAROOM		DB	50 dup ('$')
		
		ROOMPRICE2		LABEL	BYTE
		MAXPRICE		DB	50
		ACTPRICE		DB	?
		DATAPRICE		DB	50 dup ('$')
			
;======================== ORDER SUMMARY =============================

		ORDERSUMMARYHEADER 	DB	"===================== ORDER SUMMARY =======================$" 
		ORDERSUMMARYLINE2	DB	"						ORDER NO:$";It contains tab space
		ORDERSUMMARYLINE3	DB	"MEMBER ID: $"
		ORDERSUMMARYLINE4	DB	"MEMBER NAME: $"
		ORDERSUMMARYLINE5	DB	"===========================================================$"
		ORDERSUMMARYLINE6	DB	" No |            ROOMS           | AMOUNT | PRICE/PERSON$"
		ORDERSUMMARYLINE7	DB	" 01 | $"
		ORDERSUMMARYLINE7A	DB	"| $"
		ORDERSUMMARYLINE7B	DB	"| RM$"
		ORDERSUMMARYLINE8	DB	"===========================================================$"
		
;======================MATH CALCULATION=============================

		ORDERDIVISOR 		DB 	10
		ORDERQUOTIENT		DB	10
		ORDERREMAINDER		DB	10
		
;======================== SYSTEM SUMMARY ============================

		SYSTEMSUMMARYHEADER	DB	"===================== SYSTEM SUMMARY =====================$"
		SYSTEMSUMMARYLINE1	DB	"Member Amount : $"
		SYSTEMSUMMARYLINE2	DB	"Room Amount   : $"
		SYSTEMSUMMARYLINE3	DB	"Order Amount  : $"
		SYSTEMSUMMARYFOOTER	DB	"==========================================================$"
		THANKYOU		DB	"~~~~~~~~~~~~~~~THANK YOU FOR USING THE SYSTEM~~~~~~~~~~~~~$"
		
;======================== PAYMENT SUMMARY ===========================

		CUSTIDMSG		DB	"MEMBER ID   : $"			;DISPLAY MEMBER ID EG. C0001
		CUSTNAMEMSG		DB 	"MEMBER NAME : $"			;DISPLAY MEMBER NAME
		ORDERMSG		DB	"ORDER NUMBER: $"			;DISPLAY ORDER ID EG. O00001
		
		PAYMENTSUMMARYH		DB	"==================== PAYMENT SUMMARY =================$"
		PAYMENTSUMMARYF		DB	"======================================================$"
						
		ROOMMSG		 	DB 	"ROOM PRICE      : RM $"
		PEOMSG 			DB 	13,10,"NUMBER OF PEOPLE: $"
		PRICEN			DW	?
		PEONUMN			DW	?
		
;======================= PAYMENT SECTION ============================

		SUBTOTMSG 		DB 	      "SUBTOTAL        : RM $" 		;DISPLAY MESSAGE
		SSTMSG 			DB 	13,10,"SST CHARGES (5%): RM $"
		TOTMSG			DB	13,10,"TOTAL PAYMENT   : RM $"
		SUBTOTAL	 	DW 	0,0,0					;ACCEPT THREE DIGITS CHARACTER
		SUBTOTALN		DW	?
		PERC 			DW 	5					;ASSIGN VALUE 5 TO PERC
		R	 		DB 	0,0					;QUOTIENT AND REMAINDER
		TEN			DB 	10					;XX
		HUNDRED			DB 	100					;XXX
		SSTCHARGE		DB 	0,0,0,0					;RM XX.XX
		SSTCHARGEN		DW	?
		TOTAL			DB	0,0,0					;RM XXX.XX
		TOTALN			DW	?
		
;---------------------------------------------------------------------------------------------------------------------------------------------
.CODE						; declare CODE segment
		MAIN PROC FAR			; MAIN function starts here
		
		MOV	AX , @DATA
		MOV	DS , AX			; initialise DS register
		
		MOV	AX , 0600H		; screen clearing + set the background to white and foreground to black
		MOV	BH , 70H								
		MOV	CX , 0000H
		MOV	DX , 184FH
		INT	10H
		
		MOV	AH , 02H		; set the cursor position
		MOV	BH , 00
		MOV	DH , 01
		MOV	DL , 20
		INT	10H
		
		MOV	AH , 09H
		LEA	DX , NEWLINE		; break new line
		INT	21H	
		
;=========================== Login ==================================
;--> USERNAME PART 
inputUserName:					; Login username part
		MOV	AH , 09H
		LEA	DX , PROMPTUSERNAME	; display enter the username message
		INT	21H
		
		MOV	AH, 0AH
		LEA	DX, USERNAME		; input the username
		INT 	21H
		
		MOV	AH , 09H
		LEA	DX , NEWLINE		; break new line
		INT	21H	
		
		MOV	SI , OFFSET USERNAME + 2; Put the user name input offset address into SI
		MOV 	DI , OFFSET EXITCODE	; Put the exit code input offset address into SI
		
exitUserName:					; Check -1 exist in prompt user name?
		MOV	DH , [DI]			
		CMP	DH , '$'		; Check it is end of exitcode if yes end the programme as it is valid
		JE	exitTransfer
		
		MOV	DL , [SI]
		CMP	DL , 13			; Check it is end of input but not end of exitcode than proceed input password as invalid
		JE	inputPassword
		
		CMP	DL , DH			; compare default storage character and input storage character
		JNE	inputPassword		; invalid proceed to input password
		INC	SI
		INC	DI
		JMP	exitUserName		; check next character
		
exitTransfer:					; Medium of pass the exit method
		JMP	exit
		
login:						; Medium of pass the input user name method
		JMP	inputUserName

;-->PASSWORD PART 
	
inputPassword:					; Login password part
		MOV	AH , 09H
		LEA	DX , PROMPTPASSWORD	; display enter the password message
		INT	21H
		
		MOV	AH, 0AH
		LEA	DX, PASSWORD		; input the password
		INT 	21H
		
		MOV	AH , 09H
		LEA	DX , NEWLINE		; break new line
		INT	21H	
		
		MOV	SI , OFFSET PASSWORD + 2; put the password input offset address into SI
		MOV 	DI , OFFSET EXITCODE	; put the -1 code into DI

exitPassword:					; Check -1 exist in prompt password?
		MOV	DH , [DI]			
		CMP	DH , '$'		; Check it is end of exitcode if yes end the programme as it is valid
		JE	exitTransfer
		
		MOV	DL , [SI]
		CMP	DL , 13			; Check it is end of input but not end of exitcode than proceed verification as invalid
		JE	verifyUserName
		
		CMP	DL , DH			; compare default storage character and input storage character
		JNE	verifyUserName		; invalid proceed to verification
		INC	SI
		INC	DI
		JMP	exitPassword		; check next character

;--> VERIFICATION PART 
verifyUserName:
		MOV	SI , OFFSET USERNAME + 2		; Put the username input offset address into SI
		MOV 	DI , OFFSET DEFAULTUSERNAME		; Put the default username offset address into SI
		
loopUserName:
		MOV	DH , [DI]			
		CMP	DH , '$'				; Check it is end of default username if yes go to menu as it is valid
		JE	verifyPassword
		
		MOV	DL , [SI]
		CMP	DL , 13					; Check it is end of input but not end of default username than return to login as invalid
		JE	invalidLogin
		
		CMP	DL , DH					; Compare two string
		JNE	invalidLogin				; invalid return to invalid login method
		INC	SI
		INC	DI
		JMP	loopUserName				; if valid but not finish loop again

verifyPassword:
		MOV	SI , OFFSET PASSWORD + 2		; Put the password input offset address into SI
		MOV 	DI , OFFSET DEFAULTPASSWORD		; Put the default password offset address into DI
		
loopPassword:
		MOV	DH , [DI]			
		CMP	DH , '$'				; Check it is end of default username if yes go to menu as it is valid
		JE	succesfulLogin
		
		MOV	DL , [SI]
		CMP	DL , 13					; Check it is end of input but not end of default username than return to login as invalid
		JE	invalidLogin
		
		CMP	DL , DH					; Compare two string
		JNE	invalidLogin				; invalid return to invalid login method
		INC	SI
		INC	DI
		JMP	loopPassword				; if valid but not finish loop again

invalidLogin:
		
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to red
		MOV		BH , 74H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 20
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , INVALIDACCOUNT		; display menu header
		INT		21H
			
		MOV		AX , 0600H			; set the background to white and foreground to blue
		MOV		BH , 70H								
		MOV		CX , 0300H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		JMP		login
		
;--> Message Part 
succesfulLogin:
		
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to blue
		MOV		BH , 71H;							
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 20
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , VALIDACCOUNT		; display menu header
		INT		21H
		
		MOV		AX , 0600H			; set the background to white and foreground to blue
		MOV		BH , 70H;								
		MOV		CX , 0300H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
;======================= MAIN MENU ==================================

menu:
		MOV		AH , 09H
		LEA		DX , MENUHEADER			; display menu header
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , MENUORDER			; display menu order
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , MENUROOM			; display menu room
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , MENUMEMBER			; display menu member
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , MENUEXIT			; display menu exit sentences
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H

		MOV		AH , 09H
		LEA 		DX , LOWERLINE;
		INT  		21H		

		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , MENUASK			; display menu ask for selection
		INT		21H
		
		MOV		AH , 01H			; accept a character for choose the menu
		INT		21H
		MOV		TEMP,AL				; Move the AL value (input value) to TEMP prevent it disappear
		
		CMP		TEMP , 2DH			; Check it is the character is '-'
		JE		checkNegativeTransfer		; Go to checkNegative method
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to black
		MOV		BH , 70H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 00
		INT		10H
		
		CMP		TEMP , 31H			; Compare the character whether it is 1
		JE		askOrderTransfer		; If is 1 jump to ask order
		
		CMP		TEMP , 32H			; Compare the character whether it is 2
		JE		roommenuTransfer		; If is 2 jump to room menu
		
		CMP		TEMP , 33H			; Compare the character whether it is 3
		JE		membermenuTransfer4		; If is 3 jump to member menu
		
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to red
		MOV		BH , 74H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 20
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , INVALIDSELECTION		; display invalid message 
		INT		21H
		
		MOV		AX , 0600H			; set the background to white and foreground to blue
		MOV		BH , 70H								
		MOV		CX , 0300H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		JMP		menu				; Back to the main menu
checkNegativeTransfer:						; Medium of jump to check negative method
		JMP		checkNegative
roommenuTransfer:						; Medium of jump to room menu method
		JMP		roommenu	
membermenuTransfer4:						; Medium of jump to member menu method
		JMP		membermenu
askOrderTransfer:						; Medium of the ask order method
		JMP		askOrder
		
loginTransfer:							; Medium of the login transfer method
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to black
		MOV		BH , 70H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 00
		INT		10H
		
		JMP		login
		
checkNegative:							; check whether it is -1 for exit
		MOV		AH , 01H			; accept a character from choosing the menu
		INT		21H
		MOV		TEMP,AL				; Move the AL value (input value) to TEMP prevent it disappear
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		CMP		TEMP , 31H			; Compare the character whether it is 1
		JE		loginTransfer			; If is 1 jump to ask order
		
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to red
		MOV		BH , 74H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 20
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , INVALIDSELECTION		; display invalid message 
		INT		21H
		
		MOV		AX , 0600H			; set the background to white and foreground to blue
		MOV		BH , 70H								
		MOV		CX , 0300H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		JMP		menu				; Back to the menu

;========================= ROOM MENU ================================
	
roommenu:
		MOV		AH , 09H
		LEA		DX , PRODUCTMENUHEADER		; display menu header
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , PRODUCTMENUORDER1		; display menu order1
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , PRODUCTMENUORDER2		; display menu order2
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , PRODUCTMENUEXIT		; display menu exit
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H

		MOV		AH , 09H
		LEA 		DX , LOWERLINE;
		INT  		21H		

		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H

		MOV		AH , 09H
		LEA		DX , MENUASK			; display prompt message
		INT		21H
		
		MOV		AH , 01H			; accept a character for choose the menu
		INT		21H
		MOV		TEMP,AL				; Move the AL value (input value) to TEMP prevent it disappear
		
		CMP		TEMP , 2DH			; Check it is the character is '-'
		JE		checktransfer1			; If is '-' jump to checktransfer1 for transfer to next function
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		CMP		TEMP , 31H			; Compare the character whether it is 1
		JE		checkcountnumber		; If is 1 jump to check is it reach maximum add room
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		CMP		TEMP , 32H			; Compare the character whether it is 2
		JE		checktransfer2			; If is 2 jump to checktransfer2 for transfer to next function
		
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to red
		MOV		BH , 74H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 00
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , INVALIDCHOOSE		; display invalid message 
		INT		21H
		
		MOV		AX , 0600H			; set the background to white and foreground to blue
		MOV		BH , 70H								
		MOV		CX , 0300H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		JMP		roommenu			; Repeat main menu


;===================== TRANSFER FUNCTION ==================
		
checktransfer1:
		JMP		checkRoomNegative		; transfer to checkNegative to check it is '-1'
		
checktransfer2:
		JMP		displayroomtype			; transfer to displayroomtype

checkcountnumber:						; check is it count number = 1, more than 2 will reach maximum add
		CMP		ROOMTYPECOUNT , 31H
		JE 		addroomtype			; if count = 1, go to add room, else display error msg
		
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to red
		MOV		BH , 74H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 00
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , REACHMAXROOM		
		INT		21H
		
		MOV		AX , 0600H			; set the background to white and foreground to blue
		MOV		BH , 70H								
		MOV		CX , 0300H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 00
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		JMP 		roommenu
		
addroomtype:
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to black
		MOV		BH , 70H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 00
		INT		10H
	
		MOV		AH , 09H
		LEA		DX , ADDROOM			; display add room message
		INT		21H
		
		MOV		AH , 0AH
		LEA		DX , ROOMTYPE2			; input the add room type
		INT 		21H
			
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H	
		
		MOV		AH , 09H
		LEA		DX , ADDROOMPRICE		; display add room price message
		INT		21H
		
		MOV		AH , 0AH
		LEA		DX , ROOMPRICE2			; input the add room price
		INT 		21H
		
		INC		ROOMTYPECOUNT			; add counter
		
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to black
		MOV		BH , 70H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 00
		INT		10H
		
		JMP 		roommenu			; back to menu

displayroomtype:
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to black
		MOV		BH , 70H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 00
		INT		10H

		

		MOV		AH , 09H
		LEA		DX , PRODUCTMENUHEADER3		; display room type header//HALOOO
		INT		21H


		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , ROOM1			
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		CMP		ROOMTYPECOUNT, '2'		; if room type count is 2 display room type 2
		JE		displayroom2
		
		JMP 		pressContinue2			; pause the screen
		
displayroom2:
		MOV		AH , 09H
		LEA		DX , ROOM2			; display '[2]'
		INT		21H

		MOV		AH , 09H
		LEA		DX , DATAROOM			; display room type
		INT		21H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 03
		MOV		DL , 16
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , RM				; display 'RM'
		INT		21H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 03
		MOV		DL , 19
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , DATAPRICE			; display room price
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		JMP 		pressContinue2			; pause the screen
		
pressContinue2:
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to black
		MOV		BH , 00FFH								
		MOV		CX , 0B00H
		MOV		DX , 0D4FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 12
		MOV		DL , 26
		INT		10H

		MOV		AH , 09H
		LEA		DX , PROMPTCONTINUE		; Display press any key to continue
		INT		21H
		
		MOV		AH , 01H			; accept a character
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to black
		MOV		BH , 70H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 00
		INT		10H
		
		JMP		roommenu
		
checkRoomNegative:						; check whether it is negative to exit
		MOV		AH , 01H			; accept a character for choose the menu
		INT		21H
		MOV		TEMP,AL				; Move the AL value (input value) to TEMP prevent it disappear
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to red
		MOV		BH , 70H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 00
		INT		10H
		
		CMP		TEMP , 31H			; Compare the character whether it is 1
		JE		menuTransfer			; If is 1 jump to exit
		
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to red
		MOV		BH , 74H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 00
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , INVALIDCHOOSE		; "Invalid Number Selection$"
		INT		21H
		
		MOV		AX , 0600H			; set the background to white and foreground to blue
		MOV		BH , 70H								
		MOV		CX , 0300H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		JMP		roommenu			; Back to the menu
menuTransfer:							; Medium of the menu method
		JMP		menu				; bring back to the main menu


;======================== MEMBER ====================================

;-->MENU PART 
membermenu:
		MOV		AH , 09H
		LEA		DX , MEMBERMENUHEADER		; display menu header
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , MENUADDMEMBER		; display menu add member
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , MENULISTMEMBER		; display menu listmember
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , MEMBERMENUEXIT		; display menu order
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA 		DX , LOWERLINE;
		INT  		21H		

		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H

		MOV		AH , 09H
		LEA		DX , MENUASK			; display menu order
		INT		21H
		
		MOV		AH , 01H			; accept a character for choose the menu
		INT		21H
		MOV		TEMP,AL				; Move the AL value (input value) to TEMP prevent it disappear
		
		CMP		TEMP , 2DH			; Check it is the character is '-'
		JE		checkMemberNegativeTransfer	; Go to checkNegative method
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		CMP		TEMP , 31H			; Compare the character whether it is 1
		JE		addMemberTransfer		; If is 1 jump to ask member
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		CMP		TEMP , 32H			; Compare the character whether it is 2
		JE		listMemberTransfer		; If is 2 jump to display member list
		
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to red
		MOV		BH , 74H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 00
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , INVALIDCHOOSE		; display invalid message 
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AX , 0600H			; set the background to white and foreground to blue
		MOV		BH , 70H								
		MOV		CX , 0300H
		MOV		DX , 184FH
		INT		10H
		
		JMP		membermenu			; END the programme
addMemberTransfer:						; Medium of jump to add member method
		JMP		addMember
listMemberTransfer:						; Medium of jump to list member method
		JMP		listmember
		
checkMemberNegativeTransfer:					; Medium of jump check member negative transfer
		JMP		checkMemberNegative
		
;--> MEMBER PART
maxRecord:
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to red
		MOV		BH , 74H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 00
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , REACHMAXMEMBER		; "Invalid Number Selection$"
		INT		21H
		
		MOV		AX , 0600H			; set the background to white and foreground to blue
		MOV		BH , 70H								
		MOV		CX , 0300H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H	
		
		JMP		membermenu
addmember:
		CMP		memberCount, '5'
		JAE		maxRecord
		
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to white
		MOV		BH , 70H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 00
		INT		10H
		
		INC		memberCount
				
		CMP		memberCount, '2'
		JE		addRecord2	
		
		CMP		memberCount, '3'
		JE		addRecord3	
		
		CMP		memberCount, '4'
		JE		addRecord4Transfer	
		
		CMP		memberCount, '5'
		JE		addRecord5Transfer
addRecord4Transfer:
		JMP		addRecord4
addRecord5Transfer:
		JMP		addRecord5
addRecord2:
		MOV		AH , 09H
		LEA		DX , PROMPTMEMBERID2		; display enter the member ID message
		INT		21H
		
		MOV		AH, 0AH
		LEA		DX, MEMBERID2			; input the member ID
		INT 		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H	
		
		MOV		AH , 09H
		LEA		DX , PROMPTMEMBERNAME		; display enter the member Name message
		INT		21H
		
		MOV		AH, 0AH
		LEA		DX, MEMBERNAME2			; input the member Name
		INT 		21H
			
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to white
		MOV		BH , 70H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 00
		INT		10H
		
		JMP		membermenuTransfer
		
addRecord3:
		MOV		AH , 09H
		LEA		DX , PROMPTMEMBERID2		; display enter the member ID message
		INT		21H
		
		MOV		AH, 0AH
		LEA		DX, MEMBERID3			; input the member ID
		INT 		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H	
		
		MOV		AH , 09H
		LEA		DX , PROMPTMEMBERNAME		; display enter the member Name message
		INT		21H
		
		MOV		AH, 0AH
		LEA		DX, MEMBERNAME3			; input the member Name
		INT 		21H
			
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to white
		MOV		BH , 70H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 00
		INT		10H
		
		JMP		membermenuTransfer
membermenuTransfer:						; Medium of jump to member menu
		JMP		membermenu
addRecord4:
		MOV		AH , 09H
		LEA		DX , PROMPTMEMBERID2		; display enter the member ID message
		INT		21H
		
		MOV		AH, 0AH
		LEA		DX, MEMBERID4			; input the member ID
		INT 		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H	
		
		MOV		AH , 09H
		LEA		DX , PROMPTMEMBERNAME		; display enter the member Name message
		INT		21H
		
		MOV		AH, 0AH
		LEA		DX, MEMBERNAME4			; input the member Name
		INT 		21H
			
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to white
		MOV		BH , 70H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 00
		INT		10H
		
		JMP		membermenuTransfer
		
addRecord5:
		MOV		AH , 09H
		LEA		DX , PROMPTMEMBERID2		; display enter the member ID message
		INT		21H
		
		MOV		AH, 0AH
		LEA		DX, MEMBERID5			; input the member ID
		INT 		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H	
		
		MOV		AH , 09H
		LEA		DX , PROMPTMEMBERNAME		; display enter the member Name message
		INT		21H
		
		MOV		AH, 0AH
		LEA		DX, MEMBERNAME5			; input the member Name
		INT 		21H
			
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to white
		MOV		BH , 70H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 00
		INT		10H
		
		JMP		membermenuTransfer
		
listmember:
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to red
		MOV		BH , 70H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 00
		INT		10H

		MOV		AH , 09H
		LEA		DX , MSGMEMBERID		; display member id message
		INT		21H

		MOV		AH, 09H
		LEA		DX, MEMBERID			; display member id
		INT 		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H	
		
		MOV		AH, 09H
		LEA		DX, MSGMEMBERNAME		; display member name message
		INT 		21H
		
		MOV		AH, 09H
		LEA		DX, MEMBERNAME			; display member name 
		INT 		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H	
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		CMP		MEMBERCOUNT , '2'
		JAE		displaymember2
		
		JMP		pressContinue4Transfer
		
displaymember2:
		MOV		AH , 09H
		LEA		DX , MSGMEMBERID		; display member id message
		INT		21H

		MOV		AH, 09H
		LEA		DX, DATAMEMBER2			; display member id
		INT 		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H	
		
		MOV		AH, 09H
		LEA		DX, MSGMEMBERNAME		; display member name message
		INT 		21H
		
		MOV		AH, 09H
		LEA		DX, DATAMEMBERNAME2		; display member name 
		INT 		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H	
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		CMP		MEMBERCOUNT , '3'
		JAE		displaymember3
		
		JMP		pressContinue4Transfer

pressContinue4Transfer:						; medium of jump pressContinue4 method
		JMP		pressContinue4

displaymember3:
		MOV		AH , 09H
		LEA		DX , MSGMEMBERID		; display member id message
		INT		21H

		MOV		AH, 09H
		LEA		DX, DATAMEMBER3			; display member id
		INT 		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H	
		
		MOV		AH, 09H
		LEA		DX, MSGMEMBERNAME		; display member name message
		INT 		21H
		
		MOV		AH, 09H
		LEA		DX, DATAMEMBERNAME3		; display member name 
		INT 		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H	
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		CMP		MEMBERCOUNT , '4'
		JAE		displaymember4
		
		JMP		pressContinue4
		
displaymember4:
		MOV		AH , 09H
		LEA		DX , MSGMEMBERID		; display member id message
		INT		21H

		MOV		AH, 09H
		LEA		DX, DATAMEMBER4			; display member id
		INT 		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H	
		
		MOV		AH, 09H
		LEA		DX, MSGMEMBERNAME		; display member name message
		INT 		21H
		
		MOV		AH, 09H
		LEA		DX, DATAMEMBERNAME4		; display member name 
		INT 		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H	
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		CMP		MEMBERCOUNT , '5'
		JE		displaymember5
		
		JMP		pressContinue4
		
displaymember5:
		MOV		AH , 09H
		LEA		DX , MSGMEMBERID		; display member id message
		INT		21H

		MOV		AH, 09H
		LEA		DX, DATAMEMBER5			; display member id
		INT 		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H	
		
		MOV		AH, 09H
		LEA		DX, MSGMEMBERNAME		; display member name message
		INT 		21H
		
		MOV		AH, 09H
		LEA		DX, DATAMEMBERNAME5		; display member name 
		INT 		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H	
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		JMP		pressContinue4
		
pressContinue4:
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to black
		MOV		BH , 00FFH								
		MOV		CX , 1200H
		MOV		DX , 164FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 18
		MOV		DL , 26
		INT		10H

		MOV		AH , 09H
		LEA		DX , PROMPTCONTINUE		; Display press any key to continue
		INT		21H
		
		MOV		AH , 01H			; accept a character
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to black
		MOV		BH , 70H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 00
		INT		10H
		
		JMP		membermenu
membermenuTransfer2:						; Medium for jump to member menu method
		JMP		membermenu
checkMemberNegative:						; check whether it is -1 for exit
		MOV		AH , 01H			; accept a character from choosing the menu
		INT		21H
		MOV		TEMP,AL				; Move the AL value (input value) to TEMP prevent it disappear
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to white
		MOV		BH , 70H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 00
		INT		10H
		
		CMP		TEMP , 31H			; Compare the character whether it is 1
		JE		menuTransfer7			; If is 1 jump to ask order
		
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to red
		MOV		BH , 74H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 20
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , INVALIDSELECTION		; display invalid message 
		INT		21H
		
		MOV		AX , 0600H			; set the background to white and foreground to blue
		MOV		BH , 70H								
		MOV		CX , 0300H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		JMP		membermenu			; Back to the menu
menuTransfer7:							; Medium for jump to member menu
		JMP		menu
membermenuTransfer3:						; Medium for jump to member menu
		JMP		membermenu

;======================= ORDER ======================================

;--> Ask for order 
askOrder:
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to black
		MOV		BH , 70H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 00
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , PROMPTSTARTORDER		; display start order?
		INT		21H
		
		MOV		AH , 01H			; accept a character for yes or no
		INT		21H
			
		MOV		TEMP,AL				; Move the AL value (input value) to TEMP prevent it disappear
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to black
		MOV		BH , 70H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 00
		INT		10H
		
		CMP		TEMP , 79H			; Compare the character whether it is 'y'
		JE		orderTransfer			; If is 'y' proceed the order
		
		CMP		TEMP , 59H			; Compare the character whether it is 'Y'
		JE		orderTransfer			; If is 'Y' proceed the order
		
		CMP		TEMP , 4EH			; Compare the character whether it is 'N'
		JE		menuTransfer2			; If is 'N' back to the main menu
		
		CMP		TEMP , 6EH			; Compare the character whether it is 'n'
		JE		menuTransfer2			; If is 'n' back to the main menu
		
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to red
		MOV		BH , 74H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 20
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , INVALIDYORNO		; display invalid message 
		INT		21H
		
		MOV		AX , 0600H			; set the background to white and foreground to blue
		MOV		BH , 70H								
		MOV		CX , 0300H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		JMP		askOrder
		
orderTransfer:							; medium for jump to the order method
		JMP		order
		
menuTransfer2: 							; Medium of the menu method
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to black
		MOV		BH , 70H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 00
		INT		10H
		
		JMP		menu
		
;--> Member ID PART 
order:
		
		MOV		AH , 09H
		LEA		DX , PROMPTMEMBERID		; display enter the member id message
		INT		21H
		
		MOV		AH, 0AH
		LEA		DX, INPUTMEMBERID		; input the member ID
		INT 		21H
			
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H	
		
		MOV		SI , OFFSET INPUTMEMBERID + 2	; put the password input offset address into SI
		MOV 		DI , OFFSET EXITCODE		; put the -1 code into DI
		
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to black
		MOV		BH , 70H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 00
		INT		10H
		
exitOrder:							; Check -1 exist in prompt member ID?
		MOV		DH , [DI]			
		CMP		DH , '$'			; Check it is end of exitcode if yes return to main menu as it is valid
		JE		menuTransfer2
		
		MOV		DL , [SI]
		CMP		DL , 13				; Check it is end of input but not end of exitcode than proceed input password as invalid
		JE		accessMemberID
		
		CMP		DL , DH				; compare default storage character and input storage character
		JNE		accessMemberID			; invalid proceed to input password
		INC		SI
		INC		DI
		JMP		exitOrder			; check next character
		
orderRoomTypeTransfer:						; Medium to jump into room type method
		JMP		orderRoomType;
		
accessMemberID:
		MOV		SI , OFFSET INPUTMEMBERID + 2	; Put the member id input offset address into SI		
		MOV 		DI , OFFSET MEMBERID		; Put the default member id offset address into DI
		
verifyMemberID:
		MOV		CURRENTMEMBERID, '1'		; store the member id to current member id
		
		MOV		DH , [DI]			
		CMP		DH , '$'			; Check it is end of default username if yes go to menu as it is valid
		JE		orderRoomTypeTransfer
		
		MOV		DL , [SI]
		CMP		DL , 13				; Check it is end of input but not end of default member id go to next check
		JE		accessMemberID2
		
		CMP		DL , DH				; Compare two string
		JNE		accessMemberID2			; invalid return to invalid login method
		INC		SI
		INC		DI
		JMP		verifyMemberID			; if valid but not finish loop again
		
accessMemberID2:
		MOV		SI , OFFSET INPUTMEMBERID + 2	; Put the member id input offset address into SI		
		MOV 		DI , OFFSET MEMBERID2 + 2	; Put the default member id offset address into DI
		
verifyMemberID2:
		MOV		CURRENTMEMBERID, '2'		; store the member id to current member id
		
		MOV		DH , [DI]			
		CMP		DH , 13				; Check it is end of default username if yes go to menu as it is valid
		JE		orderRoomTypeTransfer
		
		MOV		DL , [SI]
		CMP		DL , 13				; Check it is end of input but not end of default member id go to next check
		JE		accessMemberID3
		
		CMP		DL , DH				; Compare two string
		JNE		accessMemberID3			; invalid return to invalid login method
		INC		SI
		INC		DI
		JMP		verifyMemberID2			; if valid but not finish loop again

accessMemberID3:
		MOV		SI , OFFSET INPUTMEMBERID + 2	; Put the member id input offset address into SI		
		MOV 		DI , OFFSET MEMBERID3 + 2	; Put the default member id offset address into DI
		
verifyMemberID3:
		MOV		CURRENTMEMBERID, '3'		; store the member id to current member id
		
		MOV		DH , [DI]			
		CMP		DH , 13				; Check it is end of default username if yes go to menu as it is valid
		JE		orderRoomTypeTransfer
		
		MOV		DL , [SI]
		CMP		DL , 13				; Check it is end of input but not end of default member id go to next check
		JE		accessMemberID4
		
		CMP		DL , DH				; Compare two string
		JNE		accessMemberID4			; invalid return to invalid login method
		INC		SI
		INC		DI
		JMP		verifyMemberID3			; if valid but not finish loop again
		
orderTransfer2:							; Medium for jump to the order method
		JMP		order
		
accessMemberID4:
		MOV		SI , OFFSET INPUTMEMBERID + 2	; Put the member id input offset address into SI		
		MOV 		DI , OFFSET MEMBERID4 + 2	; Put the default member id offset address into DI
		
verifyMemberID4:
		MOV		CURRENTMEMBERID, '4'		; store the member id to current member id
		
		MOV		DH , [DI]			
		CMP		DH , 13				; Check it is end of default username if yes go to menu as it is valid
		JE		orderRoomType
		
		MOV		DL , [SI]
		CMP		DL , 13				; Check it is end of input but not end of default member id go to next check
		JE		accessMemberID5
		
		CMP		DL , DH				; Compare two string
		JNE		accessMemberID5			; invalid return to invalid login method
		INC		SI
		INC		DI
		JMP		verifyMemberID4			; if valid but not finish loop again

accessMemberID5:
		MOV		SI , OFFSET INPUTMEMBERID + 2	; Put the member id input offset address into SI		
		MOV 		DI , OFFSET MEMBERID5 + 2	; Put the default member id offset address into DI
		
verifyMemberID5:
		MOV		CURRENTMEMBERID, '5'		; store the member id to current member id

		MOV		DH , [DI]			
		CMP		DH , 13				; Check it is end of default username if yes go to menu as it is valid
		JE		orderRoomType
		
		MOV		DL , [SI]
		CMP		DL , 13				; Check it is end of input but not end of default username than return to login as invalid
		JE		memberIDInvalid
		
		CMP		DL , DH				; Compare two string
		JNE		memberIDInvalid			; invalid return to invalid login method
		INC		SI
		INC		DI
		JMP		verifyMemberID5			; if valid but not finish loop again

memberIDInvalid:
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to red
		MOV		BH , 74H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 20
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , INVALIDMEMBERID		; display invalid member id
		INT		21H
			
		MOV		AX , 0600H			; set the background to white and foreground to blue
		MOV		BH , 70H								
		MOV		CX , 0300H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		JMP		orderTransfer2
menuTransfer3:							; Medium of jump to main menu
		JMP		menu;
		
;--> ROOM TYPE PART 		
orderRoomType:
		
		MOV		AH , 09H
		LEA		DX , ROOMNUM			; display room num text
		INT		21H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 02
		MOV		DL , 00
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , MSGROOMTYPE		; display room type text
		INT		21H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 02
		MOV		DL , 12
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , ROOMTYPE			; display room type 1
		INT		21H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 03
		MOV		DL , 00
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , MSGROOMPRICE		; display room price text
		INT		21H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 03
		MOV		DL , 12
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , ROOMPRICE			; display room price 1
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H	
		
		CMP		ROOMTYPECOUNT, '2'		; if the order count is 2 display room type 2
		JE		displayRoomType2
		
		JMP		enterRoomType
		
displayRoomType2:
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H	
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 05
		MOV		DL , 00
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , ROOMNUM2			; display room num 2 text
		INT		21H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 06
		MOV		DL , 00
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , MSGROOMTYPE		; display room price text
		INT		21H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 06
		MOV		DL , 12
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , DATAROOM			; display room price 2
		INT		21H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 07
		MOV		DL , 00
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , MSGROOMPRICE		; display room price text
		INT		21H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 07
		MOV		DL , 12
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , DATAPRICE			; display room price 2
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H	
		
		
enterRoomType:
		MOV		AH , 09H
		LEA		DX , PROMPTROOMTYPE		; display enter the room type message
		INT		21H
		
		MOV		AH , 01H			; accept a digit
		INT		21H
			
		MOV		TEMP,AL				; Move the AL value (input value) to TEMP prevent it disappear
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H	
		
		CMP		TEMP , 2DH			; Check it is the character is '-'
		JE		checkNegative2			; Go to checkNegative method
		
		MOV		DL , ROOMTYPECOUNT
		CMP		TEMP , DL			; Compare the input value more than Room Type Count
		JA		orderRoomTypeTransfer2							
		
		CMP		TEMP , '1'			; Compare the input value with 1
		JB		orderRoomTypeTransfer2
		JE		chooseType1Transfer
		
		CMP		TEMP , '2'			; Compare the input value with 2
		JE		chooseType2Transfer

		JMP		orderRoomTypeTransfer2
		
chooseType1Transfer:						; Medium for jump to choose type 1 method 
		JMP		chooseType1
		
chooseType2Transfer:						; Medium for jump to choose type 2 method 
		JMP		chooseType2
		
orderRoomTypeTransfer2:						; Medium for jump to order room type method
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , INVALIDSELECTION		; display invalid message 
		INT		21H
		
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to red
		MOV		BH , 70H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 00
		INT		10H
		
		JMP		orderRoomType
checkNegative2:							; check whether it is -1 for exit
		MOV		AH , 01H			; accept a character from choosing the menu
		INT		21H
		MOV		TEMP,AL				; Move the AL value (input value) to TEMP prevent it disappear
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to red
		MOV		BH , 70H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 00
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		CMP		TEMP , 31H			; Compare the character whether it is 1
		JE		menuTransfer4			; If is 1 jump to main menu
		
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to red
		MOV		BH , 74H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 00
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , INVALIDSELECTION		; display invalid message 
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		JMP		orderRoomType			; Back to the room type	

menuTransfer4:							; Medium of jump into menu
		JMP		menu
		
chooseType1:							; Set the current room type to room type 1
		MOV		CURRENTROOMTYPE, '1'		; store the room type to current roomtype
		
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to black
		MOV		BH , 70H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 00
		INT		10H
		
		JMP		orderAmount
		
chooseType2:							; Set the current room type to room type 1
		MOV		CURRENTROOMTYPE, '2'		; store the room type to current roomtype
		
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to black
		MOV		BH , 70H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 00
		INT		10H
		
		JMP		orderAmount
		
orderAmount:
		
		MOV		AH , 09H
		LEA		DX , PROMPTAMOUNT		; display enter the customer amount message
		INT		21H
		
		MOV		AH, 0AH
		LEA		DX, INPUTAMOUNT			; input the customer amount
		INT 		21H
			
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H	
		
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to black
		MOV		BH , 70H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 00
		INT		10H
		
		MOV		SI , OFFSET INPUTAMOUNT + 2	; put the customer amount offset address into SI
		MOV 		DI , OFFSET EXITCODE		; put the -1 code into DI
		
exitAmount:							; Check -1 exist in prompt member ID?
		MOV		DH , [DI]			
		CMP		DH , '$'			; Check it is end of exitcode if yes return to main menu as it is valid
		JE		menuTransfer4
		
		MOV		DL , [SI]
		CMP		DL , 13				; Check it is end of input but not end of exitcode than proceed input password as invalid
		JE		accessOrderAmount
		
		CMP		DL , DH				; compare default storage character and input storage character
		JNE		accessOrderAmount		; invalid proceed to input password
		INC		SI
		INC		DI
		JMP		exitAmount			; check next character
		
accessOrderAmount:
		MOV		SI , OFFSET INPUTAMOUNT + 3	; Check the 2nd digit of input	
		
verify2ndDigitNum:
		
		MOV		DL , [SI]
		CMP		DL , 13				; Check it is end of input than return to login as invalid
		JE		accessOrderAmount3
		
		CMP		DL , '4'			; Compare two string
		JA		errorDigit			; invalid return to invalid login method
		CMP		DL , '0'			; Compare two string
		JB		errorDigit			; invalid return to invalid login method
		INC		SI
		JMP		accessOrderAmount2		; if valid but not finish loop again

accessOrderAmount2:
		MOV		SI , OFFSET INPUTAMOUNT + 2	; Check the 2nd digit of input	

verify1stDigitNum:
		MOV		DL , [SI]
		CMP		DL , 13				; Check it is end of input than return to login as invalid
		JE		errorDigit

		CMP		DL , '1'
		JNE		errorDigit			; invalid return to invalid login method
		
		JMP		askOrderConfirmation

accessOrderAmount3:
		MOV		SI , OFFSET INPUTAMOUNT + 2	; Check the 2nd digit of input
		
verifyOneDigitNum:
		MOV		DL , [SI]
		CMP		DL , 13				; Check it is end of input than return to login as invalid
		JE		errorDigit
		
		CMP		DL , '9'
		JA		errorDigit
		
		CMP		DL , '1'
		JB		errorDigit
		
		JMP		askOrderConfirmation
		
errorDigit:
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H

		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to red
		MOV		BH , 74H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 00
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to red
		MOV		BH , 74H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 00
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , INVALIDDIGIT		; display invalid digit
		INT		21H
			
		MOV		AX , 0600H			; set the background to white and foreground to blue
		MOV		BH , 70H								
		MOV		CX , 0300H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		JMP		orderAmount
menuTransfer5:							; Medium for jump to the menu
		JMP		menu
askOrderConfirmation:
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to black
		MOV		BH , 70H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 00
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , PROMPTCONFIRMORDER		; display confirm order?
		INT		21H
		
		MOV		AH , 01H			; accept a character for yes or no
		INT		21H
			
		MOV		TEMP,AL				; Move the AL value (input value) to TEMP prevent it disappear
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to black
		MOV		BH , 70H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 00
		INT		10H
		
		CMP		TEMP , 79H			; Compare the character whether it is 'y'
		JE		summary				; If is 'y' proceed the order
		
		CMP		TEMP , 59H			; Compare the character whether it is 'Y'
		JE		summary				; If is 'Y' proceed the order
		
		CMP		TEMP , 4EH			; Compare the character whether it is 'N'
		JE		menuTransfer5			; If is 'N' back to the main menu
		
		CMP		TEMP , 6EH			; Compare the character whether it is 'n'
		JE		menuTransfer5			; If is 'n' back to the main menu
		
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to red
		MOV		BH , 74H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 20
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , INVALIDYORNO		; display invalid message 
		INT		21H
		
		MOV		AX , 0600H			; set the background to white and foreground to blue
		MOV		BH , 70H								
		MOV		CX , 0300H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		JMP		askOrderConfirmation	
		
summary:
		INC 	ORDERCOUNT

		MOV		AH , 09H
		LEA		DX , ORDERSUMMARYHEADER		; Display summary header
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , ORDERSUMMARYLINE2		; Display summary header
		INT		21H
		
		CMP		ORDERCOUNT , 9			; check whether is 2 digit
		JG		orderCount2d
		
		MOV		AH , 02H
		MOV		DL , ORDERCOUNT			; display 1 digit order count
		ADD		DL , 30H
		INT		21H
		
		JMP		continuesummary			; continue the summary
		
orderCount2d:
		MOV		AH , 0
		MOV		AL , ORDERCOUNT
		
		DIV		ORDERDIVISOR
		
		MOV		ORDERQUOTIENT , AL
		MOV		ORDERREMAINDER , AH
		
		MOV		AH , 02H
		MOV		DL , ORDERQUOTIENT		; print 1st digit of order count
		ADD		DL , 30H
		INT		21H
		
		MOV		AH , 02H
		MOV		DL , ORDERREMAINDER		; print 2nd digit of order count
		ADD		DL , 30H
		INT		21H
		
continuesummary:		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		CMP		CURRENTMEMBERID , '1'		; If is member id 1 jump summary member 1
		JE		displaySummaryMember
		
		CMP		CURRENTMEMBERID , '2'		; If is member id 2 jump summary member 2
		JE		displaySummaryMember2
		
		CMP		CURRENTMEMBERID , '3'		; If is member id 3 jump summary member 3
		JE		displaySummaryMember3
		
		CMP		CURRENTMEMBERID , '4'		; If is member id 4 jump summary member 4
		JE		displaySummaryMember4Transfer
		
		CMP		CURRENTMEMBERID , '5'		; If is member id 5 jump summary member 5
		JE		displaySummaryMember5Transfer

displaySummaryMember4Transfer:					; Medium of jump to summary member 4
		JMP		displaySummaryMember4
		
displaySummaryMember5Transfer:					; Medium of jump to summary member 5
		JMP		displaySummaryMember5		
		
displaySummaryMember:
		
		MOV		AH , 09H
		LEA		DX , ORDERSUMMARYLINE3		; Display member id text
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , MEMBERID			; Display member id
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , ORDERSUMMARYLINE4		; Display member name text
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , MEMBERNAME			; Display member name
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H

		JMP		summary2
		
displaySummaryMember2:
		
		MOV		AH , 09H
		LEA		DX , ORDERSUMMARYLINE3		; Display member id text
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , DATAMEMBER2		; Display member id
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , ORDERSUMMARYLINE4		; Display member name text
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , DATAMEMBERNAME2		; Display member name
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H

		JMP		summary2
		
displaySummaryMember3:
		
		MOV		AH , 09H
		LEA		DX , ORDERSUMMARYLINE3		; Display member id text
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , DATAMEMBER3		; Display member id
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , ORDERSUMMARYLINE4		; Display member name text
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , DATAMEMBERNAME3		; Display member name
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H

		JMP		summary2
		
displaySummaryMember4:
		
		MOV		AH , 09H
		LEA		DX , ORDERSUMMARYLINE3		; Display member id text
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , DATAMEMBER4		; Display member id
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , ORDERSUMMARYLINE4		; Display member name text
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , DATAMEMBERNAME4		; Display member name
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H

		JMP		summary2
		
displaySummaryMember5:
		
		MOV		AH , 09H
		LEA		DX , ORDERSUMMARYLINE3		; Display member id text
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , DATAMEMBER5		; Display member id
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , ORDERSUMMARYLINE4		; Display member name text
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , DATAMEMBERNAME5		; Display member name
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		JMP		summary2
summary2:
		MOV		AH , 09H
		LEA		DX , ORDERSUMMARYLINE5		; Display summary line 5
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , ORDERSUMMARYLINE6		; Display summary line 6
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , ORDERSUMMARYLINE5		; Display summary line 6
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , ORDERSUMMARYLINE7		; Display summary line 7
		INT		21H
		
		CMP		CURRENTROOMTYPE, '1'
		JE		summaryRoomType
		
		CMP		CURRENTROOMTYPE, '2'
		JE		summaryRoomType2
		
summaryRoomType:
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 8
		MOV		DL , 6
		INT		10H

		MOV		AH , 09H
		LEA		DX , ROOMTYPE			; Display room type
		INT		21H	
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 8
		MOV		DL , 33
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , ORDERSUMMARYLINE7A		; Display room type
		INT		21H	
		
		MOV		AH , 09H
		LEA		DX , DATAAMOUNT			; Display room type
		INT		21H	
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 8
		MOV		DL , 42
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , ORDERSUMMARYLINE7B		; Display space and line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , ROOMPRICE			; Display room price
		INT		21H	
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		JMP		summaryFooter
		
summaryRoomType2:
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 8
		MOV		DL , 6
		INT		10H

		MOV		AH , 09H
		LEA		DX , DATAROOM			; Display room type
		INT		21H	
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 8
		MOV		DL , 33
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , ORDERSUMMARYLINE7A		; Display room type 2
		INT		21H	
		
		MOV		AH , 09H
		LEA		DX , DATAAMOUNT			; Display room type 2
		INT		21H	
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 8
		MOV		DL , 42
		INT		10H
		
		MOV		AH , 09H
		LEA		DX , ORDERSUMMARYLINE7B		; Display space and line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , DATAPRICE			; Display room price 2
		INT		21H	
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H

		JMP		summaryFooter
		
summaryFooter:
		MOV		AH , 09H
		LEA		DX , ORDERSUMMARYLINE8		; Display summary footer
		INT		21H
pressContinue:
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to black
		MOV		BH , 00FFH								
		MOV		CX , 0B00H
		MOV		DX , 0D4FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 12
		MOV		DL , 26
		INT		10H

		MOV		AH , 09H
		LEA		DX , PROMPTCONTINUE		; Display press any key to continue
		INT		21H
		
		MOV		AH , 01H			; accept a character
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to black
		MOV		BH , 70H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 00
		INT		10H
		
		JMP		payment;

;====================== PAYMENT =====================================	

payment:
		MOV 		AH, 09H
		LEA 		DX, PAYMENTSUMMARYH		;DISP ROOMMSG
		INT 		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H

		MOV 		AH, 09H
		LEA 		DX, ROOMMSG			;DISP ROOMMSG
		INT 		21H
		
		CMP		CURRENTROOMTYPE, '1'		; Compare which room type
		JE		roomsection
		
		JMP		room2section
roomsection:
		MOV 		AH, 09H
		LEA 		DX, ROOMPRICE			; Display room price
		INT 		21H
		
		MOV 		AH, 09H
		LEA 		DX, PEOMSG			;DISP PEOMSG
		INT 		21H

		MOV		AH , 09H			; Get data amount
		LEA		DX, DATAAMOUNT
		INT 		21H

		CMP		DATAAMOUNT[1] , 13		; check is one digit
		JE		setzero
		
		JMP 		proceedroomsection
setzero:
		MOV		AL , DATAAMOUNT[0]
		MOV 		DATAAMOUNT[1] , AL		; if is single digit change to 0x eg 01
		MOV		DATAAMOUNT[0] , '0'
		
proceedroomsection:
		SUB 		ROOMPRICE[0], 30H
		SUB 		ROOMPRICE[1], 30H
		SUB 		DATAAMOUNT[0], 30H
		SUB 		DATAAMOUNT[1], 30H
		
		MOV 		AH, 09H
		LEA		DX, NEWLINE
		INT 		21H 
		
		MOV 		AH, 09H
		LEA 		DX, SUBTOTMSG
		INT 		21H
		
;TALLY THE ROOM PRICE DIGIT CHAR
;FIRST DIGIT CHAR
		MOV 		AX, 0
		MOV 		AL, ROOMPRICE[0]		
		MUL 		TEN				;TEN = PRICE[0] * 10
		MOV 		DX, AX				;10 + 0
		
		MOV 		AX, 0
		MOV 		AL, ROOMPRICE[1]
		ADD 		DX, AX				;JUST ADD INTO THE DX STRAIGHT AWAY
	
		MOV 		PRICEN, DX			;MOVE DX VALUE INTO ROOMPRICE	ASSUME PRICE = 20
		
;TALLY THE NUMBER OF PEOPLE DIGIT CHAR
;FIRST DIGIT CHAR
		MOV 		AX, 0
		MOV 		AL, DATAAMOUNT[0]		
		MUL 		TEN				;TEN = PRICE[0] * 10
		MOV 		BX, AX				;10 + 0
		
		MOV 		AX, 0
		MOV 		AL, DATAAMOUNT[1]
		ADD 		BX, AX				;JUST ADD INTO THE DX STRAIGHT AWAY
		
		MOV 		DATAAMOUNT, AL			;MOVE DX VALUE INTO ROOMPRICE	ASSUME PEONUM = 12
		
		MOV 		AX, BX				;MOVE BX TO AX		
		MUL 		ROOMPRICE			;PRICE * AX = DX : AX (100) STORE IN AX
		MUL 		TEN				;PUT THIS IF NOT IT WILL REDUCE A NUMERICAL VALUE
		
		DIV 		HUNDRED
		
		ADD 		ROOMPRICE[0], 30H
		ADD 		ROOMPRICE[1], 30H
		ADD 		DATAAMOUNT[0], 30H
		ADD 		DATAAMOUNT[1], 30H
		
		JMP		continuepayment
		
room2section:
		MOV 		AH, 09H
		LEA 		DX, DATAPRICE			; Display room price 2
		INT 		21H

		MOV 		AH, 09H
		LEA 		DX, PEOMSG			;DISP PEOMSG
		INT 		21H

		MOV		AH , 09H			; Get data amount
		LEA		DX, DATAAMOUNT
		INT 		21H
		
		CMP		DATAAMOUNT[1] , 13		; check is one digit
		JE		setzero2
		
		JMP 		proceedroom2section
setzero2:
		MOV		AL , DATAAMOUNT[0]
		MOV 		DATAAMOUNT[1] , AL		; if is single digit change to 0x eg 01
		MOV		DATAAMOUNT[0] , '0'

proceedroom2section:	
		SUB 		DATAPRICE[0], 30H
		SUB 		DATAPRICE[1], 30H
		SUB 		DATAAMOUNT[0], 30H
		SUB 		DATAAMOUNT[1], 30H
		
		MOV 		AH, 09H
		LEA 		DX, NEWLINE
		INT 		21H 
		
		MOV 		AH, 09H
		LEA 		DX, SUBTOTMSG
		INT 		21H
		
;TALLY THE ROOM PRICE DIGIT CHAR
;FIRST DIGIT CHAR
		MOV 		AX, 0
		MOV 		AL, DATAPRICE[0]		
		MUL 		TEN				;TEN = PRICE[0] * 10
		MOV 		DX, AX				;10 + 0
		
		MOV 		AX, 0
		MOV 		AL, DATAPRICE[1]
		ADD 		DX, AX				;JUST ADD INTO THE DX STRAIGHT AWAY
		
		MOV 		PRICEN, DX			;MOVE DX VALUE INTO ROOMPRICE	ASSUME PRICE = 20
		
;TALLY THE NUMBER OF PEOPLE DIGIT CHAR
;FIRST DIGIT CHAR
		MOV 		AX, 0
		MOV 		AL, DATAAMOUNT[0]		
		MUL 		TEN				;TEN = PRICE[0] * 10
		MOV 		BX, AX				;10 + 0
		
		MOV 		AX, 0
		MOV 		AL, DATAAMOUNT[1]
		ADD 		BX, AX				;JUST ADD INTO THE DX STRAIGHT AWAY
		
		MOV 		DATAAMOUNT, AL			;MOVE DX VALUE INTO ROOMPRICE	ASSUME PEONUM = 12
		
		MOV 		AX, BX				;MOVE BX TO AX		20 * 12 = 100
		MUL 		DATAPRICE			;PRICE * AX = DX : AX (100) STORE IN AX
		MUL 		TEN				;PUT THIS IF NOT IT WILL REDUCE A NUMERICAL VALUE
		
		DIV 		HUNDRED
		
		ADD 		DATAPRICE[0], 30H
		ADD 		DATAPRICE[1], 30H
		ADD 		DATAAMOUNT[0], 30H
		ADD 		DATAAMOUNT[1], 30H
		
		JMP		continuepayment

continuepayment: 
		MOV 		R[0], AH			;REMAINDER	(40)
		MOV 		SUBTOTAL[0], AX			;QUOTIENT	(2) 
		
		MOV 		AX, 0
		MOV 		AL, R[0]
		DIV 		TEN
		
		MOV 		SUBTOTAL[2], DX 		;REMAINDER 	(0)
		MOV 		SUBTOTAL[1], AX			;QUOTIENT	(4)
		
;CONVERT TO HEX
		ADD 		SUBTOTAL[0], 30H
		ADD 		SUBTOTAL[1], 30H
		ADD 		SUBTOTAL[2], 30H
		
		MOV 		AH, 02H
		MOV 		DX, SUBTOTAL[0]			;DISP FIRST DIGIT CHAR
		INT		21H	
		
		MOV 		AH, 02H
		MOV 		DX, SUBTOTAL[1]			;DISP SECOND DIGIT CHAR
		INT 		21H
		
		MOV 		AH, 02H
		MOV 		DX, SUBTOTAL[2]			;DISP THIRD DIGIT CHAR
		INT 		21H
		
		MOV 		AH, 02H
		MOV 		DL, 2EH				;DECIMAL POINT
		INT 		21H
		
		MOV 		AH, 02H
		MOV		DL, 30H				;DISP 30H CHAR
		INT 		21H
		
		MOV 		AH, 02H
		MOV 		DL, 30H				;DISP 30H CHAR
		INT 		21H
		
;========================== SST SECTION =============================
;SST = SUBTOTAL * (PERC / 100)
		MOV 		AH, 09H
		LEA 		DX, SSTMSG			;DISP SSTMSG
		INT 		21H
		
;CONVERT HEX TO DECIMAL
		SUB 		SUBTOTAL[0], 30H
		SUB 		SUBTOTAL[1], 30H
		SUB 		SUBTOTAL[2], 30H
		
;TALLY THE DIGIT CHARACTER
;FIRST DIGITS CHARACTER
		MOV 		AX, 0
		MOV 		AX, SUBTOTAL[0]
		MUL 		HUNDRED				;HUNDRED = SUBTOTAL[0] * 100
		MOV 		DX, AX				;100 + 00 + 0
		
;SECOND DIGITS CHARACTER
		MOV 		AX, 0
		MOV 		AX, SUBTOTAL[1]			;TEN = SUBTOTAL[1] * 10
		MUL 		TEN				;000 + 10 + 0
		ADD 		DX, AX		
		
;THIRD DIGITS CHARACTER
		MOV 		AX, 0
		MOV 		AX, SUBTOTAL[2]			
		ADD 		DX, AX				;000 + 00 + 1
		
		MOV 		SUBTOTALN, DX			;SUBTOTAL IN NUMERIC
		
		
;PERCENTAGE
		MOV		AX, 0				
		MOV 		AX, PERC			;GET THE DIGITS 5 FROM DATA SEGMENT
		MOV 		BX, AX				;MOVE 5 VALUE FROM AX TO BX   	
		
;MULTIPLY SUBTOTAL WITH PERCENTAGE
		MOV 		AX, DX				;MOV AX, DX
		MUL		PERC				;PERC * AX = DX : AX (635) STORE IN AX 
		
;DIV BY 100
		DIV 		HUNDRED				;AX / HUNDRED  635 / 100 MAKE IT BECOME 5% = 0.05
		
		MOV 		R[0], AH			;REMAINDER (35)
		MOV 		R[1], AL			;QUOTIENT  (06)
		
		MOV 		AH, 0
		MOV 		SSTCHARGEN, AX			;SSTCHARGE IN NUMERIC
		
		MOV 		AX, 0
		MOV 		AL, R[0]			;DIVIDE 35 / 10
		DIV 		TEN
		
		MOV 		SSTCHARGE[3], AH		;REMAINDER (5)
		MOV 		SSTCHARGE[2], AL		;QUOTIENT  (3)
		
		MOV 		AX, 0
		MOV 		AL, R[1]
		DIV 		TEN
		
		MOV 		SSTCHARGE[1], AH
		MOV 		SSTCHARGE[0], AL
		
;CONVERT TO HEX
		ADD 		SSTCHARGE[0], 30H
		ADD 		SSTCHARGE[1], 30H
		ADD 		SSTCHARGE[2], 30H
		ADD 		SSTCHARGE[3], 30H
		
		MOV 		AH, 02H
		MOV 		DL, SSTCHARGE[0]		;DISP FIRST DIGIT CHAR
		INT 		21H				;HUNDRED
		
		MOV 		AH, 02H
		MOV 		DL, SSTCHARGE[1]		;DISP SECOND DIGIT CHAR
		INT 		21H
		
		MOV 		AH, 02H
		MOV  		DL, 2EH				;DECIMAL POINT
		INT 		21H
		
		MOV 		AH, 02H
		MOV 		DL, SSTCHARGE[2]		;DISP THIRD DIGIT CHAR
		INT 		21H
		
		MOV 		AH, 02H
		MOV 		DL, SSTCHARGE[3]		;DISP FOURTH DIGIT CHAR
		INT 		21H
		
;=========================== TOTAL PAYMENT ==========================
;TOTAL = SUBTOTAL + SST
		
		
		MOV 		R[0], 0				;RESET R[0] (REMAINDER STORAGE) BECOME 0 
		MOV 		R[1], 0				;RESET R[1] (QUOTIENT STORAGE)BECOME 0
		
		MOV 		AH, 09H
		LEA 		DX, TOTMSG			;DISP TOTMSG
		INT 		21H
		
		MOV 		DX, SUBTOTALN			;SUBTOTALN + SSTCHARGEN
		ADD 		DX, SSTCHARGEN			;127 + 6 = 133 ADD TO AL
		
		MOV 		AX, DX
		
;DIV BY 100					
		DIV 		HUNDRED				;TOTAL / HUNDRED = AH, AL  
		
		MOV 		R[0], AH			;REMAINDER (33)
		MOV 		TOTAL[2], AL			;QUOTIENT  (1)
		
		MOV 		AX, 0
		MOV 		AL, R[0]			;DIVIDE 33 / 10
		DIV 		TEN						
		
		MOV 		TOTAL[1], AH			;QUOTIENT  (3)
		MOV 		TOTAL[0], AL			;REMAINDER (3)
		
;CONVERT TO HEX
		ADD 		TOTAL[0], 30H
		ADD 		TOTAL[1], 30H
		ADD 		TOTAL[2], 30H
		
;============================ PRINT TOTAL ===========================
		
		MOV 		AH, 02H
		MOV 		DL, TOTAL[2]			;DISP TOTAL[2] (PRINT IT CHAR BY CHAR)
		INT 		21H
		
		MOV 		AH, 02H
		MOV 		DL, TOTAL[0]			;DISP TOTAL[1] (PRINT IT CHAR BY CHAR)
		INT 		21H
		
		MOV 		AH, 02H
		MOV 		DL, TOTAL[1]			;DISP TOTAL[0] (PRINT IT CHAR BY CHAR)
		INT 		21H
		
		MOV 		AH, 02H
		MOV 		DL, 2EH				;DECIMAL POINT
		INT 		21H
		
		MOV 		AH, 02H
		MOV 		DL, SSTCHARGE[2]		;DISP DECIMAL NUMBER FROM SSTCHARGE[2]
		INT 		21H
		
		MOV 		AH, 02H
		MOV 		DL, SSTCHARGE[3]		;DISP DECIMAL NUMBER FROM SSTCHARGE[3]
		INT 		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			;break new line
		INT		21H
		
		MOV 		AH, 09H
		LEA 		DX, PAYMENTSUMMARYF		;DISP ROOMMSG
		INT 		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
pressContinue3:
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to black
		MOV		BH , 00FFH								
		MOV		CX , 0B00H
		MOV		DX , 0D4FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 12
		MOV		DL , 26
		INT		10H

		MOV		AH , 09H
		LEA		DX , PROMPTCONTINUE		; Display press any key to continue
		INT		21H
		
		MOV		AH , 01H			; accept a character
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to black
		MOV		BH , 70H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 00
		INT		10H
		
		JMP		menuTransfer6;		
		
menuTransfer6:
		JMP		menu;
		
;======================= EXIT PART ==================================		
exit:	
		MOV		AX , 0600H			; screen clearing + set the background to white and foreground to black
		MOV		BH , 70H								
		MOV		CX , 0000H
		MOV		DX , 184FH
		INT		10H
		
		MOV		AH , 02H			; set the cursor position
		MOV		BH , 00
		MOV		DH , 01
		MOV		DL , 00
		INT		10H

		MOV		AH , 09H
		LEA		DX , SYSTEMSUMMARYHEADER	; Display summary header
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , SYSTEMSUMMARYLINE1		; Display total room msg
		INT		21H
		
		MOV		AH , 02H
		MOV		DL , MEMBERCOUNT		; display 1 digit order count
		INT		21H	
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , SYSTEMSUMMARYLINE2		; Display total room msg
		INT		21H
		
		MOV		AH , 02H
		MOV		DL , ROOMTYPECOUNT		; display 1 digit order count
		INT		21H	
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , SYSTEMSUMMARYLINE3		; Display total orders msg
		INT		21H
		
		CMP		ORDERCOUNT , 9			; check whether is 2 digit
		JG		orderCount2dSummary
		
		MOV		AH , 02H
		MOV		DL , ORDERCOUNT			; display 1 digit order count
		ADD		DL , 30H
		INT		21H
		
		JMP		continuesystemsummary		; continue the summary
		
orderCount2dSummary:
		MOV		AH , 0
		MOV		AL , ORDERCOUNT
		
		DIV		ORDERDIVISOR
		
		MOV		ORDERQUOTIENT , AL
		MOV		ORDERREMAINDER , AH
		
		MOV		AH , 02H
		MOV		DL , ORDERQUOTIENT		; print 1st digit of order count
		ADD		DL , 30H
		INT		21H
		
		MOV		AH , 02H
		MOV		DL , ORDERREMAINDER		; print 2nd digit of order count
		ADD		DL , 30H
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , SYSTEMSUMMARYFOOTER	; Display summary footer msg
		INT		21H
		
continuesystemsummary:
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , THANKYOU			; Display summary footer msg
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , NEWLINE			; break new line
		INT		21H
		
		MOV		AH , 09H
		LEA		DX , SHUTDOWN			; display shut down message
		INT		21H
		
		MOV		AX , 4C00H
		INT		21H				; request for proper exit
		MAIN	ENDP					; MAIN function ends here
END MAIN				