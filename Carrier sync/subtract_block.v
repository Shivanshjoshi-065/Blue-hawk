
module subtract_block(
	input signed [11:0] ip_data, 
	input signed [11:0] ip_data_2,
	input ip_clock, 
	input ip_reset,
	output [11:0] op_data
); 

	
	reg signed [11:0] reg_subtract; 
	wire signed [12:0] wire_subtract; 
	assign wire_subtract = ip_data - ip_data_2;
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_subtract <= 12'd0;
		end else begin 
			reg_subtract <= wire_subtract[12-:12]; 
		end 
	end

	assign op_data = reg_subtract;
	
endmodule 
