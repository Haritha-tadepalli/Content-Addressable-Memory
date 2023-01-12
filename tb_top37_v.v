`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:17:24 07/03/2021
// Design Name:   cam_top
// Module Name:   C:/Xilinx92i/image_cam/tb_top37_v.v
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

module tb_top37_v; 

    parameter ADDR_WIDTH = 15;
    parameter DATA_WIDTH = 24;
    parameter NO_OF_IMG = 2;
    
     // Inputs
    reg clk;
    reg [1:0] we;
    reg match_en;
    reg reset;
    reg [ADDR_WIDTH-1:0] size;
    reg [ADDR_WIDTH-1:0] addr;
     reg [23:0] din;

	// Outputs
      wire [1:0] match;
    
    // Instantiate the Unit Under Test (UUT) 
    top_cam 
        #(
            .ADDR_WIDTH(ADDR_WIDTH),
            .DATA_WIDTH(DATA_WIDTH),
            .NO_OF_IMG(NO_OF_IMG)
          )
        uut 
          (
            	.clk(clk), 
.we(we), 
	.match_en(match_en), 
	.reset(reset), 
	.addr(addr), 
	.size(size),
	.din(din), 
	.match(match)    );
integer i;

localparam ARRAY_LEN = 1000*1024;
	
reg [7:0] data[0: ARRAY_LEN];
integer  start_pos, width, height, bitcount;
integer fileID,r,count = 1;
 	
 	
//     to read image 1 to CAM 	
`define read_filename1 "C:\\Users\\Haritha\\Desktop\\sample.bmp"
       
task readBMP1;
 //    integer i;
     begin
         fileID = $fopen(`read_filename1, "rb");
         $display("%d", fileID);
         if(fileID == 0) begin
             $display("Error: Please check file path");
             $finish;
         end else begin
             r=$fread(data, fileID);
             $fclose(fileID);
           
         
             size = {data[5],data[4],data[3],data[2]};
             $display("size - %d", size);
             start_pos = {data[13],data[12],data[11],data[10]};
             $display("startpos : %d", start_pos);
             width = {data[21],data[20],data[19],data[18]};
             height = {data[25],data[24],data[23],data[22]};
             $display("width - %d; height - %d",width, height );
         
             bitcount = {data[29],data[28]};
         
             if(bitcount != 24) begin
                 $display("Error: Please check the image file. It may be corrupted");
             end
         
             if(width%4)begin
                 $display("width is not suitable");
                 $finish;
             end

        end
     end
 endtask
 
 `define read_filename2 "C:\\Users\\Haritha\\Desktop\\flower.bmp"
       
task readBMP2;

     begin
         fileID = $fopen(`read_filename2, "rb");
         $display("%d", fileID);
         if(fileID == 0) begin
             $display("Error: Please check file path");
             $finish;
         end else begin
             r=$fread(data, fileID);
             $fclose(fileID)
         
             size = {data[5],data[4],data[3],data[2]};
             $display("size - %d", size);
             start_pos = {data[13],data[12],data[11],data[10]};
             $display("startpos : %d", start_pos);
             width = {data[21],data[20],data[19],data[18]};
             height = {data[25],data[24],data[23],data[22]};
             $display("width - %d; height - %d",width, height );
         
             bitcount = {data[29],data[28]};
         
             if(bitcount != 24) begin
                 $display("Error: Please check the image file. It may be corrupted");
             end
         
             if(width%4)begin
                 $display("width is not suitable");
                 $finish;
             end
        end
     end
 endtask
 

initial begin
    clk = 0;
    addr = 0;
    din = 0;
    match_en = 0;
    we = 0;
    reset = 0;
 
//writing image 1 to CAM    
    readBMP1;
    
    #4;
    we = 2'b01;
 
    for(i = start_pos; i < size; i = i+3)begin
    
        din = {data[i+2],data[i+1],data[i]};
        addr = {ADDR_WIDTH{count}};
        count = count+1;
        #4;
        we = 2'b01;   
    end
   //end of writing image 1 
    #4
    we = 2'b00;
    din = 24'd0;
    addr = {ADDR_WIDTH{1'b0}};
    count = 0;
    
    //write image 2 to CAM
    
    readBMP2;
    
    #4
    we = 2'b10;
     for(i = start_pos; i < size; i = i+3)begin
    
        din = {data[i+2],data[i+1],data[i]};
        addr = {ADDR_WIDTH{count}};
        count = count+1;
        #4;
        we = 2'b10;   
    end
    //end of writing image 2
    
    
    //seraching image 1 in CAM
    #4; we = 2'b00;
    match_en = 1'b1;
    addr = {ADDR_WIDTH{1'b0}};
    
    readBMP1;
    
    for(i = start_pos; i < size; i = i+3)begin
        
        din = {data[i+2],data[i+1],data[i]};
        #4;  
    end
    #4;
    if ((match != 2'b0) && (match_en == 1'b1))
        $display("Image is found at %d location",match);
    else
        $display("Image not found");
   /* #2
    reset = 1'b1;
    #2 
    reset = 1'b0;*/
    
    #10;
     $stop;
    end
    
    always #2 clk = ~clk;
    //initial $monitor($time," %d %d",match_en,match);
endmodule

