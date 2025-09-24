`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2025 09:31:19 AM
// Design Name: 
// Module Name: FSM3
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


module FSM3 (
    input  logic CLK,
    input  logic RESET,     // async, active-high -> LE0 (000)
    input  logic TH,        // level: advance when 1, hold when 0
    output logic LE2,       // expose state bits (match your table)
    output logic LE1,
    output logic LE0,
    output logic A, B, C, D, E, F, G
);

    // -----------------------------
    // State encoding (3 bits)
    // -----------------------------
    typedef enum logic [2:0] {
        LE0 = 3'b000,
        LE1 = 3'b001,
        LE2S = 3'b010,
        LE3 = 3'b011,
        LE4 = 3'b100,
        LE5 = 3'b101
        // (states 110/111 unused)
    } state_t;

    state_t s, s_n;

    // -----------------------------
    // State register
    // -----------------------------
    always_ff @(posedge CLK or posedge RESET) begin
        if (RESET) s <= LE0;
        else       s <= s_n;
    end

    // -----------------------------
    // Next-state logic
    // -----------------------------
    always_comb begin
        s_n = s;               // default: hold
        unique case (s)
            LE0 : s_n = TH ? LE1  : LE0;
            LE1 : s_n = TH ? LE2S : LE1;
            LE2S: s_n = TH ? LE3  : LE2S;
            LE3 : s_n = TH ? LE4  : LE3;
            LE4 : s_n = TH ? LE5  : LE4;
            LE5 : s_n = TH ? LE0  : LE5;
            default: s_n = LE0;
        endcase
    end

    // Expose state bits as outputs (E = {LE2,LE1,LE0} in your sheet)
    assign {LE2,LE1,LE0} = s;

    // -----------------------------
    // Outputs (Moore): A..G per state
    // Fill these 7-bit patterns from your table (columns A..G).
    // Bit order is {A,B,C,D,E,F,G}.
    // -----------------------------
    localparam logic [6:0]
        SEG_LE0 = 7'b0000000, // TODO: replace with table row for LE0
        SEG_LE1 = 7'b0000000, // TODO: replace with table row for LE1
        SEG_LE2 = 7'b0000000, // TODO: replace with table row for LE2
        SEG_LE3 = 7'b0000000, // TODO: replace with table row for LE3
        SEG_LE4 = 7'b0000000, // TODO: replace with table row for LE4
        SEG_LE5 = 7'b0000000; // TODO: replace with table row for LE5

    logic [6:0] seg;

    always_comb begin
        unique case (s)
            LE0  : seg = SEG_LE0;
            LE1  : seg = SEG_LE1;
            LE2S : seg = SEG_LE2;
            LE3  : seg = SEG_LE3;
            LE4  : seg = SEG_LE4;
            LE5  : seg = SEG_LE5;
            default: seg = 7'b0;
        endcase
    end

    assign {A,B,C,D,E,F,G} = seg;

endmodule
