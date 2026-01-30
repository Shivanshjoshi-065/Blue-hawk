module prbs_generator( 
	input ip_clock, 
	input ip_reset, 
	output reg op_prbs
); 

	reg [2:0] reg_counter; 
	wire reg_enable; 
	assign reg_enable = (reg_counter == 3'b111);
	always@(posedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'b0) begin 
			reg_counter <= 3'b000; 
		end else begin 
			reg_counter <= reg_counter + 3'b001;
		end 
	end   
	
	reg signed [7:0] reg_lfsr; 
	always@(posedge ip_clock or negedge ip_reset) begin  
		if(ip_reset == 1'b0) begin   
			op_prbs <= 1'b0; 
			reg_lfsr <= 8'b11111111; 
		end else begin 
			if(reg_enable) begin 
				reg_lfsr <= {reg_lfsr[7] ^ reg_lfsr[3] ^ reg_lfsr[2] ^ reg_lfsr[1] , reg_lfsr[7:1]} ; 
				op_prbs <= reg_lfsr[0]; 
			end else begin 
				op_prbs <= op_prbs;
			end 
		end
	end 
	
endmodule 
