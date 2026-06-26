`include "uvm_macros.svh"
import uvm_pkg::*;

module excersise_1to5;
  initial begin
    `uvm_info("ID", "Hello UVM", UVM_NONE)

    `uvm_warning("ID", "Temperature High")

    `uvm_error("ID", "Invalid Data")

    `uvm_info("TEST1", "This message uses ID TEST1", UVM_NONE)
    
    `uvm_fatal("ID", "Simulation Stopped")
  end
endmodule
