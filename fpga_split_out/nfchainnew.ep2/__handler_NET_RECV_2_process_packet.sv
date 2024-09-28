module __handler_NET_RECV_2_process_packet#()
(
	 input  wire clk, 
	 input  wire rst,
	//input ports INT
	input wire [32-1:0] arg_137_tdata ,
	input wire  arg_137_tvalid ,
	output wire  arg_137_tready,
	//input ports BUF
	input wire [512-1:0] arg_138_tdata ,
	input wire [64-1:0] arg_138_tkeep ,
	input wire  arg_138_tlast ,
	input wire  arg_138_tvalid ,
	output wire  arg_138_tready,
	//input ports INT
	input wire [32-1:0] arg_139_tdata ,
	input wire  arg_139_tvalid ,
	output wire  arg_139_tready,
	//input ports INT
	input wire [32-1:0] arg_140_tdata ,
	input wire  arg_140_tvalid ,
	output wire  arg_140_tready,
	//input ports INT
	input wire [32-1:0] arg_141_tdata ,
	input wire  arg_141_tvalid ,
	output wire  arg_141_tready,
	//input ports INT
	input wire [32-1:0] arg_142_tdata ,
	input wire  arg_142_tvalid ,
	output wire  arg_142_tready,
	//input ports INT
	input wire [32-1:0] arg_143_tdata ,
	input wire  arg_143_tvalid ,
	output wire  arg_143_tready,
	//input ports INT
	input wire [32-1:0] arg_144_tdata ,
	input wire  arg_144_tvalid ,
	output wire  arg_144_tready,
	//input ports STRUCT
	input wire [160-1:0] arg_145_tdata ,
	input wire  arg_145_tvalid ,
	output wire  arg_145_tready,
	//output ports INT
	output wire [32-1:0] outport_146_0_tdata ,
	output wire  outport_146_0_tvalid ,
	input wire  outport_146_0_tready,
	//output ports INT
	output wire [32-1:0] outport_146_1_tdata ,
	output wire  outport_146_1_tvalid ,
	input wire  outport_146_1_tready,
	//output ports INT
	output wire [32-1:0] outport_146_2_tdata ,
	output wire  outport_146_2_tvalid ,
	input wire  outport_146_2_tready,
	//output ports INT
	output wire [32-1:0] outport_146_3_tdata ,
	output wire  outport_146_3_tvalid ,
	input wire  outport_146_3_tready,
	//output ports INT
	output wire [32-1:0] outport_146_4_tdata ,
	output wire  outport_146_4_tvalid ,
	input wire  outport_146_4_tready,
	//output ports BUF
	output wire [512-1:0] outport_146_5_tdata ,
	output wire [64-1:0] outport_146_5_tkeep ,
	output wire  outport_146_5_tlast ,
	output wire  outport_146_5_tvalid ,
	input wire  outport_146_5_tready,
	//output ports STRUCT
	output wire [160-1:0] outport_146_6_tdata ,
	output wire  outport_146_6_tvalid ,
	input wire  outport_146_6_tready,
	//output ports INT
	output wire [32-1:0] outport_146_7_tdata ,
	output wire  outport_146_7_tvalid ,
	input wire  outport_146_7_tready,
	//output ports STRUCT
	output wire [224-1:0] outport_146_8_tdata ,
	output wire  outport_146_8_tvalid ,
	input wire  outport_146_8_tready
);
//
 wire [32-1:0] arg_137_0_tdata;
 wire  arg_137_0_tvalid;
 wire  arg_137_0_tready;

//
 wire [32-1:0] arg_137_1_tdata;
 wire  arg_137_1_tvalid;
 wire  arg_137_1_tready;

//
 wire [32-1:0] arg_137_2_tdata;
 wire  arg_137_2_tvalid;
 wire  arg_137_2_tready;

axis_replication#(
.DATA_WIDTH(32),
.IF_STREAM(0),
.REAPLICA_COUNT(3)
)axis_replication_147(
	 .clk(clk), 
	 .rst(rst) ,
	//
	.s_axis_in_tdata({arg_137_tdata}),
	.s_axis_in_tvalid({arg_137_tvalid}),
	.s_axis_in_tready({arg_137_tready}),
	//
	.m_axis_out_tdata({arg_137_0_tdata,arg_137_1_tdata,arg_137_2_tdata}),
	.m_axis_out_tvalid({arg_137_0_tvalid,arg_137_1_tvalid,arg_137_2_tvalid}),
	.m_axis_out_tready({arg_137_0_tready,arg_137_1_tready,arg_137_2_tready})
);

//Table lookup port wire def 
 wire [32-1:0] table_148_lookup_p_0_req_index;
 wire  table_148_lookup_p_0_req_valid;
 wire  table_148_lookup_p_0_req_ready;
 wire  table_148_lookup_p_0_value_valid;
 wire  table_148_lookup_p_0_value_ready;
 wire [64-1:0] table_148_lookup_p_0_value_data;

//Table lookup port wire def 
 wire [32-1:0] table_148_lookup_p_1_req_index;
 wire  table_148_lookup_p_1_req_valid;
 wire  table_148_lookup_p_1_req_ready;
 wire  table_148_lookup_p_1_value_valid;
 wire  table_148_lookup_p_1_value_ready;
 wire [64-1:0] table_148_lookup_p_1_value_data;

cam_arbiter#(
.TABLE_SIZE(64),
.KEY_SIZE(32),
.VALUE_SIZE(64),
.LOOKUP_PORTS(2),
.UPDATE_PORTS(1)
)table_148(
	 .clk(clk), 
	 .rst(rst) ,
	//lookup port 
	.s_lookup_req_index({table_148_lookup_p_0_req_index,table_148_lookup_p_1_req_index}),
	.s_lookup_req_valid({table_148_lookup_p_0_req_valid,table_148_lookup_p_1_req_valid}),
	.s_lookup_req_ready({table_148_lookup_p_0_req_ready,table_148_lookup_p_1_req_ready}),
	.s_lookup_value_valid({table_148_lookup_p_0_value_valid,table_148_lookup_p_1_value_valid}),
	.s_lookup_value_data({table_148_lookup_p_0_value_data,table_148_lookup_p_1_value_data}),
	.s_lookup_value_ready({table_148_lookup_p_0_value_ready,table_148_lookup_p_1_value_ready}),
	//update port 
	.s_update_req_index(),
	.s_update_req_index_valid(),
	.s_update_req_index_ready(),
	.s_update_req_data(),
	.s_update_req_data_valid(),
	.s_update_req_data_ready()
);

 assign table_148_lookup_p_1_req_index = arg_137_0_tdata;
 assign table_148_lookup_p_1_req_valid = arg_137_0_tvalid;
 assign arg_137_0_tready = table_148_lookup_p_1_req_ready;

//table lookup resultlookedup_STRUCT_149
 wire [64-1:0] lookedup_STRUCT_149_tdata;
 wire  lookedup_STRUCT_149_tvalid;
 wire  lookedup_STRUCT_149_tready;

 assign lookedup_STRUCT_149_tdata = table_148_lookup_p_1_value_data;
 assign lookedup_STRUCT_149_tvalid = table_148_lookup_p_1_value_valid;
 assign table_148_lookup_p_1_value_ready = lookedup_STRUCT_149_tready;

 assign table_148_lookup_p_0_req_index = arg_137_1_tdata;
 assign table_148_lookup_p_0_req_valid = arg_137_1_tvalid;
 assign arg_137_1_tready = table_148_lookup_p_0_req_ready;

//table lookup resultlookedup_STRUCT_150
 wire [64-1:0] lookedup_STRUCT_150_tdata;
 wire  lookedup_STRUCT_150_tvalid;
 wire  lookedup_STRUCT_150_tready;

 assign lookedup_STRUCT_150_tdata = table_148_lookup_p_0_value_data;
 assign lookedup_STRUCT_150_tvalid = table_148_lookup_p_0_value_valid;
 assign table_148_lookup_p_0_value_ready = lookedup_STRUCT_150_tready;

//inited_STRUCT
 wire [224-1:0] inited_STRUCT_151_tdata=0;
 wire  inited_STRUCT_151_tvalid=1;
 wire  inited_STRUCT_151_tready;

//struct_assign_152 output struct
 wire [224-1:0] structvar_153_tdata;
 wire  structvar_153_tvalid;
 wire  structvar_153_tready;

struct_assign#(
.STRUCT_WIDTH(224),
.ASSIGN_OFFSET(32),
.ASSIGN_SIZE(32)
)struct_assign_152(
	 .clk(clk), 
	 .rst(rst) ,
	//input struct
	.s_struct_axis_tdata({inited_STRUCT_151_tdata}),
	.s_struct_axis_tvalid({inited_STRUCT_151_tvalid}),
	.s_struct_axis_tready({inited_STRUCT_151_tready}),
	//input val
	.s_assignv_axis_tdata({arg_144_tdata}),
	.s_assignv_axis_tvalid({arg_144_tvalid}),
	.s_assignv_axis_tready({arg_144_tready}),
	//output struct
	.m_struct_axis_tdata({structvar_153_tdata}),
	.m_struct_axis_tvalid({structvar_153_tvalid}),
	.m_struct_axis_tready({structvar_153_tready})
);

//Access Struct
 wire [32-1:0] struct_accessed_INT_155_tdata;
 wire  struct_accessed_INT_155_tvalid;
 wire  struct_accessed_INT_155_tready;

struct_access#(
.STRUCT_WIDTH(64),
.ACCESS_OFFSET(0),
.ACCESS_SIZE(32)
)struct_access_154(
	 .clk(clk), 
	 .rst(rst) ,
	//struct input
	.s_struct_axis_tdata({lookedup_STRUCT_149_tdata}),
	.s_struct_axis_tvalid({lookedup_STRUCT_149_tvalid}),
	.s_struct_axis_tready({lookedup_STRUCT_149_tready}),
	//output val
	.m_val_axis_tdata({struct_accessed_INT_155_tdata}),
	.m_val_axis_tvalid({struct_accessed_INT_155_tvalid}),
	.m_val_axis_tready({struct_accessed_INT_155_tready})
);

//Access Struct
 wire [32-1:0] struct_accessed_INT_157_tdata;
 wire  struct_accessed_INT_157_tvalid;
 wire  struct_accessed_INT_157_tready;

struct_access#(
.STRUCT_WIDTH(64),
.ACCESS_OFFSET(0),
.ACCESS_SIZE(32)
)struct_access_156(
	 .clk(clk), 
	 .rst(rst) ,
	//struct input
	.s_struct_axis_tdata({lookedup_STRUCT_150_tdata}),
	.s_struct_axis_tvalid({lookedup_STRUCT_150_tvalid}),
	.s_struct_axis_tready({lookedup_STRUCT_150_tready}),
	//output val
	.m_val_axis_tdata({struct_accessed_INT_157_tdata}),
	.m_val_axis_tvalid({struct_accessed_INT_157_tvalid}),
	.m_val_axis_tready({struct_accessed_INT_157_tready})
);

//Arithmetic OP Out
 wire [32-1:0] ADD_158_out_INT_159_tdata;
 wire  ADD_158_out_INT_159_tvalid;
 wire  ADD_158_out_INT_159_tready;

ALU#(
.LVAL_SIZE(32),
.RVAL_SIZE(32),
.RESULT_SIZE(32),
.OPID(1)
)ADD_158(
	 .clk(clk), 
	 .rst(rst) ,
	//lval input
	.s_lval_axis_tdata({struct_accessed_INT_155_tdata}),
	.s_lval_axis_tvalid({struct_accessed_INT_155_tvalid}),
	.s_lval_axis_tready({struct_accessed_INT_155_tready}),
	//rval input
	.s_rval_axis_tdata({struct_accessed_INT_157_tdata}),
	.s_rval_axis_tvalid({struct_accessed_INT_157_tvalid}),
	.s_rval_axis_tready({struct_accessed_INT_157_tready}),
	//output val
	.m_val_axis_tdata({ADD_158_out_INT_159_tdata}),
	.m_val_axis_tvalid({ADD_158_out_INT_159_tvalid}),
	.m_val_axis_tready({ADD_158_out_INT_159_tready})
);

//struct_assign_160 output struct
 wire [224-1:0] structvar_161_tdata;
 wire  structvar_161_tvalid;
 wire  structvar_161_tready;

struct_assign#(
.STRUCT_WIDTH(224),
.ASSIGN_OFFSET(64),
.ASSIGN_SIZE(32)
)struct_assign_160(
	 .clk(clk), 
	 .rst(rst) ,
	//input struct
	.s_struct_axis_tdata({structvar_153_tdata}),
	.s_struct_axis_tvalid({structvar_153_tvalid}),
	.s_struct_axis_tready({structvar_153_tready}),
	//input val
	.s_assignv_axis_tdata({ADD_158_out_INT_159_tdata}),
	.s_assignv_axis_tvalid({ADD_158_out_INT_159_tvalid}),
	.s_assignv_axis_tready({ADD_158_out_INT_159_tready}),
	//output struct
	.m_struct_axis_tdata({structvar_161_tdata}),
	.m_struct_axis_tvalid({structvar_161_tvalid}),
	.m_struct_axis_tready({structvar_161_tready})
);

 assign outport_146_0_tdata = arg_140_tdata;
 assign outport_146_0_tvalid = arg_140_tvalid;
 assign arg_140_tready = outport_146_0_tready;

 assign outport_146_1_tdata = arg_142_tdata;
 assign outport_146_1_tvalid = arg_142_tvalid;
 assign arg_142_tready = outport_146_1_tready;

 assign outport_146_2_tdata = arg_143_tdata;
 assign outport_146_2_tvalid = arg_143_tvalid;
 assign arg_143_tready = outport_146_2_tready;

 assign outport_146_3_tdata = arg_141_tdata;
 assign outport_146_3_tvalid = arg_141_tvalid;
 assign arg_141_tready = outport_146_3_tready;

 assign outport_146_4_tdata = arg_139_tdata;
 assign outport_146_4_tvalid = arg_139_tvalid;
 assign arg_139_tready = outport_146_4_tready;

 assign outport_146_5_tdata = arg_138_tdata;
 assign outport_146_5_tvalid = arg_138_tvalid;
 assign arg_138_tready = outport_146_5_tready;
 assign outport_146_5_tkeep = arg_138_tkeep;
 assign outport_146_5_tlast = arg_138_tlast;

 assign outport_146_6_tdata = arg_145_tdata;
 assign outport_146_6_tvalid = arg_145_tvalid;
 assign arg_145_tready = outport_146_6_tready;

 assign outport_146_7_tdata = arg_137_2_tdata;
 assign outport_146_7_tvalid = arg_137_2_tvalid;
 assign arg_137_2_tready = outport_146_7_tready;

 assign outport_146_8_tdata = structvar_161_tdata;
 assign outport_146_8_tvalid = structvar_161_tvalid;
 assign structvar_161_tready = outport_146_8_tready;


endmodule
