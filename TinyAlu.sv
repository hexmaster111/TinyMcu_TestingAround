module TinyAlu (
    input  wire       clock,
    input  wire [2:0] opp,
    input  wire [7:0] a, b,
    output var  [7:0] y
);
    
    always @(posedge clock) begin
        case (opp)
            0 : y = a + b; // add
            1 : y = a - b; // sub
            default: y = 'z; 
        endcase
    end

endmodule;
