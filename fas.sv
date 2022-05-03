// Full Adder/Subtractor template
module fas (
    input logic a,           // Input bit a
    input logic b,           // Input bit b
    input logic cin,         // Carry in
    input logic a_ns,        // A_nS (add/not subtract) control
    output logic s,          // Output S
    output logic cout        // Carry out
);

// Put your code here
// ------------------

logic g1g2, g3g4, g4g9, g5g7, g7g8, g8g9, g6g7;

XNOR2 g1 (.Z(g1g2), .A(a),    .B(b));
XNOR2 g2 (.Z(s),    .A(cin),  .B(g1g2));
NAND2 g3 (.Z(g3g4), .A(b),    .B(cin));
NAND2 g4 (.Z(g4g9), .A(g3g4), .B(g3g4));
OR2   g5 (.Z(g5g7), .A(cin),  .B(b));
XNOR2 g6 (.Z(g6g7), .A(a_ns), .B(a));
NAND2 g7 (.Z(g7g8), .A(g6g7), .B(g5g7));
NAND2 g8 (.Z(g8g9), .A(g7g8), .B(g7g8));
OR2   g9 (.Z(cout), .A(g8g9), .B(g4g9));


// End of your code

endmodule
