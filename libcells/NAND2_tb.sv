module NAND2_tb;

logic a;
logic b;
logic z;

NAND2 #(
    .Tpdhl(1),
    .Tpdlh(2)
) nand_gate (
    .A(a),
    .B(b),
    .Z(z)
);
initial begin
    a = 0;
    b = 0;

    #10
    a = 1;
    b = 0;
    #20
    a = 1;
    b = 1;
    
end

endmodule