module	play_music(key, buzzer, is_record);
	input [6:0] key; // ASCII key value that relates to a specific sound
	output [7:0] buzzer; // audio buzzer
	input is_record; // one bit value to tell whether to store the sound pattern (recording) or not.
					 // Using this module to play main buzzer and recording buzzers -> (for recording buzzers, should be 1, for main 0)
	
	// Case statement needed: 19 possible sounds... Different frequency rate for each
	
	
	// Recording section goes here. DO NOT DO -> We need to call FSM module and store in registers. Will do next week.
	
endmodule