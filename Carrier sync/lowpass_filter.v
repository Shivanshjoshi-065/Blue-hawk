module lowpass_filter( 
	input signed [11:0] ip_data, 
	input ip_clock, 
	input ip_reset, 
	output [11:0] op_data

); 

	parameter signed [11:0] coeffe_1 = -12'd15; 
	parameter signed [11:0] coeffe_2 = 12'd12; 
	parameter signed [11:0] coeffe_3 = 12'd42; 
	parameter signed [11:0] coeffe_4 = 12'd59; 
	parameter signed [11:0] coeffe_5 = 12'd30; 
	parameter signed [11:0] coeffe_6 = -12'd43; 
	parameter signed [11:0] coeffe_7 = -12'd103; 
	parameter signed [11:0] coeffe_8 = -12'd79; 
	parameter signed [11:0] coeffe_9 = 12'd43; 
	parameter signed [11:0] coeffe_10 = 12'd178; 
	parameter signed [11:0] coeffe_11 = 12'd185; 
	parameter signed [11:0] coeffe_12 = -12'd6; 
	parameter signed [11:0] coeffe_13 = -12'd293; 
	parameter signed [11:0] coeffe_14 = -12'd418; 
	parameter signed [11:0] coeffe_15 = -12'd137; 
	parameter signed [11:0] coeffe_16 = 12'd575; 
	parameter signed [11:0] coeffe_17 = 12'd1448; 
	parameter signed [11:0] coeffe_18 = 12'd2047; 
	
	parameter signed [11:0] coeffe_19 = 12'd2047; 
	parameter signed [11:0] coeffe_20 = 12'd1448; 
	parameter signed [11:0] coeffe_21 = 12'd575; 
	parameter signed [11:0] coeffe_22 = -12'd137; 
	parameter signed [11:0] coeffe_23 = -12'd418; 
	parameter signed [11:0] coeffe_24 = -12'd293; 
	parameter signed [11:0] coeffe_25 = -12'd6; 
	parameter signed [11:0] coeffe_26 = 12'd185; 
	parameter signed [11:0] coeffe_27 = 12'd178; 
	parameter signed [11:0] coeffe_28 = 12'd43; 
	parameter signed [11:0] coeffe_29 = -12'd79; 
	parameter signed [11:0] coeffe_30 = -12'd103; 
	parameter signed [11:0] coeffe_31 = -12'd43; 
	parameter signed [11:0] coeffe_32 = 12'd30; 
	parameter signed [11:0] coeffe_33 = 12'd59; 
	parameter signed [11:0] coeffe_34 = 12'd42; 
	parameter signed [11:0] coeffe_35 = 12'd12; 
	parameter signed [11:0] coeffe_36 = -12'd15; 
	
	
	// ------------------------------- // 
	// 		Filter tap - 1
	// ------------------------------- //  
	wire signed [11:0] get_op_filter_tap_1;
	filter_tap_1 filter_tap_1_inst( 
		.ip_data(ip_data), 
		.ip_coeff(coeffe_1),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_1)
	);  
	
	// ------------------------------- // 
	// 		Filter tap - 2
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_2;
	filter_tap filter_tap_2_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_1), 
		.ip_coeff(coeffe_2),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_2)
	);  
	
	
	// ------------------------------- // 
	// 		Filter tap - 3
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_3;
	filter_tap filter_tap_3_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_2),
		.ip_coeff(coeffe_3),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_3)
	);  
	
	
	// ------------------------------- // 
	// 		Filter tap - 4
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_4;
	filter_tap filter_tap_4_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_3),
		.ip_coeff(coeffe_4),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_4)
	);  
	
	// ------------------------------- // 
	// 		Filter tap - 5
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_5;
	filter_tap filter_tap_5_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_4),
		.ip_coeff(coeffe_5),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_5)
	);  
	
	// ------------------------------- // 
	// 		Filter tap - 6
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_6;
	filter_tap filter_tap_6_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_5),
		.ip_coeff(coeffe_6),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_6)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 7
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_7;
	filter_tap filter_tap_7_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_6),
		.ip_coeff(coeffe_7),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_7)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 8
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_8;
	filter_tap filter_tap_8_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_7), 
		.ip_coeff(coeffe_8),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_8)
	);
	
	// ------------------------------- // 
	// 		Filter tap - 9
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_9;
	filter_tap filter_tap_9_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_8),
		.ip_coeff(coeffe_9),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_9)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 10
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_10;
	filter_tap filter_tap_10_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_9),
		.ip_coeff(coeffe_10),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_10)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 11
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_11;
	filter_tap filter_tap_11_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_10),
		.ip_coeff(coeffe_11),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_11)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 12
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_12;
	filter_tap filter_tap_12_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_11),
		.ip_coeff(coeffe_12),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_12)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 13
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_13;
	filter_tap filter_tap_13_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_12),
		.ip_coeff(coeffe_13),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_13)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 14
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_14;
	filter_tap filter_tap_14_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_13),
		.ip_coeff(coeffe_14),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_14)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 15
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_15;
	filter_tap filter_tap_15_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_14),
		.ip_coeff(coeffe_15),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_15)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 16
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_16;
	filter_tap filter_tap_16_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_15),
		.ip_coeff(coeffe_16),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_16)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 17
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_17;
	filter_tap filter_tap_17_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_16),
		.ip_coeff(coeffe_17),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_17)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 18
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_18;
	filter_tap filter_tap_18_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_17),
		.ip_coeff(coeffe_18),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_18)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 19
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_19;
	filter_tap filter_tap_19_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_18),
		.ip_coeff(coeffe_19),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_19)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 20
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_20;
	filter_tap filter_tap_20_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_19),
		.ip_coeff(coeffe_20),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_20)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 21
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_21;
	filter_tap filter_tap_21_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_20),
		.ip_coeff(coeffe_21),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_21)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 22
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_22;
	filter_tap filter_tap_22_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_21),
		.ip_coeff(coeffe_22),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_22)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 23
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_23;
	filter_tap filter_tap_23_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_22),
		.ip_coeff(coeffe_23),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_23)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 24
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_24;
	filter_tap filter_tap_24_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_23),
		.ip_coeff(coeffe_24),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_24)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 25
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_25;
	filter_tap filter_tap_25_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_24),
		.ip_coeff(coeffe_25),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_25)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 26
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_26;
	filter_tap filter_tap_26_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_25),
		.ip_coeff(coeffe_26),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_26)
	);  
	
	// ------------------------------- // 
	// 		Filter tap - 27
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_27;
	filter_tap filter_tap_27_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_26),
		.ip_coeff(coeffe_27),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_27)
	);  
	
	// ------------------------------- // 
	// 		Filter tap - 28
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_28;
	filter_tap filter_tap_28_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_27),
		.ip_coeff(coeffe_28),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_28)
	);  
	
	// ------------------------------- // 
	// 		Filter tap - 29
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_29;
	filter_tap filter_tap_29_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_28),
		.ip_coeff(coeffe_29),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_29)
	);  
	
	// ------------------------------- // 
	// 		Filter tap - 30
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_30;
	filter_tap filter_tap_30_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_29),
		.ip_coeff(coeffe_30),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_30)
	);  
	
	// ------------------------------- // 
	// 		Filter tap - 31
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_31;
	filter_tap filter_tap_31_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_30),
		.ip_coeff(coeffe_31),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_31)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 32
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_32;
	filter_tap filter_tap_32_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_31),
		.ip_coeff(coeffe_32),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_32)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 33
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_33;
	filter_tap filter_tap_33_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_32),
		.ip_coeff(coeffe_33),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_33)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 34
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_34;
	filter_tap filter_tap_34_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_33),
		.ip_coeff(coeffe_34),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_34)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 35
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_35;
	filter_tap filter_tap_35_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_34),
		.ip_coeff(coeffe_35),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_35)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 36
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_36;
	filter_tap filter_tap_36_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_35),
		.ip_coeff(coeffe_36),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_36)
	); 
	
	assign op_data = get_op_filter_tap_36;
	
endmodule 
