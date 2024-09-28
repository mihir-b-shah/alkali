module __handler_NET_RECV_1_process_packet#()
(
	 input  wire clk, 
	 input  wire rst,
	//input ports INT
	input wire [32-1:0] arg_99_tdata ,
	input wire  arg_99_tvalid ,
	output wire  arg_99_tready,
	//input ports INT
	input wire [32-1:0] arg_100_tdata ,
	input wire  arg_100_tvalid ,
	output wire  arg_100_tready,
	//input ports INT
	input wire [32-1:0] arg_101_tdata ,
	input wire  arg_101_tvalid ,
	output wire  arg_101_tready,
	//input ports INT
	input wire [32-1:0] arg_102_tdata ,
	input wire  arg_102_tvalid ,
	output wire  arg_102_tready,
	//input ports INT
	input wire [32-1:0] arg_103_tdata ,
	input wire  arg_103_tvalid ,
	output wire  arg_103_tready,
	//input ports INT
	input wire [32-1:0] arg_104_tdata ,
	input wire  arg_104_tvalid ,
	output wire  arg_104_tready,
	//input ports INT
	input wire [32-1:0] arg_105_tdata ,
	input wire  arg_105_tvalid ,
	output wire  arg_105_tready,
	//input ports STRUCT
	input wire [160-1:0] arg_106_tdata ,
	input wire  arg_106_tvalid ,
	output wire  arg_106_tready,
	//input ports BUF
	input wire [512-1:0] arg_107_tdata ,
	input wire [64-1:0] arg_107_tkeep ,
	input wire  arg_107_tlast ,
	input wire  arg_107_tvalid ,
	output wire  arg_107_tready,
	//input ports INT
	input wire [32-1:0] arg_108_tdata ,
	input wire  arg_108_tvalid ,
	output wire  arg_108_tready,
	//output ports INT
	output wire [32-1:0] outport_109_0_tdata ,
	output wire  outport_109_0_tvalid ,
	input wire  outport_109_0_tready,
	//output ports BUF
	output wire [512-1:0] outport_109_1_tdata ,
	output wire [64-1:0] outport_109_1_tkeep ,
	output wire  outport_109_1_tlast ,
	output wire  outport_109_1_tvalid ,
	input wire  outport_109_1_tready,
	//output ports INT
	output wire [32-1:0] outport_109_2_tdata ,
	output wire  outport_109_2_tvalid ,
	input wire  outport_109_2_tready,
	//output ports INT
	output wire [32-1:0] outport_109_3_tdata ,
	output wire  outport_109_3_tvalid ,
	input wire  outport_109_3_tready,
	//output ports INT
	output wire [32-1:0] outport_109_4_tdata ,
	output wire  outport_109_4_tvalid ,
	input wire  outport_109_4_tready,
	//output ports INT
	output wire [32-1:0] outport_109_5_tdata ,
	output wire  outport_109_5_tvalid ,
	input wire  outport_109_5_tready,
	//output ports INT
	output wire [32-1:0] outport_109_6_tdata ,
	output wire  outport_109_6_tvalid ,
	input wire  outport_109_6_tready,
	//output ports INT
	output wire [32-1:0] outport_109_7_tdata ,
	output wire  outport_109_7_tvalid ,
	input wire  outport_109_7_tready,
	//output ports STRUCT
	output wire [160-1:0] outport_109_8_tdata ,
	output wire  outport_109_8_tvalid ,
	input wire  outport_109_8_tready
);
//
 wire [32-1:0] arg_103_0_tdata;
 wire  arg_103_0_tvalid;
 wire  arg_103_0_tready;

//
 wire [32-1:0] arg_103_1_tdata;
 wire  arg_103_1_tvalid;
 wire  arg_103_1_tready;

axis_replication#(
.DATA_WIDTH(32),
.IF_STREAM(0),
.REAPLICA_COUNT(2)
)axis_replication_110(
	 .clk(clk), 
	 .rst(rst) ,
	//
	.s_axis_in_tdata({arg_103_tdata}),
	.s_axis_in_tvalid({arg_103_tvalid}),
	.s_axis_in_tready({arg_103_tready}),
	//
	.m_axis_out_tdata({arg_103_0_tdata,arg_103_1_tdata}),
	.m_axis_out_tvalid({arg_103_0_tvalid,arg_103_1_tvalid}),
	.m_axis_out_tready({arg_103_0_tready,arg_103_1_tready})
);

//
 wire [160-1:0] arg_106_0_tdata;
 wire  arg_106_0_tvalid;
 wire  arg_106_0_tready;

//
 wire [160-1:0] arg_106_1_tdata;
 wire  arg_106_1_tvalid;
 wire  arg_106_1_tready;

axis_replication#(
.DATA_WIDTH(160),
.IF_STREAM(0),
.REAPLICA_COUNT(2)
)axis_replication_111(
	 .clk(clk), 
	 .rst(rst) ,
	//
	.s_axis_in_tdata({arg_106_tdata}),
	.s_axis_in_tvalid({arg_106_tvalid}),
	.s_axis_in_tready({arg_106_tready}),
	//
	.m_axis_out_tdata({arg_106_0_tdata,arg_106_1_tdata}),
	.m_axis_out_tvalid({arg_106_0_tvalid,arg_106_1_tvalid}),
	.m_axis_out_tready({arg_106_0_tready,arg_106_1_tready})
);

//Access Struct
 wire [16-1:0] struct_accessed_INT_113_tdata;
 wire  struct_accessed_INT_113_tvalid;
 wire  struct_accessed_INT_113_tready;

struct_access#(
.STRUCT_WIDTH(160),
.ACCESS_OFFSET(128),
.ACCESS_SIZE(16)
)struct_access_112(
	 .clk(clk), 
	 .rst(rst) ,
	//struct input
	.s_struct_axis_tdata({arg_106_0_tdata}),
	.s_struct_axis_tvalid({arg_106_0_tvalid}),
	.s_struct_axis_tready({arg_106_0_tready}),
	//output val
	.m_val_axis_tdata({struct_accessed_INT_113_tdata}),
	.m_val_axis_tvalid({struct_accessed_INT_113_tvalid}),
	.m_val_axis_tready({struct_accessed_INT_113_tready})
);

//Arithmetic OP Out
 wire [32-1:0] ADD_114_out_INT_115_tdata;
 wire  ADD_114_out_INT_115_tvalid;
 wire  ADD_114_out_INT_115_tready;

ALU#(
.LVAL_SIZE(32),
.RVAL_SIZE(16),
.RESULT_SIZE(32),
.OPID(1)
)ADD_114(
	 .clk(clk), 
	 .rst(rst) ,
	//lval input
	.s_lval_axis_tdata({arg_101_tdata}),
	.s_lval_axis_tvalid({arg_101_tvalid}),
	.s_lval_axis_tready({arg_101_tready}),
	//rval input
	.s_rval_axis_tdata({struct_accessed_INT_113_tdata}),
	.s_rval_axis_tvalid({struct_accessed_INT_113_tvalid}),
	.s_rval_axis_tready({struct_accessed_INT_113_tready}),
	//output val
	.m_val_axis_tdata({ADD_114_out_INT_115_tdata}),
	.m_val_axis_tvalid({ADD_114_out_INT_115_tvalid}),
	.m_val_axis_tready({ADD_114_out_INT_115_tready})
);

//Table lookup port wire def 
 wire [32-1:0] table_116_lookup_p_0_req_index;
 wire  table_116_lookup_p_0_req_valid;
 wire  table_116_lookup_p_0_req_ready;
 wire  table_116_lookup_p_0_value_valid;
 wire  table_116_lookup_p_0_value_ready;
 wire [96-1:0] table_116_lookup_p_0_value_data;

//Table update port wire def 
 wire [32-1:0] table_116_update_p_0_req_index;
 wire  table_116_update_p_0_req_index_valid;
 wire  table_116_update_p_0_req_index_ready;
 wire [96-1:0] table_116_update_p_0_req_data;
 wire  table_116_update_p_0_req_data_valid;
 wire  table_116_update_p_0_req_data_ready;

cam_arbiter#(
.TABLE_SIZE(64),
.KEY_SIZE(32),
.VALUE_SIZE(96),
.LOOKUP_PORTS(1),
.UPDATE_PORTS(1)
)table_116(
	 .clk(clk), 
	 .rst(rst) ,
	//lookup port 
	.s_lookup_req_index({table_116_lookup_p_0_req_index}),
	.s_lookup_req_valid({table_116_lookup_p_0_req_valid}),
	.s_lookup_req_ready({table_116_lookup_p_0_req_ready}),
	.s_lookup_value_valid({table_116_lookup_p_0_value_valid}),
	.s_lookup_value_data({table_116_lookup_p_0_value_data}),
	.s_lookup_value_ready({table_116_lookup_p_0_value_ready}),
	//update port 
	.s_update_req_index({table_116_update_p_0_req_index}),
	.s_update_req_index_valid({table_116_update_p_0_req_index_valid}),
	.s_update_req_index_ready({table_116_update_p_0_req_index_ready}),
	.s_update_req_data({table_116_update_p_0_req_data}),
	.s_update_req_data_valid({table_116_update_p_0_req_data_valid}),
	.s_update_req_data_ready({table_116_update_p_0_req_data_ready})
);

 assign table_116_lookup_p_0_req_index = arg_103_0_tdata;
 assign table_116_lookup_p_0_req_valid = arg_103_0_tvalid;
 assign arg_103_0_tready = table_116_lookup_p_0_req_ready;

//table lookup resultlookedup_STRUCT_117
 wire [96-1:0] lookedup_STRUCT_117_tdata;
 wire  lookedup_STRUCT_117_tvalid;
 wire  lookedup_STRUCT_117_tready;

//table lookup resultlookedup_STRUCT_117
 wire [96-1:0] lookedup_STRUCT_117_0_tdata;
 wire  lookedup_STRUCT_117_0_tvalid;
 wire  lookedup_STRUCT_117_0_tready;

//table lookup resultlookedup_STRUCT_117
 wire [96-1:0] lookedup_STRUCT_117_1_tdata;
 wire  lookedup_STRUCT_117_1_tvalid;
 wire  lookedup_STRUCT_117_1_tready;

axis_replication#(
.DATA_WIDTH(96),
.IF_STREAM(0),
.REAPLICA_COUNT(2)
)axis_replication_118(
	 .clk(clk), 
	 .rst(rst) ,
	//
	.s_axis_in_tdata({lookedup_STRUCT_117_tdata}),
	.s_axis_in_tvalid({lookedup_STRUCT_117_tvalid}),
	.s_axis_in_tready({lookedup_STRUCT_117_tready}),
	//
	.m_axis_out_tdata({lookedup_STRUCT_117_0_tdata,lookedup_STRUCT_117_1_tdata}),
	.m_axis_out_tvalid({lookedup_STRUCT_117_0_tvalid,lookedup_STRUCT_117_1_tvalid}),
	.m_axis_out_tready({lookedup_STRUCT_117_0_tready,lookedup_STRUCT_117_1_tready})
);

 assign lookedup_STRUCT_117_tdata = table_116_lookup_p_0_value_data;
 assign lookedup_STRUCT_117_tvalid = table_116_lookup_p_0_value_valid;
 assign table_116_lookup_p_0_value_ready = lookedup_STRUCT_117_tready;

//Access Struct
 wire [32-1:0] struct_accessed_INT_120_tdata;
 wire  struct_accessed_INT_120_tvalid;
 wire  struct_accessed_INT_120_tready;

struct_access#(
.STRUCT_WIDTH(96),
.ACCESS_OFFSET(0),
.ACCESS_SIZE(32)
)struct_access_119(
	 .clk(clk), 
	 .rst(rst) ,
	//struct input
	.s_struct_axis_tdata({lookedup_STRUCT_117_0_tdata}),
	.s_struct_axis_tvalid({lookedup_STRUCT_117_0_tvalid}),
	.s_struct_axis_tready({lookedup_STRUCT_117_0_tready}),
	//output val
	.m_val_axis_tdata({struct_accessed_INT_120_tdata}),
	.m_val_axis_tvalid({struct_accessed_INT_120_tvalid}),
	.m_val_axis_tready({struct_accessed_INT_120_tready})
);

//Arithmetic OP Out
 wire [32-1:0] SUB_121_out_INT_122_tdata;
 wire  SUB_121_out_INT_122_tvalid;
 wire  SUB_121_out_INT_122_tready;

ALU#(
.LVAL_SIZE(32),
.RVAL_SIZE(32),
.RESULT_SIZE(32),
.OPID(0)
)SUB_121(
	 .clk(clk), 
	 .rst(rst) ,
	//lval input
	.s_lval_axis_tdata({struct_accessed_INT_120_tdata}),
	.s_lval_axis_tvalid({struct_accessed_INT_120_tvalid}),
	.s_lval_axis_tready({struct_accessed_INT_120_tready}),
	//rval input
	.s_rval_axis_tdata({arg_108_tdata}),
	.s_rval_axis_tvalid({arg_108_tvalid}),
	.s_rval_axis_tready({arg_108_tready}),
	//output val
	.m_val_axis_tdata({SUB_121_out_INT_122_tdata}),
	.m_val_axis_tvalid({SUB_121_out_INT_122_tvalid}),
	.m_val_axis_tready({SUB_121_out_INT_122_tready})
);

//struct_assign_123 output struct
 wire [96-1:0] structvar_124_tdata;
 wire  structvar_124_tvalid;
 wire  structvar_124_tready;

//struct_assign_123 output struct
 wire [96-1:0] structvar_124_0_tdata;
 wire  structvar_124_0_tvalid;
 wire  structvar_124_0_tready;

//struct_assign_123 output struct
 wire [96-1:0] structvar_124_1_tdata;
 wire  structvar_124_1_tvalid;
 wire  structvar_124_1_tready;

//struct_assign_123 output struct
 wire [96-1:0] structvar_124_2_tdata;
 wire  structvar_124_2_tvalid;
 wire  structvar_124_2_tready;

axis_replication#(
.DATA_WIDTH(96),
.IF_STREAM(0),
.REAPLICA_COUNT(3)
)axis_replication_125(
	 .clk(clk), 
	 .rst(rst) ,
	//
	.s_axis_in_tdata({structvar_124_tdata}),
	.s_axis_in_tvalid({structvar_124_tvalid}),
	.s_axis_in_tready({structvar_124_tready}),
	//
	.m_axis_out_tdata({structvar_124_0_tdata,structvar_124_1_tdata,structvar_124_2_tdata}),
	.m_axis_out_tvalid({structvar_124_0_tvalid,structvar_124_1_tvalid,structvar_124_2_tvalid}),
	.m_axis_out_tready({structvar_124_0_tready,structvar_124_1_tready,structvar_124_2_tready})
);

struct_assign#(
.STRUCT_WIDTH(96),
.ASSIGN_OFFSET(0),
.ASSIGN_SIZE(32)
)struct_assign_123(
	 .clk(clk), 
	 .rst(rst) ,
	//input struct
	.s_struct_axis_tdata({lookedup_STRUCT_117_1_tdata}),
	.s_struct_axis_tvalid({lookedup_STRUCT_117_1_tvalid}),
	.s_struct_axis_tready({lookedup_STRUCT_117_1_tready}),
	//input val
	.s_assignv_axis_tdata({SUB_121_out_INT_122_tdata}),
	.s_assignv_axis_tvalid({SUB_121_out_INT_122_tvalid}),
	.s_assignv_axis_tready({SUB_121_out_INT_122_tready}),
	//output struct
	.m_struct_axis_tdata({structvar_124_tdata}),
	.m_struct_axis_tvalid({structvar_124_tvalid}),
	.m_struct_axis_tready({structvar_124_tready})
);

 assign table_116_update_p_0_req_index = arg_103_1_tdata;
 assign table_116_update_p_0_req_index_valid = arg_103_1_tvalid;
 assign arg_103_1_tready = table_116_update_p_0_req_index_ready;

 assign table_116_update_p_0_req_data = structvar_124_0_tdata;
 assign table_116_update_p_0_req_data_valid = structvar_124_0_tvalid;
 assign structvar_124_0_tready = table_116_update_p_0_req_data_ready;

//Access Struct
 wire [32-1:0] struct_accessed_INT_127_tdata;
 wire  struct_accessed_INT_127_tvalid;
 wire  struct_accessed_INT_127_tready;

struct_access#(
.STRUCT_WIDTH(96),
.ACCESS_OFFSET(64),
.ACCESS_SIZE(32)
)struct_access_126(
	 .clk(clk), 
	 .rst(rst) ,
	//struct input
	.s_struct_axis_tdata({structvar_124_1_tdata}),
	.s_struct_axis_tvalid({structvar_124_1_tvalid}),
	.s_struct_axis_tready({structvar_124_1_tready}),
	//output val
	.m_val_axis_tdata({struct_accessed_INT_127_tdata}),
	.m_val_axis_tvalid({struct_accessed_INT_127_tvalid}),
	.m_val_axis_tready({struct_accessed_INT_127_tready})
);

//Arithmetic OP Out
 wire [32-1:0] ADD_128_out_INT_129_tdata;
 wire  ADD_128_out_INT_129_tvalid;
 wire  ADD_128_out_INT_129_tready;

ALU#(
.LVAL_SIZE(32),
.RVAL_SIZE(32),
.RESULT_SIZE(32),
.OPID(1)
)ADD_128(
	 .clk(clk), 
	 .rst(rst) ,
	//lval input
	.s_lval_axis_tdata({struct_accessed_INT_127_tdata}),
	.s_lval_axis_tvalid({struct_accessed_INT_127_tvalid}),
	.s_lval_axis_tready({struct_accessed_INT_127_tready}),
	//rval input
	.s_rval_axis_tdata({ADD_114_out_INT_115_tdata}),
	.s_rval_axis_tvalid({ADD_114_out_INT_115_tvalid}),
	.s_rval_axis_tready({ADD_114_out_INT_115_tready}),
	//output val
	.m_val_axis_tdata({ADD_128_out_INT_129_tdata}),
	.m_val_axis_tvalid({ADD_128_out_INT_129_tvalid}),
	.m_val_axis_tready({ADD_128_out_INT_129_tready})
);

//struct_assign_130 output struct
 wire [96-1:0] structvar_131_tdata;
 wire  structvar_131_tvalid;
 wire  structvar_131_tready;

//struct_assign_130 output struct
 wire [96-1:0] structvar_131_0_tdata;
 wire  structvar_131_0_tvalid;
 wire  structvar_131_0_tready;

//struct_assign_130 output struct
 wire [96-1:0] structvar_131_1_tdata;
 wire  structvar_131_1_tvalid;
 wire  structvar_131_1_tready;

axis_replication#(
.DATA_WIDTH(96),
.IF_STREAM(0),
.REAPLICA_COUNT(2)
)axis_replication_132(
	 .clk(clk), 
	 .rst(rst) ,
	//
	.s_axis_in_tdata({structvar_131_tdata}),
	.s_axis_in_tvalid({structvar_131_tvalid}),
	.s_axis_in_tready({structvar_131_tready}),
	//
	.m_axis_out_tdata({structvar_131_0_tdata,structvar_131_1_tdata}),
	.m_axis_out_tvalid({structvar_131_0_tvalid,structvar_131_1_tvalid}),
	.m_axis_out_tready({structvar_131_0_tready,structvar_131_1_tready})
);

struct_assign#(
.STRUCT_WIDTH(96),
.ASSIGN_OFFSET(64),
.ASSIGN_SIZE(32)
)struct_assign_130(
	 .clk(clk), 
	 .rst(rst) ,
	//input struct
	.s_struct_axis_tdata({structvar_124_2_tdata}),
	.s_struct_axis_tvalid({structvar_124_2_tvalid}),
	.s_struct_axis_tready({structvar_124_2_tready}),
	//input val
	.s_assignv_axis_tdata({ADD_128_out_INT_129_tdata}),
	.s_assignv_axis_tvalid({ADD_128_out_INT_129_tvalid}),
	.s_assignv_axis_tready({ADD_128_out_INT_129_tready}),
	//output struct
	.m_struct_axis_tdata({structvar_131_tdata}),
	.m_struct_axis_tvalid({structvar_131_tvalid}),
	.m_struct_axis_tready({structvar_131_tready})
);

//Access Struct
 wire [32-1:0] struct_accessed_INT_134_tdata;
 wire  struct_accessed_INT_134_tvalid;
 wire  struct_accessed_INT_134_tready;

struct_access#(
.STRUCT_WIDTH(96),
.ACCESS_OFFSET(0),
.ACCESS_SIZE(32)
)struct_access_133(
	 .clk(clk), 
	 .rst(rst) ,
	//struct input
	.s_struct_axis_tdata({structvar_131_0_tdata}),
	.s_struct_axis_tvalid({structvar_131_0_tvalid}),
	.s_struct_axis_tready({structvar_131_0_tready}),
	//output val
	.m_val_axis_tdata({struct_accessed_INT_134_tdata}),
	.m_val_axis_tvalid({struct_accessed_INT_134_tvalid}),
	.m_val_axis_tready({struct_accessed_INT_134_tready})
);

//Access Struct
 wire [32-1:0] struct_accessed_INT_136_tdata;
 wire  struct_accessed_INT_136_tvalid;
 wire  struct_accessed_INT_136_tready;

struct_access#(
.STRUCT_WIDTH(96),
.ACCESS_OFFSET(64),
.ACCESS_SIZE(32)
)struct_access_135(
	 .clk(clk), 
	 .rst(rst) ,
	//struct input
	.s_struct_axis_tdata({structvar_131_1_tdata}),
	.s_struct_axis_tvalid({structvar_131_1_tvalid}),
	.s_struct_axis_tready({structvar_131_1_tready}),
	//output val
	.m_val_axis_tdata({struct_accessed_INT_136_tdata}),
	.m_val_axis_tvalid({struct_accessed_INT_136_tvalid}),
	.m_val_axis_tready({struct_accessed_INT_136_tready})
);

 assign outport_109_0_tdata = arg_99_tdata;
 assign outport_109_0_tvalid = arg_99_tvalid;
 assign arg_99_tready = outport_109_0_tready;

 assign outport_109_1_tdata = arg_107_tdata;
 assign outport_109_1_tvalid = arg_107_tvalid;
 assign arg_107_tready = outport_109_1_tready;
 assign outport_109_1_tkeep = arg_107_tkeep;
 assign outport_109_1_tlast = arg_107_tlast;

 assign outport_109_2_tdata = arg_102_tdata;
 assign outport_109_2_tvalid = arg_102_tvalid;
 assign arg_102_tready = outport_109_2_tready;

 assign outport_109_3_tdata = arg_105_tdata;
 assign outport_109_3_tvalid = arg_105_tvalid;
 assign arg_105_tready = outport_109_3_tready;

 assign outport_109_4_tdata = struct_accessed_INT_136_tdata;
 assign outport_109_4_tvalid = struct_accessed_INT_136_tvalid;
 assign struct_accessed_INT_136_tready = outport_109_4_tready;

 assign outport_109_5_tdata = struct_accessed_INT_134_tdata;
 assign outport_109_5_tvalid = struct_accessed_INT_134_tvalid;
 assign struct_accessed_INT_134_tready = outport_109_5_tready;

 assign outport_109_6_tdata = arg_104_tdata;
 assign outport_109_6_tvalid = arg_104_tvalid;
 assign arg_104_tready = outport_109_6_tready;

 assign outport_109_7_tdata = arg_100_tdata;
 assign outport_109_7_tvalid = arg_100_tvalid;
 assign arg_100_tready = outport_109_7_tready;

 assign outport_109_8_tdata = arg_106_1_tdata;
 assign outport_109_8_tvalid = arg_106_1_tvalid;
 assign arg_106_1_tready = outport_109_8_tready;


endmodule
