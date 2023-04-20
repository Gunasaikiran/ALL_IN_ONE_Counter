`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2023 15:08:26
// Designer Name: Guna sai kiran Nekkanti
// Module Name: All_in_one
// Project Name: All in one counter
// Target Devices: 
// Tool Versions: 
// Description: 
// Reach me:gunasaikiran8055@gmail.com
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module All_in_one(
    input [2:0] Mode,
    input Reset,
    input Preset,
    input clk,
    output [3:0] U_counter,
    output [3:0] D_counter,
    output [3:0] Mod10_counter,
    output [3:0] Mod5_counter,
    output [3:0] R_counter,
    output [3:0] J_counter,
    output [3:0] Even_counter,
    output [3:0] Odd_counter
    );
    wire[7:0]D;
    wire[7:0]cin;
    Mode3_8Decoder de(Mode[2:0],Reset,D[7:0]);
    and(cin[0],D[0],Reset);
    and(cin[2],D[2],Reset);
    and(cin[3],D[3],Reset);
    and(cin[4],D[4],Reset);
    and(cin[5],D[5],Reset);
    and(cin[6],D[6],Reset);
    and(cin[7],D[7],Reset);
    and(cin[1],D[1],Reset);
    Four_bit_Up_counter Count1(cin[0],clk,U_counter[3:0]);
    Four_bit_Down_counter Count2(cin[1],clk,D_counter[3:0]);
    Mod_10_Up_counter Count3(cin[2],clk,Mod10_counter[3:0]);
    Mod_5_Down_counter Count4(cin[3],clk,Mod5_counter[3:0]);
    Ring_counter Count5(cin[4],clk,Preset,R_counter[3:0]);
    Johnson_counter Count6(cin[5],clk,J_counter[3:0]);
    Even_counter Count7(cin[6],clk,Even_counter[3:0]);
    Odd_counter Count8(cin[7],clk,Odd_counter[3:0]);
endmodule
