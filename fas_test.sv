// Full Adder/Subtractor test bench template
module fas_test;


    logic fas_a;           // Input bit a
    logic fas_b;           // Input bit b
    logic fas_cin;         // Carry in
    logic fas_a_ns;        // A_nS (add/not subtract) control
    logic fas_s;          // Output S
    logic fas_cout;       // Carry out

    fas uut (
    .a(fas_a),
    .b(fas_b),
    .cin(fas_cin),
    .a_ns(fas_a_ns),
    .s(fas_s), 
    .cout(fas_cout)
    );


    initial begin
        fas_b = 1'b1;
        fas_cin = 1'b0;
        fas_a_ns = 1'b0;
        
        fas_a = 1'b0;

        #50

        fas_a = 1'b1;
        
        #50

        fas_a = 1'b0;

        #50;
    end

endmodule
