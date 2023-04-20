`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2023 15:44:26
// Design Name: 
// Module Name: Mod_5_Down_counter
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


module Mod_5_Down_counter(
    input clear,
    input clk,
    output reg [3:0] Cout
    );
    initial
     Cout=4'b0101;
     always@ (posedge clk)
     begin
       if( clear==0)
         Cout <= 4'b0000;
       else
         begin
         if(Cout<=5&Cout>0)
            Cout<=Cout-1;
         else
            Cout<=4'b0101;
         end
    end
endmodule
