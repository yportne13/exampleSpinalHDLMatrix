// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : TopLevel
// Git hash  : f67633dea3ec6c792def237f8a4a95fb21ccf674


`define fsm_enumDefinition_binary_sequential_type [2:0]
`define fsm_enumDefinition_binary_sequential_fsm_BOOT 3'b000
`define fsm_enumDefinition_binary_sequential_fsm_sIdle 3'b001
`define fsm_enumDefinition_binary_sequential_fsm_sLoad 3'b010
`define fsm_enumDefinition_binary_sequential_fsm_stateB 3'b011
`define fsm_enumDefinition_binary_sequential_fsm_stateC 3'b100


module TopLevel (
  input               io_start,
  input      [7:0]    io_input,
  input               clk,
  input               reset
);
  wire                _zz_1;
  reg        [7:0]    m1_mat_0_0;
  reg        [7:0]    m1_mat_0_1;
  reg        [7:0]    m1_mat_0_2;
  reg        [7:0]    m1_mat_0_3;
  reg        [7:0]    m1_mat_1_0;
  reg        [7:0]    m1_mat_1_1;
  reg        [7:0]    m1_mat_1_2;
  reg        [7:0]    m1_mat_1_3;
  reg        [7:0]    m1_mat_2_0;
  reg        [7:0]    m1_mat_2_1;
  reg        [7:0]    m1_mat_2_2;
  reg        [7:0]    m1_mat_2_3;
  reg        [7:0]    m1_mat_3_0;
  reg        [7:0]    m1_mat_3_1;
  reg        [7:0]    m1_mat_3_2;
  reg        [7:0]    m1_mat_3_3;
  wire                fsm_wantExit;
  reg                 fsm_wantStart;
  reg        [7:0]    fsm_counter;
  reg        `fsm_enumDefinition_binary_sequential_type fsm_stateReg;
  reg        `fsm_enumDefinition_binary_sequential_type fsm_stateNext;
  `ifndef SYNTHESIS
  reg [79:0] fsm_stateReg_string;
  reg [79:0] fsm_stateNext_string;
  `endif


  assign _zz_1 = (fsm_counter == 8'h0f);
  `ifndef SYNTHESIS
  always @(*) begin
    case(fsm_stateReg)
      `fsm_enumDefinition_binary_sequential_fsm_BOOT : fsm_stateReg_string = "fsm_BOOT  ";
      `fsm_enumDefinition_binary_sequential_fsm_sIdle : fsm_stateReg_string = "fsm_sIdle ";
      `fsm_enumDefinition_binary_sequential_fsm_sLoad : fsm_stateReg_string = "fsm_sLoad ";
      `fsm_enumDefinition_binary_sequential_fsm_stateB : fsm_stateReg_string = "fsm_stateB";
      `fsm_enumDefinition_binary_sequential_fsm_stateC : fsm_stateReg_string = "fsm_stateC";
      default : fsm_stateReg_string = "??????????";
    endcase
  end
  always @(*) begin
    case(fsm_stateNext)
      `fsm_enumDefinition_binary_sequential_fsm_BOOT : fsm_stateNext_string = "fsm_BOOT  ";
      `fsm_enumDefinition_binary_sequential_fsm_sIdle : fsm_stateNext_string = "fsm_sIdle ";
      `fsm_enumDefinition_binary_sequential_fsm_sLoad : fsm_stateNext_string = "fsm_sLoad ";
      `fsm_enumDefinition_binary_sequential_fsm_stateB : fsm_stateNext_string = "fsm_stateB";
      `fsm_enumDefinition_binary_sequential_fsm_stateC : fsm_stateNext_string = "fsm_stateC";
      default : fsm_stateNext_string = "??????????";
    endcase
  end
  `endif

  assign fsm_wantExit = 1'b0;
  always @ (*) begin
    fsm_wantStart = 1'b0;
    case(fsm_stateReg)
      `fsm_enumDefinition_binary_sequential_fsm_sIdle : begin
      end
      `fsm_enumDefinition_binary_sequential_fsm_sLoad : begin
      end
      `fsm_enumDefinition_binary_sequential_fsm_stateB : begin
      end
      `fsm_enumDefinition_binary_sequential_fsm_stateC : begin
      end
      default : begin
        fsm_wantStart = 1'b1;
      end
    endcase
  end

  always @ (*) begin
    fsm_stateNext = fsm_stateReg;
    case(fsm_stateReg)
      `fsm_enumDefinition_binary_sequential_fsm_sIdle : begin
        if(io_start)begin
          fsm_stateNext = `fsm_enumDefinition_binary_sequential_fsm_sLoad;
        end
      end
      `fsm_enumDefinition_binary_sequential_fsm_sLoad : begin
        if(_zz_1)begin
          fsm_stateNext = `fsm_enumDefinition_binary_sequential_fsm_stateB;
        end
      end
      `fsm_enumDefinition_binary_sequential_fsm_stateB : begin
        if((fsm_counter == 8'h04))begin
          fsm_stateNext = `fsm_enumDefinition_binary_sequential_fsm_stateC;
        end
      end
      `fsm_enumDefinition_binary_sequential_fsm_stateC : begin
        fsm_stateNext = `fsm_enumDefinition_binary_sequential_fsm_sIdle;
      end
      default : begin
      end
    endcase
    if(fsm_wantStart)begin
      fsm_stateNext = `fsm_enumDefinition_binary_sequential_fsm_sIdle;
    end
  end

  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      fsm_counter <= 8'h0;
      fsm_stateReg <= `fsm_enumDefinition_binary_sequential_fsm_BOOT;
    end else begin
      fsm_stateReg <= fsm_stateNext;
      case(fsm_stateReg)
        `fsm_enumDefinition_binary_sequential_fsm_sIdle : begin
        end
        `fsm_enumDefinition_binary_sequential_fsm_sLoad : begin
          fsm_counter <= (fsm_counter + 8'h01);
          if(_zz_1)begin
            fsm_counter <= 8'h0;
          end
        end
        `fsm_enumDefinition_binary_sequential_fsm_stateB : begin
          fsm_counter <= (fsm_counter + 8'h01);
        end
        `fsm_enumDefinition_binary_sequential_fsm_stateC : begin
        end
        default : begin
        end
      endcase
      if(((! (fsm_stateReg == `fsm_enumDefinition_binary_sequential_fsm_stateB)) && (fsm_stateNext == `fsm_enumDefinition_binary_sequential_fsm_stateB)))begin
        fsm_counter <= 8'h0;
      end
    end
  end

  always @ (posedge clk) begin
    case(fsm_stateReg)
      `fsm_enumDefinition_binary_sequential_fsm_sIdle : begin
      end
      `fsm_enumDefinition_binary_sequential_fsm_sLoad : begin
        m1_mat_3_3 <= io_input;
        m1_mat_0_0 <= m1_mat_0_0;
        m1_mat_0_1 <= m1_mat_0_1;
        m1_mat_0_2 <= m1_mat_0_2;
        m1_mat_0_3 <= m1_mat_1_0;
        m1_mat_1_0 <= m1_mat_1_0;
        m1_mat_1_1 <= m1_mat_1_1;
        m1_mat_1_2 <= m1_mat_1_2;
        m1_mat_1_3 <= m1_mat_2_0;
        m1_mat_2_0 <= m1_mat_2_0;
        m1_mat_2_1 <= m1_mat_2_1;
        m1_mat_2_2 <= m1_mat_2_2;
        m1_mat_2_3 <= m1_mat_3_0;
        m1_mat_3_0 <= m1_mat_3_0;
        m1_mat_3_1 <= m1_mat_3_1;
        m1_mat_3_2 <= m1_mat_3_2;
      end
      `fsm_enumDefinition_binary_sequential_fsm_stateB : begin
        m1_mat_1_0 <= m1_mat_0_0;
        m1_mat_1_1 <= m1_mat_0_1;
        m1_mat_1_2 <= m1_mat_0_2;
        m1_mat_1_3 <= m1_mat_0_3;
        m1_mat_2_0 <= m1_mat_1_0;
        m1_mat_2_1 <= m1_mat_1_1;
        m1_mat_2_2 <= m1_mat_1_2;
        m1_mat_2_3 <= m1_mat_1_3;
        m1_mat_3_0 <= m1_mat_2_0;
        m1_mat_3_1 <= m1_mat_2_1;
        m1_mat_3_2 <= m1_mat_2_2;
        m1_mat_3_3 <= m1_mat_2_3;
        m1_mat_0_0 <= m1_mat_3_0;
        m1_mat_0_1 <= m1_mat_3_1;
        m1_mat_0_2 <= m1_mat_3_2;
        m1_mat_0_3 <= m1_mat_3_3;
      end
      `fsm_enumDefinition_binary_sequential_fsm_stateC : begin
      end
      default : begin
      end
    endcase
  end


endmodule
