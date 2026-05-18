module half_sub (
    input a,b,
    output dout,bout
);
assign dout=a^b;
assign bout=~a&b;
    
endmodule