// Tian Xie
// tixie@hmc.edu
// 9/3/2025
// This is the test bench to test the 7segment module

`timescale 1ns/1ps

module testbench_7segment();
  logic [3:0] s;
  logic [6:0] seg;

  segment7 dut(s, seg);

  initial begin
    s = 4'h0; #10;
		if (seg !== 7'b1000000) $display("Fail at s=0");
		else $display("Success at s=0");

    s = 4'h1; #10;
		if (seg !== 7'b1111001) $display("Fail at s=1");
		else $display("Success at s=1");

    s = 4'h2; #10;
		if (seg !== 7'b0100100) $display("Fail at s=2");
		else $display("Success at s=2");

    s = 4'h3; #10;
		if (seg !== 7'b0110000) $display("Fail at s=3");
		else $display("Success at s=3");

    s = 4'h4; #10;
		if (seg !== 7'b0011001) $display("Fail at s=4");
		else $display("Success at s=4");

    s = 4'h5; #10;
		if (seg !== 7'b0010010) $display("Fail at s=5");
		else $display("Success at s=5");

    s = 4'h6; #10;
		if (seg !== 7'b0000010) $display("Fail at s=6");
		else $display("Success at s=6");

    s = 4'h7; #10;
		if (seg !== 7'b1111000) $display("Fail at s=7");
		else $display("Success at s=7");

    s = 4'h8; #10;
		if (seg !== 7'b0000000) $display("Fail at s=8");
		else $display("Success at s=8");

    s = 4'h9; #10;
		if (seg !== 7'b0010000) $display("Fail at s=9");
		else $display("Success at s=9");

    s = 4'hA; #10;
		if (seg !== 7'b0100000) $display("Fail at s=A");
		else $display("Success at s=A");

    s = 4'hB; #10;
		if (seg !== 7'b0000011) $display("Fail at s=B");
		else $display("Success at s=B");

    s = 4'hC; #10;
		if (seg !== 7'b1000110) $display("Fail at s=C");
		else $display("Success at s=C");

    s = 4'hD; #10;
		if (seg !== 7'b0100001) $display("Fail at s=D");
		else $display("Success at s=D");

    s = 4'hE; #10;
		if (seg !== 7'b0000100) $display("Fail at s=E");
		else $display("Success at s=E");

    s = 4'hF; #10;
		if (seg !== 7'b0001110) $display("Fail at s=F");
		else $display("Success at s=F");

    $finish;
  end
endmodule
