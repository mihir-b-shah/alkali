module __controller_NET_RECV_3#()
(
	 input  wire clk, 
	 input  wire rst,
	//
	input wire [32-1:0] in_0_arg_162_tdata ,
	input wire  in_0_arg_162_tvalid ,
	output wire  in_0_arg_162_tready,
	//
	input wire [32-1:0] in_0_arg_163_tdata ,
	input wire  in_0_arg_163_tvalid ,
	output wire  in_0_arg_163_tready,
	//
	input wire [32-1:0] in_0_arg_164_tdata ,
	input wire  in_0_arg_164_tvalid ,
	output wire  in_0_arg_164_tready,
	//
	input wire [32-1:0] in_0_arg_165_tdata ,
	input wire  in_0_arg_165_tvalid ,
	output wire  in_0_arg_165_tready,
	//
	input wire [32-1:0] in_0_arg_166_tdata ,
	input wire  in_0_arg_166_tvalid ,
	output wire  in_0_arg_166_tready,
	//
	input wire [512-1:0] in_0_arg_167_tdata ,
	input wire [64-1:0] in_0_arg_167_tkeep ,
	input wire  in_0_arg_167_tlast ,
	input wire  in_0_arg_167_tvalid ,
	output wire  in_0_arg_167_tready,
	//
	input wire [160-1:0] in_0_arg_168_tdata ,
	input wire  in_0_arg_168_tvalid ,
	output wire  in_0_arg_168_tready,
	//
	input wire [32-1:0] in_0_arg_169_tdata ,
	input wire  in_0_arg_169_tvalid ,
	output wire  in_0_arg_169_tready,
	//
	input wire [224-1:0] in_0_arg_170_tdata ,
	input wire  in_0_arg_170_tvalid ,
	output wire  in_0_arg_170_tready,
	//
	output wire [32-1:0] out_0_arg_162_tdata ,
	output wire  out_0_arg_162_tvalid ,
	input wire  out_0_arg_162_tready,
	//
	output wire [32-1:0] out_0_arg_163_tdata ,
	output wire  out_0_arg_163_tvalid ,
	input wire  out_0_arg_163_tready,
	//
	output wire [32-1:0] out_0_arg_164_tdata ,
	output wire  out_0_arg_164_tvalid ,
	input wire  out_0_arg_164_tready,
	//
	output wire [32-1:0] out_0_arg_165_tdata ,
	output wire  out_0_arg_165_tvalid ,
	input wire  out_0_arg_165_tready,
	//
	output wire [32-1:0] out_0_arg_166_tdata ,
	output wire  out_0_arg_166_tvalid ,
	input wire  out_0_arg_166_tready,
	//
	output wire [512-1:0] out_0_arg_167_tdata ,
	output wire [64-1:0] out_0_arg_167_tkeep ,
	output wire  out_0_arg_167_tlast ,
	output wire  out_0_arg_167_tvalid ,
	input wire  out_0_arg_167_tready,
	//
	output wire [160-1:0] out_0_arg_168_tdata ,
	output wire  out_0_arg_168_tvalid ,
	input wire  out_0_arg_168_tready,
	//
	output wire [32-1:0] out_0_arg_169_tdata ,
	output wire  out_0_arg_169_tvalid ,
	input wire  out_0_arg_169_tready,
	//
	output wire [224-1:0] out_0_arg_170_tdata ,
	output wire  out_0_arg_170_tvalid ,
	input wire  out_0_arg_170_tready
);
//barrier bits
 wire [9-1:0]barriers_322;

barrier_queue#(
.DATA_WIDTH(32),
.KEEP_ENABLE (0)
)barrier_queue_323(
	 .clk(clk), 
	 .rst(rst) ,
	//src wire
	.s_in_tdata({in_0_arg_162_tdata}),
	.s_in_tvalid({in_0_arg_162_tvalid}),
	.s_in_tready({in_0_arg_162_tready}),
	//dst wire
	.m_out_tdata({out_0_arg_162_tdata}),
	.m_out_tvalid({out_0_arg_162_tvalid}),
	.m_out_tready({out_0_arg_162_tready}),
	//barrier bits
	.barrier({barriers_322[0]})
);

//increase counter
 wire [1-1:0]inc_324=(in_0_arg_162_tready && in_0_arg_162_tvalid);

//decrease counter
 wire [1-1:0]dec_325=(out_0_arg_162_tready && out_0_arg_162_tvalid);

barrier_queue#(
.DATA_WIDTH(32),
.KEEP_ENABLE (0)
)barrier_queue_326(
	 .clk(clk), 
	 .rst(rst) ,
	//src wire
	.s_in_tdata({in_0_arg_163_tdata}),
	.s_in_tvalid({in_0_arg_163_tvalid}),
	.s_in_tready({in_0_arg_163_tready}),
	//dst wire
	.m_out_tdata({out_0_arg_163_tdata}),
	.m_out_tvalid({out_0_arg_163_tvalid}),
	.m_out_tready({out_0_arg_163_tready}),
	//barrier bits
	.barrier({barriers_322[1]})
);

//increase counter
 wire [1-1:0]inc_327=(in_0_arg_163_tready && in_0_arg_163_tvalid);

//decrease counter
 wire [1-1:0]dec_328=(out_0_arg_163_tready && out_0_arg_163_tvalid);

barrier_queue#(
.DATA_WIDTH(32),
.KEEP_ENABLE (0)
)barrier_queue_329(
	 .clk(clk), 
	 .rst(rst) ,
	//src wire
	.s_in_tdata({in_0_arg_164_tdata}),
	.s_in_tvalid({in_0_arg_164_tvalid}),
	.s_in_tready({in_0_arg_164_tready}),
	//dst wire
	.m_out_tdata({out_0_arg_164_tdata}),
	.m_out_tvalid({out_0_arg_164_tvalid}),
	.m_out_tready({out_0_arg_164_tready}),
	//barrier bits
	.barrier({barriers_322[2]})
);

//increase counter
 wire [1-1:0]inc_330=(in_0_arg_164_tready && in_0_arg_164_tvalid);

//decrease counter
 wire [1-1:0]dec_331=(out_0_arg_164_tready && out_0_arg_164_tvalid);

barrier_queue#(
.DATA_WIDTH(32),
.KEEP_ENABLE (0)
)barrier_queue_332(
	 .clk(clk), 
	 .rst(rst) ,
	//src wire
	.s_in_tdata({in_0_arg_165_tdata}),
	.s_in_tvalid({in_0_arg_165_tvalid}),
	.s_in_tready({in_0_arg_165_tready}),
	//dst wire
	.m_out_tdata({out_0_arg_165_tdata}),
	.m_out_tvalid({out_0_arg_165_tvalid}),
	.m_out_tready({out_0_arg_165_tready}),
	//barrier bits
	.barrier({barriers_322[3]})
);

//increase counter
 wire [1-1:0]inc_333=(in_0_arg_165_tready && in_0_arg_165_tvalid);

//decrease counter
 wire [1-1:0]dec_334=(out_0_arg_165_tready && out_0_arg_165_tvalid);

barrier_queue#(
.DATA_WIDTH(32),
.KEEP_ENABLE (0)
)barrier_queue_335(
	 .clk(clk), 
	 .rst(rst) ,
	//src wire
	.s_in_tdata({in_0_arg_166_tdata}),
	.s_in_tvalid({in_0_arg_166_tvalid}),
	.s_in_tready({in_0_arg_166_tready}),
	//dst wire
	.m_out_tdata({out_0_arg_166_tdata}),
	.m_out_tvalid({out_0_arg_166_tvalid}),
	.m_out_tready({out_0_arg_166_tready}),
	//barrier bits
	.barrier({barriers_322[4]})
);

//increase counter
 wire [1-1:0]inc_336=(in_0_arg_166_tready && in_0_arg_166_tvalid);

//decrease counter
 wire [1-1:0]dec_337=(out_0_arg_166_tready && out_0_arg_166_tvalid);

barrier_queue#(
.DATA_WIDTH(512),
.KEEP_ENABLE (1)
)barrier_queue_338(
	 .clk(clk), 
	 .rst(rst) ,
	//src wire
	.s_in_tdata({in_0_arg_167_tdata}),
	.s_in_tkeep({in_0_arg_167_tkeep}),
	.s_in_tlast({in_0_arg_167_tlast}),
	.s_in_tvalid({in_0_arg_167_tvalid}),
	.s_in_tready({in_0_arg_167_tready}),
	//dst wire
	.m_out_tdata({out_0_arg_167_tdata}),
	.m_out_tkeep({out_0_arg_167_tkeep}),
	.m_out_tlast({out_0_arg_167_tlast}),
	.m_out_tvalid({out_0_arg_167_tvalid}),
	.m_out_tready({out_0_arg_167_tready}),
	//barrier bits
	.barrier({barriers_322[5]})
);

//increase counter
 wire [1-1:0]inc_339=(in_0_arg_167_tready && in_0_arg_167_tvalid);

//decrease counter
 wire [1-1:0]dec_340=(out_0_arg_167_tready && out_0_arg_167_tvalid);

barrier_queue#(
.DATA_WIDTH(160),
.KEEP_ENABLE (0)
)barrier_queue_341(
	 .clk(clk), 
	 .rst(rst) ,
	//src wire
	.s_in_tdata({in_0_arg_168_tdata}),
	.s_in_tvalid({in_0_arg_168_tvalid}),
	.s_in_tready({in_0_arg_168_tready}),
	//dst wire
	.m_out_tdata({out_0_arg_168_tdata}),
	.m_out_tvalid({out_0_arg_168_tvalid}),
	.m_out_tready({out_0_arg_168_tready}),
	//barrier bits
	.barrier({barriers_322[6]})
);

//increase counter
 wire [1-1:0]inc_342=(in_0_arg_168_tready && in_0_arg_168_tvalid);

//decrease counter
 wire [1-1:0]dec_343=(out_0_arg_168_tready && out_0_arg_168_tvalid);

barrier_queue#(
.DATA_WIDTH(32),
.KEEP_ENABLE (0)
)barrier_queue_344(
	 .clk(clk), 
	 .rst(rst) ,
	//src wire
	.s_in_tdata({in_0_arg_169_tdata}),
	.s_in_tvalid({in_0_arg_169_tvalid}),
	.s_in_tready({in_0_arg_169_tready}),
	//dst wire
	.m_out_tdata({out_0_arg_169_tdata}),
	.m_out_tvalid({out_0_arg_169_tvalid}),
	.m_out_tready({out_0_arg_169_tready}),
	//barrier bits
	.barrier({barriers_322[7]})
);

//increase counter
 wire [1-1:0]inc_345=(in_0_arg_169_tready && in_0_arg_169_tvalid);

//decrease counter
 wire [1-1:0]dec_346=(out_0_arg_169_tready && out_0_arg_169_tvalid);

barrier_queue#(
.DATA_WIDTH(224),
.KEEP_ENABLE (0)
)barrier_queue_347(
	 .clk(clk), 
	 .rst(rst) ,
	//src wire
	.s_in_tdata({in_0_arg_170_tdata}),
	.s_in_tvalid({in_0_arg_170_tvalid}),
	.s_in_tready({in_0_arg_170_tready}),
	//dst wire
	.m_out_tdata({out_0_arg_170_tdata}),
	.m_out_tvalid({out_0_arg_170_tvalid}),
	.m_out_tready({out_0_arg_170_tready}),
	//barrier bits
	.barrier({barriers_322[8]})
);

//increase counter
 wire [1-1:0]inc_348=(in_0_arg_170_tready && in_0_arg_170_tvalid);

//decrease counter
 wire [1-1:0]dec_349=(out_0_arg_170_tready && out_0_arg_170_tvalid);

ctrl_barrier#(
.PORT_COUNT(9)
)ctrl_barrier_350(
	 .clk(clk), 
	 .rst(rst) ,
	//inc wire
	.s_inc({inc_348,inc_345,inc_342,inc_339,inc_336,inc_333,inc_330,inc_327,inc_324}),
	//desc wire
	.s_dec({dec_349,dec_346,dec_343,dec_340,dec_337,dec_334,dec_331,dec_328,dec_325}),
	//barriers
	.ctrl_barrier({barriers_322})
);


endmodule
