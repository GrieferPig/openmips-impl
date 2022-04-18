`include "defines.v"

// register between pc and id

module if_id(
input wire clk,
input wire rst,

input wire[`InstAddrBus] if_pc,
input wire[`InstBus] if_inst,

output reg[`InstAddrBus] id_pc,
output reg[`InstBus] id_inst);

always @ (posedge clk) begin
// parse data on clk up
if(rst == `RstEnable) begin 
// if reset enabled return ZeroWord
id_pc <= `ZeroWord; 
id_inst <= `ZeroWord;
end else begin
id_pc <= if_pc;
id_inst <= if_inst;
end
end
endmodule
