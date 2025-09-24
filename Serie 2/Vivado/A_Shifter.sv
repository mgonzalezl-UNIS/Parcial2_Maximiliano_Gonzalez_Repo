`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2025 09:23:00 PM
// Design Name: 
// Module Name: A_Shifter
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
import Decoders::*;

module A_Shifter(
    input  logic [6:0] A,
    input  SH_t SLSR,
    output logic [6:0] A_shift);
    
    always_comb begin
        case (SLSR)
            No_Shift: A_shift = A;                       
            Shift_Right: A_shift = {1'b0, A[6:1]};          
            Shift_Left: A_shift = {A[5:0], 1'b0}; 
            default: A_shift = A;
        endcase
    end
endmodule
