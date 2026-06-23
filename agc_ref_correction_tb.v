module agc_ref_correction_tb();
	reg sys_clock;
	reg sys_reset; 
	reg sys_enable; 
	
	wire signed [11:0] wire_op_agc; 
	
	
	// ------------------------------------  
	// 			Reset signal 				 	   
	// ------------------------------------   
	initial begin
		sys_reset = 1'b0;
		# 100;
		sys_reset = 1'b1;
	end  
	
	// ------------------------------------  
	// 			Enable signal 				 	   
	// ------------------------------------ 
	initial begin 
		sys_enable = 1'b1;
	end 
	
	
	// ---------------------------------------  
	// 			Clock generation 				 	   
	// ---------------------------------------   
	parameter real clock_period = 15.625; // 64 MHz 
	
	always begin 
		sys_clock = 1'b0; 
		# (clock_period / 2);
		sys_clock = 1'b1; 
		# (clock_period / 2); 
	end 

	// -------------------------------------------------------  
	// 			Instantiate module : Modulator 				 	   
	// ------------------------------------------------------  
	wire signed [11:0] get_op_if; 
	modulator modulator_uut_a( 
		.ip_clock(sys_clock), 
		.ip_reset(sys_reset),
		.ip_enable(sys_enable),
		.op_if(get_op_if)
	);
	
	/*
	reg [2:0] reg_counter; 
	always@(negedge sys_clock or negedge sys_reset) begin 
		if(sys_reset == 1'b0) begin 
			reg_counter <= 3'b0;
		end else begin 
			reg_counter <= reg_counter + 3'b001;
		end 
	end 
	
	reg signed [11:0] reg_op_value; 
	always@(negedge sys_clock or negedge sys_reset) begin 
		if(sys_reset == 1'b0) begin 
			reg_op_value <= 12'd0;
		end else begin 
			case(reg_counter) begin 
			3'b000 : begin 
				reg_op_value <= 12'd50; 
			end 
			3'b011 : begin 
				reg_op_value <= 12'd100;
			end			
			3'b101 : begin 
				reg_op_value <= 12'd150; 
			end 
			3'b111 : begin 
				reg_op_value <= 12'd200;
			end 
		end 	
	end 
	*/
	
	// ---------------------------------------------------------  
	// 			Instantiate module : AGC ref correction				 	   
	// ---------------------------------------------------------  
	wire signed [11:0] get_op_agc;
	reg signed [11:0] reg_op_agc; 
	always@(negedge sys_clock or negedge sys_reset) begin 
		if(sys_reset == 1'b0) begin 
			reg_op_agc <= 12'd0;
		end else begin 
			reg_op_agc <= get_op_agc;
		end 
	end 

	agc_ref_correction agc_ref_correction_uut_b( 
		.ip_data(get_op_if),
		.ip_clock(sys_clock),
		.ip_reset(sys_reset),
		.op_data(get_op_agc)
	); 
	
	/*
	always @(posedge sys_clock or negedge sys_reset) begin 
		$display("t=%0t  in=%0d  out=%0d",
				 $time,
				 get_op_if,
				 get_op_agc);
	end 
	*/
	
	assign wire_op_agc = reg_op_agc;
	
endmodule
