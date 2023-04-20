`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2023 15:44:26
// Design Name: 
// Module Name: Mod_10_Up_counter
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


module Mod_10_Up_counter(
    input clear,
    input clk,
    output reg [3:0] Cout
    );
    initial
     Cout=4'b0000;
    always@ (posedge clk)
begin 
if( clear==0 | Cout==4'b1001)
Cout <= 4'b0000;
else
Cout <= Cout+ 1;
end
endmodule
