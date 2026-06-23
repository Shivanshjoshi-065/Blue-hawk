
module filter_tap( 
	input [11:0] ip_data,  
	input [11:0] ip_data_2, 
	input [11:0] ip_coeff,
	input ip_clock, 
	input ip_reset, 
	output [11:0] op_data
);  
	
	
	reg signed [11:0] reg_op_product_2; 
	wire signed [23:0] wire_op_product_2; 
	assign wire_op_product_2 = ip_coeff * ip_data;
	
	always@(posedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'b0) begin 
			reg_op_product_2 <= 12'd0; 
		end else begin 
			reg_op_product_2 <= wire_op_product_2[23-:12];
		end 
	end  
	
	reg signed [11:0] reg_delay_2; 
	always@(posedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'b0) begin 
			reg_delay_2 <= 12'd0; 
		end else begin 
			reg_delay_2 <= reg_op_product_2;
		end 
	end  
	
	reg signed [11:0] reg_op_sum_2; 
	wire signed [12:0] wire_op_sum_2; 
	assign wire_op_sum_2 = reg_op_product_2 + ip_data_2;
	
	always@(posedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'b0) begin 
			reg_op_sum_2 <= 12'd0; 
		end else begin 
			reg_op_sum_2 <= wire_op_sum_2[12-:12];
		end 
	end  
	
	assign op_data = reg_op_sum_2; 
	
endmodule 
