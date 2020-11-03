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

module circuit6(

	 input clk,
	 input rst,
	 input [63:0] a,
	 input [63:0] b,
	 input [63:0] c,
	 input [63:0] zero,

	 output [63:0] z
);

	 wire [63:0] e;
	 wire [63:0] f;
	 wire [63:0] g;
	 wire [63:0] zwire;
	 wire [0:0] gEQz;
	 SUB #(64) u_DEC10 (a,e);
	 ADD #(64) u_INC11 (c,f);
	 MOD #(64) u_MOD12 (a,c,g);
	 COMP #(64) u_COMP13 (g,zero,.eq(gEQz));
	 REG #(64) u_REG14 (zwire,clk,rst,z);


endmodule

// *********************************************************************************
// *                            END OF GENERATED FILE                              *
// *********************************************************************************
