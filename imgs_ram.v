`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:12:20 06/30/2021 
// Design Name: 
// Module Name:    imgs_ram 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module imgs_ram#(
		parameter DATA_WIDTH = 15,
		parameter ADDR_WIDTH = 24
	 )
	 (
		input wire clk,
		input wire we,
		input wire match_en,
		input wire [ADDR_WIDTH-1:0] addr,
		input wire [DATA_WIDTH-1:0] din,
		output wire match
	 ); 
	 localparam slices = 2;
	 localparam slice_width = 12;
	 
	 reg match_reg = 1'b0;
	 reg [DATA_WIDTH-1:0] dout;
	 reg [DATA_WIDTH-1:0] dout_reg [1:0];
	 
	 initial 
   begin
		match_reg = 1'b0;
	   end
	 
	 assign match = match_reg;
	 
	 genvar i;
	 generate 
	     for(i=0;i<NO_OF_IMGS;i=i+1)
	          begin: slice
		wire [DATA_WIDTH-1:0] dout_wire;
		ram_base #(
			.DATA_WIDTH(DATA_WIDTH),
			.ADDR_WIDTH(slice_width)
		)
		ram(
			.clk(clk),
			.we(we),
			.match_en(match_en),
			.din(din),
			.addr(addr[(12+12*i)-1:12*i]),
			.dout(dout_wire)
		);
		always @(posedge clk)	begin
			dout_reg[i] = dout_wire;
		end	
		end
		endgenerate

	always @(posedge clk)
	     begin
	              dout = (dout_reg[1]&dout_reg[0]);
		if ((dout != {DATA_WIDTH{1'b0}}) && (match_en ==1))
			match_reg = 1'b1;
		else
			match_reg = 1'b0;
	      end
		
endmodule
