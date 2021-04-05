// Generator : SpinalHDL v1.3.8    git head : 57d97088b91271a094cebad32ed86479199955df
// Date      : 06/04/2021, 00:42:19
// Component : testMatrix


module testMatrix (
      input   clk,
      input   reset);
  wire [8:0] _zz_13_;
  wire [8:0] _zz_14_;
  wire [8:0] _zz_15_;
  wire [8:0] _zz_16_;
  wire [8:0] _zz_17_;
  wire [8:0] _zz_18_;
  wire [8:0] _zz_19_;
  wire [8:0] _zz_20_;
  wire [7:0] m1_mat_0_0;
  wire [7:0] m1_mat_0_1;
  wire [7:0] m1_mat_1_0;
  wire [7:0] m1_mat_1_1;
  wire [7:0] m2_mat_0_0;
  wire [7:0] m2_mat_0_1;
  wire [7:0] m2_mat_1_0;
  wire [7:0] m2_mat_1_1;
  reg [15:0] m1_mul_Matrix2D_0_0_0;
  wire [7:0] _zz_1_;
  reg [15:0] m1_mul_Matrix2D_0_0_1;
  wire [7:0] _zz_2_;
  reg [8:0] _zz_3_;
  reg [15:0] m1_mul_Matrix2D_0_1_0;
  wire [7:0] _zz_4_;
  reg [15:0] m1_mul_Matrix2D_0_1_1;
  wire [7:0] _zz_5_;
  reg [8:0] _zz_6_;
  reg [15:0] m1_mul_Matrix2D_1_0_0;
  wire [7:0] _zz_7_;
  reg [15:0] m1_mul_Matrix2D_1_0_1;
  wire [7:0] _zz_8_;
  reg [8:0] _zz_9_;
  reg [15:0] m1_mul_Matrix2D_1_1_0;
  wire [7:0] _zz_10_;
  reg [15:0] m1_mul_Matrix2D_1_1_1;
  wire [7:0] _zz_11_;
  reg [8:0] _zz_12_;
  wire [7:0] m3_mat_0_0;
  wire [7:0] m3_mat_0_1;
  wire [7:0] m3_mat_1_0;
  wire [7:0] m3_mat_1_1;
  assign _zz_13_ = {_zz_1_[7],_zz_1_};
  assign _zz_14_ = {_zz_2_[7],_zz_2_};
  assign _zz_15_ = {_zz_4_[7],_zz_4_};
  assign _zz_16_ = {_zz_5_[7],_zz_5_};
  assign _zz_17_ = {_zz_7_[7],_zz_7_};
  assign _zz_18_ = {_zz_8_[7],_zz_8_};
  assign _zz_19_ = {_zz_10_[7],_zz_10_};
  assign _zz_20_ = {_zz_11_[7],_zz_11_};
  assign _zz_1_ = m1_mul_Matrix2D_0_0_0[15 : 8];
  assign _zz_2_ = m1_mul_Matrix2D_0_0_1[15 : 8];
  assign _zz_4_ = m1_mul_Matrix2D_0_1_0[15 : 8];
  assign _zz_5_ = m1_mul_Matrix2D_0_1_1[15 : 8];
  assign _zz_7_ = m1_mul_Matrix2D_1_0_0[15 : 8];
  assign _zz_8_ = m1_mul_Matrix2D_1_0_1[15 : 8];
  assign _zz_10_ = m1_mul_Matrix2D_1_1_0[15 : 8];
  assign _zz_11_ = m1_mul_Matrix2D_1_1_1[15 : 8];
  assign m1_mat_0_0 = _zz_3_[8 : 1];
  assign m1_mat_0_1 = _zz_6_[8 : 1];
  assign m1_mat_1_0 = _zz_9_[8 : 1];
  assign m1_mat_1_1 = _zz_12_[8 : 1];
  assign m3_mat_0_0 = m1_mat_0_0;
  assign m3_mat_0_1 = m1_mat_0_1;
  assign m3_mat_1_0 = m2_mat_1_0;
  assign m3_mat_1_1 = m2_mat_1_1;
  always @ (posedge clk) begin
    m1_mul_Matrix2D_0_0_0 <= ($signed(m1_mat_0_0) * $signed(m2_mat_0_0));
    m1_mul_Matrix2D_0_0_1 <= ($signed(m1_mat_0_1) * $signed(m2_mat_1_0));
    _zz_3_ <= ($signed(_zz_13_) + $signed(_zz_14_));
    m1_mul_Matrix2D_0_1_0 <= ($signed(m1_mat_0_0) * $signed(m2_mat_0_1));
    m1_mul_Matrix2D_0_1_1 <= ($signed(m1_mat_0_1) * $signed(m2_mat_1_1));
    _zz_6_ <= ($signed(_zz_15_) + $signed(_zz_16_));
    m1_mul_Matrix2D_1_0_0 <= ($signed(m1_mat_1_0) * $signed(m2_mat_0_0));
    m1_mul_Matrix2D_1_0_1 <= ($signed(m1_mat_1_1) * $signed(m2_mat_1_0));
    _zz_9_ <= ($signed(_zz_17_) + $signed(_zz_18_));
    m1_mul_Matrix2D_1_1_0 <= ($signed(m1_mat_1_0) * $signed(m2_mat_0_1));
    m1_mul_Matrix2D_1_1_1 <= ($signed(m1_mat_1_1) * $signed(m2_mat_1_1));
    _zz_12_ <= ($signed(_zz_19_) + $signed(_zz_20_));
  end

endmodule

