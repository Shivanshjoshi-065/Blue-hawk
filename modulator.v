module modulator( 
	input ip_clock, 
	input ip_reset, 
	input ip_enable, 
	output [11:0] op_if
); 

	
	// --------------------------------- // 
	// 		Prbs generator 				 	   
	// --------------------------------- //  
	wire get_op_prbs;
	// reg reg_op_prbs;  
	
	prbs_generator prbs_generator_inst( 
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_prbs(get_op_prbs)
	);  
	
	// --------------------------------- // 
	// 		QPSK mod 				 	   
	// --------------------------------- //  
	wire signed [11:0] get_op_if;
	// reg signed [11:0] reg_op_if; 
	
	qpsk_mod qpsk_mod_inst( 
		.ip_signal(get_op_prbs), 
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_if(get_op_if)
	);
	
	// --------------------------------- // 
	// 		Bandpass filter  				 	   
	// --------------------------------- //  
	wire signed [12:0] get_op_bandpass;
	reg signed [11:0] reg_op_bandpass; 
	always@(posedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'b0) begin 
			reg_op_bandpass <= 12'd0;
		end else begin 
			reg_op_bandpass <= get_op_bandpass[12-:12];
		end 
	end 
	
	bandpass_filter bandpass_filter_inst( 
		.ip_data(get_op_if),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_bandpass)	
	);
		
	assign op_if = reg_op_bandpass;
	
endmodule 