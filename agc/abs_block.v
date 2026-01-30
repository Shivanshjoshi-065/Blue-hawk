
module abs_block( 
	input [11:0] ip_data,
	input ip_clock,
	input ip_reset,
	output [11:0] op_data
); 

	reg signed [11:0] reg_op_abs; 
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_op_abs <= 12'd0;
		end else begin 
			if(ip_data < 12'd0) begin 
				reg_op_abs <= -ip_data;
			end else begin 
				reg_op_abs <= ip_data; 
			end 
		end 
	end 
	
	assign op_data = reg_op_abs;
	
endmodule 
