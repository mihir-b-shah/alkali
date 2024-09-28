module {
  ep2.func private @__handler_NET_SEND_net_send(%arg0: !ep2.context, %arg1: !ep2.buf) attributes {atom = "net_send", event = "NET_SEND", extern = true, location = "cu7", type = "handler"} {
    "ep2.terminate"() : () -> ()
  }
  ep2.func private @__handler_DMA_WRITE_REQ_dma_write(%arg0: !ep2.context, %arg1: !ep2.buf, %arg2: !ep2.struct<"dma_write_cmd_t" : isEvent = false, elementTypes = i32, i32>) attributes {atom = "dma_write", event = "DMA_WRITE_REQ", extern = true, location = "cu8", type = "handler"} {
    "ep2.terminate"() : () -> ()
  }
  %0 = "ep2.global"() <{name = "firewall_ip_table"}> : () -> !ep2.table<i32, !ep2.struct<"firewall_ip_entries_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32>, 64>
  %1 = "ep2.global"() <{name = "firewall_tcpport_table"}> : () -> !ep2.table<i32, !ep2.struct<"firewall_tcpport_entries_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32>, 64>
  %2 = "ep2.global"() <{name = "priority_table"}> : () -> !ep2.table<i32, !ep2.struct<"priority_entries_t" : isEvent = false, elementTypes = i32, i32>, 64>
  %3 = "ep2.global"() <{name = "flow_tracker_table"}> : () -> !ep2.table<i32, !ep2.struct<"flow_tracker_t" : isEvent = false, elementTypes = i32, i32>, 64>
  %4 = "ep2.global"() <{name = "err_tracker_table"}> : () -> !ep2.table<i32, !ep2.struct<"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, 64>
  %5 = "ep2.global"() <{name = "ip_tracker_table"}> : () -> !ep2.table<i32, !ep2.struct<"ip_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, 64>
  %6 = "ep2.global"() <{name = "tcp_tracker_table"}> : () -> !ep2.table<i32, !ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, 64>
  %7 = "ep2.global"() <{name = "lb_table"}> : () -> !ep2.table<i16, !ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>, 64>
  %8 = "ep2.global"() <{name = "lb_fwd_table"}> : () -> !ep2.table<i32, !ep2.struct<"lb_fwd_tcp_hdr_t" : isEvent = false, elementTypes = i64, i64, i32>, 64>
  ep2.func private @__handler_NET_RECV_process_packet_2Cut_source(%arg0: !ep2.buf) attributes {atom = "process_packet", event = "NET_RECV", generationIndex = 2 : i32, type = "handler"} {
    %9 = "ep2.constant"() <{value = 134744072 : i32}> : () -> i32
    %10, %output = "ep2.extract_value"(%arg0) : (!ep2.buf) -> (!ep2.buf, !ep2.struct<"eth_header_t" : isEvent = false, elementTypes = i48, i48, i16>)
    %11, %output_0 = "ep2.extract_value"(%10) : (!ep2.buf) -> (!ep2.buf, !ep2.struct<"ip_header_t" : isEvent = false, elementTypes = i16, i16, i16, i16, i16, i16, i32, i32, i32>)
    %12, %output_1 = "ep2.extract_value"(%11) : (!ep2.buf) -> (!ep2.buf, !ep2.struct<"tcp_header_t" : isEvent = false, elementTypes = i16, i16, i32, i32, i8, i8, i16, i16, i16>)
    %13 = ep2.struct_access %output_0[6] : <"ip_header_t" : isEvent = false, elementTypes = i16, i16, i16, i16, i16, i16, i32, i32, i32> -> i32
    %14 = ep2.struct_access %output_0[7] : <"ip_header_t" : isEvent = false, elementTypes = i16, i16, i16, i16, i16, i16, i32, i32, i32> -> i32
    %15 = "ep2.add"(%13, %14) : (i32, i32) -> i32
    %16 = ep2.struct_access %output_1[0] : <"tcp_header_t" : isEvent = false, elementTypes = i16, i16, i32, i32, i8, i8, i16, i16, i16> -> i16
    %17 = "ep2.add"(%15, %16) : (i32, i16) -> i32
    %18 = ep2.struct_access %output_1[1] : <"tcp_header_t" : isEvent = false, elementTypes = i16, i16, i32, i32, i8, i8, i16, i16, i16> -> i16
    %19 = "ep2.add"(%17, %18) : (i32, i16) -> i32
    %20 = ep2.struct_access %output_0[6] : <"ip_header_t" : isEvent = false, elementTypes = i16, i16, i16, i16, i16, i16, i32, i32, i32> -> i32
    %21 = "ep2.global_import"() <{name = "firewall_ip_table"}> : () -> !ep2.table<i32, !ep2.struct<"firewall_ip_entries_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32>, 64>
    %22 = "ep2.lookup"(%21, %19) : (!ep2.table<i32, !ep2.struct<"firewall_ip_entries_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32>, 64>, i32) -> !ep2.struct<"firewall_ip_entries_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32>
    %23 = "ep2.global_import"() <{name = "firewall_tcpport_table"}> : () -> !ep2.table<i32, !ep2.struct<"firewall_tcpport_entries_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32>, 64>
    %24 = "ep2.lookup"(%23, %19) : (!ep2.table<i32, !ep2.struct<"firewall_tcpport_entries_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32>, 64>, i32) -> !ep2.struct<"firewall_tcpport_entries_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32>
    %25 = "ep2.global_import"() <{name = "priority_table"}> : () -> !ep2.table<i32, !ep2.struct<"priority_entries_t" : isEvent = false, elementTypes = i32, i32>, 64>
    %26 = "ep2.lookup"(%25, %19) : (!ep2.table<i32, !ep2.struct<"priority_entries_t" : isEvent = false, elementTypes = i32, i32>, 64>, i32) -> !ep2.struct<"priority_entries_t" : isEvent = false, elementTypes = i32, i32>
    %27 = "ep2.lookup"(%25, %19) : (!ep2.table<i32, !ep2.struct<"priority_entries_t" : isEvent = false, elementTypes = i32, i32>, 64>, i32) -> !ep2.struct<"priority_entries_t" : isEvent = false, elementTypes = i32, i32>
    %28 = "ep2.init"() : () -> !ep2.struct<"firewall_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>
    %29 = ep2.struct_access %24[4] : <"firewall_tcpport_entries_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32> -> i32
    %30 = ep2.struct_access %22[4] : <"firewall_ip_entries_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32> -> i32
    %31 = "ep2.add"(%29, %30) : (i32, i32) -> i32
    %32 = "ep2.struct_update"(%28, %31) <{index = 1 : i64}> : (!ep2.struct<"firewall_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>, i32) -> !ep2.struct<"firewall_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>
    %33 = ep2.struct_access %26[0] : <"priority_entries_t" : isEvent = false, elementTypes = i32, i32> -> i32
    %34 = ep2.struct_access %27[0] : <"priority_entries_t" : isEvent = false, elementTypes = i32, i32> -> i32
    %35 = "ep2.add"(%33, %34) : (i32, i32) -> i32
    %36 = "ep2.struct_update"(%32, %35) <{index = 2 : i64}> : (!ep2.struct<"firewall_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>, i32) -> !ep2.struct<"firewall_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>
    %37 = "ep2.struct_update"(%36, %19) <{index = 0 : i64}> : (!ep2.struct<"firewall_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>, i32) -> !ep2.struct<"firewall_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>
    %38 = ep2.struct_access %22[3] : <"firewall_ip_entries_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32> -> i32
    %39 = ep2.struct_access %24[3] : <"firewall_tcpport_entries_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32> -> i32
    %40 = "ep2.add"(%38, %39) : (i32, i32) -> i32
    %41 = "ep2.struct_update"(%37, %40) <{index = 3 : i64}> : (!ep2.struct<"firewall_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>, i32) -> !ep2.struct<"firewall_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>
    %42 = ep2.struct_access %24[4] : <"firewall_tcpport_entries_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32> -> i32
    %43 = ep2.struct_access %22[4] : <"firewall_ip_entries_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32> -> i32
    %44 = "ep2.add"(%42, %43) : (i32, i32) -> i32
    %45 = "ep2.emit_value"(%12, %41) : (!ep2.buf, !ep2.struct<"firewall_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>) -> !ep2.buf
    %46 = ep2.struct_access %output_1[2] : <"tcp_header_t" : isEvent = false, elementTypes = i16, i16, i32, i32, i8, i8, i16, i16, i16> -> i32
    %47 = ep2.struct_access %output_1[7] : <"tcp_header_t" : isEvent = false, elementTypes = i16, i16, i32, i32, i8, i8, i16, i16, i16> -> i16
    %48 = ep2.struct_access %output_1[7] : <"tcp_header_t" : isEvent = false, elementTypes = i16, i16, i32, i32, i8, i8, i16, i16, i16> -> i16
    %49 = "ep2.init"() : () -> !ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>
    %50 = ep2.struct_access %output_1[0] : <"tcp_header_t" : isEvent = false, elementTypes = i16, i16, i32, i32, i8, i8, i16, i16, i16> -> i16
    %51 = "ep2.init"(%44, %45, %20, %9, %19, %47, %50, %46, %49, %48) : (i32, !ep2.buf, i32, i32, i32, i16, i16, i32, !ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>, i16) -> !ep2.struct<"__handler_NET_RECV_process_packet_sink" : isEvent = true, elementTypes = i32, !ep2.buf, i32, i32, i32, i16, i16, i32, !ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>, i16>
    ep2.return %51 : !ep2.struct<"__handler_NET_RECV_process_packet_sink" : isEvent = true, elementTypes = i32, !ep2.buf, i32, i32, i32, i16, i16, i32, !ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>, i16>
    "ep2.terminate"() : () -> ()
  }
  ep2.func @__handler_NET_RECV_process_packet_2Cut_sink_2Cut_source_2Cut_source(%arg0: i32, %arg1: !ep2.buf, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: i16, %arg6: i16, %arg7: i32, %arg8: !ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>, %arg9: i16) attributes {generationIndex = 12 : i32, type = "handler"} {
    %9 = "ep2.global_import"() <{name = "tcp_tracker_table"}> : () -> !ep2.table<i32, !ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, 64>
    %10 = "ep2.lookup"(%9, %arg2) : (!ep2.table<i32, !ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, 64>, i32) -> !ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>
    %11 = ep2.struct_access %10[0] : <"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32> -> i32
    %12 = "ep2.sub"(%11, %arg0) : (i32, i32) -> i32
    %13 = "ep2.struct_update"(%10, %12) <{index = 0 : i64}> : (!ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, i32) -> !ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>
    "ep2.update"(%9, %arg2, %13) : (!ep2.table<i32, !ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, 64>, i32, !ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>) -> ()
    %14 = "ep2.init"(%arg9, %arg8, %arg6, %13, %arg3, %arg4, %arg1, %arg5, %arg7, %arg0) : (i16, !ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>, i16, !ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, i32, i32, !ep2.buf, i16, i32, i32) -> !ep2.struct<"__handler_NET_RECV_process_packet_2Cut_sink_2Cut_source_sink" : isEvent = true, elementTypes = i16, !ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>, i16, !ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, i32, i32, !ep2.buf, i16, i32, i32>
    ep2.return %14 : !ep2.struct<"__handler_NET_RECV_process_packet_2Cut_sink_2Cut_source_sink" : isEvent = true, elementTypes = i16, !ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>, i16, !ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, i32, i32, !ep2.buf, i16, i32, i32>
    "ep2.terminate"() : () -> ()
  }
  ep2.func @__handler_NET_RECV_process_packet_2Cut_sink_2Cut_source_2Cut_sink(%arg0: i16, %arg1: !ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>, %arg2: i16, %arg3: !ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, %arg4: i32, %arg5: i32, %arg6: !ep2.buf, %arg7: i16, %arg8: i32, %arg9: i32) attributes {generationIndex = 13 : i32, type = "handler"} {
    %9 = "ep2.constant"() <{value = 256 : i32}> : () -> i32
    %10 = "ep2.constant"() <{value = 1 : i32}> : () -> i32
    %11 = "ep2.global_import"() <{name = "err_tracker_table"}> : () -> !ep2.table<i32, !ep2.struct<"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, 64>
    %12 = "ep2.lookup"(%11, %arg5) : (!ep2.table<i32, !ep2.struct<"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, 64>, i32) -> !ep2.struct<"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>
    %13 = ep2.struct_access %12[0] : <"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32> -> i32
    %14 = "ep2.add"(%13, %10) : (i32, i32) -> i32
    %15 = "ep2.sub"(%14, %arg9) : (i32, i32) -> i32
    %16 = "ep2.struct_update"(%12, %15) <{index = 0 : i64}> : (!ep2.struct<"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, i32) -> !ep2.struct<"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>
    %17 = ep2.struct_access %16[2] : <"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32> -> i32
    %18 = "ep2.add"(%17, %9) : (i32, i32) -> i32
    %19 = "ep2.add"(%18, %arg8) : (i32, i32) -> i32
    %20 = "ep2.add"(%19, %arg7) : (i32, i16) -> i32
    %21 = "ep2.struct_update"(%16, %20) <{index = 2 : i64}> : (!ep2.struct<"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, i32) -> !ep2.struct<"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>
    %22 = ep2.struct_access %21[0] : <"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32> -> i32
    %23 = ep2.struct_access %21[2] : <"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32> -> i32
    %24 = "ep2.add"(%22, %23) : (i32, i32) -> i32
    %25 = "ep2.add"(%24, %arg0) : (i32, i16) -> i32
    "ep2.update"(%11, %arg5, %21) : (!ep2.table<i32, !ep2.struct<"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, 64>, i32, !ep2.struct<"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>) -> ()
    %26 = ep2.struct_access %arg3[2] : <"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32> -> i32
    %27 = "ep2.add"(%26, %25) : (i32, i32) -> i32
    %28 = "ep2.struct_update"(%arg3, %27) <{index = 2 : i64}> : (!ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, i32) -> !ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>
    %29 = ep2.struct_access %28[0] : <"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32> -> i32
    %30 = "ep2.struct_update"(%arg1, %29) <{index = 0 : i64}> : (!ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>, i32) -> !ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>
    %31 = ep2.struct_access %28[2] : <"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32> -> i32
    %32 = "ep2.struct_update"(%30, %31) <{index = 1 : i64}> : (!ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>, i32) -> !ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>
    %33 = "ep2.init"(%arg2, %arg6, %arg5, %10, %arg4, %32) : (i16, !ep2.buf, i32, i32, i32, !ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>) -> !ep2.struct<"__handler_NET_RECV_process_packet_2Cut_sink_sink" : isEvent = true, elementTypes = i16, !ep2.buf, i32, i32, i32, !ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>>
    ep2.return %33 : !ep2.struct<"__handler_NET_RECV_process_packet_2Cut_sink_sink" : isEvent = true, elementTypes = i16, !ep2.buf, i32, i32, i32, !ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>>
    "ep2.terminate"() : () -> ()
  }
  ep2.func @__handler_NET_RECV_process_packet_2Cut_sink_2Cut_sink(%arg0: i16, %arg1: !ep2.buf, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: !ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>) attributes {generationIndex = 7 : i32, type = "handler"} {
    %9 = "ep2.constant"() <{value = "net_send"}> : () -> !ep2.atom
    %10 = "ep2.constant"() <{value = 134744071 : i32}> : () -> i32
    %11 = "ep2.constant"() <{value = 50 : i16}> : () -> i16
    %12 = "ep2.constant"() <{value = 60 : i16}> : () -> i16
    %13 = "ep2.emit_value"(%arg1, %arg5) : (!ep2.buf, !ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>) -> !ep2.buf
    %14 = "ep2.global_import"() <{name = "lb_table"}> : () -> !ep2.table<i16, !ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>, 64>
    %15 = "ep2.lookup"(%14, %arg0) : (!ep2.table<i16, !ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>, 64>, i16) -> !ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>
    %16 = "ep2.struct_update"(%15, %arg3) <{index = 6 : i64}> : (!ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>, i32) -> !ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>
    %17 = ep2.struct_access %16[0] : <"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64> -> i64
    %18 = "ep2.add"(%17, %arg2) : (i64, i32) -> i64
    %19 = "ep2.struct_update"(%16, %18) <{index = 0 : i64}> : (!ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>, i64) -> !ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>
    %20 = ep2.struct_access %19[1] : <"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64> -> i64
    %21 = "ep2.add"(%20, %arg2) : (i64, i32) -> i64
    %22 = "ep2.struct_update"(%19, %21) <{index = 1 : i64}> : (!ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>, i64) -> !ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>
    %23 = "ep2.add"(%arg4, %arg2) : (i32, i32) -> i32
    %24 = "ep2.struct_update"(%22, %23) <{index = 2 : i64}> : (!ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>, i32) -> !ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>
    %25 = "ep2.add"(%10, %arg2) : (i32, i32) -> i32
    %26 = "ep2.struct_update"(%24, %25) <{index = 3 : i64}> : (!ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>, i32) -> !ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>
    %27 = "ep2.add"(%11, %arg2) : (i16, i32) -> i16
    %28 = "ep2.struct_update"(%26, %27) <{index = 4 : i64}> : (!ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>, i16) -> !ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>
    %29 = "ep2.add"(%12, %arg2) : (i16, i32) -> i16
    %30 = "ep2.struct_update"(%28, %29) <{index = 5 : i64}> : (!ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>, i16) -> !ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>
    %31 = "ep2.add"(%arg4, %10) : (i32, i32) -> i32
    %32 = "ep2.add"(%31, %11) : (i32, i16) -> i32
    %33 = "ep2.add"(%32, %12) : (i32, i16) -> i32
    %34 = "ep2.add"(%33, %arg2) : (i32, i32) -> i32
    %35 = "ep2.bitcast"(%34) : (i32) -> i64
    %36 = "ep2.struct_update"(%30, %35) <{index = 7 : i64}> : (!ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>, i64) -> !ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>
    "ep2.update"(%14, %arg0, %36) : (!ep2.table<i16, !ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>, 64>, i16, !ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>) -> ()
    %37 = ep2.struct_access %36[2] : <"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64> -> i32
    %38 = ep2.struct_access %36[3] : <"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64> -> i32
    %39 = "ep2.add"(%37, %38) : (i32, i32) -> i32
    %40 = ep2.struct_access %36[4] : <"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64> -> i16
    %41 = "ep2.add"(%39, %40) : (i32, i16) -> i32
    %42 = ep2.struct_access %36[5] : <"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64> -> i16
    %43 = "ep2.add"(%41, %42) : (i32, i16) -> i32
    %44 = "ep2.init"() : () -> !ep2.struct<"lb_fwd_tcp_hdr_t" : isEvent = false, elementTypes = i64, i64, i32>
    %45 = "ep2.bitcast"(%43) : (i32) -> i64
    %46 = "ep2.struct_update"(%44, %45) <{index = 0 : i64}> : (!ep2.struct<"lb_fwd_tcp_hdr_t" : isEvent = false, elementTypes = i64, i64, i32>, i64) -> !ep2.struct<"lb_fwd_tcp_hdr_t" : isEvent = false, elementTypes = i64, i64, i32>
    %47 = "ep2.emit_value"(%13, %46) : (!ep2.buf, !ep2.struct<"lb_fwd_tcp_hdr_t" : isEvent = false, elementTypes = i64, i64, i32>) -> !ep2.buf
    %48 = "ep2.init"(%9, %47) {context_names = ["", ""]} : (!ep2.atom, !ep2.buf) -> !ep2.struct<"NET_SEND" : isEvent = true, elementTypes = !ep2.atom, !ep2.buf>
    ep2.return %48 : !ep2.struct<"NET_SEND" : isEvent = true, elementTypes = !ep2.atom, !ep2.buf>
    "ep2.terminate"() : () -> ()
  }
}

