
module product_block(
	input signed [11:0] ip_data, 
	input signed [11:0] ip_data_2,
	input ip_clock, 
	input ip_reset,
	output [11:0] op_data
); 

	
	reg signed [11:0] reg_product; 
	wire signed [23:0] wire_product; 
	assign wire_product = ip_data * ip_data_2;
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_product <= 12'd0;
		end else begin 
			reg_product <= wire_product[23:12]; 
		end 
	end

	assign op_data = reg_product;
	
	always @(negedge ip_clock or negedge ip_reset) begin
		$display("PRODUCT: in1=%0d in2=%0d mult=%0d out=%0d",
				 ip_data,
				 ip_data_2,
				 wire_product,
				 op_data);
	end 
	
	
endmodule 
