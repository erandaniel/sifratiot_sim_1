// 2->1 multiplexer template
module mux2 (
    input logic d0,          // Data input 0
    input logic d1,          // Data input 1
    input logic sel,         // Select input
    output logic z           // Output
);

logic g1g1, g3g6, g2g4, g4g5, g5g6;



// Put your code here
// ------------------

NAND2 g1 (g1g3, sel, d1));
NAND2 g2 (g2g4, sel, sel);
NAND2 g3 (g3g6, g1g3, g1g3);
NAND2 g4 (g4g5, d0, g2g4);
NAND2 g5 (g5g6, g4g5, g4g5);
OR2 g6 (z, g3g6, g5g6);

// End of your code

endmodule
