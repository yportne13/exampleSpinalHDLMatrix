// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : testMatrix
// Git hash  : 1abf64bd6741b04f633017672faf2263d4aeb9d4



module testMatrix (
  input               clk,
  input               reset
);
  wire       [8:0]    _zz_23;
  wire       [8:0]    _zz_24;
  wire       [8:0]    _zz_25;
  wire       [8:0]    _zz_26;
  wire       [8:0]    _zz_27;
  wire       [8:0]    _zz_28;
  wire       [8:0]    _zz_29;
  wire       [8:0]    _zz_30;
  wire       [8:0]    _zz_31;
  wire       [8:0]    _zz_32;
  wire       [8:0]    _zz_33;
  wire       [8:0]    _zz_34;
  reg        [7:0]    m1_mat_0_0;
  reg        [7:0]    m1_mat_0_1;
  reg        [7:0]    m1_mat_1_0;
  reg        [7:0]    m1_mat_1_1;
  reg        [7:0]    m2_mat_0_0;
  reg        [7:0]    m2_mat_0_1;
  reg        [7:0]    m2_mat_1_0;
  reg        [7:0]    m2_mat_1_1;
  reg        [7:0]    m3_mat_0_0;
  reg        [7:0]    m3_mat_0_1;
  reg        [7:0]    m3_mat_1_0;
  reg        [7:0]    m3_mat_1_1;
  reg        [8:0]    m4_mat_0_0;
  reg        [8:0]    m4_mat_0_1;
  reg        [8:0]    m4_mat_1_0;
  reg        [8:0]    m4_mat_1_1;
  reg        [8:0]    _zz_1;
  reg        [8:0]    _zz_2;
  reg        [8:0]    _zz_3;
  reg        [8:0]    _zz_4;
  reg        [15:0]   m1_mul_Matrix2D_0_0_0;
  wire       [7:0]    _zz_5;
  reg        [15:0]   m1_mul_Matrix2D_0_0_1;
  wire       [7:0]    _zz_6;
  reg        [8:0]    _zz_7;
  reg        [15:0]   m1_mul_Matrix2D_0_1_0;
  wire       [7:0]    _zz_8;
  reg        [15:0]   m1_mul_Matrix2D_0_1_1;
  wire       [7:0]    _zz_9;
  reg        [8:0]    _zz_10;
  reg        [8:0]    m5_mat_0_0;
  reg        [8:0]    m5_mat_0_1;
  reg        [8:0]    m5_mat_1_0;
  reg        [8:0]    m5_mat_1_1;
  reg        [15:0]   m1_mul_Matrix2D_0_0_0_1;
  wire       [7:0]    _zz_11;
  reg        [15:0]   m1_mul_Matrix2D_0_0_1_1;
  wire       [7:0]    _zz_12;
  reg        [8:0]    _zz_13;
  reg        [15:0]   m1_mul_Matrix2D_0_1_0_1;
  wire       [7:0]    _zz_14;
  reg        [15:0]   m1_mul_Matrix2D_0_1_1_1;
  wire       [7:0]    _zz_15;
  reg        [8:0]    _zz_16;
  reg        [15:0]   m1_mul_Matrix2D_1_0_0;
  wire       [7:0]    _zz_17;
  reg        [15:0]   m1_mul_Matrix2D_1_0_1;
  wire       [7:0]    _zz_18;
  reg        [8:0]    _zz_19;
  reg        [15:0]   m1_mul_Matrix2D_1_1_0;
  wire       [7:0]    _zz_20;
  reg        [15:0]   m1_mul_Matrix2D_1_1_1;
  wire       [7:0]    _zz_21;
  reg        [8:0]    _zz_22;

  assign _zz_23 = {_zz_5[7],_zz_5};
  assign _zz_24 = {_zz_6[7],_zz_6};
  assign _zz_25 = {_zz_8[7],_zz_8};
  assign _zz_26 = {_zz_9[7],_zz_9};
  assign _zz_27 = {_zz_11[7],_zz_11};
  assign _zz_28 = {_zz_12[7],_zz_12};
  assign _zz_29 = {_zz_14[7],_zz_14};
  assign _zz_30 = {_zz_15[7],_zz_15};
  assign _zz_31 = {_zz_17[7],_zz_17};
  assign _zz_32 = {_zz_18[7],_zz_18};
  assign _zz_33 = {_zz_20[7],_zz_20};
  assign _zz_34 = {_zz_21[7],_zz_21};
  assign _zz_5 = m1_mul_Matrix2D_0_0_0[15 : 8];
  assign _zz_6 = m1_mul_Matrix2D_0_0_1[15 : 8];
  assign _zz_8 = m1_mul_Matrix2D_0_1_0[15 : 8];
  assign _zz_9 = m1_mul_Matrix2D_0_1_1[15 : 8];
  assign _zz_11 = m1_mul_Matrix2D_0_0_0_1[15 : 8];
  assign _zz_12 = m1_mul_Matrix2D_0_0_1_1[15 : 8];
  assign _zz_14 = m1_mul_Matrix2D_0_1_0_1[15 : 8];
  assign _zz_15 = m1_mul_Matrix2D_0_1_1_1[15 : 8];
  assign _zz_17 = m1_mul_Matrix2D_1_0_0[15 : 8];
  assign _zz_18 = m1_mul_Matrix2D_1_0_1[15 : 8];
  assign _zz_20 = m1_mul_Matrix2D_1_1_0[15 : 8];
  assign _zz_21 = m1_mul_Matrix2D_1_1_1[15 : 8];
  always @ (posedge clk) begin
    m2_mat_0_0 <= m2_mat_0_1;
    m2_mat_1_0 <= m2_mat_1_1;
    m2_mat_0_1 <= m2_mat_0_0;
    m2_mat_1_1 <= m2_mat_1_0;
    m3_mat_0_0 <= m1_mat_0_0;
    m3_mat_0_1 <= m1_mat_0_1;
    m3_mat_1_0 <= m2_mat_1_0;
    m3_mat_1_1 <= m2_mat_1_1;
    m1_mat_0_0 <= m1_mat_1_0;
    m1_mat_0_1 <= m1_mat_1_1;
    m1_mat_1_0 <= m1_mat_0_0;
    m1_mat_1_1 <= m1_mat_0_1;
    m1_mul_Matrix2D_0_0_0 <= ($signed(m1_mat_0_0) * $signed(m2_mat_0_0));
    m1_mul_Matrix2D_0_0_1 <= ($signed(m1_mat_0_1) * $signed(m2_mat_1_0));
    _zz_7 <= ($signed(_zz_23) + $signed(_zz_24));
    _zz_1 <= _zz_7;
    m1_mul_Matrix2D_0_1_0 <= ($signed(m1_mat_0_0) * $signed(m2_mat_0_1));
    m1_mul_Matrix2D_0_1_1 <= ($signed(m1_mat_0_1) * $signed(m2_mat_1_1));
    _zz_10 <= ($signed(_zz_25) + $signed(_zz_26));
    _zz_2 <= _zz_10;
    _zz_3 <= _zz_1;
    _zz_4 <= _zz_2;
    m4_mat_0_0 <= _zz_1;
    m4_mat_0_1 <= _zz_2;
    m4_mat_1_0 <= _zz_3;
    m4_mat_1_1 <= _zz_4;
    m1_mul_Matrix2D_0_0_0_1 <= ($signed(m1_mat_0_0) * $signed(m2_mat_0_0));
    m1_mul_Matrix2D_0_0_1_1 <= ($signed(m1_mat_0_1) * $signed(m2_mat_1_0));
    _zz_13 <= ($signed(_zz_27) + $signed(_zz_28));
    m5_mat_0_0 <= _zz_13;
    m1_mul_Matrix2D_0_1_0_1 <= ($signed(m1_mat_0_0) * $signed(m2_mat_0_1));
    m1_mul_Matrix2D_0_1_1_1 <= ($signed(m1_mat_0_1) * $signed(m2_mat_1_1));
    _zz_16 <= ($signed(_zz_29) + $signed(_zz_30));
    m5_mat_0_1 <= _zz_16;
    m1_mul_Matrix2D_1_0_0 <= ($signed(m1_mat_1_0) * $signed(m2_mat_0_0));
    m1_mul_Matrix2D_1_0_1 <= ($signed(m1_mat_1_1) * $signed(m2_mat_1_0));
    _zz_19 <= ($signed(_zz_31) + $signed(_zz_32));
    m5_mat_1_0 <= _zz_19;
    m1_mul_Matrix2D_1_1_0 <= ($signed(m1_mat_1_0) * $signed(m2_mat_0_1));
    m1_mul_Matrix2D_1_1_1 <= ($signed(m1_mat_1_1) * $signed(m2_mat_1_1));
    _zz_22 <= ($signed(_zz_33) + $signed(_zz_34));
    m5_mat_1_1 <= _zz_22;
  end


endmodule
