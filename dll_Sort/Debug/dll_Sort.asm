; Listing generated by Microsoft (R) Optimizing Compiler Version 17.00.61219.0 

	TITLE	C:\Users\Ben\Documents\Visual Studio 2012\Projects\CO2411Assignment\dll_Sort\dll_Sort.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRTD
INCLUDELIB OLDNAMES

PUBLIC	_dllSort
PUBLIC	_dllQuickSort
PUBLIC	?swap@@YAXQAVSalesData@@HH@Z			; swap
EXTRN	@_RTC_CheckStackVars@8:PROC
EXTRN	@__security_check_cookie@4:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_InitBase:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	___CxxFrameHandler3:PROC
EXTRN	___security_cookie:DWORD
;	COMDAT rtc$TMZ
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
rtc$IMZ	ENDS
;	COMDAT xdata$x
xdata$x	SEGMENT
__catchsym$_dllQuickSort$2 DD 040H
	DD	00H
	DD	00H
	DD	FLAT:__catch$_dllQuickSort$0
__unwindtable$_dllQuickSort DD 0ffffffffH
	DD	00H
	DD	0ffffffffH
	DD	00H
__tryblocktable$_dllQuickSort DD 00H
	DD	00H
	DD	01H
	DD	01H
	DD	FLAT:__catchsym$_dllQuickSort$2
__ehfuncinfo$_dllQuickSort DD 019930522H
	DD	02H
	DD	FLAT:__unwindtable$_dllQuickSort
	DD	01H
	DD	FLAT:__tryblocktable$_dllQuickSort
	DD	2 DUP(00H)
	DD	00H
	DD	01H
xdata$x	ENDS
;	COMDAT xdata$x
xdata$x	SEGMENT
__catchsym$_dllSort$2 DD 040H
	DD	00H
	DD	00H
	DD	FLAT:__catch$_dllSort$0
__unwindtable$_dllSort DD 0ffffffffH
	DD	00H
	DD	0ffffffffH
	DD	00H
__tryblocktable$_dllSort DD 00H
	DD	00H
	DD	01H
	DD	01H
	DD	FLAT:__catchsym$_dllSort$2
__ehfuncinfo$_dllSort DD 019930522H
	DD	02H
	DD	FLAT:__unwindtable$_dllSort
	DD	01H
	DD	FLAT:__tryblocktable$_dllSort
	DD	2 DUP(00H)
	DD	00H
	DD	01H
xdata$x	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File c:\users\ben\documents\visual studio 2012\projects\co2411assignment\dll_sort\dll_sort.cpp
;	COMDAT ?swap@@YAXQAVSalesData@@HH@Z
_TEXT	SEGMENT
_temp$ = -16						; size = 12
_salesData$ = 8						; size = 4
_first$ = 12						; size = 4
_second$ = 16						; size = 4
?swap@@YAXQAVSalesData@@HH@Z PROC			; swap, COMDAT

; 11   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 212				; 000000d4H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-212]
	mov	ecx, 53					; 00000035H
	mov	eax, -858993460				; ccccccccH
	rep stosd

; 12   : 	SalesData temp;
; 13   : 	temp = salesData[first];

	mov	eax, DWORD PTR _first$[ebp]
	imul	eax, 12					; 0000000cH
	add	eax, DWORD PTR _salesData$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _temp$[ebp], ecx
	mov	edx, DWORD PTR [eax+4]
	mov	DWORD PTR _temp$[ebp+4], edx
	mov	eax, DWORD PTR [eax+8]
	mov	DWORD PTR _temp$[ebp+8], eax

; 14   : 	salesData[first] = salesData[second];

	mov	eax, DWORD PTR _second$[ebp]
	imul	eax, 12					; 0000000cH
	add	eax, DWORD PTR _salesData$[ebp]
	mov	ecx, DWORD PTR _first$[ebp]
	imul	ecx, 12					; 0000000cH
	add	ecx, DWORD PTR _salesData$[ebp]
	mov	edx, DWORD PTR [eax]
	mov	DWORD PTR [ecx], edx
	mov	edx, DWORD PTR [eax+4]
	mov	DWORD PTR [ecx+4], edx
	mov	eax, DWORD PTR [eax+8]
	mov	DWORD PTR [ecx+8], eax

; 15   : 	salesData[second] = temp;

	mov	eax, DWORD PTR _second$[ebp]
	imul	eax, 12					; 0000000cH
	add	eax, DWORD PTR _salesData$[ebp]
	mov	ecx, DWORD PTR _temp$[ebp]
	mov	DWORD PTR [eax], ecx
	mov	edx, DWORD PTR _temp$[ebp+4]
	mov	DWORD PTR [eax+4], edx
	mov	ecx, DWORD PTR _temp$[ebp+8]
	mov	DWORD PTR [eax+8], ecx

; 16   : }

	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN5@swap
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
$LN5@swap:
	DD	1
	DD	$LN4@swap
$LN4@swap:
	DD	-16					; fffffff0H
	DD	12					; 0000000cH
	DD	$LN3@swap
$LN3@swap:
	DB	116					; 00000074H
	DB	101					; 00000065H
	DB	109					; 0000006dH
	DB	112					; 00000070H
	DB	0
?swap@@YAXQAVSalesData@@HH@Z ENDP			; swap
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File c:\users\ben\documents\visual studio 2012\projects\co2411assignment\dll_sort\dll_sort.cpp
;	COMDAT _dllQuickSort
_TEXT	SEGMENT
tv141 = -265						; size = 1
tv140 = -265						; size = 1
$T2 = -260						; size = 4
_endPointer$3 = -56					; size = 4
_startPointer$4 = -44					; size = 4
_pivotValue$5 = -32					; size = 12
__$EHRec$ = -16						; size = 16
_salesData$ = 8						; size = 4
_start$ = 12						; size = 4
_end$ = 16						; size = 4
_comparison$ = 20					; size = 4
_dllQuickSort PROC					; COMDAT

; 56   : {

	push	ebp
	mov	ebp, esp
	push	-1
	push	__ehhandler$_dllQuickSort
	mov	eax, DWORD PTR fs:0
	push	eax
	push	ecx
	sub	esp, 252				; 000000fcH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-268]
	mov	ecx, 63					; 0000003fH
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	push	eax
	lea	eax, DWORD PTR __$EHRec$[ebp+4]
	mov	DWORD PTR fs:0, eax
	mov	DWORD PTR __$EHRec$[ebp], esp

; 57   : 	// Return InvalidParameters if start or end are incorrect
; 58   : 	if (start < 0 || end < 0 || end < start)

	cmp	DWORD PTR _start$[ebp], 0
	jl	SHORT $LN11@dllQuickSo
	cmp	DWORD PTR _end$[ebp], 0
	jl	SHORT $LN11@dllQuickSo
	mov	eax, DWORD PTR _end$[ebp]
	cmp	eax, DWORD PTR _start$[ebp]
	jge	SHORT $LN12@dllQuickSo
$LN11@dllQuickSo:

; 59   : 	{
; 60   : 		return InvalidParameters;

	mov	eax, -5					; fffffffbH
	jmp	$LN13@dllQuickSo
$LN12@dllQuickSo:

; 61   : 	}
; 62   : 
; 63   : 	try
; 64   : 	{

	mov	DWORD PTR __$EHRec$[ebp+12], 0

; 65   : 		// Take the value in the middle of the array as the pivotal value
; 66   : 		SalesData pivotValue = salesData[start + ((end - start) / 2)];

	mov	eax, DWORD PTR _end$[ebp]
	sub	eax, DWORD PTR _start$[ebp]
	cdq
	sub	eax, edx
	sar	eax, 1
	add	eax, DWORD PTR _start$[ebp]
	imul	eax, 12					; 0000000cH
	add	eax, DWORD PTR _salesData$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _pivotValue$5[ebp], ecx
	mov	edx, DWORD PTR [eax+4]
	mov	DWORD PTR _pivotValue$5[ebp+4], edx
	mov	eax, DWORD PTR [eax+8]
	mov	DWORD PTR _pivotValue$5[ebp+8], eax

; 67   : 		int startPointer = start;

	mov	eax, DWORD PTR _start$[ebp]
	mov	DWORD PTR _startPointer$4[ebp], eax

; 68   : 		int endPointer = end - 1;

	mov	eax, DWORD PTR _end$[ebp]
	sub	eax, 1
	mov	DWORD PTR _endPointer$3[ebp], eax
$LN9@dllQuickSo:

; 69   : 
; 70   : 		// Partition the array
; 71   : 		// Moves through the array swapping elements as required so that every value on either side of the pivot
; 72   : 		// is either greater than or less than it as defined by the comparison function, though they may be in any order
; 73   : 		while(startPointer <= endPointer)

	mov	eax, DWORD PTR _startPointer$4[ebp]
	cmp	eax, DWORD PTR _endPointer$3[ebp]
	jg	$LN8@dllQuickSo
$LN7@dllQuickSo:

; 74   : 		{
; 75   : 			// Increment the startPointer until we find an element on the left that needs to be swapped
; 76   : 			while(comparison(salesData[startPointer], pivotValue))

	mov	esi, esp
	sub	esp, 12					; 0000000cH
	mov	eax, esp
	mov	ecx, DWORD PTR _pivotValue$5[ebp]
	mov	DWORD PTR [eax], ecx
	mov	edx, DWORD PTR _pivotValue$5[ebp+4]
	mov	DWORD PTR [eax+4], edx
	mov	ecx, DWORD PTR _pivotValue$5[ebp+8]
	mov	DWORD PTR [eax+8], ecx
	mov	edx, DWORD PTR _startPointer$4[ebp]
	imul	edx, 12					; 0000000cH
	add	edx, DWORD PTR _salesData$[ebp]
	sub	esp, 12					; 0000000cH
	mov	eax, esp
	mov	ecx, DWORD PTR [edx]
	mov	DWORD PTR [eax], ecx
	mov	ecx, DWORD PTR [edx+4]
	mov	DWORD PTR [eax+4], ecx
	mov	edx, DWORD PTR [edx+8]
	mov	DWORD PTR [eax+8], edx
	call	DWORD PTR _comparison$[ebp]
	add	esp, 24					; 00000018H
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	BYTE PTR tv140[ebp], al
	movzx	eax, BYTE PTR tv140[ebp]
	test	eax, eax
	je	SHORT $LN5@dllQuickSo

; 77   : 			{
; 78   : 				startPointer++;

	mov	eax, DWORD PTR _startPointer$4[ebp]
	add	eax, 1
	mov	DWORD PTR _startPointer$4[ebp], eax

; 79   : 			}

	jmp	SHORT $LN7@dllQuickSo
$LN5@dllQuickSo:

; 80   : 
; 81   : 			// Decrement the endPointer until we find an element on the right that needs to be swapped
; 82   : 			while(comparison(pivotValue, salesData[endPointer]))

	mov	eax, DWORD PTR _endPointer$3[ebp]
	imul	eax, 12					; 0000000cH
	add	eax, DWORD PTR _salesData$[ebp]
	mov	esi, esp
	sub	esp, 12					; 0000000cH
	mov	ecx, esp
	mov	edx, DWORD PTR [eax]
	mov	DWORD PTR [ecx], edx
	mov	edx, DWORD PTR [eax+4]
	mov	DWORD PTR [ecx+4], edx
	mov	eax, DWORD PTR [eax+8]
	mov	DWORD PTR [ecx+8], eax
	sub	esp, 12					; 0000000cH
	mov	ecx, esp
	mov	edx, DWORD PTR _pivotValue$5[ebp]
	mov	DWORD PTR [ecx], edx
	mov	eax, DWORD PTR _pivotValue$5[ebp+4]
	mov	DWORD PTR [ecx+4], eax
	mov	edx, DWORD PTR _pivotValue$5[ebp+8]
	mov	DWORD PTR [ecx+8], edx
	call	DWORD PTR _comparison$[ebp]
	add	esp, 24					; 00000018H
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	BYTE PTR tv141[ebp], al
	movzx	eax, BYTE PTR tv141[ebp]
	test	eax, eax
	je	SHORT $LN4@dllQuickSo

; 83   : 			{
; 84   : 				endPointer--;

	mov	eax, DWORD PTR _endPointer$3[ebp]
	sub	eax, 1
	mov	DWORD PTR _endPointer$3[ebp], eax

; 85   : 			}

	jmp	SHORT $LN5@dllQuickSo
$LN4@dllQuickSo:

; 86   : 		
; 87   : 			// Swap the elements at the pointers if the start pointer is still less than the end pointer
; 88   : 			if (startPointer <= endPointer)

	mov	eax, DWORD PTR _startPointer$4[ebp]
	cmp	eax, DWORD PTR _endPointer$3[ebp]
	jg	SHORT $LN3@dllQuickSo

; 89   : 			{
; 90   : 				swap(salesData, startPointer, endPointer);

	mov	eax, DWORD PTR _endPointer$3[ebp]
	push	eax
	mov	ecx, DWORD PTR _startPointer$4[ebp]
	push	ecx
	mov	edx, DWORD PTR _salesData$[ebp]
	push	edx
	call	?swap@@YAXQAVSalesData@@HH@Z		; swap
	add	esp, 12					; 0000000cH

; 91   : 				startPointer++;

	mov	eax, DWORD PTR _startPointer$4[ebp]
	add	eax, 1
	mov	DWORD PTR _startPointer$4[ebp], eax

; 92   : 				endPointer--;

	mov	eax, DWORD PTR _endPointer$3[ebp]
	sub	eax, 1
	mov	DWORD PTR _endPointer$3[ebp], eax
$LN3@dllQuickSo:

; 93   : 			}
; 94   : 		}

	jmp	$LN9@dllQuickSo
$LN8@dllQuickSo:

; 95   : 
; 96   : 		// Recursive cases
; 97   : 		if (start < endPointer)

	mov	eax, DWORD PTR _start$[ebp]
	cmp	eax, DWORD PTR _endPointer$3[ebp]
	jge	SHORT $LN2@dllQuickSo

; 98   : 		{
; 99   : 			dllQuickSort(salesData, start, endPointer, comparison);

	mov	eax, DWORD PTR _comparison$[ebp]
	push	eax
	mov	ecx, DWORD PTR _endPointer$3[ebp]
	push	ecx
	mov	edx, DWORD PTR _start$[ebp]
	push	edx
	mov	eax, DWORD PTR _salesData$[ebp]
	push	eax
	call	_dllQuickSort
	add	esp, 16					; 00000010H
$LN2@dllQuickSo:

; 100  : 		}
; 101  : 	
; 102  : 		if (startPointer < end)

	mov	eax, DWORD PTR _startPointer$4[ebp]
	cmp	eax, DWORD PTR _end$[ebp]
	jge	SHORT $LN1@dllQuickSo

; 103  : 		{
; 104  : 			dllQuickSort(salesData, startPointer, end, comparison);

	mov	eax, DWORD PTR _comparison$[ebp]
	push	eax
	mov	ecx, DWORD PTR _end$[ebp]
	push	ecx
	mov	edx, DWORD PTR _startPointer$4[ebp]
	push	edx
	mov	eax, DWORD PTR _salesData$[ebp]
	push	eax
	call	_dllQuickSort
	add	esp, 16					; 00000010H
$LN1@dllQuickSo:

; 105  : 		}
; 106  : 	}

	jmp	SHORT $LN15@dllQuickSo
__catch$_dllQuickSort$0:

; 107  : 	catch (...)
; 108  : 	{
; 109  : 		return UnknownError;

	mov	DWORD PTR $T2[ebp], -4			; fffffffcH
	mov	eax, $LN18@dllQuickSo
	ret	0

; 110  : 	}

	mov	eax, $LN15@dllQuickSo
	ret	0
$LN15@dllQuickSo:
	mov	DWORD PTR __$EHRec$[ebp+12], -1
	jmp	SHORT $LN17@dllQuickSo
$LN18@dllQuickSo:
	mov	DWORD PTR __$EHRec$[ebp+12], -1

; 107  : 	catch (...)
; 108  : 	{
; 109  : 		return UnknownError;

	mov	eax, DWORD PTR $T2[ebp]
	jmp	SHORT $LN13@dllQuickSo
$LN17@dllQuickSo:

; 111  : 
; 112  : 	// Finally, return success
; 113  : 	return Success;

	mov	eax, 1
$LN13@dllQuickSo:

; 114  : }

	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN22@dllQuickSo
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	mov	ecx, DWORD PTR __$EHRec$[ebp+4]
	mov	DWORD PTR fs:0, ecx
	pop	ecx
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 268				; 0000010cH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
$LN22@dllQuickSo:
	DD	1
	DD	$LN21@dllQuickSo
$LN21@dllQuickSo:
	DD	-32					; ffffffe0H
	DD	12					; 0000000cH
	DD	$LN19@dllQuickSo
$LN19@dllQuickSo:
	DB	112					; 00000070H
	DB	105					; 00000069H
	DB	118					; 00000076H
	DB	111					; 0000006fH
	DB	116					; 00000074H
	DB	86					; 00000056H
	DB	97					; 00000061H
	DB	108					; 0000006cH
	DB	117					; 00000075H
	DB	101					; 00000065H
	DB	0
_TEXT	ENDS
;	COMDAT text$x
text$x	SEGMENT
__ehhandler$_dllQuickSort:
	mov	edx, DWORD PTR [esp+8]
	lea	eax, DWORD PTR [edx+12]
	mov	ecx, DWORD PTR [edx-272]
	xor	ecx, eax
	call	@__security_check_cookie@4
	mov	eax, OFFSET __ehfuncinfo$_dllQuickSort
	jmp	___CxxFrameHandler3
text$x	ENDS
_dllQuickSort ENDP
; Function compile flags: /Odtp /RTCsu /ZI
; File c:\users\ben\documents\visual studio 2012\projects\co2411assignment\dll_sort\dll_sort.cpp
;	COMDAT _dllSort
_TEXT	SEGMENT
tv83 = -245						; size = 1
$T2 = -240						; size = 4
_j$3 = -36						; size = 4
_i$4 = -24						; size = 4
__$EHRec$ = -16						; size = 16
_salesData$ = 8						; size = 4
_size$ = 12						; size = 4
_comparison$ = 16					; size = 4
_dllSort PROC						; COMDAT

; 21   : {

	push	ebp
	mov	ebp, esp
	push	-1
	push	__ehhandler$_dllSort
	mov	eax, DWORD PTR fs:0
	push	eax
	push	ecx
	sub	esp, 232				; 000000e8H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-248]
	mov	ecx, 58					; 0000003aH
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	push	eax
	lea	eax, DWORD PTR __$EHRec$[ebp+4]
	mov	DWORD PTR fs:0, eax
	mov	DWORD PTR __$EHRec$[ebp], esp

; 22   : 	// If size is negative then InvalidParameters error should be returned
; 23   : 	// Could check salesData items for validity, returning an error for any negative values or 
; 24   : 	// items where each value is 0 but is can be safely assumed that the input will be correct
; 25   : 	// and any validation should be performed in a different function
; 26   : 	if (size < 0)

	cmp	DWORD PTR _size$[ebp], 0
	jge	SHORT $LN9@dllSort

; 27   : 	{
; 28   : 		return InvalidParameters;

	mov	eax, -5					; fffffffbH
	jmp	$LN10@dllSort
$LN9@dllSort:

; 29   : 	}
; 30   : 
; 31   : 	try
; 32   : 	{

	mov	DWORD PTR __$EHRec$[ebp+12], 0

; 33   : 		for(int i = 0; i < size; i++)

	mov	DWORD PTR _i$4[ebp], 0
	jmp	SHORT $LN7@dllSort
$LN6@dllSort:
	mov	eax, DWORD PTR _i$4[ebp]
	add	eax, 1
	mov	DWORD PTR _i$4[ebp], eax
$LN7@dllSort:
	mov	eax, DWORD PTR _i$4[ebp]
	cmp	eax, DWORD PTR _size$[ebp]
	jge	$LN5@dllSort

; 34   : 		{
; 35   : 			for (int j = i + 1; j < size; j++)

	mov	eax, DWORD PTR _i$4[ebp]
	add	eax, 1
	mov	DWORD PTR _j$3[ebp], eax
	jmp	SHORT $LN4@dllSort
$LN3@dllSort:
	mov	eax, DWORD PTR _j$3[ebp]
	add	eax, 1
	mov	DWORD PTR _j$3[ebp], eax
$LN4@dllSort:
	mov	eax, DWORD PTR _j$3[ebp]
	cmp	eax, DWORD PTR _size$[ebp]
	jge	SHORT $LN2@dllSort

; 36   : 			{
; 37   : 				if (comparison(salesData[j], salesData[i]))

	mov	eax, DWORD PTR _i$4[ebp]
	imul	eax, 12					; 0000000cH
	add	eax, DWORD PTR _salesData$[ebp]
	mov	esi, esp
	sub	esp, 12					; 0000000cH
	mov	ecx, esp
	mov	edx, DWORD PTR [eax]
	mov	DWORD PTR [ecx], edx
	mov	edx, DWORD PTR [eax+4]
	mov	DWORD PTR [ecx+4], edx
	mov	eax, DWORD PTR [eax+8]
	mov	DWORD PTR [ecx+8], eax
	mov	ecx, DWORD PTR _j$3[ebp]
	imul	ecx, 12					; 0000000cH
	add	ecx, DWORD PTR _salesData$[ebp]
	sub	esp, 12					; 0000000cH
	mov	edx, esp
	mov	eax, DWORD PTR [ecx]
	mov	DWORD PTR [edx], eax
	mov	eax, DWORD PTR [ecx+4]
	mov	DWORD PTR [edx+4], eax
	mov	ecx, DWORD PTR [ecx+8]
	mov	DWORD PTR [edx+8], ecx
	call	DWORD PTR _comparison$[ebp]
	add	esp, 24					; 00000018H
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	BYTE PTR tv83[ebp], al
	movzx	edx, BYTE PTR tv83[ebp]
	test	edx, edx
	je	SHORT $LN1@dllSort

; 38   : 				{
; 39   : 					swap(salesData, i, j);

	mov	eax, DWORD PTR _j$3[ebp]
	push	eax
	mov	ecx, DWORD PTR _i$4[ebp]
	push	ecx
	mov	edx, DWORD PTR _salesData$[ebp]
	push	edx
	call	?swap@@YAXQAVSalesData@@HH@Z		; swap
	add	esp, 12					; 0000000cH
$LN1@dllSort:

; 40   : 				}
; 41   : 			}

	jmp	$LN3@dllSort
$LN2@dllSort:

; 42   : 		}

	jmp	$LN6@dllSort
$LN5@dllSort:
	jmp	SHORT $LN12@dllSort
__catch$_dllSort$0:

; 43   : 	}
; 44   : 	catch (...)
; 45   : 	{
; 46   : 		return UnknownError;

	mov	DWORD PTR $T2[ebp], -4			; fffffffcH
	mov	eax, $LN15@dllSort
	ret	0

; 47   : 	}

	mov	eax, $LN12@dllSort
	ret	0
$LN12@dllSort:
	mov	DWORD PTR __$EHRec$[ebp+12], -1
	jmp	SHORT $LN14@dllSort
$LN15@dllSort:
	mov	DWORD PTR __$EHRec$[ebp+12], -1

; 43   : 	}
; 44   : 	catch (...)
; 45   : 	{
; 46   : 		return UnknownError;

	mov	eax, DWORD PTR $T2[ebp]
	jmp	SHORT $LN10@dllSort
$LN14@dllSort:

; 48   : 
; 49   : 	return Success;

	mov	eax, 1
$LN10@dllSort:

; 50   : }

	mov	ecx, DWORD PTR __$EHRec$[ebp+4]
	mov	DWORD PTR fs:0, ecx
	pop	ecx
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 248				; 000000f8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_TEXT	ENDS
;	COMDAT text$x
text$x	SEGMENT
__ehhandler$_dllSort:
	mov	edx, DWORD PTR [esp+8]
	lea	eax, DWORD PTR [edx+12]
	mov	ecx, DWORD PTR [edx-252]
	xor	ecx, eax
	call	@__security_check_cookie@4
	mov	eax, OFFSET __ehfuncinfo$_dllSort
	jmp	___CxxFrameHandler3
text$x	ENDS
_dllSort ENDP
END
