module ahb_top () (

  ahb_master master1 (
    .hwdata		(hwdata),
    .haddr		(haddr),
    .hrdata		(hrdata)
  );
  
  ahb_master master2 (
    .hwdata		(hwdata),
    .haddr		(haddr),
    .hrdata		(hrdata)
  );
  
  ahb_master master## (
    .hwdata		(hwdata),
    .haddr		(haddr),
    .hrdata		(hrdata)
  );
  
  ahb_decoder decoder (
    .haddr		(haddr),
    .mux_sel	(mux_sel),
    .hsel_1		(hsel_1),
    .hsel_2		(hsel_2),
    .hsel_3		(hsel_3),
    .hsel_4		(hsel_4),
    .hsel_5		(hsel_5),
    .hsel_6		(hsel_6),
    .hsel_7		(hsel_7),
    .hsel_8		(hsel_8),
    .hsel_9		(hsel_9),
    .hsel_10	(hsel_10)
    .hsel_11	(hsel_11),
    .hsel_12	(hsel_12),
    .hsel_13	(hsel_13),
    .hsel_14	(hsel_14),
    .hsel_15	(hsel_15),
    .hsel_16	(hsel_16)
  );
    
  ahb_mux mux (
    .sel		(sel),
    .hrdata		(hrdata),
    .hrdata_1	(hrdata_1),
    .hrdata_2	(hrdata_2),
    .hrdata_3	(hrdata_3),
    .hrdata_4	(hrdata_4),
    .hrdata_5	(hrdata_5),
    .hrdata_6	(hrdata_6),
    .hrdata_7	(hrdata_7),
    .hrdata_8	(hrdata_8),
    .hrdata_9	(hrdata_9),
    .hrdata_10	(hrdata_10),
    .hrdata_11	(hrdata_11),
    .hrdata_12	(hrdata_12),
    .hrdata_13	(hrdata_13),
    .hrdata_14	(hrdata_14),
    .hrdata_15	(hrdata_15),
    .hrdata_16	(hrdata_16),
  );
  
  ahb_arbiter arbiter (
	.hgrant_1	(hgrant_1),
	.hgrant_2	(hgrant_2),
	.hgrant_3	(hgrant_3),
	.hgrant_4	(hgrant_4),
	.hgrant_5	(hgrant_5),
	.hgrant_6	(hgrant_6),
	.hgrant_7	(hgrant_7),
	.hgrant_8	(hgrant_8),
	.hgrant_9	(hgrant_9),
	.hgrant_10	(hgrant_10),
	.hgrant_11	(hgrant_11),
	.hgrant_12	(hgrant_12),
	.hgrant_13	(hgrant_13),
	.hgrant_14	(hgrant_14),
	.hgrant_15	(hgrant_15),
	.hgrant_16	(hgrant_16),
	.hmaster	(hmaster),
	.hmastlock	(hmastlock)
  );
  
  ahb_slave slave1 (
    .hsel_1		(hsel),
    .hrdata_1	(hrdata)
  );
    
  ahb_slave slave2 (
    .hsel_2		(hsel),
    .hrdata_2	(hrdata)
  );
    
  ahb_slave slave3 (
    .hsel_3		(hsel),
    .hrdata_3	(hrdata)
  );
    
  ahb_slave slave4 (
    .hsel_4		(hsel),
    .hrdata_4	(hrdata)
  );
    
  ahb_slave slave5 (
    .hsel_5		(hsel),
    .hrdata_5	(hrdata)
  );
    
  ahb_slave slave6 (
    .hsel_6		(hsel),
    .hrdata_6	(hrdata)
  );
    
  ahb_slave slave7 (
    .hsel_7		(hsel),
    .hrdata_7	(hrdata)
  );
    
  ahb_slave slave8 (
    .hsel_8		(hsel),
    .hrdata_8	(hrdata)
  );
    
  ahb_slave slave9 (
    .hsel_9		(hsel),
    .hrdata_9	(hrdata)
  );
    
  ahb_slave slave10 (
    .hsel_10	(hsel),
    .hrdata_10	(hrdata)
  );
    
  ahb_slave slave11 (
    .hsel_11	(hsel),
    .hrdata_11	(hrdata)
  );
    
  ahb_slave slave12 (
    .hsel_12	(hsel),
    .hrdata_12	(hrdata)
  );
    
  ahb_slave slave13 (
    .hsel_13	(hsel),
    .hrdata_13	(hrdata)
  );
    
  ahb_slave slave14 (
    .hsel_14	(hsel),
    .hrdata_14	(hrdata)
  );
    
  ahb_slave slave15 (
    .hsel_15	(hsel),
    .hrdata_15	(hrdata)
  );
    
  ahb_slave slave16 (
    .hsel_16	(hsel),
    .hrdata_16	(hrdata)
  );
    
endmodule
