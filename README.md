# CPM-ANSI-green-assembler-code

Claude AI Prompt:<BR>
write a program to compile on a CP/M system<BR>
8080 assembler code to output the ANSI terminal codes for the colour green<BR><BR>

Here's an 8080 program for CP/M that sends the ANSI escape sequence for<BR>
green text (ESC [ 3 2 m) to the console, prints a message, then resets the colour.<BR>

<HR/>
Build steps (CP/M 2.2 with the standard tools):<BR><BR>

A>ASM GREEN          ; produces GREEN.HEX (and GREEN.PRN)<BR>
A>LOAD GREEN         ; converts GREEN.HEX to GREEN.COM<BR>
A>GREEN
