`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2023 15:44:26
// Design Name: 
// Module Name: Ring_counter
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


module Ring_counter(
    input clear,
    input clk,
    input Preset,
    output reg [3:0] Cout
    );
    integer i;
      always @ (posedge clk) begin
      if(clear==0)
          Cout <=0;
      else
      begin  
      if (Preset)  
         Cout <= 1;  
      else begin  
        Cout[3] <= Cout[0];  
        for (i = 0; i < 3; i=i+1)
         begin  
          Cout[i] <= Cout[i+1];  
        end  
      end  
      end
  end 
endmodule
