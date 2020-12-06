# Setup
set_environment_viewer -instance_names
set_messages -log tmax.log -replace

## Build and DRC
read_netlist ../gate/NangateOpenCellLibrary.tlib -library
read_netlist ../gate/riscv_core.v
run_build_model riscv_core_0_128_1_16_1_1_0_0_0_0_0_0_0_0_0_3_6_15_5_1a110800


add_po_masks -all
remove_po_masks instr_req_o
remove_po_masks instr_addr_o[31]
remove_po_masks instr_addr_o[30]
remove_po_masks instr_addr_o[29]
remove_po_masks instr_addr_o[28]
remove_po_masks instr_addr_o[27]
remove_po_masks instr_addr_o[26]
remove_po_masks instr_addr_o[25]
remove_po_masks instr_addr_o[24]
remove_po_masks instr_addr_o[23]
remove_po_masks instr_addr_o[22]
remove_po_masks instr_addr_o[21]
remove_po_masks instr_addr_o[20]
remove_po_masks instr_addr_o[19]
remove_po_masks instr_addr_o[18]
remove_po_masks instr_addr_o[17]
remove_po_masks instr_addr_o[16]
remove_po_masks instr_addr_o[15]
remove_po_masks instr_addr_o[14]
remove_po_masks instr_addr_o[13]
remove_po_masks instr_addr_o[12]
remove_po_masks instr_addr_o[11]
remove_po_masks instr_addr_o[10]
remove_po_masks instr_addr_o[9]
remove_po_masks instr_addr_o[8]
remove_po_masks instr_addr_o[7]
remove_po_masks instr_addr_o[6]
remove_po_masks instr_addr_o[5]
remove_po_masks instr_addr_o[4]
remove_po_masks instr_addr_o[3]
remove_po_masks instr_addr_o[2]
remove_po_masks instr_addr_o[1]
remove_po_masks instr_addr_o[0]
remove_po_masks data_req_o
remove_po_masks data_we_o
remove_po_masks data_be_o[3]
remove_po_masks data_be_o[2]
remove_po_masks data_be_o[1]
remove_po_masks data_be_o[0]
remove_po_masks data_addr_o[31]
remove_po_masks data_addr_o[30]
remove_po_masks data_addr_o[29]
remove_po_masks data_addr_o[28]
remove_po_masks data_addr_o[27]
remove_po_masks data_addr_o[26]
remove_po_masks data_addr_o[25]
remove_po_masks data_addr_o[24]
remove_po_masks data_addr_o[23]
remove_po_masks data_addr_o[22]
remove_po_masks data_addr_o[21]
remove_po_masks data_addr_o[20]
remove_po_masks data_addr_o[19]
remove_po_masks data_addr_o[18]
remove_po_masks data_addr_o[17]
remove_po_masks data_addr_o[16]
remove_po_masks data_addr_o[15]
remove_po_masks data_addr_o[14]
remove_po_masks data_addr_o[13]
remove_po_masks data_addr_o[12]
remove_po_masks data_addr_o[11]
remove_po_masks data_addr_o[10]
remove_po_masks data_addr_o[9]
remove_po_masks data_addr_o[8]
remove_po_masks data_addr_o[7]
remove_po_masks data_addr_o[6]
remove_po_masks data_addr_o[5]
remove_po_masks data_addr_o[4]
remove_po_masks data_addr_o[3]
remove_po_masks data_addr_o[2]
remove_po_masks data_addr_o[1]
remove_po_masks data_addr_o[0]
remove_po_masks data_wdata_o[31]
remove_po_masks data_wdata_o[30]
remove_po_masks data_wdata_o[29]
remove_po_masks data_wdata_o[28]
remove_po_masks data_wdata_o[27]
remove_po_masks data_wdata_o[26]
remove_po_masks data_wdata_o[25]
remove_po_masks data_wdata_o[24]
remove_po_masks data_wdata_o[23]
remove_po_masks data_wdata_o[22]
remove_po_masks data_wdata_o[21]
remove_po_masks data_wdata_o[20]
remove_po_masks data_wdata_o[19]
remove_po_masks data_wdata_o[18]
remove_po_masks data_wdata_o[17]
remove_po_masks data_wdata_o[16]
remove_po_masks data_wdata_o[15]
remove_po_masks data_wdata_o[14]
remove_po_masks data_wdata_o[13]
remove_po_masks data_wdata_o[12]
remove_po_masks data_wdata_o[11]
remove_po_masks data_wdata_o[10]
remove_po_masks data_wdata_o[9]
remove_po_masks data_wdata_o[8]
remove_po_masks data_wdata_o[7]
remove_po_masks data_wdata_o[6]
remove_po_masks data_wdata_o[5]
remove_po_masks data_wdata_o[4]
remove_po_masks data_wdata_o[3]
remove_po_masks data_wdata_o[2]
remove_po_masks data_wdata_o[1]
remove_po_masks data_wdata_o[0]
run_drc

## Load and check patterns
set_patterns -external dumpports_gate.evcd.fixed  -sensitive -strobe_period { 10 ns } -strobe_offset { 59 ns }
run_simulation -sequential

## Fault list (select one of the following)
add_faults -all
#add_faults ex_stage_i/alu_i
#add_faults ex_stage_i/alu_i/int_div_div_i
#add_faults ex_stage_i/mult_i
#add_faults id_stage_i/registers_i/riscv_register_file_i
#read_faults previous_fsim_faults.txt -force_retain_code -add

## Fault simulation
run_fault_sim -sequential

## Reports
set_faults -fault_coverage
report_faults -level {5 100} > report_faults_hierarchy.txt
report_faults -level {100 1} -verbose > report_faults_verbose.txt
report_summaries > report_summaries.txt
write_faults fsim_faults.txt -replace -all
