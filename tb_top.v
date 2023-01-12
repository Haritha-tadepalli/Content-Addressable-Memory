`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:17:24 07/03/2021
// Design Name:   cam_top
// Module Name:   C:/Xilinx92i/image_cam/tb_cam1.v
// Project Name:  image_cam
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cam_top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_top_v;

	// Inputs
	reg clk;
	reg [1:0] we;
	reg match_en;
	reg reset;
	reg [13:0] addr;
	reg [23:0] din;

	// Outputs
	wire [1:0] match;

	// Instantiate the Unit Under Test (UUT)
	cam_top uut (
		.clk(clk), 
		.we(we), 
		.match_en(match_en), 
		.reset(reset), 
		.addr(addr), 
		.din(din), 
		.match(match)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		we = 0;
		match_en = 0;
		reset = 0;
		addr = 0;
		din = 0;
#2 begin
addr = 14'd1;
din = 24'he7_c8_ff_;
end
#2 begin
addr = 14'd2;
din = 24'hc6_a6_df_;
end
#2 begin
addr = 14'd3;
din = 24'hc8_aa_e5_;
end
#2 begin
addr = 14'd4;
din = 24'hc9_ad_e9_;
end
#2 begin
addr = 14'd5;
din = 24'hc0_aa_e5_;
end
#2 begin
addr = 14'd6;
din = 24'hc5_ac_de_;
end
#2 begin
addr = 14'd7;
din = 24'hd2_b3_d0_;
end
#2 begin
addr = 14'd8;
din = 24'hd4_b0_bc_;
end
#2 begin
addr = 14'd9;
din = 24'hdc_b6_b6_;
end
#2 begin
addr = 14'd10;
din = 24'hda_b6_ae_;
end
#2 begin
addr = 14'd11;
din = 24'hc4_a7_de_;
end
#2 begin
addr = 14'd12;
din = 24'h3d_1f_5a_;
end
#2 begin
addr = 14'd13;
din = 24'h45_25_66_;
end
#2 begin
addr = 14'd14;
din = 24'h4b_2c_71_;
end
#2 begin
addr = 14'd15;
din = 24'h41_25_6a_;
end
#2 begin
addr = 14'd16;
din = 24'h47_2c_64_;
end
#2 begin
addr = 14'd17;
din = 24'h56_33_55_;
end
#2 begin
addr = 14'd18;
din = 24'h48_22_2e_;
end
#2 begin
addr = 14'd19;
din = 24'h4d_27_23_;
end
#2 begin
addr = 14'd20;
din = 24'h52_2b_22_;
end
#2 begin
addr = 14'd21;
din = 24'hc8_ad_e5_;
end
#2 begin
addr = 14'd22;
din = 24'h45_28_67_;
end
#2 begin
addr = 14'd23;
din = 24'h59_37_84_;
end
#2 begin
addr = 14'd24;
din = 24'h52_2d_83_;
end
#2 begin
addr = 14'd25;
din = 24'h50_2d_83_;
end
#2 begin
addr = 14'd26;
din = 24'h5a_36_7c_;
end
#2 begin
addr = 14'd27;
din = 24'h64_3b_61_;
end
#2 begin
addr = 14'd28;
din = 24'h58_2d_3a_;
end
#2 begin
addr = 14'd29;
din = 24'h64_38_31_;
end
#2 begin
addr = 14'd30;
din = 24'h6a_3d_2f_;
end
#2 begin
addr = 14'd31;
din = 24'hc0_a7_e1_;
end
#2 begin
addr = 14'd32;
din = 24'h45_28_6d_;
end
#2 begin
addr = 14'd33;
din = 24'h51_2e_85_;
end
#2 begin
addr = 14'd34;
din = 24'h54_2d_8f_;
end
#2 begin
addr = 14'd35;
din = 24'h54_2d_8f_;
end
#2 begin
addr = 14'd36;
din = 24'h5a_31_82_;
end
#2 begin
addr = 14'd37;
din = 24'h65_3a_67_;
end
#2 begin
addr = 14'd38;
din = 24'h59_2c_3c_;
end
#2 begin
addr = 14'd39;
din = 24'h69_38_30_;
end
#2 begin
addr = 14'd40;
din = 24'h6c_3a_28_;
end
#2 begin
addr = 14'd41;
din = 24'hc5_ab_eb_;
end
#2 begin
addr = 14'd42;
din = 24'h48_2b_74_;
end
#2 begin
addr = 14'd43;
din = 24'h4d_29_87_;
end
#2 begin
addr = 14'd44;
din = 24'h53_2a_93_;
end
#2 begin
addr = 14'd45;
din = 24'h54_2a_95_;
end
#2 begin
addr = 14'd46;
din = 24'h55_2a_81_;
end
#2 begin
addr = 14'd47;
din = 24'h66_38_6c_;
end
#2 begin
addr = 14'd48;
din = 24'h5f_2f_41_;
end
#2 begin
addr = 14'd49;
din = 24'h6a_36_30_;
end
#2 begin
addr = 14'd50;
din = 24'h6e_38_27_;
end
#2 begin
addr = 14'd51;
din = 24'hc0_ab_d8_;
end
#2 begin
addr = 14'd52;
din = 24'h48_2e_63_;
end
#2 begin
addr = 14'd53;
din = 24'h57_36_79_;
end
#2 begin
addr = 14'd54;
din = 24'h52_2e_7a_;
end
#2 begin
addr = 14'd55;
din = 24'h57_30_7e_;
end
#2 begin
addr = 14'd56;
din = 24'h5a_35_73_;
end
#2 begin
addr = 14'd57;
din = 24'h5e_3f_5a_;
end
#2 begin
addr = 14'd58;
din = 24'h4c_33_31_;
end
#2 begin
addr = 14'd59;
din = 24'h56_3d_23_;
end
#2 begin
addr = 14'd60;
din = 24'h57_3e_1c_;
end
#2 begin
addr = 14'd61;
din = 24'hd4_c3_c6_;
end
#2 begin
addr = 14'd62;
din = 24'h55_41_46_;
end
#2 begin
addr = 14'd63;
din = 24'h64_4b_55_;
end
#2 begin
addr = 14'd64;
din = 24'h68_4e_5b_;
end
#2 begin
addr = 14'd65;
din = 24'h65_4b_58_;
end
#2 begin
addr = 14'd66;
din = 24'h64_55_53_;
end
#2 begin
addr = 14'd67;
din = 24'h5a_5d_43_;
end
#2 begin
addr = 14'd68;
din = 24'h45_59_2a_;
end
#2 begin
addr = 14'd69;
din = 24'h40_62_21_;
end
#2 begin
addr = 14'd70;
din = 24'h3d_65_1e_;
end
#2 begin
addr = 14'd71;
din = 24'he4_d8_bc_;
end
#2 begin
addr = 14'd72;
din = 24'ha8_98_7b_;
end
#2 begin
addr = 14'd73;
din = 24'hb1_9e_7d_;
end
#2 begin
addr = 14'd74;
din = 24'hb4_a1_7c_;
end
#2 begin
addr = 14'd75;
din = 24'hb0_9e_79_;
end
#2 begin
addr = 14'd76;
din = 24'ha1_a1_73_;
end
#2 begin
addr = 14'd77;
din = 24'h90_ad_6e_;
end
#2 begin
addr = 14'd78;
din = 24'hab_e4_95_;
end
#2 begin
addr = 14'd79;
din = 24'h94_e4_89_;
end
#2 begin
addr = 14'd80;
din = 24'h88_e4_85_;
end
#2 begin
addr = 14'd81;
din = 24'hec_e0_b0_;
end
#2 begin
addr = 14'd82;
din = 24'ha2_96_60_;
end
#2 begin
addr = 14'd83;
din = 24'hb0_a0_5e_;
end
#2 begin
addr = 14'd84;
din = 24'hb2_a2_5d_;
end
#2 begin
addr = 14'd85;
din = 24'hb1_a5_5f_;
end
#2 begin
addr = 14'd86;
din = 24'h9e_a8_5c_;
end
#2 begin
addr = 14'd87;
din = 24'h7e_af_5b_;
end
#2 begin
addr = 14'd88;
din = 24'h8b_df_81_;
end
#2 begin
addr = 14'd89;
din = 24'h6f_e2_7a_;
end
#2 begin
addr = 14'd90;
din = 24'h5f_e1_76_;
end
#2 begin
addr = 14'd91;
din = 24'he5_dd_a2_;
end
#2 begin
addr = 14'd92;
din = 24'ha1_98_55_;
end
#2 begin
addr = 14'd93;
din = 24'hb7_ac_5c_;
end
#2 begin
addr = 14'd94;
din = 24'hb2_a8_50_;
end
#2 begin
addr = 14'd95;
din = 24'hb1_a7_4f_;
end
#2 begin
addr = 14'd96;
din = 24'ha2_b1_55_;
end
#2 begin
addr = 14'd97;
din = 24'h75_b2_52_;
end
#2 begin
addr = 14'd98;
din = 24'h7e_e1_79_;
end
#2 begin
addr = 14'd99;
din = 24'h5e_e1_72_;
end
#2 begin
addr = 14'd100;
din = 24'h53_e6_74_;
end
#2 begin 
 we = 2'b00; 
 din = 24'd0;
addr = 14'd0;
end
#2 we = 2'b10;
//image 2
#2 begin
addr = 14'd1;
din = 24'h5b_e4_78_;
end
#2 begin
addr = 14'd2;
din = 24'h75_db_83_;
end
#2 begin
addr = 14'd3;
din = 24'ha3_c7_93_;
end
#2 begin
addr = 14'd4;
din = 24'h9a_7e_77_;
end
#2 begin
addr = 14'd5;
din = 24'hc8_6d_9a_;
end
#2 begin
addr = 14'd6;
din = 24'he1_66_aa_;
end
#2 begin
addr = 14'd7;
din = 24'he0_65_a5_;
end
#2 begin
addr = 14'd8;
din = 24'hdd_62_a6_;
end
#2 begin
addr = 14'd9;
din = 24'hda_63_ae_;
end
#2 begin
addr = 14'd10;
din = 24'hce_5f_b3_;
end
#2 begin
addr = 14'd11;
din = 24'hbd_5d_bb_;
end
#2 begin
addr = 14'd12;
din = 24'h5a_e0_80_;
end
#2 begin
addr = 14'd13;
din = 24'h72_d9_88_;
end
#2 begin
addr = 14'd14;
din = 24'ha4_cd_9a_;
end
#2 begin
addr = 14'd15;
din = 24'h91_7e_6f_;
end
#2 begin
addr = 14'd16;
din = 24'hc0_73_8e_;
end
#2 begin
addr = 14'd17;
din = 24'hd1_68_95_;
end
#2 begin
addr = 14'd18;
din = 24'hd4_6a_93_;
end
#2 begin
addr = 14'd19;
din = 24'hd5_6d_9c_;
end
#2 begin
addr = 14'd20;
din = 24'hc8_64_a0_;
end
#2 begin
addr = 14'd21;
din = 24'hc1_64_af_;
end
#2 begin
addr = 14'd22;
din = 24'hb1_60_bd_;
end
#2 begin
addr = 14'd23;
din = 24'h4e_d8_90_;
end
#2 begin
addr = 14'd24;
din = 24'h61_d2_8f_;
end
#2 begin
addr = 14'd25;
din = 24'h8f_cb_95_;
end
#2 begin
addr = 14'd26;
din = 24'h86_8d_6c_;
end
#2 begin
addr = 14'd27;
din = 24'hb3_85_7d_;
end
#2 begin
addr = 14'd28;
din = 24'hc0_79_7c_;
end
#2 begin
addr = 14'd29;
din = 24'hbe_7b_7a_;
end
#2 begin
addr = 14'd30;
din = 24'hbc_79_82_;
end
#2 begin
addr = 14'd31;
din = 24'hb7_76_96_;
end
#2 begin
addr = 14'd32;
din = 24'ha4_68_a4_;
end
#2 begin
addr = 14'd33;
din = 24'h99_65_bf_;
end
#2 begin
addr = 14'd34;
din = 24'h4a_d1_9f_;
end
#2 begin
addr = 14'd35;
din = 24'h61_d2_a0_;
end
#2 begin
addr = 14'd36;
din = 24'h87_cf_9a_;
end
#2 begin
addr = 14'd37;
din = 24'h9d_ba_89_;
end
#2 begin
addr = 14'd38;
din = 24'hca_bb_94_;
end
#2 begin
addr = 14'd39;
din = 24'hd8_b7_90_;
end
#2 begin
addr = 14'd40;
din = 24'hda_ba_91_;
end
#2 begin
addr = 14'd41;
din = 24'hd6_b8_9d_;
end
#2 begin
addr = 14'd42;
din = 24'hd2_b0_b6_;
end
#2 begin
addr = 14'd43;
din = 24'h75_54_80_;
end
#2 begin
addr = 14'd44;
din = 24'h5d_43_97_;
end
#2 begin
addr = 14'd45;
din = 24'h4f_ca_b0_;
end
#2 begin
addr = 14'd46;
din = 24'h61_cf_ab_;
end
#2 begin
addr = 14'd47;
din = 24'h7d_cd_98_;
end
#2 begin
addr = 14'd48;
din = 24'h93_c5_85_;
end
#2 begin
addr = 14'd49;
din = 24'hb1_c4_7f_;
end
#2 begin
addr = 14'd50;
din = 24'hbe_c2_77_;
end
#2 begin
addr = 14'd51;
din = 24'hc0_c2_76_;
end
#2 begin
addr = 14'd52;
din = 24'hb6_b6_7a_;
end
#2 begin
addr = 14'd53;
din = 24'hc1_bb_a8_;
end
#2 begin
addr = 14'd54;
din = 24'h6a_61_7c_;
end
#2 begin
addr = 14'd55;
din = 24'h57_4e_9e_;
end
#2 begin
addr = 14'd56;
din = 24'h52_c6_b9_;
end
#2 begin
addr = 14'd57;
din = 24'h60_cb_b1_;
end
#2 begin
addr = 14'd58;
din = 24'h7a_ce_9e_;
end
#2 begin
addr = 14'd59;
din = 24'h89_c4_80_;
end
#2 begin
addr = 14'd60;
din = 24'ha5_c8_72_;
end
#2 begin
addr = 14'd61;
din = 24'hb6_cb_6e_;
end
#2 begin
addr = 14'd62;
din = 24'hb8_cb_6a_;
end
#2 begin
addr = 14'd63;
din = 24'hb8_c8_7b_;
end
#2 begin
addr = 14'd64;
din = 24'hb8_bf_9e_;
end
#2 begin
addr = 14'd65;
din = 24'h62_64_76_;
end
#2 begin
addr = 14'd66;
din = 24'h4c_49_98_;
end
#2 begin
addr = 14'd67;
din = 24'h54_c8_bb_;
end
#2 begin
addr = 14'd68;
din = 24'h61_cb_b4_;
end
#2 begin
addr = 14'd69;
din = 24'h76_ca_a0_;
end
#2 begin
addr = 14'd70;
din = 24'h86_c3_83_;
end
#2 begin
addr = 14'd71;
din = 24'ha8_cb_75_;
end
#2 begin
addr = 14'd72;
din = 24'hb4_cb_69_;
end
#2 begin
addr = 14'd73;
din = 24'hb7_ca_69_;
end
#2 begin
addr = 14'd74;
din = 24'hb6_c4_76_;
end
#2 begin
addr = 14'd75;
din = 24'hb9_c0_9b_;
end
#2 begin
addr = 14'd76;
din = 24'h64_64_74_;
end
#2 begin
addr = 14'd77;
din = 24'h54_4d_9e_;
end
#2 begin
addr = 14'd78;
din = 24'h60_c8_af_;
end
#2 begin
addr = 14'd79;
din = 24'h6d_ca_ab_;
end
#2 begin
addr = 14'd80;
din = 24'h84_cc_a1_;
end
#2 begin
addr = 14'd81;
din = 24'h91_c4_88_;
end
#2 begin
addr = 14'd82;
din = 24'hab_c4_74_;
end
#2 begin
addr = 14'd83;
din = 24'hbf_cb_73_;
end
#2 begin
addr = 14'd84;
din = 24'hc1_ca_73_;
end
#2 begin
addr = 14'd85;
din = 24'hbd_c2_7d_;
end
#2 begin
addr = 14'd86;
din = 24'hbb_bb_97_;
end
#2 begin
addr = 14'd87;
din = 24'h6e_66_70_;
end
#2 begin
addr = 14'd88;
din = 24'h5c_4a_8d_;
end
#2 begin
addr = 14'd89;
din = 24'h7f_d0_a1_;
end
#2 begin
addr = 14'd90;
din = 24'h86_cd_9b_;
end
#2 begin
addr = 14'd91;
din = 24'h9c_cd_99_;
end
#2 begin
addr = 14'd92;
din = 24'hac_c8_8d_;
end
#2 begin
addr = 14'd93;
din = 24'hc4_c8_86_;
end
#2 begin
addr = 14'd94;
din = 24'hd0_c7_83_;
end
#2 begin
addr = 14'd95;
din = 24'hd0_c5_87_;
end
#2 begin
addr = 14'd96;
din = 24'hcc_be_8d_;
end
#2 begin
addr = 14'd97;
din = 24'hda_cb_ab_;
end
#2 begin
addr = 14'd98;
din = 24'h81_6b_66_;
end
#2 begin
addr = 14'd99;
din = 24'h78_57_79_;
end
#2 begin
addr = 14'd100;
din = 24'h6f_a8_63_;
end
#2 begin
addr = 14'd101;
din = 24'h7a_a8_66_;
end
#2 begin
addr = 14'd102;
din = 24'h92_ac_70_;
end
#2 begin
addr = 14'd103;
din = 24'h3c_42_09_;
end
#2 begin
addr = 14'd104;
din = 24'h54_43_0b_;
end
#2 begin
addr = 14'd105;
din = 24'h5e_41_0e_;
end
#2 begin
addr = 14'd106;
din = 24'h5b_3e_11_;
end
#2 begin
addr = 14'd107;
din = 24'h5c_3d_16_;
end
#2 begin
addr = 14'd108;
din = 24'h53_31_13_;
end
#2 begin
addr = 14'd109;
din = 24'h8b_63_51_;
end
#2 begin
addr = 14'd110;
din = 24'h96_64_66_;
end
#2 begin
addr = 14'd111;
din = 24'h8d_ad_56_;
end
#2 begin
addr = 14'd112;
din = 24'h98_ab_5a_;
end
#2 begin
addr = 14'd113;
din = 24'haa_ab_69_;
end
#2 begin
addr = 14'd114;
din = 24'h52_3e_07_;
end
#2 begin
addr = 14'd115;
din = 24'h69_42_16_;
end
#2 begin
addr = 14'd116;
din = 24'h73_41_1d_;
end
#2 begin
addr = 14'd117;
din = 24'h6e_3e_1c_;
end
#2 begin
addr = 14'd118;
din = 24'h75_42_22_;
end
#2 begin
addr = 14'd119;
din = 24'h6f_3a_19_;
end
#2 begin
addr = 14'd120;
din = 24'ha1_66_46_;
end
#2 begin
addr = 14'd121;
din = 24'hae_67_4c_;
end
#2 begin
 we = 2'b00;
match_en = 1'b1;
end
//search the below image
#2 din = 24'he7_c8_ff_;
#2 din = 24'hc6_a6_df_;
#2 din = 24'hc8_aa_e5_;
#2 din = 24'hc9_ad_e9_;
#2 din = 24'hc0_aa_e5_;
#2 din = 24'hc5_ac_de_;
#2 din = 24'hd2_b3_d0_;
#2 din = 24'hd4_b0_bc_;
#2 din = 24'hdc_b6_b6_;
#2 din = 24'hda_b6_ae_;
#2 din = 24'hc4_a7_de_;
#2 din = 24'h3d_1f_5a_;
#2 din = 24'h45_25_66_;
#2 din = 24'h4b_2c_71_;
#2 din = 24'h41_25_6a_;
#2 din = 24'h47_2c_64_;
#2 din = 24'h56_33_55_;
#2 din = 24'h48_22_2e_;
#2 din = 24'h4d_27_23_;
#2 din = 24'h52_2b_22_;
#2 din = 24'hc8_ad_e5_;
#2 din = 24'h45_28_67_;
#2 din = 24'h59_37_84_;
#2 din = 24'h52_2d_83_;
#2 din = 24'h50_2d_83_;
#2 din = 24'h5a_36_7c_;
#2 din = 24'h64_3b_61_;
#2 din = 24'h58_2d_3a_;
#2 din = 24'h64_38_31_;
#2 din = 24'h6a_3d_2f_;
#2 din = 24'hc0_a7_e1_;
#2 din = 24'h45_28_6d_;
#2 din = 24'h51_2e_85_;
#2 din = 24'h54_2d_8f_;
#2 din = 24'h54_2d_8f_;
#2 din = 24'h5a_31_82_;
#2 din = 24'h65_3a_67_;
#2 din = 24'h59_2c_3c_;
#2 din = 24'h69_38_30_;
#2 din = 24'h6c_3a_28_;
#2 din = 24'hc5_ab_eb_;
#2 din = 24'h48_2b_74_;
#2 din = 24'h4d_29_87_;
#2 din = 24'h53_2a_93_;
#2 din = 24'h54_2a_95_;
#2 din = 24'h55_2a_81_;
#2 din = 24'h66_38_6c_;
#2 din = 24'h5f_2f_41_;
#2 din = 24'h6a_36_30_;
#2 din = 24'h6e_38_27_;
#2 din = 24'hc0_ab_d8_;
#2 din = 24'h48_2e_63_;
#2 din = 24'h57_36_79_;
#2 din = 24'h52_2e_7a_;
#2 din = 24'h57_30_7e_;
#2 din = 24'h5a_35_73_;
#2 din = 24'h5e_3f_5a_;
#2 din = 24'h4c_33_31_;
#2 din = 24'h56_3d_23_;
#2 din = 24'h57_3e_1c_;
#2 din = 24'hd4_c3_c6_;
#2 din = 24'h55_41_46_;
#2 din = 24'h64_4b_55_;
#2 din = 24'h68_4e_5b_;
#2 din = 24'h65_4b_58_;
#2 din = 24'h64_55_53_;
#2 din = 24'h5a_5d_43_;
#2 din = 24'h45_59_2a_;
#2 din = 24'h40_62_21_;
#2 din = 24'h3d_65_1e_;
#2 din = 24'he4_d8_bc_;
#2 din = 24'ha8_98_7b_;
#2 din = 24'hb1_9e_7d_;
#2 din = 24'hb4_a1_7c_;
#2 din = 24'hb0_9e_79_;
#2 din = 24'ha1_a1_73_;
#2 din = 24'h90_ad_6e_;
#2 din = 24'hab_e4_95_;
#2 din = 24'h94_e4_89_;
#2 din = 24'h88_e4_85_;
#2 din = 24'hec_e0_b0_;
#2 din = 24'ha2_96_60_;
#2 din = 24'hb0_a0_5e_;
#2 din = 24'hb2_a2_5d_;
#2 din = 24'hb1_a5_5f_;
#2 din = 24'h9e_a8_5c_;
#2 din = 24'h7e_af_5b_;
#2 din = 24'h8b_df_81_;
#2 din = 24'h6f_e2_7a_;
#2 din = 24'h5f_e1_76_;
#2 din = 24'he5_dd_a2_;
#2 din = 24'ha1_98_55_;
#2 din = 24'hb7_ac_5c_;
#2 din = 24'hb2_a8_50_;
#2 din = 24'hb1_a7_4f_;
#2 din = 24'ha2_b1_55_;
#2 din = 24'h75_b2_52_;
#2 din = 24'h7e_e1_79_;
#2 din = 24'h5e_e1_72_;
#2 din = 24'h53_e6_74_;

	
	end
      
		always #2 clk = ~clk;
		initial $monitor($time," %b",match);
		initial #660  $finish;
		
endmodule

