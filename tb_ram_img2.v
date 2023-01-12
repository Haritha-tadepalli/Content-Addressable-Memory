`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:29:29 07/03/2021
// Design Name:   ram_img
// Module Name:   C:/Xilinx92i/image_cam/tb_ram_img2.v
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

module tb_ram_img2_v;

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
		match_en = 0;
		addr = 0;
		din = 0;

		#4 begin
		we = 1'b1;
		addr = 24'hFFEE11;
		din = 14'b00000000000001;
		end
		#4 begin
		addr = 24'hAACB01;
		din = 14'b00000000000010;
		end
		#4 begin
		addr = 24'hABCDEF;
		din = 14'b00000000000011;
		end
		#4 begin
		addr = 24'h987654;
		din = 14'b00000000000100;
		end
		#4 begin
		addr = 24'h156799;
		din = 14'b00000000000101;
		end
		#4 begin
		addr = 24'h112233;
		din = 14'b00000000000110;
		end
		#2 begin
		match_en = 1'b1;
		we = 1'b0;
		addr = 24'hFFEE11;
		end
		#2 addr = 24'hAACB01;
		#2 addr = 24'h112233;
		#2 addr = 24'h123456;

	end
   
	always #2 clk = ~clk;
	//initial $monitor($time," %b",match);
	initial #34 $finish;
endmodule

