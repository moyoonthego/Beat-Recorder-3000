module main (SW, KEY, PS2_KBCLK, PS2_KBDAT, GPIO);
	input KEY[3:0];     // KEY0 is our record button. KEY0 again is stop recording (saved recordings can be written over, so no reset button needed).
	input SW[2:0];      // SW2,1,0 are our registers for saved recordings
	input PS2_KBCLK;    // Clock input from the keyboard
	input PS2_KBDAT;    // Data input from the keyboard (byte)      (This and the above input need to be deciphered to values we can work with)
	output GPIO;        // These are our buzzer speakers. 7-0 is main buzzer. 35-28 is register buzzer #1. 27-20 is #2. 19-12 is #3.
	
	// simply call the music player module:
	
	
	// simply call the recording saver module:
	
	
	// simply call the recording player module:
	
endmodule