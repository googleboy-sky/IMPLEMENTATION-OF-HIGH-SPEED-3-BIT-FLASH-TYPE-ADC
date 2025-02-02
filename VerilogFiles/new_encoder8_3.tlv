\TLV_version 1d: tl-x.org
\SV
/* verilator lint_off UNUSED*/  /* verilator lint_off DECLFILENAME*/  /* verilator lint_off BLKSEQ*/  /* verilator lint_off WIDTH*/  /* verilator lint_off SELRANGE*/  /* verilator lint_off PINCONNECTEMPTY*/  /* verilator lint_off DEFPARAM*/  /* verilator lint_off IMPLICIT*/  /* verilator lint_off COMBDLY*/  /* verilator lint_off SYNCASYNCNET*/  /* verilator lint_off UNOPTFLAT */  /* verilator lint_off UNSIGNED*/  /* verilator lint_off CASEINCOMPLETE*/  /* verilator lint_off UNDRIVEN*/  /* verilator lint_off VARHIDDEN*/  /* verilator lint_off CASEX*/  /* verilator lint_off CASEOVERLAP*/  /* verilator lint_off PINMISSING*/   /* verilator lint_off BLKANDNBLK*/  /* verilator lint_off MULTIDRIVEN*/ /* verilator lint_off WIDTHCONCAT*/  /* verilator lint_off ASSIGNDLY*/  /* verilator lint_off MODDUP*/  /* verilator lint_off STMTDLY*/  /* verilator lint_off LITENDIAN*/  /* verilator lint_off INITIALDLY*/  

//Your Verilog/System Verilog Code Starts Here:
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Mixed Signal Design Hacakthon
//
// (Organized by FOSSEE IIT Bombay, VSD Corp. Pvt. Ltd.)
// 
// Design Name: 		8:3 Encoder
// Designer :	 		Akash Arun Ambekar
// Module Name:    	encoder8_3 
//
//////////////////////////////////////////////////////////////////////////////////
module new_encoder8_3(in,out);
  input [7:0] in;
  output reg [2:0] out;
  
  always @(*)
    begin
      case(in)
        8'b00000000 : out = 3'b000;
        8'b00000010 : out = 3'b001;
        8'b00000110 : out = 3'b010;
        8'b00001110 : out = 3'b011;
        8'b00011110 : out = 3'b100;
        8'b00111110 : out = 3'b101;
        8'b01111110 : out = 3'b110;
        8'b11111110 : out = 3'b111;
        default  : out = 3'b000; 
      endcase
    end
endmodule


//Top Module Code Starts here:
	module top(input logic clk, input logic reset, input logic [31:0] cyc_cnt, output logic passed, output logic failed);
		logic  [7:0] in;//input
		logic  [2:0] out;//output
//The $random() can be replaced if user wants to assign values
		assign in = 8'b01111110;
		new_encoder8_3 new_encoder8_3(.in(in), .out(out));
	
\TLV
//Add \TLV here if desired                                     
\SV
endmodule

