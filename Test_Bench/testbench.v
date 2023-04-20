`timescale 1ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2023 16:21:05
// Design Name: 
// Module Name: testbench
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


module testbench;
   reg[2:0] Mode;
   reg Reset;
   reg Preset;
   reg clk;
   wire [3:0] U_counter;
   wire [3:0] D_counter;
   wire [3:0] Mod10_counter;
   wire [3:0] Mod5_counter;
   wire [3:0] R_counter;
   wire [3:0] J_counter;
   wire [3:0] Even_counter;
   wire [3:0] Odd_counter;
   All_in_one Dut(Mode,Reset,Preset,clk,U_counter,D_counter,Mod10_counter,Mod5_counter,R_counter,J_counter,Even_counter,Odd_counter);
   integer i,j;
   
   parameter WAIT=290;
   initial 
   begin
   clk=0;
   Reset=1;
   Preset=1;
   for(j=0;j<3;j=j+1)
   begin
        for(i=0;i<8;i=i+1)
           begin
              Mode=i;
              #WAIT;
           end
   end
   $finish;
   end
   
   always #10 clk=~clk;
   always #1175 Preset=~Preset;
   always #2320 Reset=~Reset;
//   always #50 Reset=~Reset;
   
endmodule
