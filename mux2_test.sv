// 4->1 multiplexer test bench template
module mux2_test;

// Put your code here
// ------------------

    logic mux2_d0;
    logic mux2_d1;
    logic mux2_sel;
    logic mux2_z;

    mux2 uut (
        .d0(mux2_d0),
        .d1(mux2_d1),
        .sel(mux2_sel),
        .z(mux2_z)
    );

    initial begin
        mux2_d0 = 1'b0;
        mux2_d1 = 1'b1;
        mux2_sel = 1'b0;
        #25
        
        mux2_sel = 1'b1;
        #25

        mux2_sel = 1'b0;

        #25;

    
    end

// End of your code

endmodule
