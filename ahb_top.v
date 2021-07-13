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
    ahb_master master_2 (
      .host_read	(host_read_2),
      .host_write	(host_write_2),
      .host_cont	(host_cont_2),
      .host_size	(host_size_2),
      .host_addr	(host_addr_2),
      .host_wdata	(host_wdata_2),
      .bus_rdata	(bus_rdata_2),
      .bus_rdone	(bus_rdone_2),
      .bus_wready	(bus_wready_2),
    .hreset		  (hreset),
    .hclk			  (hclk),
    .hreset		  (hreset),
      .hresp		  (hresp_2),
      .hgrant		  (hgrant_2),
      .hrdata		  (hrdata_2),
      .haddr		  (haddr_2),
      .hwrite		  (hwrite_2),
      .hsize		  (hsize_2),
      .hburst		  (hburst_2),
      .hprot		  (hprot_2),
      .htrans		  (htrans_2),
      .hmastlock	(hmastlock_2),
      .hbusreq		(hbusreq_2),
      .hlock		  (hlock_2),
      .hwdata		  (hwdata_2)
  );
    ahb_master master_3 (
      .host_read	(host_read_3),
      .host_write	(host_write_3),
      .host_cont	(host_cont_3),
      .host_size	(host_size_3),
      .host_addr	(host_addr_3),
      .host_wdata	(host_wdata_3),
      .bus_rdata	(bus_rdata_3),
      .bus_rdone	(bus_rdone_3),
      .bus_wready	(bus_wready_3),
    .hreset		  (hreset),
    .hclk			  (hclk),
    .hreset		  (hreset),
      .hresp		  (hresp_3),
      .hgrant		  (hgrant_3),
      .hrdata		  (hrdata_3),
      .haddr		  (haddr_3),
      .hwrite		  (hwrite_3),
      .hsize		  (hsize_3),
      .hburst		  (hburst_3),
      .hprot		  (hprot_3),
      .htrans		  (htrans_3),
      .hmastlock	(hmastlock_3),
      .hbusreq		(hbusreq_3),
      .hlock		  (hlock_3),
      .hwdata		  (hwdata_3)
  );
    ahb_master master_4 (
      .host_read	(host_read_4),
      .host_write	(host_write_4),
      .host_cont	(host_cont_4),
      .host_size	(host_size_4),
      .host_addr	(host_addr_4),
      .host_wdata	(host_wdata_4),
      .bus_rdata	(bus_rdata_4),
      .bus_rdone	(bus_rdone_4),
      .bus_wready	(bus_wready_4),
    .hreset		  (hreset),
    .hclk			  (hclk),
    .hreset		  (hreset),
      .hresp		  (hresp_4),
      .hgrant		  (hgrant_4),
      .hrdata		  (hrdata_4),
      .haddr		  (haddr_4),
      .hwrite		  (hwrite_4),
      .hsize		  (hsize_4),
      .hburst		  (hburst_4),
      .hprot		  (hprot_4),
      .htrans		  (htrans_4),
      .hmastlock	(hmastlock_4),
      .hbusreq		(hbusreq_4),
      .hlock		  (hlock_4),
      .hwdata		  (hwdata_4)
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
