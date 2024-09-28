#include "nfplib.h"
#include "prog_hdr.h"
#include "extern/extern_dma.h"
#include "extern/extern_net.h"

static struct err_tracker_t _loc_buf_16;
__xrw static struct err_tracker_t _loc_buf_16_xfer;
static struct tcp_tracker_t _loc_buf_14;
__xrw static struct tcp_tracker_t _loc_buf_14_xfer;
static struct connect_tracker_meta_header_t _loc_buf_15;
__xrw static struct connect_tracker_meta_header_t _loc_buf_15_xfer;
static int rr_ctr = 0;
__declspec(aligned(4)) struct event_param_NET_RECV_2 work;
__xrw struct event_param_NET_RECV_2 work_ref;
__declspec(aligned(4)) struct event_param_NET_RECV_3 next_work_NET_RECV_3;
__xrw struct event_param_NET_RECV_3 next_work_ref_NET_RECV_3;

__forceinline
void __event___handler_NET_RECV_2_process_packet_2_1() {
  uint32_t v1;
  uint32_t v2;
  uint32_t v3;
  __declspec(aligned(4)) struct event_param_NET_RECV_2* v4;
  __xrw struct event_param_NET_RECV_2* v5;
  __shared __cls struct context_chain_1_t* v6;
  struct __buf_t v7;
  uint32_t v8;
  uint16_t v9;
  uint16_t v10;
  __shared __cls struct tcp_tracker_t* v11;
  struct tcp_tracker_t* v12;
  __xrw struct tcp_tracker_t* v13;
  uint32_t v14;
  uint32_t v15;
  __shared __cls struct connect_tracker_meta_header_t* v16;
  struct connect_tracker_meta_header_t* v17;
  __xrw struct connect_tracker_meta_header_t* v18;
  __export __shared __cls struct table_i32_err_tracker_t_64_t* v19;
  struct err_tracker_t* v20;
  uint32_t v21;
  uint32_t v22;
  uint32_t v23;
  struct err_tracker_t* v24;
  uint32_t v25;
  uint32_t v26;
  uint32_t v27;
  uint32_t v28;
  struct err_tracker_t* v29;
  uint32_t v30;
  uint32_t v31;
  uint32_t v32;
  uint32_t v33;
  uint32_t v34;
  uint32_t v35;
  struct tcp_tracker_t* v36;
  uint32_t v37;
  struct connect_tracker_meta_header_t* v38;
  uint32_t v39;
  struct connect_tracker_meta_header_t* v40;
  __shared __cls struct connect_tracker_meta_header_t* v41;
  struct connect_tracker_meta_header_t* v42;
  __xrw struct connect_tracker_meta_header_t* v43;
  __declspec(aligned(4)) struct event_param_NET_RECV_3* v44;
  __xrw struct event_param_NET_RECV_3* v45;
  v1 = 256;
  v2 = 1;
  v3 = 5;
  v4 = &work;
  v5 = &work_ref;
  cls_workq_add_thread(WORKQ_ID_NET_RECV_2_1, v5, sizeof(*v5));
  *(v4) = *(v5);
  v6 = v4->ctx;
  v7 = v4->f0;
  v8 = v6->f2;
  v9 = v6->f7;
  v10 = v6->f3;
  v11 = &v6->f8;
  v12 = &_loc_buf_14;
  v13 = &_loc_buf_14_xfer;
  cls_read(&v13->f0, &v11->f0, 12);
  *(v12) = *(v13);
  v14 = v6->f5;
  v15 = v6->f0;
  v16 = &v6->f6;
  v17 = &_loc_buf_15;
  v18 = &_loc_buf_15_xfer;
  cls_read(&v18->f0, &v16->f0, 28);
  *(v17) = *(v18);
  v19 = &err_tracker_table;
  v20 = &_loc_buf_16;
  *v20 = v19->table[lmem_cam_lookup(err_tracker_table_index, v8, 64)];
  v21 = v20->f0;
  v22 = v21 + v2;
  v23 = v22 - v15;
  v20->f0 = v23;
  v25 = v20->f2;
  v26 = v25 + v1;
  v27 = v26 + v14;
  v28 = v27 + v10;
  v20->f2 = v28;
  v30 = v20->f0;
  v31 = v20->f2;
  v32 = v30 + v31;
  v33 = v32 + v9;
  v19->table[lmem_cam_update(err_tracker_table_index, v8, 64)] = *v20;
  v34 = v12->f2;
  v35 = v34 + v33;
  v12->f2 = v35;
  v37 = v12->f0;
  v17->f0 = v37;
  v39 = v12->f2;
  v17->f1 = v39;
  v41 = &v6->f9;
  v42 = &_loc_buf_15;
  v43 = &_loc_buf_15_xfer;
  *(v43) = *(v42);
  cls_write(&v43->f0, &v41->f0, 28);
  v44 = &next_work_NET_RECV_3;
  v44->ctx = v6;
  v44->f0 = v7;
  v44->f1 = v2;
  v45 = &next_work_ref_NET_RECV_3;
  *(v45) = *(v44);
  cls_workq_add_work(WORKQ_ID_NET_RECV_3_1, v45, sizeof(*v45));
  return;
}


int main(void) {
	init_me_cam(16);
	init_recv_event_workq(WORKQ_ID_NET_RECV_2_1, workq_NET_RECV_2_1, WORKQ_TYPE_NET_RECV_2, WORKQ_SIZE_NET_RECV_2, 8);
	wait_global_start_();
	for (;;) {
		__event___handler_NET_RECV_2_process_packet_2_1();
	}
}
