module __handler_NET_RECV_3_process_packet#()
(
	 input  wire clk, 
	 input  wire rst,
	//input ports INT
	input wire [32-1:0] arg_162_tdata ,
	input wire  arg_162_tvalid ,
	output wire  arg_162_tready,
	//input ports INT
	input wire [32-1:0] arg_163_tdata ,
	input wire  arg_163_tvalid ,
	output wire  arg_163_tready,
	//input ports INT
	input wire [32-1:0] arg_164_tdata ,
	input wire  arg_164_tvalid ,
	output wire  arg_164_tready,
	//input ports INT
	input wire [32-1:0] arg_165_tdata ,
	input wire  arg_165_tvalid ,
	output wire  arg_165_tready,
	//input ports INT
	input wire [32-1:0] arg_166_tdata ,
	input wire  arg_166_tvalid ,
	output wire  arg_166_tready,
	//input ports BUF
	input wire [512-1:0] arg_167_tdata ,
	input wire [64-1:0] arg_167_tkeep ,
	input wire  arg_167_tlast ,
	input wire  arg_167_tvalid ,
	output wire  arg_167_tready,
	//input ports STRUCT
	input wire [160-1:0] arg_168_tdata ,
	input wire  arg_168_tvalid ,
	output wire  arg_168_tready,
	//input ports INT
	input wire [32-1:0] arg_169_tdata ,
	input wire  arg_169_tvalid ,
	output wire  arg_169_tready,
	//input ports STRUCT
	input wire [224-1:0] arg_170_tdata ,
	input wire  arg_170_tvalid ,
	output wire  arg_170_tready,
	//output ports BUF
	output wire [512-1:0] NET_SEND_0_tdata ,
	output wire [64-1:0] NET_SEND_0_tkeep ,
	output wire  NET_SEND_0_tlast ,
	output wire  NET_SEND_0_tvalid ,
	input wire  NET_SEND_0_tready
);
//
 wire [32-1:0] arg_162_0_tdata;
 wire  arg_162_0_tvalid;
 wire  arg_162_0_tready;

//
 wire [32-1:0] arg_162_1_tdata;
 wire  arg_162_1_tvalid;
 wire  arg_162_1_tready;

axis_replication#(
.DATA_WIDTH(32),
.IF_STREAM(0),
.REAPLICA_COUNT(2)
)axis_replication_171(
	 .clk(clk), 
	 .rst(rst) ,
	//
	.s_axis_in_tdata({arg_162_tdata}),
	.s_axis_in_tvalid({arg_162_tvalid}),
	.s_axis_in_tready({arg_162_tready}),
	//
	.m_axis_out_tdata({arg_162_0_tdata,arg_162_1_tdata}),
	.m_axis_out_tvalid({arg_162_0_tvalid,arg_162_1_tvalid}),
	.m_axis_out_tready({arg_162_0_tready,arg_162_1_tready})
);

//
 wire [32-1:0] arg_169_0_tdata;
 wire  arg_169_0_tvalid;
 wire  arg_169_0_tready;

//
 wire [32-1:0] arg_169_1_tdata;
 wire  arg_169_1_tvalid;
 wire  arg_169_1_tready;

//
 wire [32-1:0] arg_169_2_tdata;
 wire  arg_169_2_tvalid;
 wire  arg_169_2_tready;

//
 wire [32-1:0] arg_169_3_tdata;
 wire  arg_169_3_tvalid;
 wire  arg_169_3_tready;

//
 wire [32-1:0] arg_169_4_tdata;
 wire  arg_169_4_tvalid;
 wire  arg_169_4_tready;

//
 wire [32-1:0] arg_169_5_tdata;
 wire  arg_169_5_tvalid;
 wire  arg_169_5_tready;

//
 wire [32-1:0] arg_169_6_tdata;
 wire  arg_169_6_tvalid;
 wire  arg_169_6_tready;

//
 wire [32-1:0] arg_169_7_tdata;
 wire  arg_169_7_tvalid;
 wire  arg_169_7_tready;

axis_replication#(
.DATA_WIDTH(32),
.IF_STREAM(0),
.REAPLICA_COUNT(8)
)axis_replication_172(
	 .clk(clk), 
	 .rst(rst) ,
	//
	.s_axis_in_tdata({arg_169_tdata}),
	.s_axis_in_tvalid({arg_169_tvalid}),
	.s_axis_in_tready({arg_169_tready}),
	//
	.m_axis_out_tdata({arg_169_0_tdata,arg_169_1_tdata,arg_169_2_tdata,arg_169_3_tdata,arg_169_4_tdata,arg_169_5_tdata,arg_169_6_tdata,arg_169_7_tdata}),
	.m_axis_out_tvalid({arg_169_0_tvalid,arg_169_1_tvalid,arg_169_2_tvalid,arg_169_3_tvalid,arg_169_4_tvalid,arg_169_5_tvalid,arg_169_6_tvalid,arg_169_7_tvalid}),
	.m_axis_out_tready({arg_169_0_tready,arg_169_1_tready,arg_169_2_tready,arg_169_3_tready,arg_169_4_tready,arg_169_5_tready,arg_169_6_tready,arg_169_7_tready})
);

//const_INT
 wire [32-1:0] const_INT_173_tdata=134744071;
 wire  const_INT_173_tvalid=1;
 wire  const_INT_173_tready;

//const_INT
 wire [32-1:0] const_INT_173_0_tdata;
 wire  const_INT_173_0_tvalid;
 wire  const_INT_173_0_tready;

//const_INT
 wire [32-1:0] const_INT_173_1_tdata;
 wire  const_INT_173_1_tvalid;
 wire  const_INT_173_1_tready;

axis_replication#(
.DATA_WIDTH(32),
.IF_STREAM(0),
.REAPLICA_COUNT(2)
)axis_replication_174(
	 .clk(clk), 
	 .rst(rst) ,
	//
	.s_axis_in_tdata({const_INT_173_tdata}),
	.s_axis_in_tvalid({const_INT_173_tvalid}),
	.s_axis_in_tready({const_INT_173_tready}),
	//
	.m_axis_out_tdata({const_INT_173_0_tdata,const_INT_173_1_tdata}),
	.m_axis_out_tvalid({const_INT_173_0_tvalid,const_INT_173_1_tvalid}),
	.m_axis_out_tready({const_INT_173_0_tready,const_INT_173_1_tready})
);

//const_INT
 wire [16-1:0] const_INT_175_tdata=50;
 wire  const_INT_175_tvalid=1;
 wire  const_INT_175_tready;

//const_INT
 wire [16-1:0] const_INT_175_0_tdata;
 wire  const_INT_175_0_tvalid;
 wire  const_INT_175_0_tready;

//const_INT
 wire [16-1:0] const_INT_175_1_tdata;
 wire  const_INT_175_1_tvalid;
 wire  const_INT_175_1_tready;

axis_replication#(
.DATA_WIDTH(16),
.IF_STREAM(0),
.REAPLICA_COUNT(2)
)axis_replication_176(
	 .clk(clk), 
	 .rst(rst) ,
	//
	.s_axis_in_tdata({const_INT_175_tdata}),
	.s_axis_in_tvalid({const_INT_175_tvalid}),
	.s_axis_in_tready({const_INT_175_tready}),
	//
	.m_axis_out_tdata({const_INT_175_0_tdata,const_INT_175_1_tdata}),
	.m_axis_out_tvalid({const_INT_175_0_tvalid,const_INT_175_1_tvalid}),
	.m_axis_out_tready({const_INT_175_0_tready,const_INT_175_1_tready})
);

//const_INT
 wire [16-1:0] const_INT_177_tdata=60;
 wire  const_INT_177_tvalid=1;
 wire  const_INT_177_tready;

//const_INT
 wire [16-1:0] const_INT_177_0_tdata;
 wire  const_INT_177_0_tvalid;
 wire  const_INT_177_0_tready;

//const_INT
 wire [16-1:0] const_INT_177_1_tdata;
 wire  const_INT_177_1_tvalid;
 wire  const_INT_177_1_tready;

axis_replication#(
.DATA_WIDTH(16),
.IF_STREAM(0),
.REAPLICA_COUNT(2)
)axis_replication_178(
	 .clk(clk), 
	 .rst(rst) ,
	//
	.s_axis_in_tdata({const_INT_177_tdata}),
	.s_axis_in_tvalid({const_INT_177_tvalid}),
	.s_axis_in_tready({const_INT_177_tready}),
	//
	.m_axis_out_tdata({const_INT_177_0_tdata,const_INT_177_1_tdata}),
	.m_axis_out_tvalid({const_INT_177_0_tvalid,const_INT_177_1_tvalid}),
	.m_axis_out_tready({const_INT_177_0_tready,const_INT_177_1_tready})
);

//struct_assign_179 output struct
 wire [224-1:0] structvar_180_tdata;
 wire  structvar_180_tvalid;
 wire  structvar_180_tready;

struct_assign#(
.STRUCT_WIDTH(224),
.ASSIGN_OFFSET(0),
.ASSIGN_SIZE(32)
)struct_assign_179(
	 .clk(clk), 
	 .rst(rst) ,
	//input struct
	.s_struct_axis_tdata({arg_170_tdata}),
	.s_struct_axis_tvalid({arg_170_tvalid}),
	.s_struct_axis_tready({arg_170_tready}),
	//input val
	.s_assignv_axis_tdata({arg_169_0_tdata}),
	.s_assignv_axis_tvalid({arg_169_0_tvalid}),
	.s_assignv_axis_tready({arg_169_0_tready}),
	//output struct
	.m_struct_axis_tdata({structvar_180_tdata}),
	.m_struct_axis_tvalid({structvar_180_tvalid}),
	.m_struct_axis_tready({structvar_180_tready})
);

//struct_assign_181 output struct
 wire [224-1:0] structvar_182_tdata;
 wire  structvar_182_tvalid;
 wire  structvar_182_tready;

struct_assign#(
.STRUCT_WIDTH(224),
.ASSIGN_OFFSET(96),
.ASSIGN_SIZE(32)
)struct_assign_181(
	 .clk(clk), 
	 .rst(rst) ,
	//input struct
	.s_struct_axis_tdata({structvar_180_tdata}),
	.s_struct_axis_tvalid({structvar_180_tvalid}),
	.s_struct_axis_tready({structvar_180_tready}),
	//input val
	.s_assignv_axis_tdata({arg_166_tdata}),
	.s_assignv_axis_tvalid({arg_166_tvalid}),
	.s_assignv_axis_tready({arg_166_tready}),
	//output struct
	.m_struct_axis_tdata({structvar_182_tdata}),
	.m_struct_axis_tvalid({structvar_182_tvalid}),
	.m_struct_axis_tready({structvar_182_tready})
);

//emit_module_183 output buf
 wire [512-1:0] bufvar_184_tdata;
 wire [64-1:0] bufvar_184_tkeep;
 wire  bufvar_184_tvalid;
 wire  bufvar_184_tready;
 wire  bufvar_184_tlast;

emit#(
.BUF_DATA_WIDTH(512),
.BUF_KEEP_WIDTH(64),
.IF_INPUT_BUF(0),
.INPUT_BUF_STRUCT_WIDTH(224)
)emit_module_183(
	 .clk(clk), 
	 .rst(rst) ,
	//input buf
	.s_inbuf_axis_tdata({arg_167_tdata}),
	.s_inbuf_axis_tkeep({arg_167_tkeep}),
	.s_inbuf_axis_tlast({arg_167_tlast}),
	.s_inbuf_axis_tvalid({arg_167_tvalid}),
	.s_inbuf_axis_tready({arg_167_tready}),
	//input struct/buf
	.s_struct_axis_tdata({structvar_182_tdata}),
	.s_struct_axis_tvalid({structvar_182_tvalid}),
	.s_struct_axis_tready({structvar_182_tready}),
	//output buf
	.m_outbuf_axis_tdata({bufvar_184_tdata}),
	.m_outbuf_axis_tkeep({bufvar_184_tkeep}),
	.m_outbuf_axis_tlast({bufvar_184_tlast}),
	.m_outbuf_axis_tvalid({bufvar_184_tvalid}),
	.m_outbuf_axis_tready({bufvar_184_tready})
);

//inited_STRUCT
 wire [224-1:0] inited_STRUCT_185_tdata=0;
 wire  inited_STRUCT_185_tvalid=1;
 wire  inited_STRUCT_185_tready;

//struct_assign_186 output struct
 wire [224-1:0] structvar_187_tdata;
 wire  structvar_187_tvalid;
 wire  structvar_187_tready;

struct_assign#(
.STRUCT_WIDTH(224),
.ASSIGN_OFFSET(0),
.ASSIGN_SIZE(32)
)struct_assign_186(
	 .clk(clk), 
	 .rst(rst) ,
	//input struct
	.s_struct_axis_tdata({inited_STRUCT_185_tdata}),
	.s_struct_axis_tvalid({inited_STRUCT_185_tvalid}),
	.s_struct_axis_tready({inited_STRUCT_185_tready}),
	//input val
	.s_assignv_axis_tdata({arg_163_tdata}),
	.s_assignv_axis_tvalid({arg_163_tvalid}),
	.s_assignv_axis_tready({arg_163_tready}),
	//output struct
	.m_struct_axis_tdata({structvar_187_tdata}),
	.m_struct_axis_tvalid({structvar_187_tvalid}),
	.m_struct_axis_tready({structvar_187_tready})
);

//struct_assign_188 output struct
 wire [224-1:0] structvar_189_tdata;
 wire  structvar_189_tvalid;
 wire  structvar_189_tready;

struct_assign#(
.STRUCT_WIDTH(224),
.ASSIGN_OFFSET(32),
.ASSIGN_SIZE(32)
)struct_assign_188(
	 .clk(clk), 
	 .rst(rst) ,
	//input struct
	.s_struct_axis_tdata({structvar_187_tdata}),
	.s_struct_axis_tvalid({structvar_187_tvalid}),
	.s_struct_axis_tready({structvar_187_tready}),
	//input val
	.s_assignv_axis_tdata({arg_165_tdata}),
	.s_assignv_axis_tvalid({arg_165_tvalid}),
	.s_assignv_axis_tready({arg_165_tready}),
	//output struct
	.m_struct_axis_tdata({structvar_189_tdata}),
	.m_struct_axis_tvalid({structvar_189_tvalid}),
	.m_struct_axis_tready({structvar_189_tready})
);

//emit_module_190 output buf
 wire [512-1:0] bufvar_191_tdata;
 wire [64-1:0] bufvar_191_tkeep;
 wire  bufvar_191_tvalid;
 wire  bufvar_191_tready;
 wire  bufvar_191_tlast;

emit#(
.BUF_DATA_WIDTH(512),
.BUF_KEEP_WIDTH(64),
.IF_INPUT_BUF(0),
.INPUT_BUF_STRUCT_WIDTH(224)
)emit_module_190(
	 .clk(clk), 
	 .rst(rst) ,
	//input buf
	.s_inbuf_axis_tdata({bufvar_184_tdata}),
	.s_inbuf_axis_tkeep({bufvar_184_tkeep}),
	.s_inbuf_axis_tlast({bufvar_184_tlast}),
	.s_inbuf_axis_tvalid({bufvar_184_tvalid}),
	.s_inbuf_axis_tready({bufvar_184_tready}),
	//input struct/buf
	.s_struct_axis_tdata({structvar_189_tdata}),
	.s_struct_axis_tvalid({structvar_189_tvalid}),
	.s_struct_axis_tready({structvar_189_tready}),
	//output buf
	.m_outbuf_axis_tdata({bufvar_191_tdata}),
	.m_outbuf_axis_tkeep({bufvar_191_tkeep}),
	.m_outbuf_axis_tlast({bufvar_191_tlast}),
	.m_outbuf_axis_tvalid({bufvar_191_tvalid}),
	.m_outbuf_axis_tready({bufvar_191_tready})
);

//Access Struct
 wire [16-1:0] struct_accessed_INT_193_tdata;
 wire  struct_accessed_INT_193_tvalid;
 wire  struct_accessed_INT_193_tready;

//Access Struct
 wire [16-1:0] struct_accessed_INT_193_0_tdata;
 wire  struct_accessed_INT_193_0_tvalid;
 wire  struct_accessed_INT_193_0_tready;

//Access Struct
 wire [16-1:0] struct_accessed_INT_193_1_tdata;
 wire  struct_accessed_INT_193_1_tvalid;
 wire  struct_accessed_INT_193_1_tready;

axis_replication#(
.DATA_WIDTH(16),
.IF_STREAM(0),
.REAPLICA_COUNT(2)
)axis_replication_194(
	 .clk(clk), 
	 .rst(rst) ,
	//
	.s_axis_in_tdata({struct_accessed_INT_193_tdata}),
	.s_axis_in_tvalid({struct_accessed_INT_193_tvalid}),
	.s_axis_in_tready({struct_accessed_INT_193_tready}),
	//
	.m_axis_out_tdata({struct_accessed_INT_193_0_tdata,struct_accessed_INT_193_1_tdata}),
	.m_axis_out_tvalid({struct_accessed_INT_193_0_tvalid,struct_accessed_INT_193_1_tvalid}),
	.m_axis_out_tready({struct_accessed_INT_193_0_tready,struct_accessed_INT_193_1_tready})
);

struct_access#(
.STRUCT_WIDTH(160),
.ACCESS_OFFSET(0),
.ACCESS_SIZE(16)
)struct_access_192(
	 .clk(clk), 
	 .rst(rst) ,
	//struct input
	.s_struct_axis_tdata({arg_168_tdata}),
	.s_struct_axis_tvalid({arg_168_tvalid}),
	.s_struct_axis_tready({arg_168_tready}),
	//output val
	.m_val_axis_tdata({struct_accessed_INT_193_tdata}),
	.m_val_axis_tvalid({struct_accessed_INT_193_tvalid}),
	.m_val_axis_tready({struct_accessed_INT_193_tready})
);

//Table lookup port wire def 
 wire [16-1:0] table_195_lookup_p_0_req_index;
 wire  table_195_lookup_p_0_req_valid;
 wire  table_195_lookup_p_0_req_ready;
 wire  table_195_lookup_p_0_value_valid;
 wire  table_195_lookup_p_0_value_ready;
 wire [320-1:0] table_195_lookup_p_0_value_data;

//Table update port wire def 
 wire [16-1:0] table_195_update_p_0_req_index;
 wire  table_195_update_p_0_req_index_valid;
 wire  table_195_update_p_0_req_index_ready;
 wire [320-1:0] table_195_update_p_0_req_data;
 wire  table_195_update_p_0_req_data_valid;
 wire  table_195_update_p_0_req_data_ready;

cam_arbiter#(
.TABLE_SIZE(64),
.KEY_SIZE(16),
.VALUE_SIZE(320),
.LOOKUP_PORTS(1),
.UPDATE_PORTS(1)
)table_195(
	 .clk(clk), 
	 .rst(rst) ,
	//lookup port 
	.s_lookup_req_index({table_195_lookup_p_0_req_index}),
	.s_lookup_req_valid({table_195_lookup_p_0_req_valid}),
	.s_lookup_req_ready({table_195_lookup_p_0_req_ready}),
	.s_lookup_value_valid({table_195_lookup_p_0_value_valid}),
	.s_lookup_value_data({table_195_lookup_p_0_value_data}),
	.s_lookup_value_ready({table_195_lookup_p_0_value_ready}),
	//update port 
	.s_update_req_index({table_195_update_p_0_req_index}),
	.s_update_req_index_valid({table_195_update_p_0_req_index_valid}),
	.s_update_req_index_ready({table_195_update_p_0_req_index_ready}),
	.s_update_req_data({table_195_update_p_0_req_data}),
	.s_update_req_data_valid({table_195_update_p_0_req_data_valid}),
	.s_update_req_data_ready({table_195_update_p_0_req_data_ready})
);

 assign table_195_lookup_p_0_req_index = struct_accessed_INT_193_0_tdata;
 assign table_195_lookup_p_0_req_valid = struct_accessed_INT_193_0_tvalid;
 assign struct_accessed_INT_193_0_tready = table_195_lookup_p_0_req_ready;

//table lookup resultlookedup_STRUCT_196
 wire [320-1:0] lookedup_STRUCT_196_tdata;
 wire  lookedup_STRUCT_196_tvalid;
 wire  lookedup_STRUCT_196_tready;

 assign lookedup_STRUCT_196_tdata = table_195_lookup_p_0_value_data;
 assign lookedup_STRUCT_196_tvalid = table_195_lookup_p_0_value_valid;
 assign table_195_lookup_p_0_value_ready = lookedup_STRUCT_196_tready;

//struct_assign_197 output struct
 wire [320-1:0] structvar_198_tdata;
 wire  structvar_198_tvalid;
 wire  structvar_198_tready;

//struct_assign_197 output struct
 wire [320-1:0] structvar_198_0_tdata;
 wire  structvar_198_0_tvalid;
 wire  structvar_198_0_tready;

//struct_assign_197 output struct
 wire [320-1:0] structvar_198_1_tdata;
 wire  structvar_198_1_tvalid;
 wire  structvar_198_1_tready;

axis_replication#(
.DATA_WIDTH(320),
.IF_STREAM(0),
.REAPLICA_COUNT(2)
)axis_replication_199(
	 .clk(clk), 
	 .rst(rst) ,
	//
	.s_axis_in_tdata({structvar_198_tdata}),
	.s_axis_in_tvalid({structvar_198_tvalid}),
	.s_axis_in_tready({structvar_198_tready}),
	//
	.m_axis_out_tdata({structvar_198_0_tdata,structvar_198_1_tdata}),
	.m_axis_out_tvalid({structvar_198_0_tvalid,structvar_198_1_tvalid}),
	.m_axis_out_tready({structvar_198_0_tready,structvar_198_1_tready})
);

struct_assign#(
.STRUCT_WIDTH(320),
.ASSIGN_OFFSET(224),
.ASSIGN_SIZE(32)
)struct_assign_197(
	 .clk(clk), 
	 .rst(rst) ,
	//input struct
	.s_struct_axis_tdata({lookedup_STRUCT_196_tdata}),
	.s_struct_axis_tvalid({lookedup_STRUCT_196_tvalid}),
	.s_struct_axis_tready({lookedup_STRUCT_196_tready}),
	//input val
	.s_assignv_axis_tdata({arg_164_tdata}),
	.s_assignv_axis_tvalid({arg_164_tvalid}),
	.s_assignv_axis_tready({arg_164_tready}),
	//output struct
	.m_struct_axis_tdata({structvar_198_tdata}),
	.m_struct_axis_tvalid({structvar_198_tvalid}),
	.m_struct_axis_tready({structvar_198_tready})
);

//Access Struct
 wire [64-1:0] struct_accessed_INT_201_tdata;
 wire  struct_accessed_INT_201_tvalid;
 wire  struct_accessed_INT_201_tready;

struct_access#(
.STRUCT_WIDTH(320),
.ACCESS_OFFSET(0),
.ACCESS_SIZE(64)
)struct_access_200(
	 .clk(clk), 
	 .rst(rst) ,
	//struct input
	.s_struct_axis_tdata({structvar_198_0_tdata}),
	.s_struct_axis_tvalid({structvar_198_0_tvalid}),
	.s_struct_axis_tready({structvar_198_0_tready}),
	//output val
	.m_val_axis_tdata({struct_accessed_INT_201_tdata}),
	.m_val_axis_tvalid({struct_accessed_INT_201_tvalid}),
	.m_val_axis_tready({struct_accessed_INT_201_tready})
);

//Arithmetic OP Out
 wire [64-1:0] ADD_202_out_INT_203_tdata;
 wire  ADD_202_out_INT_203_tvalid;
 wire  ADD_202_out_INT_203_tready;

ALU#(
.LVAL_SIZE(64),
.RVAL_SIZE(32),
.RESULT_SIZE(64),
.OPID(1)
)ADD_202(
	 .clk(clk), 
	 .rst(rst) ,
	//lval input
	.s_lval_axis_tdata({struct_accessed_INT_201_tdata}),
	.s_lval_axis_tvalid({struct_accessed_INT_201_tvalid}),
	.s_lval_axis_tready({struct_accessed_INT_201_tready}),
	//rval input
	.s_rval_axis_tdata({arg_169_1_tdata}),
	.s_rval_axis_tvalid({arg_169_1_tvalid}),
	.s_rval_axis_tready({arg_169_1_tready}),
	//output val
	.m_val_axis_tdata({ADD_202_out_INT_203_tdata}),
	.m_val_axis_tvalid({ADD_202_out_INT_203_tvalid}),
	.m_val_axis_tready({ADD_202_out_INT_203_tready})
);

//struct_assign_204 output struct
 wire [320-1:0] structvar_205_tdata;
 wire  structvar_205_tvalid;
 wire  structvar_205_tready;

//struct_assign_204 output struct
 wire [320-1:0] structvar_205_0_tdata;
 wire  structvar_205_0_tvalid;
 wire  structvar_205_0_tready;

//struct_assign_204 output struct
 wire [320-1:0] structvar_205_1_tdata;
 wire  structvar_205_1_tvalid;
 wire  structvar_205_1_tready;

axis_replication#(
.DATA_WIDTH(320),
.IF_STREAM(0),
.REAPLICA_COUNT(2)
)axis_replication_206(
	 .clk(clk), 
	 .rst(rst) ,
	//
	.s_axis_in_tdata({structvar_205_tdata}),
	.s_axis_in_tvalid({structvar_205_tvalid}),
	.s_axis_in_tready({structvar_205_tready}),
	//
	.m_axis_out_tdata({structvar_205_0_tdata,structvar_205_1_tdata}),
	.m_axis_out_tvalid({structvar_205_0_tvalid,structvar_205_1_tvalid}),
	.m_axis_out_tready({structvar_205_0_tready,structvar_205_1_tready})
);

struct_assign#(
.STRUCT_WIDTH(320),
.ASSIGN_OFFSET(0),
.ASSIGN_SIZE(64)
)struct_assign_204(
	 .clk(clk), 
	 .rst(rst) ,
	//input struct
	.s_struct_axis_tdata({structvar_198_1_tdata}),
	.s_struct_axis_tvalid({structvar_198_1_tvalid}),
	.s_struct_axis_tready({structvar_198_1_tready}),
	//input val
	.s_assignv_axis_tdata({ADD_202_out_INT_203_tdata}),
	.s_assignv_axis_tvalid({ADD_202_out_INT_203_tvalid}),
	.s_assignv_axis_tready({ADD_202_out_INT_203_tready}),
	//output struct
	.m_struct_axis_tdata({structvar_205_tdata}),
	.m_struct_axis_tvalid({structvar_205_tvalid}),
	.m_struct_axis_tready({structvar_205_tready})
);

//Access Struct
 wire [64-1:0] struct_accessed_INT_208_tdata;
 wire  struct_accessed_INT_208_tvalid;
 wire  struct_accessed_INT_208_tready;

struct_access#(
.STRUCT_WIDTH(320),
.ACCESS_OFFSET(64),
.ACCESS_SIZE(64)
)struct_access_207(
	 .clk(clk), 
	 .rst(rst) ,
	//struct input
	.s_struct_axis_tdata({structvar_205_0_tdata}),
	.s_struct_axis_tvalid({structvar_205_0_tvalid}),
	.s_struct_axis_tready({structvar_205_0_tready}),
	//output val
	.m_val_axis_tdata({struct_accessed_INT_208_tdata}),
	.m_val_axis_tvalid({struct_accessed_INT_208_tvalid}),
	.m_val_axis_tready({struct_accessed_INT_208_tready})
);

//Arithmetic OP Out
 wire [64-1:0] ADD_209_out_INT_210_tdata;
 wire  ADD_209_out_INT_210_tvalid;
 wire  ADD_209_out_INT_210_tready;

ALU#(
.LVAL_SIZE(64),
.RVAL_SIZE(32),
.RESULT_SIZE(64),
.OPID(1)
)ADD_209(
	 .clk(clk), 
	 .rst(rst) ,
	//lval input
	.s_lval_axis_tdata({struct_accessed_INT_208_tdata}),
	.s_lval_axis_tvalid({struct_accessed_INT_208_tvalid}),
	.s_lval_axis_tready({struct_accessed_INT_208_tready}),
	//rval input
	.s_rval_axis_tdata({arg_169_2_tdata}),
	.s_rval_axis_tvalid({arg_169_2_tvalid}),
	.s_rval_axis_tready({arg_169_2_tready}),
	//output val
	.m_val_axis_tdata({ADD_209_out_INT_210_tdata}),
	.m_val_axis_tvalid({ADD_209_out_INT_210_tvalid}),
	.m_val_axis_tready({ADD_209_out_INT_210_tready})
);

//struct_assign_211 output struct
 wire [320-1:0] structvar_212_tdata;
 wire  structvar_212_tvalid;
 wire  structvar_212_tready;

struct_assign#(
.STRUCT_WIDTH(320),
.ASSIGN_OFFSET(64),
.ASSIGN_SIZE(64)
)struct_assign_211(
	 .clk(clk), 
	 .rst(rst) ,
	//input struct
	.s_struct_axis_tdata({structvar_205_1_tdata}),
	.s_struct_axis_tvalid({structvar_205_1_tvalid}),
	.s_struct_axis_tready({structvar_205_1_tready}),
	//input val
	.s_assignv_axis_tdata({ADD_209_out_INT_210_tdata}),
	.s_assignv_axis_tvalid({ADD_209_out_INT_210_tvalid}),
	.s_assignv_axis_tready({ADD_209_out_INT_210_tready}),
	//output struct
	.m_struct_axis_tdata({structvar_212_tdata}),
	.m_struct_axis_tvalid({structvar_212_tvalid}),
	.m_struct_axis_tready({structvar_212_tready})
);

//Arithmetic OP Out
 wire [32-1:0] ADD_213_out_INT_214_tdata;
 wire  ADD_213_out_INT_214_tvalid;
 wire  ADD_213_out_INT_214_tready;

ALU#(
.LVAL_SIZE(32),
.RVAL_SIZE(32),
.RESULT_SIZE(32),
.OPID(1)
)ADD_213(
	 .clk(clk), 
	 .rst(rst) ,
	//lval input
	.s_lval_axis_tdata({arg_162_0_tdata}),
	.s_lval_axis_tvalid({arg_162_0_tvalid}),
	.s_lval_axis_tready({arg_162_0_tready}),
	//rval input
	.s_rval_axis_tdata({arg_169_3_tdata}),
	.s_rval_axis_tvalid({arg_169_3_tvalid}),
	.s_rval_axis_tready({arg_169_3_tready}),
	//output val
	.m_val_axis_tdata({ADD_213_out_INT_214_tdata}),
	.m_val_axis_tvalid({ADD_213_out_INT_214_tvalid}),
	.m_val_axis_tready({ADD_213_out_INT_214_tready})
);

//struct_assign_215 output struct
 wire [320-1:0] structvar_216_tdata;
 wire  structvar_216_tvalid;
 wire  structvar_216_tready;

struct_assign#(
.STRUCT_WIDTH(320),
.ASSIGN_OFFSET(128),
.ASSIGN_SIZE(32)
)struct_assign_215(
	 .clk(clk), 
	 .rst(rst) ,
	//input struct
	.s_struct_axis_tdata({structvar_212_tdata}),
	.s_struct_axis_tvalid({structvar_212_tvalid}),
	.s_struct_axis_tready({structvar_212_tready}),
	//input val
	.s_assignv_axis_tdata({ADD_213_out_INT_214_tdata}),
	.s_assignv_axis_tvalid({ADD_213_out_INT_214_tvalid}),
	.s_assignv_axis_tready({ADD_213_out_INT_214_tready}),
	//output struct
	.m_struct_axis_tdata({structvar_216_tdata}),
	.m_struct_axis_tvalid({structvar_216_tvalid}),
	.m_struct_axis_tready({structvar_216_tready})
);

//Arithmetic OP Out
 wire [32-1:0] ADD_217_out_INT_218_tdata;
 wire  ADD_217_out_INT_218_tvalid;
 wire  ADD_217_out_INT_218_tready;

ALU#(
.LVAL_SIZE(32),
.RVAL_SIZE(32),
.RESULT_SIZE(32),
.OPID(1)
)ADD_217(
	 .clk(clk), 
	 .rst(rst) ,
	//lval input
	.s_lval_axis_tdata({const_INT_173_0_tdata}),
	.s_lval_axis_tvalid({const_INT_173_0_tvalid}),
	.s_lval_axis_tready({const_INT_173_0_tready}),
	//rval input
	.s_rval_axis_tdata({arg_169_4_tdata}),
	.s_rval_axis_tvalid({arg_169_4_tvalid}),
	.s_rval_axis_tready({arg_169_4_tready}),
	//output val
	.m_val_axis_tdata({ADD_217_out_INT_218_tdata}),
	.m_val_axis_tvalid({ADD_217_out_INT_218_tvalid}),
	.m_val_axis_tready({ADD_217_out_INT_218_tready})
);

//struct_assign_219 output struct
 wire [320-1:0] structvar_220_tdata;
 wire  structvar_220_tvalid;
 wire  structvar_220_tready;

struct_assign#(
.STRUCT_WIDTH(320),
.ASSIGN_OFFSET(160),
.ASSIGN_SIZE(32)
)struct_assign_219(
	 .clk(clk), 
	 .rst(rst) ,
	//input struct
	.s_struct_axis_tdata({structvar_216_tdata}),
	.s_struct_axis_tvalid({structvar_216_tvalid}),
	.s_struct_axis_tready({structvar_216_tready}),
	//input val
	.s_assignv_axis_tdata({ADD_217_out_INT_218_tdata}),
	.s_assignv_axis_tvalid({ADD_217_out_INT_218_tvalid}),
	.s_assignv_axis_tready({ADD_217_out_INT_218_tready}),
	//output struct
	.m_struct_axis_tdata({structvar_220_tdata}),
	.m_struct_axis_tvalid({structvar_220_tvalid}),
	.m_struct_axis_tready({structvar_220_tready})
);

//Arithmetic OP Out
 wire [16-1:0] ADD_221_out_INT_222_tdata;
 wire  ADD_221_out_INT_222_tvalid;
 wire  ADD_221_out_INT_222_tready;

ALU#(
.LVAL_SIZE(16),
.RVAL_SIZE(32),
.RESULT_SIZE(16),
.OPID(1)
)ADD_221(
	 .clk(clk), 
	 .rst(rst) ,
	//lval input
	.s_lval_axis_tdata({const_INT_175_0_tdata}),
	.s_lval_axis_tvalid({const_INT_175_0_tvalid}),
	.s_lval_axis_tready({const_INT_175_0_tready}),
	//rval input
	.s_rval_axis_tdata({arg_169_5_tdata}),
	.s_rval_axis_tvalid({arg_169_5_tvalid}),
	.s_rval_axis_tready({arg_169_5_tready}),
	//output val
	.m_val_axis_tdata({ADD_221_out_INT_222_tdata}),
	.m_val_axis_tvalid({ADD_221_out_INT_222_tvalid}),
	.m_val_axis_tready({ADD_221_out_INT_222_tready})
);

//struct_assign_223 output struct
 wire [320-1:0] structvar_224_tdata;
 wire  structvar_224_tvalid;
 wire  structvar_224_tready;

struct_assign#(
.STRUCT_WIDTH(320),
.ASSIGN_OFFSET(192),
.ASSIGN_SIZE(16)
)struct_assign_223(
	 .clk(clk), 
	 .rst(rst) ,
	//input struct
	.s_struct_axis_tdata({structvar_220_tdata}),
	.s_struct_axis_tvalid({structvar_220_tvalid}),
	.s_struct_axis_tready({structvar_220_tready}),
	//input val
	.s_assignv_axis_tdata({ADD_221_out_INT_222_tdata}),
	.s_assignv_axis_tvalid({ADD_221_out_INT_222_tvalid}),
	.s_assignv_axis_tready({ADD_221_out_INT_222_tready}),
	//output struct
	.m_struct_axis_tdata({structvar_224_tdata}),
	.m_struct_axis_tvalid({structvar_224_tvalid}),
	.m_struct_axis_tready({structvar_224_tready})
);

//Arithmetic OP Out
 wire [16-1:0] ADD_225_out_INT_226_tdata;
 wire  ADD_225_out_INT_226_tvalid;
 wire  ADD_225_out_INT_226_tready;

ALU#(
.LVAL_SIZE(16),
.RVAL_SIZE(32),
.RESULT_SIZE(16),
.OPID(1)
)ADD_225(
	 .clk(clk), 
	 .rst(rst) ,
	//lval input
	.s_lval_axis_tdata({const_INT_177_0_tdata}),
	.s_lval_axis_tvalid({const_INT_177_0_tvalid}),
	.s_lval_axis_tready({const_INT_177_0_tready}),
	//rval input
	.s_rval_axis_tdata({arg_169_6_tdata}),
	.s_rval_axis_tvalid({arg_169_6_tvalid}),
	.s_rval_axis_tready({arg_169_6_tready}),
	//output val
	.m_val_axis_tdata({ADD_225_out_INT_226_tdata}),
	.m_val_axis_tvalid({ADD_225_out_INT_226_tvalid}),
	.m_val_axis_tready({ADD_225_out_INT_226_tready})
);

//struct_assign_227 output struct
 wire [320-1:0] structvar_228_tdata;
 wire  structvar_228_tvalid;
 wire  structvar_228_tready;

struct_assign#(
.STRUCT_WIDTH(320),
.ASSIGN_OFFSET(208),
.ASSIGN_SIZE(16)
)struct_assign_227(
	 .clk(clk), 
	 .rst(rst) ,
	//input struct
	.s_struct_axis_tdata({structvar_224_tdata}),
	.s_struct_axis_tvalid({structvar_224_tvalid}),
	.s_struct_axis_tready({structvar_224_tready}),
	//input val
	.s_assignv_axis_tdata({ADD_225_out_INT_226_tdata}),
	.s_assignv_axis_tvalid({ADD_225_out_INT_226_tvalid}),
	.s_assignv_axis_tready({ADD_225_out_INT_226_tready}),
	//output struct
	.m_struct_axis_tdata({structvar_228_tdata}),
	.m_struct_axis_tvalid({structvar_228_tvalid}),
	.m_struct_axis_tready({structvar_228_tready})
);

//Arithmetic OP Out
 wire [32-1:0] ADD_229_out_INT_230_tdata;
 wire  ADD_229_out_INT_230_tvalid;
 wire  ADD_229_out_INT_230_tready;

ALU#(
.LVAL_SIZE(32),
.RVAL_SIZE(32),
.RESULT_SIZE(32),
.OPID(1)
)ADD_229(
	 .clk(clk), 
	 .rst(rst) ,
	//lval input
	.s_lval_axis_tdata({arg_162_1_tdata}),
	.s_lval_axis_tvalid({arg_162_1_tvalid}),
	.s_lval_axis_tready({arg_162_1_tready}),
	//rval input
	.s_rval_axis_tdata({const_INT_173_1_tdata}),
	.s_rval_axis_tvalid({const_INT_173_1_tvalid}),
	.s_rval_axis_tready({const_INT_173_1_tready}),
	//output val
	.m_val_axis_tdata({ADD_229_out_INT_230_tdata}),
	.m_val_axis_tvalid({ADD_229_out_INT_230_tvalid}),
	.m_val_axis_tready({ADD_229_out_INT_230_tready})
);

//Arithmetic OP Out
 wire [32-1:0] ADD_231_out_INT_232_tdata;
 wire  ADD_231_out_INT_232_tvalid;
 wire  ADD_231_out_INT_232_tready;

ALU#(
.LVAL_SIZE(32),
.RVAL_SIZE(16),
.RESULT_SIZE(32),
.OPID(1)
)ADD_231(
	 .clk(clk), 
	 .rst(rst) ,
	//lval input
	.s_lval_axis_tdata({ADD_229_out_INT_230_tdata}),
	.s_lval_axis_tvalid({ADD_229_out_INT_230_tvalid}),
	.s_lval_axis_tready({ADD_229_out_INT_230_tready}),
	//rval input
	.s_rval_axis_tdata({const_INT_175_1_tdata}),
	.s_rval_axis_tvalid({const_INT_175_1_tvalid}),
	.s_rval_axis_tready({const_INT_175_1_tready}),
	//output val
	.m_val_axis_tdata({ADD_231_out_INT_232_tdata}),
	.m_val_axis_tvalid({ADD_231_out_INT_232_tvalid}),
	.m_val_axis_tready({ADD_231_out_INT_232_tready})
);

//Arithmetic OP Out
 wire [32-1:0] ADD_233_out_INT_234_tdata;
 wire  ADD_233_out_INT_234_tvalid;
 wire  ADD_233_out_INT_234_tready;

ALU#(
.LVAL_SIZE(32),
.RVAL_SIZE(16),
.RESULT_SIZE(32),
.OPID(1)
)ADD_233(
	 .clk(clk), 
	 .rst(rst) ,
	//lval input
	.s_lval_axis_tdata({ADD_231_out_INT_232_tdata}),
	.s_lval_axis_tvalid({ADD_231_out_INT_232_tvalid}),
	.s_lval_axis_tready({ADD_231_out_INT_232_tready}),
	//rval input
	.s_rval_axis_tdata({const_INT_177_1_tdata}),
	.s_rval_axis_tvalid({const_INT_177_1_tvalid}),
	.s_rval_axis_tready({const_INT_177_1_tready}),
	//output val
	.m_val_axis_tdata({ADD_233_out_INT_234_tdata}),
	.m_val_axis_tvalid({ADD_233_out_INT_234_tvalid}),
	.m_val_axis_tready({ADD_233_out_INT_234_tready})
);

//Arithmetic OP Out
 wire [32-1:0] ADD_235_out_INT_236_tdata;
 wire  ADD_235_out_INT_236_tvalid;
 wire  ADD_235_out_INT_236_tready;

ALU#(
.LVAL_SIZE(32),
.RVAL_SIZE(32),
.RESULT_SIZE(32),
.OPID(1)
)ADD_235(
	 .clk(clk), 
	 .rst(rst) ,
	//lval input
	.s_lval_axis_tdata({ADD_233_out_INT_234_tdata}),
	.s_lval_axis_tvalid({ADD_233_out_INT_234_tvalid}),
	.s_lval_axis_tready({ADD_233_out_INT_234_tready}),
	//rval input
	.s_rval_axis_tdata({arg_169_7_tdata}),
	.s_rval_axis_tvalid({arg_169_7_tvalid}),
	.s_rval_axis_tready({arg_169_7_tready}),
	//output val
	.m_val_axis_tdata({ADD_235_out_INT_236_tdata}),
	.m_val_axis_tvalid({ADD_235_out_INT_236_tvalid}),
	.m_val_axis_tready({ADD_235_out_INT_236_tready})
);

//bitcast dst
 wire [64-1:0] bitcasted_237_tdata;
 wire  bitcasted_237_tvalid;
 wire  bitcasted_237_tready;

 assign bitcasted_237_tdata = ADD_235_out_INT_236_tdata;
 assign bitcasted_237_tvalid = ADD_235_out_INT_236_tvalid;
 assign ADD_235_out_INT_236_tready = bitcasted_237_tready;

//struct_assign_238 output struct
 wire [320-1:0] structvar_239_tdata;
 wire  structvar_239_tvalid;
 wire  structvar_239_tready;

//struct_assign_238 output struct
 wire [320-1:0] structvar_239_0_tdata;
 wire  structvar_239_0_tvalid;
 wire  structvar_239_0_tready;

//struct_assign_238 output struct
 wire [320-1:0] structvar_239_1_tdata;
 wire  structvar_239_1_tvalid;
 wire  structvar_239_1_tready;

//struct_assign_238 output struct
 wire [320-1:0] structvar_239_2_tdata;
 wire  structvar_239_2_tvalid;
 wire  structvar_239_2_tready;

//struct_assign_238 output struct
 wire [320-1:0] structvar_239_3_tdata;
 wire  structvar_239_3_tvalid;
 wire  structvar_239_3_tready;

//struct_assign_238 output struct
 wire [320-1:0] structvar_239_4_tdata;
 wire  structvar_239_4_tvalid;
 wire  structvar_239_4_tready;

axis_replication#(
.DATA_WIDTH(320),
.IF_STREAM(0),
.REAPLICA_COUNT(5)
)axis_replication_240(
	 .clk(clk), 
	 .rst(rst) ,
	//
	.s_axis_in_tdata({structvar_239_tdata}),
	.s_axis_in_tvalid({structvar_239_tvalid}),
	.s_axis_in_tready({structvar_239_tready}),
	//
	.m_axis_out_tdata({structvar_239_0_tdata,structvar_239_1_tdata,structvar_239_2_tdata,structvar_239_3_tdata,structvar_239_4_tdata}),
	.m_axis_out_tvalid({structvar_239_0_tvalid,structvar_239_1_tvalid,structvar_239_2_tvalid,structvar_239_3_tvalid,structvar_239_4_tvalid}),
	.m_axis_out_tready({structvar_239_0_tready,structvar_239_1_tready,structvar_239_2_tready,structvar_239_3_tready,structvar_239_4_tready})
);

struct_assign#(
.STRUCT_WIDTH(320),
.ASSIGN_OFFSET(256),
.ASSIGN_SIZE(64)
)struct_assign_238(
	 .clk(clk), 
	 .rst(rst) ,
	//input struct
	.s_struct_axis_tdata({structvar_228_tdata}),
	.s_struct_axis_tvalid({structvar_228_tvalid}),
	.s_struct_axis_tready({structvar_228_tready}),
	//input val
	.s_assignv_axis_tdata({bitcasted_237_tdata}),
	.s_assignv_axis_tvalid({bitcasted_237_tvalid}),
	.s_assignv_axis_tready({bitcasted_237_tready}),
	//output struct
	.m_struct_axis_tdata({structvar_239_tdata}),
	.m_struct_axis_tvalid({structvar_239_tvalid}),
	.m_struct_axis_tready({structvar_239_tready})
);

 assign table_195_update_p_0_req_index = struct_accessed_INT_193_1_tdata;
 assign table_195_update_p_0_req_index_valid = struct_accessed_INT_193_1_tvalid;
 assign struct_accessed_INT_193_1_tready = table_195_update_p_0_req_index_ready;

 assign table_195_update_p_0_req_data = structvar_239_0_tdata;
 assign table_195_update_p_0_req_data_valid = structvar_239_0_tvalid;
 assign structvar_239_0_tready = table_195_update_p_0_req_data_ready;

//Access Struct
 wire [32-1:0] struct_accessed_INT_242_tdata;
 wire  struct_accessed_INT_242_tvalid;
 wire  struct_accessed_INT_242_tready;

struct_access#(
.STRUCT_WIDTH(320),
.ACCESS_OFFSET(128),
.ACCESS_SIZE(32)
)struct_access_241(
	 .clk(clk), 
	 .rst(rst) ,
	//struct input
	.s_struct_axis_tdata({structvar_239_1_tdata}),
	.s_struct_axis_tvalid({structvar_239_1_tvalid}),
	.s_struct_axis_tready({structvar_239_1_tready}),
	//output val
	.m_val_axis_tdata({struct_accessed_INT_242_tdata}),
	.m_val_axis_tvalid({struct_accessed_INT_242_tvalid}),
	.m_val_axis_tready({struct_accessed_INT_242_tready})
);

//Access Struct
 wire [32-1:0] struct_accessed_INT_244_tdata;
 wire  struct_accessed_INT_244_tvalid;
 wire  struct_accessed_INT_244_tready;

struct_access#(
.STRUCT_WIDTH(320),
.ACCESS_OFFSET(160),
.ACCESS_SIZE(32)
)struct_access_243(
	 .clk(clk), 
	 .rst(rst) ,
	//struct input
	.s_struct_axis_tdata({structvar_239_2_tdata}),
	.s_struct_axis_tvalid({structvar_239_2_tvalid}),
	.s_struct_axis_tready({structvar_239_2_tready}),
	//output val
	.m_val_axis_tdata({struct_accessed_INT_244_tdata}),
	.m_val_axis_tvalid({struct_accessed_INT_244_tvalid}),
	.m_val_axis_tready({struct_accessed_INT_244_tready})
);

//Arithmetic OP Out
 wire [32-1:0] ADD_245_out_INT_246_tdata;
 wire  ADD_245_out_INT_246_tvalid;
 wire  ADD_245_out_INT_246_tready;

ALU#(
.LVAL_SIZE(32),
.RVAL_SIZE(32),
.RESULT_SIZE(32),
.OPID(1)
)ADD_245(
	 .clk(clk), 
	 .rst(rst) ,
	//lval input
	.s_lval_axis_tdata({struct_accessed_INT_242_tdata}),
	.s_lval_axis_tvalid({struct_accessed_INT_242_tvalid}),
	.s_lval_axis_tready({struct_accessed_INT_242_tready}),
	//rval input
	.s_rval_axis_tdata({struct_accessed_INT_244_tdata}),
	.s_rval_axis_tvalid({struct_accessed_INT_244_tvalid}),
	.s_rval_axis_tready({struct_accessed_INT_244_tready}),
	//output val
	.m_val_axis_tdata({ADD_245_out_INT_246_tdata}),
	.m_val_axis_tvalid({ADD_245_out_INT_246_tvalid}),
	.m_val_axis_tready({ADD_245_out_INT_246_tready})
);

//Access Struct
 wire [16-1:0] struct_accessed_INT_248_tdata;
 wire  struct_accessed_INT_248_tvalid;
 wire  struct_accessed_INT_248_tready;

struct_access#(
.STRUCT_WIDTH(320),
.ACCESS_OFFSET(192),
.ACCESS_SIZE(16)
)struct_access_247(
	 .clk(clk), 
	 .rst(rst) ,
	//struct input
	.s_struct_axis_tdata({structvar_239_3_tdata}),
	.s_struct_axis_tvalid({structvar_239_3_tvalid}),
	.s_struct_axis_tready({structvar_239_3_tready}),
	//output val
	.m_val_axis_tdata({struct_accessed_INT_248_tdata}),
	.m_val_axis_tvalid({struct_accessed_INT_248_tvalid}),
	.m_val_axis_tready({struct_accessed_INT_248_tready})
);

//Arithmetic OP Out
 wire [32-1:0] ADD_249_out_INT_250_tdata;
 wire  ADD_249_out_INT_250_tvalid;
 wire  ADD_249_out_INT_250_tready;

ALU#(
.LVAL_SIZE(32),
.RVAL_SIZE(16),
.RESULT_SIZE(32),
.OPID(1)
)ADD_249(
	 .clk(clk), 
	 .rst(rst) ,
	//lval input
	.s_lval_axis_tdata({ADD_245_out_INT_246_tdata}),
	.s_lval_axis_tvalid({ADD_245_out_INT_246_tvalid}),
	.s_lval_axis_tready({ADD_245_out_INT_246_tready}),
	//rval input
	.s_rval_axis_tdata({struct_accessed_INT_248_tdata}),
	.s_rval_axis_tvalid({struct_accessed_INT_248_tvalid}),
	.s_rval_axis_tready({struct_accessed_INT_248_tready}),
	//output val
	.m_val_axis_tdata({ADD_249_out_INT_250_tdata}),
	.m_val_axis_tvalid({ADD_249_out_INT_250_tvalid}),
	.m_val_axis_tready({ADD_249_out_INT_250_tready})
);

//Access Struct
 wire [16-1:0] struct_accessed_INT_252_tdata;
 wire  struct_accessed_INT_252_tvalid;
 wire  struct_accessed_INT_252_tready;

struct_access#(
.STRUCT_WIDTH(320),
.ACCESS_OFFSET(208),
.ACCESS_SIZE(16)
)struct_access_251(
	 .clk(clk), 
	 .rst(rst) ,
	//struct input
	.s_struct_axis_tdata({structvar_239_4_tdata}),
	.s_struct_axis_tvalid({structvar_239_4_tvalid}),
	.s_struct_axis_tready({structvar_239_4_tready}),
	//output val
	.m_val_axis_tdata({struct_accessed_INT_252_tdata}),
	.m_val_axis_tvalid({struct_accessed_INT_252_tvalid}),
	.m_val_axis_tready({struct_accessed_INT_252_tready})
);

//Arithmetic OP Out
 wire [32-1:0] ADD_253_out_INT_254_tdata;
 wire  ADD_253_out_INT_254_tvalid;
 wire  ADD_253_out_INT_254_tready;

ALU#(
.LVAL_SIZE(32),
.RVAL_SIZE(16),
.RESULT_SIZE(32),
.OPID(1)
)ADD_253(
	 .clk(clk), 
	 .rst(rst) ,
	//lval input
	.s_lval_axis_tdata({ADD_249_out_INT_250_tdata}),
	.s_lval_axis_tvalid({ADD_249_out_INT_250_tvalid}),
	.s_lval_axis_tready({ADD_249_out_INT_250_tready}),
	//rval input
	.s_rval_axis_tdata({struct_accessed_INT_252_tdata}),
	.s_rval_axis_tvalid({struct_accessed_INT_252_tvalid}),
	.s_rval_axis_tready({struct_accessed_INT_252_tready}),
	//output val
	.m_val_axis_tdata({ADD_253_out_INT_254_tdata}),
	.m_val_axis_tvalid({ADD_253_out_INT_254_tvalid}),
	.m_val_axis_tready({ADD_253_out_INT_254_tready})
);

//inited_STRUCT
 wire [160-1:0] inited_STRUCT_255_tdata=0;
 wire  inited_STRUCT_255_tvalid=1;
 wire  inited_STRUCT_255_tready;

//bitcast dst
 wire [64-1:0] bitcasted_256_tdata;
 wire  bitcasted_256_tvalid;
 wire  bitcasted_256_tready;

 assign bitcasted_256_tdata = ADD_253_out_INT_254_tdata;
 assign bitcasted_256_tvalid = ADD_253_out_INT_254_tvalid;
 assign ADD_253_out_INT_254_tready = bitcasted_256_tready;

//struct_assign_257 output struct
 wire [160-1:0] structvar_258_tdata;
 wire  structvar_258_tvalid;
 wire  structvar_258_tready;

struct_assign#(
.STRUCT_WIDTH(160),
.ASSIGN_OFFSET(0),
.ASSIGN_SIZE(64)
)struct_assign_257(
	 .clk(clk), 
	 .rst(rst) ,
	//input struct
	.s_struct_axis_tdata({inited_STRUCT_255_tdata}),
	.s_struct_axis_tvalid({inited_STRUCT_255_tvalid}),
	.s_struct_axis_tready({inited_STRUCT_255_tready}),
	//input val
	.s_assignv_axis_tdata({bitcasted_256_tdata}),
	.s_assignv_axis_tvalid({bitcasted_256_tvalid}),
	.s_assignv_axis_tready({bitcasted_256_tready}),
	//output struct
	.m_struct_axis_tdata({structvar_258_tdata}),
	.m_struct_axis_tvalid({structvar_258_tvalid}),
	.m_struct_axis_tready({structvar_258_tready})
);

//emit_module_259 output buf
 wire [512-1:0] bufvar_260_tdata;
 wire [64-1:0] bufvar_260_tkeep;
 wire  bufvar_260_tvalid;
 wire  bufvar_260_tready;
 wire  bufvar_260_tlast;

emit#(
.BUF_DATA_WIDTH(512),
.BUF_KEEP_WIDTH(64),
.IF_INPUT_BUF(0),
.INPUT_BUF_STRUCT_WIDTH(160)
)emit_module_259(
	 .clk(clk), 
	 .rst(rst) ,
	//input buf
	.s_inbuf_axis_tdata({bufvar_191_tdata}),
	.s_inbuf_axis_tkeep({bufvar_191_tkeep}),
	.s_inbuf_axis_tlast({bufvar_191_tlast}),
	.s_inbuf_axis_tvalid({bufvar_191_tvalid}),
	.s_inbuf_axis_tready({bufvar_191_tready}),
	//input struct/buf
	.s_struct_axis_tdata({structvar_258_tdata}),
	.s_struct_axis_tvalid({structvar_258_tvalid}),
	.s_struct_axis_tready({structvar_258_tready}),
	//output buf
	.m_outbuf_axis_tdata({bufvar_260_tdata}),
	.m_outbuf_axis_tkeep({bufvar_260_tkeep}),
	.m_outbuf_axis_tlast({bufvar_260_tlast}),
	.m_outbuf_axis_tvalid({bufvar_260_tvalid}),
	.m_outbuf_axis_tready({bufvar_260_tready})
);

 assign NET_SEND_0_tdata = bufvar_260_tdata;
 assign NET_SEND_0_tvalid = bufvar_260_tvalid;
 assign bufvar_260_tready = NET_SEND_0_tready;
 assign NET_SEND_0_tkeep = bufvar_260_tkeep;
 assign NET_SEND_0_tlast = bufvar_260_tlast;


endmodule
