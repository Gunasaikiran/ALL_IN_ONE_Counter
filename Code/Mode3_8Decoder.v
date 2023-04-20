`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2023 15:28:58
// Design Name: 
// Module Name: Mode3_8Decoder
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


module Mode3_8Decoder(
    input [2:0] Mode,
    input Reset,
    output reg [7:0] D
    );
    always @(*)
    begin
      if(Reset==1)
      begin
      D=8'd0;
       case (Mode)
       3'b000: D=8'd1;
       3'b001: D=8'd2;
       3'b010: D=8'd4;
       3'b011: D=8'd8;
       3'b100: D=8'd16;
       3'b101: D=8'd32;
       3'b110: D=8'd64;
       3'b111: D=8'd128;
       default:D=8'd0;
       endcase
      end
      else
      D=8'd0;
    end
endmodule
