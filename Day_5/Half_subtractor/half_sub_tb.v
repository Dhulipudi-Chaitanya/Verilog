module tb ();
    reg a,b;
    wire dout,bout;

    half_sub DUT(a,b,dout,bout);
    initial begin
        $monitor("a=%b b=%b dout=%b bout=%b",a,b,dout,bout);
        a=1'b0;b=1'b0;
        #5;a=1'b0;b=1'b1;
        #5;a=1'b1;b=1'b0;
        #5;a=1'b1;b=1'b1;
    end
endmodule