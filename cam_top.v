`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:12:20 06/30/2021 
// Design Name: 
// Module Name:    cam_top 
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
module cam_top
	#(
		parameter ADDR_WIDTH = 15,
		parameter DATA_WIDTH = 24,
		parameter NO_OF_IMG = 2
	  )
	  (
			input wire clk,
			input wire [NO_OF_IMG-1:0] we,
			input wire match_en,
			input wire reset,
			input wire [ADDR_WIDTH-1:0] size,
			input wire [ADDR_WIDTH-1:0] addr,
			input wire [DATA_WIDTH-1:0] din,
			output reg [NO_OF_IMG-1:0] match
		);
		
		reg [ADDR_WIDTH-1:0] count[NO_OF_IMG-1:0];
		
		integer j;
		
		initial 
		begin
			for(j=0;j<NO_OF_IMG;j=j+1)
			begin
				count[j] <= {ADDR_WIDTH{1'b0}};	
				match[j] <= {NO_OF_IMG{1'b0}};
			end
		end
		
			
		genvar i;
		generate
		
			for(i=0;i<NO_OF_IMG;i=i+1)
			begin : images
				
				wire match_wire;
		
				ram_img 
					#(
						.DATA_WIDTH(ADDR_WIDTH),
						.ADDR_WIDTH(DATA_WIDTH)
					  )
				ram(
				
					.clk(clk),
					.we(we[i]),
					.match_en(match_en),
					.size(size),
					.addr(din),
					.din(addr),
					.match(match_wire)	
				);
				
				always @(posedge clk) begin
					if ((match_wire == 1) && (reset == 0))
						count[i] = count[i]+3;
					//$display("%b",count[j]);
					//$display($time," %b %b %h %d %b",match_wire,count[i],din,i,we[i]);
					end //always
				
			end  //for
		
		endgenerate
		
		always @(posedge clk) begin
		if (reset == 1)
				begin 
					for(j = 0;j<NO_OF_IMG;j=j+1) begin
						count[j] = {DATA_WIDTH{1'b0}};
						match[j] = 1'b0;
					end
				end
		end
		
		
		always @(posedge clk)
		begin
			for(j = 0; j< NO_OF_IMG;j = j+1)
			begin
				if (count[j] == size) //(IMG_SIZE-100<=count[j]) &&
					match[j] <= 1;
			end
		end


endmodule 