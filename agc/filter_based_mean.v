
module filter_based_mean(
	input [11:0] ip_data,
	input ip_clock,
	input reset,
	output [11:0] op_data
); 

	reg signed [11:0] reg_ip_data; 
	always@(negedge ip_clock or negedge reset) begin 
		if(reset == 1'd0) begin 
		reg_ip_data <= 12'd0;
		end else begin 
			reg_ip_data <= ip_data; 
		end 
	end 
	
	reg signed [11:0] reg_delay; 
	always@(negedge ip_clock or negedge reset) begin 
		if(reset == 1'd0) begin 
		reg_delay <= 12'd0;
		end else begin 
			reg_delay <= reg_ip_data; 
		end 
	end 
	
	reg signed [11:0] reg_delay_2; 
	always@(negedge ip_clock or negedge reset) begin 
		if(reset == 1'd0) begin 
		reg_delay_2 <= 12'd0;
		end else begin 
			reg_delay_2 <= reg_delay; 
		end 
	end 
	
	reg signed [11:0] reg_delay_3; 
	always@(negedge ip_clock or negedge reset) begin 
		if(reset == 1'd0) begin 
		reg_delay_3 <= 12'd0;
		end else begin 
			reg_delay_3 <= reg_delay_2; 
		end 
	end

	reg signed [11:0] reg_delay_4; 
	always@(negedge ip_clock or negedge reset) begin 
		if(reset == 1'd0) begin 
		reg_delay_4 <= 12'd0;
		end else begin 
			reg_delay_4 <= reg_delay_3; 
		end 
	end
	
	reg signed [11:0] reg_delay_5; 
	always@(negedge ip_clock or negedge reset) begin 
		if(reset == 1'd0) begin 
		reg_delay_5 <= 12'd0;
		end else begin 
			reg_delay_5 <= reg_delay_4; 
		end 
	end
	
	reg signed [11:0] reg_delay_6; 
	always@(negedge ip_clock or negedge reset) begin 
		if(reset == 1'd0) begin 
		reg_delay_6 <= 12'd0;
		end else begin 
			reg_delay_6 <= reg_delay_5; 
		end 
	end
	
	reg signed [11:0] reg_delay_7; 
	always@(negedge ip_clock or negedge reset) begin 
		if(reset == 1'd0) begin 
		reg_delay_7 <= 12'd0;
		end else begin 
			reg_delay_7 <= reg_delay_6; 
		end 
	end
	
	reg signed [11:0] reg_delay_8; 
	always@(negedge ip_clock or negedge reset) begin 
		if(reset == 1'd0) begin 
		reg_delay_8 <= 12'd0;
		end else begin 
			reg_delay_8 <= reg_delay_7; 
		end 
	end
	
	reg signed [11:0] reg_delay_9; 
	always@(negedge ip_clock or negedge reset) begin 
		if(reset == 1'd0) begin 
		reg_delay_9 <= 12'd0;
		end else begin 
			reg_delay_9 <= reg_delay_8; 
		end 
	end 
	
	reg signed [11:0] reg_delay_10; 
	always@(negedge ip_clock or negedge reset) begin 
		if(reset == 1'd0) begin 
		reg_delay_10 <= 12'd0;
		end else begin 
			reg_delay_10 <= reg_delay_9; 
		end 
	end
	
	reg signed [11:0] reg_delay_11; 
	always@(negedge ip_clock or negedge reset) begin 
		if(reset == 1'd0) begin 
		reg_delay_11 <= 12'd0;
		end else begin 
			reg_delay_11 <= reg_delay_10; 
		end 
	end
	
	reg signed [11:0] reg_delay_12; 
	always@(negedge ip_clock or negedge reset) begin 
		if(reset == 1'd0) begin 
		reg_delay_12 <= 12'd0;
		end else begin 
			reg_delay_12 <= reg_delay_11; 
		end 
	end
	
	reg signed [11:0] reg_delay_13; 
	always@(negedge ip_clock or negedge reset) begin 
		if(reset == 1'd0) begin 
		reg_delay_13 <= 12'd0;
		end else begin 
			reg_delay_13 <= reg_delay_12; 
		end 
	end
	
	reg signed [11:0] reg_delay_14; 
	always@(negedge ip_clock or negedge reset) begin 
		if(reset == 1'd0) begin 
		reg_delay_14 <= 12'd0;
		end else begin 
			reg_delay_14 <= reg_delay_13; 
		end 
	end
	
	reg signed [11:0] reg_delay_15; 
	always@(negedge ip_clock or negedge reset) begin 
		if(reset == 1'd0) begin 
		reg_delay_15 <= 12'd0;
		end else begin 
			reg_delay_15 <= reg_delay_14; 
		end 
	end
	
	reg signed [11:0] reg_delay_16; 
	always@(negedge ip_clock or negedge reset) begin 
		if(reset == 1'd0) begin 
		reg_delay_16 <= 12'd0;
		end else begin 
			reg_delay_16 <= reg_delay_15; 
		end 
	end 
	
	reg signed [11:0] reg_delay_17; 
	always@(negedge ip_clock or negedge reset) begin 
		if(reset == 1'd0) begin 
		reg_delay_17 <= 12'd0;
		end else begin 
			reg_delay_17 <= reg_delay_16; 
		end 
	end
endmodule 
