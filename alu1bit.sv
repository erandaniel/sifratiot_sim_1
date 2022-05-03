// 1-bit ALU template
module alu1bit (
    input logic a,           // Input bit a
    input logic b,           // Input bit b
    input logic cin,         // Carry in
    input logic [1:0] op,    // Operation
    output logic s,          // Output S
    output logic cout        // Carry out
);

// Put your code here
// ------------------

logic g1g2, g2g5, g3g4, g4g5, g6g5, g7g6;

OR2 g1 (.Z(g1g2), .A(a), .B(b));
NAND2 g2 (.Z(g2g5), .A(g1g2), .B(g1g2));
XNOR2 g3 (.Z(g3g4), .A(a), .B(b));
XNOR2 g4 (.Z(g4g5), .A(g3g4), .B(g3g4));
NAND2 g7 (.Z(g7g6), .A(op[0]), .B(op[0]));
fas g6 (.s(g6g5), .cout(cout), .a_ns(g7g6), .a(a), .b(b), .cin(cin));
mux4 g5 (.z(s), .sel(op), .d0(g2g5), .d1(g4g5), .d2(g6g5), .d3(g6g5));

// End of your code

endmodule
