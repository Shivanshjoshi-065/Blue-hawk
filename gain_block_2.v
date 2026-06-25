
module gain_block_2( 
	input signed [11:0] ip_data, 
	input ip_clock, 
	input ip_reset, 
	output [2:0] op_data
); 

	parameter gain = 12'd32;
	
	reg signed [2:0] reg_gain;
	wire signed [23:0] wire_gain; 
	assign wire_gain = ip_data * gain;
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_gain <= 3'd0;
		end else begin 
			reg_gain <= wire_gain[23:21]; 
		end 
	end 
	
	assign op_data = reg_gain; 
	/*
	always @(negedge ip_clock or negedge ip_reset) begin
		$display("GAIN_BLOCK: in=%0d mult=%0d out=%0d",
				 ip_data,
				 wire_gain,
				 op_data);
	end
	*/
endmodule 