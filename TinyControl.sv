module TinyControl (
    input   wire    clock,
    input   wire    reset,

    input   wire    en_pc /* enable program counter */
);

    reg [2:0] state;
    reg [2:0] next_state;

    initial begin
        state = 0;
        next_state = 0;
    end

    always @(negedge clock) begin
        state <= next_state;
    end

    always @(posedge clock) begin

        if(!reset) begin
            next_state <= 0;
        end
        else begin
            case (state)
                1: begin
                    //fetch instruction from progmem
                    next_state <= 2;
                end
                2: begin
                    //inc the instrcution ptr
                    next_state <= 3;
                end
                3:begin
                    //do the instruciton
                    next_state <= 1;
                end
                default:next_state <= 1; 
            endcase
        end
    end
endmodule
