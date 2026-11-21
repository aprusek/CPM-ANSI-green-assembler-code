# CPM-ANSI-green-assembler-code

Claude AI Prompt:<BR>
write a program to compile on a CP/M system<BR>
8080 assembler code to output the ANSI terminal codes for the colour green<BR><BR>

Here's an 8080 program for CP/M that sends the ANSI escape sequence for<BR>
green text (ESC [ 3 2 m) to the console, prints a message, then resets the colour.

<HR/>
Build steps (CP/M 2.2 with the standard tools):

A>ASM GREEN          ; produces GREEN.HEX (and GREEN.PRN)
A>LOAD GREEN         ; converts GREEN.HEX to GREEN.COM
A>GREEN

Notes:

$ terminator: BDOS function 9 stops at $, so the escape strings are written with $ at the end. This means you can't embed a literal $ in the output, which isn't an issue here.
Escape byte in a string: DB ESC,'[32m$' mixes the numeric constant with a quoted string, which ASM.COM accepts.
Terminal support: your terminal or emulator has to interpret ANSI codes. Most modern terminal emulators connected to a CP/M machine do (e.g. via a serial link, or emulators like z80pack and RunCPM). Native consoles such as a VT52-style terminal or the Kaypro's built-in display won't, and you'll see the raw characters instead.
Bright green: use ESC,'[92m$' instead of [32m if your terminal supports the aixterm bright colour range, or ESC,'[1;32m$' for bold green.
Exit: RET works because the CCP leaves its return address on the stack. If you prefer, replace it with JMP 0 for an explicit warm boot.

If you want a variant that outputs the bytes via BDOS function 2 (single-character output) or writes directly to the BIOS CONOUT routine, I can adapt it.
