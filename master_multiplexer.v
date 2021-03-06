module master_multiplexer #(parameter WIDTH = 32) (
  input wire HGRANT,
  input wire [WIDTH-31:0] HMASTER,
  input wire [WIDTH-1:0] HREADY,
  input wire [WIDTH-1:0] HADDR_1, HADDR_2, HADDR_3, HADDR_4, HADDR_5, HADDR_6, HADDR_7, HADDR_8, HADDR_9, HADDR_10, HADDR_11, HADDR_12, HADDR_13, HADDR_14, HADDR_15, HADDR_16,
  input wire [WIDTH-1:0] HTRANS_1, HTRANS_2, HTRANS_3, HTRANS_4, HTRANS_5, HTRANS_6, HTRANS_7, HTRANS_8, HTRANS_9, HTRANS_10, HTRANS_11, HTRANS_12, HTRANS_13, HTRANS_14, HTRANS_15, HTRANS_16,
  input wire HWRITE_1, HWRITE_2, HWRITE_3, HWRITE_4, HWRITE_5, HWRITE_6, HWRITE_7, HWRITE_8, HWRITE_9, HWRITE_10, HWRITE_11, HWRITE_12, HWRITE_13, HWRITE_14, HWRITE_15, HWRITE_16,
  input wire [WIDTH-2:0] HSIZE_1, HSIZE_2, HSIZE_3, HSIZE_4, HSIZE_5, HSIZE_6, HSIZE_7, HSIZE_8, HSIZE_9, HSIZE_10, HSIZE_11, HSIZE_12, HSIZE_13, HSIZE_14, HSIZE_15, HSIZE_16,
  input wire [WIDTH-2:0] HBURST_1, HBURST_2, HBURST_3, HBURST_4, HBURST_5, HBURST_6, HBURST_7, HBURST_8, HBURST_9, HBURST_10, HBURST_11, HBURST_12, HBURST_13, HBURST_14, HBURST_15, HBURST_16,
  input wire [WIDTH-3:0] HPROT_1, HPROT_2, HPROT_3, HPROT_4, HPROT_5, HPROT_6, HPROT_7, HPROT_8, HPROT_9, HPROT_10, HPROT_11, HPROT_12, HPROT_13, HPROT_14, HPROT_15, HPROT_16,
  input wire [WIDTH-1:0] HWDATA_1, HWDATA_2, HWDATA_3, HWDATA_4, HWDATA_5, HWDATA_6, HWDATA_7, HWDATA_8, HWDATA_9, HWDATA_10, HWDATA_11, HWDATA_12, HWDATA_13, HWDATA_14, HWDATA_15, HWDATA_16,
  output reg [WIDTH-1:0] HADDR,
  output reg [WIDTH-1:0] HTRANS,
  output reg HWRITE,
  output reg [WIDTH-2:0] HSIZE,
  output reg [WIDTH-2:0] HBURST,
  output reg [WIDTH-3:0] HPROT,
  output reg [WIDTH-31:0] HWDATA
);
always @ (*)
begin
  case(HADDR[31:24])
    8'h01: begin
		HADDR = HADDR_1;
		HTRANS = HTRANS_1;
		HWRITE = HWRITE_1;
		HSIZE = HSIZE_1;
		HBURST = HBURST_1;
		HPROT = HPROT_1;
		HWDATA = HWDATA_1;
	   end
    8'h02: begin
		HADDR = HADDR_2;
		HTRANS = HTRANS_2;
		HWRITE = HWRITE_2;
		HSIZE = HSIZE_2;
		HBURST = HBURST_2;
		HPROT = HPROT_2;
		HWDATA = HWDATA_2; 
	   end
    8'h03: begin
		HADDR = HADDR_3;
		HTRANS = HTRANS_3;
		HWRITE = HWRITE_3;
		HSIZE = HSIZE_3;
		HBURST = HBURST_3;
		HPROT = HPROT_3;
		HWDATA = HWDATA_3; 
	   end
    8'h04: begin
		HADDR = HADDR_4;
		HTRANS = HTRANS_4;
		HWRITE = HWRITE_4;
		HSIZE = HSIZE_4;
		HBURST = HBURST_4;
		HPROT = HPROT_4;
		HWDATA = HWDATA_4; 
	   end
    8'h05: begin
		HADDR = HADDR_5;
		HTRANS = HTRANS_5;
		HWRITE = HWRITE_5;
		HSIZE = HSIZE_5;
		HBURST = HBURST_5;
		HPROT = HPROT_5;
		HWDATA = HWDATA_5;
	   end
    8'h06: begin
		HADDR = HADDR_6;
		HTRANS = HTRANS_6;
		HWRITE = HWRITE_6;
		HSIZE = HSIZE_6;
		HBURST = HBURST_6;
		HPROT = HPROT_6;
		HWDATA = HWDATA_6;
	   end
    8'h07: begin
		HADDR = HADDR_7;
		HTRANS = HTRANS_7;
		HWRITE = HWRITE_7;
		HSIZE = HSIZE_7;
		HBURST = HBURST_7;
		HPROT = HPROT_7;
		HWDATA = HWDATA_7;
	   end
    8'h08: begin
		HADDR = HADDR_8;
		HTRANS = HTRANS_8;
		HWRITE = HWRITE_8;
		HSIZE = HSIZE_8;
		HBURST = HBURST_8;
		HPROT = HPROT_8;
		HWDATA = HWDATA_8;
	   end
    8'h09: begin
		HADDR = HADDR_9;
		HTRANS = HTRANS_9;
		HWRITE = HWRITE_9;
		HSIZE = HSIZE_9;
		HBURST = HBURST_9;
		HPROT = HPROT_9;
		HWDATA = HWDATA_9;
	   end
    8'h0a: begin
		HADDR = HADDR_10;
		HTRANS = HTRANS_10;
		HWRITE = HWRITE_10;
		HSIZE = HSIZE_10;
		HBURST = HBURST_10;
		HPROT = HPROT_10;
		HWDATA = HWDATA_10;
	   end
    8'h0b: begin
		HADDR = HADDR_11;
		HTRANS = HTRANS_11;
		HWRITE = HWRITE_11;
		HSIZE = HSIZE_11;
		HBURST = HBURST_11;
		HPROT = HPROT_11;
		HWDATA = HWDATA_11;
	   end
    8'h0c: begin
		HADDR = HADDR_12;
		HTRANS = HTRANS_12;
		HWRITE = HWRITE_12;
		HSIZE = HSIZE_12;
		HBURST = HBURST_12;
		HPROT = HPROT_12;
		HWDATA = HWDATA_12;
	   end
    8'h0d: begin
		HADDR = HADDR_13;
		HTRANS = HTRANS_13;
		HWRITE = HWRITE_13;
		HSIZE = HSIZE_13;
		HBURST = HBURST_13;
		HPROT = HPROT_13;
		HWDATA = HWDATA_13; 

	   end
    8'h0e: begin
		HADDR = HADDR_14;
		HTRANS = HTRANS_14;
		HWRITE = HWRITE_14;
		HSIZE = HSIZE_14;
		HBURST = HBURST_14;
		HPROT = HPROT_14;
		HWDATA = HWDATA_14; 
	   end
    8'h0f: begin
		HADDR = HADDR_15;
		HTRANS = HTRANS_15;
		HWRITE = HWRITE_15;
		HSIZE = HSIZE_15;
		HBURST = HBURST_15;
		HPROT = HPROT_15;
		HWDATA = HWDATA_15; 
	   end
    8'h10: begin
		HADDR = HADDR_16;
		HTRANS = HTRANS_16;
		HWRITE = HWRITE_16;
		HSIZE = HSIZE_16;
		HBURST = HBURST_16;
		HPROT = HPROT_16;
		HWDATA = HWDATA_16;
	   end
    default:begin
		HADDR = 0;
		HTRANS = 0;
		HWRITE = 0;
		HSIZE = 0;
		HBURST = 0;
		HPROT = 0;
		HWDATA = 0;
	   end
  endcase
end
endmodule
