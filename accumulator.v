
module accumulator( 
	input signed [11:0] ip_data, 
	input ip_clock, 
	input ip_reset, 
	output [11:0] op_data
);  
	
	reg signed [15:0] reg_sum; 
	reg [4:0] reg_counter;
	
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_sum <= 16'd0; 
			reg_counter <= 5'd0;
		end else begin 
			if(reg_counter == 5'd31) begin 
				reg_sum <= reg_sum;
			end else begin 
				reg_sum <= reg_sum + ip_data; 
			end 
			reg_counter <= reg_counter + 4'd1;
		end 
	end 

	assign op_data = reg_sum[15:4]; 
	/*
	always @(negedge ip_clock or negedge ip_reset) begin
		$display("ACC: in=%0d count=%0d sum=%0d",
				 ip_data,
				 reg_counter,
				 op_data);
	end 
	*/
	
	
endmodule 