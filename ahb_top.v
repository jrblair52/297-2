module ahb_top () (
  
  wire [1:0] hresp_1,hresp_2,hresp_3,hresp_4,hresp_5,hresp_6,hresp_7,hresp_8,hresp_9,hresp_10,hresp_11,hresp_12,hresp_13,hresp_14,hresp_15,hresp_16
  wire [31:0] hrdata_1,hrdata_2,hrdata_3,hrdata_4,hrdata_5,hrdata_6,hrdata_7,hrdata_8,hrdata_9,hrdata_10,hrdata_11,hrdata_12,hrdata_13,hrdata_14,hrdata_15,hrdata_16;
  wire hsel_1,hsel_2,hsel_3,hsel_4,hsel_5,hsel_6,hsel_7,hsel_8,hsel_9,hsel_10,hsel_11,hsel_12,hsel_13,hsel_14,hsel_15,hsel_16;
  wire hreadyout_1,hreadyout_2,hreadyout_3,hreadyout_4,hreadyout_5,hreadyout_6,hreadyout_7,hreadyout_8,hreadyout_9,hreadyout_10,hreadyout_11,hreadyout_12,hreadyout_13,hreadyout_14,hreadyout_15,hreadyout_16;
  wire hwrite_1,hmastlock,hmastlock_1,hburstreq_1;
  wire [31:0] haddr, haddr_1;
  wire [1:0] htrans, htrans_1;
  wire [2:0] hsize, hsize_1;
  wire [2:0] hburst, hburst_1;
  wire [3:0] hprot, hprot_1;
  wire [31:0] hwdata, hwdata_1;
  wire [15:0] hsplit_1;
  

  ahb_master master_1 (
    .host_read	(host_read_1),
    .host_write	(host_write_1),
    .host_cont	(host_cont_1),
    .host_size	(host_size_1),
    .host_addr	(host_addr_1),
    .host_wdata	(host_wdata_1),
    .bus_rdata	(bus_rdata_1),
    .bus_rdone	(bus_rdone_1),
    .bus_wready	(bus_wready_1),
    .hreset		  (hreset),
    .hclk			  (hclk),
    .hreset		  (hreset),
    .hresp		  (hresp_1),
    .hgrant		  (hgrant_1),
    .hrdata		  (hrdata_1),
    .haddr		  (haddr_1),
    .hwrite		  (hwrite_1),
    .hsize		  (hsize_1),
    .hburst		  (hburst_1),
    .hprot		  (hprot_1),
    .htrans		  (htrans_1),
    .hmastlock	(hmastlock_1),
    .hbusreq		(hbusreq_1),
    .hlock		  (hlock_1),
    .hwdata		  (hwdata_1)
  );
  
  address_decoder decoder (
    .hclk		(hclk),
    .hreset		(hreset),
    .haddr		(haddr),
    .hsel_1		(hsel_1)
  );
    
  
  multiplexor_master multiplexor (
    .hclk       (hclk),
    .hreset     (hreset),
    .hgrant   (hgrant_1),
    .hmaster  (hmaster),
    .haddr    (haddr_1),
    .htrans   (htrans_1),
    .hwrite   (hwrite_1),
    .hsize    (hsize_1),
    .hburst   (hburst_1),
    .hprot    (hprot_1),
    .hwdata   (hwdata_1)
  );
    
  
  ahb_arbiter arbiter (
    .hreset_n		(hreset_n),
    .hclk		(hclk),
    .hlock_0		(hlock_0),
    .hlock_1		(hlock_1),
    .hlock_2		(hlock_2),
    .hlock_3		(hlock_3),
    .hbusreq_0		(hbusreq_0),
    .hbusreq_1		(hbusreq_1),
    .hbusreq_2		(hbusreq_2),
    .hbusreq_3		(hbusreq_3),
    .addr		    (haddr),
    .hsplit_0		(hsplit_0),
    .hsplit_1		(hsplit_1),
    .hsplit_2		(hsplit_2),
    .hsplit_3		(hsplit_3),
    .hburst_0		(hburst_0),
    .hresp_0		(hresp_0),
    .htrans_0		(htrans_0),
    .hready_0		(hready_0),
    .hburst_1		(hburst_1),
    .hresp_1		(hresp_1),
    .htrans_1		(htrans_1),
    .hready_1		(hready_1),
    .hburst_2		(hburst_2),
    .hresp_2		(hresp_2),
    .htrans_2		(htrans_2),
    .hready_2		(hready_2),
    .hburst_3		(hburst_3),
    .hresp_3		(hresp_3),
    .htrans_3		(htrans_3),
    .hready_3		(hready_3),
    .hgrant_1		(hgrant_1),
    .hgrant_2		(hgrant_2),
    .hgrant_3		(hgrant_3),
    .hmaster		(hmaster),
    .hmastlock		(hmastlock)
  );
  
  ahb_slave slave_1 (
    .hclk       (hclk),
    .hreset     (hreset),
    .hsel 		  (hsel_1),
    .hrdata		      (hrdata_1), //out from slave
    .hresp          (hresp_1),  //out from slave
    .hreadyout      (hreadyout_1), //out from slave
    .haddr      (haddr),
    .htrans     (htrans),
    .hwrite     (hwrite),
    .hsize      (hsize),
    .hburst     (hburst),
    .hprot      (hprot),
    .hwdata     (hwdata),
    .hmastlock  (hmastlock)
  );
    
   multiplexer_slave multiplexor (
    .hclk		      (hclk),
    .hreset		    (hreset),
    .hrdata	      (hrdata_1),
    .hready	      (hreadyout_1),
    .hresp  		  (hresp_1)
  );
    
endmodule
