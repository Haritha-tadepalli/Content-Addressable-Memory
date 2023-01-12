`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:38:21 06/29/2021 
// Design Name: 
// Module Name:    base_ram 
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
module base_ram
#	(
		parameter DATA_WIDTH = 14,
		parameter ADDR_WIDTH = 12
	 )
  
	(
		input wire clk,
		input wire we,
		input wire match_en,
		input wire [DATA_WIDTH-1:0] din,
		input wire [ADDR_WIDTH-1:0] addr,
		output wire [DATA_WIDTH-1:0] dout
	);
  
	integer i,j;
		
	reg [DATA_WIDTH-1:0] mem[(2**ADDR_WIDTH)-1:0];
	reg [DATA_WIDTH-1:0] dout_reg = {DATA_WIDTH{1'b0}};
	
	assign dout = dout_reg;
	
	initial begin
    // two nested loops for smaller number of iterations per loop
    // workaround for synthesizer complaints about large loop counts
    for (i = 0; i < 2**ADDR_WIDTH; i = i + 2**(ADDR_WIDTH/2)) begin
        for (j = i; j < i + 2**(ADDR_WIDTH/2); j = j + 1) begin
            mem[j] = 0;
        end
    end
	end

	always @(posedge clk) begin
		if ((match_en == 1) && (we == 0))
			dout_reg <= mem[addr];
		if ((we == 1) && (match_en == 0)) 
			mem[addr] <= din;
		//$display($time," %b",dout);
	end

endmodule
