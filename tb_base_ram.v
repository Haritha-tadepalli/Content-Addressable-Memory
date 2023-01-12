`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:51:02 07/02/2021
// Design Name:   base_ram
// Module Name:   C:/Xilinx92i/image_cam/tb_base_ram.v
// Project Name:  image_cam
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: base_ram
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_base_ram_v;

	// Inputs
	reg clk;
	reg we;
	reg match_en;
	reg [13:0] din;
	reg [11:0] addr;

	// Outputs
	wire [13:0] dout;

	// Instantiate the Unit Under Test (UUT)
	base_ram uut (
		.clk(clk), 
		.we(we), 
		.match_en(match_en), 
		.din(din), 
		.addr(addr), 
		.dout(dout)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		we = 0;
		match_en = 0;
		din = 0;
		addr = 0;

		#2 begin
		we =1'b1;
		din = 14'b00000000000001;
		addr = 24'hFFEE00;
		end
		#2 begin
		din = 14'b00000000000010;
		addr = 24'hFEAE10;
		end
		#2 begin
		we = 1'b0;
		match_en = 1'b1;
		addr = 24'hFFEE00;
		end
		#2 addr = 24'hFEAE10;
		
		
	end
	always #2 clk = ~clk;
	initial $monitor($time, " %b %b %b", addr,din,dout);
	initial #10 $finish;
      
endmodule

