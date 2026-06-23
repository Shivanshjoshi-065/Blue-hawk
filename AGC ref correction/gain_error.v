module gain_error( 
	input signed [11:0] ip_data, 
	input ip_clock, 
	input ip_reset, 
	output [11:0] op_data
); 

	parameter signed [11:0] reference = 12'd2048; 
	
	wire signed [11:0] wire_error;  
	reg signed [11:0] reg_error;
	assign wire_error = reference - ip_data;
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_error <= 12'd0;
		end else begin 
			reg_error <= wire_error;
		end 
	end 
	
	assign op_data = reg_error; 
	
	/*
	always @(negedge ip_clock or negedge ip_reset) begin
		$display("GAIN_CALC: power=%0d out=%0d",
				 ip_data,
				 op_data);
	end 
	*/
	
endmodule 
