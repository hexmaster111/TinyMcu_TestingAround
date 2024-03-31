module TinyMcu (
    input wire clock,
    input wire reset
);
  
    TinyControl Tc(.clock(clock), .reset(reset), .en_pc(en_pc));
    TinyPc Pc(.clock(clock), .reset(reset), .addrout(Pcaddrout), .en_pc(en_pc));
    
endmodule;
