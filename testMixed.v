// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : testMixed
// Git hash  : 1abf64bd6741b04f633017672faf2263d4aeb9d4



module testMixed (
  input      [3:0]    io_din,
  input      [2:0]    io_addw,
  input      [2:0]    io_addr,
  output     [3:0]    io_dout,
  input               clk,
  input               reset
);
  reg        [3:0]    _zz_1;
  wire                _zz_2;
  wire                _zz_3;
  reg [3:0] ram [0:7];

  assign _zz_2 = 1'b1;
  assign _zz_3 = 1'b1;
  always @ (posedge clk) begin
    if(_zz_2) begin
      ram[io_addw] <= io_din;
    end
  end

  always @ (posedge clk) begin
    if(_zz_3) begin
      _zz_1 <= ram[io_addr];
    end
  end

  assign io_dout = _zz_1;

endmodule
