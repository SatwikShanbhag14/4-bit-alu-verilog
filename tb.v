`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2025 22:51:30
// Design Name: 
// Module Name: tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb;
reg [3:0] a,b;
reg  [2:0]s;
 wire [3:0]out ;
 wire carry;
 wire zero;
  
alu4bit insl(a,b,s,out,carry,zero);

initial begin 
a=4'b0101;b=4'b0110;s=3'b000;
#5 s=3'b001;
#5 s=3'b010;
#5 s=3'b011;
#5 s=3'b100;
#5 s=3'b101;
#5 s=3'b110;
#5 s=3'b111;
#5 $finish;
end 
endmodule

 
 

