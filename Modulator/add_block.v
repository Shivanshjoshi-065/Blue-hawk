
module add_block(
	input [11:0] ip_data, 
	input [11:0] ip_data_2,
	input ip_clock, 
	input ip_reset,
	output [11:0] op_data
); 
	
	reg signed [11:0] reg_add; 
	wire signed [12:0] wire_add; 
	assign wire_add = ip_data + ip_data_2;
	always@(posedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'b0) begin 
			reg_add <= 12'd0;
		end else begin 
			reg_add <= wire_add[12-:12]; 
		end 
	end

	assign op_data = reg_add;
	
endmodule 
