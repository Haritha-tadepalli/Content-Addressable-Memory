`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:17:24 07/03/2021
// Design Name:   cam_top
// Module Name:   C:/Xilinx92i/image_cam/tb_cam1.v
// Project Name:  image_cam
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cam_top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_cam1_v;

	// Inputs
	reg clk;
	reg [1:0] we;
	reg match_en;
	reg reset;
	reg [13:0] addr;
	reg [23:0] din;

	// Outputs
	wire [1:0] match;

	// Instantiate the Unit Under Test (UUT)
	cam_top uut (
		.clk(clk), 
		.we(we), 
		.match_en(match_en), 
		.reset(reset), 
		.addr(addr), 
		.din(din), 
		.match(match)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		we = 0;
		match_en = 0;
		reset = 0;
		addr = 0;
		din = 0;

		#2 begin				//1st image
		we = 2'b01;
		addr = 14'b00000000000001;
		din = 24'hFFEE11;
		end
		#4 begin
		addr = 14'd2;
		din = 24'h123456;
		end
		#4 begin
		addr = 14'd3;
		din = 24'hA12789;
		end
		#4 begin
		addr = 14'd4;
		din = 24'h987654;
		end
		#4 begin
		addr = 14'd5;
		din = 24'h156789;
		end
		#4 begin			//second image
		we = 2'b10;
		addr = 14'd1;
		din = 24'h123589;
		end
		#4 begin
		addr = 14'd2;
		din = 24'h123457;
		end
		#4 begin
		addr = 14'd3;
		din = 24'h12AD56;
		end
		#4 begin
		addr = 14'd4;
		din = 24'h948563;
		end
		#4 begin
		addr = 14'd5;
		din = 24'h12ABCD;
		end
		#2 begin
		we = 2'b00;
		match_en = 1'b1;
		din = 24'hFFEE11;
		end
		#2 din = 24'h123456;
		#2 din = 24'hA12789;
		#2 din = 24'h987654;
		#2 din = 24'h156789;
		#2 reset = 1'b1;din = 24'd0;
		#2 reset = 1'b0;
		#2 din = 24'h123589;
		#2 din = 24'h123457;
		#2 din = 24'h12AD56;
		#2 din = 24'h948563;
		#2 din = 24'h12ABCD;
	end
      
		always #2 clk = ~clk;
	//	initial $monitor($time," %b",match);
		initial #65   $finish;
		
endmodule

