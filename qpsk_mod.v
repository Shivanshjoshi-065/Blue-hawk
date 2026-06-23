module qpsk_mod( 
	input ip_signal, 
	input ip_clock, 
	input ip_reset, 
	output [11:0] op_if 
); 

	// ---------------------------------  
	// 		Symbol mapper 				 	   
	// --------------------------------- 
	wire signed [1:0] get_op_i_stream; 
	wire signed [1:0] get_op_q_stream; 
	reg signed [1:0] reg_op_i_stream; 
	reg signed [1:0] reg_op_q_stream; 
	
	symbol_mapper symbol_mapper_inst( 
		.ip_serial(ip_signal), 
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_i_stream(get_op_i_stream), 
		.op_q_stream(get_op_q_stream)
	); 
	
	// ---------------------------------  
	// 			NCo block				 	   
	// ---------------------------------   
	reg [2:0] reg_counter; 
	always@(posedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'b0) begin 
			reg_counter <= 3'b000;
		end else begin 
			reg_counter <= reg_counter + 3'b001;
		end 
	end  
	
	wire signed [11:0] get_op_cosine_wave; 
	wire signed [11:0] get_op_sine_wave; 
	
	nco_block nco_block_inst(
		 .ip_phase(reg_counter), 
		 .ip_clock(ip_clock), 
		 .ip_reset(ip_reset), 
		 .op_cosine_wave(get_op_cosine_wave), 
		 .op_sine_wave(get_op_sine_wave)
    );
	
	
	// ----------------------------------  
	// 		Product block a				 	   
	// ----------------------------------  
	wire signed [11:0] get_op_product_a; 
	reg signed [11:0] reg_op_product_a; 	
	product_block_m product_block_a_inst( 
		.ip_data(get_op_i_stream), 
		.ip_data_2(get_op_cosine_wave),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_product_a)
	); 
	
	
	// ----------------------------------  
	// 		Product block b				 	   
	// ----------------------------------  
	wire signed [11:0] get_op_product_b; 
	reg signed [11:0] reg_op_product_b; 	
	product_block_m product_block_b_inst( 
		.ip_data(get_op_q_stream), 
		.ip_data_2(get_op_sine_wave),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_product_b)
	); 
	
	// ----------------------------------  
	// 			Add block				 	   
	// ----------------------------------  
	wire signed [11:0] get_op_add; 
	reg signed [11:0] reg_op_add; 
	always@(posedge ip_clock or negedge ip_reset) begin  
		if(ip_reset == 1'd0) begin  
			reg_op_add <= 12'b000000000000;
		end else begin 
			reg_op_add <= get_op_add;
		end 
	end 
	
	add_block add_block_inst(
		 .ip_data(get_op_product_a), 
		 .ip_data_2(get_op_product_b), 
		 .ip_clock(ip_clock), 
		 .ip_reset(ip_reset), 
		 .op_data(get_op_add)
    );
	
	assign op_if = reg_op_add;
	
endmodule 