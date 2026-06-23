
module filter_tap_1( 
	input [11:0] ip_data, 
	input [11:0] ip_coeff,
	input ip_clock, 
	input ip_reset, 
	output [11:0] op_data
);  

	reg signed [11:0] reg_ip_data; 
	always@(posedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'b0) begin 
			reg_ip_data <= 12'd0; 
		end else begin 
			reg_ip_data <= ip_data;
		end 
	end 
	
	
	reg signed [11:0] reg_op_product_1; 
	wire signed [23:0] wire_op_product_1; 
	assign wire_op_product_1 = ip_coeff * reg_ip_data;
	
	always@(posedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'b0) begin 
			reg_op_product_1 <= 12'd0; 
		end else begin 
			reg_op_product_1 <= wire_op_product_1[23-:12];
		end 
	end  
	
	reg signed [11:0] reg_delay_1; 
	always@(posedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'b0) begin 
			reg_delay_1 <= 12'd0; 
		end else begin 
			reg_delay_1 <= reg_op_product_1;
		end 
	end  
	
	assign op_data = reg_delay_1; 
	
endmodule 
