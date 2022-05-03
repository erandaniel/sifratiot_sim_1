// 64-bit ALU template
module alu64bit (
    input logic [63:0] a,    // Input bit a
    input logic [63:0] b,    // Input bit b
    input logic cin,         // Carry in
    input logic [1:0] op,    // Operation
    output logic [63:0] s,   // Output S
    output logic cout        // Carry out
);

// Put your code here
// ------------------
logic [61:0] cout_mid; // Output S

alu1bit alu0 ( .a(a[0]), .b(b[0]), .cin(cin), .s(s[0]), .cout(cout_mid[0]), .op(op));

genvar i;
generate
    for (i=1; i<63; i++) // 1 -> 62
    begin
        alu1bit alu_inst(.a(a[i]), .b(b[i]), .cin(cout_mid[i-1]), .s(s[i]), .cout(cout_mid[i]), .op(op));
    end
endgenerate

alu1bit alu63 (.a(a[63]), .b(b[63]), .cin(cout_mid[61]), .s(s[63]), .cout(cout), .op(op));

// End of your code

endmodule
