`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2025 09:29:59 PM
// Design Name: 
// Module Name: ALUMain
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

module ALUMain (
    input  logic [6:0] A,
    input  logic [6:0] B,
    input  OP_t OP,
    output logic [6:0] Result,
    output logic Overflow, Zero, Carry, Negative);

    //Internal Conn.
    logic Sub;
    logic C_out_add;
    logic V_add, V_sub;
    logic [6:0] B_sub; 
    logic [6:0] SUM;
  
    //Subtraction Logic
    assign Sub = (OP == SUB);
    assign B_sub = Sub ? ~B : B;   
  
    //Ripple Carry Adder
    RippleAdder Adder7bits (
        .A(A), 
        .B(B_sub), 
        .C_in(Sub), 
        .S(SUM), 
        .C_out(C_out_add)
    );
     
  //Operations
  always_comb begin
    case (OP)
    
      SUB, ADD: begin // Subtraction
        Result = SUM;  
      end

      AND: begin // AND
        Result = A & B;
      end

      OR: begin // OR
        Result = A | B;
      end
      
    endcase
  end

  // Flags
  assign Zero = (Result == 7'b0);
  assign Negative = Result[6];
  assign Carry = (OP[1] == 1'b0) ? C_out_add : 1'b0;
  assign V_add = (A[6] & B[6] & ~SUM[6]) | (~A[6] & ~B[6] & SUM[6]);
  assign V_sub = ( A[6] & ~B[6] & ~SUM[6]) | (~A[6] & B[6] & SUM[6]);
  assign Overflow = (OP == ADD) ? V_add : (OP == SUB) ? V_sub : 1'b0;
  
endmodule
