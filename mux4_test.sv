// 4->1 multiplexer test bench template
module mux4_test;

// Put your code here
// ------------------

    logic mux4_d0;
    logic mux4_d1;
    logic mux4_d2;
    logic mux4_d3;
    logic mux4_sel[1:0];

    mux4 uut (
        .d0(mux4_d0),
        .d1(mux4_d1),
        .d2(mux4_d2),
        .d3(mux4_d3),
        .sel(mux4_sel[1:0])
    );

    initial begin
        ha_a = 1'b0;
        ha_b = 1'b0;
        
        #20
        ha_a = 1'b1;
        ha_b = 1'b0;
        
        #20
        ha_a = 1'b0;
        ha_b = 1'b1;
        
        #20
        ha_a = 1'b1;
        ha_b = 1'b1; 

        #20;        
    end

// End of your code

endmodule
