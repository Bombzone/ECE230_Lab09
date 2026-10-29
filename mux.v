module mux(
    input  [1:0] Sel,
    input  [7:0] A, [7:0] B, [7:0] C, [7:0] D,
    output reg [7:0] out
    );
    
    always @(*) begin 
        out <= Sel == 'b00 ? A  :
              Sel == 'b01 ? B  :
              Sel == 'b10 ? C : D;
    end 
endmodule
