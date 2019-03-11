module main (SW, KEY, PS2_KBCLK, PS2_KBDAT, GPIO);
	input [3:0] KEY;     // KEY0 is our record button. KEY0 again is stop recording (saved recordings can be written over, so no reset button needed).
	input [2:0] SW;      // SW2,1,0 are our registers for saved recordings
	input PS2_KBCLK;    // Clock input from the keyboard
	input PS2_KBDAT;    // Data input from the keyboard (byte)      (This and the above input need to be deciphered to values we can work with)
	output [35:0] GPIO; // These are our buzzer speakers. 7-0 is main buzzer. 35-28 is register buzzer #1. 27-20 is #2. 19-12 is #3.
	
	// Convert the keyboard input into processable data (ie, get ascii symbol of key)
	wire [6:0] ascii_val;
	read_keyboard ps2(.kb_data(PS2_KBDAT), .kb_clock(PS2_KBCLK), .ascii(ascii_val[6:0]));
	
	// Simply call the music player module:
	play_music buzzer1(.key(ascii_val[6:0]), .buzzer(GPIO[7:0])); // NOT DONE, MORE I/O present
	
	
	// Simply call the recording saver module:
	
	
	// Simply call the recording player module:
	
endmodule