module tb ();
    reg a,b,cin;
    wire dout,bout;
    full_sub DUT(a,b,cin,dout,bout);
    initial begin
        $monitor("a=%b b=%b cin=%b dout=%b bout=%b",a,b,cin,dout,bout);
        a=1'b0;b=1'b0;cin=1'b0;
        #5;a=1'b0;b=1'b0;cin=1'b1;
        #5;a=1'b0;b=1'b1;cin=1'b0;
        #5;a=1'b0;b=1'b1;cin=1'b1;
        #5;a=1'b1;b=1'b0;cin=1'b0;
        #5;a=1'b1;b=1'b0;cin=1'b1;
        #5;a=1'b1;b=1'b1;cin=1'b0;
        #5;a=1'b1;b=1'b1;cin=1'b1;
    end
endmodule