`timescale 1ns/100ps
`include "openmips_min_sopc.v"
module tb();

reg CLOCK_50;
reg rst;

initial begin
    CLOCK_50 = 1'b0;
    rst = `RstEnable;
    #195 rst= `RstDisable;
    #1000 $stop;
end

always #10 CLOCK_50=~CLOCK_50;

openmips_min_sopc openmips_min_sopc0(
    .clk(CLOCK_50),
    .rst(rst)
);
endmodule
