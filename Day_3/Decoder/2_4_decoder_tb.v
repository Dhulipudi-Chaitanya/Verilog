module tb ();
    reg [1:0]a;
    wire [3:0]b;
    decoder_2_4 DUT(a,b);

    initial begin
        $monitor("a=%b b=%b",a,b);
        a=2'b00;#5;a=2'b01;
        #5;a=2'b10;#5;a=2'b11;
    end 
endmodule