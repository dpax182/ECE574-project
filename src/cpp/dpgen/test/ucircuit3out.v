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

module ucircuit3(

	 input clk,
	 input rst,
	 input [31:0] a,
	 input [15:0] b,

	 output [7:0] c
);

	 wire [7:0] cwire;
	 ADD #(8) u_ADD4 (a,b,cwire);
     REG #(8) u_REG5 (cwire,clk,rst,c);


endmodule

// *********************************************************************************
// *                            END OF GENERATED FILE                              *
// *********************************************************************************
