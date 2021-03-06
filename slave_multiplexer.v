module slave_multiplexer #(parameter WIDTH = 32) (
  input wire [WIDTH-1:0] HADDR,
  input wire [WIDTH-1:0] HRDATA_1, HRDATA_2, HRDATA_3, HRDATA_4, HRDATA_5, HRDATA_6, HRDATA_7, HRDATA_8, HRDATA_9, HRDATA_10, HRDATA_11, HRDATA_12, HRDATA_13, HRDATA_14, HRDATA_15, HRDATA_16,
  input wire HREADYOUT_1, HREADYOUT_2, HREADYOUT_3, HREADYOUT_4, HREADYOUT_5, HREADYOUT_6, HREADYOUT_7, HREADYOUT_8, HREADYOUT_9, HREADYOUT_10, HREADYOUT_11, HREADYOUT_12, HREADYOUT_13, HREADYOUT_14, HREADYOUT_15, HREADYOUT_16,
  input wire HRESP_1, HRESP_2, HRESP_3, HRESP_4, HRESP_5, HRESP_6, HRESP_7, HRESP_8, HRESP_9, HRESP_10, HRESP_11, HRESP_12, HRESP_13, HRESP_14, HRESP_15, HRESP_16,
  output reg [WIDTH-1:0] HRDATA,
  output reg HREADY,
  output reg HRESP
);
always @ (*)
begin
  case(HADDR[31:24])
    8'h01: begin
		HRDATA = HRDATA_1;
		HREADY = HREADYOUT_1;
		HRESP = HRESP_1; 
	   end
    8'h02: begin
		HRDATA = HRDATA_2;
		HREADY = HREADYOUT_2;
		HRESP = HRESP_2; 
	   end
    8'h03: begin
		HRDATA = HRDATA_3;
		HREADY = HREADYOUT_3;
		HRESP = HRESP_3; 
	   end
    8'h04: begin
		HRDATA = HRDATA_4;
		HREADY = HREADYOUT_4;
		HRESP = HRESP_4; 
	   end
    8'h05: begin
		HRDATA = HRDATA_5;
		HREADY = HREADYOUT_5;
		HRESP = HRESP_5; 
	   end
    8'h06: begin
		HRDATA = HRDATA_6;
		HREADY = HREADYOUT_6;
		HRESP = HRESP_6; 
	   end
    8'h07: begin
		HRDATA = HRDATA_7;
		HREADY = HREADYOUT_7;
		HRESP = HRESP_7; 
	   end
    8'h08: begin
		HRDATA = HRDATA_8;
		HREADY = HREADYOUT_8;
		HRESP = HRESP_8; 
	   end
    8'h09: begin
		HRDATA = HRDATA_9;
		HREADY = HREADYOUT_9;
		HRESP = HRESP_9; 
	   end
    8'h0a: begin
		HRDATA = HRDATA_10;
		HREADY = HREADYOUT_10;
		HRESP = HRESP_10; 
	   end
    8'h0b: begin
		HRDATA = HRDATA_11;
		HREADY = HREADYOUT_11;
		HRESP = HRESP_11; 
	   end
    8'h0c: begin
		HRDATA = HRDATA_12;
		HREADY = HREADYOUT_12;
		HRESP = HRESP_12; 
	   end
    8'h0d: begin
		HRDATA = HRDATA_13;
		HREADY = HREADYOUT_13;
		HRESP = HRESP_13; 

	   end
    8'h0e: begin
		HRDATA = HRDATA_14;
		HREADY = HREADYOUT_14;
		HRESP = HRESP_14; 
	   end
    8'h0f: begin
		HRDATA = HRDATA_15;
		HREADY = HREADYOUT_15;
		HRESP = HRESP_15; 
	   end
    8'h10: begin
		HRDATA = HRDATA_16;
		HREADY = HREADYOUT_16;
		HRESP = HRESP_16; 
	   end
    default:begin
		HRDATA = 0;
		HREADY = 0;
		HRESP = 0;
	   end
  endcase
end
endmodule
