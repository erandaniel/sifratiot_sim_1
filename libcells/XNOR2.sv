module XNOR2 (
    input logic A,
    input logic B,
    output logic Z
);

parameter Tpdlh = 9;
parameter Tpdhl = 9;

xnor #(Tpdlh, Tpdhl) xnor1 (Z, A, B);

endmodule
