module tb ();
reg [2:0]a;
wire [7:0]b;
integer i;
decoder_3_8 DUT(a,b);
initial begin
    $monitor("a=%b b=%b",a,b);
    for(i=0;i<8;i=i+1)
    begin
        a=i;
        #5;
    end
end
endmodule