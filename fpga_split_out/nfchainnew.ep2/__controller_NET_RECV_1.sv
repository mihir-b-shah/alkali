module __controller_NET_RECV_1#()
(
	 input  wire clk, 
	 input  wire rst,
	//
	input wire [32-1:0] in_0_arg_99_tdata ,
	input wire  in_0_arg_99_tvalid ,
	output wire  in_0_arg_99_tready,
	//
	input wire [32-1:0] in_0_arg_100_tdata ,
	input wire  in_0_arg_100_tvalid ,
	output wire  in_0_arg_100_tready,
	//
	input wire [32-1:0] in_0_arg_101_tdata ,
	input wire  in_0_arg_101_tvalid ,
	output wire  in_0_arg_101_tready,
	//
	input wire [32-1:0] in_0_arg_102_tdata ,
	input wire  in_0_arg_102_tvalid ,
	output wire  in_0_arg_102_tready,
	//
	input wire [32-1:0] in_0_arg_103_tdata ,
	input wire  in_0_arg_103_tvalid ,
	output wire  in_0_arg_103_tready,
	//
	input wire [32-1:0] in_0_arg_104_tdata ,
	input wire  in_0_arg_104_tvalid ,
	output wire  in_0_arg_104_tready,
	//
	input wire [32-1:0] in_0_arg_105_tdata ,
	input wire  in_0_arg_105_tvalid ,
	output wire  in_0_arg_105_tready,
	//
	input wire [160-1:0] in_0_arg_106_tdata ,
	input wire  in_0_arg_106_tvalid ,
	output wire  in_0_arg_106_tready,
	//
	input wire [512-1:0] in_0_arg_107_tdata ,
	input wire [64-1:0] in_0_arg_107_tkeep ,
	input wire  in_0_arg_107_tlast ,
	input wire  in_0_arg_107_tvalid ,
	output wire  in_0_arg_107_tready,
	//
	input wire [32-1:0] in_0_arg_108_tdata ,
	input wire  in_0_arg_108_tvalid ,
	output wire  in_0_arg_108_tready,
	//
	output wire [32-1:0] out_0_arg_99_tdata ,
	output wire  out_0_arg_99_tvalid ,
	input wire  out_0_arg_99_tready,
	//
	output wire [32-1:0] out_0_arg_100_tdata ,
	output wire  out_0_arg_100_tvalid ,
	input wire  out_0_arg_100_tready,
	//
	output wire [32-1:0] out_0_arg_101_tdata ,
	output wire  out_0_arg_101_tvalid ,
	input wire  out_0_arg_101_tready,
	//
	output wire [32-1:0] out_0_arg_102_tdata ,
	output wire  out_0_arg_102_tvalid ,
	input wire  out_0_arg_102_tready,
	//
	output wire [32-1:0] out_0_arg_103_tdata ,
	output wire  out_0_arg_103_tvalid ,
	input wire  out_0_arg_103_tready,
	//
	output wire [32-1:0] out_0_arg_104_tdata ,
	output wire  out_0_arg_104_tvalid ,
	input wire  out_0_arg_104_tready,
	//
	output wire [32-1:0] out_0_arg_105_tdata ,
	output wire  out_0_arg_105_tvalid ,
	input wire  out_0_arg_105_tready,
	//
	output wire [160-1:0] out_0_arg_106_tdata ,
	output wire  out_0_arg_106_tvalid ,
	input wire  out_0_arg_106_tready,
	//
	output wire [512-1:0] out_0_arg_107_tdata ,
	output wire [64-1:0] out_0_arg_107_tkeep ,
	output wire  out_0_arg_107_tlast ,
	output wire  out_0_arg_107_tvalid ,
	input wire  out_0_arg_107_tready,
	//
	output wire [32-1:0] out_0_arg_108_tdata ,
	output wire  out_0_arg_108_tvalid ,
	input wire  out_0_arg_108_tready
);
//barrier bits
 wire [10-1:0]barriers_261;

barrier_queue#(
.DATA_WIDTH(32),
.KEEP_ENABLE (0)
)barrier_queue_262(
	 .clk(clk), 
	 .rst(rst) ,
	//src wire
	.s_in_tdata({in_0_arg_99_tdata}),
	.s_in_tvalid({in_0_arg_99_tvalid}),
	.s_in_tready({in_0_arg_99_tready}),
	//dst wire
	.m_out_tdata({out_0_arg_99_tdata}),
	.m_out_tvalid({out_0_arg_99_tvalid}),
	.m_out_tready({out_0_arg_99_tready}),
	//barrier bits
	.barrier({barriers_261[0]})
);

//increase counter
 wire [1-1:0]inc_263=(in_0_arg_99_tready && in_0_arg_99_tvalid);

//decrease counter
 wire [1-1:0]dec_264=(out_0_arg_99_tready && out_0_arg_99_tvalid);

barrier_queue#(
.DATA_WIDTH(32),
.KEEP_ENABLE (0)
)barrier_queue_265(
	 .clk(clk), 
	 .rst(rst) ,
	//src wire
	.s_in_tdata({in_0_arg_100_tdata}),
	.s_in_tvalid({in_0_arg_100_tvalid}),
	.s_in_tready({in_0_arg_100_tready}),
	//dst wire
	.m_out_tdata({out_0_arg_100_tdata}),
	.m_out_tvalid({out_0_arg_100_tvalid}),
	.m_out_tready({out_0_arg_100_tready}),
	//barrier bits
	.barrier({barriers_261[1]})
);

//increase counter
 wire [1-1:0]inc_266=(in_0_arg_100_tready && in_0_arg_100_tvalid);

//decrease counter
 wire [1-1:0]dec_267=(out_0_arg_100_tready && out_0_arg_100_tvalid);

barrier_queue#(
.DATA_WIDTH(32),
.KEEP_ENABLE (0)
)barrier_queue_268(
	 .clk(clk), 
	 .rst(rst) ,
	//src wire
	.s_in_tdata({in_0_arg_101_tdata}),
	.s_in_tvalid({in_0_arg_101_tvalid}),
	.s_in_tready({in_0_arg_101_tready}),
	//dst wire
	.m_out_tdata({out_0_arg_101_tdata}),
	.m_out_tvalid({out_0_arg_101_tvalid}),
	.m_out_tready({out_0_arg_101_tready}),
	//barrier bits
	.barrier({barriers_261[2]})
);

//increase counter
 wire [1-1:0]inc_269=(in_0_arg_101_tready && in_0_arg_101_tvalid);

//decrease counter
 wire [1-1:0]dec_270=(out_0_arg_101_tready && out_0_arg_101_tvalid);

barrier_queue#(
.DATA_WIDTH(32),
.KEEP_ENABLE (0)
)barrier_queue_271(
	 .clk(clk), 
	 .rst(rst) ,
	//src wire
	.s_in_tdata({in_0_arg_102_tdata}),
	.s_in_tvalid({in_0_arg_102_tvalid}),
	.s_in_tready({in_0_arg_102_tready}),
	//dst wire
	.m_out_tdata({out_0_arg_102_tdata}),
	.m_out_tvalid({out_0_arg_102_tvalid}),
	.m_out_tready({out_0_arg_102_tready}),
	//barrier bits
	.barrier({barriers_261[3]})
);

//increase counter
 wire [1-1:0]inc_272=(in_0_arg_102_tready && in_0_arg_102_tvalid);

//decrease counter
 wire [1-1:0]dec_273=(out_0_arg_102_tready && out_0_arg_102_tvalid);

barrier_queue#(
.DATA_WIDTH(32),
.KEEP_ENABLE (0)
)barrier_queue_274(
	 .clk(clk), 
	 .rst(rst) ,
	//src wire
	.s_in_tdata({in_0_arg_103_tdata}),
	.s_in_tvalid({in_0_arg_103_tvalid}),
	.s_in_tready({in_0_arg_103_tready}),
	//dst wire
	.m_out_tdata({out_0_arg_103_tdata}),
	.m_out_tvalid({out_0_arg_103_tvalid}),
	.m_out_tready({out_0_arg_103_tready}),
	//barrier bits
	.barrier({barriers_261[4]})
);

//increase counter
 wire [1-1:0]inc_275=(in_0_arg_103_tready && in_0_arg_103_tvalid);

//decrease counter
 wire [1-1:0]dec_276=(out_0_arg_103_tready && out_0_arg_103_tvalid);

barrier_queue#(
.DATA_WIDTH(32),
.KEEP_ENABLE (0)
)barrier_queue_277(
	 .clk(clk), 
	 .rst(rst) ,
	//src wire
	.s_in_tdata({in_0_arg_104_tdata}),
	.s_in_tvalid({in_0_arg_104_tvalid}),
	.s_in_tready({in_0_arg_104_tready}),
	//dst wire
	.m_out_tdata({out_0_arg_104_tdata}),
	.m_out_tvalid({out_0_arg_104_tvalid}),
	.m_out_tready({out_0_arg_104_tready}),
	//barrier bits
	.barrier({barriers_261[5]})
);

//increase counter
 wire [1-1:0]inc_278=(in_0_arg_104_tready && in_0_arg_104_tvalid);

//decrease counter
 wire [1-1:0]dec_279=(out_0_arg_104_tready && out_0_arg_104_tvalid);

barrier_queue#(
.DATA_WIDTH(32),
.KEEP_ENABLE (0)
)barrier_queue_280(
	 .clk(clk), 
	 .rst(rst) ,
	//src wire
	.s_in_tdata({in_0_arg_105_tdata}),
	.s_in_tvalid({in_0_arg_105_tvalid}),
	.s_in_tready({in_0_arg_105_tready}),
	//dst wire
	.m_out_tdata({out_0_arg_105_tdata}),
	.m_out_tvalid({out_0_arg_105_tvalid}),
	.m_out_tready({out_0_arg_105_tready}),
	//barrier bits
	.barrier({barriers_261[6]})
);

//increase counter
 wire [1-1:0]inc_281=(in_0_arg_105_tready && in_0_arg_105_tvalid);

//decrease counter
 wire [1-1:0]dec_282=(out_0_arg_105_tready && out_0_arg_105_tvalid);

barrier_queue#(
.DATA_WIDTH(160),
.KEEP_ENABLE (0)
)barrier_queue_283(
	 .clk(clk), 
	 .rst(rst) ,
	//src wire
	.s_in_tdata({in_0_arg_106_tdata}),
	.s_in_tvalid({in_0_arg_106_tvalid}),
	.s_in_tready({in_0_arg_106_tready}),
	//dst wire
	.m_out_tdata({out_0_arg_106_tdata}),
	.m_out_tvalid({out_0_arg_106_tvalid}),
	.m_out_tready({out_0_arg_106_tready}),
	//barrier bits
	.barrier({barriers_261[7]})
);

//increase counter
 wire [1-1:0]inc_284=(in_0_arg_106_tready && in_0_arg_106_tvalid);

//decrease counter
 wire [1-1:0]dec_285=(out_0_arg_106_tready && out_0_arg_106_tvalid);

barrier_queue#(
.DATA_WIDTH(512),
.KEEP_ENABLE (1)
)barrier_queue_286(
	 .clk(clk), 
	 .rst(rst) ,
	//src wire
	.s_in_tdata({in_0_arg_107_tdata}),
	.s_in_tkeep({in_0_arg_107_tkeep}),
	.s_in_tlast({in_0_arg_107_tlast}),
	.s_in_tvalid({in_0_arg_107_tvalid}),
	.s_in_tready({in_0_arg_107_tready}),
	//dst wire
	.m_out_tdata({out_0_arg_107_tdata}),
	.m_out_tkeep({out_0_arg_107_tkeep}),
	.m_out_tlast({out_0_arg_107_tlast}),
	.m_out_tvalid({out_0_arg_107_tvalid}),
	.m_out_tready({out_0_arg_107_tready}),
	//barrier bits
	.barrier({barriers_261[8]})
);

//increase counter
 wire [1-1:0]inc_287=(in_0_arg_107_tready && in_0_arg_107_tvalid);

//decrease counter
 wire [1-1:0]dec_288=(out_0_arg_107_tready && out_0_arg_107_tvalid);

barrier_queue#(
.DATA_WIDTH(32),
.KEEP_ENABLE (0)
)barrier_queue_289(
	 .clk(clk), 
	 .rst(rst) ,
	//src wire
	.s_in_tdata({in_0_arg_108_tdata}),
	.s_in_tvalid({in_0_arg_108_tvalid}),
	.s_in_tready({in_0_arg_108_tready}),
	//dst wire
	.m_out_tdata({out_0_arg_108_tdata}),
	.m_out_tvalid({out_0_arg_108_tvalid}),
	.m_out_tready({out_0_arg_108_tready}),
	//barrier bits
	.barrier({barriers_261[9]})
);

//increase counter
 wire [1-1:0]inc_290=(in_0_arg_108_tready && in_0_arg_108_tvalid);

//decrease counter
 wire [1-1:0]dec_291=(out_0_arg_108_tready && out_0_arg_108_tvalid);

ctrl_barrier#(
.PORT_COUNT(10)
)ctrl_barrier_292(
	 .clk(clk), 
	 .rst(rst) ,
	//inc wire
	.s_inc({inc_290,inc_287,inc_284,inc_281,inc_278,inc_275,inc_272,inc_269,inc_266,inc_263}),
	//desc wire
	.s_dec({dec_291,dec_288,dec_285,dec_282,dec_279,dec_276,dec_273,dec_270,dec_267,dec_264}),
	//barriers
	.ctrl_barrier({barriers_261})
);


endmodule
