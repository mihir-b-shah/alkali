module {
  ep2.func private @__handler_NET_SEND_net_send(%arg0: !ep2.context, %arg1: !ep2.buf) attributes {atom = "net_send", event = "NET_SEND", extern = true, location = "cu7", type = "handler"} {
    "ep2.terminate"() : () -> ()
  }
  ep2.func private @__handler_DMA_WRITE_REQ_dma_write(%arg0: !ep2.context, %arg1: !ep2.buf, %arg2: !ep2.struct<"dma_write_cmd_t" : isEvent = false, elementTypes = i32, i32>) attributes {atom = "dma_write", event = "DMA_WRITE_REQ", extern = true, location = "cu8", type = "handler"} {
    "ep2.terminate"() : () -> ()
  }
  %0 = "ep2.global"() <{name = "firewall_tcpport_table"}> : () -> !ep2.table<i32, !ep2.struct<"firewall_tcpport_entries_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32>, 64>
  %1 = "ep2.global"() <{name = "priority_table"}> : () -> !ep2.table<i32, !ep2.struct<"priority_entries_t" : isEvent = false, elementTypes = i32, i32>, 64>
  %2 = "ep2.global"() <{name = "flow_tracker_table"}> : () -> !ep2.table<i32, !ep2.struct<"flow_tracker_t" : isEvent = false, elementTypes = i32, i32>, 64>
  %3 = "ep2.global"() <{name = "err_tracker_table"}> : () -> !ep2.table<i32, !ep2.struct<"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, 64>
  %4 = "ep2.global"() <{name = "ip_tracker_table"}> : () -> !ep2.table<i32, !ep2.struct<"ip_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, 64>
  %5 = "ep2.global"() <{name = "tcp_tracker_table"}> : () -> !ep2.table<i32, !ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, 64>
  %6 = "ep2.global"() <{name = "lb_table"}> : () -> !ep2.table<i16, !ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>, 64>
  %7 = "ep2.global"() <{name = "lb_fwd_table"}> : () -> !ep2.table<i32, !ep2.struct<"lb_fwd_tcp_hdr_t" : isEvent = false, elementTypes = i64, i64, i32>, 64>
  ep2.func private @__handler_NET_RECV_process_packet(%arg0: !ep2.buf) attributes {atom = "process_packet", event = "NET_RECV", generationIndex = 2 : i32, instances = ["cu1"], instances_err_tracker_table = true, instances_firewall_ip_table = true, instances_firewall_tcpport_table = true, type = "handler"} {
    %8 = "ep2.constant"() <{value = "process_packet"}> : () -> !ep2.atom
    %9 = "ep2.constant"() <{value = 256 : i32}> : () -> i32
    %10 = "ep2.constant"() <{value = 134744072 : i32}> : () -> i32
    %11 = "ep2.constant"() <{value = 1 : i32}> : () -> i32
    %12, %output = "ep2.extract_value"(%arg0) : (!ep2.buf) -> (!ep2.buf, !ep2.struct<"eth_header_t" : isEvent = false, elementTypes = i48, i48, i16>)
    %13, %output_0 = "ep2.extract_value"(%12) : (!ep2.buf) -> (!ep2.buf, !ep2.struct<"ip_header_t" : isEvent = false, elementTypes = i16, i16, i16, i16, i16, i16, i32, i32, i32>)
    %14, %output_1 = "ep2.extract_value"(%13) : (!ep2.buf) -> (!ep2.buf, !ep2.struct<"tcp_header_t" : isEvent = false, elementTypes = i16, i16, i32, i32, i8, i8, i16, i16, i16>)
    %15 = ep2.struct_access %output_0[6] : <"ip_header_t" : isEvent = false, elementTypes = i16, i16, i16, i16, i16, i16, i32, i32, i32> -> i32
    %16 = ep2.struct_access %output_0[7] : <"ip_header_t" : isEvent = false, elementTypes = i16, i16, i16, i16, i16, i16, i32, i32, i32> -> i32
    %17 = "ep2.add"(%15, %16) : (i32, i32) -> i32
    %18 = ep2.struct_access %output_1[0] : <"tcp_header_t" : isEvent = false, elementTypes = i16, i16, i32, i32, i8, i8, i16, i16, i16> -> i16
    %19 = "ep2.add"(%17, %18) : (i32, i16) -> i32
    %20 = ep2.struct_access %output_1[1] : <"tcp_header_t" : isEvent = false, elementTypes = i16, i16, i32, i32, i8, i8, i16, i16, i16> -> i16
    %21 = "ep2.add"(%19, %20) : (i32, i16) -> i32
    %22 = ep2.struct_access %output_0[6] : <"ip_header_t" : isEvent = false, elementTypes = i16, i16, i16, i16, i16, i16, i32, i32, i32> -> i32
    %23 = "ep2.init"() : () -> !ep2.table<i32, !ep2.struct<"firewall_ip_entries_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32>, 64>
    %24 = "ep2.lookup"(%23, %21) : (!ep2.table<i32, !ep2.struct<"firewall_ip_entries_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32>, 64>, i32) -> !ep2.struct<"firewall_ip_entries_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32>
    %25 = "ep2.init"() : () -> !ep2.table<i32, !ep2.struct<"firewall_tcpport_entries_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32>, 64>
    %26 = "ep2.lookup"(%25, %21) : (!ep2.table<i32, !ep2.struct<"firewall_tcpport_entries_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32>, 64>, i32) -> !ep2.struct<"firewall_tcpport_entries_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32>
    %27 = ep2.struct_access %26[4] : <"firewall_tcpport_entries_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32> -> i32
    %28 = ep2.struct_access %24[4] : <"firewall_ip_entries_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32> -> i32
    %29 = "ep2.add"(%27, %28) : (i32, i32) -> i32
    %30 = ep2.struct_access %24[3] : <"firewall_ip_entries_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32> -> i32
    %31 = ep2.struct_access %26[3] : <"firewall_tcpport_entries_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32> -> i32
    %32 = "ep2.add"(%30, %31) : (i32, i32) -> i32
    %33 = ep2.struct_access %26[4] : <"firewall_tcpport_entries_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32> -> i32
    %34 = ep2.struct_access %24[4] : <"firewall_ip_entries_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32> -> i32
    %35 = "ep2.add"(%33, %34) : (i32, i32) -> i32
    %36 = "ep2.init"() : () -> !ep2.table<i32, !ep2.struct<"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, 64>
    %37 = "ep2.lookup"(%36, %21) : (!ep2.table<i32, !ep2.struct<"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, 64>, i32) -> !ep2.struct<"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>
    %38 = ep2.struct_access %37[0] : <"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32> -> i32
    %39 = "ep2.add"(%38, %11) : (i32, i32) -> i32
    %40 = "ep2.sub"(%39, %35) : (i32, i32) -> i32
    %41 = "ep2.struct_update"(%37, %40) <{index = 0 : i64}> : (!ep2.struct<"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, i32) -> !ep2.struct<"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>
    %42 = ep2.struct_access %41[2] : <"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32> -> i32
    %43 = "ep2.add"(%42, %9) : (i32, i32) -> i32
    %44 = ep2.struct_access %output_1[2] : <"tcp_header_t" : isEvent = false, elementTypes = i16, i16, i32, i32, i8, i8, i16, i16, i16> -> i32
    %45 = "ep2.add"(%43, %44) : (i32, i32) -> i32
    %46 = ep2.struct_access %output_1[7] : <"tcp_header_t" : isEvent = false, elementTypes = i16, i16, i32, i32, i8, i8, i16, i16, i16> -> i16
    %47 = "ep2.add"(%45, %46) : (i32, i16) -> i32
    %48 = "ep2.struct_update"(%41, %47) <{index = 2 : i64}> : (!ep2.struct<"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, i32) -> !ep2.struct<"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>
    %49 = ep2.struct_access %48[0] : <"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32> -> i32
    %50 = ep2.struct_access %48[2] : <"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32> -> i32
    %51 = "ep2.add"(%49, %50) : (i32, i32) -> i32
    "ep2.update"(%36, %21, %48) : (!ep2.table<i32, !ep2.struct<"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, 64>, i32, !ep2.struct<"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>) -> ()
    %52 = "ep2.init"(%8, %21, %29, %51, %32, %22, %11, %10, %output_1, %14, %35) : (!ep2.atom, i32, i32, i32, i32, i32, i32, i32, !ep2.struct<"tcp_header_t" : isEvent = false, elementTypes = i16, i16, i32, i32, i8, i8, i16, i16, i16>, !ep2.buf, i32) -> !ep2.struct<"NET_RECV_1" : isEvent = true, elementTypes = !ep2.atom, i32, i32, i32, i32, i32, i32, i32, !ep2.struct<"tcp_header_t" : isEvent = false, elementTypes = i16, i16, i32, i32, i8, i8, i16, i16, i16>, !ep2.buf, i32>
    ep2.return %52 : !ep2.struct<"NET_RECV_1" : isEvent = true, elementTypes = !ep2.atom, i32, i32, i32, i32, i32, i32, i32, !ep2.struct<"tcp_header_t" : isEvent = false, elementTypes = i16, i16, i32, i32, i8, i8, i16, i16, i16>, !ep2.buf, i32>
    "ep2.terminate"() : () -> ()
  }
  ep2.func @__controller_NET_RECV_1() attributes {event = "NET_RECV_1", type = "controller"} {
    %8 = "ep2.constant"() <{value = #ep2.port<"NET_RECV" : "process_packet", 0>}> : () -> !ep2.port<true, false>
    %9 = "ep2.constant"() <{value = #ep2.port<"NET_RECV_1" : "process_packet", 0>}> : () -> !ep2.port<false, true>
    "ep2.connect"(%8, %9) <{method = "Queue", operandSegmentSizes = array<i32: 1, 1>, parameters = [32]}> : (!ep2.port<true, false>, !ep2.port<false, true>) -> ()
    "ep2.terminate"() : () -> ()
  }
  ep2.func @__handler_NET_RECV_1_process_packet(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: i32, %arg6: i32, %arg7: !ep2.struct<"tcp_header_t" : isEvent = false, elementTypes = i16, i16, i32, i32, i8, i8, i16, i16, i16>, %arg8: !ep2.buf, %arg9: i32) attributes {atom = "process_packet", event = "NET_RECV_1", generationIndex = 12 : i32, instances = ["cu2"], instances_tcp_tracker_table = true, type = "handler"} {
    %8 = "ep2.constant"() <{value = "process_packet"}> : () -> !ep2.atom
    %9 = ep2.struct_access %arg7[7] : <"tcp_header_t" : isEvent = false, elementTypes = i16, i16, i32, i32, i8, i8, i16, i16, i16> -> i16
    %10 = "ep2.add"(%arg2, %9) : (i32, i16) -> i32
    %11 = "ep2.init"() : () -> !ep2.table<i32, !ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, 64>
    %12 = "ep2.lookup"(%11, %arg4) : (!ep2.table<i32, !ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, 64>, i32) -> !ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>
    %13 = ep2.struct_access %12[0] : <"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32> -> i32
    %14 = "ep2.sub"(%13, %arg9) : (i32, i32) -> i32
    %15 = "ep2.struct_update"(%12, %14) <{index = 0 : i64}> : (!ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, i32) -> !ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>
    "ep2.update"(%11, %arg4, %15) : (!ep2.table<i32, !ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, 64>, i32, !ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>) -> ()
    %16 = ep2.struct_access %15[2] : <"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32> -> i32
    %17 = "ep2.add"(%16, %10) : (i32, i32) -> i32
    %18 = "ep2.struct_update"(%15, %17) <{index = 2 : i64}> : (!ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, i32) -> !ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>
    %19 = ep2.struct_access %18[0] : <"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32> -> i32
    %20 = ep2.struct_access %18[2] : <"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32> -> i32
    %21 = "ep2.init"(%8, %arg0, %arg8, %arg3, %arg6, %20, %19, %arg5, %arg1, %arg7) : (!ep2.atom, i32, !ep2.buf, i32, i32, i32, i32, i32, i32, !ep2.struct<"tcp_header_t" : isEvent = false, elementTypes = i16, i16, i32, i32, i8, i8, i16, i16, i16>) -> !ep2.struct<"NET_RECV_2" : isEvent = true, elementTypes = !ep2.atom, i32, !ep2.buf, i32, i32, i32, i32, i32, i32, !ep2.struct<"tcp_header_t" : isEvent = false, elementTypes = i16, i16, i32, i32, i8, i8, i16, i16, i16>>
    ep2.return %21 : !ep2.struct<"NET_RECV_2" : isEvent = true, elementTypes = !ep2.atom, i32, !ep2.buf, i32, i32, i32, i32, i32, i32, !ep2.struct<"tcp_header_t" : isEvent = false, elementTypes = i16, i16, i32, i32, i8, i8, i16, i16, i16>>
    "ep2.terminate"() : () -> ()
  }
  ep2.func @__controller_NET_RECV_2() attributes {event = "NET_RECV_2", type = "controller"} {
    %8 = "ep2.constant"() <{value = #ep2.port<"NET_RECV_1" : "process_packet", 0>}> : () -> !ep2.port<true, false>
    %9 = "ep2.constant"() <{value = #ep2.port<"NET_RECV_2" : "process_packet", 0>}> : () -> !ep2.port<false, true>
    "ep2.connect"(%8, %9) <{method = "Queue", operandSegmentSizes = array<i32: 1, 1>, parameters = [32]}> : (!ep2.port<true, false>, !ep2.port<false, true>) -> ()
    "ep2.terminate"() : () -> ()
  }
  ep2.func @__handler_NET_RECV_2_process_packet(%arg0: i32, %arg1: !ep2.buf, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: i32, %arg6: i32, %arg7: i32, %arg8: !ep2.struct<"tcp_header_t" : isEvent = false, elementTypes = i16, i16, i32, i32, i8, i8, i16, i16, i16>) attributes {atom = "process_packet", event = "NET_RECV_2", generationIndex = 13 : i32, instances = ["cu3"], instances_priority_table = true, type = "handler"} {
    %8 = "ep2.constant"() <{value = "process_packet"}> : () -> !ep2.atom
    %9 = "ep2.init"() : () -> !ep2.table<i32, !ep2.struct<"priority_entries_t" : isEvent = false, elementTypes = i32, i32>, 64>
    %10 = "ep2.lookup"(%9, %arg0) : (!ep2.table<i32, !ep2.struct<"priority_entries_t" : isEvent = false, elementTypes = i32, i32>, 64>, i32) -> !ep2.struct<"priority_entries_t" : isEvent = false, elementTypes = i32, i32>
    %11 = "ep2.lookup"(%9, %arg0) : (!ep2.table<i32, !ep2.struct<"priority_entries_t" : isEvent = false, elementTypes = i32, i32>, 64>, i32) -> !ep2.struct<"priority_entries_t" : isEvent = false, elementTypes = i32, i32>
    %12 = "ep2.init"() : () -> !ep2.struct<"firewall_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>
    %13 = "ep2.struct_update"(%12, %arg7) <{index = 1 : i64}> : (!ep2.struct<"firewall_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>, i32) -> !ep2.struct<"firewall_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>
    %14 = ep2.struct_access %10[0] : <"priority_entries_t" : isEvent = false, elementTypes = i32, i32> -> i32
    %15 = ep2.struct_access %11[0] : <"priority_entries_t" : isEvent = false, elementTypes = i32, i32> -> i32
    %16 = "ep2.add"(%14, %15) : (i32, i32) -> i32
    %17 = "ep2.struct_update"(%13, %16) <{index = 2 : i64}> : (!ep2.struct<"firewall_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>, i32) -> !ep2.struct<"firewall_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>
    %18 = "ep2.init"(%8, %arg3, %arg5, %arg6, %arg4, %arg2, %arg1, %arg8, %arg0, %17) : (!ep2.atom, i32, i32, i32, i32, i32, !ep2.buf, !ep2.struct<"tcp_header_t" : isEvent = false, elementTypes = i16, i16, i32, i32, i8, i8, i16, i16, i16>, i32, !ep2.struct<"firewall_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>) -> !ep2.struct<"NET_RECV_3" : isEvent = true, elementTypes = !ep2.atom, i32, i32, i32, i32, i32, !ep2.buf, !ep2.struct<"tcp_header_t" : isEvent = false, elementTypes = i16, i16, i32, i32, i8, i8, i16, i16, i16>, i32, !ep2.struct<"firewall_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>>
    ep2.return %18 : !ep2.struct<"NET_RECV_3" : isEvent = true, elementTypes = !ep2.atom, i32, i32, i32, i32, i32, !ep2.buf, !ep2.struct<"tcp_header_t" : isEvent = false, elementTypes = i16, i16, i32, i32, i8, i8, i16, i16, i16>, i32, !ep2.struct<"firewall_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>>
    "ep2.terminate"() : () -> ()
  }
  ep2.func @__controller_NET_RECV_3() attributes {event = "NET_RECV_3", type = "controller"} {
    %8 = "ep2.constant"() <{value = #ep2.port<"NET_RECV_2" : "process_packet", 0>}> : () -> !ep2.port<true, false>
    %9 = "ep2.constant"() <{value = #ep2.port<"NET_RECV_3" : "process_packet", 0>}> : () -> !ep2.port<false, true>
    "ep2.connect"(%8, %9) <{method = "Queue", operandSegmentSizes = array<i32: 1, 1>, parameters = [32]}> : (!ep2.port<true, false>, !ep2.port<false, true>) -> ()
    "ep2.terminate"() : () -> ()
  }
  ep2.func @__handler_NET_RECV_3_process_packet(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: !ep2.buf, %arg6: !ep2.struct<"tcp_header_t" : isEvent = false, elementTypes = i16, i16, i32, i32, i8, i8, i16, i16, i16>, %arg7: i32, %arg8: !ep2.struct<"firewall_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>) attributes {atom = "process_packet", event = "NET_RECV_3", generationIndex = 7 : i32, instances = ["cu4"], instances_lb_table = true, type = "handler"} {
    %8 = "ep2.constant"() <{value = "net_send"}> : () -> !ep2.atom
    %9 = "ep2.constant"() <{value = 134744071 : i32}> : () -> i32
    %10 = "ep2.constant"() <{value = 50 : i16}> : () -> i16
    %11 = "ep2.constant"() <{value = 60 : i16}> : () -> i16
    %12 = "ep2.struct_update"(%arg8, %arg7) <{index = 0 : i64}> : (!ep2.struct<"firewall_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>, i32) -> !ep2.struct<"firewall_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>
    %13 = "ep2.struct_update"(%12, %arg4) <{index = 3 : i64}> : (!ep2.struct<"firewall_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>, i32) -> !ep2.struct<"firewall_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>
    %14 = "ep2.emit_value"(%arg5, %13) : (!ep2.buf, !ep2.struct<"firewall_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>) -> !ep2.buf
    %15 = "ep2.init"() : () -> !ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>
    %16 = "ep2.struct_update"(%15, %arg1) <{index = 0 : i64}> : (!ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>, i32) -> !ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>
    %17 = "ep2.struct_update"(%16, %arg3) <{index = 1 : i64}> : (!ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>, i32) -> !ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>
    %18 = "ep2.emit_value"(%14, %17) : (!ep2.buf, !ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>) -> !ep2.buf
    %19 = ep2.struct_access %arg6[0] : <"tcp_header_t" : isEvent = false, elementTypes = i16, i16, i32, i32, i8, i8, i16, i16, i16> -> i16
    %20 = "ep2.init"() : () -> !ep2.table<i16, !ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>, 64>
    %21 = "ep2.lookup"(%20, %19) : (!ep2.table<i16, !ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>, 64>, i16) -> !ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>
    %22 = "ep2.struct_update"(%21, %arg2) <{index = 6 : i64}> : (!ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>, i32) -> !ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>
    %23 = ep2.struct_access %22[0] : <"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64> -> i64
    %24 = "ep2.add"(%23, %arg7) : (i64, i32) -> i64
    %25 = "ep2.struct_update"(%22, %24) <{index = 0 : i64}> : (!ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>, i64) -> !ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>
    %26 = ep2.struct_access %25[1] : <"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64> -> i64
    %27 = "ep2.add"(%26, %arg7) : (i64, i32) -> i64
    %28 = "ep2.struct_update"(%25, %27) <{index = 1 : i64}> : (!ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>, i64) -> !ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>
    %29 = "ep2.add"(%arg0, %arg7) : (i32, i32) -> i32
    %30 = "ep2.struct_update"(%28, %29) <{index = 2 : i64}> : (!ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>, i32) -> !ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>
    %31 = "ep2.add"(%9, %arg7) : (i32, i32) -> i32
    %32 = "ep2.struct_update"(%30, %31) <{index = 3 : i64}> : (!ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>, i32) -> !ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>
    %33 = "ep2.add"(%10, %arg7) : (i16, i32) -> i16
    %34 = "ep2.struct_update"(%32, %33) <{index = 4 : i64}> : (!ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>, i16) -> !ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>
    %35 = "ep2.add"(%11, %arg7) : (i16, i32) -> i16
    %36 = "ep2.struct_update"(%34, %35) <{index = 5 : i64}> : (!ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>, i16) -> !ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>
    %37 = "ep2.add"(%arg0, %9) : (i32, i32) -> i32
    %38 = "ep2.add"(%37, %10) : (i32, i16) -> i32
    %39 = "ep2.add"(%38, %11) : (i32, i16) -> i32
    %40 = "ep2.add"(%39, %arg7) : (i32, i32) -> i32
    %41 = "ep2.bitcast"(%40) : (i32) -> i64
    %42 = "ep2.struct_update"(%36, %41) <{index = 7 : i64}> : (!ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>, i64) -> !ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>
    "ep2.update"(%20, %19, %42) : (!ep2.table<i16, !ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>, 64>, i16, !ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>) -> ()
    %43 = ep2.struct_access %42[2] : <"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64> -> i32
    %44 = ep2.struct_access %42[3] : <"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64> -> i32
    %45 = "ep2.add"(%43, %44) : (i32, i32) -> i32
    %46 = ep2.struct_access %42[4] : <"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64> -> i16
    %47 = "ep2.add"(%45, %46) : (i32, i16) -> i32
    %48 = ep2.struct_access %42[5] : <"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64> -> i16
    %49 = "ep2.add"(%47, %48) : (i32, i16) -> i32
    %50 = "ep2.init"() : () -> !ep2.struct<"lb_fwd_tcp_hdr_t" : isEvent = false, elementTypes = i64, i64, i32>
    %51 = "ep2.bitcast"(%49) : (i32) -> i64
    %52 = "ep2.struct_update"(%50, %51) <{index = 0 : i64}> : (!ep2.struct<"lb_fwd_tcp_hdr_t" : isEvent = false, elementTypes = i64, i64, i32>, i64) -> !ep2.struct<"lb_fwd_tcp_hdr_t" : isEvent = false, elementTypes = i64, i64, i32>
    %53 = "ep2.emit_value"(%18, %52) : (!ep2.buf, !ep2.struct<"lb_fwd_tcp_hdr_t" : isEvent = false, elementTypes = i64, i64, i32>) -> !ep2.buf
    %54 = "ep2.init"(%8, %53) {context_names = ["", ""]} : (!ep2.atom, !ep2.buf) -> !ep2.struct<"NET_SEND" : isEvent = true, elementTypes = !ep2.atom, !ep2.buf>
    ep2.return %54 : !ep2.struct<"NET_SEND" : isEvent = true, elementTypes = !ep2.atom, !ep2.buf>
    "ep2.terminate"() : () -> ()
  }
}

