module tb ();
reg [3:0]a;
wire [1:0]b;
integer i;

priority_encoder DUT(a,b);

initial begin
    $monitor("a=%b b=%b",a,b);
    for(i=0;i<4;i=i+1)
    begin
        a=2**i;
        #5;
    end
end
    
endmodule