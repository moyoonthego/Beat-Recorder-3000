module read_keyboard (kb_data, kb_clock, ascii);
	input kb_data;
	input kb_clock;
	output [6:0] ascii;
endmodule

module convert_readable(
	input [7:0] raw_data,
	output reg [6:0] ascii
);
	
	always @(*)
	begin
		case(raw_data[7:0])
			// only using first two rows of letters for keyboard. Thus, only assigning relevant keys signif. values.
			8'b00011100: OUT = 7'd65; // 'A'
			8'b00100011: OUT = 7'd68; // 'D'
			8'b00100100: OUT = 7'd69; // 'E'
			8'b00101011: OUT = 7'd70; // 'F'
			8'b00110100: OUT = 7'd71; // 'G'
			8'b00110011: OUT = 7'd72; // 'H'
			8'b01000011: OUT = 7'd73; // 'I'
			8'b00111011: OUT = 7'd74; // 'J'
			8'b01000010: OUT = 7'd75; // 'K'
			8'b01001011: OUT = 7'd76; // 'L'
			8'b01000100: OUT = 7'd79; // 'O'
			8'b01001101: OUT = 7'd80; // 'P'
			8'b00010101: OUT = 7'd81; // 'Q'
			8'b00101101: OUT = 7'd82; // 'R'
			8'b00011011: OUT = 7'd83; // 'S'
			8'b00101100: OUT = 7'd84; // 'T'
			8'b00111100: OUT = 7'd85; // 'U'
			8'b00011101: OUT = 7'd87; // 'W'
			8'b00110101: OUT = 7'd89; // 'Y'
    		default: OUT = 7'd32; // all other selected vals
		endcase
	end
	
endmodule