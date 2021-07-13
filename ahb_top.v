module ahb_top () (
  
  wire [1:0] hresp_1,hresp_2,hresp_3,hresp_4;
  wire [31:0] hrdata_1,hrdata_2,hrdata_3,hrdata_4;
  wire hsel_1,hsel_2,hsel_3,hsel_4;
  wire hreadyout_1,hreadyout_2,hreadyout_3,hreadyout_4;
  wire hwrite_1,hwrite_2,hwrite_3,hwrite_4;
  wire hmastlock,hmastlock_1,hmastlock_2,hmastlock_3,hmastlock_4;
  wire hburstreq_1,hburstreq_2,hburstreq_3,hburstreq_4;
  wire [31:0] haddr, haddr_1,haddr_2,haddr_3,haddr_4;
  wire [1:0] htrans, htrans_1,htrans_2,htrans_3,htrans_4;
  wire [2:0] hsize, hsize_1,hsize_2,hsize_3,hsize_4;
  wire [2:0] hburst, hburst_1,hburst_2,hburst_3,hburst_4;
  wire [3:0] hprot, hprot_1,hprot_2,hprot_3,hprot_4;
  wire [31:0] hwdata, hwdata_1,hwdata_2,hwdata_3,hwdata_4;
  wire [15:0] hsplit_1,hsplit_2,hsplit_3,hsplit_4;
  

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
    ahb_slave slave_2 (
    .hclk       (hclk),
    .hreset     (hreset),
      .hsel 		  (hsel_2),
      .hrdata		      (hrdata_2), //out from slave
      .hresp          (hresp_2),  //out from slave
      .hreadyout      (hreadyout_2), //out from slave
    .haddr      (haddr),
    .htrans     (htrans),
    .hwrite     (hwrite),
    .hsize      (hsize),
    .hburst     (hburst),
    .hprot      (hprot),
    .hwdata     (hwdata),
    .hmastlock  (hmastlock)
  );
  ahb_slave slave_3 (
    .hclk       (hclk),
    .hreset     (hreset),
    .hsel 		  (hsel_3),
    .hrdata		      (hrdata_3), //out from slave
    .hresp          (hresp_3),  //out from slave
    .hreadyout      (hreadyout_3), //out from slave
    .haddr      (haddr),
    .htrans     (htrans),
    .hwrite     (hwrite),
    .hsize      (hsize),
    .hburst     (hburst),
    .hprot      (hprot),
    .hwdata     (hwdata),
    .hmastlock  (hmastlock)
  );
  ahb_slave slave_4 (
    .hclk       (hclk),
    .hreset     (hreset),
    .hsel 		  (hsel_4),
    .hrdata		      (hrdata_4), //out from slave
    .hresp          (hresp_4),  //out from slave
    .hreadyout      (hreadyout_4), //out from slave
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
