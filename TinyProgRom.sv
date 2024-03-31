module TinyProgRom (
    input   wire        clock,
    input   wire [4:0]  readAddress,
    output  reg  [7:0]  dataout
);

reg [7:0] mem [16:0]; 

initial begin
        mem[0]  = 8'b00000000;
        mem[1]  = 8'b00000001;
        mem[2]  = 8'b00000010;
        mem[3]  = 8'b00000011;
        mem[4]  = 8'b00000100;
        mem[5]  = 8'b00000101;
        mem[6]  = 8'b00000110;
        mem[7]  = 8'b00000111;
        mem[8]  = 8'b00001000;
        mem[9]  = 8'b00001001;
        mem[10] = 8'b00001010;
        mem[11] = 8'b00001011;
        mem[12] = 8'b00001100;
        mem[13] = 8'b00001101;
        mem[14] = 8'b00001111;
        mem[15] = 8'b00010000;
end

always @(posedge clock) begin
    assign dataout = mem[readAddress];
end

endmodule;
