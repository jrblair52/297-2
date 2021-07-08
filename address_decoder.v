module address_decoder(
  input HCLK,
  input HRESET,
  input [31:0] HADDR,
  output wire HSEL_1, HSEL_2, HSEL_3, HSEL_4, HSEL_5, HSEL_6, HSEL_7, HSEL_8, HSEL_9,
  output wire HSEL_10, HSEL_11, HSEL_12, HSEL_13, HSEL_14, HSEL_15, HSEL_16
);
// HSEL_1, HSEL_2, HSEL_3, HSEL_4, HSEL_5, HSEL_6, HSEL_7, HSEL_8, HSEL_9, HSEL_10, HSEL_11, HSEL_12, HSEL_13, HSEL_14, HSEL_15, HSEL_16
reg [15:0] ctrl_signals;

  always @ (*) begin
    casex (HADDR[31:24])
      // select Slave 1
      8'h01:    ctrl_signals = 16'b1_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0;
      // select Slave 2
      8'h02:    ctrl_signals = 16'b0_1_0_0_0_0_0_0_0_0_0_0_0_0_0_0;
      // select Slave 3
      8'h03:    ctrl_signals = 16'b0_0_1_0_0_0_0_0_0_0_0_0_0_0_0_0;
      // select Slave 4
      8'h04:    ctrl_signals = 16'b0_0_0_1_0_0_0_0_0_0_0_0_0_0_0_0;
      // select Slave 5
      8'h05:    ctrl_signals = 16'b0_0_0_0_1_0_0_0_0_0_0_0_0_0_0_0;
      // select Slave 6
      8'h06:    ctrl_signals = 16'b0_0_0_0_0_1_0_0_0_0_0_0_0_0_0_0;
      // select Slave 7
      8'h07:    ctrl_signals = 16'b0_0_0_0_0_0_1_0_0_0_0_0_0_0_0_0;
      // select Slave 8
      8'h08:    ctrl_signals = 16'b0_0_0_0_0_0_0_1_0_0_0_0_0_0_0_0;
      // select Slave 9
      8'h09:    ctrl_signals = 16'b0_0_0_0_0_0_0_0_1_0_0_0_0_0_0_0;
      // select Slave 10
      8'h0a:    ctrl_signals = 16'b0_0_0_0_0_0_0_0_0_1_0_0_0_0_0_0;
      // select Slave 11
      8'h0b:    ctrl_signals = 16'b0_0_0_0_0_0_0_0_0_0_1_0_0_0_0_0;
      // select Slave 12
      8'h0c:    ctrl_signals = 16'b0_0_0_0_0_0_0_0_0_0_0_1_0_0_0_0;
      // select Slave 13
      8'h0d:    ctrl_signals = 16'b0_0_0_0_0_0_0_0_0_0_0_0_1_0_0_0;
      // select Slave 14
      8'h0e:    ctrl_signals = 16'b0_0_0_0_0_0_0_0_0_0_0_0_0_1_0_0;
      // select Slave 15
      8'h0f:    ctrl_signals = 16'b0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_0;
      // select Slave 16
      8'h10:    ctrl_signals = 16'b0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1;
      // select data memory
      default:  ctrl_signals = 16'b0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0;
    endcase
  end

  assign {HSEL_1, HSEL_2, HSEL_3, HSEL_4, HSEL_5, HSEL_6, HSEL_7, HSEL_8, HSEL_9, HSEL_10, HSEL_11, HSEL_12, HSEL_13, HSEL_14, HSEL_15, HSEL_16} = ctrl_signals;

endmodule
