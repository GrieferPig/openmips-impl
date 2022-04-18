`define RstEnable 1'b1
`define RstDisable 1'b0
`define ZeroWord 32'h00000000
`define WriteEnable 1'b1
`define WriteDisable 1'b0
`define ReadEnable 1'b1
`define ReadDisable 1'b0
`define AluOpBus 7:0
`define AluSelBus 2:0
`define InstValid 1'b0
`define True_v 1'b1
`define False_v 1'b0
`define ChipEnable 1'b1
`define ChipDisable 1'b0

`define EXE_ORI 6'b001101 // inst code ORI
`define EXE_NOP 6'b000000 // inst code NOP

`define EXE_OR_OP 8'b00100101
`define EXE_NOP_OP 8'b00000000

`define EXE_RES_LOGIC 3'b001

`define EXE_RES_NOP 3'b000

// const for rom
`define InstAddrBus 31:0 // bus addr width
`define InstBus 31:0 // bus width
`define InstMemNum 131071 // size=128KiB
`define InstMemNumLog2 17 //actual addr width

//const for regfile
`define RegAddrBus 4:0 // addr width, 32 regs only
`define RegBus 31:0 // bus width
`define RegWidth 32 // data width 
`define DoubleRegWidth 64 // 2x data width
`define DoubleRegBus 63:0 //2x bus width
`define RegNum 32 // 32 regs
`define RegNumLog2 5 // 5 bits for addr
`define NOPRegAddr 5'b00000  // starting addr


