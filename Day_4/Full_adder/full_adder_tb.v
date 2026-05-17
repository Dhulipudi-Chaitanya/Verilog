module tb ();
    reg a,b,cin;
    wire sout,cout;

    full_adder DUT(a,b,cin,sout,cout);
    initial begin
        $monitor("a=%b b=%b cin=%b sout=%b cout=%b",a,b,cin,sout,cout);
        a=1'b0;b=1'b0;cin=1'b0;
        #5;a=1'b0;b=1'b0;cin=1'b1;
        #5;a=1'b0;b=1'b1;cin=1'b0;
        #5;a=1'b0;b=1'b1;cin=1'b1;
        #5;a=1'b1;b=1'b0;cin=1'b0;
        #5;a=1'b1;b=1'b0;cin=1'b1;
        #5;a=1'b0;b=1'b1;cin=1'b0;
        #5;a=1'b1;b=1'b1;cin=1'b1;
    end
endmodule