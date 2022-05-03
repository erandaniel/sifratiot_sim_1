// 2->1 multiplexer template
module mux2 (
    input logic d0,          // Data input 0
    input logic d1,          // Data input 1
    input logic sel,         // Select input
    output logic z           // Output
);

logic g1g3, g3g6, g2g4, g4g5, g5g6;

// Put your code here
// ------------------

NAND2 g1 (.Z(g1g3), .A(sel),  .B(d1));
NAND2 g2 (.Z(g2g4), .A(sel),  .B(sel));
NAND2 g3 (.Z(g3g6), .A(g1g3), .B(g1g3));
NAND2 g4 (.Z(g4g5), .A(d0),   .B(g2g4));
NAND2 g5 (.Z(g5g6), .A(g4g5), .B(g4g5));
OR2 g6   (.Z(z),    .A(g3g6), .B(g5g6));

// End of your code

endmodule
