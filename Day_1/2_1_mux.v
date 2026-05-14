module mux_2_1(a,b,sel,out);
    input a,b;
    input sel;
    output reg out;

    always @(*) begin
        if(sel)
            out<=b;
        else
            out<=a;
    end

endmodule