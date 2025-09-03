// Tian Xie
// tixie@hmc.edu
// 9/3/2025
// This is the top module. It includes the 3 blinking LED control code, a HSOSC, and also calls the 7 segment module

module top(
    input logic [3:0] s,
    output logic [2:0] led,
    output logic [6:0] seg);

    assign led[0] = s[1] ^ s[0];
	assign led[1] = s[2] & s[3];

    logic int_osc;
	logic led_state = 0;
	logic [24:0] counter = 0;
	
	HSOSC hf_osc (.CLKHFPU(1'b1), .CLKHFEN(1'b1), .CLKHF(int_osc));

    always_ff @(posedge int_osc)
		begin
            if (counter == 25'd10000000) begin
                counter <= 0;
                led_state <= ~led_state;
            end else begin 
			    counter <= counter + 1;
		    end
        end
        
    assign led[2] = led_state;
	
	// calls 7 segments
    segment7 s7 (s, seg);

endmodule






