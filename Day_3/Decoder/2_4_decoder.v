module decoder_2_4(
    input [1:0]in,
    output reg [3:0]out
);

always @(*) begin
    // method-1

    // if(in==2'b00)
    //  begin
    //     out=4'b0001;   
    //  end
    // if(in==2'b01)
    //  begin
    //     out=4'b0010;   
    //  end
    // if(in==2'b10)
    //  begin
    //     out=4'b0100;   
    //  end
    // if(in==2'b11)
    //  begin
    //     out=4'b1000;   
    //  end    

    //case-2

    case(in)
        2'b00:out=4'b0001;
        2'b01:out=4'b0010;
        2'b10:out=4'b0100;
        3'b11:out=4'b1000;
    endcase
end
endmodule