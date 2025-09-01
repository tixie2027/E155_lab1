module ledcontrol(input logic s[3:0], output logic [2:0] led);

    xor xor1(led[0], s[1], s[0]);
    and and1(led[1], s[2], s[3]);

    logic int_osc;
	logic led_state = 0;
	logic [24:0] counter = 0;
	
	// Internal high-speed oscillator
	HSOSC hf_osc (.CLKHFPU(1'b1), .CLKHFEN(1'b1), .CLKHF(int_osc));

    always_ff @(posedge int_osc)
		begin
            if (counter == 25'd20000000) begin
                counter <= 0;
                led_state <= ~led_state;
            end else begin 
			    counter <= counter + 1;
		    end
        end
        
    assign led[2] = led_state;
endmodule