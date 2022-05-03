// 64-bit ALU test bench template
module alu64bit_test;

    logic [63:0] alu_a;
    logic [63:0] alu_b;
    logic [1:0]  alu_op;
    logic        alu_cin;
    logic [63:0] alu_s;   
    logic        alu_cout;    


    alu64bit uut (
            .a(alu_a),
            .b(alu_b),
            .op(alu_op),
            .cin(alu_cin),
            .s(alu_s),
            .cout(alu_cout)
    );



initial begin
        alu_a = 64'hFFFF_FFFF_FFFF_FFFF;
        alu_b = 64'hFFFF_FFFF_FFFF_FFFF;
        alu_op = 2'b10;
        alu_cin = 1'b1;

        #2000

        alu_op = 2'b11;

         #2000;
    
    end

endmodule
