// 4->1 multiplexer template
module mux4 (
    input logic d0,          // Data input 0
    input logic d1,          // Data input 1
    input logic d2,          // Data input 2
    input logic d3,          // Data input 3
    input logic [1:0] sel,   // Select input
    output logic z           // Output
);

// Put your code here
// ------------------

logic m1m3, m2m3;

mux2 m1(m1m3, d0, d1, sel[0]);
mux2 m2(m2m3, d2, d3, sel[0]);
mux2 m3(z, m1m3, m2m3, sel[1]);

// End of your code

endmodule
