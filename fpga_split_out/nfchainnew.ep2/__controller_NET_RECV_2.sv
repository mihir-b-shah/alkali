module __controller_NET_RECV_2#()
(
	 input  wire clk, 
	 input  wire rst,
	//
	input wire [32-1:0] in_0_arg_137_tdata ,
	input wire  in_0_arg_137_tvalid ,
	output wire  in_0_arg_137_tready,
	//
	input wire [512-1:0] in_0_arg_138_tdata ,
	input wire [64-1:0] in_0_arg_138_tkeep ,
	input wire  in_0_arg_138_tlast ,
	input wire  in_0_arg_138_tvalid ,
	output wire  in_0_arg_138_tready,
	//
	input wire [32-1:0] in_0_arg_139_tdata ,
	input wire  in_0_arg_139_tvalid ,
	output wire  in_0_arg_139_tready,
	//
	input wire [32-1:0] in_0_arg_140_tdata ,
	input wire  in_0_arg_140_tvalid ,
	output wire  in_0_arg_140_tready,
	//
	input wire [32-1:0] in_0_arg_141_tdata ,
	input wire  in_0_arg_141_tvalid ,
	output wire  in_0_arg_141_tready,
	//
	input wire [32-1:0] in_0_arg_142_tdata ,
	input wire  in_0_arg_142_tvalid ,
	output wire  in_0_arg_142_tready,
	//
	input wire [32-1:0] in_0_arg_143_tdata ,
	input wire  in_0_arg_143_tvalid ,
	output wire  in_0_arg_143_tready,
	//
	input wire [32-1:0] in_0_arg_144_tdata ,
	input wire  in_0_arg_144_tvalid ,
	output wire  in_0_arg_144_tready,
	//
	input wire [160-1:0] in_0_arg_145_tdata ,
	input wire  in_0_arg_145_tvalid ,
	output wire  in_0_arg_145_tready,
	//
	output wire [32-1:0] out_0_arg_137_tdata ,
	output wire  out_0_arg_137_tvalid ,
	input wire  out_0_arg_137_tready,
	//
	output wire [512-1:0] out_0_arg_138_tdata ,
	output wire [64-1:0] out_0_arg_138_tkeep ,
	output wire  out_0_arg_138_tlast ,
	output wire  out_0_arg_138_tvalid ,
	input wire  out_0_arg_138_tready,
	//
	output wire [32-1:0] out_0_arg_139_tdata ,
	output wire  out_0_arg_139_tvalid ,
	input wire  out_0_arg_139_tready,
	//
	output wire [32-1:0] out_0_arg_140_tdata ,
	output wire  out_0_arg_140_tvalid ,
	input wire  out_0_arg_140_tready,
	//
	output wire [32-1:0] out_0_arg_141_tdata ,
	output wire  out_0_arg_141_tvalid ,
	input wire  out_0_arg_141_tready,
	//
	output wire [32-1:0] out_0_arg_142_tdata ,
	output wire  out_0_arg_142_tvalid ,
	input wire  out_0_arg_142_tready,
	//
	output wire [32-1:0] out_0_arg_143_tdata ,
	output wire  out_0_arg_143_tvalid ,
	input wire  out_0_arg_143_tready,
	//
	output wire [32-1:0] out_0_arg_144_tdata ,
	output wire  out_0_arg_144_tvalid ,
	input wire  out_0_arg_144_tready,
	//
	output wire [160-1:0] out_0_arg_145_tdata ,
	output wire  out_0_arg_145_tvalid ,
	input wire  out_0_arg_145_tready
);
//barrier bits
 wire [9-1:0]barriers_293;

barrier_queue#(
.DATA_WIDTH(32),
.KEEP_ENABLE (0)
)barrier_queue_294(
	 .clk(clk), 
	 .rst(rst) ,
	//src wire
	.s_in_tdata({in_0_arg_137_tdata}),
	.s_in_tvalid({in_0_arg_137_tvalid}),
	.s_in_tready({in_0_arg_137_tready}),
	//dst wire
	.m_out_tdata({out_0_arg_137_tdata}),
	.m_out_tvalid({out_0_arg_137_tvalid}),
	.m_out_tready({out_0_arg_137_tready}),
	//barrier bits
	.barrier({barriers_293[0]})
);

//increase counter
 wire [1-1:0]inc_295=(in_0_arg_137_tready && in_0_arg_137_tvalid);

//decrease counter
 wire [1-1:0]dec_296=(out_0_arg_137_tready && out_0_arg_137_tvalid);

barrier_queue#(
.DATA_WIDTH(512),
.KEEP_ENABLE (1)
)barrier_queue_297(
	 .clk(clk), 
	 .rst(rst) ,
	//src wire
	.s_in_tdata({in_0_arg_138_tdata}),
	.s_in_tkeep({in_0_arg_138_tkeep}),
	.s_in_tlast({in_0_arg_138_tlast}),
	.s_in_tvalid({in_0_arg_138_tvalid}),
	.s_in_tready({in_0_arg_138_tready}),
	//dst wire
	.m_out_tdata({out_0_arg_138_tdata}),
	.m_out_tkeep({out_0_arg_138_tkeep}),
	.m_out_tlast({out_0_arg_138_tlast}),
	.m_out_tvalid({out_0_arg_138_tvalid}),
	.m_out_tready({out_0_arg_138_tready}),
	//barrier bits
	.barrier({barriers_293[1]})
);

//increase counter
 wire [1-1:0]inc_298=(in_0_arg_138_tready && in_0_arg_138_tvalid);

//decrease counter
 wire [1-1:0]dec_299=(out_0_arg_138_tready && out_0_arg_138_tvalid);

barrier_queue#(
.DATA_WIDTH(32),
.KEEP_ENABLE (0)
)barrier_queue_300(
	 .clk(clk), 
	 .rst(rst) ,
	//src wire
	.s_in_tdata({in_0_arg_139_tdata}),
	.s_in_tvalid({in_0_arg_139_tvalid}),
	.s_in_tready({in_0_arg_139_tready}),
	//dst wire
	.m_out_tdata({out_0_arg_139_tdata}),
	.m_out_tvalid({out_0_arg_139_tvalid}),
	.m_out_tready({out_0_arg_139_tready}),
	//barrier bits
	.barrier({barriers_293[2]})
);

//increase counter
 wire [1-1:0]inc_301=(in_0_arg_139_tready && in_0_arg_139_tvalid);

//decrease counter
 wire [1-1:0]dec_302=(out_0_arg_139_tready && out_0_arg_139_tvalid);

barrier_queue#(
.DATA_WIDTH(32),
.KEEP_ENABLE (0)
)barrier_queue_303(
	 .clk(clk), 
	 .rst(rst) ,
	//src wire
	.s_in_tdata({in_0_arg_140_tdata}),
	.s_in_tvalid({in_0_arg_140_tvalid}),
	.s_in_tready({in_0_arg_140_tready}),
	//dst wire
	.m_out_tdata({out_0_arg_140_tdata}),
	.m_out_tvalid({out_0_arg_140_tvalid}),
	.m_out_tready({out_0_arg_140_tready}),
	//barrier bits
	.barrier({barriers_293[3]})
);

//increase counter
 wire [1-1:0]inc_304=(in_0_arg_140_tready && in_0_arg_140_tvalid);

//decrease counter
 wire [1-1:0]dec_305=(out_0_arg_140_tready && out_0_arg_140_tvalid);

barrier_queue#(
.DATA_WIDTH(32),
.KEEP_ENABLE (0)
)barrier_queue_306(
	 .clk(clk), 
	 .rst(rst) ,
	//src wire
	.s_in_tdata({in_0_arg_141_tdata}),
	.s_in_tvalid({in_0_arg_141_tvalid}),
	.s_in_tready({in_0_arg_141_tready}),
	//dst wire
	.m_out_tdata({out_0_arg_141_tdata}),
	.m_out_tvalid({out_0_arg_141_tvalid}),
	.m_out_tready({out_0_arg_141_tready}),
	//barrier bits
	.barrier({barriers_293[4]})
);

//increase counter
 wire [1-1:0]inc_307=(in_0_arg_141_tready && in_0_arg_141_tvalid);

//decrease counter
 wire [1-1:0]dec_308=(out_0_arg_141_tready && out_0_arg_141_tvalid);

barrier_queue#(
.DATA_WIDTH(32),
.KEEP_ENABLE (0)
)barrier_queue_309(
	 .clk(clk), 
	 .rst(rst) ,
	//src wire
	.s_in_tdata({in_0_arg_142_tdata}),
	.s_in_tvalid({in_0_arg_142_tvalid}),
	.s_in_tready({in_0_arg_142_tready}),
	//dst wire
	.m_out_tdata({out_0_arg_142_tdata}),
	.m_out_tvalid({out_0_arg_142_tvalid}),
	.m_out_tready({out_0_arg_142_tready}),
	//barrier bits
	.barrier({barriers_293[5]})
);

//increase counter
 wire [1-1:0]inc_310=(in_0_arg_142_tready && in_0_arg_142_tvalid);

//decrease counter
 wire [1-1:0]dec_311=(out_0_arg_142_tready && out_0_arg_142_tvalid);

barrier_queue#(
.DATA_WIDTH(32),
.KEEP_ENABLE (0)
)barrier_queue_312(
	 .clk(clk), 
	 .rst(rst) ,
	//src wire
	.s_in_tdata({in_0_arg_143_tdata}),
	.s_in_tvalid({in_0_arg_143_tvalid}),
	.s_in_tready({in_0_arg_143_tready}),
	//dst wire
	.m_out_tdata({out_0_arg_143_tdata}),
	.m_out_tvalid({out_0_arg_143_tvalid}),
	.m_out_tready({out_0_arg_143_tready}),
	//barrier bits
	.barrier({barriers_293[6]})
);

//increase counter
 wire [1-1:0]inc_313=(in_0_arg_143_tready && in_0_arg_143_tvalid);

//decrease counter
 wire [1-1:0]dec_314=(out_0_arg_143_tready && out_0_arg_143_tvalid);

barrier_queue#(
.DATA_WIDTH(32),
.KEEP_ENABLE (0)
)barrier_queue_315(
	 .clk(clk), 
	 .rst(rst) ,
	//src wire
	.s_in_tdata({in_0_arg_144_tdata}),
	.s_in_tvalid({in_0_arg_144_tvalid}),
	.s_in_tready({in_0_arg_144_tready}),
	//dst wire
	.m_out_tdata({out_0_arg_144_tdata}),
	.m_out_tvalid({out_0_arg_144_tvalid}),
	.m_out_tready({out_0_arg_144_tready}),
	//barrier bits
	.barrier({barriers_293[7]})
);

//increase counter
 wire [1-1:0]inc_316=(in_0_arg_144_tready && in_0_arg_144_tvalid);

//decrease counter
 wire [1-1:0]dec_317=(out_0_arg_144_tready && out_0_arg_144_tvalid);

barrier_queue#(
.DATA_WIDTH(160),
.KEEP_ENABLE (0)
)barrier_queue_318(
	 .clk(clk), 
	 .rst(rst) ,
	//src wire
	.s_in_tdata({in_0_arg_145_tdata}),
	.s_in_tvalid({in_0_arg_145_tvalid}),
	.s_in_tready({in_0_arg_145_tready}),
	//dst wire
	.m_out_tdata({out_0_arg_145_tdata}),
	.m_out_tvalid({out_0_arg_145_tvalid}),
	.m_out_tready({out_0_arg_145_tready}),
	//barrier bits
	.barrier({barriers_293[8]})
);

//increase counter
 wire [1-1:0]inc_319=(in_0_arg_145_tready && in_0_arg_145_tvalid);

//decrease counter
 wire [1-1:0]dec_320=(out_0_arg_145_tready && out_0_arg_145_tvalid);

ctrl_barrier#(
.PORT_COUNT(9)
)ctrl_barrier_321(
	 .clk(clk), 
	 .rst(rst) ,
	//inc wire
	.s_inc({inc_319,inc_316,inc_313,inc_310,inc_307,inc_304,inc_301,inc_298,inc_295}),
	//desc wire
	.s_dec({dec_320,dec_317,dec_314,dec_311,dec_308,dec_305,dec_302,dec_299,dec_296}),
	//barriers
	.ctrl_barrier({barriers_293})
);


endmodule
