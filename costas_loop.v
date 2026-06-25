module costas_loop( 
	input signed [11:0] ip_unsync, 
	input signed [11:0] ip_cosine, 
	input signed [11:0] ip_sine, 
	input ip_clock, 
	input ip_reset, 
	output [11:0] op_costas_err,
	output [11:0] op_data_i, 
	output [11:0] op_data_q
); 

	// ------------------------------------  
	// 			Product block i 				 	   
	// ------------------------------------ 
	wire signed [11:0] get_op_product_i; 
	product_block product_block_i_inst( 
		.ip_data(ip_cosine), 
		.ip_data_2(ip_unsync),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_product_i)
	);   
	
	// ------------------------------------  
	// 			Product block q 				 	   
	// ------------------------------------ 
	wire signed [11:0] get_op_product_q; 
	product_block product_block_q_inst( 
		.ip_data(ip_sine), 
		.ip_data_2(ip_unsync),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_product_q)
	);  
	
	// ------------------------------------  
	// 			lowpass filter i  				 	   
	// ------------------------------------  
	wire signed [11:0] get_op_lowpass_i;
	lowpass_filter lowpass_filter_i_inst (
		 .ip_data(get_op_product_i), 
		 .ip_clock(ip_clock), 
		 .ip_reset(ip_reset), 
		 .op_data(get_op_lowpass_i)
    );  
	 
	// ------------------------------------  
	// 			lowpass filter q  				 	   
	// ------------------------------------  
	wire signed [11:0] get_op_lowpass_q;
	lowpass_filter lowpass_filter_q_inst (
		 .ip_data(get_op_product_q), 
		 .ip_clock(ip_clock), 
		 .ip_reset(ip_reset), 
		 .op_data(get_op_lowpass_q)
    ); 
	 
	 
	// ------------------------------------  
	// 			Square block i 				 	   
	// ------------------------------------ 
	wire signed [11:0] get_op_square_i; 
	square_block square_block_i_inst( 
		.ip_data(get_op_lowpass_i), 
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_square_i)
	);  
	
	// ------------------------------------  
	// 			Square block q 				 	   
	// ------------------------------------ 
	wire signed [11:0] get_op_square_q; 
	square_block square_block_q_inst( 
		.ip_data(get_op_lowpass_q), 
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_square_q)
	);  
	
	// ------------------------------------  
	// 			Subtract block 				 	   
	// ------------------------------------  
	wire signed [11:0] get_op_subtract; 
	subtract_block subtract_block_inst( 
		.ip_data(get_op_square_i), 
		.ip_data_2(get_op_square_q),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_subtract)
	);   
	
	// ------------------------------------  
	// 			Product block 2				 	   
	// ------------------------------------  
	wire signed [11:0] get_op_product_2; 
	product_block product_block_2_inst( 
		.ip_data(get_op_lowpass_i), 
		.ip_data_2(get_op_lowpass_q),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_product_2)
	);   
	
	// ------------------------------------  
	// 			Product block 3				 	   
	// ------------------------------------  
	wire signed [11:0] get_op_product_3; 
	product_block product_block_3_inst( 
		.ip_data(get_op_product_2), 
		.ip_data_2(get_op_subtract),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_product_3)
	);  
	 
	
	// ------------------------------------  
	// 			Gain block loop				 	   
	// ------------------------------------  
	wire signed [11:0] get_op_gain_loop;
	gain_block_loop gain_block_loop_inst( 
		.ip_data(get_op_product_3), 
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_gain_loop)
	); 
	
	// ------------------------------------  
	// 			Switch block				 	   
	// ------------------------------------  
	wire signed [11:0] get_op_switch; 
	manual_switch manual_switch_inst( 
		.ip_data(get_op_gain_loop),
		.ip_data_2(get_op_product_3), 
		.ip_clock(ip_clock),
		.ip_reset(ip_reset), 
		.op_data(get_op_switch)
	);  
	
	// ------------------------------------  
	// 			lowpass filter lf  				 	   
	// ------------------------------------  
	wire signed [11:0] get_op_lowpass_lf; 
	lowpass_filter lowpass_filter_lf_inst (
		 .ip_data(get_op_switch), 
		 .ip_clock(ip_clock), 
		 .ip_reset(ip_reset), 
		 .op_data(get_op_lowpass_lf)
    ); 
	
	
	assign op_data_i = get_op_lowpass_i; 
	assign op_data_q = get_op_lowpass_q; 
	assign op_costas_err = get_op_lowpass_lf;
	
endmodule 