
module manual_switch(
	input signed [11:0] ip_data, 
	input signed [11:0] ip_data_2,
	input ip_clock, 
	input ip_reset,
	output [11:0] op_data
); 

	parameter switch = 1'd0;
	
	reg signed [11:0] reg_switch;  
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_switch <= 12'd0;
		end else begin 
			if(switch == 1'd0) begin 
				reg_switch <= ip_data;
			end else begin 
				reg_switch <= ip_data_2;
			end 
		end 
	end

	assign op_data = reg_switch;
	
endmodule 
