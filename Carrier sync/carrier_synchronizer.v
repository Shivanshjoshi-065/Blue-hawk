module carrier_synchronizer( 
	input signed [11:0] ip_data, 
	input ip_clock, 
	input ip_reset, 
	output [11:0] op_real, 
	output [11:0] op_imag
); 

	// ------------------------------------  
	// 			Feedback register 			 	   
	// ------------------------------------   
	
	wire signed [11:0] get_op_cosine_wave; 
	wire signed [11:0] get_op_sine_wave; 
	
	// ------------------------------------  
	// 			Costas loop				 	   
	// ------------------------------------  
	wire signed [11:0] get_op_costas_err; 
	wire signed [11:0] get_op_data_i; 
	wire signed [11:0] get_op_data_q; 
	
	costas_loop costas_loop_inst( 
		.ip_unsync(ip_data), 
		.ip_cosine(get_op_cosine_wave), 
		.ip_sine(get_op_sine_wave), 
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_costas_err(get_op_costas_err), 
		.op_data_i(get_op_data_i), 
		.op_data_q(get_op_data_q)
	); 
	
	
	// ------------------------------------  
	// 			Nco block				 	   
	// ------------------------------------  
	reg [2:0] reg_counter; 
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'b0) begin 
			reg_counter <= 3'b000;
		end else begin 
			reg_counter <= reg_counter + 3'b001;
		end 
	end  
	nco_block nco_block_inst( 
		.ip_phase(reg_counter), 
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_cosine_wave(get_op_cosine_wave), 
		.op_sine_wave(get_op_sine_wave)
	);
	
	
	assign op_real = get_op_data_i; 
	assign op_imag = get_op_data_q; 
	
	
	always @(negedge ip_clock or negedge ip_reset) begin
		$display("Carrier: in=%0d op_data_i=%0d op_data_q = %d",
				 ip_data,
				 get_op_data_i, 
				 get_op_data_q);
	end 
	

endmodule 
