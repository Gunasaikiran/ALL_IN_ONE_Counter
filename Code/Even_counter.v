`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2023 15:44:26
// Design Name: 
// Module Name: Even_counter
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


module Even_counter(
    input clear,
    input clk,
    output reg [3:0] Cout
    );
    initial
     Cout=4'b0000;
    always@(posedge clk)

    begin
         if(clear==0)

            Cout<=0; // 1 because this is an odd counter
         else
            begin
              if(Cout % 2 != 0) // checking if the counter started at an even state
                    Cout<=0;
              else
                     begin
                     if(Cout == 14) // max count check
                         Cout<=0;
                     else
                         Cout<=Cout+2; // odd counting 1,3,5,7,9
                     end 
              end
    end
endmodule
