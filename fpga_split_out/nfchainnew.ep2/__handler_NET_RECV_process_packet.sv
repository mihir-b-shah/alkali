module __handler_NET_RECV_process_packet#()
(
	 input  wire clk, 
	 input  wire rst,
	//input ports BUF
	input wire [512-1:0] NET_RECV_0_tdata ,
	input wire [64-1:0] NET_RECV_0_tkeep ,
	input wire  NET_RECV_0_tlast ,
	input wire  NET_RECV_0_tvalid ,
	output wire  NET_RECV_0_tready,
	//output ports INT
	output wire [32-1:0] outport_8_0_tdata ,
	output wire  outport_8_0_tvalid ,
	input wire  outport_8_0_tready,
	//output ports INT
	output wire [32-1:0] outport_8_1_tdata ,
	output wire  outport_8_1_tvalid ,
	input wire  outport_8_1_tready,
	//output ports INT
	output wire [32-1:0] outport_8_2_tdata ,
	output wire  outport_8_2_tvalid ,
	input wire  outport_8_2_tready,
	//output ports INT
	output wire [32-1:0] outport_8_3_tdata ,
	output wire  outport_8_3_tvalid ,
	input wire  outport_8_3_tready,
	//output ports INT
	output wire [32-1:0] outport_8_4_tdata ,
	output wire  outport_8_4_tvalid ,
	input wire  outport_8_4_tready,
	//output ports INT
	output wire [32-1:0] outport_8_5_tdata ,
	output wire  outport_8_5_tvalid ,
	input wire  outport_8_5_tready,
	//output ports INT
	output wire [32-1:0] outport_8_6_tdata ,
	output wire  outport_8_6_tvalid ,
	input wire  outport_8_6_tready,
	//output ports STRUCT
	output wire [160-1:0] outport_8_7_tdata ,
	output wire  outport_8_7_tvalid ,
	input wire  outport_8_7_tready,
	//output ports BUF
	output wire [512-1:0] outport_8_8_tdata ,
	output wire [64-1:0] outport_8_8_tkeep ,
	output wire  outport_8_8_tlast ,
	output wire  outport_8_8_tvalid ,
	input wire  outport_8_8_tready,
	//output ports INT
	output wire [32-1:0] outport_8_9_tdata ,
	output wire  outport_8_9_tvalid ,
	input wire  outport_8_9_tready
);
//const_INT
 wire [32-1:0] const_INT_9_tdata=256;
 wire  const_INT_9_tvalid=1;
 wire  const_INT_9_tready;

//const_INT
 wire [32-1:0] const_INT_10_tdata=134744072;
 wire  const_INT_10_tvalid=1;
 wire  const_INT_10_tready;

//const_INT
 wire [32-1:0] const_INT_11_tdata=1;
 wire  const_INT_11_tvalid=1;
 wire  const_INT_11_tready;

//const_INT
 wire [32-1:0] const_INT_11_0_tdata;
 wire  const_INT_11_0_tvalid;
 wire  const_INT_11_0_tready;

//const_INT
 wire [32-1:0] const_INT_11_1_tdata;
 wire  const_INT_11_1_tvalid;
 wire  const_INT_11_1_tready;

axis_replication#(
.DATA_WIDTH(32),
.IF_STREAM(0),
.REAPLICA_COUNT(2)
)axis_replication_12(
	 .clk(clk), 
	 .rst(rst) ,
	//
	.s_axis_in_tdata({const_INT_11_tdata}),
	.s_axis_in_tvalid({const_INT_11_tvalid}),
	.s_axis_in_tready({const_INT_11_tready}),
	//
	.m_axis_out_tdata({const_INT_11_0_tdata,const_INT_11_1_tdata}),
	.m_axis_out_tvalid({const_INT_11_0_tvalid,const_INT_11_1_tvalid}),
	.m_axis_out_tready({const_INT_11_0_tready,const_INT_11_1_tready})
);

//extract_module_13 output buf
 wire [512-1:0] bufvar_14_tdata;
 wire [64-1:0] bufvar_14_tkeep;
 wire  bufvar_14_tvalid;
 wire  bufvar_14_tready;
 wire  bufvar_14_tlast;

//extract_module_13 output struct
 wire [112-1:0] structvar_15_tdata;
 wire  structvar_15_tvalid;
 wire  structvar_15_tready=1;

extract#(
.BUF_DATA_WIDTH(512),
.BUF_KEEP_WIDTH(64),
.EXTRACTED_STRUCT_WIDTH(112)
)extract_module_13(
	 .clk(clk), 
	 .rst(rst) ,
	//input buf
	.s_inbuf_axis_tdata({NET_RECV_0_tdata}),
	.s_inbuf_axis_tkeep({NET_RECV_0_tkeep}),
	.s_inbuf_axis_tlast({NET_RECV_0_tlast}),
	.s_inbuf_axis_tvalid({NET_RECV_0_tvalid}),
	.s_inbuf_axis_tready({NET_RECV_0_tready}),
	//output buf
	.m_outbuf_axis_tdata({bufvar_14_tdata}),
	.m_outbuf_axis_tkeep({bufvar_14_tkeep}),
	.m_outbuf_axis_tlast({bufvar_14_tlast}),
	.m_outbuf_axis_tvalid({bufvar_14_tvalid}),
	.m_outbuf_axis_tready({bufvar_14_tready}),
	//output struct
	.m_extracted_axis_tdata({structvar_15_tdata}),
	.m_extracted_axis_tvalid({structvar_15_tvalid}),
	.m_extracted_axis_tready({structvar_15_tready})
);

//extract_module_16 output buf
 wire [512-1:0] bufvar_17_tdata;
 wire [64-1:0] bufvar_17_tkeep;
 wire  bufvar_17_tvalid;
 wire  bufvar_17_tready;
 wire  bufvar_17_tlast;

//extract_module_16 output struct
 wire [192-1:0] structvar_18_tdata;
 wire  structvar_18_tvalid;
 wire  structvar_18_tready;

//extract_module_16 output struct
 wire [192-1:0] structvar_18_0_tdata;
 wire  structvar_18_0_tvalid;
 wire  structvar_18_0_tready;

//extract_module_16 output struct
 wire [192-1:0] structvar_18_1_tdata;
 wire  structvar_18_1_tvalid;
 wire  structvar_18_1_tready;

//extract_module_16 output struct
 wire [192-1:0] structvar_18_2_tdata;
 wire  structvar_18_2_tvalid;
 wire  structvar_18_2_tready;

axis_replication#(
.DATA_WIDTH(192),
.IF_STREAM(0),
.REAPLICA_COUNT(3)
)axis_replication_19(
	 .clk(clk), 
	 .rst(rst) ,
	//
	.s_axis_in_tdata({structvar_18_tdata}),
	.s_axis_in_tvalid({structvar_18_tvalid}),
	.s_axis_in_tready({structvar_18_tready}),
	//
	.m_axis_out_tdata({structvar_18_0_tdata,structvar_18_1_tdata,structvar_18_2_tdata}),
	.m_axis_out_tvalid({structvar_18_0_tvalid,structvar_18_1_tvalid,structvar_18_2_tvalid}),
	.m_axis_out_tready({structvar_18_0_tready,structvar_18_1_tready,structvar_18_2_tready})
);

extract#(
.BUF_DATA_WIDTH(512),
.BUF_KEEP_WIDTH(64),
.EXTRACTED_STRUCT_WIDTH(192)
)extract_module_16(
	 .clk(clk), 
	 .rst(rst) ,
	//input buf
	.s_inbuf_axis_tdata({bufvar_14_tdata}),
	.s_inbuf_axis_tkeep({bufvar_14_tkeep}),
	.s_inbuf_axis_tlast({bufvar_14_tlast}),
	.s_inbuf_axis_tvalid({bufvar_14_tvalid}),
	.s_inbuf_axis_tready({bufvar_14_tready}),
	//output buf
	.m_outbuf_axis_tdata({bufvar_17_tdata}),
	.m_outbuf_axis_tkeep({bufvar_17_tkeep}),
	.m_outbuf_axis_tlast({bufvar_17_tlast}),
	.m_outbuf_axis_tvalid({bufvar_17_tvalid}),
	.m_outbuf_axis_tready({bufvar_17_tready}),
	//output struct
	.m_extracted_axis_tdata({structvar_18_tdata}),
	.m_extracted_axis_tvalid({structvar_18_tvalid}),
	.m_extracted_axis_tready({structvar_18_tready})
);

//extract_module_20 output buf
 wire [512-1:0] bufvar_21_tdata;
 wire [64-1:0] bufvar_21_tkeep;
 wire  bufvar_21_tvalid;
 wire  bufvar_21_tready;
 wire  bufvar_21_tlast;

//extract_module_20 output struct
 wire [160-1:0] structvar_22_tdata;
 wire  structvar_22_tvalid;
 wire  structvar_22_tready;

//extract_module_20 output struct
 wire [160-1:0] structvar_22_0_tdata;
 wire  structvar_22_0_tvalid;
 wire  structvar_22_0_tready;

//extract_module_20 output struct
 wire [160-1:0] structvar_22_1_tdata;
 wire  structvar_22_1_tvalid;
 wire  structvar_22_1_tready;

//extract_module_20 output struct
 wire [160-1:0] structvar_22_2_tdata;
 wire  structvar_22_2_tvalid;
 wire  structvar_22_2_tready;

//extract_module_20 output struct
 wire [160-1:0] structvar_22_3_tdata;
 wire  structvar_22_3_tvalid;
 wire  structvar_22_3_tready;

//extract_module_20 output struct
 wire [160-1:0] structvar_22_4_tdata;
 wire  structvar_22_4_tvalid;
 wire  structvar_22_4_tready;

axis_replication#(
.DATA_WIDTH(160),
.IF_STREAM(0),
.REAPLICA_COUNT(5)
)axis_replication_23(
	 .clk(clk), 
	 .rst(rst) ,
	//
	.s_axis_in_tdata({structvar_22_tdata}),
	.s_axis_in_tvalid({structvar_22_tvalid}),
	.s_axis_in_tready({structvar_22_tready}),
	//
	.m_axis_out_tdata({structvar_22_0_tdata,structvar_22_1_tdata,structvar_22_2_tdata,structvar_22_3_tdata,structvar_22_4_tdata}),
	.m_axis_out_tvalid({structvar_22_0_tvalid,structvar_22_1_tvalid,structvar_22_2_tvalid,structvar_22_3_tvalid,structvar_22_4_tvalid}),
	.m_axis_out_tready({structvar_22_0_tready,structvar_22_1_tready,structvar_22_2_tready,structvar_22_3_tready,structvar_22_4_tready})
);

extract#(
.BUF_DATA_WIDTH(512),
.BUF_KEEP_WIDTH(64),
.EXTRACTED_STRUCT_WIDTH(160)
)extract_module_20(
	 .clk(clk), 
	 .rst(rst) ,
	//input buf
	.s_inbuf_axis_tdata({bufvar_17_tdata}),
	.s_inbuf_axis_tkeep({bufvar_17_tkeep}),
	.s_inbuf_axis_tlast({bufvar_17_tlast}),
	.s_inbuf_axis_tvalid({bufvar_17_tvalid}),
	.s_inbuf_axis_tready({bufvar_17_tready}),
	//output buf
	.m_outbuf_axis_tdata({bufvar_21_tdata}),
	.m_outbuf_axis_tkeep({bufvar_21_tkeep}),
	.m_outbuf_axis_tlast({bufvar_21_tlast}),
	.m_outbuf_axis_tvalid({bufvar_21_tvalid}),
	.m_outbuf_axis_tready({bufvar_21_tready}),
	//output struct
	.m_extracted_axis_tdata({structvar_22_tdata}),
	.m_extracted_axis_tvalid({structvar_22_tvalid}),
	.m_extracted_axis_tready({structvar_22_tready})
);

//Access Struct
 wire [32-1:0] struct_accessed_INT_25_tdata;
 wire  struct_accessed_INT_25_tvalid;
 wire  struct_accessed_INT_25_tready;

struct_access#(
.STRUCT_WIDTH(192),
.ACCESS_OFFSET(96),
.ACCESS_SIZE(32)
)struct_access_24(
	 .clk(clk), 
	 .rst(rst) ,
	//struct input
	.s_struct_axis_tdata({structvar_18_0_tdata}),
	.s_struct_axis_tvalid({structvar_18_0_tvalid}),
	.s_struct_axis_tready({structvar_18_0_tready}),
	//output val
	.m_val_axis_tdata({struct_accessed_INT_25_tdata}),
	.m_val_axis_tvalid({struct_accessed_INT_25_tvalid}),
	.m_val_axis_tready({struct_accessed_INT_25_tready})
);

//Access Struct
 wire [32-1:0] struct_accessed_INT_27_tdata;
 wire  struct_accessed_INT_27_tvalid;
 wire  struct_accessed_INT_27_tready;

struct_access#(
.STRUCT_WIDTH(192),
.ACCESS_OFFSET(128),
.ACCESS_SIZE(32)
)struct_access_26(
	 .clk(clk), 
	 .rst(rst) ,
	//struct input
	.s_struct_axis_tdata({structvar_18_1_tdata}),
	.s_struct_axis_tvalid({structvar_18_1_tvalid}),
	.s_struct_axis_tready({structvar_18_1_tready}),
	//output val
	.m_val_axis_tdata({struct_accessed_INT_27_tdata}),
	.m_val_axis_tvalid({struct_accessed_INT_27_tvalid}),
	.m_val_axis_tready({struct_accessed_INT_27_tready})
);

//Arithmetic OP Out
 wire [32-1:0] ADD_28_out_INT_29_tdata;
 wire  ADD_28_out_INT_29_tvalid;
 wire  ADD_28_out_INT_29_tready;

ALU#(
.LVAL_SIZE(32),
.RVAL_SIZE(32),
.RESULT_SIZE(32),
.OPID(1)
)ADD_28(
	 .clk(clk), 
	 .rst(rst) ,
	//lval input
	.s_lval_axis_tdata({struct_accessed_INT_25_tdata}),
	.s_lval_axis_tvalid({struct_accessed_INT_25_tvalid}),
	.s_lval_axis_tready({struct_accessed_INT_25_tready}),
	//rval input
	.s_rval_axis_tdata({struct_accessed_INT_27_tdata}),
	.s_rval_axis_tvalid({struct_accessed_INT_27_tvalid}),
	.s_rval_axis_tready({struct_accessed_INT_27_tready}),
	//output val
	.m_val_axis_tdata({ADD_28_out_INT_29_tdata}),
	.m_val_axis_tvalid({ADD_28_out_INT_29_tvalid}),
	.m_val_axis_tready({ADD_28_out_INT_29_tready})
);

//Access Struct
 wire [16-1:0] struct_accessed_INT_31_tdata;
 wire  struct_accessed_INT_31_tvalid;
 wire  struct_accessed_INT_31_tready;

struct_access#(
.STRUCT_WIDTH(160),
.ACCESS_OFFSET(0),
.ACCESS_SIZE(16)
)struct_access_30(
	 .clk(clk), 
	 .rst(rst) ,
	//struct input
	.s_struct_axis_tdata({structvar_22_0_tdata}),
	.s_struct_axis_tvalid({structvar_22_0_tvalid}),
	.s_struct_axis_tready({structvar_22_0_tready}),
	//output val
	.m_val_axis_tdata({struct_accessed_INT_31_tdata}),
	.m_val_axis_tvalid({struct_accessed_INT_31_tvalid}),
	.m_val_axis_tready({struct_accessed_INT_31_tready})
);

//Arithmetic OP Out
 wire [32-1:0] ADD_32_out_INT_33_tdata;
 wire  ADD_32_out_INT_33_tvalid;
 wire  ADD_32_out_INT_33_tready;

ALU#(
.LVAL_SIZE(32),
.RVAL_SIZE(16),
.RESULT_SIZE(32),
.OPID(1)
)ADD_32(
	 .clk(clk), 
	 .rst(rst) ,
	//lval input
	.s_lval_axis_tdata({ADD_28_out_INT_29_tdata}),
	.s_lval_axis_tvalid({ADD_28_out_INT_29_tvalid}),
	.s_lval_axis_tready({ADD_28_out_INT_29_tready}),
	//rval input
	.s_rval_axis_tdata({struct_accessed_INT_31_tdata}),
	.s_rval_axis_tvalid({struct_accessed_INT_31_tvalid}),
	.s_rval_axis_tready({struct_accessed_INT_31_tready}),
	//output val
	.m_val_axis_tdata({ADD_32_out_INT_33_tdata}),
	.m_val_axis_tvalid({ADD_32_out_INT_33_tvalid}),
	.m_val_axis_tready({ADD_32_out_INT_33_tready})
);

//Access Struct
 wire [16-1:0] struct_accessed_INT_35_tdata;
 wire  struct_accessed_INT_35_tvalid;
 wire  struct_accessed_INT_35_tready;

struct_access#(
.STRUCT_WIDTH(160),
.ACCESS_OFFSET(16),
.ACCESS_SIZE(16)
)struct_access_34(
	 .clk(clk), 
	 .rst(rst) ,
	//struct input
	.s_struct_axis_tdata({structvar_22_1_tdata}),
	.s_struct_axis_tvalid({structvar_22_1_tvalid}),
	.s_struct_axis_tready({structvar_22_1_tready}),
	//output val
	.m_val_axis_tdata({struct_accessed_INT_35_tdata}),
	.m_val_axis_tvalid({struct_accessed_INT_35_tvalid}),
	.m_val_axis_tready({struct_accessed_INT_35_tready})
);

//Arithmetic OP Out
 wire [32-1:0] ADD_36_out_INT_37_tdata;
 wire  ADD_36_out_INT_37_tvalid;
 wire  ADD_36_out_INT_37_tready;

//Arithmetic OP Out
 wire [32-1:0] ADD_36_out_INT_37_0_tdata;
 wire  ADD_36_out_INT_37_0_tvalid;
 wire  ADD_36_out_INT_37_0_tready;

//Arithmetic OP Out
 wire [32-1:0] ADD_36_out_INT_37_1_tdata;
 wire  ADD_36_out_INT_37_1_tvalid;
 wire  ADD_36_out_INT_37_1_tready;

//Arithmetic OP Out
 wire [32-1:0] ADD_36_out_INT_37_2_tdata;
 wire  ADD_36_out_INT_37_2_tvalid;
 wire  ADD_36_out_INT_37_2_tready;

//Arithmetic OP Out
 wire [32-1:0] ADD_36_out_INT_37_3_tdata;
 wire  ADD_36_out_INT_37_3_tvalid;
 wire  ADD_36_out_INT_37_3_tready;

//Arithmetic OP Out
 wire [32-1:0] ADD_36_out_INT_37_4_tdata;
 wire  ADD_36_out_INT_37_4_tvalid;
 wire  ADD_36_out_INT_37_4_tready;

axis_replication#(
.DATA_WIDTH(32),
.IF_STREAM(0),
.REAPLICA_COUNT(5)
)axis_replication_38(
	 .clk(clk), 
	 .rst(rst) ,
	//
	.s_axis_in_tdata({ADD_36_out_INT_37_tdata}),
	.s_axis_in_tvalid({ADD_36_out_INT_37_tvalid}),
	.s_axis_in_tready({ADD_36_out_INT_37_tready}),
	//
	.m_axis_out_tdata({ADD_36_out_INT_37_0_tdata,ADD_36_out_INT_37_1_tdata,ADD_36_out_INT_37_2_tdata,ADD_36_out_INT_37_3_tdata,ADD_36_out_INT_37_4_tdata}),
	.m_axis_out_tvalid({ADD_36_out_INT_37_0_tvalid,ADD_36_out_INT_37_1_tvalid,ADD_36_out_INT_37_2_tvalid,ADD_36_out_INT_37_3_tvalid,ADD_36_out_INT_37_4_tvalid}),
	.m_axis_out_tready({ADD_36_out_INT_37_0_tready,ADD_36_out_INT_37_1_tready,ADD_36_out_INT_37_2_tready,ADD_36_out_INT_37_3_tready,ADD_36_out_INT_37_4_tready})
);

ALU#(
.LVAL_SIZE(32),
.RVAL_SIZE(16),
.RESULT_SIZE(32),
.OPID(1)
)ADD_36(
	 .clk(clk), 
	 .rst(rst) ,
	//lval input
	.s_lval_axis_tdata({ADD_32_out_INT_33_tdata}),
	.s_lval_axis_tvalid({ADD_32_out_INT_33_tvalid}),
	.s_lval_axis_tready({ADD_32_out_INT_33_tready}),
	//rval input
	.s_rval_axis_tdata({struct_accessed_INT_35_tdata}),
	.s_rval_axis_tvalid({struct_accessed_INT_35_tvalid}),
	.s_rval_axis_tready({struct_accessed_INT_35_tready}),
	//output val
	.m_val_axis_tdata({ADD_36_out_INT_37_tdata}),
	.m_val_axis_tvalid({ADD_36_out_INT_37_tvalid}),
	.m_val_axis_tready({ADD_36_out_INT_37_tready})
);

//Access Struct
 wire [32-1:0] struct_accessed_INT_40_tdata;
 wire  struct_accessed_INT_40_tvalid;
 wire  struct_accessed_INT_40_tready;

struct_access#(
.STRUCT_WIDTH(192),
.ACCESS_OFFSET(96),
.ACCESS_SIZE(32)
)struct_access_39(
	 .clk(clk), 
	 .rst(rst) ,
	//struct input
	.s_struct_axis_tdata({structvar_18_2_tdata}),
	.s_struct_axis_tvalid({structvar_18_2_tvalid}),
	.s_struct_axis_tready({structvar_18_2_tready}),
	//output val
	.m_val_axis_tdata({struct_accessed_INT_40_tdata}),
	.m_val_axis_tvalid({struct_accessed_INT_40_tvalid}),
	.m_val_axis_tready({struct_accessed_INT_40_tready})
);

//Table lookup port wire def 
 wire [32-1:0] table_41_lookup_p_0_req_index;
 wire  table_41_lookup_p_0_req_valid;
 wire  table_41_lookup_p_0_req_ready;
 wire  table_41_lookup_p_0_value_valid;
 wire  table_41_lookup_p_0_value_ready;
 wire [160-1:0] table_41_lookup_p_0_value_data;

cam_arbiter#(
.TABLE_SIZE(64),
.KEY_SIZE(32),
.VALUE_SIZE(160),
.LOOKUP_PORTS(1),
.UPDATE_PORTS(1)
)table_41(
	 .clk(clk), 
	 .rst(rst) ,
	//lookup port 
	.s_lookup_req_index({table_41_lookup_p_0_req_index}),
	.s_lookup_req_valid({table_41_lookup_p_0_req_valid}),
	.s_lookup_req_ready({table_41_lookup_p_0_req_ready}),
	.s_lookup_value_valid({table_41_lookup_p_0_value_valid}),
	.s_lookup_value_data({table_41_lookup_p_0_value_data}),
	.s_lookup_value_ready({table_41_lookup_p_0_value_ready}),
	//update port 
	.s_update_req_index(),
	.s_update_req_index_valid(),
	.s_update_req_index_ready(),
	.s_update_req_data(),
	.s_update_req_data_valid(),
	.s_update_req_data_ready()
);

 assign table_41_lookup_p_0_req_index = ADD_36_out_INT_37_0_tdata;
 assign table_41_lookup_p_0_req_valid = ADD_36_out_INT_37_0_tvalid;
 assign ADD_36_out_INT_37_0_tready = table_41_lookup_p_0_req_ready;

//table lookup resultlookedup_STRUCT_42
 wire [160-1:0] lookedup_STRUCT_42_tdata;
 wire  lookedup_STRUCT_42_tvalid;
 wire  lookedup_STRUCT_42_tready;

//table lookup resultlookedup_STRUCT_42
 wire [160-1:0] lookedup_STRUCT_42_0_tdata;
 wire  lookedup_STRUCT_42_0_tvalid;
 wire  lookedup_STRUCT_42_0_tready;

//table lookup resultlookedup_STRUCT_42
 wire [160-1:0] lookedup_STRUCT_42_1_tdata;
 wire  lookedup_STRUCT_42_1_tvalid;
 wire  lookedup_STRUCT_42_1_tready;

//table lookup resultlookedup_STRUCT_42
 wire [160-1:0] lookedup_STRUCT_42_2_tdata;
 wire  lookedup_STRUCT_42_2_tvalid;
 wire  lookedup_STRUCT_42_2_tready;

axis_replication#(
.DATA_WIDTH(160),
.IF_STREAM(0),
.REAPLICA_COUNT(3)
)axis_replication_43(
	 .clk(clk), 
	 .rst(rst) ,
	//
	.s_axis_in_tdata({lookedup_STRUCT_42_tdata}),
	.s_axis_in_tvalid({lookedup_STRUCT_42_tvalid}),
	.s_axis_in_tready({lookedup_STRUCT_42_tready}),
	//
	.m_axis_out_tdata({lookedup_STRUCT_42_0_tdata,lookedup_STRUCT_42_1_tdata,lookedup_STRUCT_42_2_tdata}),
	.m_axis_out_tvalid({lookedup_STRUCT_42_0_tvalid,lookedup_STRUCT_42_1_tvalid,lookedup_STRUCT_42_2_tvalid}),
	.m_axis_out_tready({lookedup_STRUCT_42_0_tready,lookedup_STRUCT_42_1_tready,lookedup_STRUCT_42_2_tready})
);

 assign lookedup_STRUCT_42_tdata = table_41_lookup_p_0_value_data;
 assign lookedup_STRUCT_42_tvalid = table_41_lookup_p_0_value_valid;
 assign table_41_lookup_p_0_value_ready = lookedup_STRUCT_42_tready;

//Table lookup port wire def 
 wire [32-1:0] table_44_lookup_p_0_req_index;
 wire  table_44_lookup_p_0_req_valid;
 wire  table_44_lookup_p_0_req_ready;
 wire  table_44_lookup_p_0_value_valid;
 wire  table_44_lookup_p_0_value_ready;
 wire [160-1:0] table_44_lookup_p_0_value_data;

cam_arbiter#(
.TABLE_SIZE(64),
.KEY_SIZE(32),
.VALUE_SIZE(160),
.LOOKUP_PORTS(1),
.UPDATE_PORTS(1)
)table_44(
	 .clk(clk), 
	 .rst(rst) ,
	//lookup port 
	.s_lookup_req_index({table_44_lookup_p_0_req_index}),
	.s_lookup_req_valid({table_44_lookup_p_0_req_valid}),
	.s_lookup_req_ready({table_44_lookup_p_0_req_ready}),
	.s_lookup_value_valid({table_44_lookup_p_0_value_valid}),
	.s_lookup_value_data({table_44_lookup_p_0_value_data}),
	.s_lookup_value_ready({table_44_lookup_p_0_value_ready}),
	//update port 
	.s_update_req_index(),
	.s_update_req_index_valid(),
	.s_update_req_index_ready(),
	.s_update_req_data(),
	.s_update_req_data_valid(),
	.s_update_req_data_ready()
);

 assign table_44_lookup_p_0_req_index = ADD_36_out_INT_37_1_tdata;
 assign table_44_lookup_p_0_req_valid = ADD_36_out_INT_37_1_tvalid;
 assign ADD_36_out_INT_37_1_tready = table_44_lookup_p_0_req_ready;

//table lookup resultlookedup_STRUCT_45
 wire [160-1:0] lookedup_STRUCT_45_tdata;
 wire  lookedup_STRUCT_45_tvalid;
 wire  lookedup_STRUCT_45_tready;

//table lookup resultlookedup_STRUCT_45
 wire [160-1:0] lookedup_STRUCT_45_0_tdata;
 wire  lookedup_STRUCT_45_0_tvalid;
 wire  lookedup_STRUCT_45_0_tready;

//table lookup resultlookedup_STRUCT_45
 wire [160-1:0] lookedup_STRUCT_45_1_tdata;
 wire  lookedup_STRUCT_45_1_tvalid;
 wire  lookedup_STRUCT_45_1_tready;

//table lookup resultlookedup_STRUCT_45
 wire [160-1:0] lookedup_STRUCT_45_2_tdata;
 wire  lookedup_STRUCT_45_2_tvalid;
 wire  lookedup_STRUCT_45_2_tready;

axis_replication#(
.DATA_WIDTH(160),
.IF_STREAM(0),
.REAPLICA_COUNT(3)
)axis_replication_46(
	 .clk(clk), 
	 .rst(rst) ,
	//
	.s_axis_in_tdata({lookedup_STRUCT_45_tdata}),
	.s_axis_in_tvalid({lookedup_STRUCT_45_tvalid}),
	.s_axis_in_tready({lookedup_STRUCT_45_tready}),
	//
	.m_axis_out_tdata({lookedup_STRUCT_45_0_tdata,lookedup_STRUCT_45_1_tdata,lookedup_STRUCT_45_2_tdata}),
	.m_axis_out_tvalid({lookedup_STRUCT_45_0_tvalid,lookedup_STRUCT_45_1_tvalid,lookedup_STRUCT_45_2_tvalid}),
	.m_axis_out_tready({lookedup_STRUCT_45_0_tready,lookedup_STRUCT_45_1_tready,lookedup_STRUCT_45_2_tready})
);

 assign lookedup_STRUCT_45_tdata = table_44_lookup_p_0_value_data;
 assign lookedup_STRUCT_45_tvalid = table_44_lookup_p_0_value_valid;
 assign table_44_lookup_p_0_value_ready = lookedup_STRUCT_45_tready;

//Access Struct
 wire [32-1:0] struct_accessed_INT_48_tdata;
 wire  struct_accessed_INT_48_tvalid;
 wire  struct_accessed_INT_48_tready;

struct_access#(
.STRUCT_WIDTH(160),
.ACCESS_OFFSET(128),
.ACCESS_SIZE(32)
)struct_access_47(
	 .clk(clk), 
	 .rst(rst) ,
	//struct input
	.s_struct_axis_tdata({lookedup_STRUCT_45_0_tdata}),
	.s_struct_axis_tvalid({lookedup_STRUCT_45_0_tvalid}),
	.s_struct_axis_tready({lookedup_STRUCT_45_0_tready}),
	//output val
	.m_val_axis_tdata({struct_accessed_INT_48_tdata}),
	.m_val_axis_tvalid({struct_accessed_INT_48_tvalid}),
	.m_val_axis_tready({struct_accessed_INT_48_tready})
);

//Access Struct
 wire [32-1:0] struct_accessed_INT_50_tdata;
 wire  struct_accessed_INT_50_tvalid;
 wire  struct_accessed_INT_50_tready;

struct_access#(
.STRUCT_WIDTH(160),
.ACCESS_OFFSET(128),
.ACCESS_SIZE(32)
)struct_access_49(
	 .clk(clk), 
	 .rst(rst) ,
	//struct input
	.s_struct_axis_tdata({lookedup_STRUCT_42_0_tdata}),
	.s_struct_axis_tvalid({lookedup_STRUCT_42_0_tvalid}),
	.s_struct_axis_tready({lookedup_STRUCT_42_0_tready}),
	//output val
	.m_val_axis_tdata({struct_accessed_INT_50_tdata}),
	.m_val_axis_tvalid({struct_accessed_INT_50_tvalid}),
	.m_val_axis_tready({struct_accessed_INT_50_tready})
);

//Arithmetic OP Out
 wire [32-1:0] ADD_51_out_INT_52_tdata;
 wire  ADD_51_out_INT_52_tvalid;
 wire  ADD_51_out_INT_52_tready;

ALU#(
.LVAL_SIZE(32),
.RVAL_SIZE(32),
.RESULT_SIZE(32),
.OPID(1)
)ADD_51(
	 .clk(clk), 
	 .rst(rst) ,
	//lval input
	.s_lval_axis_tdata({struct_accessed_INT_48_tdata}),
	.s_lval_axis_tvalid({struct_accessed_INT_48_tvalid}),
	.s_lval_axis_tready({struct_accessed_INT_48_tready}),
	//rval input
	.s_rval_axis_tdata({struct_accessed_INT_50_tdata}),
	.s_rval_axis_tvalid({struct_accessed_INT_50_tvalid}),
	.s_rval_axis_tready({struct_accessed_INT_50_tready}),
	//output val
	.m_val_axis_tdata({ADD_51_out_INT_52_tdata}),
	.m_val_axis_tvalid({ADD_51_out_INT_52_tvalid}),
	.m_val_axis_tready({ADD_51_out_INT_52_tready})
);

//Access Struct
 wire [32-1:0] struct_accessed_INT_54_tdata;
 wire  struct_accessed_INT_54_tvalid;
 wire  struct_accessed_INT_54_tready;

struct_access#(
.STRUCT_WIDTH(160),
.ACCESS_OFFSET(96),
.ACCESS_SIZE(32)
)struct_access_53(
	 .clk(clk), 
	 .rst(rst) ,
	//struct input
	.s_struct_axis_tdata({lookedup_STRUCT_42_1_tdata}),
	.s_struct_axis_tvalid({lookedup_STRUCT_42_1_tvalid}),
	.s_struct_axis_tready({lookedup_STRUCT_42_1_tready}),
	//output val
	.m_val_axis_tdata({struct_accessed_INT_54_tdata}),
	.m_val_axis_tvalid({struct_accessed_INT_54_tvalid}),
	.m_val_axis_tready({struct_accessed_INT_54_tready})
);

//Access Struct
 wire [32-1:0] struct_accessed_INT_56_tdata;
 wire  struct_accessed_INT_56_tvalid;
 wire  struct_accessed_INT_56_tready;

struct_access#(
.STRUCT_WIDTH(160),
.ACCESS_OFFSET(96),
.ACCESS_SIZE(32)
)struct_access_55(
	 .clk(clk), 
	 .rst(rst) ,
	//struct input
	.s_struct_axis_tdata({lookedup_STRUCT_45_1_tdata}),
	.s_struct_axis_tvalid({lookedup_STRUCT_45_1_tvalid}),
	.s_struct_axis_tready({lookedup_STRUCT_45_1_tready}),
	//output val
	.m_val_axis_tdata({struct_accessed_INT_56_tdata}),
	.m_val_axis_tvalid({struct_accessed_INT_56_tvalid}),
	.m_val_axis_tready({struct_accessed_INT_56_tready})
);

//Arithmetic OP Out
 wire [32-1:0] ADD_57_out_INT_58_tdata;
 wire  ADD_57_out_INT_58_tvalid;
 wire  ADD_57_out_INT_58_tready;

ALU#(
.LVAL_SIZE(32),
.RVAL_SIZE(32),
.RESULT_SIZE(32),
.OPID(1)
)ADD_57(
	 .clk(clk), 
	 .rst(rst) ,
	//lval input
	.s_lval_axis_tdata({struct_accessed_INT_54_tdata}),
	.s_lval_axis_tvalid({struct_accessed_INT_54_tvalid}),
	.s_lval_axis_tready({struct_accessed_INT_54_tready}),
	//rval input
	.s_rval_axis_tdata({struct_accessed_INT_56_tdata}),
	.s_rval_axis_tvalid({struct_accessed_INT_56_tvalid}),
	.s_rval_axis_tready({struct_accessed_INT_56_tready}),
	//output val
	.m_val_axis_tdata({ADD_57_out_INT_58_tdata}),
	.m_val_axis_tvalid({ADD_57_out_INT_58_tvalid}),
	.m_val_axis_tready({ADD_57_out_INT_58_tready})
);

//Access Struct
 wire [32-1:0] struct_accessed_INT_60_tdata;
 wire  struct_accessed_INT_60_tvalid;
 wire  struct_accessed_INT_60_tready;

struct_access#(
.STRUCT_WIDTH(160),
.ACCESS_OFFSET(128),
.ACCESS_SIZE(32)
)struct_access_59(
	 .clk(clk), 
	 .rst(rst) ,
	//struct input
	.s_struct_axis_tdata({lookedup_STRUCT_45_2_tdata}),
	.s_struct_axis_tvalid({lookedup_STRUCT_45_2_tvalid}),
	.s_struct_axis_tready({lookedup_STRUCT_45_2_tready}),
	//output val
	.m_val_axis_tdata({struct_accessed_INT_60_tdata}),
	.m_val_axis_tvalid({struct_accessed_INT_60_tvalid}),
	.m_val_axis_tready({struct_accessed_INT_60_tready})
);

//Access Struct
 wire [32-1:0] struct_accessed_INT_62_tdata;
 wire  struct_accessed_INT_62_tvalid;
 wire  struct_accessed_INT_62_tready;

struct_access#(
.STRUCT_WIDTH(160),
.ACCESS_OFFSET(128),
.ACCESS_SIZE(32)
)struct_access_61(
	 .clk(clk), 
	 .rst(rst) ,
	//struct input
	.s_struct_axis_tdata({lookedup_STRUCT_42_2_tdata}),
	.s_struct_axis_tvalid({lookedup_STRUCT_42_2_tvalid}),
	.s_struct_axis_tready({lookedup_STRUCT_42_2_tready}),
	//output val
	.m_val_axis_tdata({struct_accessed_INT_62_tdata}),
	.m_val_axis_tvalid({struct_accessed_INT_62_tvalid}),
	.m_val_axis_tready({struct_accessed_INT_62_tready})
);

//Arithmetic OP Out
 wire [32-1:0] ADD_63_out_INT_64_tdata;
 wire  ADD_63_out_INT_64_tvalid;
 wire  ADD_63_out_INT_64_tready;

//Arithmetic OP Out
 wire [32-1:0] ADD_63_out_INT_64_0_tdata;
 wire  ADD_63_out_INT_64_0_tvalid;
 wire  ADD_63_out_INT_64_0_tready;

//Arithmetic OP Out
 wire [32-1:0] ADD_63_out_INT_64_1_tdata;
 wire  ADD_63_out_INT_64_1_tvalid;
 wire  ADD_63_out_INT_64_1_tready;

axis_replication#(
.DATA_WIDTH(32),
.IF_STREAM(0),
.REAPLICA_COUNT(2)
)axis_replication_65(
	 .clk(clk), 
	 .rst(rst) ,
	//
	.s_axis_in_tdata({ADD_63_out_INT_64_tdata}),
	.s_axis_in_tvalid({ADD_63_out_INT_64_tvalid}),
	.s_axis_in_tready({ADD_63_out_INT_64_tready}),
	//
	.m_axis_out_tdata({ADD_63_out_INT_64_0_tdata,ADD_63_out_INT_64_1_tdata}),
	.m_axis_out_tvalid({ADD_63_out_INT_64_0_tvalid,ADD_63_out_INT_64_1_tvalid}),
	.m_axis_out_tready({ADD_63_out_INT_64_0_tready,ADD_63_out_INT_64_1_tready})
);

ALU#(
.LVAL_SIZE(32),
.RVAL_SIZE(32),
.RESULT_SIZE(32),
.OPID(1)
)ADD_63(
	 .clk(clk), 
	 .rst(rst) ,
	//lval input
	.s_lval_axis_tdata({struct_accessed_INT_60_tdata}),
	.s_lval_axis_tvalid({struct_accessed_INT_60_tvalid}),
	.s_lval_axis_tready({struct_accessed_INT_60_tready}),
	//rval input
	.s_rval_axis_tdata({struct_accessed_INT_62_tdata}),
	.s_rval_axis_tvalid({struct_accessed_INT_62_tvalid}),
	.s_rval_axis_tready({struct_accessed_INT_62_tready}),
	//output val
	.m_val_axis_tdata({ADD_63_out_INT_64_tdata}),
	.m_val_axis_tvalid({ADD_63_out_INT_64_tvalid}),
	.m_val_axis_tready({ADD_63_out_INT_64_tready})
);

//Table lookup port wire def 
 wire [32-1:0] table_66_lookup_p_0_req_index;
 wire  table_66_lookup_p_0_req_valid;
 wire  table_66_lookup_p_0_req_ready;
 wire  table_66_lookup_p_0_value_valid;
 wire  table_66_lookup_p_0_value_ready;
 wire [96-1:0] table_66_lookup_p_0_value_data;

//Table update port wire def 
 wire [32-1:0] table_66_update_p_0_req_index;
 wire  table_66_update_p_0_req_index_valid;
 wire  table_66_update_p_0_req_index_ready;
 wire [96-1:0] table_66_update_p_0_req_data;
 wire  table_66_update_p_0_req_data_valid;
 wire  table_66_update_p_0_req_data_ready;

cam_arbiter#(
.TABLE_SIZE(64),
.KEY_SIZE(32),
.VALUE_SIZE(96),
.LOOKUP_PORTS(1),
.UPDATE_PORTS(1)
)table_66(
	 .clk(clk), 
	 .rst(rst) ,
	//lookup port 
	.s_lookup_req_index({table_66_lookup_p_0_req_index}),
	.s_lookup_req_valid({table_66_lookup_p_0_req_valid}),
	.s_lookup_req_ready({table_66_lookup_p_0_req_ready}),
	.s_lookup_value_valid({table_66_lookup_p_0_value_valid}),
	.s_lookup_value_data({table_66_lookup_p_0_value_data}),
	.s_lookup_value_ready({table_66_lookup_p_0_value_ready}),
	//update port 
	.s_update_req_index({table_66_update_p_0_req_index}),
	.s_update_req_index_valid({table_66_update_p_0_req_index_valid}),
	.s_update_req_index_ready({table_66_update_p_0_req_index_ready}),
	.s_update_req_data({table_66_update_p_0_req_data}),
	.s_update_req_data_valid({table_66_update_p_0_req_data_valid}),
	.s_update_req_data_ready({table_66_update_p_0_req_data_ready})
);

 assign table_66_lookup_p_0_req_index = ADD_36_out_INT_37_2_tdata;
 assign table_66_lookup_p_0_req_valid = ADD_36_out_INT_37_2_tvalid;
 assign ADD_36_out_INT_37_2_tready = table_66_lookup_p_0_req_ready;

//table lookup resultlookedup_STRUCT_67
 wire [96-1:0] lookedup_STRUCT_67_tdata;
 wire  lookedup_STRUCT_67_tvalid;
 wire  lookedup_STRUCT_67_tready;

//table lookup resultlookedup_STRUCT_67
 wire [96-1:0] lookedup_STRUCT_67_0_tdata;
 wire  lookedup_STRUCT_67_0_tvalid;
 wire  lookedup_STRUCT_67_0_tready;

//table lookup resultlookedup_STRUCT_67
 wire [96-1:0] lookedup_STRUCT_67_1_tdata;
 wire  lookedup_STRUCT_67_1_tvalid;
 wire  lookedup_STRUCT_67_1_tready;

axis_replication#(
.DATA_WIDTH(96),
.IF_STREAM(0),
.REAPLICA_COUNT(2)
)axis_replication_68(
	 .clk(clk), 
	 .rst(rst) ,
	//
	.s_axis_in_tdata({lookedup_STRUCT_67_tdata}),
	.s_axis_in_tvalid({lookedup_STRUCT_67_tvalid}),
	.s_axis_in_tready({lookedup_STRUCT_67_tready}),
	//
	.m_axis_out_tdata({lookedup_STRUCT_67_0_tdata,lookedup_STRUCT_67_1_tdata}),
	.m_axis_out_tvalid({lookedup_STRUCT_67_0_tvalid,lookedup_STRUCT_67_1_tvalid}),
	.m_axis_out_tready({lookedup_STRUCT_67_0_tready,lookedup_STRUCT_67_1_tready})
);

 assign lookedup_STRUCT_67_tdata = table_66_lookup_p_0_value_data;
 assign lookedup_STRUCT_67_tvalid = table_66_lookup_p_0_value_valid;
 assign table_66_lookup_p_0_value_ready = lookedup_STRUCT_67_tready;

//Access Struct
 wire [32-1:0] struct_accessed_INT_70_tdata;
 wire  struct_accessed_INT_70_tvalid;
 wire  struct_accessed_INT_70_tready;

struct_access#(
.STRUCT_WIDTH(96),
.ACCESS_OFFSET(0),
.ACCESS_SIZE(32)
)struct_access_69(
	 .clk(clk), 
	 .rst(rst) ,
	//struct input
	.s_struct_axis_tdata({lookedup_STRUCT_67_0_tdata}),
	.s_struct_axis_tvalid({lookedup_STRUCT_67_0_tvalid}),
	.s_struct_axis_tready({lookedup_STRUCT_67_0_tready}),
	//output val
	.m_val_axis_tdata({struct_accessed_INT_70_tdata}),
	.m_val_axis_tvalid({struct_accessed_INT_70_tvalid}),
	.m_val_axis_tready({struct_accessed_INT_70_tready})
);

//Arithmetic OP Out
 wire [32-1:0] ADD_71_out_INT_72_tdata;
 wire  ADD_71_out_INT_72_tvalid;
 wire  ADD_71_out_INT_72_tready;

ALU#(
.LVAL_SIZE(32),
.RVAL_SIZE(32),
.RESULT_SIZE(32),
.OPID(1)
)ADD_71(
	 .clk(clk), 
	 .rst(rst) ,
	//lval input
	.s_lval_axis_tdata({struct_accessed_INT_70_tdata}),
	.s_lval_axis_tvalid({struct_accessed_INT_70_tvalid}),
	.s_lval_axis_tready({struct_accessed_INT_70_tready}),
	//rval input
	.s_rval_axis_tdata({const_INT_11_0_tdata}),
	.s_rval_axis_tvalid({const_INT_11_0_tvalid}),
	.s_rval_axis_tready({const_INT_11_0_tready}),
	//output val
	.m_val_axis_tdata({ADD_71_out_INT_72_tdata}),
	.m_val_axis_tvalid({ADD_71_out_INT_72_tvalid}),
	.m_val_axis_tready({ADD_71_out_INT_72_tready})
);

//Arithmetic OP Out
 wire [32-1:0] SUB_73_out_INT_74_tdata;
 wire  SUB_73_out_INT_74_tvalid;
 wire  SUB_73_out_INT_74_tready;

ALU#(
.LVAL_SIZE(32),
.RVAL_SIZE(32),
.RESULT_SIZE(32),
.OPID(0)
)SUB_73(
	 .clk(clk), 
	 .rst(rst) ,
	//lval input
	.s_lval_axis_tdata({ADD_71_out_INT_72_tdata}),
	.s_lval_axis_tvalid({ADD_71_out_INT_72_tvalid}),
	.s_lval_axis_tready({ADD_71_out_INT_72_tready}),
	//rval input
	.s_rval_axis_tdata({ADD_63_out_INT_64_0_tdata}),
	.s_rval_axis_tvalid({ADD_63_out_INT_64_0_tvalid}),
	.s_rval_axis_tready({ADD_63_out_INT_64_0_tready}),
	//output val
	.m_val_axis_tdata({SUB_73_out_INT_74_tdata}),
	.m_val_axis_tvalid({SUB_73_out_INT_74_tvalid}),
	.m_val_axis_tready({SUB_73_out_INT_74_tready})
);

//struct_assign_75 output struct
 wire [96-1:0] structvar_76_tdata;
 wire  structvar_76_tvalid;
 wire  structvar_76_tready;

//struct_assign_75 output struct
 wire [96-1:0] structvar_76_0_tdata;
 wire  structvar_76_0_tvalid;
 wire  structvar_76_0_tready;

//struct_assign_75 output struct
 wire [96-1:0] structvar_76_1_tdata;
 wire  structvar_76_1_tvalid;
 wire  structvar_76_1_tready;

axis_replication#(
.DATA_WIDTH(96),
.IF_STREAM(0),
.REAPLICA_COUNT(2)
)axis_replication_77(
	 .clk(clk), 
	 .rst(rst) ,
	//
	.s_axis_in_tdata({structvar_76_tdata}),
	.s_axis_in_tvalid({structvar_76_tvalid}),
	.s_axis_in_tready({structvar_76_tready}),
	//
	.m_axis_out_tdata({structvar_76_0_tdata,structvar_76_1_tdata}),
	.m_axis_out_tvalid({structvar_76_0_tvalid,structvar_76_1_tvalid}),
	.m_axis_out_tready({structvar_76_0_tready,structvar_76_1_tready})
);

struct_assign#(
.STRUCT_WIDTH(96),
.ASSIGN_OFFSET(0),
.ASSIGN_SIZE(32)
)struct_assign_75(
	 .clk(clk), 
	 .rst(rst) ,
	//input struct
	.s_struct_axis_tdata({lookedup_STRUCT_67_1_tdata}),
	.s_struct_axis_tvalid({lookedup_STRUCT_67_1_tvalid}),
	.s_struct_axis_tready({lookedup_STRUCT_67_1_tready}),
	//input val
	.s_assignv_axis_tdata({SUB_73_out_INT_74_tdata}),
	.s_assignv_axis_tvalid({SUB_73_out_INT_74_tvalid}),
	.s_assignv_axis_tready({SUB_73_out_INT_74_tready}),
	//output struct
	.m_struct_axis_tdata({structvar_76_tdata}),
	.m_struct_axis_tvalid({structvar_76_tvalid}),
	.m_struct_axis_tready({structvar_76_tready})
);

//Access Struct
 wire [32-1:0] struct_accessed_INT_79_tdata;
 wire  struct_accessed_INT_79_tvalid;
 wire  struct_accessed_INT_79_tready;

struct_access#(
.STRUCT_WIDTH(96),
.ACCESS_OFFSET(64),
.ACCESS_SIZE(32)
)struct_access_78(
	 .clk(clk), 
	 .rst(rst) ,
	//struct input
	.s_struct_axis_tdata({structvar_76_0_tdata}),
	.s_struct_axis_tvalid({structvar_76_0_tvalid}),
	.s_struct_axis_tready({structvar_76_0_tready}),
	//output val
	.m_val_axis_tdata({struct_accessed_INT_79_tdata}),
	.m_val_axis_tvalid({struct_accessed_INT_79_tvalid}),
	.m_val_axis_tready({struct_accessed_INT_79_tready})
);

//Arithmetic OP Out
 wire [32-1:0] ADD_80_out_INT_81_tdata;
 wire  ADD_80_out_INT_81_tvalid;
 wire  ADD_80_out_INT_81_tready;

ALU#(
.LVAL_SIZE(32),
.RVAL_SIZE(32),
.RESULT_SIZE(32),
.OPID(1)
)ADD_80(
	 .clk(clk), 
	 .rst(rst) ,
	//lval input
	.s_lval_axis_tdata({struct_accessed_INT_79_tdata}),
	.s_lval_axis_tvalid({struct_accessed_INT_79_tvalid}),
	.s_lval_axis_tready({struct_accessed_INT_79_tready}),
	//rval input
	.s_rval_axis_tdata({const_INT_9_tdata}),
	.s_rval_axis_tvalid({const_INT_9_tvalid}),
	.s_rval_axis_tready({const_INT_9_tready}),
	//output val
	.m_val_axis_tdata({ADD_80_out_INT_81_tdata}),
	.m_val_axis_tvalid({ADD_80_out_INT_81_tvalid}),
	.m_val_axis_tready({ADD_80_out_INT_81_tready})
);

//Access Struct
 wire [32-1:0] struct_accessed_INT_83_tdata;
 wire  struct_accessed_INT_83_tvalid;
 wire  struct_accessed_INT_83_tready;

struct_access#(
.STRUCT_WIDTH(160),
.ACCESS_OFFSET(32),
.ACCESS_SIZE(32)
)struct_access_82(
	 .clk(clk), 
	 .rst(rst) ,
	//struct input
	.s_struct_axis_tdata({structvar_22_2_tdata}),
	.s_struct_axis_tvalid({structvar_22_2_tvalid}),
	.s_struct_axis_tready({structvar_22_2_tready}),
	//output val
	.m_val_axis_tdata({struct_accessed_INT_83_tdata}),
	.m_val_axis_tvalid({struct_accessed_INT_83_tvalid}),
	.m_val_axis_tready({struct_accessed_INT_83_tready})
);

//Arithmetic OP Out
 wire [32-1:0] ADD_84_out_INT_85_tdata;
 wire  ADD_84_out_INT_85_tvalid;
 wire  ADD_84_out_INT_85_tready;

ALU#(
.LVAL_SIZE(32),
.RVAL_SIZE(32),
.RESULT_SIZE(32),
.OPID(1)
)ADD_84(
	 .clk(clk), 
	 .rst(rst) ,
	//lval input
	.s_lval_axis_tdata({ADD_80_out_INT_81_tdata}),
	.s_lval_axis_tvalid({ADD_80_out_INT_81_tvalid}),
	.s_lval_axis_tready({ADD_80_out_INT_81_tready}),
	//rval input
	.s_rval_axis_tdata({struct_accessed_INT_83_tdata}),
	.s_rval_axis_tvalid({struct_accessed_INT_83_tvalid}),
	.s_rval_axis_tready({struct_accessed_INT_83_tready}),
	//output val
	.m_val_axis_tdata({ADD_84_out_INT_85_tdata}),
	.m_val_axis_tvalid({ADD_84_out_INT_85_tvalid}),
	.m_val_axis_tready({ADD_84_out_INT_85_tready})
);

//Access Struct
 wire [16-1:0] struct_accessed_INT_87_tdata;
 wire  struct_accessed_INT_87_tvalid;
 wire  struct_accessed_INT_87_tready;

struct_access#(
.STRUCT_WIDTH(160),
.ACCESS_OFFSET(128),
.ACCESS_SIZE(16)
)struct_access_86(
	 .clk(clk), 
	 .rst(rst) ,
	//struct input
	.s_struct_axis_tdata({structvar_22_3_tdata}),
	.s_struct_axis_tvalid({structvar_22_3_tvalid}),
	.s_struct_axis_tready({structvar_22_3_tready}),
	//output val
	.m_val_axis_tdata({struct_accessed_INT_87_tdata}),
	.m_val_axis_tvalid({struct_accessed_INT_87_tvalid}),
	.m_val_axis_tready({struct_accessed_INT_87_tready})
);

//Arithmetic OP Out
 wire [32-1:0] ADD_88_out_INT_89_tdata;
 wire  ADD_88_out_INT_89_tvalid;
 wire  ADD_88_out_INT_89_tready;

ALU#(
.LVAL_SIZE(32),
.RVAL_SIZE(16),
.RESULT_SIZE(32),
.OPID(1)
)ADD_88(
	 .clk(clk), 
	 .rst(rst) ,
	//lval input
	.s_lval_axis_tdata({ADD_84_out_INT_85_tdata}),
	.s_lval_axis_tvalid({ADD_84_out_INT_85_tvalid}),
	.s_lval_axis_tready({ADD_84_out_INT_85_tready}),
	//rval input
	.s_rval_axis_tdata({struct_accessed_INT_87_tdata}),
	.s_rval_axis_tvalid({struct_accessed_INT_87_tvalid}),
	.s_rval_axis_tready({struct_accessed_INT_87_tready}),
	//output val
	.m_val_axis_tdata({ADD_88_out_INT_89_tdata}),
	.m_val_axis_tvalid({ADD_88_out_INT_89_tvalid}),
	.m_val_axis_tready({ADD_88_out_INT_89_tready})
);

//struct_assign_90 output struct
 wire [96-1:0] structvar_91_tdata;
 wire  structvar_91_tvalid;
 wire  structvar_91_tready;

//struct_assign_90 output struct
 wire [96-1:0] structvar_91_0_tdata;
 wire  structvar_91_0_tvalid;
 wire  structvar_91_0_tready;

//struct_assign_90 output struct
 wire [96-1:0] structvar_91_1_tdata;
 wire  structvar_91_1_tvalid;
 wire  structvar_91_1_tready;

//struct_assign_90 output struct
 wire [96-1:0] structvar_91_2_tdata;
 wire  structvar_91_2_tvalid;
 wire  structvar_91_2_tready;

axis_replication#(
.DATA_WIDTH(96),
.IF_STREAM(0),
.REAPLICA_COUNT(3)
)axis_replication_92(
	 .clk(clk), 
	 .rst(rst) ,
	//
	.s_axis_in_tdata({structvar_91_tdata}),
	.s_axis_in_tvalid({structvar_91_tvalid}),
	.s_axis_in_tready({structvar_91_tready}),
	//
	.m_axis_out_tdata({structvar_91_0_tdata,structvar_91_1_tdata,structvar_91_2_tdata}),
	.m_axis_out_tvalid({structvar_91_0_tvalid,structvar_91_1_tvalid,structvar_91_2_tvalid}),
	.m_axis_out_tready({structvar_91_0_tready,structvar_91_1_tready,structvar_91_2_tready})
);

struct_assign#(
.STRUCT_WIDTH(96),
.ASSIGN_OFFSET(64),
.ASSIGN_SIZE(32)
)struct_assign_90(
	 .clk(clk), 
	 .rst(rst) ,
	//input struct
	.s_struct_axis_tdata({structvar_76_1_tdata}),
	.s_struct_axis_tvalid({structvar_76_1_tvalid}),
	.s_struct_axis_tready({structvar_76_1_tready}),
	//input val
	.s_assignv_axis_tdata({ADD_88_out_INT_89_tdata}),
	.s_assignv_axis_tvalid({ADD_88_out_INT_89_tvalid}),
	.s_assignv_axis_tready({ADD_88_out_INT_89_tready}),
	//output struct
	.m_struct_axis_tdata({structvar_91_tdata}),
	.m_struct_axis_tvalid({structvar_91_tvalid}),
	.m_struct_axis_tready({structvar_91_tready})
);

//Access Struct
 wire [32-1:0] struct_accessed_INT_94_tdata;
 wire  struct_accessed_INT_94_tvalid;
 wire  struct_accessed_INT_94_tready;

struct_access#(
.STRUCT_WIDTH(96),
.ACCESS_OFFSET(0),
.ACCESS_SIZE(32)
)struct_access_93(
	 .clk(clk), 
	 .rst(rst) ,
	//struct input
	.s_struct_axis_tdata({structvar_91_0_tdata}),
	.s_struct_axis_tvalid({structvar_91_0_tvalid}),
	.s_struct_axis_tready({structvar_91_0_tready}),
	//output val
	.m_val_axis_tdata({struct_accessed_INT_94_tdata}),
	.m_val_axis_tvalid({struct_accessed_INT_94_tvalid}),
	.m_val_axis_tready({struct_accessed_INT_94_tready})
);

//Access Struct
 wire [32-1:0] struct_accessed_INT_96_tdata;
 wire  struct_accessed_INT_96_tvalid;
 wire  struct_accessed_INT_96_tready;

struct_access#(
.STRUCT_WIDTH(96),
.ACCESS_OFFSET(64),
.ACCESS_SIZE(32)
)struct_access_95(
	 .clk(clk), 
	 .rst(rst) ,
	//struct input
	.s_struct_axis_tdata({structvar_91_1_tdata}),
	.s_struct_axis_tvalid({structvar_91_1_tvalid}),
	.s_struct_axis_tready({structvar_91_1_tready}),
	//output val
	.m_val_axis_tdata({struct_accessed_INT_96_tdata}),
	.m_val_axis_tvalid({struct_accessed_INT_96_tvalid}),
	.m_val_axis_tready({struct_accessed_INT_96_tready})
);

//Arithmetic OP Out
 wire [32-1:0] ADD_97_out_INT_98_tdata;
 wire  ADD_97_out_INT_98_tvalid;
 wire  ADD_97_out_INT_98_tready;

ALU#(
.LVAL_SIZE(32),
.RVAL_SIZE(32),
.RESULT_SIZE(32),
.OPID(1)
)ADD_97(
	 .clk(clk), 
	 .rst(rst) ,
	//lval input
	.s_lval_axis_tdata({struct_accessed_INT_94_tdata}),
	.s_lval_axis_tvalid({struct_accessed_INT_94_tvalid}),
	.s_lval_axis_tready({struct_accessed_INT_94_tready}),
	//rval input
	.s_rval_axis_tdata({struct_accessed_INT_96_tdata}),
	.s_rval_axis_tvalid({struct_accessed_INT_96_tvalid}),
	.s_rval_axis_tready({struct_accessed_INT_96_tready}),
	//output val
	.m_val_axis_tdata({ADD_97_out_INT_98_tdata}),
	.m_val_axis_tvalid({ADD_97_out_INT_98_tvalid}),
	.m_val_axis_tready({ADD_97_out_INT_98_tready})
);

 assign table_66_update_p_0_req_index = ADD_36_out_INT_37_3_tdata;
 assign table_66_update_p_0_req_index_valid = ADD_36_out_INT_37_3_tvalid;
 assign ADD_36_out_INT_37_3_tready = table_66_update_p_0_req_index_ready;

 assign table_66_update_p_0_req_data = structvar_91_2_tdata;
 assign table_66_update_p_0_req_data_valid = structvar_91_2_tvalid;
 assign structvar_91_2_tready = table_66_update_p_0_req_data_ready;

 assign outport_8_0_tdata = ADD_36_out_INT_37_4_tdata;
 assign outport_8_0_tvalid = ADD_36_out_INT_37_4_tvalid;
 assign ADD_36_out_INT_37_4_tready = outport_8_0_tready;

 assign outport_8_1_tdata = ADD_51_out_INT_52_tdata;
 assign outport_8_1_tvalid = ADD_51_out_INT_52_tvalid;
 assign ADD_51_out_INT_52_tready = outport_8_1_tready;

 assign outport_8_2_tdata = ADD_97_out_INT_98_tdata;
 assign outport_8_2_tvalid = ADD_97_out_INT_98_tvalid;
 assign ADD_97_out_INT_98_tready = outport_8_2_tready;

 assign outport_8_3_tdata = ADD_57_out_INT_58_tdata;
 assign outport_8_3_tvalid = ADD_57_out_INT_58_tvalid;
 assign ADD_57_out_INT_58_tready = outport_8_3_tready;

 assign outport_8_4_tdata = struct_accessed_INT_40_tdata;
 assign outport_8_4_tvalid = struct_accessed_INT_40_tvalid;
 assign struct_accessed_INT_40_tready = outport_8_4_tready;

 assign outport_8_5_tdata = const_INT_11_1_tdata;
 assign outport_8_5_tvalid = const_INT_11_1_tvalid;
 assign const_INT_11_1_tready = outport_8_5_tready;

 assign outport_8_6_tdata = const_INT_10_tdata;
 assign outport_8_6_tvalid = const_INT_10_tvalid;
 assign const_INT_10_tready = outport_8_6_tready;

 assign outport_8_7_tdata = structvar_22_4_tdata;
 assign outport_8_7_tvalid = structvar_22_4_tvalid;
 assign structvar_22_4_tready = outport_8_7_tready;

 assign outport_8_8_tdata = bufvar_21_tdata;
 assign outport_8_8_tvalid = bufvar_21_tvalid;
 assign bufvar_21_tready = outport_8_8_tready;
 assign outport_8_8_tkeep = bufvar_21_tkeep;
 assign outport_8_8_tlast = bufvar_21_tlast;

 assign outport_8_9_tdata = ADD_63_out_INT_64_1_tdata;
 assign outport_8_9_tvalid = ADD_63_out_INT_64_1_tvalid;
 assign ADD_63_out_INT_64_1_tready = outport_8_9_tready;


endmodule
