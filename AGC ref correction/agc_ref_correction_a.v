
module agc_ref_correction(
	input signed [11:0] ip_data, 
	input ip_clock,
	input ip_reset, 
	output [11:0] op_data
); 
	
	// ------------------------------------  
	// 			Gain block 				 	   
	// ------------------------------------  
	wire signed [11:0] get_op_gain; 
	gain_block gain_block_inst( 
		.ip_data(ip_data), 
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_gain)
	); 
	
	// ------------------------------------  
	// 			Abs block 				 	   
	// ------------------------------------  
	wire signed [11:0] get_op_abs; 
	abs_block abs_block_inst(
		.ip_data(get_op_gain), 
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_abs)
	); 
	
	// ------------------------------------  
	// 			Power estimation 				 	   
	// ------------------------------------  
	wire signed [11:0] get_op_power_est; 
	power_estimation power_estimation_inst( 
		.ip_data(get_op_abs), 
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_power_est)
	); 
	
	// ------------------------------------  
	// 			Gain calculate  				 	   
	// ------------------------------------  
	wire signed [11:0] get_op_gain_error; 
	gain_error gain_error_inst( 
		.ip_data(get_op_power_est), 
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_gain_error)
	);
	
	// ------------------------------------  
	// 			Accumulator 				 	   
	// ------------------------------------  
	wire signed [11:0] get_op_acc;  
	accumulator accumulator_inst(
		.ip_data(get_op_gain_error), 
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_acc)
	);
	
	// ------------------------------------  
	// 			Product block 				 	   
	// ------------------------------------  
	wire signed [11:0] get_op_product; 
	product_block product_block_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_acc),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_product)
	); 
	
	
	assign op_data = get_op_product;
	
endmodule 
