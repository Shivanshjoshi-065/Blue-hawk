
module accumulator( 
	input [11:0] ip_data, 
	input ip_clock, 
	input ip_reset, 
	output [11:0] op_data
);  
	
	reg signed [11:0] reg_sum; 
	reg signed [4:0] reg_counter;
	reg signed [11:0] reg_sum_delay; 
	
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_sum <= 12'd0; 
			reg_sum_delay <= 12'd0;
			reg_counter <= 5'd0;
		end else begin 
			if(reg_counter == 5'd31) begin 
				reg_sum <= reg_sum;
			end else begin 
				reg_sum <= reg_sum_delay + ip_data; 
				reg_sum_delay <= reg_sum; 
			end 
			reg_counter = reg_counter + 1;
		end 
	end 

	assign op_data = reg_sum;
	
endmodule 
