`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2025 09:14:47 PM
// Design Name: 
// Module Name: ALU
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

module ALU(
    input  logic [6:0] A, B,
    input  logic [3:0] OP,
    output logic [6:0] Result,
    output SH_t dbg_sh,
    output OP_t dbg_op,
    output logic C, V, N, Z);
    
    //Internal Conn.
    logic [6:0] A_shifted;
    
    //Decoder
    SH_t sh;
    OP_t op_mode;
    
    //Status and Operational decoders
    //always_comb begin  
        //sh = SH_t'(OP[3:2]);
        //op_mode = OP_t'(OP[1:0]);
    //end

    //Module Instances
    A_Shifter shift (
        .A(A),
        .SLSR(sh),
        .A_shift(A_shifted)
    );

    ALUMain main (
        .A       (A_shifted),
        .B       (B),
        .OP      (op_mode),
        .Result  (Result),
        .Carry(C),
        .Overflow(V),
        .Zero(Z),
        .Negative(N)
    );
    
    assign sh      = SH_t'(OP[3:2]);
    assign op_mode = OP_t'(OP[1:0]);
    assign dbg_sh = sh;
    assign dbg_op = op_mode;
endmodule


