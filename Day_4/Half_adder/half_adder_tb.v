module tb ();
    reg a,b;
    wire sout,cout;

    half_adder DUT(a,b,sout,cout);

    initial begin
        $monitor("a=%b b=%b sout=%b cout=%b",a,b,sout,cout);
        a=1'b0;b=1'b0;
        #5;a=1'b0;b=1'b1;
        #5;a=1'b1;b=1'b0;
        #5;a=1'b1;b=1'b1;
    end
endmodule