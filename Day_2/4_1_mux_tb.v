module tb();
    reg [3:0]a;
    reg [1:0]sel;
    wire out;
    mux_4_1 DUT(a,sel,out);

    initial begin
        $monitor("a=%d sel=%b out=%b",a,sel,out);
        a=4'b1011;sel=00;#5;
        sel=01;#5;sel=10;#5;
        sel=11;
    end
endmodule