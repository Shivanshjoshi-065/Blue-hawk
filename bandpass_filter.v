module bandpass_filter( 
	input [11:0] ip_data, 
	input ip_clock, 
	input ip_reset, 
	output [11:0] op_data

); 

	parameter signed [11:0] coeffe_1 = -12'd12; 
	parameter signed [11:0] coeffe_2 = -12'd3; 
	parameter signed [11:0] coeffe_3 = 12'd10; 
	parameter signed [11:0] coeffe_4 = 12'd27; 
	parameter signed [11:0] coeffe_5 = 12'd28; 
	parameter signed [11:0] coeffe_6 = -12'd1; 
	parameter signed [11:0] coeffe_7 = -12'd40; 
	parameter signed [11:0] coeffe_8 = -12'd47; 
	parameter signed [11:0] coeffe_9 = -12'd19; 
	parameter signed [11:0] coeffe_10 = 12'd0; 
	parameter signed [11:0] coeffe_11 = -12'd30; 
	parameter signed [11:0] coeffe_12 = -12'd77; 
	parameter signed [11:0] coeffe_13 = -12'd72; 
	parameter signed [11:0] coeffe_14 = -12'd3; 
	parameter signed [11:0] coeffe_15 = 12'd50; 
	parameter signed [11:0] coeffe_16 = 12'd23; 
	parameter signed [11:0] coeffe_17 = -12'd31; 
	parameter signed [11:0] coeffe_18 = -12'd2; 
	
	parameter signed [11:0] coeffe_19 = 12'd119; 
	parameter signed [11:0] coeffe_20 = 12'd195; 
	parameter signed [11:0] coeffe_21 = 12'd125; 
	parameter signed [11:0] coeffe_22 = 12'd1; 
	parameter signed [11:0] coeffe_23 = 12'd7; 
	parameter signed [11:0] coeffe_24 = 12'd148; 
	parameter signed [11:0] coeffe_25 = 12'd202; 
	parameter signed [11:0] coeffe_26 = 12'd3; 
	parameter signed [11:0] coeffe_27 = -12'd281; 
	parameter signed [11:0] coeffe_28 = -12'd321; 
	parameter signed [11:0] coeffe_29 = -12'd91; 
	parameter signed [11:0] coeffe_30 = 12'd1; 
	parameter signed [11:0] coeffe_31 = -12'd392; 
	parameter signed [11:0] coeffe_32 = -12'd981; 
	parameter signed [11:0] coeffe_33 = -12'd987; 
	parameter signed [11:0] coeffe_34 = -12'd3; 
	parameter signed [11:0] coeffe_35 = 12'd1390; 
	parameter signed [11:0] coeffe_36 = 12'd2047; 
	
	parameter signed [11:0] coeffe_37 = 12'd1390; 
	parameter signed [11:0] coeffe_38 = -12'd3; 
	parameter signed [11:0] coeffe_39 = -12'd987; 
	parameter signed [11:0] coeffe_40 = -12'd981; 
	parameter signed [11:0] coeffe_41 = -12'd392; 
	parameter signed [11:0] coeffe_42 = 12'd1; 
	parameter signed [11:0] coeffe_43 = -12'd91; 
	parameter signed [11:0] coeffe_44 = -12'd321; 
	parameter signed [11:0] coeffe_45 = -12'd281; 
	parameter signed [11:0] coeffe_46 = 12'd3; 
	parameter signed [11:0] coeffe_47 = 12'd202; 
	parameter signed [11:0] coeffe_48 = 12'd148; 
	parameter signed [11:0] coeffe_49 = 12'd7; 
	parameter signed [11:0] coeffe_50 = 12'd1; 
	parameter signed [11:0] coeffe_51 = 12'd125; 
	parameter signed [11:0] coeffe_52 = 12'd195; 
	parameter signed [11:0] coeffe_53 = 12'd119; 
	parameter signed [11:0] coeffe_54 = -12'd2; 
	
	parameter signed [11:0] coeffe_55 = -12'd31; 
	parameter signed [11:0] coeffe_56 = 12'd23; 
	parameter signed [11:0] coeffe_57 = 12'd50; 
	parameter signed [11:0] coeffe_58 = -12'd3; 
	parameter signed [11:0] coeffe_59 = -12'd72; 
	parameter signed [11:0] coeffe_60 = -12'd77; 
	parameter signed [11:0] coeffe_61 = -12'd30; 
	parameter signed [11:0] coeffe_62 = 12'd0; 
	parameter signed [11:0] coeffe_63 = -12'd19; 
	parameter signed [11:0] coeffe_64 = -12'd47;  
	parameter signed [11:0] coeffe_65 = -12'd40; 
	parameter signed [11:0] coeffe_66 = -12'd1;  
	parameter signed [11:0] coeffe_67 = 12'd28;  
	parameter signed [11:0] coeffe_68 = 12'd27;  
	parameter signed [11:0] coeffe_69 = 12'd10;  
	parameter signed [11:0] coeffe_70 = -12'd3;  
	parameter signed [11:0] coeffe_71 = 12'd12; 
	
	
	
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
	
	// ------------------------------- // 
	// 		Filter tap - 37
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_37;
	filter_tap filter_tap_37_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_36),
		.ip_coeff(coeffe_37),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_37)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 38
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_38;
	filter_tap filter_tap_38_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_37),
		.ip_coeff(coeffe_38),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_38)
	);
	
	// ------------------------------- // 
	// 		Filter tap - 39
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_39;
	filter_tap filter_tap_39_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_38),
		.ip_coeff(coeffe_39),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_39)
	);
	
	// ------------------------------- // 
	// 		Filter tap - 40
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_40;
	filter_tap filter_tap_40_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_39),
		.ip_coeff(coeffe_40),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_40)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 41
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_41;
	filter_tap filter_tap_41_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_40),
		.ip_coeff(coeffe_41),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_41)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 42
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_42;
	filter_tap filter_tap_42_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_41),
		.ip_coeff(coeffe_42),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_42)
	);  
	
	// ------------------------------- // 
	// 		Filter tap - 43
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_43;
	filter_tap filter_tap_43_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_42),
		.ip_coeff(coeffe_43),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_43)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 44
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_44;
	filter_tap filter_tap_44_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_43),
		.ip_coeff(coeffe_44),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_44)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 45
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_45;
	filter_tap filter_tap_45_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_44),
		.ip_coeff(coeffe_45),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_45)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 46
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_46;
	filter_tap filter_tap_46_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_45),
		.ip_coeff(coeffe_46),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_46)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 47
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_47;
	filter_tap filter_tap_47_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_46),
		.ip_coeff(coeffe_47),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_47)
	);  
	
	// ------------------------------- // 
	// 		Filter tap - 48
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_48;
	filter_tap filter_tap_48_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_47),
		.ip_coeff(coeffe_48),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_48)
	);  
	
	// ------------------------------- // 
	// 		Filter tap - 49
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_49;
	filter_tap filter_tap_49_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_48),
		.ip_coeff(coeffe_49),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_49)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 50
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_50;
	filter_tap filter_tap_50_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_49),
		.ip_coeff(coeffe_50),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_50)
	);  
	
	// ------------------------------- // 
	// 		Filter tap - 51
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_51;
	filter_tap filter_tap_51_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_50),
		.ip_coeff(coeffe_51),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_51)
	);  
	
	// ------------------------------- // 
	// 		Filter tap - 52
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_52;
	filter_tap filter_tap_52_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_51),
		.ip_coeff(coeffe_52),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_52)
	);  
	
	// ------------------------------- // 
	// 		Filter tap - 53
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_53;
	filter_tap filter_tap_53_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_52),
		.ip_coeff(coeffe_53),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_53)
	);  
	
	// ------------------------------- // 
	// 		Filter tap - 54
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_54;
	filter_tap filter_tap_54_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_53),
		.ip_coeff(coeffe_54),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_54)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 55
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_55;
	filter_tap filter_tap_55_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_54),
		.ip_coeff(coeffe_55),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_55)
	);  
	
	// ------------------------------- // 
	// 		Filter tap - 56
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_56;
	filter_tap filter_tap_56_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_55),
		.ip_coeff(coeffe_56),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_56)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 57
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_57;
	filter_tap filter_tap_57_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_56),
		.ip_coeff(coeffe_57),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_57)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 58
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_58;
	filter_tap filter_tap_58_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_57),
		.ip_coeff(coeffe_58),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_58)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 59
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_59;
	filter_tap filter_tap_59_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_58),
		.ip_coeff(coeffe_59),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_59)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 60
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_60;
	filter_tap filter_tap_60_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_59),
		.ip_coeff(coeffe_60),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_60)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 61
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_61;
	filter_tap filter_tap_61_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_60),
		.ip_coeff(coeffe_61),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_61)
	);
	
	// ------------------------------- // 
	// 		Filter tap - 62
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_62;
	filter_tap filter_tap_62_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_61),
		.ip_coeff(coeffe_62),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_62)
	);
	
	// ------------------------------- // 
	// 		Filter tap - 63
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_63;
	filter_tap filter_tap_63_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_62),
		.ip_coeff(coeffe_63),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_63)
	);
	
	// ------------------------------- // 
	// 		Filter tap - 64
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_64;
	filter_tap filter_tap_64_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_63),
		.ip_coeff(coeffe_64),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_64)
	);
	
	// ------------------------------- // 
	// 		Filter tap - 65
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_65;
	filter_tap filter_tap_65_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_64),
		.ip_coeff(coeffe_65),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_65)
	);
	
	// ------------------------------- // 
	// 		Filter tap - 66
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_66;
	filter_tap filter_tap_66_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_65),
		.ip_coeff(coeffe_66),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_66)
	);
	
	// ------------------------------- // 
	// 		Filter tap - 67
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_67;
	filter_tap filter_tap_67_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_66),
		.ip_coeff(coeffe_67),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_67)
	);
	
	// ------------------------------- // 
	// 		Filter tap - 68
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_68;
	filter_tap filter_tap_68_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_67),
		.ip_coeff(coeffe_68),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_68)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 69
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_69;
	filter_tap filter_tap_69_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_68),
		.ip_coeff(coeffe_69),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_69)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 70
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_70;
	filter_tap filter_tap_70_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_69),
		.ip_coeff(coeffe_70),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_70)
	); 
	
	// ------------------------------- // 
	// 		Filter tap - 71
	// ------------------------------- // 
	wire signed [11:0] get_op_filter_tap_71; 
	reg signed [11:0] reg_op_filter_tap_71; 
	always@(posedge ip_clock or negedge ip_reset) begin  
		if(ip_reset == 1'd0) begin  
			reg_op_filter_tap_71 <= 12'b000000000000;
		end else begin 
			reg_op_filter_tap_71 <= get_op_filter_tap_71;
		end 
	end 
	
	filter_tap filter_tap_71_inst( 
		.ip_data(ip_data), 
		.ip_data_2(get_op_filter_tap_70), 
		.ip_coeff(coeffe_71),
		.ip_clock(ip_clock), 
		.ip_reset(ip_reset), 
		.op_data(get_op_filter_tap_71)
	);
	
	assign op_data = reg_op_filter_tap_71;
	
endmodule 