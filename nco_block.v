module nco_block ( 
	input [2:0] ip_phase,
   input ip_clock,
   input ip_reset,
	output reg signed [11:0] op_cosine_wave,
   output reg signed [11:0] op_sine_wave
);

	always@(posedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'b0) begin 
			op_sine_wave <= 12'b000000000000; 
			op_cosine_wave <= 12'b000000000000;
		end else begin  
			case(ip_phase) 
				3'b000: begin 
					op_sine_wave <= 12'b000000000000; 
					op_cosine_wave <= 12'b011111111111;
					end  
				3'b001: begin 
					op_sine_wave <= 12'b010110100111; 
					op_cosine_wave <= 12'b010110100111;
					end 
				3'b010: begin 
					op_sine_wave <= 12'b011111111111; 
					op_cosine_wave <= 12'b000000000000;
					end 
				3'b011: begin 
					op_sine_wave <= 12'b010110100111; 
					op_cosine_wave <= 12'b010110100111;
					end 
				3'b100: begin 
					op_sine_wave <= 12'b011111111111; 
					op_cosine_wave <= 12'b000000000000;
					end
				3'b101: begin 
					op_sine_wave <= 12'b101001011001; 
					op_cosine_wave <= 12'b101001011001;
					end
				3'b110: begin 
					op_sine_wave <= 12'b100000000001; 
					op_cosine_wave <= 12'b000000000000;
					end
				3'b111: begin 
					op_sine_wave <= 12'b101001011001; 
					op_cosine_wave <= 12'b101001011001;
					end
			endcase 
		end 
	end 

endmodule
