module symbol_mapper( 
	input ip_serial, 
	input ip_clock, 
	input ip_reset, 
	output reg signed [1:0] op_i_stream, 
	output reg signed [1:0] op_q_stream
); 

	reg [1:0] shift_reg; 
	reg reg_counter;
	always@(posedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'b0) begin 
			shift_reg <= 2'b00; 
			reg_counter <= 1'b0; 
			op_i_stream <= 2'b00; 
			op_q_stream <= 2'b00;
		end else begin 
			shift_reg <= {shift_reg[0], ip_serial}; 
				if(reg_counter == 1'b1) begin 
					op_i_stream <= (shift_reg[1]) ? 2'sd1 : -2'sd1; 
					op_q_stream <= (shift_reg[0]) ? 2'sd1 : -2'sd1;
				end else begin 
					op_i_stream <= op_i_stream; 
					op_q_stream <= op_q_stream;
				end 
				reg_counter <= reg_counter + 1'b1; 
			end 
		end   
	
endmodule 
