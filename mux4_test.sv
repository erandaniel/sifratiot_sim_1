// 4->1 multiplexer test bench template
module mux4_test;

// Put your code here
// ------------------

    logic mux4_d0;
    logic mux4_d1;
    logic mux4_d2;
    logic mux4_d3;
    logic [1:0] mux4_sel;
    logic z;

    mux4 uut (
        .d0(mux4_d0),
        .d1(mux4_d1),
        .d2(mux4_d2),
        .d3(mux4_d3),
        .sel(mux4_sel[1:0]),
        .z(z)
    );

    initial begin
        mux4_d0 = 1'b0;
        mux4_d1 = 1'b0;
        mux4_d2 = 1'b1;
        mux4_d3 = 1'b1;
        mux4_sel[0] = 1'b0;
        mux4_sel[1] = 1'b0; // will be changed to 1
        
        #75

        mux4_sel[1] = 1'b1; 

        #75
    
        mux4_sel[1] = 1'b0; // will be changed to 1

        #75;
    
    end

// End of your code

endmodule
