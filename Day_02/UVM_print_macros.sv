`include "uvm_macros.svh"
import uvm_pkg::*;
module print_macros_tb;
initial begin
  uvm_top.set_report_verbosity_level(UVM_HIGH);
  //uvm_top.get_report_verbosity_level();
  $display("hello cdac @ %0t", $time);
  `uvm_info("TB_TOP","This is informative message", UVM_MEDIUM);
  #10;
  `uvm_warning("TB_TOP", "This is warning")
  #10;
  `uvm_error("TB_TOP", "This is error")
  #10;
 //`uvm_fatal("TB_TOP", "This is fatal error, stopping simulation")
$display("current verbosity=%0d", uvm_top.get_report_verbosity_level());
  
end
endmodule
