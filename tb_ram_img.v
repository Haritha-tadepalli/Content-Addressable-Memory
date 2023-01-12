`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:36:49 06/30/2021
// Design Name:   ram_img
// Module Name:   C:/Xilinx92i/image_cam/tb_ram_img.v
// Project Name:  image_cam
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ram_img
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_ram_img_v;

	// Inputs
	reg clk;
	reg we;
	reg match_en;
	reg [23:0] addr;
	reg [13:0] din;

	// Outputs
	wire match;

	// Instantiate the Unit Under Test (UUT)
	ram_img uut (
		.clk(clk), 
		.we(we),
		.match_en(match_en),
		.addr(addr), 
		.din(din), 
		.match(match)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		we = 0;
		addr = 0;
		din = 0;
		match_en = 0;
		
		#4; begin
		we = 1'b1;
		addr = 24'b111111110000000011110010;
		din =  14'b00000000000001;
		end
		#4;
		begin
		addr = 24'b101010101010101010101010;
		din = 14'b 00000000000010;
		end
		#2 we = 1'b0;match_en = 1'b1;
		#2 addr = 24'b111111110000000011110010;
		#2 addr = 24'b101010101010101010101010;
		
	end
	always #2 clk = ~clk; 
	//initial $monitor($time," %b %b",din,dout);
	initial #16 $finish;
      
endmodule

