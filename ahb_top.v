module ahb_top () (

  ahb_master master_1 (
    .host_read_1	(host_read),
    .host_write_1	(host_write),
    .host_cont_1	(host_cont),
    .host_size_1	(host_size),
    .host_addr_1	(host_addr),
    .host_wdata_1	(host_wdata),
    .bus_rdata_1	(bus_rdata),
    .bus_rdone_1	(bus_rdone),
    .bus_wready_1	(bus_wready),
    .hreset_1		(hreset),
    .hclk_1			(hclk),
    .hreset_1		(hreset),
    .hresp_1		(hresp),
    .hgrant_1		(hgrant),
    .hrdata_1		(hrdata),
    .haddr_1		(haddr),
    .hwrite_1		(hwrite),
    .hsize_1		(hsize),
    .hburst_1		(hburst),
    .hprot_1		(hprot),
    .htrans_1		(htrans),
    .hmastlock_1	(hmastlock),
    .hbusreq_1		(hbusreq),
    .hlock_1		(hlock),
    .hwdata_1		(hwdata)
  );
  
  address_decoder decoder (
    .hclk		(hclk),
    .hreset		(hreset),
    .haddr		(haddr),
    .hsel_1		(hsel_1)
  );
    
  multiplexer_slave multiplexor (
    .hclk		      (hclk),
    .hreset		    (hreset),
    .haddr  		  (haddr_1),
    .hrdata	      (hrdata_1),
    .hreadyout	  (hreadyout_1),
    .hrdata		    (hrdata_1),
    .hready		    (hready_1),
    .hresp  		  (hresp_1)
  );
  
  multiplexor_master multiplexor (
    .hclk       (hclk),
    .hreset     (hreset),
    .hgrant_1   (hgrant_1),
    .hmaster_1  (hmaster
    .haddr_1    (haddr),
    .htrans_1   (htrans_1),
    .hwrite_1   (hwrite_1),
    .hsize_1    (hsize_1),
    .hburst_1   (hburst),
    .hprot_1    (hprot),
    .hwdata_1   (hwdata)
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
    .hsel 		  (hsel),
    .hrdata_1		(hrdata),
    .hresp_1    (hresp),
    .hready_1   (hready),
    .haddr      (haddr),
    .htrans     (htrans),
    .hwrite     (hwrite),
    .hsize      (hsize),
    .hburst     (hburst),
    .hprot      (hprot),
    .hwdata     (hwdata),
    .hmastlock  (hmastlock)
  );
    
endmodule
