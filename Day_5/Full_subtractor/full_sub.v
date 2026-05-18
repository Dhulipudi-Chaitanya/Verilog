module full_sub (
    input a,b,cin,
    output dout,bout
);

assign dout=a^b^cin;
assign bout=(~a&b)|(b&cin)|(cin&~a);
    
endmodule