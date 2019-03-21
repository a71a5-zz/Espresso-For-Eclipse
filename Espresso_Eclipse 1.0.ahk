#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#InstallKeybdHook
#UseHook[On]

; PrintF Hotkey
!p::  ; Alt + P         
Send, System.out.printf("`%n");{Del} ; Prints Printf

Loop 3
{
	Send, {Left} ; Moves cursor to within parentheses of printF
}
return

; IF/Else hotkey

!i:: ;  Alt + I         
Send, if( ){Enter}  ; Prints If 
Send, {{}

Loop 3  ; Loops enter key 3 Times to create space in body of IF statement
{
	Send, {Enter}
}

Send, {}}
Send, {Enter}
Send, else ; Prints else
Send, {Enter}
Send, {{}

Loop 3  
{
	Send, {Enter} ; Loops enter key 3 times to create space in body of else statement
}

Loop 10
{
	Send, {Up}  
}	

Loop 7
{
	Send, {Right}  ; This loop and the one before return mouse cursor to the condition box for the if statement
}
return

; Hotkey to Import Scanner
^!L:: ;   Ctrl + Alt + L   
Send,import java.util.Scanner;
return

; Hotkey for Scanner Declaration
!L:: ; Alt + L
Send, Scanner input = new Scanner(System.in) ; Declare Scanner named "Input"
Send, {;} 
return

; Hotkey for Main
^!Escape::  ; Ctrl + Alt + Escape

Send, {Enter}
Send, {Tab}
Send, public static void main(String[] args) ; Prints main statement
Send, {Enter}
Send, {{}

Loop 10 ; Loop to create body space
{
	Send, {Enter}
}

Loop 9   ; Loop to return cursor to top of body 
{
	Send, {Up}
}

Send, {Tab}
return

; Hotkey to declare and Intialize Boolean to false
!1:: ; Alt + 1
Send, boolean  = false;

Loop 9 ; Move cursor to location for user to enter variable name
{
	Send, {Left}
} 
return

; Hotkey to declare and Intialize char to blank
!2:: ; Alt + 2
Send, char  = ' '; 

Loop 7 ; Move cursor to location for user to enter variable name
{
	Send, {Left}
}
return

; Hotkey to declare and Intialize double to zero
!3:: ; Alt + 3
Send, double  = 0;

Loop 5 ; Move cursor to location for user to enter variable name
{
	Send, {Left}
}
return

; Hotkey to declare and Intialize float to 0
!4:: ; Alt + 4
Send, float  = 0;

Loop 5 ; Move cursor to location for user to enter variable name
{
	Send, {Left}
}
return

; Hotkey to declare and Intialize int to zero
!5:: ; Alt + 5
Send, int  = 0;

Loop 5 ; Move cursor to location for user to enter variable name
{
	Send, {Left}
}
return

; Hotkey to declare and Intialize string to blank
!6:: ; Alt + 6 
Send, String  = " ";

Loop 7 ; Move cursor to location for user to enter variable name
{
	Send, {Left}
}
return

; Hotkey for newLine 
!Numpad7:: ; Alt + NumPad7
Send, `%n
return

; Hotkey for string Argument
!Numpad6:: ; Alt + NumPad6
Send, `%s
return

; Hotkey for decimal argument
!Numpad5:: ; Alt + NumPad5
Send, `%d
return

; Hotkey for floating point argument
!Numpad4:: ; Alt + NumPad4
Send, `%.2f
return

; Hotkey for converting a single chracter to uppercase
!CapsLock:: ; Alt + CapsLock
Send, toUpperCase().charAt(0);
return

; Hotkey to read input from nextLine
!Up:: ; Alt + Up
Send, input.nextLine();
return

; Hotkey to read next character
^!Up:: ; Ctrl + Alt + Up
Send, input.nextLine().charAt(0);
return

; Hotkey to read next Integer
!Left:: ; Alt + Left
Send, input.nextInt();
Return

; Hotkey to read next Boolean
!Right:: ; Alt + Right
Send, input.nextBoolean();
return

; Hotkey to read next Double
!Down:: ; Alt + Down
Send, input.nextDouble();
return

; Hotkey to read next Float     
^!Down:: ; Ctrl + Alt + Down
Send, input.nextFloat();
return

; Hotkey for else if                         
!e:: ; Alt + E                               
Send, else if(  )  ; Prints Else if          
Send, {Enter}
Send {{}

Loop 3 ; Generate Body Space
{
	Send, {Enter}
}

Send, {Left}

Loop 4	
{
	Send, {Up}
}

Loop 8
{
	Send, {Right}  ; This loop and the loop before it move the 
}                  ; cursor so the user can enter the conditon for the else if 
return

; Hotkey for While Loop
!w:: ; Alt + W
Send, while ( )
Send, {Enter}
Send, {{}

Loop 3
{
    Send, {Enter} ; This loop generates space in the body of the while loop
}

Loop 4
{
    Send, {Up}
}
Loop 3
{
    Send, {Right} ; This loop and the previous move the cursor
}                 ; to the condition for the while loop
return



; Hotkey for System Exit
^+Delete:: ; Ctrl + Shift + Delete
Send, System.exit(0); //exits program
return

; Hotkey for Random Import
^!r:: ; Ctrl + Alt + R
Send, import java.util.Random;
return

; Hotkey to Declare and Initalize Random
!r:: ; Alt + R
Send, Random rand = new Random();
return

; Hotkey for JOptionPane Import
^!j:: ; Ctrl + Alt + J
Send, import javax.swing.JOptionPane; 
return

; Hotkey for JOptionPane Output
!j:: ; Alt + J
Send, JOptionPane.showMessageDialog(null,"");
Send , {Delete}

Loop 3
{
    Send, {Left}
}
return

; Hotkey for JOptionPane Input
^j:: ; Ctrl + J
Send, JOptionPane.showInputDialog("");
Send , {Delete}

Loop 3
{
    Send, {Left}
}
return

; Hotkey for FOR Loop
!F:: ; Alt + F
Send, for ( `; `; )
Send, {Enter}
Send, {{}

Loop 4
{
	Send, {Enter} ; This loop generates space in the body of the FOR loop
}
return

; Hotkey for Switch Case    
!S:: ; Alt + S                This is probably the most complicated hotkey 
Send, switch( ) 
Send, {Enter}
Send, {{}               ; Finish comments L8r
Send, {Enter}
Send, {Enter}
Send, {Tab}
Send, case 1:

Loop 7
{
  Send, {Left}
}

Send, {Tab}

Loop 7
{
	Send, {Right}
}

Send, {Enter}
Send, {Enter}
Send, break;
Send, {Enter}
Send, {Enter}
Send, {BS}

Loop 3

{
	Send, case 1:
	Send, {Enter}
	Send, {Enter}
	Send, break;
	Send, {Enter}
	Send, {Enter}
	Send, {BS}

}
Send, default:
Send, {Enter}
Send, {Enter}
Send, break;

Loop 21
{
	Send, {Up}
}

Loop 2
{
	Send, {Left}
}
return

; Hotkey for Adding a Case with a Break statement
!+S:: ; Alt + Shift + S
Send, case 1:
Send, {Enter}
Send, {Enter}
Send, break;
Send, {Enter}
Send, {Enter}
Send, {BS}
return

; Hotkey for Adding a Case that falls though
#S:: ; Win + S
Send, case 1:
Send, {Enter}
Send, {BS}
return

; Hotkey for Do While
!D:: ; Alt + D
Send, do
Send, {Enter}
Send, {{}

Loop 3
{
	Send, {Enter}
}

Send, {Down}
Send, while(  );//do-while loop 

Loop 19
{
	Send, {Left}
}

return

; Hotkey for a Method
!M:: ; Alt + M
Send, public static void  ()
Send, {Enter}
Send, {{}

Loop 3
{
	Send, {Enter}
}

Loop 4
{
	Send, {Up}
}

Loop 15
{
	Send, {Right}
}

return

; built by a71a5
