module {
  ep2.func private @__handler_NET_SEND_net_send(%arg0: !ep2.context, %arg1: !ep2.buf) attributes {atom = "net_send", event = "NET_SEND", extern = true, location = "cu7", type = "handler"} {
    "ep2.terminate"() : () -> ()
  }
  ep2.func private @__handler_DMA_WRITE_REQ_dma_write(%arg0: !ep2.context, %arg1: !ep2.buf, %arg2: !ep2.struct<"dma_write_cmd_t" : isEvent = false, elementTypes = i32, i32>) attributes {atom = "dma_write", event = "DMA_WRITE_REQ", extern = true, location = "cu8", type = "handler"} {
    "ep2.terminate"() : () -> ()
  }
  %0 = "ep2.global"() <{name = "firewall_ip_table"}> {instances = ["cls_cu1"]} : () -> !ep2.table<i32, !ep2.struct<"firewall_ip_entries_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32>, 64>
  %1 = "ep2.global"() <{name = "firewall_tcpport_table"}> {instances = ["cls_cu1"]} : () -> !ep2.table<i32, !ep2.struct<"firewall_tcpport_entries_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32>, 64>
  %2 = "ep2.global"() <{name = "priority_table"}> {instances = ["cls_cu1"]} : () -> !ep2.table<i32, !ep2.struct<"priority_entries_t" : isEvent = false, elementTypes = i32, i32>, 64>
  %3 = "ep2.global"() <{name = "err_tracker_table"}> {instances = ["cls_cu3"]} : () -> !ep2.table<i32, !ep2.struct<"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, 64>
  %4 = "ep2.global"() <{name = "ip_tracker_table"}> : () -> !ep2.table<i32, !ep2.struct<"ip_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, 64>
  %5 = "ep2.global"() <{name = "tcp_tracker_table"}> {instances = ["cls_cu2"]} : () -> !ep2.table<i32, !ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, 64>
  %6 = "ep2.global"() <{name = "lb_table"}> {instances = ["cls_cu4"]} : () -> !ep2.table<i16, !ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>, 64>
  %7 = "ep2.global"() <{name = "lb_fwd_table"}> : () -> !ep2.table<i32, !ep2.struct<"lb_fwd_tcp_hdr_t" : isEvent = false, elementTypes = i64, i64, i32>, 64>
  ep2.func private @__handler_NET_RECV_process_packet(%arg0: !ep2.context, %arg1: !ep2.buf) attributes {atom = "process_packet", event = "NET_RECV", generationIndex = 2 : i32, instances = ["cu1"], type = "handler"} {
    %8 = "ep2.constant"() <{value = "process_packet_1"}> : () -> !ep2.atom
    %9 = "ep2.constant"() <{value = 134744072 : i32}> : () -> i32
    %10 = "ep2.extract"(%arg1) : (!ep2.buf) -> !ep2.struct<"eth_header_t" : isEvent = false, elementTypes = i48, i48, i16>
    %11 = "ep2.extract"(%arg1) : (!ep2.buf) -> !ep2.struct<"ip_header_t" : isEvent = false, elementTypes = i16, i16, i16, i16, i16, i16, i32, i32, i32>
    %12 = "ep2.extract"(%arg1) : (!ep2.buf) -> !ep2.struct<"tcp_header_t" : isEvent = false, elementTypes = i16, i16, i32, i32, i8, i8, i16, i16, i16>
    %13 = ep2.struct_access %11[6] : <"ip_header_t" : isEvent = false, elementTypes = i16, i16, i16, i16, i16, i16, i32, i32, i32> -> i32
    %14 = ep2.struct_access %11[7] : <"ip_header_t" : isEvent = false, elementTypes = i16, i16, i16, i16, i16, i16, i32, i32, i32> -> i32
    %15 = "ep2.add"(%13, %14) : (i32, i32) -> i32
    %16 = ep2.struct_access %12[0] : <"tcp_header_t" : isEvent = false, elementTypes = i16, i16, i32, i32, i8, i8, i16, i16, i16> -> i16
    %17 = "ep2.add"(%15, %16) : (i32, i16) -> i32
    %18 = ep2.struct_access %12[1] : <"tcp_header_t" : isEvent = false, elementTypes = i16, i16, i32, i32, i8, i8, i16, i16, i16> -> i16
    %19 = "ep2.add"(%17, %18) : (i32, i16) -> i32
    %20 = "ep2.global_import"() <{name = "firewall_ip_table"}> : () -> !ep2.table<i32, !ep2.struct<"firewall_ip_entries_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32>, 64>
    %21 = "ep2.lookup"(%20, %19) : (!ep2.table<i32, !ep2.struct<"firewall_ip_entries_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32>, 64>, i32) -> !ep2.struct<"firewall_ip_entries_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32>
    %22 = "ep2.global_import"() <{name = "firewall_tcpport_table"}> : () -> !ep2.table<i32, !ep2.struct<"firewall_tcpport_entries_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32>, 64>
    %23 = "ep2.lookup"(%22, %19) : (!ep2.table<i32, !ep2.struct<"firewall_tcpport_entries_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32>, 64>, i32) -> !ep2.struct<"firewall_tcpport_entries_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32>
    %24 = "ep2.global_import"() <{name = "priority_table"}> : () -> !ep2.table<i32, !ep2.struct<"priority_entries_t" : isEvent = false, elementTypes = i32, i32>, 64>
    %25 = "ep2.lookup"(%24, %19) : (!ep2.table<i32, !ep2.struct<"priority_entries_t" : isEvent = false, elementTypes = i32, i32>, 64>, i32) -> !ep2.struct<"priority_entries_t" : isEvent = false, elementTypes = i32, i32>
    %26 = "ep2.init"() : () -> !ep2.struct<"firewall_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>
    %27 = ep2.struct_access %23[4] : <"firewall_tcpport_entries_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32> -> i32
    %28 = ep2.struct_access %21[4] : <"firewall_ip_entries_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32> -> i32
    %29 = "ep2.add"(%27, %28) : (i32, i32) -> i32
    %30 = "ep2.struct_update"(%26, %29) <{index = 1 : i64}> : (!ep2.struct<"firewall_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>, i32) -> !ep2.struct<"firewall_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>
    %31 = ep2.struct_access %25[0] : <"priority_entries_t" : isEvent = false, elementTypes = i32, i32> -> i32
    %32 = "ep2.add"(%31, %31) : (i32, i32) -> i32
    %33 = "ep2.struct_update"(%30, %32) <{index = 2 : i64}> : (!ep2.struct<"firewall_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>, i32) -> !ep2.struct<"firewall_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>
    %34 = "ep2.struct_update"(%33, %19) <{index = 0 : i64}> : (!ep2.struct<"firewall_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>, i32) -> !ep2.struct<"firewall_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>
    %35 = ep2.struct_access %21[3] : <"firewall_ip_entries_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32> -> i32
    %36 = ep2.struct_access %23[3] : <"firewall_tcpport_entries_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32> -> i32
    %37 = "ep2.add"(%35, %36) : (i32, i32) -> i32
    %38 = "ep2.struct_update"(%34, %37) <{index = 3 : i64}> : (!ep2.struct<"firewall_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>, i32) -> !ep2.struct<"firewall_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>
    "ep2.emit"(%arg1, %38) : (!ep2.buf, !ep2.struct<"firewall_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>) -> ()
    %39 = ep2.struct_access %12[2] : <"tcp_header_t" : isEvent = false, elementTypes = i16, i16, i32, i32, i8, i8, i16, i16, i16> -> i32
    %40 = ep2.struct_access %12[7] : <"tcp_header_t" : isEvent = false, elementTypes = i16, i16, i32, i32, i8, i8, i16, i16, i16> -> i16
    %41 = "ep2.init"() : () -> !ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>
    %42 = "ep2.context_ref"(%arg0) <{name = "context0"}> : (!ep2.context) -> !ep2.conref<i32>
    "ep2.store"(%42, %29) : (!ep2.conref<i32>, i32) -> ()
    %43 = "ep2.context_ref"(%arg0) <{name = "context1"}> : (!ep2.context) -> !ep2.conref<i32>
    "ep2.store"(%43, %9) : (!ep2.conref<i32>, i32) -> ()
    %44 = "ep2.context_ref"(%arg0) <{name = "context2"}> : (!ep2.context) -> !ep2.conref<i32>
    "ep2.store"(%44, %19) : (!ep2.conref<i32>, i32) -> ()
    %45 = "ep2.context_ref"(%arg0) <{name = "context3"}> : (!ep2.context) -> !ep2.conref<i16>
    "ep2.store"(%45, %40) : (!ep2.conref<i16>, i16) -> ()
    %46 = "ep2.context_ref"(%arg0) <{name = "context4"}> : (!ep2.context) -> !ep2.conref<i16>
    "ep2.store"(%46, %16) : (!ep2.conref<i16>, i16) -> ()
    %47 = "ep2.context_ref"(%arg0) <{name = "context5"}> : (!ep2.context) -> !ep2.conref<i32>
    "ep2.store"(%47, %39) : (!ep2.conref<i32>, i32) -> ()
    %48 = "ep2.context_ref"(%arg0) <{name = "context6"}> : (!ep2.context) -> !ep2.conref<!ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>>
    "ep2.store"(%48, %41) : (!ep2.conref<!ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>>, !ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>) -> ()
    %49 = "ep2.context_ref"(%arg0) <{name = "context7"}> : (!ep2.context) -> !ep2.conref<i16>
    "ep2.store"(%49, %40) : (!ep2.conref<i16>, i16) -> ()
    %50 = "ep2.init"(%8, %arg0, %arg1, %13) : (!ep2.atom, !ep2.context, !ep2.buf, i32) -> !ep2.struct<"NET_RECV_1" : isEvent = true, elementTypes = !ep2.atom, !ep2.context, !ep2.buf, i32>
    ep2.return %50 : !ep2.struct<"NET_RECV_1" : isEvent = true, elementTypes = !ep2.atom, !ep2.context, !ep2.buf, i32>
    "ep2.terminate"() : () -> ()
  }
  ep2.func @__controller_NET_RECV_1() attributes {event = "NET_RECV_1", type = "controller"} {
    %8 = "ep2.constant"() <{value = #ep2.port<"NET_RECV" : "process_packet", 0>}> : () -> !ep2.port<true, false>
    %9 = "ep2.constant"() <{value = #ep2.port<"NET_RECV_1" : "process_packet_1", 0>}> : () -> !ep2.port<false, true>
    "ep2.connect"(%8, %9) <{method = "Queue", operandSegmentSizes = array<i32: 1, 1>, parameters = [32]}> : (!ep2.port<true, false>, !ep2.port<false, true>) -> ()
    "ep2.terminate"() : () -> ()
  }
  ep2.func @__handler_NET_RECV_1_process_packet_1(%arg0: !ep2.context, %arg1: !ep2.buf, %arg2: i32) attributes {atom = "process_packet_1", event = "NET_RECV_1", generationIndex = 12 : i32, instances = ["cu2"], type = "handler"} {
    %8 = "ep2.constant"() <{value = "process_packet_2"}> : () -> !ep2.atom
    %9 = "ep2.context_ref"(%arg0) <{name = "context0"}> : (!ep2.context) -> !ep2.conref<i32>
    %10 = "ep2.load"(%9) : (!ep2.conref<i32>) -> i32
    %11 = "ep2.global_import"() <{name = "tcp_tracker_table"}> : () -> !ep2.table<i32, !ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, 64>
    %12 = "ep2.lookup"(%11, %arg2) : (!ep2.table<i32, !ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, 64>, i32) -> !ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>
    %13 = ep2.struct_access %12[0] : <"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32> -> i32
    %14 = "ep2.sub"(%13, %10) : (i32, i32) -> i32
    %15 = "ep2.struct_update"(%12, %14) <{index = 0 : i64}> : (!ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, i32) -> !ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>
    "ep2.update"(%11, %arg2, %15) : (!ep2.table<i32, !ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, 64>, i32, !ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>) -> ()
    %16 = "ep2.context_ref"(%arg0) <{name = "context9"}> : (!ep2.context) -> !ep2.conref<!ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>>
    "ep2.store"(%16, %15) : (!ep2.conref<!ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>>, !ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>) -> ()
    %17 = "ep2.init"(%8, %arg0, %arg1) : (!ep2.atom, !ep2.context, !ep2.buf) -> !ep2.struct<"NET_RECV_2" : isEvent = true, elementTypes = !ep2.atom, !ep2.context, !ep2.buf>
    ep2.return %17 : !ep2.struct<"NET_RECV_2" : isEvent = true, elementTypes = !ep2.atom, !ep2.context, !ep2.buf>
    "ep2.terminate"() : () -> ()
  }
  ep2.func @__controller_NET_RECV_2() attributes {event = "NET_RECV_2", type = "controller"} {
    %8 = "ep2.constant"() <{value = #ep2.port<"NET_RECV_1" : "process_packet_1", 0>}> : () -> !ep2.port<true, false>
    %9 = "ep2.constant"() <{value = #ep2.port<"NET_RECV_2" : "process_packet_2", 0>}> : () -> !ep2.port<false, true>
    "ep2.connect"(%8, %9) <{method = "Queue", operandSegmentSizes = array<i32: 1, 1>, parameters = [32]}> : (!ep2.port<true, false>, !ep2.port<false, true>) -> ()
    "ep2.terminate"() : () -> ()
  }
  ep2.func @__handler_NET_RECV_2_process_packet_2(%arg0: !ep2.context, %arg1: !ep2.buf) attributes {atom = "process_packet_2", event = "NET_RECV_2", generationIndex = 13 : i32, instances = ["cu3"], type = "handler"} {
    %8 = "ep2.constant"() <{value = "process_packet_3"}> : () -> !ep2.atom
    %9 = "ep2.constant"() <{value = 1 : i32}> : () -> i32
    %10 = "ep2.constant"() <{value = 256 : i32}> : () -> i32
    %11 = "ep2.context_ref"(%arg0) <{name = "context6"}> : (!ep2.context) -> !ep2.conref<!ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>>
    %12 = "ep2.context_ref"(%arg0) <{name = "context5"}> : (!ep2.context) -> !ep2.conref<i32>
    %13 = "ep2.context_ref"(%arg0) <{name = "context7"}> : (!ep2.context) -> !ep2.conref<i16>
    %14 = "ep2.context_ref"(%arg0) <{name = "context9"}> : (!ep2.context) -> !ep2.conref<!ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>>
    %15 = "ep2.context_ref"(%arg0) <{name = "context0"}> : (!ep2.context) -> !ep2.conref<i32>
    %16 = "ep2.context_ref"(%arg0) <{name = "context3"}> : (!ep2.context) -> !ep2.conref<i16>
    %17 = "ep2.context_ref"(%arg0) <{name = "context2"}> : (!ep2.context) -> !ep2.conref<i32>
    %18 = "ep2.load"(%17) : (!ep2.conref<i32>) -> i32
    %19 = "ep2.load"(%13) : (!ep2.conref<i16>) -> i16
    %20 = "ep2.load"(%16) : (!ep2.conref<i16>) -> i16
    %21 = "ep2.load"(%14) : (!ep2.conref<!ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>>) -> !ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>
    %22 = "ep2.load"(%12) : (!ep2.conref<i32>) -> i32
    %23 = "ep2.load"(%15) : (!ep2.conref<i32>) -> i32
    %24 = "ep2.load"(%11) : (!ep2.conref<!ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>>) -> !ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>
    %25 = "ep2.global_import"() <{name = "err_tracker_table"}> : () -> !ep2.table<i32, !ep2.struct<"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, 64>
    %26 = "ep2.lookup"(%25, %18) : (!ep2.table<i32, !ep2.struct<"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, 64>, i32) -> !ep2.struct<"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>
    %27 = ep2.struct_access %26[0] : <"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32> -> i32
    %28 = "ep2.add"(%27, %9) : (i32, i32) -> i32
    %29 = "ep2.sub"(%28, %23) : (i32, i32) -> i32
    %30 = "ep2.struct_update"(%26, %29) <{index = 0 : i64}> : (!ep2.struct<"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, i32) -> !ep2.struct<"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>
    %31 = ep2.struct_access %30[2] : <"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32> -> i32
    %32 = "ep2.add"(%31, %10) : (i32, i32) -> i32
    %33 = "ep2.add"(%32, %22) : (i32, i32) -> i32
    %34 = "ep2.add"(%33, %20) : (i32, i16) -> i32
    %35 = "ep2.struct_update"(%30, %34) <{index = 2 : i64}> : (!ep2.struct<"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, i32) -> !ep2.struct<"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>
    %36 = ep2.struct_access %35[0] : <"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32> -> i32
    %37 = ep2.struct_access %35[2] : <"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32> -> i32
    %38 = "ep2.add"(%36, %37) : (i32, i32) -> i32
    %39 = "ep2.add"(%38, %19) : (i32, i16) -> i32
    "ep2.update"(%25, %18, %35) : (!ep2.table<i32, !ep2.struct<"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, 64>, i32, !ep2.struct<"err_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>) -> ()
    %40 = ep2.struct_access %21[2] : <"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32> -> i32
    %41 = "ep2.add"(%40, %39) : (i32, i32) -> i32
    %42 = "ep2.struct_update"(%21, %41) <{index = 2 : i64}> : (!ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>, i32) -> !ep2.struct<"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32>
    %43 = ep2.struct_access %42[0] : <"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32> -> i32
    %44 = "ep2.struct_update"(%24, %43) <{index = 0 : i64}> : (!ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>, i32) -> !ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>
    %45 = ep2.struct_access %42[2] : <"tcp_tracker_t" : isEvent = false, elementTypes = i32, i32, i32> -> i32
    %46 = "ep2.struct_update"(%44, %45) <{index = 1 : i64}> : (!ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>, i32) -> !ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>
    %47 = "ep2.context_ref"(%arg0) <{name = "context10"}> : (!ep2.context) -> !ep2.conref<!ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>>
    "ep2.store"(%47, %46) : (!ep2.conref<!ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>>, !ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>) -> ()
    %48 = "ep2.init"(%8, %arg0, %arg1, %9) : (!ep2.atom, !ep2.context, !ep2.buf, i32) -> !ep2.struct<"NET_RECV_3" : isEvent = true, elementTypes = !ep2.atom, !ep2.context, !ep2.buf, i32>
    ep2.return %48 : !ep2.struct<"NET_RECV_3" : isEvent = true, elementTypes = !ep2.atom, !ep2.context, !ep2.buf, i32>
    "ep2.terminate"() : () -> ()
  }
  ep2.func @__controller_NET_RECV_3() attributes {event = "NET_RECV_3", type = "controller"} {
    %8 = "ep2.constant"() <{value = #ep2.port<"NET_RECV_2" : "process_packet_2", 0>}> : () -> !ep2.port<true, false>
    %9 = "ep2.constant"() <{value = #ep2.port<"NET_RECV_3" : "process_packet_3", 0>}> : () -> !ep2.port<false, true>
    "ep2.connect"(%8, %9) <{method = "Queue", operandSegmentSizes = array<i32: 1, 1>, parameters = [32]}> : (!ep2.port<true, false>, !ep2.port<false, true>) -> ()
    "ep2.terminate"() : () -> ()
  }
  ep2.func @__handler_NET_RECV_3_process_packet_3(%arg0: !ep2.context, %arg1: !ep2.buf, %arg2: i32) attributes {atom = "process_packet_3", event = "NET_RECV_3", generationIndex = 7 : i32, instances = ["cu4"], type = "handler"} {
    %8 = "ep2.constant"() <{value = 60 : i16}> : () -> i16
    %9 = "ep2.constant"() <{value = 50 : i16}> : () -> i16
    %10 = "ep2.constant"() <{value = 134744071 : i32}> : () -> i32
    %11 = "ep2.constant"() <{value = "net_send"}> : () -> !ep2.atom
    %12 = "ep2.context_ref"(%arg0) <{name = "context4"}> : (!ep2.context) -> !ep2.conref<i16>
    %13 = "ep2.context_ref"(%arg0) <{name = "context10"}> : (!ep2.context) -> !ep2.conref<!ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>>
    %14 = "ep2.context_ref"(%arg0) <{name = "context1"}> : (!ep2.context) -> !ep2.conref<i32>
    %15 = "ep2.context_ref"(%arg0) <{name = "context2"}> : (!ep2.context) -> !ep2.conref<i32>
    %16 = "ep2.load"(%14) : (!ep2.conref<i32>) -> i32
    %17 = "ep2.load"(%15) : (!ep2.conref<i32>) -> i32
    %18 = "ep2.load"(%13) : (!ep2.conref<!ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>>) -> !ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>
    %19 = "ep2.load"(%12) : (!ep2.conref<i16>) -> i16
    "ep2.emit"(%arg1, %18) : (!ep2.buf, !ep2.struct<"connect_tracker_meta_header_t" : isEvent = false, elementTypes = i32, i32, i32, i32, i32, i32, i32>) -> ()
    %20 = "ep2.global_import"() <{name = "lb_table"}> : () -> !ep2.table<i16, !ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>, 64>
    %21 = "ep2.lookup"(%20, %19) : (!ep2.table<i16, !ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>, 64>, i16) -> !ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>
    %22 = "ep2.struct_update"(%21, %arg2) <{index = 6 : i64}> : (!ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>, i32) -> !ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>
    %23 = ep2.struct_access %22[0] : <"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64> -> i64
    %24 = "ep2.add"(%23, %17) : (i64, i32) -> i64
    %25 = "ep2.struct_update"(%22, %24) <{index = 0 : i64}> : (!ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>, i64) -> !ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>
    %26 = ep2.struct_access %25[1] : <"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64> -> i64
    %27 = "ep2.add"(%26, %17) : (i64, i32) -> i64
    %28 = "ep2.struct_update"(%25, %27) <{index = 1 : i64}> : (!ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>, i64) -> !ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>
    %29 = "ep2.add"(%16, %17) : (i32, i32) -> i32
    %30 = "ep2.struct_update"(%28, %29) <{index = 2 : i64}> : (!ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>, i32) -> !ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>
    %31 = "ep2.add"(%10, %17) : (i32, i32) -> i32
    %32 = "ep2.struct_update"(%30, %31) <{index = 3 : i64}> : (!ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>, i32) -> !ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>
    %33 = "ep2.add"(%9, %17) : (i16, i32) -> i16
    %34 = "ep2.struct_update"(%32, %33) <{index = 4 : i64}> : (!ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>, i16) -> !ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>
    %35 = "ep2.add"(%8, %17) : (i16, i32) -> i16
    %36 = "ep2.struct_update"(%34, %35) <{index = 5 : i64}> : (!ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>, i16) -> !ep2.struct<"lb_DIP_entries_t" : isEvent = false, elementTypes = i64, i64, i32, i32, i16, i16, i32, i64>
    %37 = "ep2.add"(%16, %10) : (i32, i32) -> i32
    %38 = "ep2.add"(%37, %9) : (i32, i16) -> i32
    %39 = "ep2.add"(%38, %8) : (i32, i16) -> i32
    %40 = "ep2.add"(%39, %17) : (i32, i32) -> i32
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
    "ep2.emit"(%arg1, %52) : (!ep2.buf, !ep2.struct<"lb_fwd_tcp_hdr_t" : isEvent = false, elementTypes = i64, i64, i32>) -> ()
    %53 = "ep2.init"(%11, %arg0, %arg1) : (!ep2.atom, !ep2.context, !ep2.buf) -> !ep2.struct<"NET_SEND" : isEvent = true, elementTypes = !ep2.atom, !ep2.context, !ep2.buf>
    ep2.return %53 : !ep2.struct<"NET_SEND" : isEvent = true, elementTypes = !ep2.atom, !ep2.context, !ep2.buf>
    "ep2.terminate"() : () -> ()
  }
}

