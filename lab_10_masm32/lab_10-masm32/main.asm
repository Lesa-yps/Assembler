.386
.model flat, stdcall
option casemap:none
include \masm32\include\windows.inc
include \masm32\include\user32.inc
include \masm32\include\kernel32.inc
include \masm32\include\msvcrt.inc
includelib \masm32\lib\user32.lib
includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\msvcrt.lib

WinMain proto :DWORD,:DWORD,:DWORD,:DWORD
CalculateFunction proto :REAL8
ChordMethod proto :REAL8, :REAL8, :DWORD

.data
ClassName db "SimpleWinClass",0
AppName  db "Chord Method",0
TextBoxClass db "EDIT",0
ButtonClass db "BUTTON",0
x0Label db "x0:",0
x1Label db "x1:",0
maxIterLabel db "Max Iterations:",0
resultLabel db "Result:",0
calculateButton db "Calculate",0
resultFormat db "%lf",0
two REAL8 2.0
five REAL8 5.0
defaultX0 db "1.0",0
defaultX1 db "2.0",0
defaultMaxIter db "100",0

errorMsg        db "Error occurred during computation.", 0
errorCaption   	db "Error", 0
const_2         REAL8 2.0
const_5         REAL8 5.0
tolerance       REAL8 0.01

.data?
hInstance dd ?
CommandLine dd ?
hwndTextBoxX0 dd ?
hwndTextBoxX1 dd ?
hwndTextBoxMaxIter dd ?
hwndButtonCalculate dd ?
hwndLabelResult dd ?

.code
start:
    invoke GetModuleHandle, NULL
    mov    hInstance, eax
    invoke GetCommandLine
    mov    CommandLine, eax
    invoke WinMain, hInstance, NULL, CommandLine, SW_SHOWDEFAULT
    invoke ExitProcess, eax

WinMain proc hInst:HINSTANCE, hPrevInst:HINSTANCE, CmdLine:LPSTR, CmdShow:DWORD
    LOCAL wc:WNDCLASSEX
    LOCAL msg:MSG
    LOCAL hwnd:HWND
    
    mov   wc.cbSize, SIZEOF WNDCLASSEX
    mov   wc.style, CS_HREDRAW or CS_VREDRAW
    mov   wc.lpfnWndProc, OFFSET WndProc
    mov   wc.cbClsExtra, NULL
    mov   wc.cbWndExtra, NULL
    push  hInstance
    pop   wc.hInstance
    mov   wc.hbrBackground, COLOR_WINDOW+1
    mov   wc.lpszMenuName, NULL
    mov   wc.lpszClassName, OFFSET ClassName
    invoke LoadIcon, NULL, IDI_APPLICATION
    mov   wc.hIcon, eax
    mov   wc.hIconSm, eax
    invoke LoadCursor, NULL, IDC_ARROW
    mov   wc.hCursor, eax
    invoke RegisterClassEx, addr wc
    INVOKE CreateWindowEx, NULL, ADDR ClassName, ADDR AppName,\
           WS_OVERLAPPEDWINDOW, CW_USEDEFAULT, CW_USEDEFAULT,\
           600, 400, NULL, NULL, hInst, NULL
    mov   hwnd, eax
    invoke ShowWindow, hwnd, SW_SHOWNORMAL
    invoke UpdateWindow, hwnd
    
    .WHILE TRUE
        invoke GetMessage, ADDR msg, NULL, 0, 0
        .BREAK .IF (!eax)
        invoke TranslateMessage, ADDR msg
        invoke DispatchMessage, ADDR msg
    .ENDW
    mov     eax,msg.wParam
    ret
WinMain endp

WndProc proc hWnd:HWND, uMsg:UINT, wParam:WPARAM, lParam:LPARAM
    LOCAL x0Buffer[20]:BYTE
    LOCAL x1Buffer[20]:BYTE
    LOCAL maxIterBuffer[20]:BYTE
    LOCAL resultBuffer[50]:BYTE
    LOCAL x0:REAL8
    LOCAL x1:REAL8
    LOCAL maxIter:DWORD
    LOCAL result:REAL8

    .if uMsg == WM_CREATE
        invoke CreateWindowEx, NULL, ADDR TextBoxClass, ADDR x0Label, WS_CHILD or WS_VISIBLE, 50, 50, 50, 20, hWnd, NULL, hInstance, NULL
        invoke CreateWindowEx, WS_EX_CLIENTEDGE, ADDR TextBoxClass, ADDR defaultX0, WS_CHILD or WS_VISIBLE or ES_AUTOHSCROLL, 100, 50, 100, 20, hWnd, 1001, hInstance, NULL
        mov hwndTextBoxX0, eax

        invoke CreateWindowEx, NULL, ADDR TextBoxClass, ADDR x1Label, WS_CHILD or WS_VISIBLE, 50, 80, 50, 20, hWnd, NULL, hInstance, NULL
        invoke CreateWindowEx, WS_EX_CLIENTEDGE, ADDR TextBoxClass, ADDR defaultX1, WS_CHILD or WS_VISIBLE or ES_AUTOHSCROLL, 100, 80, 100, 20, hWnd, 1002, hInstance, NULL
        mov hwndTextBoxX1, eax

        invoke CreateWindowEx, NULL, ADDR TextBoxClass, ADDR maxIterLabel, WS_CHILD or WS_VISIBLE, 50, 110, 100, 20, hWnd, NULL, hInstance, NULL
        invoke CreateWindowEx, WS_EX_CLIENTEDGE, ADDR TextBoxClass, ADDR defaultMaxIter, WS_CHILD or WS_VISIBLE or ES_AUTOHSCROLL, 150, 110, 100, 20, hWnd, 1003, hInstance, NULL
        mov hwndTextBoxMaxIter, eax

        invoke CreateWindowEx, NULL, ADDR ButtonClass, ADDR calculateButton, WS_CHILD or WS_VISIBLE or BS_PUSHBUTTON, 50, 150, 100, 30, hWnd, 1004, hInstance, NULL
        mov hwndButtonCalculate, eax

        invoke CreateWindowEx, NULL, ADDR TextBoxClass, ADDR resultLabel, WS_CHILD or WS_VISIBLE, 50, 200, 100, 20, hWnd, NULL, hInstance, NULL
        invoke CreateWindowEx, WS_EX_CLIENTEDGE, ADDR TextBoxClass, NULL, WS_CHILD or WS_VISIBLE or ES_READONLY, 150, 200, 100, 20, hWnd, 1005, hInstance, NULL
        mov hwndLabelResult, eax

    .elseif uMsg == WM_COMMAND
        .if wParam == 1004
            invoke GetWindowText, hwndTextBoxX0, ADDR x0Buffer, 20
            invoke crt_atof, ADDR x0Buffer
            fstp qword ptr [x0]

            invoke GetWindowText, hwndTextBoxX1, ADDR x1Buffer, 20
            invoke crt_atof, ADDR x1Buffer
            fstp qword ptr [x1]

            invoke GetWindowText, hwndTextBoxMaxIter, ADDR maxIterBuffer, 20
            invoke crt_atoi, ADDR maxIterBuffer
            mov maxIter, eax

			; Debug input values
			; invoke CalculateFunction, x0
        	; fstp x0  ; Store f(x0)
            ; invoke crt_sprintf, ADDR resultBuffer, ADDR resultFormat, x0
            ; invoke SetWindowText, hwndLabelResult, ADDR resultBuffer

            invoke ChordMethod, x0, x1, maxIter
            fstp REAL8 ptr [result]

            invoke crt_sprintf, ADDR resultBuffer, ADDR resultFormat, result
            invoke SetWindowText, hwndLabelResult, ADDR resultBuffer
        .endif

    .elseif uMsg == WM_DESTROY
        invoke PostQuitMessage, NULL

    .else
        invoke DefWindowProc, hWnd, uMsg, wParam, lParam
        ret
    .endif
    xor eax, eax
    ret
WndProc endp

; Function to calculate 2 * sin(x^2 - 5)
; Input: x (REAL8)
; Output: f(x) (REAL8)
CalculateFunction PROC x:REAL8
    LOCAL result:REAL8

    fld qword ptr [x]        ; Load x
    fld st(0)                ; Load x again for squaring
    fmulp st(1), st(0)       ; x * x
    fld qword ptr [const_5]  ; Load 5
    fsubp st(1), st(0)       ; x^2 - 5
    fsin                     ; sin(x^2 - 5)
    fld qword ptr [const_2]  ; Load 2
    fmulp st(1), st(0)       ; 2 * sin(x^2 - 5)
    fstp result              ; Store the result

    fld result               ; Return result
    ret
CalculateFunction ENDP

; Chord Method to find root
; Inputs: x0 (REAL8), x1 (REAL8), max_iterations (DWORD)
; Output: root approximation (REAL8)
ChordMethod PROC USES ebx edi esi, x0:REAL8, x1:REAL8, max_iterations:DWORD
    LOCAL x2:REAL8, fx0:REAL8, fx1:REAL8, result:REAL8

    mov ecx, max_iterations  ; Set up loop counter
	; mov ecx, 5
    .while ecx != 0
        invoke CalculateFunction, x0
        fstp fx0  ; Store f(x0)

        invoke CalculateFunction, x1
        fstp fx1  ; Store f(x1)

       	; Проверка деления на ноль
		; fld fx1
		; fsub fx0
		; fabs
		; fld REAL8 ptr [tolerance]
		; FCOMP                    ; Compare ST(0) with ST(1)
		; FSTSW AX                 ; Store the FPU status word in AX
		; SAHF                     ; Store AH into Flags register
		; jae division_by_zero_error

        ; Calculate new x2 using the Chord formula
        fld x1
        fld x1
        fld x0
        fsubp st(1), st(0)
        fld fx1
        fld fx0
        fsubp st(1), st(0)
        fdivp st(1), st(0)
		fld fx1
        fmulp st(1), st(0)
        fsubp st(1), st(0)
        fstp x2

		; Проверка на достижение желаемой точности
		fld x2
		fsub x1
		fabs
		fld REAL8 ptr [tolerance]
		FCOMP
		FSTSW AX
		SAHF
		jae calc_done

        ; Update x0 and x1 for next iteration
        fld x1
        fstp x0
        fld x2
        fstp x1

        dec ecx
    .endw

calc_done:
    fld x2
    ret

division_by_zero_error:
    invoke MessageBox, NULL, ADDR errorMsg, ADDR errorCaption, MB_OK
    ret
ChordMethod ENDP

end start