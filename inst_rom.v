`include "defines.v"
// rom module, storing inst
module inst_rom(
    input wire ce,
    input wire[`InstAddrBus] addr,
    output reg[`InstBus] inst
);
// def the size of the rom
reg[`InstBus] inst_mem[0:`InstMemNum-1];

// init rom using inst_rom.data
initial $readmemh ("inst_rom.data",inst_mem);

always @ (*) begin
    if(ce == `ChipDisable) begin
	//resetted, return zero
        inst <= `ZeroWord;
    end else begin
        inst <= inst_mem[addr[`InstMemNumLog2+1:2]];
    end
end

endmodule
