module NAND2 (
    input logic A,
    input logic B,
    output logic Z
);

parameter Tpdlh = 10;
parameter Tpdhl = 10;

nand #(Tpdlh, Tpdhl) nand1 (Z, A, B);

endmodule
