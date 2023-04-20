`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2023 15:44:26
// Design Name: 
// Module Name: Johnson_counter
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


module Johnson_counter(
    input clear,
    input clk,
    output reg [3:0] Cout
    );
    integer i;
    initial
     Cout=4'b0000;
    always @ (posedge clk) 
    begin  
      if (clear==0)  
         Cout <= 0;  
      else begin  
        Cout[3] <= ~Cout[0];  
        for (i = 0; i < 3; i=i+1) begin  
          Cout[i] <= Cout[i+1];  
        end  
      end  
  end  
endmodule
