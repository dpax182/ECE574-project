// *********************************************************************************
// *********************************************************************************
// *                                                                               *
// *                             VERILOG MODULE FILE                               *
// *                                                                               *
// *   Team members:                                                               *
// *     Adam Frankowski                                                           *
// *     Samuel Comeau                                                             *
// *     Nick Paco                                                                 *
// *                                                                               *
// *                                                                               *
// *                                                                               *
// *********************************************************************************
// *********************************************************************************

module mcircuit1(

	 input clk,
	 input rst,
	 input [8:0] a,
	 input [7:0] b,

	 output [8:0] c
);

	 wire [8:0] cwire;
	 ADD #(9) s_ADD4 (a,b,cwire);
	 REG #(9) s_REG5 (cwire,clk,rst,c);


endmodule

// *********************************************************************************
// *                            END OF GENERATED FILE                              *
// *********************************************************************************
