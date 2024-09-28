#define DO_CTXQ_INIT

#include "nfplib.h"
#include "prog_hdr.h"
#include "extern/extern_dma.h"
#include "extern/extern_net.h"

static struct eth_header_t _loc_buf_0;
__xrw static struct eth_header_t _loc_buf_0_xfer;
static struct ip_header_t _loc_buf_1;
__xrw static struct ip_header_t _loc_buf_1_xfer;
static struct tcp_header_t _loc_buf_2;
__xrw static struct tcp_header_t _loc_buf_2_xfer;
static struct firewall_ip_entries_t _loc_buf_3;
__xrw static struct firewall_ip_entries_t _loc_buf_3_xfer;
static struct firewall_tcpport_entries_t _loc_buf_4;
__xrw static struct firewall_tcpport_entries_t _loc_buf_4_xfer;
static struct priority_entries_t _loc_buf_5;
__xrw static struct priority_entries_t _loc_buf_5_xfer;
static struct firewall_meta_header_t _loc_buf_6;
__xrw static struct firewall_meta_header_t _loc_buf_6_xfer;
static struct connect_tracker_meta_header_t _loc_buf_11;
__xrw static struct connect_tracker_meta_header_t _loc_buf_11_xfer;
static int rr_ctr = 0;
__declspec(aligned(4)) struct event_param_NET_RECV work;
__xrw struct event_param_NET_RECV work_ref;
__declspec(aligned(4)) struct event_param_NET_RECV_1 next_work_NET_RECV_1;
__xrw struct event_param_NET_RECV_1 next_work_ref_NET_RECV_1;

__forceinline
void __event___handler_NET_RECV_process_packet_1() {
  uint32_t v1;
  uint32_t v2;
  __declspec(aligned(4)) struct event_param_NET_RECV* v3;
  __shared __cls struct context_chain_1_t* v4;
  __shared __cls struct context_chain_1_t* v5;
  struct __buf_t v6;
  struct eth_header_t* v7;
  __xrw struct eth_header_t* v8;
  struct ip_header_t* v9;
  __xrw struct ip_header_t* v10;
  struct tcp_header_t* v11;
  __xrw struct tcp_header_t* v12;
  uint32_t v13;
  uint32_t v14;
  uint32_t v15;
  uint16_t v16;
  uint32_t v17;
  uint16_t v18;
  uint32_t v19;
  __export __shared __cls struct table_i32_firewall_ip_entries_t_64_t* v20;
  struct firewall_ip_entries_t* v21;
  __export __shared __cls struct table_i32_firewall_tcpport_entries_t_64_t* v22;
  struct firewall_tcpport_entries_t* v23;
  __export __shared __cls struct table_i32_priority_entries_t_64_t* v24;
  struct priority_entries_t* v25;
  struct firewall_meta_header_t* v26;
  uint32_t v27;
  uint32_t v28;
  uint32_t v29;
  struct firewall_meta_header_t* v30;
  uint32_t v31;
  uint32_t v32;
  struct firewall_meta_header_t* v33;
  struct firewall_meta_header_t* v34;
  uint32_t v35;
  uint32_t v36;
  uint32_t v37;
  struct firewall_meta_header_t* v38;
  __xrw struct firewall_meta_header_t* v39;
  uint32_t v40;
  uint16_t v41;
  struct connect_tracker_meta_header_t* v42;
  __shared __cls struct connect_tracker_meta_header_t* v43;
  struct connect_tracker_meta_header_t* v44;
  __xrw struct connect_tracker_meta_header_t* v45;
  __declspec(aligned(4)) struct event_param_NET_RECV_1* v46;
  __xrw struct event_param_NET_RECV_1* v47;
  v1 = 134744072;
  v2 = 3;
  v3 = &work;
  inlined_net_recv(v3);
  v4 = alloc_context_chain_ring_entry();
  v3->ctx = v4;
  v5 = v3->ctx;
  v6 = v3->f0;
  v7 = &_loc_buf_0;
  v8 = &_loc_buf_0_xfer;
  mem_read32(&v8->f0, v6.buf + v6.offs, 16);
  v6.offs += 14;
  *(v7) = *(v8);
  v9 = &_loc_buf_1;
  v10 = &_loc_buf_1_xfer;
  mem_read32(&v10->f0, v6.buf + v6.offs, 24);
  v6.offs += 24;
  *(v9) = *(v10);
  v11 = &_loc_buf_2;
  v12 = &_loc_buf_2_xfer;
  mem_read32(&v12->f0, v6.buf + v6.offs, 20);
  v6.offs += 20;
  *(v11) = *(v12);
  v13 = v9->f6;
  v14 = v9->f7;
  v15 = v13 + v14;
  v16 = v11->f0;
  v17 = v15 + v16;
  v18 = v11->f1;
  v19 = v17 + v18;
  v20 = &firewall_ip_table;
  v21 = &_loc_buf_3;
  *v21 = v20->table[lmem_cam_lookup(firewall_ip_table_index, v19, 64)];
  v22 = &firewall_tcpport_table;
  v23 = &_loc_buf_4;
  *v23 = v22->table[lmem_cam_lookup(firewall_tcpport_table_index, v19, 64)];
  v24 = &priority_table;
  v25 = &_loc_buf_5;
  *v25 = v24->table[lmem_cam_lookup(priority_table_index, v19, 64)];
  v26 = &_loc_buf_6;
  v27 = v23->f4;
  v28 = v21->f4;
  v29 = v27 + v28;
  v26->f1 = v29;
  v31 = v25->f0;
  v32 = v31 + v31;
  v26->f2 = v32;
  v26->f0 = v19;
  v35 = v21->f3;
  v36 = v23->f3;
  v37 = v35 + v36;
  v26->f3 = v37;
  v39 = &_loc_buf_6_xfer;
  *(v39) = *(v26);
  mem_write32(&v39->f0, v6.buf + v6.offs, 28);
  v6.offs += 28;
  v40 = v11->f2;
  v41 = v11->f7;
  v42 = &_loc_buf_11;
  v5->f0 = v29;
  v5->f1 = v1;
  v5->f2 = v19;
  v5->f3 = v41;
  v5->f4 = v16;
  v5->f5 = v40;
  v43 = &v5->f6;
  v44 = &_loc_buf_11;
  v45 = &_loc_buf_11_xfer;
  *(v45) = *(v44);
  cls_write(&v45->f0, &v43->f0, 28);
  v5->f7 = v41;
  v46 = &next_work_NET_RECV_1;
  v46->ctx = v5;
  v46->f0 = v6;
  v46->f1 = v13;
  v47 = &next_work_ref_NET_RECV_1;
  *(v47) = *(v46);
  cls_workq_add_work(WORKQ_ID_NET_RECV_1_1, v47, sizeof(*v47));
  return;
}


int main(void) {
	init_me_cam(16);
	wait_global_start_();
	for (;;) {
		__event___handler_NET_RECV_process_packet_1();
	}
}
