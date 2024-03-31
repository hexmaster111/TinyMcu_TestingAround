module TinyPc (
    input   wire    clock,
    input   wire    reset,
    input   wire    en_pc,
    output reg[7:0] addrout
);
    always @(posedge clock or posedge reset) begin
        if(reset) addrout <= 0;
        else if (en_pc) addrout <= addrout + 1;
    end
endmodule
