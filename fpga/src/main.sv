module main(
    input logic clk,
    input logic [3:0] s,
    output logic [2:0] led,
    output logic [6:0] seg);

    ledcontrol lc (s, led);
    segment7 s7 (clk, s, led, seg);

endmodule