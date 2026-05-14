module tb();
    reg a,b,sel;
    wire out;

    mux_2_1 DUT(a,b,sel,out);
    initial begin
        $monitor("a=%b b=%b sel=%b out=%b",a,b,sel,out);
        a=1'b1;b=1'b0;
        sel=1'b1;
        #5 sel=1'b0;
        $finish;
    end

endmodule