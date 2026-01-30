
module power_estimation(
	input [11:0] ip_data,
	input ip_clock,
	input ip_reset,
	output [11:0] op_data
); 

	
	// ------------------------------------ // 
	// 			Delay block - 1 				 	   
	// ------------------------------------ // 
	reg signed [11:0] reg_delay; 
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_delay <= 12'd0;
		end else begin 
			reg_delay <= ip_data; 
		end 
	end 
	
	// ------------------------------------ // 
	// 			Delay block - 2 				 	   
	// ------------------------------------ // 
	reg signed [11:0] reg_delay_2; 
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_delay_2 <= 12'd0;
		end else begin 
			reg_delay_2 <= reg_delay; 
		end 
	end 
	
	// ------------------------------------ // 
	// 			Delay block - 3 				 	   
	// ------------------------------------ // 
	reg signed [11:0] reg_delay_3; 
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_delay_3 <= 12'd0;
		end else begin 
			reg_delay_3 <= reg_delay_2; 
		end 
	end

	// ------------------------------------ // 
	// 			Delay block - 4 				 	   
	// ------------------------------------ // 
	reg signed [11:0] reg_delay_4; 
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_delay_4 <= 12'd0;
		end else begin 
			reg_delay_4 <= reg_delay_3; 
		end 
	end
	
	// ------------------------------------ // 
	// 			Delay block - 5 				 	   
	// ------------------------------------ // 
	reg signed [11:0] reg_delay_5; 
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_delay_5 <= 12'd0;
		end else begin 
			reg_delay_5 <= reg_delay_4; 
		end 
	end
	
	// ------------------------------------ // 
	// 			Delay block - 6 				 	   
	// ------------------------------------ // 
	reg signed [11:0] reg_delay_6; 
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_delay_6 <= 12'd0;
		end else begin 
			reg_delay_6 <= reg_delay_5; 
		end 
	end
	
	// ------------------------------------ // 
	// 			Delay block - 7 				 	   
	// ------------------------------------ // 
	reg signed [11:0] reg_delay_7; 
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_delay_7 <= 12'd0;
		end else begin 
			reg_delay_7 <= reg_delay_6; 
		end 
	end
	
	// ------------------------------------ // 
	// 			Delay block - 8 				 	   
	// ------------------------------------ // 
	reg signed [11:0] reg_delay_8; 
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_delay_8 <= 12'd0;
		end else begin 
			reg_delay_8 <= reg_delay_7; 
		end 
	end
	
	// ------------------------------------ // 
	// 			Delay block - 9 				 	   
	// ------------------------------------ // 
	reg signed [11:0] reg_delay_9; 
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_delay_9 <= 12'd0;
		end else begin 
			reg_delay_9 <= reg_delay_8; 
		end 
	end 
	
	// ------------------------------------ // 
	// 			Delay block - 10 				 	   
	// ------------------------------------ // 
	reg signed [11:0] reg_delay_10; 
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_delay_10 <= 12'd0;
		end else begin 
			reg_delay_10 <= reg_delay_9; 
		end 
	end
	
	// ------------------------------------ // 
	// 			Delay block - 11 				 	   
	// ------------------------------------ // 
	reg signed [11:0] reg_delay_11; 
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_delay_11 <= 12'd0;
		end else begin 
			reg_delay_11 <= reg_delay_10; 
		end 
	end
	
	// ------------------------------------ // 
	// 			Delay block - 12 				 	   
	// ------------------------------------ // 
	reg signed [11:0] reg_delay_12; 
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_delay_12 <= 12'd0;
		end else begin 
			reg_delay_12 <= reg_delay_11; 
		end 
	end
	
	// ------------------------------------ // 
	// 			Delay block - 13 				 	   
	// ------------------------------------ // 
	reg signed [11:0] reg_delay_13; 
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_delay_13 <= 12'd0;
		end else begin 
			reg_delay_13 <= reg_delay_12; 
		end 
	end
	
	// ------------------------------------ // 
	// 			Delay block - 14 				 	   
	// ------------------------------------ // 
	reg signed [11:0] reg_delay_14; 
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_delay_14 <= 12'd0;
		end else begin 
			reg_delay_14 <= reg_delay_13; 
		end 
	end
	
	// ------------------------------------ // 
	// 			Delay block - 15 				 	   
	// ------------------------------------ // 
	reg signed [11:0] reg_delay_15; 
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_delay_15 <= 12'd0;
		end else begin 
			reg_delay_15 <= reg_delay_14; 
		end 
	end
	
	// ------------------------------------ // 
	// 			Delay block - 16 				 	   
	// ------------------------------------ // 
	reg signed [11:0] reg_delay_16; 
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_delay_16 <= 12'd0;
		end else begin 
			reg_delay_16 <= reg_delay_15; 
		end 
	end 
	
	// ------------------------------------ // 
	// 			Delay block - 17 				 	   
	// ------------------------------------ // 
	reg signed [11:0] reg_delay_17; 
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_delay_17 <= 12'd0;
		end else begin 
			reg_delay_17 <= reg_delay_16; 
		end 
	end 
	
	// ------------------------------------ // 
	// 			Delay block - 18 				 	   
	// ------------------------------------ // 
	reg signed [11:0] reg_delay_18; 
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_delay_18 <= 12'd0;
		end else begin 
			reg_delay_18 <= reg_delay_17; 
		end 
	end
	
	// ------------------------------------ // 
	// 			Delay block - 19 				 	   
	// ------------------------------------ // 
	reg signed [11:0] reg_delay_19; 
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_delay_19 <= 12'd0;
		end else begin 
			reg_delay_19 <= reg_delay_18; 
		end 
	end 
	
	// ------------------------------------ // 
	// 			Delay block - 20 				 	   
	// ------------------------------------ // 
	reg signed [11:0] reg_delay_20; 
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_delay_20 <= 12'd0;
		end else begin 
			reg_delay_20 <= reg_delay_19; 
		end 
	end 
	
	// ------------------------------------ // 
	// 			Delay block - 21 				 	   
	// ------------------------------------ // 
	reg signed [11:0] reg_delay_21; 
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_delay_21 <= 12'd0;
		end else begin 
			reg_delay_21 <= reg_delay_20; 
		end 
	end
	
	// ------------------------------------ // 
	// 			Delay block - 22 				 	   
	// ------------------------------------ // 
	reg signed [11:0] reg_delay_22; 
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_delay_22 <= 12'd0;
		end else begin 
			reg_delay_22 <= reg_delay_21; 
		end 
	end
	
	// ------------------------------------ // 
	// 			Delay block - 23 				 	   
	// ------------------------------------ // 
	reg signed [11:0] reg_delay_23; 
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_delay_23 <= 12'd0;
		end else begin 
			reg_delay_23 <= reg_delay_22; 
		end 
	end
	
	// ------------------------------------ // 
	// 			Delay block - 24 				 	   
	// ------------------------------------ // 
	reg signed [11:0] reg_delay_24; 
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_delay_24 <= 12'd0;
		end else begin 
			reg_delay_24 <= reg_delay_23; 
		end 
	end
	
	// ------------------------------------ // 
	// 			Delay block - 25 				 	   
	// ------------------------------------ // 
	reg signed [11:0] reg_delay_25; 
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_delay_25 <= 12'd0;
		end else begin 
			reg_delay_25 <= reg_delay_24; 
		end 
	end 
	
	// ------------------------------------ // 
	// 			Delay block - 26 				 	   
	// ------------------------------------ // 
	reg signed [11:0] reg_delay_26; 
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_delay_26 <= 12'd0;
		end else begin 
			reg_delay_26 <= reg_delay_25; 
		end 
	end 
	
	// ------------------------------------ // 
	// 			Delay block - 27 				 	   
	// ------------------------------------ // 
	reg signed [11:0] reg_delay_27; 
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_delay_27 <= 12'd0;
		end else begin 
			reg_delay_27 <= reg_delay_26; 
		end 
	end
	
	// ------------------------------------ // 
	// 			Delay block - 28 				 	   
	// ------------------------------------ // 
	reg signed [11:0] reg_delay_28; 
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_delay_28 <= 12'd0;
		end else begin 
			reg_delay_28 <= reg_delay_27; 
		end 
	end 
	
	// ------------------------------------ // 
	// 			Delay block - 29 				 	   
	// ------------------------------------ // 
	reg signed [11:0] reg_delay_29; 
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_delay_29 <= 12'd0;
		end else begin 
			reg_delay_29 <= reg_delay_28; 
		end 
	end 
	
	// ------------------------------------ // 
	// 			Delay block - 30 				 	   
	// ------------------------------------ // 
	reg signed [11:0] reg_delay_30; 
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_delay_30 <= 12'd0;
		end else begin 
			reg_delay_30 <= reg_delay_29; 
		end 
	end 
	
	// ------------------------------------ // 
	// 			Delay block - 31 				 	   
	// ------------------------------------ // 
	reg signed [11:0] reg_delay_31; 
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_delay_31 <= 12'd0;
		end else begin 
			reg_delay_31 <= reg_delay_30; 
		end 
	end 
	
	// ------------------------------------ // 
	// 			Sum of elements 				 	   
	// ------------------------------------ // 
	reg signed [11:0] reg_sum; 
	wire signed [15:0] wire_sum; 
	assign wire_sum = (ip_data + reg_delay + reg_delay_2 + reg_delay_3 + reg_delay_4 + reg_delay_5 + reg_delay_6 + reg_delay_7 + reg_delay_8 + reg_delay_9 + reg_delay_10
						 + reg_delay_11 + reg_delay_12 + reg_delay_13 + reg_delay_14 + reg_delay_15 + reg_delay_16 + reg_delay_17 + reg_delay_18 + reg_delay_19 + reg_delay_20 
						 + reg_delay_21 + reg_delay_22 + reg_delay_23 + reg_delay_24 + reg_delay_25 + reg_delay_26 + reg_delay_27 + reg_delay_28 + reg_delay_29 + reg_delay_30 + reg_delay_31);
	
	
	always@(negedge ip_clock or negedge ip_reset) begin 
		if(ip_reset == 1'd0) begin 
			reg_sum <= 12'd0;
		end else begin 
			reg_sum <= wire_sum[15-:12]; 
		end 
	end 
	
	assign op_data = reg_sum;
	
endmodule 