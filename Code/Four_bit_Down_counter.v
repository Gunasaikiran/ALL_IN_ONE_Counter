`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2023 15:44:26
// Design Name: 
// Module Name: Four_bit_Down_counter
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


module Four_bit_Down_counter(
    input clear,
    input clk,
    output reg [3:0] Cout
    );
     initial
     Cout=4'b1111;
     
     always @ (posedge clk) 
     begin   
    if (clear==0)  
      Cout <= 0;  
    else  
      Cout <= Cout - 1;  
  end    
endmodule
