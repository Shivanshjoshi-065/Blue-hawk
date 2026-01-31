
module gain_block( 
	input [11:0] ip_data, 
	input ip_clock, 
	input ip_reset, 
	output [11:0] op_data
); 

	parameter gain = 12'd1024;
	
	reg signed [11:0] reg_ip_data; 
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_ip_data <= 12'd0;
		end else begin 
			reg_ip_data <= ip_data; 
		end 
	end 
	
	reg signed [11:0] reg_gain;
	wire signed [23:0] wire_gain; 
	assign wire_gain = reg_ip_data * gain;
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_gain <= 12'd0;
		end else begin 
			reg_gain <= wire_gain[23-:12]; 
		end 
	end 
	
	assign op_data = reg_gain; 
	
endmodule 