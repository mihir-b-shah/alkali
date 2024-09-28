#include "nfplib.h"
#include "prog_hdr.h"
#include "extern/extern_dma.h"
#include "extern/extern_net.h"

static struct lb_fwd_tcp_hdr_t _loc_buf_32;
__xrw static struct lb_fwd_tcp_hdr_t _loc_buf_32_xfer;
static struct lb_DIP_entries_t _loc_buf_23;
__xrw static struct lb_DIP_entries_t _loc_buf_23_xfer;
static struct connect_tracker_meta_header_t _loc_buf_22;
__xrw static struct connect_tracker_meta_header_t _loc_buf_22_xfer;
static int rr_ctr = 0;
__declspec(aligned(4)) struct event_param_NET_RECV_3 work;
__xrw struct event_param_NET_RECV_3 work_ref;
__declspec(aligned(4)) struct event_param_NET_SEND next_work_NET_SEND;
__xrw struct event_param_NET_SEND next_work_ref_NET_SEND;

__forceinline
void __event___handler_NET_RECV_3_process_packet_3_1() {
  uint32_t v1;
  uint32_t v2;
  uint16_t v3;
  uint16_t v4;
  __declspec(aligned(4)) struct event_param_NET_RECV_3* v5;
  __xrw struct event_param_NET_RECV_3* v6;
  __shared __cls struct context_chain_1_t* v7;
  struct __buf_t v8;
  uint32_t v9;
  uint32_t v10;
  uint32_t v11;
  __shared __cls struct connect_tracker_meta_header_t* v12;
  struct connect_tracker_meta_header_t* v13;
  __xrw struct connect_tracker_meta_header_t* v14;
  uint16_t v15;
  __xrw struct connect_tracker_meta_header_t* v16;
  __export __shared __cls struct table_i16_lb_DIP_entries_t_64_t* v17;
  struct lb_DIP_entries_t* v18;
  struct lb_DIP_entries_t* v19;
  uint64_t v20;
  uint64_t v21;
  struct lb_DIP_entries_t* v22;
  uint64_t v23;
  uint64_t v24;
  struct lb_DIP_entries_t* v25;
  uint32_t v26;
  struct lb_DIP_entries_t* v27;
  uint32_t v28;
  struct lb_DIP_entries_t* v29;
  uint16_t v30;
  struct lb_DIP_entries_t* v31;
  uint16_t v32;
  struct lb_DIP_entries_t* v33;
  uint32_t v34;
  uint32_t v35;
  uint32_t v36;
  uint32_t v37;
  uint64_t v38;
  struct lb_DIP_entries_t* v39;
  uint32_t v40;
  uint32_t v41;
  uint32_t v42;
  uint16_t v43;
  uint32_t v44;
  uint16_t v45;
  uint32_t v46;
  struct lb_fwd_tcp_hdr_t* v47;
  uint64_t v48;
  struct lb_fwd_tcp_hdr_t* v49;
  __xrw struct lb_fwd_tcp_hdr_t* v50;
  __declspec(aligned(4)) struct event_param_NET_SEND* v51;
  v1 = 0;
  v2 = 134744071;
  v3 = 50;
  v4 = 60;
  v5 = &work;
  v6 = &work_ref;
  cls_workq_add_thread(WORKQ_ID_NET_RECV_3_1, v6, sizeof(*v6));
  *(v5) = *(v6);
  v7 = v5->ctx;
  v8 = v5->f0;
  v9 = v5->f1;
  v10 = v7->f1;
  v11 = v7->f2;
  v12 = &v7->f9;
  v13 = &_loc_buf_22;
  v14 = &_loc_buf_22_xfer;
  cls_read(&v14->f0, &v12->f0, 28);
  *(v13) = *(v14);
  v15 = v7->f4;
  v16 = &_loc_buf_22_xfer;
  *(v16) = *(v13);
  mem_write32(&v16->f0, v8.buf + v8.offs, 28);
  v8.offs += 28;
  v17 = &lb_table;
  v18 = &_loc_buf_23;
  *v18 = v17->table[lmem_cam_lookup(lb_table_index, v15, 64)];
  v18->f6 = v9;
  v20 = v18->f0;
  v21 = v20 + v11;
  v18->f0 = v21;
  v23 = v18->f1;
  v24 = v23 + v11;
  v18->f1 = v24;
  v26 = v10 + v11;
  v18->f2 = v26;
  v28 = v2 + v11;
  v18->f3 = v28;
  v30 = v3 + v11;
  v18->f4 = v30;
  v32 = v4 + v11;
  v18->f5 = v32;
  v34 = v10 + v2;
  v35 = v34 + v3;
  v36 = v35 + v4;
  v37 = v36 + v11;
  v38 = (uint64_t) v37;
  v18->f7 = v38;
  v17->table[lmem_cam_update(lb_table_index, v15, 64)] = *v18;
  v40 = v18->f2;
  v41 = v18->f3;
  v42 = v40 + v41;
  v43 = v18->f4;
  v44 = v42 + v43;
  v45 = v18->f5;
  v46 = v44 + v45;
  v47 = &_loc_buf_32;
  v48 = (uint64_t) v46;
  v47->f0 = v48;
  v50 = &_loc_buf_32_xfer;
  *(v50) = *(v47);
  mem_write32(&v50->f0, v8.buf + v8.offs, 20);
  v8.offs += 20;
  v51 = &next_work_NET_SEND;
  v51->ctx = v7;
  v51->f0 = v8;
  next_work_NET_SEND.meta.len = next_work_NET_SEND.f0.sz;
  inlined_net_send(v51);
  return;
}


int main(void) {
	init_me_cam(16);
	init_recv_event_workq(WORKQ_ID_NET_RECV_3_1, workq_NET_RECV_3_1, WORKQ_TYPE_NET_RECV_3, WORKQ_SIZE_NET_RECV_3, 8);
	wait_global_start_();
	for (;;) {
		__event___handler_NET_RECV_3_process_packet_3_1();
	}
}
