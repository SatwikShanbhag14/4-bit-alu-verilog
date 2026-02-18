`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2025 21:30:57
// Design Name: 
// Module Name: alu4bit
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


module alu4bit(
 input [3:0] a,b,
 input [2:0]s,
 output reg [3:0]out ,
 output reg carry,
 output reg zero);
 
 
 
always @ (*) begin 
case (s)
   3'b000:{carry,out}=a+b;
   3'b001:{carry,out}=a-b;
   3'b010:out =a&b;
   3'b011:out =a|b;
   3'b100:out=a+1;
   3'b101:out=a-1;
   3'b110:out=a^b;
   3'b111:out=~a;
   default :out=4'b0000;
endcase
   if (out==4'b0000)
     zero=1;
   else 
     zero=0;
end 
endmodule
